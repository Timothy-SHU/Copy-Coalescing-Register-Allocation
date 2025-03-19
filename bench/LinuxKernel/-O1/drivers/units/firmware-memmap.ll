; ModuleID = 'drivers/firmware/memmap.c'
source_filename = "drivers/firmware/memmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_memmap__287_418_firmware_memmap_init\22, \22a\22\09\09"
module asm "__initcall__kmod_memmap__287_418_firmware_memmap_init7:\09\09\09"
module asm ".long\09__initstub__kmod_memmap__287_418_firmware_memmap_init7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.memmap_attribute = type { %struct.attribute, ptr }
%struct.attribute = type { ptr, i16 }
%struct.firmware_map_entry = type { i64, i64, ptr, %struct.list_head, %struct.kobject }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.page = type { i64, %union.anon.13, %union.anon.22, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %union.anon.15, ptr, %union.anon.17, i64 }
%union.anon.15 = type { %struct.list_head }
%union.anon.17 = type { i64 }
%union.anon.22 = type { %struct.atomic_t }

@map_entries_bootmem_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"drivers/firmware/memmap.c\00", align 1, !dbg !4112
@map_entries_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4175
@__UNIQUE_ID___addressable___initstub__kmod_memmap__287_418_firmware_memmap_init7288 = internal global ptr @__initstub__kmod_memmap__287_418_firmware_memmap_init7, section ".discard.addressable", align 8, !dbg !4117
@map_entries = internal global %struct.list_head { ptr @map_entries, ptr @map_entries }, align 8, !dbg !4119
@map_entries_bootmem = internal global %struct.list_head { ptr @map_entries_bootmem, ptr @map_entries_bootmem }, align 8, !dbg !4121
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4123
@memmap_ktype = internal global %struct.kobj_type { ptr @release_firmware_map_entry, ptr @memmap_attr_ops, ptr @def_groups, ptr null, ptr null, ptr null }, section ".ref.data", align 8, !dbg !4128
@memmap_attr_ops = internal constant %struct.sysfs_ops { ptr @memmap_attr_show, ptr null }, align 8, !dbg !4130
@def_groups = internal global [2 x ptr] [ptr @def_group, ptr null], align 16, !dbg !4132
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@def_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @def_attrs, ptr null }, align 8, !dbg !4135
@def_attrs = internal global [4 x ptr] [ptr @memmap_start_attr, ptr @memmap_end_attr, ptr @memmap_type_attr, ptr null], align 16, !dbg !4137
@memmap_start_attr = internal global %struct.memmap_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @start_show }, align 8, !dbg !4142
@memmap_end_attr = internal global %struct.memmap_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @end_show }, align 8, !dbg !4149
@memmap_type_attr = internal global %struct.memmap_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @type_show }, align 8, !dbg !4156
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1, !dbg !4140
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%llx\0A\00", align 1, !dbg !4144
@.str.4 = private unnamed_addr constant [4 x i8] c"end\00", align 1, !dbg !4146
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !4151
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !4158
@add_sysfs_fw_map_entry.map_entries_nr = internal global i32 0, align 4, !dbg !4160
@add_sysfs_fw_map_entry.mmap_kset = internal global ptr null, align 8, !dbg !4167
@.str.7 = private unnamed_addr constant [7 x i8] c"memmap\00", align 1, !dbg !4169
@firmware_kobj = external dso_local global ptr, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !4172
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_memmap__287_418_firmware_memmap_init7288], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @firmware_map_add_hotplug(i64 noundef %start, i64 noundef %end, ptr noundef %type) #0 section ".init.text" align 16 !dbg !4186 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4190, metadata !DIExpression()), !dbg !4194
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4191, metadata !DIExpression()), !dbg !4195
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4192, metadata !DIExpression()), !dbg !4196
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !4197
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4193, metadata !DIExpression()), !dbg !4198
  %0 = load i64, ptr %start.addr, align 8, !dbg !4199
  %1 = load i64, ptr %end.addr, align 8, !dbg !4200
  %sub = sub i64 %1, 1, !dbg !4201
  %2 = load ptr, ptr %type.addr, align 8, !dbg !4202
  %call = call ptr @firmware_map_find_entry(i64 noundef %0, i64 noundef %sub, ptr noundef %2) #17, !dbg !4203
  store ptr %call, ptr %entry1, align 8, !dbg !4204
  %3 = load ptr, ptr %entry1, align 8, !dbg !4205
  %tobool = icmp ne ptr %3, null, !dbg !4205
  br i1 %tobool, label %if.then, label %if.end, !dbg !4207

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4208

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %start.addr, align 8, !dbg !4209
  %5 = load i64, ptr %end.addr, align 8, !dbg !4210
  %sub2 = sub i64 %5, 1, !dbg !4211
  %6 = load ptr, ptr %type.addr, align 8, !dbg !4212
  %call3 = call ptr @firmware_map_find_entry_bootmem(i64 noundef %4, i64 noundef %sub2, ptr noundef %6) #17, !dbg !4213
  store ptr %call3, ptr %entry1, align 8, !dbg !4214
  %7 = load ptr, ptr %entry1, align 8, !dbg !4215
  %tobool4 = icmp ne ptr %7, null, !dbg !4215
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !4217

if.then5:                                         ; preds = %if.end
  %call6 = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 2080) #18, !dbg !4218
  store ptr %call6, ptr %entry1, align 8, !dbg !4220
  %8 = load ptr, ptr %entry1, align 8, !dbg !4221
  %tobool7 = icmp ne ptr %8, null, !dbg !4221
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4223

if.then8:                                         ; preds = %if.then5
  store i32 -12, ptr %retval, align 4, !dbg !4224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4224

if.end9:                                          ; preds = %if.then5
  br label %if.end10, !dbg !4225

if.else:                                          ; preds = %if.end
  call void @spin_lock(ptr noundef @map_entries_bootmem_lock) #19, !dbg !4226
  %9 = load ptr, ptr %entry1, align 8, !dbg !4228
  %list = getelementptr inbounds %struct.firmware_map_entry, ptr %9, i32 0, i32 3, !dbg !4229
  call void @list_del(ptr noundef %list) #19, !dbg !4230
  call void @spin_unlock(ptr noundef @map_entries_bootmem_lock) #19, !dbg !4231
  %10 = load ptr, ptr %entry1, align 8, !dbg !4232
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 104, i1 false), !dbg !4233
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end9
  %11 = load i64, ptr %start.addr, align 8, !dbg !4234
  %12 = load i64, ptr %end.addr, align 8, !dbg !4235
  %13 = load ptr, ptr %type.addr, align 8, !dbg !4236
  %14 = load ptr, ptr %entry1, align 8, !dbg !4237
  %call11 = call i32 @firmware_map_add_entry(i64 noundef %11, i64 noundef %12, ptr noundef %13, ptr noundef %14) #19, !dbg !4238
  %15 = load ptr, ptr %entry1, align 8, !dbg !4239
  %call12 = call i32 @add_sysfs_fw_map_entry(ptr noundef %15) #19, !dbg !4240
  store i32 0, ptr %retval, align 4, !dbg !4241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4241

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !4242
  %16 = load i32, ptr %retval, align 4, !dbg !4242
  ret i32 %16, !dbg !4242
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @firmware_map_find_entry(i64 noundef %start, i64 noundef %end, ptr noundef %type) #0 section ".init.text" align 16 !dbg !4243 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca ptr, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4247, metadata !DIExpression()), !dbg !4250
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4248, metadata !DIExpression()), !dbg !4251
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4249, metadata !DIExpression()), !dbg !4252
  %0 = load i64, ptr %start.addr, align 8, !dbg !4253
  %1 = load i64, ptr %end.addr, align 8, !dbg !4254
  %2 = load ptr, ptr %type.addr, align 8, !dbg !4255
  %call = call ptr @firmware_map_find_entry_in_list(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef @map_entries) #17, !dbg !4256
  ret ptr %call, !dbg !4257
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @firmware_map_find_entry_bootmem(i64 noundef %start, i64 noundef %end, ptr noundef %type) #0 section ".init.text" align 16 !dbg !4258 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca ptr, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4260, metadata !DIExpression()), !dbg !4263
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4261, metadata !DIExpression()), !dbg !4264
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4262, metadata !DIExpression()), !dbg !4265
  %0 = load i64, ptr %start.addr, align 8, !dbg !4266
  %1 = load i64, ptr %end.addr, align 8, !dbg !4267
  %2 = load ptr, ptr %type.addr, align 8, !dbg !4268
  %call = call ptr @firmware_map_find_entry_in_list(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef @map_entries_bootmem) #17, !dbg !4269
  ret ptr %call, !dbg !4270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4271 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4275, metadata !DIExpression()), !dbg !4277
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4276, metadata !DIExpression()), !dbg !4278
  %0 = load i64, ptr %size.addr, align 8, !dbg !4279
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4280
  %or = or i32 %1, 256, !dbg !4281
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !4282
  ret ptr %call, !dbg !4283
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !4284 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4291
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4291
  call void @_raw_spin_lock(ptr noundef %1) #19, !dbg !4291
  ret void, !dbg !4292
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !4293 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4298, metadata !DIExpression()), !dbg !4299
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4300
  call void @__list_del_entry(ptr noundef %0) #19, !dbg !4301
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4302
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4303
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4304
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4305
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4306
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4307
  ret void, !dbg !4308
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !4309 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4311, metadata !DIExpression()), !dbg !4312
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4313
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4313
  call void @_raw_spin_unlock(ptr noundef %1) #19, !dbg !4313
  ret void, !dbg !4314
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @firmware_map_add_entry(i64 noundef %start, i64 noundef %end, ptr noundef %type, ptr noundef %entry1) #7 align 16 !dbg !4315 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4319, metadata !DIExpression()), !dbg !4323
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4320, metadata !DIExpression()), !dbg !4324
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4321, metadata !DIExpression()), !dbg !4325
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4322, metadata !DIExpression()), !dbg !4326
  br label %do.body, !dbg !4327

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %start.addr, align 8, !dbg !4328
  %1 = load i64, ptr %end.addr, align 8, !dbg !4328
  %cmp = icmp ugt i64 %0, %1, !dbg !4328
  %lnot = xor i1 %cmp, true, !dbg !4328
  %lnot2 = xor i1 %lnot, true, !dbg !4328
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4328
  %conv = sext i32 %lnot.ext to i64, !dbg !4328
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4328
  %tobool = icmp ne i64 %expval, 0, !dbg !4328
  br i1 %tobool, label %if.then, label %if.end, !dbg !4331

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !4328

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !4332

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !4334

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4332

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 146, i32 0, i64 12) #16, !dbg !4336, !srcloc !4338
  br label %do.end6, !dbg !4336

do.end6:                                          ; preds = %do.body5
  unreachable, !dbg !4332

do.end7:                                          ; No predecessors!
  br label %if.end, !dbg !4332

if.end:                                           ; preds = %do.end7, %do.body
  br label %do.end8, !dbg !4331

do.end8:                                          ; preds = %if.end
  %2 = load i64, ptr %start.addr, align 8, !dbg !4339
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4340
  %start9 = getelementptr inbounds %struct.firmware_map_entry, ptr %3, i32 0, i32 0, !dbg !4341
  store i64 %2, ptr %start9, align 8, !dbg !4342
  %4 = load i64, ptr %end.addr, align 8, !dbg !4343
  %sub = sub i64 %4, 1, !dbg !4344
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !4345
  %end10 = getelementptr inbounds %struct.firmware_map_entry, ptr %5, i32 0, i32 1, !dbg !4346
  store i64 %sub, ptr %end10, align 8, !dbg !4347
  %6 = load ptr, ptr %type.addr, align 8, !dbg !4348
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !4349
  %type11 = getelementptr inbounds %struct.firmware_map_entry, ptr %7, i32 0, i32 2, !dbg !4350
  store ptr %6, ptr %type11, align 8, !dbg !4351
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !4352
  %list = getelementptr inbounds %struct.firmware_map_entry, ptr %8, i32 0, i32 3, !dbg !4353
  call void @INIT_LIST_HEAD(ptr noundef %list) #19, !dbg !4354
  %9 = load ptr, ptr %entry.addr, align 8, !dbg !4355
  %kobj = getelementptr inbounds %struct.firmware_map_entry, ptr %9, i32 0, i32 4, !dbg !4356
  call void @kobject_init(ptr noundef %kobj, ptr noundef @memmap_ktype) #19, !dbg !4357
  call void @spin_lock(ptr noundef @map_entries_lock) #19, !dbg !4358
  %10 = load ptr, ptr %entry.addr, align 8, !dbg !4359
  %list12 = getelementptr inbounds %struct.firmware_map_entry, ptr %10, i32 0, i32 3, !dbg !4360
  call void @list_add_tail(ptr noundef %list12, ptr noundef @map_entries) #19, !dbg !4361
  call void @spin_unlock(ptr noundef @map_entries_lock) #19, !dbg !4362
  ret i32 0, !dbg !4363
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_sysfs_fw_map_entry(ptr noundef %entry1) #7 align 16 !dbg !4162 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4166, metadata !DIExpression()), !dbg !4364
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4365
  %kobj = getelementptr inbounds %struct.firmware_map_entry, ptr %0, i32 0, i32 4, !dbg !4367
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 7, !dbg !4368
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !4368
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4368
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4368
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4368
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4365
  br i1 %tobool, label %if.then, label %if.end, !dbg !4369

if.then:                                          ; preds = %entry
  store i32 -17, ptr %retval, align 4, !dbg !4370
  br label %return, !dbg !4370

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @add_sysfs_fw_map_entry.mmap_kset, align 8, !dbg !4371
  %tobool2 = icmp ne ptr %1, null, !dbg !4371
  br i1 %tobool2, label %if.end7, label %if.then3, !dbg !4373

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @firmware_kobj, align 8, !dbg !4374
  %call = call ptr @kset_create_and_add(ptr noundef @.str.7, ptr noundef null, ptr noundef %2) #19, !dbg !4376
  store ptr %call, ptr @add_sysfs_fw_map_entry.mmap_kset, align 8, !dbg !4377
  %3 = load ptr, ptr @add_sysfs_fw_map_entry.mmap_kset, align 8, !dbg !4378
  %tobool4 = icmp ne ptr %3, null, !dbg !4378
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4380

if.then5:                                         ; preds = %if.then3
  store i32 -12, ptr %retval, align 4, !dbg !4381
  br label %return, !dbg !4381

if.end6:                                          ; preds = %if.then3
  br label %if.end7, !dbg !4382

if.end7:                                          ; preds = %if.end6, %if.end
  %4 = load ptr, ptr @add_sysfs_fw_map_entry.mmap_kset, align 8, !dbg !4383
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !4384
  %kobj8 = getelementptr inbounds %struct.firmware_map_entry, ptr %5, i32 0, i32 4, !dbg !4385
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj8, i32 0, i32 3, !dbg !4386
  store ptr %4, ptr %kset, align 8, !dbg !4387
  %6 = load ptr, ptr %entry.addr, align 8, !dbg !4388
  %kobj9 = getelementptr inbounds %struct.firmware_map_entry, ptr %6, i32 0, i32 4, !dbg !4390
  %7 = load i32, ptr @add_sysfs_fw_map_entry.map_entries_nr, align 4, !dbg !4391
  %inc = add i32 %7, 1, !dbg !4391
  store i32 %inc, ptr @add_sysfs_fw_map_entry.map_entries_nr, align 4, !dbg !4391
  %call10 = call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj9, ptr noundef null, ptr noundef @.str.8, i32 noundef %7) #19, !dbg !4392
  %tobool11 = icmp ne i32 %call10, 0, !dbg !4392
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4393

if.then12:                                        ; preds = %if.end7
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !4394
  %kobj13 = getelementptr inbounds %struct.firmware_map_entry, ptr %8, i32 0, i32 4, !dbg !4395
  call void @kobject_put(ptr noundef %kobj13) #19, !dbg !4396
  br label %if.end14, !dbg !4396

if.end14:                                         ; preds = %if.then12, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !4397
  br label %return, !dbg !4397

return:                                           ; preds = %if.end14, %if.then5, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !4398
  ret i32 %9, !dbg !4398
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @firmware_map_add_early(i64 noundef %start, i64 noundef %end, ptr noundef %type) #0 section ".init.text" align 16 !dbg !4399 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4401, metadata !DIExpression()), !dbg !4411
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4402, metadata !DIExpression()), !dbg !4412
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4403, metadata !DIExpression()), !dbg !4413
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4404, metadata !DIExpression()), !dbg !4415
  %call = call ptr @memblock_alloc(i64 noundef 104, i64 noundef 64) #19, !dbg !4416
  store ptr %call, ptr %entry1, align 8, !dbg !4417
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4418
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4405, metadata !DIExpression()), !dbg !4418
  %0 = load ptr, ptr %entry1, align 8, !dbg !4418
  %tobool = icmp ne ptr %0, null, !dbg !4418
  %lnot = xor i1 %tobool, true, !dbg !4418
  %lnot2 = xor i1 %lnot, true, !dbg !4418
  %lnot3 = xor i1 %lnot2, true, !dbg !4418
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4418
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4418
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4419
  %tobool4 = icmp ne i32 %1, 0, !dbg !4419
  %lnot5 = xor i1 %tobool4, true, !dbg !4419
  %lnot7 = xor i1 %lnot5, true, !dbg !4419
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4419
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4419
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4419
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4419
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4418

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4419

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4420
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4408, metadata !DIExpression()), !dbg !4420
  store i32 2305, ptr %__flags, align 4, !dbg !4420
  br label %do.body10, !dbg !4420

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !4421

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !4421

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !4420

do.body11:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4423
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 330, i32 %2, i64 12) #16, !dbg !4423, !srcloc !4425
  br label %do.cond12, !dbg !4423

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4423

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4420

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !4426

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4426

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4419
  br label %do.cond17, !dbg !4420

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !4420

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !4420

if.end:                                           ; preds = %do.end18, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4418
  %tobool19 = icmp ne i32 %3, 0, !dbg !4418
  %lnot20 = xor i1 %tobool19, true, !dbg !4418
  %lnot22 = xor i1 %lnot20, true, !dbg !4418
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4418
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4418
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4418
  store i64 %expval25, ptr %tmp, align 8, !dbg !4419
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4428
  %4 = load i64, ptr %tmp, align 8, !dbg !4418
  %tobool26 = icmp ne i64 %4, 0, !dbg !4428
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !4429

if.then27:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4430

if.end28:                                         ; preds = %if.end
  %5 = load i64, ptr %start.addr, align 8, !dbg !4431
  %6 = load i64, ptr %end.addr, align 8, !dbg !4432
  %7 = load ptr, ptr %type.addr, align 8, !dbg !4433
  %8 = load ptr, ptr %entry1, align 8, !dbg !4434
  %call29 = call i32 @firmware_map_add_entry(i64 noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) #19, !dbg !4435
  store i32 %call29, ptr %retval, align 4, !dbg !4436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4436

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !4437
  %9 = load i32, ptr %retval, align 4, !dbg !4437
  ret i32 %9, !dbg !4437
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @memblock_alloc(i64 noundef %size, i64 noundef %align) #4 align 16 !dbg !4438 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4443, metadata !DIExpression()), !dbg !4445
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !4444, metadata !DIExpression()), !dbg !4446
  %0 = load i64, ptr %size.addr, align 8, !dbg !4447
  %1 = load i64, ptr %align.addr, align 8, !dbg !4448
  %call = call ptr @memblock_alloc_try_nid(i64 noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef 0, i32 noundef -1) #19, !dbg !4449
  ret ptr %call, !dbg !4450
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @firmware_map_remove(i64 noundef %start, i64 noundef %end, ptr noundef %type) #0 section ".init.text" align 16 !dbg !4451 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4453, metadata !DIExpression()), !dbg !4457
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4454, metadata !DIExpression()), !dbg !4458
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4455, metadata !DIExpression()), !dbg !4459
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !4460
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4456, metadata !DIExpression()), !dbg !4461
  call void @spin_lock(ptr noundef @map_entries_lock) #19, !dbg !4462
  %0 = load i64, ptr %start.addr, align 8, !dbg !4463
  %1 = load i64, ptr %end.addr, align 8, !dbg !4464
  %sub = sub i64 %1, 1, !dbg !4465
  %2 = load ptr, ptr %type.addr, align 8, !dbg !4466
  %call = call ptr @firmware_map_find_entry(i64 noundef %0, i64 noundef %sub, ptr noundef %2) #17, !dbg !4467
  store ptr %call, ptr %entry1, align 8, !dbg !4468
  %3 = load ptr, ptr %entry1, align 8, !dbg !4469
  %tobool = icmp ne ptr %3, null, !dbg !4469
  br i1 %tobool, label %if.end, label %if.then, !dbg !4471

if.then:                                          ; preds = %entry
  call void @spin_unlock(ptr noundef @map_entries_lock) #19, !dbg !4472
  store i32 -22, ptr %retval, align 4, !dbg !4474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4474

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !4475
  call void @firmware_map_remove_entry(ptr noundef %4) #19, !dbg !4476
  call void @spin_unlock(ptr noundef @map_entries_lock) #19, !dbg !4477
  %5 = load ptr, ptr %entry1, align 8, !dbg !4478
  call void @remove_sysfs_fw_map_entry(ptr noundef %5) #19, !dbg !4479
  store i32 0, ptr %retval, align 4, !dbg !4480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4480

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !4481
  %6 = load i32, ptr %retval, align 4, !dbg !4481
  ret i32 %6, !dbg !4481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @firmware_map_remove_entry(ptr noundef %entry1) #5 align 16 !dbg !4482 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4486, metadata !DIExpression()), !dbg !4487
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4488
  %list = getelementptr inbounds %struct.firmware_map_entry, ptr %0, i32 0, i32 3, !dbg !4489
  call void @list_del(ptr noundef %list) #19, !dbg !4490
  ret void, !dbg !4491
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_sysfs_fw_map_entry(ptr noundef %entry1) #5 align 16 !dbg !4492 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4496
  %kobj = getelementptr inbounds %struct.firmware_map_entry, ptr %0, i32 0, i32 4, !dbg !4497
  call void @kobject_put(ptr noundef %kobj) #19, !dbg !4498
  ret void, !dbg !4499
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_memmap__287_418_firmware_memmap_init7() #0 section ".init.text" align 16 !dbg !4500 {
entry:
  %call = call i32 @firmware_memmap_init() #17, !dbg !4501
  ret i32 %call, !dbg !4501
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @firmware_memmap_init() #0 section ".init.text" align 16 !dbg !4502 {
entry:
  %entry1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !4511
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4504, metadata !DIExpression()), !dbg !4512
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4513
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4505, metadata !DIExpression()), !dbg !4513
  %0 = load ptr, ptr @map_entries, align 8, !dbg !4513
  store ptr %0, ptr %__mptr, align 8, !dbg !4513
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4513
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !4513
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4514
  %2 = load ptr, ptr %tmp, align 8, !dbg !4513
  store ptr %2, ptr %entry1, align 8, !dbg !4514
  br label %for.cond, !dbg !4514

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %entry1, align 8, !dbg !4515
  %list = getelementptr inbounds %struct.firmware_map_entry, ptr %3, i32 0, i32 3, !dbg !4515
  %cmp = icmp eq ptr %list, @map_entries, !dbg !4515
  %lnot = xor i1 %cmp, true, !dbg !4515
  br i1 %lnot, label %for.body, label %for.end, !dbg !4514

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %entry1, align 8, !dbg !4516
  %call = call i32 @add_sysfs_fw_map_entry(ptr noundef %4) #19, !dbg !4517
  br label %for.inc, !dbg !4517

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !4518
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !4508, metadata !DIExpression()), !dbg !4518
  %5 = load ptr, ptr %entry1, align 8, !dbg !4518
  %list3 = getelementptr inbounds %struct.firmware_map_entry, ptr %5, i32 0, i32 3, !dbg !4518
  %next = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 0, !dbg !4518
  %6 = load ptr, ptr %next, align 8, !dbg !4518
  store ptr %6, ptr %__mptr2, align 8, !dbg !4518
  %7 = load ptr, ptr %__mptr2, align 8, !dbg !4518
  %add.ptr5 = getelementptr i8, ptr %7, i64 -24, !dbg !4518
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !4518
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !4515
  %8 = load ptr, ptr %tmp4, align 8, !dbg !4518
  store ptr %8, ptr %entry1, align 8, !dbg !4515
  br label %for.cond, !dbg !4515, !llvm.loop !4519

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !4523
  ret i32 0, !dbg !4524
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @firmware_map_find_entry_in_list(i64 noundef %start, i64 noundef %end, ptr noundef %type, ptr noundef %list) #0 section ".init.text" align 16 !dbg !4525 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4529, metadata !DIExpression()), !dbg !4540
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4530, metadata !DIExpression()), !dbg !4541
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4531, metadata !DIExpression()), !dbg !4542
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4532, metadata !DIExpression()), !dbg !4543
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !4544
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4533, metadata !DIExpression()), !dbg !4545
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4546
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4534, metadata !DIExpression()), !dbg !4546
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4546
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4546
  %1 = load ptr, ptr %next, align 8, !dbg !4546
  store ptr %1, ptr %__mptr, align 8, !dbg !4546
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4546
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !4546
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4546
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4547
  %3 = load ptr, ptr %tmp, align 8, !dbg !4546
  store ptr %3, ptr %entry1, align 8, !dbg !4547
  br label %for.cond, !dbg !4547

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !4548
  %list2 = getelementptr inbounds %struct.firmware_map_entry, ptr %4, i32 0, i32 3, !dbg !4548
  %5 = load ptr, ptr %list.addr, align 8, !dbg !4548
  %cmp = icmp eq ptr %list2, %5, !dbg !4548
  %lnot = xor i1 %cmp, true, !dbg !4548
  br i1 %lnot, label %for.body, label %for.end, !dbg !4547

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %entry1, align 8, !dbg !4549
  %start3 = getelementptr inbounds %struct.firmware_map_entry, ptr %6, i32 0, i32 0, !dbg !4551
  %7 = load i64, ptr %start3, align 8, !dbg !4551
  %8 = load i64, ptr %start.addr, align 8, !dbg !4552
  %cmp4 = icmp eq i64 %7, %8, !dbg !4553
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !4554

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %entry1, align 8, !dbg !4555
  %end5 = getelementptr inbounds %struct.firmware_map_entry, ptr %9, i32 0, i32 1, !dbg !4556
  %10 = load i64, ptr %end5, align 8, !dbg !4556
  %11 = load i64, ptr %end.addr, align 8, !dbg !4557
  %cmp6 = icmp eq i64 %10, %11, !dbg !4558
  br i1 %cmp6, label %land.lhs.true7, label %if.end, !dbg !4559

land.lhs.true7:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %entry1, align 8, !dbg !4560
  %type8 = getelementptr inbounds %struct.firmware_map_entry, ptr %12, i32 0, i32 2, !dbg !4561
  %13 = load ptr, ptr %type8, align 8, !dbg !4561
  %14 = load ptr, ptr %type.addr, align 8, !dbg !4562
  %call = call i32 @strcmp(ptr noundef %13, ptr noundef %14) #19, !dbg !4563
  %tobool = icmp ne i32 %call, 0, !dbg !4563
  br i1 %tobool, label %if.end, label %if.then, !dbg !4564

if.then:                                          ; preds = %land.lhs.true7
  %15 = load ptr, ptr %entry1, align 8, !dbg !4565
  store ptr %15, ptr %retval, align 8, !dbg !4567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4567

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4568

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #16, !dbg !4569
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !4537, metadata !DIExpression()), !dbg !4569
  %16 = load ptr, ptr %entry1, align 8, !dbg !4569
  %list10 = getelementptr inbounds %struct.firmware_map_entry, ptr %16, i32 0, i32 3, !dbg !4569
  %next11 = getelementptr inbounds %struct.list_head, ptr %list10, i32 0, i32 0, !dbg !4569
  %17 = load ptr, ptr %next11, align 8, !dbg !4569
  store ptr %17, ptr %__mptr9, align 8, !dbg !4569
  %18 = load ptr, ptr %__mptr9, align 8, !dbg !4569
  %add.ptr13 = getelementptr i8, ptr %18, i64 -24, !dbg !4569
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !4569
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #16, !dbg !4548
  %19 = load ptr, ptr %tmp12, align 8, !dbg !4569
  store ptr %19, ptr %entry1, align 8, !dbg !4548
  br label %for.cond, !dbg !4548, !llvm.loop !4570

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !4572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4572

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !4573
  %20 = load ptr, ptr %retval, align 8, !dbg !4573
  ret ptr %20, !dbg !4573
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4574 dso_local i32 @strcmp(ptr noundef, ptr noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !4578 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4580, metadata !DIExpression()), !dbg !4585
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4581, metadata !DIExpression()), !dbg !4586
  %0 = load i64, ptr %size.addr, align 8, !dbg !4587
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4588
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4589

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4590
  %tobool = icmp ne i64 %2, 0, !dbg !4590
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4591

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !4592
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4582, metadata !DIExpression()), !dbg !4593
  %3 = load i64, ptr %size.addr, align 8, !dbg !4594
  %cmp = icmp ugt i64 %3, 8192, !dbg !4596
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4597

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4598
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4599
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !4600
  store ptr %call, ptr %retval, align 8, !dbg !4601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4601

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4602
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !4602
  store i32 %call2, ptr %index, align 4, !dbg !4603
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4604
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4605
  %9 = ptrtoint ptr %8 to i64, !dbg !4605
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !4606
  %idxprom = zext i32 %call3 to i64, !dbg !4607
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4607
  %10 = load i32, ptr %index, align 4, !dbg !4608
  %idxprom4 = zext i32 %10 to i64, !dbg !4607
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4607
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4607
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4609
  %13 = load i64, ptr %size.addr, align 8, !dbg !4610
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !4611
  store ptr %call6, ptr %retval, align 8, !dbg !4612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4612

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !4613
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4614
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4615
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !4616
  store ptr %call8, ptr %retval, align 8, !dbg !4617
  br label %return, !dbg !4617

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4618
  ret ptr %16, !dbg !4618
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4619 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !4620 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4624, metadata !DIExpression()), !dbg !4626
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4625, metadata !DIExpression()), !dbg !4627
  %0 = load i64, ptr %size.addr, align 8, !dbg !4628
  %tobool = icmp ne i64 %0, 0, !dbg !4628
  br i1 %tobool, label %if.end, label %if.then, !dbg !4630

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4631
  br label %return, !dbg !4631

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4632
  %cmp = icmp ule i64 %1, 8, !dbg !4634
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4635

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4636
  br label %return, !dbg !4636

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4637
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4639
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4640

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4641
  %cmp4 = icmp ule i64 %3, 96, !dbg !4642
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4643

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4644
  br label %return, !dbg !4644

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4645
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4647
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4648

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4649
  %cmp9 = icmp ule i64 %5, 192, !dbg !4650
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4651

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4652
  br label %return, !dbg !4652

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4653
  %cmp12 = icmp ule i64 %6, 8, !dbg !4655
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4656

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4657
  br label %return, !dbg !4657

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4658
  %cmp15 = icmp ule i64 %7, 16, !dbg !4660
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4661

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4662
  br label %return, !dbg !4662

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4663
  %cmp18 = icmp ule i64 %8, 32, !dbg !4665
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4666

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4667
  br label %return, !dbg !4667

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4668
  %cmp21 = icmp ule i64 %9, 64, !dbg !4670
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4671

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4672
  br label %return, !dbg !4672

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4673
  %cmp24 = icmp ule i64 %10, 128, !dbg !4675
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4676

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4677
  br label %return, !dbg !4677

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4678
  %cmp27 = icmp ule i64 %11, 256, !dbg !4680
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4681

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4682
  br label %return, !dbg !4682

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4683
  %cmp30 = icmp ule i64 %12, 512, !dbg !4685
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4686

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4687
  br label %return, !dbg !4687

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4688
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4690
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4691

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4692
  br label %return, !dbg !4692

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4693
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4695
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4696

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4697
  br label %return, !dbg !4697

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4698
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4700
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4701

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4702
  br label %return, !dbg !4702

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4703
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4705
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4706

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4707
  br label %return, !dbg !4707

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4708
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4710
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4711

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4712
  br label %return, !dbg !4712

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4713
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4715
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4716

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4717
  br label %return, !dbg !4717

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4718
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4720
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4721

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4722
  br label %return, !dbg !4722

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4723
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4725
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4726

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4727
  br label %return, !dbg !4727

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4728
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4730
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4731

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4732
  br label %return, !dbg !4732

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4733
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4735
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4736

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4737
  br label %return, !dbg !4737

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4738
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4740
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4741

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4742
  br label %return, !dbg !4742

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4743
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4745
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4746

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4747
  br label %return, !dbg !4747

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4748, !range !4750, !noundef !876
  %tobool69 = trunc i8 %25 to i1, !dbg !4748
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4751

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4752

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #21, !dbg !4753, !srcloc !4756
  unreachable, !dbg !4753

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4757

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4758

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4759

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4761

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4759

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !4763, !srcloc !4765
  br label %do.end75, !dbg !4763

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4759

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4766
  br label %return, !dbg !4766

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4767
  ret i32 %26, !dbg !4767
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4768 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !4774 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4778, metadata !DIExpression()), !dbg !4780
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4779, metadata !DIExpression()), !dbg !4781
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4782
  %and = and i32 %0, 17, !dbg !4782
  %cmp = icmp eq i32 %and, 0, !dbg !4782
  %lnot = xor i1 %cmp, true, !dbg !4782
  %lnot1 = xor i1 %lnot, true, !dbg !4782
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4782
  %conv = sext i32 %lnot.ext to i64, !dbg !4782
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4782
  %tobool = icmp ne i64 %expval, 0, !dbg !4782
  br i1 %tobool, label %if.then, label %if.end, !dbg !4784

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4785
  br label %return, !dbg !4785

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4786
  %and2 = and i32 %1, 1, !dbg !4788
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4788
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4789

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4790
  br label %return, !dbg !4790

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4791
  br label %return, !dbg !4791

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4793
  ret i32 %2, !dbg !4793
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4794 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4795 dso_local void @__compiletime_assert_229() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4796 dso_local void @_raw_spin_lock(ptr noundef) #9 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !4801 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4805
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #19, !dbg !4807
  br i1 %call, label %if.end, label %if.then, !dbg !4808

if.then:                                          ; preds = %entry
  br label %return, !dbg !4809

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4810
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4811
  %2 = load ptr, ptr %prev, align 8, !dbg !4811
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4812
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4813
  %4 = load ptr, ptr %next, align 8, !dbg !4813
  call void @__list_del(ptr noundef %2, ptr noundef %4) #19, !dbg !4814
  br label %return, !dbg !4815

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4815
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !4816 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  ret i1 true, !dbg !4822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !4823 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4827, metadata !DIExpression()), !dbg !4829
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4828, metadata !DIExpression()), !dbg !4830
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4831
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4832
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4833
  store ptr %0, ptr %prev1, align 8, !dbg !4834
  br label %do.body, !dbg !4835

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4836

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4838

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4836

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4840
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4840
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4840
  store volatile ptr %2, ptr %next4, align 8, !dbg !4840
  br label %do.end5, !dbg !4840

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4836

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4842
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4843 dso_local void @_raw_spin_unlock(ptr noundef) #9 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !4844 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  br label %do.body, !dbg !4848

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4849

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4851

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4849

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4853
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4853
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4853
  store volatile ptr %0, ptr %next, align 8, !dbg !4853
  br label %do.end3, !dbg !4853

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4849

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4855

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4856

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4858

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4856

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4860
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4860
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4860
  store volatile ptr %2, ptr %prev, align 8, !dbg !4860
  br label %do.end9, !dbg !4860

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4856

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4862
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4863 dso_local void @kobject_init(ptr noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !4866 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4868, metadata !DIExpression()), !dbg !4870
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4869, metadata !DIExpression()), !dbg !4871
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4872
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4873
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4874
  %2 = load ptr, ptr %prev, align 8, !dbg !4874
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4875
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #19, !dbg !4876
  ret void, !dbg !4877
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @release_firmware_map_entry(ptr noundef %kobj) #0 section ".init.text" align 16 !dbg !4878 {
entry:
  %kobj.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4880, metadata !DIExpression()), !dbg !4882
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !4883
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4881, metadata !DIExpression()), !dbg !4884
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4885
  %call = call ptr @to_memmap_entry(ptr noundef %0) #19, !dbg !4886
  store ptr %call, ptr %entry1, align 8, !dbg !4884
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !4887
  %2 = inttoptr i64 %1 to ptr, !dbg !4887
  %3 = load ptr, ptr %entry1, align 8, !dbg !4887
  %4 = ptrtoint ptr %3 to i64, !dbg !4887
  %call2 = call i64 @__phys_addr_nodebug(i64 noundef %4) #19, !dbg !4887
  %shr = lshr i64 %call2, 12, !dbg !4887
  %add.ptr = getelementptr %struct.page, ptr %2, i64 %shr, !dbg !4887
  %call3 = call i32 @PageReserved(ptr noundef %add.ptr) #19, !dbg !4889
  %tobool = icmp ne i32 %call3, 0, !dbg !4889
  br i1 %tobool, label %if.then, label %if.end, !dbg !4890

if.then:                                          ; preds = %entry
  call void @spin_lock(ptr noundef @map_entries_bootmem_lock) #19, !dbg !4891
  %5 = load ptr, ptr %entry1, align 8, !dbg !4893
  %list = getelementptr inbounds %struct.firmware_map_entry, ptr %5, i32 0, i32 3, !dbg !4894
  call void @list_add(ptr noundef %list, ptr noundef @map_entries_bootmem) #19, !dbg !4895
  call void @spin_unlock(ptr noundef @map_entries_bootmem_lock) #19, !dbg !4896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4897

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %entry1, align 8, !dbg !4898
  call void @kfree(ptr noundef %6) #19, !dbg !4899
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4900
  br label %cleanup, !dbg !4900

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !4900
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4900

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_memmap_entry(ptr noundef %kobj) #5 align 16 !dbg !4901 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4905, metadata !DIExpression()), !dbg !4908
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4909
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4906, metadata !DIExpression()), !dbg !4909
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4909
  store ptr %0, ptr %__mptr, align 8, !dbg !4909
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4909
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !4909
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4909
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4910
  %2 = load ptr, ptr %tmp, align 8, !dbg !4909
  ret ptr %2, !dbg !4911
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageReserved(ptr noundef %page) #4 align 16 !dbg !4912 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4918
  store ptr %0, ptr %tmp1, align 8, !dbg !4918
  %1 = load ptr, ptr %tmp1, align 8, !dbg !4918
  store ptr %1, ptr %tmp, align 8, !dbg !4921
  %2 = load ptr, ptr %tmp, align 8, !dbg !4921
  %flags = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 0, !dbg !4917
  %3 = ptrtoint ptr %flags to i64, !dbg !4917
  %cmp = icmp ne i64 %3, 0, !dbg !4917
  %conv = zext i1 %cmp to i32, !dbg !4917
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4917
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !4917

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %page.addr, align 8, !dbg !4922
  store ptr %5, ptr %tmp3, align 8, !dbg !4922
  %6 = load ptr, ptr %tmp3, align 8, !dbg !4922
  store ptr %6, ptr %tmp2, align 8, !dbg !4925
  %7 = load ptr, ptr %tmp2, align 8, !dbg !4925
  %flags4 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 0, !dbg !4917
  %8 = ptrtoint ptr %flags4 to i64, !dbg !4917
  %cmp5 = icmp ne i64 %8, 0, !dbg !4917
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !4917

land.lhs.true7:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %page.addr, align 8, !dbg !4926
  store ptr %9, ptr %tmp9, align 8, !dbg !4926
  %10 = load ptr, ptr %tmp9, align 8, !dbg !4926
  store ptr %10, ptr %tmp8, align 8, !dbg !4929
  %11 = load ptr, ptr %tmp8, align 8, !dbg !4929
  %flags10 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 0, !dbg !4917
  %12 = load i64, ptr %flags10, align 16, !dbg !4917
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4917
  br i1 %13, label %cond.true, label %cond.false, !dbg !4917

cond.true:                                        ; preds = %land.lhs.true7
  %14 = load ptr, ptr %page.addr, align 8, !dbg !4930
  store ptr %14, ptr %tmp12, align 8, !dbg !4930
  %15 = load ptr, ptr %tmp12, align 8, !dbg !4930
  store ptr %15, ptr %tmp11, align 8, !dbg !4933
  %16 = load ptr, ptr %tmp11, align 8, !dbg !4933
  %flags13 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 0, !dbg !4917
  %call = call zeroext i1 @const_test_bit(i64 noundef 14, ptr noundef %flags13) #19, !dbg !4917
  %conv14 = zext i1 %call to i32, !dbg !4917
  br label %cond.end, !dbg !4917

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true, %entry
  %17 = load ptr, ptr %page.addr, align 8, !dbg !4934
  store ptr %17, ptr %tmp16, align 8, !dbg !4934
  %18 = load ptr, ptr %tmp16, align 8, !dbg !4934
  store ptr %18, ptr %tmp15, align 8, !dbg !4937
  %19 = load ptr, ptr %tmp15, align 8, !dbg !4937
  %flags17 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 0, !dbg !4917
  %call18 = call zeroext i1 @_test_bit(i64 noundef 14, ptr noundef %flags17) #19, !dbg !4917
  %conv19 = zext i1 %call18 to i32, !dbg !4917
  br label %cond.end, !dbg !4917

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv14, %cond.true ], [ %conv19, %cond.false ], !dbg !4917
  ret i32 %cond, !dbg !4917
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #4 align 16 !dbg !4938 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4943, metadata !DIExpression()), !dbg !4945
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #16, !dbg !4946
  call void @llvm.dbg.declare(metadata ptr %y, metadata !4944, metadata !DIExpression()), !dbg !4947
  %0 = load i64, ptr %x.addr, align 8, !dbg !4948
  %sub = sub i64 %0, -2147483648, !dbg !4949
  store i64 %sub, ptr %y, align 8, !dbg !4947
  %1 = load i64, ptr %y, align 8, !dbg !4950
  %2 = load i64, ptr %x.addr, align 8, !dbg !4951
  %3 = load i64, ptr %y, align 8, !dbg !4952
  %cmp = icmp ugt i64 %2, %3, !dbg !4953
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4954

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !4955
  br label %cond.end, !dbg !4954

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !4956
  %sub1 = sub i64 -2147483648, %5, !dbg !4957
  br label %cond.end, !dbg !4954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !4954
  %add = add i64 %1, %cond, !dbg !4958
  store i64 %add, ptr %x.addr, align 8, !dbg !4959
  %6 = load i64, ptr %x.addr, align 8, !dbg !4960
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #16, !dbg !4961
  ret i64 %6, !dbg !4962
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !4963 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4965, metadata !DIExpression()), !dbg !4967
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4966, metadata !DIExpression()), !dbg !4968
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4969
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4970
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4971
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !4972
  %3 = load ptr, ptr %next, align 8, !dbg !4972
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #19, !dbg !4973
  ret void, !dbg !4974
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4975 dso_local void @kfree(ptr noundef) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4978 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4986, metadata !DIExpression()), !dbg !4991
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4987, metadata !DIExpression()), !dbg !4992
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4988, metadata !DIExpression()), !dbg !4994
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4995
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4996
  %div = udiv i64 %1, 64, !dbg !4996
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4997
  store ptr %add.ptr, ptr %p, align 8, !dbg !4994
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !4998
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4989, metadata !DIExpression()), !dbg !4999
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5000
  %rem = urem i64 %2, 64, !dbg !5000
  %shl = shl i64 1, %rem, !dbg !5000
  store i64 %shl, ptr %mask, align 8, !dbg !4999
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !5001
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4990, metadata !DIExpression()), !dbg !5002
  %3 = load ptr, ptr %p, align 8, !dbg !5003
  %4 = load i64, ptr %3, align 8, !dbg !5004
  store i64 %4, ptr %val, align 8, !dbg !5002
  %5 = load i64, ptr %val, align 8, !dbg !5005
  %6 = load i64, ptr %mask, align 8, !dbg !5006
  %and = and i64 %5, %6, !dbg !5007
  %tobool = icmp ne i64 %and, 0, !dbg !5008
  %lnot = xor i1 %tobool, true, !dbg !5008
  %lnot1 = xor i1 %lnot, true, !dbg !5009
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !5010
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5010
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5010
  ret i1 %lnot1, !dbg !5011
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5012 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5015, metadata !DIExpression()), !dbg !5017
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5016, metadata !DIExpression()), !dbg !5018
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5019
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5020
  %div = udiv i64 %1, 64, !dbg !5020
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5021
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !5022
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5023
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5024
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !5025
  ret i1 %call, !dbg !5026
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5027 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5035, metadata !DIExpression()), !dbg !5037
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5036, metadata !DIExpression()), !dbg !5038
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5039
  %1 = load i64, ptr %size.addr, align 8, !dbg !5040
  %conv = trunc i64 %1 to i32, !dbg !5040
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #19, !dbg !5041
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5042
  %3 = load i64, ptr %size.addr, align 8, !dbg !5042
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #19, !dbg !5042
  ret void, !dbg !5043
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5044 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5047, metadata !DIExpression()), !dbg !5049
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5048, metadata !DIExpression()), !dbg !5050
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5051
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5052
  br i1 %1, label %cond.true, label %cond.false, !dbg !5052

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5053
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5054
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !5055
  %conv = zext i1 %call to i32, !dbg !5055
  br label %cond.end, !dbg !5052

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5056
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5057
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #19, !dbg !5058
  %conv2 = zext i1 %call1 to i32, !dbg !5058
  br label %cond.end, !dbg !5052

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5052
  %tobool = icmp ne i32 %cond, 0, !dbg !5052
  ret i1 %tobool, !dbg !5059
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5060 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5065, metadata !DIExpression()), !dbg !5067
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5066, metadata !DIExpression()), !dbg !5068
  ret i1 true, !dbg !5069
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5070 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5075, metadata !DIExpression()), !dbg !5078
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5076, metadata !DIExpression()), !dbg !5079
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5077, metadata !DIExpression()), !dbg !5080
  ret void, !dbg !5081
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5082 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5086, metadata !DIExpression()), !dbg !5088
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5087, metadata !DIExpression()), !dbg !5089
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5090
  %and = and i64 %0, 63, !dbg !5091
  %shl = shl i64 1, %and, !dbg !5092
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5093
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5094
  %shr = ashr i64 %2, 6, !dbg !5095
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5093
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5093
  %and1 = and i64 %shl, %3, !dbg !5096
  %cmp = icmp ne i64 %and1, 0, !dbg !5097
  ret i1 %cmp, !dbg !5098
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5099 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5101, metadata !DIExpression()), !dbg !5104
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5102, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !5106
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5103, metadata !DIExpression()), !dbg !5107
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5108
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5109
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5110, !srcloc !5111
  %3 = icmp ult i8 %2, 2, !dbg !5110
  call void @llvm.assume(i1 %3), !dbg !5110
  store i8 %2, ptr %oldbit, align 1, !dbg !5110
  %4 = load i8, ptr %oldbit, align 1, !dbg !5112, !range !4750, !noundef !876
  %tobool = trunc i8 %4 to i1, !dbg !5112
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !5113
  ret i1 %tobool, !dbg !5114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5115 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5119, metadata !DIExpression()), !dbg !5122
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5120, metadata !DIExpression()), !dbg !5123
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5121, metadata !DIExpression()), !dbg !5124
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5125
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5127
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5128
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !dbg !5129
  br i1 %call, label %if.end, label %if.then, !dbg !5130

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5131

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5132
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5133
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5134
  store ptr %3, ptr %prev1, align 8, !dbg !5135
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5136
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5137
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5138
  store ptr %5, ptr %next2, align 8, !dbg !5139
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5140
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5141
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5142
  store ptr %7, ptr %prev3, align 8, !dbg !5143
  br label %do.body, !dbg !5144

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5145

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5147

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5145

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5149
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5149
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5149
  store volatile ptr %9, ptr %next6, align 8, !dbg !5149
  br label %do.end7, !dbg !5149

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5145

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5151
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5152 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5156, metadata !DIExpression()), !dbg !5159
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5157, metadata !DIExpression()), !dbg !5160
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5158, metadata !DIExpression()), !dbg !5161
  ret i1 true, !dbg !5162
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @memmap_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #7 align 16 !dbg !5163 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %memmap_attr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5165, metadata !DIExpression()), !dbg !5170
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5166, metadata !DIExpression()), !dbg !5171
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5167, metadata !DIExpression()), !dbg !5172
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !5173
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5168, metadata !DIExpression()), !dbg !5174
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5175
  %call = call ptr @to_memmap_entry(ptr noundef %0) #19, !dbg !5176
  store ptr %call, ptr %entry1, align 8, !dbg !5174
  call void @llvm.lifetime.start.p0(i64 8, ptr %memmap_attr) #16, !dbg !5177
  call void @llvm.dbg.declare(metadata ptr %memmap_attr, metadata !5169, metadata !DIExpression()), !dbg !5178
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !5179
  %call2 = call ptr @to_memmap_attr(ptr noundef %1) #19, !dbg !5180
  store ptr %call2, ptr %memmap_attr, align 8, !dbg !5178
  %2 = load ptr, ptr %memmap_attr, align 8, !dbg !5181
  %show = getelementptr inbounds %struct.memmap_attribute, ptr %2, i32 0, i32 1, !dbg !5182
  %3 = load ptr, ptr %show, align 8, !dbg !5182
  %4 = load ptr, ptr %entry1, align 8, !dbg !5183
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5184
  %call3 = call i64 %3(ptr noundef %4, ptr noundef %5) #19, !dbg !5181
  call void @llvm.lifetime.end.p0(i64 8, ptr %memmap_attr) #16, !dbg !5185
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !5185
  ret i64 %call3, !dbg !5186
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_memmap_attr(ptr noundef %attr) #5 align 16 !dbg !5187 {
entry:
  %attr.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5191, metadata !DIExpression()), !dbg !5194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5192, metadata !DIExpression()), !dbg !5195
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !5195
  store ptr %0, ptr %__mptr, align 8, !dbg !5195
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5195
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5195
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5196
  %2 = load ptr, ptr %tmp, align 8, !dbg !5195
  ret ptr %2, !dbg !5197
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @start_show(ptr noundef %entry1, ptr noundef %buf) #7 align 16 !dbg !5198 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5200, metadata !DIExpression()), !dbg !5202
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5201, metadata !DIExpression()), !dbg !5203
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5204
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5205
  %start = getelementptr inbounds %struct.firmware_map_entry, ptr %1, i32 0, i32 0, !dbg !5206
  %2 = load i64, ptr %start, align 8, !dbg !5206
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.3, i64 noundef %2) #19, !dbg !5207
  %conv = sext i32 %call to i64, !dbg !5207
  ret i64 %conv, !dbg !5208
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5209 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @end_show(ptr noundef %entry1, ptr noundef %buf) #7 align 16 !dbg !5213 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5215, metadata !DIExpression()), !dbg !5217
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5216, metadata !DIExpression()), !dbg !5218
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5219
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5220
  %end = getelementptr inbounds %struct.firmware_map_entry, ptr %1, i32 0, i32 1, !dbg !5221
  %2 = load i64, ptr %end, align 8, !dbg !5221
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.3, i64 noundef %2) #19, !dbg !5222
  %conv = sext i32 %call to i64, !dbg !5222
  ret i64 %conv, !dbg !5223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %entry1, ptr noundef %buf) #7 align 16 !dbg !5224 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5226, metadata !DIExpression()), !dbg !5228
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5227, metadata !DIExpression()), !dbg !5229
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5230
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5231
  %type = getelementptr inbounds %struct.firmware_map_entry, ptr %1, i32 0, i32 2, !dbg !5232
  %2 = load ptr, ptr %type, align 8, !dbg !5232
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.6, ptr noundef %2) #19, !dbg !5233
  %conv = sext i32 %call to i64, !dbg !5233
  ret i64 %conv, !dbg !5234
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5235 dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5238 dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5241 dso_local void @kobject_put(ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5242 dso_local ptr @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #9

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184}
!llvm.ident = !{!4185}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "map_entries_bootmem_lock", scope: !2, file: !3, line: 89, type: !180, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/.memmap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/firmware/memmap\22 -D KBUILD_BASENAME=\22memmap\22 -D KBUILD_MODNAME=\22memmap\22 -D __KBUILD_MODNAME=kmod_memmap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/memmap.ll drivers/firmware/memmap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !142, globals: !4111, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/memmap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c5e854c92976f01909a75f85495849")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !92, !102}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0)
!91 = !DIEnumerator(name: "true", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !93, line: 364, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!94 = !{!95, !96, !97, !98, !99, !100, !101}
!95 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!97 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!98 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!99 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!100 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!101 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !103, line: 100, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!105 = !DIEnumerator(name: "PG_locked", value: 0)
!106 = !DIEnumerator(name: "PG_writeback", value: 1)
!107 = !DIEnumerator(name: "PG_referenced", value: 2)
!108 = !DIEnumerator(name: "PG_uptodate", value: 3)
!109 = !DIEnumerator(name: "PG_dirty", value: 4)
!110 = !DIEnumerator(name: "PG_lru", value: 5)
!111 = !DIEnumerator(name: "PG_head", value: 6)
!112 = !DIEnumerator(name: "PG_waiters", value: 7)
!113 = !DIEnumerator(name: "PG_active", value: 8)
!114 = !DIEnumerator(name: "PG_workingset", value: 9)
!115 = !DIEnumerator(name: "PG_error", value: 10)
!116 = !DIEnumerator(name: "PG_slab", value: 11)
!117 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!118 = !DIEnumerator(name: "PG_arch_1", value: 13)
!119 = !DIEnumerator(name: "PG_reserved", value: 14)
!120 = !DIEnumerator(name: "PG_private", value: 15)
!121 = !DIEnumerator(name: "PG_private_2", value: 16)
!122 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!123 = !DIEnumerator(name: "PG_reclaim", value: 18)
!124 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!125 = !DIEnumerator(name: "PG_unevictable", value: 20)
!126 = !DIEnumerator(name: "PG_mlocked", value: 21)
!127 = !DIEnumerator(name: "PG_uncached", value: 22)
!128 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!129 = !DIEnumerator(name: "PG_readahead", value: 18)
!130 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!131 = !DIEnumerator(name: "PG_checked", value: 12)
!132 = !DIEnumerator(name: "PG_swapcache", value: 12)
!133 = !DIEnumerator(name: "PG_fscache", value: 16)
!134 = !DIEnumerator(name: "PG_pinned", value: 12)
!135 = !DIEnumerator(name: "PG_savepinned", value: 4)
!136 = !DIEnumerator(name: "PG_foreign", value: 12)
!137 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!138 = !DIEnumerator(name: "PG_isolated", value: 18)
!139 = !DIEnumerator(name: "PG_reported", value: 3)
!140 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!141 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!142 = !{!143, !145, !146, !299, !4099, !2138, !4101, !4102, !938, !4103, !154}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !144, line: 154, baseType: !7)
!144 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware_map_entry", file: !3, line: 26, size: 832, elements: !148)
!148 = !{!149, !155, !156, !160, !166}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !147, file: !3, line: 31, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !151, line: 23, baseType: !152)
!151 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !153, line: 31, baseType: !154)
!153 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!154 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !147, file: !3, line: 32, baseType: !150, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !3, line: 33, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !147, file: !3, line: 34, baseType: !161, size: 128, offset: 192)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !144, line: 190, size: 128, elements: !162)
!162 = !{!163, !165}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !144, line: 191, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !161, file: !144, line: 191, baseType: !164, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !147, file: !3, line: 35, baseType: !167, size: 512, offset: 320)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !168, line: 64, size: 512, elements: !169)
!168 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!169 = !{!170, !171, !172, !174, !262, !3986, !4089, !4094, !4095, !4096, !4097, !4098}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !168, line: 65, baseType: !157, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !167, file: !168, line: 66, baseType: !161, size: 128, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !167, file: !168, line: 67, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !167, file: !168, line: 68, baseType: !175, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !168, line: 168, size: 768, elements: !177)
!177 = !{!178, !179, !221, !222}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !176, file: !168, line: 169, baseType: !161, size: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !176, file: !168, line: 170, baseType: !180, size: 32, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !181, line: 29, baseType: !182)
!181 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !181, line: 17, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !181, line: 18, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !181, line: 18, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !185, file: !181, line: 19, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !189, line: 14, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !188, file: !189, line: 15, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !193, line: 44, baseType: !194)
!193 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !193, line: 14, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !193, line: 15, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !193, line: 15, size: 32, elements: !198)
!198 = !{!199, !205, !213}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !197, file: !193, line: 16, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !144, line: 174, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 172, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !201, file: !144, line: 173, baseType: !204, size: 32)
!204 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 24, baseType: !206, size: 16)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 24, size: 16, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !206, file: !193, line: 25, baseType: !209, size: 8)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !151, line: 17, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !153, line: 21, baseType: !211)
!211 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !206, file: !193, line: 26, baseType: !209, size: 8, offset: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 28, baseType: !214, size: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 28, size: 32, elements: !215)
!215 = !{!216, !220}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !214, file: !193, line: 29, baseType: !217, size: 16)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !151, line: 19, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !153, line: 24, baseType: !219)
!219 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !214, file: !193, line: 30, baseType: !217, size: 16, offset: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !176, file: !168, line: 171, baseType: !167, size: 512, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !176, file: !168, line: 172, baseType: !223, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !168, line: 133, size: 192, elements: !226)
!226 = !{!227, !234, !239}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !225, file: !168, line: 134, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!204, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !168, line: 135, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!157, !232}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !225, file: !168, line: 136, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!204, !232, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !168, line: 125, size: 20736, elements: !246)
!246 = !{!247, !252, !256, !257, !261}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !245, file: !168, line: 126, baseType: !248, size: 192)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 192, elements: !250)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!250 = !{!251}
!251 = !DISubrange(count: 3)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !245, file: !168, line: 127, baseType: !253, size: 4096, offset: 192)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 4096, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !245, file: !168, line: 128, baseType: !204, size: 32, offset: 4288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !245, file: !168, line: 129, baseType: !258, size: 16384, offset: 4320)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 16384, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 2048)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !245, file: !168, line: 130, baseType: !204, size: 32, offset: 20704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !167, file: !168, line: 69, baseType: !263, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !168, line: 116, size: 384, elements: !266)
!266 = !{!267, !271, !300, !3948, !3976, !3980}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !265, file: !168, line: 117, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !173}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !265, file: !168, line: 118, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !275, line: 254, size: 128, elements: !276)
!275 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!276 = !{!277, !292}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !274, file: !275, line: 255, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !173, !286, !249}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !144, line: 66, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !283, line: 73, baseType: !284)
!283 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !283, line: 15, baseType: !285)
!285 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !275, line: 30, size: 128, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !275, line: 31, baseType: !157, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !287, file: !275, line: 32, baseType: !291, size: 16, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !144, line: 24, baseType: !219)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !274, file: !275, line: 256, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!281, !173, !286, !157, !296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 61, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !299)
!299 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !265, file: !168, line: 119, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !275, line: 84, size: 320, elements: !305)
!305 = !{!306, !307, !311, !3944, !3946}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !275, line: 85, baseType: !157, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !304, file: !275, line: 86, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!291, !173, !286, !204}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !304, file: !275, line: 88, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!291, !173, !315, !204}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !275, line: 175, size: 512, elements: !317)
!317 = !{!318, !319, !320, !321, !3935, !3939, !3940}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !316, file: !275, line: 176, baseType: !287, size: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !316, file: !275, line: 177, baseType: !296, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !316, file: !275, line: 178, baseType: !145, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !316, file: !275, line: 179, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !327)
!327 = !{!328, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3929, !3930, !3931, !3932, !3933, !3934}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !326, file: !14, line: 473, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !331)
!331 = !{!332, !333, !334, !342, !343, !350, !351, !354, !355, !3708, !3709, !3710, !3711, !3712, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3752, !3755, !3756, !3757, !3766, !3767, !3768, !3769}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !330, file: !14, line: 642, baseType: !291, size: 16)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !330, file: !14, line: 643, baseType: !219, size: 16, offset: 16)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !330, file: !14, line: 644, baseType: !335, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !336, line: 23, baseType: !337)
!336 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 21, size: 32, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !337, file: !336, line: 22, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !144, line: 37, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !283, line: 49, baseType: !7)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !330, file: !14, line: 645, baseType: !161, size: 128, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !330, file: !14, line: 646, baseType: !344, size: 32, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !336, line: 28, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 26, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !345, file: !336, line: 27, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !144, line: 38, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !283, line: 50, baseType: !7)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !330, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !330, file: !14, line: 650, baseType: !352, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !330, file: !14, line: 651, baseType: !352, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !330, file: !14, line: 654, baseType: !356, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !359)
!359 = !{!360, !3536, !3546, !3550, !3554, !3558, !3562, !3566, !3570, !3574, !3578, !3579, !3583, !3587, !3624, !3653, !3657, !3663, !3667, !3671, !3675, !3679, !3683, !3689, !3693}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !358, file: !14, line: 1967, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !329, !364, !7}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !366, line: 82, size: 1536, elements: !367)
!366 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!367 = !{!368, !369, !379, !387, !388, !405, !406, !410, !423, !3519, !3520, !3521, !3522, !3528, !3529, !3530}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !365, file: !366, line: 84, baseType: !7, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !365, file: !366, line: 85, baseType: !370, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !371, line: 275, baseType: !372)
!371 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !371, line: 275, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !372, file: !371, line: 275, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !371, line: 69, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !371, line: 64, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !376, file: !371, line: 65, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !365, file: !366, line: 86, baseType: !380, size: 128, offset: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !381, line: 38, size: 128, elements: !382)
!381 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !381, line: 39, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !380, file: !381, line: 39, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !365, file: !366, line: 87, baseType: !364, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !365, file: !366, line: 88, baseType: !389, size: 128, offset: 256)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !366, line: 49, size: 128, elements: !390)
!390 = !{!391, !402}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !366, line: 50, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !366, line: 50, size: 64, elements: !393)
!393 = !{!394, !401}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !366, line: 51, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !366, line: 51, size: 64, elements: !396)
!396 = !{!397, !400}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !395, file: !366, line: 52, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !151, line: 21, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !153, line: 27, baseType: !7)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !395, file: !366, line: 52, baseType: !398, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !392, file: !366, line: 54, baseType: !150, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !389, file: !366, line: 56, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !365, file: !366, line: 89, baseType: !329, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !365, file: !366, line: 91, baseType: !407, size: 256, offset: 448)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !365, file: !366, line: 94, baseType: !411, size: 64, offset: 704)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !412, line: 25, size: 64, elements: !413)
!412 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !412, line: 26, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !412, line: 26, size: 64, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !415, file: !412, line: 28, baseType: !152, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !412, line: 30, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !412, line: 30, size: 64, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !419, file: !412, line: 31, baseType: !180, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !419, file: !412, line: 32, baseType: !204, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !365, file: !366, line: 95, baseType: !424, size: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !366, line: 128, size: 1024, align: 512, elements: !427)
!427 = !{!428, !432, !433, !440, !446, !450, !454, !458, !459, !463, !467, !3509, !3513}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !426, file: !366, line: 129, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!204, !364, !7}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !426, file: !366, line: 130, baseType: !429, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !426, file: !366, line: 131, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!204, !437, !439}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !426, file: !366, line: 132, baseType: !441, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!204, !437, !7, !157, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !426, file: !366, line: 134, baseType: !447, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!204, !437}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !426, file: !366, line: 135, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!204, !364}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !426, file: !366, line: 136, baseType: !455, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !364}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !426, file: !366, line: 137, baseType: !455, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !426, file: !366, line: 138, baseType: !460, size: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !364, !329}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !426, file: !366, line: 139, baseType: !464, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!249, !364, !249, !204}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !426, file: !366, line: 140, baseType: !468, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!471, !3508}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !473, line: 70, size: 256, elements: !474)
!473 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!474 = !{!475, !476, !3504, !3505}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !472, file: !473, line: 71, baseType: !364, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !472, file: !473, line: 72, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !479)
!479 = !{!480, !481, !484, !485, !486, !490, !970, !1109, !1149, !1239, !1243, !1244, !1245, !1246, !1247, !1256, !1257, !1258, !1259, !1264, !1268, !1269, !1272, !1275, !1278, !1281, !1282, !1283, !1324, !3437, !3438, !3439, !3440, !3441, !3442, !3445, !3447, !3454, !3455, !3456, !3457, !3458, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !478, file: !14, line: 1191, baseType: !161, size: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !478, file: !14, line: 1192, baseType: !482, size: 32, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !144, line: 21, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !144, line: 18, baseType: !398)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !478, file: !14, line: 1193, baseType: !211, size: 8, offset: 160)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !478, file: !14, line: 1194, baseType: !299, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !478, file: !14, line: 1195, baseType: !487, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !144, line: 52, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !283, line: 88, baseType: !489)
!489 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !478, file: !14, line: 1196, baseType: !491, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !493)
!493 = !{!494, !495, !496, !503, !507, !511, !515, !955, !956, !960, !962, !963, !964, !966, !967, !968, !969}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !492, file: !14, line: 2367, baseType: !157, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !492, file: !14, line: 2368, baseType: !204, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !492, file: !14, line: 2376, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!204, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !502, line: 32, flags: DIFlagFwdDecl)
!502 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !492, file: !14, line: 2377, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !492, file: !14, line: 2378, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!364, !491, !204, !157, !145}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !492, file: !14, line: 2380, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !477}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !492, file: !14, line: 2381, baseType: !516, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !518)
!518 = !{!519, !520, !521, !525, !547, !573, !574, !575, !576, !580, !585, !586, !606, !662, !663, !664, !665, !666, !669, !670, !671, !679, !683, !710, !731, !732, !733, !734, !743, !766, !767, !770, !773, !774, !775, !776, !777, !778, !779, !784, !785, !913, !921, !922, !923, !925, !929, !930, !934, !935, !936, !937, !939, !940, !941, !948, !949, !950, !954}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !517, file: !6, line: 403, baseType: !5, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !517, file: !6, line: 406, baseType: !161, size: 128, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !517, file: !6, line: 409, baseType: !522, size: 448, offset: 192)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 448, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 56)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !517, file: !6, line: 417, baseType: !526, size: 768, offset: 640)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !527)
!527 = !{!528, !529, !530, !531, !534}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !526, file: !6, line: 46, baseType: !167, size: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !526, file: !6, line: 47, baseType: !516, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !526, file: !6, line: 48, baseType: !173, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !526, file: !6, line: 49, baseType: !532, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !526, file: !6, line: 50, baseType: !535, size: 64, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !537, line: 26, size: 256, elements: !538)
!537 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !536, file: !537, line: 27, baseType: !7, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !536, file: !537, line: 28, baseType: !541, size: 192, offset: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !542, line: 43, size: 192, elements: !543)
!542 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!543 = !{!544, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !541, file: !542, line: 44, baseType: !545, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !189, line: 23, baseType: !188)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !541, file: !542, line: 45, baseType: !161, size: 128, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !517, file: !6, line: 418, baseType: !548, size: 64, offset: 1408)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !550)
!550 = !{!551, !552, !557, !561, !565, !569}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !549, file: !6, line: 54, baseType: !287, size: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !549, file: !6, line: 55, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!281, !548, !556, !249}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !549, file: !6, line: 57, baseType: !558, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!281, !548, !556, !157, !296}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !549, file: !6, line: 59, baseType: !562, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !516, !157}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !549, file: !6, line: 60, baseType: !566, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!204, !516}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !549, file: !6, line: 61, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !516}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !517, file: !6, line: 419, baseType: !157, size: 64, offset: 1472)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !517, file: !6, line: 420, baseType: !157, size: 64, offset: 1536)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !517, file: !6, line: 421, baseType: !173, size: 64, offset: 1600)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !517, file: !6, line: 424, baseType: !577, size: 64, offset: 1664)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !517, file: !6, line: 425, baseType: !581, size: 64, offset: 1728)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !151, line: 20, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !153, line: 26, baseType: !204)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !517, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !517, file: !6, line: 435, baseType: !587, size: 256, offset: 1856)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !588, line: 66, size: 256, elements: !589)
!588 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!589 = !{!590, !599, !600, !605}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !587, file: !588, line: 67, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !592, line: 13, baseType: !593)
!592 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !144, line: 181, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 179, size: 64, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !594, file: !144, line: 180, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !151, line: 22, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !153, line: 30, baseType: !489)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !587, file: !588, line: 68, baseType: !545, size: 32, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !587, file: !588, line: 70, baseType: !601, size: 32, offset: 96)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !602, line: 15, size: 32, elements: !603)
!602 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !601, file: !602, line: 20, baseType: !200, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !587, file: !588, line: 72, baseType: !161, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !517, file: !6, line: 437, baseType: !607, size: 64, offset: 2112)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !609, line: 69, size: 320, elements: !610)
!609 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!610 = !{!611, !612, !613, !633, !635, !639, !640}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !608, file: !609, line: 70, baseType: !157, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !608, file: !609, line: 71, baseType: !516, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !608, file: !609, line: 72, baseType: !614, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !609, line: 47, size: 256, elements: !617)
!617 = !{!618, !619, !625, !629}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !609, line: 49, baseType: !7, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !616, file: !609, line: 51, baseType: !620, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!204, !157, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !616, file: !609, line: 53, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!204, !249, !623}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !616, file: !609, line: 55, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !145}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !608, file: !609, line: 73, baseType: !634, size: 16, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !608, file: !609, line: 74, baseType: !636, size: 8, offset: 208)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !151, line: 16, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !153, line: 20, baseType: !638)
!638 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !609, line: 75, baseType: !209, size: 8, offset: 216)
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !609, line: 76, baseType: !641, size: 64, offset: 256)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !609, line: 76, size: 64, elements: !642)
!642 = !{!643, !644, !651}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !641, file: !609, line: 77, baseType: !145, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !641, file: !609, line: 78, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !609, line: 86, size: 128, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !647, file: !609, line: 87, baseType: !7, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !647, file: !609, line: 88, baseType: !249, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !641, file: !609, line: 79, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !609, line: 92, size: 256, elements: !655)
!655 = !{!656, !657, !658, !660, !661}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !654, file: !609, line: 94, baseType: !7, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !654, file: !609, line: 95, baseType: !7, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !654, file: !609, line: 96, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !654, file: !609, line: 97, baseType: !614, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !654, file: !609, line: 98, baseType: !145, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !517, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !517, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !517, file: !6, line: 442, baseType: !577, size: 64, offset: 2240)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !517, file: !6, line: 443, baseType: !581, size: 64, offset: 2304)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !517, file: !6, line: 444, baseType: !667, size: 8, offset: 2368)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !144, line: 35, baseType: !668)
!668 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !517, file: !6, line: 451, baseType: !667, size: 8, offset: 2376)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !517, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !517, file: !6, line: 455, baseType: !672, size: 64, offset: 2432)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !674, line: 23, size: 96, elements: !675)
!674 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!675 = !{!676, !677, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !673, file: !674, line: 24, baseType: !204, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !673, file: !674, line: 24, baseType: !204, size: 32, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !673, file: !674, line: 24, baseType: !204, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !517, file: !6, line: 458, baseType: !680, size: 64, offset: 2496)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!204}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !517, file: !6, line: 460, baseType: !684, size: 4032, align: 512, offset: 2560)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 4032, elements: !708)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !686)
!686 = !{!687, !688, !689}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !685, file: !6, line: 363, baseType: !145, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !685, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !685, file: !6, line: 367, baseType: !690, size: 448, offset: 128)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !690, file: !6, line: 320, baseType: !516, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !6, line: 321, baseType: !694, size: 384, offset: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !695, line: 40, size: 384, elements: !696)
!695 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !695, line: 41, baseType: !698, size: 384, align: 64)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 384, align: 64, elements: !706)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !700, line: 5, size: 192, align: 64, elements: !701)
!700 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!701 = !{!702, !703, !705}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !699, file: !700, line: 6, baseType: !299, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !699, file: !700, line: 7, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !699, file: !700, line: 8, baseType: !704, size: 64, offset: 128)
!706 = !{!707}
!707 = !DISubrange(count: 2)
!708 = !{!709}
!709 = !DISubrange(count: 7)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !517, file: !6, line: 463, baseType: !711, size: 192, offset: 6592)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !712, line: 8, size: 192, elements: !713)
!712 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!713 = !{!714, !715, !717}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !711, file: !712, line: 10, baseType: !7, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !711, file: !712, line: 11, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !711, file: !712, line: 12, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !720, line: 59, size: 48, elements: !721)
!720 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!721 = !{!722, !726, !727, !728, !729, !730}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !719, file: !720, line: 60, baseType: !723, size: 16)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !151, line: 18, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !153, line: 23, baseType: !725)
!725 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !719, file: !720, line: 61, baseType: !723, size: 16, offset: 16)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !719, file: !720, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !719, file: !720, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !720, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !719, file: !720, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !517, file: !6, line: 465, baseType: !299, size: 64, offset: 6784)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !517, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !517, file: !6, line: 470, baseType: !161, size: 128, offset: 6912)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !517, file: !6, line: 471, baseType: !735, size: 64, offset: 7040)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !737, line: 33, size: 96, elements: !738)
!737 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!738 = !{!739, !740, !741, !742}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !736, file: !737, line: 37, baseType: !204, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !736, file: !737, line: 43, baseType: !204, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !736, file: !737, line: 45, baseType: !219, size: 16, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !737, line: 47, baseType: !219, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !517, file: !6, line: 476, baseType: !744, size: 64, offset: 7104)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !746)
!746 = !{!747, !763, !764, !765}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !745, file: !6, line: 379, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !750, line: 204, baseType: !751)
!750 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !750, line: 197, size: 192, elements: !752)
!752 = !{!753, !755, !756, !757, !759, !761}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !751, file: !750, line: 198, baseType: !754, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !750, line: 21, baseType: !399)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !751, file: !750, line: 199, baseType: !211, size: 8, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !751, file: !750, line: 200, baseType: !211, size: 8, offset: 40)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !751, file: !750, line: 201, baseType: !758, size: 16, offset: 48)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !750, line: 17, baseType: !218)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !751, file: !750, line: 202, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !750, line: 16, baseType: !152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !751, file: !750, line: 203, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !750, line: 22, baseType: !152)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !745, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !745, file: !6, line: 381, baseType: !249, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !745, file: !6, line: 382, baseType: !249, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !517, file: !6, line: 477, baseType: !745, size: 256, offset: 7168)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !517, file: !6, line: 480, baseType: !768, size: 64, offset: 7424)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !517, file: !6, line: 483, baseType: !771, size: 64, offset: 7488)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !517, file: !6, line: 488, baseType: !249, size: 64, offset: 7552)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !517, file: !6, line: 492, baseType: !145, size: 64, offset: 7616)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !517, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !517, file: !6, line: 495, baseType: !145, size: 64, offset: 7744)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !517, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !517, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !517, file: !6, line: 500, baseType: !780, size: 64, offset: 7872)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !782, line: 45, baseType: !783)
!782 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !517, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !517, file: !6, line: 504, baseType: !786, size: 64, offset: 8000)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !789, line: 96, size: 192, elements: !790)
!789 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!790 = !{!791, !792, !873, !877}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !788, file: !789, line: 97, baseType: !7, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !788, file: !789, line: 98, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !789, line: 24, size: 3072, elements: !795)
!795 = !{!796, !798, !799, !800, !801, !825, !826, !827, !828, !846, !858, !859, !870, !871, !872}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !794, file: !789, line: 26, baseType: !797, size: 128)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 128, elements: !706)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !794, file: !789, line: 27, baseType: !797, size: 128, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !794, file: !789, line: 28, baseType: !204, size: 32, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !789, line: 31, baseType: !180, size: 32, align: 512, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !794, file: !789, line: 32, baseType: !802, size: 960, offset: 576)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !803, line: 206, size: 960, elements: !804)
!803 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!804 = !{!805, !814, !819, !821, !822, !824}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !802, file: !803, line: 207, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !144, line: 232, size: 128, align: 64, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !807, file: !144, line: 233, baseType: !806, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !807, file: !144, line: 234, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !806}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !802, file: !803, line: 208, baseType: !815, size: 256, offset: 64)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 256, elements: !817)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!817 = !{!818}
!818 = !DISubrange(count: 4)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !802, file: !803, line: 209, baseType: !820, size: 256, offset: 320)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !817)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !802, file: !803, line: 213, baseType: !285, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !802, file: !803, line: 215, baseType: !823, size: 256, offset: 640)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !817)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !802, file: !803, line: 216, baseType: !209, size: 8, offset: 896)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !794, file: !789, line: 33, baseType: !299, size: 64, offset: 1536)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !794, file: !789, line: 34, baseType: !299, size: 64, offset: 1600)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !794, file: !789, line: 35, baseType: !667, size: 8, offset: 1664)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !794, file: !789, line: 36, baseType: !829, size: 320, offset: 1728)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !830, line: 11, size: 320, elements: !831)
!830 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!831 = !{!832, !839, !840, !845}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !829, file: !830, line: 16, baseType: !833, size: 128)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !144, line: 198, size: 128, elements: !834)
!834 = !{!835, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !144, line: 199, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !833, file: !144, line: 199, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !829, file: !830, line: 17, baseType: !299, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !829, file: !830, line: 18, baseType: !841, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !830, line: 19, baseType: !398, size: 32, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !794, file: !789, line: 37, baseType: !847, size: 256, offset: 2048)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !848, line: 98, size: 256, elements: !849)
!848 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!849 = !{!850, !851, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !847, file: !848, line: 99, baseType: !591, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !847, file: !848, line: 100, baseType: !161, size: 128, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !847, file: !848, line: 101, baseType: !853, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !848, line: 21, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !794, file: !789, line: 38, baseType: !807, size: 128, align: 64, offset: 2304)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !794, file: !789, line: 39, baseType: !860, size: 64, offset: 2432)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !789, line: 49, size: 768, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868, !869}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !861, file: !789, line: 50, baseType: !180, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !861, file: !789, line: 51, baseType: !820, size: 256, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !861, file: !789, line: 53, baseType: !820, size: 256, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !861, file: !789, line: 54, baseType: !299, size: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !861, file: !789, line: 55, baseType: !860, size: 64, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !861, file: !789, line: 56, baseType: !204, size: 32, offset: 704)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !861, file: !789, line: 57, baseType: !204, size: 32, offset: 736)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !794, file: !789, line: 40, baseType: !299, size: 64, offset: 2496)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !794, file: !789, line: 42, baseType: !204, size: 32, offset: 2560)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !794, file: !789, line: 43, baseType: !787, size: 64, offset: 2624)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !788, file: !789, line: 99, baseType: !874, offset: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !875, line: 211, elements: !876)
!875 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!876 = !{}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !788, file: !789, line: 100, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !789, line: 63, size: 3008, elements: !880)
!880 = !{!881, !882, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !912}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !879, file: !789, line: 64, baseType: !860, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !879, file: !789, line: 65, baseType: !883, size: 192, offset: 64)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 192, elements: !250)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !879, file: !789, line: 67, baseType: !204, size: 32, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !879, file: !789, line: 68, baseType: !587, size: 256, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !879, file: !789, line: 69, baseType: !180, size: 32, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !879, file: !789, line: 70, baseType: !587, size: 256, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !879, file: !789, line: 71, baseType: !299, size: 64, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !879, file: !789, line: 72, baseType: !299, size: 64, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !879, file: !789, line: 73, baseType: !299, size: 64, offset: 1024)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !879, file: !789, line: 74, baseType: !299, size: 64, offset: 1088)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !879, file: !789, line: 75, baseType: !299, size: 64, offset: 1152)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !879, file: !789, line: 76, baseType: !299, size: 64, offset: 1216)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !879, file: !789, line: 77, baseType: !299, size: 64, offset: 1280)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !879, file: !789, line: 78, baseType: !299, size: 64, offset: 1344)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !879, file: !789, line: 79, baseType: !667, size: 8, offset: 1408)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !879, file: !789, line: 80, baseType: !299, size: 64, offset: 1472)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !879, file: !789, line: 81, baseType: !587, size: 256, offset: 1536)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !879, file: !789, line: 82, baseType: !536, size: 256, offset: 1792)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !879, file: !789, line: 84, baseType: !200, size: 32, offset: 2048)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !879, file: !789, line: 87, baseType: !299, size: 64, offset: 2112)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !879, file: !789, line: 88, baseType: !299, size: 64, offset: 2176)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !879, file: !789, line: 89, baseType: !904, size: 704, offset: 2240)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !848, line: 111, size: 704, elements: !905)
!905 = !{!906, !907, !908, !911}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !904, file: !848, line: 112, baseType: !847, size: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !904, file: !848, line: 113, baseType: !829, size: 320, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !904, file: !848, line: 116, baseType: !909, size: 64, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !848, line: 18, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !904, file: !848, line: 117, baseType: !204, size: 32, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !879, file: !789, line: 90, baseType: !787, size: 64, offset: 2944)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !517, file: !6, line: 515, baseType: !914, size: 64, offset: 8064)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !916, line: 117, size: 128, elements: !917)
!916 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !915, file: !916, line: 118, baseType: !583, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !915, file: !916, line: 119, baseType: !583, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !915, file: !916, line: 120, baseType: !285, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !517, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !517, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !517, file: !6, line: 520, baseType: !924, size: 64, offset: 8192)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !517, file: !6, line: 523, baseType: !926, size: 64, offset: 8256)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !517, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !517, file: !6, line: 525, baseType: !931, size: 64, offset: 8384)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !517, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !517, file: !6, line: 533, baseType: !145, size: 64, offset: 8512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !517, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !517, file: !6, line: 535, baseType: !938, size: 64, offset: 8640)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !517, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !517, file: !6, line: 539, baseType: !204, size: 32, offset: 8736)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !517, file: !6, line: 540, baseType: !942, size: 64, offset: 8768)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !944, line: 32, size: 64, elements: !945)
!944 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !943, file: !944, line: 33, baseType: !583, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !943, file: !944, line: 34, baseType: !583, size: 32, offset: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !517, file: !6, line: 563, baseType: !161, size: 128, offset: 8832)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !517, file: !6, line: 565, baseType: !161, size: 128, offset: 8960)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !517, file: !6, line: 568, baseType: !951, size: 64, offset: 9088)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !517, file: !6, line: 570, baseType: !200, size: 32, offset: 9152)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !492, file: !14, line: 2382, baseType: !491, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !492, file: !14, line: 2383, baseType: !957, size: 64, offset: 512)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !144, line: 194, size: 64, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !957, file: !144, line: 195, baseType: !836, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !492, file: !14, line: 2385, baseType: !961, offset: 576)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !875, line: 206, elements: !876)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !492, file: !14, line: 2386, baseType: !961, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !492, file: !14, line: 2387, baseType: !961, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !492, file: !14, line: 2388, baseType: !965, offset: 576)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, elements: !250)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !492, file: !14, line: 2390, baseType: !961, offset: 576)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !492, file: !14, line: 2391, baseType: !961, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !492, file: !14, line: 2392, baseType: !961, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !492, file: !14, line: 2393, baseType: !961, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !478, file: !14, line: 1197, baseType: !971, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !974)
!974 = !{!975, !979, !983, !984, !988, !994, !998, !999, !1000, !1004, !1008, !1012, !1013, !1014, !1020, !1024, !1025, !1032, !1033, !1034, !1035, !1039, !1043, !1092, !1107, !1108}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !973, file: !14, line: 2058, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!329, !477}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !973, file: !14, line: 2059, baseType: !980, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !329}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !973, file: !14, line: 2060, baseType: !980, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !973, file: !14, line: 2062, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !329, !204}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !973, file: !14, line: 2063, baseType: !989, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!204, !329, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !973, file: !14, line: 2064, baseType: !995, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!204, !329}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !973, file: !14, line: 2065, baseType: !980, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !973, file: !14, line: 2066, baseType: !512, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !973, file: !14, line: 2067, baseType: !1001, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!204, !477, !204}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !973, file: !14, line: 2068, baseType: !1005, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!204, !477, !13}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !973, file: !14, line: 2069, baseType: !1009, size: 64, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!204, !477}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !973, file: !14, line: 2070, baseType: !1005, size: 64, offset: 704)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !973, file: !14, line: 2071, baseType: !1009, size: 64, offset: 768)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !973, file: !14, line: 2072, baseType: !1015, size: 64, offset: 832)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!204, !364, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !973, file: !14, line: 2073, baseType: !1021, size: 64, offset: 896)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!204, !477, !716, !249}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !973, file: !14, line: 2074, baseType: !512, size: 64, offset: 960)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !973, file: !14, line: 2076, baseType: !1026, size: 64, offset: 1024)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!204, !1029, !364}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1031, line: 66, flags: DIFlagFwdDecl)
!1031 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !973, file: !14, line: 2077, baseType: !1026, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !973, file: !14, line: 2078, baseType: !1026, size: 64, offset: 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !973, file: !14, line: 2079, baseType: !1026, size: 64, offset: 1216)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !973, file: !14, line: 2081, baseType: !1036, size: 64, offset: 1280)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!281, !477, !204, !249, !296, !487}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !973, file: !14, line: 2082, baseType: !1040, size: 64, offset: 1344)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!281, !477, !204, !157, !296, !487}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !973, file: !14, line: 2083, baseType: !1044, size: 64, offset: 1408)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1047, !329}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1075, !1076, !1077}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1049, file: !19, line: 297, baseType: !833, size: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1049, file: !19, line: 298, baseType: !161, size: 128, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1049, file: !19, line: 299, baseType: !161, size: 128, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1049, file: !19, line: 300, baseType: !161, size: 128, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1049, file: !19, line: 301, baseType: !587, size: 256, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1049, file: !19, line: 302, baseType: !180, size: 32, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1049, file: !19, line: 303, baseType: !200, size: 32, offset: 800)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1049, file: !19, line: 304, baseType: !477, size: 64, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1049, file: !19, line: 305, baseType: !1060, size: 64, offset: 896)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1061)
!1061 = !{!1062, !1074}
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !19, line: 69, baseType: !1063, size: 32)
!1063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !19, line: 69, size: 32, elements: !1064)
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1063, file: !19, line: 70, baseType: !335, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1063, file: !19, line: 71, baseType: !344, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1063, file: !19, line: 72, baseType: !1068, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1069, line: 24, baseType: !1070)
!1069 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1069, line: 22, size: 32, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1070, file: !1069, line: 23, baseType: !1073, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1069, line: 20, baseType: !341)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1060, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1049, file: !19, line: 306, baseType: !487, size: 64, offset: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1049, file: !19, line: 307, baseType: !299, size: 64, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1049, file: !19, line: 308, baseType: !1078, size: 576, offset: 1088)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1079)
!1079 = !{!1080, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1091}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1078, file: !19, line: 206, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !489)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1078, file: !19, line: 207, baseType: !1081, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1078, file: !19, line: 208, baseType: !1081, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1078, file: !19, line: 209, baseType: !1081, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1078, file: !19, line: 210, baseType: !1081, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1078, file: !19, line: 211, baseType: !1081, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1078, file: !19, line: 212, baseType: !1081, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1078, file: !19, line: 213, baseType: !1089, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1090, line: 8, baseType: !598)
!1090 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1078, file: !19, line: 214, baseType: !1089, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !973, file: !14, line: 2085, baseType: !1093, size: 64, offset: 1472)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!285, !477, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1098, line: 15, size: 256, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1099 = !{!1100, !1101, !1102, !1103, !1104}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1097, file: !1098, line: 16, baseType: !143, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1097, file: !1098, line: 19, baseType: !204, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1097, file: !1098, line: 26, baseType: !299, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1097, file: !1098, line: 33, baseType: !299, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1097, file: !1098, line: 36, baseType: !1105, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !973, file: !14, line: 2087, baseType: !1093, size: 64, offset: 1536)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !973, file: !14, line: 2089, baseType: !512, size: 64, offset: 1600)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !478, file: !14, line: 1198, baseType: !1110, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1113)
!1113 = !{!1114, !1118, !1122, !1126, !1127, !1128, !1129, !1130, !1135, !1140, !1144}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1112, file: !19, line: 325, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!204, !1048}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1112, file: !19, line: 326, baseType: !1119, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!1048, !477, !204}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1112, file: !19, line: 327, baseType: !1123, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !1048}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1112, file: !19, line: 328, baseType: !1115, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1112, file: !19, line: 329, baseType: !1115, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1112, file: !19, line: 330, baseType: !1115, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1112, file: !19, line: 331, baseType: !1001, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1112, file: !19, line: 334, baseType: !1131, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1134, !329}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1112, file: !19, line: 335, baseType: !1136, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!204, !329, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1112, file: !19, line: 337, baseType: !1141, size: 64, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!204, !329, !1134}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1112, file: !19, line: 339, baseType: !1145, size: 64, offset: 640)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!204, !477, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !478, file: !14, line: 1199, baseType: !1150, size: 64, offset: 512)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1153)
!1153 = !{!1154, !1165, !1166, !1170, !1171, !1172, !1187, !1210, !1214, !1215, !1238}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1152, file: !19, line: 431, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!204, !477, !204, !204, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1161, line: 8, size: 128, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1160, file: !1161, line: 9, baseType: !471, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1160, file: !1161, line: 10, baseType: !364, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1152, file: !19, line: 432, baseType: !1001, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1152, file: !19, line: 433, baseType: !1167, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!204, !477, !7}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1152, file: !19, line: 434, baseType: !1167, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1152, file: !19, line: 435, baseType: !1001, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1152, file: !19, line: 436, baseType: !1173, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!204, !477, !204, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1177, file: !19, line: 418, baseType: !204, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1177, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1177, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1177, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1177, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1177, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1177, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1177, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1152, file: !19, line: 437, baseType: !1188, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!204, !477, !1060, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1192, file: !19, line: 346, baseType: !204, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1192, file: !19, line: 347, baseType: !150, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1192, file: !19, line: 348, baseType: !150, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1192, file: !19, line: 349, baseType: !150, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1192, file: !19, line: 350, baseType: !150, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1192, file: !19, line: 351, baseType: !150, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1192, file: !19, line: 352, baseType: !150, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1192, file: !19, line: 353, baseType: !597, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1192, file: !19, line: 355, baseType: !597, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1192, file: !19, line: 356, baseType: !204, size: 32, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1192, file: !19, line: 357, baseType: !204, size: 32, offset: 608)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1192, file: !19, line: 358, baseType: !150, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1192, file: !19, line: 359, baseType: !150, size: 64, offset: 704)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1192, file: !19, line: 360, baseType: !150, size: 64, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1192, file: !19, line: 361, baseType: !597, size: 64, offset: 832)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1192, file: !19, line: 362, baseType: !204, size: 32, offset: 896)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1152, file: !19, line: 438, baseType: !1211, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!204, !477, !1148, !1191}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1152, file: !19, line: 440, baseType: !1188, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1152, file: !19, line: 441, baseType: !1216, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!204, !477, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1220, file: !19, line: 412, baseType: !7, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1220, file: !19, line: 413, baseType: !1224, size: 1344, offset: 64)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1225, size: 1344, elements: !250)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1237}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1225, file: !19, line: 398, baseType: !7, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1225, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1225, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1225, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1225, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1225, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1225, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1225, file: !19, line: 406, baseType: !154, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1225, file: !19, line: 407, baseType: !1236, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !144, line: 132, baseType: !150)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1225, file: !19, line: 408, baseType: !1236, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1152, file: !19, line: 442, baseType: !1167, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !478, file: !14, line: 1200, baseType: !1240, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !478, file: !14, line: 1201, baseType: !299, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !478, file: !14, line: 1202, baseType: !299, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !478, file: !14, line: 1203, baseType: !299, size: 64, offset: 768)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !478, file: !14, line: 1204, baseType: !364, size: 64, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !478, file: !14, line: 1205, baseType: !1248, size: 320, offset: 896)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1249, line: 48, size: 320, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1250 = !{!1251, !1252, !1253, !1254, !1255}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1248, file: !1249, line: 49, baseType: !591, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1248, file: !1249, line: 55, baseType: !591, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1248, file: !1249, line: 57, baseType: !601, size: 32, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1248, file: !1249, line: 59, baseType: !545, size: 32, offset: 160)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1248, file: !1249, line: 60, baseType: !161, size: 128, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !478, file: !14, line: 1206, baseType: !204, size: 32, offset: 1216)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !478, file: !14, line: 1207, baseType: !200, size: 32, offset: 1248)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !478, file: !14, line: 1209, baseType: !145, size: 64, offset: 1280)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !478, file: !14, line: 1211, baseType: !1260, size: 64, offset: 1344)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !478, file: !14, line: 1223, baseType: !1265, size: 64, offset: 1408)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !381, line: 34, size: 64, elements: !1266)
!1266 = !{!1267}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1265, file: !381, line: 35, baseType: !384, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !478, file: !14, line: 1224, baseType: !161, size: 128, offset: 1472)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !478, file: !14, line: 1225, baseType: !1270, size: 64, offset: 1600)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !478, file: !14, line: 1226, baseType: !1273, size: 64, offset: 1664)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !478, file: !14, line: 1227, baseType: !1276, size: 64, offset: 1728)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !478, file: !14, line: 1228, baseType: !1279, size: 64, offset: 1792)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !478, file: !14, line: 1229, baseType: !833, size: 128, offset: 1856)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !478, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !478, file: !14, line: 1231, baseType: !1284, size: 2496, offset: 2048)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1290, !1322}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1284, file: !19, line: 522, baseType: !7, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1284, file: !19, line: 523, baseType: !1248, size: 320, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1284, file: !19, line: 524, baseType: !1289, size: 192, offset: 384)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 192, elements: !250)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1284, file: !19, line: 525, baseType: !1291, size: 1728, offset: 576)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1292, size: 1728, elements: !250)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1293)
!1293 = !{!1294, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1292, file: !19, line: 223, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1297)
!1297 = !{!1298, !1299, !1312, !1313}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1296, file: !19, line: 446, baseType: !204, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1296, file: !19, line: 447, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1302, file: !19, line: 313, baseType: !1001, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1302, file: !19, line: 314, baseType: !1001, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1302, file: !19, line: 315, baseType: !1001, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1302, file: !19, line: 316, baseType: !1001, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1302, file: !19, line: 317, baseType: !1115, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1302, file: !19, line: 318, baseType: !1115, size: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1302, file: !19, line: 319, baseType: !1115, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1302, file: !19, line: 320, baseType: !1145, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1296, file: !19, line: 448, baseType: !516, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1296, file: !19, line: 449, baseType: !1295, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1292, file: !19, line: 224, baseType: !204, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1292, file: !19, line: 226, baseType: !161, size: 128, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1292, file: !19, line: 227, baseType: !299, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1292, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1292, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1292, file: !19, line: 230, baseType: !1081, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1292, file: !19, line: 231, baseType: !1081, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1292, file: !19, line: 232, baseType: !145, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1284, file: !19, line: 526, baseType: !1323, size: 192, offset: 2304)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1300, size: 192, elements: !250)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !478, file: !14, line: 1233, baseType: !1325, size: 2368, offset: 4544)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1326)
!1326 = !{!1327, !1328, !1329}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1325, file: !14, line: 1185, baseType: !219, size: 16)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1325, file: !14, line: 1186, baseType: !219, size: 16, offset: 16)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1325, file: !14, line: 1187, baseType: !1330, size: 2304, offset: 64)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 2304, elements: !250)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1332, line: 12, size: 768, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1333 = !{!1334, !1348, !1349, !3435, !3436}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1331, file: !1332, line: 13, baseType: !1335, size: 384)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1336, line: 17, size: 384, elements: !1337)
!1336 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1337 = !{!1338, !1339, !1340, !1347}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1335, file: !1336, line: 18, baseType: !204, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1335, file: !1336, line: 19, baseType: !204, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1335, file: !1336, line: 20, baseType: !1341, size: 192, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1342, line: 41, baseType: !1343)
!1342 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1342, line: 37, size: 192, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1343, file: !1342, line: 38, baseType: !180, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1343, file: !1342, line: 39, baseType: !161, size: 128, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1335, file: !1336, line: 22, baseType: !807, size: 128, align: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1331, file: !1332, line: 14, baseType: !659, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1331, file: !1332, line: 15, baseType: !1350, size: 64, offset: 448)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1351, line: 16, size: 64, elements: !1352)
!1351 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1350, file: !1351, line: 17, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1031, line: 746, size: 58368, elements: !1356)
!1356 = !{!1357, !1365, !1366, !1367, !1373, !1374, !1375, !1376, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1447, !1458, !1553, !1557, !1560, !1591, !1592, !1593, !1594, !1605, !1607, !1608, !1609, !1610, !1611, !1612, !1623, !1624, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1641, !1642, !1649, !1650, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2608, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2656, !2662, !2663, !2664, !2665, !2666, !2670, !2673, !2680, !2685, !2688, !2691, !2694, !2698, !2836, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2874, !2875, !2876, !2885, !2893, !2894, !2895, !2896, !2897, !2902, !2903, !2904, !2907, !2908, !2911, !2914, !2917, !2925, !2928, !2929, !3015, !3016, !3017, !3018, !3019, !3025, !3026, !3027, !3028, !3031, !3032, !3035, !3038, !3039, !3042, !3043, !3044, !3047, !3048, !3049, !3050, !3051, !3052, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3084, !3085, !3091, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3103, !3175, !3177, !3178, !3179, !3180, !3181, !3182, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3212, !3213, !3214}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1355, file: !1031, line: 752, baseType: !1358, size: 192)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1359, line: 56, size: 192, elements: !1360)
!1359 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1360 = !{!1361, !1362, !1363, !1364}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1358, file: !1359, line: 57, baseType: !299, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1358, file: !1359, line: 58, baseType: !299, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1358, file: !1359, line: 59, baseType: !398, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1358, file: !1359, line: 61, baseType: !398, size: 32, offset: 160)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1355, file: !1031, line: 754, baseType: !7, size: 32, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1355, file: !1031, line: 767, baseType: !145, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1355, file: !1031, line: 768, baseType: !1368, size: 32, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1369, line: 113, baseType: !1370)
!1369 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1369, line: 111, size: 32, elements: !1371)
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1370, file: !1369, line: 112, baseType: !200, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1355, file: !1031, line: 770, baseType: !7, size: 32, offset: 352)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1355, file: !1031, line: 771, baseType: !7, size: 32, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1355, file: !1031, line: 774, baseType: !204, size: 32, offset: 416)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1355, file: !1031, line: 775, baseType: !1377, size: 128, offset: 448)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1378, line: 58, size: 128, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1379 = !{!1380, !1386, !1391, !1392}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1377, file: !1378, line: 59, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1382, line: 60, size: 64, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1381, file: !1382, line: 61, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !1378, line: 60, baseType: !1387, size: 32, offset: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !1378, line: 60, size: 32, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1387, file: !1378, line: 61, baseType: !7, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1387, file: !1378, line: 62, baseType: !200, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1377, file: !1378, line: 65, baseType: !217, size: 16, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1377, file: !1378, line: 65, baseType: !217, size: 16, offset: 112)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1355, file: !1031, line: 776, baseType: !7, size: 32, offset: 576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1355, file: !1031, line: 777, baseType: !299, size: 64, offset: 640)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1355, file: !1031, line: 778, baseType: !1354, size: 64, offset: 704)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1355, file: !1031, line: 787, baseType: !204, size: 32, offset: 768)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1355, file: !1031, line: 788, baseType: !204, size: 32, offset: 800)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1355, file: !1031, line: 790, baseType: !204, size: 32, offset: 832)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1355, file: !1031, line: 792, baseType: !204, size: 32, offset: 864)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1355, file: !1031, line: 793, baseType: !204, size: 32, offset: 896)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1355, file: !1031, line: 794, baseType: !204, size: 32, offset: 928)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1355, file: !1031, line: 795, baseType: !7, size: 32, offset: 960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1355, file: !1031, line: 797, baseType: !1404, size: 2048, offset: 1024)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1031, line: 551, size: 2048, elements: !1405)
!1405 = !{!1406, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1426, !1429, !1430, !1431}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1404, file: !1031, line: 553, baseType: !1407, size: 128)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1031, line: 411, size: 128, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1407, file: !1031, line: 412, baseType: !299, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1407, file: !1031, line: 413, baseType: !398, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1404, file: !1031, line: 554, baseType: !699, size: 192, align: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1404, file: !1031, line: 555, baseType: !150, size: 64, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1404, file: !1031, line: 556, baseType: !150, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1404, file: !1031, line: 558, baseType: !161, size: 128, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1404, file: !1031, line: 559, baseType: !7, size: 32, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1404, file: !1031, line: 561, baseType: !150, size: 64, offset: 640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1404, file: !1031, line: 562, baseType: !150, size: 64, offset: 704)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1404, file: !1031, line: 563, baseType: !150, size: 64, offset: 768)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1404, file: !1031, line: 564, baseType: !150, size: 64, offset: 832)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1404, file: !1031, line: 565, baseType: !597, size: 64, offset: 896)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1404, file: !1031, line: 566, baseType: !150, size: 64, offset: 960)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1404, file: !1031, line: 568, baseType: !150, size: 64, offset: 1024)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1404, file: !1031, line: 571, baseType: !204, size: 32, offset: 1088)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1404, file: !1031, line: 572, baseType: !1425, size: 64, offset: 1152)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1404, file: !1031, line: 574, baseType: !1427, size: 64, offset: 1216)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1031, line: 49, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1404, file: !1031, line: 576, baseType: !1427, size: 64, offset: 1280)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1404, file: !1031, line: 578, baseType: !299, size: 64, offset: 1344)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1404, file: !1031, line: 588, baseType: !1432, size: 512, align: 512, offset: 1536)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1031, line: 497, size: 512, align: 512, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1432, file: !1031, line: 498, baseType: !150, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1432, file: !1031, line: 499, baseType: !150, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1432, file: !1031, line: 500, baseType: !150, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1432, file: !1031, line: 501, baseType: !398, size: 32, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1432, file: !1031, line: 502, baseType: !398, size: 32, offset: 224)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1432, file: !1031, line: 503, baseType: !299, size: 64, offset: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1432, file: !1031, line: 504, baseType: !299, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1432, file: !1031, line: 505, baseType: !299, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1432, file: !1031, line: 506, baseType: !1443, size: 64, align: 64, offset: 448)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1031, line: 445, size: 64, align: 64, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1443, file: !1031, line: 446, baseType: !7, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1443, file: !1031, line: 447, baseType: !7, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1355, file: !1031, line: 798, baseType: !1448, size: 384, offset: 3072)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1031, line: 592, size: 384, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1448, file: !1031, line: 593, baseType: !161, size: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1448, file: !1031, line: 594, baseType: !299, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1448, file: !1031, line: 595, baseType: !299, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1448, file: !1031, line: 596, baseType: !7, size: 32, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1448, file: !1031, line: 597, baseType: !219, size: 16, offset: 288)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1448, file: !1031, line: 598, baseType: !219, size: 16, offset: 304)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1448, file: !1031, line: 600, baseType: !1457, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1355, file: !1031, line: 799, baseType: !1459, size: 1792, offset: 3456)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1031, line: 610, size: 1792, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1550, !1551}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1459, file: !1031, line: 611, baseType: !699, size: 192, align: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1459, file: !1031, line: 618, baseType: !150, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1459, file: !1031, line: 619, baseType: !150, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1459, file: !1031, line: 620, baseType: !150, size: 64, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1459, file: !1031, line: 621, baseType: !150, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1459, file: !1031, line: 622, baseType: !150, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1459, file: !1031, line: 629, baseType: !597, size: 64, offset: 512)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1459, file: !1031, line: 630, baseType: !150, size: 64, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1459, file: !1031, line: 631, baseType: !7, size: 32, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1459, file: !1031, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1459, file: !1031, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1459, file: !1031, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1459, file: !1031, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1459, file: !1031, line: 662, baseType: !1475, size: 512, offset: 704)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1476)
!1476 = !{!1477, !1485, !1486, !1491, !1546, !1547, !1548, !1549}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1475, file: !25, line: 119, baseType: !1478, size: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1479, line: 9, size: 256, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1478, file: !1479, line: 10, baseType: !699, size: 192, align: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1478, file: !1479, line: 11, baseType: !1483, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1484, line: 29, baseType: !597)
!1484 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1475, file: !25, line: 120, baseType: !1483, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1475, file: !25, line: 121, baseType: !1487, size: 64, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!24, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1475, file: !25, line: 122, baseType: !1492, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1494)
!1494 = !{!1495, !1520, !1521, !1524, !1529, !1530, !1541, !1545}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1493, file: !25, line: 160, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1497, file: !25, line: 216, baseType: !545, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1497, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1497, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1497, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1497, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1497, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1497, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1497, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1497, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1497, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1497, file: !25, line: 227, baseType: !219, size: 16, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1497, file: !25, line: 228, baseType: !219, size: 16, offset: 208)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1497, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1497, file: !25, line: 235, baseType: !1483, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1497, file: !25, line: 236, baseType: !1490, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1497, file: !25, line: 237, baseType: !1483, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1497, file: !25, line: 238, baseType: !1490, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1497, file: !25, line: 239, baseType: !1517, size: 4096, align: 512, offset: 512)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1493, size: 4096, align: 512, elements: !1518)
!1518 = !{!1519}
!1519 = !DISubrange(count: 8)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1493, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1493, file: !25, line: 162, baseType: !1522, size: 32, offset: 96)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !144, line: 32, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !283, line: 96, baseType: !204)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1493, file: !25, line: 163, baseType: !1525, size: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !371, line: 274, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !371, line: 274, size: 32, elements: !1527)
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1526, file: !371, line: 274, baseType: !375, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1493, file: !25, line: 164, baseType: !1490, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1493, file: !25, line: 165, baseType: !1531, size: 128, offset: 256)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1479, line: 14, size: 128, elements: !1532)
!1532 = !{!1533}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1531, file: !1479, line: 15, baseType: !1534, size: 128)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !700, line: 26, size: 128, elements: !1535)
!1535 = !{!1536, !1540}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1534, file: !700, line: 27, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !700, line: 12, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1537, file: !700, line: 13, baseType: !704, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1534, file: !700, line: 28, baseType: !704, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1493, file: !25, line: 166, baseType: !1542, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!1483}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1493, file: !25, line: 167, baseType: !1483, size: 64, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1475, file: !25, line: 123, baseType: !209, size: 8, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1475, file: !25, line: 124, baseType: !209, size: 8, offset: 456)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1475, file: !25, line: 125, baseType: !209, size: 8, offset: 464)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1475, file: !25, line: 126, baseType: !209, size: 8, offset: 472)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1459, file: !1031, line: 671, baseType: !1475, size: 512, offset: 1216)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1459, file: !1031, line: 679, baseType: !1552, size: 64, offset: 1728)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1355, file: !1031, line: 800, baseType: !1554, size: 64, offset: 5248)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1031, line: 800, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1355, file: !1031, line: 809, baseType: !1558, size: 64, offset: 5312)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1031, line: 70, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1355, file: !1031, line: 825, baseType: !1561, size: 2048, align: 512, offset: 5632)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1031, line: 509, size: 2048, align: 512, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1561, file: !1031, line: 511, baseType: !150, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1561, file: !1031, line: 512, baseType: !150, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1561, file: !1031, line: 513, baseType: !150, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1561, file: !1031, line: 514, baseType: !150, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1561, file: !1031, line: 515, baseType: !150, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1561, file: !1031, line: 516, baseType: !150, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1561, file: !1031, line: 518, baseType: !150, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1561, file: !1031, line: 519, baseType: !150, size: 64, offset: 448)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1561, file: !1031, line: 520, baseType: !597, size: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1561, file: !1031, line: 522, baseType: !150, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1561, file: !1031, line: 523, baseType: !150, size: 64, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1561, file: !1031, line: 524, baseType: !597, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1561, file: !1031, line: 526, baseType: !597, size: 64, offset: 768)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1561, file: !1031, line: 527, baseType: !150, size: 64, offset: 832)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1561, file: !1031, line: 529, baseType: !150, size: 64, offset: 896)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1561, file: !1031, line: 530, baseType: !150, size: 64, offset: 960)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1561, file: !1031, line: 531, baseType: !150, size: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1561, file: !1031, line: 532, baseType: !150, size: 64, offset: 1088)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1561, file: !1031, line: 533, baseType: !150, size: 64, offset: 1152)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1561, file: !1031, line: 535, baseType: !150, size: 64, offset: 1216)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1561, file: !1031, line: 536, baseType: !150, size: 64, offset: 1280)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1561, file: !1031, line: 537, baseType: !150, size: 64, offset: 1344)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1561, file: !1031, line: 538, baseType: !150, size: 64, offset: 1408)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1561, file: !1031, line: 539, baseType: !150, size: 64, offset: 1472)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1561, file: !1031, line: 540, baseType: !150, size: 64, offset: 1536)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1561, file: !1031, line: 541, baseType: !150, size: 64, offset: 1600)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1561, file: !1031, line: 542, baseType: !150, size: 64, offset: 1664)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1561, file: !1031, line: 543, baseType: !150, size: 64, offset: 1728)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1355, file: !1031, line: 833, baseType: !7, size: 32, offset: 7680)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1355, file: !1031, line: 836, baseType: !7, size: 32, offset: 7712)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1355, file: !1031, line: 837, baseType: !204, size: 32, offset: 7744)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1355, file: !1031, line: 838, baseType: !1595, size: 64, offset: 7808)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1598, line: 19, baseType: !1599)
!1598 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1598, line: 19, size: 64, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1599, file: !1598, line: 19, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 64, elements: !1603)
!1603 = !{!1604}
!1604 = !DISubrange(count: 1)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1355, file: !1031, line: 839, baseType: !1606, size: 64, offset: 7872)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1355, file: !1031, line: 840, baseType: !1597, size: 64, offset: 7936)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1355, file: !1031, line: 841, baseType: !145, size: 64, offset: 8000)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1355, file: !1031, line: 843, baseType: !219, size: 16, offset: 8064)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1355, file: !1031, line: 845, baseType: !219, size: 16, offset: 8080)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1355, file: !1031, line: 848, baseType: !204, size: 32, offset: 8096)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1355, file: !1031, line: 849, baseType: !1613, size: 32, offset: 8128)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1031, line: 718, size: 32, elements: !1614)
!1614 = !{!1615, !1622}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1613, file: !1031, line: 724, baseType: !1616, size: 32)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1613, file: !1031, line: 719, size: 32, elements: !1617)
!1617 = !{!1618, !1619, !1620, !1621}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1616, file: !1031, line: 720, baseType: !209, size: 8)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1616, file: !1031, line: 721, baseType: !209, size: 8, offset: 8)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1616, file: !1031, line: 722, baseType: !209, size: 8, offset: 16)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1616, file: !1031, line: 723, baseType: !209, size: 8, offset: 24)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1613, file: !1031, line: 725, baseType: !398, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1355, file: !1031, line: 850, baseType: !161, size: 128, offset: 8192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1355, file: !1031, line: 851, baseType: !1625, size: 64, offset: 8320)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1031, line: 60, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1355, file: !1031, line: 855, baseType: !299, size: 64, offset: 8384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1355, file: !1031, line: 856, baseType: !209, size: 8, offset: 8448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1355, file: !1031, line: 857, baseType: !209, size: 8, offset: 8456)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1355, file: !1031, line: 858, baseType: !204, size: 32, offset: 8480)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1355, file: !1031, line: 859, baseType: !161, size: 128, offset: 8512)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1355, file: !1031, line: 860, baseType: !204, size: 32, offset: 8640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1355, file: !1031, line: 861, baseType: !161, size: 128, offset: 8704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1355, file: !1031, line: 873, baseType: !1635, size: 256, offset: 8832)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1031, line: 376, size: 256, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1635, file: !1031, line: 381, baseType: !299, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1635, file: !1031, line: 384, baseType: !154, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1635, file: !1031, line: 389, baseType: !154, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1635, file: !1031, line: 392, baseType: !154, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1355, file: !1031, line: 875, baseType: !161, size: 128, offset: 9088)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1355, file: !1031, line: 877, baseType: !1643, size: 320, offset: 9216)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1644, line: 86, size: 320, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1645 = !{!1646, !1647, !1648}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1643, file: !1644, line: 87, baseType: !204, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1643, file: !1644, line: 88, baseType: !161, size: 128, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1643, file: !1644, line: 89, baseType: !161, size: 128, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1355, file: !1031, line: 878, baseType: !699, size: 192, align: 64, offset: 9536)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1355, file: !1031, line: 881, baseType: !1651, size: 64, offset: 9728)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1653)
!1653 = !{!1654, !2527}
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1652, file: !38, line: 734, baseType: !1655, size: 10240)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !38, line: 734, size: 10240, elements: !1656)
!1656 = !{!1657, !1661, !1674, !2404, !2405, !2406, !2407, !2408, !2409, !2416, !2417, !2418, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2457, !2459, !2462, !2507, !2508, !2509, !2512, !2513, !2514, !2517, !2518, !2519, !2525, !2526}
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !38, line: 739, baseType: !1658, size: 512, align: 512)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1655, file: !38, line: 739, size: 512, align: 512, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1658, file: !38, line: 747, baseType: !200, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1655, file: !38, line: 750, baseType: !1662, size: 128, offset: 512)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1663, line: 218, size: 128, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1664 = !{!1665, !1672, !1673}
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1663, line: 219, baseType: !1666, size: 32)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1663, line: 219, size: 32, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1666, file: !1663, line: 220, baseType: !180, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1666, file: !1663, line: 221, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1663, line: 197, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1663, line: 197, elements: !876)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1662, file: !1663, line: 223, baseType: !7, size: 32, offset: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1662, file: !1663, line: 224, baseType: !145, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1655, file: !38, line: 752, baseType: !1675, size: 64, offset: 640)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!299, !1678, !299, !299, !299, !299}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1680)
!1680 = !{!1681, !1687, !1688, !1690, !1691, !1692, !1693, !1694, !1744, !1934, !1943, !1944, !1945, !2394, !2395, !2396, !2397, !2399, !2400, !2403}
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !14, line: 995, baseType: !1682, size: 128)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1679, file: !14, line: 995, size: 128, elements: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1682, file: !14, line: 996, baseType: !1381, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1682, file: !14, line: 997, baseType: !807, size: 128, align: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1682, file: !14, line: 998, baseType: !7, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1679, file: !14, line: 1005, baseType: !180, size: 32, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1679, file: !14, line: 1006, baseType: !1689, size: 32, offset: 160)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !144, line: 156, baseType: !7)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1679, file: !14, line: 1007, baseType: !591, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1679, file: !14, line: 1008, baseType: !587, size: 256, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1679, file: !14, line: 1009, baseType: !487, size: 64, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1679, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1679, file: !14, line: 1011, baseType: !1695, size: 256, offset: 640)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1696)
!1696 = !{!1697, !1718, !1740, !1741, !1742, !1743}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1695, file: !14, line: 949, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1699, line: 34, baseType: !1700)
!1699 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1699, line: 25, size: 64, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1700, file: !1699, line: 26, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1704, line: 27, baseType: !1705)
!1704 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1704, line: 13, size: 64, elements: !1706)
!1706 = !{!1707, !1717}
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !1704, line: 14, baseType: !1708, size: 32)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1705, file: !1704, line: 14, size: 32, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1708, file: !1704, line: 15, baseType: !200, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !1704, line: 16, baseType: !1712, size: 32)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !1704, line: 16, size: 32, elements: !1713)
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1712, file: !1704, line: 18, baseType: !209, size: 8)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1712, file: !1704, line: 19, baseType: !1716, size: 24, offset: 8)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 24, elements: !250)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1705, file: !1704, line: 26, baseType: !192, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1695, file: !14, line: 950, baseType: !1719, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725, !1727, !1728, !1729, !1730}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1720, file: !30, line: 61, baseType: !1368, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1720, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1720, file: !30, line: 63, baseType: !180, size: 32, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1720, file: !30, line: 65, baseType: !1726, size: 256, offset: 128)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 256, elements: !817)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1720, file: !30, line: 66, baseType: !957, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1720, file: !30, line: 68, baseType: !1341, size: 192, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1720, file: !30, line: 69, baseType: !807, size: 128, align: 64, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1720, file: !30, line: 70, baseType: !1731, offset: 768)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1732, elements: !1738)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1732, file: !30, line: 55, baseType: !204, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1732, file: !30, line: 56, baseType: !1736, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1738 = !{!1739}
!1739 = !DISubrange(count: -1)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1695, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1695, file: !14, line: 952, baseType: !335, size: 32, offset: 160)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1695, file: !14, line: 952, baseType: !335, size: 32, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1695, file: !14, line: 953, baseType: !204, size: 32, offset: 224)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1679, file: !14, line: 1012, baseType: !1745, size: 64, offset: 896)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1748, line: 110, size: 1472, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1766, !1767, !1768, !1769, !1770, !1771, !1879, !1880, !1881, !1882, !1883, !1914, !1917, !1921, !1929}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1747, file: !1748, line: 111, baseType: !591, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1747, file: !1748, line: 112, baseType: !335, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1747, file: !1748, line: 113, baseType: !344, size: 32, offset: 96)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1747, file: !1748, line: 114, baseType: !335, size: 32, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1747, file: !1748, line: 115, baseType: !344, size: 32, offset: 160)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1747, file: !1748, line: 116, baseType: !335, size: 32, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1747, file: !1748, line: 117, baseType: !344, size: 32, offset: 224)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1747, file: !1748, line: 118, baseType: !335, size: 32, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1747, file: !1748, line: 119, baseType: !344, size: 32, offset: 288)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1747, file: !1748, line: 120, baseType: !7, size: 32, offset: 320)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1747, file: !1748, line: 121, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1762, line: 24, baseType: !1763)
!1762 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1762, line: 24, size: 64, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1763, file: !1762, line: 24, baseType: !150, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1747, file: !1748, line: 122, baseType: !1761, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1747, file: !1748, line: 123, baseType: !1761, size: 64, offset: 512)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1747, file: !1748, line: 124, baseType: !1761, size: 64, offset: 576)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1747, file: !1748, line: 125, baseType: !1761, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1747, file: !1748, line: 127, baseType: !211, size: 8, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1747, file: !1748, line: 129, baseType: !1772, size: 64, offset: 768)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1774, line: 195, size: 1728, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1775 = !{!1776, !1777, !1780, !1785, !1786, !1789, !1790, !1795, !1796, !1797, !1798, !1801, !1802, !1803, !1804, !1805, !1843, !1864}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1773, file: !1774, line: 196, baseType: !1368, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1773, file: !1774, line: 197, baseType: !1778, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1774, line: 28, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !144, line: 104, baseType: !583)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 198, baseType: !1781, size: 192, offset: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 198, size: 192, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1781, file: !1774, line: 199, baseType: !161, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1781, file: !1774, line: 200, baseType: !699, size: 192, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1773, file: !1774, line: 205, baseType: !1248, size: 320, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1773, file: !1774, line: 206, baseType: !1787, size: 64, offset: 576)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1774, line: 206, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1773, file: !1774, line: 207, baseType: !145, size: 64, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 208, baseType: !1791, size: 64, offset: 704)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 208, size: 64, elements: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1791, file: !1774, line: 209, baseType: !1089, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1791, file: !1774, line: 210, baseType: !1089, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1773, file: !1774, line: 212, baseType: !1089, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1773, file: !1774, line: 213, baseType: !335, size: 32, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1773, file: !1774, line: 214, baseType: !344, size: 32, offset: 864)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1773, file: !1774, line: 215, baseType: !1799, size: 32, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1774, line: 31, baseType: !1800)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !144, line: 110, baseType: !398)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1773, file: !1774, line: 216, baseType: !219, size: 16, offset: 928)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1773, file: !1774, line: 217, baseType: !219, size: 16, offset: 944)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1773, file: !1774, line: 221, baseType: !725, size: 16, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1773, file: !1774, line: 228, baseType: !299, size: 64, offset: 1024)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 245, baseType: !1806, size: 320, offset: 1088)
!1806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 245, size: 320, elements: !1807)
!1807 = !{!1808, !1835}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1806, file: !1774, line: 246, baseType: !1809, size: 320)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1774, line: 114, size: 320, elements: !1810)
!1810 = !{!1811, !1812, !1824, !1827, !1834}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1809, file: !1774, line: 116, baseType: !299, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1774, line: 117, baseType: !1813, size: 64, offset: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1774, line: 117, size: 64, elements: !1814)
!1814 = !{!1815, !1823}
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1774, line: 118, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !1774, line: 118, size: 64, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1816, file: !1774, line: 120, baseType: !217, size: 16)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1816, file: !1774, line: 121, baseType: !1820, size: 48, offset: 16)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 48, elements: !1821)
!1821 = !{!1822}
!1822 = !DISubrange(count: 6)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1813, file: !1774, line: 127, baseType: !299, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1809, file: !1774, line: 129, baseType: !1825, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1774, line: 102, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1809, file: !1774, line: 130, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1774, line: 108, size: 192, elements: !1830)
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1829, file: !1774, line: 109, baseType: !807, size: 128, align: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1829, file: !1774, line: 110, baseType: !1368, size: 32, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1829, file: !1774, line: 111, baseType: !667, size: 8, offset: 160)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1809, file: !1774, line: 131, baseType: !157, size: 64, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1774, line: 247, baseType: !1836, size: 320)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1806, file: !1774, line: 247, size: 320, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1841, !1842}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1836, file: !1774, line: 248, baseType: !299, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1836, file: !1774, line: 249, baseType: !299, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1836, file: !1774, line: 250, baseType: !1825, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1836, file: !1774, line: 251, baseType: !1828, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1836, file: !1774, line: 252, baseType: !249, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 260, baseType: !1844, size: 256, offset: 1408)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 260, size: 256, elements: !1845)
!1845 = !{!1846, !1852}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1844, file: !1774, line: 261, baseType: !1847, size: 256)
!1847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1774, line: 134, size: 256, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1847, file: !1774, line: 135, baseType: !145, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1847, file: !1774, line: 136, baseType: !1851, size: 256)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 256, elements: !817)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1774, line: 262, baseType: !1853, size: 256)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !1774, line: 262, size: 256, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1853, file: !1774, line: 264, baseType: !161, size: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1853, file: !1774, line: 265, baseType: !1857, size: 128, offset: 128)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1858, line: 22, size: 128, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1859 = !{!1860, !1863}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1857, file: !1858, line: 23, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1858, line: 23, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1857, file: !1858, line: 24, baseType: !299, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1773, file: !1774, line: 280, baseType: !1865, size: 64, offset: 1664)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1774, line: 176, size: 192, elements: !1867)
!1867 = !{!1868, !1877, !1878}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1866, file: !1774, line: 177, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1774, line: 171, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!204, !1772, !1873, !1875, !1772}
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1847)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1866, file: !1774, line: 178, baseType: !1772, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1866, file: !1774, line: 179, baseType: !1825, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1747, file: !1748, line: 130, baseType: !1772, size: 64, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1747, file: !1748, line: 131, baseType: !1772, size: 64, offset: 896)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1747, file: !1748, line: 132, baseType: !1772, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1747, file: !1748, line: 135, baseType: !145, size: 64, offset: 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1747, file: !1748, line: 137, baseType: !1884, size: 64, offset: 1088)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1886, line: 14, size: 1088, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1887 = !{!1888, !1889, !1898, !1899, !1900, !1901, !1902, !1903}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1885, file: !1886, line: 15, baseType: !1368, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1885, file: !1886, line: 17, baseType: !1890, size: 320, offset: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1891, line: 22, size: 320, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1892 = !{!1893, !1894, !1895, !1896}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1890, file: !1891, line: 23, baseType: !545, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1890, file: !1891, line: 24, baseType: !597, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1890, file: !1891, line: 26, baseType: !161, size: 128, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1890, file: !1891, line: 28, baseType: !1897, size: 64, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1885, file: !1886, line: 19, baseType: !299, size: 64, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1885, file: !1886, line: 20, baseType: !591, size: 64, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1885, file: !1886, line: 23, baseType: !833, size: 128, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1885, file: !1886, line: 24, baseType: !335, size: 32, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1885, file: !1886, line: 29, baseType: !591, size: 64, offset: 704)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1885, file: !1886, line: 36, baseType: !1904, size: 320, offset: 768)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1905, line: 15, size: 320, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1904, file: !1905, line: 16, baseType: !545, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1904, file: !1905, line: 18, baseType: !204, size: 32, offset: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1904, file: !1905, line: 19, baseType: !204, size: 32, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1904, file: !1905, line: 20, baseType: !204, size: 32, offset: 96)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1904, file: !1905, line: 21, baseType: !204, size: 32, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1904, file: !1905, line: 22, baseType: !299, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1904, file: !1905, line: 23, baseType: !299, size: 64, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1747, file: !1748, line: 138, baseType: !1915, size: 64, offset: 1152)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !336, line: 18, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1747, file: !1748, line: 139, baseType: !1918, size: 64, offset: 1216)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1920, line: 16, flags: DIFlagFwdDecl)
!1920 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1747, file: !1748, line: 140, baseType: !1922, size: 64, offset: 1280)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1748, line: 25, size: 64, elements: !1924)
!1924 = !{!1925, !1926, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1923, file: !1748, line: 26, baseType: !200, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1923, file: !1748, line: 27, baseType: !204, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1923, file: !1748, line: 28, baseType: !1928, offset: 64)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, elements: !1738)
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !1748, line: 142, baseType: !1930, size: 128, offset: 1344)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !1748, line: 142, size: 128, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1930, file: !1748, line: 143, baseType: !204, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1930, file: !1748, line: 144, baseType: !807, size: 128, align: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1679, file: !14, line: 1013, baseType: !1935, size: 256, offset: 960)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1936)
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1935, file: !14, line: 971, baseType: !299, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1935, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1935, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1935, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1935, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1935, file: !14, line: 976, baseType: !487, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1679, file: !14, line: 1014, baseType: !1160, size: 128, offset: 1216)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1679, file: !14, line: 1015, baseType: !329, size: 64, offset: 1344)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1679, file: !14, line: 1016, baseType: !1946, size: 64, offset: 1408)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1948)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1949)
!1949 = !{!1950, !1951, !1955, !1960, !1964, !1992, !1993, !1999, !2012, !2020, !2024, !2025, !2316, !2317, !2321, !2326, !2327, !2331, !2335, !2341, !2342, !2346, !2347, !2353, !2357, !2361, !2367, !2371, !2375, !2379, !2383, !2384, !2390}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1948, file: !14, line: 1915, baseType: !516, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1948, file: !14, line: 1916, baseType: !1952, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!487, !1678, !487, !204}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1948, file: !14, line: 1917, baseType: !1956, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!281, !1678, !249, !296, !1959}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1948, file: !14, line: 1918, baseType: !1961, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!281, !1678, !157, !296, !1959}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1948, file: !14, line: 1919, baseType: !1965, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!281, !1968, !1990}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1977, !1978, !1979, !1980}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1969, file: !14, line: 374, baseType: !1678, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1969, file: !14, line: 375, baseType: !487, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1969, file: !14, line: 376, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1968, !285}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1969, file: !14, line: 377, baseType: !145, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1969, file: !14, line: 378, baseType: !204, size: 32, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1969, file: !14, line: 379, baseType: !217, size: 16, offset: 288)
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !1969, file: !14, line: 380, baseType: !1981, size: 64, offset: 320)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1969, file: !14, line: 380, size: 64, elements: !1982)
!1982 = !{!1983, !1986}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1981, file: !14, line: 386, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1981, file: !14, line: 395, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!281, !145}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1948, file: !14, line: 1920, baseType: !1965, size: 64, offset: 320)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1948, file: !14, line: 1921, baseType: !1994, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!204, !1968, !1997, !7}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1948, file: !14, line: 1923, baseType: !2000, size: 64, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!204, !1678, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2005)
!2005 = !{!2006, !2011}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2004, file: !14, line: 1859, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2008)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!667, !2003, !157, !204, !487, !150, !7}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2004, file: !14, line: 1860, baseType: !487, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1948, file: !14, line: 1924, baseType: !2013, size: 64, offset: 512)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!2016, !1678, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2017, line: 59, baseType: !7)
!2017 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !502, line: 31, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1948, file: !14, line: 1925, baseType: !2021, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!285, !1678, !7, !299}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1948, file: !14, line: 1926, baseType: !2021, size: 64, offset: 640)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1948, file: !14, line: 1927, baseType: !2026, size: 64, offset: 704)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!204, !1678, !2029}
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2031)
!2031 = !{!2032, !2041, !2042, !2050, !2057, !2058, !2063, !2064, !2069, !2070, !2073, !2309, !2310, !2311, !2312, !2313, !2314}
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !38, line: 628, baseType: !2033, size: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2030, file: !38, line: 628, size: 128, elements: !2034)
!2034 = !{!2035, !2040}
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2033, file: !38, line: 629, baseType: !2036, size: 128)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !38, line: 629, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2036, file: !38, line: 631, baseType: !299, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2036, file: !38, line: 632, baseType: !299, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2033, file: !38, line: 635, baseType: !807, size: 128, align: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2030, file: !38, line: 639, baseType: !1651, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2030, file: !38, line: 640, baseType: !2043, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2044, line: 297, baseType: !2045)
!2044 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2044, line: 297, size: 64, elements: !2046)
!2046 = !{!2047}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2045, file: !2044, line: 297, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2049, line: 19, baseType: !299)
!2049 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2050 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !38, line: 646, baseType: !2051, size: 64, offset: 256)
!2051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2030, file: !38, line: 646, size: 64, elements: !2052)
!2052 = !{!2053, !2056}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2051, file: !38, line: 647, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2055)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !299)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2051, file: !38, line: 648, baseType: !2055, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2030, file: !38, line: 666, baseType: !204, size: 32, offset: 320)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2030, file: !38, line: 667, baseType: !2059, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2061)
!2061 = !{!2062}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2060, file: !38, line: 580, baseType: !1248, size: 320)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2030, file: !38, line: 670, baseType: !667, size: 8, offset: 448)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2030, file: !38, line: 681, baseType: !2065, size: 256, offset: 512)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !38, line: 678, size: 256, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2065, file: !38, line: 679, baseType: !699, size: 192, align: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2065, file: !38, line: 680, baseType: !299, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2030, file: !38, line: 689, baseType: !161, size: 128, offset: 768)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2030, file: !38, line: 691, baseType: !2071, size: 64, offset: 896)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2030, file: !38, line: 694, baseType: !2074, size: 64, offset: 960)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2076)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2077, line: 563, size: 1024, elements: !2078)
!2077 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2078 = !{!2079, !2083, !2084, !2088, !2092, !2096, !2273, !2277, !2281, !2285, !2286, !2287, !2291, !2295, !2301, !2305}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2076, file: !2077, line: 564, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !2029}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2076, file: !2077, line: 569, baseType: !2080, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2076, file: !2077, line: 571, baseType: !2085, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!204, !2029, !299}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2076, file: !2077, line: 572, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!204, !2029}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2076, file: !2077, line: 578, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!204, !2029, !299, !299, !299}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2076, file: !2077, line: 580, baseType: !2097, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2077, line: 512, size: 896, elements: !2103)
!2103 = !{!2104, !2112, !2113, !2120, !2127, !2137, !2266, !2267, !2269, !2271}
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !2077, line: 513, baseType: !2105, size: 320)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2102, file: !2077, line: 513, size: 320, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110, !2111}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2105, file: !2077, line: 514, baseType: !2029, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2105, file: !2077, line: 515, baseType: !143, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2105, file: !2077, line: 516, baseType: !299, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2105, file: !2077, line: 517, baseType: !299, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2105, file: !2077, line: 518, baseType: !299, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2102, file: !2077, line: 520, baseType: !37, size: 32, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2102, file: !2077, line: 522, baseType: !2114, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2049, line: 22, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2049, line: 22, size: 64, elements: !2117)
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2116, file: !2049, line: 22, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2049, line: 15, baseType: !299)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2102, file: !2077, line: 524, baseType: !2121, size: 64, offset: 448)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2044, line: 372, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2044, line: 372, size: 64, elements: !2124)
!2124 = !{!2125}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2123, file: !2044, line: 372, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2049, line: 16, baseType: !299)
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !2077, line: 527, baseType: !2128, size: 64, offset: 512)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2102, file: !2077, line: 527, size: 64, elements: !2129)
!2129 = !{!2130, !2136}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2128, file: !2077, line: 528, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2049, line: 21, baseType: !2132)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2049, line: 21, size: 64, elements: !2133)
!2133 = !{!2134}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2132, file: !2049, line: 21, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2049, line: 14, baseType: !299)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2128, file: !2077, line: 529, baseType: !2115, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2102, file: !2077, line: 534, baseType: !2138, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2140)
!2140 = !{!2141, !2142, !2260, !2265}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2139, file: !38, line: 75, baseType: !299, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !38, line: 83, baseType: !2143, size: 320, offset: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2139, file: !38, line: 83, size: 320, elements: !2144)
!2144 = !{!2145, !2166, !2180, !2184, !2259}
!2145 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !38, line: 84, baseType: !2146, size: 320)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !38, line: 84, size: 320, elements: !2147)
!2147 = !{!2148, !2159, !2160, !2165}
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2146, file: !38, line: 90, baseType: !2149, size: 128)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2146, file: !38, line: 90, size: 128, elements: !2150)
!2150 = !{!2151, !2152, !2157, !2158}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2149, file: !38, line: 91, baseType: !161, size: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !2149, file: !38, line: 94, baseType: !2153, size: 128)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !38, line: 94, size: 128, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2153, file: !38, line: 96, baseType: !145, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2153, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2149, file: !38, line: 102, baseType: !161, size: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2149, file: !38, line: 103, baseType: !161, size: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2146, file: !38, line: 106, baseType: !325, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2146, file: !38, line: 107, baseType: !2161, size: 64, offset: 192)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2146, file: !38, line: 107, size: 64, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2161, file: !38, line: 108, baseType: !299, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2161, file: !38, line: 109, baseType: !299, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2146, file: !38, line: 117, baseType: !299, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !38, line: 119, baseType: !2167, size: 320)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !38, line: 119, size: 320, elements: !2168)
!2168 = !{!2169, !2170, !2173, !2174, !2175}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2167, file: !38, line: 124, baseType: !299, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2167, file: !38, line: 125, baseType: !2171, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2167, file: !38, line: 126, baseType: !299, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2167, file: !38, line: 127, baseType: !299, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, scope: !2167, file: !38, line: 128, baseType: !2176, size: 64, offset: 256)
!2176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2167, file: !38, line: 128, size: 64, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2176, file: !38, line: 133, baseType: !299, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2176, file: !38, line: 138, baseType: !591, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !38, line: 141, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !38, line: 141, size: 64, elements: !2182)
!2182 = !{!2183}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2181, file: !38, line: 142, baseType: !299, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !38, line: 144, baseType: !2185, size: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !38, line: 144, size: 128, elements: !2186)
!2186 = !{!2187, !2258}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2185, file: !38, line: 146, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2190)
!2190 = !{!2191, !2201, !2222, !2223, !2224, !2225, !2226, !2240, !2241, !2242}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2189, file: !54, line: 127, baseType: !2192, size: 384)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2193)
!2193 = !{!2194, !2195, !2197, !2198, !2199, !2200}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2192, file: !54, line: 22, baseType: !299, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2192, file: !54, line: 23, baseType: !2196, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2192, file: !54, line: 24, baseType: !2196, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2192, file: !54, line: 25, baseType: !299, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2192, file: !54, line: 26, baseType: !299, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2192, file: !54, line: 27, baseType: !299, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2189, file: !54, line: 128, baseType: !2202, size: 128, offset: 384)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2203, line: 105, size: 128, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2202, file: !2203, line: 110, baseType: !299, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2202, file: !2203, line: 118, baseType: !2207, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2203, line: 95, size: 448, elements: !2209)
!2209 = !{!2210, !2211, !2217, !2218, !2219, !2220, !2221}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2208, file: !2203, line: 96, baseType: !591, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2208, file: !2203, line: 97, baseType: !2212, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2203, line: 60, baseType: !2214)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2208, file: !2203, line: 98, baseType: !2212, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2208, file: !2203, line: 99, baseType: !667, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2208, file: !2203, line: 100, baseType: !667, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2208, file: !2203, line: 101, baseType: !807, size: 128, align: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2208, file: !2203, line: 102, baseType: !2216, size: 64, offset: 384)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2189, file: !54, line: 129, baseType: !536, size: 256, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2189, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2189, file: !54, line: 132, baseType: !299, size: 64, offset: 832)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2189, file: !54, line: 133, baseType: !2227, size: 64, offset: 896)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2230)
!2230 = !{!2231, !2235, !2236}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2229, file: !54, line: 83, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !2138}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2229, file: !54, line: 89, baseType: !2097, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2229, file: !54, line: 100, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!204, !2188, !299, !299, !204}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2189, file: !54, line: 134, baseType: !145, size: 64, offset: 960)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2189, file: !54, line: 135, baseType: !204, size: 32, offset: 1024)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !54, line: 136, baseType: !2243, size: 128, offset: 1088)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !54, line: 136, size: 128, elements: !2244)
!2244 = !{!2245, !2251}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2243, file: !54, line: 137, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2247, line: 6, size: 128, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2246, file: !2247, line: 7, baseType: !150, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2246, file: !2247, line: 8, baseType: !150, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !54, line: 138, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2243, file: !54, line: 138, elements: !2253)
!2253 = !{!2254, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2252, file: !54, line: 138, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !54, line: 138, elements: !876)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2252, file: !54, line: 138, baseType: !2257)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2246, elements: !1738)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2185, file: !38, line: 147, baseType: !145, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2143, file: !38, line: 161, baseType: !807, size: 128, align: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !38, line: 164, baseType: !2261, size: 32, offset: 384)
!2261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2139, file: !38, line: 164, size: 32, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2261, file: !38, line: 169, baseType: !200, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2261, file: !38, line: 177, baseType: !7, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2139, file: !38, line: 181, baseType: !200, size: 32, offset: 416)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2102, file: !2077, line: 535, baseType: !2138, size: 64, offset: 640)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2102, file: !2077, line: 541, baseType: !2268, size: 64, offset: 704)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2102, file: !2077, line: 545, baseType: !2270, size: 64, offset: 768)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2102, file: !2077, line: 549, baseType: !2272, size: 64, offset: 832)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2044, line: 520, baseType: !2138)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2076, file: !2077, line: 581, baseType: !2274, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!2100, !2101, !7}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2076, file: !2077, line: 582, baseType: !2278, size: 64, offset: 448)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!2100, !2101, !299, !299}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2076, file: !2077, line: 584, baseType: !2282, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!299, !2029}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2076, file: !2077, line: 588, baseType: !2097, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2076, file: !2077, line: 591, baseType: !2097, size: 64, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2076, file: !2077, line: 597, baseType: !2288, size: 64, offset: 704)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!204, !2029, !299, !145, !204, !204}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2076, file: !2077, line: 603, baseType: !2292, size: 64, offset: 768)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!157, !2029}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2076, file: !2077, line: 613, baseType: !2296, size: 64, offset: 832)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!204, !2029, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2076, file: !2077, line: 625, baseType: !2302, size: 64, offset: 896)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!2299, !2029, !299}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2076, file: !2077, line: 633, baseType: !2306, size: 64, offset: 960)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!2138, !2029, !299}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2030, file: !38, line: 697, baseType: !299, size: 64, offset: 1024)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2030, file: !38, line: 699, baseType: !1678, size: 64, offset: 1088)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2030, file: !38, line: 700, baseType: !145, size: 64, offset: 1152)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2030, file: !38, line: 711, baseType: !591, size: 64, offset: 1216)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2030, file: !38, line: 717, baseType: !2299, size: 64, offset: 1280)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2030, file: !38, line: 722, baseType: !2315, offset: 1344)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !876)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1948, file: !14, line: 1928, baseType: !299, size: 64, offset: 768)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1948, file: !14, line: 1929, baseType: !2318, size: 64, offset: 832)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!204, !329, !1678}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1948, file: !14, line: 1930, baseType: !2322, size: 64, offset: 896)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!204, !1678, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !145)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1948, file: !14, line: 1931, baseType: !2318, size: 64, offset: 960)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1948, file: !14, line: 1932, baseType: !2328, size: 64, offset: 1024)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!204, !1678, !487, !487, !204}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1948, file: !14, line: 1933, baseType: !2332, size: 64, offset: 1088)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!204, !204, !1678, !204}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1948, file: !14, line: 1934, baseType: !2336, size: 64, offset: 1152)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!204, !1678, !204, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1948, file: !14, line: 1935, baseType: !1675, size: 64, offset: 1216)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1948, file: !14, line: 1936, baseType: !2343, size: 64, offset: 1280)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!204, !204}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1948, file: !14, line: 1937, baseType: !2336, size: 64, offset: 1344)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1948, file: !14, line: 1938, baseType: !2348, size: 64, offset: 1408)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!281, !2351, !1678, !1959, !296, !7}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1031, line: 59, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1948, file: !14, line: 1939, baseType: !2354, size: 64, offset: 1472)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!281, !1678, !1959, !2351, !296, !7}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1948, file: !14, line: 1940, baseType: !2358, size: 64, offset: 1536)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !1678}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1948, file: !14, line: 1941, baseType: !2362, size: 64, offset: 1600)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!204, !1678, !204, !2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1948, file: !14, line: 1942, baseType: !2368, size: 64, offset: 1664)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!285, !1678, !204, !487, !487}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1948, file: !14, line: 1944, baseType: !2372, size: 64, offset: 1728)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !1029, !1678}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1948, file: !14, line: 1948, baseType: !2376, size: 64, offset: 1792)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!281, !1678, !487, !1678, !487, !296, !7}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1948, file: !14, line: 1950, baseType: !2380, size: 64, offset: 1856)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!487, !1678, !487, !1678, !487, !487, !7}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1948, file: !14, line: 1953, baseType: !2328, size: 64, offset: 1920)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1948, file: !14, line: 1954, baseType: !2385, size: 64, offset: 1984)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!204, !2388, !7}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1948, file: !14, line: 1955, baseType: !2391, size: 64, offset: 2048)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!204, !2388, !1997, !7}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1679, file: !14, line: 1018, baseType: !150, size: 64, offset: 1472)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1679, file: !14, line: 1020, baseType: !145, size: 64, offset: 1536)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1679, file: !14, line: 1023, baseType: !145, size: 64, offset: 1600)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1679, file: !14, line: 1027, baseType: !2398, size: 64, offset: 1664)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1679, file: !14, line: 1029, baseType: !325, size: 64, offset: 1728)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1679, file: !14, line: 1030, baseType: !2401, size: 32, offset: 1792)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2402, line: 8, baseType: !398)
!2402 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1679, file: !14, line: 1031, baseType: !2401, size: 32, offset: 1824)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1655, file: !38, line: 756, baseType: !299, size: 64, offset: 704)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1655, file: !38, line: 757, baseType: !299, size: 64, offset: 768)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1655, file: !38, line: 760, baseType: !299, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1655, file: !38, line: 761, baseType: !299, size: 64, offset: 896)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1655, file: !38, line: 763, baseType: !299, size: 64, offset: 960)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1655, file: !38, line: 764, baseType: !2410, size: 64, offset: 1024)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2044, line: 299, baseType: !2412)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2044, line: 299, size: 64, elements: !2413)
!2413 = !{!2414}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2412, file: !2044, line: 299, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2049, line: 18, baseType: !299)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1655, file: !38, line: 773, baseType: !200, size: 32, offset: 1088)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1655, file: !38, line: 785, baseType: !200, size: 32, offset: 1120)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1655, file: !38, line: 795, baseType: !2419, size: 64, offset: 1152)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2421)
!2421 = !{!2422, !2423}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2420, file: !38, line: 727, baseType: !150, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2420, file: !38, line: 728, baseType: !204, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1655, file: !38, line: 801, baseType: !299, size: 64, offset: 1216)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1655, file: !38, line: 804, baseType: !591, size: 64, offset: 1280)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1655, file: !38, line: 806, baseType: !204, size: 32, offset: 1344)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1655, file: !38, line: 808, baseType: !180, size: 32, offset: 1376)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1655, file: !38, line: 823, baseType: !1248, size: 320, offset: 1408)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1655, file: !38, line: 825, baseType: !161, size: 128, offset: 1728)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1655, file: !38, line: 845, baseType: !204, size: 32, offset: 1856)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1655, file: !38, line: 849, baseType: !299, size: 64, offset: 1920)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1655, file: !38, line: 850, baseType: !299, size: 64, offset: 1984)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1655, file: !38, line: 852, baseType: !299, size: 64, offset: 2048)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1655, file: !38, line: 853, baseType: !299, size: 64, offset: 2112)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1655, file: !38, line: 854, baseType: !593, size: 64, offset: 2176)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1655, file: !38, line: 855, baseType: !299, size: 64, offset: 2240)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1655, file: !38, line: 856, baseType: !299, size: 64, offset: 2304)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1655, file: !38, line: 857, baseType: !299, size: 64, offset: 2368)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1655, file: !38, line: 858, baseType: !299, size: 64, offset: 2432)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1655, file: !38, line: 865, baseType: !375, size: 32, offset: 2496)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1655, file: !38, line: 867, baseType: !180, size: 32, offset: 2528)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1655, file: !38, line: 869, baseType: !299, size: 64, offset: 2560)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1655, file: !38, line: 869, baseType: !299, size: 64, offset: 2624)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1655, file: !38, line: 869, baseType: !299, size: 64, offset: 2688)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1655, file: !38, line: 869, baseType: !299, size: 64, offset: 2752)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1655, file: !38, line: 870, baseType: !299, size: 64, offset: 2816)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1655, file: !38, line: 870, baseType: !299, size: 64, offset: 2880)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1655, file: !38, line: 870, baseType: !299, size: 64, offset: 2944)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1655, file: !38, line: 871, baseType: !299, size: 64, offset: 3008)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1655, file: !38, line: 871, baseType: !299, size: 64, offset: 3072)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1655, file: !38, line: 871, baseType: !299, size: 64, offset: 3136)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1655, file: !38, line: 871, baseType: !299, size: 64, offset: 3200)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1655, file: !38, line: 873, baseType: !2454, size: 3328, offset: 3264)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 3328, elements: !2455)
!2455 = !{!2456}
!2456 = !DISubrange(count: 52)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1655, file: !38, line: 875, baseType: !2458, size: 1280, offset: 6592)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, size: 1280, elements: !817)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1655, file: !38, line: 877, baseType: !2460, size: 64, offset: 7872)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1655, file: !38, line: 880, baseType: !2463, size: 1088, offset: 7936)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2464, line: 72, baseType: !2465)
!2464 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2464, line: 23, size: 1088, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2474, !2475, !2476, !2477, !2504, !2505, !2506}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2465, file: !2464, line: 28, baseType: !150, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2465, file: !2464, line: 38, baseType: !593, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2465, file: !2464, line: 40, baseType: !299, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2465, file: !2464, line: 43, baseType: !1248, size: 320, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2465, file: !2464, line: 44, baseType: !2472, size: 64, offset: 512)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2464, line: 44, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2465, file: !2464, line: 48, baseType: !299, size: 64, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2465, file: !2464, line: 59, baseType: !587, size: 256, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2465, file: !2464, line: 60, baseType: !145, size: 64, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2465, file: !2464, line: 61, baseType: !2478, size: 64, offset: 960)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2480)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2481, line: 13, size: 1216, elements: !2482)
!2481 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2480, file: !2481, line: 14, baseType: !145, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2480, file: !2481, line: 15, baseType: !299, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2480, file: !2481, line: 17, baseType: !299, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2480, file: !2481, line: 17, baseType: !299, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2480, file: !2481, line: 18, baseType: !299, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2480, file: !2481, line: 18, baseType: !299, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2480, file: !2481, line: 19, baseType: !2490, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2480, file: !2481, line: 21, baseType: !285, size: 64, offset: 448)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2480, file: !2481, line: 23, baseType: !285, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2480, file: !2481, line: 24, baseType: !285, size: 64, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2480, file: !2481, line: 25, baseType: !285, size: 64, offset: 640)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2480, file: !2481, line: 26, baseType: !285, size: 64, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2480, file: !2481, line: 27, baseType: !285, size: 64, offset: 768)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2480, file: !2481, line: 28, baseType: !285, size: 64, offset: 832)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2480, file: !2481, line: 29, baseType: !285, size: 64, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2480, file: !2481, line: 30, baseType: !285, size: 64, offset: 960)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2480, file: !2481, line: 31, baseType: !285, size: 64, offset: 1024)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2480, file: !2481, line: 32, baseType: !285, size: 64, offset: 1088)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2480, file: !2481, line: 33, baseType: !285, size: 64, offset: 1152)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2465, file: !2464, line: 63, baseType: !200, size: 32, offset: 1024)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2465, file: !2464, line: 69, baseType: !217, size: 16, offset: 1056)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2465, file: !2464, line: 70, baseType: !723, size: 16, offset: 1072)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1655, file: !38, line: 882, baseType: !299, size: 64, offset: 9024)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1655, file: !38, line: 885, baseType: !180, size: 32, offset: 9088)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1655, file: !38, line: 886, baseType: !2510, size: 64, offset: 9152)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1655, file: !38, line: 901, baseType: !1915, size: 64, offset: 9216)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1655, file: !38, line: 904, baseType: !1678, size: 64, offset: 9280)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1655, file: !38, line: 906, baseType: !2515, size: 64, offset: 9344)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1655, file: !38, line: 930, baseType: !200, size: 32, offset: 9408)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1655, file: !38, line: 933, baseType: !200, size: 32, offset: 9440)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1655, file: !38, line: 935, baseType: !2520, size: 64, offset: 9472)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2521)
!2521 = !{!2522}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2520, file: !68, line: 104, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1655, file: !38, line: 940, baseType: !591, size: 64, offset: 9536)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1655, file: !38, line: 942, baseType: !847, size: 256, offset: 9600)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1652, file: !38, line: 986, baseType: !2528, offset: 10240)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, elements: !1738)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1355, file: !1031, line: 882, baseType: !1651, size: 64, offset: 9792)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1355, file: !1031, line: 884, baseType: !204, size: 32, offset: 9856)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1355, file: !1031, line: 885, baseType: !204, size: 32, offset: 9888)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1355, file: !1031, line: 886, baseType: !204, size: 32, offset: 9920)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1355, file: !1031, line: 888, baseType: !204, size: 32, offset: 9952)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1355, file: !1031, line: 890, baseType: !299, size: 64, offset: 9984)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1355, file: !1031, line: 893, baseType: !7, size: 32, offset: 10048)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1355, file: !1031, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1355, file: !1031, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1355, file: !1031, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1355, file: !1031, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1355, file: !1031, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1355, file: !1031, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1355, file: !1031, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1355, file: !1031, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1355, file: !1031, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1355, file: !1031, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1355, file: !1031, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1355, file: !1031, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1355, file: !1031, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1355, file: !1031, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1355, file: !1031, line: 969, baseType: !299, size: 64, offset: 10176)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1355, file: !1031, line: 971, baseType: !2552, size: 448, offset: 10240)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2553)
!2553 = !{!2554, !2555, !2560}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2552, file: !62, line: 26, baseType: !299, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2552, file: !62, line: 27, baseType: !2556, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!285, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !62, line: 28, baseType: !2561, size: 320, offset: 128)
!2561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !62, line: 28, size: 320, elements: !2562)
!2562 = !{!2563, !2573, !2598}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2561, file: !62, line: 37, baseType: !2564, size: 320)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2561, file: !62, line: 30, size: 320, elements: !2565)
!2565 = !{!2566, !2568, !2569, !2570, !2571, !2572}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2564, file: !62, line: 31, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2564, file: !62, line: 32, baseType: !398, size: 32, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2564, file: !62, line: 33, baseType: !398, size: 32, offset: 96)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2564, file: !62, line: 34, baseType: !398, size: 32, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2564, file: !62, line: 35, baseType: !150, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2564, file: !62, line: 36, baseType: !2567, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2561, file: !62, line: 47, baseType: !2574, size: 192)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2561, file: !62, line: 39, size: 192, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2597}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2574, file: !62, line: 40, baseType: !1522, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2574, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !2574, file: !62, line: 42, baseType: !2579, size: 64, offset: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2574, file: !62, line: 42, size: 64, elements: !2580)
!2580 = !{!2581, !2589}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2579, file: !62, line: 43, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2584, line: 7, size: 128, elements: !2585)
!2584 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2585 = !{!2586, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2583, file: !2584, line: 8, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !283, line: 93, baseType: !489)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2583, file: !2584, line: 9, baseType: !489, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2579, file: !62, line: 44, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2592, line: 7, size: 64, elements: !2593)
!2592 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2593 = !{!2594, !2596}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2591, file: !2592, line: 8, baseType: !2595, size: 32)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2592, line: 5, baseType: !583)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2591, file: !2592, line: 9, baseType: !583, size: 32, offset: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2574, file: !62, line: 46, baseType: !150, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2561, file: !62, line: 55, baseType: !2599, size: 256)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2561, file: !62, line: 49, size: 256, elements: !2600)
!2600 = !{!2601, !2604, !2605, !2606, !2607}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2599, file: !62, line: 50, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2599, file: !62, line: 51, baseType: !204, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2599, file: !62, line: 52, baseType: !204, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2599, file: !62, line: 53, baseType: !299, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2599, file: !62, line: 54, baseType: !299, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1355, file: !1031, line: 973, baseType: !2609, size: 32, offset: 10688)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !144, line: 27, baseType: !2610)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !283, line: 28, baseType: !204)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1355, file: !1031, line: 974, baseType: !2609, size: 32, offset: 10720)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1355, file: !1031, line: 978, baseType: !299, size: 64, offset: 10752)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1355, file: !1031, line: 987, baseType: !1354, size: 64, offset: 10816)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1355, file: !1031, line: 990, baseType: !1354, size: 64, offset: 10880)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1355, file: !1031, line: 995, baseType: !161, size: 128, offset: 10944)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1355, file: !1031, line: 996, baseType: !161, size: 128, offset: 11072)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1355, file: !1031, line: 997, baseType: !1354, size: 64, offset: 11200)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1355, file: !1031, line: 1005, baseType: !161, size: 128, offset: 11264)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1355, file: !1031, line: 1006, baseType: !161, size: 128, offset: 11392)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1355, file: !1031, line: 1009, baseType: !1719, size: 64, offset: 11520)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1355, file: !1031, line: 1010, baseType: !2622, size: 512, offset: 11584)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 512, elements: !817)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1355, file: !1031, line: 1011, baseType: !161, size: 128, offset: 12096)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1355, file: !1031, line: 1012, baseType: !161, size: 128, offset: 12224)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1355, file: !1031, line: 1014, baseType: !535, size: 64, offset: 12352)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1355, file: !1031, line: 1017, baseType: !716, size: 64, offset: 12416)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1355, file: !1031, line: 1020, baseType: !716, size: 64, offset: 12480)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1355, file: !1031, line: 1023, baseType: !145, size: 64, offset: 12544)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1355, file: !1031, line: 1025, baseType: !150, size: 64, offset: 12608)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1355, file: !1031, line: 1026, baseType: !150, size: 64, offset: 12672)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1355, file: !1031, line: 1031, baseType: !150, size: 64, offset: 12736)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1355, file: !1031, line: 1032, baseType: !2633, size: 192, offset: 12800)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1031, line: 324, size: 192, elements: !2634)
!2634 = !{!2635, !2636, !2637}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2633, file: !1031, line: 326, baseType: !150, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2633, file: !1031, line: 327, baseType: !150, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2633, file: !1031, line: 328, baseType: !545, size: 32, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1355, file: !1031, line: 1041, baseType: !299, size: 64, offset: 12992)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1355, file: !1031, line: 1042, baseType: !299, size: 64, offset: 13056)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1355, file: !1031, line: 1045, baseType: !150, size: 64, offset: 13120)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1355, file: !1031, line: 1048, baseType: !150, size: 64, offset: 13184)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1355, file: !1031, line: 1051, baseType: !299, size: 64, offset: 13248)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1355, file: !1031, line: 1052, baseType: !299, size: 64, offset: 13312)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1355, file: !1031, line: 1055, baseType: !2645, size: 640, offset: 13376)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2646, line: 132, size: 640, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2647 = !{!2648, !2654, !2655}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2645, file: !2646, line: 133, baseType: !2649, size: 576)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2650, size: 576, elements: !250)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2646, line: 117, size: 192, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2650, file: !2646, line: 118, baseType: !150, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2650, file: !2646, line: 119, baseType: !1531, size: 128, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2645, file: !2646, line: 134, baseType: !7, size: 32, offset: 576)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2645, file: !2646, line: 135, baseType: !7, size: 32, offset: 608)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1355, file: !1031, line: 1058, baseType: !2657, size: 448, offset: 14016)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2646, line: 144, size: 448, elements: !2658)
!2658 = !{!2659, !2660, !2661}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2657, file: !2646, line: 145, baseType: !807, size: 128, align: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2657, file: !2646, line: 146, baseType: !587, size: 256, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2657, file: !2646, line: 147, baseType: !7, size: 32, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1355, file: !1031, line: 1064, baseType: !1745, size: 64, offset: 14464)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1355, file: !1031, line: 1067, baseType: !1745, size: 64, offset: 14528)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1355, file: !1031, line: 1070, baseType: !1745, size: 64, offset: 14592)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1355, file: !1031, line: 1074, baseType: !1772, size: 64, offset: 14656)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1355, file: !1031, line: 1084, baseType: !2667, size: 128, offset: 14720)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !2668)
!2668 = !{!2669}
!2669 = !DISubrange(count: 16)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1355, file: !1031, line: 1086, baseType: !2671, size: 64, offset: 14848)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1031, line: 55, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1355, file: !1031, line: 1089, baseType: !2674, size: 64, offset: 14912)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2675, line: 12, size: 64, elements: !2676)
!2675 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2676 = !{!2677}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2674, file: !2675, line: 13, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2675, line: 8, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1355, file: !1031, line: 1090, baseType: !2681, size: 128, offset: 14976)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2682, line: 13, size: 128, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2681, file: !2682, line: 14, baseType: !161, size: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1355, file: !1031, line: 1097, baseType: !2686, size: 64, offset: 15104)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1031, line: 50, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1355, file: !1031, line: 1100, baseType: !2689, size: 64, offset: 15168)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1031, line: 1100, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1355, file: !1031, line: 1103, baseType: !2692, size: 64, offset: 15232)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1031, line: 53, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1355, file: !1031, line: 1107, baseType: !2695, size: 64, offset: 15296)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2697, line: 35, flags: DIFlagFwdDecl)
!2697 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1355, file: !1031, line: 1110, baseType: !2699, size: 64, offset: 15360)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2701, line: 93, size: 8768, elements: !2702)
!2701 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2750, !2759, !2760, !2762, !2763, !2764, !2767, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2805, !2806, !2813, !2823, !2826, !2827, !2830, !2831, !2832, !2833, !2834, !2835}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2700, file: !2701, line: 94, baseType: !1368, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2700, file: !2701, line: 95, baseType: !200, size: 32, offset: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2700, file: !2701, line: 96, baseType: !204, size: 32, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2700, file: !2701, line: 97, baseType: !204, size: 32, offset: 96)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2700, file: !2701, line: 98, baseType: !161, size: 128, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2700, file: !2701, line: 100, baseType: !1341, size: 192, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2700, file: !2701, line: 103, baseType: !1354, size: 64, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2700, file: !2701, line: 106, baseType: !2711, size: 192, offset: 512)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1920, line: 32, size: 192, elements: !2712)
!2712 = !{!2713, !2714}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2711, file: !1920, line: 33, baseType: !161, size: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2711, file: !1920, line: 34, baseType: !2715, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2716, line: 25, baseType: !2717)
!2716 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2716, line: 23, size: 64, elements: !2718)
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2717, file: !2716, line: 24, baseType: !1602, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2700, file: !2701, line: 109, baseType: !957, size: 64, offset: 704)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2700, file: !2701, line: 112, baseType: !204, size: 32, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2700, file: !2701, line: 114, baseType: !204, size: 32, offset: 800)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2700, file: !2701, line: 115, baseType: !1354, size: 64, offset: 832)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2700, file: !2701, line: 118, baseType: !204, size: 32, offset: 896)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2700, file: !2701, line: 119, baseType: !7, size: 32, offset: 928)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2700, file: !2701, line: 121, baseType: !2727, size: 64, offset: 960)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2701, line: 80, size: 448, elements: !2729)
!2729 = !{!2730, !2731, !2737}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2728, file: !2701, line: 81, baseType: !200, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2728, file: !2701, line: 82, baseType: !2732, size: 128, offset: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2701, line: 75, size: 128, elements: !2733)
!2733 = !{!2734, !2735}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2732, file: !2701, line: 76, baseType: !1354, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2732, file: !2701, line: 77, baseType: !2736, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2728, file: !2701, line: 83, baseType: !536, size: 256, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2700, file: !2701, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2700, file: !2701, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2700, file: !2701, line: 138, baseType: !7, size: 32, offset: 1056)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2700, file: !2701, line: 139, baseType: !161, size: 128, offset: 1088)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2700, file: !2701, line: 142, baseType: !1475, size: 512, offset: 1216)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2700, file: !2701, line: 143, baseType: !1483, size: 64, offset: 1728)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2700, file: !2701, line: 150, baseType: !2745, size: 256, offset: 1792)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2746, size: 256, elements: !706)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2701, line: 38, size: 128, elements: !2747)
!2747 = !{!2748, !2749}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2746, file: !2701, line: 39, baseType: !150, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2746, file: !2701, line: 40, baseType: !150, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2700, file: !2701, line: 156, baseType: !2751, size: 192, offset: 2048)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2701, line: 66, size: 192, elements: !2752)
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2751, file: !2701, line: 67, baseType: !2754, size: 192)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2701, line: 47, size: 192, elements: !2755)
!2755 = !{!2756, !2757, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2754, file: !2701, line: 48, baseType: !593, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2754, file: !2701, line: 49, baseType: !593, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2754, file: !2701, line: 50, baseType: !593, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2700, file: !2701, line: 160, baseType: !2645, size: 640, offset: 2240)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2700, file: !2701, line: 163, baseType: !2761, size: 256, offset: 2880)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1719, size: 256, elements: !817)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2700, file: !2701, line: 169, baseType: !1719, size: 64, offset: 3136)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2700, file: !2701, line: 172, baseType: !204, size: 32, offset: 3200)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2700, file: !2701, line: 174, baseType: !2765, size: 64, offset: 3264)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2701, line: 174, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2700, file: !2701, line: 185, baseType: !2768, size: 64, offset: 3328)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !371, line: 860, baseType: !2769)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 853, size: 64, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2769, file: !371, line: 858, baseType: !370, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2769, file: !371, line: 859, baseType: !180, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2700, file: !2701, line: 186, baseType: !150, size: 64, offset: 3392)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2700, file: !2701, line: 186, baseType: !150, size: 64, offset: 3456)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2700, file: !2701, line: 186, baseType: !150, size: 64, offset: 3520)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2700, file: !2701, line: 186, baseType: !150, size: 64, offset: 3584)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2700, file: !2701, line: 187, baseType: !150, size: 64, offset: 3648)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2700, file: !2701, line: 188, baseType: !150, size: 64, offset: 3712)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2700, file: !2701, line: 189, baseType: !2633, size: 192, offset: 3776)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2700, file: !2701, line: 190, baseType: !299, size: 64, offset: 3968)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2700, file: !2701, line: 190, baseType: !299, size: 64, offset: 4032)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2700, file: !2701, line: 190, baseType: !299, size: 64, offset: 4096)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2700, file: !2701, line: 190, baseType: !299, size: 64, offset: 4160)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2700, file: !2701, line: 191, baseType: !299, size: 64, offset: 4224)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2700, file: !2701, line: 191, baseType: !299, size: 64, offset: 4288)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2700, file: !2701, line: 191, baseType: !299, size: 64, offset: 4352)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2700, file: !2701, line: 191, baseType: !299, size: 64, offset: 4416)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2700, file: !2701, line: 192, baseType: !299, size: 64, offset: 4480)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2700, file: !2701, line: 192, baseType: !299, size: 64, offset: 4544)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2700, file: !2701, line: 192, baseType: !299, size: 64, offset: 4608)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2700, file: !2701, line: 192, baseType: !299, size: 64, offset: 4672)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2700, file: !2701, line: 193, baseType: !299, size: 64, offset: 4736)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2700, file: !2701, line: 193, baseType: !299, size: 64, offset: 4800)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2700, file: !2701, line: 194, baseType: !2795, size: 448, offset: 4864)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2796, line: 12, size: 448, elements: !2797)
!2796 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803, !2804}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2795, file: !2796, line: 15, baseType: !150, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2795, file: !2796, line: 17, baseType: !150, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2795, file: !2796, line: 19, baseType: !150, size: 64, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2795, file: !2796, line: 21, baseType: !150, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2795, file: !2796, line: 29, baseType: !150, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2795, file: !2796, line: 35, baseType: !150, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2795, file: !2796, line: 44, baseType: !150, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2700, file: !2701, line: 202, baseType: !154, size: 64, offset: 5312)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2700, file: !2701, line: 213, baseType: !2807, size: 2048, offset: 5376)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2808, size: 2048, elements: !2668)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2809, line: 43, size: 128, elements: !2810)
!2809 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2810 = !{!2811, !2812}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2808, file: !2809, line: 44, baseType: !298, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2808, file: !2809, line: 45, baseType: !298, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2700, file: !2701, line: 216, baseType: !2814, size: 448, offset: 7424)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2701, line: 30, size: 448, elements: !2815)
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821, !2822}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2814, file: !2701, line: 31, baseType: !204, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2814, file: !2701, line: 32, baseType: !285, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2814, file: !2701, line: 33, baseType: !299, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2814, file: !2701, line: 34, baseType: !150, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2814, file: !2701, line: 34, baseType: !150, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2814, file: !2701, line: 35, baseType: !299, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2814, file: !2701, line: 35, baseType: !299, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2700, file: !2701, line: 219, baseType: !2824, size: 64, offset: 7872)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2701, line: 219, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2700, file: !2701, line: 222, baseType: !7, size: 32, offset: 7936)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2700, file: !2701, line: 223, baseType: !2828, size: 64, offset: 8000)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2701, line: 223, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2700, file: !2701, line: 230, baseType: !667, size: 8, offset: 8064)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2700, file: !2701, line: 231, baseType: !725, size: 16, offset: 8080)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2700, file: !2701, line: 232, baseType: !725, size: 16, offset: 8096)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2700, file: !2701, line: 234, baseType: !1651, size: 64, offset: 8128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2700, file: !2701, line: 237, baseType: !587, size: 256, offset: 8192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2700, file: !2701, line: 243, baseType: !1248, size: 320, offset: 8448)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1355, file: !1031, line: 1111, baseType: !2837, size: 64, offset: 15424)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2701, line: 20, size: 16640, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2843}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2838, file: !2701, line: 21, baseType: !180, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2838, file: !2701, line: 22, baseType: !1368, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2838, file: !2701, line: 23, baseType: !1341, size: 192, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2838, file: !2701, line: 24, baseType: !2844, size: 16384, offset: 256)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2845, size: 16384, elements: !254)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1920, line: 51, size: 256, elements: !2846)
!2846 = !{!2847}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2845, file: !1920, line: 52, baseType: !2848, size: 256)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1920, line: 37, size: 256, elements: !2849)
!2849 = !{!2850, !2857, !2858, !2862}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2848, file: !1920, line: 39, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2852, line: 83, baseType: !2853)
!2852 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2852, line: 82, baseType: !2855)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !204}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2848, file: !1920, line: 40, baseType: !299, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2848, file: !1920, line: 46, baseType: !2859, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2852, line: 86, baseType: !2860)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2852, line: 85, baseType: !952)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2848, file: !1920, line: 48, baseType: !2715, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1355, file: !1031, line: 1112, baseType: !2715, size: 64, offset: 15488)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1355, file: !1031, line: 1113, baseType: !2715, size: 64, offset: 15552)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1355, file: !1031, line: 1115, baseType: !2715, size: 64, offset: 15616)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1355, file: !1031, line: 1116, baseType: !2711, size: 192, offset: 15680)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1355, file: !1031, line: 1117, baseType: !299, size: 64, offset: 15872)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1355, file: !1031, line: 1118, baseType: !296, size: 64, offset: 15936)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1355, file: !1031, line: 1119, baseType: !7, size: 32, offset: 16000)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1355, file: !1031, line: 1121, baseType: !806, size: 64, offset: 16064)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1355, file: !1031, line: 1125, baseType: !2872, size: 64, offset: 16128)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1031, line: 43, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1355, file: !1031, line: 1127, baseType: !335, size: 32, offset: 16192)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1355, file: !1031, line: 1128, baseType: !7, size: 32, offset: 16224)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1355, file: !1031, line: 1130, baseType: !2877, size: 128, offset: 16256)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2878, line: 37, size: 128, elements: !2879)
!2878 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2877, file: !2878, line: 38, baseType: !204, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2877, file: !2878, line: 39, baseType: !200, size: 32, offset: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2877, file: !2878, line: 40, baseType: !2883, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2878, line: 24, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1355, file: !1031, line: 1131, baseType: !2886, size: 256, offset: 16384)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2887, line: 12, size: 256, elements: !2888)
!2887 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2888 = !{!2889, !2890, !2891, !2892}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2886, file: !2887, line: 13, baseType: !249, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2886, file: !2887, line: 14, baseType: !299, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2886, file: !2887, line: 15, baseType: !299, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2886, file: !2887, line: 16, baseType: !667, size: 8, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1355, file: !1031, line: 1134, baseType: !150, size: 64, offset: 16640)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1355, file: !1031, line: 1135, baseType: !150, size: 64, offset: 16704)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1355, file: !1031, line: 1138, baseType: !180, size: 32, offset: 16768)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1355, file: !1031, line: 1141, baseType: !545, size: 32, offset: 16800)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1355, file: !1031, line: 1143, baseType: !2898, size: 64, offset: 16832)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1031, line: 735, size: 64, elements: !2899)
!2899 = !{!2900}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2898, file: !1031, line: 736, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1355, file: !1031, line: 1147, baseType: !1534, size: 128, offset: 16896)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1355, file: !1031, line: 1149, baseType: !1354, size: 64, offset: 17024)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1355, file: !1031, line: 1151, baseType: !2905, size: 64, offset: 17088)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1031, line: 1151, flags: DIFlagFwdDecl)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1355, file: !1031, line: 1188, baseType: !145, size: 64, offset: 17152)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1355, file: !1031, line: 1191, baseType: !2909, size: 64, offset: 17216)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1031, line: 44, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1355, file: !1031, line: 1194, baseType: !2912, size: 64, offset: 17280)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1031, line: 45, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1355, file: !1031, line: 1197, baseType: !2915, size: 64, offset: 17344)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1031, line: 61, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1355, file: !1031, line: 1199, baseType: !2918, size: 64, offset: 17408)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2920, line: 99, size: 128, elements: !2921)
!2920 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2921 = !{!2922, !2923, !2924}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2919, file: !2920, line: 100, baseType: !591, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2919, file: !2920, line: 101, baseType: !200, size: 32, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2919, file: !2920, line: 103, baseType: !219, size: 16, offset: 96)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1355, file: !1031, line: 1202, baseType: !2926, size: 64, offset: 17472)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1031, line: 48, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1355, file: !1031, line: 1205, baseType: !299, size: 64, offset: 17536)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1355, file: !1031, line: 1206, baseType: !2930, size: 64, offset: 17600)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1920, line: 14, baseType: !2932)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1920, line: 12, size: 384, elements: !2933)
!2933 = !{!2934}
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !2932, file: !1920, line: 13, baseType: !2935, size: 384)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2932, file: !1920, line: 13, size: 384, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2940}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2935, file: !1920, line: 13, baseType: !204, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2935, file: !1920, line: 13, baseType: !204, size: 32, offset: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2935, file: !1920, line: 13, baseType: !204, size: 32, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2935, file: !1920, line: 13, baseType: !2941, size: 256, offset: 128)
!2941 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2942, line: 37, size: 256, elements: !2943)
!2942 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2943 = !{!2944, !2949, !2962, !2968, !2977, !3004, !3009}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2941, file: !2942, line: 42, baseType: !2945, size: 64)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2942, line: 39, size: 64, elements: !2946)
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2945, file: !2942, line: 40, baseType: !2610, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2945, file: !2942, line: 41, baseType: !341, size: 32, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2941, file: !2942, line: 50, baseType: !2950, size: 192)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2942, line: 45, size: 192, elements: !2951)
!2951 = !{!2952, !2954, !2955, !2961}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2950, file: !2942, line: 46, baseType: !2953, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !283, line: 95, baseType: !204)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2950, file: !2942, line: 47, baseType: !204, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2950, file: !2942, line: 48, baseType: !2956, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2942, line: 11, baseType: !2957)
!2957 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2942, line: 8, size: 64, elements: !2958)
!2958 = !{!2959, !2960}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2957, file: !2942, line: 9, baseType: !204, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2957, file: !2942, line: 10, baseType: !145, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2950, file: !2942, line: 49, baseType: !204, size: 32, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2941, file: !2942, line: 57, baseType: !2963, size: 128)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2942, line: 53, size: 128, elements: !2964)
!2964 = !{!2965, !2966, !2967}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2963, file: !2942, line: 54, baseType: !2610, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2963, file: !2942, line: 55, baseType: !341, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2963, file: !2942, line: 56, baseType: !2956, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2941, file: !2942, line: 66, baseType: !2969, size: 256)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2942, line: 60, size: 256, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974, !2976}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2969, file: !2942, line: 61, baseType: !2610, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2969, file: !2942, line: 62, baseType: !341, size: 32, offset: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2969, file: !2942, line: 63, baseType: !204, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2969, file: !2942, line: 64, baseType: !2975, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !283, line: 94, baseType: !284)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2969, file: !2942, line: 65, baseType: !2975, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2941, file: !2942, line: 105, baseType: !2978, size: 256)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2942, line: 69, size: 256, elements: !2979)
!2979 = !{!2980, !2981}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2978, file: !2942, line: 70, baseType: !145, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, scope: !2978, file: !2942, line: 79, baseType: !2982, size: 192, offset: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2978, file: !2942, line: 79, size: 192, elements: !2983)
!2983 = !{!2984, !2985, !2986, !2993, !2998}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2982, file: !2942, line: 81, baseType: !204, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2982, file: !2942, line: 86, baseType: !725, size: 16)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2982, file: !2942, line: 92, baseType: !2987, size: 192)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2982, file: !2942, line: 88, size: 192, elements: !2988)
!2988 = !{!2989, !2991, !2992}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2987, file: !2942, line: 89, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !1518)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2987, file: !2942, line: 90, baseType: !145, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2987, file: !2942, line: 91, baseType: !145, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2982, file: !2942, line: 97, baseType: !2994, size: 96)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2982, file: !2942, line: 94, size: 96, elements: !2995)
!2995 = !{!2996, !2997}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2994, file: !2942, line: 95, baseType: !2990, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2994, file: !2942, line: 96, baseType: !399, size: 32, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2982, file: !2942, line: 103, baseType: !2999, size: 128)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2982, file: !2942, line: 99, size: 128, elements: !3000)
!3000 = !{!3001, !3002, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2999, file: !2942, line: 100, baseType: !299, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2999, file: !2942, line: 101, baseType: !399, size: 32, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2999, file: !2942, line: 102, baseType: !399, size: 32, offset: 96)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2941, file: !2942, line: 111, baseType: !3005, size: 128)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2942, line: 108, size: 128, elements: !3006)
!3006 = !{!3007, !3008}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3005, file: !2942, line: 109, baseType: !285, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3005, file: !2942, line: 110, baseType: !204, size: 32, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2941, file: !2942, line: 118, baseType: !3010, size: 128)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2942, line: 114, size: 128, elements: !3011)
!3011 = !{!3012, !3013, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3010, file: !2942, line: 115, baseType: !145, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3010, file: !2942, line: 116, baseType: !204, size: 32, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3010, file: !2942, line: 117, baseType: !7, size: 32, offset: 96)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1355, file: !1031, line: 1208, baseType: !2795, size: 448, offset: 17664)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1355, file: !1031, line: 1215, baseType: !150, size: 64, offset: 18112)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1355, file: !1031, line: 1217, baseType: !150, size: 64, offset: 18176)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1355, file: !1031, line: 1219, baseType: !150, size: 64, offset: 18240)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1355, file: !1031, line: 1223, baseType: !3020, size: 64, offset: 18304)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3021, line: 99, baseType: !3022)
!3021 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3021, line: 99, size: 64, elements: !3023)
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3022, file: !3021, line: 99, baseType: !1602, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1355, file: !1031, line: 1225, baseType: !370, size: 32, offset: 18368)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1355, file: !1031, line: 1226, baseType: !204, size: 32, offset: 18400)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1355, file: !1031, line: 1227, baseType: !204, size: 32, offset: 18432)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1355, file: !1031, line: 1231, baseType: !3029, size: 64, offset: 18496)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1031, line: 1231, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1355, file: !1031, line: 1233, baseType: !161, size: 128, offset: 18560)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1355, file: !1031, line: 1240, baseType: !3033, size: 64, offset: 18688)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1031, line: 62, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1355, file: !1031, line: 1242, baseType: !3036, size: 64, offset: 18752)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1031, line: 1242, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1355, file: !1031, line: 1244, baseType: !161, size: 128, offset: 18816)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1355, file: !1031, line: 1245, baseType: !3040, size: 64, offset: 18944)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1031, line: 51, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1355, file: !1031, line: 1246, baseType: !587, size: 256, offset: 19008)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1355, file: !1031, line: 1247, baseType: !7, size: 32, offset: 19264)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1355, file: !1031, line: 1250, baseType: !3045, size: 64, offset: 19328)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1031, line: 57, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1355, file: !1031, line: 1251, baseType: !587, size: 256, offset: 19392)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1355, file: !1031, line: 1252, baseType: !161, size: 128, offset: 19648)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1355, file: !1031, line: 1259, baseType: !2299, size: 64, offset: 19776)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1355, file: !1031, line: 1260, baseType: !725, size: 16, offset: 19840)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1355, file: !1031, line: 1261, baseType: !725, size: 16, offset: 19856)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1355, file: !1031, line: 1314, baseType: !3053, size: 64, offset: 19904)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3055, line: 62, size: 256, align: 256, elements: !3056)
!3055 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062, !3063}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3054, file: !3055, line: 75, baseType: !399, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3054, file: !3055, line: 90, baseType: !399, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3054, file: !3055, line: 112, baseType: !152, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3054, file: !3055, line: 132, baseType: !399, size: 32, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3054, file: !3055, line: 140, baseType: !399, size: 32, offset: 160)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3054, file: !3055, line: 149, baseType: !399, size: 32, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3054, file: !3055, line: 154, baseType: !3064, offset: 224)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !1738)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1355, file: !1031, line: 1315, baseType: !398, size: 32, offset: 19968)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1355, file: !1031, line: 1316, baseType: !398, size: 32, offset: 20000)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1355, file: !1031, line: 1321, baseType: !299, size: 64, offset: 20032)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1355, file: !1031, line: 1325, baseType: !204, size: 32, offset: 20096)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1355, file: !1031, line: 1326, baseType: !204, size: 32, offset: 20128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1355, file: !1031, line: 1327, baseType: !204, size: 32, offset: 20160)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1355, file: !1031, line: 1328, baseType: !204, size: 32, offset: 20192)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1355, file: !1031, line: 1329, baseType: !807, size: 128, align: 64, offset: 20224)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1355, file: !1031, line: 1332, baseType: !3074, size: 128, offset: 20352)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3075, line: 51, size: 128, elements: !3076)
!3075 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3076 = !{!3077, !3082, !3083}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3074, file: !3075, line: 60, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3079, line: 7, size: 64, elements: !3080)
!3079 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3078, file: !3079, line: 12, baseType: !1599, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3074, file: !3075, line: 63, baseType: !667, size: 8, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3074, file: !3075, line: 70, baseType: !667, size: 8, offset: 72)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1355, file: !1031, line: 1335, baseType: !2351, size: 64, offset: 20480)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1355, file: !1031, line: 1337, baseType: !3086, size: 128, offset: 20544)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3075, line: 39, size: 128, elements: !3087)
!3087 = !{!3088, !3089, !3090}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3086, file: !3075, line: 40, baseType: !2138, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3086, file: !3075, line: 42, baseType: !399, size: 32, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3086, file: !3075, line: 43, baseType: !399, size: 32, offset: 96)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1355, file: !1031, line: 1340, baseType: !3092, size: 64, offset: 20672)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1031, line: 69, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1355, file: !1031, line: 1351, baseType: !204, size: 32, offset: 20736)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1355, file: !1031, line: 1352, baseType: !204, size: 32, offset: 20768)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1355, file: !1031, line: 1354, baseType: !299, size: 64, offset: 20800)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1355, file: !1031, line: 1364, baseType: !150, size: 64, offset: 20864)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1355, file: !1031, line: 1365, baseType: !150, size: 64, offset: 20928)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1355, file: !1031, line: 1412, baseType: !299, size: 64, offset: 20992)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1355, file: !1031, line: 1453, baseType: !3101, size: 64, offset: 21056)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1031, line: 1453, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1355, file: !1031, line: 1457, baseType: !3104, size: 64, offset: 21120)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3106)
!3106 = !{!3107, !3108, !3127, !3130, !3131, !3164, !3174}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3105, file: !68, line: 62, baseType: !67, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !3105, file: !68, line: 64, baseType: !3109, size: 192, offset: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3105, file: !68, line: 64, size: 192, elements: !3110)
!3110 = !{!3111, !3122}
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !68, line: 65, baseType: !3112, size: 192)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !68, line: 65, size: 192, elements: !3113)
!3113 = !{!3114, !3121}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3112, file: !68, line: 66, baseType: !3115, size: 128)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3116, line: 50, size: 128, elements: !3117)
!3116 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3117 = !{!3118, !3119, !3120}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3115, file: !3116, line: 52, baseType: !299, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3115, file: !3116, line: 54, baseType: !7, size: 32, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3115, file: !3116, line: 55, baseType: !7, size: 32, offset: 96)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3112, file: !68, line: 67, baseType: !299, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !68, line: 70, baseType: !3123, size: 192)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !68, line: 70, size: 192, elements: !3124)
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3123, file: !68, line: 71, baseType: !807, size: 128, align: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3123, file: !68, line: 72, baseType: !299, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3105, file: !68, line: 76, baseType: !3128, size: 64, offset: 256)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3105, file: !68, line: 77, baseType: !299, size: 64, offset: 320)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3105, file: !68, line: 79, baseType: !3132, size: 64, offset: 384)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3116, line: 25, size: 256, elements: !3134)
!3134 = !{!3135, !3141, !3145}
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !3116, line: 26, baseType: !3136, size: 128)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3133, file: !3116, line: 26, size: 128, elements: !3137)
!3137 = !{!3138, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3136, file: !3116, line: 27, baseType: !3139, size: 128)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !2668)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3136, file: !3116, line: 28, baseType: !3139, size: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3133, file: !3116, line: 31, baseType: !3142, size: 64, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3144)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3116, line: 23, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !3116, line: 33, baseType: !3146, size: 64, offset: 192)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3133, file: !3116, line: 33, size: 64, elements: !3147)
!3147 = !{!3148, !3154, !3159}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3146, file: !3116, line: 38, baseType: !3149, size: 64)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3116, line: 34, size: 64, elements: !3150)
!3150 = !{!3151, !3152, !3153}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3149, file: !3116, line: 35, baseType: !583, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3149, file: !3116, line: 36, baseType: !209, size: 8, offset: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3149, file: !3116, line: 37, baseType: !209, size: 8, offset: 40)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3146, file: !3116, line: 42, baseType: !3155, size: 16)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3116, line: 39, size: 16, elements: !3156)
!3156 = !{!3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3155, file: !3116, line: 40, baseType: !209, size: 8)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3155, file: !3116, line: 41, baseType: !209, size: 8, offset: 8)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3146, file: !3116, line: 46, baseType: !3160, size: 16)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3116, line: 43, size: 16, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3160, file: !3116, line: 44, baseType: !209, size: 8)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3160, file: !3116, line: 45, baseType: !209, size: 8, offset: 8)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3105, file: !68, line: 81, baseType: !3165, size: 64, offset: 448)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3167)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3166, file: !68, line: 86, baseType: !3128, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3166, file: !68, line: 87, baseType: !299, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3166, file: !68, line: 88, baseType: !299, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3166, file: !68, line: 89, baseType: !299, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3166, file: !68, line: 90, baseType: !667, size: 8, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3166, file: !68, line: 92, baseType: !3165, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3105, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1355, file: !1031, line: 1463, baseType: !3176, offset: 21184)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1031, line: 739, elements: !876)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1355, file: !1031, line: 1470, baseType: !807, size: 128, align: 64, offset: 21184)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1355, file: !1031, line: 1471, baseType: !1368, size: 32, offset: 21312)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1355, file: !1031, line: 1472, baseType: !204, size: 32, offset: 21344)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1355, file: !1031, line: 1474, baseType: !1354, size: 64, offset: 21376)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1355, file: !1031, line: 1475, baseType: !829, size: 320, offset: 21440)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1355, file: !1031, line: 1478, baseType: !3183, size: 64, offset: 21760)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3185, line: 49, size: 512, elements: !3186)
!3185 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3193, !3194, !3195, !3197}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3184, file: !3185, line: 50, baseType: !3183, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3184, file: !3185, line: 51, baseType: !145, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3184, file: !3185, line: 52, baseType: !299, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3184, file: !3185, line: 53, baseType: !299, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3184, file: !3185, line: 54, baseType: !3192, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3184, file: !3185, line: 56, baseType: !7, size: 32, offset: 320)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3184, file: !3185, line: 58, baseType: !7, size: 32, offset: 352)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3184, file: !3185, line: 59, baseType: !3196, size: 64, offset: 384)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !144, line: 159, baseType: !150)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3184, file: !3185, line: 60, baseType: !2490, size: 64, offset: 448)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1355, file: !1031, line: 1482, baseType: !1368, size: 32, offset: 21824)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1355, file: !1031, line: 1489, baseType: !145, size: 64, offset: 21888)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1355, file: !1031, line: 1504, baseType: !145, size: 64, offset: 21952)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1355, file: !1031, line: 1505, baseType: !152, size: 64, offset: 22016)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1355, file: !1031, line: 1506, baseType: !150, size: 64, offset: 22080)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1355, file: !1031, line: 1507, baseType: !152, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1355, file: !1031, line: 1508, baseType: !152, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1355, file: !1031, line: 1509, baseType: !152, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1355, file: !1031, line: 1510, baseType: !807, size: 128, align: 64, offset: 22208)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1355, file: !1031, line: 1511, baseType: !204, size: 32, offset: 22336)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1355, file: !1031, line: 1515, baseType: !3209, size: 64, offset: 22400)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1382, line: 56, size: 64, elements: !3210)
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3209, file: !1382, line: 57, baseType: !1385, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1355, file: !1031, line: 1518, baseType: !3209, size: 64, offset: 22464)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1355, file: !1031, line: 1528, baseType: !807, size: 128, align: 64, offset: 22528)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1355, file: !1031, line: 1552, baseType: !3215, size: 35328, offset: 23040)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3216, line: 430, size: 35328, elements: !3217)
!3216 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3217 = !{!3218, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3247, !3248, !3249, !3250, !3251, !3252, !3255, !3256, !3257, !3258}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3215, file: !3216, line: 432, baseType: !3219, size: 192)
!3219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3220, size: 192, elements: !250)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3221, line: 16, size: 64, elements: !3222)
!3221 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3220, file: !3221, line: 17, baseType: !217, size: 16)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3220, file: !3221, line: 18, baseType: !217, size: 16, offset: 16)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3220, file: !3221, line: 19, baseType: !217, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3220, file: !3221, line: 19, baseType: !217, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3220, file: !3221, line: 19, baseType: !217, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3220, file: !3221, line: 19, baseType: !217, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3220, file: !3221, line: 19, baseType: !217, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3220, file: !3221, line: 20, baseType: !217, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3220, file: !3221, line: 20, baseType: !217, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3220, file: !3221, line: 20, baseType: !217, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3220, file: !3221, line: 20, baseType: !217, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3220, file: !3221, line: 20, baseType: !217, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3220, file: !3221, line: 20, baseType: !217, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3215, file: !3216, line: 436, baseType: !299, size: 64, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3215, file: !3216, line: 440, baseType: !219, size: 16, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3215, file: !3216, line: 441, baseType: !219, size: 16, offset: 272)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3215, file: !3216, line: 442, baseType: !219, size: 16, offset: 288)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3215, file: !3216, line: 443, baseType: !219, size: 16, offset: 304)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3215, file: !3216, line: 447, baseType: !299, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3215, file: !3216, line: 448, baseType: !299, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3215, file: !3216, line: 459, baseType: !3244, size: 256, offset: 448)
!3244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3245, size: 256, elements: !817)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3216, line: 428, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3215, file: !3216, line: 461, baseType: !299, size: 64, offset: 704)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3215, file: !3216, line: 463, baseType: !299, size: 64, offset: 768)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3215, file: !3216, line: 465, baseType: !299, size: 64, offset: 832)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3215, file: !3216, line: 466, baseType: !299, size: 64, offset: 896)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3215, file: !3216, line: 467, baseType: !299, size: 64, offset: 960)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3215, file: !3216, line: 473, baseType: !3253, size: 64, offset: 1024)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3216, line: 10, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3215, file: !3216, line: 480, baseType: !299, size: 64, offset: 1088)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3215, file: !3216, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3215, file: !3216, line: 491, baseType: !398, size: 32, offset: 1184)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3215, file: !3216, line: 501, baseType: !3259, size: 33792, offset: 1536)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3260, line: 448, size: 33792, elements: !3261)
!3260 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3261 = !{!3262, !3263, !3264, !3426, !3427, !3433, !3434}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3259, file: !3260, line: 461, baseType: !7, size: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3259, file: !3260, line: 468, baseType: !299, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3259, file: !3260, line: 476, baseType: !3265, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3260, line: 356, size: 33280, align: 512, elements: !3267)
!3267 = !{!3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3266, file: !3260, line: 358, baseType: !7, size: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3266, file: !3260, line: 361, baseType: !7, size: 32, offset: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3266, file: !3260, line: 364, baseType: !150, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3266, file: !3260, line: 367, baseType: !150, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3266, file: !3260, line: 370, baseType: !150, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3266, file: !3260, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3266, file: !3260, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3266, file: !3260, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3266, file: !3260, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3266, file: !3260, line: 397, baseType: !3278, size: 32768, offset: 512)
!3278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3260, line: 348, size: 32768, elements: !3279)
!3279 = !{!3280, !3295, !3332, !3409, !3422}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3278, file: !3260, line: 349, baseType: !3281, size: 896)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3260, line: 12, size: 896, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3294}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3281, file: !3260, line: 13, baseType: !398, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3281, file: !3260, line: 14, baseType: !398, size: 32, offset: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3281, file: !3260, line: 15, baseType: !398, size: 32, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3281, file: !3260, line: 16, baseType: !398, size: 32, offset: 96)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3281, file: !3260, line: 17, baseType: !398, size: 32, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3281, file: !3260, line: 18, baseType: !398, size: 32, offset: 160)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3281, file: !3260, line: 19, baseType: !398, size: 32, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3281, file: !3260, line: 22, baseType: !3291, size: 640, offset: 224)
!3291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 640, elements: !3292)
!3292 = !{!3293}
!3293 = !DISubrange(count: 20)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3281, file: !3260, line: 25, baseType: !398, size: 32, offset: 864)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3278, file: !3260, line: 350, baseType: !3296, size: 4096, align: 128)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3260, line: 34, size: 4096, align: 128, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3301, !3302, !3317, !3318, !3319, !3321, !3323, !3327}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3296, file: !3260, line: 35, baseType: !217, size: 16)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3296, file: !3260, line: 36, baseType: !217, size: 16, offset: 16)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3296, file: !3260, line: 37, baseType: !217, size: 16, offset: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3296, file: !3260, line: 38, baseType: !217, size: 16, offset: 48)
!3302 = !DIDerivedType(tag: DW_TAG_member, scope: !3296, file: !3260, line: 39, baseType: !3303, size: 128, offset: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3296, file: !3260, line: 39, size: 128, elements: !3304)
!3304 = !{!3305, !3310}
!3305 = !DIDerivedType(tag: DW_TAG_member, scope: !3303, file: !3260, line: 40, baseType: !3306, size: 128)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3303, file: !3260, line: 40, size: 128, elements: !3307)
!3307 = !{!3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3306, file: !3260, line: 41, baseType: !150, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3306, file: !3260, line: 42, baseType: !150, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, scope: !3303, file: !3260, line: 44, baseType: !3311, size: 128)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3303, file: !3260, line: 44, size: 128, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3311, file: !3260, line: 45, baseType: !398, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3311, file: !3260, line: 46, baseType: !398, size: 32, offset: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3311, file: !3260, line: 47, baseType: !398, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3311, file: !3260, line: 48, baseType: !398, size: 32, offset: 96)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3296, file: !3260, line: 51, baseType: !398, size: 32, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3296, file: !3260, line: 52, baseType: !398, size: 32, offset: 224)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3296, file: !3260, line: 55, baseType: !3320, size: 1024, offset: 256)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 1024, elements: !408)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3296, file: !3260, line: 58, baseType: !3322, size: 2048, offset: 1280)
!3322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 2048, elements: !254)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3296, file: !3260, line: 60, baseType: !3324, size: 384, offset: 3328)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 384, elements: !3325)
!3325 = !{!3326}
!3326 = !DISubrange(count: 12)
!3327 = !DIDerivedType(tag: DW_TAG_member, scope: !3296, file: !3260, line: 62, baseType: !3328, size: 384, offset: 3712)
!3328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3296, file: !3260, line: 62, size: 384, elements: !3329)
!3329 = !{!3330, !3331}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3328, file: !3260, line: 63, baseType: !3324, size: 384)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3328, file: !3260, line: 64, baseType: !3324, size: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3278, file: !3260, line: 351, baseType: !3333, size: 1088)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3260, line: 79, size: 1088, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3408}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3333, file: !3260, line: 80, baseType: !398, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3333, file: !3260, line: 81, baseType: !398, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3333, file: !3260, line: 82, baseType: !398, size: 32, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3333, file: !3260, line: 83, baseType: !398, size: 32, offset: 96)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3333, file: !3260, line: 84, baseType: !398, size: 32, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3333, file: !3260, line: 85, baseType: !398, size: 32, offset: 160)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3333, file: !3260, line: 86, baseType: !398, size: 32, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3333, file: !3260, line: 88, baseType: !3291, size: 640, offset: 224)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3333, file: !3260, line: 89, baseType: !209, size: 8, offset: 864)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3333, file: !3260, line: 90, baseType: !209, size: 8, offset: 872)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3333, file: !3260, line: 91, baseType: !209, size: 8, offset: 880)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3333, file: !3260, line: 92, baseType: !209, size: 8, offset: 888)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3333, file: !3260, line: 93, baseType: !209, size: 8, offset: 896)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3333, file: !3260, line: 94, baseType: !209, size: 8, offset: 904)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3333, file: !3260, line: 95, baseType: !3350, size: 64, offset: 960)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3352, line: 11, size: 128, elements: !3353)
!3352 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3351, file: !3352, line: 12, baseType: !285, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3351, file: !3352, line: 13, baseType: !3356, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3358, line: 103, size: 1344, elements: !3359)
!3358 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3388, !3389, !3390}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3357, file: !3358, line: 109, baseType: !299, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3357, file: !3358, line: 110, baseType: !299, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3357, file: !3358, line: 111, baseType: !299, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3357, file: !3358, line: 112, baseType: !299, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3357, file: !3358, line: 113, baseType: !299, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3357, file: !3358, line: 114, baseType: !299, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3357, file: !3358, line: 117, baseType: !299, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3357, file: !3358, line: 118, baseType: !299, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3357, file: !3358, line: 119, baseType: !299, size: 64, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3357, file: !3358, line: 120, baseType: !299, size: 64, offset: 576)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3357, file: !3358, line: 121, baseType: !299, size: 64, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3357, file: !3358, line: 122, baseType: !299, size: 64, offset: 704)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3357, file: !3358, line: 123, baseType: !299, size: 64, offset: 768)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3357, file: !3358, line: 124, baseType: !299, size: 64, offset: 832)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3357, file: !3358, line: 125, baseType: !299, size: 64, offset: 896)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3357, file: !3358, line: 139, baseType: !299, size: 64, offset: 960)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3357, file: !3358, line: 142, baseType: !299, size: 64, offset: 1024)
!3377 = !DIDerivedType(tag: DW_TAG_member, scope: !3357, file: !3358, line: 144, baseType: !3378, size: 64, offset: 1088)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3357, file: !3358, line: 144, size: 64, elements: !3379)
!3379 = !{!3380, !3381, !3382}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3378, file: !3358, line: 146, baseType: !217, size: 16)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3378, file: !3358, line: 148, baseType: !150, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3378, file: !3358, line: 150, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3358, line: 59, size: 64, elements: !3384)
!3384 = !{!3385, !3386, !3387}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3383, file: !3358, line: 61, baseType: !150, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3383, file: !3358, line: 63, baseType: !150, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3383, file: !3358, line: 65, baseType: !150, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !3358, line: 153, baseType: !299, size: 64, offset: 1152)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3357, file: !3358, line: 154, baseType: !299, size: 64, offset: 1216)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !3357, file: !3358, line: 156, baseType: !3391, size: 64, offset: 1280)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3357, file: !3358, line: 156, size: 64, elements: !3392)
!3392 = !{!3393, !3394, !3395}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3391, file: !3358, line: 158, baseType: !217, size: 16)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3391, file: !3358, line: 160, baseType: !150, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3391, file: !3358, line: 162, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3358, line: 69, size: 64, elements: !3397)
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3396, file: !3358, line: 71, baseType: !150, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3396, file: !3358, line: 73, baseType: !150, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3396, file: !3358, line: 75, baseType: !150, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3396, file: !3358, line: 77, baseType: !150, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3396, file: !3358, line: 80, baseType: !150, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3396, file: !3358, line: 83, baseType: !150, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3396, file: !3358, line: 86, baseType: !150, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3396, file: !3358, line: 88, baseType: !150, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3396, file: !3358, line: 93, baseType: !150, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3396, file: !3358, line: 100, baseType: !150, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3333, file: !3260, line: 96, baseType: !398, size: 32, offset: 1024)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3278, file: !3260, line: 352, baseType: !3410, size: 4608, align: 512)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3260, line: 333, size: 4608, align: 512, elements: !3411)
!3411 = !{!3412, !3413, !3420}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3410, file: !3260, line: 334, baseType: !3296, size: 4096, align: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3410, file: !3260, line: 335, baseType: !3414, size: 512, offset: 4096)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3260, line: 312, size: 512, elements: !3415)
!3415 = !{!3416, !3417, !3418}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3414, file: !3260, line: 313, baseType: !150, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3414, file: !3260, line: 314, baseType: !150, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3414, file: !3260, line: 315, baseType: !3419, size: 384, offset: 128)
!3419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 384, elements: !1821)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3410, file: !3260, line: 336, baseType: !3421, offset: 4608)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, elements: !1738)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3278, file: !3260, line: 353, baseType: !3423, size: 32768)
!3423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 32768, elements: !3424)
!3424 = !{!3425}
!3425 = !DISubrange(count: 4096)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3259, file: !3260, line: 484, baseType: !3265, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3259, file: !3260, line: 491, baseType: !3428, size: 128, offset: 256)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3260, line: 404, size: 128, elements: !3429)
!3429 = !{!3430, !3431, !3432}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3428, file: !3260, line: 424, baseType: !150, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3428, file: !3260, line: 432, baseType: !7, size: 32, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3428, file: !3260, line: 440, baseType: !7, size: 32, offset: 96)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3259, file: !3260, line: 498, baseType: !3428, size: 128, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3259, file: !3260, line: 508, baseType: !3266, size: 33280, align: 512, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1331, file: !1332, line: 16, baseType: !1341, size: 192, offset: 512)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1331, file: !1332, line: 17, baseType: !200, size: 32, offset: 704)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !478, file: !14, line: 1240, baseType: !145, size: 64, offset: 6912)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !478, file: !14, line: 1243, baseType: !398, size: 32, offset: 6976)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !478, file: !14, line: 1245, baseType: !1089, size: 64, offset: 7040)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !478, file: !14, line: 1246, baseType: !1089, size: 64, offset: 7104)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !478, file: !14, line: 1248, baseType: !399, size: 32, offset: 7168)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !478, file: !14, line: 1249, baseType: !3443, size: 64, offset: 7232)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !478, file: !14, line: 1252, baseType: !3446, size: 256, offset: 7296)
!3446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !408)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !478, file: !14, line: 1253, baseType: !3448, size: 128, offset: 7552)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3449, line: 21, baseType: !3450)
!3449 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3449, line: 19, size: 128, elements: !3451)
!3451 = !{!3452}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3450, file: !3449, line: 20, baseType: !3453, size: 128)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 128, elements: !2668)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !478, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !478, file: !14, line: 1261, baseType: !587, size: 256, offset: 7744)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !478, file: !14, line: 1267, baseType: !157, size: 64, offset: 8000)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !478, file: !14, line: 1269, baseType: !424, size: 64, offset: 8064)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !478, file: !14, line: 1271, baseType: !3459, size: 448, offset: 8128)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1098, line: 63, size: 448, elements: !3460)
!3460 = !{!3461, !3466, !3467, !3468, !3469, !3470, !3471}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3459, file: !1098, line: 64, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!299, !3465, !1096}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3459, file: !1098, line: 66, baseType: !3462, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3459, file: !1098, line: 69, baseType: !285, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3459, file: !1098, line: 70, baseType: !204, size: 32, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3459, file: !1098, line: 71, baseType: !7, size: 32, offset: 224)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3459, file: !1098, line: 74, baseType: !161, size: 128, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3459, file: !1098, line: 85, baseType: !3472, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !478, file: !14, line: 1274, baseType: !591, size: 64, offset: 8576)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !478, file: !14, line: 1280, baseType: !591, size: 64, offset: 8640)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !478, file: !14, line: 1283, baseType: !204, size: 32, offset: 8704)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !478, file: !14, line: 1286, baseType: !2401, size: 32, offset: 8736)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !478, file: !14, line: 1289, baseType: !909, size: 64, offset: 8768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !478, file: !14, line: 1290, baseType: !957, size: 64, offset: 8832)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !478, file: !14, line: 1297, baseType: !1915, size: 64, offset: 8896)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !478, file: !14, line: 1304, baseType: !3481, size: 64, offset: 8960)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3482, line: 49, size: 64, elements: !3483)
!3482 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3483 = !{!3484}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3481, file: !3482, line: 50, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3482, line: 41, size: 512, align: 512, elements: !3487)
!3487 = !{!3488, !3489, !3494}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3486, file: !3482, line: 43, baseType: !180, size: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3486, file: !3482, line: 45, baseType: !3490, size: 192, offset: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3482, line: 29, size: 192, elements: !3491)
!3491 = !{!3492, !3493}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3490, file: !3482, line: 30, baseType: !161, size: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3490, file: !3482, line: 32, baseType: !285, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3486, file: !3482, line: 46, baseType: !285, size: 64, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !478, file: !14, line: 1305, baseType: !3481, size: 64, offset: 9024)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !478, file: !14, line: 1306, baseType: !807, size: 128, align: 64, offset: 9088)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !478, file: !14, line: 1307, baseType: !847, size: 256, offset: 9216)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !478, file: !14, line: 1309, baseType: !587, size: 256, offset: 9472)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !478, file: !14, line: 1314, baseType: !204, size: 32, offset: 9728)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !478, file: !14, line: 1317, baseType: !180, size: 32, align: 512, offset: 10240)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !478, file: !14, line: 1318, baseType: !161, size: 128, offset: 10304)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !478, file: !14, line: 1320, baseType: !180, size: 32, offset: 10432)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !478, file: !14, line: 1321, baseType: !161, size: 128, offset: 10496)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !472, file: !473, line: 73, baseType: !204, size: 32, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !472, file: !473, line: 74, baseType: !3506, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1762, line: 42, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !426, file: !366, line: 141, baseType: !3510, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!204, !1158, !667}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !426, file: !366, line: 142, baseType: !3514, size: 64, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!364, !364, !3517}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !365, file: !366, line: 96, baseType: !477, size: 64, offset: 832)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !365, file: !366, line: 97, baseType: !299, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !365, file: !366, line: 98, baseType: !145, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !366, line: 100, baseType: !3523, size: 128, offset: 1024)
!3523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !366, line: 100, size: 128, elements: !3524)
!3524 = !{!3525, !3526}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3523, file: !366, line: 101, baseType: !161, size: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3523, file: !366, line: 102, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !365, file: !366, line: 104, baseType: !161, size: 128, offset: 1152)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !365, file: !366, line: 105, baseType: !161, size: 128, offset: 1280)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !365, file: !366, line: 113, baseType: !3531, size: 128, offset: 1408)
!3531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !366, line: 109, size: 128, elements: !3532)
!3532 = !{!3533, !3534, !3535}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3531, file: !366, line: 110, baseType: !833, size: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3531, file: !366, line: 111, baseType: !380, size: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3531, file: !366, line: 112, baseType: !807, size: 128, align: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !358, file: !14, line: 1968, baseType: !3537, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!157, !364, !329, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3542, line: 10, size: 128, elements: !3543)
!3542 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3543 = !{!3544, !3545}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3541, file: !3542, line: 11, baseType: !630, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3541, file: !3542, line: 12, baseType: !145, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !358, file: !14, line: 1969, baseType: !3547, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!204, !3506, !329, !204}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !358, file: !14, line: 1970, baseType: !3551, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!352, !329, !204, !667}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !358, file: !14, line: 1972, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!204, !364, !249, !204}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !358, file: !14, line: 1974, baseType: !3559, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!204, !3506, !329, !364, !291, !667}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !358, file: !14, line: 1976, baseType: !3563, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!204, !364, !329, !364}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !358, file: !14, line: 1977, baseType: !3567, size: 64, offset: 448)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!204, !329, !364}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !358, file: !14, line: 1978, baseType: !3571, size: 64, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!204, !3506, !329, !364, !157}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !358, file: !14, line: 1980, baseType: !3575, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!204, !3506, !329, !364, !291}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !358, file: !14, line: 1982, baseType: !3567, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !358, file: !14, line: 1983, baseType: !3580, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!204, !3506, !329, !364, !291, !482}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !358, file: !14, line: 1985, baseType: !3584, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!204, !3506, !329, !364, !329, !364, !7}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !358, file: !14, line: 1987, baseType: !3588, size: 64, offset: 832)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!204, !3506, !364, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3593)
!3593 = !{!3594, !3595, !3596, !3606, !3615, !3616, !3621, !3622, !3623}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3592, file: !14, line: 227, baseType: !7, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3592, file: !14, line: 228, baseType: !291, size: 16, offset: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3592, file: !14, line: 241, baseType: !3597, size: 32, offset: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3592, file: !14, line: 241, size: 32, elements: !3598)
!3598 = !{!3599, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3597, file: !14, line: 242, baseType: !335, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3597, file: !14, line: 243, baseType: !3601, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3602, line: 16, baseType: !3603)
!3602 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3602, line: 14, size: 32, elements: !3604)
!3604 = !{!3605}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3603, file: !3602, line: 15, baseType: !340, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, scope: !3592, file: !14, line: 245, baseType: !3607, size: 32, offset: 96)
!3607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3592, file: !14, line: 245, size: 32, elements: !3608)
!3608 = !{!3609, !3610}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3607, file: !14, line: 246, baseType: !344, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3607, file: !14, line: 247, baseType: !3611, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3602, line: 20, baseType: !3612)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3602, line: 18, size: 32, elements: !3613)
!3613 = !{!3614}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3612, file: !3602, line: 19, baseType: !348, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3592, file: !14, line: 249, baseType: !487, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3592, file: !14, line: 250, baseType: !3617, size: 128, offset: 192)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1090, line: 13, size: 128, elements: !3618)
!3618 = !{!3619, !3620}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3617, file: !1090, line: 14, baseType: !1089, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3617, file: !1090, line: 15, baseType: !285, size: 64, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3592, file: !14, line: 251, baseType: !3617, size: 128, offset: 320)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3592, file: !14, line: 252, baseType: !3617, size: 128, offset: 448)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3592, file: !14, line: 259, baseType: !1678, size: 64, offset: 576)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !358, file: !14, line: 1988, baseType: !3625, size: 64, offset: 896)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!204, !3506, !1158, !3628, !398, !7}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3630, line: 22, size: 1280, elements: !3631)
!3630 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3629, file: !3630, line: 23, baseType: !398, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3629, file: !3630, line: 24, baseType: !291, size: 16, offset: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3629, file: !3630, line: 25, baseType: !7, size: 32, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3629, file: !3630, line: 26, baseType: !1800, size: 32, offset: 96)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3629, file: !3630, line: 27, baseType: !150, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3629, file: !3630, line: 28, baseType: !150, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3629, file: !3630, line: 41, baseType: !150, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3629, file: !3630, line: 42, baseType: !482, size: 32, offset: 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3629, file: !3630, line: 43, baseType: !482, size: 32, offset: 352)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3629, file: !3630, line: 44, baseType: !335, size: 32, offset: 384)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3629, file: !3630, line: 45, baseType: !344, size: 32, offset: 416)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3629, file: !3630, line: 46, baseType: !487, size: 64, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3629, file: !3630, line: 47, baseType: !3617, size: 128, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3629, file: !3630, line: 48, baseType: !3617, size: 128, offset: 640)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3629, file: !3630, line: 49, baseType: !3617, size: 128, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3629, file: !3630, line: 50, baseType: !3617, size: 128, offset: 896)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3629, file: !3630, line: 51, baseType: !150, size: 64, offset: 1024)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3629, file: !3630, line: 52, baseType: !150, size: 64, offset: 1088)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3629, file: !3630, line: 53, baseType: !398, size: 32, offset: 1152)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3629, file: !3630, line: 54, baseType: !398, size: 32, offset: 1184)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3629, file: !3630, line: 55, baseType: !150, size: 64, offset: 1216)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !358, file: !14, line: 1990, baseType: !3654, size: 64, offset: 960)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!281, !364, !249, !296}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !358, file: !14, line: 1991, baseType: !3658, size: 64, offset: 1024)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!204, !329, !3661, !150, !150}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !358, file: !14, line: 1993, baseType: !3664, size: 64, offset: 1088)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!204, !329, !204}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !358, file: !14, line: 1994, baseType: !3668, size: 64, offset: 1152)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!204, !329, !364, !1678, !7, !291}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !358, file: !14, line: 1997, baseType: !3672, size: 64, offset: 1216)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!204, !3506, !329, !1678, !291}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !358, file: !14, line: 1999, baseType: !3676, size: 64, offset: 1280)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!352, !3506, !364, !204}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !358, file: !14, line: 2001, baseType: !3680, size: 64, offset: 1344)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!204, !3506, !364, !352, !204}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !358, file: !14, line: 2003, baseType: !3684, size: 64, offset: 1408)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!204, !3506, !364, !3687}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !358, file: !14, line: 2005, baseType: !3690, size: 64, offset: 1472)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!204, !364, !3687}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !358, file: !14, line: 2006, baseType: !3694, size: 64, offset: 1536)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!3697, !329}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3699)
!3699 = !{!3700, !3707}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3698, file: !14, line: 3193, baseType: !3701, size: 128)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3702, line: 296, size: 128, elements: !3703)
!3702 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3703 = !{!3704, !3705, !3706}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3701, file: !3702, line: 297, baseType: !180, size: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3701, file: !3702, line: 299, baseType: !143, size: 32, offset: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3701, file: !3702, line: 300, baseType: !145, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3698, file: !14, line: 3194, baseType: !398, size: 32, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !330, file: !14, line: 655, baseType: !477, size: 64, offset: 448)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !330, file: !14, line: 656, baseType: !325, size: 64, offset: 512)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !330, file: !14, line: 659, baseType: !145, size: 64, offset: 576)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !330, file: !14, line: 663, baseType: !299, size: 64, offset: 640)
!3712 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !14, line: 671, baseType: !3713, size: 32, offset: 704)
!3713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !14, line: 671, size: 32, elements: !3714)
!3714 = !{!3715, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3713, file: !14, line: 672, baseType: !3716, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3713, file: !14, line: 673, baseType: !7, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !330, file: !14, line: 675, baseType: !482, size: 32, offset: 736)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !330, file: !14, line: 676, baseType: !487, size: 64, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !330, file: !14, line: 677, baseType: !3617, size: 128, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !330, file: !14, line: 678, baseType: !3617, size: 128, offset: 960)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !330, file: !14, line: 679, baseType: !3617, size: 128, offset: 1088)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !330, file: !14, line: 680, baseType: !180, size: 32, offset: 1216)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !330, file: !14, line: 681, baseType: !219, size: 16, offset: 1248)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !330, file: !14, line: 682, baseType: !209, size: 8, offset: 1264)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !330, file: !14, line: 683, baseType: !209, size: 8, offset: 1272)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !330, file: !14, line: 684, baseType: !1236, size: 64, offset: 1280)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !330, file: !14, line: 691, baseType: !299, size: 64, offset: 1344)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !330, file: !14, line: 692, baseType: !1248, size: 320, offset: 1408)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !330, file: !14, line: 694, baseType: !299, size: 64, offset: 1728)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !330, file: !14, line: 695, baseType: !299, size: 64, offset: 1792)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !330, file: !14, line: 697, baseType: !833, size: 128, offset: 1856)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !330, file: !14, line: 698, baseType: !161, size: 128, offset: 1984)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !330, file: !14, line: 707, baseType: !161, size: 128, offset: 2112)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !330, file: !14, line: 708, baseType: !161, size: 128, offset: 2240)
!3736 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !14, line: 709, baseType: !3737, size: 128, offset: 2368)
!3737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !14, line: 709, size: 128, elements: !3738)
!3738 = !{!3739, !3740}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3737, file: !14, line: 710, baseType: !957, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3737, file: !14, line: 711, baseType: !807, size: 128, align: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !330, file: !14, line: 713, baseType: !593, size: 64, offset: 2496)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !330, file: !14, line: 714, baseType: !593, size: 64, offset: 2560)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !330, file: !14, line: 715, baseType: !200, size: 32, offset: 2624)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !330, file: !14, line: 716, baseType: !200, size: 32, offset: 2656)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !330, file: !14, line: 717, baseType: !200, size: 32, offset: 2688)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !330, file: !14, line: 719, baseType: !200, size: 32, offset: 2720)
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !14, line: 721, baseType: !3748, size: 64, offset: 2752)
!3748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !14, line: 721, size: 64, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3748, file: !14, line: 722, baseType: !1946, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3748, file: !14, line: 723, baseType: !980, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !330, file: !14, line: 725, baseType: !3753, size: 64, offset: 2816)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !330, file: !14, line: 726, baseType: !326, size: 1536, align: 64, offset: 2880)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !330, file: !14, line: 727, baseType: !161, size: 128, offset: 4416)
!3757 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !14, line: 728, baseType: !3758, size: 64, offset: 4544)
!3758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !14, line: 728, size: 64, elements: !3759)
!3759 = !{!3760, !3761, !3764, !3765}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3758, file: !14, line: 729, baseType: !2351, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3758, file: !14, line: 730, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3758, file: !14, line: 731, baseType: !249, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3758, file: !14, line: 732, baseType: !7, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !330, file: !14, line: 735, baseType: !399, size: 32, offset: 4608)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !330, file: !14, line: 738, baseType: !399, size: 32, offset: 4640)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !330, file: !14, line: 739, baseType: !3443, size: 64, offset: 4672)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !330, file: !14, line: 750, baseType: !145, size: 64, offset: 4736)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !326, file: !14, line: 474, baseType: !3701, size: 128, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !326, file: !14, line: 475, baseType: !1248, size: 320, offset: 192)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !326, file: !14, line: 476, baseType: !143, size: 32, offset: 512)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !326, file: !14, line: 477, baseType: !200, size: 32, offset: 544)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !326, file: !14, line: 482, baseType: !1534, size: 128, offset: 576)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !326, file: !14, line: 483, baseType: !299, size: 64, offset: 704)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !326, file: !14, line: 484, baseType: !299, size: 64, offset: 768)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !326, file: !14, line: 485, baseType: !3778, size: 64, offset: 832)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3780)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3781)
!3781 = !{!3782, !3786, !3856, !3860, !3864, !3870, !3874, !3878, !3883, !3887, !3891, !3895, !3896, !3900, !3904, !3908, !3913, !3917, !3924, !3925}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3780, file: !14, line: 405, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!204, !2138, !992}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3780, file: !14, line: 406, baseType: !3787, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!204, !1678, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3792)
!3792 = !{!3793, !3823, !3837}
!3793 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !38, line: 295, baseType: !3794, size: 512)
!3794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3791, file: !38, line: 295, size: 512, elements: !3795)
!3795 = !{!3796, !3822}
!3796 = !DIDerivedType(tag: DW_TAG_member, scope: !3794, file: !38, line: 296, baseType: !3797, size: 448)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3794, file: !38, line: 296, size: 448, elements: !3798)
!3798 = !{!3799, !3800, !3809, !3810, !3811, !3820, !3821}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3797, file: !38, line: 298, baseType: !299, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, scope: !3797, file: !38, line: 299, baseType: !3801, size: 128, offset: 64)
!3801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3797, file: !38, line: 299, size: 128, elements: !3802)
!3802 = !{!3803, !3804}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3801, file: !38, line: 300, baseType: !161, size: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, scope: !3801, file: !38, line: 302, baseType: !3805, size: 128)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3801, file: !38, line: 302, size: 128, elements: !3806)
!3806 = !{!3807, !3808}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3805, file: !38, line: 303, baseType: !145, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3805, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3797, file: !38, line: 310, baseType: !325, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3797, file: !38, line: 311, baseType: !299, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, scope: !3797, file: !38, line: 312, baseType: !3812, size: 64, offset: 320)
!3812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3797, file: !38, line: 312, size: 64, elements: !3813)
!3813 = !{!3814, !3815}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3812, file: !38, line: 313, baseType: !145, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3812, file: !38, line: 314, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3817)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3818)
!3818 = !{!3819}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3817, file: !38, line: 256, baseType: !299, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3797, file: !38, line: 316, baseType: !200, size: 32, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3797, file: !38, line: 317, baseType: !200, size: 32, offset: 416)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3794, file: !38, line: 323, baseType: !2139, size: 512, align: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !38, line: 325, baseType: !3824, size: 512, offset: 512)
!3824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3791, file: !38, line: 325, size: 512, elements: !3825)
!3825 = !{!3826, !3836}
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !3824, file: !38, line: 326, baseType: !3827, size: 320)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3824, file: !38, line: 326, size: 320, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3827, file: !38, line: 327, baseType: !299, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3827, file: !38, line: 328, baseType: !299, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3827, file: !38, line: 329, baseType: !299, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3827, file: !38, line: 331, baseType: !200, size: 32, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3827, file: !38, line: 332, baseType: !200, size: 32, offset: 224)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3827, file: !38, line: 333, baseType: !200, size: 32, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3827, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3824, file: !38, line: 339, baseType: !2139, size: 512, align: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !38, line: 341, baseType: !3838, size: 512, offset: 1024)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3791, file: !38, line: 341, size: 512, elements: !3839)
!3839 = !{!3840, !3849, !3855}
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3838, file: !38, line: 342, baseType: !3841, size: 384)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3838, file: !38, line: 342, size: 384, elements: !3842)
!3842 = !{!3843, !3844, !3845, !3846, !3847, !3848}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3841, file: !38, line: 343, baseType: !299, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3841, file: !38, line: 344, baseType: !299, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3841, file: !38, line: 346, baseType: !145, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3841, file: !38, line: 347, baseType: !145, size: 64, offset: 192)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3841, file: !38, line: 348, baseType: !145, size: 64, offset: 256)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3841, file: !38, line: 349, baseType: !145, size: 64, offset: 320)
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !3838, file: !38, line: 352, baseType: !3850, size: 256)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3838, file: !38, line: 352, size: 256, elements: !3851)
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3850, file: !38, line: 353, baseType: !299, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3850, file: !38, line: 354, baseType: !299, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3850, file: !38, line: 356, baseType: !161, size: 128, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3838, file: !38, line: 359, baseType: !2139, size: 512, align: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3780, file: !14, line: 409, baseType: !3857, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!204, !325, !992}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3780, file: !14, line: 412, baseType: !3861, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!667, !325, !3790}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3780, file: !14, line: 414, baseType: !3865, size: 64, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3780, file: !14, line: 416, baseType: !3871, size: 64, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!204, !1678, !325, !487, !7, !3192, !2366}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3780, file: !14, line: 419, baseType: !3875, size: 64, offset: 384)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!204, !1678, !325, !487, !7, !7, !2138, !145}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3780, file: !14, line: 424, baseType: !3879, size: 64, offset: 448)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!3882, !325, !3882}
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !144, line: 131, baseType: !150)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3780, file: !14, line: 425, baseType: !3884, size: 64, offset: 512)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !3790, !296, !296}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3780, file: !14, line: 426, baseType: !3888, size: 64, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!667, !3790, !143}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3780, file: !14, line: 427, baseType: !3892, size: 64, offset: 640)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !3790}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3780, file: !14, line: 428, baseType: !1965, size: 64, offset: 704)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3780, file: !14, line: 433, baseType: !3897, size: 64, offset: 768)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!204, !325, !3790, !3790, !74}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3780, file: !14, line: 435, baseType: !3901, size: 64, offset: 832)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!204, !3790}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3780, file: !14, line: 436, baseType: !3905, size: 64, offset: 896)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!667, !3790, !296, !296}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3780, file: !14, line: 438, baseType: !3909, size: 64, offset: 960)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !3790, !3912, !3912}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3780, file: !14, line: 439, baseType: !3914, size: 64, offset: 1024)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!204, !325, !2138}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3780, file: !14, line: 442, baseType: !3918, size: 64, offset: 1088)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!204, !3921, !1678, !3923}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3780, file: !14, line: 444, baseType: !2358, size: 64, offset: 1152)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3780, file: !14, line: 445, baseType: !3926, size: 64, offset: 1216)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!204, !1968, !1990}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !14, line: 486, baseType: !299, size: 64, offset: 896)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !326, file: !14, line: 487, baseType: !1248, size: 320, offset: 960)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !326, file: !14, line: 488, baseType: !2401, size: 32, offset: 1280)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !326, file: !14, line: 489, baseType: !180, size: 32, offset: 1312)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !326, file: !14, line: 490, baseType: !161, size: 128, offset: 1344)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !326, file: !14, line: 491, baseType: !145, size: 64, offset: 1472)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !316, file: !275, line: 180, baseType: !3936, size: 64, offset: 320)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!281, !1678, !173, !315, !249, !487, !296}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !316, file: !275, line: 182, baseType: !3936, size: 64, offset: 384)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !316, file: !275, line: 184, baseType: !3941, size: 64, offset: 448)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!204, !1678, !173, !315, !2029}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !304, file: !275, line: 90, baseType: !3945, size: 64, offset: 192)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !304, file: !275, line: 91, baseType: !3947, size: 64, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !265, file: !168, line: 120, baseType: !3949, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!3952, !232}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3954)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3955)
!3955 = !{!3956, !3957, !3961, !3965, !3971, !3975}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3954, file: !82, line: 40, baseType: !81, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3954, file: !82, line: 41, baseType: !3958, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!667}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3954, file: !82, line: 42, baseType: !3962, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!145}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3954, file: !82, line: 43, baseType: !3966, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!2490, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3954, file: !82, line: 44, baseType: !3972, size: 64, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!2490}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3954, file: !82, line: 45, baseType: !630, size: 64, offset: 320)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !265, file: !168, line: 121, baseType: !3977, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!2490, !232}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !265, file: !168, line: 122, baseType: !3981, size: 64, offset: 320)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !232, !3984, !3985}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !167, file: !168, line: 70, baseType: !3987, size: 64, offset: 384)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !502, line: 190, size: 1152, elements: !3989)
!3989 = !{!3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !4081, !4082, !4083, !4084, !4085, !4088}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3988, file: !502, line: 191, baseType: !200, size: 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3988, file: !502, line: 192, baseType: !200, size: 32, offset: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3988, file: !502, line: 202, baseType: !3987, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3988, file: !502, line: 203, baseType: !157, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3988, file: !502, line: 205, baseType: !699, size: 192, align: 64, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3988, file: !502, line: 207, baseType: !2490, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3988, file: !502, line: 208, baseType: !7, size: 32, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_member, scope: !3988, file: !502, line: 209, baseType: !3998, size: 256, offset: 512)
!3998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3988, file: !502, line: 209, size: 256, elements: !3999)
!3999 = !{!4000, !4009, !4013}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3998, file: !502, line: 210, baseType: !4001, size: 256)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !502, line: 153, size: 256, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4008}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4001, file: !502, line: 154, baseType: !299, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4001, file: !502, line: 156, baseType: !1537, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4001, file: !502, line: 162, baseType: !4006, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !502, line: 162, flags: DIFlagFwdDecl)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4001, file: !502, line: 167, baseType: !299, size: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3998, file: !502, line: 211, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !502, line: 170, size: 64, elements: !4011)
!4011 = !{!4012}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4010, file: !502, line: 171, baseType: !3987, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3998, file: !502, line: 212, baseType: !4014, size: 256)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !502, line: 174, size: 256, elements: !4015)
!4015 = !{!4016, !4076, !4079, !4080}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4014, file: !502, line: 175, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4019)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !502, line: 271, size: 768, elements: !4020)
!4020 = !{!4021, !4041, !4045, !4049, !4053, !4057, !4061, !4065, !4066, !4067, !4068, !4072}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4019, file: !502, line: 276, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!204, !4025}
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !502, line: 251, size: 1216, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4026, file: !502, line: 253, baseType: !3987, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4026, file: !502, line: 254, baseType: !1678, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4026, file: !502, line: 255, baseType: !1029, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4026, file: !502, line: 256, baseType: !145, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4026, file: !502, line: 259, baseType: !587, size: 256, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4026, file: !502, line: 260, baseType: !587, size: 256, offset: 512)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4026, file: !502, line: 261, baseType: !204, size: 32, offset: 768)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4026, file: !502, line: 262, baseType: !161, size: 128, offset: 832)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4026, file: !502, line: 263, baseType: !249, size: 64, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4026, file: !502, line: 265, baseType: !296, size: 64, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4026, file: !502, line: 266, baseType: !667, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4026, file: !502, line: 267, baseType: !667, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4026, file: !502, line: 268, baseType: !2074, size: 64, offset: 1152)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4019, file: !502, line: 277, baseType: !4042, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !4025}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4019, file: !502, line: 290, baseType: !4046, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!204, !1029, !145}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4019, file: !502, line: 292, baseType: !4050, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!145, !1029, !1959}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4019, file: !502, line: 293, baseType: !4054, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!145, !1029, !145, !1959}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4019, file: !502, line: 294, baseType: !4058, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !1029, !145}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4019, file: !502, line: 296, baseType: !4062, size: 64, offset: 384)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!281, !4025, !249, !296, !487}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4019, file: !502, line: 306, baseType: !296, size: 64, offset: 448)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4019, file: !502, line: 313, baseType: !667, size: 8, offset: 512)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4019, file: !502, line: 314, baseType: !4062, size: 64, offset: 576)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4019, file: !502, line: 317, baseType: !4069, size: 64, offset: 640)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!2016, !4025, !2018}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4019, file: !502, line: 320, baseType: !4073, size: 64, offset: 704)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!204, !4025, !2029}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4014, file: !502, line: 176, baseType: !4077, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !502, line: 35, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4014, file: !502, line: 177, baseType: !487, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4014, file: !502, line: 178, baseType: !3987, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3988, file: !502, line: 215, baseType: !145, size: 64, offset: 768)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3988, file: !502, line: 221, baseType: !150, size: 64, offset: 832)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3988, file: !502, line: 223, baseType: !219, size: 16, offset: 896)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3988, file: !502, line: 224, baseType: !291, size: 16, offset: 912)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3988, file: !502, line: 225, baseType: !4086, size: 64, offset: 960)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !502, line: 36, flags: DIFlagFwdDecl)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3988, file: !502, line: 227, baseType: !807, size: 128, align: 64, offset: 1024)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !167, file: !168, line: 71, baseType: !4090, size: 32, offset: 448)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4091, line: 19, size: 32, elements: !4092)
!4091 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4092 = !{!4093}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4090, file: !4091, line: 20, baseType: !1368, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !167, file: !168, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !167, file: !168, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !167, file: !168, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !167, file: !168, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !167, file: !168, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !164)
!4101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !144, line: 42, baseType: !299)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memmap_attribute", file: !3, line: 54, size: 192, elements: !4105)
!4105 = !{!4106, !4107}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4104, file: !3, line: 55, baseType: !287, size: 128)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4104, file: !3, line: 56, baseType: !4108, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!281, !146, !249}
!4111 = !{!4112, !4117, !4119, !4121, !4123, !0, !4128, !4130, !4132, !4135, !4137, !4140, !4142, !4144, !4146, !4149, !4151, !4156, !4158, !4160, !4167, !4169, !4172, !4175}
!4112 = !DIGlobalVariableExpression(var: !4113, expr: !DIExpression())
!4113 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !4114, isLocal: true, isDefinition: true)
!4114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 208, elements: !4115)
!4115 = !{!4116}
!4116 = !DISubrange(count: 26)
!4117 = !DIGlobalVariableExpression(var: !4118, expr: !DIExpression())
!4118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_memmap__287_418_firmware_memmap_init7288", scope: !2, file: !3, line: 418, type: !145, isLocal: true, isDefinition: true)
!4119 = !DIGlobalVariableExpression(var: !4120, expr: !DIExpression())
!4120 = distinct !DIGlobalVariable(name: "map_entries", scope: !2, file: !3, line: 79, type: !161, isLocal: true, isDefinition: true)
!4121 = !DIGlobalVariableExpression(var: !4122, expr: !DIExpression())
!4122 = distinct !DIGlobalVariable(name: "map_entries_bootmem", scope: !2, file: !3, line: 88, type: !161, isLocal: true, isDefinition: true)
!4123 = !DIGlobalVariableExpression(var: !4124, expr: !DIExpression())
!4124 = distinct !DIGlobalVariable(scope: null, file: !93, line: 480, type: !4125, isLocal: true, isDefinition: true)
!4125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 168, elements: !4126)
!4126 = !{!4127}
!4127 = !DISubrange(count: 21)
!4128 = !DIGlobalVariableExpression(var: !4129, expr: !DIExpression())
!4129 = distinct !DIGlobalVariable(name: "memmap_ktype", scope: !2, file: !3, line: 119, type: !265, isLocal: true, isDefinition: true)
!4130 = !DIGlobalVariableExpression(var: !4131, expr: !DIExpression())
!4131 = distinct !DIGlobalVariable(name: "memmap_attr_ops", scope: !2, file: !3, line: 74, type: !273, isLocal: true, isDefinition: true)
!4132 = !DIGlobalVariableExpression(var: !4133, expr: !DIExpression())
!4133 = distinct !DIGlobalVariable(name: "def_groups", scope: !2, file: !3, line: 72, type: !4134, isLocal: true, isDefinition: true)
!4134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 128, elements: !706)
!4135 = !DIGlobalVariableExpression(var: !4136, expr: !DIExpression())
!4136 = distinct !DIGlobalVariable(name: "def_group", scope: !2, file: !3, line: 72, type: !303, isLocal: true, isDefinition: true)
!4137 = !DIGlobalVariableExpression(var: !4138, expr: !DIExpression())
!4138 = distinct !DIGlobalVariable(name: "def_attrs", scope: !2, file: !3, line: 66, type: !4139, isLocal: true, isDefinition: true)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !817)
!4140 = !DIGlobalVariableExpression(var: !4141, expr: !DIExpression())
!4141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !1820, isLocal: true, isDefinition: true)
!4142 = !DIGlobalVariableExpression(var: !4143, expr: !DIExpression())
!4143 = distinct !DIGlobalVariable(name: "memmap_start_attr", scope: !2, file: !3, line: 59, type: !4104, isLocal: true, isDefinition: true)
!4144 = !DIGlobalVariableExpression(var: !4145, expr: !DIExpression())
!4145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 372, type: !2990, isLocal: true, isDefinition: true)
!4146 = !DIGlobalVariableExpression(var: !4147, expr: !DIExpression())
!4147 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !4148, isLocal: true, isDefinition: true)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32, elements: !817)
!4149 = !DIGlobalVariableExpression(var: !4150, expr: !DIExpression())
!4150 = distinct !DIGlobalVariable(name: "memmap_end_attr", scope: !2, file: !3, line: 60, type: !4104, isLocal: true, isDefinition: true)
!4151 = !DIGlobalVariableExpression(var: !4152, expr: !DIExpression())
!4152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !4153, isLocal: true, isDefinition: true)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 40, elements: !4154)
!4154 = !{!4155}
!4155 = !DISubrange(count: 5)
!4156 = !DIGlobalVariableExpression(var: !4157, expr: !DIExpression())
!4157 = distinct !DIGlobalVariable(name: "memmap_type_attr", scope: !2, file: !3, line: 61, type: !4104, isLocal: true, isDefinition: true)
!4158 = !DIGlobalVariableExpression(var: !4159, expr: !DIExpression())
!4159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 384, type: !4148, isLocal: true, isDefinition: true)
!4160 = !DIGlobalVariableExpression(var: !4161, expr: !DIExpression())
!4161 = distinct !DIGlobalVariable(name: "map_entries_nr", scope: !4162, file: !3, line: 178, type: !204, isLocal: true, isDefinition: true)
!4162 = distinct !DISubprogram(name: "add_sysfs_fw_map_entry", scope: !3, file: !3, line: 176, type: !4163, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!204, !146}
!4165 = !{!4166}
!4166 = !DILocalVariable(name: "entry", arg: 1, scope: !4162, file: !3, line: 176, type: !146)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(name: "mmap_kset", scope: !4162, file: !3, line: 179, type: !175, isLocal: true, isDefinition: true)
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !4171, isLocal: true, isDefinition: true)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 56, elements: !708)
!4172 = !DIGlobalVariableExpression(var: !4173, expr: !DIExpression())
!4173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !4174, isLocal: true, isDefinition: true)
!4174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 24, elements: !250)
!4175 = !DIGlobalVariableExpression(var: !4176, expr: !DIExpression())
!4176 = distinct !DIGlobalVariable(name: "map_entries_lock", scope: !2, file: !3, line: 80, type: !180, isLocal: true, isDefinition: true)
!4177 = !{i32 7, !"Dwarf Version", i32 5}
!4178 = !{i32 2, !"Debug Info Version", i32 3}
!4179 = !{i32 1, !"wchar_size", i32 2}
!4180 = !{i32 8, !"cf-protection-branch", i32 1}
!4181 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4182 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4183 = !{i32 1, !"Code Model", i32 2}
!4184 = !{i32 1, !"override-stack-alignment", i32 8}
!4185 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4186 = distinct !DISubprogram(name: "firmware_map_add_hotplug", scope: !3, file: !3, line: 282, type: !4187, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!204, !150, !150, !157}
!4189 = !{!4190, !4191, !4192, !4193}
!4190 = !DILocalVariable(name: "start", arg: 1, scope: !4186, file: !3, line: 282, type: !150)
!4191 = !DILocalVariable(name: "end", arg: 2, scope: !4186, file: !3, line: 282, type: !150)
!4192 = !DILocalVariable(name: "type", arg: 3, scope: !4186, file: !3, line: 282, type: !157)
!4193 = !DILocalVariable(name: "entry", scope: !4186, file: !3, line: 284, type: !146)
!4194 = !DILocation(line: 282, column: 44, scope: !4186)
!4195 = !DILocation(line: 282, column: 55, scope: !4186)
!4196 = !DILocation(line: 282, column: 72, scope: !4186)
!4197 = !DILocation(line: 284, column: 2, scope: !4186)
!4198 = !DILocation(line: 284, column: 29, scope: !4186)
!4199 = !DILocation(line: 286, column: 34, scope: !4186)
!4200 = !DILocation(line: 286, column: 41, scope: !4186)
!4201 = !DILocation(line: 286, column: 45, scope: !4186)
!4202 = !DILocation(line: 286, column: 50, scope: !4186)
!4203 = !DILocation(line: 286, column: 10, scope: !4186)
!4204 = !DILocation(line: 286, column: 8, scope: !4186)
!4205 = !DILocation(line: 287, column: 6, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 287, column: 6)
!4207 = !DILocation(line: 287, column: 6, scope: !4186)
!4208 = !DILocation(line: 288, column: 3, scope: !4206)
!4209 = !DILocation(line: 290, column: 42, scope: !4186)
!4210 = !DILocation(line: 290, column: 49, scope: !4186)
!4211 = !DILocation(line: 290, column: 53, scope: !4186)
!4212 = !DILocation(line: 290, column: 58, scope: !4186)
!4213 = !DILocation(line: 290, column: 10, scope: !4186)
!4214 = !DILocation(line: 290, column: 8, scope: !4186)
!4215 = !DILocation(line: 291, column: 7, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 291, column: 6)
!4217 = !DILocation(line: 291, column: 6, scope: !4186)
!4218 = !DILocation(line: 292, column: 11, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 291, column: 14)
!4220 = !DILocation(line: 292, column: 9, scope: !4219)
!4221 = !DILocation(line: 293, column: 8, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 293, column: 7)
!4223 = !DILocation(line: 293, column: 7, scope: !4219)
!4224 = !DILocation(line: 294, column: 4, scope: !4222)
!4225 = !DILocation(line: 295, column: 2, scope: !4219)
!4226 = !DILocation(line: 297, column: 3, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 295, column: 9)
!4228 = !DILocation(line: 298, column: 13, scope: !4227)
!4229 = !DILocation(line: 298, column: 20, scope: !4227)
!4230 = !DILocation(line: 298, column: 3, scope: !4227)
!4231 = !DILocation(line: 299, column: 3, scope: !4227)
!4232 = !DILocation(line: 301, column: 10, scope: !4227)
!4233 = !DILocation(line: 301, column: 3, scope: !4227)
!4234 = !DILocation(line: 304, column: 25, scope: !4186)
!4235 = !DILocation(line: 304, column: 32, scope: !4186)
!4236 = !DILocation(line: 304, column: 37, scope: !4186)
!4237 = !DILocation(line: 304, column: 43, scope: !4186)
!4238 = !DILocation(line: 304, column: 2, scope: !4186)
!4239 = !DILocation(line: 306, column: 25, scope: !4186)
!4240 = !DILocation(line: 306, column: 2, scope: !4186)
!4241 = !DILocation(line: 308, column: 2, scope: !4186)
!4242 = !DILocation(line: 309, column: 1, scope: !4186)
!4243 = distinct !DISubprogram(name: "firmware_map_find_entry", scope: !3, file: !3, line: 246, type: !4244, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4246)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!146, !150, !150, !157}
!4246 = !{!4247, !4248, !4249}
!4247 = !DILocalVariable(name: "start", arg: 1, scope: !4243, file: !3, line: 246, type: !150)
!4248 = !DILocalVariable(name: "end", arg: 2, scope: !4243, file: !3, line: 246, type: !150)
!4249 = !DILocalVariable(name: "type", arg: 3, scope: !4243, file: !3, line: 246, type: !157)
!4250 = !DILocation(line: 246, column: 29, scope: !4243)
!4251 = !DILocation(line: 246, column: 40, scope: !4243)
!4252 = !DILocation(line: 246, column: 57, scope: !4243)
!4253 = !DILocation(line: 248, column: 41, scope: !4243)
!4254 = !DILocation(line: 248, column: 48, scope: !4243)
!4255 = !DILocation(line: 248, column: 53, scope: !4243)
!4256 = !DILocation(line: 248, column: 9, scope: !4243)
!4257 = !DILocation(line: 248, column: 2, scope: !4243)
!4258 = distinct !DISubprogram(name: "firmware_map_find_entry_bootmem", scope: !3, file: !3, line: 263, type: !4244, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4259)
!4259 = !{!4260, !4261, !4262}
!4260 = !DILocalVariable(name: "start", arg: 1, scope: !4258, file: !3, line: 263, type: !150)
!4261 = !DILocalVariable(name: "end", arg: 2, scope: !4258, file: !3, line: 263, type: !150)
!4262 = !DILocalVariable(name: "type", arg: 3, scope: !4258, file: !3, line: 263, type: !157)
!4263 = !DILocation(line: 263, column: 37, scope: !4258)
!4264 = !DILocation(line: 263, column: 48, scope: !4258)
!4265 = !DILocation(line: 263, column: 65, scope: !4258)
!4266 = !DILocation(line: 265, column: 41, scope: !4258)
!4267 = !DILocation(line: 265, column: 48, scope: !4258)
!4268 = !DILocation(line: 265, column: 53, scope: !4258)
!4269 = !DILocation(line: 265, column: 9, scope: !4258)
!4270 = !DILocation(line: 265, column: 2, scope: !4258)
!4271 = distinct !DISubprogram(name: "kzalloc", scope: !93, file: !93, line: 719, type: !4272, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!145, !296, !143}
!4274 = !{!4275, !4276}
!4275 = !DILocalVariable(name: "size", arg: 1, scope: !4271, file: !93, line: 719, type: !296)
!4276 = !DILocalVariable(name: "flags", arg: 2, scope: !4271, file: !93, line: 719, type: !143)
!4277 = !DILocation(line: 719, column: 52, scope: !4271)
!4278 = !DILocation(line: 719, column: 64, scope: !4271)
!4279 = !DILocation(line: 721, column: 17, scope: !4271)
!4280 = !DILocation(line: 721, column: 23, scope: !4271)
!4281 = !DILocation(line: 721, column: 29, scope: !4271)
!4282 = !DILocation(line: 721, column: 9, scope: !4271)
!4283 = !DILocation(line: 721, column: 2, scope: !4271)
!4284 = distinct !DISubprogram(name: "spin_lock", scope: !4285, file: !4285, line: 349, type: !4286, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4288)
!4285 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4286 = !DISubroutineType(types: !4287)
!4287 = !{null, !2270}
!4288 = !{!4289}
!4289 = !DILocalVariable(name: "lock", arg: 1, scope: !4284, file: !4285, line: 349, type: !2270)
!4290 = !DILocation(line: 349, column: 51, scope: !4284)
!4291 = !DILocation(line: 351, column: 2, scope: !4284)
!4292 = !DILocation(line: 352, column: 1, scope: !4284)
!4293 = distinct !DISubprogram(name: "list_del", scope: !4294, file: !4294, line: 227, type: !4295, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4297)
!4294 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !164}
!4297 = !{!4298}
!4298 = !DILocalVariable(name: "entry", arg: 1, scope: !4293, file: !4294, line: 227, type: !164)
!4299 = !DILocation(line: 227, column: 47, scope: !4293)
!4300 = !DILocation(line: 229, column: 19, scope: !4293)
!4301 = !DILocation(line: 229, column: 2, scope: !4293)
!4302 = !DILocation(line: 230, column: 2, scope: !4293)
!4303 = !DILocation(line: 230, column: 9, scope: !4293)
!4304 = !DILocation(line: 230, column: 14, scope: !4293)
!4305 = !DILocation(line: 231, column: 2, scope: !4293)
!4306 = !DILocation(line: 231, column: 9, scope: !4293)
!4307 = !DILocation(line: 231, column: 14, scope: !4293)
!4308 = !DILocation(line: 232, column: 1, scope: !4293)
!4309 = distinct !DISubprogram(name: "spin_unlock", scope: !4285, file: !4285, line: 389, type: !4286, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4310)
!4310 = !{!4311}
!4311 = !DILocalVariable(name: "lock", arg: 1, scope: !4309, file: !4285, line: 389, type: !2270)
!4312 = !DILocation(line: 389, column: 53, scope: !4309)
!4313 = !DILocation(line: 391, column: 2, scope: !4309)
!4314 = !DILocation(line: 392, column: 1, scope: !4309)
!4315 = distinct !DISubprogram(name: "firmware_map_add_entry", scope: !3, file: !3, line: 142, type: !4316, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!204, !150, !150, !157, !146}
!4318 = !{!4319, !4320, !4321, !4322}
!4319 = !DILocalVariable(name: "start", arg: 1, scope: !4315, file: !3, line: 142, type: !150)
!4320 = !DILocalVariable(name: "end", arg: 2, scope: !4315, file: !3, line: 142, type: !150)
!4321 = !DILocalVariable(name: "type", arg: 3, scope: !4315, file: !3, line: 143, type: !157)
!4322 = !DILocalVariable(name: "entry", arg: 4, scope: !4315, file: !3, line: 144, type: !146)
!4323 = !DILocation(line: 142, column: 39, scope: !4315)
!4324 = !DILocation(line: 142, column: 50, scope: !4315)
!4325 = !DILocation(line: 143, column: 19, scope: !4315)
!4326 = !DILocation(line: 144, column: 34, scope: !4315)
!4327 = !DILocation(line: 146, column: 2, scope: !4315)
!4328 = !DILocation(line: 146, column: 2, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 146, column: 2)
!4330 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 146, column: 2)
!4331 = !DILocation(line: 146, column: 2, scope: !4330)
!4332 = !DILocation(line: 146, column: 2, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 146, column: 2)
!4334 = !DILocation(line: 146, column: 2, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 146, column: 2)
!4336 = !DILocation(line: 146, column: 2, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 146, column: 2)
!4338 = !{i64 2154277453, i64 2154277482, i64 2154277528, i64 2154277586, i64 2154277640, i64 2154277694, i64 2154277749, i64 2154277780}
!4339 = !DILocation(line: 148, column: 17, scope: !4315)
!4340 = !DILocation(line: 148, column: 2, scope: !4315)
!4341 = !DILocation(line: 148, column: 9, scope: !4315)
!4342 = !DILocation(line: 148, column: 15, scope: !4315)
!4343 = !DILocation(line: 149, column: 15, scope: !4315)
!4344 = !DILocation(line: 149, column: 19, scope: !4315)
!4345 = !DILocation(line: 149, column: 2, scope: !4315)
!4346 = !DILocation(line: 149, column: 9, scope: !4315)
!4347 = !DILocation(line: 149, column: 13, scope: !4315)
!4348 = !DILocation(line: 150, column: 16, scope: !4315)
!4349 = !DILocation(line: 150, column: 2, scope: !4315)
!4350 = !DILocation(line: 150, column: 9, scope: !4315)
!4351 = !DILocation(line: 150, column: 14, scope: !4315)
!4352 = !DILocation(line: 151, column: 18, scope: !4315)
!4353 = !DILocation(line: 151, column: 25, scope: !4315)
!4354 = !DILocation(line: 151, column: 2, scope: !4315)
!4355 = !DILocation(line: 152, column: 16, scope: !4315)
!4356 = !DILocation(line: 152, column: 23, scope: !4315)
!4357 = !DILocation(line: 152, column: 2, scope: !4315)
!4358 = !DILocation(line: 154, column: 2, scope: !4315)
!4359 = !DILocation(line: 155, column: 17, scope: !4315)
!4360 = !DILocation(line: 155, column: 24, scope: !4315)
!4361 = !DILocation(line: 155, column: 2, scope: !4315)
!4362 = !DILocation(line: 156, column: 2, scope: !4315)
!4363 = !DILocation(line: 158, column: 2, scope: !4315)
!4364 = !DILocation(line: 176, column: 62, scope: !4162)
!4365 = !DILocation(line: 181, column: 6, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 181, column: 6)
!4367 = !DILocation(line: 181, column: 13, scope: !4366)
!4368 = !DILocation(line: 181, column: 18, scope: !4366)
!4369 = !DILocation(line: 181, column: 6, scope: !4162)
!4370 = !DILocation(line: 182, column: 3, scope: !4366)
!4371 = !DILocation(line: 184, column: 7, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 184, column: 6)
!4373 = !DILocation(line: 184, column: 6, scope: !4162)
!4374 = !DILocation(line: 185, column: 51, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 184, column: 18)
!4376 = !DILocation(line: 185, column: 15, scope: !4375)
!4377 = !DILocation(line: 185, column: 13, scope: !4375)
!4378 = !DILocation(line: 186, column: 8, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 186, column: 7)
!4380 = !DILocation(line: 186, column: 7, scope: !4375)
!4381 = !DILocation(line: 187, column: 4, scope: !4379)
!4382 = !DILocation(line: 188, column: 2, scope: !4375)
!4383 = !DILocation(line: 190, column: 21, scope: !4162)
!4384 = !DILocation(line: 190, column: 2, scope: !4162)
!4385 = !DILocation(line: 190, column: 9, scope: !4162)
!4386 = !DILocation(line: 190, column: 14, scope: !4162)
!4387 = !DILocation(line: 190, column: 19, scope: !4162)
!4388 = !DILocation(line: 191, column: 19, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 191, column: 6)
!4390 = !DILocation(line: 191, column: 26, scope: !4389)
!4391 = !DILocation(line: 191, column: 58, scope: !4389)
!4392 = !DILocation(line: 191, column: 6, scope: !4389)
!4393 = !DILocation(line: 191, column: 6, scope: !4162)
!4394 = !DILocation(line: 192, column: 16, scope: !4389)
!4395 = !DILocation(line: 192, column: 23, scope: !4389)
!4396 = !DILocation(line: 192, column: 3, scope: !4389)
!4397 = !DILocation(line: 194, column: 2, scope: !4162)
!4398 = !DILocation(line: 195, column: 1, scope: !4162)
!4399 = distinct !DISubprogram(name: "firmware_map_add_early", scope: !3, file: !3, line: 324, type: !4187, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4400)
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4408}
!4401 = !DILocalVariable(name: "start", arg: 1, scope: !4399, file: !3, line: 324, type: !150)
!4402 = !DILocalVariable(name: "end", arg: 2, scope: !4399, file: !3, line: 324, type: !150)
!4403 = !DILocalVariable(name: "type", arg: 3, scope: !4399, file: !3, line: 324, type: !157)
!4404 = !DILocalVariable(name: "entry", scope: !4399, file: !3, line: 326, type: !146)
!4405 = !DILocalVariable(name: "__ret_warn_on", scope: !4406, file: !3, line: 330, type: !204)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 330, column: 6)
!4407 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 330, column: 6)
!4408 = !DILocalVariable(name: "__flags", scope: !4409, file: !3, line: 330, type: !204)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 330, column: 6)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 330, column: 6)
!4411 = !DILocation(line: 324, column: 39, scope: !4399)
!4412 = !DILocation(line: 324, column: 50, scope: !4399)
!4413 = !DILocation(line: 324, column: 67, scope: !4399)
!4414 = !DILocation(line: 326, column: 2, scope: !4399)
!4415 = !DILocation(line: 326, column: 29, scope: !4399)
!4416 = !DILocation(line: 328, column: 10, scope: !4399)
!4417 = !DILocation(line: 328, column: 8, scope: !4399)
!4418 = !DILocation(line: 330, column: 6, scope: !4406)
!4419 = !DILocation(line: 330, column: 6, scope: !4410)
!4420 = !DILocation(line: 330, column: 6, scope: !4409)
!4421 = !DILocation(line: 330, column: 6, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 330, column: 6)
!4423 = !DILocation(line: 330, column: 6, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 330, column: 6)
!4425 = !{i64 2154283024, i64 2154283053, i64 2154283099, i64 2154283157, i64 2154283211, i64 2154283265, i64 2154283320, i64 2154283351, i64 2154283659, i64 2154283665, i64 2154283712, i64 2154283735, i64 2154283761}
!4426 = !DILocation(line: 330, column: 6, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 330, column: 6)
!4428 = !DILocation(line: 330, column: 6, scope: !4407)
!4429 = !DILocation(line: 330, column: 6, scope: !4399)
!4430 = !DILocation(line: 331, column: 3, scope: !4407)
!4431 = !DILocation(line: 333, column: 32, scope: !4399)
!4432 = !DILocation(line: 333, column: 39, scope: !4399)
!4433 = !DILocation(line: 333, column: 44, scope: !4399)
!4434 = !DILocation(line: 333, column: 50, scope: !4399)
!4435 = !DILocation(line: 333, column: 9, scope: !4399)
!4436 = !DILocation(line: 333, column: 2, scope: !4399)
!4437 = !DILocation(line: 334, column: 1, scope: !4399)
!4438 = distinct !DISubprogram(name: "memblock_alloc", scope: !4439, file: !4439, line: 426, type: !4440, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4442)
!4439 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!145, !3196, !3196}
!4442 = !{!4443, !4444}
!4443 = !DILocalVariable(name: "size", arg: 1, scope: !4438, file: !4439, line: 426, type: !3196)
!4444 = !DILocalVariable(name: "align", arg: 2, scope: !4438, file: !4439, line: 426, type: !3196)
!4445 = !DILocation(line: 426, column: 57, scope: !4438)
!4446 = !DILocation(line: 426, column: 75, scope: !4438)
!4447 = !DILocation(line: 428, column: 32, scope: !4438)
!4448 = !DILocation(line: 428, column: 38, scope: !4438)
!4449 = !DILocation(line: 428, column: 9, scope: !4438)
!4450 = !DILocation(line: 428, column: 2, scope: !4438)
!4451 = distinct !DISubprogram(name: "firmware_map_remove", scope: !3, file: !3, line: 346, type: !4187, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4452)
!4452 = !{!4453, !4454, !4455, !4456}
!4453 = !DILocalVariable(name: "start", arg: 1, scope: !4451, file: !3, line: 346, type: !150)
!4454 = !DILocalVariable(name: "end", arg: 2, scope: !4451, file: !3, line: 346, type: !150)
!4455 = !DILocalVariable(name: "type", arg: 3, scope: !4451, file: !3, line: 346, type: !157)
!4456 = !DILocalVariable(name: "entry", scope: !4451, file: !3, line: 348, type: !146)
!4457 = !DILocation(line: 346, column: 39, scope: !4451)
!4458 = !DILocation(line: 346, column: 50, scope: !4451)
!4459 = !DILocation(line: 346, column: 67, scope: !4451)
!4460 = !DILocation(line: 348, column: 2, scope: !4451)
!4461 = !DILocation(line: 348, column: 29, scope: !4451)
!4462 = !DILocation(line: 350, column: 2, scope: !4451)
!4463 = !DILocation(line: 351, column: 34, scope: !4451)
!4464 = !DILocation(line: 351, column: 41, scope: !4451)
!4465 = !DILocation(line: 351, column: 45, scope: !4451)
!4466 = !DILocation(line: 351, column: 50, scope: !4451)
!4467 = !DILocation(line: 351, column: 10, scope: !4451)
!4468 = !DILocation(line: 351, column: 8, scope: !4451)
!4469 = !DILocation(line: 352, column: 7, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 352, column: 6)
!4471 = !DILocation(line: 352, column: 6, scope: !4451)
!4472 = !DILocation(line: 353, column: 3, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 352, column: 14)
!4474 = !DILocation(line: 354, column: 3, scope: !4473)
!4475 = !DILocation(line: 357, column: 28, scope: !4451)
!4476 = !DILocation(line: 357, column: 2, scope: !4451)
!4477 = !DILocation(line: 358, column: 2, scope: !4451)
!4478 = !DILocation(line: 361, column: 28, scope: !4451)
!4479 = !DILocation(line: 361, column: 2, scope: !4451)
!4480 = !DILocation(line: 363, column: 2, scope: !4451)
!4481 = !DILocation(line: 364, column: 1, scope: !4451)
!4482 = distinct !DISubprogram(name: "firmware_map_remove_entry", scope: !3, file: !3, line: 168, type: !4483, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4485)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{null, !146}
!4485 = !{!4486}
!4486 = !DILocalVariable(name: "entry", arg: 1, scope: !4482, file: !3, line: 168, type: !146)
!4487 = !DILocation(line: 168, column: 73, scope: !4482)
!4488 = !DILocation(line: 170, column: 12, scope: !4482)
!4489 = !DILocation(line: 170, column: 19, scope: !4482)
!4490 = !DILocation(line: 170, column: 2, scope: !4482)
!4491 = !DILocation(line: 171, column: 1, scope: !4482)
!4492 = distinct !DISubprogram(name: "remove_sysfs_fw_map_entry", scope: !3, file: !3, line: 200, type: !4483, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4493)
!4493 = !{!4494}
!4494 = !DILocalVariable(name: "entry", arg: 1, scope: !4492, file: !3, line: 200, type: !146)
!4495 = !DILocation(line: 200, column: 73, scope: !4492)
!4496 = !DILocation(line: 202, column: 15, scope: !4492)
!4497 = !DILocation(line: 202, column: 22, scope: !4492)
!4498 = !DILocation(line: 202, column: 2, scope: !4492)
!4499 = !DILocation(line: 203, column: 1, scope: !4492)
!4500 = distinct !DISubprogram(name: "__initstub__kmod_memmap__287_418_firmware_memmap_init7", scope: !3, file: !3, line: 418, type: !681, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4501 = !DILocation(line: 418, column: 1, scope: !4500)
!4502 = distinct !DISubprogram(name: "firmware_memmap_init", scope: !3, file: !3, line: 409, type: !681, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4503)
!4503 = !{!4504, !4505, !4508}
!4504 = !DILocalVariable(name: "entry", scope: !4502, file: !3, line: 411, type: !146)
!4505 = !DILocalVariable(name: "__mptr", scope: !4506, file: !3, line: 413, type: !145)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 413, column: 2)
!4507 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 413, column: 2)
!4508 = !DILocalVariable(name: "__mptr", scope: !4509, file: !3, line: 413, type: !145)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 413, column: 2)
!4510 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 413, column: 2)
!4511 = !DILocation(line: 411, column: 2, scope: !4502)
!4512 = !DILocation(line: 411, column: 29, scope: !4502)
!4513 = !DILocation(line: 413, column: 2, scope: !4506)
!4514 = !DILocation(line: 413, column: 2, scope: !4507)
!4515 = !DILocation(line: 413, column: 2, scope: !4510)
!4516 = !DILocation(line: 414, column: 26, scope: !4510)
!4517 = !DILocation(line: 414, column: 3, scope: !4510)
!4518 = !DILocation(line: 413, column: 2, scope: !4509)
!4519 = distinct !{!4519, !4514, !4520, !4521, !4522}
!4520 = !DILocation(line: 414, column: 31, scope: !4507)
!4521 = !{!"llvm.loop.mustprogress"}
!4522 = !{!"llvm.loop.unroll.disable"}
!4523 = !DILocation(line: 417, column: 1, scope: !4502)
!4524 = !DILocation(line: 416, column: 2, scope: !4502)
!4525 = distinct !DISubprogram(name: "firmware_map_find_entry_in_list", scope: !3, file: !3, line: 219, type: !4526, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4528)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!146, !150, !150, !157, !164}
!4528 = !{!4529, !4530, !4531, !4532, !4533, !4534, !4537}
!4529 = !DILocalVariable(name: "start", arg: 1, scope: !4525, file: !3, line: 219, type: !150)
!4530 = !DILocalVariable(name: "end", arg: 2, scope: !4525, file: !3, line: 219, type: !150)
!4531 = !DILocalVariable(name: "type", arg: 3, scope: !4525, file: !3, line: 219, type: !157)
!4532 = !DILocalVariable(name: "list", arg: 4, scope: !4525, file: !3, line: 220, type: !164)
!4533 = !DILocalVariable(name: "entry", scope: !4525, file: !3, line: 222, type: !146)
!4534 = !DILocalVariable(name: "__mptr", scope: !4535, file: !3, line: 224, type: !145)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 224, column: 2)
!4536 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 224, column: 2)
!4537 = !DILocalVariable(name: "__mptr", scope: !4538, file: !3, line: 224, type: !145)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 224, column: 2)
!4539 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 224, column: 2)
!4540 = !DILocation(line: 219, column: 37, scope: !4525)
!4541 = !DILocation(line: 219, column: 48, scope: !4525)
!4542 = !DILocation(line: 219, column: 65, scope: !4525)
!4543 = !DILocation(line: 220, column: 23, scope: !4525)
!4544 = !DILocation(line: 222, column: 2, scope: !4525)
!4545 = !DILocation(line: 222, column: 29, scope: !4525)
!4546 = !DILocation(line: 224, column: 2, scope: !4535)
!4547 = !DILocation(line: 224, column: 2, scope: !4536)
!4548 = !DILocation(line: 224, column: 2, scope: !4539)
!4549 = !DILocation(line: 225, column: 8, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 225, column: 7)
!4551 = !DILocation(line: 225, column: 15, scope: !4550)
!4552 = !DILocation(line: 225, column: 24, scope: !4550)
!4553 = !DILocation(line: 225, column: 21, scope: !4550)
!4554 = !DILocation(line: 225, column: 31, scope: !4550)
!4555 = !DILocation(line: 225, column: 35, scope: !4550)
!4556 = !DILocation(line: 225, column: 42, scope: !4550)
!4557 = !DILocation(line: 225, column: 49, scope: !4550)
!4558 = !DILocation(line: 225, column: 46, scope: !4550)
!4559 = !DILocation(line: 225, column: 54, scope: !4550)
!4560 = !DILocation(line: 226, column: 16, scope: !4550)
!4561 = !DILocation(line: 226, column: 23, scope: !4550)
!4562 = !DILocation(line: 226, column: 29, scope: !4550)
!4563 = !DILocation(line: 226, column: 9, scope: !4550)
!4564 = !DILocation(line: 225, column: 7, scope: !4539)
!4565 = !DILocation(line: 227, column: 11, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 226, column: 37)
!4567 = !DILocation(line: 227, column: 4, scope: !4566)
!4568 = !DILocation(line: 226, column: 34, scope: !4550)
!4569 = !DILocation(line: 224, column: 2, scope: !4538)
!4570 = distinct !{!4570, !4547, !4571, !4521, !4522}
!4571 = !DILocation(line: 228, column: 3, scope: !4536)
!4572 = !DILocation(line: 230, column: 2, scope: !4525)
!4573 = !DILocation(line: 231, column: 1, scope: !4525)
!4574 = !DISubprogram(name: "strcmp", scope: !4575, file: !4575, line: 88, type: !4576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4575 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!204, !157, !157}
!4578 = distinct !DISubprogram(name: "kmalloc", scope: !93, file: !93, line: 591, type: !4272, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4579)
!4579 = !{!4580, !4581, !4582}
!4580 = !DILocalVariable(name: "size", arg: 1, scope: !4578, file: !93, line: 591, type: !296)
!4581 = !DILocalVariable(name: "flags", arg: 2, scope: !4578, file: !93, line: 591, type: !143)
!4582 = !DILocalVariable(name: "index", scope: !4583, file: !93, line: 594, type: !7)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !93, line: 593, column: 42)
!4584 = distinct !DILexicalBlock(scope: !4578, file: !93, line: 593, column: 6)
!4585 = !DILocation(line: 591, column: 61, scope: !4578)
!4586 = !DILocation(line: 591, column: 73, scope: !4578)
!4587 = !DILocation(line: 593, column: 27, scope: !4584)
!4588 = !DILocation(line: 593, column: 6, scope: !4584)
!4589 = !DILocation(line: 593, column: 33, scope: !4584)
!4590 = !DILocation(line: 593, column: 36, scope: !4584)
!4591 = !DILocation(line: 593, column: 6, scope: !4578)
!4592 = !DILocation(line: 594, column: 3, scope: !4583)
!4593 = !DILocation(line: 594, column: 16, scope: !4583)
!4594 = !DILocation(line: 596, column: 7, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4583, file: !93, line: 596, column: 7)
!4596 = !DILocation(line: 596, column: 12, scope: !4595)
!4597 = !DILocation(line: 596, column: 7, scope: !4583)
!4598 = !DILocation(line: 597, column: 25, scope: !4595)
!4599 = !DILocation(line: 597, column: 31, scope: !4595)
!4600 = !DILocation(line: 597, column: 11, scope: !4595)
!4601 = !DILocation(line: 597, column: 4, scope: !4595)
!4602 = !DILocation(line: 599, column: 11, scope: !4583)
!4603 = !DILocation(line: 599, column: 9, scope: !4583)
!4604 = !DILocation(line: 601, column: 33, scope: !4583)
!4605 = !DILocation(line: 601, column: 40, scope: !4583)
!4606 = !DILocation(line: 601, column: 20, scope: !4583)
!4607 = !DILocation(line: 601, column: 5, scope: !4583)
!4608 = !DILocation(line: 601, column: 51, scope: !4583)
!4609 = !DILocation(line: 602, column: 5, scope: !4583)
!4610 = !DILocation(line: 602, column: 12, scope: !4583)
!4611 = !DILocation(line: 600, column: 10, scope: !4583)
!4612 = !DILocation(line: 600, column: 3, scope: !4583)
!4613 = !DILocation(line: 603, column: 2, scope: !4584)
!4614 = !DILocation(line: 604, column: 19, scope: !4578)
!4615 = !DILocation(line: 604, column: 25, scope: !4578)
!4616 = !DILocation(line: 604, column: 9, scope: !4578)
!4617 = !DILocation(line: 604, column: 2, scope: !4578)
!4618 = !DILocation(line: 605, column: 1, scope: !4578)
!4619 = !DISubprogram(name: "kmalloc_large", scope: !93, file: !93, line: 531, type: !4272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4620 = distinct !DISubprogram(name: "__kmalloc_index", scope: !93, file: !93, line: 444, type: !4621, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4623)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!7, !296, !667}
!4623 = !{!4624, !4625}
!4624 = !DILocalVariable(name: "size", arg: 1, scope: !4620, file: !93, line: 444, type: !296)
!4625 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4620, file: !93, line: 445, type: !667)
!4626 = !DILocation(line: 444, column: 60, scope: !4620)
!4627 = !DILocation(line: 445, column: 16, scope: !4620)
!4628 = !DILocation(line: 447, column: 7, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 447, column: 6)
!4630 = !DILocation(line: 447, column: 6, scope: !4620)
!4631 = !DILocation(line: 448, column: 3, scope: !4629)
!4632 = !DILocation(line: 450, column: 6, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 450, column: 6)
!4634 = !DILocation(line: 450, column: 11, scope: !4633)
!4635 = !DILocation(line: 450, column: 6, scope: !4620)
!4636 = !DILocation(line: 451, column: 3, scope: !4633)
!4637 = !DILocation(line: 453, column: 32, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 453, column: 6)
!4639 = !DILocation(line: 453, column: 37, scope: !4638)
!4640 = !DILocation(line: 453, column: 42, scope: !4638)
!4641 = !DILocation(line: 453, column: 45, scope: !4638)
!4642 = !DILocation(line: 453, column: 50, scope: !4638)
!4643 = !DILocation(line: 453, column: 6, scope: !4620)
!4644 = !DILocation(line: 454, column: 3, scope: !4638)
!4645 = !DILocation(line: 455, column: 32, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 455, column: 6)
!4647 = !DILocation(line: 455, column: 37, scope: !4646)
!4648 = !DILocation(line: 455, column: 43, scope: !4646)
!4649 = !DILocation(line: 455, column: 46, scope: !4646)
!4650 = !DILocation(line: 455, column: 51, scope: !4646)
!4651 = !DILocation(line: 455, column: 6, scope: !4620)
!4652 = !DILocation(line: 456, column: 3, scope: !4646)
!4653 = !DILocation(line: 457, column: 6, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 457, column: 6)
!4655 = !DILocation(line: 457, column: 11, scope: !4654)
!4656 = !DILocation(line: 457, column: 6, scope: !4620)
!4657 = !DILocation(line: 457, column: 26, scope: !4654)
!4658 = !DILocation(line: 458, column: 6, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 458, column: 6)
!4660 = !DILocation(line: 458, column: 11, scope: !4659)
!4661 = !DILocation(line: 458, column: 6, scope: !4620)
!4662 = !DILocation(line: 458, column: 26, scope: !4659)
!4663 = !DILocation(line: 459, column: 6, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 459, column: 6)
!4665 = !DILocation(line: 459, column: 11, scope: !4664)
!4666 = !DILocation(line: 459, column: 6, scope: !4620)
!4667 = !DILocation(line: 459, column: 26, scope: !4664)
!4668 = !DILocation(line: 460, column: 6, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 460, column: 6)
!4670 = !DILocation(line: 460, column: 11, scope: !4669)
!4671 = !DILocation(line: 460, column: 6, scope: !4620)
!4672 = !DILocation(line: 460, column: 26, scope: !4669)
!4673 = !DILocation(line: 461, column: 6, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 461, column: 6)
!4675 = !DILocation(line: 461, column: 11, scope: !4674)
!4676 = !DILocation(line: 461, column: 6, scope: !4620)
!4677 = !DILocation(line: 461, column: 26, scope: !4674)
!4678 = !DILocation(line: 462, column: 6, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 462, column: 6)
!4680 = !DILocation(line: 462, column: 11, scope: !4679)
!4681 = !DILocation(line: 462, column: 6, scope: !4620)
!4682 = !DILocation(line: 462, column: 26, scope: !4679)
!4683 = !DILocation(line: 463, column: 6, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 463, column: 6)
!4685 = !DILocation(line: 463, column: 11, scope: !4684)
!4686 = !DILocation(line: 463, column: 6, scope: !4620)
!4687 = !DILocation(line: 463, column: 26, scope: !4684)
!4688 = !DILocation(line: 464, column: 6, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 464, column: 6)
!4690 = !DILocation(line: 464, column: 11, scope: !4689)
!4691 = !DILocation(line: 464, column: 6, scope: !4620)
!4692 = !DILocation(line: 464, column: 26, scope: !4689)
!4693 = !DILocation(line: 465, column: 6, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 465, column: 6)
!4695 = !DILocation(line: 465, column: 11, scope: !4694)
!4696 = !DILocation(line: 465, column: 6, scope: !4620)
!4697 = !DILocation(line: 465, column: 26, scope: !4694)
!4698 = !DILocation(line: 466, column: 6, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 466, column: 6)
!4700 = !DILocation(line: 466, column: 11, scope: !4699)
!4701 = !DILocation(line: 466, column: 6, scope: !4620)
!4702 = !DILocation(line: 466, column: 26, scope: !4699)
!4703 = !DILocation(line: 467, column: 6, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 467, column: 6)
!4705 = !DILocation(line: 467, column: 11, scope: !4704)
!4706 = !DILocation(line: 467, column: 6, scope: !4620)
!4707 = !DILocation(line: 467, column: 26, scope: !4704)
!4708 = !DILocation(line: 468, column: 6, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 468, column: 6)
!4710 = !DILocation(line: 468, column: 11, scope: !4709)
!4711 = !DILocation(line: 468, column: 6, scope: !4620)
!4712 = !DILocation(line: 468, column: 26, scope: !4709)
!4713 = !DILocation(line: 469, column: 6, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 469, column: 6)
!4715 = !DILocation(line: 469, column: 11, scope: !4714)
!4716 = !DILocation(line: 469, column: 6, scope: !4620)
!4717 = !DILocation(line: 469, column: 26, scope: !4714)
!4718 = !DILocation(line: 470, column: 6, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 470, column: 6)
!4720 = !DILocation(line: 470, column: 11, scope: !4719)
!4721 = !DILocation(line: 470, column: 6, scope: !4620)
!4722 = !DILocation(line: 470, column: 26, scope: !4719)
!4723 = !DILocation(line: 471, column: 6, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 471, column: 6)
!4725 = !DILocation(line: 471, column: 11, scope: !4724)
!4726 = !DILocation(line: 471, column: 6, scope: !4620)
!4727 = !DILocation(line: 471, column: 26, scope: !4724)
!4728 = !DILocation(line: 472, column: 6, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 472, column: 6)
!4730 = !DILocation(line: 472, column: 11, scope: !4729)
!4731 = !DILocation(line: 472, column: 6, scope: !4620)
!4732 = !DILocation(line: 472, column: 26, scope: !4729)
!4733 = !DILocation(line: 473, column: 6, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 473, column: 6)
!4735 = !DILocation(line: 473, column: 11, scope: !4734)
!4736 = !DILocation(line: 473, column: 6, scope: !4620)
!4737 = !DILocation(line: 473, column: 26, scope: !4734)
!4738 = !DILocation(line: 474, column: 6, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 474, column: 6)
!4740 = !DILocation(line: 474, column: 11, scope: !4739)
!4741 = !DILocation(line: 474, column: 6, scope: !4620)
!4742 = !DILocation(line: 474, column: 27, scope: !4739)
!4743 = !DILocation(line: 475, column: 6, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 475, column: 6)
!4745 = !DILocation(line: 475, column: 11, scope: !4744)
!4746 = !DILocation(line: 475, column: 6, scope: !4620)
!4747 = !DILocation(line: 475, column: 32, scope: !4744)
!4748 = !DILocation(line: 477, column: 50, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4620, file: !93, line: 477, column: 6)
!4750 = !{i8 0, i8 2}
!4751 = !DILocation(line: 477, column: 6, scope: !4620)
!4752 = !DILocation(line: 478, column: 3, scope: !4749)
!4753 = !DILocation(line: 478, column: 3, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !93, line: 478, column: 3)
!4755 = distinct !DILexicalBlock(scope: !4749, file: !93, line: 478, column: 3)
!4756 = !{i32 -2141831231}
!4757 = !DILocation(line: 478, column: 3, scope: !4755)
!4758 = !DILocation(line: 480, column: 3, scope: !4749)
!4759 = !DILocation(line: 480, column: 3, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4749, file: !93, line: 480, column: 3)
!4761 = !DILocation(line: 480, column: 3, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4760, file: !93, line: 480, column: 3)
!4763 = !DILocation(line: 480, column: 3, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4760, file: !93, line: 480, column: 3)
!4765 = !{i64 2153136268, i64 2153136297, i64 2153136343, i64 2153136401, i64 2153136455, i64 2153136509, i64 2153136564, i64 2153136595}
!4766 = !DILocation(line: 483, column: 2, scope: !4620)
!4767 = !DILocation(line: 484, column: 1, scope: !4620)
!4768 = !DISubprogram(name: "kmalloc_trace", scope: !93, file: !93, line: 525, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!145, !4771, !143, !296}
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4773, line: 11, flags: DIFlagFwdDecl)
!4773 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4774 = distinct !DISubprogram(name: "kmalloc_type", scope: !93, file: !93, line: 401, type: !4775, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4777)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!92, !143, !299}
!4777 = !{!4778, !4779}
!4778 = !DILocalVariable(name: "flags", arg: 1, scope: !4774, file: !93, line: 401, type: !143)
!4779 = !DILocalVariable(name: "caller", arg: 2, scope: !4774, file: !93, line: 401, type: !299)
!4780 = !DILocation(line: 401, column: 67, scope: !4774)
!4781 = !DILocation(line: 401, column: 88, scope: !4774)
!4782 = !DILocation(line: 407, column: 6, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4774, file: !93, line: 407, column: 6)
!4784 = !DILocation(line: 407, column: 6, scope: !4774)
!4785 = !DILocation(line: 413, column: 3, scope: !4783)
!4786 = !DILocation(line: 423, column: 38, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4774, file: !93, line: 423, column: 6)
!4788 = !DILocation(line: 423, column: 44, scope: !4787)
!4789 = !DILocation(line: 423, column: 6, scope: !4774)
!4790 = !DILocation(line: 424, column: 3, scope: !4787)
!4791 = !DILocation(line: 426, column: 3, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4774, file: !93, line: 425, column: 6)
!4793 = !DILocation(line: 429, column: 1, scope: !4774)
!4794 = !DISubprogram(name: "__kmalloc", scope: !93, file: !93, line: 488, type: !4272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4795 = !DISubprogram(name: "__compiletime_assert_229", scope: !93, file: !93, line: 478, type: !952, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4796 = !DISubprogram(name: "_raw_spin_lock", scope: !4797, file: !4797, line: 22, type: !4798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4797 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4798 = !DISubroutineType(types: !4799)
!4799 = !{null, !4800}
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!4801 = distinct !DISubprogram(name: "__list_del_entry", scope: !4294, file: !4294, line: 213, type: !4295, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4802)
!4802 = !{!4803}
!4803 = !DILocalVariable(name: "entry", arg: 1, scope: !4801, file: !4294, line: 213, type: !164)
!4804 = !DILocation(line: 213, column: 55, scope: !4801)
!4805 = !DILocation(line: 215, column: 30, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4801, file: !4294, line: 215, column: 6)
!4807 = !DILocation(line: 215, column: 7, scope: !4806)
!4808 = !DILocation(line: 215, column: 6, scope: !4801)
!4809 = !DILocation(line: 216, column: 3, scope: !4806)
!4810 = !DILocation(line: 218, column: 13, scope: !4801)
!4811 = !DILocation(line: 218, column: 20, scope: !4801)
!4812 = !DILocation(line: 218, column: 26, scope: !4801)
!4813 = !DILocation(line: 218, column: 33, scope: !4801)
!4814 = !DILocation(line: 218, column: 2, scope: !4801)
!4815 = !DILocation(line: 219, column: 1, scope: !4801)
!4816 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4294, file: !4294, line: 134, type: !4817, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4819)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!667, !164}
!4819 = !{!4820}
!4820 = !DILocalVariable(name: "entry", arg: 1, scope: !4816, file: !4294, line: 134, type: !164)
!4821 = !DILocation(line: 134, column: 61, scope: !4816)
!4822 = !DILocation(line: 136, column: 2, scope: !4816)
!4823 = distinct !DISubprogram(name: "__list_del", scope: !4294, file: !4294, line: 193, type: !4824, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4826)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{null, !164, !164}
!4826 = !{!4827, !4828}
!4827 = !DILocalVariable(name: "prev", arg: 1, scope: !4823, file: !4294, line: 193, type: !164)
!4828 = !DILocalVariable(name: "next", arg: 2, scope: !4823, file: !4294, line: 193, type: !164)
!4829 = !DILocation(line: 193, column: 50, scope: !4823)
!4830 = !DILocation(line: 193, column: 75, scope: !4823)
!4831 = !DILocation(line: 195, column: 15, scope: !4823)
!4832 = !DILocation(line: 195, column: 2, scope: !4823)
!4833 = !DILocation(line: 195, column: 8, scope: !4823)
!4834 = !DILocation(line: 195, column: 13, scope: !4823)
!4835 = !DILocation(line: 196, column: 2, scope: !4823)
!4836 = !DILocation(line: 196, column: 2, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4823, file: !4294, line: 196, column: 2)
!4838 = !DILocation(line: 196, column: 2, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4837, file: !4294, line: 196, column: 2)
!4840 = !DILocation(line: 196, column: 2, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4837, file: !4294, line: 196, column: 2)
!4842 = !DILocation(line: 197, column: 1, scope: !4823)
!4843 = !DISubprogram(name: "_raw_spin_unlock", scope: !4797, file: !4797, line: 39, type: !4798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4844 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4294, file: !4294, line: 35, type: !4295, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4845)
!4845 = !{!4846}
!4846 = !DILocalVariable(name: "list", arg: 1, scope: !4844, file: !4294, line: 35, type: !164)
!4847 = !DILocation(line: 35, column: 53, scope: !4844)
!4848 = !DILocation(line: 37, column: 2, scope: !4844)
!4849 = !DILocation(line: 37, column: 2, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4844, file: !4294, line: 37, column: 2)
!4851 = !DILocation(line: 37, column: 2, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4850, file: !4294, line: 37, column: 2)
!4853 = !DILocation(line: 37, column: 2, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4850, file: !4294, line: 37, column: 2)
!4855 = !DILocation(line: 38, column: 2, scope: !4844)
!4856 = !DILocation(line: 38, column: 2, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4844, file: !4294, line: 38, column: 2)
!4858 = !DILocation(line: 38, column: 2, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4857, file: !4294, line: 38, column: 2)
!4860 = !DILocation(line: 38, column: 2, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4857, file: !4294, line: 38, column: 2)
!4862 = !DILocation(line: 39, column: 1, scope: !4844)
!4863 = !DISubprogram(name: "kobject_init", scope: !168, file: !168, line: 92, type: !4864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{null, !173, !263}
!4866 = distinct !DISubprogram(name: "list_add_tail", scope: !4294, file: !4294, line: 181, type: !4824, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4867)
!4867 = !{!4868, !4869}
!4868 = !DILocalVariable(name: "new", arg: 1, scope: !4866, file: !4294, line: 181, type: !164)
!4869 = !DILocalVariable(name: "head", arg: 2, scope: !4866, file: !4294, line: 181, type: !164)
!4870 = !DILocation(line: 181, column: 52, scope: !4866)
!4871 = !DILocation(line: 181, column: 75, scope: !4866)
!4872 = !DILocation(line: 183, column: 13, scope: !4866)
!4873 = !DILocation(line: 183, column: 18, scope: !4866)
!4874 = !DILocation(line: 183, column: 24, scope: !4866)
!4875 = !DILocation(line: 183, column: 30, scope: !4866)
!4876 = !DILocation(line: 183, column: 2, scope: !4866)
!4877 = !DILocation(line: 184, column: 1, scope: !4866)
!4878 = distinct !DISubprogram(name: "release_firmware_map_entry", scope: !3, file: !3, line: 98, type: !269, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4879)
!4879 = !{!4880, !4881}
!4880 = !DILocalVariable(name: "kobj", arg: 1, scope: !4878, file: !3, line: 98, type: !173)
!4881 = !DILocalVariable(name: "entry", scope: !4878, file: !3, line: 100, type: !146)
!4882 = !DILocation(line: 98, column: 66, scope: !4878)
!4883 = !DILocation(line: 100, column: 2, scope: !4878)
!4884 = !DILocation(line: 100, column: 29, scope: !4878)
!4885 = !DILocation(line: 100, column: 53, scope: !4878)
!4886 = !DILocation(line: 100, column: 37, scope: !4878)
!4887 = !DILocation(line: 102, column: 19, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 102, column: 6)
!4889 = !DILocation(line: 102, column: 6, scope: !4888)
!4890 = !DILocation(line: 102, column: 6, scope: !4878)
!4891 = !DILocation(line: 109, column: 3, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 102, column: 41)
!4893 = !DILocation(line: 110, column: 13, scope: !4892)
!4894 = !DILocation(line: 110, column: 20, scope: !4892)
!4895 = !DILocation(line: 110, column: 3, scope: !4892)
!4896 = !DILocation(line: 111, column: 3, scope: !4892)
!4897 = !DILocation(line: 113, column: 3, scope: !4892)
!4898 = !DILocation(line: 116, column: 8, scope: !4878)
!4899 = !DILocation(line: 116, column: 2, scope: !4878)
!4900 = !DILocation(line: 117, column: 1, scope: !4878)
!4901 = distinct !DISubprogram(name: "to_memmap_entry", scope: !3, file: !3, line: 93, type: !4902, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4904)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!146, !173}
!4904 = !{!4905, !4906}
!4905 = !DILocalVariable(name: "kobj", arg: 1, scope: !4901, file: !3, line: 93, type: !173)
!4906 = !DILocalVariable(name: "__mptr", scope: !4907, file: !3, line: 95, type: !145)
!4907 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 95, column: 9)
!4908 = !DILocation(line: 93, column: 33, scope: !4901)
!4909 = !DILocation(line: 95, column: 9, scope: !4907)
!4910 = !DILocation(line: 95, column: 9, scope: !4901)
!4911 = !DILocation(line: 95, column: 2, scope: !4901)
!4912 = distinct !DISubprogram(name: "PageReserved", scope: !103, file: !103, line: 512, type: !4913, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4915)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!204, !2138}
!4915 = !{!4916}
!4916 = !DILocalVariable(name: "page", arg: 1, scope: !4912, file: !103, line: 512, type: !2138)
!4917 = !DILocation(line: 512, column: 1, scope: !4912)
!4918 = !DILocation(line: 512, column: 1, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4920, file: !103, line: 512, column: 1)
!4920 = distinct !DILexicalBlock(scope: !4912, file: !103, line: 512, column: 1)
!4921 = !DILocation(line: 512, column: 1, scope: !4920)
!4922 = !DILocation(line: 512, column: 1, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !103, line: 512, column: 1)
!4924 = distinct !DILexicalBlock(scope: !4912, file: !103, line: 512, column: 1)
!4925 = !DILocation(line: 512, column: 1, scope: !4924)
!4926 = !DILocation(line: 512, column: 1, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !103, line: 512, column: 1)
!4928 = distinct !DILexicalBlock(scope: !4912, file: !103, line: 512, column: 1)
!4929 = !DILocation(line: 512, column: 1, scope: !4928)
!4930 = !DILocation(line: 512, column: 1, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4932, file: !103, line: 512, column: 1)
!4932 = distinct !DILexicalBlock(scope: !4912, file: !103, line: 512, column: 1)
!4933 = !DILocation(line: 512, column: 1, scope: !4932)
!4934 = !DILocation(line: 512, column: 1, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !103, line: 512, column: 1)
!4936 = distinct !DILexicalBlock(scope: !4912, file: !103, line: 512, column: 1)
!4937 = !DILocation(line: 512, column: 1, scope: !4936)
!4938 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !4939, file: !4939, line: 22, type: !4940, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4942)
!4939 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!299, !299}
!4942 = !{!4943, !4944}
!4943 = !DILocalVariable(name: "x", arg: 1, scope: !4938, file: !4939, line: 22, type: !299)
!4944 = !DILocalVariable(name: "y", scope: !4938, file: !4939, line: 24, type: !299)
!4945 = !DILocation(line: 22, column: 72, scope: !4938)
!4946 = !DILocation(line: 24, column: 2, scope: !4938)
!4947 = !DILocation(line: 24, column: 16, scope: !4938)
!4948 = !DILocation(line: 24, column: 20, scope: !4938)
!4949 = !DILocation(line: 24, column: 22, scope: !4938)
!4950 = !DILocation(line: 27, column: 6, scope: !4938)
!4951 = !DILocation(line: 27, column: 12, scope: !4938)
!4952 = !DILocation(line: 27, column: 16, scope: !4938)
!4953 = !DILocation(line: 27, column: 14, scope: !4938)
!4954 = !DILocation(line: 27, column: 11, scope: !4938)
!4955 = !DILocation(line: 27, column: 21, scope: !4938)
!4956 = !DILocation(line: 27, column: 55, scope: !4938)
!4957 = !DILocation(line: 27, column: 53, scope: !4938)
!4958 = !DILocation(line: 27, column: 8, scope: !4938)
!4959 = !DILocation(line: 27, column: 4, scope: !4938)
!4960 = !DILocation(line: 29, column: 9, scope: !4938)
!4961 = !DILocation(line: 30, column: 1, scope: !4938)
!4962 = !DILocation(line: 29, column: 2, scope: !4938)
!4963 = distinct !DISubprogram(name: "list_add", scope: !4294, file: !4294, line: 167, type: !4824, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4964)
!4964 = !{!4965, !4966}
!4965 = !DILocalVariable(name: "new", arg: 1, scope: !4963, file: !4294, line: 167, type: !164)
!4966 = !DILocalVariable(name: "head", arg: 2, scope: !4963, file: !4294, line: 167, type: !164)
!4967 = !DILocation(line: 167, column: 47, scope: !4963)
!4968 = !DILocation(line: 167, column: 70, scope: !4963)
!4969 = !DILocation(line: 169, column: 13, scope: !4963)
!4970 = !DILocation(line: 169, column: 18, scope: !4963)
!4971 = !DILocation(line: 169, column: 24, scope: !4963)
!4972 = !DILocation(line: 169, column: 30, scope: !4963)
!4973 = !DILocation(line: 169, column: 2, scope: !4963)
!4974 = !DILocation(line: 170, column: 1, scope: !4963)
!4975 = !DISubprogram(name: "kfree", scope: !93, file: !93, line: 227, type: !4976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{null, !2490}
!4978 = distinct !DISubprogram(name: "const_test_bit", scope: !4979, file: !4979, line: 166, type: !4980, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4979 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!667, !299, !4982}
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4984)
!4984 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !299)
!4985 = !{!4986, !4987, !4988, !4989, !4990}
!4986 = !DILocalVariable(name: "nr", arg: 1, scope: !4978, file: !4979, line: 166, type: !299)
!4987 = !DILocalVariable(name: "addr", arg: 2, scope: !4978, file: !4979, line: 166, type: !4982)
!4988 = !DILocalVariable(name: "p", scope: !4978, file: !4979, line: 168, type: !4102)
!4989 = !DILocalVariable(name: "mask", scope: !4978, file: !4979, line: 169, type: !299)
!4990 = !DILocalVariable(name: "val", scope: !4978, file: !4979, line: 170, type: !299)
!4991 = !DILocation(line: 166, column: 30, scope: !4978)
!4992 = !DILocation(line: 166, column: 64, scope: !4978)
!4993 = !DILocation(line: 168, column: 2, scope: !4978)
!4994 = !DILocation(line: 168, column: 23, scope: !4978)
!4995 = !DILocation(line: 168, column: 50, scope: !4978)
!4996 = !DILocation(line: 168, column: 57, scope: !4978)
!4997 = !DILocation(line: 168, column: 55, scope: !4978)
!4998 = !DILocation(line: 169, column: 2, scope: !4978)
!4999 = !DILocation(line: 169, column: 16, scope: !4978)
!5000 = !DILocation(line: 169, column: 23, scope: !4978)
!5001 = !DILocation(line: 170, column: 2, scope: !4978)
!5002 = !DILocation(line: 170, column: 16, scope: !4978)
!5003 = !DILocation(line: 170, column: 23, scope: !4978)
!5004 = !DILocation(line: 170, column: 22, scope: !4978)
!5005 = !DILocation(line: 172, column: 12, scope: !4978)
!5006 = !DILocation(line: 172, column: 18, scope: !4978)
!5007 = !DILocation(line: 172, column: 16, scope: !4978)
!5008 = !DILocation(line: 172, column: 10, scope: !4978)
!5009 = !DILocation(line: 172, column: 9, scope: !4978)
!5010 = !DILocation(line: 173, column: 1, scope: !4978)
!5011 = !DILocation(line: 172, column: 2, scope: !4978)
!5012 = distinct !DISubprogram(name: "_test_bit", scope: !5013, file: !5013, line: 139, type: !4980, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5014)
!5013 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5014 = !{!5015, !5016}
!5015 = !DILocalVariable(name: "nr", arg: 1, scope: !5012, file: !5013, line: 139, type: !299)
!5016 = !DILocalVariable(name: "addr", arg: 2, scope: !5012, file: !5013, line: 139, type: !4982)
!5017 = !DILocation(line: 139, column: 25, scope: !5012)
!5018 = !DILocation(line: 139, column: 59, scope: !5012)
!5019 = !DILocation(line: 141, column: 25, scope: !5012)
!5020 = !DILocation(line: 141, column: 32, scope: !5012)
!5021 = !DILocation(line: 141, column: 30, scope: !5012)
!5022 = !DILocation(line: 141, column: 2, scope: !5012)
!5023 = !DILocation(line: 142, column: 23, scope: !5012)
!5024 = !DILocation(line: 142, column: 27, scope: !5012)
!5025 = !DILocation(line: 142, column: 9, scope: !5012)
!5026 = !DILocation(line: 142, column: 2, scope: !5012)
!5027 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5028, file: !5028, line: 66, type: !5029, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5034)
!5028 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5029 = !DISubroutineType(types: !5030)
!5030 = !{null, !5031, !296}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5033)
!5033 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5034 = !{!5035, !5036}
!5035 = !DILocalVariable(name: "v", arg: 1, scope: !5027, file: !5028, line: 66, type: !5031)
!5036 = !DILocalVariable(name: "size", arg: 2, scope: !5027, file: !5028, line: 66, type: !296)
!5037 = !DILocation(line: 66, column: 73, scope: !5027)
!5038 = !DILocation(line: 66, column: 83, scope: !5027)
!5039 = !DILocation(line: 68, column: 19, scope: !5027)
!5040 = !DILocation(line: 68, column: 22, scope: !5027)
!5041 = !DILocation(line: 68, column: 2, scope: !5027)
!5042 = !DILocation(line: 69, column: 2, scope: !5027)
!5043 = !DILocation(line: 70, column: 1, scope: !5027)
!5044 = distinct !DISubprogram(name: "arch_test_bit", scope: !5045, file: !5045, line: 237, type: !4980, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5046)
!5045 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5046 = !{!5047, !5048}
!5047 = !DILocalVariable(name: "nr", arg: 1, scope: !5044, file: !5045, line: 237, type: !299)
!5048 = !DILocalVariable(name: "addr", arg: 2, scope: !5044, file: !5045, line: 237, type: !4982)
!5049 = !DILocation(line: 237, column: 29, scope: !5044)
!5050 = !DILocation(line: 237, column: 63, scope: !5044)
!5051 = !DILocation(line: 239, column: 30, scope: !5044)
!5052 = !DILocation(line: 239, column: 9, scope: !5044)
!5053 = !DILocation(line: 239, column: 54, scope: !5044)
!5054 = !DILocation(line: 239, column: 58, scope: !5044)
!5055 = !DILocation(line: 239, column: 36, scope: !5044)
!5056 = !DILocation(line: 240, column: 26, scope: !5044)
!5057 = !DILocation(line: 240, column: 30, scope: !5044)
!5058 = !DILocation(line: 240, column: 8, scope: !5044)
!5059 = !DILocation(line: 239, column: 2, scope: !5044)
!5060 = distinct !DISubprogram(name: "kasan_check_read", scope: !5061, file: !5061, line: 40, type: !5062, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5064)
!5061 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!667, !5031, !7}
!5064 = !{!5065, !5066}
!5065 = !DILocalVariable(name: "p", arg: 1, scope: !5060, file: !5061, line: 40, type: !5031)
!5066 = !DILocalVariable(name: "size", arg: 2, scope: !5060, file: !5061, line: 40, type: !7)
!5067 = !DILocation(line: 40, column: 58, scope: !5060)
!5068 = !DILocation(line: 40, column: 74, scope: !5060)
!5069 = !DILocation(line: 42, column: 2, scope: !5060)
!5070 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5071, file: !5071, line: 229, type: !5072, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5074)
!5071 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5072 = !DISubroutineType(types: !5073)
!5073 = !{null, !5031, !296, !204}
!5074 = !{!5075, !5076, !5077}
!5075 = !DILocalVariable(name: "ptr", arg: 1, scope: !5070, file: !5071, line: 229, type: !5031)
!5076 = !DILocalVariable(name: "size", arg: 2, scope: !5070, file: !5071, line: 229, type: !296)
!5077 = !DILocalVariable(name: "type", arg: 3, scope: !5070, file: !5071, line: 230, type: !204)
!5078 = !DILocation(line: 229, column: 60, scope: !5070)
!5079 = !DILocation(line: 229, column: 72, scope: !5070)
!5080 = !DILocation(line: 230, column: 15, scope: !5070)
!5081 = !DILocation(line: 230, column: 23, scope: !5070)
!5082 = distinct !DISubprogram(name: "constant_test_bit", scope: !5045, file: !5045, line: 204, type: !5083, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5085)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!667, !285, !4982}
!5085 = !{!5086, !5087}
!5086 = !DILocalVariable(name: "nr", arg: 1, scope: !5082, file: !5045, line: 204, type: !285)
!5087 = !DILocalVariable(name: "addr", arg: 2, scope: !5082, file: !5045, line: 204, type: !4982)
!5088 = !DILocation(line: 204, column: 52, scope: !5082)
!5089 = !DILocation(line: 204, column: 86, scope: !5082)
!5090 = !DILocation(line: 206, column: 19, scope: !5082)
!5091 = !DILocation(line: 206, column: 22, scope: !5082)
!5092 = !DILocation(line: 206, column: 15, scope: !5082)
!5093 = !DILocation(line: 207, column: 4, scope: !5082)
!5094 = !DILocation(line: 207, column: 9, scope: !5082)
!5095 = !DILocation(line: 207, column: 12, scope: !5082)
!5096 = !DILocation(line: 206, column: 44, scope: !5082)
!5097 = !DILocation(line: 207, column: 37, scope: !5082)
!5098 = !DILocation(line: 206, column: 2, scope: !5082)
!5099 = distinct !DISubprogram(name: "variable_test_bit", scope: !5045, file: !5045, line: 224, type: !5083, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5100)
!5100 = !{!5101, !5102, !5103}
!5101 = !DILocalVariable(name: "nr", arg: 1, scope: !5099, file: !5045, line: 224, type: !285)
!5102 = !DILocalVariable(name: "addr", arg: 2, scope: !5099, file: !5045, line: 224, type: !4982)
!5103 = !DILocalVariable(name: "oldbit", scope: !5099, file: !5045, line: 226, type: !667)
!5104 = !DILocation(line: 224, column: 52, scope: !5099)
!5105 = !DILocation(line: 224, column: 86, scope: !5099)
!5106 = !DILocation(line: 226, column: 2, scope: !5099)
!5107 = !DILocation(line: 226, column: 7, scope: !5099)
!5108 = !DILocation(line: 231, column: 33, scope: !5099)
!5109 = !DILocation(line: 231, column: 46, scope: !5099)
!5110 = !DILocation(line: 228, column: 2, scope: !5099)
!5111 = !{i64 2147980922, i64 2147980996}
!5112 = !DILocation(line: 233, column: 9, scope: !5099)
!5113 = !DILocation(line: 234, column: 1, scope: !5099)
!5114 = !DILocation(line: 233, column: 2, scope: !5099)
!5115 = distinct !DISubprogram(name: "__list_add", scope: !4294, file: !4294, line: 146, type: !5116, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5118)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{null, !164, !164, !164}
!5118 = !{!5119, !5120, !5121}
!5119 = !DILocalVariable(name: "new", arg: 1, scope: !5115, file: !4294, line: 146, type: !164)
!5120 = !DILocalVariable(name: "prev", arg: 2, scope: !5115, file: !4294, line: 147, type: !164)
!5121 = !DILocalVariable(name: "next", arg: 3, scope: !5115, file: !4294, line: 148, type: !164)
!5122 = !DILocation(line: 146, column: 49, scope: !5115)
!5123 = !DILocation(line: 147, column: 28, scope: !5115)
!5124 = !DILocation(line: 148, column: 28, scope: !5115)
!5125 = !DILocation(line: 150, column: 24, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5115, file: !4294, line: 150, column: 6)
!5127 = !DILocation(line: 150, column: 29, scope: !5126)
!5128 = !DILocation(line: 150, column: 35, scope: !5126)
!5129 = !DILocation(line: 150, column: 7, scope: !5126)
!5130 = !DILocation(line: 150, column: 6, scope: !5115)
!5131 = !DILocation(line: 151, column: 3, scope: !5126)
!5132 = !DILocation(line: 153, column: 15, scope: !5115)
!5133 = !DILocation(line: 153, column: 2, scope: !5115)
!5134 = !DILocation(line: 153, column: 8, scope: !5115)
!5135 = !DILocation(line: 153, column: 13, scope: !5115)
!5136 = !DILocation(line: 154, column: 14, scope: !5115)
!5137 = !DILocation(line: 154, column: 2, scope: !5115)
!5138 = !DILocation(line: 154, column: 7, scope: !5115)
!5139 = !DILocation(line: 154, column: 12, scope: !5115)
!5140 = !DILocation(line: 155, column: 14, scope: !5115)
!5141 = !DILocation(line: 155, column: 2, scope: !5115)
!5142 = !DILocation(line: 155, column: 7, scope: !5115)
!5143 = !DILocation(line: 155, column: 12, scope: !5115)
!5144 = !DILocation(line: 156, column: 2, scope: !5115)
!5145 = !DILocation(line: 156, column: 2, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5115, file: !4294, line: 156, column: 2)
!5147 = !DILocation(line: 156, column: 2, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5146, file: !4294, line: 156, column: 2)
!5149 = !DILocation(line: 156, column: 2, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5146, file: !4294, line: 156, column: 2)
!5151 = !DILocation(line: 157, column: 1, scope: !5115)
!5152 = distinct !DISubprogram(name: "__list_add_valid", scope: !4294, file: !4294, line: 128, type: !5153, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5155)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!667, !164, !164, !164}
!5155 = !{!5156, !5157, !5158}
!5156 = !DILocalVariable(name: "new", arg: 1, scope: !5152, file: !4294, line: 128, type: !164)
!5157 = !DILocalVariable(name: "prev", arg: 2, scope: !5152, file: !4294, line: 129, type: !164)
!5158 = !DILocalVariable(name: "next", arg: 3, scope: !5152, file: !4294, line: 130, type: !164)
!5159 = !DILocation(line: 128, column: 55, scope: !5152)
!5160 = !DILocation(line: 129, column: 23, scope: !5152)
!5161 = !DILocation(line: 130, column: 23, scope: !5152)
!5162 = !DILocation(line: 132, column: 2, scope: !5152)
!5163 = distinct !DISubprogram(name: "memmap_attr_show", scope: !3, file: !3, line: 392, type: !279, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5164)
!5164 = !{!5165, !5166, !5167, !5168, !5169}
!5165 = !DILocalVariable(name: "kobj", arg: 1, scope: !5163, file: !3, line: 392, type: !173)
!5166 = !DILocalVariable(name: "attr", arg: 2, scope: !5163, file: !3, line: 393, type: !286)
!5167 = !DILocalVariable(name: "buf", arg: 3, scope: !5163, file: !3, line: 393, type: !249)
!5168 = !DILocalVariable(name: "entry", scope: !5163, file: !3, line: 395, type: !146)
!5169 = !DILocalVariable(name: "memmap_attr", scope: !5163, file: !3, line: 396, type: !4103)
!5170 = !DILocation(line: 392, column: 49, scope: !5163)
!5171 = !DILocation(line: 393, column: 23, scope: !5163)
!5172 = !DILocation(line: 393, column: 35, scope: !5163)
!5173 = !DILocation(line: 395, column: 2, scope: !5163)
!5174 = !DILocation(line: 395, column: 29, scope: !5163)
!5175 = !DILocation(line: 395, column: 53, scope: !5163)
!5176 = !DILocation(line: 395, column: 37, scope: !5163)
!5177 = !DILocation(line: 396, column: 2, scope: !5163)
!5178 = !DILocation(line: 396, column: 27, scope: !5163)
!5179 = !DILocation(line: 396, column: 56, scope: !5163)
!5180 = !DILocation(line: 396, column: 41, scope: !5163)
!5181 = !DILocation(line: 398, column: 9, scope: !5163)
!5182 = !DILocation(line: 398, column: 22, scope: !5163)
!5183 = !DILocation(line: 398, column: 27, scope: !5163)
!5184 = !DILocation(line: 398, column: 34, scope: !5163)
!5185 = !DILocation(line: 399, column: 1, scope: !5163)
!5186 = !DILocation(line: 398, column: 2, scope: !5163)
!5187 = distinct !DISubprogram(name: "to_memmap_attr", scope: !3, file: !3, line: 387, type: !5188, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5190)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!4103, !286}
!5190 = !{!5191, !5192}
!5191 = !DILocalVariable(name: "attr", arg: 1, scope: !5187, file: !3, line: 387, type: !286)
!5192 = !DILocalVariable(name: "__mptr", scope: !5193, file: !3, line: 389, type: !145)
!5193 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 389, column: 9)
!5194 = !DILocation(line: 387, column: 73, scope: !5187)
!5195 = !DILocation(line: 389, column: 9, scope: !5193)
!5196 = !DILocation(line: 389, column: 9, scope: !5187)
!5197 = !DILocation(line: 389, column: 2, scope: !5187)
!5198 = distinct !DISubprogram(name: "start_show", scope: !3, file: !3, line: 370, type: !4109, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5199)
!5199 = !{!5200, !5201}
!5200 = !DILocalVariable(name: "entry", arg: 1, scope: !5198, file: !3, line: 370, type: !146)
!5201 = !DILocalVariable(name: "buf", arg: 2, scope: !5198, file: !3, line: 370, type: !249)
!5202 = !DILocation(line: 370, column: 54, scope: !5198)
!5203 = !DILocation(line: 370, column: 67, scope: !5198)
!5204 = !DILocation(line: 372, column: 18, scope: !5198)
!5205 = !DILocation(line: 373, column: 23, scope: !5198)
!5206 = !DILocation(line: 373, column: 30, scope: !5198)
!5207 = !DILocation(line: 372, column: 9, scope: !5198)
!5208 = !DILocation(line: 372, column: 2, scope: !5198)
!5209 = !DISubprogram(name: "snprintf", scope: !5210, file: !5210, line: 12, type: !5211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5210 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!204, !249, !296, !157, null}
!5213 = distinct !DISubprogram(name: "end_show", scope: !3, file: !3, line: 376, type: !4109, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5214 = !{!5215, !5216}
!5215 = !DILocalVariable(name: "entry", arg: 1, scope: !5213, file: !3, line: 376, type: !146)
!5216 = !DILocalVariable(name: "buf", arg: 2, scope: !5213, file: !3, line: 376, type: !249)
!5217 = !DILocation(line: 376, column: 52, scope: !5213)
!5218 = !DILocation(line: 376, column: 65, scope: !5213)
!5219 = !DILocation(line: 378, column: 18, scope: !5213)
!5220 = !DILocation(line: 379, column: 23, scope: !5213)
!5221 = !DILocation(line: 379, column: 30, scope: !5213)
!5222 = !DILocation(line: 378, column: 9, scope: !5213)
!5223 = !DILocation(line: 378, column: 2, scope: !5213)
!5224 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 382, type: !4109, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5225)
!5225 = !{!5226, !5227}
!5226 = !DILocalVariable(name: "entry", arg: 1, scope: !5224, file: !3, line: 382, type: !146)
!5227 = !DILocalVariable(name: "buf", arg: 2, scope: !5224, file: !3, line: 382, type: !249)
!5228 = !DILocation(line: 382, column: 53, scope: !5224)
!5229 = !DILocation(line: 382, column: 66, scope: !5224)
!5230 = !DILocation(line: 384, column: 18, scope: !5224)
!5231 = !DILocation(line: 384, column: 42, scope: !5224)
!5232 = !DILocation(line: 384, column: 49, scope: !5224)
!5233 = !DILocation(line: 384, column: 9, scope: !5224)
!5234 = !DILocation(line: 384, column: 2, scope: !5224)
!5235 = !DISubprogram(name: "kset_create_and_add", scope: !168, file: !168, line: 178, type: !5236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!175, !157, !223, !173}
!5238 = !DISubprogram(name: "kobject_add", scope: !168, file: !168, line: 93, type: !5239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!204, !173, !173, !157, null}
!5241 = !DISubprogram(name: "kobject_put", scope: !168, file: !168, line: 110, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5242 = !DISubprogram(name: "memblock_alloc_try_nid", scope: !4439, file: !4439, line: 422, type: !5243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!145, !3196, !3196, !3196, !3196, !204}
