; ModuleID = 'lib/bug.c'
source_filename = "lib/bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.bug_entry = type { i32, i32, i16, i16 }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.context_tracking = type { %struct.atomic_t, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.static_call_key = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"__bug_table\00", align 1, !dbg !0
@module_bug_list = internal global %struct.list_head { ptr @module_bug_list, ptr @module_bug_list }, align 8, !dbg !7
@__start___bug_table = external dso_local global [0 x %struct.bug_entry], align 4
@__stop___bug_table = external dso_local global [0 x %struct.bug_entry], align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@context_tracking = external dso_local global %struct.context_tracking, section ".data..percpu", align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"------------[ cut here ]------------\0A\00", align 1, !dbg !4116
@.str.2 = private unnamed_addr constant [24 x i8] c"\012kernel BUG at %s:%u!\0A\00", align 1, !dbg !4121
@.str.3 = private unnamed_addr constant [54 x i8] c"\012Kernel BUG at %pB [verbose debug info unavailable]\0A\00", align 1, !dbg !4126
@warn_rcu_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace296 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4131
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@rcu_read_unlock_sched.__UNIQUE_ID___addressable___SCK__preempt_schedule61 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4139
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @warn_rcu_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace296, ptr @rcu_read_unlock_sched.__UNIQUE_ID___addressable___SCK__preempt_schedule61], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @module_bug_finalize(ptr noundef %hdr, ptr noundef %sechdrs, ptr noundef %mod) #0 align 16 !dbg !4153 {
entry:
  %hdr.addr = alloca ptr, align 8
  %sechdrs.addr = alloca ptr, align 8
  %mod.addr = alloca ptr, align 8
  %secstrings = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !4193, metadata !DIExpression()), !dbg !4198
  store ptr %sechdrs, ptr %sechdrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sechdrs.addr, metadata !4194, metadata !DIExpression()), !dbg !4199
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4195, metadata !DIExpression()), !dbg !4200
  call void @llvm.lifetime.start.p0(i64 8, ptr %secstrings) #12, !dbg !4201
  call void @llvm.dbg.declare(metadata ptr %secstrings, metadata !4196, metadata !DIExpression()), !dbg !4202
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !4203
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4197, metadata !DIExpression()), !dbg !4204
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4205
  %bug_table = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 27, !dbg !4206
  store ptr null, ptr %bug_table, align 16, !dbg !4207
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !4208
  %num_bugs = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 25, !dbg !4209
  store i32 0, ptr %num_bugs, align 8, !dbg !4210
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !4211
  %3 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4212
  %4 = load ptr, ptr %hdr.addr, align 8, !dbg !4213
  %e_shstrndx = getelementptr inbounds %struct.elf64_hdr, ptr %4, i32 0, i32 13, !dbg !4214
  %5 = load i16, ptr %e_shstrndx, align 2, !dbg !4214
  %idxprom = zext i16 %5 to i64, !dbg !4212
  %arrayidx = getelementptr %struct.elf64_shdr, ptr %3, i64 %idxprom, !dbg !4212
  %sh_offset = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx, i32 0, i32 4, !dbg !4215
  %6 = load i64, ptr %sh_offset, align 8, !dbg !4215
  %add.ptr = getelementptr i8, ptr %2, i64 %6, !dbg !4216
  store ptr %add.ptr, ptr %secstrings, align 8, !dbg !4217
  store i32 1, ptr %i, align 4, !dbg !4218
  br label %for.cond, !dbg !4220

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4, !dbg !4221
  %8 = load ptr, ptr %hdr.addr, align 8, !dbg !4223
  %e_shnum = getelementptr inbounds %struct.elf64_hdr, ptr %8, i32 0, i32 12, !dbg !4224
  %9 = load i16, ptr %e_shnum, align 4, !dbg !4224
  %conv = zext i16 %9 to i32, !dbg !4223
  %cmp = icmp ult i32 %7, %conv, !dbg !4225
  br i1 %cmp, label %for.body, label %for.end, !dbg !4226

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %secstrings, align 8, !dbg !4227
  %11 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4230
  %12 = load i32, ptr %i, align 4, !dbg !4231
  %idxprom2 = zext i32 %12 to i64, !dbg !4230
  %arrayidx3 = getelementptr %struct.elf64_shdr, ptr %11, i64 %idxprom2, !dbg !4230
  %sh_name = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx3, i32 0, i32 0, !dbg !4232
  %13 = load i32, ptr %sh_name, align 8, !dbg !4232
  %idx.ext = zext i32 %13 to i64, !dbg !4233
  %add.ptr4 = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !4233
  %call = call i32 @strcmp(ptr noundef %add.ptr4, ptr noundef @.str) #13, !dbg !4234
  %tobool = icmp ne i32 %call, 0, !dbg !4234
  br i1 %tobool, label %if.then, label %if.end, !dbg !4235

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4236

if.end:                                           ; preds = %for.body
  %14 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4237
  %15 = load i32, ptr %i, align 4, !dbg !4238
  %idxprom5 = zext i32 %15 to i64, !dbg !4237
  %arrayidx6 = getelementptr %struct.elf64_shdr, ptr %14, i64 %idxprom5, !dbg !4237
  %sh_addr = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx6, i32 0, i32 3, !dbg !4239
  %16 = load i64, ptr %sh_addr, align 8, !dbg !4239
  %17 = inttoptr i64 %16 to ptr, !dbg !4240
  %18 = load ptr, ptr %mod.addr, align 8, !dbg !4241
  %bug_table7 = getelementptr inbounds %struct.module, ptr %18, i32 0, i32 27, !dbg !4242
  store ptr %17, ptr %bug_table7, align 16, !dbg !4243
  %19 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4244
  %20 = load i32, ptr %i, align 4, !dbg !4245
  %idxprom8 = zext i32 %20 to i64, !dbg !4244
  %arrayidx9 = getelementptr %struct.elf64_shdr, ptr %19, i64 %idxprom8, !dbg !4244
  %sh_size = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx9, i32 0, i32 5, !dbg !4246
  %21 = load i64, ptr %sh_size, align 8, !dbg !4246
  %div = udiv i64 %21, 12, !dbg !4247
  %conv10 = trunc i64 %div to i32, !dbg !4244
  %22 = load ptr, ptr %mod.addr, align 8, !dbg !4248
  %num_bugs11 = getelementptr inbounds %struct.module, ptr %22, i32 0, i32 25, !dbg !4249
  store i32 %conv10, ptr %num_bugs11, align 8, !dbg !4250
  br label %for.end, !dbg !4251

for.inc:                                          ; preds = %if.then
  %23 = load i32, ptr %i, align 4, !dbg !4252
  %inc = add i32 %23, 1, !dbg !4252
  store i32 %inc, ptr %i, align 4, !dbg !4252
  br label %for.cond, !dbg !4253, !llvm.loop !4254

for.end:                                          ; preds = %if.end, %for.cond
  %24 = load ptr, ptr %mod.addr, align 8, !dbg !4258
  %bug_list = getelementptr inbounds %struct.module, ptr %24, i32 0, i32 26, !dbg !4259
  call void @list_add_rcu(ptr noundef %bug_list, ptr noundef @module_bug_list) #13, !dbg !4260
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !4261
  call void @llvm.lifetime.end.p0(i64 8, ptr %secstrings) #12, !dbg !4261
  ret void, !dbg !4261
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4262 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_rcu(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !4266 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4271, metadata !DIExpression()), !dbg !4273
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4272, metadata !DIExpression()), !dbg !4274
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4275
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4276
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4277
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !4278
  %3 = load ptr, ptr %next, align 8, !dbg !4278
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %1, ptr noundef %3) #13, !dbg !4279
  ret void, !dbg !4280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @module_bug_cleanup(ptr noundef %mod) #0 align 16 !dbg !4281 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4285
  %bug_list = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 26, !dbg !4286
  call void @list_del_rcu(ptr noundef %bug_list) #13, !dbg !4287
  ret void, !dbg !4288
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #4 align 16 !dbg !4289 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4293, metadata !DIExpression()), !dbg !4294
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4295
  call void @__list_del_entry(ptr noundef %0) #13, !dbg !4296
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4297
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4298
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4299
  ret void, !dbg !4300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bug_get_file_line(ptr noundef %bug, ptr noundef %file, ptr noundef %line) #0 align 16 !dbg !4301 {
entry:
  %bug.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %line.addr = alloca ptr, align 8
  store ptr %bug, ptr %bug.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bug.addr, metadata !4305, metadata !DIExpression()), !dbg !4308
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4306, metadata !DIExpression()), !dbg !4309
  store ptr %line, ptr %line.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !4307, metadata !DIExpression()), !dbg !4310
  %0 = load ptr, ptr %bug.addr, align 8, !dbg !4311
  %file_disp = getelementptr inbounds %struct.bug_entry, ptr %0, i32 0, i32 1, !dbg !4312
  %1 = load ptr, ptr %bug.addr, align 8, !dbg !4313
  %file_disp1 = getelementptr inbounds %struct.bug_entry, ptr %1, i32 0, i32 1, !dbg !4314
  %2 = load i32, ptr %file_disp1, align 4, !dbg !4314
  %idx.ext = sext i32 %2 to i64, !dbg !4315
  %add.ptr = getelementptr i8, ptr %file_disp, i64 %idx.ext, !dbg !4315
  %3 = load ptr, ptr %file.addr, align 8, !dbg !4316
  store ptr %add.ptr, ptr %3, align 8, !dbg !4317
  %4 = load ptr, ptr %bug.addr, align 8, !dbg !4318
  %line2 = getelementptr inbounds %struct.bug_entry, ptr %4, i32 0, i32 2, !dbg !4319
  %5 = load i16, ptr %line2, align 4, !dbg !4319
  %conv = zext i16 %5 to i32, !dbg !4318
  %6 = load ptr, ptr %line.addr, align 8, !dbg !4320
  store i32 %conv, ptr %6, align 4, !dbg !4321
  ret void, !dbg !4322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @find_bug(i64 noundef %bugaddr) #0 align 16 !dbg !4323 {
entry:
  %retval = alloca ptr, align 8
  %bugaddr.addr = alloca i64, align 8
  %bug = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %bugaddr, ptr %bugaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bugaddr.addr, metadata !4327, metadata !DIExpression()), !dbg !4329
  call void @llvm.lifetime.start.p0(i64 8, ptr %bug) #12, !dbg !4330
  call void @llvm.dbg.declare(metadata ptr %bug, metadata !4328, metadata !DIExpression()), !dbg !4331
  store ptr @__start___bug_table, ptr %bug, align 8, !dbg !4332
  br label %for.cond, !dbg !4334

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %bug, align 8, !dbg !4335
  %cmp = icmp ult ptr %0, @__stop___bug_table, !dbg !4337
  br i1 %cmp, label %for.body, label %for.end, !dbg !4338

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %bugaddr.addr, align 8, !dbg !4339
  %2 = load ptr, ptr %bug, align 8, !dbg !4341
  %call = call i64 @bug_addr(ptr noundef %2) #13, !dbg !4342
  %cmp1 = icmp eq i64 %1, %call, !dbg !4343
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4344

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %bug, align 8, !dbg !4345
  store ptr %3, ptr %retval, align 8, !dbg !4346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4346

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4347

for.inc:                                          ; preds = %if.end
  %4 = load ptr, ptr %bug, align 8, !dbg !4348
  %incdec.ptr = getelementptr %struct.bug_entry, ptr %4, i32 1, !dbg !4348
  store ptr %incdec.ptr, ptr %bug, align 8, !dbg !4348
  br label %for.cond, !dbg !4349, !llvm.loop !4350

for.end:                                          ; preds = %for.cond
  %5 = load i64, ptr %bugaddr.addr, align 8, !dbg !4352
  %call2 = call ptr @module_find_bug(i64 noundef %5) #13, !dbg !4353
  store ptr %call2, ptr %retval, align 8, !dbg !4354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4354

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bug) #12, !dbg !4355
  %6 = load ptr, ptr %retval, align 8, !dbg !4355
  ret ptr %6, !dbg !4355
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bug_addr(ptr noundef %bug) #4 align 16 !dbg !4356 {
entry:
  %bug.addr = alloca ptr, align 8
  store ptr %bug, ptr %bug.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bug.addr, metadata !4362, metadata !DIExpression()), !dbg !4363
  %0 = load ptr, ptr %bug.addr, align 8, !dbg !4364
  %bug_addr_disp = getelementptr inbounds %struct.bug_entry, ptr %0, i32 0, i32 0, !dbg !4365
  %1 = ptrtoint ptr %bug_addr_disp to i64, !dbg !4366
  %2 = load ptr, ptr %bug.addr, align 8, !dbg !4367
  %bug_addr_disp1 = getelementptr inbounds %struct.bug_entry, ptr %2, i32 0, i32 0, !dbg !4368
  %3 = load i32, ptr %bug_addr_disp1, align 4, !dbg !4368
  %conv = sext i32 %3 to i64, !dbg !4367
  %add = add i64 %1, %conv, !dbg !4369
  ret i64 %add, !dbg !4370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @module_find_bug(i64 noundef %bugaddr) #0 align 16 !dbg !4371 {
entry:
  %retval = alloca ptr, align 8
  %bugaddr.addr = alloca i64, align 8
  %mod = alloca ptr, align 8
  %bug = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr7 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store i64 %bugaddr, ptr %bugaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bugaddr.addr, metadata !4373, metadata !DIExpression()), !dbg !4385
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #12, !dbg !4386
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !4374, metadata !DIExpression()), !dbg !4387
  call void @llvm.lifetime.start.p0(i64 8, ptr %bug) #12, !dbg !4388
  call void @llvm.dbg.declare(metadata ptr %bug, metadata !4375, metadata !DIExpression()), !dbg !4389
  store ptr null, ptr %bug, align 8, !dbg !4389
  call void @rcu_read_lock_sched() #13, !dbg !4390
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !4391
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4376, metadata !DIExpression()), !dbg !4391
  br label %do.body, !dbg !4392

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4394

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4394

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr @module_bug_list, align 8, !dbg !4392
  store ptr %0, ptr %tmp, align 8, !dbg !4394
  %1 = load ptr, ptr %tmp, align 8, !dbg !4392
  store ptr %1, ptr %__mptr, align 8, !dbg !4391
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4391
  %add.ptr = getelementptr i8, ptr %2, i64 -864, !dbg !4391
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !4391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !4396
  %3 = load ptr, ptr %tmp1, align 8, !dbg !4391
  store ptr %3, ptr %mod, align 8, !dbg !4396
  br label %for.cond, !dbg !4396

for.cond:                                         ; preds = %do.end10, %do.end
  %4 = load ptr, ptr %mod, align 8, !dbg !4397
  %bug_list = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 26, !dbg !4397
  %cmp = icmp ne ptr %bug_list, @module_bug_list, !dbg !4397
  br i1 %cmp, label %for.body, label %for.end15, !dbg !4396

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !4398
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4379, metadata !DIExpression()), !dbg !4399
  %5 = load ptr, ptr %mod, align 8, !dbg !4400
  %bug_table = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 27, !dbg !4401
  %6 = load ptr, ptr %bug_table, align 16, !dbg !4401
  store ptr %6, ptr %bug, align 8, !dbg !4402
  store i32 0, ptr %i, align 4, !dbg !4403
  br label %for.cond2, !dbg !4405

for.cond2:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %i, align 4, !dbg !4406
  %8 = load ptr, ptr %mod, align 8, !dbg !4408
  %num_bugs = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 25, !dbg !4409
  %9 = load i32, ptr %num_bugs, align 8, !dbg !4409
  %cmp3 = icmp ult i32 %7, %9, !dbg !4410
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !4411

for.body4:                                        ; preds = %for.cond2
  %10 = load i64, ptr %bugaddr.addr, align 8, !dbg !4412
  %11 = load ptr, ptr %bug, align 8, !dbg !4414
  %call = call i64 @bug_addr(ptr noundef %11) #13, !dbg !4415
  %cmp5 = icmp eq i64 %10, %call, !dbg !4416
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4417

if.then:                                          ; preds = %for.body4
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4418

if.end:                                           ; preds = %for.body4
  br label %for.inc, !dbg !4419

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !4420
  %inc = add i32 %12, 1, !dbg !4420
  store i32 %inc, ptr %i, align 4, !dbg !4420
  %13 = load ptr, ptr %bug, align 8, !dbg !4421
  %incdec.ptr = getelementptr %struct.bug_entry, ptr %13, i32 1, !dbg !4421
  store ptr %incdec.ptr, ptr %bug, align 8, !dbg !4421
  br label %for.cond2, !dbg !4422, !llvm.loop !4423

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4425
  br label %cleanup, !dbg !4425

cleanup:                                          ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !4425
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
    i32 10, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc6, !dbg !4426

for.inc6:                                         ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #12, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !4382, metadata !DIExpression()), !dbg !4427
  br label %do.body8, !dbg !4428

do.body8:                                         ; preds = %for.inc6
  br label %do.cond9, !dbg !4430

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4430

do.end10:                                         ; preds = %do.cond9
  %14 = load ptr, ptr %mod, align 8, !dbg !4428
  %bug_list12 = getelementptr inbounds %struct.module, ptr %14, i32 0, i32 26, !dbg !4428
  %next = getelementptr inbounds %struct.list_head, ptr %bug_list12, i32 0, i32 0, !dbg !4428
  %15 = load volatile ptr, ptr %next, align 32, !dbg !4428
  store ptr %15, ptr %tmp11, align 8, !dbg !4430
  %16 = load ptr, ptr %tmp11, align 8, !dbg !4428
  store ptr %16, ptr %__mptr7, align 8, !dbg !4427
  %17 = load ptr, ptr %__mptr7, align 8, !dbg !4427
  %add.ptr14 = getelementptr i8, ptr %17, i64 -864, !dbg !4427
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #12, !dbg !4397
  %18 = load ptr, ptr %tmp13, align 8, !dbg !4427
  store ptr %18, ptr %mod, align 8, !dbg !4397
  br label %for.cond, !dbg !4397, !llvm.loop !4432

for.end15:                                        ; preds = %for.cond
  store ptr null, ptr %bug, align 8, !dbg !4434
  br label %out, !dbg !4435

out:                                              ; preds = %for.end15, %cleanup
  call void @llvm.dbg.label(metadata !4384), !dbg !4436
  call void @rcu_read_unlock_sched() #13, !dbg !4437
  %19 = load ptr, ptr %bug, align 8, !dbg !4438
  store ptr %19, ptr %retval, align 8, !dbg !4439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !4439

cleanup16:                                        ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %bug) #12, !dbg !4440
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #12, !dbg !4440
  %20 = load ptr, ptr %retval, align 8, !dbg !4440
  ret ptr %20, !dbg !4440
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @report_bug(i64 noundef %bugaddr, ptr noundef %regs) #0 align 16 !dbg !4441 {
entry:
  %bugaddr.addr = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %rcu = alloca i8, align 1
  store i64 %bugaddr, ptr %bugaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bugaddr.addr, metadata !4445, metadata !DIExpression()), !dbg !4449
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4446, metadata !DIExpression()), !dbg !4450
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !4451
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4447, metadata !DIExpression()), !dbg !4452
  call void @llvm.lifetime.start.p0(i64 1, ptr %rcu) #12, !dbg !4453
  call void @llvm.dbg.declare(metadata ptr %rcu, metadata !4448, metadata !DIExpression()), !dbg !4454
  store i8 0, ptr %rcu, align 1, !dbg !4454
  %call = call zeroext i1 @warn_rcu_enter() #13, !dbg !4455
  %frombool = zext i1 %call to i8, !dbg !4456
  store i8 %frombool, ptr %rcu, align 1, !dbg !4456
  %0 = load i64, ptr %bugaddr.addr, align 8, !dbg !4457
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4458
  %call1 = call i32 @__report_bug(i64 noundef %0, ptr noundef %1) #13, !dbg !4459
  store i32 %call1, ptr %ret, align 4, !dbg !4460
  %2 = load i8, ptr %rcu, align 1, !dbg !4461, !range !4462, !noundef !507
  %tobool = trunc i8 %2 to i1, !dbg !4461
  call void @warn_rcu_exit(i1 noundef zeroext %tobool) #13, !dbg !4463
  %3 = load i32, ptr %ret, align 4, !dbg !4464
  call void @llvm.lifetime.end.p0(i64 1, ptr %rcu) #12, !dbg !4465
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !4465
  ret i32 %3, !dbg !4466
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @warn_rcu_enter() #5 align 16 !dbg !4467 {
entry:
  %ret = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #12, !dbg !4470
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4469, metadata !DIExpression()), !dbg !4471
  store i8 0, ptr %ret, align 1, !dbg !4471
  br label %do.body, !dbg !4472

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !4473
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4473, !srcloc !4475
  br label %do.cond, !dbg !4473

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4473

do.end:                                           ; preds = %do.cond
  %call = call zeroext i1 @rcu_dynticks_curr_cpu_in_eqs() #13, !dbg !4476
  br i1 %call, label %if.then, label %if.end, !dbg !4478

if.then:                                          ; preds = %do.end
  store i8 1, ptr %ret, align 1, !dbg !4479
  %call1 = call i64 @ct_state_inc(i32 noundef 4) #13, !dbg !4481
  br label %if.end, !dbg !4482

if.end:                                           ; preds = %if.then, %do.end
  %0 = load i8, ptr %ret, align 1, !dbg !4483, !range !4462, !noundef !507
  %tobool = trunc i8 %0 to i1, !dbg !4483
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #12, !dbg !4484
  ret i1 %tobool, !dbg !4485
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__report_bug(i64 noundef %bugaddr, ptr noundef %regs) #0 align 16 !dbg !4486 {
entry:
  %retval = alloca i32, align 4
  %bugaddr.addr = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %bug = alloca ptr, align 8
  %file = alloca ptr, align 8
  %line = alloca i32, align 4
  %warning = alloca i32, align 4
  %once = alloca i32, align 4
  %done = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  store i64 %bugaddr, ptr %bugaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bugaddr.addr, metadata !4488, metadata !DIExpression()), !dbg !4496
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4489, metadata !DIExpression()), !dbg !4497
  call void @llvm.lifetime.start.p0(i64 8, ptr %bug) #12, !dbg !4498
  call void @llvm.dbg.declare(metadata ptr %bug, metadata !4490, metadata !DIExpression()), !dbg !4499
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #12, !dbg !4500
  call void @llvm.dbg.declare(metadata ptr %file, metadata !4491, metadata !DIExpression()), !dbg !4501
  call void @llvm.lifetime.start.p0(i64 4, ptr %line) #12, !dbg !4502
  call void @llvm.dbg.declare(metadata ptr %line, metadata !4492, metadata !DIExpression()), !dbg !4503
  call void @llvm.lifetime.start.p0(i64 4, ptr %warning) #12, !dbg !4502
  call void @llvm.dbg.declare(metadata ptr %warning, metadata !4493, metadata !DIExpression()), !dbg !4504
  call void @llvm.lifetime.start.p0(i64 4, ptr %once) #12, !dbg !4502
  call void @llvm.dbg.declare(metadata ptr %once, metadata !4494, metadata !DIExpression()), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #12, !dbg !4502
  call void @llvm.dbg.declare(metadata ptr %done, metadata !4495, metadata !DIExpression()), !dbg !4506
  %0 = load i64, ptr %bugaddr.addr, align 8, !dbg !4507
  %call = call i32 @is_valid_bugaddr(i64 noundef %0) #13, !dbg !4509
  %tobool = icmp ne i32 %call, 0, !dbg !4509
  br i1 %tobool, label %if.end, label %if.then, !dbg !4510

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4511

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %bugaddr.addr, align 8, !dbg !4512
  %call1 = call ptr @find_bug(i64 noundef %1) #13, !dbg !4513
  store ptr %call1, ptr %bug, align 8, !dbg !4514
  %2 = load ptr, ptr %bug, align 8, !dbg !4515
  %tobool2 = icmp ne ptr %2, null, !dbg !4515
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4517

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4518

if.end4:                                          ; preds = %if.end
  call void @disable_trace_on_warning() #13, !dbg !4519
  %3 = load ptr, ptr %bug, align 8, !dbg !4520
  call void @bug_get_file_line(ptr noundef %3, ptr noundef %file, ptr noundef %line) #13, !dbg !4521
  %4 = load ptr, ptr %bug, align 8, !dbg !4522
  %flags = getelementptr inbounds %struct.bug_entry, ptr %4, i32 0, i32 3, !dbg !4523
  %5 = load i16, ptr %flags, align 2, !dbg !4523
  %conv = zext i16 %5 to i32, !dbg !4522
  %and = and i32 %conv, 1, !dbg !4524
  %cmp = icmp ne i32 %and, 0, !dbg !4525
  %conv5 = zext i1 %cmp to i32, !dbg !4525
  store i32 %conv5, ptr %warning, align 4, !dbg !4526
  %6 = load ptr, ptr %bug, align 8, !dbg !4527
  %flags6 = getelementptr inbounds %struct.bug_entry, ptr %6, i32 0, i32 3, !dbg !4528
  %7 = load i16, ptr %flags6, align 2, !dbg !4528
  %conv7 = zext i16 %7 to i32, !dbg !4527
  %and8 = and i32 %conv7, 2, !dbg !4529
  %cmp9 = icmp ne i32 %and8, 0, !dbg !4530
  %conv10 = zext i1 %cmp9 to i32, !dbg !4530
  store i32 %conv10, ptr %once, align 4, !dbg !4531
  %8 = load ptr, ptr %bug, align 8, !dbg !4532
  %flags11 = getelementptr inbounds %struct.bug_entry, ptr %8, i32 0, i32 3, !dbg !4533
  %9 = load i16, ptr %flags11, align 2, !dbg !4533
  %conv12 = zext i16 %9 to i32, !dbg !4532
  %and13 = and i32 %conv12, 4, !dbg !4534
  %cmp14 = icmp ne i32 %and13, 0, !dbg !4535
  %conv15 = zext i1 %cmp14 to i32, !dbg !4535
  store i32 %conv15, ptr %done, align 4, !dbg !4536
  %10 = load i32, ptr %warning, align 4, !dbg !4537
  %tobool16 = icmp ne i32 %10, 0, !dbg !4537
  br i1 %tobool16, label %land.lhs.true, label %if.end25, !dbg !4539

land.lhs.true:                                    ; preds = %if.end4
  %11 = load i32, ptr %once, align 4, !dbg !4540
  %tobool17 = icmp ne i32 %11, 0, !dbg !4540
  br i1 %tobool17, label %if.then18, label %if.end25, !dbg !4541

if.then18:                                        ; preds = %land.lhs.true
  %12 = load i32, ptr %done, align 4, !dbg !4542
  %tobool19 = icmp ne i32 %12, 0, !dbg !4542
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4545

if.then20:                                        ; preds = %if.then18
  store i32 1, ptr %retval, align 4, !dbg !4546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4546

if.end21:                                         ; preds = %if.then18
  %13 = load ptr, ptr %bug, align 8, !dbg !4547
  %flags22 = getelementptr inbounds %struct.bug_entry, ptr %13, i32 0, i32 3, !dbg !4548
  %14 = load i16, ptr %flags22, align 2, !dbg !4549
  %conv23 = zext i16 %14 to i32, !dbg !4549
  %or = or i32 %conv23, 4, !dbg !4549
  %conv24 = trunc i32 %or to i16, !dbg !4549
  store i16 %conv24, ptr %flags22, align 2, !dbg !4549
  br label %if.end25, !dbg !4550

if.end25:                                         ; preds = %if.end21, %land.lhs.true, %if.end4
  %15 = load ptr, ptr %bug, align 8, !dbg !4551
  %flags26 = getelementptr inbounds %struct.bug_entry, ptr %15, i32 0, i32 3, !dbg !4553
  %16 = load i16, ptr %flags26, align 2, !dbg !4553
  %conv27 = zext i16 %16 to i32, !dbg !4551
  %and28 = and i32 %conv27, 8, !dbg !4554
  %cmp29 = icmp eq i32 %and28, 0, !dbg !4555
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !4556

if.then31:                                        ; preds = %if.end25
  br label %do.body, !dbg !4557

do.body:                                          ; preds = %if.then31
  br label %do.cond, !dbg !4559

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4559

do.end:                                           ; preds = %do.cond
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #14, !dbg !4557
  store i32 %call32, ptr %tmp, align 4, !dbg !4559
  %17 = load i32, ptr %tmp, align 4, !dbg !4557
  br label %if.end33, !dbg !4561

if.end33:                                         ; preds = %do.end, %if.end25
  %18 = load i32, ptr %warning, align 4, !dbg !4562
  %tobool34 = icmp ne i32 %18, 0, !dbg !4562
  br i1 %tobool34, label %if.then35, label %if.end38, !dbg !4564

if.then35:                                        ; preds = %if.end33
  %19 = load ptr, ptr %file, align 8, !dbg !4565
  %20 = load i32, ptr %line, align 4, !dbg !4567
  %21 = load i64, ptr %bugaddr.addr, align 8, !dbg !4568
  %22 = inttoptr i64 %21 to ptr, !dbg !4569
  %23 = load ptr, ptr %bug, align 8, !dbg !4570
  %flags36 = getelementptr inbounds %struct.bug_entry, ptr %23, i32 0, i32 3, !dbg !4570
  %24 = load i16, ptr %flags36, align 2, !dbg !4570
  %conv37 = zext i16 %24 to i32, !dbg !4570
  %shr = ashr i32 %conv37, 8, !dbg !4570
  %25 = load ptr, ptr %regs.addr, align 8, !dbg !4571
  call void @__warn(ptr noundef %19, i32 noundef %20, ptr noundef %22, i32 noundef %shr, ptr noundef %25, ptr noundef null) #13, !dbg !4572
  store i32 1, ptr %retval, align 4, !dbg !4573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4573

if.end38:                                         ; preds = %if.end33
  %26 = load ptr, ptr %file, align 8, !dbg !4574
  %tobool39 = icmp ne ptr %26, null, !dbg !4574
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !4576

if.then40:                                        ; preds = %if.end38
  br label %do.body41, !dbg !4577

do.body41:                                        ; preds = %if.then40
  br label %do.cond42, !dbg !4579

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !4579

do.end43:                                         ; preds = %do.cond42
  %27 = load ptr, ptr %file, align 8, !dbg !4577
  %28 = load i32, ptr %line, align 4, !dbg !4577
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %27, i32 noundef %28) #14, !dbg !4577
  store i32 %call45, ptr %tmp44, align 4, !dbg !4579
  %29 = load i32, ptr %tmp44, align 4, !dbg !4577
  br label %if.end51, !dbg !4581

if.else:                                          ; preds = %if.end38
  br label %do.body46, !dbg !4582

do.body46:                                        ; preds = %if.else
  br label %do.cond47, !dbg !4584

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !4584

do.end48:                                         ; preds = %do.cond47
  %30 = load i64, ptr %bugaddr.addr, align 8, !dbg !4582
  %31 = inttoptr i64 %30 to ptr, !dbg !4582
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %31) #14, !dbg !4582
  store i32 %call50, ptr %tmp49, align 4, !dbg !4584
  %32 = load i32, ptr %tmp49, align 4, !dbg !4582
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %do.end43
  store i32 2, ptr %retval, align 4, !dbg !4586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4586

cleanup:                                          ; preds = %if.end51, %if.then35, %if.then20, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #12, !dbg !4587
  call void @llvm.lifetime.end.p0(i64 4, ptr %once) #12, !dbg !4587
  call void @llvm.lifetime.end.p0(i64 4, ptr %warning) #12, !dbg !4587
  call void @llvm.lifetime.end.p0(i64 4, ptr %line) #12, !dbg !4587
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #12, !dbg !4587
  call void @llvm.lifetime.end.p0(i64 8, ptr %bug) #12, !dbg !4587
  %33 = load i32, ptr %retval, align 4, !dbg !4587
  ret i32 %33, !dbg !4587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_rcu_exit(i1 noundef zeroext %rcu) #5 align 16 !dbg !4133 {
entry:
  %rcu.addr = alloca i8, align 1
  %frombool = zext i1 %rcu to i8
  store i8 %frombool, ptr %rcu.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rcu.addr, metadata !4138, metadata !DIExpression()), !dbg !4588
  %0 = load i8, ptr %rcu.addr, align 1, !dbg !4589, !range !4462, !noundef !507
  %tobool = trunc i8 %0 to i1, !dbg !4589
  br i1 %tobool, label %if.then, label %if.end, !dbg !4591

if.then:                                          ; preds = %entry
  %call = call i64 @ct_state_inc(i32 noundef 4) #13, !dbg !4592
  br label %if.end, !dbg !4592

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !4593

do.body:                                          ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4594, !srcloc !4596
  %call1 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !4597
  %lnot = xor i1 %call1, true, !dbg !4597
  %lnot2 = xor i1 %lnot, true, !dbg !4597
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4597
  %conv = sext i32 %lnot.ext to i64, !dbg !4597
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4597
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4597
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4594

if.then4:                                         ; preds = %do.body
  br label %do.body5, !dbg !4597

do.body5:                                         ; preds = %if.then4
  %1 = call i64 @llvm.read_register.i64(metadata !4143), !dbg !4599
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #12, !dbg !4599, !srcloc !4601
  call void @llvm.write_register.i64(metadata !4143, i64 %2), !dbg !4599
  br label %do.end, !dbg !4599

do.end:                                           ; preds = %do.body5
  br label %if.end6, !dbg !4599

if.end6:                                          ; preds = %do.end, %do.body
  br label %do.end7, !dbg !4594

do.end7:                                          ; preds = %if.end6
  ret void, !dbg !4602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @generic_bug_clear_once() #0 align 16 !dbg !4603 {
entry:
  %mod = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #12, !dbg !4612
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !4605, metadata !DIExpression()), !dbg !4613
  call void @rcu_read_lock_sched() #13, !dbg !4614
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !4615
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4606, metadata !DIExpression()), !dbg !4615
  br label %do.body, !dbg !4616

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4618

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4618

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr @module_bug_list, align 8, !dbg !4616
  store ptr %0, ptr %tmp, align 8, !dbg !4618
  %1 = load ptr, ptr %tmp, align 8, !dbg !4616
  store ptr %1, ptr %__mptr, align 8, !dbg !4615
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4615
  %add.ptr = getelementptr i8, ptr %2, i64 -864, !dbg !4615
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !4615
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !4620
  %3 = load ptr, ptr %tmp1, align 8, !dbg !4615
  store ptr %3, ptr %mod, align 8, !dbg !4620
  br label %for.cond, !dbg !4620

for.cond:                                         ; preds = %do.end7, %do.end
  %4 = load ptr, ptr %mod, align 8, !dbg !4621
  %bug_list = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 26, !dbg !4621
  %cmp = icmp ne ptr %bug_list, @module_bug_list, !dbg !4621
  br i1 %cmp, label %for.body, label %for.end, !dbg !4620

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %mod, align 8, !dbg !4622
  %bug_table = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 27, !dbg !4623
  %6 = load ptr, ptr %bug_table, align 16, !dbg !4623
  %7 = load ptr, ptr %mod, align 8, !dbg !4624
  %bug_table2 = getelementptr inbounds %struct.module, ptr %7, i32 0, i32 27, !dbg !4625
  %8 = load ptr, ptr %bug_table2, align 16, !dbg !4625
  %9 = load ptr, ptr %mod, align 8, !dbg !4626
  %num_bugs = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 25, !dbg !4627
  %10 = load i32, ptr %num_bugs, align 8, !dbg !4627
  %idx.ext = zext i32 %10 to i64, !dbg !4628
  %add.ptr3 = getelementptr %struct.bug_entry, ptr %8, i64 %idx.ext, !dbg !4628
  call void @clear_once_table(ptr noundef %6, ptr noundef %add.ptr3) #13, !dbg !4629
  br label %for.inc, !dbg !4629

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #12, !dbg !4630
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !4609, metadata !DIExpression()), !dbg !4630
  br label %do.body5, !dbg !4631

do.body5:                                         ; preds = %for.inc
  br label %do.cond6, !dbg !4633

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4633

do.end7:                                          ; preds = %do.cond6
  %11 = load ptr, ptr %mod, align 8, !dbg !4631
  %bug_list9 = getelementptr inbounds %struct.module, ptr %11, i32 0, i32 26, !dbg !4631
  %next = getelementptr inbounds %struct.list_head, ptr %bug_list9, i32 0, i32 0, !dbg !4631
  %12 = load volatile ptr, ptr %next, align 32, !dbg !4631
  store ptr %12, ptr %tmp8, align 8, !dbg !4633
  %13 = load ptr, ptr %tmp8, align 8, !dbg !4631
  store ptr %13, ptr %__mptr4, align 8, !dbg !4630
  %14 = load ptr, ptr %__mptr4, align 8, !dbg !4630
  %add.ptr11 = getelementptr i8, ptr %14, i64 -864, !dbg !4630
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !4630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #12, !dbg !4621
  %15 = load ptr, ptr %tmp10, align 8, !dbg !4630
  store ptr %15, ptr %mod, align 8, !dbg !4621
  br label %for.cond, !dbg !4621, !llvm.loop !4635

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock_sched() #13, !dbg !4637
  call void @clear_once_table(ptr noundef @__start___bug_table, ptr noundef @__stop___bug_table) #13, !dbg !4638
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #12, !dbg !4639
  ret void, !dbg !4639
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock_sched() #4 align 16 !dbg !4640 {
entry:
  br label %do.body, !dbg !4641

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !4642
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4642, !srcloc !4644
  br label %do.end, !dbg !4642

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4645

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4646

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !4648

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !4649

do.end4:                                          ; preds = %do.body3
  ret void, !dbg !4651
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_once_table(ptr noundef %start, ptr noundef %end) #0 align 16 !dbg !4652 {
entry:
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %bug = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4656, metadata !DIExpression()), !dbg !4659
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4657, metadata !DIExpression()), !dbg !4660
  call void @llvm.lifetime.start.p0(i64 8, ptr %bug) #12, !dbg !4661
  call void @llvm.dbg.declare(metadata ptr %bug, metadata !4658, metadata !DIExpression()), !dbg !4662
  %0 = load ptr, ptr %start.addr, align 8, !dbg !4663
  store ptr %0, ptr %bug, align 8, !dbg !4665
  br label %for.cond, !dbg !4666

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %bug, align 8, !dbg !4667
  %2 = load ptr, ptr %end.addr, align 8, !dbg !4669
  %cmp = icmp ult ptr %1, %2, !dbg !4670
  br i1 %cmp, label %for.body, label %for.end, !dbg !4671

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %bug, align 8, !dbg !4672
  %flags = getelementptr inbounds %struct.bug_entry, ptr %3, i32 0, i32 3, !dbg !4673
  %4 = load i16, ptr %flags, align 2, !dbg !4674
  %conv = zext i16 %4 to i32, !dbg !4674
  %and = and i32 %conv, -5, !dbg !4674
  %conv1 = trunc i32 %and to i16, !dbg !4674
  store i16 %conv1, ptr %flags, align 2, !dbg !4674
  br label %for.inc, !dbg !4672

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %bug, align 8, !dbg !4675
  %incdec.ptr = getelementptr %struct.bug_entry, ptr %5, i32 1, !dbg !4675
  store ptr %incdec.ptr, ptr %bug, align 8, !dbg !4675
  br label %for.cond, !dbg !4676, !llvm.loop !4677

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %bug) #12, !dbg !4679
  ret void, !dbg !4679
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock_sched() #4 align 16 !dbg !4141 {
entry:
  br label %do.body, !dbg !4680

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4681

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4683

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4684

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !4686

do.body3:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4687, !srcloc !4689
  %call = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !4690
  %lnot = xor i1 %call, true, !dbg !4690
  %lnot4 = xor i1 %lnot, true, !dbg !4690
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4690
  %conv = sext i32 %lnot.ext to i64, !dbg !4690
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4690
  %tobool = icmp ne i64 %expval, 0, !dbg !4690
  br i1 %tobool, label %if.then, label %if.end, !dbg !4687

if.then:                                          ; preds = %do.body3
  br label %do.body5, !dbg !4690

do.body5:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !4143), !dbg !4692
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !4692, !srcloc !4694
  call void @llvm.write_register.i64(metadata !4143, i64 %1), !dbg !4692
  br label %do.end6, !dbg !4692

do.end6:                                          ; preds = %do.body5
  br label %if.end, !dbg !4692

if.end:                                           ; preds = %do.end6, %do.body3
  br label %do.end7, !dbg !4687

do.end7:                                          ; preds = %if.end
  ret void, !dbg !4695
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !4696 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4700, metadata !DIExpression()), !dbg !4705
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4701, metadata !DIExpression()), !dbg !4706
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4702, metadata !DIExpression()), !dbg !4707
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4708
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4710
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4711
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13, !dbg !4712
  br i1 %call, label %if.end, label %if.then, !dbg !4713

if.then:                                          ; preds = %entry
  br label %return, !dbg !4714

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !4715
  %4 = load ptr, ptr %new.addr, align 8, !dbg !4716
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !4717
  store ptr %3, ptr %next1, align 8, !dbg !4718
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !4719
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4720
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !4721
  store ptr %5, ptr %prev2, align 8, !dbg !4722
  br label %do.body, !dbg !4723

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #12, !dbg !4724
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !4703, metadata !DIExpression()), !dbg !4724
  %7 = load ptr, ptr %new.addr, align 8, !dbg !4724
  %8 = ptrtoint ptr %7 to i64, !dbg !4724
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !4724
  br i1 false, label %land.lhs.true, label %if.else, !dbg !4725

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !4725
  %cmp = icmp eq i64 %9, 0, !dbg !4725
  br i1 %cmp, label %if.then3, label %if.else, !dbg !4724

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !4725

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !4727

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !4729

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !4729

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !4727

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !4731
  %11 = inttoptr i64 %10 to ptr, !dbg !4731
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !4731
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !4731
  store volatile ptr %11, ptr %next7, align 8, !dbg !4731
  br label %do.cond8, !dbg !4731

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !4731

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !4727

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !4727

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !4727

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !4725

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !4733

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !4735

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4735

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !4733

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !4737

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !4739

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4739

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4737, !srcloc !4741
  br label %do.body20, !dbg !4737

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !4742

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !4744

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !4744

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !4742

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !4746
  %14 = inttoptr i64 %13 to ptr, !dbg !4746
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !4746
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !4746
  store volatile ptr %14, ptr %next25, align 8, !dbg !4746
  br label %do.cond26, !dbg !4746

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !4746

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !4742

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !4742

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !4737

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !4737

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !4733

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !4733

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #12, !dbg !4723
  br label %do.end36, !dbg !4724

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !4748
  %17 = load ptr, ptr %next.addr, align 8, !dbg !4749
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !4750
  store ptr %16, ptr %prev37, align 8, !dbg !4751
  br label %return, !dbg !4752

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !4752
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !4753 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4758, metadata !DIExpression()), !dbg !4761
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4759, metadata !DIExpression()), !dbg !4762
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4760, metadata !DIExpression()), !dbg !4763
  ret i1 true, !dbg !4764
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !4765 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4769
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #13, !dbg !4771
  br i1 %call, label %if.end, label %if.then, !dbg !4772

if.then:                                          ; preds = %entry
  br label %return, !dbg !4773

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4774
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4775
  %2 = load ptr, ptr %prev, align 8, !dbg !4775
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4776
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4777
  %4 = load ptr, ptr %next, align 8, !dbg !4777
  call void @__list_del(ptr noundef %2, ptr noundef %4) #13, !dbg !4778
  br label %return, !dbg !4779

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4779
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !4780 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  ret i1 true, !dbg !4786
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !4787 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4789, metadata !DIExpression()), !dbg !4791
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4790, metadata !DIExpression()), !dbg !4792
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4793
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4794
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4795
  store ptr %0, ptr %prev1, align 8, !dbg !4796
  br label %do.body, !dbg !4797

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4798

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4800

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4798

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4802
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4802
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4802
  store volatile ptr %2, ptr %next4, align 8, !dbg !4802
  br label %do.end5, !dbg !4802

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4798

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4804
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !4805 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4808, metadata !DIExpression()), !dbg !4815
  br label %do.body, !dbg !4816

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !4817
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4809, metadata !DIExpression()), !dbg !4817
  %0 = load i32, ptr %val.addr, align 4, !dbg !4817
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4817
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4817

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !4817
  %cmp = icmp eq i32 %2, 1, !dbg !4817
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4817

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !4817
  %cmp1 = icmp eq i32 %3, -1, !dbg !4817
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4817

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !4817
  br label %cond.end, !dbg !4817

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !4817

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4817
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4817
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !4818
  %cmp2 = icmp eq i32 %5, 1, !dbg !4818
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4817

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !4819, !srcloc !4821
  br label %if.end8, !dbg !4818

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !4822
  %cmp3 = icmp eq i32 %6, -1, !dbg !4822
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4818

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !4823, !srcloc !4825
  br label %if.end, !dbg !4822

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !4822

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !4826
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4811, metadata !DIExpression()), !dbg !4826
  %7 = load i32, ptr %val.addr, align 4, !dbg !4826
  %conv = sext i32 %7 to i64, !dbg !4826
  %and = and i64 %conv, 4294967295, !dbg !4826
  %conv7 = trunc i64 %and to i32, !dbg !4826
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !4826
  %8 = load i32, ptr %pto_val__, align 4, !dbg !4826
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !4826, !srcloc !4827
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !4822
  br label %do.cond, !dbg !4826

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4826

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !4816
  br label %do.end10, !dbg !4817

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !4828
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rcu_dynticks_curr_cpu_in_eqs() #5 align 16 !dbg !4829 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  br label %do.body, !dbg !4836

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4837
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4831, metadata !DIExpression()), !dbg !4837
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4837
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4837
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4836
  br label %do.end, !dbg !4837

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4838
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !4834, metadata !DIExpression()), !dbg !4838
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #15, !dbg !4838, !srcloc !4839
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !4838
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !4838
  %3 = inttoptr i64 %2 to ptr, !dbg !4838
  store ptr %3, ptr %tmp1, align 8, !dbg !4838
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4836
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4838
  store ptr %4, ptr %tmp, align 8, !dbg !4837
  %5 = load ptr, ptr %tmp, align 8, !dbg !4836
  %call = call i32 @raw_atomic_read(ptr noundef %5) #13, !dbg !4840
  %and = and i32 %call, 4, !dbg !4841
  %tobool = icmp ne i32 %and, 0, !dbg !4842
  %lnot = xor i1 %tobool, true, !dbg !4842
  ret i1 %lnot, !dbg !4843
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ct_state_inc(i32 noundef %incby) #5 align 16 !dbg !4844 {
entry:
  %incby.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %incby, ptr %incby.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %incby.addr, metadata !4848, metadata !DIExpression()), !dbg !4854
  %0 = load i32, ptr %incby.addr, align 4, !dbg !4855
  br label %do.body, !dbg !4856

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4857
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4849, metadata !DIExpression()), !dbg !4857
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4857
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4857
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4856
  br label %do.end, !dbg !4857

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4858
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !4852, metadata !DIExpression()), !dbg !4858
  %2 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #15, !dbg !4858, !srcloc !4859
  store i64 %2, ptr %tcp_ptr__, align 8, !dbg !4858
  %3 = load i64, ptr %tcp_ptr__, align 8, !dbg !4858
  %4 = inttoptr i64 %3 to ptr, !dbg !4858
  store ptr %4, ptr %tmp1, align 8, !dbg !4858
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4856
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4858
  store ptr %5, ptr %tmp, align 8, !dbg !4857
  %6 = load ptr, ptr %tmp, align 8, !dbg !4856
  %call = call i32 @raw_atomic_add_return(i32 noundef %0, ptr noundef %6) #13, !dbg !4860
  %conv = sext i32 %call to i64, !dbg !4860
  ret i64 %conv, !dbg !4861
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !4862 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4869, metadata !DIExpression()), !dbg !4870
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4871
  %call = call i32 @arch_atomic_read(ptr noundef %0) #13, !dbg !4872
  ret i32 %call, !dbg !4873
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !4874 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4879
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4879
  %1 = load volatile i32, ptr %counter, align 4, !dbg !4879
  ret i32 %1, !dbg !4880
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4881 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4885, metadata !DIExpression()), !dbg !4887
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4886, metadata !DIExpression()), !dbg !4888
  %0 = load i32, ptr %i.addr, align 4, !dbg !4889
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4890
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #13, !dbg !4891
  ret i32 %call, !dbg !4892
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4893 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4895, metadata !DIExpression()), !dbg !4899
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4896, metadata !DIExpression()), !dbg !4900
  %0 = load i32, ptr %i.addr, align 4, !dbg !4901
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12, !dbg !4902
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4897, metadata !DIExpression()), !dbg !4902
  %1 = load i32, ptr %i.addr, align 4, !dbg !4902
  store i32 %1, ptr %__ret, align 4, !dbg !4902
  %2 = load i32, ptr %__ret, align 4, !dbg !4902
  %3 = load ptr, ptr %v.addr, align 8, !dbg !4902
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !4902
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #12, !dbg !4902, !srcloc !4903
  store i32 %4, ptr %__ret, align 4, !dbg !4902
  %5 = load i32, ptr %__ret, align 4, !dbg !4902
  store i32 %5, ptr %tmp, align 4, !dbg !4902
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12, !dbg !4904
  %6 = load i32, ptr %tmp, align 4, !dbg !4902
  %add = add i32 %0, %6, !dbg !4905
  ret i32 %add, !dbg !4906
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4907 dso_local i32 @is_valid_bugaddr(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4910 dso_local void @disable_trace_on_warning() #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4912 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4916 dso_local void @__warn(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !4921 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4923, metadata !DIExpression()), !dbg !4925
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !4925, !srcloc !4926
  %1 = icmp ult i8 %0, 2, !dbg !4925
  call void @llvm.assume(i1 %1), !dbg !4925
  store i8 %0, ptr %c, align 1, !dbg !4925
  %2 = load i8, ptr %c, align 1, !dbg !4925, !range !4462, !noundef !507
  %tobool = trunc i8 %2 to i1, !dbg !4925
  %frombool = zext i1 %tobool to i8, !dbg !4925
  store i8 %frombool, ptr %tmp, align 1, !dbg !4925
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !4927
  %3 = load i8, ptr %tmp, align 1, !dbg !4925, !range !4462, !noundef !507
  %tobool1 = trunc i8 %3 to i1, !dbg !4925
  ret i1 %tobool1, !dbg !4928
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }
attributes #15 = { nounwind memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.named.register.rsp = !{!4143}
!llvm.module.flags = !{!4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151}
!llvm.ident = !{!4152}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/bug.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2e35df4647ee4f665bfe653a095333c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "module_bug_list", scope: !9, file: !2, line: 65, type: !123, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.bug.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/bug\22 -D KBUILD_BASENAME=\22bug\22 -D KBUILD_MODNAME=\22bug\22 -D __KBUILD_MODNAME=kmod_bug -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/bug.ll lib/bug.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !114, globals: !4115, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !35, !43, !59, !67, !73, !80, !87, !93, !99, !104}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !31, line: 65, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!34 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !36, line: 9, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!39 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!40 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!41 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!42 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !60, line: 68, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!66 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bug_trap_type", file: !94, line: 9, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90678d2f644c0a5a4005e4cc9a8b8472")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "BUG_TRAP_TYPE_NONE", value: 0)
!97 = !DIEnumerator(name: "BUG_TRAP_TYPE_WARN", value: 1)
!98 = !DIEnumerator(name: "BUG_TRAP_TYPE_BUG", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 10, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "false", value: 0)
!103 = !DIEnumerator(name: "true", value: 1)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ctx_state", file: !105, line: 12, baseType: !106, size: 32, elements: !107)
!105 = !DIFile(filename: "./include/linux/context_tracking_state.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc08221f6a28a16bba05a935cbde34cf")
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !{!108, !109, !110, !111, !112, !113}
!108 = !DIEnumerator(name: "CONTEXT_DISABLED", value: -1)
!109 = !DIEnumerator(name: "CONTEXT_KERNEL", value: 0)
!110 = !DIEnumerator(name: "CONTEXT_IDLE", value: 1)
!111 = !DIEnumerator(name: "CONTEXT_USER", value: 2)
!112 = !DIEnumerator(name: "CONTEXT_GUEST", value: 3)
!113 = !DIEnumerator(name: "CONTEXT_MAX", value: 4)
!114 = !{!115, !116, !117, !119, !128, !4108, !122, !4109, !4110, !273, !106, !372, !4111, !4112}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 190, size: 128, elements: !125)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !124, line: 191, baseType: !122, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !124, line: 191, baseType: !122, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !130)
!130 = !{!131, !132, !133, !137, !3784, !3810, !3811, !3812, !3813, !3817, !3820, !3821, !3822, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3889, !3893, !3911, !3928, !3929, !3930, !3931, !3940, !3963, !3964, !3967, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3981, !3982, !4068, !4076, !4077, !4078, !4080, !4084, !4085, !4089, !4090, !4091, !4092, !4094, !4095, !4096, !4103, !4104, !4105, !4107}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !129, file: !12, line: 403, baseType: !11, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !129, file: !12, line: 406, baseType: !123, size: 128, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !12, line: 409, baseType: !134, size: 448, offset: 192)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 56)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !129, file: !12, line: 417, baseType: !138, size: 768, offset: 640)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !139)
!139 = !{!140, !3778, !3779, !3780, !3783}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !138, file: !12, line: 46, baseType: !141, size: 512)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !142, line: 64, size: 512, elements: !143)
!142 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!143 = !{!144, !145, !146, !148, !236, !3665, !3768, !3773, !3774, !3775, !3776, !3777}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !142, line: 65, baseType: !117, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !141, file: !142, line: 66, baseType: !123, size: 128, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !141, file: !142, line: 67, baseType: !147, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !141, file: !142, line: 68, baseType: !149, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !142, line: 168, size: 768, elements: !151)
!151 = !{!152, !153, !196, !197}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !150, file: !142, line: 169, baseType: !123, size: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !150, file: !142, line: 170, baseType: !154, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !155, line: 29, baseType: !156)
!155 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !155, line: 17, size: 32, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !155, line: 18, baseType: !159, size: 32)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !155, line: 18, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !159, file: !155, line: 19, baseType: !162, size: 32)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !163, line: 14, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !162, file: !163, line: 15, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !167, line: 44, baseType: !168)
!167 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !167, line: 14, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !167, line: 15, baseType: !171, size: 32)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !167, line: 15, size: 32, elements: !172)
!172 = !{!173, !178, !188}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !171, file: !167, line: 16, baseType: !174, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 174, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 172, size: 32, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !175, file: !124, line: 173, baseType: !106, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !167, line: 24, baseType: !179, size: 16)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !171, file: !167, line: 24, size: 16, elements: !180)
!180 = !{!181, !187}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !179, file: !167, line: 25, baseType: !182, size: 8)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !183, line: 17, baseType: !184)
!183 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !185, line: 21, baseType: !186)
!185 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!186 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !179, file: !167, line: 26, baseType: !182, size: 8, offset: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !167, line: 28, baseType: !189, size: 32)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !171, file: !167, line: 28, size: 32, elements: !190)
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !189, file: !167, line: 29, baseType: !192, size: 16)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !183, line: 19, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !185, line: 24, baseType: !194)
!194 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !189, file: !167, line: 30, baseType: !192, size: 16, offset: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !150, file: !142, line: 171, baseType: !141, size: 512, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !150, file: !142, line: 172, baseType: !198, size: 64, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !142, line: 133, size: 192, elements: !201)
!201 = !{!202, !209, !214}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !200, file: !142, line: 134, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!106, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !142, line: 135, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!117, !207}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !200, file: !142, line: 136, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!106, !207, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !142, line: 125, size: 20736, elements: !221)
!221 = !{!222, !226, !230, !231, !235}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !220, file: !142, line: 126, baseType: !223, size: 192)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 192, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 3)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !220, file: !142, line: 127, baseType: !227, size: 4096, offset: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 4096, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !220, file: !142, line: 128, baseType: !106, size: 32, offset: 4288)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !220, file: !142, line: 129, baseType: !232, size: 16384, offset: 4320)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 2048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !220, file: !142, line: 130, baseType: !106, size: 32, offset: 20704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !141, file: !142, line: 69, baseType: !237, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !142, line: 116, size: 384, elements: !240)
!240 = !{!241, !245, !274, !3627, !3655, !3659}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !239, file: !142, line: 117, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !147}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !239, file: !142, line: 118, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !249, line: 254, size: 128, elements: !250)
!249 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!250 = !{!251, !266}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !248, file: !249, line: 255, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !147, !260, !115}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 66, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !257, line: 73, baseType: !258)
!257 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !257, line: 15, baseType: !259)
!259 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !249, line: 30, size: 128, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !249, line: 31, baseType: !117, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !261, file: !249, line: 32, baseType: !265, size: 16, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 24, baseType: !194)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !248, file: !249, line: 256, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!255, !147, !260, !117, !270}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 61, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !257, line: 72, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !257, line: 16, baseType: !273)
!273 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !239, file: !142, line: 119, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !249, line: 84, size: 320, elements: !279)
!279 = !{!280, !281, !285, !3623, !3625}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !249, line: 85, baseType: !117, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !278, file: !249, line: 86, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!265, !147, !260, !106}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !278, file: !249, line: 88, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!265, !147, !289, !106}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !249, line: 175, size: 512, elements: !291)
!291 = !{!292, !293, !294, !295, !3614, !3618, !3619}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !290, file: !249, line: 176, baseType: !261, size: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !290, file: !249, line: 177, baseType: !270, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !290, file: !249, line: 178, baseType: !116, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !290, file: !249, line: 179, baseType: !296, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !301)
!301 = !{!302, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3608, !3609, !3610, !3611, !3612, !3613}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !300, file: !20, line: 473, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !305)
!305 = !{!306, !307, !308, !316, !317, !324, !325, !328, !329, !3386, !3387, !3388, !3389, !3390, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3430, !3433, !3434, !3435, !3444, !3445, !3446, !3447}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !304, file: !20, line: 642, baseType: !265, size: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !304, file: !20, line: 643, baseType: !194, size: 16, offset: 16)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !304, file: !20, line: 644, baseType: !309, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !310, line: 23, baseType: !311)
!310 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !310, line: 21, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !311, file: !310, line: 22, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 37, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !257, line: 49, baseType: !13)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !304, file: !20, line: 645, baseType: !123, size: 128, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !304, file: !20, line: 646, baseType: !318, size: 32, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !310, line: 28, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !310, line: 26, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !319, file: !310, line: 27, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 38, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !257, line: 50, baseType: !13)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !304, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !304, file: !20, line: 650, baseType: !326, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !304, file: !20, line: 651, baseType: !326, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !304, file: !20, line: 654, baseType: !330, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !333)
!333 = !{!334, !3217, !3230, !3234, !3238, !3242, !3246, !3250, !3254, !3258, !3262, !3263, !3267, !3271, !3308, !3337, !3341, !3347, !3351, !3355, !3359, !3363, !3367, !3373, !3377}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !332, file: !20, line: 1967, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!338, !303, !338, !13}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !340, line: 82, size: 1536, elements: !341)
!340 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!341 = !{!342, !343, !353, !361, !362, !382, !383, !387, !400, !3200, !3201, !3202, !3203, !3209, !3210, !3211}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !339, file: !340, line: 84, baseType: !13, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !339, file: !340, line: 85, baseType: !344, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !345, line: 275, baseType: !346)
!345 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !345, line: 275, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !346, file: !345, line: 275, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !345, line: 69, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !345, line: 64, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !350, file: !345, line: 65, baseType: !13, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !339, file: !340, line: 86, baseType: !354, size: 128, offset: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !355, line: 38, size: 128, elements: !356)
!355 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!356 = !{!357, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !355, line: 39, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !354, file: !355, line: 39, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !339, file: !340, line: 87, baseType: !338, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !339, file: !340, line: 88, baseType: !363, size: 128, offset: 256)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !340, line: 49, size: 128, elements: !364)
!364 = !{!365, !379}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !340, line: 50, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !340, line: 50, size: 64, elements: !367)
!367 = !{!368, !375}
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !340, line: 51, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !340, line: 51, size: 64, elements: !370)
!370 = !{!371, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !369, file: !340, line: 52, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !183, line: 21, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !185, line: 27, baseType: !13)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !369, file: !340, line: 52, baseType: !372, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !366, file: !340, line: 54, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !183, line: 23, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !185, line: 31, baseType: !378)
!378 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !340, line: 56, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !339, file: !340, line: 89, baseType: !303, size: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !339, file: !340, line: 91, baseType: !384, size: 256, offset: 448)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 256, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !339, file: !340, line: 94, baseType: !388, size: 64, offset: 704)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !389, line: 25, size: 64, elements: !390)
!389 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !389, line: 26, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !389, line: 26, size: 64, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !392, file: !389, line: 28, baseType: !377, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !389, line: 30, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !389, line: 30, size: 64, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !396, file: !389, line: 31, baseType: !154, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !396, file: !389, line: 32, baseType: !106, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !339, file: !340, line: 95, baseType: !401, size: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !340, line: 128, size: 1024, align: 512, elements: !404)
!404 = !{!405, !409, !410, !417, !423, !427, !431, !435, !436, !440, !444, !3190, !3194}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !403, file: !340, line: 129, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!106, !338, !13}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !403, file: !340, line: 130, baseType: !406, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !403, file: !340, line: 131, baseType: !411, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!106, !414, !416}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !403, file: !340, line: 132, baseType: !418, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!106, !414, !13, !117, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !403, file: !340, line: 134, baseType: !424, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!106, !414}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !403, file: !340, line: 135, baseType: !428, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!106, !338}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !403, file: !340, line: 136, baseType: !432, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !338}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !403, file: !340, line: 137, baseType: !432, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !403, file: !340, line: 138, baseType: !437, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !338, !303}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !403, file: !340, line: 139, baseType: !441, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!115, !338, !115, !106}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !403, file: !340, line: 140, baseType: !445, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !3189}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !450, line: 70, size: 256, elements: !451)
!450 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!451 = !{!452, !453, !3185, !3186}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !449, file: !450, line: 71, baseType: !338, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !449, file: !450, line: 72, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !456)
!456 = !{!457, !458, !461, !462, !463, !467, !516, !677, !717, !807, !811, !812, !813, !814, !815, !824, !825, !826, !827, !832, !836, !837, !840, !843, !846, !849, !850, !851, !892, !3116, !3117, !3118, !3119, !3120, !3121, !3124, !3126, !3133, !3134, !3135, !3136, !3137, !3152, !3153, !3154, !3155, !3156, !3159, !3160, !3161, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !455, file: !20, line: 1191, baseType: !123, size: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !455, file: !20, line: 1192, baseType: !459, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 21, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !124, line: 18, baseType: !372)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !455, file: !20, line: 1193, baseType: !186, size: 8, offset: 160)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !455, file: !20, line: 1194, baseType: !273, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !455, file: !20, line: 1195, baseType: !464, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 52, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !257, line: 88, baseType: !466)
!466 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !455, file: !20, line: 1196, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !470)
!470 = !{!471, !472, !473, !480, !484, !488, !492, !493, !494, !504, !508, !509, !510, !512, !513, !514, !515}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !469, file: !20, line: 2367, baseType: !117, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !469, file: !20, line: 2368, baseType: !106, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !469, file: !20, line: 2376, baseType: !474, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!106, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !479, line: 32, flags: DIFlagFwdDecl)
!479 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!480 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !469, file: !20, line: 2377, baseType: !481, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !469, file: !20, line: 2378, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!338, !468, !106, !117, !116}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !469, file: !20, line: 2380, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !454}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !469, file: !20, line: 2381, baseType: !128, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !20, line: 2382, baseType: !468, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !469, file: !20, line: 2383, baseType: !495, size: 64, offset: 512)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !124, line: 194, size: 64, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !495, file: !124, line: 195, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 198, size: 128, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !124, line: 199, baseType: !498, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !499, file: !124, line: 199, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !469, file: !20, line: 2385, baseType: !505, offset: 576)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !506, line: 206, elements: !507)
!506 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!507 = !{}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !469, file: !20, line: 2386, baseType: !505, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !469, file: !20, line: 2387, baseType: !505, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !469, file: !20, line: 2388, baseType: !511, offset: 576)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, elements: !224)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !469, file: !20, line: 2390, baseType: !505, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !469, file: !20, line: 2391, baseType: !505, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !469, file: !20, line: 2392, baseType: !505, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !469, file: !20, line: 2393, baseType: !505, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !455, file: !20, line: 1197, baseType: !517, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !520)
!520 = !{!521, !525, !529, !530, !534, !540, !544, !545, !546, !550, !554, !558, !559, !560, !566, !571, !572, !579, !580, !581, !582, !586, !590, !659, !675, !676}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !519, file: !20, line: 2058, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!303, !454}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !519, file: !20, line: 2059, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !303}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !519, file: !20, line: 2060, baseType: !526, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !519, file: !20, line: 2062, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !303, !106}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !519, file: !20, line: 2063, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!106, !303, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !519, file: !20, line: 2064, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!106, !303}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !519, file: !20, line: 2065, baseType: !526, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !519, file: !20, line: 2066, baseType: !489, size: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !519, file: !20, line: 2067, baseType: !547, size: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!106, !454, !106}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !519, file: !20, line: 2068, baseType: !551, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!106, !454, !19}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !519, file: !20, line: 2069, baseType: !555, size: 64, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!106, !454}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !519, file: !20, line: 2070, baseType: !551, size: 64, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !519, file: !20, line: 2071, baseType: !555, size: 64, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !519, file: !20, line: 2072, baseType: !561, size: 64, offset: 832)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!106, !338, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !519, file: !20, line: 2073, baseType: !567, size: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!106, !454, !570, !115}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !519, file: !20, line: 2074, baseType: !489, size: 64, offset: 960)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !519, file: !20, line: 2076, baseType: !573, size: 64, offset: 1024)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!106, !576, !338}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !578, line: 66, flags: DIFlagFwdDecl)
!578 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!579 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !519, file: !20, line: 2077, baseType: !573, size: 64, offset: 1088)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !519, file: !20, line: 2078, baseType: !573, size: 64, offset: 1152)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !519, file: !20, line: 2079, baseType: !573, size: 64, offset: 1216)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !519, file: !20, line: 2081, baseType: !583, size: 64, offset: 1280)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!255, !454, !106, !115, !270, !464}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !519, file: !20, line: 2082, baseType: !587, size: 64, offset: 1344)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!255, !454, !106, !117, !270, !464}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !519, file: !20, line: 2083, baseType: !591, size: 64, offset: 1408)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!594, !303}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !623, !624, !625, !626, !642, !643, !644}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !596, file: !25, line: 297, baseType: !499, size: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !596, file: !25, line: 298, baseType: !123, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !596, file: !25, line: 299, baseType: !123, size: 128, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !596, file: !25, line: 300, baseType: !123, size: 128, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !596, file: !25, line: 301, baseType: !603, size: 256, offset: 512)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !604, line: 66, size: 256, elements: !605)
!604 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!605 = !{!606, !615, !617, !622}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !603, file: !604, line: 67, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !608, line: 13, baseType: !609)
!608 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 181, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 179, size: 64, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !610, file: !124, line: 180, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !183, line: 22, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !185, line: 30, baseType: !466)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !603, file: !604, line: 68, baseType: !616, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !163, line: 23, baseType: !162)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !603, file: !604, line: 70, baseType: !618, size: 32, offset: 96)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !619, line: 15, size: 32, elements: !620)
!619 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !618, file: !619, line: 20, baseType: !174, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !603, file: !604, line: 72, baseType: !123, size: 128, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !596, file: !25, line: 302, baseType: !154, size: 32, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !596, file: !25, line: 303, baseType: !174, size: 32, offset: 800)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !596, file: !25, line: 304, baseType: !454, size: 64, offset: 832)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !596, file: !25, line: 305, baseType: !627, size: 64, offset: 896)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !628)
!628 = !{!629, !641}
!629 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !25, line: 69, baseType: !630, size: 32)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !627, file: !25, line: 69, size: 32, elements: !631)
!631 = !{!632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !630, file: !25, line: 70, baseType: !309, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !630, file: !25, line: 71, baseType: !318, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !630, file: !25, line: 72, baseType: !635, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !636, line: 24, baseType: !637)
!636 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !636, line: 22, size: 32, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !637, file: !636, line: 23, baseType: !640, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !636, line: 20, baseType: !315)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !596, file: !25, line: 306, baseType: !464, size: 64, offset: 960)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !596, file: !25, line: 307, baseType: !273, size: 64, offset: 1024)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !596, file: !25, line: 308, baseType: !645, size: 576, offset: 1088)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !646)
!646 = !{!647, !649, !650, !651, !652, !653, !654, !655, !658}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !645, file: !25, line: 206, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !466)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !645, file: !25, line: 207, baseType: !648, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !645, file: !25, line: 208, baseType: !648, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !645, file: !25, line: 209, baseType: !648, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !645, file: !25, line: 210, baseType: !648, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !645, file: !25, line: 211, baseType: !648, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !645, file: !25, line: 212, baseType: !648, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !645, file: !25, line: 213, baseType: !656, size: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !657, line: 8, baseType: !614)
!657 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !645, file: !25, line: 214, baseType: !656, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !519, file: !20, line: 2085, baseType: !660, size: 64, offset: 1472)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!259, !454, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !665, line: 15, size: 256, elements: !666)
!665 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!666 = !{!667, !669, !670, !671, !672}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !664, file: !665, line: 16, baseType: !668, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 154, baseType: !13)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !664, file: !665, line: 19, baseType: !106, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !664, file: !665, line: 26, baseType: !273, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !664, file: !665, line: 33, baseType: !273, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !664, file: !665, line: 36, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !519, file: !20, line: 2087, baseType: !660, size: 64, offset: 1536)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !519, file: !20, line: 2089, baseType: !489, size: 64, offset: 1600)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !455, file: !20, line: 1198, baseType: !678, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !681)
!681 = !{!682, !686, !690, !694, !695, !696, !697, !698, !703, !708, !712}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !680, file: !25, line: 325, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!106, !595}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !680, file: !25, line: 326, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!595, !454, !106}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !680, file: !25, line: 327, baseType: !691, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !595}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !680, file: !25, line: 328, baseType: !683, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !680, file: !25, line: 329, baseType: !683, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !680, file: !25, line: 330, baseType: !683, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !680, file: !25, line: 331, baseType: !547, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !680, file: !25, line: 334, baseType: !699, size: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !303}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !680, file: !25, line: 335, baseType: !704, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!106, !303, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !680, file: !25, line: 337, baseType: !709, size: 64, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!106, !303, !702}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !680, file: !25, line: 339, baseType: !713, size: 64, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!106, !454, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !455, file: !20, line: 1199, baseType: !718, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !721)
!721 = !{!722, !733, !734, !738, !739, !740, !755, !778, !782, !783, !806}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !720, file: !25, line: 431, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!106, !454, !106, !106, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !729, line: 8, size: 128, elements: !730)
!729 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !728, file: !729, line: 9, baseType: !448, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !728, file: !729, line: 10, baseType: !338, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !720, file: !25, line: 432, baseType: !547, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !720, file: !25, line: 433, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!106, !454, !13}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !720, file: !25, line: 434, baseType: !735, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !720, file: !25, line: 435, baseType: !547, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !720, file: !25, line: 436, baseType: !741, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!106, !454, !106, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !745, file: !25, line: 418, baseType: !106, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !745, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !745, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !745, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !745, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !745, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !745, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !745, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !720, file: !25, line: 437, baseType: !756, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!106, !454, !627, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !760, file: !25, line: 346, baseType: !106, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !760, file: !25, line: 347, baseType: !376, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !760, file: !25, line: 348, baseType: !376, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !760, file: !25, line: 349, baseType: !376, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !760, file: !25, line: 350, baseType: !376, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !760, file: !25, line: 351, baseType: !376, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !760, file: !25, line: 352, baseType: !376, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !760, file: !25, line: 353, baseType: !613, size: 64, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !760, file: !25, line: 355, baseType: !613, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !760, file: !25, line: 356, baseType: !106, size: 32, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !760, file: !25, line: 357, baseType: !106, size: 32, offset: 608)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !760, file: !25, line: 358, baseType: !376, size: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !760, file: !25, line: 359, baseType: !376, size: 64, offset: 704)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !760, file: !25, line: 360, baseType: !376, size: 64, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !760, file: !25, line: 361, baseType: !613, size: 64, offset: 832)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !760, file: !25, line: 362, baseType: !106, size: 32, offset: 896)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !720, file: !25, line: 438, baseType: !779, size: 64, offset: 448)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!106, !454, !716, !759}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !720, file: !25, line: 440, baseType: !756, size: 64, offset: 512)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !720, file: !25, line: 441, baseType: !784, size: 64, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!106, !454, !787}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !788, file: !25, line: 412, baseType: !13, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !788, file: !25, line: 413, baseType: !792, size: 1344, offset: 64)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 1344, elements: !224)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803, !805}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !25, line: 398, baseType: !13, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !793, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !793, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !793, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !793, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !793, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !793, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !793, file: !25, line: 406, baseType: !378, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !793, file: !25, line: 407, baseType: !804, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !124, line: 132, baseType: !376)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !793, file: !25, line: 408, baseType: !804, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !720, file: !25, line: 442, baseType: !735, size: 64, offset: 640)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !455, file: !20, line: 1200, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !455, file: !20, line: 1201, baseType: !273, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !455, file: !20, line: 1202, baseType: !273, size: 64, offset: 704)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !455, file: !20, line: 1203, baseType: !273, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !455, file: !20, line: 1204, baseType: !338, size: 64, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !455, file: !20, line: 1205, baseType: !816, size: 320, offset: 896)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !817, line: 48, size: 320, elements: !818)
!817 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!818 = !{!819, !820, !821, !822, !823}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !816, file: !817, line: 49, baseType: !607, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !816, file: !817, line: 55, baseType: !607, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !816, file: !817, line: 57, baseType: !618, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !816, file: !817, line: 59, baseType: !616, size: 32, offset: 160)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !816, file: !817, line: 60, baseType: !123, size: 128, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !455, file: !20, line: 1206, baseType: !106, size: 32, offset: 1216)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !455, file: !20, line: 1207, baseType: !174, size: 32, offset: 1248)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !455, file: !20, line: 1209, baseType: !116, size: 64, offset: 1280)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !455, file: !20, line: 1211, baseType: !828, size: 64, offset: 1344)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !455, file: !20, line: 1223, baseType: !833, size: 64, offset: 1408)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !355, line: 34, size: 64, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !833, file: !355, line: 35, baseType: !358, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !455, file: !20, line: 1224, baseType: !123, size: 128, offset: 1472)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !455, file: !20, line: 1225, baseType: !838, size: 64, offset: 1600)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !455, file: !20, line: 1226, baseType: !841, size: 64, offset: 1664)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !455, file: !20, line: 1227, baseType: !844, size: 64, offset: 1728)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !455, file: !20, line: 1228, baseType: !847, size: 64, offset: 1792)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !455, file: !20, line: 1229, baseType: !499, size: 128, offset: 1856)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !455, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !455, file: !20, line: 1231, baseType: !852, size: 2496, offset: 2048)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !853)
!853 = !{!854, !855, !856, !858, !890}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !852, file: !25, line: 522, baseType: !13, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !852, file: !25, line: 523, baseType: !816, size: 320, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !852, file: !25, line: 524, baseType: !857, size: 192, offset: 384)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 192, elements: !224)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !852, file: !25, line: 525, baseType: !859, size: 1728, offset: 576)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 1728, elements: !224)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !861)
!861 = !{!862, !882, !883, !884, !885, !886, !887, !888, !889}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !860, file: !25, line: 223, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !865)
!865 = !{!866, !867, !880, !881}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !864, file: !25, line: 446, baseType: !106, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !864, file: !25, line: 447, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !878, !879}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !870, file: !25, line: 313, baseType: !547, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !870, file: !25, line: 314, baseType: !547, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !870, file: !25, line: 315, baseType: !547, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !870, file: !25, line: 316, baseType: !547, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !870, file: !25, line: 317, baseType: !683, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !870, file: !25, line: 318, baseType: !683, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !870, file: !25, line: 319, baseType: !683, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !870, file: !25, line: 320, baseType: !713, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !864, file: !25, line: 448, baseType: !128, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !864, file: !25, line: 449, baseType: !863, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !860, file: !25, line: 224, baseType: !106, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !860, file: !25, line: 226, baseType: !123, size: 128, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !860, file: !25, line: 227, baseType: !273, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !860, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !860, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !860, file: !25, line: 230, baseType: !648, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !860, file: !25, line: 231, baseType: !648, size: 64, offset: 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !860, file: !25, line: 232, baseType: !116, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !852, file: !25, line: 526, baseType: !891, size: 192, offset: 2304)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 192, elements: !224)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !455, file: !20, line: 1233, baseType: !893, size: 2368, offset: 4544)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !893, file: !20, line: 1185, baseType: !194, size: 16)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !893, file: !20, line: 1186, baseType: !194, size: 16, offset: 16)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !893, file: !20, line: 1187, baseType: !898, size: 2304, offset: 64)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 2304, elements: !224)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !900, line: 12, size: 768, elements: !901)
!900 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!901 = !{!902, !924, !926, !3114, !3115}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !899, file: !900, line: 13, baseType: !903, size: 384)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !904, line: 17, size: 384, elements: !905)
!904 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!905 = !{!906, !907, !908, !915}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !903, file: !904, line: 18, baseType: !106, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !903, file: !904, line: 19, baseType: !106, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !903, file: !904, line: 20, baseType: !909, size: 192, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !910, line: 41, baseType: !911)
!910 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !910, line: 37, size: 192, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !911, file: !910, line: 38, baseType: !154, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !911, file: !910, line: 39, baseType: !123, size: 128, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !903, file: !904, line: 22, baseType: !916, size: 128, align: 64, offset: 256)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 232, size: 128, align: 64, elements: !917)
!917 = !{!918, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !916, file: !124, line: 233, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !916, file: !124, line: 234, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !919}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !899, file: !900, line: 14, baseType: !925, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !899, file: !900, line: 15, baseType: !927, size: 64, offset: 448)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !928, line: 16, size: 64, elements: !929)
!928 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!929 = !{!930}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !927, file: !928, line: 17, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !578, line: 746, size: 58368, elements: !933)
!933 = !{!934, !942, !943, !944, !950, !951, !952, !953, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !1031, !1042, !1137, !1141, !1144, !1175, !1176, !1177, !1178, !1189, !1191, !1192, !1193, !1194, !1195, !1196, !1207, !1208, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1225, !1226, !1233, !1234, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2264, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2279, !2280, !2281, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2313, !2319, !2320, !2321, !2322, !2323, !2327, !2330, !2337, !2342, !2345, !2348, !2351, !2377, !2517, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2557, !2558, !2559, !2568, !2576, !2577, !2578, !2579, !2580, !2585, !2586, !2587, !2590, !2591, !2594, !2597, !2600, !2608, !2611, !2612, !2698, !2699, !2700, !2701, !2702, !2708, !2709, !2710, !2711, !2714, !2715, !2718, !2721, !2722, !2725, !2726, !2727, !2730, !2731, !2732, !2733, !2734, !2735, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2767, !2768, !2774, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2786, !2858, !2860, !2861, !2862, !2863, !2864, !2876, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2893, !2894, !2895}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !932, file: !578, line: 752, baseType: !935, size: 192)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !936, line: 56, size: 192, elements: !937)
!936 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!937 = !{!938, !939, !940, !941}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !935, file: !936, line: 57, baseType: !273, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !935, file: !936, line: 58, baseType: !273, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !935, file: !936, line: 59, baseType: !372, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !935, file: !936, line: 61, baseType: !372, size: 32, offset: 160)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !932, file: !578, line: 754, baseType: !13, size: 32, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !932, file: !578, line: 767, baseType: !116, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !932, file: !578, line: 768, baseType: !945, size: 32, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !946, line: 113, baseType: !947)
!946 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !946, line: 111, size: 32, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !947, file: !946, line: 112, baseType: !174, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !932, file: !578, line: 770, baseType: !13, size: 32, offset: 352)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !932, file: !578, line: 771, baseType: !13, size: 32, offset: 384)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !932, file: !578, line: 774, baseType: !106, size: 32, offset: 416)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !932, file: !578, line: 775, baseType: !954, size: 128, offset: 448)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !955, line: 58, size: 128, elements: !956)
!955 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!956 = !{!957, !963, !968, !969}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !954, file: !955, line: 59, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !959, line: 60, size: 64, elements: !960)
!959 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !958, file: !959, line: 61, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !955, line: 60, baseType: !964, size: 32, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !955, line: 60, size: 32, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !964, file: !955, line: 61, baseType: !13, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !964, file: !955, line: 62, baseType: !174, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !954, file: !955, line: 65, baseType: !192, size: 16, offset: 96)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !954, file: !955, line: 65, baseType: !192, size: 16, offset: 112)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !932, file: !578, line: 776, baseType: !13, size: 32, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !932, file: !578, line: 777, baseType: !273, size: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !932, file: !578, line: 778, baseType: !931, size: 64, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !932, file: !578, line: 787, baseType: !106, size: 32, offset: 768)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !932, file: !578, line: 788, baseType: !106, size: 32, offset: 800)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !932, file: !578, line: 790, baseType: !106, size: 32, offset: 832)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !932, file: !578, line: 792, baseType: !106, size: 32, offset: 864)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !932, file: !578, line: 793, baseType: !106, size: 32, offset: 896)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !932, file: !578, line: 794, baseType: !106, size: 32, offset: 928)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !932, file: !578, line: 795, baseType: !13, size: 32, offset: 960)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !932, file: !578, line: 797, baseType: !981, size: 2048, offset: 1024)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !578, line: 551, size: 2048, elements: !982)
!982 = !{!983, !988, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1010, !1013, !1014, !1015}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !981, file: !578, line: 553, baseType: !984, size: 128)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !578, line: 411, size: 128, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !984, file: !578, line: 412, baseType: !273, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !984, file: !578, line: 413, baseType: !372, size: 32, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !981, file: !578, line: 554, baseType: !989, size: 192, align: 64, offset: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !990, line: 5, size: 192, align: 64, elements: !991)
!990 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!991 = !{!992, !993, !995}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !989, file: !990, line: 6, baseType: !273, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !989, file: !990, line: 7, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !989, file: !990, line: 8, baseType: !994, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !981, file: !578, line: 555, baseType: !376, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !981, file: !578, line: 556, baseType: !376, size: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !981, file: !578, line: 558, baseType: !123, size: 128, offset: 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !981, file: !578, line: 559, baseType: !13, size: 32, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !981, file: !578, line: 561, baseType: !376, size: 64, offset: 640)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !981, file: !578, line: 562, baseType: !376, size: 64, offset: 704)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !981, file: !578, line: 563, baseType: !376, size: 64, offset: 768)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !981, file: !578, line: 564, baseType: !376, size: 64, offset: 832)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !981, file: !578, line: 565, baseType: !613, size: 64, offset: 896)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !981, file: !578, line: 566, baseType: !376, size: 64, offset: 960)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !981, file: !578, line: 568, baseType: !376, size: 64, offset: 1024)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !981, file: !578, line: 571, baseType: !106, size: 32, offset: 1088)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !981, file: !578, line: 572, baseType: !1009, size: 64, offset: 1152)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !981, file: !578, line: 574, baseType: !1011, size: 64, offset: 1216)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !578, line: 49, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !981, file: !578, line: 576, baseType: !1011, size: 64, offset: 1280)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !981, file: !578, line: 578, baseType: !273, size: 64, offset: 1344)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !981, file: !578, line: 588, baseType: !1016, size: 512, align: 512, offset: 1536)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !578, line: 497, size: 512, align: 512, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1016, file: !578, line: 498, baseType: !376, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1016, file: !578, line: 499, baseType: !376, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1016, file: !578, line: 500, baseType: !376, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1016, file: !578, line: 501, baseType: !372, size: 32, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1016, file: !578, line: 502, baseType: !372, size: 32, offset: 224)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1016, file: !578, line: 503, baseType: !273, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1016, file: !578, line: 504, baseType: !273, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1016, file: !578, line: 505, baseType: !273, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1016, file: !578, line: 506, baseType: !1027, size: 64, align: 64, offset: 448)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !578, line: 445, size: 64, align: 64, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1027, file: !578, line: 446, baseType: !13, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1027, file: !578, line: 447, baseType: !13, size: 32, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !932, file: !578, line: 798, baseType: !1032, size: 384, offset: 3072)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !578, line: 592, size: 384, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039, !1040}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1032, file: !578, line: 593, baseType: !123, size: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1032, file: !578, line: 594, baseType: !273, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1032, file: !578, line: 595, baseType: !273, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1032, file: !578, line: 596, baseType: !13, size: 32, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1032, file: !578, line: 597, baseType: !194, size: 16, offset: 288)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1032, file: !578, line: 598, baseType: !194, size: 16, offset: 304)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1032, file: !578, line: 600, baseType: !1041, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !932, file: !578, line: 799, baseType: !1043, size: 1792, offset: 3456)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !578, line: 610, size: 1792, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1134, !1135}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1043, file: !578, line: 611, baseType: !989, size: 192, align: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1043, file: !578, line: 618, baseType: !376, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1043, file: !578, line: 619, baseType: !376, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1043, file: !578, line: 620, baseType: !376, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1043, file: !578, line: 621, baseType: !376, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1043, file: !578, line: 622, baseType: !376, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1043, file: !578, line: 629, baseType: !613, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1043, file: !578, line: 630, baseType: !376, size: 64, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !578, line: 631, baseType: !13, size: 32, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1043, file: !578, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1043, file: !578, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1043, file: !578, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1043, file: !578, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1043, file: !578, line: 662, baseType: !1059, size: 512, offset: 704)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !31, line: 118, size: 512, elements: !1060)
!1060 = !{!1061, !1069, !1070, !1075, !1130, !1131, !1132, !1133}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1059, file: !31, line: 119, baseType: !1062, size: 256)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1063, line: 9, size: 256, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1062, file: !1063, line: 10, baseType: !989, size: 192, align: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1062, file: !1063, line: 11, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1068, line: 29, baseType: !613)
!1068 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1059, file: !31, line: 120, baseType: !1067, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1059, file: !31, line: 121, baseType: !1071, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!30, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1059, file: !31, line: 122, baseType: !1076, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !31, line: 159, size: 512, align: 512, elements: !1078)
!1078 = !{!1079, !1104, !1105, !1108, !1113, !1114, !1125, !1129}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1077, file: !31, line: 160, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !31, line: 215, size: 4608, align: 512, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1081, file: !31, line: 216, baseType: !616, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1081, file: !31, line: 217, baseType: !13, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1081, file: !31, line: 218, baseType: !13, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1081, file: !31, line: 219, baseType: !13, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1081, file: !31, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1081, file: !31, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1081, file: !31, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1081, file: !31, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1081, file: !31, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1081, file: !31, line: 226, baseType: !13, size: 32, offset: 160)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1081, file: !31, line: 227, baseType: !194, size: 16, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1081, file: !31, line: 228, baseType: !194, size: 16, offset: 208)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1081, file: !31, line: 229, baseType: !13, size: 32, offset: 224)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1081, file: !31, line: 235, baseType: !1067, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1081, file: !31, line: 236, baseType: !1074, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1081, file: !31, line: 237, baseType: !1067, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1081, file: !31, line: 238, baseType: !1074, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1081, file: !31, line: 239, baseType: !1101, size: 4096, align: 512, offset: 512)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 4096, align: 512, elements: !1102)
!1102 = !{!1103}
!1103 = !DISubrange(count: 8)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1077, file: !31, line: 161, baseType: !13, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1077, file: !31, line: 162, baseType: !1106, size: 32, offset: 96)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 32, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !257, line: 96, baseType: !106)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1077, file: !31, line: 163, baseType: !1109, size: 32, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !345, line: 274, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !345, line: 274, size: 32, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1110, file: !345, line: 274, baseType: !349, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1077, file: !31, line: 164, baseType: !1074, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1077, file: !31, line: 165, baseType: !1115, size: 128, offset: 256)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1063, line: 14, size: 128, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1115, file: !1063, line: 15, baseType: !1118, size: 128)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !990, line: 26, size: 128, elements: !1119)
!1119 = !{!1120, !1124}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1118, file: !990, line: 27, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !990, line: 12, size: 64, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1121, file: !990, line: 13, baseType: !994, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1118, file: !990, line: 28, baseType: !994, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1077, file: !31, line: 166, baseType: !1126, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!1067}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1077, file: !31, line: 167, baseType: !1067, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1059, file: !31, line: 123, baseType: !182, size: 8, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1059, file: !31, line: 124, baseType: !182, size: 8, offset: 456)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1059, file: !31, line: 125, baseType: !182, size: 8, offset: 464)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1059, file: !31, line: 126, baseType: !182, size: 8, offset: 472)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1043, file: !578, line: 671, baseType: !1059, size: 512, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1043, file: !578, line: 679, baseType: !1136, size: 64, offset: 1728)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !932, file: !578, line: 800, baseType: !1138, size: 64, offset: 5248)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !578, line: 800, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !932, file: !578, line: 809, baseType: !1142, size: 64, offset: 5312)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !578, line: 70, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !932, file: !578, line: 825, baseType: !1145, size: 2048, align: 512, offset: 5632)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !578, line: 509, size: 2048, align: 512, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1145, file: !578, line: 511, baseType: !376, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1145, file: !578, line: 512, baseType: !376, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1145, file: !578, line: 513, baseType: !376, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1145, file: !578, line: 514, baseType: !376, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1145, file: !578, line: 515, baseType: !376, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1145, file: !578, line: 516, baseType: !376, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1145, file: !578, line: 518, baseType: !376, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1145, file: !578, line: 519, baseType: !376, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1145, file: !578, line: 520, baseType: !613, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1145, file: !578, line: 522, baseType: !376, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1145, file: !578, line: 523, baseType: !376, size: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1145, file: !578, line: 524, baseType: !613, size: 64, offset: 704)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1145, file: !578, line: 526, baseType: !613, size: 64, offset: 768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1145, file: !578, line: 527, baseType: !376, size: 64, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1145, file: !578, line: 529, baseType: !376, size: 64, offset: 896)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1145, file: !578, line: 530, baseType: !376, size: 64, offset: 960)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1145, file: !578, line: 531, baseType: !376, size: 64, offset: 1024)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1145, file: !578, line: 532, baseType: !376, size: 64, offset: 1088)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1145, file: !578, line: 533, baseType: !376, size: 64, offset: 1152)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1145, file: !578, line: 535, baseType: !376, size: 64, offset: 1216)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1145, file: !578, line: 536, baseType: !376, size: 64, offset: 1280)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1145, file: !578, line: 537, baseType: !376, size: 64, offset: 1344)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1145, file: !578, line: 538, baseType: !376, size: 64, offset: 1408)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1145, file: !578, line: 539, baseType: !376, size: 64, offset: 1472)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1145, file: !578, line: 540, baseType: !376, size: 64, offset: 1536)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1145, file: !578, line: 541, baseType: !376, size: 64, offset: 1600)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1145, file: !578, line: 542, baseType: !376, size: 64, offset: 1664)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1145, file: !578, line: 543, baseType: !376, size: 64, offset: 1728)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !932, file: !578, line: 833, baseType: !13, size: 32, offset: 7680)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !932, file: !578, line: 836, baseType: !13, size: 32, offset: 7712)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !932, file: !578, line: 837, baseType: !106, size: 32, offset: 7744)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !932, file: !578, line: 838, baseType: !1179, size: 64, offset: 7808)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1182, line: 19, baseType: !1183)
!1182 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1182, line: 19, size: 64, elements: !1184)
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1183, file: !1182, line: 19, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 1)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !932, file: !578, line: 839, baseType: !1190, size: 64, offset: 7872)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !932, file: !578, line: 840, baseType: !1181, size: 64, offset: 7936)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !932, file: !578, line: 841, baseType: !116, size: 64, offset: 8000)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !932, file: !578, line: 843, baseType: !194, size: 16, offset: 8064)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !932, file: !578, line: 845, baseType: !194, size: 16, offset: 8080)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !932, file: !578, line: 848, baseType: !106, size: 32, offset: 8096)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !932, file: !578, line: 849, baseType: !1197, size: 32, offset: 8128)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !578, line: 718, size: 32, elements: !1198)
!1198 = !{!1199, !1206}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1197, file: !578, line: 724, baseType: !1200, size: 32)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !578, line: 719, size: 32, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1200, file: !578, line: 720, baseType: !182, size: 8)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1200, file: !578, line: 721, baseType: !182, size: 8, offset: 8)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1200, file: !578, line: 722, baseType: !182, size: 8, offset: 16)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1200, file: !578, line: 723, baseType: !182, size: 8, offset: 24)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1197, file: !578, line: 725, baseType: !372, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !932, file: !578, line: 850, baseType: !123, size: 128, offset: 8192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !932, file: !578, line: 851, baseType: !1209, size: 64, offset: 8320)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !578, line: 60, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !932, file: !578, line: 855, baseType: !273, size: 64, offset: 8384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !932, file: !578, line: 856, baseType: !182, size: 8, offset: 8448)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !932, file: !578, line: 857, baseType: !182, size: 8, offset: 8456)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !932, file: !578, line: 858, baseType: !106, size: 32, offset: 8480)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !932, file: !578, line: 859, baseType: !123, size: 128, offset: 8512)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !932, file: !578, line: 860, baseType: !106, size: 32, offset: 8640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !932, file: !578, line: 861, baseType: !123, size: 128, offset: 8704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !932, file: !578, line: 873, baseType: !1219, size: 256, offset: 8832)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !578, line: 376, size: 256, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1219, file: !578, line: 381, baseType: !273, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1219, file: !578, line: 384, baseType: !378, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1219, file: !578, line: 389, baseType: !378, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1219, file: !578, line: 392, baseType: !378, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !932, file: !578, line: 875, baseType: !123, size: 128, offset: 9088)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !932, file: !578, line: 877, baseType: !1227, size: 320, offset: 9216)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1228, line: 86, size: 320, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1229 = !{!1230, !1231, !1232}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1227, file: !1228, line: 87, baseType: !106, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1227, file: !1228, line: 88, baseType: !123, size: 128, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1227, file: !1228, line: 89, baseType: !123, size: 128, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !932, file: !578, line: 878, baseType: !989, size: 192, align: 64, offset: 9536)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !932, file: !578, line: 881, baseType: !1235, size: 64, offset: 9728)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1237)
!1237 = !{!1238, !2183}
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !44, line: 734, baseType: !1239, size: 10240)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1236, file: !44, line: 734, size: 10240, elements: !1240)
!1240 = !{!1241, !1245, !1258, !2047, !2048, !2049, !2050, !2051, !2052, !2059, !2060, !2061, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2100, !2102, !2105, !2152, !2153, !2154, !2157, !2158, !2159, !2162, !2163, !2164, !2170, !2171}
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !44, line: 739, baseType: !1242, size: 512, align: 512)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1239, file: !44, line: 739, size: 512, align: 512, elements: !1243)
!1243 = !{!1244}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1242, file: !44, line: 747, baseType: !174, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1239, file: !44, line: 750, baseType: !1246, size: 128, offset: 512)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1247, line: 218, size: 128, elements: !1248)
!1247 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1248 = !{!1249, !1256, !1257}
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1247, line: 219, baseType: !1250, size: 32)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !1247, line: 219, size: 32, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1250, file: !1247, line: 220, baseType: !154, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1250, file: !1247, line: 221, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1247, line: 197, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 197, elements: !507)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1246, file: !1247, line: 223, baseType: !13, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1246, file: !1247, line: 224, baseType: !116, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1239, file: !44, line: 752, baseType: !1259, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!273, !1262, !273, !273, !273, !273}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1264)
!1264 = !{!1265, !1271, !1272, !1274, !1275, !1276, !1277, !1278, !1377, !1567, !1576, !1577, !1578, !2037, !2038, !2039, !2040, !2042, !2043, !2046}
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !20, line: 995, baseType: !1266, size: 128)
!1266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !20, line: 995, size: 128, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1266, file: !20, line: 996, baseType: !958, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1266, file: !20, line: 997, baseType: !916, size: 128, align: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1266, file: !20, line: 998, baseType: !13, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1263, file: !20, line: 1005, baseType: !154, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1263, file: !20, line: 1006, baseType: !1273, size: 32, offset: 160)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !124, line: 156, baseType: !13)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1263, file: !20, line: 1007, baseType: !607, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1263, file: !20, line: 1008, baseType: !603, size: 256, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1263, file: !20, line: 1009, baseType: !464, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1263, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1263, file: !20, line: 1011, baseType: !1279, size: 256, offset: 640)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1280)
!1280 = !{!1281, !1302, !1373, !1374, !1375, !1376}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1279, file: !20, line: 949, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1283, line: 34, baseType: !1284)
!1283 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1283, line: 25, size: 64, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1284, file: !1283, line: 26, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1288, line: 27, baseType: !1289)
!1288 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1288, line: 13, size: 64, elements: !1290)
!1290 = !{!1291, !1301}
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1288, line: 14, baseType: !1292, size: 32)
!1292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1289, file: !1288, line: 14, size: 32, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1292, file: !1288, line: 15, baseType: !174, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1288, line: 16, baseType: !1296, size: 32)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1292, file: !1288, line: 16, size: 32, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1296, file: !1288, line: 18, baseType: !182, size: 8)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1296, file: !1288, line: 19, baseType: !1300, size: 24, offset: 8)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 24, elements: !224)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1289, file: !1288, line: 26, baseType: !166, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1279, file: !20, line: 950, baseType: !1303, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1313, !1314, !1315, !1316}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1304, file: !36, line: 61, baseType: !945, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1304, file: !36, line: 62, baseType: !13, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1304, file: !36, line: 63, baseType: !154, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1304, file: !36, line: 65, baseType: !1310, size: 256, offset: 128)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 256, elements: !1311)
!1311 = !{!1312}
!1312 = !DISubrange(count: 4)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1304, file: !36, line: 66, baseType: !495, size: 64, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1304, file: !36, line: 68, baseType: !909, size: 192, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1304, file: !36, line: 69, baseType: !916, size: 128, align: 64, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1304, file: !36, line: 70, baseType: !1317, offset: 768)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, elements: !1371)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1318, file: !36, line: 55, baseType: !106, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1318, file: !36, line: 56, baseType: !1322, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1324, line: 26, size: 1152, elements: !1325)
!1324 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1325 = !{!1326, !1339, !1340, !1341, !1342, !1346, !1347, !1348, !1351, !1354, !1358, !1359, !1370}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1323, file: !1324, line: 27, baseType: !1327, size: 192)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1328, line: 19, size: 192, elements: !1329)
!1328 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1329 = !{!1330, !1337, !1338}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1327, file: !1328, line: 20, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1332, line: 296, size: 128, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1333 = !{!1334, !1335, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1331, file: !1332, line: 297, baseType: !154, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1331, file: !1332, line: 299, baseType: !668, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1331, file: !1332, line: 300, baseType: !116, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1327, file: !1328, line: 21, baseType: !13, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1327, file: !1328, line: 22, baseType: !13, size: 32, offset: 160)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1323, file: !1324, line: 28, baseType: !916, size: 128, align: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1323, file: !1324, line: 29, baseType: !13, size: 32, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1323, file: !1324, line: 30, baseType: !931, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1323, file: !1324, line: 31, baseType: !1343, size: 64, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1345, line: 11, flags: DIFlagFwdDecl)
!1345 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1323, file: !1324, line: 32, baseType: !13, size: 32, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1323, file: !1324, line: 33, baseType: !1322, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1323, file: !1324, line: 35, baseType: !1349, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1324, line: 17, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1323, file: !1324, line: 37, baseType: !1352, size: 64, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !310, line: 18, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1323, file: !1324, line: 38, baseType: !1355, size: 64, offset: 768)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1357, line: 16, flags: DIFlagFwdDecl)
!1357 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1323, file: !1324, line: 39, baseType: !106, size: 32, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1323, file: !1324, line: 40, baseType: !1360, size: 192, offset: 896)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1361, line: 9, size: 192, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1362 = !{!1363, !1364, !1368, !1369}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1360, file: !1361, line: 10, baseType: !607, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1360, file: !1361, line: 11, baseType: !1365, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1367)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1361, line: 7, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1360, file: !1361, line: 12, baseType: !13, size: 32, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1360, file: !1361, line: 13, baseType: !945, size: 32, offset: 160)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1323, file: !1324, line: 42, baseType: !106, size: 32, offset: 1088)
!1371 = !{!1372}
!1372 = !DISubrange(count: -1)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1279, file: !20, line: 951, baseType: !35, size: 32, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1279, file: !20, line: 952, baseType: !309, size: 32, offset: 160)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1279, file: !20, line: 952, baseType: !309, size: 32, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1279, file: !20, line: 953, baseType: !106, size: 32, offset: 224)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1263, file: !20, line: 1012, baseType: !1378, size: 64, offset: 896)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1381, line: 110, size: 1472, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1399, !1400, !1401, !1402, !1403, !1404, !1517, !1518, !1519, !1520, !1521, !1552, !1553, !1554, !1562}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1380, file: !1381, line: 111, baseType: !607, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1380, file: !1381, line: 112, baseType: !309, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1380, file: !1381, line: 113, baseType: !318, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1380, file: !1381, line: 114, baseType: !309, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1380, file: !1381, line: 115, baseType: !318, size: 32, offset: 160)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1380, file: !1381, line: 116, baseType: !309, size: 32, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1380, file: !1381, line: 117, baseType: !318, size: 32, offset: 224)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1380, file: !1381, line: 118, baseType: !309, size: 32, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1380, file: !1381, line: 119, baseType: !318, size: 32, offset: 288)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1380, file: !1381, line: 120, baseType: !13, size: 32, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1380, file: !1381, line: 121, baseType: !1394, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1395, line: 24, baseType: !1396)
!1395 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1395, line: 24, size: 64, elements: !1397)
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1396, file: !1395, line: 24, baseType: !376, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1380, file: !1381, line: 122, baseType: !1394, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1380, file: !1381, line: 123, baseType: !1394, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1380, file: !1381, line: 124, baseType: !1394, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1380, file: !1381, line: 125, baseType: !1394, size: 64, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1380, file: !1381, line: 127, baseType: !186, size: 8, offset: 704)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1380, file: !1381, line: 129, baseType: !1405, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1407, line: 195, size: 1728, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1408 = !{!1409, !1410, !1415, !1420, !1421, !1424, !1425, !1430, !1431, !1432, !1433, !1436, !1437, !1438, !1440, !1441, !1481, !1502}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1406, file: !1407, line: 196, baseType: !945, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1406, file: !1407, line: 197, baseType: !1411, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1407, line: 28, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !124, line: 104, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !183, line: 20, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !185, line: 26, baseType: !106)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 198, baseType: !1416, size: 192, offset: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 198, size: 192, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1416, file: !1407, line: 199, baseType: !123, size: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1416, file: !1407, line: 200, baseType: !989, size: 192, align: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1406, file: !1407, line: 205, baseType: !816, size: 320, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1406, file: !1407, line: 206, baseType: !1422, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1407, line: 206, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1406, file: !1407, line: 207, baseType: !116, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 208, baseType: !1426, size: 64, offset: 704)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 208, size: 64, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1426, file: !1407, line: 209, baseType: !656, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1426, file: !1407, line: 210, baseType: !656, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1406, file: !1407, line: 212, baseType: !656, size: 64, offset: 768)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1406, file: !1407, line: 213, baseType: !309, size: 32, offset: 832)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1406, file: !1407, line: 214, baseType: !318, size: 32, offset: 864)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1406, file: !1407, line: 215, baseType: !1434, size: 32, offset: 896)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1407, line: 31, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !124, line: 110, baseType: !372)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1406, file: !1407, line: 216, baseType: !194, size: 16, offset: 928)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1406, file: !1407, line: 217, baseType: !194, size: 16, offset: 944)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1406, file: !1407, line: 221, baseType: !1439, size: 16, offset: 960)
!1439 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !1407, line: 228, baseType: !273, size: 64, offset: 1024)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 245, baseType: !1442, size: 320, offset: 1088)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 245, size: 320, elements: !1443)
!1443 = !{!1444, !1473}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1442, file: !1407, line: 246, baseType: !1445, size: 320)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1407, line: 114, size: 320, elements: !1446)
!1446 = !{!1447, !1448, !1460, !1463, !1472}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1445, file: !1407, line: 116, baseType: !273, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1407, line: 117, baseType: !1449, size: 64, offset: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1407, line: 117, size: 64, elements: !1450)
!1450 = !{!1451, !1459}
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1407, line: 118, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1449, file: !1407, line: 118, size: 64, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1452, file: !1407, line: 120, baseType: !192, size: 16)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1452, file: !1407, line: 121, baseType: !1456, size: 48, offset: 16)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1457)
!1457 = !{!1458}
!1458 = !DISubrange(count: 6)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1449, file: !1407, line: 127, baseType: !273, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1445, file: !1407, line: 129, baseType: !1461, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1407, line: 102, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1445, file: !1407, line: 130, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1407, line: 108, size: 192, elements: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1465, file: !1407, line: 109, baseType: !916, size: 128, align: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1465, file: !1407, line: 110, baseType: !945, size: 32, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1465, file: !1407, line: 111, baseType: !1470, size: 8, offset: 160)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 35, baseType: !1471)
!1471 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1445, file: !1407, line: 131, baseType: !117, size: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1407, line: 247, baseType: !1474, size: 320)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !1407, line: 247, size: 320, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1480}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1474, file: !1407, line: 248, baseType: !273, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1474, file: !1407, line: 249, baseType: !273, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1474, file: !1407, line: 250, baseType: !1461, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1474, file: !1407, line: 251, baseType: !1464, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1474, file: !1407, line: 252, baseType: !115, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 260, baseType: !1482, size: 256, offset: 1408)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 260, size: 256, elements: !1483)
!1483 = !{!1484, !1490}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1482, file: !1407, line: 261, baseType: !1485, size: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1407, line: 134, size: 256, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1485, file: !1407, line: 135, baseType: !116, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1485, file: !1407, line: 136, baseType: !1489, size: 256)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 256, elements: !1311)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !1407, line: 262, baseType: !1491, size: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1482, file: !1407, line: 262, size: 256, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1491, file: !1407, line: 264, baseType: !123, size: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1491, file: !1407, line: 265, baseType: !1495, size: 128, offset: 128)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1496, line: 22, size: 128, elements: !1497)
!1496 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1497 = !{!1498, !1501}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1495, file: !1496, line: 23, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1496, line: 23, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1495, file: !1496, line: 24, baseType: !273, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1406, file: !1407, line: 280, baseType: !1503, size: 64, offset: 1664)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1407, line: 176, size: 192, elements: !1505)
!1505 = !{!1506, !1515, !1516}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1504, file: !1407, line: 177, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1407, line: 171, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!106, !1405, !1511, !1513, !1405}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1504, file: !1407, line: 178, baseType: !1405, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1504, file: !1407, line: 179, baseType: !1461, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1380, file: !1381, line: 130, baseType: !1405, size: 64, offset: 832)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1380, file: !1381, line: 131, baseType: !1405, size: 64, offset: 896)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1380, file: !1381, line: 132, baseType: !1405, size: 64, offset: 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1380, file: !1381, line: 135, baseType: !116, size: 64, offset: 1024)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1380, file: !1381, line: 137, baseType: !1522, size: 64, offset: 1088)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1524, line: 14, size: 1088, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1525 = !{!1526, !1527, !1536, !1537, !1538, !1539, !1540, !1541}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1523, file: !1524, line: 15, baseType: !945, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1523, file: !1524, line: 17, baseType: !1528, size: 320, offset: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1529, line: 22, size: 320, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1530 = !{!1531, !1532, !1533, !1534}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !1529, line: 23, baseType: !616, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1528, file: !1529, line: 24, baseType: !613, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1528, file: !1529, line: 26, baseType: !123, size: 128, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1528, file: !1529, line: 28, baseType: !1535, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1523, file: !1524, line: 19, baseType: !273, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1523, file: !1524, line: 20, baseType: !607, size: 64, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1523, file: !1524, line: 23, baseType: !499, size: 128, offset: 512)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1523, file: !1524, line: 24, baseType: !309, size: 32, offset: 640)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1523, file: !1524, line: 29, baseType: !607, size: 64, offset: 704)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1523, file: !1524, line: 36, baseType: !1542, size: 320, offset: 768)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1543, line: 15, size: 320, elements: !1544)
!1543 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1542, file: !1543, line: 16, baseType: !616, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1542, file: !1543, line: 18, baseType: !106, size: 32, offset: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1542, file: !1543, line: 19, baseType: !106, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1542, file: !1543, line: 20, baseType: !106, size: 32, offset: 96)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1542, file: !1543, line: 21, baseType: !106, size: 32, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1542, file: !1543, line: 22, baseType: !273, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !1543, line: 23, baseType: !273, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1380, file: !1381, line: 138, baseType: !1352, size: 64, offset: 1152)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1380, file: !1381, line: 139, baseType: !1355, size: 64, offset: 1216)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1380, file: !1381, line: 140, baseType: !1555, size: 64, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1381, line: 25, size: 64, elements: !1557)
!1557 = !{!1558, !1559, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1556, file: !1381, line: 26, baseType: !174, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1556, file: !1381, line: 27, baseType: !106, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1556, file: !1381, line: 28, baseType: !1561, offset: 64)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, elements: !1371)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1380, file: !1381, line: 142, baseType: !1563, size: 128, offset: 1344)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1380, file: !1381, line: 142, size: 128, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1563, file: !1381, line: 143, baseType: !106, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1563, file: !1381, line: 144, baseType: !916, size: 128, align: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1263, file: !20, line: 1013, baseType: !1568, size: 256, offset: 960)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1568, file: !20, line: 971, baseType: !273, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1568, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1568, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1568, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1568, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1568, file: !20, line: 976, baseType: !464, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1263, file: !20, line: 1014, baseType: !728, size: 128, offset: 1216)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1263, file: !20, line: 1015, baseType: !303, size: 64, offset: 1344)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1263, file: !20, line: 1016, baseType: !1579, size: 64, offset: 1408)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !1582)
!1582 = !{!1583, !1584, !1588, !1593, !1597, !1625, !1626, !1632, !1645, !1653, !1657, !1658, !1959, !1960, !1964, !1969, !1970, !1974, !1978, !1984, !1985, !1989, !1990, !1996, !2000, !2004, !2010, !2014, !2018, !2022, !2026, !2027, !2033}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1581, file: !20, line: 1915, baseType: !128, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1581, file: !20, line: 1916, baseType: !1585, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!464, !1262, !464, !106}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1581, file: !20, line: 1917, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!255, !1262, !115, !270, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1581, file: !20, line: 1918, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!255, !1262, !117, !270, !1592}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1581, file: !20, line: 1919, baseType: !1598, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!255, !1601, !1623}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1610, !1611, !1612, !1613}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1602, file: !20, line: 374, baseType: !1262, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1602, file: !20, line: 375, baseType: !464, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1602, file: !20, line: 376, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1601, !259}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1602, file: !20, line: 377, baseType: !116, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1602, file: !20, line: 378, baseType: !106, size: 32, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1602, file: !20, line: 379, baseType: !192, size: 16, offset: 288)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !20, line: 380, baseType: !1614, size: 64, offset: 320)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !20, line: 380, size: 64, elements: !1615)
!1615 = !{!1616, !1619}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1614, file: !20, line: 386, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1614, file: !20, line: 395, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!255, !116}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !20, line: 69, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1581, file: !20, line: 1920, baseType: !1598, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1581, file: !20, line: 1921, baseType: !1627, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!106, !1601, !1630, !13}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1581, file: !20, line: 1923, baseType: !1633, size: 64, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!106, !1262, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !1638)
!1638 = !{!1639, !1644}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1637, file: !20, line: 1859, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!1470, !1636, !117, !106, !464, !376, !13}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1637, file: !20, line: 1860, baseType: !464, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1581, file: !20, line: 1924, baseType: !1646, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!1649, !1262, !1651}
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1650, line: 59, baseType: !13)
!1650 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !479, line: 31, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1581, file: !20, line: 1925, baseType: !1654, size: 64, offset: 576)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!259, !1262, !13, !273}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1581, file: !20, line: 1926, baseType: !1654, size: 64, offset: 640)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1581, file: !20, line: 1927, baseType: !1659, size: 64, offset: 704)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!106, !1262, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !1664)
!1664 = !{!1665, !1674, !1675, !1683, !1690, !1691, !1696, !1697, !1702, !1703, !1706, !1952, !1953, !1954, !1955, !1956, !1957}
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !44, line: 628, baseType: !1666, size: 128)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1663, file: !44, line: 628, size: 128, elements: !1667)
!1667 = !{!1668, !1673}
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !44, line: 629, baseType: !1669, size: 128)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !44, line: 629, size: 128, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1669, file: !44, line: 631, baseType: !273, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1669, file: !44, line: 632, baseType: !273, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1666, file: !44, line: 635, baseType: !916, size: 128, align: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1663, file: !44, line: 639, baseType: !1235, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1663, file: !44, line: 640, baseType: !1676, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1677, line: 297, baseType: !1678)
!1677 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1677, line: 297, size: 64, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1678, file: !1677, line: 297, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1682, line: 19, baseType: !273)
!1682 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !44, line: 646, baseType: !1684, size: 64, offset: 256)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1663, file: !44, line: 646, size: 64, elements: !1685)
!1685 = !{!1686, !1689}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1684, file: !44, line: 647, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !273)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1684, file: !44, line: 648, baseType: !1688, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1663, file: !44, line: 666, baseType: !106, size: 32, offset: 320)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1663, file: !44, line: 667, baseType: !1692, size: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !1694)
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1693, file: !44, line: 580, baseType: !816, size: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1663, file: !44, line: 670, baseType: !1470, size: 8, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1663, file: !44, line: 681, baseType: !1698, size: 256, offset: 512)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !44, line: 678, size: 256, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1698, file: !44, line: 679, baseType: !989, size: 192, align: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1698, file: !44, line: 680, baseType: !273, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1663, file: !44, line: 689, baseType: !123, size: 128, offset: 768)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1663, file: !44, line: 691, baseType: !1704, size: 64, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1663, file: !44, line: 694, baseType: !1707, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1710, line: 563, size: 1024, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1711 = !{!1712, !1716, !1717, !1721, !1725, !1729, !1916, !1920, !1924, !1928, !1929, !1930, !1934, !1938, !1944, !1948}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1709, file: !1710, line: 564, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !1662}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1709, file: !1710, line: 569, baseType: !1713, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1709, file: !1710, line: 571, baseType: !1718, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!106, !1662, !273}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1709, file: !1710, line: 572, baseType: !1722, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!106, !1662}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1709, file: !1710, line: 578, baseType: !1726, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!106, !1662, !273, !273, !273}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1709, file: !1710, line: 580, baseType: !1730, size: 64, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1710, line: 512, size: 896, elements: !1736)
!1736 = !{!1737, !1745, !1746, !1753, !1760, !1770, !1909, !1910, !1912, !1914}
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1710, line: 513, baseType: !1738, size: 320)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1735, file: !1710, line: 513, size: 320, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1743, !1744}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1738, file: !1710, line: 514, baseType: !1662, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1738, file: !1710, line: 515, baseType: !668, size: 32, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1738, file: !1710, line: 516, baseType: !273, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1738, file: !1710, line: 517, baseType: !273, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1738, file: !1710, line: 518, baseType: !273, size: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1735, file: !1710, line: 520, baseType: !43, size: 32, offset: 320)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1735, file: !1710, line: 522, baseType: !1747, size: 64, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1682, line: 22, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1682, line: 22, size: 64, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1749, file: !1682, line: 22, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1682, line: 15, baseType: !273)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1735, file: !1710, line: 524, baseType: !1754, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1677, line: 372, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1677, line: 372, size: 64, elements: !1757)
!1757 = !{!1758}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1756, file: !1677, line: 372, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1682, line: 16, baseType: !273)
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1710, line: 527, baseType: !1761, size: 64, offset: 512)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !1710, line: 527, size: 64, elements: !1762)
!1762 = !{!1763, !1769}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1761, file: !1710, line: 528, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1682, line: 21, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1682, line: 21, size: 64, elements: !1766)
!1766 = !{!1767}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1765, file: !1682, line: 21, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1682, line: 14, baseType: !273)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1761, file: !1710, line: 529, baseType: !1748, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1735, file: !1710, line: 534, baseType: !1771, size: 64, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !1773)
!1773 = !{!1774, !1775, !1903, !1908}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1772, file: !44, line: 75, baseType: !273, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !44, line: 83, baseType: !1776, size: 320, offset: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !44, line: 83, size: 320, elements: !1777)
!1777 = !{!1778, !1799, !1813, !1817, !1902}
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !44, line: 84, baseType: !1779, size: 320)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !44, line: 84, size: 320, elements: !1780)
!1780 = !{!1781, !1792, !1793, !1798}
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !44, line: 90, baseType: !1782, size: 128)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1779, file: !44, line: 90, size: 128, elements: !1783)
!1783 = !{!1784, !1785, !1790, !1791}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1782, file: !44, line: 91, baseType: !123, size: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !44, line: 94, baseType: !1786, size: 128)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1782, file: !44, line: 94, size: 128, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1786, file: !44, line: 96, baseType: !116, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1786, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1782, file: !44, line: 102, baseType: !123, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1782, file: !44, line: 103, baseType: !123, size: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1779, file: !44, line: 106, baseType: !299, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !44, line: 107, baseType: !1794, size: 64, offset: 192)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1779, file: !44, line: 107, size: 64, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1794, file: !44, line: 108, baseType: !273, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1794, file: !44, line: 109, baseType: !273, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1779, file: !44, line: 117, baseType: !273, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !44, line: 119, baseType: !1800, size: 320)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !44, line: 119, size: 320, elements: !1801)
!1801 = !{!1802, !1803, !1806, !1807, !1808}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1800, file: !44, line: 124, baseType: !273, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1800, file: !44, line: 125, baseType: !1804, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1800, file: !44, line: 126, baseType: !273, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1800, file: !44, line: 127, baseType: !273, size: 64, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !44, line: 128, baseType: !1809, size: 64, offset: 256)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !44, line: 128, size: 64, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1809, file: !44, line: 133, baseType: !273, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1809, file: !44, line: 138, baseType: !607, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !44, line: 141, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !44, line: 141, size: 64, elements: !1815)
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1814, file: !44, line: 142, baseType: !273, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !44, line: 144, baseType: !1818, size: 128)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !44, line: 144, size: 128, elements: !1819)
!1819 = !{!1820, !1901}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1818, file: !44, line: 146, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !60, line: 126, size: 1216, elements: !1823)
!1823 = !{!1824, !1834, !1855, !1866, !1867, !1868, !1869, !1883, !1884, !1885}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1822, file: !60, line: 127, baseType: !1825, size: 384)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !60, line: 21, size: 384, elements: !1826)
!1826 = !{!1827, !1828, !1830, !1831, !1832, !1833}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1825, file: !60, line: 22, baseType: !273, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1825, file: !60, line: 23, baseType: !1829, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1825, file: !60, line: 24, baseType: !1829, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1825, file: !60, line: 25, baseType: !273, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1825, file: !60, line: 26, baseType: !273, size: 64, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1825, file: !60, line: 27, baseType: !273, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1822, file: !60, line: 128, baseType: !1835, size: 128, offset: 384)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1836, line: 105, size: 128, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1835, file: !1836, line: 110, baseType: !273, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1835, file: !1836, line: 118, baseType: !1840, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1836, line: 95, size: 448, elements: !1842)
!1842 = !{!1843, !1844, !1850, !1851, !1852, !1853, !1854}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1841, file: !1836, line: 96, baseType: !607, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1841, file: !1836, line: 97, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1836, line: 60, baseType: !1847)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1841, file: !1836, line: 98, baseType: !1845, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1841, file: !1836, line: 99, baseType: !1470, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1841, file: !1836, line: 100, baseType: !1470, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1841, file: !1836, line: 101, baseType: !916, size: 128, align: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1841, file: !1836, line: 102, baseType: !1849, size: 64, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1822, file: !60, line: 129, baseType: !1856, size: 256, offset: 512)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1857, line: 26, size: 256, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1856, file: !1857, line: 27, baseType: !13, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1856, file: !1857, line: 28, baseType: !1861, size: 192, offset: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1862, line: 43, size: 192, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !1862, line: 44, baseType: !616, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1861, file: !1862, line: 45, baseType: !123, size: 128, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1822, file: !60, line: 130, baseType: !59, size: 32, offset: 768)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1822, file: !60, line: 131, baseType: !13, size: 32, offset: 800)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1822, file: !60, line: 132, baseType: !273, size: 64, offset: 832)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1822, file: !60, line: 133, baseType: !1870, size: 64, offset: 896)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !60, line: 77, size: 192, elements: !1873)
!1873 = !{!1874, !1878, !1879}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1872, file: !60, line: 83, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1771}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1872, file: !60, line: 89, baseType: !1730, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1872, file: !60, line: 100, baseType: !1880, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!106, !1821, !273, !273, !106}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1822, file: !60, line: 134, baseType: !116, size: 64, offset: 960)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1822, file: !60, line: 135, baseType: !106, size: 32, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !60, line: 136, baseType: !1886, size: 128, offset: 1088)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !60, line: 136, size: 128, elements: !1887)
!1887 = !{!1888, !1894}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1886, file: !60, line: 137, baseType: !1889, size: 128)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1890, line: 6, size: 128, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1889, file: !1890, line: 7, baseType: !376, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1889, file: !1890, line: 8, baseType: !376, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !60, line: 138, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !60, line: 138, elements: !1896)
!1896 = !{!1897, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1895, file: !60, line: 138, baseType: !1898)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !60, line: 138, elements: !507)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1895, file: !60, line: 138, baseType: !1900)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1889, elements: !1371)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1818, file: !44, line: 147, baseType: !116, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1776, file: !44, line: 161, baseType: !916, size: 128, align: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !44, line: 164, baseType: !1904, size: 32, offset: 384)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !44, line: 164, size: 32, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1904, file: !44, line: 169, baseType: !174, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1904, file: !44, line: 177, baseType: !13, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1772, file: !44, line: 181, baseType: !174, size: 32, offset: 416)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1735, file: !1710, line: 535, baseType: !1771, size: 64, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1735, file: !1710, line: 541, baseType: !1911, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1735, file: !1710, line: 545, baseType: !1913, size: 64, offset: 768)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1735, file: !1710, line: 549, baseType: !1915, size: 64, offset: 832)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1677, line: 520, baseType: !1771)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1709, file: !1710, line: 581, baseType: !1917, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!1733, !1734, !13}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1709, file: !1710, line: 582, baseType: !1921, size: 64, offset: 448)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1733, !1734, !273, !273}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1709, file: !1710, line: 584, baseType: !1925, size: 64, offset: 512)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!273, !1662}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1709, file: !1710, line: 588, baseType: !1730, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1709, file: !1710, line: 591, baseType: !1730, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1709, file: !1710, line: 597, baseType: !1931, size: 64, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!106, !1662, !273, !116, !106, !106}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !1710, line: 603, baseType: !1935, size: 64, offset: 768)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!117, !1662}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1709, file: !1710, line: 613, baseType: !1939, size: 64, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!106, !1662, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !44, line: 717, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1709, file: !1710, line: 625, baseType: !1945, size: 64, offset: 896)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1942, !1662, !273}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1709, file: !1710, line: 633, baseType: !1949, size: 64, offset: 960)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1771, !1662, !273}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1663, file: !44, line: 697, baseType: !273, size: 64, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1663, file: !44, line: 699, baseType: !1262, size: 64, offset: 1088)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1663, file: !44, line: 700, baseType: !116, size: 64, offset: 1152)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1663, file: !44, line: 711, baseType: !607, size: 64, offset: 1216)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1663, file: !44, line: 717, baseType: !1942, size: 64, offset: 1280)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1663, file: !44, line: 722, baseType: !1958, offset: 1344)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !507)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1581, file: !20, line: 1928, baseType: !273, size: 64, offset: 768)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1581, file: !20, line: 1929, baseType: !1961, size: 64, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!106, !303, !1262}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1581, file: !20, line: 1930, baseType: !1965, size: 64, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!106, !1262, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !116)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1581, file: !20, line: 1931, baseType: !1961, size: 64, offset: 960)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1581, file: !20, line: 1932, baseType: !1971, size: 64, offset: 1024)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!106, !1262, !464, !464, !106}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1581, file: !20, line: 1933, baseType: !1975, size: 64, offset: 1088)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!106, !106, !1262, !106}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1581, file: !20, line: 1934, baseType: !1979, size: 64, offset: 1152)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!106, !1262, !106, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1581, file: !20, line: 1935, baseType: !1259, size: 64, offset: 1216)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1581, file: !20, line: 1936, baseType: !1986, size: 64, offset: 1280)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!106, !106}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1581, file: !20, line: 1937, baseType: !1979, size: 64, offset: 1344)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1581, file: !20, line: 1938, baseType: !1991, size: 64, offset: 1408)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!255, !1994, !1262, !1592, !270, !13}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !578, line: 59, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1581, file: !20, line: 1939, baseType: !1997, size: 64, offset: 1472)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!255, !1262, !1592, !1994, !270, !13}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1581, file: !20, line: 1940, baseType: !2001, size: 64, offset: 1536)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !1262}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1581, file: !20, line: 1941, baseType: !2005, size: 64, offset: 1600)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!106, !1262, !106, !2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1581, file: !20, line: 1942, baseType: !2011, size: 64, offset: 1664)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!259, !1262, !106, !464, !464}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1581, file: !20, line: 1944, baseType: !2015, size: 64, offset: 1728)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !576, !1262}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1581, file: !20, line: 1948, baseType: !2019, size: 64, offset: 1792)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!255, !1262, !464, !1262, !464, !270, !13}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1581, file: !20, line: 1950, baseType: !2023, size: 64, offset: 1856)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!464, !1262, !464, !1262, !464, !464, !13}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1581, file: !20, line: 1953, baseType: !1971, size: 64, offset: 1920)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1581, file: !20, line: 1954, baseType: !2028, size: 64, offset: 1984)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!106, !2031, !13}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1581, file: !20, line: 1955, baseType: !2034, size: 64, offset: 2048)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!106, !2031, !1630, !13}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1263, file: !20, line: 1018, baseType: !376, size: 64, offset: 1472)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1263, file: !20, line: 1020, baseType: !116, size: 64, offset: 1536)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1263, file: !20, line: 1023, baseType: !116, size: 64, offset: 1600)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1263, file: !20, line: 1027, baseType: !2041, size: 64, offset: 1664)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1263, file: !20, line: 1029, baseType: !299, size: 64, offset: 1728)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1263, file: !20, line: 1030, baseType: !2044, size: 32, offset: 1792)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2045, line: 8, baseType: !372)
!2045 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1263, file: !20, line: 1031, baseType: !2044, size: 32, offset: 1824)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1239, file: !44, line: 756, baseType: !273, size: 64, offset: 704)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1239, file: !44, line: 757, baseType: !273, size: 64, offset: 768)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1239, file: !44, line: 760, baseType: !273, size: 64, offset: 832)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1239, file: !44, line: 761, baseType: !273, size: 64, offset: 896)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1239, file: !44, line: 763, baseType: !273, size: 64, offset: 960)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1239, file: !44, line: 764, baseType: !2053, size: 64, offset: 1024)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1677, line: 299, baseType: !2055)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1677, line: 299, size: 64, elements: !2056)
!2056 = !{!2057}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2055, file: !1677, line: 299, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1682, line: 18, baseType: !273)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1239, file: !44, line: 773, baseType: !174, size: 32, offset: 1088)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1239, file: !44, line: 785, baseType: !174, size: 32, offset: 1120)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1239, file: !44, line: 795, baseType: !2062, size: 64, offset: 1152)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2063, file: !44, line: 727, baseType: !376, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2063, file: !44, line: 728, baseType: !106, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1239, file: !44, line: 801, baseType: !273, size: 64, offset: 1216)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1239, file: !44, line: 804, baseType: !607, size: 64, offset: 1280)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1239, file: !44, line: 806, baseType: !106, size: 32, offset: 1344)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1239, file: !44, line: 808, baseType: !154, size: 32, offset: 1376)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1239, file: !44, line: 823, baseType: !816, size: 320, offset: 1408)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1239, file: !44, line: 825, baseType: !123, size: 128, offset: 1728)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1239, file: !44, line: 845, baseType: !106, size: 32, offset: 1856)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1239, file: !44, line: 849, baseType: !273, size: 64, offset: 1920)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1239, file: !44, line: 850, baseType: !273, size: 64, offset: 1984)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1239, file: !44, line: 852, baseType: !273, size: 64, offset: 2048)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1239, file: !44, line: 853, baseType: !273, size: 64, offset: 2112)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1239, file: !44, line: 854, baseType: !609, size: 64, offset: 2176)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1239, file: !44, line: 855, baseType: !273, size: 64, offset: 2240)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1239, file: !44, line: 856, baseType: !273, size: 64, offset: 2304)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1239, file: !44, line: 857, baseType: !273, size: 64, offset: 2368)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1239, file: !44, line: 858, baseType: !273, size: 64, offset: 2432)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1239, file: !44, line: 865, baseType: !349, size: 32, offset: 2496)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1239, file: !44, line: 867, baseType: !154, size: 32, offset: 2528)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1239, file: !44, line: 869, baseType: !273, size: 64, offset: 2560)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1239, file: !44, line: 869, baseType: !273, size: 64, offset: 2624)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1239, file: !44, line: 869, baseType: !273, size: 64, offset: 2688)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1239, file: !44, line: 869, baseType: !273, size: 64, offset: 2752)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1239, file: !44, line: 870, baseType: !273, size: 64, offset: 2816)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1239, file: !44, line: 870, baseType: !273, size: 64, offset: 2880)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1239, file: !44, line: 870, baseType: !273, size: 64, offset: 2944)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1239, file: !44, line: 871, baseType: !273, size: 64, offset: 3008)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1239, file: !44, line: 871, baseType: !273, size: 64, offset: 3072)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1239, file: !44, line: 871, baseType: !273, size: 64, offset: 3136)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1239, file: !44, line: 871, baseType: !273, size: 64, offset: 3200)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1239, file: !44, line: 873, baseType: !2097, size: 3328, offset: 3264)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 3328, elements: !2098)
!2098 = !{!2099}
!2099 = !DISubrange(count: 52)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1239, file: !44, line: 875, baseType: !2101, size: 1280, offset: 6592)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1528, size: 1280, elements: !1311)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1239, file: !44, line: 877, baseType: !2103, size: 64, offset: 7872)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1239, file: !44, line: 880, baseType: !2106, size: 1088, offset: 7936)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2107, line: 72, baseType: !2108)
!2107 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2107, line: 23, size: 1088, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2117, !2118, !2119, !2120, !2147, !2148, !2149}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2108, file: !2107, line: 28, baseType: !376, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2108, file: !2107, line: 38, baseType: !609, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2108, file: !2107, line: 40, baseType: !273, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2108, file: !2107, line: 43, baseType: !816, size: 320, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2108, file: !2107, line: 44, baseType: !2115, size: 64, offset: 512)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2107, line: 44, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !2107, line: 48, baseType: !273, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2108, file: !2107, line: 59, baseType: !603, size: 256, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2108, file: !2107, line: 60, baseType: !116, size: 64, offset: 896)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2108, file: !2107, line: 61, baseType: !2121, size: 64, offset: 960)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2124, line: 13, size: 1216, elements: !2125)
!2124 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2123, file: !2124, line: 14, baseType: !116, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2123, file: !2124, line: 15, baseType: !273, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2123, file: !2124, line: 17, baseType: !273, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2123, file: !2124, line: 17, baseType: !273, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2123, file: !2124, line: 18, baseType: !273, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2123, file: !2124, line: 18, baseType: !273, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2123, file: !2124, line: 19, baseType: !2133, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2123, file: !2124, line: 21, baseType: !259, size: 64, offset: 448)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2123, file: !2124, line: 23, baseType: !259, size: 64, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2123, file: !2124, line: 24, baseType: !259, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2123, file: !2124, line: 25, baseType: !259, size: 64, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2123, file: !2124, line: 26, baseType: !259, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2123, file: !2124, line: 27, baseType: !259, size: 64, offset: 768)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2123, file: !2124, line: 28, baseType: !259, size: 64, offset: 832)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2123, file: !2124, line: 29, baseType: !259, size: 64, offset: 896)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2123, file: !2124, line: 30, baseType: !259, size: 64, offset: 960)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2123, file: !2124, line: 31, baseType: !259, size: 64, offset: 1024)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2123, file: !2124, line: 32, baseType: !259, size: 64, offset: 1088)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2123, file: !2124, line: 33, baseType: !259, size: 64, offset: 1152)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2108, file: !2107, line: 63, baseType: !174, size: 32, offset: 1024)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2108, file: !2107, line: 69, baseType: !192, size: 16, offset: 1056)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2108, file: !2107, line: 70, baseType: !2150, size: 16, offset: 1072)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !183, line: 18, baseType: !2151)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !185, line: 23, baseType: !1439)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !44, line: 882, baseType: !273, size: 64, offset: 9024)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1239, file: !44, line: 885, baseType: !154, size: 32, offset: 9088)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1239, file: !44, line: 886, baseType: !2155, size: 64, offset: 9152)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1239, file: !44, line: 901, baseType: !1352, size: 64, offset: 9216)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1239, file: !44, line: 904, baseType: !1262, size: 64, offset: 9280)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1239, file: !44, line: 906, baseType: !2160, size: 64, offset: 9344)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1239, file: !44, line: 930, baseType: !174, size: 32, offset: 9408)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1239, file: !44, line: 933, baseType: !174, size: 32, offset: 9440)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1239, file: !44, line: 935, baseType: !2165, size: 64, offset: 9472)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !2166)
!2166 = !{!2167}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2165, file: !74, line: 104, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1239, file: !44, line: 940, baseType: !607, size: 64, offset: 9536)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1239, file: !44, line: 942, baseType: !2172, size: 256, offset: 9600)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2173, line: 98, size: 256, elements: !2174)
!2173 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2174 = !{!2175, !2176, !2177}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2172, file: !2173, line: 99, baseType: !607, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2172, file: !2173, line: 100, baseType: !123, size: 128, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2172, file: !2173, line: 101, baseType: !2178, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2173, line: 21, baseType: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1236, file: !44, line: 986, baseType: !2184, offset: 10240)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, elements: !1371)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !932, file: !578, line: 882, baseType: !1235, size: 64, offset: 9792)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !932, file: !578, line: 884, baseType: !106, size: 32, offset: 9856)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !932, file: !578, line: 885, baseType: !106, size: 32, offset: 9888)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !932, file: !578, line: 886, baseType: !106, size: 32, offset: 9920)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !932, file: !578, line: 888, baseType: !106, size: 32, offset: 9952)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !932, file: !578, line: 890, baseType: !273, size: 64, offset: 9984)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !932, file: !578, line: 893, baseType: !13, size: 32, offset: 10048)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !932, file: !578, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !932, file: !578, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !932, file: !578, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !932, file: !578, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !932, file: !578, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !932, file: !578, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !932, file: !578, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !932, file: !578, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !932, file: !578, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !932, file: !578, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !932, file: !578, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !932, file: !578, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !932, file: !578, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !932, file: !578, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !932, file: !578, line: 969, baseType: !273, size: 64, offset: 10176)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !932, file: !578, line: 971, baseType: !2208, size: 448, offset: 10240)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2209)
!2209 = !{!2210, !2211, !2216}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2208, file: !68, line: 26, baseType: !273, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2208, file: !68, line: 27, baseType: !2212, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!259, !2215}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !68, line: 28, baseType: !2217, size: 320, offset: 128)
!2217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2208, file: !68, line: 28, size: 320, elements: !2218)
!2218 = !{!2219, !2229, !2254}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2217, file: !68, line: 37, baseType: !2220, size: 320)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2217, file: !68, line: 30, size: 320, elements: !2221)
!2221 = !{!2222, !2224, !2225, !2226, !2227, !2228}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2220, file: !68, line: 31, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2220, file: !68, line: 32, baseType: !372, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2220, file: !68, line: 33, baseType: !372, size: 32, offset: 96)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2220, file: !68, line: 34, baseType: !372, size: 32, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2220, file: !68, line: 35, baseType: !376, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2220, file: !68, line: 36, baseType: !2223, size: 64, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2217, file: !68, line: 47, baseType: !2230, size: 192)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2217, file: !68, line: 39, size: 192, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2253}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2230, file: !68, line: 40, baseType: !1106, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2230, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2230, file: !68, line: 42, baseType: !2235, size: 64, offset: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2230, file: !68, line: 42, size: 64, elements: !2236)
!2236 = !{!2237, !2245}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2235, file: !68, line: 43, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2240, line: 7, size: 128, elements: !2241)
!2240 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2241 = !{!2242, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2239, file: !2240, line: 8, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !257, line: 93, baseType: !466)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2239, file: !2240, line: 9, baseType: !466, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2235, file: !68, line: 44, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2248, line: 7, size: 64, elements: !2249)
!2248 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2249 = !{!2250, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2247, file: !2248, line: 8, baseType: !2251, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2248, line: 5, baseType: !1413)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2247, file: !2248, line: 9, baseType: !1413, size: 32, offset: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2230, file: !68, line: 46, baseType: !376, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2217, file: !68, line: 55, baseType: !2255, size: 256)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2217, file: !68, line: 49, size: 256, elements: !2256)
!2256 = !{!2257, !2260, !2261, !2262, !2263}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2255, file: !68, line: 50, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2255, file: !68, line: 51, baseType: !106, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2255, file: !68, line: 52, baseType: !106, size: 32, offset: 96)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2255, file: !68, line: 53, baseType: !273, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2255, file: !68, line: 54, baseType: !273, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !932, file: !578, line: 973, baseType: !2265, size: 32, offset: 10688)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !124, line: 27, baseType: !2266)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !257, line: 28, baseType: !106)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !932, file: !578, line: 974, baseType: !2265, size: 32, offset: 10720)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !932, file: !578, line: 978, baseType: !273, size: 64, offset: 10752)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !932, file: !578, line: 987, baseType: !931, size: 64, offset: 10816)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !932, file: !578, line: 990, baseType: !931, size: 64, offset: 10880)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !932, file: !578, line: 995, baseType: !123, size: 128, offset: 10944)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !932, file: !578, line: 996, baseType: !123, size: 128, offset: 11072)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !932, file: !578, line: 997, baseType: !931, size: 64, offset: 11200)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !932, file: !578, line: 1005, baseType: !123, size: 128, offset: 11264)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !932, file: !578, line: 1006, baseType: !123, size: 128, offset: 11392)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !932, file: !578, line: 1009, baseType: !1303, size: 64, offset: 11520)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !932, file: !578, line: 1010, baseType: !2278, size: 512, offset: 11584)
!2278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 512, elements: !1311)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !932, file: !578, line: 1011, baseType: !123, size: 128, offset: 12096)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !932, file: !578, line: 1012, baseType: !123, size: 128, offset: 12224)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !932, file: !578, line: 1014, baseType: !2282, size: 64, offset: 12352)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !932, file: !578, line: 1017, baseType: !570, size: 64, offset: 12416)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !932, file: !578, line: 1020, baseType: !570, size: 64, offset: 12480)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !932, file: !578, line: 1023, baseType: !116, size: 64, offset: 12544)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !932, file: !578, line: 1025, baseType: !376, size: 64, offset: 12608)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !932, file: !578, line: 1026, baseType: !376, size: 64, offset: 12672)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !932, file: !578, line: 1031, baseType: !376, size: 64, offset: 12736)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !932, file: !578, line: 1032, baseType: !2290, size: 192, offset: 12800)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !578, line: 324, size: 192, elements: !2291)
!2291 = !{!2292, !2293, !2294}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2290, file: !578, line: 326, baseType: !376, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2290, file: !578, line: 327, baseType: !376, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2290, file: !578, line: 328, baseType: !616, size: 32, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !932, file: !578, line: 1041, baseType: !273, size: 64, offset: 12992)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !932, file: !578, line: 1042, baseType: !273, size: 64, offset: 13056)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !932, file: !578, line: 1045, baseType: !376, size: 64, offset: 13120)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !932, file: !578, line: 1048, baseType: !376, size: 64, offset: 13184)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !932, file: !578, line: 1051, baseType: !273, size: 64, offset: 13248)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !932, file: !578, line: 1052, baseType: !273, size: 64, offset: 13312)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !932, file: !578, line: 1055, baseType: !2302, size: 640, offset: 13376)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2303, line: 132, size: 640, elements: !2304)
!2303 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2304 = !{!2305, !2311, !2312}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2302, file: !2303, line: 133, baseType: !2306, size: 576)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2307, size: 576, elements: !224)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2303, line: 117, size: 192, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2307, file: !2303, line: 118, baseType: !376, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2307, file: !2303, line: 119, baseType: !1115, size: 128, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2302, file: !2303, line: 134, baseType: !13, size: 32, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2302, file: !2303, line: 135, baseType: !13, size: 32, offset: 608)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !932, file: !578, line: 1058, baseType: !2314, size: 448, offset: 14016)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2303, line: 144, size: 448, elements: !2315)
!2315 = !{!2316, !2317, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2314, file: !2303, line: 145, baseType: !916, size: 128, align: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2314, file: !2303, line: 146, baseType: !603, size: 256, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2314, file: !2303, line: 147, baseType: !13, size: 32, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !932, file: !578, line: 1064, baseType: !1378, size: 64, offset: 14464)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !932, file: !578, line: 1067, baseType: !1378, size: 64, offset: 14528)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !932, file: !578, line: 1070, baseType: !1378, size: 64, offset: 14592)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !932, file: !578, line: 1074, baseType: !1405, size: 64, offset: 14656)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !932, file: !578, line: 1084, baseType: !2324, size: 128, offset: 14720)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2325)
!2325 = !{!2326}
!2326 = !DISubrange(count: 16)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !932, file: !578, line: 1086, baseType: !2328, size: 64, offset: 14848)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !578, line: 55, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !932, file: !578, line: 1089, baseType: !2331, size: 64, offset: 14912)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2332, line: 12, size: 64, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2333 = !{!2334}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2331, file: !2332, line: 13, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2332, line: 8, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !932, file: !578, line: 1090, baseType: !2338, size: 128, offset: 14976)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2339, line: 13, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2340 = !{!2341}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2338, file: !2339, line: 14, baseType: !123, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !932, file: !578, line: 1097, baseType: !2343, size: 64, offset: 15104)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !578, line: 50, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !932, file: !578, line: 1100, baseType: !2346, size: 64, offset: 15168)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !578, line: 1100, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !932, file: !578, line: 1103, baseType: !2349, size: 64, offset: 15232)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !578, line: 53, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !932, file: !578, line: 1107, baseType: !2352, size: 64, offset: 15296)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2354, line: 31, size: 576, elements: !2355)
!2354 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2355 = !{!2356, !2357, !2360, !2363, !2366, !2367, !2370, !2373, !2374}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2353, file: !2354, line: 32, baseType: !945, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2353, file: !2354, line: 33, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2354, line: 9, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2353, file: !2354, line: 34, baseType: !2361, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2354, line: 10, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2353, file: !2354, line: 35, baseType: !2364, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2354, line: 8, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2353, file: !2354, line: 36, baseType: !1322, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2353, file: !2354, line: 37, baseType: !2368, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1407, line: 34, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2353, file: !2354, line: 38, baseType: !2371, size: 64, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2354, line: 38, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2353, file: !2354, line: 39, baseType: !2371, size: 64, offset: 448)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2353, file: !2354, line: 40, baseType: !2375, size: 64, offset: 512)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2354, line: 12, flags: DIFlagFwdDecl)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !932, file: !578, line: 1110, baseType: !2378, size: 64, offset: 15360)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2380, line: 93, size: 8768, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2431, !2440, !2441, !2443, !2444, !2445, !2448, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2486, !2487, !2494, !2504, !2507, !2508, !2511, !2512, !2513, !2514, !2515, !2516}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2379, file: !2380, line: 94, baseType: !945, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2379, file: !2380, line: 95, baseType: !174, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2379, file: !2380, line: 96, baseType: !106, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2379, file: !2380, line: 97, baseType: !106, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2379, file: !2380, line: 98, baseType: !123, size: 128, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2379, file: !2380, line: 100, baseType: !909, size: 192, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2379, file: !2380, line: 103, baseType: !931, size: 64, offset: 448)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2379, file: !2380, line: 106, baseType: !2390, size: 192, offset: 512)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1357, line: 32, size: 192, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2390, file: !1357, line: 33, baseType: !123, size: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2390, file: !1357, line: 34, baseType: !2394, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2395, line: 25, baseType: !2396)
!2395 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2395, line: 23, size: 64, elements: !2397)
!2397 = !{!2398}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2396, file: !2395, line: 24, baseType: !1186, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2379, file: !2380, line: 109, baseType: !495, size: 64, offset: 704)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2379, file: !2380, line: 112, baseType: !106, size: 32, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2379, file: !2380, line: 114, baseType: !106, size: 32, offset: 800)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2379, file: !2380, line: 115, baseType: !931, size: 64, offset: 832)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2379, file: !2380, line: 118, baseType: !106, size: 32, offset: 896)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2379, file: !2380, line: 119, baseType: !13, size: 32, offset: 928)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2379, file: !2380, line: 121, baseType: !2406, size: 64, offset: 960)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2380, line: 80, size: 448, elements: !2408)
!2408 = !{!2409, !2410, !2416}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2407, file: !2380, line: 81, baseType: !174, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2407, file: !2380, line: 82, baseType: !2411, size: 128, offset: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2380, line: 75, size: 128, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2411, file: !2380, line: 76, baseType: !931, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2411, file: !2380, line: 77, baseType: !2415, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2407, file: !2380, line: 83, baseType: !1856, size: 256, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2379, file: !2380, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2379, file: !2380, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2379, file: !2380, line: 138, baseType: !13, size: 32, offset: 1056)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2379, file: !2380, line: 139, baseType: !123, size: 128, offset: 1088)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2379, file: !2380, line: 142, baseType: !1059, size: 512, offset: 1216)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2379, file: !2380, line: 143, baseType: !1067, size: 64, offset: 1728)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2379, file: !2380, line: 150, baseType: !2424, size: 256, offset: 1792)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2425, size: 256, elements: !2429)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2380, line: 38, size: 128, elements: !2426)
!2426 = !{!2427, !2428}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2425, file: !2380, line: 39, baseType: !376, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2425, file: !2380, line: 40, baseType: !376, size: 64, offset: 64)
!2429 = !{!2430}
!2430 = !DISubrange(count: 2)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2379, file: !2380, line: 156, baseType: !2432, size: 192, offset: 2048)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2380, line: 66, size: 192, elements: !2433)
!2433 = !{!2434}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2432, file: !2380, line: 67, baseType: !2435, size: 192)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2380, line: 47, size: 192, elements: !2436)
!2436 = !{!2437, !2438, !2439}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2435, file: !2380, line: 48, baseType: !609, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2435, file: !2380, line: 49, baseType: !609, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2435, file: !2380, line: 50, baseType: !609, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2379, file: !2380, line: 160, baseType: !2302, size: 640, offset: 2240)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2379, file: !2380, line: 163, baseType: !2442, size: 256, offset: 2880)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1303, size: 256, elements: !1311)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2379, file: !2380, line: 169, baseType: !1303, size: 64, offset: 3136)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2379, file: !2380, line: 172, baseType: !106, size: 32, offset: 3200)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2379, file: !2380, line: 174, baseType: !2446, size: 64, offset: 3264)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2380, line: 174, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2379, file: !2380, line: 185, baseType: !2449, size: 64, offset: 3328)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !345, line: 860, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 853, size: 64, elements: !2451)
!2451 = !{!2452, !2453}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2450, file: !345, line: 858, baseType: !344, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2450, file: !345, line: 859, baseType: !154, size: 32, offset: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2379, file: !2380, line: 186, baseType: !376, size: 64, offset: 3392)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2379, file: !2380, line: 186, baseType: !376, size: 64, offset: 3456)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2379, file: !2380, line: 186, baseType: !376, size: 64, offset: 3520)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2379, file: !2380, line: 186, baseType: !376, size: 64, offset: 3584)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2379, file: !2380, line: 187, baseType: !376, size: 64, offset: 3648)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2379, file: !2380, line: 188, baseType: !376, size: 64, offset: 3712)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2379, file: !2380, line: 189, baseType: !2290, size: 192, offset: 3776)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2379, file: !2380, line: 190, baseType: !273, size: 64, offset: 3968)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2379, file: !2380, line: 190, baseType: !273, size: 64, offset: 4032)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2379, file: !2380, line: 190, baseType: !273, size: 64, offset: 4096)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2379, file: !2380, line: 190, baseType: !273, size: 64, offset: 4160)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2379, file: !2380, line: 191, baseType: !273, size: 64, offset: 4224)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2379, file: !2380, line: 191, baseType: !273, size: 64, offset: 4288)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2379, file: !2380, line: 191, baseType: !273, size: 64, offset: 4352)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2379, file: !2380, line: 191, baseType: !273, size: 64, offset: 4416)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2379, file: !2380, line: 192, baseType: !273, size: 64, offset: 4480)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2379, file: !2380, line: 192, baseType: !273, size: 64, offset: 4544)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2379, file: !2380, line: 192, baseType: !273, size: 64, offset: 4608)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2379, file: !2380, line: 192, baseType: !273, size: 64, offset: 4672)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2379, file: !2380, line: 193, baseType: !273, size: 64, offset: 4736)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2379, file: !2380, line: 193, baseType: !273, size: 64, offset: 4800)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2379, file: !2380, line: 194, baseType: !2476, size: 448, offset: 4864)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2477, line: 12, size: 448, elements: !2478)
!2477 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2476, file: !2477, line: 15, baseType: !376, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2476, file: !2477, line: 17, baseType: !376, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2476, file: !2477, line: 19, baseType: !376, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2476, file: !2477, line: 21, baseType: !376, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2476, file: !2477, line: 29, baseType: !376, size: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2476, file: !2477, line: 35, baseType: !376, size: 64, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2476, file: !2477, line: 44, baseType: !376, size: 64, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2379, file: !2380, line: 202, baseType: !378, size: 64, offset: 5312)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2379, file: !2380, line: 213, baseType: !2488, size: 2048, offset: 5376)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2489, size: 2048, elements: !2325)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2490, line: 43, size: 128, elements: !2491)
!2490 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2491 = !{!2492, !2493}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2489, file: !2490, line: 44, baseType: !272, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2489, file: !2490, line: 45, baseType: !272, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2379, file: !2380, line: 216, baseType: !2495, size: 448, offset: 7424)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2380, line: 30, size: 448, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500, !2501, !2502, !2503}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2495, file: !2380, line: 31, baseType: !106, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2495, file: !2380, line: 32, baseType: !259, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2495, file: !2380, line: 33, baseType: !273, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2495, file: !2380, line: 34, baseType: !376, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2495, file: !2380, line: 34, baseType: !376, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2495, file: !2380, line: 35, baseType: !273, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2495, file: !2380, line: 35, baseType: !273, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2379, file: !2380, line: 219, baseType: !2505, size: 64, offset: 7872)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2380, line: 219, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2379, file: !2380, line: 222, baseType: !13, size: 32, offset: 7936)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2379, file: !2380, line: 223, baseType: !2509, size: 64, offset: 8000)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2380, line: 223, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2379, file: !2380, line: 230, baseType: !1470, size: 8, offset: 8064)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2379, file: !2380, line: 231, baseType: !1439, size: 16, offset: 8080)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2379, file: !2380, line: 232, baseType: !1439, size: 16, offset: 8096)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2379, file: !2380, line: 234, baseType: !1235, size: 64, offset: 8128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2379, file: !2380, line: 237, baseType: !603, size: 256, offset: 8192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2379, file: !2380, line: 243, baseType: !816, size: 320, offset: 8448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !932, file: !578, line: 1111, baseType: !2518, size: 64, offset: 15424)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2380, line: 20, size: 16640, elements: !2520)
!2520 = !{!2521, !2522, !2523, !2524}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2519, file: !2380, line: 21, baseType: !154, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2519, file: !2380, line: 22, baseType: !945, size: 32, offset: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2519, file: !2380, line: 23, baseType: !909, size: 192, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2519, file: !2380, line: 24, baseType: !2525, size: 16384, offset: 256)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2526, size: 16384, elements: !228)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1357, line: 51, size: 256, elements: !2527)
!2527 = !{!2528}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2526, file: !1357, line: 52, baseType: !2529, size: 256)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1357, line: 37, size: 256, elements: !2530)
!2530 = !{!2531, !2538, !2539, !2545}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2529, file: !1357, line: 39, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2533, line: 83, baseType: !2534)
!2533 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2533, line: 82, baseType: !2536)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !106}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2529, file: !1357, line: 40, baseType: !273, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2529, file: !1357, line: 46, baseType: !2540, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2533, line: 86, baseType: !2541)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2533, line: 85, baseType: !2543)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2529, file: !1357, line: 48, baseType: !2394, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !932, file: !578, line: 1112, baseType: !2394, size: 64, offset: 15488)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !932, file: !578, line: 1113, baseType: !2394, size: 64, offset: 15552)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !932, file: !578, line: 1115, baseType: !2394, size: 64, offset: 15616)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !932, file: !578, line: 1116, baseType: !2390, size: 192, offset: 15680)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !932, file: !578, line: 1117, baseType: !273, size: 64, offset: 15872)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !932, file: !578, line: 1118, baseType: !270, size: 64, offset: 15936)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !932, file: !578, line: 1119, baseType: !13, size: 32, offset: 16000)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !932, file: !578, line: 1121, baseType: !919, size: 64, offset: 16064)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !932, file: !578, line: 1125, baseType: !2555, size: 64, offset: 16128)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !578, line: 43, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !932, file: !578, line: 1127, baseType: !309, size: 32, offset: 16192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !932, file: !578, line: 1128, baseType: !13, size: 32, offset: 16224)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !932, file: !578, line: 1130, baseType: !2560, size: 128, offset: 16256)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2561, line: 37, size: 128, elements: !2562)
!2561 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2562 = !{!2563, !2564, !2565}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2560, file: !2561, line: 38, baseType: !106, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2560, file: !2561, line: 39, baseType: !174, size: 32, offset: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2560, file: !2561, line: 40, baseType: !2566, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2561, line: 24, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !932, file: !578, line: 1131, baseType: !2569, size: 256, offset: 16384)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2570, line: 12, size: 256, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2571 = !{!2572, !2573, !2574, !2575}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2569, file: !2570, line: 13, baseType: !115, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2569, file: !2570, line: 14, baseType: !273, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2569, file: !2570, line: 15, baseType: !273, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2569, file: !2570, line: 16, baseType: !1470, size: 8, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !932, file: !578, line: 1134, baseType: !376, size: 64, offset: 16640)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !932, file: !578, line: 1135, baseType: !376, size: 64, offset: 16704)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !932, file: !578, line: 1138, baseType: !154, size: 32, offset: 16768)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !932, file: !578, line: 1141, baseType: !616, size: 32, offset: 16800)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !932, file: !578, line: 1143, baseType: !2581, size: 64, offset: 16832)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !578, line: 735, size: 64, elements: !2582)
!2582 = !{!2583}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2581, file: !578, line: 736, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !932, file: !578, line: 1147, baseType: !1118, size: 128, offset: 16896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !932, file: !578, line: 1149, baseType: !931, size: 64, offset: 17024)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !932, file: !578, line: 1151, baseType: !2588, size: 64, offset: 17088)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !578, line: 1151, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !932, file: !578, line: 1188, baseType: !116, size: 64, offset: 17152)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !932, file: !578, line: 1191, baseType: !2592, size: 64, offset: 17216)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !578, line: 44, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !932, file: !578, line: 1194, baseType: !2595, size: 64, offset: 17280)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !578, line: 45, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !932, file: !578, line: 1197, baseType: !2598, size: 64, offset: 17344)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !578, line: 61, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !932, file: !578, line: 1199, baseType: !2601, size: 64, offset: 17408)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2603, line: 99, size: 128, elements: !2604)
!2603 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2604 = !{!2605, !2606, !2607}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2602, file: !2603, line: 100, baseType: !607, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2602, file: !2603, line: 101, baseType: !174, size: 32, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2602, file: !2603, line: 103, baseType: !194, size: 16, offset: 96)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !932, file: !578, line: 1202, baseType: !2609, size: 64, offset: 17472)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !578, line: 48, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !932, file: !578, line: 1205, baseType: !273, size: 64, offset: 17536)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !932, file: !578, line: 1206, baseType: !2613, size: 64, offset: 17600)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1357, line: 14, baseType: !2615)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1357, line: 12, size: 384, elements: !2616)
!2616 = !{!2617}
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2615, file: !1357, line: 13, baseType: !2618, size: 384)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2615, file: !1357, line: 13, size: 384, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2618, file: !1357, line: 13, baseType: !106, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2618, file: !1357, line: 13, baseType: !106, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2618, file: !1357, line: 13, baseType: !106, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2618, file: !1357, line: 13, baseType: !2624, size: 256, offset: 128)
!2624 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2625, line: 37, size: 256, elements: !2626)
!2625 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2626 = !{!2627, !2632, !2645, !2651, !2660, !2687, !2692}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2624, file: !2625, line: 42, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !2625, line: 39, size: 64, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2628, file: !2625, line: 40, baseType: !2266, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2628, file: !2625, line: 41, baseType: !315, size: 32, offset: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2624, file: !2625, line: 50, baseType: !2633, size: 192)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !2625, line: 45, size: 192, elements: !2634)
!2634 = !{!2635, !2637, !2638, !2644}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2633, file: !2625, line: 46, baseType: !2636, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !257, line: 95, baseType: !106)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2633, file: !2625, line: 47, baseType: !106, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2633, file: !2625, line: 48, baseType: !2639, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2625, line: 11, baseType: !2640)
!2640 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2625, line: 8, size: 64, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2640, file: !2625, line: 9, baseType: !106, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2640, file: !2625, line: 10, baseType: !116, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2633, file: !2625, line: 49, baseType: !106, size: 32, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2624, file: !2625, line: 57, baseType: !2646, size: 128)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !2625, line: 53, size: 128, elements: !2647)
!2647 = !{!2648, !2649, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2646, file: !2625, line: 54, baseType: !2266, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2646, file: !2625, line: 55, baseType: !315, size: 32, offset: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2646, file: !2625, line: 56, baseType: !2639, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2624, file: !2625, line: 66, baseType: !2652, size: 256)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !2625, line: 60, size: 256, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2659}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2652, file: !2625, line: 61, baseType: !2266, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2652, file: !2625, line: 62, baseType: !315, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2652, file: !2625, line: 63, baseType: !106, size: 32, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2652, file: !2625, line: 64, baseType: !2658, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !257, line: 94, baseType: !258)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2652, file: !2625, line: 65, baseType: !2658, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2624, file: !2625, line: 105, baseType: !2661, size: 256)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !2625, line: 69, size: 256, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2661, file: !2625, line: 70, baseType: !116, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, scope: !2661, file: !2625, line: 79, baseType: !2665, size: 192, offset: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2661, file: !2625, line: 79, size: 192, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2676, !2681}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2665, file: !2625, line: 81, baseType: !106, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2665, file: !2625, line: 86, baseType: !1439, size: 16)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2665, file: !2625, line: 92, baseType: !2670, size: 192)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !2625, line: 88, size: 192, elements: !2671)
!2671 = !{!2672, !2674, !2675}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2670, file: !2625, line: 89, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1102)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2670, file: !2625, line: 90, baseType: !116, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2670, file: !2625, line: 91, baseType: !116, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2665, file: !2625, line: 97, baseType: !2677, size: 96)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !2625, line: 94, size: 96, elements: !2678)
!2678 = !{!2679, !2680}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2677, file: !2625, line: 95, baseType: !2673, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2677, file: !2625, line: 96, baseType: !373, size: 32, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2665, file: !2625, line: 103, baseType: !2682, size: 128)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !2625, line: 99, size: 128, elements: !2683)
!2683 = !{!2684, !2685, !2686}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2682, file: !2625, line: 100, baseType: !273, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2682, file: !2625, line: 101, baseType: !373, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2682, file: !2625, line: 102, baseType: !373, size: 32, offset: 96)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2624, file: !2625, line: 111, baseType: !2688, size: 128)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !2625, line: 108, size: 128, elements: !2689)
!2689 = !{!2690, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2688, file: !2625, line: 109, baseType: !259, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2688, file: !2625, line: 110, baseType: !106, size: 32, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2624, file: !2625, line: 118, baseType: !2693, size: 128)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !2625, line: 114, size: 128, elements: !2694)
!2694 = !{!2695, !2696, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2693, file: !2625, line: 115, baseType: !116, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2693, file: !2625, line: 116, baseType: !106, size: 32, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2693, file: !2625, line: 117, baseType: !13, size: 32, offset: 96)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !932, file: !578, line: 1208, baseType: !2476, size: 448, offset: 17664)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !932, file: !578, line: 1215, baseType: !376, size: 64, offset: 18112)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !932, file: !578, line: 1217, baseType: !376, size: 64, offset: 18176)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !932, file: !578, line: 1219, baseType: !376, size: 64, offset: 18240)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !932, file: !578, line: 1223, baseType: !2703, size: 64, offset: 18304)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2704, line: 99, baseType: !2705)
!2704 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2704, line: 99, size: 64, elements: !2706)
!2706 = !{!2707}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2705, file: !2704, line: 99, baseType: !1186, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !932, file: !578, line: 1225, baseType: !344, size: 32, offset: 18368)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !932, file: !578, line: 1226, baseType: !106, size: 32, offset: 18400)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !932, file: !578, line: 1227, baseType: !106, size: 32, offset: 18432)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !932, file: !578, line: 1231, baseType: !2712, size: 64, offset: 18496)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !578, line: 1231, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !932, file: !578, line: 1233, baseType: !123, size: 128, offset: 18560)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !932, file: !578, line: 1240, baseType: !2716, size: 64, offset: 18688)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !578, line: 62, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !932, file: !578, line: 1242, baseType: !2719, size: 64, offset: 18752)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !578, line: 1242, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !932, file: !578, line: 1244, baseType: !123, size: 128, offset: 18816)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !932, file: !578, line: 1245, baseType: !2723, size: 64, offset: 18944)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !578, line: 51, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !932, file: !578, line: 1246, baseType: !603, size: 256, offset: 19008)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !932, file: !578, line: 1247, baseType: !13, size: 32, offset: 19264)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !932, file: !578, line: 1250, baseType: !2728, size: 64, offset: 19328)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !578, line: 57, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !932, file: !578, line: 1251, baseType: !603, size: 256, offset: 19392)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !932, file: !578, line: 1252, baseType: !123, size: 128, offset: 19648)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !932, file: !578, line: 1259, baseType: !1942, size: 64, offset: 19776)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !932, file: !578, line: 1260, baseType: !1439, size: 16, offset: 19840)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !932, file: !578, line: 1261, baseType: !1439, size: 16, offset: 19856)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !932, file: !578, line: 1314, baseType: !2736, size: 64, offset: 19904)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2738, line: 62, size: 256, align: 256, elements: !2739)
!2738 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2737, file: !2738, line: 75, baseType: !373, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2737, file: !2738, line: 90, baseType: !373, size: 32, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2737, file: !2738, line: 112, baseType: !377, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2737, file: !2738, line: 132, baseType: !373, size: 32, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2737, file: !2738, line: 140, baseType: !373, size: 32, offset: 160)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2737, file: !2738, line: 149, baseType: !373, size: 32, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2737, file: !2738, line: 154, baseType: !2747, offset: 224)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1371)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !932, file: !578, line: 1315, baseType: !372, size: 32, offset: 19968)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !932, file: !578, line: 1316, baseType: !372, size: 32, offset: 20000)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !932, file: !578, line: 1321, baseType: !273, size: 64, offset: 20032)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !932, file: !578, line: 1325, baseType: !106, size: 32, offset: 20096)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !932, file: !578, line: 1326, baseType: !106, size: 32, offset: 20128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !932, file: !578, line: 1327, baseType: !106, size: 32, offset: 20160)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !932, file: !578, line: 1328, baseType: !106, size: 32, offset: 20192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !932, file: !578, line: 1329, baseType: !916, size: 128, align: 64, offset: 20224)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !932, file: !578, line: 1332, baseType: !2757, size: 128, offset: 20352)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2758, line: 51, size: 128, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2759 = !{!2760, !2765, !2766}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2757, file: !2758, line: 60, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2762, line: 7, size: 64, elements: !2763)
!2762 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2761, file: !2762, line: 12, baseType: !1183, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2757, file: !2758, line: 63, baseType: !1470, size: 8, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2757, file: !2758, line: 70, baseType: !1470, size: 8, offset: 72)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !932, file: !578, line: 1335, baseType: !1994, size: 64, offset: 20480)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !932, file: !578, line: 1337, baseType: !2769, size: 128, offset: 20544)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2758, line: 39, size: 128, elements: !2770)
!2770 = !{!2771, !2772, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2769, file: !2758, line: 40, baseType: !1771, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2769, file: !2758, line: 42, baseType: !373, size: 32, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2769, file: !2758, line: 43, baseType: !373, size: 32, offset: 96)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !932, file: !578, line: 1340, baseType: !2775, size: 64, offset: 20672)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !578, line: 69, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !932, file: !578, line: 1351, baseType: !106, size: 32, offset: 20736)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !932, file: !578, line: 1352, baseType: !106, size: 32, offset: 20768)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !932, file: !578, line: 1354, baseType: !273, size: 64, offset: 20800)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !932, file: !578, line: 1364, baseType: !376, size: 64, offset: 20864)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !932, file: !578, line: 1365, baseType: !376, size: 64, offset: 20928)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !932, file: !578, line: 1412, baseType: !273, size: 64, offset: 20992)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !932, file: !578, line: 1453, baseType: !2784, size: 64, offset: 21056)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !578, line: 1453, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !932, file: !578, line: 1457, baseType: !2787, size: 64, offset: 21120)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !2789)
!2789 = !{!2790, !2791, !2810, !2813, !2814, !2847, !2857}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2788, file: !74, line: 62, baseType: !73, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, scope: !2788, file: !74, line: 64, baseType: !2792, size: 192, offset: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2788, file: !74, line: 64, size: 192, elements: !2793)
!2793 = !{!2794, !2805}
!2794 = !DIDerivedType(tag: DW_TAG_member, scope: !2792, file: !74, line: 65, baseType: !2795, size: 192)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2792, file: !74, line: 65, size: 192, elements: !2796)
!2796 = !{!2797, !2804}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2795, file: !74, line: 66, baseType: !2798, size: 128)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2799, line: 50, size: 128, elements: !2800)
!2799 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2800 = !{!2801, !2802, !2803}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2798, file: !2799, line: 52, baseType: !273, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2798, file: !2799, line: 54, baseType: !13, size: 32, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2798, file: !2799, line: 55, baseType: !13, size: 32, offset: 96)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2795, file: !74, line: 67, baseType: !273, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, scope: !2792, file: !74, line: 70, baseType: !2806, size: 192)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2792, file: !74, line: 70, size: 192, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2806, file: !74, line: 71, baseType: !916, size: 128, align: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2806, file: !74, line: 72, baseType: !273, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2788, file: !74, line: 76, baseType: !2811, size: 64, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2788, file: !74, line: 77, baseType: !273, size: 64, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2788, file: !74, line: 79, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2799, line: 25, size: 256, elements: !2817)
!2817 = !{!2818, !2824, !2828}
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !2816, file: !2799, line: 26, baseType: !2819, size: 128)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2816, file: !2799, line: 26, size: 128, elements: !2820)
!2820 = !{!2821, !2823}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2819, file: !2799, line: 27, baseType: !2822, size: 128)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !2325)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2819, file: !2799, line: 28, baseType: !2822, size: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2816, file: !2799, line: 31, baseType: !2825, size: 64, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2827)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2799, line: 23, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, scope: !2816, file: !2799, line: 33, baseType: !2829, size: 64, offset: 192)
!2829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2816, file: !2799, line: 33, size: 64, elements: !2830)
!2830 = !{!2831, !2837, !2842}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2829, file: !2799, line: 38, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2829, file: !2799, line: 34, size: 64, elements: !2833)
!2833 = !{!2834, !2835, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2832, file: !2799, line: 35, baseType: !1413, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2832, file: !2799, line: 36, baseType: !182, size: 8, offset: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2832, file: !2799, line: 37, baseType: !182, size: 8, offset: 40)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2829, file: !2799, line: 42, baseType: !2838, size: 16)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2829, file: !2799, line: 39, size: 16, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2838, file: !2799, line: 40, baseType: !182, size: 8)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2838, file: !2799, line: 41, baseType: !182, size: 8, offset: 8)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2829, file: !2799, line: 46, baseType: !2843, size: 16)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2829, file: !2799, line: 43, size: 16, elements: !2844)
!2844 = !{!2845, !2846}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2843, file: !2799, line: 44, baseType: !182, size: 8)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2843, file: !2799, line: 45, baseType: !182, size: 8, offset: 8)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2788, file: !74, line: 81, baseType: !2848, size: 64, offset: 448)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2854, !2855, !2856}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2849, file: !74, line: 86, baseType: !2811, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2849, file: !74, line: 87, baseType: !273, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2849, file: !74, line: 88, baseType: !273, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2849, file: !74, line: 89, baseType: !273, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2849, file: !74, line: 90, baseType: !1470, size: 8, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2849, file: !74, line: 92, baseType: !2848, size: 64, offset: 320)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2788, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !932, file: !578, line: 1463, baseType: !2859, offset: 21184)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !578, line: 739, elements: !507)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !932, file: !578, line: 1470, baseType: !916, size: 128, align: 64, offset: 21184)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !932, file: !578, line: 1471, baseType: !945, size: 32, offset: 21312)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !932, file: !578, line: 1472, baseType: !106, size: 32, offset: 21344)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !932, file: !578, line: 1474, baseType: !931, size: 64, offset: 21376)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !932, file: !578, line: 1475, baseType: !2865, size: 320, offset: 21440)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2866, line: 11, size: 320, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2867 = !{!2868, !2869, !2870, !2875}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2865, file: !2866, line: 16, baseType: !499, size: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2865, file: !2866, line: 17, baseType: !273, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2865, file: !2866, line: 18, baseType: !2871, size: 64, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2865, file: !2866, line: 19, baseType: !372, size: 32, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !932, file: !578, line: 1478, baseType: !2877, size: 64, offset: 21760)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !578, line: 1478, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !932, file: !578, line: 1482, baseType: !945, size: 32, offset: 21824)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !932, file: !578, line: 1489, baseType: !116, size: 64, offset: 21888)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !932, file: !578, line: 1504, baseType: !116, size: 64, offset: 21952)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !932, file: !578, line: 1505, baseType: !377, size: 64, offset: 22016)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !932, file: !578, line: 1506, baseType: !376, size: 64, offset: 22080)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !932, file: !578, line: 1507, baseType: !377, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !932, file: !578, line: 1508, baseType: !377, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !932, file: !578, line: 1509, baseType: !377, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !932, file: !578, line: 1510, baseType: !916, size: 128, align: 64, offset: 22208)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !932, file: !578, line: 1511, baseType: !106, size: 32, offset: 22336)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !932, file: !578, line: 1515, baseType: !2890, size: 64, offset: 22400)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !959, line: 56, size: 64, elements: !2891)
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2890, file: !959, line: 57, baseType: !962, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !932, file: !578, line: 1518, baseType: !2890, size: 64, offset: 22464)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !932, file: !578, line: 1528, baseType: !916, size: 128, align: 64, offset: 22528)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !932, file: !578, line: 1552, baseType: !2896, size: 35328, offset: 23040)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2897, line: 430, size: 35328, elements: !2898)
!2897 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2898 = !{!2899, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2928, !2929, !2930, !2931, !2932, !2933, !2936, !2937, !2938, !2939}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2896, file: !2897, line: 432, baseType: !2900, size: 192)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2901, size: 192, elements: !224)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2902, line: 16, size: 64, elements: !2903)
!2902 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2901, file: !2902, line: 17, baseType: !192, size: 16)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2901, file: !2902, line: 18, baseType: !192, size: 16, offset: 16)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2901, file: !2902, line: 19, baseType: !192, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2901, file: !2902, line: 19, baseType: !192, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2901, file: !2902, line: 19, baseType: !192, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2901, file: !2902, line: 19, baseType: !192, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2901, file: !2902, line: 19, baseType: !192, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2901, file: !2902, line: 20, baseType: !192, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2901, file: !2902, line: 20, baseType: !192, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2901, file: !2902, line: 20, baseType: !192, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2901, file: !2902, line: 20, baseType: !192, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2901, file: !2902, line: 20, baseType: !192, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2901, file: !2902, line: 20, baseType: !192, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2896, file: !2897, line: 436, baseType: !273, size: 64, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2896, file: !2897, line: 440, baseType: !194, size: 16, offset: 256)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2896, file: !2897, line: 441, baseType: !194, size: 16, offset: 272)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2896, file: !2897, line: 442, baseType: !194, size: 16, offset: 288)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2896, file: !2897, line: 443, baseType: !194, size: 16, offset: 304)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2896, file: !2897, line: 447, baseType: !273, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2896, file: !2897, line: 448, baseType: !273, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2896, file: !2897, line: 459, baseType: !2925, size: 256, offset: 448)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2926, size: 256, elements: !1311)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2897, line: 428, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2896, file: !2897, line: 461, baseType: !273, size: 64, offset: 704)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2896, file: !2897, line: 463, baseType: !273, size: 64, offset: 768)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2896, file: !2897, line: 465, baseType: !273, size: 64, offset: 832)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2896, file: !2897, line: 466, baseType: !273, size: 64, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2896, file: !2897, line: 467, baseType: !273, size: 64, offset: 960)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2896, file: !2897, line: 473, baseType: !2934, size: 64, offset: 1024)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2897, line: 10, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2896, file: !2897, line: 480, baseType: !273, size: 64, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2896, file: !2897, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2896, file: !2897, line: 491, baseType: !372, size: 32, offset: 1184)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2896, file: !2897, line: 501, baseType: !2940, size: 33792, offset: 1536)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2941, line: 448, size: 33792, elements: !2942)
!2941 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2942 = !{!2943, !2944, !2945, !3105, !3106, !3112, !3113}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2940, file: !2941, line: 461, baseType: !13, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2940, file: !2941, line: 468, baseType: !273, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2940, file: !2941, line: 476, baseType: !2946, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2941, line: 356, size: 33280, align: 512, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2947, file: !2941, line: 358, baseType: !13, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2947, file: !2941, line: 361, baseType: !13, size: 32, offset: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2947, file: !2941, line: 364, baseType: !376, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2947, file: !2941, line: 367, baseType: !376, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2947, file: !2941, line: 370, baseType: !376, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2947, file: !2941, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2947, file: !2941, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2947, file: !2941, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2947, file: !2941, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2947, file: !2941, line: 397, baseType: !2959, size: 32768, offset: 512)
!2959 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2941, line: 348, size: 32768, elements: !2960)
!2960 = !{!2961, !2976, !3011, !3088, !3101}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2959, file: !2941, line: 349, baseType: !2962, size: 896)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2941, line: 12, size: 896, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2975}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2962, file: !2941, line: 13, baseType: !372, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2962, file: !2941, line: 14, baseType: !372, size: 32, offset: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2962, file: !2941, line: 15, baseType: !372, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2962, file: !2941, line: 16, baseType: !372, size: 32, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2962, file: !2941, line: 17, baseType: !372, size: 32, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2962, file: !2941, line: 18, baseType: !372, size: 32, offset: 160)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2962, file: !2941, line: 19, baseType: !372, size: 32, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2962, file: !2941, line: 22, baseType: !2972, size: 640, offset: 224)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 640, elements: !2973)
!2973 = !{!2974}
!2974 = !DISubrange(count: 20)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2962, file: !2941, line: 25, baseType: !372, size: 32, offset: 864)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2959, file: !2941, line: 350, baseType: !2977, size: 4096, align: 128)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2941, line: 34, size: 4096, align: 128, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2998, !2999, !3000, !3002, !3004, !3006}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2977, file: !2941, line: 35, baseType: !192, size: 16)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2977, file: !2941, line: 36, baseType: !192, size: 16, offset: 16)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2977, file: !2941, line: 37, baseType: !192, size: 16, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2977, file: !2941, line: 38, baseType: !192, size: 16, offset: 48)
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !2941, line: 39, baseType: !2984, size: 128, offset: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2977, file: !2941, line: 39, size: 128, elements: !2985)
!2985 = !{!2986, !2991}
!2986 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !2941, line: 40, baseType: !2987, size: 128)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !2941, line: 40, size: 128, elements: !2988)
!2988 = !{!2989, !2990}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2987, file: !2941, line: 41, baseType: !376, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2987, file: !2941, line: 42, baseType: !376, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !2941, line: 44, baseType: !2992, size: 128)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !2941, line: 44, size: 128, elements: !2993)
!2993 = !{!2994, !2995, !2996, !2997}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2992, file: !2941, line: 45, baseType: !372, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2992, file: !2941, line: 46, baseType: !372, size: 32, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2992, file: !2941, line: 47, baseType: !372, size: 32, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2992, file: !2941, line: 48, baseType: !372, size: 32, offset: 96)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2977, file: !2941, line: 51, baseType: !372, size: 32, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2977, file: !2941, line: 52, baseType: !372, size: 32, offset: 224)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2977, file: !2941, line: 55, baseType: !3001, size: 1024, offset: 256)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 1024, elements: !385)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2977, file: !2941, line: 58, baseType: !3003, size: 2048, offset: 1280)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 2048, elements: !228)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2977, file: !2941, line: 60, baseType: !3005, size: 384, offset: 3328)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 384, elements: !5)
!3006 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !2941, line: 62, baseType: !3007, size: 384, offset: 3712)
!3007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2977, file: !2941, line: 62, size: 384, elements: !3008)
!3008 = !{!3009, !3010}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3007, file: !2941, line: 63, baseType: !3005, size: 384)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3007, file: !2941, line: 64, baseType: !3005, size: 384)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2959, file: !2941, line: 351, baseType: !3012, size: 1088)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2941, line: 79, size: 1088, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3087}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3012, file: !2941, line: 80, baseType: !372, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3012, file: !2941, line: 81, baseType: !372, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3012, file: !2941, line: 82, baseType: !372, size: 32, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3012, file: !2941, line: 83, baseType: !372, size: 32, offset: 96)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3012, file: !2941, line: 84, baseType: !372, size: 32, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3012, file: !2941, line: 85, baseType: !372, size: 32, offset: 160)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3012, file: !2941, line: 86, baseType: !372, size: 32, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3012, file: !2941, line: 88, baseType: !2972, size: 640, offset: 224)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3012, file: !2941, line: 89, baseType: !182, size: 8, offset: 864)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3012, file: !2941, line: 90, baseType: !182, size: 8, offset: 872)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3012, file: !2941, line: 91, baseType: !182, size: 8, offset: 880)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3012, file: !2941, line: 92, baseType: !182, size: 8, offset: 888)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3012, file: !2941, line: 93, baseType: !182, size: 8, offset: 896)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3012, file: !2941, line: 94, baseType: !182, size: 8, offset: 904)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3012, file: !2941, line: 95, baseType: !3029, size: 64, offset: 960)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3031, line: 11, size: 128, elements: !3032)
!3031 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3032 = !{!3033, !3034}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3030, file: !3031, line: 12, baseType: !259, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3030, file: !3031, line: 13, baseType: !3035, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3037, line: 103, size: 1344, elements: !3038)
!3037 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3067, !3068, !3069}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3036, file: !3037, line: 109, baseType: !273, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3036, file: !3037, line: 110, baseType: !273, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3036, file: !3037, line: 111, baseType: !273, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3036, file: !3037, line: 112, baseType: !273, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3036, file: !3037, line: 113, baseType: !273, size: 64, offset: 256)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3036, file: !3037, line: 114, baseType: !273, size: 64, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3036, file: !3037, line: 117, baseType: !273, size: 64, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3036, file: !3037, line: 118, baseType: !273, size: 64, offset: 448)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3036, file: !3037, line: 119, baseType: !273, size: 64, offset: 512)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3036, file: !3037, line: 120, baseType: !273, size: 64, offset: 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3036, file: !3037, line: 121, baseType: !273, size: 64, offset: 640)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3036, file: !3037, line: 122, baseType: !273, size: 64, offset: 704)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3036, file: !3037, line: 123, baseType: !273, size: 64, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3036, file: !3037, line: 124, baseType: !273, size: 64, offset: 832)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3036, file: !3037, line: 125, baseType: !273, size: 64, offset: 896)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3036, file: !3037, line: 139, baseType: !273, size: 64, offset: 960)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3036, file: !3037, line: 142, baseType: !273, size: 64, offset: 1024)
!3056 = !DIDerivedType(tag: DW_TAG_member, scope: !3036, file: !3037, line: 144, baseType: !3057, size: 64, offset: 1088)
!3057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3036, file: !3037, line: 144, size: 64, elements: !3058)
!3058 = !{!3059, !3060, !3061}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3057, file: !3037, line: 146, baseType: !192, size: 16)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3057, file: !3037, line: 148, baseType: !376, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3057, file: !3037, line: 150, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3037, line: 59, size: 64, elements: !3063)
!3063 = !{!3064, !3065, !3066}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3062, file: !3037, line: 61, baseType: !376, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3062, file: !3037, line: 63, baseType: !376, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3062, file: !3037, line: 65, baseType: !376, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3036, file: !3037, line: 153, baseType: !273, size: 64, offset: 1152)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3036, file: !3037, line: 154, baseType: !273, size: 64, offset: 1216)
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !3036, file: !3037, line: 156, baseType: !3070, size: 64, offset: 1280)
!3070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3036, file: !3037, line: 156, size: 64, elements: !3071)
!3071 = !{!3072, !3073, !3074}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3070, file: !3037, line: 158, baseType: !192, size: 16)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3070, file: !3037, line: 160, baseType: !376, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3070, file: !3037, line: 162, baseType: !3075, size: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3037, line: 69, size: 64, elements: !3076)
!3076 = !{!3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3075, file: !3037, line: 71, baseType: !376, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3075, file: !3037, line: 73, baseType: !376, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3075, file: !3037, line: 75, baseType: !376, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3075, file: !3037, line: 77, baseType: !376, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3075, file: !3037, line: 80, baseType: !376, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3075, file: !3037, line: 83, baseType: !376, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3075, file: !3037, line: 86, baseType: !376, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3075, file: !3037, line: 88, baseType: !376, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3075, file: !3037, line: 93, baseType: !376, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3075, file: !3037, line: 100, baseType: !376, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3012, file: !2941, line: 96, baseType: !372, size: 32, offset: 1024)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2959, file: !2941, line: 352, baseType: !3089, size: 4608, align: 512)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2941, line: 333, size: 4608, align: 512, elements: !3090)
!3090 = !{!3091, !3092, !3099}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3089, file: !2941, line: 334, baseType: !2977, size: 4096, align: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3089, file: !2941, line: 335, baseType: !3093, size: 512, offset: 4096)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2941, line: 312, size: 512, elements: !3094)
!3094 = !{!3095, !3096, !3097}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3093, file: !2941, line: 313, baseType: !376, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3093, file: !2941, line: 314, baseType: !376, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3093, file: !2941, line: 315, baseType: !3098, size: 384, offset: 128)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 384, elements: !1457)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3089, file: !2941, line: 336, baseType: !3100, offset: 4608)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, elements: !1371)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2959, file: !2941, line: 353, baseType: !3102, size: 32768)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 32768, elements: !3103)
!3103 = !{!3104}
!3104 = !DISubrange(count: 4096)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2940, file: !2941, line: 484, baseType: !2946, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2940, file: !2941, line: 491, baseType: !3107, size: 128, offset: 256)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2941, line: 404, size: 128, elements: !3108)
!3108 = !{!3109, !3110, !3111}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3107, file: !2941, line: 424, baseType: !376, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3107, file: !2941, line: 432, baseType: !13, size: 32, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3107, file: !2941, line: 440, baseType: !13, size: 32, offset: 96)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2940, file: !2941, line: 498, baseType: !3107, size: 128, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2940, file: !2941, line: 508, baseType: !2947, size: 33280, align: 512, offset: 512)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !899, file: !900, line: 16, baseType: !909, size: 192, offset: 512)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !899, file: !900, line: 17, baseType: !174, size: 32, offset: 704)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !455, file: !20, line: 1240, baseType: !116, size: 64, offset: 6912)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !455, file: !20, line: 1243, baseType: !372, size: 32, offset: 6976)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !455, file: !20, line: 1245, baseType: !656, size: 64, offset: 7040)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !455, file: !20, line: 1246, baseType: !656, size: 64, offset: 7104)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !455, file: !20, line: 1248, baseType: !373, size: 32, offset: 7168)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !455, file: !20, line: 1249, baseType: !3122, size: 64, offset: 7232)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !455, file: !20, line: 1252, baseType: !3125, size: 256, offset: 7296)
!3125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !385)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !455, file: !20, line: 1253, baseType: !3127, size: 128, offset: 7552)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3128, line: 21, baseType: !3129)
!3128 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3128, line: 19, size: 128, elements: !3130)
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3129, file: !3128, line: 20, baseType: !3132, size: 128)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !2325)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !455, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !455, file: !20, line: 1261, baseType: !603, size: 256, offset: 7744)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !455, file: !20, line: 1267, baseType: !117, size: 64, offset: 8000)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !455, file: !20, line: 1269, baseType: !401, size: 64, offset: 8064)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !455, file: !20, line: 1271, baseType: !3138, size: 448, offset: 8128)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !665, line: 63, size: 448, elements: !3139)
!3139 = !{!3140, !3145, !3146, !3147, !3148, !3149, !3150}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3138, file: !665, line: 64, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!273, !3144, !663}
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3138, file: !665, line: 66, baseType: !3141, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3138, file: !665, line: 69, baseType: !259, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3138, file: !665, line: 70, baseType: !106, size: 32, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3138, file: !665, line: 71, baseType: !13, size: 32, offset: 224)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3138, file: !665, line: 74, baseType: !123, size: 128, offset: 256)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3138, file: !665, line: 85, baseType: !3151, size: 64, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !455, file: !20, line: 1274, baseType: !607, size: 64, offset: 8576)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !455, file: !20, line: 1280, baseType: !607, size: 64, offset: 8640)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !455, file: !20, line: 1283, baseType: !106, size: 32, offset: 8704)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !455, file: !20, line: 1286, baseType: !2044, size: 32, offset: 8736)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !455, file: !20, line: 1289, baseType: !3157, size: 64, offset: 8768)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2173, line: 18, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !455, file: !20, line: 1290, baseType: !495, size: 64, offset: 8832)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !455, file: !20, line: 1297, baseType: !1352, size: 64, offset: 8896)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !455, file: !20, line: 1304, baseType: !3162, size: 64, offset: 8960)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3163, line: 49, size: 64, elements: !3164)
!3163 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3164 = !{!3165}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3162, file: !3163, line: 50, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3163, line: 41, size: 512, align: 512, elements: !3168)
!3168 = !{!3169, !3170, !3175}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3167, file: !3163, line: 43, baseType: !154, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3167, file: !3163, line: 45, baseType: !3171, size: 192, offset: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3163, line: 29, size: 192, elements: !3172)
!3172 = !{!3173, !3174}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3171, file: !3163, line: 30, baseType: !123, size: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3171, file: !3163, line: 32, baseType: !259, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3167, file: !3163, line: 46, baseType: !259, size: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !455, file: !20, line: 1305, baseType: !3162, size: 64, offset: 9024)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !455, file: !20, line: 1306, baseType: !916, size: 128, align: 64, offset: 9088)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !455, file: !20, line: 1307, baseType: !2172, size: 256, offset: 9216)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !455, file: !20, line: 1309, baseType: !603, size: 256, offset: 9472)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !455, file: !20, line: 1314, baseType: !106, size: 32, offset: 9728)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !455, file: !20, line: 1317, baseType: !154, size: 32, align: 512, offset: 10240)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !455, file: !20, line: 1318, baseType: !123, size: 128, offset: 10304)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !455, file: !20, line: 1320, baseType: !154, size: 32, offset: 10432)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !455, file: !20, line: 1321, baseType: !123, size: 128, offset: 10496)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !449, file: !450, line: 73, baseType: !106, size: 32, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !449, file: !450, line: 74, baseType: !3187, size: 64, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1395, line: 42, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !403, file: !340, line: 141, baseType: !3191, size: 64, offset: 704)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!106, !726, !1470}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !403, file: !340, line: 142, baseType: !3195, size: 64, offset: 768)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!338, !338, !3198}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !339, file: !340, line: 96, baseType: !454, size: 64, offset: 832)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !339, file: !340, line: 97, baseType: !273, size: 64, offset: 896)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !339, file: !340, line: 98, baseType: !116, size: 64, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !340, line: 100, baseType: !3204, size: 128, offset: 1024)
!3204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !340, line: 100, size: 128, elements: !3205)
!3205 = !{!3206, !3207}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3204, file: !340, line: 101, baseType: !123, size: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3204, file: !340, line: 102, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !339, file: !340, line: 104, baseType: !123, size: 128, offset: 1152)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !339, file: !340, line: 105, baseType: !123, size: 128, offset: 1280)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !339, file: !340, line: 113, baseType: !3212, size: 128, offset: 1408)
!3212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !340, line: 109, size: 128, elements: !3213)
!3213 = !{!3214, !3215, !3216}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3212, file: !340, line: 110, baseType: !499, size: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3212, file: !340, line: 111, baseType: !354, size: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3212, file: !340, line: 112, baseType: !916, size: 128, align: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !332, file: !20, line: 1968, baseType: !3218, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!117, !338, !303, !3221}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3223, line: 10, size: 128, elements: !3224)
!3223 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3224 = !{!3225, !3229}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3222, file: !3223, line: 11, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !116}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3222, file: !3223, line: 12, baseType: !116, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !332, file: !20, line: 1969, baseType: !3231, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!106, !3187, !303, !106}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !332, file: !20, line: 1970, baseType: !3235, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!326, !303, !106, !1470}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !332, file: !20, line: 1972, baseType: !3239, size: 64, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!106, !338, !115, !106}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !332, file: !20, line: 1974, baseType: !3243, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!106, !3187, !303, !338, !265, !1470}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !332, file: !20, line: 1976, baseType: !3247, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!106, !338, !303, !338}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !332, file: !20, line: 1977, baseType: !3251, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!106, !303, !338}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !332, file: !20, line: 1978, baseType: !3255, size: 64, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!106, !3187, !303, !338, !117}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !332, file: !20, line: 1980, baseType: !3259, size: 64, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!106, !3187, !303, !338, !265}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !332, file: !20, line: 1982, baseType: !3251, size: 64, offset: 640)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !332, file: !20, line: 1983, baseType: !3264, size: 64, offset: 704)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!106, !3187, !303, !338, !265, !459}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !332, file: !20, line: 1985, baseType: !3268, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!106, !3187, !303, !338, !303, !338, !13}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !332, file: !20, line: 1987, baseType: !3272, size: 64, offset: 832)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!106, !3187, !338, !3275}
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3277)
!3277 = !{!3278, !3279, !3280, !3290, !3299, !3300, !3305, !3306, !3307}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3276, file: !20, line: 227, baseType: !13, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3276, file: !20, line: 228, baseType: !265, size: 16, offset: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !20, line: 241, baseType: !3281, size: 32, offset: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3276, file: !20, line: 241, size: 32, elements: !3282)
!3282 = !{!3283, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3281, file: !20, line: 242, baseType: !309, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3281, file: !20, line: 243, baseType: !3285, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3286, line: 16, baseType: !3287)
!3286 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3286, line: 14, size: 32, elements: !3288)
!3288 = !{!3289}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3287, file: !3286, line: 15, baseType: !314, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !20, line: 245, baseType: !3291, size: 32, offset: 96)
!3291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3276, file: !20, line: 245, size: 32, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3291, file: !20, line: 246, baseType: !318, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3291, file: !20, line: 247, baseType: !3295, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3286, line: 20, baseType: !3296)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3286, line: 18, size: 32, elements: !3297)
!3297 = !{!3298}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3296, file: !3286, line: 19, baseType: !322, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3276, file: !20, line: 249, baseType: !464, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3276, file: !20, line: 250, baseType: !3301, size: 128, offset: 192)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !657, line: 13, size: 128, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3301, file: !657, line: 14, baseType: !656, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3301, file: !657, line: 15, baseType: !259, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3276, file: !20, line: 251, baseType: !3301, size: 128, offset: 320)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3276, file: !20, line: 252, baseType: !3301, size: 128, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3276, file: !20, line: 259, baseType: !1262, size: 64, offset: 576)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !332, file: !20, line: 1988, baseType: !3309, size: 64, offset: 896)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!106, !3187, !726, !3312, !372, !13}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3314, line: 22, size: 1280, elements: !3315)
!3314 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3313, file: !3314, line: 23, baseType: !372, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3313, file: !3314, line: 24, baseType: !265, size: 16, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3313, file: !3314, line: 25, baseType: !13, size: 32, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3313, file: !3314, line: 26, baseType: !1435, size: 32, offset: 96)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3313, file: !3314, line: 27, baseType: !376, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3313, file: !3314, line: 28, baseType: !376, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3313, file: !3314, line: 41, baseType: !376, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3313, file: !3314, line: 42, baseType: !459, size: 32, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3313, file: !3314, line: 43, baseType: !459, size: 32, offset: 352)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3313, file: !3314, line: 44, baseType: !309, size: 32, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3313, file: !3314, line: 45, baseType: !318, size: 32, offset: 416)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3313, file: !3314, line: 46, baseType: !464, size: 64, offset: 448)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3313, file: !3314, line: 47, baseType: !3301, size: 128, offset: 512)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3313, file: !3314, line: 48, baseType: !3301, size: 128, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3313, file: !3314, line: 49, baseType: !3301, size: 128, offset: 768)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3313, file: !3314, line: 50, baseType: !3301, size: 128, offset: 896)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3313, file: !3314, line: 51, baseType: !376, size: 64, offset: 1024)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3313, file: !3314, line: 52, baseType: !376, size: 64, offset: 1088)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3313, file: !3314, line: 53, baseType: !372, size: 32, offset: 1152)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3313, file: !3314, line: 54, baseType: !372, size: 32, offset: 1184)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3313, file: !3314, line: 55, baseType: !376, size: 64, offset: 1216)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !332, file: !20, line: 1990, baseType: !3338, size: 64, offset: 960)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!255, !338, !115, !270}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !332, file: !20, line: 1991, baseType: !3342, size: 64, offset: 1024)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!106, !303, !3345, !376, !376}
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !332, file: !20, line: 1993, baseType: !3348, size: 64, offset: 1088)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!106, !303, !106}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !332, file: !20, line: 1994, baseType: !3352, size: 64, offset: 1152)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!106, !303, !338, !1262, !13, !265}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !332, file: !20, line: 1997, baseType: !3356, size: 64, offset: 1216)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!106, !3187, !303, !1262, !265}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !332, file: !20, line: 1999, baseType: !3360, size: 64, offset: 1280)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!326, !3187, !338, !106}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !332, file: !20, line: 2001, baseType: !3364, size: 64, offset: 1344)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!106, !3187, !338, !326, !106}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !332, file: !20, line: 2003, baseType: !3368, size: 64, offset: 1408)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!106, !3187, !338, !3371}
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !332, file: !20, line: 2005, baseType: !3374, size: 64, offset: 1472)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!106, !338, !3371}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !332, file: !20, line: 2006, baseType: !3378, size: 64, offset: 1536)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!3381, !303}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3383)
!3383 = !{!3384, !3385}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3382, file: !20, line: 3193, baseType: !1331, size: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3382, file: !20, line: 3194, baseType: !372, size: 32, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !304, file: !20, line: 655, baseType: !454, size: 64, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !304, file: !20, line: 656, baseType: !299, size: 64, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !304, file: !20, line: 659, baseType: !116, size: 64, offset: 576)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !304, file: !20, line: 663, baseType: !273, size: 64, offset: 640)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !20, line: 671, baseType: !3391, size: 32, offset: 704)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !20, line: 671, size: 32, elements: !3392)
!3392 = !{!3393, !3395}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3391, file: !20, line: 672, baseType: !3394, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3391, file: !20, line: 673, baseType: !13, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !304, file: !20, line: 675, baseType: !459, size: 32, offset: 736)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !304, file: !20, line: 676, baseType: !464, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !304, file: !20, line: 677, baseType: !3301, size: 128, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !304, file: !20, line: 678, baseType: !3301, size: 128, offset: 960)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !304, file: !20, line: 679, baseType: !3301, size: 128, offset: 1088)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !304, file: !20, line: 680, baseType: !154, size: 32, offset: 1216)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !304, file: !20, line: 681, baseType: !194, size: 16, offset: 1248)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !304, file: !20, line: 682, baseType: !182, size: 8, offset: 1264)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !304, file: !20, line: 683, baseType: !182, size: 8, offset: 1272)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !304, file: !20, line: 684, baseType: !804, size: 64, offset: 1280)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !304, file: !20, line: 691, baseType: !273, size: 64, offset: 1344)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !304, file: !20, line: 692, baseType: !816, size: 320, offset: 1408)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !304, file: !20, line: 694, baseType: !273, size: 64, offset: 1728)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !304, file: !20, line: 695, baseType: !273, size: 64, offset: 1792)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !304, file: !20, line: 697, baseType: !499, size: 128, offset: 1856)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !304, file: !20, line: 698, baseType: !123, size: 128, offset: 1984)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !304, file: !20, line: 707, baseType: !123, size: 128, offset: 2112)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !304, file: !20, line: 708, baseType: !123, size: 128, offset: 2240)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !20, line: 709, baseType: !3415, size: 128, offset: 2368)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !20, line: 709, size: 128, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3415, file: !20, line: 710, baseType: !495, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3415, file: !20, line: 711, baseType: !916, size: 128, align: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !304, file: !20, line: 713, baseType: !609, size: 64, offset: 2496)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !304, file: !20, line: 714, baseType: !609, size: 64, offset: 2560)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !304, file: !20, line: 715, baseType: !174, size: 32, offset: 2624)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !304, file: !20, line: 716, baseType: !174, size: 32, offset: 2656)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !304, file: !20, line: 717, baseType: !174, size: 32, offset: 2688)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !304, file: !20, line: 719, baseType: !174, size: 32, offset: 2720)
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !20, line: 721, baseType: !3426, size: 64, offset: 2752)
!3426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !20, line: 721, size: 64, elements: !3427)
!3427 = !{!3428, !3429}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3426, file: !20, line: 722, baseType: !1579, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3426, file: !20, line: 723, baseType: !526, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !304, file: !20, line: 725, baseType: !3431, size: 64, offset: 2816)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !304, file: !20, line: 726, baseType: !300, size: 1536, align: 64, offset: 2880)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !304, file: !20, line: 727, baseType: !123, size: 128, offset: 4416)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !20, line: 728, baseType: !3436, size: 64, offset: 4544)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !20, line: 728, size: 64, elements: !3437)
!3437 = !{!3438, !3439, !3442, !3443}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3436, file: !20, line: 729, baseType: !1994, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3436, file: !20, line: 730, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3436, file: !20, line: 731, baseType: !115, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3436, file: !20, line: 732, baseType: !13, size: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !304, file: !20, line: 735, baseType: !373, size: 32, offset: 4608)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !304, file: !20, line: 738, baseType: !373, size: 32, offset: 4640)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !304, file: !20, line: 739, baseType: !3122, size: 64, offset: 4672)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !304, file: !20, line: 750, baseType: !116, size: 64, offset: 4736)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !300, file: !20, line: 474, baseType: !1331, size: 128, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !300, file: !20, line: 475, baseType: !816, size: 320, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !300, file: !20, line: 476, baseType: !668, size: 32, offset: 512)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !300, file: !20, line: 477, baseType: !174, size: 32, offset: 544)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !300, file: !20, line: 482, baseType: !1118, size: 128, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !300, file: !20, line: 483, baseType: !273, size: 64, offset: 704)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !300, file: !20, line: 484, baseType: !273, size: 64, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !300, file: !20, line: 485, baseType: !3456, size: 64, offset: 832)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3458)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !3459)
!3459 = !{!3460, !3464, !3534, !3538, !3542, !3548, !3553, !3557, !3562, !3566, !3570, !3574, !3575, !3579, !3583, !3587, !3592, !3596, !3603, !3604}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3458, file: !20, line: 405, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!106, !1771, !538}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3458, file: !20, line: 406, baseType: !3465, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!106, !1262, !3468}
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !3470)
!3470 = !{!3471, !3501, !3515}
!3471 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !44, line: 295, baseType: !3472, size: 512)
!3472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !44, line: 295, size: 512, elements: !3473)
!3473 = !{!3474, !3500}
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3472, file: !44, line: 296, baseType: !3475, size: 448)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3472, file: !44, line: 296, size: 448, elements: !3476)
!3476 = !{!3477, !3478, !3487, !3488, !3489, !3498, !3499}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3475, file: !44, line: 298, baseType: !273, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !44, line: 299, baseType: !3479, size: 128, offset: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3475, file: !44, line: 299, size: 128, elements: !3480)
!3480 = !{!3481, !3482}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3479, file: !44, line: 300, baseType: !123, size: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !44, line: 302, baseType: !3483, size: 128)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !44, line: 302, size: 128, elements: !3484)
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3483, file: !44, line: 303, baseType: !116, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3483, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3475, file: !44, line: 310, baseType: !299, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3475, file: !44, line: 311, baseType: !273, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !44, line: 312, baseType: !3490, size: 64, offset: 320)
!3490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3475, file: !44, line: 312, size: 64, elements: !3491)
!3491 = !{!3492, !3493}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3490, file: !44, line: 313, baseType: !116, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3490, file: !44, line: 314, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !3496)
!3496 = !{!3497}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3495, file: !44, line: 256, baseType: !273, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3475, file: !44, line: 316, baseType: !174, size: 32, offset: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3475, file: !44, line: 317, baseType: !174, size: 32, offset: 416)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3472, file: !44, line: 323, baseType: !1772, size: 512, align: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !44, line: 325, baseType: !3502, size: 512, offset: 512)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !44, line: 325, size: 512, elements: !3503)
!3503 = !{!3504, !3514}
!3504 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !44, line: 326, baseType: !3505, size: 320)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3502, file: !44, line: 326, size: 320, elements: !3506)
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3505, file: !44, line: 327, baseType: !273, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3505, file: !44, line: 328, baseType: !273, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3505, file: !44, line: 329, baseType: !273, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3505, file: !44, line: 331, baseType: !174, size: 32, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3505, file: !44, line: 332, baseType: !174, size: 32, offset: 224)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3505, file: !44, line: 333, baseType: !174, size: 32, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3505, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3502, file: !44, line: 339, baseType: !1772, size: 512, align: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !44, line: 341, baseType: !3516, size: 512, offset: 1024)
!3516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !44, line: 341, size: 512, elements: !3517)
!3517 = !{!3518, !3527, !3533}
!3518 = !DIDerivedType(tag: DW_TAG_member, scope: !3516, file: !44, line: 342, baseType: !3519, size: 384)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3516, file: !44, line: 342, size: 384, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3519, file: !44, line: 343, baseType: !273, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3519, file: !44, line: 344, baseType: !273, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3519, file: !44, line: 346, baseType: !116, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3519, file: !44, line: 347, baseType: !116, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3519, file: !44, line: 348, baseType: !116, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3519, file: !44, line: 349, baseType: !116, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, scope: !3516, file: !44, line: 352, baseType: !3528, size: 256)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3516, file: !44, line: 352, size: 256, elements: !3529)
!3529 = !{!3530, !3531, !3532}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3528, file: !44, line: 353, baseType: !273, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3528, file: !44, line: 354, baseType: !273, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3528, file: !44, line: 356, baseType: !123, size: 128, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3516, file: !44, line: 359, baseType: !1772, size: 512, align: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3458, file: !20, line: 409, baseType: !3535, size: 64, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!106, !299, !538}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3458, file: !20, line: 412, baseType: !3539, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!1470, !299, !3468}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3458, file: !20, line: 414, baseType: !3543, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !3546}
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3458, file: !20, line: 416, baseType: !3549, size: 64, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!106, !1262, !299, !464, !13, !3552, !2009}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3458, file: !20, line: 419, baseType: !3554, size: 64, offset: 384)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!106, !1262, !299, !464, !13, !13, !1771, !116}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3458, file: !20, line: 424, baseType: !3558, size: 64, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!3561, !299, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !124, line: 131, baseType: !376)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3458, file: !20, line: 425, baseType: !3563, size: 64, offset: 512)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3468, !270, !270}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3458, file: !20, line: 426, baseType: !3567, size: 64, offset: 576)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!1470, !3468, !668}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3458, file: !20, line: 427, baseType: !3571, size: 64, offset: 640)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{null, !3468}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3458, file: !20, line: 428, baseType: !1598, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3458, file: !20, line: 433, baseType: !3576, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!106, !299, !3468, !3468, !80}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3458, file: !20, line: 435, baseType: !3580, size: 64, offset: 832)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!106, !3468}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3458, file: !20, line: 436, baseType: !3584, size: 64, offset: 896)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!1470, !3468, !270, !270}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3458, file: !20, line: 438, baseType: !3588, size: 64, offset: 960)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !3468, !3591, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3458, file: !20, line: 439, baseType: !3593, size: 64, offset: 1024)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!106, !299, !1771}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3458, file: !20, line: 442, baseType: !3597, size: 64, offset: 1088)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!106, !3600, !1262, !3602}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3458, file: !20, line: 444, baseType: !2001, size: 64, offset: 1152)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3458, file: !20, line: 445, baseType: !3605, size: 64, offset: 1216)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!106, !1601, !1623}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !20, line: 486, baseType: !273, size: 64, offset: 896)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !300, file: !20, line: 487, baseType: !816, size: 320, offset: 960)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !300, file: !20, line: 488, baseType: !2044, size: 32, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !300, file: !20, line: 489, baseType: !154, size: 32, offset: 1312)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !300, file: !20, line: 490, baseType: !123, size: 128, offset: 1344)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !300, file: !20, line: 491, baseType: !116, size: 64, offset: 1472)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !290, file: !249, line: 180, baseType: !3615, size: 64, offset: 320)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!255, !1262, !147, !289, !115, !464, !270}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !290, file: !249, line: 182, baseType: !3615, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !290, file: !249, line: 184, baseType: !3620, size: 64, offset: 448)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!106, !1262, !147, !289, !1662}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !278, file: !249, line: 90, baseType: !3624, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !278, file: !249, line: 91, baseType: !3626, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !239, file: !142, line: 120, baseType: !3628, size: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!3631, !207}
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3633)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !3634)
!3634 = !{!3635, !3636, !3640, !3644, !3650, !3654}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3633, file: !88, line: 40, baseType: !87, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3633, file: !88, line: 41, baseType: !3637, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!1470}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3633, file: !88, line: 42, baseType: !3641, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!116}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3633, file: !88, line: 43, baseType: !3645, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!2133, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3633, file: !88, line: 44, baseType: !3651, size: 64, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!2133}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3633, file: !88, line: 45, baseType: !3226, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !239, file: !142, line: 121, baseType: !3656, size: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!2133, !207}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !239, file: !142, line: 122, baseType: !3660, size: 64, offset: 320)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !207, !3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !141, file: !142, line: 70, baseType: !3666, size: 64, offset: 384)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !479, line: 190, size: 1152, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3760, !3761, !3762, !3763, !3764, !3767}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3667, file: !479, line: 191, baseType: !174, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3667, file: !479, line: 192, baseType: !174, size: 32, offset: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3667, file: !479, line: 202, baseType: !3666, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3667, file: !479, line: 203, baseType: !117, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3667, file: !479, line: 205, baseType: !989, size: 192, align: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3667, file: !479, line: 207, baseType: !2133, size: 64, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3667, file: !479, line: 208, baseType: !13, size: 32, offset: 448)
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3667, file: !479, line: 209, baseType: !3677, size: 256, offset: 512)
!3677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3667, file: !479, line: 209, size: 256, elements: !3678)
!3678 = !{!3679, !3688, !3692}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3677, file: !479, line: 210, baseType: !3680, size: 256)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !479, line: 153, size: 256, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3687}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3680, file: !479, line: 154, baseType: !273, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3680, file: !479, line: 156, baseType: !1121, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3680, file: !479, line: 162, baseType: !3685, size: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !479, line: 162, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3680, file: !479, line: 167, baseType: !273, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3677, file: !479, line: 211, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !479, line: 170, size: 64, elements: !3690)
!3690 = !{!3691}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3689, file: !479, line: 171, baseType: !3666, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3677, file: !479, line: 212, baseType: !3693, size: 256)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !479, line: 174, size: 256, elements: !3694)
!3694 = !{!3695, !3755, !3758, !3759}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3693, file: !479, line: 175, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3698)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !479, line: 271, size: 768, elements: !3699)
!3699 = !{!3700, !3720, !3724, !3728, !3732, !3736, !3740, !3744, !3745, !3746, !3747, !3751}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3698, file: !479, line: 276, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!106, !3704}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !479, line: 251, size: 1216, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3705, file: !479, line: 253, baseType: !3666, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3705, file: !479, line: 254, baseType: !1262, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3705, file: !479, line: 255, baseType: !576, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3705, file: !479, line: 256, baseType: !116, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3705, file: !479, line: 259, baseType: !603, size: 256, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3705, file: !479, line: 260, baseType: !603, size: 256, offset: 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3705, file: !479, line: 261, baseType: !106, size: 32, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3705, file: !479, line: 262, baseType: !123, size: 128, offset: 832)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3705, file: !479, line: 263, baseType: !115, size: 64, offset: 960)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3705, file: !479, line: 265, baseType: !270, size: 64, offset: 1024)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3705, file: !479, line: 266, baseType: !1470, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3705, file: !479, line: 267, baseType: !1470, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3705, file: !479, line: 268, baseType: !1707, size: 64, offset: 1152)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3698, file: !479, line: 277, baseType: !3721, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3704}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3698, file: !479, line: 290, baseType: !3725, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!106, !576, !116}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3698, file: !479, line: 292, baseType: !3729, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!116, !576, !1592}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3698, file: !479, line: 293, baseType: !3733, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!116, !576, !116, !1592}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3698, file: !479, line: 294, baseType: !3737, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !576, !116}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3698, file: !479, line: 296, baseType: !3741, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!255, !3704, !115, !270, !464}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3698, file: !479, line: 306, baseType: !270, size: 64, offset: 448)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3698, file: !479, line: 313, baseType: !1470, size: 8, offset: 512)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3698, file: !479, line: 314, baseType: !3741, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3698, file: !479, line: 317, baseType: !3748, size: 64, offset: 640)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!1649, !3704, !1651}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3698, file: !479, line: 320, baseType: !3752, size: 64, offset: 704)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!106, !3704, !1662}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3693, file: !479, line: 176, baseType: !3756, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !479, line: 35, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3693, file: !479, line: 177, baseType: !464, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3693, file: !479, line: 178, baseType: !3666, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3667, file: !479, line: 215, baseType: !116, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3667, file: !479, line: 221, baseType: !376, size: 64, offset: 832)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3667, file: !479, line: 223, baseType: !194, size: 16, offset: 896)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3667, file: !479, line: 224, baseType: !265, size: 16, offset: 912)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3667, file: !479, line: 225, baseType: !3765, size: 64, offset: 960)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !479, line: 36, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3667, file: !479, line: 227, baseType: !916, size: 128, align: 64, offset: 1024)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !141, file: !142, line: 71, baseType: !3769, size: 32, offset: 448)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3770, line: 19, size: 32, elements: !3771)
!3770 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3771 = !{!3772}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3769, file: !3770, line: 20, baseType: !945, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !141, file: !142, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !141, file: !142, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !141, file: !142, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !141, file: !142, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !141, file: !142, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !138, file: !12, line: 47, baseType: !128, size: 64, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !138, file: !12, line: 48, baseType: !147, size: 64, offset: 576)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !138, file: !12, line: 49, baseType: !3781, size: 64, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !138, file: !12, line: 50, baseType: !2282, size: 64, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !129, file: !12, line: 418, baseType: !3785, size: 64, offset: 1408)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !3787)
!3787 = !{!3788, !3789, !3794, !3798, !3802, !3806}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3786, file: !12, line: 54, baseType: !261, size: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3786, file: !12, line: 55, baseType: !3790, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!255, !3785, !3793, !115}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3786, file: !12, line: 57, baseType: !3795, size: 64, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!255, !3785, !3793, !117, !270}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3786, file: !12, line: 59, baseType: !3799, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null, !128, !117}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3786, file: !12, line: 60, baseType: !3803, size: 64, offset: 320)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!106, !128}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3786, file: !12, line: 61, baseType: !3807, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !128}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !129, file: !12, line: 419, baseType: !117, size: 64, offset: 1472)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !129, file: !12, line: 420, baseType: !117, size: 64, offset: 1536)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !129, file: !12, line: 421, baseType: !147, size: 64, offset: 1600)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !129, file: !12, line: 424, baseType: !3814, size: 64, offset: 1664)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !129, file: !12, line: 425, baseType: !3818, size: 64, offset: 1728)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !129, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !129, file: !12, line: 435, baseType: !603, size: 256, offset: 1856)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !129, file: !12, line: 437, baseType: !3823, size: 64, offset: 2112)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3825, line: 69, size: 320, elements: !3826)
!3825 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3826 = !{!3827, !3828, !3829, !3846, !3848, !3852, !3853}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3824, file: !3825, line: 70, baseType: !117, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3824, file: !3825, line: 71, baseType: !128, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3824, file: !3825, line: 72, baseType: !3830, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3832)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3825, line: 47, size: 256, elements: !3833)
!3833 = !{!3834, !3835, !3841, !3845}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3832, file: !3825, line: 49, baseType: !13, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3832, file: !3825, line: 51, baseType: !3836, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!106, !117, !3839}
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3824)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3832, file: !3825, line: 53, baseType: !3842, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!106, !115, !3839}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3832, file: !3825, line: 55, baseType: !3226, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3824, file: !3825, line: 73, baseType: !3847, size: 16, offset: 192)
!3847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3824, file: !3825, line: 74, baseType: !3849, size: 8, offset: 208)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !183, line: 16, baseType: !3850)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !185, line: 20, baseType: !3851)
!3851 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3824, file: !3825, line: 75, baseType: !182, size: 8, offset: 216)
!3853 = !DIDerivedType(tag: DW_TAG_member, scope: !3824, file: !3825, line: 76, baseType: !3854, size: 64, offset: 256)
!3854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3824, file: !3825, line: 76, size: 64, elements: !3855)
!3855 = !{!3856, !3857, !3864}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3854, file: !3825, line: 77, baseType: !116, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3854, file: !3825, line: 78, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3860)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3825, line: 86, size: 128, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3860, file: !3825, line: 87, baseType: !13, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3860, file: !3825, line: 88, baseType: !115, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3854, file: !3825, line: 79, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3867)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3825, line: 92, size: 256, elements: !3868)
!3868 = !{!3869, !3870, !3871, !3872, !3873}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3867, file: !3825, line: 94, baseType: !13, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3867, file: !3825, line: 95, baseType: !13, size: 32, offset: 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3867, file: !3825, line: 96, baseType: !925, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3867, file: !3825, line: 97, baseType: !3830, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3867, file: !3825, line: 98, baseType: !116, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !129, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !129, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !129, file: !12, line: 442, baseType: !3814, size: 64, offset: 2240)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !129, file: !12, line: 443, baseType: !3818, size: 64, offset: 2304)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !129, file: !12, line: 444, baseType: !1470, size: 8, offset: 2368)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !129, file: !12, line: 451, baseType: !1470, size: 8, offset: 2376)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !129, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !129, file: !12, line: 455, baseType: !3882, size: 64, offset: 2432)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3884, line: 23, size: 96, elements: !3885)
!3884 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3883, file: !3884, line: 24, baseType: !106, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3883, file: !3884, line: 24, baseType: !106, size: 32, offset: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3883, file: !3884, line: 24, baseType: !106, size: 32, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !129, file: !12, line: 458, baseType: !3890, size: 64, offset: 2496)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!106}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !129, file: !12, line: 460, baseType: !3894, size: 4032, align: 512, offset: 2560)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3895, size: 4032, elements: !3909)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !3896)
!3896 = !{!3897, !3898, !3899}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3895, file: !12, line: 363, baseType: !116, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3895, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3895, file: !12, line: 367, baseType: !3900, size: 448, offset: 128)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !3901)
!3901 = !{!3902, !3903}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3900, file: !12, line: 320, baseType: !128, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3900, file: !12, line: 321, baseType: !3904, size: 384, offset: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3905, line: 40, size: 384, elements: !3906)
!3905 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3906 = !{!3907}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3904, file: !3905, line: 41, baseType: !3908, size: 384, align: 64)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 384, align: 64, elements: !2429)
!3909 = !{!3910}
!3910 = !DISubrange(count: 7)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !129, file: !12, line: 463, baseType: !3912, size: 192, offset: 6592)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3913, line: 8, size: 192, elements: !3914)
!3913 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3914 = !{!3915, !3916, !3917}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3912, file: !3913, line: 10, baseType: !13, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3912, file: !3913, line: 11, baseType: !570, size: 64, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3912, file: !3913, line: 12, baseType: !3918, size: 64, offset: 128)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3920, line: 59, size: 48, elements: !3921)
!3920 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3919, file: !3920, line: 60, baseType: !2150, size: 16)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3919, file: !3920, line: 61, baseType: !2150, size: 16, offset: 16)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3919, file: !3920, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3919, file: !3920, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3919, file: !3920, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3919, file: !3920, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !129, file: !12, line: 465, baseType: !273, size: 64, offset: 6784)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !129, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !129, file: !12, line: 470, baseType: !123, size: 128, offset: 6912)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !129, file: !12, line: 471, baseType: !3932, size: 64, offset: 7040)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3934, line: 33, size: 96, elements: !3935)
!3934 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3935 = !{!3936, !3937, !3938, !3939}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3933, file: !3934, line: 37, baseType: !106, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3933, file: !3934, line: 43, baseType: !106, size: 32, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3933, file: !3934, line: 45, baseType: !194, size: 16, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3933, file: !3934, line: 47, baseType: !194, size: 16, offset: 80)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !129, file: !12, line: 476, baseType: !3941, size: 64, offset: 7104)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !3943)
!3943 = !{!3944, !3960, !3961, !3962}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3942, file: !12, line: 379, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3947, line: 204, baseType: !3948)
!3947 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3947, line: 197, size: 192, elements: !3949)
!3949 = !{!3950, !3952, !3953, !3954, !3956, !3958}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3948, file: !3947, line: 198, baseType: !3951, size: 32)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3947, line: 21, baseType: !373)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3948, file: !3947, line: 199, baseType: !186, size: 8, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3948, file: !3947, line: 200, baseType: !186, size: 8, offset: 40)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3948, file: !3947, line: 201, baseType: !3955, size: 16, offset: 48)
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3947, line: 17, baseType: !193)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3948, file: !3947, line: 202, baseType: !3957, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3947, line: 16, baseType: !377)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3948, file: !3947, line: 203, baseType: !3959, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3947, line: 22, baseType: !377)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3942, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3942, file: !12, line: 381, baseType: !115, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3942, file: !12, line: 382, baseType: !115, size: 64, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !129, file: !12, line: 477, baseType: !3942, size: 256, offset: 7168)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !129, file: !12, line: 480, baseType: !3965, size: 64, offset: 7424)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !129, file: !12, line: 483, baseType: !3968, size: 64, offset: 7488)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !129, file: !12, line: 488, baseType: !115, size: 64, offset: 7552)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !129, file: !12, line: 492, baseType: !116, size: 64, offset: 7616)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !129, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !129, file: !12, line: 495, baseType: !116, size: 64, offset: 7744)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !129, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !129, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !129, file: !12, line: 500, baseType: !3977, size: 64, offset: 7872)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3979, line: 45, baseType: !3980)
!3979 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !129, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !129, file: !12, line: 504, baseType: !3983, size: 64, offset: 8000)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3986, line: 96, size: 192, elements: !3987)
!3986 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3987 = !{!3988, !3989, !4032, !4034}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3985, file: !3986, line: 97, baseType: !13, size: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3985, file: !3986, line: 98, baseType: !3990, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3986, line: 24, size: 3072, elements: !3992)
!3992 = !{!3993, !3995, !3996, !3997, !3998, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4029, !4030, !4031}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3991, file: !3986, line: 26, baseType: !3994, size: 128)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 128, elements: !2429)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3991, file: !3986, line: 27, baseType: !3994, size: 128, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3991, file: !3986, line: 28, baseType: !106, size: 32, offset: 256)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3991, file: !3986, line: 31, baseType: !154, size: 32, align: 512, offset: 512)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3991, file: !3986, line: 32, baseType: !3999, size: 960, offset: 576)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4000, line: 206, size: 960, elements: !4001)
!4000 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4001 = !{!4002, !4003, !4006, !4008, !4009, !4011}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3999, file: !4000, line: 207, baseType: !919, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3999, file: !4000, line: 208, baseType: !4004, size: 256, offset: 64)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4005, size: 256, elements: !1311)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3999, file: !4000, line: 209, baseType: !4007, size: 256, offset: 320)
!4007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 256, elements: !1311)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3999, file: !4000, line: 213, baseType: !259, size: 64, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3999, file: !4000, line: 215, baseType: !4010, size: 256, offset: 640)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !1311)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3999, file: !4000, line: 216, baseType: !182, size: 8, offset: 896)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3991, file: !3986, line: 33, baseType: !273, size: 64, offset: 1536)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3991, file: !3986, line: 34, baseType: !273, size: 64, offset: 1600)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3991, file: !3986, line: 35, baseType: !1470, size: 8, offset: 1664)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3991, file: !3986, line: 36, baseType: !2865, size: 320, offset: 1728)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3991, file: !3986, line: 37, baseType: !2172, size: 256, offset: 2048)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3991, file: !3986, line: 38, baseType: !916, size: 128, align: 64, offset: 2304)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3991, file: !3986, line: 39, baseType: !4019, size: 64, offset: 2432)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3986, line: 49, size: 768, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4020, file: !3986, line: 50, baseType: !154, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4020, file: !3986, line: 51, baseType: !4007, size: 256, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4020, file: !3986, line: 53, baseType: !4007, size: 256, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4020, file: !3986, line: 54, baseType: !273, size: 64, offset: 576)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4020, file: !3986, line: 55, baseType: !4019, size: 64, offset: 640)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4020, file: !3986, line: 56, baseType: !106, size: 32, offset: 704)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4020, file: !3986, line: 57, baseType: !106, size: 32, offset: 736)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3991, file: !3986, line: 40, baseType: !273, size: 64, offset: 2496)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3991, file: !3986, line: 42, baseType: !106, size: 32, offset: 2560)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3991, file: !3986, line: 43, baseType: !3984, size: 64, offset: 2624)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3985, file: !3986, line: 99, baseType: !4033, offset: 128)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !506, line: 211, elements: !507)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3985, file: !3986, line: 100, baseType: !4035, size: 64, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3986, line: 63, size: 3008, elements: !4037)
!4037 = !{!4038, !4039, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4067}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4036, file: !3986, line: 64, baseType: !4019, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4036, file: !3986, line: 65, baseType: !4040, size: 192, offset: 64)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4019, size: 192, elements: !224)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4036, file: !3986, line: 67, baseType: !106, size: 32, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4036, file: !3986, line: 68, baseType: !603, size: 256, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4036, file: !3986, line: 69, baseType: !154, size: 32, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4036, file: !3986, line: 70, baseType: !603, size: 256, offset: 640)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4036, file: !3986, line: 71, baseType: !273, size: 64, offset: 896)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4036, file: !3986, line: 72, baseType: !273, size: 64, offset: 960)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4036, file: !3986, line: 73, baseType: !273, size: 64, offset: 1024)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4036, file: !3986, line: 74, baseType: !273, size: 64, offset: 1088)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4036, file: !3986, line: 75, baseType: !273, size: 64, offset: 1152)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4036, file: !3986, line: 76, baseType: !273, size: 64, offset: 1216)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4036, file: !3986, line: 77, baseType: !273, size: 64, offset: 1280)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4036, file: !3986, line: 78, baseType: !273, size: 64, offset: 1344)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4036, file: !3986, line: 79, baseType: !1470, size: 8, offset: 1408)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4036, file: !3986, line: 80, baseType: !273, size: 64, offset: 1472)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4036, file: !3986, line: 81, baseType: !603, size: 256, offset: 1536)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4036, file: !3986, line: 82, baseType: !1856, size: 256, offset: 1792)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4036, file: !3986, line: 84, baseType: !174, size: 32, offset: 2048)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4036, file: !3986, line: 87, baseType: !273, size: 64, offset: 2112)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4036, file: !3986, line: 88, baseType: !273, size: 64, offset: 2176)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4036, file: !3986, line: 89, baseType: !4061, size: 704, offset: 2240)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2173, line: 111, size: 704, elements: !4062)
!4062 = !{!4063, !4064, !4065, !4066}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4061, file: !2173, line: 112, baseType: !2172, size: 256)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4061, file: !2173, line: 113, baseType: !2865, size: 320, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4061, file: !2173, line: 116, baseType: !3157, size: 64, offset: 576)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4061, file: !2173, line: 117, baseType: !106, size: 32, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4036, file: !3986, line: 90, baseType: !3984, size: 64, offset: 2944)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !129, file: !12, line: 515, baseType: !4069, size: 64, offset: 8064)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4071, line: 117, size: 128, elements: !4072)
!4071 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4072 = !{!4073, !4074, !4075}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4070, file: !4071, line: 118, baseType: !1413, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4070, file: !4071, line: 119, baseType: !1413, size: 32, offset: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4070, file: !4071, line: 120, baseType: !259, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !129, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !129, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !129, file: !12, line: 520, baseType: !4079, size: 64, offset: 8192)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !129, file: !12, line: 523, baseType: !4081, size: 64, offset: 8256)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !129, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !129, file: !12, line: 525, baseType: !4086, size: 64, offset: 8384)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !129, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !129, file: !12, line: 533, baseType: !116, size: 64, offset: 8512)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !129, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !129, file: !12, line: 535, baseType: !4093, size: 64, offset: 8640)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !129, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !129, file: !12, line: 539, baseType: !106, size: 32, offset: 8736)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !129, file: !12, line: 540, baseType: !4097, size: 64, offset: 8768)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4099, line: 32, size: 64, elements: !4100)
!4099 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4098, file: !4099, line: 33, baseType: !1413, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4098, file: !4099, line: 34, baseType: !1413, size: 32, offset: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !129, file: !12, line: 563, baseType: !123, size: 128, offset: 8832)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !129, file: !12, line: 565, baseType: !123, size: 128, offset: 8960)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !129, file: !12, line: 568, baseType: !4106, size: 64, offset: 9088)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !129, file: !12, line: 570, baseType: !174, size: 32, offset: 9152)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !124, line: 42, baseType: !273)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4114)
!4114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!4115 = !{!0, !7, !4116, !4121, !4126, !4131, !4139}
!4116 = !DIGlobalVariableExpression(var: !4117, expr: !DIExpression())
!4117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !4118, isLocal: true, isDefinition: true)
!4118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !4119)
!4119 = !{!4120}
!4120 = !DISubrange(count: 38)
!4121 = !DIGlobalVariableExpression(var: !4122, expr: !DIExpression())
!4122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !4123, isLocal: true, isDefinition: true)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !4124)
!4124 = !{!4125}
!4125 = !DISubrange(count: 24)
!4126 = !DIGlobalVariableExpression(var: !4127, expr: !DIExpression())
!4127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !4128, isLocal: true, isDefinition: true)
!4128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !4129)
!4129 = !{!4130}
!4130 = !DISubrange(count: 54)
!4131 = !DIGlobalVariableExpression(var: !4132, expr: !DIExpression())
!4132 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace296", scope: !4133, file: !4134, line: 155, type: !116, isLocal: true, isDefinition: true)
!4133 = distinct !DISubprogram(name: "warn_rcu_exit", scope: !4134, file: !4134, line: 151, type: !4135, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4137)
!4134 = !DIFile(filename: "./include/linux/context_tracking.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c1efe0468183524087d0fa1060971d6")
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !1470}
!4137 = !{!4138}
!4138 = !DILocalVariable(name: "rcu", arg: 1, scope: !4133, file: !4134, line: 151, type: !1470)
!4139 = !DIGlobalVariableExpression(var: !4140, expr: !DIExpression())
!4140 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule61", scope: !4141, file: !4142, line: 901, type: !116, isLocal: true, isDefinition: true)
!4141 = distinct !DISubprogram(name: "rcu_read_unlock_sched", scope: !4142, file: !4142, line: 895, type: !2543, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4142 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4143 = !{!"rsp"}
!4144 = !{i32 7, !"Dwarf Version", i32 5}
!4145 = !{i32 2, !"Debug Info Version", i32 3}
!4146 = !{i32 1, !"wchar_size", i32 2}
!4147 = !{i32 8, !"cf-protection-branch", i32 1}
!4148 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4149 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4150 = !{i32 1, !"Code Model", i32 2}
!4151 = !{i32 1, !"override-stack-alignment", i32 8}
!4152 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4153 = distinct !DISubprogram(name: "module_bug_finalize", scope: !2, file: !2, line: 88, type: !4154, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4192)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !4156, !4177, !128}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4158)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Ehdr", file: !3947, line: 241, baseType: !4159)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_hdr", file: !3947, line: 226, size: 512, elements: !4160)
!4160 = !{!4161, !4163, !4164, !4165, !4166, !4167, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !4159, file: !3947, line: 227, baseType: !4162, size: 128)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 128, elements: !2325)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !4159, file: !3947, line: 228, baseType: !3955, size: 16, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !4159, file: !3947, line: 229, baseType: !3955, size: 16, offset: 144)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !4159, file: !3947, line: 230, baseType: !3951, size: 32, offset: 160)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !4159, file: !3947, line: 231, baseType: !3957, size: 64, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !4159, file: !3947, line: 232, baseType: !4168, size: 64, offset: 256)
!4168 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Off", file: !3947, line: 19, baseType: !377)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !4159, file: !3947, line: 233, baseType: !4168, size: 64, offset: 320)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !4159, file: !3947, line: 234, baseType: !3951, size: 32, offset: 384)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !4159, file: !3947, line: 235, baseType: !3955, size: 16, offset: 416)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !4159, file: !3947, line: 236, baseType: !3955, size: 16, offset: 432)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !4159, file: !3947, line: 237, baseType: !3955, size: 16, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !4159, file: !3947, line: 238, baseType: !3955, size: 16, offset: 464)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !4159, file: !3947, line: 239, baseType: !3955, size: 16, offset: 480)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !4159, file: !3947, line: 240, baseType: !3955, size: 16, offset: 496)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4179)
!4179 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Shdr", file: !3947, line: 332, baseType: !4180)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_shdr", file: !3947, line: 321, size: 512, elements: !4181)
!4181 = !{!4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "sh_name", scope: !4180, file: !3947, line: 322, baseType: !3951, size: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "sh_type", scope: !4180, file: !3947, line: 323, baseType: !3951, size: 32, offset: 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "sh_flags", scope: !4180, file: !3947, line: 324, baseType: !3959, size: 64, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addr", scope: !4180, file: !3947, line: 325, baseType: !3957, size: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "sh_offset", scope: !4180, file: !3947, line: 326, baseType: !4168, size: 64, offset: 192)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "sh_size", scope: !4180, file: !3947, line: 327, baseType: !3959, size: 64, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "sh_link", scope: !4180, file: !3947, line: 328, baseType: !3951, size: 32, offset: 320)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "sh_info", scope: !4180, file: !3947, line: 329, baseType: !3951, size: 32, offset: 352)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addralign", scope: !4180, file: !3947, line: 330, baseType: !3959, size: 64, offset: 384)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "sh_entsize", scope: !4180, file: !3947, line: 331, baseType: !3959, size: 64, offset: 448)
!4192 = !{!4193, !4194, !4195, !4196, !4197}
!4193 = !DILocalVariable(name: "hdr", arg: 1, scope: !4153, file: !2, line: 88, type: !4156)
!4194 = !DILocalVariable(name: "sechdrs", arg: 2, scope: !4153, file: !2, line: 88, type: !4177)
!4195 = !DILocalVariable(name: "mod", arg: 3, scope: !4153, file: !2, line: 89, type: !128)
!4196 = !DILocalVariable(name: "secstrings", scope: !4153, file: !2, line: 91, type: !115)
!4197 = !DILocalVariable(name: "i", scope: !4153, file: !2, line: 92, type: !13)
!4198 = !DILocation(line: 88, column: 42, scope: !4153)
!4199 = !DILocation(line: 88, column: 63, scope: !4153)
!4200 = !DILocation(line: 89, column: 20, scope: !4153)
!4201 = !DILocation(line: 91, column: 2, scope: !4153)
!4202 = !DILocation(line: 91, column: 8, scope: !4153)
!4203 = !DILocation(line: 92, column: 2, scope: !4153)
!4204 = !DILocation(line: 92, column: 15, scope: !4153)
!4205 = !DILocation(line: 94, column: 2, scope: !4153)
!4206 = !DILocation(line: 94, column: 7, scope: !4153)
!4207 = !DILocation(line: 94, column: 17, scope: !4153)
!4208 = !DILocation(line: 95, column: 2, scope: !4153)
!4209 = !DILocation(line: 95, column: 7, scope: !4153)
!4210 = !DILocation(line: 95, column: 16, scope: !4153)
!4211 = !DILocation(line: 98, column: 23, scope: !4153)
!4212 = !DILocation(line: 98, column: 29, scope: !4153)
!4213 = !DILocation(line: 98, column: 37, scope: !4153)
!4214 = !DILocation(line: 98, column: 42, scope: !4153)
!4215 = !DILocation(line: 98, column: 54, scope: !4153)
!4216 = !DILocation(line: 98, column: 27, scope: !4153)
!4217 = !DILocation(line: 98, column: 13, scope: !4153)
!4218 = !DILocation(line: 99, column: 9, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4153, file: !2, line: 99, column: 2)
!4220 = !DILocation(line: 99, column: 7, scope: !4219)
!4221 = !DILocation(line: 99, column: 14, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4219, file: !2, line: 99, column: 2)
!4223 = !DILocation(line: 99, column: 18, scope: !4222)
!4224 = !DILocation(line: 99, column: 23, scope: !4222)
!4225 = !DILocation(line: 99, column: 16, scope: !4222)
!4226 = !DILocation(line: 99, column: 2, scope: !4219)
!4227 = !DILocation(line: 100, column: 14, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !2, line: 100, column: 7)
!4229 = distinct !DILexicalBlock(scope: !4222, file: !2, line: 99, column: 37)
!4230 = !DILocation(line: 100, column: 25, scope: !4228)
!4231 = !DILocation(line: 100, column: 33, scope: !4228)
!4232 = !DILocation(line: 100, column: 36, scope: !4228)
!4233 = !DILocation(line: 100, column: 24, scope: !4228)
!4234 = !DILocation(line: 100, column: 7, scope: !4228)
!4235 = !DILocation(line: 100, column: 7, scope: !4229)
!4236 = !DILocation(line: 101, column: 4, scope: !4228)
!4237 = !DILocation(line: 102, column: 29, scope: !4229)
!4238 = !DILocation(line: 102, column: 37, scope: !4229)
!4239 = !DILocation(line: 102, column: 40, scope: !4229)
!4240 = !DILocation(line: 102, column: 20, scope: !4229)
!4241 = !DILocation(line: 102, column: 3, scope: !4229)
!4242 = !DILocation(line: 102, column: 8, scope: !4229)
!4243 = !DILocation(line: 102, column: 18, scope: !4229)
!4244 = !DILocation(line: 103, column: 19, scope: !4229)
!4245 = !DILocation(line: 103, column: 27, scope: !4229)
!4246 = !DILocation(line: 103, column: 30, scope: !4229)
!4247 = !DILocation(line: 103, column: 38, scope: !4229)
!4248 = !DILocation(line: 103, column: 3, scope: !4229)
!4249 = !DILocation(line: 103, column: 8, scope: !4229)
!4250 = !DILocation(line: 103, column: 17, scope: !4229)
!4251 = !DILocation(line: 104, column: 3, scope: !4229)
!4252 = !DILocation(line: 99, column: 33, scope: !4222)
!4253 = !DILocation(line: 99, column: 2, scope: !4222)
!4254 = distinct !{!4254, !4226, !4255, !4256, !4257}
!4255 = !DILocation(line: 105, column: 2, scope: !4219)
!4256 = !{!"llvm.loop.mustprogress"}
!4257 = !{!"llvm.loop.unroll.disable"}
!4258 = !DILocation(line: 114, column: 16, scope: !4153)
!4259 = !DILocation(line: 114, column: 21, scope: !4153)
!4260 = !DILocation(line: 114, column: 2, scope: !4153)
!4261 = !DILocation(line: 115, column: 1, scope: !4153)
!4262 = !DISubprogram(name: "strcmp", scope: !4263, file: !4263, line: 88, type: !4264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4263 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!106, !117, !117}
!4266 = distinct !DISubprogram(name: "list_add_rcu", scope: !4267, file: !4267, line: 104, type: !4268, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4270)
!4267 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !122, !122}
!4270 = !{!4271, !4272}
!4271 = !DILocalVariable(name: "new", arg: 1, scope: !4266, file: !4267, line: 104, type: !122)
!4272 = !DILocalVariable(name: "head", arg: 2, scope: !4266, file: !4267, line: 104, type: !122)
!4273 = !DILocation(line: 104, column: 51, scope: !4266)
!4274 = !DILocation(line: 104, column: 74, scope: !4266)
!4275 = !DILocation(line: 106, column: 17, scope: !4266)
!4276 = !DILocation(line: 106, column: 22, scope: !4266)
!4277 = !DILocation(line: 106, column: 28, scope: !4266)
!4278 = !DILocation(line: 106, column: 34, scope: !4266)
!4279 = !DILocation(line: 106, column: 2, scope: !4266)
!4280 = !DILocation(line: 107, column: 1, scope: !4266)
!4281 = distinct !DISubprogram(name: "module_bug_cleanup", scope: !2, file: !2, line: 117, type: !3808, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4282)
!4282 = !{!4283}
!4283 = !DILocalVariable(name: "mod", arg: 1, scope: !4281, file: !2, line: 117, type: !128)
!4284 = !DILocation(line: 117, column: 40, scope: !4281)
!4285 = !DILocation(line: 119, column: 16, scope: !4281)
!4286 = !DILocation(line: 119, column: 21, scope: !4281)
!4287 = !DILocation(line: 119, column: 2, scope: !4281)
!4288 = !DILocation(line: 120, column: 1, scope: !4281)
!4289 = distinct !DISubprogram(name: "list_del_rcu", scope: !4267, file: !4267, line: 155, type: !4290, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4292)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{null, !122}
!4292 = !{!4293}
!4293 = !DILocalVariable(name: "entry", arg: 1, scope: !4289, file: !4267, line: 155, type: !122)
!4294 = !DILocation(line: 155, column: 51, scope: !4289)
!4295 = !DILocation(line: 157, column: 19, scope: !4289)
!4296 = !DILocation(line: 157, column: 2, scope: !4289)
!4297 = !DILocation(line: 158, column: 2, scope: !4289)
!4298 = !DILocation(line: 158, column: 9, scope: !4289)
!4299 = !DILocation(line: 158, column: 14, scope: !4289)
!4300 = !DILocation(line: 159, column: 1, scope: !4289)
!4301 = distinct !DISubprogram(name: "bug_get_file_line", scope: !2, file: !2, line: 130, type: !4302, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{null, !3932, !4079, !925}
!4304 = !{!4305, !4306, !4307}
!4305 = !DILocalVariable(name: "bug", arg: 1, scope: !4301, file: !2, line: 130, type: !3932)
!4306 = !DILocalVariable(name: "file", arg: 2, scope: !4301, file: !2, line: 130, type: !4079)
!4307 = !DILocalVariable(name: "line", arg: 3, scope: !4301, file: !2, line: 131, type: !925)
!4308 = !DILocation(line: 130, column: 42, scope: !4301)
!4309 = !DILocation(line: 130, column: 60, scope: !4301)
!4310 = !DILocation(line: 131, column: 24, scope: !4301)
!4311 = !DILocation(line: 135, column: 25, scope: !4301)
!4312 = !DILocation(line: 135, column: 30, scope: !4301)
!4313 = !DILocation(line: 135, column: 42, scope: !4301)
!4314 = !DILocation(line: 135, column: 47, scope: !4301)
!4315 = !DILocation(line: 135, column: 40, scope: !4301)
!4316 = !DILocation(line: 135, column: 3, scope: !4301)
!4317 = !DILocation(line: 135, column: 8, scope: !4301)
!4318 = !DILocation(line: 139, column: 10, scope: !4301)
!4319 = !DILocation(line: 139, column: 15, scope: !4301)
!4320 = !DILocation(line: 139, column: 3, scope: !4301)
!4321 = !DILocation(line: 139, column: 8, scope: !4301)
!4322 = !DILocation(line: 144, column: 1, scope: !4301)
!4323 = distinct !DISubprogram(name: "find_bug", scope: !2, file: !2, line: 146, type: !4324, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4326)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!3932, !273}
!4326 = !{!4327, !4328}
!4327 = !DILocalVariable(name: "bugaddr", arg: 1, scope: !4323, file: !2, line: 146, type: !273)
!4328 = !DILocalVariable(name: "bug", scope: !4323, file: !2, line: 148, type: !3932)
!4329 = !DILocation(line: 146, column: 42, scope: !4323)
!4330 = !DILocation(line: 148, column: 2, scope: !4323)
!4331 = !DILocation(line: 148, column: 20, scope: !4323)
!4332 = !DILocation(line: 150, column: 11, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4323, file: !2, line: 150, column: 2)
!4334 = !DILocation(line: 150, column: 7, scope: !4333)
!4335 = !DILocation(line: 150, column: 34, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4333, file: !2, line: 150, column: 2)
!4337 = !DILocation(line: 150, column: 38, scope: !4336)
!4338 = !DILocation(line: 150, column: 2, scope: !4333)
!4339 = !DILocation(line: 151, column: 7, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4336, file: !2, line: 151, column: 7)
!4341 = !DILocation(line: 151, column: 27, scope: !4340)
!4342 = !DILocation(line: 151, column: 18, scope: !4340)
!4343 = !DILocation(line: 151, column: 15, scope: !4340)
!4344 = !DILocation(line: 151, column: 7, scope: !4336)
!4345 = !DILocation(line: 152, column: 11, scope: !4340)
!4346 = !DILocation(line: 152, column: 4, scope: !4340)
!4347 = !DILocation(line: 151, column: 30, scope: !4340)
!4348 = !DILocation(line: 150, column: 60, scope: !4336)
!4349 = !DILocation(line: 150, column: 2, scope: !4336)
!4350 = distinct !{!4350, !4338, !4351, !4256, !4257}
!4351 = !DILocation(line: 152, column: 11, scope: !4333)
!4352 = !DILocation(line: 154, column: 25, scope: !4323)
!4353 = !DILocation(line: 154, column: 9, scope: !4323)
!4354 = !DILocation(line: 154, column: 2, scope: !4323)
!4355 = !DILocation(line: 155, column: 1, scope: !4323)
!4356 = distinct !DISubprogram(name: "bug_addr", scope: !2, file: !2, line: 54, type: !4357, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4361)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!273, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3933)
!4361 = !{!4362}
!4362 = !DILocalVariable(name: "bug", arg: 1, scope: !4356, file: !2, line: 54, type: !4359)
!4363 = !DILocation(line: 54, column: 62, scope: !4356)
!4364 = !DILocation(line: 57, column: 25, scope: !4356)
!4365 = !DILocation(line: 57, column: 30, scope: !4356)
!4366 = !DILocation(line: 57, column: 9, scope: !4356)
!4367 = !DILocation(line: 57, column: 46, scope: !4356)
!4368 = !DILocation(line: 57, column: 51, scope: !4356)
!4369 = !DILocation(line: 57, column: 44, scope: !4356)
!4370 = !DILocation(line: 57, column: 2, scope: !4356)
!4371 = distinct !DISubprogram(name: "module_find_bug", scope: !2, file: !2, line: 67, type: !4324, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4372)
!4372 = !{!4373, !4374, !4375, !4376, !4379, !4382, !4384}
!4373 = !DILocalVariable(name: "bugaddr", arg: 1, scope: !4371, file: !2, line: 67, type: !273)
!4374 = !DILocalVariable(name: "mod", scope: !4371, file: !2, line: 69, type: !128)
!4375 = !DILocalVariable(name: "bug", scope: !4371, file: !2, line: 70, type: !3932)
!4376 = !DILocalVariable(name: "__mptr", scope: !4377, file: !2, line: 73, type: !116)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !2, line: 73, column: 2)
!4378 = distinct !DILexicalBlock(scope: !4371, file: !2, line: 73, column: 2)
!4379 = !DILocalVariable(name: "i", scope: !4380, file: !2, line: 74, type: !13)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !2, line: 73, column: 59)
!4381 = distinct !DILexicalBlock(scope: !4378, file: !2, line: 73, column: 2)
!4382 = !DILocalVariable(name: "__mptr", scope: !4383, file: !2, line: 73, type: !116)
!4383 = distinct !DILexicalBlock(scope: !4381, file: !2, line: 73, column: 2)
!4384 = !DILabel(scope: !4371, name: "out", file: !2, line: 82)
!4385 = !DILocation(line: 67, column: 56, scope: !4371)
!4386 = !DILocation(line: 69, column: 2, scope: !4371)
!4387 = !DILocation(line: 69, column: 17, scope: !4371)
!4388 = !DILocation(line: 70, column: 2, scope: !4371)
!4389 = !DILocation(line: 70, column: 20, scope: !4371)
!4390 = !DILocation(line: 72, column: 2, scope: !4371)
!4391 = !DILocation(line: 73, column: 2, scope: !4377)
!4392 = !DILocation(line: 73, column: 2, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4377, file: !2, line: 73, column: 2)
!4394 = !DILocation(line: 73, column: 2, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4393, file: !2, line: 73, column: 2)
!4396 = !DILocation(line: 73, column: 2, scope: !4378)
!4397 = !DILocation(line: 73, column: 2, scope: !4381)
!4398 = !DILocation(line: 74, column: 3, scope: !4380)
!4399 = !DILocation(line: 74, column: 12, scope: !4380)
!4400 = !DILocation(line: 76, column: 9, scope: !4380)
!4401 = !DILocation(line: 76, column: 14, scope: !4380)
!4402 = !DILocation(line: 76, column: 7, scope: !4380)
!4403 = !DILocation(line: 77, column: 10, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4380, file: !2, line: 77, column: 3)
!4405 = !DILocation(line: 77, column: 8, scope: !4404)
!4406 = !DILocation(line: 77, column: 15, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4404, file: !2, line: 77, column: 3)
!4408 = !DILocation(line: 77, column: 19, scope: !4407)
!4409 = !DILocation(line: 77, column: 24, scope: !4407)
!4410 = !DILocation(line: 77, column: 17, scope: !4407)
!4411 = !DILocation(line: 77, column: 3, scope: !4404)
!4412 = !DILocation(line: 78, column: 8, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4407, file: !2, line: 78, column: 8)
!4414 = !DILocation(line: 78, column: 28, scope: !4413)
!4415 = !DILocation(line: 78, column: 19, scope: !4413)
!4416 = !DILocation(line: 78, column: 16, scope: !4413)
!4417 = !DILocation(line: 78, column: 8, scope: !4407)
!4418 = !DILocation(line: 79, column: 5, scope: !4413)
!4419 = !DILocation(line: 78, column: 31, scope: !4413)
!4420 = !DILocation(line: 77, column: 34, scope: !4407)
!4421 = !DILocation(line: 77, column: 39, scope: !4407)
!4422 = !DILocation(line: 77, column: 3, scope: !4407)
!4423 = distinct !{!4423, !4411, !4424, !4256, !4257}
!4424 = !DILocation(line: 79, column: 10, scope: !4404)
!4425 = !DILocation(line: 80, column: 2, scope: !4381)
!4426 = !DILocation(line: 80, column: 2, scope: !4380)
!4427 = !DILocation(line: 73, column: 2, scope: !4383)
!4428 = !DILocation(line: 73, column: 2, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4383, file: !2, line: 73, column: 2)
!4430 = !DILocation(line: 73, column: 2, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4429, file: !2, line: 73, column: 2)
!4432 = distinct !{!4432, !4396, !4433, !4256, !4257}
!4433 = !DILocation(line: 80, column: 2, scope: !4378)
!4434 = !DILocation(line: 81, column: 6, scope: !4371)
!4435 = !DILocation(line: 81, column: 2, scope: !4371)
!4436 = !DILocation(line: 82, column: 1, scope: !4371)
!4437 = !DILocation(line: 83, column: 2, scope: !4371)
!4438 = !DILocation(line: 85, column: 9, scope: !4371)
!4439 = !DILocation(line: 85, column: 2, scope: !4371)
!4440 = !DILocation(line: 86, column: 1, scope: !4371)
!4441 = distinct !DISubprogram(name: "report_bug", scope: !2, file: !2, line: 213, type: !4442, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4444)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!93, !273, !3035}
!4444 = !{!4445, !4446, !4447, !4448}
!4445 = !DILocalVariable(name: "bugaddr", arg: 1, scope: !4441, file: !2, line: 213, type: !273)
!4446 = !DILocalVariable(name: "regs", arg: 2, scope: !4441, file: !2, line: 213, type: !3035)
!4447 = !DILocalVariable(name: "ret", scope: !4441, file: !2, line: 215, type: !93)
!4448 = !DILocalVariable(name: "rcu", scope: !4441, file: !2, line: 216, type: !1470)
!4449 = !DILocation(line: 213, column: 45, scope: !4441)
!4450 = !DILocation(line: 213, column: 70, scope: !4441)
!4451 = !DILocation(line: 215, column: 2, scope: !4441)
!4452 = !DILocation(line: 215, column: 21, scope: !4441)
!4453 = !DILocation(line: 216, column: 2, scope: !4441)
!4454 = !DILocation(line: 216, column: 7, scope: !4441)
!4455 = !DILocation(line: 218, column: 8, scope: !4441)
!4456 = !DILocation(line: 218, column: 6, scope: !4441)
!4457 = !DILocation(line: 219, column: 21, scope: !4441)
!4458 = !DILocation(line: 219, column: 30, scope: !4441)
!4459 = !DILocation(line: 219, column: 8, scope: !4441)
!4460 = !DILocation(line: 219, column: 6, scope: !4441)
!4461 = !DILocation(line: 220, column: 16, scope: !4441)
!4462 = !{i8 0, i8 2}
!4463 = !DILocation(line: 220, column: 2, scope: !4441)
!4464 = !DILocation(line: 222, column: 9, scope: !4441)
!4465 = !DILocation(line: 223, column: 1, scope: !4441)
!4466 = !DILocation(line: 222, column: 2, scope: !4441)
!4467 = distinct !DISubprogram(name: "warn_rcu_enter", scope: !4134, file: !4134, line: 134, type: !3638, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4468)
!4468 = !{!4469}
!4469 = !DILocalVariable(name: "ret", scope: !4467, file: !4134, line: 136, type: !1470)
!4470 = !DILocation(line: 136, column: 2, scope: !4467)
!4471 = !DILocation(line: 136, column: 7, scope: !4467)
!4472 = !DILocation(line: 142, column: 2, scope: !4467)
!4473 = !DILocation(line: 142, column: 2, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4467, file: !4134, line: 142, column: 2)
!4475 = !{i64 2154427191}
!4476 = !DILocation(line: 143, column: 6, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4467, file: !4134, line: 143, column: 6)
!4478 = !DILocation(line: 143, column: 6, scope: !4467)
!4479 = !DILocation(line: 144, column: 7, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4477, file: !4134, line: 143, column: 38)
!4481 = !DILocation(line: 145, column: 3, scope: !4480)
!4482 = !DILocation(line: 146, column: 2, scope: !4480)
!4483 = !DILocation(line: 148, column: 9, scope: !4467)
!4484 = !DILocation(line: 149, column: 1, scope: !4467)
!4485 = !DILocation(line: 148, column: 2, scope: !4467)
!4486 = distinct !DISubprogram(name: "__report_bug", scope: !2, file: !2, line: 157, type: !4442, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4487)
!4487 = !{!4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495}
!4488 = !DILocalVariable(name: "bugaddr", arg: 1, scope: !4486, file: !2, line: 157, type: !273)
!4489 = !DILocalVariable(name: "regs", arg: 2, scope: !4486, file: !2, line: 157, type: !3035)
!4490 = !DILocalVariable(name: "bug", scope: !4486, file: !2, line: 159, type: !3932)
!4491 = !DILocalVariable(name: "file", scope: !4486, file: !2, line: 160, type: !117)
!4492 = !DILocalVariable(name: "line", scope: !4486, file: !2, line: 161, type: !13)
!4493 = !DILocalVariable(name: "warning", scope: !4486, file: !2, line: 161, type: !13)
!4494 = !DILocalVariable(name: "once", scope: !4486, file: !2, line: 161, type: !13)
!4495 = !DILocalVariable(name: "done", scope: !4486, file: !2, line: 161, type: !13)
!4496 = !DILocation(line: 157, column: 54, scope: !4486)
!4497 = !DILocation(line: 157, column: 79, scope: !4486)
!4498 = !DILocation(line: 159, column: 2, scope: !4486)
!4499 = !DILocation(line: 159, column: 20, scope: !4486)
!4500 = !DILocation(line: 160, column: 2, scope: !4486)
!4501 = !DILocation(line: 160, column: 14, scope: !4486)
!4502 = !DILocation(line: 161, column: 2, scope: !4486)
!4503 = !DILocation(line: 161, column: 11, scope: !4486)
!4504 = !DILocation(line: 161, column: 17, scope: !4486)
!4505 = !DILocation(line: 161, column: 26, scope: !4486)
!4506 = !DILocation(line: 161, column: 32, scope: !4486)
!4507 = !DILocation(line: 163, column: 24, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 163, column: 6)
!4509 = !DILocation(line: 163, column: 7, scope: !4508)
!4510 = !DILocation(line: 163, column: 6, scope: !4486)
!4511 = !DILocation(line: 164, column: 3, scope: !4508)
!4512 = !DILocation(line: 166, column: 17, scope: !4486)
!4513 = !DILocation(line: 166, column: 8, scope: !4486)
!4514 = !DILocation(line: 166, column: 6, scope: !4486)
!4515 = !DILocation(line: 167, column: 7, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 167, column: 6)
!4517 = !DILocation(line: 167, column: 6, scope: !4486)
!4518 = !DILocation(line: 168, column: 3, scope: !4516)
!4519 = !DILocation(line: 170, column: 2, scope: !4486)
!4520 = !DILocation(line: 172, column: 20, scope: !4486)
!4521 = !DILocation(line: 172, column: 2, scope: !4486)
!4522 = !DILocation(line: 174, column: 13, scope: !4486)
!4523 = !DILocation(line: 174, column: 18, scope: !4486)
!4524 = !DILocation(line: 174, column: 24, scope: !4486)
!4525 = !DILocation(line: 174, column: 43, scope: !4486)
!4526 = !DILocation(line: 174, column: 10, scope: !4486)
!4527 = !DILocation(line: 175, column: 10, scope: !4486)
!4528 = !DILocation(line: 175, column: 15, scope: !4486)
!4529 = !DILocation(line: 175, column: 21, scope: !4486)
!4530 = !DILocation(line: 175, column: 37, scope: !4486)
!4531 = !DILocation(line: 175, column: 7, scope: !4486)
!4532 = !DILocation(line: 176, column: 10, scope: !4486)
!4533 = !DILocation(line: 176, column: 15, scope: !4486)
!4534 = !DILocation(line: 176, column: 21, scope: !4486)
!4535 = !DILocation(line: 176, column: 37, scope: !4486)
!4536 = !DILocation(line: 176, column: 7, scope: !4486)
!4537 = !DILocation(line: 178, column: 6, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 178, column: 6)
!4539 = !DILocation(line: 178, column: 14, scope: !4538)
!4540 = !DILocation(line: 178, column: 17, scope: !4538)
!4541 = !DILocation(line: 178, column: 6, scope: !4486)
!4542 = !DILocation(line: 179, column: 7, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !2, line: 179, column: 7)
!4544 = distinct !DILexicalBlock(scope: !4538, file: !2, line: 178, column: 23)
!4545 = !DILocation(line: 179, column: 7, scope: !4544)
!4546 = !DILocation(line: 180, column: 4, scope: !4543)
!4547 = !DILocation(line: 185, column: 3, scope: !4544)
!4548 = !DILocation(line: 185, column: 8, scope: !4544)
!4549 = !DILocation(line: 185, column: 14, scope: !4544)
!4550 = !DILocation(line: 186, column: 2, scope: !4544)
!4551 = !DILocation(line: 194, column: 7, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 194, column: 6)
!4553 = !DILocation(line: 194, column: 12, scope: !4552)
!4554 = !DILocation(line: 194, column: 18, scope: !4552)
!4555 = !DILocation(line: 194, column: 41, scope: !4552)
!4556 = !DILocation(line: 194, column: 6, scope: !4486)
!4557 = !DILocation(line: 195, column: 3, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4552, file: !2, line: 195, column: 3)
!4559 = !DILocation(line: 195, column: 3, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4558, file: !2, line: 195, column: 3)
!4561 = !DILocation(line: 195, column: 3, scope: !4552)
!4562 = !DILocation(line: 197, column: 6, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 197, column: 6)
!4564 = !DILocation(line: 197, column: 6, scope: !4486)
!4565 = !DILocation(line: 199, column: 10, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4563, file: !2, line: 197, column: 15)
!4567 = !DILocation(line: 199, column: 16, scope: !4566)
!4568 = !DILocation(line: 199, column: 30, scope: !4566)
!4569 = !DILocation(line: 199, column: 22, scope: !4566)
!4570 = !DILocation(line: 199, column: 39, scope: !4566)
!4571 = !DILocation(line: 199, column: 59, scope: !4566)
!4572 = !DILocation(line: 199, column: 3, scope: !4566)
!4573 = !DILocation(line: 201, column: 3, scope: !4566)
!4574 = !DILocation(line: 204, column: 6, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 204, column: 6)
!4576 = !DILocation(line: 204, column: 6, scope: !4486)
!4577 = !DILocation(line: 205, column: 3, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4575, file: !2, line: 205, column: 3)
!4579 = !DILocation(line: 205, column: 3, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4578, file: !2, line: 205, column: 3)
!4581 = !DILocation(line: 205, column: 3, scope: !4575)
!4582 = !DILocation(line: 207, column: 3, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4575, file: !2, line: 207, column: 3)
!4584 = !DILocation(line: 207, column: 3, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4583, file: !2, line: 207, column: 3)
!4586 = !DILocation(line: 210, column: 2, scope: !4486)
!4587 = !DILocation(line: 211, column: 1, scope: !4486)
!4588 = !DILocation(line: 151, column: 48, scope: !4133)
!4589 = !DILocation(line: 153, column: 6, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4133, file: !4134, line: 153, column: 6)
!4591 = !DILocation(line: 153, column: 6, scope: !4133)
!4592 = !DILocation(line: 154, column: 3, scope: !4590)
!4593 = !DILocation(line: 155, column: 2, scope: !4133)
!4594 = !DILocation(line: 155, column: 2, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4133, file: !4134, line: 155, column: 2)
!4596 = !{i64 2154427578}
!4597 = !DILocation(line: 155, column: 2, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4595, file: !4134, line: 155, column: 2)
!4599 = !DILocation(line: 155, column: 2, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4598, file: !4134, line: 155, column: 2)
!4601 = !{i64 2154427737}
!4602 = !DILocation(line: 156, column: 1, scope: !4133)
!4603 = distinct !DISubprogram(name: "generic_bug_clear_once", scope: !2, file: !2, line: 233, type: !2543, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4604)
!4604 = !{!4605, !4606, !4609}
!4605 = !DILocalVariable(name: "mod", scope: !4603, file: !2, line: 236, type: !128)
!4606 = !DILocalVariable(name: "__mptr", scope: !4607, file: !2, line: 239, type: !116)
!4607 = distinct !DILexicalBlock(scope: !4608, file: !2, line: 239, column: 2)
!4608 = distinct !DILexicalBlock(scope: !4603, file: !2, line: 239, column: 2)
!4609 = !DILocalVariable(name: "__mptr", scope: !4610, file: !2, line: 239, type: !116)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !2, line: 239, column: 2)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !2, line: 239, column: 2)
!4612 = !DILocation(line: 236, column: 2, scope: !4603)
!4613 = !DILocation(line: 236, column: 17, scope: !4603)
!4614 = !DILocation(line: 238, column: 2, scope: !4603)
!4615 = !DILocation(line: 239, column: 2, scope: !4607)
!4616 = !DILocation(line: 239, column: 2, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4607, file: !2, line: 239, column: 2)
!4618 = !DILocation(line: 239, column: 2, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4617, file: !2, line: 239, column: 2)
!4620 = !DILocation(line: 239, column: 2, scope: !4608)
!4621 = !DILocation(line: 239, column: 2, scope: !4611)
!4622 = !DILocation(line: 240, column: 20, scope: !4611)
!4623 = !DILocation(line: 240, column: 25, scope: !4611)
!4624 = !DILocation(line: 241, column: 6, scope: !4611)
!4625 = !DILocation(line: 241, column: 11, scope: !4611)
!4626 = !DILocation(line: 241, column: 23, scope: !4611)
!4627 = !DILocation(line: 241, column: 28, scope: !4611)
!4628 = !DILocation(line: 241, column: 21, scope: !4611)
!4629 = !DILocation(line: 240, column: 3, scope: !4611)
!4630 = !DILocation(line: 239, column: 2, scope: !4610)
!4631 = !DILocation(line: 239, column: 2, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4610, file: !2, line: 239, column: 2)
!4633 = !DILocation(line: 239, column: 2, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4632, file: !2, line: 239, column: 2)
!4635 = distinct !{!4635, !4620, !4636, !4256, !4257}
!4636 = !DILocation(line: 241, column: 36, scope: !4608)
!4637 = !DILocation(line: 242, column: 2, scope: !4603)
!4638 = !DILocation(line: 245, column: 2, scope: !4603)
!4639 = !DILocation(line: 246, column: 1, scope: !4603)
!4640 = distinct !DISubprogram(name: "rcu_read_lock_sched", scope: !4142, file: !4142, line: 874, type: !2543, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4641 = !DILocation(line: 876, column: 2, scope: !4640)
!4642 = !DILocation(line: 876, column: 2, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4640, file: !4142, line: 876, column: 2)
!4644 = !{i64 2149986505}
!4645 = !DILocation(line: 878, column: 2, scope: !4640)
!4646 = !DILocation(line: 878, column: 2, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4640, file: !4142, line: 878, column: 2)
!4648 = !DILocation(line: 879, column: 2, scope: !4640)
!4649 = !DILocation(line: 879, column: 2, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4640, file: !4142, line: 879, column: 2)
!4651 = !DILocation(line: 881, column: 1, scope: !4640)
!4652 = distinct !DISubprogram(name: "clear_once_table", scope: !2, file: !2, line: 225, type: !4653, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4655)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !3932, !3932}
!4655 = !{!4656, !4657, !4658}
!4656 = !DILocalVariable(name: "start", arg: 1, scope: !4652, file: !2, line: 225, type: !3932)
!4657 = !DILocalVariable(name: "end", arg: 2, scope: !4652, file: !2, line: 225, type: !3932)
!4658 = !DILocalVariable(name: "bug", scope: !4652, file: !2, line: 227, type: !3932)
!4659 = !DILocation(line: 225, column: 48, scope: !4652)
!4660 = !DILocation(line: 225, column: 73, scope: !4652)
!4661 = !DILocation(line: 227, column: 2, scope: !4652)
!4662 = !DILocation(line: 227, column: 20, scope: !4652)
!4663 = !DILocation(line: 229, column: 13, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4652, file: !2, line: 229, column: 2)
!4665 = !DILocation(line: 229, column: 11, scope: !4664)
!4666 = !DILocation(line: 229, column: 7, scope: !4664)
!4667 = !DILocation(line: 229, column: 20, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4664, file: !2, line: 229, column: 2)
!4669 = !DILocation(line: 229, column: 26, scope: !4668)
!4670 = !DILocation(line: 229, column: 24, scope: !4668)
!4671 = !DILocation(line: 229, column: 2, scope: !4664)
!4672 = !DILocation(line: 230, column: 3, scope: !4668)
!4673 = !DILocation(line: 230, column: 8, scope: !4668)
!4674 = !DILocation(line: 230, column: 14, scope: !4668)
!4675 = !DILocation(line: 229, column: 34, scope: !4668)
!4676 = !DILocation(line: 229, column: 2, scope: !4668)
!4677 = distinct !{!4677, !4671, !4678, !4256, !4257}
!4678 = !DILocation(line: 230, column: 18, scope: !4664)
!4679 = !DILocation(line: 231, column: 1, scope: !4652)
!4680 = !DILocation(line: 897, column: 2, scope: !4141)
!4681 = !DILocation(line: 897, column: 2, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4141, file: !4142, line: 897, column: 2)
!4683 = !DILocation(line: 899, column: 2, scope: !4141)
!4684 = !DILocation(line: 899, column: 2, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4141, file: !4142, line: 899, column: 2)
!4686 = !DILocation(line: 901, column: 2, scope: !4141)
!4687 = !DILocation(line: 901, column: 2, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4141, file: !4142, line: 901, column: 2)
!4689 = !{i64 2149987287}
!4690 = !DILocation(line: 901, column: 2, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4688, file: !4142, line: 901, column: 2)
!4692 = !DILocation(line: 901, column: 2, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4691, file: !4142, line: 901, column: 2)
!4694 = !{i64 2149987469}
!4695 = !DILocation(line: 902, column: 1, scope: !4141)
!4696 = distinct !DISubprogram(name: "__list_add_rcu", scope: !4267, file: !4267, line: 76, type: !4697, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4699)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{null, !122, !122, !122}
!4699 = !{!4700, !4701, !4702, !4703}
!4700 = !DILocalVariable(name: "new", arg: 1, scope: !4696, file: !4267, line: 76, type: !122)
!4701 = !DILocalVariable(name: "prev", arg: 2, scope: !4696, file: !4267, line: 77, type: !122)
!4702 = !DILocalVariable(name: "next", arg: 3, scope: !4696, file: !4267, line: 77, type: !122)
!4703 = !DILocalVariable(name: "_r_a_p__v", scope: !4704, file: !4267, line: 84, type: !4108)
!4704 = distinct !DILexicalBlock(scope: !4696, file: !4267, line: 84, column: 2)
!4705 = !DILocation(line: 76, column: 53, scope: !4696)
!4706 = !DILocation(line: 77, column: 21, scope: !4696)
!4707 = !DILocation(line: 77, column: 45, scope: !4696)
!4708 = !DILocation(line: 79, column: 24, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4696, file: !4267, line: 79, column: 6)
!4710 = !DILocation(line: 79, column: 29, scope: !4709)
!4711 = !DILocation(line: 79, column: 35, scope: !4709)
!4712 = !DILocation(line: 79, column: 7, scope: !4709)
!4713 = !DILocation(line: 79, column: 6, scope: !4696)
!4714 = !DILocation(line: 80, column: 3, scope: !4709)
!4715 = !DILocation(line: 82, column: 14, scope: !4696)
!4716 = !DILocation(line: 82, column: 2, scope: !4696)
!4717 = !DILocation(line: 82, column: 7, scope: !4696)
!4718 = !DILocation(line: 82, column: 12, scope: !4696)
!4719 = !DILocation(line: 83, column: 14, scope: !4696)
!4720 = !DILocation(line: 83, column: 2, scope: !4696)
!4721 = !DILocation(line: 83, column: 7, scope: !4696)
!4722 = !DILocation(line: 83, column: 12, scope: !4696)
!4723 = !DILocation(line: 84, column: 2, scope: !4696)
!4724 = !DILocation(line: 84, column: 2, scope: !4704)
!4725 = !DILocation(line: 84, column: 2, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4704, file: !4267, line: 84, column: 2)
!4727 = !DILocation(line: 84, column: 2, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4726, file: !4267, line: 84, column: 2)
!4729 = !DILocation(line: 84, column: 2, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4728, file: !4267, line: 84, column: 2)
!4731 = !DILocation(line: 84, column: 2, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4728, file: !4267, line: 84, column: 2)
!4733 = !DILocation(line: 84, column: 2, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4726, file: !4267, line: 84, column: 2)
!4735 = !DILocation(line: 84, column: 2, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4734, file: !4267, line: 84, column: 2)
!4737 = !DILocation(line: 84, column: 2, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4734, file: !4267, line: 84, column: 2)
!4739 = !DILocation(line: 84, column: 2, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4738, file: !4267, line: 84, column: 2)
!4741 = !{i64 2151718865}
!4742 = !DILocation(line: 84, column: 2, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4738, file: !4267, line: 84, column: 2)
!4744 = !DILocation(line: 84, column: 2, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4743, file: !4267, line: 84, column: 2)
!4746 = !DILocation(line: 84, column: 2, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4743, file: !4267, line: 84, column: 2)
!4748 = !DILocation(line: 85, column: 15, scope: !4696)
!4749 = !DILocation(line: 85, column: 2, scope: !4696)
!4750 = !DILocation(line: 85, column: 8, scope: !4696)
!4751 = !DILocation(line: 85, column: 13, scope: !4696)
!4752 = !DILocation(line: 86, column: 1, scope: !4696)
!4753 = distinct !DISubprogram(name: "__list_add_valid", scope: !4754, file: !4754, line: 128, type: !4755, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4757)
!4754 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!1470, !122, !122, !122}
!4757 = !{!4758, !4759, !4760}
!4758 = !DILocalVariable(name: "new", arg: 1, scope: !4753, file: !4754, line: 128, type: !122)
!4759 = !DILocalVariable(name: "prev", arg: 2, scope: !4753, file: !4754, line: 129, type: !122)
!4760 = !DILocalVariable(name: "next", arg: 3, scope: !4753, file: !4754, line: 130, type: !122)
!4761 = !DILocation(line: 128, column: 55, scope: !4753)
!4762 = !DILocation(line: 129, column: 23, scope: !4753)
!4763 = !DILocation(line: 130, column: 23, scope: !4753)
!4764 = !DILocation(line: 132, column: 2, scope: !4753)
!4765 = distinct !DISubprogram(name: "__list_del_entry", scope: !4754, file: !4754, line: 213, type: !4290, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4766)
!4766 = !{!4767}
!4767 = !DILocalVariable(name: "entry", arg: 1, scope: !4765, file: !4754, line: 213, type: !122)
!4768 = !DILocation(line: 213, column: 55, scope: !4765)
!4769 = !DILocation(line: 215, column: 30, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4765, file: !4754, line: 215, column: 6)
!4771 = !DILocation(line: 215, column: 7, scope: !4770)
!4772 = !DILocation(line: 215, column: 6, scope: !4765)
!4773 = !DILocation(line: 216, column: 3, scope: !4770)
!4774 = !DILocation(line: 218, column: 13, scope: !4765)
!4775 = !DILocation(line: 218, column: 20, scope: !4765)
!4776 = !DILocation(line: 218, column: 26, scope: !4765)
!4777 = !DILocation(line: 218, column: 33, scope: !4765)
!4778 = !DILocation(line: 218, column: 2, scope: !4765)
!4779 = !DILocation(line: 219, column: 1, scope: !4765)
!4780 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4754, file: !4754, line: 134, type: !4781, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4783)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!1470, !122}
!4783 = !{!4784}
!4784 = !DILocalVariable(name: "entry", arg: 1, scope: !4780, file: !4754, line: 134, type: !122)
!4785 = !DILocation(line: 134, column: 61, scope: !4780)
!4786 = !DILocation(line: 136, column: 2, scope: !4780)
!4787 = distinct !DISubprogram(name: "__list_del", scope: !4754, file: !4754, line: 193, type: !4268, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4788)
!4788 = !{!4789, !4790}
!4789 = !DILocalVariable(name: "prev", arg: 1, scope: !4787, file: !4754, line: 193, type: !122)
!4790 = !DILocalVariable(name: "next", arg: 2, scope: !4787, file: !4754, line: 193, type: !122)
!4791 = !DILocation(line: 193, column: 50, scope: !4787)
!4792 = !DILocation(line: 193, column: 75, scope: !4787)
!4793 = !DILocation(line: 195, column: 15, scope: !4787)
!4794 = !DILocation(line: 195, column: 2, scope: !4787)
!4795 = !DILocation(line: 195, column: 8, scope: !4787)
!4796 = !DILocation(line: 195, column: 13, scope: !4787)
!4797 = !DILocation(line: 196, column: 2, scope: !4787)
!4798 = !DILocation(line: 196, column: 2, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4787, file: !4754, line: 196, column: 2)
!4800 = !DILocation(line: 196, column: 2, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4799, file: !4754, line: 196, column: 2)
!4802 = !DILocation(line: 196, column: 2, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4799, file: !4754, line: 196, column: 2)
!4804 = !DILocation(line: 197, column: 1, scope: !4787)
!4805 = distinct !DISubprogram(name: "__preempt_count_add", scope: !4806, file: !4806, line: 78, type: !2536, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4807)
!4806 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4807 = !{!4808, !4809, !4811}
!4808 = !DILocalVariable(name: "val", arg: 1, scope: !4805, file: !4806, line: 78, type: !106)
!4809 = !DILocalVariable(name: "pao_ID__", scope: !4810, file: !4806, line: 80, type: !3980)
!4810 = distinct !DILexicalBlock(scope: !4805, file: !4806, line: 80, column: 2)
!4811 = !DILocalVariable(name: "pto_val__", scope: !4812, file: !4806, line: 80, type: !372)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !4806, line: 80, column: 2)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !4806, line: 80, column: 2)
!4814 = distinct !DILexicalBlock(scope: !4810, file: !4806, line: 80, column: 2)
!4815 = !DILocation(line: 78, column: 53, scope: !4805)
!4816 = !DILocation(line: 80, column: 2, scope: !4805)
!4817 = !DILocation(line: 80, column: 2, scope: !4810)
!4818 = !DILocation(line: 80, column: 2, scope: !4814)
!4819 = !DILocation(line: 80, column: 2, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4814, file: !4806, line: 80, column: 2)
!4821 = !{i64 2149619299}
!4822 = !DILocation(line: 80, column: 2, scope: !4813)
!4823 = !DILocation(line: 80, column: 2, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4813, file: !4806, line: 80, column: 2)
!4825 = !{i64 2149619594}
!4826 = !DILocation(line: 80, column: 2, scope: !4812)
!4827 = !{i64 2149620299}
!4828 = !DILocation(line: 81, column: 1, scope: !4805)
!4829 = distinct !DISubprogram(name: "rcu_dynticks_curr_cpu_in_eqs", scope: !4134, file: !4134, line: 120, type: !3638, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4830)
!4830 = !{!4831, !4834}
!4831 = !DILocalVariable(name: "__vpp_verify", scope: !4832, file: !4134, line: 122, type: !2133)
!4832 = distinct !DILexicalBlock(scope: !4833, file: !4134, line: 122, column: 27)
!4833 = distinct !DILexicalBlock(scope: !4829, file: !4134, line: 122, column: 27)
!4834 = !DILocalVariable(name: "tcp_ptr__", scope: !4835, file: !4134, line: 122, type: !273)
!4835 = distinct !DILexicalBlock(scope: !4833, file: !4134, line: 122, column: 27)
!4836 = !DILocation(line: 122, column: 27, scope: !4833)
!4837 = !DILocation(line: 122, column: 27, scope: !4832)
!4838 = !DILocation(line: 122, column: 27, scope: !4835)
!4839 = !{i64 2154425669}
!4840 = !DILocation(line: 122, column: 11, scope: !4829)
!4841 = !DILocation(line: 122, column: 66, scope: !4829)
!4842 = !DILocation(line: 122, column: 9, scope: !4829)
!4843 = !DILocation(line: 122, column: 2, scope: !4829)
!4844 = distinct !DISubprogram(name: "ct_state_inc", scope: !4134, file: !4134, line: 129, type: !4845, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4847)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!273, !106}
!4847 = !{!4848, !4849, !4852}
!4848 = !DILocalVariable(name: "incby", arg: 1, scope: !4844, file: !4134, line: 129, type: !106)
!4849 = !DILocalVariable(name: "__vpp_verify", scope: !4850, file: !4134, line: 131, type: !2133)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !4134, line: 131, column: 38)
!4851 = distinct !DILexicalBlock(scope: !4844, file: !4134, line: 131, column: 38)
!4852 = !DILocalVariable(name: "tcp_ptr__", scope: !4853, file: !4134, line: 131, type: !273)
!4853 = distinct !DILexicalBlock(scope: !4851, file: !4134, line: 131, column: 38)
!4854 = !DILocation(line: 129, column: 55, scope: !4844)
!4855 = !DILocation(line: 131, column: 31, scope: !4844)
!4856 = !DILocation(line: 131, column: 38, scope: !4851)
!4857 = !DILocation(line: 131, column: 38, scope: !4850)
!4858 = !DILocation(line: 131, column: 38, scope: !4853)
!4859 = !{i64 2154426582}
!4860 = !DILocation(line: 131, column: 9, scope: !4844)
!4861 = !DILocation(line: 131, column: 2, scope: !4844)
!4862 = distinct !DISubprogram(name: "raw_atomic_read", scope: !4863, file: !4863, line: 442, type: !4864, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4868)
!4863 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!106, !4866}
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!4868 = !{!4869}
!4869 = !DILocalVariable(name: "v", arg: 1, scope: !4862, file: !4863, line: 442, type: !4866)
!4870 = !DILocation(line: 442, column: 33, scope: !4862)
!4871 = !DILocation(line: 444, column: 26, scope: !4862)
!4872 = !DILocation(line: 444, column: 9, scope: !4862)
!4873 = !DILocation(line: 444, column: 2, scope: !4862)
!4874 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4875, file: !4875, line: 17, type: !4864, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4876)
!4875 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4876 = !{!4877}
!4877 = !DILocalVariable(name: "v", arg: 1, scope: !4874, file: !4875, line: 17, type: !4866)
!4878 = !DILocation(line: 17, column: 61, scope: !4874)
!4879 = !DILocation(line: 23, column: 9, scope: !4874)
!4880 = !DILocation(line: 23, column: 2, scope: !4874)
!4881 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !4863, file: !4863, line: 548, type: !4882, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4884)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!106, !106, !4111}
!4884 = !{!4885, !4886}
!4885 = !DILocalVariable(name: "i", arg: 1, scope: !4881, file: !4863, line: 548, type: !106)
!4886 = !DILocalVariable(name: "v", arg: 2, scope: !4881, file: !4863, line: 548, type: !4111)
!4887 = !DILocation(line: 548, column: 27, scope: !4881)
!4888 = !DILocation(line: 548, column: 40, scope: !4881)
!4889 = !DILocation(line: 551, column: 32, scope: !4881)
!4890 = !DILocation(line: 551, column: 35, scope: !4881)
!4891 = !DILocation(line: 551, column: 9, scope: !4881)
!4892 = !DILocation(line: 551, column: 2, scope: !4881)
!4893 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !4875, file: !4875, line: 83, type: !4882, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4894)
!4894 = !{!4895, !4896, !4897}
!4895 = !DILocalVariable(name: "i", arg: 1, scope: !4893, file: !4875, line: 83, type: !106)
!4896 = !DILocalVariable(name: "v", arg: 2, scope: !4893, file: !4875, line: 83, type: !4111)
!4897 = !DILocalVariable(name: "__ret", scope: !4898, file: !4875, line: 85, type: !106)
!4898 = distinct !DILexicalBlock(scope: !4893, file: !4875, line: 85, column: 13)
!4899 = !DILocation(line: 83, column: 55, scope: !4893)
!4900 = !DILocation(line: 83, column: 68, scope: !4893)
!4901 = !DILocation(line: 85, column: 9, scope: !4893)
!4902 = !DILocation(line: 85, column: 13, scope: !4898)
!4903 = !{i64 2148794529, i64 2148794568, i64 2148794589, i64 2148794626, i64 2148794649, i64 2148794658}
!4904 = !DILocation(line: 85, column: 13, scope: !4893)
!4905 = !DILocation(line: 85, column: 11, scope: !4893)
!4906 = !DILocation(line: 85, column: 2, scope: !4893)
!4907 = !DISubprogram(name: "is_valid_bugaddr", scope: !94, file: !94, line: 47, type: !4908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!106, !273}
!4910 = !DISubprogram(name: "disable_trace_on_warning", scope: !4911, file: !4911, line: 1157, type: !2543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4911 = !DIFile(filename: "./include/linux/ftrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4b80d89eac182dfc62518530b9fd5d2")
!4912 = !DISubprogram(name: "_printk", scope: !4913, file: !4913, line: 153, type: !4914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4913 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!106, !117, null}
!4916 = !DISubprogram(name: "__warn", scope: !3934, file: !3934, line: 27, type: !4917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{null, !117, !106, !116, !13, !3035, !4919}
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DICompositeType(tag: DW_TAG_structure_type, name: "warn_args", file: !3934, line: 24, flags: DIFlagFwdDecl)
!4921 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !4806, file: !4806, line: 93, type: !3638, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4922)
!4922 = !{!4923}
!4923 = !DILocalVariable(name: "c", scope: !4924, file: !4806, line: 95, type: !1470)
!4924 = distinct !DILexicalBlock(scope: !4921, file: !4806, line: 95, column: 9)
!4925 = !DILocation(line: 95, column: 9, scope: !4924)
!4926 = !{i64 2149623655, i64 2149623748}
!4927 = !DILocation(line: 95, column: 9, scope: !4921)
!4928 = !DILocation(line: 95, column: 2, scope: !4921)
