; ModuleID = 'kernel/module/kallsyms.c'
source_filename = "kernel/module/kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.kernel_symbol = type { i32, i32, i32 }
%struct.load_info = type { ptr, ptr, ptr, i64, ptr, ptr, ptr, i64, i64, i64, i64, i8, i64, %struct.anon.13 }
%struct.anon.13 = type { i32, i32, i32, i32, i32, i32 }
%struct.elf64_shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
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
%struct.elf64_sym = type { i32, i8, i8, i16, i64, i64 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }

@module_address_lookup.__UNIQUE_ID___addressable___SCK__preempt_schedule307 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !0
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@modules = external dso_local global %struct.list_head, align 8
@lookup_module_symbol_name.__UNIQUE_ID___addressable___SCK__preempt_schedule310 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4057
@lookup_module_symbol_name.__UNIQUE_ID___addressable___SCK__preempt_schedule311 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4077
@module_get_kallsym.__UNIQUE_ID___addressable___SCK__preempt_schedule316 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4079
@module_get_kallsym.__UNIQUE_ID___addressable___SCK__preempt_schedule317 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4107
@module_kallsyms_lookup_name.__UNIQUE_ID___addressable___SCK__preempt_schedule322 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4109
@find_kallsyms_symbol_value.__UNIQUE_ID___addressable___SCK__preempt_schedule323 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4117
@module_mutex = external dso_local global %struct.mutex, align 8
@module_kallsyms_on_each_symbol.__UNIQUE_ID___addressable___SCK__preempt_schedule326 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4126
@.str = private unnamed_addr constant [7 x i8] c".debug\00", align 1, !dbg !4156
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__start___ksymtab = external dso_local constant [0 x %struct.kernel_symbol], align 4
@__stop___ksymtab = external dso_local constant [0 x %struct.kernel_symbol], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @module_address_lookup.__UNIQUE_ID___addressable___SCK__preempt_schedule307, ptr @lookup_module_symbol_name.__UNIQUE_ID___addressable___SCK__preempt_schedule310, ptr @lookup_module_symbol_name.__UNIQUE_ID___addressable___SCK__preempt_schedule311, ptr @module_get_kallsym.__UNIQUE_ID___addressable___SCK__preempt_schedule316, ptr @module_get_kallsym.__UNIQUE_ID___addressable___SCK__preempt_schedule317, ptr @module_kallsyms_lookup_name.__UNIQUE_ID___addressable___SCK__preempt_schedule322, ptr @find_kallsyms_symbol_value.__UNIQUE_ID___addressable___SCK__preempt_schedule323, ptr @module_kallsyms_on_each_symbol.__UNIQUE_ID___addressable___SCK__preempt_schedule326], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @layout_symtab(ptr noundef %mod, ptr noundef %info) #0 align 16 !dbg !4178 {
entry:
  %mod.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %symsect = alloca ptr, align 8
  %strsect = alloca ptr, align 8
  %src = alloca ptr, align 8
  %i = alloca i32, align 4
  %nsrc = alloca i32, align 4
  %ndst = alloca i32, align 4
  %strtab_size = alloca i32, align 4
  %mod_mem_data = alloca ptr, align 8
  %mod_mem_init_data = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4241, metadata !DIExpression()), !dbg !4253
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.lifetime.start.p0(i64 8, ptr %symsect) #12, !dbg !4255
  call void @llvm.dbg.declare(metadata ptr %symsect, metadata !4243, metadata !DIExpression()), !dbg !4256
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4257
  %sechdrs = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 4, !dbg !4258
  %1 = load ptr, ptr %sechdrs, align 8, !dbg !4258
  %2 = load ptr, ptr %info.addr, align 8, !dbg !4259
  %index = getelementptr inbounds %struct.load_info, ptr %2, i32 0, i32 13, !dbg !4260
  %sym = getelementptr inbounds %struct.anon.13, ptr %index, i32 0, i32 0, !dbg !4261
  %3 = load i32, ptr %sym, align 8, !dbg !4261
  %idx.ext = zext i32 %3 to i64, !dbg !4262
  %add.ptr = getelementptr %struct.elf64_shdr, ptr %1, i64 %idx.ext, !dbg !4262
  store ptr %add.ptr, ptr %symsect, align 8, !dbg !4256
  call void @llvm.lifetime.start.p0(i64 8, ptr %strsect) #12, !dbg !4263
  call void @llvm.dbg.declare(metadata ptr %strsect, metadata !4244, metadata !DIExpression()), !dbg !4264
  %4 = load ptr, ptr %info.addr, align 8, !dbg !4265
  %sechdrs1 = getelementptr inbounds %struct.load_info, ptr %4, i32 0, i32 4, !dbg !4266
  %5 = load ptr, ptr %sechdrs1, align 8, !dbg !4266
  %6 = load ptr, ptr %info.addr, align 8, !dbg !4267
  %index2 = getelementptr inbounds %struct.load_info, ptr %6, i32 0, i32 13, !dbg !4268
  %str = getelementptr inbounds %struct.anon.13, ptr %index2, i32 0, i32 1, !dbg !4269
  %7 = load i32, ptr %str, align 4, !dbg !4269
  %idx.ext3 = zext i32 %7 to i64, !dbg !4270
  %add.ptr4 = getelementptr %struct.elf64_shdr, ptr %5, i64 %idx.ext3, !dbg !4270
  store ptr %add.ptr4, ptr %strsect, align 8, !dbg !4264
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #12, !dbg !4271
  call void @llvm.dbg.declare(metadata ptr %src, metadata !4245, metadata !DIExpression()), !dbg !4272
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !4273
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4246, metadata !DIExpression()), !dbg !4274
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsrc) #12, !dbg !4273
  call void @llvm.dbg.declare(metadata ptr %nsrc, metadata !4247, metadata !DIExpression()), !dbg !4275
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndst) #12, !dbg !4273
  call void @llvm.dbg.declare(metadata ptr %ndst, metadata !4248, metadata !DIExpression()), !dbg !4276
  call void @llvm.lifetime.start.p0(i64 4, ptr %strtab_size) #12, !dbg !4273
  call void @llvm.dbg.declare(metadata ptr %strtab_size, metadata !4249, metadata !DIExpression()), !dbg !4277
  store i32 0, ptr %strtab_size, align 4, !dbg !4277
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod_mem_data) #12, !dbg !4278
  call void @llvm.dbg.declare(metadata ptr %mod_mem_data, metadata !4250, metadata !DIExpression()), !dbg !4279
  %8 = load ptr, ptr %mod.addr, align 8, !dbg !4280
  %mem = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 22, !dbg !4281
  %arrayidx = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 1, !dbg !4280
  store ptr %arrayidx, ptr %mod_mem_data, align 8, !dbg !4279
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod_mem_init_data) #12, !dbg !4282
  call void @llvm.dbg.declare(metadata ptr %mod_mem_init_data, metadata !4252, metadata !DIExpression()), !dbg !4283
  %9 = load ptr, ptr %mod.addr, align 8, !dbg !4284
  %mem5 = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 22, !dbg !4285
  %arrayidx6 = getelementptr [7 x %struct.module_memory], ptr %mem5, i64 0, i64 5, !dbg !4284
  store ptr %arrayidx6, ptr %mod_mem_init_data, align 8, !dbg !4283
  %10 = load ptr, ptr %symsect, align 8, !dbg !4286
  %sh_flags = getelementptr inbounds %struct.elf64_shdr, ptr %10, i32 0, i32 2, !dbg !4287
  %11 = load i64, ptr %sh_flags, align 8, !dbg !4288
  %or = or i64 %11, 2, !dbg !4288
  store i64 %or, ptr %sh_flags, align 8, !dbg !4288
  %12 = load ptr, ptr %mod.addr, align 8, !dbg !4289
  %13 = load ptr, ptr %symsect, align 8, !dbg !4290
  %14 = load ptr, ptr %info.addr, align 8, !dbg !4291
  %index7 = getelementptr inbounds %struct.load_info, ptr %14, i32 0, i32 13, !dbg !4292
  %sym8 = getelementptr inbounds %struct.anon.13, ptr %index7, i32 0, i32 0, !dbg !4293
  %15 = load i32, ptr %sym8, align 8, !dbg !4293
  %call = call i64 @module_get_offset_and_type(ptr noundef %12, i32 noundef 5, ptr noundef %13, i32 noundef %15) #13, !dbg !4294
  %16 = load ptr, ptr %symsect, align 8, !dbg !4295
  %sh_entsize = getelementptr inbounds %struct.elf64_shdr, ptr %16, i32 0, i32 9, !dbg !4296
  store i64 %call, ptr %sh_entsize, align 8, !dbg !4297
  store i32 0, ptr %tmp, align 4, !dbg !4298
  %17 = load i32, ptr %tmp, align 4, !dbg !4301
  %18 = load ptr, ptr %info.addr, align 8, !dbg !4302
  %hdr = getelementptr inbounds %struct.load_info, ptr %18, i32 0, i32 2, !dbg !4303
  %19 = load ptr, ptr %hdr, align 8, !dbg !4303
  %20 = load ptr, ptr %symsect, align 8, !dbg !4304
  %sh_offset = getelementptr inbounds %struct.elf64_shdr, ptr %20, i32 0, i32 4, !dbg !4305
  %21 = load i64, ptr %sh_offset, align 8, !dbg !4305
  %add.ptr9 = getelementptr i8, ptr %19, i64 %21, !dbg !4306
  store ptr %add.ptr9, ptr %src, align 8, !dbg !4307
  %22 = load ptr, ptr %symsect, align 8, !dbg !4308
  %sh_size = getelementptr inbounds %struct.elf64_shdr, ptr %22, i32 0, i32 5, !dbg !4309
  %23 = load i64, ptr %sh_size, align 8, !dbg !4309
  %div = udiv i64 %23, 24, !dbg !4310
  %conv = trunc i64 %div to i32, !dbg !4308
  store i32 %conv, ptr %nsrc, align 4, !dbg !4311
  store i32 0, ptr %i, align 4, !dbg !4312
  store i32 0, ptr %ndst, align 4, !dbg !4314
  br label %for.cond, !dbg !4315

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, ptr %i, align 4, !dbg !4316
  %25 = load i32, ptr %nsrc, align 4, !dbg !4318
  %cmp = icmp ult i32 %24, %25, !dbg !4319
  br i1 %cmp, label %for.body, label %for.end, !dbg !4320

for.body:                                         ; preds = %for.cond
  %26 = load i32, ptr %i, align 4, !dbg !4321
  %cmp11 = icmp eq i32 %26, 0, !dbg !4324
  br i1 %cmp11, label %if.then, label %lor.lhs.false, !dbg !4325

lor.lhs.false:                                    ; preds = %for.body
  %27 = load ptr, ptr %mod.addr, align 8, !dbg !4326
  %call13 = call zeroext i1 @is_livepatch_module(ptr noundef %27) #13, !dbg !4327
  br i1 %call13, label %if.then, label %lor.lhs.false15, !dbg !4328

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %28 = load ptr, ptr %src, align 8, !dbg !4329
  %29 = load i32, ptr %i, align 4, !dbg !4330
  %idx.ext16 = zext i32 %29 to i64, !dbg !4331
  %add.ptr17 = getelementptr %struct.elf64_sym, ptr %28, i64 %idx.ext16, !dbg !4331
  %30 = load ptr, ptr %info.addr, align 8, !dbg !4332
  %sechdrs18 = getelementptr inbounds %struct.load_info, ptr %30, i32 0, i32 4, !dbg !4333
  %31 = load ptr, ptr %sechdrs18, align 8, !dbg !4333
  %32 = load ptr, ptr %info.addr, align 8, !dbg !4334
  %hdr19 = getelementptr inbounds %struct.load_info, ptr %32, i32 0, i32 2, !dbg !4335
  %33 = load ptr, ptr %hdr19, align 8, !dbg !4335
  %e_shnum = getelementptr inbounds %struct.elf64_hdr, ptr %33, i32 0, i32 12, !dbg !4336
  %34 = load i16, ptr %e_shnum, align 4, !dbg !4336
  %conv20 = zext i16 %34 to i32, !dbg !4334
  %35 = load ptr, ptr %info.addr, align 8, !dbg !4337
  %index21 = getelementptr inbounds %struct.load_info, ptr %35, i32 0, i32 13, !dbg !4338
  %pcpu = getelementptr inbounds %struct.anon.13, ptr %index21, i32 0, i32 5, !dbg !4339
  %36 = load i32, ptr %pcpu, align 4, !dbg !4339
  %call22 = call zeroext i1 @is_core_symbol(ptr noundef %add.ptr17, ptr noundef %31, i32 noundef %conv20, i32 noundef %36) #13, !dbg !4340
  br i1 %call22, label %if.then, label %if.end, !dbg !4341

if.then:                                          ; preds = %lor.lhs.false15, %lor.lhs.false, %for.body
  %37 = load ptr, ptr %info.addr, align 8, !dbg !4342
  %strtab = getelementptr inbounds %struct.load_info, ptr %37, i32 0, i32 6, !dbg !4344
  %38 = load ptr, ptr %strtab, align 8, !dbg !4344
  %39 = load ptr, ptr %src, align 8, !dbg !4345
  %40 = load i32, ptr %i, align 4, !dbg !4346
  %idxprom = zext i32 %40 to i64, !dbg !4345
  %arrayidx24 = getelementptr %struct.elf64_sym, ptr %39, i64 %idxprom, !dbg !4345
  %st_name = getelementptr inbounds %struct.elf64_sym, ptr %arrayidx24, i32 0, i32 0, !dbg !4347
  %41 = load i32, ptr %st_name, align 8, !dbg !4347
  %idxprom25 = zext i32 %41 to i64, !dbg !4342
  %arrayidx26 = getelementptr i8, ptr %38, i64 %idxprom25, !dbg !4342
  %call27 = call i64 @strlen(ptr noundef %arrayidx26) #13, !dbg !4348
  %add = add i64 %call27, 1, !dbg !4349
  %42 = load i32, ptr %strtab_size, align 4, !dbg !4350
  %conv28 = zext i32 %42 to i64, !dbg !4350
  %add29 = add i64 %conv28, %add, !dbg !4350
  %conv30 = trunc i64 %add29 to i32, !dbg !4350
  store i32 %conv30, ptr %strtab_size, align 4, !dbg !4350
  %43 = load i32, ptr %ndst, align 4, !dbg !4351
  %inc = add i32 %43, 1, !dbg !4351
  store i32 %inc, ptr %ndst, align 4, !dbg !4351
  br label %if.end, !dbg !4352

if.end:                                           ; preds = %if.then, %lor.lhs.false15
  br label %for.inc, !dbg !4353

for.inc:                                          ; preds = %if.end
  %44 = load i32, ptr %i, align 4, !dbg !4354
  %inc31 = add i32 %44, 1, !dbg !4354
  store i32 %inc31, ptr %i, align 4, !dbg !4354
  br label %for.cond, !dbg !4355, !llvm.loop !4356

for.end:                                          ; preds = %for.cond
  %45 = load ptr, ptr %mod_mem_data, align 8, !dbg !4360
  %size = getelementptr inbounds %struct.module_memory, ptr %45, i32 0, i32 1, !dbg !4360
  %46 = load i32, ptr %size, align 8, !dbg !4360
  %47 = load ptr, ptr %symsect, align 8, !dbg !4360
  %sh_addralign = getelementptr inbounds %struct.elf64_shdr, ptr %47, i32 0, i32 8, !dbg !4360
  %48 = load i64, ptr %sh_addralign, align 8, !dbg !4360
  %tobool = icmp ne i64 %48, 0, !dbg !4360
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4360

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !4360

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !4360

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %48, %cond.true ], [ 1, %cond.false ], !dbg !4360
  %conv32 = trunc i64 %cond to i32, !dbg !4360
  %sub = sub i32 %conv32, 1, !dbg !4360
  %add33 = add i32 %46, %sub, !dbg !4360
  %49 = load ptr, ptr %symsect, align 8, !dbg !4360
  %sh_addralign34 = getelementptr inbounds %struct.elf64_shdr, ptr %49, i32 0, i32 8, !dbg !4360
  %50 = load i64, ptr %sh_addralign34, align 8, !dbg !4360
  %tobool35 = icmp ne i64 %50, 0, !dbg !4360
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4360

cond.true36:                                      ; preds = %cond.end
  br label %cond.end38, !dbg !4360

cond.false37:                                     ; preds = %cond.end
  br label %cond.end38, !dbg !4360

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i64 [ %50, %cond.true36 ], [ 1, %cond.false37 ], !dbg !4360
  %conv40 = trunc i64 %cond39 to i32, !dbg !4360
  %sub41 = sub i32 %conv40, 1, !dbg !4360
  %not = xor i32 %sub41, -1, !dbg !4360
  %and = and i32 %add33, %not, !dbg !4360
  %conv42 = zext i32 %and to i64, !dbg !4360
  %51 = load ptr, ptr %info.addr, align 8, !dbg !4361
  %symoffs = getelementptr inbounds %struct.load_info, ptr %51, i32 0, i32 7, !dbg !4362
  store i64 %conv42, ptr %symoffs, align 8, !dbg !4363
  %52 = load ptr, ptr %info.addr, align 8, !dbg !4364
  %symoffs43 = getelementptr inbounds %struct.load_info, ptr %52, i32 0, i32 7, !dbg !4365
  %53 = load i64, ptr %symoffs43, align 8, !dbg !4365
  %54 = load i32, ptr %ndst, align 4, !dbg !4366
  %conv44 = zext i32 %54 to i64, !dbg !4366
  %mul = mul i64 %conv44, 24, !dbg !4367
  %add45 = add i64 %53, %mul, !dbg !4368
  %conv46 = trunc i64 %add45 to i32, !dbg !4364
  %55 = load ptr, ptr %mod_mem_data, align 8, !dbg !4369
  %size47 = getelementptr inbounds %struct.module_memory, ptr %55, i32 0, i32 1, !dbg !4370
  store i32 %conv46, ptr %size47, align 8, !dbg !4371
  %conv48 = zext i32 %conv46 to i64, !dbg !4369
  %56 = load ptr, ptr %info.addr, align 8, !dbg !4372
  %stroffs = getelementptr inbounds %struct.load_info, ptr %56, i32 0, i32 8, !dbg !4373
  store i64 %conv48, ptr %stroffs, align 8, !dbg !4374
  %57 = load i32, ptr %strtab_size, align 4, !dbg !4375
  %58 = load ptr, ptr %mod_mem_data, align 8, !dbg !4376
  %size49 = getelementptr inbounds %struct.module_memory, ptr %58, i32 0, i32 1, !dbg !4377
  %59 = load i32, ptr %size49, align 8, !dbg !4378
  %add50 = add i32 %59, %57, !dbg !4378
  store i32 %add50, ptr %size49, align 8, !dbg !4378
  %60 = load ptr, ptr %mod_mem_data, align 8, !dbg !4379
  %size51 = getelementptr inbounds %struct.module_memory, ptr %60, i32 0, i32 1, !dbg !4380
  %61 = load i32, ptr %size51, align 8, !dbg !4380
  %conv52 = zext i32 %61 to i64, !dbg !4379
  %62 = load ptr, ptr %info.addr, align 8, !dbg !4381
  %core_typeoffs = getelementptr inbounds %struct.load_info, ptr %62, i32 0, i32 10, !dbg !4382
  store i64 %conv52, ptr %core_typeoffs, align 8, !dbg !4383
  %63 = load i32, ptr %ndst, align 4, !dbg !4384
  %conv53 = zext i32 %63 to i64, !dbg !4384
  %mul54 = mul i64 %conv53, 1, !dbg !4385
  %64 = load ptr, ptr %mod_mem_data, align 8, !dbg !4386
  %size55 = getelementptr inbounds %struct.module_memory, ptr %64, i32 0, i32 1, !dbg !4387
  %65 = load i32, ptr %size55, align 8, !dbg !4388
  %conv56 = zext i32 %65 to i64, !dbg !4388
  %add57 = add i64 %conv56, %mul54, !dbg !4388
  %conv58 = trunc i64 %add57 to i32, !dbg !4388
  store i32 %conv58, ptr %size55, align 8, !dbg !4388
  %66 = load ptr, ptr %strsect, align 8, !dbg !4389
  %sh_flags59 = getelementptr inbounds %struct.elf64_shdr, ptr %66, i32 0, i32 2, !dbg !4390
  %67 = load i64, ptr %sh_flags59, align 8, !dbg !4391
  %or60 = or i64 %67, 2, !dbg !4391
  store i64 %or60, ptr %sh_flags59, align 8, !dbg !4391
  %68 = load ptr, ptr %mod.addr, align 8, !dbg !4392
  %69 = load ptr, ptr %strsect, align 8, !dbg !4393
  %70 = load ptr, ptr %info.addr, align 8, !dbg !4394
  %index61 = getelementptr inbounds %struct.load_info, ptr %70, i32 0, i32 13, !dbg !4395
  %str62 = getelementptr inbounds %struct.anon.13, ptr %index61, i32 0, i32 1, !dbg !4396
  %71 = load i32, ptr %str62, align 4, !dbg !4396
  %call63 = call i64 @module_get_offset_and_type(ptr noundef %68, i32 noundef 5, ptr noundef %69, i32 noundef %71) #13, !dbg !4397
  %72 = load ptr, ptr %strsect, align 8, !dbg !4398
  %sh_entsize64 = getelementptr inbounds %struct.elf64_shdr, ptr %72, i32 0, i32 9, !dbg !4399
  store i64 %call63, ptr %sh_entsize64, align 8, !dbg !4400
  store i32 0, ptr %tmp65, align 4, !dbg !4401
  %73 = load i32, ptr %tmp65, align 4, !dbg !4404
  %74 = load ptr, ptr %mod_mem_init_data, align 8, !dbg !4405
  %size66 = getelementptr inbounds %struct.module_memory, ptr %74, i32 0, i32 1, !dbg !4405
  %75 = load i32, ptr %size66, align 8, !dbg !4405
  %add67 = add i32 %75, 7, !dbg !4405
  %and68 = and i32 %add67, -8, !dbg !4405
  %76 = load ptr, ptr %mod_mem_init_data, align 8, !dbg !4406
  %size69 = getelementptr inbounds %struct.module_memory, ptr %76, i32 0, i32 1, !dbg !4407
  store i32 %and68, ptr %size69, align 8, !dbg !4408
  %77 = load ptr, ptr %mod_mem_init_data, align 8, !dbg !4409
  %size70 = getelementptr inbounds %struct.module_memory, ptr %77, i32 0, i32 1, !dbg !4410
  %78 = load i32, ptr %size70, align 8, !dbg !4410
  %conv71 = zext i32 %78 to i64, !dbg !4409
  %79 = load ptr, ptr %info.addr, align 8, !dbg !4411
  %mod_kallsyms_init_off = getelementptr inbounds %struct.load_info, ptr %79, i32 0, i32 12, !dbg !4412
  store i64 %conv71, ptr %mod_kallsyms_init_off, align 8, !dbg !4413
  %80 = load ptr, ptr %mod_mem_init_data, align 8, !dbg !4414
  %size72 = getelementptr inbounds %struct.module_memory, ptr %80, i32 0, i32 1, !dbg !4415
  %81 = load i32, ptr %size72, align 8, !dbg !4416
  %conv73 = zext i32 %81 to i64, !dbg !4416
  %add74 = add i64 %conv73, 32, !dbg !4416
  %conv75 = trunc i64 %add74 to i32, !dbg !4416
  store i32 %conv75, ptr %size72, align 8, !dbg !4416
  %82 = load ptr, ptr %mod_mem_init_data, align 8, !dbg !4417
  %size76 = getelementptr inbounds %struct.module_memory, ptr %82, i32 0, i32 1, !dbg !4418
  %83 = load i32, ptr %size76, align 8, !dbg !4418
  %conv77 = zext i32 %83 to i64, !dbg !4417
  %84 = load ptr, ptr %info.addr, align 8, !dbg !4419
  %init_typeoffs = getelementptr inbounds %struct.load_info, ptr %84, i32 0, i32 9, !dbg !4420
  store i64 %conv77, ptr %init_typeoffs, align 8, !dbg !4421
  %85 = load i32, ptr %nsrc, align 4, !dbg !4422
  %conv78 = zext i32 %85 to i64, !dbg !4422
  %mul79 = mul i64 %conv78, 1, !dbg !4423
  %86 = load ptr, ptr %mod_mem_init_data, align 8, !dbg !4424
  %size80 = getelementptr inbounds %struct.module_memory, ptr %86, i32 0, i32 1, !dbg !4425
  %87 = load i32, ptr %size80, align 8, !dbg !4426
  %conv81 = zext i32 %87 to i64, !dbg !4426
  %add82 = add i64 %conv81, %mul79, !dbg !4426
  %conv83 = trunc i64 %add82 to i32, !dbg !4426
  store i32 %conv83, ptr %size80, align 8, !dbg !4426
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod_mem_init_data) #12, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod_mem_data) #12, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 4, ptr %strtab_size) #12, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndst) #12, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsrc) #12, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #12, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 8, ptr %strsect) #12, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 8, ptr %symsect) #12, !dbg !4427
  ret void, !dbg !4427
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4428 dso_local i64 @module_get_offset_and_type(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_livepatch_module(ptr noundef %mod) #4 align 16 !dbg !4431 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4435, metadata !DIExpression()), !dbg !4436
  ret i1 false, !dbg !4437
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_core_symbol(ptr noundef %src, ptr noundef %sechdrs, i32 noundef %shnum, i32 noundef %pcpundx) #0 align 16 !dbg !4438 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %sechdrs.addr = alloca ptr, align 8
  %shnum.addr = alloca i32, align 4
  %pcpundx.addr = alloca i32, align 4
  %sec = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4444, metadata !DIExpression()), !dbg !4450
  store ptr %sechdrs, ptr %sechdrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sechdrs.addr, metadata !4445, metadata !DIExpression()), !dbg !4451
  store i32 %shnum, ptr %shnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shnum.addr, metadata !4446, metadata !DIExpression()), !dbg !4452
  store i32 %pcpundx, ptr %pcpundx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcpundx.addr, metadata !4447, metadata !DIExpression()), !dbg !4453
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !4454
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !4448, metadata !DIExpression()), !dbg !4455
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #12, !dbg !4456
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4449, metadata !DIExpression()), !dbg !4457
  %0 = load ptr, ptr %src.addr, align 8, !dbg !4458
  %st_shndx = getelementptr inbounds %struct.elf64_sym, ptr %0, i32 0, i32 3, !dbg !4460
  %1 = load i16, ptr %st_shndx, align 2, !dbg !4460
  %conv = zext i16 %1 to i32, !dbg !4458
  %cmp = icmp eq i32 %conv, 0, !dbg !4461
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4462

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %src.addr, align 8, !dbg !4463
  %st_shndx2 = getelementptr inbounds %struct.elf64_sym, ptr %2, i32 0, i32 3, !dbg !4464
  %3 = load i16, ptr %st_shndx2, align 2, !dbg !4464
  %conv3 = zext i16 %3 to i32, !dbg !4463
  %4 = load i32, ptr %shnum.addr, align 4, !dbg !4465
  %cmp4 = icmp uge i32 %conv3, %4, !dbg !4466
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !4467

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %src.addr, align 8, !dbg !4468
  %st_name = getelementptr inbounds %struct.elf64_sym, ptr %5, i32 0, i32 0, !dbg !4469
  %6 = load i32, ptr %st_name, align 8, !dbg !4469
  %tobool = icmp ne i32 %6, 0, !dbg !4468
  br i1 %tobool, label %if.end, label %if.then, !dbg !4470

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !4471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4471

if.end:                                           ; preds = %lor.lhs.false6
  %7 = load ptr, ptr %src.addr, align 8, !dbg !4472
  %st_shndx7 = getelementptr inbounds %struct.elf64_sym, ptr %7, i32 0, i32 3, !dbg !4474
  %8 = load i16, ptr %st_shndx7, align 2, !dbg !4474
  %conv8 = zext i16 %8 to i32, !dbg !4472
  %9 = load i32, ptr %pcpundx.addr, align 4, !dbg !4475
  %cmp9 = icmp eq i32 %conv8, %9, !dbg !4476
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4477

if.then11:                                        ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !4478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4478

if.end12:                                         ; preds = %if.end
  %10 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4479
  %11 = load ptr, ptr %src.addr, align 8, !dbg !4480
  %st_shndx13 = getelementptr inbounds %struct.elf64_sym, ptr %11, i32 0, i32 3, !dbg !4481
  %12 = load i16, ptr %st_shndx13, align 2, !dbg !4481
  %conv14 = zext i16 %12 to i32, !dbg !4480
  %idx.ext = sext i32 %conv14 to i64, !dbg !4482
  %add.ptr = getelementptr %struct.elf64_shdr, ptr %10, i64 %idx.ext, !dbg !4482
  store ptr %add.ptr, ptr %sec, align 8, !dbg !4483
  %13 = load ptr, ptr %sec, align 8, !dbg !4484
  %sh_entsize = getelementptr inbounds %struct.elf64_shdr, ptr %13, i32 0, i32 9, !dbg !4485
  %14 = load i64, ptr %sh_entsize, align 8, !dbg !4485
  %shr = lshr i64 %14, 60, !dbg !4486
  %conv15 = trunc i64 %shr to i32, !dbg !4484
  store i32 %conv15, ptr %type, align 4, !dbg !4487
  %15 = load ptr, ptr %sec, align 8, !dbg !4488
  %sh_flags = getelementptr inbounds %struct.elf64_shdr, ptr %15, i32 0, i32 2, !dbg !4490
  %16 = load i64, ptr %sh_flags, align 8, !dbg !4490
  %and = and i64 %16, 2, !dbg !4491
  %tobool16 = icmp ne i64 %and, 0, !dbg !4491
  br i1 %tobool16, label %lor.lhs.false17, label %if.then26, !dbg !4492

lor.lhs.false17:                                  ; preds = %if.end12
  %17 = load i32, ptr %type, align 4, !dbg !4493
  %cmp18 = icmp eq i32 %17, 4, !dbg !4493
  br i1 %cmp18, label %if.then26, label %lor.lhs.false20, !dbg !4493

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %18 = load i32, ptr %type, align 4, !dbg !4493
  %cmp21 = icmp eq i32 %18, 5, !dbg !4493
  br i1 %cmp21, label %if.then26, label %lor.lhs.false23, !dbg !4493

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %19 = load i32, ptr %type, align 4, !dbg !4493
  %cmp24 = icmp eq i32 %19, 6, !dbg !4493
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !4494

if.then26:                                        ; preds = %lor.lhs.false23, %lor.lhs.false20, %lor.lhs.false17, %if.end12
  store i1 false, ptr %retval, align 1, !dbg !4495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4495

if.end27:                                         ; preds = %lor.lhs.false23
  store i1 true, ptr %retval, align 1, !dbg !4496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4496

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #12, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !4497
  %20 = load i1, ptr %retval, align 1, !dbg !4497
  ret i1 %20, !dbg !4497
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4498 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @add_kallsyms(ptr noundef %mod, ptr noundef %info) #0 align 16 !dbg !4500 {
entry:
  %mod.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ndst = alloca i32, align 4
  %src = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %s = alloca ptr, align 8
  %symsec = alloca ptr, align 8
  %strtab_size = alloca i64, align 8
  %data_base = alloca ptr, align 8
  %init_data_base = alloca ptr, align 8
  %__UNIQUE_ID_rcu287 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__UNIQUE_ID_rcu289 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %__UNIQUE_ID_rcu291 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  %tmp32 = alloca ptr, align 8
  %__UNIQUE_ID_rcu293 = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %__UNIQUE_ID_rcu295 = alloca ptr, align 8
  %tmp56 = alloca ptr, align 8
  %tmp61 = alloca ptr, align 8
  %__UNIQUE_ID_rcu297 = alloca ptr, align 8
  %tmp66 = alloca ptr, align 8
  %tmp71 = alloca ptr, align 8
  %__UNIQUE_ID_rcu299 = alloca ptr, align 8
  %tmp78 = alloca ptr, align 8
  %tmp83 = alloca ptr, align 8
  %ret = alloca i64, align 8
  %__UNIQUE_ID_rcu301 = alloca ptr, align 8
  %tmp102 = alloca ptr, align 8
  %tmp107 = alloca ptr, align 8
  %__UNIQUE_ID_rcu303 = alloca ptr, align 8
  %tmp127 = alloca ptr, align 8
  %tmp132 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4506, metadata !DIExpression()), !dbg !4541
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4507, metadata !DIExpression()), !dbg !4542
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !4543
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4508, metadata !DIExpression()), !dbg !4544
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndst) #12, !dbg !4543
  call void @llvm.dbg.declare(metadata ptr %ndst, metadata !4509, metadata !DIExpression()), !dbg !4545
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #12, !dbg !4546
  call void @llvm.dbg.declare(metadata ptr %src, metadata !4510, metadata !DIExpression()), !dbg !4547
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #12, !dbg !4548
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !4511, metadata !DIExpression()), !dbg !4549
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12, !dbg !4550
  call void @llvm.dbg.declare(metadata ptr %s, metadata !4512, metadata !DIExpression()), !dbg !4551
  call void @llvm.lifetime.start.p0(i64 8, ptr %symsec) #12, !dbg !4552
  call void @llvm.dbg.declare(metadata ptr %symsec, metadata !4513, metadata !DIExpression()), !dbg !4553
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4554
  %sechdrs = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 4, !dbg !4555
  %1 = load ptr, ptr %sechdrs, align 8, !dbg !4555
  %2 = load ptr, ptr %info.addr, align 8, !dbg !4556
  %index = getelementptr inbounds %struct.load_info, ptr %2, i32 0, i32 13, !dbg !4557
  %sym = getelementptr inbounds %struct.anon.13, ptr %index, i32 0, i32 0, !dbg !4558
  %3 = load i32, ptr %sym, align 8, !dbg !4558
  %idxprom = zext i32 %3 to i64, !dbg !4554
  %arrayidx = getelementptr %struct.elf64_shdr, ptr %1, i64 %idxprom, !dbg !4554
  store ptr %arrayidx, ptr %symsec, align 8, !dbg !4553
  call void @llvm.lifetime.start.p0(i64 8, ptr %strtab_size) #12, !dbg !4559
  call void @llvm.dbg.declare(metadata ptr %strtab_size, metadata !4514, metadata !DIExpression()), !dbg !4560
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_base) #12, !dbg !4561
  call void @llvm.dbg.declare(metadata ptr %data_base, metadata !4515, metadata !DIExpression()), !dbg !4562
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !4563
  %mem = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 22, !dbg !4564
  %arrayidx1 = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 1, !dbg !4563
  %base = getelementptr inbounds %struct.module_memory, ptr %arrayidx1, i32 0, i32 0, !dbg !4565
  %5 = load ptr, ptr %base, align 8, !dbg !4565
  store ptr %5, ptr %data_base, align 8, !dbg !4562
  call void @llvm.lifetime.start.p0(i64 8, ptr %init_data_base) #12, !dbg !4566
  call void @llvm.dbg.declare(metadata ptr %init_data_base, metadata !4516, metadata !DIExpression()), !dbg !4567
  %6 = load ptr, ptr %mod.addr, align 8, !dbg !4568
  %mem2 = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 22, !dbg !4569
  %arrayidx3 = getelementptr [7 x %struct.module_memory], ptr %mem2, i64 0, i64 5, !dbg !4568
  %base4 = getelementptr inbounds %struct.module_memory, ptr %arrayidx3, i32 0, i32 0, !dbg !4570
  %7 = load ptr, ptr %base4, align 8, !dbg !4570
  store ptr %7, ptr %init_data_base, align 8, !dbg !4567
  %8 = load ptr, ptr %init_data_base, align 8, !dbg !4571
  %9 = load ptr, ptr %info.addr, align 8, !dbg !4572
  %mod_kallsyms_init_off = getelementptr inbounds %struct.load_info, ptr %9, i32 0, i32 12, !dbg !4573
  %10 = load i64, ptr %mod_kallsyms_init_off, align 8, !dbg !4573
  %add.ptr = getelementptr i8, ptr %8, i64 %10, !dbg !4574
  %11 = load ptr, ptr %mod.addr, align 8, !dbg !4575
  %kallsyms = getelementptr inbounds %struct.module, ptr %11, i32 0, i32 28, !dbg !4576
  store ptr %add.ptr, ptr %kallsyms, align 8, !dbg !4577
  call void @rcu_read_lock() #13, !dbg !4578
  %12 = load ptr, ptr %symsec, align 8, !dbg !4579
  %sh_addr = getelementptr inbounds %struct.elf64_shdr, ptr %12, i32 0, i32 3, !dbg !4580
  %13 = load i64, ptr %sh_addr, align 8, !dbg !4580
  %14 = inttoptr i64 %13 to ptr, !dbg !4581
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu287) #12, !dbg !4582
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu287, metadata !4517, metadata !DIExpression()), !dbg !4582
  br label %do.body, !dbg !4583

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4585

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4585

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %mod.addr, align 8, !dbg !4583
  %kallsyms5 = getelementptr inbounds %struct.module, ptr %15, i32 0, i32 28, !dbg !4583
  %16 = load volatile ptr, ptr %kallsyms5, align 8, !dbg !4583
  store ptr %16, ptr %tmp, align 8, !dbg !4585
  %17 = load ptr, ptr %tmp, align 8, !dbg !4583
  store ptr %17, ptr %__UNIQUE_ID_rcu287, align 8, !dbg !4582
  br label %do.body6, !dbg !4582

do.body6:                                         ; preds = %do.end
  br label %do.cond7, !dbg !4587

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4587

do.end8:                                          ; preds = %do.cond7
  %18 = load ptr, ptr %__UNIQUE_ID_rcu287, align 8, !dbg !4582
  store ptr %18, ptr %tmp9, align 8, !dbg !4587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu287) #12, !dbg !4589
  %19 = load ptr, ptr %tmp9, align 8, !dbg !4582
  %symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %19, i32 0, i32 0, !dbg !4590
  store ptr %14, ptr %symtab, align 8, !dbg !4591
  %20 = load ptr, ptr %symsec, align 8, !dbg !4592
  %sh_size = getelementptr inbounds %struct.elf64_shdr, ptr %20, i32 0, i32 5, !dbg !4593
  %21 = load i64, ptr %sh_size, align 8, !dbg !4593
  %div = udiv i64 %21, 24, !dbg !4594
  %conv = trunc i64 %div to i32, !dbg !4592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu289) #12, !dbg !4595
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu289, metadata !4519, metadata !DIExpression()), !dbg !4595
  br label %do.body10, !dbg !4596

do.body10:                                        ; preds = %do.end8
  br label %do.cond11, !dbg !4598

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4598

do.end12:                                         ; preds = %do.cond11
  %22 = load ptr, ptr %mod.addr, align 8, !dbg !4596
  %kallsyms14 = getelementptr inbounds %struct.module, ptr %22, i32 0, i32 28, !dbg !4596
  %23 = load volatile ptr, ptr %kallsyms14, align 8, !dbg !4596
  store ptr %23, ptr %tmp13, align 8, !dbg !4598
  %24 = load ptr, ptr %tmp13, align 8, !dbg !4596
  store ptr %24, ptr %__UNIQUE_ID_rcu289, align 8, !dbg !4595
  br label %do.body15, !dbg !4595

do.body15:                                        ; preds = %do.end12
  br label %do.cond16, !dbg !4600

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4600

do.end17:                                         ; preds = %do.cond16
  %25 = load ptr, ptr %__UNIQUE_ID_rcu289, align 8, !dbg !4595
  store ptr %25, ptr %tmp18, align 8, !dbg !4600
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu289) #12, !dbg !4602
  %26 = load ptr, ptr %tmp18, align 8, !dbg !4595
  %num_symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %26, i32 0, i32 1, !dbg !4603
  store i32 %conv, ptr %num_symtab, align 8, !dbg !4604
  %27 = load ptr, ptr %info.addr, align 8, !dbg !4605
  %sechdrs19 = getelementptr inbounds %struct.load_info, ptr %27, i32 0, i32 4, !dbg !4606
  %28 = load ptr, ptr %sechdrs19, align 8, !dbg !4606
  %29 = load ptr, ptr %info.addr, align 8, !dbg !4607
  %index20 = getelementptr inbounds %struct.load_info, ptr %29, i32 0, i32 13, !dbg !4608
  %str = getelementptr inbounds %struct.anon.13, ptr %index20, i32 0, i32 1, !dbg !4609
  %30 = load i32, ptr %str, align 4, !dbg !4609
  %idxprom21 = zext i32 %30 to i64, !dbg !4605
  %arrayidx22 = getelementptr %struct.elf64_shdr, ptr %28, i64 %idxprom21, !dbg !4605
  %sh_addr23 = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx22, i32 0, i32 3, !dbg !4610
  %31 = load i64, ptr %sh_addr23, align 8, !dbg !4610
  %32 = inttoptr i64 %31 to ptr, !dbg !4611
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu291) #12, !dbg !4612
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu291, metadata !4521, metadata !DIExpression()), !dbg !4612
  br label %do.body24, !dbg !4613

do.body24:                                        ; preds = %do.end17
  br label %do.cond25, !dbg !4615

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4615

do.end26:                                         ; preds = %do.cond25
  %33 = load ptr, ptr %mod.addr, align 8, !dbg !4613
  %kallsyms28 = getelementptr inbounds %struct.module, ptr %33, i32 0, i32 28, !dbg !4613
  %34 = load volatile ptr, ptr %kallsyms28, align 8, !dbg !4613
  store ptr %34, ptr %tmp27, align 8, !dbg !4615
  %35 = load ptr, ptr %tmp27, align 8, !dbg !4613
  store ptr %35, ptr %__UNIQUE_ID_rcu291, align 8, !dbg !4612
  br label %do.body29, !dbg !4612

do.body29:                                        ; preds = %do.end26
  br label %do.cond30, !dbg !4617

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4617

do.end31:                                         ; preds = %do.cond30
  %36 = load ptr, ptr %__UNIQUE_ID_rcu291, align 8, !dbg !4612
  store ptr %36, ptr %tmp32, align 8, !dbg !4617
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu291) #12, !dbg !4619
  %37 = load ptr, ptr %tmp32, align 8, !dbg !4612
  %strtab = getelementptr inbounds %struct.mod_kallsyms, ptr %37, i32 0, i32 2, !dbg !4620
  store ptr %32, ptr %strtab, align 8, !dbg !4621
  %38 = load ptr, ptr %init_data_base, align 8, !dbg !4622
  %39 = load ptr, ptr %info.addr, align 8, !dbg !4623
  %init_typeoffs = getelementptr inbounds %struct.load_info, ptr %39, i32 0, i32 9, !dbg !4624
  %40 = load i64, ptr %init_typeoffs, align 8, !dbg !4624
  %add.ptr33 = getelementptr i8, ptr %38, i64 %40, !dbg !4625
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu293) #12, !dbg !4626
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu293, metadata !4523, metadata !DIExpression()), !dbg !4626
  br label %do.body34, !dbg !4627

do.body34:                                        ; preds = %do.end31
  br label %do.cond35, !dbg !4629

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4629

do.end36:                                         ; preds = %do.cond35
  %41 = load ptr, ptr %mod.addr, align 8, !dbg !4627
  %kallsyms38 = getelementptr inbounds %struct.module, ptr %41, i32 0, i32 28, !dbg !4627
  %42 = load volatile ptr, ptr %kallsyms38, align 8, !dbg !4627
  store ptr %42, ptr %tmp37, align 8, !dbg !4629
  %43 = load ptr, ptr %tmp37, align 8, !dbg !4627
  store ptr %43, ptr %__UNIQUE_ID_rcu293, align 8, !dbg !4626
  br label %do.body39, !dbg !4626

do.body39:                                        ; preds = %do.end36
  br label %do.cond40, !dbg !4631

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !4631

do.end41:                                         ; preds = %do.cond40
  %44 = load ptr, ptr %__UNIQUE_ID_rcu293, align 8, !dbg !4626
  store ptr %44, ptr %tmp42, align 8, !dbg !4631
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu293) #12, !dbg !4633
  %45 = load ptr, ptr %tmp42, align 8, !dbg !4626
  %typetab = getelementptr inbounds %struct.mod_kallsyms, ptr %45, i32 0, i32 3, !dbg !4634
  store ptr %add.ptr33, ptr %typetab, align 8, !dbg !4635
  %46 = load ptr, ptr %data_base, align 8, !dbg !4636
  %47 = load ptr, ptr %info.addr, align 8, !dbg !4637
  %symoffs = getelementptr inbounds %struct.load_info, ptr %47, i32 0, i32 7, !dbg !4638
  %48 = load i64, ptr %symoffs, align 8, !dbg !4638
  %add.ptr43 = getelementptr i8, ptr %46, i64 %48, !dbg !4639
  store ptr %add.ptr43, ptr %dst, align 8, !dbg !4640
  %49 = load ptr, ptr %mod.addr, align 8, !dbg !4641
  %core_kallsyms = getelementptr inbounds %struct.module, ptr %49, i32 0, i32 29, !dbg !4642
  %symtab44 = getelementptr inbounds %struct.mod_kallsyms, ptr %core_kallsyms, i32 0, i32 0, !dbg !4643
  store ptr %add.ptr43, ptr %symtab44, align 64, !dbg !4644
  %50 = load ptr, ptr %data_base, align 8, !dbg !4645
  %51 = load ptr, ptr %info.addr, align 8, !dbg !4646
  %stroffs = getelementptr inbounds %struct.load_info, ptr %51, i32 0, i32 8, !dbg !4647
  %52 = load i64, ptr %stroffs, align 8, !dbg !4647
  %add.ptr45 = getelementptr i8, ptr %50, i64 %52, !dbg !4648
  store ptr %add.ptr45, ptr %s, align 8, !dbg !4649
  %53 = load ptr, ptr %mod.addr, align 8, !dbg !4650
  %core_kallsyms46 = getelementptr inbounds %struct.module, ptr %53, i32 0, i32 29, !dbg !4651
  %strtab47 = getelementptr inbounds %struct.mod_kallsyms, ptr %core_kallsyms46, i32 0, i32 2, !dbg !4652
  store ptr %add.ptr45, ptr %strtab47, align 16, !dbg !4653
  %54 = load ptr, ptr %data_base, align 8, !dbg !4654
  %55 = load ptr, ptr %info.addr, align 8, !dbg !4655
  %core_typeoffs = getelementptr inbounds %struct.load_info, ptr %55, i32 0, i32 10, !dbg !4656
  %56 = load i64, ptr %core_typeoffs, align 8, !dbg !4656
  %add.ptr48 = getelementptr i8, ptr %54, i64 %56, !dbg !4657
  %57 = load ptr, ptr %mod.addr, align 8, !dbg !4658
  %core_kallsyms49 = getelementptr inbounds %struct.module, ptr %57, i32 0, i32 29, !dbg !4659
  %typetab50 = getelementptr inbounds %struct.mod_kallsyms, ptr %core_kallsyms49, i32 0, i32 3, !dbg !4660
  store ptr %add.ptr48, ptr %typetab50, align 8, !dbg !4661
  %58 = load ptr, ptr %info.addr, align 8, !dbg !4662
  %core_typeoffs51 = getelementptr inbounds %struct.load_info, ptr %58, i32 0, i32 10, !dbg !4663
  %59 = load i64, ptr %core_typeoffs51, align 8, !dbg !4663
  %60 = load ptr, ptr %info.addr, align 8, !dbg !4664
  %stroffs52 = getelementptr inbounds %struct.load_info, ptr %60, i32 0, i32 8, !dbg !4665
  %61 = load i64, ptr %stroffs52, align 8, !dbg !4665
  %sub = sub i64 %59, %61, !dbg !4666
  store i64 %sub, ptr %strtab_size, align 8, !dbg !4667
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu295) #12, !dbg !4668
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu295, metadata !4525, metadata !DIExpression()), !dbg !4668
  br label %do.body53, !dbg !4669

do.body53:                                        ; preds = %do.end41
  br label %do.cond54, !dbg !4671

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !4671

do.end55:                                         ; preds = %do.cond54
  %62 = load ptr, ptr %mod.addr, align 8, !dbg !4669
  %kallsyms57 = getelementptr inbounds %struct.module, ptr %62, i32 0, i32 28, !dbg !4669
  %63 = load volatile ptr, ptr %kallsyms57, align 8, !dbg !4669
  store ptr %63, ptr %tmp56, align 8, !dbg !4671
  %64 = load ptr, ptr %tmp56, align 8, !dbg !4669
  store ptr %64, ptr %__UNIQUE_ID_rcu295, align 8, !dbg !4668
  br label %do.body58, !dbg !4668

do.body58:                                        ; preds = %do.end55
  br label %do.cond59, !dbg !4673

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !4673

do.end60:                                         ; preds = %do.cond59
  %65 = load ptr, ptr %__UNIQUE_ID_rcu295, align 8, !dbg !4668
  store ptr %65, ptr %tmp61, align 8, !dbg !4673
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu295) #12, !dbg !4675
  %66 = load ptr, ptr %tmp61, align 8, !dbg !4668
  %symtab62 = getelementptr inbounds %struct.mod_kallsyms, ptr %66, i32 0, i32 0, !dbg !4676
  %67 = load ptr, ptr %symtab62, align 8, !dbg !4676
  store ptr %67, ptr %src, align 8, !dbg !4677
  store i32 0, ptr %i, align 4, !dbg !4678
  store i32 0, ptr %ndst, align 4, !dbg !4679
  br label %for.cond, !dbg !4680

for.cond:                                         ; preds = %for.inc, %do.end60
  %68 = load i32, ptr %i, align 4, !dbg !4681
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu297) #12, !dbg !4682
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu297, metadata !4527, metadata !DIExpression()), !dbg !4682
  br label %do.body63, !dbg !4683

do.body63:                                        ; preds = %for.cond
  br label %do.cond64, !dbg !4685

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !4685

do.end65:                                         ; preds = %do.cond64
  %69 = load ptr, ptr %mod.addr, align 8, !dbg !4683
  %kallsyms67 = getelementptr inbounds %struct.module, ptr %69, i32 0, i32 28, !dbg !4683
  %70 = load volatile ptr, ptr %kallsyms67, align 8, !dbg !4683
  store ptr %70, ptr %tmp66, align 8, !dbg !4685
  %71 = load ptr, ptr %tmp66, align 8, !dbg !4683
  store ptr %71, ptr %__UNIQUE_ID_rcu297, align 8, !dbg !4682
  br label %do.body68, !dbg !4682

do.body68:                                        ; preds = %do.end65
  br label %do.cond69, !dbg !4687

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !4687

do.end70:                                         ; preds = %do.cond69
  %72 = load ptr, ptr %__UNIQUE_ID_rcu297, align 8, !dbg !4682
  store ptr %72, ptr %tmp71, align 8, !dbg !4687
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu297) #12, !dbg !4689
  %73 = load ptr, ptr %tmp71, align 8, !dbg !4682
  %num_symtab72 = getelementptr inbounds %struct.mod_kallsyms, ptr %73, i32 0, i32 1, !dbg !4690
  %74 = load i32, ptr %num_symtab72, align 8, !dbg !4690
  %cmp = icmp ult i32 %68, %74, !dbg !4691
  br i1 %cmp, label %for.body, label %for.end, !dbg !4692

for.body:                                         ; preds = %do.end70
  %75 = load ptr, ptr %src, align 8, !dbg !4693
  %76 = load i32, ptr %i, align 4, !dbg !4694
  %idx.ext = zext i32 %76 to i64, !dbg !4695
  %add.ptr74 = getelementptr %struct.elf64_sym, ptr %75, i64 %idx.ext, !dbg !4695
  %77 = load ptr, ptr %info.addr, align 8, !dbg !4696
  %call = call zeroext i8 @elf_type(ptr noundef %add.ptr74, ptr noundef %77) #13, !dbg !4697
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu299) #12, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu299, metadata !4531, metadata !DIExpression()), !dbg !4698
  br label %do.body75, !dbg !4699

do.body75:                                        ; preds = %for.body
  br label %do.cond76, !dbg !4701

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !4701

do.end77:                                         ; preds = %do.cond76
  %78 = load ptr, ptr %mod.addr, align 8, !dbg !4699
  %kallsyms79 = getelementptr inbounds %struct.module, ptr %78, i32 0, i32 28, !dbg !4699
  %79 = load volatile ptr, ptr %kallsyms79, align 8, !dbg !4699
  store ptr %79, ptr %tmp78, align 8, !dbg !4701
  %80 = load ptr, ptr %tmp78, align 8, !dbg !4699
  store ptr %80, ptr %__UNIQUE_ID_rcu299, align 8, !dbg !4698
  br label %do.body80, !dbg !4698

do.body80:                                        ; preds = %do.end77
  br label %do.cond81, !dbg !4703

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !4703

do.end82:                                         ; preds = %do.cond81
  %81 = load ptr, ptr %__UNIQUE_ID_rcu299, align 8, !dbg !4698
  store ptr %81, ptr %tmp83, align 8, !dbg !4703
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu299) #12, !dbg !4705
  %82 = load ptr, ptr %tmp83, align 8, !dbg !4698
  %typetab84 = getelementptr inbounds %struct.mod_kallsyms, ptr %82, i32 0, i32 3, !dbg !4706
  %83 = load ptr, ptr %typetab84, align 8, !dbg !4706
  %84 = load i32, ptr %i, align 4, !dbg !4707
  %idxprom85 = zext i32 %84 to i64, !dbg !4705
  %arrayidx86 = getelementptr i8, ptr %83, i64 %idxprom85, !dbg !4705
  store i8 %call, ptr %arrayidx86, align 1, !dbg !4708
  %85 = load i32, ptr %i, align 4, !dbg !4709
  %cmp87 = icmp eq i32 %85, 0, !dbg !4710
  br i1 %cmp87, label %if.then, label %lor.lhs.false, !dbg !4711

lor.lhs.false:                                    ; preds = %do.end82
  %86 = load ptr, ptr %mod.addr, align 8, !dbg !4712
  %call89 = call zeroext i1 @is_livepatch_module(ptr noundef %86) #13, !dbg !4713
  br i1 %call89, label %if.then, label %lor.lhs.false91, !dbg !4714

lor.lhs.false91:                                  ; preds = %lor.lhs.false
  %87 = load ptr, ptr %src, align 8, !dbg !4715
  %88 = load i32, ptr %i, align 4, !dbg !4716
  %idx.ext92 = zext i32 %88 to i64, !dbg !4717
  %add.ptr93 = getelementptr %struct.elf64_sym, ptr %87, i64 %idx.ext92, !dbg !4717
  %89 = load ptr, ptr %info.addr, align 8, !dbg !4718
  %sechdrs94 = getelementptr inbounds %struct.load_info, ptr %89, i32 0, i32 4, !dbg !4719
  %90 = load ptr, ptr %sechdrs94, align 8, !dbg !4719
  %91 = load ptr, ptr %info.addr, align 8, !dbg !4720
  %hdr = getelementptr inbounds %struct.load_info, ptr %91, i32 0, i32 2, !dbg !4721
  %92 = load ptr, ptr %hdr, align 8, !dbg !4721
  %e_shnum = getelementptr inbounds %struct.elf64_hdr, ptr %92, i32 0, i32 12, !dbg !4722
  %93 = load i16, ptr %e_shnum, align 4, !dbg !4722
  %conv95 = zext i16 %93 to i32, !dbg !4720
  %94 = load ptr, ptr %info.addr, align 8, !dbg !4723
  %index96 = getelementptr inbounds %struct.load_info, ptr %94, i32 0, i32 13, !dbg !4724
  %pcpu = getelementptr inbounds %struct.anon.13, ptr %index96, i32 0, i32 5, !dbg !4725
  %95 = load i32, ptr %pcpu, align 4, !dbg !4725
  %call97 = call zeroext i1 @is_core_symbol(ptr noundef %add.ptr93, ptr noundef %90, i32 noundef %conv95, i32 noundef %95) #13, !dbg !4726
  br i1 %call97, label %if.then, label %if.end146, !dbg !4727

if.then:                                          ; preds = %lor.lhs.false91, %lor.lhs.false, %do.end82
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !4728
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4534, metadata !DIExpression()), !dbg !4729
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu301) #12, !dbg !4730
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu301, metadata !4537, metadata !DIExpression()), !dbg !4730
  br label %do.body99, !dbg !4731

do.body99:                                        ; preds = %if.then
  br label %do.cond100, !dbg !4733

do.cond100:                                       ; preds = %do.body99
  br label %do.end101, !dbg !4733

do.end101:                                        ; preds = %do.cond100
  %96 = load ptr, ptr %mod.addr, align 8, !dbg !4731
  %kallsyms103 = getelementptr inbounds %struct.module, ptr %96, i32 0, i32 28, !dbg !4731
  %97 = load volatile ptr, ptr %kallsyms103, align 8, !dbg !4731
  store ptr %97, ptr %tmp102, align 8, !dbg !4733
  %98 = load ptr, ptr %tmp102, align 8, !dbg !4731
  store ptr %98, ptr %__UNIQUE_ID_rcu301, align 8, !dbg !4730
  br label %do.body104, !dbg !4730

do.body104:                                       ; preds = %do.end101
  br label %do.cond105, !dbg !4735

do.cond105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !4735

do.end106:                                        ; preds = %do.cond105
  %99 = load ptr, ptr %__UNIQUE_ID_rcu301, align 8, !dbg !4730
  store ptr %99, ptr %tmp107, align 8, !dbg !4735
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu301) #12, !dbg !4737
  %100 = load ptr, ptr %tmp107, align 8, !dbg !4730
  %typetab108 = getelementptr inbounds %struct.mod_kallsyms, ptr %100, i32 0, i32 3, !dbg !4738
  %101 = load ptr, ptr %typetab108, align 8, !dbg !4738
  %102 = load i32, ptr %i, align 4, !dbg !4739
  %idxprom109 = zext i32 %102 to i64, !dbg !4737
  %arrayidx110 = getelementptr i8, ptr %101, i64 %idxprom109, !dbg !4737
  %103 = load i8, ptr %arrayidx110, align 1, !dbg !4737
  %104 = load ptr, ptr %mod.addr, align 8, !dbg !4740
  %core_kallsyms111 = getelementptr inbounds %struct.module, ptr %104, i32 0, i32 29, !dbg !4741
  %typetab112 = getelementptr inbounds %struct.mod_kallsyms, ptr %core_kallsyms111, i32 0, i32 3, !dbg !4742
  %105 = load ptr, ptr %typetab112, align 8, !dbg !4742
  %106 = load i32, ptr %ndst, align 4, !dbg !4743
  %idxprom113 = zext i32 %106 to i64, !dbg !4740
  %arrayidx114 = getelementptr i8, ptr %105, i64 %idxprom113, !dbg !4740
  store i8 %103, ptr %arrayidx114, align 1, !dbg !4744
  %107 = load ptr, ptr %dst, align 8, !dbg !4745
  %108 = load i32, ptr %ndst, align 4, !dbg !4746
  %idxprom115 = zext i32 %108 to i64, !dbg !4745
  %arrayidx116 = getelementptr %struct.elf64_sym, ptr %107, i64 %idxprom115, !dbg !4745
  %109 = load ptr, ptr %src, align 8, !dbg !4747
  %110 = load i32, ptr %i, align 4, !dbg !4748
  %idxprom117 = zext i32 %110 to i64, !dbg !4747
  %arrayidx118 = getelementptr %struct.elf64_sym, ptr %109, i64 %idxprom117, !dbg !4747
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx116, ptr align 8 %arrayidx118, i64 24, i1 false), !dbg !4747
  %111 = load ptr, ptr %s, align 8, !dbg !4749
  %112 = load ptr, ptr %mod.addr, align 8, !dbg !4750
  %core_kallsyms119 = getelementptr inbounds %struct.module, ptr %112, i32 0, i32 29, !dbg !4751
  %strtab120 = getelementptr inbounds %struct.mod_kallsyms, ptr %core_kallsyms119, i32 0, i32 2, !dbg !4752
  %113 = load ptr, ptr %strtab120, align 16, !dbg !4752
  %sub.ptr.lhs.cast = ptrtoint ptr %111 to i64, !dbg !4753
  %sub.ptr.rhs.cast = ptrtoint ptr %113 to i64, !dbg !4753
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4753
  %conv121 = trunc i64 %sub.ptr.sub to i32, !dbg !4749
  %114 = load ptr, ptr %dst, align 8, !dbg !4754
  %115 = load i32, ptr %ndst, align 4, !dbg !4755
  %inc = add i32 %115, 1, !dbg !4755
  store i32 %inc, ptr %ndst, align 4, !dbg !4755
  %idxprom122 = zext i32 %115 to i64, !dbg !4754
  %arrayidx123 = getelementptr %struct.elf64_sym, ptr %114, i64 %idxprom122, !dbg !4754
  %st_name = getelementptr inbounds %struct.elf64_sym, ptr %arrayidx123, i32 0, i32 0, !dbg !4756
  store i32 %conv121, ptr %st_name, align 8, !dbg !4757
  %116 = load ptr, ptr %s, align 8, !dbg !4758
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu303) #12, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu303, metadata !4539, metadata !DIExpression()), !dbg !4759
  br label %do.body124, !dbg !4760

do.body124:                                       ; preds = %do.end106
  br label %do.cond125, !dbg !4762

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !4762

do.end126:                                        ; preds = %do.cond125
  %117 = load ptr, ptr %mod.addr, align 8, !dbg !4760
  %kallsyms128 = getelementptr inbounds %struct.module, ptr %117, i32 0, i32 28, !dbg !4760
  %118 = load volatile ptr, ptr %kallsyms128, align 8, !dbg !4760
  store ptr %118, ptr %tmp127, align 8, !dbg !4762
  %119 = load ptr, ptr %tmp127, align 8, !dbg !4760
  store ptr %119, ptr %__UNIQUE_ID_rcu303, align 8, !dbg !4759
  br label %do.body129, !dbg !4759

do.body129:                                       ; preds = %do.end126
  br label %do.cond130, !dbg !4764

do.cond130:                                       ; preds = %do.body129
  br label %do.end131, !dbg !4764

do.end131:                                        ; preds = %do.cond130
  %120 = load ptr, ptr %__UNIQUE_ID_rcu303, align 8, !dbg !4759
  store ptr %120, ptr %tmp132, align 8, !dbg !4764
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu303) #12, !dbg !4766
  %121 = load ptr, ptr %tmp132, align 8, !dbg !4759
  %strtab133 = getelementptr inbounds %struct.mod_kallsyms, ptr %121, i32 0, i32 2, !dbg !4767
  %122 = load ptr, ptr %strtab133, align 8, !dbg !4767
  %123 = load ptr, ptr %src, align 8, !dbg !4768
  %124 = load i32, ptr %i, align 4, !dbg !4769
  %idxprom134 = zext i32 %124 to i64, !dbg !4768
  %arrayidx135 = getelementptr %struct.elf64_sym, ptr %123, i64 %idxprom134, !dbg !4768
  %st_name136 = getelementptr inbounds %struct.elf64_sym, ptr %arrayidx135, i32 0, i32 0, !dbg !4770
  %125 = load i32, ptr %st_name136, align 8, !dbg !4770
  %idxprom137 = zext i32 %125 to i64, !dbg !4766
  %arrayidx138 = getelementptr i8, ptr %122, i64 %idxprom137, !dbg !4766
  %126 = load i64, ptr %strtab_size, align 8, !dbg !4771
  %call139 = call i64 @strscpy(ptr noundef %116, ptr noundef %arrayidx138, i64 noundef %126) #13, !dbg !4772
  store i64 %call139, ptr %ret, align 8, !dbg !4773
  %127 = load i64, ptr %ret, align 8, !dbg !4774
  %cmp140 = icmp slt i64 %127, 0, !dbg !4776
  br i1 %cmp140, label %if.then142, label %if.end, !dbg !4777

if.then142:                                       ; preds = %do.end131
  store i32 22, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4778

if.end:                                           ; preds = %do.end131
  %128 = load i64, ptr %ret, align 8, !dbg !4779
  %add = add i64 %128, 1, !dbg !4780
  %129 = load ptr, ptr %s, align 8, !dbg !4781
  %add.ptr143 = getelementptr i8, ptr %129, i64 %add, !dbg !4781
  store ptr %add.ptr143, ptr %s, align 8, !dbg !4781
  %130 = load i64, ptr %ret, align 8, !dbg !4782
  %add144 = add i64 %130, 1, !dbg !4783
  %131 = load i64, ptr %strtab_size, align 8, !dbg !4784
  %sub145 = sub i64 %131, %add144, !dbg !4784
  store i64 %sub145, ptr %strtab_size, align 8, !dbg !4784
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4785
  br label %cleanup, !dbg !4785

cleanup:                                          ; preds = %if.end, %if.then142
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !4785
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 22, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end146, !dbg !4786

if.end146:                                        ; preds = %cleanup.cont, %lor.lhs.false91
  br label %for.inc, !dbg !4787

for.inc:                                          ; preds = %if.end146
  %132 = load i32, ptr %i, align 4, !dbg !4788
  %inc147 = add i32 %132, 1, !dbg !4788
  store i32 %inc147, ptr %i, align 4, !dbg !4788
  br label %for.cond, !dbg !4789, !llvm.loop !4790

for.end:                                          ; preds = %cleanup, %do.end70
  call void @rcu_read_unlock() #13, !dbg !4792
  %133 = load i32, ptr %ndst, align 4, !dbg !4793
  %134 = load ptr, ptr %mod.addr, align 8, !dbg !4794
  %core_kallsyms148 = getelementptr inbounds %struct.module, ptr %134, i32 0, i32 29, !dbg !4795
  %num_symtab149 = getelementptr inbounds %struct.mod_kallsyms, ptr %core_kallsyms148, i32 0, i32 1, !dbg !4796
  store i32 %133, ptr %num_symtab149, align 8, !dbg !4797
  call void @llvm.lifetime.end.p0(i64 8, ptr %init_data_base) #12, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_base) #12, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %strtab_size) #12, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %symsec) #12, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #12, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #12, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndst) #12, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !4798
  ret void, !dbg !4798

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !4799 {
entry:
  call void @__rcu_read_lock() #13, !dbg !4801
  br label %do.body, !dbg !4802

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4803

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4805

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4806

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4808
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @elf_type(ptr noundef %sym, ptr noundef %info) #0 align 16 !dbg !4809 {
entry:
  %retval = alloca i8, align 1
  %sym.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %sechdrs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sym, ptr %sym.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !4813, metadata !DIExpression()), !dbg !4816
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4814, metadata !DIExpression()), !dbg !4817
  call void @llvm.lifetime.start.p0(i64 8, ptr %sechdrs) #12, !dbg !4818
  call void @llvm.dbg.declare(metadata ptr %sechdrs, metadata !4815, metadata !DIExpression()), !dbg !4819
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4820
  %sechdrs1 = getelementptr inbounds %struct.load_info, ptr %0, i32 0, i32 4, !dbg !4821
  %1 = load ptr, ptr %sechdrs1, align 8, !dbg !4821
  store ptr %1, ptr %sechdrs, align 8, !dbg !4819
  %2 = load ptr, ptr %sym.addr, align 8, !dbg !4822
  %st_info = getelementptr inbounds %struct.elf64_sym, ptr %2, i32 0, i32 1, !dbg !4822
  %3 = load i8, ptr %st_info, align 4, !dbg !4822
  %conv = zext i8 %3 to i32, !dbg !4822
  %shr = ashr i32 %conv, 4, !dbg !4822
  %cmp = icmp eq i32 %shr, 2, !dbg !4824
  br i1 %cmp, label %if.then, label %if.end, !dbg !4825

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %sym.addr, align 8, !dbg !4826
  %st_info3 = getelementptr inbounds %struct.elf64_sym, ptr %4, i32 0, i32 1, !dbg !4826
  %5 = load i8, ptr %st_info3, align 4, !dbg !4826
  %conv4 = zext i8 %5 to i32, !dbg !4826
  %and = and i32 %conv4, 15, !dbg !4826
  %cmp5 = icmp eq i32 %and, 1, !dbg !4829
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !4830

if.then7:                                         ; preds = %if.then
  store i8 118, ptr %retval, align 1, !dbg !4831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4831

if.else:                                          ; preds = %if.then
  store i8 119, ptr %retval, align 1, !dbg !4832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4832

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %sym.addr, align 8, !dbg !4833
  %st_shndx = getelementptr inbounds %struct.elf64_sym, ptr %6, i32 0, i32 3, !dbg !4835
  %7 = load i16, ptr %st_shndx, align 2, !dbg !4835
  %conv8 = zext i16 %7 to i32, !dbg !4833
  %cmp9 = icmp eq i32 %conv8, 0, !dbg !4836
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4837

if.then11:                                        ; preds = %if.end
  store i8 85, ptr %retval, align 1, !dbg !4838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4838

if.end12:                                         ; preds = %if.end
  %8 = load ptr, ptr %sym.addr, align 8, !dbg !4839
  %st_shndx13 = getelementptr inbounds %struct.elf64_sym, ptr %8, i32 0, i32 3, !dbg !4841
  %9 = load i16, ptr %st_shndx13, align 2, !dbg !4841
  %conv14 = zext i16 %9 to i32, !dbg !4839
  %cmp15 = icmp eq i32 %conv14, 65521, !dbg !4842
  br i1 %cmp15, label %if.then21, label %lor.lhs.false, !dbg !4843

lor.lhs.false:                                    ; preds = %if.end12
  %10 = load ptr, ptr %sym.addr, align 8, !dbg !4844
  %st_shndx17 = getelementptr inbounds %struct.elf64_sym, ptr %10, i32 0, i32 3, !dbg !4845
  %11 = load i16, ptr %st_shndx17, align 2, !dbg !4845
  %conv18 = zext i16 %11 to i32, !dbg !4844
  %12 = load ptr, ptr %info.addr, align 8, !dbg !4846
  %index = getelementptr inbounds %struct.load_info, ptr %12, i32 0, i32 13, !dbg !4847
  %pcpu = getelementptr inbounds %struct.anon.13, ptr %index, i32 0, i32 5, !dbg !4848
  %13 = load i32, ptr %pcpu, align 4, !dbg !4848
  %cmp19 = icmp eq i32 %conv18, %13, !dbg !4849
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !4850

if.then21:                                        ; preds = %lor.lhs.false, %if.end12
  store i8 97, ptr %retval, align 1, !dbg !4851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4851

if.end22:                                         ; preds = %lor.lhs.false
  %14 = load ptr, ptr %sym.addr, align 8, !dbg !4852
  %st_shndx23 = getelementptr inbounds %struct.elf64_sym, ptr %14, i32 0, i32 3, !dbg !4854
  %15 = load i16, ptr %st_shndx23, align 2, !dbg !4854
  %conv24 = zext i16 %15 to i32, !dbg !4852
  %cmp25 = icmp sge i32 %conv24, 65280, !dbg !4855
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4856

if.then27:                                        ; preds = %if.end22
  store i8 63, ptr %retval, align 1, !dbg !4857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4857

if.end28:                                         ; preds = %if.end22
  %16 = load ptr, ptr %sechdrs, align 8, !dbg !4858
  %17 = load ptr, ptr %sym.addr, align 8, !dbg !4860
  %st_shndx29 = getelementptr inbounds %struct.elf64_sym, ptr %17, i32 0, i32 3, !dbg !4861
  %18 = load i16, ptr %st_shndx29, align 2, !dbg !4861
  %idxprom = zext i16 %18 to i64, !dbg !4858
  %arrayidx = getelementptr %struct.elf64_shdr, ptr %16, i64 %idxprom, !dbg !4858
  %sh_flags = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx, i32 0, i32 2, !dbg !4862
  %19 = load i64, ptr %sh_flags, align 8, !dbg !4862
  %and30 = and i64 %19, 4, !dbg !4863
  %tobool = icmp ne i64 %and30, 0, !dbg !4863
  br i1 %tobool, label %if.then31, label %if.end32, !dbg !4864

if.then31:                                        ; preds = %if.end28
  store i8 116, ptr %retval, align 1, !dbg !4865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4865

if.end32:                                         ; preds = %if.end28
  %20 = load ptr, ptr %sechdrs, align 8, !dbg !4866
  %21 = load ptr, ptr %sym.addr, align 8, !dbg !4868
  %st_shndx33 = getelementptr inbounds %struct.elf64_sym, ptr %21, i32 0, i32 3, !dbg !4869
  %22 = load i16, ptr %st_shndx33, align 2, !dbg !4869
  %idxprom34 = zext i16 %22 to i64, !dbg !4866
  %arrayidx35 = getelementptr %struct.elf64_shdr, ptr %20, i64 %idxprom34, !dbg !4866
  %sh_flags36 = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx35, i32 0, i32 2, !dbg !4870
  %23 = load i64, ptr %sh_flags36, align 8, !dbg !4870
  %and37 = and i64 %23, 2, !dbg !4871
  %tobool38 = icmp ne i64 %and37, 0, !dbg !4871
  br i1 %tobool38, label %land.lhs.true, label %if.end61, !dbg !4872

land.lhs.true:                                    ; preds = %if.end32
  %24 = load ptr, ptr %sechdrs, align 8, !dbg !4873
  %25 = load ptr, ptr %sym.addr, align 8, !dbg !4874
  %st_shndx39 = getelementptr inbounds %struct.elf64_sym, ptr %25, i32 0, i32 3, !dbg !4875
  %26 = load i16, ptr %st_shndx39, align 2, !dbg !4875
  %idxprom40 = zext i16 %26 to i64, !dbg !4873
  %arrayidx41 = getelementptr %struct.elf64_shdr, ptr %24, i64 %idxprom40, !dbg !4873
  %sh_type = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx41, i32 0, i32 1, !dbg !4876
  %27 = load i32, ptr %sh_type, align 4, !dbg !4876
  %cmp42 = icmp ne i32 %27, 8, !dbg !4877
  br i1 %cmp42, label %if.then44, label %if.end61, !dbg !4878

if.then44:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %sechdrs, align 8, !dbg !4879
  %29 = load ptr, ptr %sym.addr, align 8, !dbg !4882
  %st_shndx45 = getelementptr inbounds %struct.elf64_sym, ptr %29, i32 0, i32 3, !dbg !4883
  %30 = load i16, ptr %st_shndx45, align 2, !dbg !4883
  %idxprom46 = zext i16 %30 to i64, !dbg !4879
  %arrayidx47 = getelementptr %struct.elf64_shdr, ptr %28, i64 %idxprom46, !dbg !4879
  %sh_flags48 = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx47, i32 0, i32 2, !dbg !4884
  %31 = load i64, ptr %sh_flags48, align 8, !dbg !4884
  %and49 = and i64 %31, 1, !dbg !4885
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4885
  br i1 %tobool50, label %if.else52, label %if.then51, !dbg !4886

if.then51:                                        ; preds = %if.then44
  store i8 114, ptr %retval, align 1, !dbg !4887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4887

if.else52:                                        ; preds = %if.then44
  %32 = load ptr, ptr %sechdrs, align 8, !dbg !4888
  %33 = load ptr, ptr %sym.addr, align 8, !dbg !4890
  %st_shndx53 = getelementptr inbounds %struct.elf64_sym, ptr %33, i32 0, i32 3, !dbg !4891
  %34 = load i16, ptr %st_shndx53, align 2, !dbg !4891
  %idxprom54 = zext i16 %34 to i64, !dbg !4888
  %arrayidx55 = getelementptr %struct.elf64_shdr, ptr %32, i64 %idxprom54, !dbg !4888
  %sh_flags56 = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx55, i32 0, i32 2, !dbg !4892
  %35 = load i64, ptr %sh_flags56, align 8, !dbg !4892
  %and57 = and i64 %35, 0, !dbg !4893
  %tobool58 = icmp ne i64 %and57, 0, !dbg !4893
  br i1 %tobool58, label %if.then59, label %if.else60, !dbg !4894

if.then59:                                        ; preds = %if.else52
  store i8 103, ptr %retval, align 1, !dbg !4895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4895

if.else60:                                        ; preds = %if.else52
  store i8 100, ptr %retval, align 1, !dbg !4896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4896

if.end61:                                         ; preds = %land.lhs.true, %if.end32
  %36 = load ptr, ptr %sechdrs, align 8, !dbg !4897
  %37 = load ptr, ptr %sym.addr, align 8, !dbg !4899
  %st_shndx62 = getelementptr inbounds %struct.elf64_sym, ptr %37, i32 0, i32 3, !dbg !4900
  %38 = load i16, ptr %st_shndx62, align 2, !dbg !4900
  %idxprom63 = zext i16 %38 to i64, !dbg !4897
  %arrayidx64 = getelementptr %struct.elf64_shdr, ptr %36, i64 %idxprom63, !dbg !4897
  %sh_type65 = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx64, i32 0, i32 1, !dbg !4901
  %39 = load i32, ptr %sh_type65, align 4, !dbg !4901
  %cmp66 = icmp eq i32 %39, 8, !dbg !4902
  br i1 %cmp66, label %if.then68, label %if.end77, !dbg !4903

if.then68:                                        ; preds = %if.end61
  %40 = load ptr, ptr %sechdrs, align 8, !dbg !4904
  %41 = load ptr, ptr %sym.addr, align 8, !dbg !4907
  %st_shndx69 = getelementptr inbounds %struct.elf64_sym, ptr %41, i32 0, i32 3, !dbg !4908
  %42 = load i16, ptr %st_shndx69, align 2, !dbg !4908
  %idxprom70 = zext i16 %42 to i64, !dbg !4904
  %arrayidx71 = getelementptr %struct.elf64_shdr, ptr %40, i64 %idxprom70, !dbg !4904
  %sh_flags72 = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx71, i32 0, i32 2, !dbg !4909
  %43 = load i64, ptr %sh_flags72, align 8, !dbg !4909
  %and73 = and i64 %43, 0, !dbg !4910
  %tobool74 = icmp ne i64 %and73, 0, !dbg !4910
  br i1 %tobool74, label %if.then75, label %if.else76, !dbg !4911

if.then75:                                        ; preds = %if.then68
  store i8 115, ptr %retval, align 1, !dbg !4912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4912

if.else76:                                        ; preds = %if.then68
  store i8 98, ptr %retval, align 1, !dbg !4913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4913

if.end77:                                         ; preds = %if.end61
  %44 = load ptr, ptr %info.addr, align 8, !dbg !4914
  %secstrings = getelementptr inbounds %struct.load_info, ptr %44, i32 0, i32 5, !dbg !4916
  %45 = load ptr, ptr %secstrings, align 8, !dbg !4916
  %46 = load ptr, ptr %sechdrs, align 8, !dbg !4917
  %47 = load ptr, ptr %sym.addr, align 8, !dbg !4918
  %st_shndx78 = getelementptr inbounds %struct.elf64_sym, ptr %47, i32 0, i32 3, !dbg !4919
  %48 = load i16, ptr %st_shndx78, align 2, !dbg !4919
  %idxprom79 = zext i16 %48 to i64, !dbg !4917
  %arrayidx80 = getelementptr %struct.elf64_shdr, ptr %46, i64 %idxprom79, !dbg !4917
  %sh_name = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx80, i32 0, i32 0, !dbg !4920
  %49 = load i32, ptr %sh_name, align 8, !dbg !4920
  %idx.ext = zext i32 %49 to i64, !dbg !4921
  %add.ptr = getelementptr i8, ptr %45, i64 %idx.ext, !dbg !4921
  %call = call zeroext i1 @strstarts(ptr noundef %add.ptr, ptr noundef @.str) #13, !dbg !4922
  br i1 %call, label %if.then81, label %if.end82, !dbg !4923

if.then81:                                        ; preds = %if.end77
  store i8 110, ptr %retval, align 1, !dbg !4924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4924

if.end82:                                         ; preds = %if.end77
  store i8 63, ptr %retval, align 1, !dbg !4926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4926

cleanup:                                          ; preds = %if.end82, %if.then81, %if.else76, %if.then75, %if.else60, %if.then59, %if.then51, %if.then31, %if.then27, %if.then21, %if.then11, %if.else, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %sechdrs) #12, !dbg !4927
  %50 = load i8, ptr %retval, align 1, !dbg !4927
  ret i8 %50, !dbg !4927
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4928 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !4931 {
entry:
  br label %do.body, !dbg !4932

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4933

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #13, !dbg !4935
  br label %do.body1, !dbg !4936

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4937

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @init_build_id(ptr noundef %mod, ptr noundef %info) #0 align 16 !dbg !4940 {
entry:
  %mod.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4942, metadata !DIExpression()), !dbg !4944
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4943, metadata !DIExpression()), !dbg !4945
  ret void, !dbg !4946
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden ptr @dereference_module_function_descriptor(ptr noundef %mod, ptr noundef %ptr) #0 align 16 !dbg !4947 {
entry:
  %mod.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4951, metadata !DIExpression()), !dbg !4953
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4952, metadata !DIExpression()), !dbg !4954
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4955
  ret ptr %0, !dbg !4956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @module_address_lookup(i64 noundef %addr, ptr noundef %size, ptr noundef %offset, ptr noundef %modname, ptr noundef %modbuildid, ptr noundef %namebuf) #0 align 16 !dbg !2 {
entry:
  %addr.addr = alloca i64, align 8
  %size.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %modname.addr = alloca ptr, align 8
  %modbuildid.addr = alloca ptr, align 8
  %namebuf.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %mod = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4160, metadata !DIExpression()), !dbg !4957
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4161, metadata !DIExpression()), !dbg !4958
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4162, metadata !DIExpression()), !dbg !4959
  store ptr %modname, ptr %modname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %modname.addr, metadata !4163, metadata !DIExpression()), !dbg !4960
  store ptr %modbuildid, ptr %modbuildid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %modbuildid.addr, metadata !4164, metadata !DIExpression()), !dbg !4961
  store ptr %namebuf, ptr %namebuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %namebuf.addr, metadata !4165, metadata !DIExpression()), !dbg !4962
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !4963
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4166, metadata !DIExpression()), !dbg !4964
  store ptr null, ptr %ret, align 8, !dbg !4964
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #12, !dbg !4965
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !4167, metadata !DIExpression()), !dbg !4966
  br label %do.body, !dbg !4967

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !4968
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4968, !srcloc !4970
  br label %do.cond, !dbg !4968

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4968

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %addr.addr, align 8, !dbg !4971
  %call = call ptr @__module_address(i64 noundef %0) #13, !dbg !4972
  store ptr %call, ptr %mod, align 8, !dbg !4973
  %1 = load ptr, ptr %mod, align 8, !dbg !4974
  %tobool = icmp ne ptr %1, null, !dbg !4974
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4976

if.then:                                          ; preds = %do.end
  %2 = load ptr, ptr %modname.addr, align 8, !dbg !4977
  %tobool1 = icmp ne ptr %2, null, !dbg !4977
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !4980

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %mod, align 8, !dbg !4981
  %name = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 2, !dbg !4982
  %arraydecay = getelementptr inbounds [56 x i8], ptr %name, i64 0, i64 0, !dbg !4981
  %4 = load ptr, ptr %modname.addr, align 8, !dbg !4983
  store ptr %arraydecay, ptr %4, align 8, !dbg !4984
  br label %if.end, !dbg !4985

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %modbuildid.addr, align 8, !dbg !4986
  %tobool3 = icmp ne ptr %5, null, !dbg !4986
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4988

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %modbuildid.addr, align 8, !dbg !4989
  store ptr null, ptr %6, align 8, !dbg !4991
  br label %if.end5, !dbg !4992

if.end5:                                          ; preds = %if.then4, %if.end
  %7 = load ptr, ptr %mod, align 8, !dbg !4993
  %8 = load i64, ptr %addr.addr, align 8, !dbg !4994
  %9 = load ptr, ptr %size.addr, align 8, !dbg !4995
  %10 = load ptr, ptr %offset.addr, align 8, !dbg !4996
  %call6 = call ptr @find_kallsyms_symbol(ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10) #13, !dbg !4997
  store ptr %call6, ptr %ret, align 8, !dbg !4998
  br label %if.end7, !dbg !4999

if.end7:                                          ; preds = %if.end5, %do.end
  %11 = load ptr, ptr %ret, align 8, !dbg !5000
  %tobool8 = icmp ne ptr %11, null, !dbg !5000
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5002

if.then9:                                         ; preds = %if.end7
  %12 = load ptr, ptr %namebuf.addr, align 8, !dbg !5003
  %13 = load ptr, ptr %ret, align 8, !dbg !5005
  %call10 = call ptr @strncpy(ptr noundef %12, ptr noundef %13, i64 noundef 511) #13, !dbg !5006
  %14 = load ptr, ptr %namebuf.addr, align 8, !dbg !5007
  store ptr %14, ptr %ret, align 8, !dbg !5008
  br label %if.end11, !dbg !5009

if.end11:                                         ; preds = %if.then9, %if.end7
  br label %do.body12, !dbg !5010

do.body12:                                        ; preds = %if.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5011, !srcloc !5013
  %call13 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5014
  %lnot = xor i1 %call13, true, !dbg !5014
  %lnot14 = xor i1 %lnot, true, !dbg !5014
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5014
  %conv = sext i32 %lnot.ext to i64, !dbg !5014
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5014
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5014
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !5011

if.then16:                                        ; preds = %do.body12
  br label %do.body17, !dbg !5014

do.body17:                                        ; preds = %if.then16
  %15 = call i64 @llvm.read_register.i64(metadata !4168), !dbg !5016
  %16 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %15) #12, !dbg !5016, !srcloc !5018
  call void @llvm.write_register.i64(metadata !4168, i64 %16), !dbg !5016
  br label %do.cond18, !dbg !5016

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5016

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !5016

if.end20:                                         ; preds = %do.end19, %do.body12
  br label %do.cond21, !dbg !5011

do.cond21:                                        ; preds = %if.end20
  br label %do.end22, !dbg !5011

do.end22:                                         ; preds = %do.cond21
  %17 = load ptr, ptr %ret, align 8, !dbg !5019
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #12, !dbg !5020
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5020
  ret ptr %17, !dbg !5021
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !5022 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5025, metadata !DIExpression()), !dbg !5032
  br label %do.body, !dbg !5033

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !5034
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5026, metadata !DIExpression()), !dbg !5034
  %0 = load i32, ptr %val.addr, align 4, !dbg !5034
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5034
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5034

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5034
  %cmp = icmp eq i32 %2, 1, !dbg !5034
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5034

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5034
  %cmp1 = icmp eq i32 %3, -1, !dbg !5034
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5034

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5034
  br label %cond.end, !dbg !5034

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5034

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5034
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5034
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5035
  %cmp2 = icmp eq i32 %5, 1, !dbg !5035
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5034

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5036, !srcloc !5038
  br label %if.end8, !dbg !5035

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5039
  %cmp3 = icmp eq i32 %6, -1, !dbg !5039
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5035

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5040, !srcloc !5042
  br label %if.end, !dbg !5039

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5039

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !5043
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5028, metadata !DIExpression()), !dbg !5043
  %7 = load i32, ptr %val.addr, align 4, !dbg !5043
  %conv = sext i32 %7 to i64, !dbg !5043
  %and = and i64 %conv, 4294967295, !dbg !5043
  %conv7 = trunc i64 %and to i32, !dbg !5043
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5043
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5043
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5043, !srcloc !5044
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !5039
  br label %do.cond, !dbg !5043

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5043

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !5033
  br label %do.end10, !dbg !5034

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5045
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5046 dso_local ptr @__module_address(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_kallsyms_symbol(ptr noundef %mod, i64 noundef %addr, ptr noundef %size, ptr noundef %offset) #0 align 16 !dbg !5049 {
entry:
  %retval = alloca ptr, align 8
  %mod.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %best = alloca i32, align 4
  %nextval = alloca i64, align 8
  %bestval = alloca i64, align 8
  %kallsyms = alloca ptr, align 8
  %__UNIQUE_ID_rcu305 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %mod_mem = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %thisval = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5053, metadata !DIExpression()), !dbg !5070
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5054, metadata !DIExpression()), !dbg !5071
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5055, metadata !DIExpression()), !dbg !5072
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5056, metadata !DIExpression()), !dbg !5073
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !5074
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5057, metadata !DIExpression()), !dbg !5075
  call void @llvm.lifetime.start.p0(i64 4, ptr %best) #12, !dbg !5074
  call void @llvm.dbg.declare(metadata ptr %best, metadata !5058, metadata !DIExpression()), !dbg !5076
  store i32 0, ptr %best, align 4, !dbg !5076
  call void @llvm.lifetime.start.p0(i64 8, ptr %nextval) #12, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %nextval, metadata !5059, metadata !DIExpression()), !dbg !5078
  call void @llvm.lifetime.start.p0(i64 8, ptr %bestval) #12, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %bestval, metadata !5060, metadata !DIExpression()), !dbg !5079
  call void @llvm.lifetime.start.p0(i64 8, ptr %kallsyms) #12, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %kallsyms, metadata !5061, metadata !DIExpression()), !dbg !5081
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu305) #12, !dbg !5082
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu305, metadata !5062, metadata !DIExpression()), !dbg !5082
  br label %do.body, !dbg !5083

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5085

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5085

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5083
  %kallsyms1 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 28, !dbg !5083
  %1 = load volatile ptr, ptr %kallsyms1, align 8, !dbg !5083
  store ptr %1, ptr %tmp, align 8, !dbg !5085
  %2 = load ptr, ptr %tmp, align 8, !dbg !5083
  store ptr %2, ptr %__UNIQUE_ID_rcu305, align 8, !dbg !5082
  br label %do.body2, !dbg !5082

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !5087

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5087

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %__UNIQUE_ID_rcu305, align 8, !dbg !5082
  store ptr %3, ptr %tmp5, align 8, !dbg !5087
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu305) #12, !dbg !5089
  %4 = load ptr, ptr %tmp5, align 8, !dbg !5082
  store ptr %4, ptr %kallsyms, align 8, !dbg !5081
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod_mem) #12, !dbg !5090
  call void @llvm.dbg.declare(metadata ptr %mod_mem, metadata !5064, metadata !DIExpression()), !dbg !5091
  %5 = load i64, ptr %addr.addr, align 8, !dbg !5092
  %6 = load ptr, ptr %mod.addr, align 8, !dbg !5094
  %call = call zeroext i1 @within_module_init(i64 noundef %5, ptr noundef %6) #13, !dbg !5095
  br i1 %call, label %if.then, label %if.else, !dbg !5096

if.then:                                          ; preds = %do.end4
  %7 = load ptr, ptr %mod.addr, align 8, !dbg !5097
  %mem = getelementptr inbounds %struct.module, ptr %7, i32 0, i32 22, !dbg !5098
  %arrayidx = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 4, !dbg !5097
  store ptr %arrayidx, ptr %mod_mem, align 8, !dbg !5099
  br label %if.end, !dbg !5100

if.else:                                          ; preds = %do.end4
  %8 = load ptr, ptr %mod.addr, align 8, !dbg !5101
  %mem6 = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 22, !dbg !5102
  %arrayidx7 = getelementptr [7 x %struct.module_memory], ptr %mem6, i64 0, i64 0, !dbg !5101
  store ptr %arrayidx7, ptr %mod_mem, align 8, !dbg !5103
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %mod_mem, align 8, !dbg !5104
  %base = getelementptr inbounds %struct.module_memory, ptr %9, i32 0, i32 0, !dbg !5105
  %10 = load ptr, ptr %base, align 8, !dbg !5105
  %11 = ptrtoint ptr %10 to i64, !dbg !5106
  %12 = load ptr, ptr %mod_mem, align 8, !dbg !5107
  %size8 = getelementptr inbounds %struct.module_memory, ptr %12, i32 0, i32 1, !dbg !5108
  %13 = load i32, ptr %size8, align 8, !dbg !5108
  %conv = zext i32 %13 to i64, !dbg !5107
  %add = add i64 %11, %conv, !dbg !5109
  store i64 %add, ptr %nextval, align 8, !dbg !5110
  %14 = load ptr, ptr %kallsyms, align 8, !dbg !5111
  %symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %14, i32 0, i32 0, !dbg !5112
  %15 = load ptr, ptr %symtab, align 8, !dbg !5112
  %16 = load i32, ptr %best, align 4, !dbg !5113
  %idxprom = zext i32 %16 to i64, !dbg !5111
  %arrayidx9 = getelementptr %struct.elf64_sym, ptr %15, i64 %idxprom, !dbg !5111
  %call10 = call i64 @kallsyms_symbol_value(ptr noundef %arrayidx9) #13, !dbg !5114
  store i64 %call10, ptr %bestval, align 8, !dbg !5115
  store i32 1, ptr %i, align 4, !dbg !5116
  br label %for.cond, !dbg !5117

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, ptr %i, align 4, !dbg !5118
  %18 = load ptr, ptr %kallsyms, align 8, !dbg !5119
  %num_symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %18, i32 0, i32 1, !dbg !5120
  %19 = load i32, ptr %num_symtab, align 8, !dbg !5120
  %cmp = icmp ult i32 %17, %19, !dbg !5121
  br i1 %cmp, label %for.body, label %for.end, !dbg !5122

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !5123
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !5065, metadata !DIExpression()), !dbg !5124
  %20 = load ptr, ptr %kallsyms, align 8, !dbg !5125
  %symtab12 = getelementptr inbounds %struct.mod_kallsyms, ptr %20, i32 0, i32 0, !dbg !5126
  %21 = load ptr, ptr %symtab12, align 8, !dbg !5126
  %22 = load i32, ptr %i, align 4, !dbg !5127
  %idxprom13 = zext i32 %22 to i64, !dbg !5125
  %arrayidx14 = getelementptr %struct.elf64_sym, ptr %21, i64 %idxprom13, !dbg !5125
  store ptr %arrayidx14, ptr %sym, align 8, !dbg !5124
  call void @llvm.lifetime.start.p0(i64 8, ptr %thisval) #12, !dbg !5128
  call void @llvm.dbg.declare(metadata ptr %thisval, metadata !5069, metadata !DIExpression()), !dbg !5129
  %23 = load ptr, ptr %sym, align 8, !dbg !5130
  %call15 = call i64 @kallsyms_symbol_value(ptr noundef %23) #13, !dbg !5131
  store i64 %call15, ptr %thisval, align 8, !dbg !5129
  %24 = load ptr, ptr %sym, align 8, !dbg !5132
  %st_shndx = getelementptr inbounds %struct.elf64_sym, ptr %24, i32 0, i32 3, !dbg !5134
  %25 = load i16, ptr %st_shndx, align 2, !dbg !5134
  %conv16 = zext i16 %25 to i32, !dbg !5132
  %cmp17 = icmp eq i32 %conv16, 0, !dbg !5135
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5136

if.then19:                                        ; preds = %for.body
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5137

if.end20:                                         ; preds = %for.body
  %26 = load ptr, ptr %kallsyms, align 8, !dbg !5138
  %27 = load i32, ptr %i, align 4, !dbg !5140
  %call21 = call ptr @kallsyms_symbol_name(ptr noundef %26, i32 noundef %27) #13, !dbg !5141
  %28 = load i8, ptr %call21, align 1, !dbg !5142
  %conv22 = zext i8 %28 to i32, !dbg !5142
  %cmp23 = icmp eq i32 %conv22, 0, !dbg !5143
  br i1 %cmp23, label %if.then27, label %lor.lhs.false, !dbg !5144

lor.lhs.false:                                    ; preds = %if.end20
  %29 = load ptr, ptr %kallsyms, align 8, !dbg !5145
  %30 = load i32, ptr %i, align 4, !dbg !5146
  %call25 = call ptr @kallsyms_symbol_name(ptr noundef %29, i32 noundef %30) #13, !dbg !5147
  %call26 = call i32 @is_mapping_symbol(ptr noundef %call25) #13, !dbg !5148
  %tobool = icmp ne i32 %call26, 0, !dbg !5148
  br i1 %tobool, label %if.then27, label %if.end28, !dbg !5149

if.then27:                                        ; preds = %lor.lhs.false, %if.end20
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5150

if.end28:                                         ; preds = %lor.lhs.false
  %31 = load i64, ptr %thisval, align 8, !dbg !5151
  %32 = load i64, ptr %addr.addr, align 8, !dbg !5153
  %cmp29 = icmp ule i64 %31, %32, !dbg !5154
  br i1 %cmp29, label %land.lhs.true, label %if.end34, !dbg !5155

land.lhs.true:                                    ; preds = %if.end28
  %33 = load i64, ptr %thisval, align 8, !dbg !5156
  %34 = load i64, ptr %bestval, align 8, !dbg !5157
  %cmp31 = icmp ugt i64 %33, %34, !dbg !5158
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5159

if.then33:                                        ; preds = %land.lhs.true
  %35 = load i32, ptr %i, align 4, !dbg !5160
  store i32 %35, ptr %best, align 4, !dbg !5162
  %36 = load i64, ptr %thisval, align 8, !dbg !5163
  store i64 %36, ptr %bestval, align 8, !dbg !5164
  br label %if.end34, !dbg !5165

if.end34:                                         ; preds = %if.then33, %land.lhs.true, %if.end28
  %37 = load i64, ptr %thisval, align 8, !dbg !5166
  %38 = load i64, ptr %addr.addr, align 8, !dbg !5168
  %cmp35 = icmp ugt i64 %37, %38, !dbg !5169
  br i1 %cmp35, label %land.lhs.true37, label %if.end41, !dbg !5170

land.lhs.true37:                                  ; preds = %if.end34
  %39 = load i64, ptr %thisval, align 8, !dbg !5171
  %40 = load i64, ptr %nextval, align 8, !dbg !5172
  %cmp38 = icmp ult i64 %39, %40, !dbg !5173
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5174

if.then40:                                        ; preds = %land.lhs.true37
  %41 = load i64, ptr %thisval, align 8, !dbg !5175
  store i64 %41, ptr %nextval, align 8, !dbg !5176
  br label %if.end41, !dbg !5177

if.end41:                                         ; preds = %if.then40, %land.lhs.true37, %if.end34
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5178
  br label %cleanup, !dbg !5178

cleanup:                                          ; preds = %if.end41, %if.then27, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %thisval) #12, !dbg !5178
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !5178
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5179

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %42 = load i32, ptr %i, align 4, !dbg !5180
  %inc = add i32 %42, 1, !dbg !5180
  store i32 %inc, ptr %i, align 4, !dbg !5180
  br label %for.cond, !dbg !5181, !llvm.loop !5182

for.end:                                          ; preds = %for.cond
  %43 = load i32, ptr %best, align 4, !dbg !5184
  %tobool43 = icmp ne i32 %43, 0, !dbg !5184
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !5186

if.then44:                                        ; preds = %for.end
  store ptr null, ptr %retval, align 8, !dbg !5187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !5187

if.end45:                                         ; preds = %for.end
  %44 = load ptr, ptr %size.addr, align 8, !dbg !5188
  %tobool46 = icmp ne ptr %44, null, !dbg !5188
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !5190

if.then47:                                        ; preds = %if.end45
  %45 = load i64, ptr %nextval, align 8, !dbg !5191
  %46 = load i64, ptr %bestval, align 8, !dbg !5192
  %sub = sub i64 %45, %46, !dbg !5193
  %47 = load ptr, ptr %size.addr, align 8, !dbg !5194
  store i64 %sub, ptr %47, align 8, !dbg !5195
  br label %if.end48, !dbg !5196

if.end48:                                         ; preds = %if.then47, %if.end45
  %48 = load ptr, ptr %offset.addr, align 8, !dbg !5197
  %tobool49 = icmp ne ptr %48, null, !dbg !5197
  br i1 %tobool49, label %if.then50, label %if.end52, !dbg !5199

if.then50:                                        ; preds = %if.end48
  %49 = load i64, ptr %addr.addr, align 8, !dbg !5200
  %50 = load i64, ptr %bestval, align 8, !dbg !5201
  %sub51 = sub i64 %49, %50, !dbg !5202
  %51 = load ptr, ptr %offset.addr, align 8, !dbg !5203
  store i64 %sub51, ptr %51, align 8, !dbg !5204
  br label %if.end52, !dbg !5205

if.end52:                                         ; preds = %if.then50, %if.end48
  %52 = load ptr, ptr %kallsyms, align 8, !dbg !5206
  %53 = load i32, ptr %best, align 4, !dbg !5207
  %call53 = call ptr @kallsyms_symbol_name(ptr noundef %52, i32 noundef %53) #13, !dbg !5208
  store ptr %call53, ptr %retval, align 8, !dbg !5209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !5209

cleanup54:                                        ; preds = %if.end52, %if.then44
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod_mem) #12, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 8, ptr %kallsyms) #12, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 8, ptr %bestval) #12, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 8, ptr %nextval) #12, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 4, ptr %best) #12, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !5210
  %54 = load ptr, ptr %retval, align 8, !dbg !5210
  ret ptr %54, !dbg !5210

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5211 dso_local ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !5214 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !5218
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5216, metadata !DIExpression()), !dbg !5218
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5218, !srcloc !5219
  %1 = icmp ult i8 %0, 2, !dbg !5218
  call void @llvm.assume(i1 %1), !dbg !5218
  store i8 %0, ptr %c, align 1, !dbg !5218
  %2 = load i8, ptr %c, align 1, !dbg !5218, !range !5220, !noundef !529
  %tobool = trunc i8 %2 to i1, !dbg !5218
  %frombool = zext i1 %tobool to i8, !dbg !5218
  store i8 %frombool, ptr %tmp, align 1, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !5221
  %3 = load i8, ptr %tmp, align 1, !dbg !5218, !range !5220, !noundef !529
  %tobool1 = trunc i8 %3 to i1, !dbg !5218
  ret i1 %tobool1, !dbg !5222
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lookup_module_symbol_name(i64 noundef %addr, ptr noundef %symname) #0 align 16 !dbg !4059 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %symname.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr23 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4063, metadata !DIExpression()), !dbg !5223
  store ptr %symname, ptr %symname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !4064, metadata !DIExpression()), !dbg !5224
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #12, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !4065, metadata !DIExpression()), !dbg !5226
  br label %do.body, !dbg !5227

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !5228
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5228, !srcloc !5230
  br label %do.cond, !dbg !5228

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5228

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4066, metadata !DIExpression()), !dbg !5231
  br label %do.body1, !dbg !5232

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !5234

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5234

do.end3:                                          ; preds = %do.cond2
  %0 = load volatile ptr, ptr @modules, align 8, !dbg !5232
  store ptr %0, ptr %tmp, align 8, !dbg !5234
  %1 = load ptr, ptr %tmp, align 8, !dbg !5232
  store ptr %1, ptr %__mptr, align 8, !dbg !5231
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5231
  %add.ptr = getelementptr i8, ptr %2, i64 -8, !dbg !5231
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !5236
  %3 = load ptr, ptr %tmp4, align 8, !dbg !5231
  store ptr %3, ptr %mod, align 8, !dbg !5236
  br label %for.cond, !dbg !5236

for.cond:                                         ; preds = %do.end26, %do.end3
  %4 = load ptr, ptr %mod, align 8, !dbg !5237
  %list = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 1, !dbg !5237
  %cmp = icmp ne ptr %list, @modules, !dbg !5237
  br i1 %cmp, label %for.body, label %for.end, !dbg !5236

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %mod, align 8, !dbg !5238
  %state = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 0, !dbg !5240
  %6 = load i32, ptr %state, align 64, !dbg !5240
  %cmp5 = icmp eq i32 %6, 3, !dbg !5241
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5242

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5243

if.end:                                           ; preds = %for.body
  %7 = load i64, ptr %addr.addr, align 8, !dbg !5244
  %8 = load ptr, ptr %mod, align 8, !dbg !5245
  %call = call zeroext i1 @within_module(i64 noundef %7, ptr noundef %8) #13, !dbg !5246
  br i1 %call, label %if.then6, label %if.end22, !dbg !5247

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !5248
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !4069, metadata !DIExpression()), !dbg !5249
  %9 = load ptr, ptr %mod, align 8, !dbg !5250
  %10 = load i64, ptr %addr.addr, align 8, !dbg !5251
  %call7 = call ptr @find_kallsyms_symbol(ptr noundef %9, i64 noundef %10, ptr noundef null, ptr noundef null) #13, !dbg !5252
  store ptr %call7, ptr %sym, align 8, !dbg !5253
  %11 = load ptr, ptr %sym, align 8, !dbg !5254
  %tobool = icmp ne ptr %11, null, !dbg !5254
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !5256

if.then8:                                         ; preds = %if.then6
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5257

if.end9:                                          ; preds = %if.then6
  %12 = load ptr, ptr %symname.addr, align 8, !dbg !5258
  %13 = load ptr, ptr %sym, align 8, !dbg !5259
  %call10 = call i64 @strscpy(ptr noundef %12, ptr noundef %13, i64 noundef 512) #13, !dbg !5260
  br label %do.body11, !dbg !5261

do.body11:                                        ; preds = %if.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5262, !srcloc !5264
  %call12 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5265
  %lnot = xor i1 %call12, true, !dbg !5265
  %lnot13 = xor i1 %lnot, true, !dbg !5265
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !5265
  %conv = sext i32 %lnot.ext to i64, !dbg !5265
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5265
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5265
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !5262

if.then15:                                        ; preds = %do.body11
  br label %do.body16, !dbg !5265

do.body16:                                        ; preds = %if.then15
  %14 = call i64 @llvm.read_register.i64(metadata !4168), !dbg !5267
  %15 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %14) #12, !dbg !5267, !srcloc !5269
  call void @llvm.write_register.i64(metadata !4168, i64 %15), !dbg !5267
  br label %do.cond17, !dbg !5267

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5267

do.end18:                                         ; preds = %do.cond17
  br label %if.end19, !dbg !5267

if.end19:                                         ; preds = %do.end18, %do.body11
  br label %do.cond20, !dbg !5262

do.cond20:                                        ; preds = %if.end19
  br label %do.end21, !dbg !5262

do.end21:                                         ; preds = %do.cond20
  store i32 0, ptr %retval, align 4, !dbg !5270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5270

cleanup:                                          ; preds = %if.then8, %do.end21
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !5271
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup47 [
    i32 9, label %out
  ]

if.end22:                                         ; preds = %if.end
  br label %for.inc, !dbg !5272

for.inc:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr23) #12, !dbg !5273
  call void @llvm.dbg.declare(metadata ptr %__mptr23, metadata !4074, metadata !DIExpression()), !dbg !5273
  br label %do.body24, !dbg !5274

do.body24:                                        ; preds = %for.inc
  br label %do.cond25, !dbg !5276

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5276

do.end26:                                         ; preds = %do.cond25
  %16 = load ptr, ptr %mod, align 8, !dbg !5274
  %list28 = getelementptr inbounds %struct.module, ptr %16, i32 0, i32 1, !dbg !5274
  %next = getelementptr inbounds %struct.list_head, ptr %list28, i32 0, i32 0, !dbg !5274
  %17 = load volatile ptr, ptr %next, align 8, !dbg !5274
  store ptr %17, ptr %tmp27, align 8, !dbg !5276
  %18 = load ptr, ptr %tmp27, align 8, !dbg !5274
  store ptr %18, ptr %__mptr23, align 8, !dbg !5273
  %19 = load ptr, ptr %__mptr23, align 8, !dbg !5273
  %add.ptr30 = getelementptr i8, ptr %19, i64 -8, !dbg !5273
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr23) #12, !dbg !5237
  %20 = load ptr, ptr %tmp29, align 8, !dbg !5273
  store ptr %20, ptr %mod, align 8, !dbg !5237
  br label %for.cond, !dbg !5237, !llvm.loop !5278

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !5279

out:                                              ; preds = %for.end, %cleanup
  call void @llvm.dbg.label(metadata !4076), !dbg !5280
  br label %do.body31, !dbg !5281

do.body31:                                        ; preds = %out
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5282, !srcloc !5284
  %call32 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5285
  %lnot33 = xor i1 %call32, true, !dbg !5285
  %lnot35 = xor i1 %lnot33, true, !dbg !5285
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !5285
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !5285
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !5285
  %tobool39 = icmp ne i64 %expval38, 0, !dbg !5285
  br i1 %tobool39, label %if.then40, label %if.end44, !dbg !5282

if.then40:                                        ; preds = %do.body31
  br label %do.body41, !dbg !5285

do.body41:                                        ; preds = %if.then40
  %21 = call i64 @llvm.read_register.i64(metadata !4168), !dbg !5287
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !5287, !srcloc !5289
  call void @llvm.write_register.i64(metadata !4168, i64 %22), !dbg !5287
  br label %do.cond42, !dbg !5287

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !5287

do.end43:                                         ; preds = %do.cond42
  br label %if.end44, !dbg !5287

if.end44:                                         ; preds = %do.end43, %do.body31
  br label %do.cond45, !dbg !5282

do.cond45:                                        ; preds = %if.end44
  br label %do.end46, !dbg !5282

do.end46:                                         ; preds = %do.cond45
  store i32 -34, ptr %retval, align 4, !dbg !5290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !5290

cleanup47:                                        ; preds = %do.end46, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #12, !dbg !5291
  %23 = load i32, ptr %retval, align 4, !dbg !5291
  ret i32 %23, !dbg !5291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module(i64 noundef %addr, ptr noundef %mod) #4 align 16 !dbg !5292 {
entry:
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5298, metadata !DIExpression()), !dbg !5300
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5299, metadata !DIExpression()), !dbg !5301
  %0 = load i64, ptr %addr.addr, align 8, !dbg !5302
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !5303
  %call = call zeroext i1 @within_module_init(i64 noundef %0, ptr noundef %1) #13, !dbg !5304
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !5305

lor.rhs:                                          ; preds = %entry
  %2 = load i64, ptr %addr.addr, align 8, !dbg !5306
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !5307
  %call1 = call zeroext i1 @within_module_core(i64 noundef %2, ptr noundef %3) #13, !dbg !5308
  br label %lor.end, !dbg !5305

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %4, !dbg !5309
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @module_get_kallsym(i32 noundef %symnum, ptr noundef %value, ptr noundef %type, ptr noundef %name, ptr noundef %module_name, ptr noundef %exported) #0 align 16 !dbg !4081 {
entry:
  %retval = alloca i32, align 4
  %symnum.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %module_name.addr = alloca ptr, align 8
  %exported.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %kallsyms = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu314 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %__mptr36 = alloca ptr, align 8
  %tmp40 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  store i32 %symnum, ptr %symnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %symnum.addr, metadata !4085, metadata !DIExpression()), !dbg !5310
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4086, metadata !DIExpression()), !dbg !5311
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4087, metadata !DIExpression()), !dbg !5312
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4088, metadata !DIExpression()), !dbg !5313
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !4089, metadata !DIExpression()), !dbg !5314
  store ptr %exported, ptr %exported.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %exported.addr, metadata !4090, metadata !DIExpression()), !dbg !5315
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #12, !dbg !5316
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !4091, metadata !DIExpression()), !dbg !5317
  br label %do.body, !dbg !5318

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !5319
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5319, !srcloc !5321
  br label %do.cond, !dbg !5319

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5319

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !5322
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4092, metadata !DIExpression()), !dbg !5322
  br label %do.body1, !dbg !5323

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !5325

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5325

do.end3:                                          ; preds = %do.cond2
  %0 = load volatile ptr, ptr @modules, align 8, !dbg !5323
  store ptr %0, ptr %tmp, align 8, !dbg !5325
  %1 = load ptr, ptr %tmp, align 8, !dbg !5323
  store ptr %1, ptr %__mptr, align 8, !dbg !5322
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5322
  %add.ptr = getelementptr i8, ptr %2, i64 -8, !dbg !5322
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !5327
  %3 = load ptr, ptr %tmp4, align 8, !dbg !5322
  store ptr %3, ptr %mod, align 8, !dbg !5327
  br label %for.cond, !dbg !5327

for.cond:                                         ; preds = %do.end39, %do.end3
  %4 = load ptr, ptr %mod, align 8, !dbg !5328
  %list = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 1, !dbg !5328
  %cmp = icmp ne ptr %list, @modules, !dbg !5328
  br i1 %cmp, label %for.body, label %for.end, !dbg !5327

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %kallsyms) #12, !dbg !5329
  call void @llvm.dbg.declare(metadata ptr %kallsyms, metadata !4095, metadata !DIExpression()), !dbg !5330
  %5 = load ptr, ptr %mod, align 8, !dbg !5331
  %state = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 0, !dbg !5333
  %6 = load i32, ptr %state, align 64, !dbg !5333
  %cmp5 = icmp eq i32 %6, 3, !dbg !5334
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5335

if.then:                                          ; preds = %for.body
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5336

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu314) #12, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu314, metadata !4098, metadata !DIExpression()), !dbg !5337
  br label %do.body6, !dbg !5338

do.body6:                                         ; preds = %if.end
  br label %do.cond7, !dbg !5340

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5340

do.end8:                                          ; preds = %do.cond7
  %7 = load ptr, ptr %mod, align 8, !dbg !5338
  %kallsyms10 = getelementptr inbounds %struct.module, ptr %7, i32 0, i32 28, !dbg !5338
  %8 = load volatile ptr, ptr %kallsyms10, align 8, !dbg !5338
  store ptr %8, ptr %tmp9, align 8, !dbg !5340
  %9 = load ptr, ptr %tmp9, align 8, !dbg !5338
  store ptr %9, ptr %__UNIQUE_ID_rcu314, align 8, !dbg !5337
  br label %do.body11, !dbg !5337

do.body11:                                        ; preds = %do.end8
  br label %do.cond12, !dbg !5342

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5342

do.end13:                                         ; preds = %do.cond12
  %10 = load ptr, ptr %__UNIQUE_ID_rcu314, align 8, !dbg !5337
  store ptr %10, ptr %tmp14, align 8, !dbg !5342
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu314) #12, !dbg !5344
  %11 = load ptr, ptr %tmp14, align 8, !dbg !5337
  store ptr %11, ptr %kallsyms, align 8, !dbg !5345
  %12 = load i32, ptr %symnum.addr, align 4, !dbg !5346
  %13 = load ptr, ptr %kallsyms, align 8, !dbg !5347
  %num_symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %13, i32 0, i32 1, !dbg !5348
  %14 = load i32, ptr %num_symtab, align 8, !dbg !5348
  %cmp15 = icmp ult i32 %12, %14, !dbg !5349
  br i1 %cmp15, label %if.then16, label %if.end34, !dbg !5350

if.then16:                                        ; preds = %do.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !5351
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !4100, metadata !DIExpression()), !dbg !5352
  %15 = load ptr, ptr %kallsyms, align 8, !dbg !5353
  %symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %15, i32 0, i32 0, !dbg !5354
  %16 = load ptr, ptr %symtab, align 8, !dbg !5354
  %17 = load i32, ptr %symnum.addr, align 4, !dbg !5355
  %idxprom = zext i32 %17 to i64, !dbg !5353
  %arrayidx = getelementptr %struct.elf64_sym, ptr %16, i64 %idxprom, !dbg !5353
  store ptr %arrayidx, ptr %sym, align 8, !dbg !5352
  %18 = load ptr, ptr %sym, align 8, !dbg !5356
  %call = call i64 @kallsyms_symbol_value(ptr noundef %18) #13, !dbg !5357
  %19 = load ptr, ptr %value.addr, align 8, !dbg !5358
  store i64 %call, ptr %19, align 8, !dbg !5359
  %20 = load ptr, ptr %kallsyms, align 8, !dbg !5360
  %typetab = getelementptr inbounds %struct.mod_kallsyms, ptr %20, i32 0, i32 3, !dbg !5361
  %21 = load ptr, ptr %typetab, align 8, !dbg !5361
  %22 = load i32, ptr %symnum.addr, align 4, !dbg !5362
  %idxprom17 = zext i32 %22 to i64, !dbg !5360
  %arrayidx18 = getelementptr i8, ptr %21, i64 %idxprom17, !dbg !5360
  %23 = load i8, ptr %arrayidx18, align 1, !dbg !5360
  %24 = load ptr, ptr %type.addr, align 8, !dbg !5363
  store i8 %23, ptr %24, align 1, !dbg !5364
  %25 = load ptr, ptr %name.addr, align 8, !dbg !5365
  %26 = load ptr, ptr %kallsyms, align 8, !dbg !5366
  %27 = load i32, ptr %symnum.addr, align 4, !dbg !5367
  %call19 = call ptr @kallsyms_symbol_name(ptr noundef %26, i32 noundef %27) #13, !dbg !5368
  %call20 = call i64 @strscpy(ptr noundef %25, ptr noundef %call19, i64 noundef 512) #13, !dbg !5369
  %28 = load ptr, ptr %module_name.addr, align 8, !dbg !5370
  %29 = load ptr, ptr %mod, align 8, !dbg !5371
  %name21 = getelementptr inbounds %struct.module, ptr %29, i32 0, i32 2, !dbg !5372
  %arraydecay = getelementptr inbounds [56 x i8], ptr %name21, i64 0, i64 0, !dbg !5371
  %call22 = call i64 @strscpy(ptr noundef %28, ptr noundef %arraydecay, i64 noundef 56) #13, !dbg !5373
  %30 = load ptr, ptr %name.addr, align 8, !dbg !5374
  %31 = load ptr, ptr %value.addr, align 8, !dbg !5375
  %32 = load i64, ptr %31, align 8, !dbg !5376
  %33 = load ptr, ptr %mod, align 8, !dbg !5377
  %call23 = call i32 @is_exported(ptr noundef %30, i64 noundef %32, ptr noundef %33) #13, !dbg !5378
  %34 = load ptr, ptr %exported.addr, align 8, !dbg !5379
  store i32 %call23, ptr %34, align 4, !dbg !5380
  br label %do.body24, !dbg !5381

do.body24:                                        ; preds = %if.then16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5382, !srcloc !5384
  %call25 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5385
  %lnot = xor i1 %call25, true, !dbg !5385
  %lnot26 = xor i1 %lnot, true, !dbg !5385
  %lnot.ext = zext i1 %lnot26 to i32, !dbg !5385
  %conv = sext i32 %lnot.ext to i64, !dbg !5385
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5385
  %tobool = icmp ne i64 %expval, 0, !dbg !5385
  br i1 %tobool, label %if.then27, label %if.end31, !dbg !5382

if.then27:                                        ; preds = %do.body24
  br label %do.body28, !dbg !5385

do.body28:                                        ; preds = %if.then27
  %35 = call i64 @llvm.read_register.i64(metadata !4168), !dbg !5387
  %36 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %35) #12, !dbg !5387, !srcloc !5389
  call void @llvm.write_register.i64(metadata !4168, i64 %36), !dbg !5387
  br label %do.cond29, !dbg !5387

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !5387

do.end30:                                         ; preds = %do.cond29
  br label %if.end31, !dbg !5387

if.end31:                                         ; preds = %do.end30, %do.body24
  br label %do.cond32, !dbg !5382

do.cond32:                                        ; preds = %if.end31
  br label %do.end33, !dbg !5382

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %retval, align 4, !dbg !5390
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !5391
  br label %cleanup

if.end34:                                         ; preds = %do.end13
  %37 = load ptr, ptr %kallsyms, align 8, !dbg !5392
  %num_symtab35 = getelementptr inbounds %struct.mod_kallsyms, ptr %37, i32 0, i32 1, !dbg !5393
  %38 = load i32, ptr %num_symtab35, align 8, !dbg !5393
  %39 = load i32, ptr %symnum.addr, align 4, !dbg !5394
  %sub = sub i32 %39, %38, !dbg !5394
  store i32 %sub, ptr %symnum.addr, align 4, !dbg !5394
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5395
  br label %cleanup, !dbg !5395

cleanup:                                          ; preds = %if.end34, %do.end33, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kallsyms) #12, !dbg !5395
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup60 [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5396

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr36) #12, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %__mptr36, metadata !4105, metadata !DIExpression()), !dbg !5397
  br label %do.body37, !dbg !5398

do.body37:                                        ; preds = %for.inc
  br label %do.cond38, !dbg !5400

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5400

do.end39:                                         ; preds = %do.cond38
  %40 = load ptr, ptr %mod, align 8, !dbg !5398
  %list41 = getelementptr inbounds %struct.module, ptr %40, i32 0, i32 1, !dbg !5398
  %next = getelementptr inbounds %struct.list_head, ptr %list41, i32 0, i32 0, !dbg !5398
  %41 = load volatile ptr, ptr %next, align 8, !dbg !5398
  store ptr %41, ptr %tmp40, align 8, !dbg !5400
  %42 = load ptr, ptr %tmp40, align 8, !dbg !5398
  store ptr %42, ptr %__mptr36, align 8, !dbg !5397
  %43 = load ptr, ptr %__mptr36, align 8, !dbg !5397
  %add.ptr43 = getelementptr i8, ptr %43, i64 -8, !dbg !5397
  store ptr %add.ptr43, ptr %tmp42, align 8, !dbg !5397
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr36) #12, !dbg !5328
  %44 = load ptr, ptr %tmp42, align 8, !dbg !5397
  store ptr %44, ptr %mod, align 8, !dbg !5328
  br label %for.cond, !dbg !5328, !llvm.loop !5402

for.end:                                          ; preds = %for.cond
  br label %do.body44, !dbg !5404

do.body44:                                        ; preds = %for.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5405, !srcloc !5407
  %call45 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5408
  %lnot46 = xor i1 %call45, true, !dbg !5408
  %lnot48 = xor i1 %lnot46, true, !dbg !5408
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !5408
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !5408
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !5408
  %tobool52 = icmp ne i64 %expval51, 0, !dbg !5408
  br i1 %tobool52, label %if.then53, label %if.end57, !dbg !5405

if.then53:                                        ; preds = %do.body44
  br label %do.body54, !dbg !5408

do.body54:                                        ; preds = %if.then53
  %45 = call i64 @llvm.read_register.i64(metadata !4168), !dbg !5410
  %46 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %45) #12, !dbg !5410, !srcloc !5412
  call void @llvm.write_register.i64(metadata !4168, i64 %46), !dbg !5410
  br label %do.cond55, !dbg !5410

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !5410

do.end56:                                         ; preds = %do.cond55
  br label %if.end57, !dbg !5410

if.end57:                                         ; preds = %do.end56, %do.body44
  br label %do.cond58, !dbg !5405

do.cond58:                                        ; preds = %if.end57
  br label %do.end59, !dbg !5405

do.end59:                                         ; preds = %do.cond58
  store i32 -34, ptr %retval, align 4, !dbg !5413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !5413

cleanup60:                                        ; preds = %do.end59, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #12, !dbg !5414
  %47 = load i32, ptr %retval, align 4, !dbg !5414
  ret i32 %47, !dbg !5414
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kallsyms_symbol_value(ptr noundef %sym) #4 align 16 !dbg !5415 {
entry:
  %sym.addr = alloca ptr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  %0 = load ptr, ptr %sym.addr, align 8, !dbg !5421
  %st_value = getelementptr inbounds %struct.elf64_sym, ptr %0, i32 0, i32 4, !dbg !5422
  %1 = load i64, ptr %st_value, align 8, !dbg !5422
  ret i64 %1, !dbg !5423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kallsyms_symbol_name(ptr noundef %kallsyms, i32 noundef %symnum) #0 align 16 !dbg !5424 {
entry:
  %kallsyms.addr = alloca ptr, align 8
  %symnum.addr = alloca i32, align 4
  store ptr %kallsyms, ptr %kallsyms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kallsyms.addr, metadata !5428, metadata !DIExpression()), !dbg !5430
  store i32 %symnum, ptr %symnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %symnum.addr, metadata !5429, metadata !DIExpression()), !dbg !5431
  %0 = load ptr, ptr %kallsyms.addr, align 8, !dbg !5432
  %strtab = getelementptr inbounds %struct.mod_kallsyms, ptr %0, i32 0, i32 2, !dbg !5433
  %1 = load ptr, ptr %strtab, align 8, !dbg !5433
  %2 = load ptr, ptr %kallsyms.addr, align 8, !dbg !5434
  %symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %2, i32 0, i32 0, !dbg !5435
  %3 = load ptr, ptr %symtab, align 8, !dbg !5435
  %4 = load i32, ptr %symnum.addr, align 4, !dbg !5436
  %idxprom = zext i32 %4 to i64, !dbg !5434
  %arrayidx = getelementptr %struct.elf64_sym, ptr %3, i64 %idxprom, !dbg !5434
  %st_name = getelementptr inbounds %struct.elf64_sym, ptr %arrayidx, i32 0, i32 0, !dbg !5437
  %5 = load i32, ptr %st_name, align 8, !dbg !5437
  %idx.ext = zext i32 %5 to i64, !dbg !5438
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !5438
  ret ptr %add.ptr, !dbg !5439
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_exported(ptr noundef %name, i64 noundef %value, ptr noundef %mod) #0 align 16 !dbg !5440 {
entry:
  %name.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %ks = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5444, metadata !DIExpression()), !dbg !5448
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5445, metadata !DIExpression()), !dbg !5449
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5446, metadata !DIExpression()), !dbg !5450
  call void @llvm.lifetime.start.p0(i64 8, ptr %ks) #12, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %ks, metadata !5447, metadata !DIExpression()), !dbg !5452
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5453
  %tobool = icmp ne ptr %0, null, !dbg !5453
  br i1 %tobool, label %if.else, label %if.then, !dbg !5455

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5456
  %call = call ptr @lookup_exported_symbol(ptr noundef %1, ptr noundef @__start___ksymtab, ptr noundef @__stop___ksymtab) #13, !dbg !5457
  store ptr %call, ptr %ks, align 8, !dbg !5458
  br label %if.end, !dbg !5459

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5460
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !5461
  %syms = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 8, !dbg !5462
  %4 = load ptr, ptr %syms, align 16, !dbg !5462
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !5463
  %syms1 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 8, !dbg !5464
  %6 = load ptr, ptr %syms1, align 16, !dbg !5464
  %7 = load ptr, ptr %mod.addr, align 8, !dbg !5465
  %num_syms = getelementptr inbounds %struct.module, ptr %7, i32 0, i32 10, !dbg !5466
  %8 = load i32, ptr %num_syms, align 32, !dbg !5466
  %idx.ext = zext i32 %8 to i64, !dbg !5467
  %add.ptr = getelementptr %struct.kernel_symbol, ptr %6, i64 %idx.ext, !dbg !5467
  %call2 = call ptr @lookup_exported_symbol(ptr noundef %2, ptr noundef %4, ptr noundef %add.ptr) #13, !dbg !5468
  store ptr %call2, ptr %ks, align 8, !dbg !5469
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %ks, align 8, !dbg !5470
  %tobool3 = icmp ne ptr %9, null, !dbg !5470
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !5471

land.rhs:                                         ; preds = %if.end
  %10 = load ptr, ptr %ks, align 8, !dbg !5472
  %call4 = call i64 @kernel_symbol_value(ptr noundef %10) #13, !dbg !5473
  %11 = load i64, ptr %value.addr, align 8, !dbg !5474
  %cmp = icmp eq i64 %call4, %11, !dbg !5475
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %12 = phi i1 [ false, %if.end ], [ %cmp, %land.rhs ], !dbg !5476
  %land.ext = zext i1 %12 to i32, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 8, ptr %ks) #12, !dbg !5477
  ret i32 %land.ext, !dbg !5478
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @module_kallsyms_lookup_name(ptr noundef %name) #0 align 16 !dbg !4111 {
entry:
  %name.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4115, metadata !DIExpression()), !dbg !5479
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4116, metadata !DIExpression()), !dbg !5481
  br label %do.body, !dbg !5482

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !5483
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5483, !srcloc !5485
  br label %do.cond, !dbg !5483

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5483

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5486
  %call = call i64 @__module_kallsyms_lookup_name(ptr noundef %0) #13, !dbg !5487
  store i64 %call, ptr %ret, align 8, !dbg !5488
  br label %do.body1, !dbg !5489

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5490, !srcloc !5492
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5493
  %lnot = xor i1 %call2, true, !dbg !5493
  %lnot3 = xor i1 %lnot, true, !dbg !5493
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5493
  %conv = sext i32 %lnot.ext to i64, !dbg !5493
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5493
  %tobool = icmp ne i64 %expval, 0, !dbg !5493
  br i1 %tobool, label %if.then, label %if.end, !dbg !5490

if.then:                                          ; preds = %do.body1
  br label %do.body4, !dbg !5493

do.body4:                                         ; preds = %if.then
  %1 = call i64 @llvm.read_register.i64(metadata !4168), !dbg !5495
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #12, !dbg !5495, !srcloc !5497
  call void @llvm.write_register.i64(metadata !4168, i64 %2), !dbg !5495
  br label %do.cond5, !dbg !5495

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5495

do.end6:                                          ; preds = %do.cond5
  br label %if.end, !dbg !5495

if.end:                                           ; preds = %do.end6, %do.body1
  br label %do.cond7, !dbg !5490

do.cond7:                                         ; preds = %if.end
  br label %do.end8, !dbg !5490

do.end8:                                          ; preds = %do.cond7
  %3 = load i64, ptr %ret, align 8, !dbg !5498
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5499
  ret i64 %3, !dbg !5500
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__module_kallsyms_lookup_name(ptr noundef %name) #0 align 16 !dbg !5501 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %colon = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %ret = alloca i64, align 8
  %__mptr15 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5503, metadata !DIExpression()), !dbg !5514
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #12, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !5504, metadata !DIExpression()), !dbg !5516
  call void @llvm.lifetime.start.p0(i64 8, ptr %colon) #12, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %colon, metadata !5505, metadata !DIExpression()), !dbg !5518
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5519
  %call = call ptr @strnchr(ptr noundef %0, i64 noundef 56, i32 noundef 58) #13, !dbg !5520
  store ptr %call, ptr %colon, align 8, !dbg !5521
  %1 = load ptr, ptr %colon, align 8, !dbg !5522
  %tobool = icmp ne ptr %1, null, !dbg !5522
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5524

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5525
  %3 = load ptr, ptr %colon, align 8, !dbg !5527
  %4 = load ptr, ptr %name.addr, align 8, !dbg !5528
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64, !dbg !5529
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64, !dbg !5529
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5529
  %call1 = call ptr @find_module_all(ptr noundef %2, i64 noundef %sub.ptr.sub, i1 noundef zeroext false) #13, !dbg !5530
  store ptr %call1, ptr %mod, align 8, !dbg !5531
  %5 = load ptr, ptr %mod, align 8, !dbg !5532
  %tobool2 = icmp ne ptr %5, null, !dbg !5532
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5534

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %mod, align 8, !dbg !5535
  %7 = load ptr, ptr %colon, align 8, !dbg !5536
  %add.ptr = getelementptr i8, ptr %7, i64 1, !dbg !5537
  %call4 = call i64 @__find_kallsyms_symbol_value(ptr noundef %6, ptr noundef %add.ptr) #13, !dbg !5538
  store i64 %call4, ptr %retval, align 8, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !5539

if.end:                                           ; preds = %if.then
  store i64 0, ptr %retval, align 8, !dbg !5540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !5540

if.end5:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !5541
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5506, metadata !DIExpression()), !dbg !5541
  br label %do.body, !dbg !5542

do.body:                                          ; preds = %if.end5
  br label %do.cond, !dbg !5544

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5544

do.end:                                           ; preds = %do.cond
  %8 = load volatile ptr, ptr @modules, align 8, !dbg !5542
  store ptr %8, ptr %tmp, align 8, !dbg !5544
  %9 = load ptr, ptr %tmp, align 8, !dbg !5542
  store ptr %9, ptr %__mptr, align 8, !dbg !5541
  %10 = load ptr, ptr %__mptr, align 8, !dbg !5541
  %add.ptr7 = getelementptr i8, ptr %10, i64 -8, !dbg !5541
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5541
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !5546
  %11 = load ptr, ptr %tmp6, align 8, !dbg !5541
  store ptr %11, ptr %mod, align 8, !dbg !5546
  br label %for.cond, !dbg !5546

for.cond:                                         ; preds = %do.end18, %do.end
  %12 = load ptr, ptr %mod, align 8, !dbg !5547
  %list = getelementptr inbounds %struct.module, ptr %12, i32 0, i32 1, !dbg !5547
  %cmp = icmp ne ptr %list, @modules, !dbg !5547
  br i1 %cmp, label %for.body, label %for.end, !dbg !5546

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5548
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5509, metadata !DIExpression()), !dbg !5549
  %13 = load ptr, ptr %mod, align 8, !dbg !5550
  %state = getelementptr inbounds %struct.module, ptr %13, i32 0, i32 0, !dbg !5552
  %14 = load i32, ptr %state, align 64, !dbg !5552
  %cmp8 = icmp eq i32 %14, 3, !dbg !5553
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5554

if.then9:                                         ; preds = %for.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5555

if.end10:                                         ; preds = %for.body
  %15 = load ptr, ptr %mod, align 8, !dbg !5556
  %16 = load ptr, ptr %name.addr, align 8, !dbg !5557
  %call11 = call i64 @__find_kallsyms_symbol_value(ptr noundef %15, ptr noundef %16) #13, !dbg !5558
  store i64 %call11, ptr %ret, align 8, !dbg !5559
  %17 = load i64, ptr %ret, align 8, !dbg !5560
  %tobool12 = icmp ne i64 %17, 0, !dbg !5560
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5562

if.then13:                                        ; preds = %if.end10
  %18 = load i64, ptr %ret, align 8, !dbg !5563
  store i64 %18, ptr %retval, align 8, !dbg !5564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5564

if.end14:                                         ; preds = %if.end10
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5565
  br label %cleanup, !dbg !5565

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5565
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
    i32 6, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5566

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #12, !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !5512, metadata !DIExpression()), !dbg !5567
  br label %do.body16, !dbg !5568

do.body16:                                        ; preds = %for.inc
  br label %do.cond17, !dbg !5570

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5570

do.end18:                                         ; preds = %do.cond17
  %19 = load ptr, ptr %mod, align 8, !dbg !5568
  %list20 = getelementptr inbounds %struct.module, ptr %19, i32 0, i32 1, !dbg !5568
  %next = getelementptr inbounds %struct.list_head, ptr %list20, i32 0, i32 0, !dbg !5568
  %20 = load volatile ptr, ptr %next, align 8, !dbg !5568
  store ptr %20, ptr %tmp19, align 8, !dbg !5570
  %21 = load ptr, ptr %tmp19, align 8, !dbg !5568
  store ptr %21, ptr %__mptr15, align 8, !dbg !5567
  %22 = load ptr, ptr %__mptr15, align 8, !dbg !5567
  %add.ptr22 = getelementptr i8, ptr %22, i64 -8, !dbg !5567
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #12, !dbg !5547
  %23 = load ptr, ptr %tmp21, align 8, !dbg !5567
  store ptr %23, ptr %mod, align 8, !dbg !5547
  br label %for.cond, !dbg !5547, !llvm.loop !5572

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %retval, align 8, !dbg !5574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !5574

cleanup23:                                        ; preds = %for.end, %cleanup, %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colon) #12, !dbg !5575
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #12, !dbg !5575
  %24 = load i64, ptr %retval, align 8, !dbg !5575
  ret i64 %24, !dbg !5575
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @find_kallsyms_symbol_value(ptr noundef %mod, ptr noundef %name) #0 align 16 !dbg !4119 {
entry:
  %mod.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4123, metadata !DIExpression()), !dbg !5576
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4124, metadata !DIExpression()), !dbg !5577
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5578
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4125, metadata !DIExpression()), !dbg !5579
  br label %do.body, !dbg !5580

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !5581
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5581, !srcloc !5583
  br label %do.cond, !dbg !5581

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5581

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5584
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5585
  %call = call i64 @__find_kallsyms_symbol_value(ptr noundef %0, ptr noundef %1) #13, !dbg !5586
  store i64 %call, ptr %ret, align 8, !dbg !5587
  br label %do.body1, !dbg !5588

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5589, !srcloc !5591
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5592
  %lnot = xor i1 %call2, true, !dbg !5592
  %lnot3 = xor i1 %lnot, true, !dbg !5592
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5592
  %conv = sext i32 %lnot.ext to i64, !dbg !5592
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5592
  %tobool = icmp ne i64 %expval, 0, !dbg !5592
  br i1 %tobool, label %if.then, label %if.end, !dbg !5589

if.then:                                          ; preds = %do.body1
  br label %do.body4, !dbg !5592

do.body4:                                         ; preds = %if.then
  %2 = call i64 @llvm.read_register.i64(metadata !4168), !dbg !5594
  %3 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %2) #12, !dbg !5594, !srcloc !5596
  call void @llvm.write_register.i64(metadata !4168, i64 %3), !dbg !5594
  br label %do.cond5, !dbg !5594

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5594

do.end6:                                          ; preds = %do.cond5
  br label %if.end, !dbg !5594

if.end:                                           ; preds = %do.end6, %do.body1
  br label %do.cond7, !dbg !5589

do.cond7:                                         ; preds = %if.end
  br label %do.end8, !dbg !5589

do.end8:                                          ; preds = %do.cond7
  %4 = load i64, ptr %ret, align 8, !dbg !5597
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5598
  ret i64 %4, !dbg !5599
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__find_kallsyms_symbol_value(ptr noundef %mod, ptr noundef %name) #0 align 16 !dbg !5600 {
entry:
  %retval = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %kallsyms = alloca ptr, align 8
  %__UNIQUE_ID_rcu318 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5602, metadata !DIExpression()), !dbg !5612
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5603, metadata !DIExpression()), !dbg !5613
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !5614
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5604, metadata !DIExpression()), !dbg !5615
  call void @llvm.lifetime.start.p0(i64 8, ptr %kallsyms) #12, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %kallsyms, metadata !5605, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu318) #12, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu318, metadata !5606, metadata !DIExpression()), !dbg !5618
  br label %do.body, !dbg !5619

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5621

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5621

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5619
  %kallsyms1 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 28, !dbg !5619
  %1 = load volatile ptr, ptr %kallsyms1, align 8, !dbg !5619
  store ptr %1, ptr %tmp, align 8, !dbg !5621
  %2 = load ptr, ptr %tmp, align 8, !dbg !5619
  store ptr %2, ptr %__UNIQUE_ID_rcu318, align 8, !dbg !5618
  br label %do.body2, !dbg !5618

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !5623

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5623

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %__UNIQUE_ID_rcu318, align 8, !dbg !5618
  store ptr %3, ptr %tmp5, align 8, !dbg !5623
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu318) #12, !dbg !5625
  %4 = load ptr, ptr %tmp5, align 8, !dbg !5618
  store ptr %4, ptr %kallsyms, align 8, !dbg !5617
  store i32 0, ptr %i, align 4, !dbg !5626
  br label %for.cond, !dbg !5627

for.cond:                                         ; preds = %for.inc, %do.end4
  %5 = load i32, ptr %i, align 4, !dbg !5628
  %6 = load ptr, ptr %kallsyms, align 8, !dbg !5629
  %num_symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %6, i32 0, i32 1, !dbg !5630
  %7 = load i32, ptr %num_symtab, align 8, !dbg !5630
  %cmp = icmp ult i32 %5, %7, !dbg !5631
  br i1 %cmp, label %for.body, label %for.end, !dbg !5632

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !5633
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !5608, metadata !DIExpression()), !dbg !5634
  %8 = load ptr, ptr %kallsyms, align 8, !dbg !5635
  %symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %8, i32 0, i32 0, !dbg !5636
  %9 = load ptr, ptr %symtab, align 8, !dbg !5636
  %10 = load i32, ptr %i, align 4, !dbg !5637
  %idxprom = zext i32 %10 to i64, !dbg !5635
  %arrayidx = getelementptr %struct.elf64_sym, ptr %9, i64 %idxprom, !dbg !5635
  store ptr %arrayidx, ptr %sym, align 8, !dbg !5634
  %11 = load ptr, ptr %name.addr, align 8, !dbg !5638
  %12 = load ptr, ptr %kallsyms, align 8, !dbg !5640
  %13 = load i32, ptr %i, align 4, !dbg !5641
  %call = call ptr @kallsyms_symbol_name(ptr noundef %12, i32 noundef %13) #13, !dbg !5642
  %call6 = call i32 @strcmp(ptr noundef %11, ptr noundef %call) #13, !dbg !5643
  %cmp7 = icmp eq i32 %call6, 0, !dbg !5644
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !5645

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %sym, align 8, !dbg !5646
  %st_shndx = getelementptr inbounds %struct.elf64_sym, ptr %14, i32 0, i32 3, !dbg !5647
  %15 = load i16, ptr %st_shndx, align 2, !dbg !5647
  %conv = zext i16 %15 to i32, !dbg !5646
  %cmp8 = icmp ne i32 %conv, 0, !dbg !5648
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5649

if.then:                                          ; preds = %land.lhs.true
  %16 = load ptr, ptr %sym, align 8, !dbg !5650
  %call10 = call i64 @kallsyms_symbol_value(ptr noundef %16) #13, !dbg !5651
  store i64 %call10, ptr %retval, align 8, !dbg !5652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5652

if.end:                                           ; preds = %land.lhs.true, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5653
  br label %cleanup, !dbg !5653

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !5653
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5654

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, ptr %i, align 4, !dbg !5655
  %inc = add i32 %17, 1, !dbg !5655
  store i32 %inc, ptr %i, align 4, !dbg !5655
  br label %for.cond, !dbg !5656, !llvm.loop !5657

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %retval, align 8, !dbg !5659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !5659

cleanup11:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %kallsyms) #12, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !5660
  %18 = load i64, ptr %retval, align 8, !dbg !5660
  ret i64 %18, !dbg !5660
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @module_kallsyms_on_each_symbol(ptr noundef %modname, ptr noundef %fn, ptr noundef %data) #0 align 16 !dbg !4128 {
entry:
  %retval = alloca i32, align 4
  %modname.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %kallsyms = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu324 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %__mptr49 = alloca ptr, align 8
  %tmp51 = alloca ptr, align 8
  store ptr %modname, ptr %modname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %modname.addr, metadata !4135, metadata !DIExpression()), !dbg !5661
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !4136, metadata !DIExpression()), !dbg !5662
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4137, metadata !DIExpression()), !dbg !5663
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #12, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !4138, metadata !DIExpression()), !dbg !5665
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4139, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4140, metadata !DIExpression()), !dbg !5669
  store i32 0, ptr %ret, align 4, !dbg !5669
  call void @mutex_lock(ptr noundef @module_mutex) #13, !dbg !5670
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !5671
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4141, metadata !DIExpression()), !dbg !5671
  %0 = load ptr, ptr @modules, align 8, !dbg !5671
  store ptr %0, ptr %__mptr, align 8, !dbg !5671
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5671
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5671
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5671
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !5672
  %2 = load ptr, ptr %tmp, align 8, !dbg !5671
  store ptr %2, ptr %mod, align 8, !dbg !5672
  br label %for.cond, !dbg !5672

for.cond:                                         ; preds = %for.inc48, %entry
  %3 = load ptr, ptr %mod, align 8, !dbg !5673
  %list = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 1, !dbg !5673
  %cmp = icmp eq ptr %list, @modules, !dbg !5673
  %lnot = xor i1 %cmp, true, !dbg !5673
  br i1 %lnot, label %for.body, label %for.end53, !dbg !5672

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %kallsyms) #12, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %kallsyms, metadata !4144, metadata !DIExpression()), !dbg !5675
  %4 = load ptr, ptr %mod, align 8, !dbg !5676
  %state = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 0, !dbg !5678
  %5 = load i32, ptr %state, align 64, !dbg !5678
  %cmp1 = icmp eq i32 %5, 3, !dbg !5679
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5680

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !5681

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %modname.addr, align 8, !dbg !5682
  %tobool = icmp ne ptr %6, null, !dbg !5682
  br i1 %tobool, label %land.lhs.true, label %if.end4, !dbg !5684

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %modname.addr, align 8, !dbg !5685
  %8 = load ptr, ptr %mod, align 8, !dbg !5686
  %name = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 2, !dbg !5687
  %arraydecay = getelementptr inbounds [56 x i8], ptr %name, i64 0, i64 0, !dbg !5686
  %call = call i32 @strcmp(ptr noundef %7, ptr noundef %arraydecay) #13, !dbg !5688
  %tobool2 = icmp ne i32 %call, 0, !dbg !5688
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5689

if.then3:                                         ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !5690

if.end4:                                          ; preds = %land.lhs.true, %if.end
  br label %do.body, !dbg !5691

do.body:                                          ; preds = %if.end4
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !5692
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5692, !srcloc !5694
  br label %do.cond, !dbg !5692

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5692

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu324) #12, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu324, metadata !4147, metadata !DIExpression()), !dbg !5695
  br label %do.body5, !dbg !5696

do.body5:                                         ; preds = %do.end
  br label %do.cond6, !dbg !5698

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5698

do.end7:                                          ; preds = %do.cond6
  %9 = load ptr, ptr %mod, align 8, !dbg !5696
  %kallsyms9 = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 28, !dbg !5696
  %10 = load volatile ptr, ptr %kallsyms9, align 8, !dbg !5696
  store ptr %10, ptr %tmp8, align 8, !dbg !5698
  %11 = load ptr, ptr %tmp8, align 8, !dbg !5696
  store ptr %11, ptr %__UNIQUE_ID_rcu324, align 8, !dbg !5695
  br label %do.body10, !dbg !5695

do.body10:                                        ; preds = %do.end7
  br label %do.cond11, !dbg !5700

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5700

do.end12:                                         ; preds = %do.cond11
  %12 = load ptr, ptr %__UNIQUE_ID_rcu324, align 8, !dbg !5695
  store ptr %12, ptr %tmp13, align 8, !dbg !5700
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu324) #12, !dbg !5702
  %13 = load ptr, ptr %tmp13, align 8, !dbg !5695
  store ptr %13, ptr %kallsyms, align 8, !dbg !5703
  br label %do.body14, !dbg !5704

do.body14:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5705, !srcloc !5707
  %call15 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5708
  %lnot16 = xor i1 %call15, true, !dbg !5708
  %lnot17 = xor i1 %lnot16, true, !dbg !5708
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !5708
  %conv = sext i32 %lnot.ext to i64, !dbg !5708
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5708
  %tobool18 = icmp ne i64 %expval, 0, !dbg !5708
  br i1 %tobool18, label %if.then19, label %if.end23, !dbg !5705

if.then19:                                        ; preds = %do.body14
  br label %do.body20, !dbg !5708

do.body20:                                        ; preds = %if.then19
  %14 = call i64 @llvm.read_register.i64(metadata !4168), !dbg !5710
  %15 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %14) #12, !dbg !5710, !srcloc !5712
  call void @llvm.write_register.i64(metadata !4168, i64 %15), !dbg !5710
  br label %do.cond21, !dbg !5710

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5710

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !5710

if.end23:                                         ; preds = %do.end22, %do.body14
  br label %do.cond24, !dbg !5705

do.cond24:                                        ; preds = %if.end23
  br label %do.end25, !dbg !5705

do.end25:                                         ; preds = %do.cond24
  store i32 0, ptr %i, align 4, !dbg !5713
  br label %for.cond26, !dbg !5714

for.cond26:                                       ; preds = %for.inc, %do.end25
  %16 = load i32, ptr %i, align 4, !dbg !5715
  %17 = load ptr, ptr %kallsyms, align 8, !dbg !5716
  %num_symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %17, i32 0, i32 1, !dbg !5717
  %18 = load i32, ptr %num_symtab, align 8, !dbg !5717
  %cmp27 = icmp ult i32 %16, %18, !dbg !5718
  br i1 %cmp27, label %for.body29, label %for.end, !dbg !5719

for.body29:                                       ; preds = %for.cond26
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !5720
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !4149, metadata !DIExpression()), !dbg !5721
  %19 = load ptr, ptr %kallsyms, align 8, !dbg !5722
  %symtab = getelementptr inbounds %struct.mod_kallsyms, ptr %19, i32 0, i32 0, !dbg !5723
  %20 = load ptr, ptr %symtab, align 8, !dbg !5723
  %21 = load i32, ptr %i, align 4, !dbg !5724
  %idxprom = zext i32 %21 to i64, !dbg !5722
  %arrayidx = getelementptr %struct.elf64_sym, ptr %20, i64 %idxprom, !dbg !5722
  store ptr %arrayidx, ptr %sym, align 8, !dbg !5721
  %22 = load ptr, ptr %sym, align 8, !dbg !5725
  %st_shndx = getelementptr inbounds %struct.elf64_sym, ptr %22, i32 0, i32 3, !dbg !5727
  %23 = load i16, ptr %st_shndx, align 2, !dbg !5727
  %conv30 = zext i16 %23 to i32, !dbg !5725
  %cmp31 = icmp eq i32 %conv30, 0, !dbg !5728
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5729

if.then33:                                        ; preds = %for.body29
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5730

if.end34:                                         ; preds = %for.body29
  %24 = load ptr, ptr %fn.addr, align 8, !dbg !5731
  %25 = load ptr, ptr %data.addr, align 8, !dbg !5732
  %26 = load ptr, ptr %kallsyms, align 8, !dbg !5733
  %27 = load i32, ptr %i, align 4, !dbg !5734
  %call35 = call ptr @kallsyms_symbol_name(ptr noundef %26, i32 noundef %27) #13, !dbg !5735
  %28 = load ptr, ptr %sym, align 8, !dbg !5736
  %call36 = call i64 @kallsyms_symbol_value(ptr noundef %28) #13, !dbg !5737
  %call37 = call i32 %24(ptr noundef %25, ptr noundef %call35, i64 noundef %call36) #13, !dbg !5731
  store i32 %call37, ptr %ret, align 4, !dbg !5738
  %29 = load i32, ptr %ret, align 4, !dbg !5739
  %cmp38 = icmp ne i32 %29, 0, !dbg !5741
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5742

if.then40:                                        ; preds = %if.end34
  store i32 18, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5743

if.end41:                                         ; preds = %if.end34
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5744
  br label %cleanup, !dbg !5744

cleanup:                                          ; preds = %if.then40, %if.end41, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !5744
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
    i32 17, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5745

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %30 = load i32, ptr %i, align 4, !dbg !5746
  %inc = add i32 %30, 1, !dbg !5746
  store i32 %inc, ptr %i, align 4, !dbg !5746
  br label %for.cond26, !dbg !5747, !llvm.loop !5748

for.end:                                          ; preds = %for.cond26
  %31 = load ptr, ptr %modname.addr, align 8, !dbg !5750
  %tobool42 = icmp ne ptr %31, null, !dbg !5750
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !5752

if.then43:                                        ; preds = %for.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !5753

if.end44:                                         ; preds = %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5754
  br label %cleanup45, !dbg !5754

cleanup45:                                        ; preds = %if.end44, %if.then43, %cleanup, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kallsyms) #12, !dbg !5754
  %cleanup.dest46 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest46, label %cleanup54 [
    i32 0, label %cleanup.cont47
    i32 4, label %for.inc48
    i32 2, label %for.end53
    i32 18, label %out
  ]

cleanup.cont47:                                   ; preds = %cleanup45
  br label %for.inc48, !dbg !5755

for.inc48:                                        ; preds = %cleanup.cont47, %cleanup45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr49) #12, !dbg !5756
  call void @llvm.dbg.declare(metadata ptr %__mptr49, metadata !4153, metadata !DIExpression()), !dbg !5756
  %32 = load ptr, ptr %mod, align 8, !dbg !5756
  %list50 = getelementptr inbounds %struct.module, ptr %32, i32 0, i32 1, !dbg !5756
  %next = getelementptr inbounds %struct.list_head, ptr %list50, i32 0, i32 0, !dbg !5756
  %33 = load ptr, ptr %next, align 8, !dbg !5756
  store ptr %33, ptr %__mptr49, align 8, !dbg !5756
  %34 = load ptr, ptr %__mptr49, align 8, !dbg !5756
  %add.ptr52 = getelementptr i8, ptr %34, i64 -8, !dbg !5756
  store ptr %add.ptr52, ptr %tmp51, align 8, !dbg !5756
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr49) #12, !dbg !5673
  %35 = load ptr, ptr %tmp51, align 8, !dbg !5756
  store ptr %35, ptr %mod, align 8, !dbg !5673
  br label %for.cond, !dbg !5673, !llvm.loop !5757

for.end53:                                        ; preds = %cleanup45, %for.cond
  br label %out, !dbg !5758

out:                                              ; preds = %for.end53, %cleanup45
  call void @llvm.dbg.label(metadata !4155), !dbg !5759
  call void @mutex_unlock(ptr noundef @module_mutex) #13, !dbg !5760
  %36 = load i32, ptr %ret, align 4, !dbg !5761
  store i32 %36, ptr %retval, align 4, !dbg !5762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !5762

cleanup54:                                        ; preds = %out, %cleanup45
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #12, !dbg !5763
  %37 = load i32, ptr %retval, align 4, !dbg !5763
  ret i32 %37, !dbg !5763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5764 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5768 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5771 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5772 dso_local void @__rcu_read_lock() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @strstarts(ptr noundef %str, ptr noundef %prefix) #4 align 16 !dbg !5773 {
entry:
  %str.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5777, metadata !DIExpression()), !dbg !5779
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !5778, metadata !DIExpression()), !dbg !5780
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5781
  %1 = load ptr, ptr %prefix.addr, align 8, !dbg !5782
  %2 = load ptr, ptr %prefix.addr, align 8, !dbg !5783
  %call = call i64 @strlen(ptr noundef %2) #13, !dbg !5784
  %call1 = call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %call) #13, !dbg !5785
  %cmp = icmp eq i32 %call1, 0, !dbg !5786
  ret i1 %cmp, !dbg !5787
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5788 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5791 dso_local void @__rcu_read_unlock() #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_init(i64 noundef %addr, ptr noundef %mod) #4 align 16 !dbg !5792 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5794, metadata !DIExpression()), !dbg !5798
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5795, metadata !DIExpression()), !dbg !5799
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #12, !dbg !5800
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5796, metadata !DIExpression()), !dbg !5800
  store i32 0, ptr %type, align 4, !dbg !5800
  br label %for.cond, !dbg !5800

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %type, align 4, !dbg !5801
  %cmp = icmp slt i32 %0, 7, !dbg !5801
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !5800

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5800

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %type, align 4, !dbg !5803
  %cmp1 = icmp eq i32 %1, 4, !dbg !5803
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !5803

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, ptr %type, align 4, !dbg !5803
  %cmp2 = icmp eq i32 %2, 5, !dbg !5803
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !5803

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !5803
  %cmp4 = icmp eq i32 %3, 6, !dbg !5803
  br i1 %cmp4, label %if.then, label %if.end6, !dbg !5801

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %for.body
  %4 = load i64, ptr %addr.addr, align 8, !dbg !5805
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !5808
  %6 = load i32, ptr %type, align 4, !dbg !5809
  %call = call zeroext i1 @within_module_mem_type(i64 noundef %4, ptr noundef %5, i32 noundef %6) #13, !dbg !5810
  br i1 %call, label %if.then5, label %if.end, !dbg !5811

if.then5:                                         ; preds = %if.then
  store i1 true, ptr %retval, align 1, !dbg !5812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5812

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5813

if.end6:                                          ; preds = %if.end, %lor.lhs.false3
  br label %for.inc, !dbg !5803

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr %type, align 4, !dbg !5801
  %inc = add i32 %7, 1, !dbg !5801
  store i32 %inc, ptr %type, align 4, !dbg !5801
  br label %for.cond, !dbg !5801, !llvm.loop !5814

cleanup:                                          ; preds = %if.then5, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #12, !dbg !5801
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i1 false, ptr %retval, align 1, !dbg !5816
  br label %return, !dbg !5816

return:                                           ; preds = %for.end, %cleanup
  %8 = load i1, ptr %retval, align 1, !dbg !5817
  ret i1 %8, !dbg !5817

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_mapping_symbol(ptr noundef %str) #4 align 16 !dbg !5818 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5825
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !5825
  %1 = load i8, ptr %arrayidx, align 1, !dbg !5825
  %conv = zext i8 %1 to i32, !dbg !5825
  %cmp = icmp eq i32 %conv, 46, !dbg !5827
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5828

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %str.addr, align 8, !dbg !5829
  %arrayidx2 = getelementptr i8, ptr %2, i64 1, !dbg !5829
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !5829
  %conv3 = zext i8 %3 to i32, !dbg !5829
  %cmp4 = icmp eq i32 %conv3, 76, !dbg !5830
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5831

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %str.addr, align 8, !dbg !5833
  %arrayidx6 = getelementptr i8, ptr %4, i64 0, !dbg !5833
  %5 = load i8, ptr %arrayidx6, align 1, !dbg !5833
  %conv7 = zext i8 %5 to i32, !dbg !5833
  %cmp8 = icmp eq i32 %conv7, 76, !dbg !5835
  br i1 %cmp8, label %land.lhs.true10, label %if.end16, !dbg !5836

land.lhs.true10:                                  ; preds = %if.end
  %6 = load ptr, ptr %str.addr, align 8, !dbg !5837
  %arrayidx11 = getelementptr i8, ptr %6, i64 1, !dbg !5837
  %7 = load i8, ptr %arrayidx11, align 1, !dbg !5837
  %conv12 = zext i8 %7 to i32, !dbg !5837
  %cmp13 = icmp eq i32 %conv12, 48, !dbg !5838
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5839

if.then15:                                        ; preds = %land.lhs.true10
  store i32 1, ptr %retval, align 4, !dbg !5840
  br label %return, !dbg !5840

if.end16:                                         ; preds = %land.lhs.true10, %if.end
  %8 = load ptr, ptr %str.addr, align 8, !dbg !5841
  %arrayidx17 = getelementptr i8, ptr %8, i64 0, !dbg !5841
  %9 = load i8, ptr %arrayidx17, align 1, !dbg !5841
  %conv18 = zext i8 %9 to i32, !dbg !5841
  %cmp19 = icmp eq i32 %conv18, 36, !dbg !5842
  %conv20 = zext i1 %cmp19 to i32, !dbg !5842
  store i32 %conv20, ptr %retval, align 4, !dbg !5843
  br label %return, !dbg !5843

return:                                           ; preds = %if.end16, %if.then15, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !5844
  ret i32 %10, !dbg !5844
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_mem_type(i64 noundef %addr, ptr noundef %mod, i32 noundef %type) #4 align 16 !dbg !5845 {
entry:
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5849, metadata !DIExpression()), !dbg !5854
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5850, metadata !DIExpression()), !dbg !5855
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5851, metadata !DIExpression()), !dbg !5856
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #12, !dbg !5857
  call void @llvm.dbg.declare(metadata ptr %base, metadata !5852, metadata !DIExpression()), !dbg !5858
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #12, !dbg !5857
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5853, metadata !DIExpression()), !dbg !5859
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5860
  %mem = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 22, !dbg !5861
  %1 = load i32, ptr %type.addr, align 4, !dbg !5862
  %idxprom = sext i32 %1 to i64, !dbg !5860
  %arrayidx = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 %idxprom, !dbg !5860
  %base1 = getelementptr inbounds %struct.module_memory, ptr %arrayidx, i32 0, i32 0, !dbg !5863
  %2 = load ptr, ptr %base1, align 8, !dbg !5863
  %3 = ptrtoint ptr %2 to i64, !dbg !5864
  store i64 %3, ptr %base, align 8, !dbg !5865
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !5866
  %mem2 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 22, !dbg !5867
  %5 = load i32, ptr %type.addr, align 4, !dbg !5868
  %idxprom3 = sext i32 %5 to i64, !dbg !5866
  %arrayidx4 = getelementptr [7 x %struct.module_memory], ptr %mem2, i64 0, i64 %idxprom3, !dbg !5866
  %size5 = getelementptr inbounds %struct.module_memory, ptr %arrayidx4, i32 0, i32 1, !dbg !5869
  %6 = load i32, ptr %size5, align 8, !dbg !5869
  %conv = zext i32 %6 to i64, !dbg !5866
  store i64 %conv, ptr %size, align 8, !dbg !5870
  %7 = load i64, ptr %addr.addr, align 8, !dbg !5871
  %8 = load i64, ptr %base, align 8, !dbg !5872
  %sub = sub i64 %7, %8, !dbg !5873
  %9 = load i64, ptr %size, align 8, !dbg !5874
  %cmp = icmp ult i64 %sub, %9, !dbg !5875
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #12, !dbg !5876
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #12, !dbg !5876
  ret i1 %cmp, !dbg !5877
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_core(i64 noundef %addr, ptr noundef %mod) #4 align 16 !dbg !5878 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5880, metadata !DIExpression()), !dbg !5884
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5881, metadata !DIExpression()), !dbg !5885
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #12, !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5882, metadata !DIExpression()), !dbg !5886
  store i32 0, ptr %type, align 4, !dbg !5886
  br label %for.cond, !dbg !5886

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %type, align 4, !dbg !5887
  %cmp = icmp slt i32 %0, 7, !dbg !5887
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !5886

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5886

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %type, align 4, !dbg !5889
  %cmp1 = icmp eq i32 %1, 4, !dbg !5889
  br i1 %cmp1, label %if.end6, label %lor.lhs.false, !dbg !5889

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, ptr %type, align 4, !dbg !5889
  %cmp2 = icmp eq i32 %2, 5, !dbg !5889
  br i1 %cmp2, label %if.end6, label %lor.lhs.false3, !dbg !5889

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !5889
  %cmp4 = icmp eq i32 %3, 6, !dbg !5889
  br i1 %cmp4, label %if.end6, label %if.then, !dbg !5887

if.then:                                          ; preds = %lor.lhs.false3
  %4 = load i64, ptr %addr.addr, align 8, !dbg !5891
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !5894
  %6 = load i32, ptr %type, align 4, !dbg !5895
  %call = call zeroext i1 @within_module_mem_type(i64 noundef %4, ptr noundef %5, i32 noundef %6) #13, !dbg !5896
  br i1 %call, label %if.then5, label %if.end, !dbg !5897

if.then5:                                         ; preds = %if.then
  store i1 true, ptr %retval, align 1, !dbg !5898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5898

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5899

if.end6:                                          ; preds = %if.end, %lor.lhs.false3, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !5889

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr %type, align 4, !dbg !5887
  %inc = add i32 %7, 1, !dbg !5887
  store i32 %inc, ptr %type, align 4, !dbg !5887
  br label %for.cond, !dbg !5887, !llvm.loop !5900

cleanup:                                          ; preds = %if.then5, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #12, !dbg !5887
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i1 false, ptr %retval, align 1, !dbg !5902
  br label %return, !dbg !5902

return:                                           ; preds = %for.end, %cleanup
  %8 = load i1, ptr %retval, align 1, !dbg !5903
  ret i1 %8, !dbg !5903

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lookup_exported_symbol(ptr noundef %name, ptr noundef %start, ptr noundef %stop) #0 align 16 !dbg !5904 {
entry:
  %name.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5908, metadata !DIExpression()), !dbg !5911
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5909, metadata !DIExpression()), !dbg !5912
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !5910, metadata !DIExpression()), !dbg !5913
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5914
  %1 = load ptr, ptr %start.addr, align 8, !dbg !5915
  %2 = load ptr, ptr %stop.addr, align 8, !dbg !5916
  %3 = load ptr, ptr %start.addr, align 8, !dbg !5917
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64, !dbg !5918
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64, !dbg !5918
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5918
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12, !dbg !5918
  %call = call ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %sub.ptr.div, i64 noundef 12, ptr noundef @cmp_name) #13, !dbg !5919
  ret ptr %call, !dbg !5920
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kernel_symbol_value(ptr noundef %sym) #4 align 16 !dbg !5921 {
entry:
  %sym.addr = alloca ptr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %sym.addr, align 8, !dbg !5927
  %value_offset = getelementptr inbounds %struct.kernel_symbol, ptr %0, i32 0, i32 0, !dbg !5928
  %call = call ptr @offset_to_ptr(ptr noundef %value_offset) #13, !dbg !5929
  %1 = ptrtoint ptr %call to i64, !dbg !5930
  ret i64 %1, !dbg !5931
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5932 dso_local ptr @bsearch(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cmp_name(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @offset_to_ptr(ptr noundef %off) #4 align 16 !dbg !5940 {
entry:
  %off.addr = alloca ptr, align 8
  store ptr %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  %0 = load ptr, ptr %off.addr, align 8, !dbg !5948
  %1 = ptrtoint ptr %0 to i64, !dbg !5949
  %2 = load ptr, ptr %off.addr, align 8, !dbg !5950
  %3 = load i32, ptr %2, align 4, !dbg !5951
  %conv = sext i32 %3 to i64, !dbg !5951
  %add = add i64 %1, %conv, !dbg !5952
  %4 = inttoptr i64 %add to ptr, !dbg !5953
  ret ptr %4, !dbg !5954
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5955 dso_local ptr @strnchr(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5958 dso_local ptr @find_module_all(ptr noundef, i64 noundef, i1 noundef zeroext) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }

!llvm.dbg.cu = !{!17}
!llvm.named.register.rsp = !{!4168}
!llvm.module.flags = !{!4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!llvm.ident = !{!4177}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule307", scope: !2, file: !3, line: 354, type: !119, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "module_address_lookup", scope: !3, file: !3, line: 324, type: !4, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4159)
!3 = !DIFile(filename: "kernel/module/kallsyms.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44afbb254a166a04f60c4aa31ae5c216")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9, !10, !10, !11, !13, !12}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/module/.kallsyms.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/module/kallsyms\22 -D KBUILD_BASENAME=\22kallsyms\22 -D KBUILD_MODNAME=\22kallsyms\22 -D __KBUILD_MODNAME=kmod_kallsyms -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/module/kallsyms.ll kernel/module/kallsyms.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !118, globals: !4056, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19, !27, !32, !38, !43, !51, !67, !75, !81, !88, !95, !101, !113}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !21, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !21, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !21, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !44, line: 9, baseType: !21, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!47 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!48 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!49 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!50 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !21, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!54 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!55 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!56 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!57 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!58 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!59 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!60 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!61 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!62 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!63 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!64 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!65 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!66 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !68, line: 68, baseType: !21, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!69 = !{!70, !71, !72, !73, !74}
!70 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!71 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!72 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!73 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!74 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !76, line: 16, baseType: !21, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "TT_NONE", value: 0)
!79 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!80 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !82, line: 51, baseType: !21, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!85 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!86 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!87 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !89, line: 15, baseType: !21, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!92 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!93 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!94 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !96, line: 26, baseType: !21, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!99 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!100 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mod_mem_type", file: !20, line: 324, baseType: !102, size: 32, elements: !103)
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112}
!104 = !DIEnumerator(name: "MOD_TEXT", value: 0)
!105 = !DIEnumerator(name: "MOD_DATA", value: 1)
!106 = !DIEnumerator(name: "MOD_RODATA", value: 2)
!107 = !DIEnumerator(name: "MOD_RO_AFTER_INIT", value: 3)
!108 = !DIEnumerator(name: "MOD_INIT_TEXT", value: 4)
!109 = !DIEnumerator(name: "MOD_INIT_DATA", value: 5)
!110 = !DIEnumerator(name: "MOD_INIT_RODATA", value: 6)
!111 = !DIEnumerator(name: "MOD_MEM_NUM_TYPES", value: 7)
!112 = !DIEnumerator(name: "MOD_INVALID", value: -1)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !114, line: 10, baseType: !21, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!115 = !{!116, !117}
!116 = !DIEnumerator(name: "false", value: 0)
!117 = !DIEnumerator(name: "true", value: 1)
!118 = !{!119, !21, !120, !148, !151, !160, !102, !399, !9}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !122)
!122 = !{!123, !145, !146, !147}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !121, file: !20, line: 379, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !126, line: 204, baseType: !127)
!126 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !126, line: 197, size: 192, elements: !128)
!128 = !{!129, !133, !134, !135, !139, !143}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !127, file: !126, line: 198, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !126, line: 21, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !132, line: 27, baseType: !21)
!132 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!133 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !127, file: !126, line: 199, baseType: !16, size: 8, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !127, file: !126, line: 200, baseType: !16, size: 8, offset: 40)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !127, file: !126, line: 201, baseType: !136, size: 16, offset: 48)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !126, line: 17, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !132, line: 24, baseType: !138)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !127, file: !126, line: 202, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !126, line: 16, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !132, line: 31, baseType: !142)
!142 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !127, file: !126, line: 203, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !126, line: 22, baseType: !141)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !121, file: !20, line: 380, baseType: !21, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !121, file: !20, line: 381, baseType: !12, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !121, file: !20, line: 382, baseType: !12, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !156, line: 190, size: 128, elements: !157)
!156 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !156, line: 191, baseType: !154, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !156, line: 191, baseType: !154, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !162)
!162 = !{!163, !164, !165, !169, !3750, !3776, !3777, !3778, !3779, !3788, !3791, !3792, !3793, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3860, !3864, !3882, !3899, !3900, !3901, !3902, !3911, !3912, !3913, !3916, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3930, !3931, !4017, !4025, !4026, !4027, !4029, !4033, !4034, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4051, !4052, !4053, !4055}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !161, file: !20, line: 403, baseType: !19, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !161, file: !20, line: 406, baseType: !155, size: 128, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !20, line: 409, baseType: !166, size: 448, offset: 192)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 448, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 56)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !161, file: !20, line: 417, baseType: !170, size: 768, offset: 640)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !171)
!171 = !{!172, !3744, !3745, !3746, !3749}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !170, file: !20, line: 46, baseType: !173, size: 512)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !174, line: 64, size: 512, elements: !175)
!174 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!175 = !{!176, !177, !178, !180, !264, !3631, !3734, !3739, !3740, !3741, !3742, !3743}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !174, line: 65, baseType: !6, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !173, file: !174, line: 66, baseType: !155, size: 128, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !174, line: 67, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !173, file: !174, line: 68, baseType: !181, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !174, line: 168, size: 768, elements: !183)
!183 = !{!184, !185, !224, !225}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !182, file: !174, line: 169, baseType: !155, size: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !182, file: !174, line: 170, baseType: !186, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !187, line: 29, baseType: !188)
!187 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !187, line: 17, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !187, line: 18, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !188, file: !187, line: 18, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !191, file: !187, line: 19, baseType: !194, size: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !195, line: 14, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !194, file: !195, line: 15, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !199, line: 44, baseType: !200)
!199 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !199, line: 14, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !199, line: 15, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !199, line: 15, size: 32, elements: !204)
!204 = !{!205, !210, !218}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !203, file: !199, line: 16, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !156, line: 174, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 172, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !207, file: !156, line: 173, baseType: !102, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !199, line: 24, baseType: !211, size: 16)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !199, line: 24, size: 16, elements: !212)
!212 = !{!213, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !211, file: !199, line: 25, baseType: !214, size: 8)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !215, line: 17, baseType: !216)
!215 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !132, line: 21, baseType: !16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !211, file: !199, line: 26, baseType: !214, size: 8, offset: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !199, line: 28, baseType: !219, size: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !199, line: 28, size: 32, elements: !220)
!220 = !{!221, !223}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !219, file: !199, line: 29, baseType: !222, size: 16)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !215, line: 19, baseType: !137)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !219, file: !199, line: 30, baseType: !222, size: 16, offset: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !182, file: !174, line: 171, baseType: !173, size: 512, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !182, file: !174, line: 172, baseType: !226, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !174, line: 133, size: 192, elements: !229)
!229 = !{!230, !237, !242}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !228, file: !174, line: 134, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!102, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !174, line: 135, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!6, !235}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !228, file: !174, line: 136, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!102, !235, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !174, line: 125, size: 20736, elements: !249)
!249 = !{!250, !254, !258, !259, !263}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !248, file: !174, line: 126, baseType: !251, size: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 3)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !248, file: !174, line: 127, baseType: !255, size: 4096, offset: 192)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 4096, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !248, file: !174, line: 128, baseType: !102, size: 32, offset: 4288)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !248, file: !174, line: 129, baseType: !260, size: 16384, offset: 4320)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16384, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 2048)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !248, file: !174, line: 130, baseType: !102, size: 32, offset: 20704)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !173, file: !174, line: 69, baseType: !265, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !174, line: 116, size: 384, elements: !268)
!268 = !{!269, !273, !301, !3593, !3621, !3625}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !267, file: !174, line: 117, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !179}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !267, file: !174, line: 118, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !277, line: 254, size: 128, elements: !278)
!277 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!278 = !{!279, !294}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !276, file: !277, line: 255, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !179, !288, !12}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !156, line: 66, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !285, line: 73, baseType: !286)
!285 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !285, line: 15, baseType: !287)
!287 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !277, line: 30, size: 128, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !277, line: 31, baseType: !6, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !289, file: !277, line: 32, baseType: !293, size: 16, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !156, line: 24, baseType: !138)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !276, file: !277, line: 256, baseType: !295, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!283, !179, !288, !6, !298}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 61, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !285, line: 72, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !285, line: 16, baseType: !9)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !267, file: !174, line: 119, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !277, line: 84, size: 320, elements: !306)
!306 = !{!307, !308, !312, !3589, !3591}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !277, line: 85, baseType: !6, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !305, file: !277, line: 86, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!293, !179, !288, !102}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !305, file: !277, line: 88, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!293, !179, !316, !102}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !277, line: 175, size: 512, elements: !318)
!318 = !{!319, !320, !321, !322, !3580, !3584, !3585}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !317, file: !277, line: 176, baseType: !289, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !317, file: !277, line: 177, baseType: !298, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !317, file: !277, line: 178, baseType: !119, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !317, file: !277, line: 179, baseType: !323, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !328)
!328 = !{!329, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3574, !3575, !3576, !3577, !3578, !3579}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !327, file: !28, line: 473, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !332)
!332 = !{!333, !334, !335, !343, !344, !351, !352, !355, !356, !3352, !3353, !3354, !3355, !3356, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3396, !3399, !3400, !3401, !3410, !3411, !3412, !3413}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !331, file: !28, line: 642, baseType: !293, size: 16)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !331, file: !28, line: 643, baseType: !138, size: 16, offset: 16)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !331, file: !28, line: 644, baseType: !336, size: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !337, line: 23, baseType: !338)
!337 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 21, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !338, file: !337, line: 22, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !156, line: 37, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !285, line: 49, baseType: !21)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !331, file: !28, line: 645, baseType: !155, size: 128, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !331, file: !28, line: 646, baseType: !345, size: 32, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !337, line: 28, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 26, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !346, file: !337, line: 27, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !156, line: 38, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !285, line: 50, baseType: !21)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !331, file: !28, line: 647, baseType: !21, size: 32, offset: 224)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !331, file: !28, line: 650, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !331, file: !28, line: 651, baseType: !353, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !331, file: !28, line: 654, baseType: !357, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !360)
!360 = !{!361, !3177, !3190, !3194, !3198, !3202, !3206, !3210, !3214, !3218, !3222, !3223, !3227, !3231, !3268, !3297, !3301, !3307, !3311, !3315, !3319, !3323, !3327, !3333, !3337}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !359, file: !28, line: 1967, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!365, !330, !365, !21}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !367, line: 82, size: 1536, elements: !368)
!367 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!368 = !{!369, !370, !380, !388, !389, !404, !405, !409, !422, !3160, !3161, !3162, !3163, !3169, !3170, !3171}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !366, file: !367, line: 84, baseType: !21, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !366, file: !367, line: 85, baseType: !371, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !372, line: 275, baseType: !373)
!372 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !372, line: 275, size: 32, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !373, file: !372, line: 275, baseType: !376, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !372, line: 69, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !372, line: 64, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !377, file: !372, line: 65, baseType: !21, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !366, file: !367, line: 86, baseType: !381, size: 128, offset: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !382, line: 38, size: 128, elements: !383)
!382 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!383 = !{!384, !386}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !382, line: 39, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !381, file: !382, line: 39, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !366, file: !367, line: 87, baseType: !365, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !366, file: !367, line: 88, baseType: !390, size: 128, offset: 256)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !367, line: 49, size: 128, elements: !391)
!391 = !{!392, !403}
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !367, line: 50, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !367, line: 50, size: 64, elements: !394)
!394 = !{!395, !401}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !367, line: 51, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !367, line: 51, size: 64, elements: !397)
!397 = !{!398, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !396, file: !367, line: 52, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !215, line: 21, baseType: !131)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !396, file: !367, line: 52, baseType: !399, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !393, file: !367, line: 54, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !215, line: 23, baseType: !141)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !390, file: !367, line: 56, baseType: !14, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !366, file: !367, line: 89, baseType: !330, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !366, file: !367, line: 91, baseType: !406, size: 256, offset: 448)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !366, file: !367, line: 94, baseType: !410, size: 64, offset: 704)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !411, line: 25, size: 64, elements: !412)
!411 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !411, line: 26, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !411, line: 26, size: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !414, file: !411, line: 28, baseType: !141, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !411, line: 30, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !411, line: 30, size: 64, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !418, file: !411, line: 31, baseType: !186, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !418, file: !411, line: 32, baseType: !102, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !366, file: !367, line: 95, baseType: !423, size: 64, offset: 768)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !367, line: 128, size: 1024, align: 512, elements: !426)
!426 = !{!427, !431, !432, !439, !445, !449, !453, !457, !458, !462, !466, !3150, !3154}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !425, file: !367, line: 129, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!102, !365, !21}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !425, file: !367, line: 130, baseType: !428, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !425, file: !367, line: 131, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!102, !436, !438}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !425, file: !367, line: 132, baseType: !440, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!102, !436, !21, !6, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !425, file: !367, line: 134, baseType: !446, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!102, !436}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !425, file: !367, line: 135, baseType: !450, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!102, !365}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !425, file: !367, line: 136, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !365}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !425, file: !367, line: 137, baseType: !454, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !425, file: !367, line: 138, baseType: !459, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !365, !330}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !425, file: !367, line: 139, baseType: !463, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!12, !365, !12, !102}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !425, file: !367, line: 140, baseType: !467, size: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !3149}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !472, line: 70, size: 256, elements: !473)
!472 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!473 = !{!474, !475, !3145, !3146}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !471, file: !472, line: 71, baseType: !365, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !471, file: !472, line: 72, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !478)
!478 = !{!479, !480, !483, !484, !485, !489, !538, !699, !739, !829, !833, !834, !835, !836, !837, !846, !847, !848, !849, !854, !858, !859, !862, !865, !868, !871, !872, !873, !914, !3076, !3077, !3078, !3079, !3080, !3081, !3084, !3086, !3093, !3094, !3095, !3096, !3097, !3112, !3113, !3114, !3115, !3116, !3119, !3120, !3121, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !477, file: !28, line: 1191, baseType: !155, size: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !477, file: !28, line: 1192, baseType: !481, size: 32, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !156, line: 21, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !156, line: 18, baseType: !399)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !477, file: !28, line: 1193, baseType: !16, size: 8, offset: 160)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !477, file: !28, line: 1194, baseType: !9, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !477, file: !28, line: 1195, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !156, line: 52, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !285, line: 88, baseType: !488)
!488 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !477, file: !28, line: 1196, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !492)
!492 = !{!493, !494, !495, !502, !506, !510, !514, !515, !516, !526, !530, !531, !532, !534, !535, !536, !537}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !491, file: !28, line: 2367, baseType: !6, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !491, file: !28, line: 2368, baseType: !102, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !491, file: !28, line: 2376, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!102, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !501, line: 32, flags: DIFlagFwdDecl)
!501 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!502 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !491, file: !28, line: 2377, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !491, file: !28, line: 2378, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!365, !490, !102, !6, !119}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !491, file: !28, line: 2380, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !476}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !491, file: !28, line: 2381, baseType: !160, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !28, line: 2382, baseType: !490, size: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !491, file: !28, line: 2383, baseType: !517, size: 64, offset: 512)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !156, line: 194, size: 64, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !517, file: !156, line: 195, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !156, line: 198, size: 128, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !521, file: !156, line: 199, baseType: !520, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !521, file: !156, line: 199, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !491, file: !28, line: 2385, baseType: !527, offset: 576)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !528, line: 206, elements: !529)
!528 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!529 = !{}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !491, file: !28, line: 2386, baseType: !527, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !491, file: !28, line: 2387, baseType: !527, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !491, file: !28, line: 2388, baseType: !533, offset: 576)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, elements: !252)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !491, file: !28, line: 2390, baseType: !527, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !491, file: !28, line: 2391, baseType: !527, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !491, file: !28, line: 2392, baseType: !527, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !491, file: !28, line: 2393, baseType: !527, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !477, file: !28, line: 1197, baseType: !539, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !542)
!542 = !{!543, !547, !551, !552, !556, !562, !566, !567, !568, !572, !576, !580, !581, !582, !588, !593, !594, !601, !602, !603, !604, !608, !612, !681, !697, !698}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !541, file: !28, line: 2058, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!330, !476}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !541, file: !28, line: 2059, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !330}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !541, file: !28, line: 2060, baseType: !548, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !541, file: !28, line: 2062, baseType: !553, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !330, !102}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !541, file: !28, line: 2063, baseType: !557, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!102, !330, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !541, file: !28, line: 2064, baseType: !563, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!102, !330}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !541, file: !28, line: 2065, baseType: !548, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !541, file: !28, line: 2066, baseType: !511, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !541, file: !28, line: 2067, baseType: !569, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!102, !476, !102}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !541, file: !28, line: 2068, baseType: !573, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!102, !476, !27}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !541, file: !28, line: 2069, baseType: !577, size: 64, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!102, !476}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !541, file: !28, line: 2070, baseType: !573, size: 64, offset: 704)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !541, file: !28, line: 2071, baseType: !577, size: 64, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !541, file: !28, line: 2072, baseType: !583, size: 64, offset: 832)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!102, !365, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !541, file: !28, line: 2073, baseType: !589, size: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!102, !476, !592, !12}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !541, file: !28, line: 2074, baseType: !511, size: 64, offset: 960)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !541, file: !28, line: 2076, baseType: !595, size: 64, offset: 1024)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!102, !598, !365}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !600, line: 66, flags: DIFlagFwdDecl)
!600 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!601 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !541, file: !28, line: 2077, baseType: !595, size: 64, offset: 1088)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !541, file: !28, line: 2078, baseType: !595, size: 64, offset: 1152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !541, file: !28, line: 2079, baseType: !595, size: 64, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !541, file: !28, line: 2081, baseType: !605, size: 64, offset: 1280)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!283, !476, !102, !12, !298, !486}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !541, file: !28, line: 2082, baseType: !609, size: 64, offset: 1344)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!283, !476, !102, !6, !298, !486}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !541, file: !28, line: 2083, baseType: !613, size: 64, offset: 1408)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!616, !330}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !645, !646, !647, !648, !664, !665, !666}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !618, file: !33, line: 297, baseType: !521, size: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !618, file: !33, line: 298, baseType: !155, size: 128, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !618, file: !33, line: 299, baseType: !155, size: 128, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !618, file: !33, line: 300, baseType: !155, size: 128, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !618, file: !33, line: 301, baseType: !625, size: 256, offset: 512)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !626, line: 66, size: 256, elements: !627)
!626 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!627 = !{!628, !637, !639, !644}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !625, file: !626, line: 67, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !630, line: 13, baseType: !631)
!630 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !156, line: 181, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 179, size: 64, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !632, file: !156, line: 180, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !215, line: 22, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !132, line: 30, baseType: !488)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !625, file: !626, line: 68, baseType: !638, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !195, line: 23, baseType: !194)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !625, file: !626, line: 70, baseType: !640, size: 32, offset: 96)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !641, line: 15, size: 32, elements: !642)
!641 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !640, file: !641, line: 20, baseType: !206, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !625, file: !626, line: 72, baseType: !155, size: 128, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !618, file: !33, line: 302, baseType: !186, size: 32, offset: 768)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !618, file: !33, line: 303, baseType: !206, size: 32, offset: 800)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !618, file: !33, line: 304, baseType: !476, size: 64, offset: 832)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !618, file: !33, line: 305, baseType: !649, size: 64, offset: 896)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !650)
!650 = !{!651, !663}
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !33, line: 69, baseType: !652, size: 32)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !33, line: 69, size: 32, elements: !653)
!653 = !{!654, !655, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !652, file: !33, line: 70, baseType: !336, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !652, file: !33, line: 71, baseType: !345, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !652, file: !33, line: 72, baseType: !657, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !658, line: 24, baseType: !659)
!658 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 22, size: 32, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !659, file: !658, line: 23, baseType: !662, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !658, line: 20, baseType: !342)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !618, file: !33, line: 306, baseType: !486, size: 64, offset: 960)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !618, file: !33, line: 307, baseType: !9, size: 64, offset: 1024)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !618, file: !33, line: 308, baseType: !667, size: 576, offset: 1088)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !668)
!668 = !{!669, !671, !672, !673, !674, !675, !676, !677, !680}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !667, file: !33, line: 206, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !488)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !667, file: !33, line: 207, baseType: !670, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !667, file: !33, line: 208, baseType: !670, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !667, file: !33, line: 209, baseType: !670, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !667, file: !33, line: 210, baseType: !670, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !667, file: !33, line: 211, baseType: !670, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !667, file: !33, line: 212, baseType: !670, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !667, file: !33, line: 213, baseType: !678, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !679, line: 8, baseType: !636)
!679 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !667, file: !33, line: 214, baseType: !678, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !541, file: !28, line: 2085, baseType: !682, size: 64, offset: 1472)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!287, !476, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !687, line: 15, size: 256, elements: !688)
!687 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!688 = !{!689, !691, !692, !693, !694}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !686, file: !687, line: 16, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !156, line: 154, baseType: !21)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !686, file: !687, line: 19, baseType: !102, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !686, file: !687, line: 26, baseType: !9, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !686, file: !687, line: 33, baseType: !9, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !686, file: !687, line: 36, baseType: !695, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !52, line: 33, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !541, file: !28, line: 2087, baseType: !682, size: 64, offset: 1536)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !541, file: !28, line: 2089, baseType: !511, size: 64, offset: 1600)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !477, file: !28, line: 1198, baseType: !700, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !703)
!703 = !{!704, !708, !712, !716, !717, !718, !719, !720, !725, !730, !734}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !702, file: !33, line: 325, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!102, !617}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !702, file: !33, line: 326, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!617, !476, !102}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !702, file: !33, line: 327, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !617}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !702, file: !33, line: 328, baseType: !705, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !702, file: !33, line: 329, baseType: !705, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !702, file: !33, line: 330, baseType: !705, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !702, file: !33, line: 331, baseType: !569, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !702, file: !33, line: 334, baseType: !721, size: 64, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!724, !330}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !702, file: !33, line: 335, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!102, !330, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !702, file: !33, line: 337, baseType: !731, size: 64, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!102, !330, !724}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !702, file: !33, line: 339, baseType: !735, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!102, !476, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !477, file: !28, line: 1199, baseType: !740, size: 64, offset: 512)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !743)
!743 = !{!744, !755, !756, !760, !761, !762, !777, !800, !804, !805, !828}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !742, file: !33, line: 431, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!102, !476, !102, !102, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !751, line: 8, size: 128, elements: !752)
!751 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !750, file: !751, line: 9, baseType: !470, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !750, file: !751, line: 10, baseType: !365, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !742, file: !33, line: 432, baseType: !569, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !742, file: !33, line: 433, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!102, !476, !21}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !742, file: !33, line: 434, baseType: !757, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !742, file: !33, line: 435, baseType: !569, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !742, file: !33, line: 436, baseType: !763, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!102, !476, !102, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !767, file: !33, line: 418, baseType: !102, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !767, file: !33, line: 419, baseType: !21, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !767, file: !33, line: 420, baseType: !21, size: 32, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !767, file: !33, line: 422, baseType: !21, size: 32, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !767, file: !33, line: 423, baseType: !21, size: 32, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !767, file: !33, line: 424, baseType: !21, size: 32, offset: 160)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !767, file: !33, line: 425, baseType: !21, size: 32, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !767, file: !33, line: 426, baseType: !21, size: 32, offset: 224)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !742, file: !33, line: 437, baseType: !778, size: 64, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!102, !476, !649, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !782, file: !33, line: 346, baseType: !102, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !782, file: !33, line: 347, baseType: !402, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !782, file: !33, line: 348, baseType: !402, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !782, file: !33, line: 349, baseType: !402, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !782, file: !33, line: 350, baseType: !402, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !782, file: !33, line: 351, baseType: !402, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !782, file: !33, line: 352, baseType: !402, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !782, file: !33, line: 353, baseType: !635, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !782, file: !33, line: 355, baseType: !635, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !782, file: !33, line: 356, baseType: !102, size: 32, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !782, file: !33, line: 357, baseType: !102, size: 32, offset: 608)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !782, file: !33, line: 358, baseType: !402, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !782, file: !33, line: 359, baseType: !402, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !782, file: !33, line: 360, baseType: !402, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !782, file: !33, line: 361, baseType: !635, size: 64, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !782, file: !33, line: 362, baseType: !102, size: 32, offset: 896)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !742, file: !33, line: 438, baseType: !801, size: 64, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!102, !476, !738, !781}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !742, file: !33, line: 440, baseType: !778, size: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !742, file: !33, line: 441, baseType: !806, size: 64, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!102, !476, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !810, file: !33, line: 412, baseType: !21, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !810, file: !33, line: 413, baseType: !814, size: 1344, offset: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 1344, elements: !252)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !822, !823, !824, !825, !827}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !33, line: 398, baseType: !21, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !815, file: !33, line: 399, baseType: !21, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !815, file: !33, line: 401, baseType: !21, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !815, file: !33, line: 402, baseType: !21, size: 32, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !815, file: !33, line: 403, baseType: !21, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !815, file: !33, line: 404, baseType: !21, size: 32, offset: 160)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !815, file: !33, line: 405, baseType: !21, size: 32, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !815, file: !33, line: 406, baseType: !142, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !815, file: !33, line: 407, baseType: !826, size: 64, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !156, line: 132, baseType: !402)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !815, file: !33, line: 408, baseType: !826, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !742, file: !33, line: 442, baseType: !757, size: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !477, file: !28, line: 1200, baseType: !830, size: 64, offset: 576)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !477, file: !28, line: 1201, baseType: !9, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !477, file: !28, line: 1202, baseType: !9, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !477, file: !28, line: 1203, baseType: !9, size: 64, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !477, file: !28, line: 1204, baseType: !365, size: 64, offset: 832)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !477, file: !28, line: 1205, baseType: !838, size: 320, offset: 896)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !839, line: 48, size: 320, elements: !840)
!839 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!840 = !{!841, !842, !843, !844, !845}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !838, file: !839, line: 49, baseType: !629, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !838, file: !839, line: 55, baseType: !629, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !838, file: !839, line: 57, baseType: !640, size: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !838, file: !839, line: 59, baseType: !638, size: 32, offset: 160)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !838, file: !839, line: 60, baseType: !155, size: 128, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !477, file: !28, line: 1206, baseType: !102, size: 32, offset: 1216)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !477, file: !28, line: 1207, baseType: !206, size: 32, offset: 1248)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !477, file: !28, line: 1209, baseType: !119, size: 64, offset: 1280)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !477, file: !28, line: 1211, baseType: !850, size: 64, offset: 1344)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !477, file: !28, line: 1223, baseType: !855, size: 64, offset: 1408)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !382, line: 34, size: 64, elements: !856)
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !855, file: !382, line: 35, baseType: !385, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !477, file: !28, line: 1224, baseType: !155, size: 128, offset: 1472)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !477, file: !28, line: 1225, baseType: !860, size: 64, offset: 1600)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !477, file: !28, line: 1226, baseType: !863, size: 64, offset: 1664)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !477, file: !28, line: 1227, baseType: !866, size: 64, offset: 1728)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !477, file: !28, line: 1228, baseType: !869, size: 64, offset: 1792)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !477, file: !28, line: 1229, baseType: !521, size: 128, offset: 1856)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !477, file: !28, line: 1230, baseType: !21, size: 32, offset: 1984)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !477, file: !28, line: 1231, baseType: !874, size: 2496, offset: 2048)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !875)
!875 = !{!876, !877, !878, !880, !912}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !33, line: 522, baseType: !21, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !874, file: !33, line: 523, baseType: !838, size: 320, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !874, file: !33, line: 524, baseType: !879, size: 192, offset: 384)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 192, elements: !252)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !874, file: !33, line: 525, baseType: !881, size: 1728, offset: 576)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, size: 1728, elements: !252)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !883)
!883 = !{!884, !904, !905, !906, !907, !908, !909, !910, !911}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !882, file: !33, line: 223, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !887)
!887 = !{!888, !889, !902, !903}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !886, file: !33, line: 446, baseType: !102, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !886, file: !33, line: 447, baseType: !890, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !893)
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !892, file: !33, line: 313, baseType: !569, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !892, file: !33, line: 314, baseType: !569, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !892, file: !33, line: 315, baseType: !569, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !892, file: !33, line: 316, baseType: !569, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !892, file: !33, line: 317, baseType: !705, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !892, file: !33, line: 318, baseType: !705, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !892, file: !33, line: 319, baseType: !705, size: 64, offset: 384)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !892, file: !33, line: 320, baseType: !735, size: 64, offset: 448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !886, file: !33, line: 448, baseType: !160, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !886, file: !33, line: 449, baseType: !885, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !882, file: !33, line: 224, baseType: !102, size: 32, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !882, file: !33, line: 226, baseType: !155, size: 128, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !882, file: !33, line: 227, baseType: !9, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !882, file: !33, line: 228, baseType: !21, size: 32, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !882, file: !33, line: 229, baseType: !21, size: 32, offset: 352)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !882, file: !33, line: 230, baseType: !670, size: 64, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !882, file: !33, line: 231, baseType: !670, size: 64, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !882, file: !33, line: 232, baseType: !119, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !874, file: !33, line: 526, baseType: !913, size: 192, offset: 2304)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 192, elements: !252)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !477, file: !28, line: 1233, baseType: !915, size: 2368, offset: 4544)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !915, file: !28, line: 1185, baseType: !138, size: 16)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !915, file: !28, line: 1186, baseType: !138, size: 16, offset: 16)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !915, file: !28, line: 1187, baseType: !920, size: 2304, offset: 64)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 2304, elements: !252)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !922, line: 12, size: 768, elements: !923)
!922 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!923 = !{!924, !946, !948, !3074, !3075}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !921, file: !922, line: 13, baseType: !925, size: 384)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !926, line: 17, size: 384, elements: !927)
!926 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!927 = !{!928, !929, !930, !937}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !925, file: !926, line: 18, baseType: !102, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !925, file: !926, line: 19, baseType: !102, size: 32, offset: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !925, file: !926, line: 20, baseType: !931, size: 192, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !932, line: 41, baseType: !933)
!932 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !932, line: 37, size: 192, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !933, file: !932, line: 38, baseType: !186, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !933, file: !932, line: 39, baseType: !155, size: 128, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !925, file: !926, line: 22, baseType: !938, size: 128, align: 64, offset: 256)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !156, line: 232, size: 128, align: 64, elements: !939)
!939 = !{!940, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !938, file: !156, line: 233, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !938, file: !156, line: 234, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !941}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !921, file: !922, line: 14, baseType: !947, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !921, file: !922, line: 15, baseType: !949, size: 64, offset: 448)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !950, line: 16, size: 64, elements: !951)
!950 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !949, file: !950, line: 17, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !600, line: 746, size: 58368, elements: !955)
!955 = !{!956, !964, !965, !966, !972, !973, !974, !975, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1053, !1064, !1159, !1163, !1166, !1197, !1198, !1199, !1200, !1211, !1213, !1214, !1215, !1216, !1217, !1218, !1229, !1230, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1247, !1248, !1255, !1256, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2244, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2259, !2260, !2261, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2293, !2299, !2300, !2301, !2302, !2303, !2307, !2310, !2317, !2322, !2325, !2328, !2331, !2335, !2475, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2515, !2516, !2517, !2526, !2534, !2535, !2536, !2537, !2538, !2543, !2544, !2545, !2548, !2549, !2552, !2555, !2558, !2566, !2569, !2570, !2656, !2657, !2658, !2659, !2660, !2666, !2667, !2668, !2669, !2672, !2673, !2676, !2679, !2680, !2683, !2684, !2685, !2688, !2689, !2690, !2691, !2692, !2693, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2725, !2726, !2732, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2744, !2816, !2818, !2819, !2820, !2821, !2822, !2834, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2851, !2852, !2853}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !954, file: !600, line: 752, baseType: !957, size: 192)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !958, line: 56, size: 192, elements: !959)
!958 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!959 = !{!960, !961, !962, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !957, file: !958, line: 57, baseType: !9, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !957, file: !958, line: 58, baseType: !9, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !957, file: !958, line: 59, baseType: !399, size: 32, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !957, file: !958, line: 61, baseType: !399, size: 32, offset: 160)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !954, file: !600, line: 754, baseType: !21, size: 32, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !954, file: !600, line: 767, baseType: !119, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !954, file: !600, line: 768, baseType: !967, size: 32, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !968, line: 113, baseType: !969)
!968 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !968, line: 111, size: 32, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !969, file: !968, line: 112, baseType: !206, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !600, line: 770, baseType: !21, size: 32, offset: 352)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !954, file: !600, line: 771, baseType: !21, size: 32, offset: 384)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !954, file: !600, line: 774, baseType: !102, size: 32, offset: 416)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !954, file: !600, line: 775, baseType: !976, size: 128, offset: 448)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !977, line: 58, size: 128, elements: !978)
!977 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!978 = !{!979, !985, !990, !991}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !976, file: !977, line: 59, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !981, line: 60, size: 64, elements: !982)
!981 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!982 = !{!983}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !980, file: !981, line: 61, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !977, line: 60, baseType: !986, size: 32, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !977, line: 60, size: 32, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !986, file: !977, line: 61, baseType: !21, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !986, file: !977, line: 62, baseType: !206, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !976, file: !977, line: 65, baseType: !222, size: 16, offset: 96)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !976, file: !977, line: 65, baseType: !222, size: 16, offset: 112)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !954, file: !600, line: 776, baseType: !21, size: 32, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !954, file: !600, line: 777, baseType: !9, size: 64, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !954, file: !600, line: 778, baseType: !953, size: 64, offset: 704)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !954, file: !600, line: 787, baseType: !102, size: 32, offset: 768)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !954, file: !600, line: 788, baseType: !102, size: 32, offset: 800)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !954, file: !600, line: 790, baseType: !102, size: 32, offset: 832)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !954, file: !600, line: 792, baseType: !102, size: 32, offset: 864)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !954, file: !600, line: 793, baseType: !102, size: 32, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !954, file: !600, line: 794, baseType: !102, size: 32, offset: 928)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !954, file: !600, line: 795, baseType: !21, size: 32, offset: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !954, file: !600, line: 797, baseType: !1003, size: 2048, offset: 1024)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !600, line: 551, size: 2048, elements: !1004)
!1004 = !{!1005, !1010, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1032, !1035, !1036, !1037}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1003, file: !600, line: 553, baseType: !1006, size: 128)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !600, line: 411, size: 128, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1006, file: !600, line: 412, baseType: !9, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1006, file: !600, line: 413, baseType: !399, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1003, file: !600, line: 554, baseType: !1011, size: 192, align: 64, offset: 128)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1012, line: 5, size: 192, align: 64, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1013 = !{!1014, !1015, !1017}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1011, file: !1012, line: 6, baseType: !9, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1011, file: !1012, line: 7, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1011, file: !1012, line: 8, baseType: !1016, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1003, file: !600, line: 555, baseType: !402, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1003, file: !600, line: 556, baseType: !402, size: 64, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1003, file: !600, line: 558, baseType: !155, size: 128, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1003, file: !600, line: 559, baseType: !21, size: 32, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1003, file: !600, line: 561, baseType: !402, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1003, file: !600, line: 562, baseType: !402, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1003, file: !600, line: 563, baseType: !402, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1003, file: !600, line: 564, baseType: !402, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1003, file: !600, line: 565, baseType: !635, size: 64, offset: 896)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1003, file: !600, line: 566, baseType: !402, size: 64, offset: 960)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1003, file: !600, line: 568, baseType: !402, size: 64, offset: 1024)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1003, file: !600, line: 571, baseType: !102, size: 32, offset: 1088)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1003, file: !600, line: 572, baseType: !1031, size: 64, offset: 1152)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1003, file: !600, line: 574, baseType: !1033, size: 64, offset: 1216)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !600, line: 49, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1003, file: !600, line: 576, baseType: !1033, size: 64, offset: 1280)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1003, file: !600, line: 578, baseType: !9, size: 64, offset: 1344)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1003, file: !600, line: 588, baseType: !1038, size: 512, align: 512, offset: 1536)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !600, line: 497, size: 512, align: 512, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1038, file: !600, line: 498, baseType: !402, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1038, file: !600, line: 499, baseType: !402, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1038, file: !600, line: 500, baseType: !402, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1038, file: !600, line: 501, baseType: !399, size: 32, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1038, file: !600, line: 502, baseType: !399, size: 32, offset: 224)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1038, file: !600, line: 503, baseType: !9, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1038, file: !600, line: 504, baseType: !9, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1038, file: !600, line: 505, baseType: !9, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1038, file: !600, line: 506, baseType: !1049, size: 64, align: 64, offset: 448)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !600, line: 445, size: 64, align: 64, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1049, file: !600, line: 446, baseType: !21, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1049, file: !600, line: 447, baseType: !21, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !954, file: !600, line: 798, baseType: !1054, size: 384, offset: 3072)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !600, line: 592, size: 384, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1054, file: !600, line: 593, baseType: !155, size: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1054, file: !600, line: 594, baseType: !9, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1054, file: !600, line: 595, baseType: !9, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1054, file: !600, line: 596, baseType: !21, size: 32, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1054, file: !600, line: 597, baseType: !138, size: 16, offset: 288)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1054, file: !600, line: 598, baseType: !138, size: 16, offset: 304)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1054, file: !600, line: 600, baseType: !1063, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !954, file: !600, line: 799, baseType: !1065, size: 1792, offset: 3456)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !600, line: 610, size: 1792, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1156, !1157}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1065, file: !600, line: 611, baseType: !1011, size: 192, align: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1065, file: !600, line: 618, baseType: !402, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1065, file: !600, line: 619, baseType: !402, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1065, file: !600, line: 620, baseType: !402, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1065, file: !600, line: 621, baseType: !402, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1065, file: !600, line: 622, baseType: !402, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1065, file: !600, line: 629, baseType: !635, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1065, file: !600, line: 630, baseType: !402, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !600, line: 631, baseType: !21, size: 32, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1065, file: !600, line: 653, baseType: !21, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1065, file: !600, line: 654, baseType: !21, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1065, file: !600, line: 655, baseType: !21, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1065, file: !600, line: 656, baseType: !21, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1065, file: !600, line: 662, baseType: !1081, size: 512, offset: 704)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1082)
!1082 = !{!1083, !1091, !1092, !1097, !1152, !1153, !1154, !1155}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1081, file: !39, line: 119, baseType: !1084, size: 256)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1085, line: 9, size: 256, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1084, file: !1085, line: 10, baseType: !1011, size: 192, align: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1084, file: !1085, line: 11, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1090, line: 29, baseType: !635)
!1090 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1081, file: !39, line: 120, baseType: !1089, size: 64, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1081, file: !39, line: 121, baseType: !1093, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!38, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1081, file: !39, line: 122, baseType: !1098, size: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1100)
!1100 = !{!1101, !1126, !1127, !1130, !1135, !1136, !1147, !1151}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1099, file: !39, line: 160, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1103, file: !39, line: 216, baseType: !638, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1103, file: !39, line: 217, baseType: !21, size: 32, offset: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1103, file: !39, line: 218, baseType: !21, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1103, file: !39, line: 219, baseType: !21, size: 32, offset: 96)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1103, file: !39, line: 220, baseType: !21, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1103, file: !39, line: 221, baseType: !21, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1103, file: !39, line: 222, baseType: !21, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1103, file: !39, line: 223, baseType: !21, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1103, file: !39, line: 224, baseType: !21, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1103, file: !39, line: 226, baseType: !21, size: 32, offset: 160)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1103, file: !39, line: 227, baseType: !138, size: 16, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1103, file: !39, line: 228, baseType: !138, size: 16, offset: 208)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1103, file: !39, line: 229, baseType: !21, size: 32, offset: 224)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1103, file: !39, line: 235, baseType: !1089, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1103, file: !39, line: 236, baseType: !1096, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1103, file: !39, line: 237, baseType: !1089, size: 64, offset: 384)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1103, file: !39, line: 238, baseType: !1096, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1103, file: !39, line: 239, baseType: !1123, size: 4096, align: 512, offset: 512)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1099, size: 4096, align: 512, elements: !1124)
!1124 = !{!1125}
!1125 = !DISubrange(count: 8)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1099, file: !39, line: 161, baseType: !21, size: 32, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1099, file: !39, line: 162, baseType: !1128, size: 32, offset: 96)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !156, line: 32, baseType: !1129)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !285, line: 96, baseType: !102)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1099, file: !39, line: 163, baseType: !1131, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !372, line: 274, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !372, line: 274, size: 32, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1132, file: !372, line: 274, baseType: !376, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1099, file: !39, line: 164, baseType: !1096, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1099, file: !39, line: 165, baseType: !1137, size: 128, offset: 256)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1085, line: 14, size: 128, elements: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1137, file: !1085, line: 15, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1012, line: 26, size: 128, elements: !1141)
!1141 = !{!1142, !1146}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1140, file: !1012, line: 27, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1012, line: 12, size: 64, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1143, file: !1012, line: 13, baseType: !1016, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1140, file: !1012, line: 28, baseType: !1016, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1099, file: !39, line: 166, baseType: !1148, size: 64, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1089}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1099, file: !39, line: 167, baseType: !1089, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1081, file: !39, line: 123, baseType: !214, size: 8, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1081, file: !39, line: 124, baseType: !214, size: 8, offset: 456)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1081, file: !39, line: 125, baseType: !214, size: 8, offset: 464)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1081, file: !39, line: 126, baseType: !214, size: 8, offset: 472)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1065, file: !600, line: 671, baseType: !1081, size: 512, offset: 1216)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1065, file: !600, line: 679, baseType: !1158, size: 64, offset: 1728)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !954, file: !600, line: 800, baseType: !1160, size: 64, offset: 5248)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !600, line: 800, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !954, file: !600, line: 809, baseType: !1164, size: 64, offset: 5312)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !600, line: 70, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !954, file: !600, line: 825, baseType: !1167, size: 2048, align: 512, offset: 5632)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !600, line: 509, size: 2048, align: 512, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1167, file: !600, line: 511, baseType: !402, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1167, file: !600, line: 512, baseType: !402, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1167, file: !600, line: 513, baseType: !402, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1167, file: !600, line: 514, baseType: !402, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1167, file: !600, line: 515, baseType: !402, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1167, file: !600, line: 516, baseType: !402, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1167, file: !600, line: 518, baseType: !402, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1167, file: !600, line: 519, baseType: !402, size: 64, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1167, file: !600, line: 520, baseType: !635, size: 64, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1167, file: !600, line: 522, baseType: !402, size: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1167, file: !600, line: 523, baseType: !402, size: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1167, file: !600, line: 524, baseType: !635, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1167, file: !600, line: 526, baseType: !635, size: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1167, file: !600, line: 527, baseType: !402, size: 64, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1167, file: !600, line: 529, baseType: !402, size: 64, offset: 896)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1167, file: !600, line: 530, baseType: !402, size: 64, offset: 960)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1167, file: !600, line: 531, baseType: !402, size: 64, offset: 1024)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1167, file: !600, line: 532, baseType: !402, size: 64, offset: 1088)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1167, file: !600, line: 533, baseType: !402, size: 64, offset: 1152)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1167, file: !600, line: 535, baseType: !402, size: 64, offset: 1216)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1167, file: !600, line: 536, baseType: !402, size: 64, offset: 1280)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1167, file: !600, line: 537, baseType: !402, size: 64, offset: 1344)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1167, file: !600, line: 538, baseType: !402, size: 64, offset: 1408)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1167, file: !600, line: 539, baseType: !402, size: 64, offset: 1472)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1167, file: !600, line: 540, baseType: !402, size: 64, offset: 1536)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1167, file: !600, line: 541, baseType: !402, size: 64, offset: 1600)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1167, file: !600, line: 542, baseType: !402, size: 64, offset: 1664)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1167, file: !600, line: 543, baseType: !402, size: 64, offset: 1728)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !954, file: !600, line: 833, baseType: !21, size: 32, offset: 7680)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !954, file: !600, line: 836, baseType: !21, size: 32, offset: 7712)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !954, file: !600, line: 837, baseType: !102, size: 32, offset: 7744)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !954, file: !600, line: 838, baseType: !1201, size: 64, offset: 7808)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1204, line: 19, baseType: !1205)
!1204 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1204, line: 19, size: 64, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1205, file: !1204, line: 19, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 1)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !954, file: !600, line: 839, baseType: !1212, size: 64, offset: 7872)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !954, file: !600, line: 840, baseType: !1203, size: 64, offset: 7936)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !954, file: !600, line: 841, baseType: !119, size: 64, offset: 8000)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !954, file: !600, line: 843, baseType: !138, size: 16, offset: 8064)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !954, file: !600, line: 845, baseType: !138, size: 16, offset: 8080)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !954, file: !600, line: 848, baseType: !102, size: 32, offset: 8096)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !954, file: !600, line: 849, baseType: !1219, size: 32, offset: 8128)
!1219 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !600, line: 718, size: 32, elements: !1220)
!1220 = !{!1221, !1228}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1219, file: !600, line: 724, baseType: !1222, size: 32)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !600, line: 719, size: 32, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1222, file: !600, line: 720, baseType: !214, size: 8)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1222, file: !600, line: 721, baseType: !214, size: 8, offset: 8)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1222, file: !600, line: 722, baseType: !214, size: 8, offset: 16)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1222, file: !600, line: 723, baseType: !214, size: 8, offset: 24)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1219, file: !600, line: 725, baseType: !399, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !954, file: !600, line: 850, baseType: !155, size: 128, offset: 8192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !954, file: !600, line: 851, baseType: !1231, size: 64, offset: 8320)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !600, line: 60, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !954, file: !600, line: 855, baseType: !9, size: 64, offset: 8384)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !954, file: !600, line: 856, baseType: !214, size: 8, offset: 8448)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !954, file: !600, line: 857, baseType: !214, size: 8, offset: 8456)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !954, file: !600, line: 858, baseType: !102, size: 32, offset: 8480)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !954, file: !600, line: 859, baseType: !155, size: 128, offset: 8512)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !954, file: !600, line: 860, baseType: !102, size: 32, offset: 8640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !954, file: !600, line: 861, baseType: !155, size: 128, offset: 8704)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !954, file: !600, line: 873, baseType: !1241, size: 256, offset: 8832)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !600, line: 376, size: 256, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1241, file: !600, line: 381, baseType: !9, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1241, file: !600, line: 384, baseType: !142, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1241, file: !600, line: 389, baseType: !142, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1241, file: !600, line: 392, baseType: !142, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !954, file: !600, line: 875, baseType: !155, size: 128, offset: 9088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !954, file: !600, line: 877, baseType: !1249, size: 320, offset: 9216)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1250, line: 86, size: 320, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1249, file: !1250, line: 87, baseType: !102, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1249, file: !1250, line: 88, baseType: !155, size: 128, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1249, file: !1250, line: 89, baseType: !155, size: 128, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !954, file: !600, line: 878, baseType: !1011, size: 192, align: 64, offset: 9536)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !954, file: !600, line: 881, baseType: !1257, size: 64, offset: 9728)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !1259)
!1259 = !{!1260, !2163}
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !52, line: 734, baseType: !1261, size: 10240)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1258, file: !52, line: 734, size: 10240, elements: !1262)
!1262 = !{!1263, !1267, !1280, !2027, !2028, !2029, !2030, !2031, !2032, !2039, !2040, !2041, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2080, !2082, !2085, !2132, !2133, !2134, !2137, !2138, !2139, !2142, !2143, !2144, !2150, !2151}
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1261, file: !52, line: 739, baseType: !1264, size: 512, align: 512)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1261, file: !52, line: 739, size: 512, align: 512, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1264, file: !52, line: 747, baseType: !206, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1261, file: !52, line: 750, baseType: !1268, size: 128, offset: 512)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1269, line: 218, size: 128, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1270 = !{!1271, !1278, !1279}
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !1269, line: 219, baseType: !1272, size: 32)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1268, file: !1269, line: 219, size: 32, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1272, file: !1269, line: 220, baseType: !186, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1272, file: !1269, line: 221, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1269, line: 197, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1269, line: 197, elements: !529)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1268, file: !1269, line: 223, baseType: !21, size: 32, offset: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1268, file: !1269, line: 224, baseType: !119, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1261, file: !52, line: 752, baseType: !1281, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!9, !1284, !9, !9, !9, !9}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1286)
!1286 = !{!1287, !1293, !1294, !1296, !1297, !1298, !1299, !1300, !1352, !1547, !1556, !1557, !1558, !2017, !2018, !2019, !2020, !2022, !2023, !2026}
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !28, line: 995, baseType: !1288, size: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !28, line: 995, size: 128, elements: !1289)
!1289 = !{!1290, !1291, !1292}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1288, file: !28, line: 996, baseType: !980, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1288, file: !28, line: 997, baseType: !938, size: 128, align: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1288, file: !28, line: 998, baseType: !21, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1285, file: !28, line: 1005, baseType: !186, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1285, file: !28, line: 1006, baseType: !1295, size: 32, offset: 160)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !156, line: 156, baseType: !21)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1285, file: !28, line: 1007, baseType: !629, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1285, file: !28, line: 1008, baseType: !625, size: 256, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1285, file: !28, line: 1009, baseType: !486, size: 64, offset: 512)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1285, file: !28, line: 1010, baseType: !21, size: 32, offset: 576)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1285, file: !28, line: 1011, baseType: !1301, size: 256, offset: 640)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1302)
!1302 = !{!1303, !1324, !1348, !1349, !1350, !1351}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1301, file: !28, line: 949, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1305, line: 34, baseType: !1306)
!1305 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1305, line: 25, size: 64, elements: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1306, file: !1305, line: 26, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1310, line: 27, baseType: !1311)
!1310 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1310, line: 13, size: 64, elements: !1312)
!1312 = !{!1313, !1323}
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1311, file: !1310, line: 14, baseType: !1314, size: 32)
!1314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !1310, line: 14, size: 32, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1314, file: !1310, line: 15, baseType: !206, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1314, file: !1310, line: 16, baseType: !1318, size: 32)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1314, file: !1310, line: 16, size: 32, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1318, file: !1310, line: 18, baseType: !214, size: 8)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1318, file: !1310, line: 19, baseType: !1322, size: 24, offset: 8)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 24, elements: !252)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1311, file: !1310, line: 26, baseType: !198, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1301, file: !28, line: 950, baseType: !1325, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !44, line: 59, size: 768, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1335, !1336, !1337, !1338}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1326, file: !44, line: 61, baseType: !967, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1326, file: !44, line: 62, baseType: !21, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !44, line: 63, baseType: !186, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1326, file: !44, line: 65, baseType: !1332, size: 256, offset: 128)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 256, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 4)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1326, file: !44, line: 66, baseType: !517, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1326, file: !44, line: 68, baseType: !931, size: 192, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1326, file: !44, line: 69, baseType: !938, size: 128, align: 64, offset: 640)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1326, file: !44, line: 70, baseType: !1339, offset: 768)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1340, elements: !1346)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !44, line: 54, size: 128, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1340, file: !44, line: 55, baseType: !102, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1340, file: !44, line: 56, baseType: !1344, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !44, line: 56, flags: DIFlagFwdDecl)
!1346 = !{!1347}
!1347 = !DISubrange(count: -1)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1301, file: !28, line: 951, baseType: !43, size: 32, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1301, file: !28, line: 952, baseType: !336, size: 32, offset: 160)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1301, file: !28, line: 952, baseType: !336, size: 32, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1301, file: !28, line: 953, baseType: !102, size: 32, offset: 224)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1285, file: !28, line: 1012, baseType: !1353, size: 64, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1356, line: 110, size: 1472, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1374, !1375, !1376, !1377, !1378, !1379, !1492, !1493, !1494, !1495, !1496, !1527, !1530, !1534, !1542}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1355, file: !1356, line: 111, baseType: !629, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1355, file: !1356, line: 112, baseType: !336, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1355, file: !1356, line: 113, baseType: !345, size: 32, offset: 96)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1355, file: !1356, line: 114, baseType: !336, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1355, file: !1356, line: 115, baseType: !345, size: 32, offset: 160)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1355, file: !1356, line: 116, baseType: !336, size: 32, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1355, file: !1356, line: 117, baseType: !345, size: 32, offset: 224)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1355, file: !1356, line: 118, baseType: !336, size: 32, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1355, file: !1356, line: 119, baseType: !345, size: 32, offset: 288)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1355, file: !1356, line: 120, baseType: !21, size: 32, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1355, file: !1356, line: 121, baseType: !1369, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1370, line: 24, baseType: !1371)
!1370 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1370, line: 24, size: 64, elements: !1372)
!1372 = !{!1373}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1371, file: !1370, line: 24, baseType: !402, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1355, file: !1356, line: 122, baseType: !1369, size: 64, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1355, file: !1356, line: 123, baseType: !1369, size: 64, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1355, file: !1356, line: 124, baseType: !1369, size: 64, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1355, file: !1356, line: 125, baseType: !1369, size: 64, offset: 640)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1355, file: !1356, line: 127, baseType: !16, size: 8, offset: 704)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1355, file: !1356, line: 129, baseType: !1380, size: 64, offset: 768)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1382, line: 195, size: 1728, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1383 = !{!1384, !1385, !1390, !1395, !1396, !1399, !1400, !1405, !1406, !1407, !1408, !1411, !1412, !1413, !1415, !1416, !1456, !1477}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1381, file: !1382, line: 196, baseType: !967, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1381, file: !1382, line: 197, baseType: !1386, size: 32, offset: 32)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1382, line: 28, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !156, line: 104, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !215, line: 20, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !132, line: 26, baseType: !102)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1382, line: 198, baseType: !1391, size: 192, offset: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !1382, line: 198, size: 192, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1391, file: !1382, line: 199, baseType: !155, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1391, file: !1382, line: 200, baseType: !1011, size: 192, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1381, file: !1382, line: 205, baseType: !838, size: 320, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1381, file: !1382, line: 206, baseType: !1397, size: 64, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1382, line: 206, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1381, file: !1382, line: 207, baseType: !119, size: 64, offset: 640)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1382, line: 208, baseType: !1401, size: 64, offset: 704)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !1382, line: 208, size: 64, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1401, file: !1382, line: 209, baseType: !678, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1401, file: !1382, line: 210, baseType: !678, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1381, file: !1382, line: 212, baseType: !678, size: 64, offset: 768)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1381, file: !1382, line: 213, baseType: !336, size: 32, offset: 832)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1381, file: !1382, line: 214, baseType: !345, size: 32, offset: 864)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1381, file: !1382, line: 215, baseType: !1409, size: 32, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1382, line: 31, baseType: !1410)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !156, line: 110, baseType: !399)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1381, file: !1382, line: 216, baseType: !138, size: 16, offset: 928)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1381, file: !1382, line: 217, baseType: !138, size: 16, offset: 944)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1381, file: !1382, line: 221, baseType: !1414, size: 16, offset: 960)
!1414 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !1382, line: 228, baseType: !9, size: 64, offset: 1024)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1382, line: 245, baseType: !1417, size: 320, offset: 1088)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !1382, line: 245, size: 320, elements: !1418)
!1418 = !{!1419, !1448}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1417, file: !1382, line: 246, baseType: !1420, size: 320)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1382, line: 114, size: 320, elements: !1421)
!1421 = !{!1422, !1423, !1435, !1438, !1447}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1420, file: !1382, line: 116, baseType: !9, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !1382, line: 117, baseType: !1424, size: 64, offset: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !1382, line: 117, size: 64, elements: !1425)
!1425 = !{!1426, !1434}
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !1382, line: 118, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1382, line: 118, size: 64, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1427, file: !1382, line: 120, baseType: !222, size: 16)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1427, file: !1382, line: 121, baseType: !1431, size: 48, offset: 16)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 48, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 6)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1424, file: !1382, line: 127, baseType: !9, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1420, file: !1382, line: 129, baseType: !1436, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1382, line: 102, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1420, file: !1382, line: 130, baseType: !1439, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1382, line: 108, size: 192, elements: !1441)
!1441 = !{!1442, !1443, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1440, file: !1382, line: 109, baseType: !938, size: 128, align: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1440, file: !1382, line: 110, baseType: !967, size: 32, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1440, file: !1382, line: 111, baseType: !1445, size: 8, offset: 160)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !156, line: 35, baseType: !1446)
!1446 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1420, file: !1382, line: 131, baseType: !6, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !1382, line: 247, baseType: !1449, size: 320)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !1382, line: 247, size: 320, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1449, file: !1382, line: 248, baseType: !9, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1449, file: !1382, line: 249, baseType: !9, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1449, file: !1382, line: 250, baseType: !1436, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1449, file: !1382, line: 251, baseType: !1439, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1449, file: !1382, line: 252, baseType: !12, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1382, line: 260, baseType: !1457, size: 256, offset: 1408)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !1382, line: 260, size: 256, elements: !1458)
!1458 = !{!1459, !1465}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1457, file: !1382, line: 261, baseType: !1460, size: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1382, line: 134, size: 256, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1460, file: !1382, line: 135, baseType: !119, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1460, file: !1382, line: 136, baseType: !1464, size: 256)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 256, elements: !1333)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1382, line: 262, baseType: !1466, size: 256)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !1382, line: 262, size: 256, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1466, file: !1382, line: 264, baseType: !155, size: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1466, file: !1382, line: 265, baseType: !1470, size: 128, offset: 128)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1471, line: 22, size: 128, elements: !1472)
!1471 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1472 = !{!1473, !1476}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1470, file: !1471, line: 23, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1471, line: 23, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1470, file: !1471, line: 24, baseType: !9, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1381, file: !1382, line: 280, baseType: !1478, size: 64, offset: 1664)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1382, line: 176, size: 192, elements: !1480)
!1480 = !{!1481, !1490, !1491}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1479, file: !1382, line: 177, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1382, line: 171, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!102, !1380, !1486, !1488, !1380}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1479, file: !1382, line: 178, baseType: !1380, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1479, file: !1382, line: 179, baseType: !1436, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1355, file: !1356, line: 130, baseType: !1380, size: 64, offset: 832)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1355, file: !1356, line: 131, baseType: !1380, size: 64, offset: 896)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1355, file: !1356, line: 132, baseType: !1380, size: 64, offset: 960)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1355, file: !1356, line: 135, baseType: !119, size: 64, offset: 1024)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1355, file: !1356, line: 137, baseType: !1497, size: 64, offset: 1088)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1499, line: 14, size: 1088, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1500 = !{!1501, !1502, !1511, !1512, !1513, !1514, !1515, !1516}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1498, file: !1499, line: 15, baseType: !967, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1498, file: !1499, line: 17, baseType: !1503, size: 320, offset: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1504, line: 22, size: 320, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1505 = !{!1506, !1507, !1508, !1509}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1503, file: !1504, line: 23, baseType: !638, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1503, file: !1504, line: 24, baseType: !635, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1503, file: !1504, line: 26, baseType: !155, size: 128, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1503, file: !1504, line: 28, baseType: !1510, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1498, file: !1499, line: 19, baseType: !9, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1498, file: !1499, line: 20, baseType: !629, size: 64, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1498, file: !1499, line: 23, baseType: !521, size: 128, offset: 512)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1498, file: !1499, line: 24, baseType: !336, size: 32, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1498, file: !1499, line: 29, baseType: !629, size: 64, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1498, file: !1499, line: 36, baseType: !1517, size: 320, offset: 768)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1518, line: 15, size: 320, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1517, file: !1518, line: 16, baseType: !638, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1517, file: !1518, line: 18, baseType: !102, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1517, file: !1518, line: 19, baseType: !102, size: 32, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1517, file: !1518, line: 20, baseType: !102, size: 32, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1517, file: !1518, line: 21, baseType: !102, size: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1517, file: !1518, line: 22, baseType: !9, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1517, file: !1518, line: 23, baseType: !9, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1355, file: !1356, line: 138, baseType: !1528, size: 64, offset: 1152)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !337, line: 18, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1355, file: !1356, line: 139, baseType: !1531, size: 64, offset: 1216)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1533, line: 16, flags: DIFlagFwdDecl)
!1533 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1355, file: !1356, line: 140, baseType: !1535, size: 64, offset: 1280)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1356, line: 25, size: 64, elements: !1537)
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1536, file: !1356, line: 26, baseType: !206, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1536, file: !1356, line: 27, baseType: !102, size: 32, offset: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1536, file: !1356, line: 28, baseType: !1541, offset: 64)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, elements: !1346)
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1355, file: !1356, line: 142, baseType: !1543, size: 128, offset: 1344)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1355, file: !1356, line: 142, size: 128, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1543, file: !1356, line: 143, baseType: !102, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1543, file: !1356, line: 144, baseType: !938, size: 128, align: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1285, file: !28, line: 1013, baseType: !1548, size: 256, offset: 960)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1548, file: !28, line: 971, baseType: !9, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1548, file: !28, line: 972, baseType: !21, size: 32, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1548, file: !28, line: 973, baseType: !21, size: 32, offset: 96)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1548, file: !28, line: 974, baseType: !21, size: 32, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1548, file: !28, line: 975, baseType: !21, size: 32, offset: 160)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1548, file: !28, line: 976, baseType: !486, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1285, file: !28, line: 1014, baseType: !750, size: 128, offset: 1216)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1285, file: !28, line: 1015, baseType: !330, size: 64, offset: 1344)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1285, file: !28, line: 1016, baseType: !1559, size: 64, offset: 1408)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !1562)
!1562 = !{!1563, !1564, !1568, !1573, !1577, !1605, !1606, !1612, !1625, !1633, !1637, !1638, !1939, !1940, !1944, !1949, !1950, !1954, !1958, !1964, !1965, !1969, !1970, !1976, !1980, !1984, !1990, !1994, !1998, !2002, !2006, !2007, !2013}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1561, file: !28, line: 1915, baseType: !160, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1561, file: !28, line: 1916, baseType: !1565, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!486, !1284, !486, !102}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1561, file: !28, line: 1917, baseType: !1569, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!283, !1284, !12, !298, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1561, file: !28, line: 1918, baseType: !1574, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!283, !1284, !6, !298, !1572}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1561, file: !28, line: 1919, baseType: !1578, size: 64, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!283, !1581, !1603}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1590, !1591, !1592, !1593}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1582, file: !28, line: 374, baseType: !1284, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1582, file: !28, line: 375, baseType: !486, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1582, file: !28, line: 376, baseType: !1587, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1581, !287}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1582, file: !28, line: 377, baseType: !119, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1582, file: !28, line: 378, baseType: !102, size: 32, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1582, file: !28, line: 379, baseType: !222, size: 16, offset: 288)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !28, line: 380, baseType: !1594, size: 64, offset: 320)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !28, line: 380, size: 64, elements: !1595)
!1595 = !{!1596, !1599}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1594, file: !28, line: 386, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1594, file: !28, line: 395, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!283, !119}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !28, line: 69, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1561, file: !28, line: 1920, baseType: !1578, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1561, file: !28, line: 1921, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!102, !1581, !1610, !21}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1561, file: !28, line: 1923, baseType: !1613, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!102, !1284, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !1618)
!1618 = !{!1619, !1624}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1617, file: !28, line: 1859, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1445, !1616, !6, !102, !486, !402, !21}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1617, file: !28, line: 1860, baseType: !486, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1561, file: !28, line: 1924, baseType: !1626, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1629, !1284, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1630, line: 59, baseType: !21)
!1630 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !501, line: 31, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1561, file: !28, line: 1925, baseType: !1634, size: 64, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!287, !1284, !21, !9}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1561, file: !28, line: 1926, baseType: !1634, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1561, file: !28, line: 1927, baseType: !1639, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!102, !1284, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !1644)
!1644 = !{!1645, !1654, !1655, !1663, !1670, !1671, !1676, !1677, !1682, !1683, !1686, !1932, !1933, !1934, !1935, !1936, !1937}
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !52, line: 628, baseType: !1646, size: 128)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !52, line: 628, size: 128, elements: !1647)
!1647 = !{!1648, !1653}
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !52, line: 629, baseType: !1649, size: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !52, line: 629, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1649, file: !52, line: 631, baseType: !9, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1649, file: !52, line: 632, baseType: !9, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1646, file: !52, line: 635, baseType: !938, size: 128, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1643, file: !52, line: 639, baseType: !1257, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1643, file: !52, line: 640, baseType: !1656, size: 64, offset: 192)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1657, line: 297, baseType: !1658)
!1657 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1657, line: 297, size: 64, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1658, file: !1657, line: 297, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1662, line: 19, baseType: !9)
!1662 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !52, line: 646, baseType: !1664, size: 64, offset: 256)
!1664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !52, line: 646, size: 64, elements: !1665)
!1665 = !{!1666, !1669}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1664, file: !52, line: 647, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !9)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1664, file: !52, line: 648, baseType: !1668, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1643, file: !52, line: 666, baseType: !102, size: 32, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1643, file: !52, line: 667, baseType: !1672, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !52, line: 580, baseType: !838, size: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1643, file: !52, line: 670, baseType: !1445, size: 8, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1643, file: !52, line: 681, baseType: !1678, size: 256, offset: 512)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !52, line: 678, size: 256, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1678, file: !52, line: 679, baseType: !1011, size: 192, align: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1678, file: !52, line: 680, baseType: !9, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1643, file: !52, line: 689, baseType: !155, size: 128, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1643, file: !52, line: 691, baseType: !1684, size: 64, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1643, file: !52, line: 694, baseType: !1687, size: 64, offset: 960)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1690, line: 563, size: 1024, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1691 = !{!1692, !1696, !1697, !1701, !1705, !1709, !1896, !1900, !1904, !1908, !1909, !1910, !1914, !1918, !1924, !1928}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1689, file: !1690, line: 564, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1642}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1689, file: !1690, line: 569, baseType: !1693, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1689, file: !1690, line: 571, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!102, !1642, !9}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1689, file: !1690, line: 572, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!102, !1642}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1689, file: !1690, line: 578, baseType: !1706, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!102, !1642, !9, !9, !9}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1689, file: !1690, line: 580, baseType: !1710, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !21)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1690, line: 512, size: 896, elements: !1716)
!1716 = !{!1717, !1725, !1726, !1733, !1740, !1750, !1889, !1890, !1892, !1894}
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !1690, line: 513, baseType: !1718, size: 320)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1715, file: !1690, line: 513, size: 320, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1724}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1718, file: !1690, line: 514, baseType: !1642, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1718, file: !1690, line: 515, baseType: !690, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1718, file: !1690, line: 516, baseType: !9, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1718, file: !1690, line: 517, baseType: !9, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1718, file: !1690, line: 518, baseType: !9, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1715, file: !1690, line: 520, baseType: !51, size: 32, offset: 320)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1715, file: !1690, line: 522, baseType: !1727, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1662, line: 22, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1662, line: 22, size: 64, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1729, file: !1662, line: 22, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1662, line: 15, baseType: !9)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1715, file: !1690, line: 524, baseType: !1734, size: 64, offset: 448)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1657, line: 372, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1657, line: 372, size: 64, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1736, file: !1657, line: 372, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1662, line: 16, baseType: !9)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !1690, line: 527, baseType: !1741, size: 64, offset: 512)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !1690, line: 527, size: 64, elements: !1742)
!1742 = !{!1743, !1749}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1741, file: !1690, line: 528, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1662, line: 21, baseType: !1745)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1662, line: 21, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1745, file: !1662, line: 21, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1662, line: 14, baseType: !9)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1741, file: !1690, line: 529, baseType: !1728, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1715, file: !1690, line: 534, baseType: !1751, size: 64, offset: 576)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !1753)
!1753 = !{!1754, !1755, !1883, !1888}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1752, file: !52, line: 75, baseType: !9, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !52, line: 83, baseType: !1756, size: 320, offset: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !52, line: 83, size: 320, elements: !1757)
!1757 = !{!1758, !1779, !1793, !1797, !1882}
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !52, line: 84, baseType: !1759, size: 320)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1756, file: !52, line: 84, size: 320, elements: !1760)
!1760 = !{!1761, !1772, !1773, !1778}
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !52, line: 90, baseType: !1762, size: 128)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !52, line: 90, size: 128, elements: !1763)
!1763 = !{!1764, !1765, !1770, !1771}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1762, file: !52, line: 91, baseType: !155, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !52, line: 94, baseType: !1766, size: 128)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !52, line: 94, size: 128, elements: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1766, file: !52, line: 96, baseType: !119, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1766, file: !52, line: 98, baseType: !21, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1762, file: !52, line: 102, baseType: !155, size: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1762, file: !52, line: 103, baseType: !155, size: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1759, file: !52, line: 106, baseType: !326, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !52, line: 107, baseType: !1774, size: 64, offset: 192)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !52, line: 107, size: 64, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1774, file: !52, line: 108, baseType: !9, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1774, file: !52, line: 109, baseType: !9, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1759, file: !52, line: 117, baseType: !9, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !52, line: 119, baseType: !1780, size: 320)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1756, file: !52, line: 119, size: 320, elements: !1781)
!1781 = !{!1782, !1783, !1786, !1787, !1788}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1780, file: !52, line: 124, baseType: !9, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1780, file: !52, line: 125, baseType: !1784, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1780, file: !52, line: 126, baseType: !9, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1780, file: !52, line: 127, baseType: !9, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !52, line: 128, baseType: !1789, size: 64, offset: 256)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !52, line: 128, size: 64, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1789, file: !52, line: 133, baseType: !9, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1789, file: !52, line: 138, baseType: !629, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !52, line: 141, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1756, file: !52, line: 141, size: 64, elements: !1795)
!1795 = !{!1796}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1794, file: !52, line: 142, baseType: !9, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !52, line: 144, baseType: !1798, size: 128)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1756, file: !52, line: 144, size: 128, elements: !1799)
!1799 = !{!1800, !1881}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1798, file: !52, line: 146, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !68, line: 126, size: 1216, elements: !1803)
!1803 = !{!1804, !1814, !1835, !1846, !1847, !1848, !1849, !1863, !1864, !1865}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1802, file: !68, line: 127, baseType: !1805, size: 384)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !68, line: 21, size: 384, elements: !1806)
!1806 = !{!1807, !1808, !1810, !1811, !1812, !1813}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1805, file: !68, line: 22, baseType: !9, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1805, file: !68, line: 23, baseType: !1809, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1805, file: !68, line: 24, baseType: !1809, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1805, file: !68, line: 25, baseType: !9, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1805, file: !68, line: 26, baseType: !9, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1805, file: !68, line: 27, baseType: !9, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1802, file: !68, line: 128, baseType: !1815, size: 128, offset: 384)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1816, line: 105, size: 128, elements: !1817)
!1816 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1815, file: !1816, line: 110, baseType: !9, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1815, file: !1816, line: 118, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1816, line: 95, size: 448, elements: !1822)
!1822 = !{!1823, !1824, !1830, !1831, !1832, !1833, !1834}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1821, file: !1816, line: 96, baseType: !629, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1821, file: !1816, line: 97, baseType: !1825, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1816, line: 60, baseType: !1827)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1821, file: !1816, line: 98, baseType: !1825, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1821, file: !1816, line: 99, baseType: !1445, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1821, file: !1816, line: 100, baseType: !1445, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1821, file: !1816, line: 101, baseType: !938, size: 128, align: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1821, file: !1816, line: 102, baseType: !1829, size: 64, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1802, file: !68, line: 129, baseType: !1836, size: 256, offset: 512)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1837, line: 26, size: 256, elements: !1838)
!1837 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1836, file: !1837, line: 27, baseType: !21, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1836, file: !1837, line: 28, baseType: !1841, size: 192, offset: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1842, line: 43, size: 192, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1841, file: !1842, line: 44, baseType: !638, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1841, file: !1842, line: 45, baseType: !155, size: 128, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1802, file: !68, line: 130, baseType: !67, size: 32, offset: 768)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1802, file: !68, line: 131, baseType: !21, size: 32, offset: 800)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1802, file: !68, line: 132, baseType: !9, size: 64, offset: 832)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1802, file: !68, line: 133, baseType: !1850, size: 64, offset: 896)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !68, line: 77, size: 192, elements: !1853)
!1853 = !{!1854, !1858, !1859}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1852, file: !68, line: 83, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1751}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1852, file: !68, line: 89, baseType: !1710, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1852, file: !68, line: 100, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!102, !1801, !9, !9, !102}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1802, file: !68, line: 134, baseType: !119, size: 64, offset: 960)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1802, file: !68, line: 135, baseType: !102, size: 32, offset: 1024)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !68, line: 136, baseType: !1866, size: 128, offset: 1088)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !68, line: 136, size: 128, elements: !1867)
!1867 = !{!1868, !1874}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1866, file: !68, line: 137, baseType: !1869, size: 128)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1870, line: 6, size: 128, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1869, file: !1870, line: 7, baseType: !402, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1869, file: !1870, line: 8, baseType: !402, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !68, line: 138, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !68, line: 138, elements: !1876)
!1876 = !{!1877, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1875, file: !68, line: 138, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !68, line: 138, elements: !529)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1875, file: !68, line: 138, baseType: !1880)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1869, elements: !1346)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1798, file: !52, line: 147, baseType: !119, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1756, file: !52, line: 161, baseType: !938, size: 128, align: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !52, line: 164, baseType: !1884, size: 32, offset: 384)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !52, line: 164, size: 32, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1884, file: !52, line: 169, baseType: !206, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1884, file: !52, line: 177, baseType: !21, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1752, file: !52, line: 181, baseType: !206, size: 32, offset: 416)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1715, file: !1690, line: 535, baseType: !1751, size: 64, offset: 640)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1715, file: !1690, line: 541, baseType: !1891, size: 64, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1715, file: !1690, line: 545, baseType: !1893, size: 64, offset: 768)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1715, file: !1690, line: 549, baseType: !1895, size: 64, offset: 832)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1657, line: 520, baseType: !1751)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1689, file: !1690, line: 581, baseType: !1897, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!1713, !1714, !21}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1689, file: !1690, line: 582, baseType: !1901, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1713, !1714, !9, !9}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1689, file: !1690, line: 584, baseType: !1905, size: 64, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!9, !1642}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1689, file: !1690, line: 588, baseType: !1710, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1689, file: !1690, line: 591, baseType: !1710, size: 64, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1689, file: !1690, line: 597, baseType: !1911, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!102, !1642, !9, !119, !102, !102}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1689, file: !1690, line: 603, baseType: !1915, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!6, !1642}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1689, file: !1690, line: 613, baseType: !1919, size: 64, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!102, !1642, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1689, file: !1690, line: 625, baseType: !1925, size: 64, offset: 896)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1922, !1642, !9}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1689, file: !1690, line: 633, baseType: !1929, size: 64, offset: 960)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1751, !1642, !9}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1643, file: !52, line: 697, baseType: !9, size: 64, offset: 1024)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1643, file: !52, line: 699, baseType: !1284, size: 64, offset: 1088)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1643, file: !52, line: 700, baseType: !119, size: 64, offset: 1152)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1643, file: !52, line: 711, baseType: !629, size: 64, offset: 1216)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1643, file: !52, line: 717, baseType: !1922, size: 64, offset: 1280)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1643, file: !52, line: 722, baseType: !1938, offset: 1344)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !529)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1561, file: !28, line: 1928, baseType: !9, size: 64, offset: 768)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1561, file: !28, line: 1929, baseType: !1941, size: 64, offset: 832)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!102, !330, !1284}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1561, file: !28, line: 1930, baseType: !1945, size: 64, offset: 896)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!102, !1284, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !119)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1561, file: !28, line: 1931, baseType: !1941, size: 64, offset: 960)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1561, file: !28, line: 1932, baseType: !1951, size: 64, offset: 1024)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!102, !1284, !486, !486, !102}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1561, file: !28, line: 1933, baseType: !1955, size: 64, offset: 1088)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!102, !102, !1284, !102}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1561, file: !28, line: 1934, baseType: !1959, size: 64, offset: 1152)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!102, !1284, !102, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1561, file: !28, line: 1935, baseType: !1281, size: 64, offset: 1216)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1561, file: !28, line: 1936, baseType: !1966, size: 64, offset: 1280)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!102, !102}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1561, file: !28, line: 1937, baseType: !1959, size: 64, offset: 1344)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1561, file: !28, line: 1938, baseType: !1971, size: 64, offset: 1408)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!283, !1974, !1284, !1572, !298, !21}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !600, line: 59, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1561, file: !28, line: 1939, baseType: !1977, size: 64, offset: 1472)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!283, !1284, !1572, !1974, !298, !21}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1561, file: !28, line: 1940, baseType: !1981, size: 64, offset: 1536)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1284}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1561, file: !28, line: 1941, baseType: !1985, size: 64, offset: 1600)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!102, !1284, !102, !1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1561, file: !28, line: 1942, baseType: !1991, size: 64, offset: 1664)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!287, !1284, !102, !486, !486}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1561, file: !28, line: 1944, baseType: !1995, size: 64, offset: 1728)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !598, !1284}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1561, file: !28, line: 1948, baseType: !1999, size: 64, offset: 1792)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!283, !1284, !486, !1284, !486, !298, !21}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1561, file: !28, line: 1950, baseType: !2003, size: 64, offset: 1856)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!486, !1284, !486, !1284, !486, !486, !21}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1561, file: !28, line: 1953, baseType: !1951, size: 64, offset: 1920)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1561, file: !28, line: 1954, baseType: !2008, size: 64, offset: 1984)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!102, !2011, !21}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1561, file: !28, line: 1955, baseType: !2014, size: 64, offset: 2048)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!102, !2011, !1610, !21}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1285, file: !28, line: 1018, baseType: !402, size: 64, offset: 1472)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1285, file: !28, line: 1020, baseType: !119, size: 64, offset: 1536)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1285, file: !28, line: 1023, baseType: !119, size: 64, offset: 1600)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1285, file: !28, line: 1027, baseType: !2021, size: 64, offset: 1664)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1285, file: !28, line: 1029, baseType: !326, size: 64, offset: 1728)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1285, file: !28, line: 1030, baseType: !2024, size: 32, offset: 1792)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2025, line: 8, baseType: !399)
!2025 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1285, file: !28, line: 1031, baseType: !2024, size: 32, offset: 1824)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1261, file: !52, line: 756, baseType: !9, size: 64, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1261, file: !52, line: 757, baseType: !9, size: 64, offset: 768)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1261, file: !52, line: 760, baseType: !9, size: 64, offset: 832)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1261, file: !52, line: 761, baseType: !9, size: 64, offset: 896)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1261, file: !52, line: 763, baseType: !9, size: 64, offset: 960)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1261, file: !52, line: 764, baseType: !2033, size: 64, offset: 1024)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1657, line: 299, baseType: !2035)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1657, line: 299, size: 64, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2035, file: !1657, line: 299, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1662, line: 18, baseType: !9)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1261, file: !52, line: 773, baseType: !206, size: 32, offset: 1088)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1261, file: !52, line: 785, baseType: !206, size: 32, offset: 1120)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1261, file: !52, line: 795, baseType: !2042, size: 64, offset: 1152)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2043, file: !52, line: 727, baseType: !402, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2043, file: !52, line: 728, baseType: !102, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1261, file: !52, line: 801, baseType: !9, size: 64, offset: 1216)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1261, file: !52, line: 804, baseType: !629, size: 64, offset: 1280)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1261, file: !52, line: 806, baseType: !102, size: 32, offset: 1344)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1261, file: !52, line: 808, baseType: !186, size: 32, offset: 1376)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1261, file: !52, line: 823, baseType: !838, size: 320, offset: 1408)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1261, file: !52, line: 825, baseType: !155, size: 128, offset: 1728)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1261, file: !52, line: 845, baseType: !102, size: 32, offset: 1856)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1261, file: !52, line: 849, baseType: !9, size: 64, offset: 1920)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1261, file: !52, line: 850, baseType: !9, size: 64, offset: 1984)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1261, file: !52, line: 852, baseType: !9, size: 64, offset: 2048)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1261, file: !52, line: 853, baseType: !9, size: 64, offset: 2112)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1261, file: !52, line: 854, baseType: !631, size: 64, offset: 2176)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1261, file: !52, line: 855, baseType: !9, size: 64, offset: 2240)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1261, file: !52, line: 856, baseType: !9, size: 64, offset: 2304)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1261, file: !52, line: 857, baseType: !9, size: 64, offset: 2368)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1261, file: !52, line: 858, baseType: !9, size: 64, offset: 2432)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1261, file: !52, line: 865, baseType: !376, size: 32, offset: 2496)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1261, file: !52, line: 867, baseType: !186, size: 32, offset: 2528)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1261, file: !52, line: 869, baseType: !9, size: 64, offset: 2560)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1261, file: !52, line: 869, baseType: !9, size: 64, offset: 2624)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1261, file: !52, line: 869, baseType: !9, size: 64, offset: 2688)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1261, file: !52, line: 869, baseType: !9, size: 64, offset: 2752)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1261, file: !52, line: 870, baseType: !9, size: 64, offset: 2816)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1261, file: !52, line: 870, baseType: !9, size: 64, offset: 2880)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1261, file: !52, line: 870, baseType: !9, size: 64, offset: 2944)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1261, file: !52, line: 871, baseType: !9, size: 64, offset: 3008)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1261, file: !52, line: 871, baseType: !9, size: 64, offset: 3072)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1261, file: !52, line: 871, baseType: !9, size: 64, offset: 3136)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1261, file: !52, line: 871, baseType: !9, size: 64, offset: 3200)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1261, file: !52, line: 873, baseType: !2077, size: 3328, offset: 3264)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3328, elements: !2078)
!2078 = !{!2079}
!2079 = !DISubrange(count: 52)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1261, file: !52, line: 875, baseType: !2081, size: 1280, offset: 6592)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1503, size: 1280, elements: !1333)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1261, file: !52, line: 877, baseType: !2083, size: 64, offset: 7872)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1261, file: !52, line: 880, baseType: !2086, size: 1088, offset: 7936)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2087, line: 72, baseType: !2088)
!2087 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2087, line: 23, size: 1088, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2097, !2098, !2099, !2100, !2127, !2128, !2129}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2088, file: !2087, line: 28, baseType: !402, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2088, file: !2087, line: 38, baseType: !631, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2088, file: !2087, line: 40, baseType: !9, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2088, file: !2087, line: 43, baseType: !838, size: 320, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2088, file: !2087, line: 44, baseType: !2095, size: 64, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2087, line: 44, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2088, file: !2087, line: 48, baseType: !9, size: 64, offset: 576)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2088, file: !2087, line: 59, baseType: !625, size: 256, offset: 640)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2088, file: !2087, line: 60, baseType: !119, size: 64, offset: 896)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2088, file: !2087, line: 61, baseType: !2101, size: 64, offset: 960)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2104, line: 13, size: 1216, elements: !2105)
!2104 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2103, file: !2104, line: 14, baseType: !119, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2103, file: !2104, line: 15, baseType: !9, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2103, file: !2104, line: 17, baseType: !9, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2103, file: !2104, line: 17, baseType: !9, size: 64, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2103, file: !2104, line: 18, baseType: !9, size: 64, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2103, file: !2104, line: 18, baseType: !9, size: 64, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2103, file: !2104, line: 19, baseType: !2113, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2103, file: !2104, line: 21, baseType: !287, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2103, file: !2104, line: 23, baseType: !287, size: 64, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2103, file: !2104, line: 24, baseType: !287, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2103, file: !2104, line: 25, baseType: !287, size: 64, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2103, file: !2104, line: 26, baseType: !287, size: 64, offset: 704)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2103, file: !2104, line: 27, baseType: !287, size: 64, offset: 768)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2103, file: !2104, line: 28, baseType: !287, size: 64, offset: 832)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2103, file: !2104, line: 29, baseType: !287, size: 64, offset: 896)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2103, file: !2104, line: 30, baseType: !287, size: 64, offset: 960)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2103, file: !2104, line: 31, baseType: !287, size: 64, offset: 1024)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2103, file: !2104, line: 32, baseType: !287, size: 64, offset: 1088)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2103, file: !2104, line: 33, baseType: !287, size: 64, offset: 1152)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2088, file: !2087, line: 63, baseType: !206, size: 32, offset: 1024)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2088, file: !2087, line: 69, baseType: !222, size: 16, offset: 1056)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2088, file: !2087, line: 70, baseType: !2130, size: 16, offset: 1072)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !215, line: 18, baseType: !2131)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !132, line: 23, baseType: !1414)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1261, file: !52, line: 882, baseType: !9, size: 64, offset: 9024)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1261, file: !52, line: 885, baseType: !186, size: 32, offset: 9088)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1261, file: !52, line: 886, baseType: !2135, size: 64, offset: 9152)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1261, file: !52, line: 901, baseType: !1528, size: 64, offset: 9216)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1261, file: !52, line: 904, baseType: !1284, size: 64, offset: 9280)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1261, file: !52, line: 906, baseType: !2140, size: 64, offset: 9344)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1261, file: !52, line: 930, baseType: !206, size: 32, offset: 9408)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1261, file: !52, line: 933, baseType: !206, size: 32, offset: 9440)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1261, file: !52, line: 935, baseType: !2145, size: 64, offset: 9472)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !82, line: 103, size: 64, elements: !2146)
!2146 = !{!2147}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2145, file: !82, line: 104, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !82, line: 101, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1261, file: !52, line: 940, baseType: !629, size: 64, offset: 9536)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1261, file: !52, line: 942, baseType: !2152, size: 256, offset: 9600)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2153, line: 98, size: 256, elements: !2154)
!2153 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2154 = !{!2155, !2156, !2157}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2152, file: !2153, line: 99, baseType: !629, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2152, file: !2153, line: 100, baseType: !155, size: 128, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2152, file: !2153, line: 101, baseType: !2158, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2153, line: 21, baseType: !2159)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{null, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1258, file: !52, line: 986, baseType: !2164, offset: 10240)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, elements: !1346)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !954, file: !600, line: 882, baseType: !1257, size: 64, offset: 9792)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !954, file: !600, line: 884, baseType: !102, size: 32, offset: 9856)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !954, file: !600, line: 885, baseType: !102, size: 32, offset: 9888)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !954, file: !600, line: 886, baseType: !102, size: 32, offset: 9920)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !954, file: !600, line: 888, baseType: !102, size: 32, offset: 9952)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !954, file: !600, line: 890, baseType: !9, size: 64, offset: 9984)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !954, file: !600, line: 893, baseType: !21, size: 32, offset: 10048)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !954, file: !600, line: 896, baseType: !21, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !954, file: !600, line: 897, baseType: !21, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !954, file: !600, line: 898, baseType: !21, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !954, file: !600, line: 899, baseType: !21, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !954, file: !600, line: 919, baseType: !21, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !954, file: !600, line: 922, baseType: !21, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !954, file: !600, line: 923, baseType: !21, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !954, file: !600, line: 925, baseType: !21, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !954, file: !600, line: 939, baseType: !21, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !954, file: !600, line: 941, baseType: !21, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !954, file: !600, line: 944, baseType: !21, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !954, file: !600, line: 956, baseType: !21, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !954, file: !600, line: 962, baseType: !21, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !954, file: !600, line: 966, baseType: !21, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !954, file: !600, line: 969, baseType: !9, size: 64, offset: 10176)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !954, file: !600, line: 971, baseType: !2188, size: 448, offset: 10240)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !76, line: 25, size: 448, elements: !2189)
!2189 = !{!2190, !2191, !2196}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2188, file: !76, line: 26, baseType: !9, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2188, file: !76, line: 27, baseType: !2192, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!287, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !2188, file: !76, line: 28, baseType: !2197, size: 320, offset: 128)
!2197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2188, file: !76, line: 28, size: 320, elements: !2198)
!2198 = !{!2199, !2209, !2234}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2197, file: !76, line: 37, baseType: !2200, size: 320)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !76, line: 30, size: 320, elements: !2201)
!2201 = !{!2202, !2204, !2205, !2206, !2207, !2208}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2200, file: !76, line: 31, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2200, file: !76, line: 32, baseType: !399, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2200, file: !76, line: 33, baseType: !399, size: 32, offset: 96)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2200, file: !76, line: 34, baseType: !399, size: 32, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2200, file: !76, line: 35, baseType: !402, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2200, file: !76, line: 36, baseType: !2203, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2197, file: !76, line: 47, baseType: !2210, size: 192)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !76, line: 39, size: 192, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2233}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2210, file: !76, line: 40, baseType: !1128, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2210, file: !76, line: 41, baseType: !75, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2210, file: !76, line: 42, baseType: !2215, size: 64, offset: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2210, file: !76, line: 42, size: 64, elements: !2216)
!2216 = !{!2217, !2225}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2215, file: !76, line: 43, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2220, line: 7, size: 128, elements: !2221)
!2220 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2221 = !{!2222, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2219, file: !2220, line: 8, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !285, line: 93, baseType: !488)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2219, file: !2220, line: 9, baseType: !488, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2215, file: !76, line: 44, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2228, line: 7, size: 64, elements: !2229)
!2228 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2229 = !{!2230, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2227, file: !2228, line: 8, baseType: !2231, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2228, line: 5, baseType: !1388)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2227, file: !2228, line: 9, baseType: !1388, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2210, file: !76, line: 46, baseType: !402, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2197, file: !76, line: 55, baseType: !2235, size: 256)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !76, line: 49, size: 256, elements: !2236)
!2236 = !{!2237, !2240, !2241, !2242, !2243}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2235, file: !76, line: 50, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !76, line: 14, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2235, file: !76, line: 51, baseType: !102, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2235, file: !76, line: 52, baseType: !102, size: 32, offset: 96)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2235, file: !76, line: 53, baseType: !9, size: 64, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2235, file: !76, line: 54, baseType: !9, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !954, file: !600, line: 973, baseType: !2245, size: 32, offset: 10688)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !156, line: 27, baseType: !2246)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !285, line: 28, baseType: !102)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !954, file: !600, line: 974, baseType: !2245, size: 32, offset: 10720)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !954, file: !600, line: 978, baseType: !9, size: 64, offset: 10752)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !954, file: !600, line: 987, baseType: !953, size: 64, offset: 10816)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !954, file: !600, line: 990, baseType: !953, size: 64, offset: 10880)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !954, file: !600, line: 995, baseType: !155, size: 128, offset: 10944)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !954, file: !600, line: 996, baseType: !155, size: 128, offset: 11072)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !954, file: !600, line: 997, baseType: !953, size: 64, offset: 11200)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !954, file: !600, line: 1005, baseType: !155, size: 128, offset: 11264)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !954, file: !600, line: 1006, baseType: !155, size: 128, offset: 11392)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !954, file: !600, line: 1009, baseType: !1325, size: 64, offset: 11520)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !954, file: !600, line: 1010, baseType: !2258, size: 512, offset: 11584)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 512, elements: !1333)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !954, file: !600, line: 1011, baseType: !155, size: 128, offset: 12096)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !954, file: !600, line: 1012, baseType: !155, size: 128, offset: 12224)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !954, file: !600, line: 1014, baseType: !2262, size: 64, offset: 12352)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !954, file: !600, line: 1017, baseType: !592, size: 64, offset: 12416)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !954, file: !600, line: 1020, baseType: !592, size: 64, offset: 12480)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !954, file: !600, line: 1023, baseType: !119, size: 64, offset: 12544)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !954, file: !600, line: 1025, baseType: !402, size: 64, offset: 12608)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !954, file: !600, line: 1026, baseType: !402, size: 64, offset: 12672)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !954, file: !600, line: 1031, baseType: !402, size: 64, offset: 12736)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !954, file: !600, line: 1032, baseType: !2270, size: 192, offset: 12800)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !600, line: 324, size: 192, elements: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2270, file: !600, line: 326, baseType: !402, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2270, file: !600, line: 327, baseType: !402, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2270, file: !600, line: 328, baseType: !638, size: 32, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !954, file: !600, line: 1041, baseType: !9, size: 64, offset: 12992)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !954, file: !600, line: 1042, baseType: !9, size: 64, offset: 13056)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !954, file: !600, line: 1045, baseType: !402, size: 64, offset: 13120)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !954, file: !600, line: 1048, baseType: !402, size: 64, offset: 13184)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !954, file: !600, line: 1051, baseType: !9, size: 64, offset: 13248)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !954, file: !600, line: 1052, baseType: !9, size: 64, offset: 13312)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !954, file: !600, line: 1055, baseType: !2282, size: 640, offset: 13376)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2283, line: 132, size: 640, elements: !2284)
!2283 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2284 = !{!2285, !2291, !2292}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2282, file: !2283, line: 133, baseType: !2286, size: 576)
!2286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2287, size: 576, elements: !252)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2283, line: 117, size: 192, elements: !2288)
!2288 = !{!2289, !2290}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2287, file: !2283, line: 118, baseType: !402, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2287, file: !2283, line: 119, baseType: !1137, size: 128, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2282, file: !2283, line: 134, baseType: !21, size: 32, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2282, file: !2283, line: 135, baseType: !21, size: 32, offset: 608)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !954, file: !600, line: 1058, baseType: !2294, size: 448, offset: 14016)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2283, line: 144, size: 448, elements: !2295)
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2294, file: !2283, line: 145, baseType: !938, size: 128, align: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2294, file: !2283, line: 146, baseType: !625, size: 256, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2294, file: !2283, line: 147, baseType: !21, size: 32, offset: 384)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !954, file: !600, line: 1064, baseType: !1353, size: 64, offset: 14464)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !954, file: !600, line: 1067, baseType: !1353, size: 64, offset: 14528)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !954, file: !600, line: 1070, baseType: !1353, size: 64, offset: 14592)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !954, file: !600, line: 1074, baseType: !1380, size: 64, offset: 14656)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !954, file: !600, line: 1084, baseType: !2304, size: 128, offset: 14720)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !2305)
!2305 = !{!2306}
!2306 = !DISubrange(count: 16)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !954, file: !600, line: 1086, baseType: !2308, size: 64, offset: 14848)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !600, line: 55, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !954, file: !600, line: 1089, baseType: !2311, size: 64, offset: 14912)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2312, line: 12, size: 64, elements: !2313)
!2312 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2313 = !{!2314}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2311, file: !2312, line: 13, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2312, line: 8, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !954, file: !600, line: 1090, baseType: !2318, size: 128, offset: 14976)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2319, line: 13, size: 128, elements: !2320)
!2319 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2320 = !{!2321}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2318, file: !2319, line: 14, baseType: !155, size: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !954, file: !600, line: 1097, baseType: !2323, size: 64, offset: 15104)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !600, line: 50, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !954, file: !600, line: 1100, baseType: !2326, size: 64, offset: 15168)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !600, line: 1100, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !954, file: !600, line: 1103, baseType: !2329, size: 64, offset: 15232)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !600, line: 53, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !954, file: !600, line: 1107, baseType: !2332, size: 64, offset: 15296)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2334, line: 35, flags: DIFlagFwdDecl)
!2334 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !954, file: !600, line: 1110, baseType: !2336, size: 64, offset: 15360)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2338, line: 93, size: 8768, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2389, !2398, !2399, !2401, !2402, !2403, !2406, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2444, !2445, !2452, !2462, !2465, !2466, !2469, !2470, !2471, !2472, !2473, !2474}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2337, file: !2338, line: 94, baseType: !967, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2337, file: !2338, line: 95, baseType: !206, size: 32, offset: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2337, file: !2338, line: 96, baseType: !102, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2337, file: !2338, line: 97, baseType: !102, size: 32, offset: 96)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2337, file: !2338, line: 98, baseType: !155, size: 128, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2337, file: !2338, line: 100, baseType: !931, size: 192, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2337, file: !2338, line: 103, baseType: !953, size: 64, offset: 448)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2337, file: !2338, line: 106, baseType: !2348, size: 192, offset: 512)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1533, line: 32, size: 192, elements: !2349)
!2349 = !{!2350, !2351}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2348, file: !1533, line: 33, baseType: !155, size: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2348, file: !1533, line: 34, baseType: !2352, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2353, line: 25, baseType: !2354)
!2353 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2353, line: 23, size: 64, elements: !2355)
!2355 = !{!2356}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2354, file: !2353, line: 24, baseType: !1208, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2337, file: !2338, line: 109, baseType: !517, size: 64, offset: 704)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2337, file: !2338, line: 112, baseType: !102, size: 32, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2337, file: !2338, line: 114, baseType: !102, size: 32, offset: 800)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2337, file: !2338, line: 115, baseType: !953, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2337, file: !2338, line: 118, baseType: !102, size: 32, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2337, file: !2338, line: 119, baseType: !21, size: 32, offset: 928)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2337, file: !2338, line: 121, baseType: !2364, size: 64, offset: 960)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2338, line: 80, size: 448, elements: !2366)
!2366 = !{!2367, !2368, !2374}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2365, file: !2338, line: 81, baseType: !206, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2365, file: !2338, line: 82, baseType: !2369, size: 128, offset: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2338, line: 75, size: 128, elements: !2370)
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2369, file: !2338, line: 76, baseType: !953, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2369, file: !2338, line: 77, baseType: !2373, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2365, file: !2338, line: 83, baseType: !1836, size: 256, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2337, file: !2338, line: 132, baseType: !21, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2337, file: !2338, line: 133, baseType: !21, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2337, file: !2338, line: 138, baseType: !21, size: 32, offset: 1056)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2337, file: !2338, line: 139, baseType: !155, size: 128, offset: 1088)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2337, file: !2338, line: 142, baseType: !1081, size: 512, offset: 1216)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2337, file: !2338, line: 143, baseType: !1089, size: 64, offset: 1728)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2337, file: !2338, line: 150, baseType: !2382, size: 256, offset: 1792)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2383, size: 256, elements: !2387)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2338, line: 38, size: 128, elements: !2384)
!2384 = !{!2385, !2386}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2383, file: !2338, line: 39, baseType: !402, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2383, file: !2338, line: 40, baseType: !402, size: 64, offset: 64)
!2387 = !{!2388}
!2388 = !DISubrange(count: 2)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2337, file: !2338, line: 156, baseType: !2390, size: 192, offset: 2048)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2338, line: 66, size: 192, elements: !2391)
!2391 = !{!2392}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2390, file: !2338, line: 67, baseType: !2393, size: 192)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2338, line: 47, size: 192, elements: !2394)
!2394 = !{!2395, !2396, !2397}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2393, file: !2338, line: 48, baseType: !631, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2393, file: !2338, line: 49, baseType: !631, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2393, file: !2338, line: 50, baseType: !631, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2337, file: !2338, line: 160, baseType: !2282, size: 640, offset: 2240)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2337, file: !2338, line: 163, baseType: !2400, size: 256, offset: 2880)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 256, elements: !1333)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2337, file: !2338, line: 169, baseType: !1325, size: 64, offset: 3136)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2337, file: !2338, line: 172, baseType: !102, size: 32, offset: 3200)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2337, file: !2338, line: 174, baseType: !2404, size: 64, offset: 3264)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2338, line: 174, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2337, file: !2338, line: 185, baseType: !2407, size: 64, offset: 3328)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !372, line: 860, baseType: !2408)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 853, size: 64, elements: !2409)
!2409 = !{!2410, !2411}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2408, file: !372, line: 858, baseType: !371, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2408, file: !372, line: 859, baseType: !186, size: 32, offset: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2337, file: !2338, line: 186, baseType: !402, size: 64, offset: 3392)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2337, file: !2338, line: 186, baseType: !402, size: 64, offset: 3456)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2337, file: !2338, line: 186, baseType: !402, size: 64, offset: 3520)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2337, file: !2338, line: 186, baseType: !402, size: 64, offset: 3584)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2337, file: !2338, line: 187, baseType: !402, size: 64, offset: 3648)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2337, file: !2338, line: 188, baseType: !402, size: 64, offset: 3712)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2337, file: !2338, line: 189, baseType: !2270, size: 192, offset: 3776)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2337, file: !2338, line: 190, baseType: !9, size: 64, offset: 3968)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2337, file: !2338, line: 190, baseType: !9, size: 64, offset: 4032)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2337, file: !2338, line: 190, baseType: !9, size: 64, offset: 4096)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2337, file: !2338, line: 190, baseType: !9, size: 64, offset: 4160)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2337, file: !2338, line: 191, baseType: !9, size: 64, offset: 4224)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2337, file: !2338, line: 191, baseType: !9, size: 64, offset: 4288)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2337, file: !2338, line: 191, baseType: !9, size: 64, offset: 4352)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2337, file: !2338, line: 191, baseType: !9, size: 64, offset: 4416)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2337, file: !2338, line: 192, baseType: !9, size: 64, offset: 4480)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2337, file: !2338, line: 192, baseType: !9, size: 64, offset: 4544)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2337, file: !2338, line: 192, baseType: !9, size: 64, offset: 4608)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2337, file: !2338, line: 192, baseType: !9, size: 64, offset: 4672)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2337, file: !2338, line: 193, baseType: !9, size: 64, offset: 4736)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2337, file: !2338, line: 193, baseType: !9, size: 64, offset: 4800)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2337, file: !2338, line: 194, baseType: !2434, size: 448, offset: 4864)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2435, line: 12, size: 448, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2434, file: !2435, line: 15, baseType: !402, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2434, file: !2435, line: 17, baseType: !402, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2434, file: !2435, line: 19, baseType: !402, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2434, file: !2435, line: 21, baseType: !402, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2434, file: !2435, line: 29, baseType: !402, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2434, file: !2435, line: 35, baseType: !402, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2434, file: !2435, line: 44, baseType: !402, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2337, file: !2338, line: 202, baseType: !142, size: 64, offset: 5312)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2337, file: !2338, line: 213, baseType: !2446, size: 2048, offset: 5376)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2447, size: 2048, elements: !2305)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2448, line: 43, size: 128, elements: !2449)
!2448 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2447, file: !2448, line: 44, baseType: !300, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2447, file: !2448, line: 45, baseType: !300, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2337, file: !2338, line: 216, baseType: !2453, size: 448, offset: 7424)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2338, line: 30, size: 448, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2453, file: !2338, line: 31, baseType: !102, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2453, file: !2338, line: 32, baseType: !287, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2453, file: !2338, line: 33, baseType: !9, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2453, file: !2338, line: 34, baseType: !402, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2453, file: !2338, line: 34, baseType: !402, size: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2453, file: !2338, line: 35, baseType: !9, size: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2453, file: !2338, line: 35, baseType: !9, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2337, file: !2338, line: 219, baseType: !2463, size: 64, offset: 7872)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2338, line: 219, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2337, file: !2338, line: 222, baseType: !21, size: 32, offset: 7936)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2337, file: !2338, line: 223, baseType: !2467, size: 64, offset: 8000)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2338, line: 223, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2337, file: !2338, line: 230, baseType: !1445, size: 8, offset: 8064)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2337, file: !2338, line: 231, baseType: !1414, size: 16, offset: 8080)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2337, file: !2338, line: 232, baseType: !1414, size: 16, offset: 8096)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2337, file: !2338, line: 234, baseType: !1257, size: 64, offset: 8128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2337, file: !2338, line: 237, baseType: !625, size: 256, offset: 8192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2337, file: !2338, line: 243, baseType: !838, size: 320, offset: 8448)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !954, file: !600, line: 1111, baseType: !2476, size: 64, offset: 15424)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2338, line: 20, size: 16640, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2477, file: !2338, line: 21, baseType: !186, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2477, file: !2338, line: 22, baseType: !967, size: 32, offset: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2477, file: !2338, line: 23, baseType: !931, size: 192, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2477, file: !2338, line: 24, baseType: !2483, size: 16384, offset: 256)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2484, size: 16384, elements: !256)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1533, line: 51, size: 256, elements: !2485)
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2484, file: !1533, line: 52, baseType: !2487, size: 256)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1533, line: 37, size: 256, elements: !2488)
!2488 = !{!2489, !2496, !2497, !2503}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2487, file: !1533, line: 39, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2491, line: 83, baseType: !2492)
!2491 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2491, line: 82, baseType: !2494)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !102}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2487, file: !1533, line: 40, baseType: !9, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2487, file: !1533, line: 46, baseType: !2498, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2491, line: 86, baseType: !2499)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2491, line: 85, baseType: !2501)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2487, file: !1533, line: 48, baseType: !2352, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !954, file: !600, line: 1112, baseType: !2352, size: 64, offset: 15488)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !954, file: !600, line: 1113, baseType: !2352, size: 64, offset: 15552)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !954, file: !600, line: 1115, baseType: !2352, size: 64, offset: 15616)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !954, file: !600, line: 1116, baseType: !2348, size: 192, offset: 15680)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !954, file: !600, line: 1117, baseType: !9, size: 64, offset: 15872)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !954, file: !600, line: 1118, baseType: !298, size: 64, offset: 15936)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !954, file: !600, line: 1119, baseType: !21, size: 32, offset: 16000)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !954, file: !600, line: 1121, baseType: !941, size: 64, offset: 16064)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !954, file: !600, line: 1125, baseType: !2513, size: 64, offset: 16128)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !600, line: 43, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !954, file: !600, line: 1127, baseType: !336, size: 32, offset: 16192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !954, file: !600, line: 1128, baseType: !21, size: 32, offset: 16224)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !954, file: !600, line: 1130, baseType: !2518, size: 128, offset: 16256)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2519, line: 37, size: 128, elements: !2520)
!2519 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2520 = !{!2521, !2522, !2523}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2518, file: !2519, line: 38, baseType: !102, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2518, file: !2519, line: 39, baseType: !206, size: 32, offset: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2518, file: !2519, line: 40, baseType: !2524, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2519, line: 24, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !954, file: !600, line: 1131, baseType: !2527, size: 256, offset: 16384)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2528, line: 12, size: 256, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2529 = !{!2530, !2531, !2532, !2533}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2527, file: !2528, line: 13, baseType: !12, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2527, file: !2528, line: 14, baseType: !9, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2527, file: !2528, line: 15, baseType: !9, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2527, file: !2528, line: 16, baseType: !1445, size: 8, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !954, file: !600, line: 1134, baseType: !402, size: 64, offset: 16640)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !954, file: !600, line: 1135, baseType: !402, size: 64, offset: 16704)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !954, file: !600, line: 1138, baseType: !186, size: 32, offset: 16768)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !954, file: !600, line: 1141, baseType: !638, size: 32, offset: 16800)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !954, file: !600, line: 1143, baseType: !2539, size: 64, offset: 16832)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !600, line: 735, size: 64, elements: !2540)
!2540 = !{!2541}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2539, file: !600, line: 736, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !954, file: !600, line: 1147, baseType: !1140, size: 128, offset: 16896)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !954, file: !600, line: 1149, baseType: !953, size: 64, offset: 17024)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !954, file: !600, line: 1151, baseType: !2546, size: 64, offset: 17088)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !600, line: 1151, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !954, file: !600, line: 1188, baseType: !119, size: 64, offset: 17152)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !954, file: !600, line: 1191, baseType: !2550, size: 64, offset: 17216)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !600, line: 44, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !954, file: !600, line: 1194, baseType: !2553, size: 64, offset: 17280)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !600, line: 45, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !954, file: !600, line: 1197, baseType: !2556, size: 64, offset: 17344)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !600, line: 61, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !954, file: !600, line: 1199, baseType: !2559, size: 64, offset: 17408)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2561, line: 99, size: 128, elements: !2562)
!2561 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2562 = !{!2563, !2564, !2565}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2560, file: !2561, line: 100, baseType: !629, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2560, file: !2561, line: 101, baseType: !206, size: 32, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2560, file: !2561, line: 103, baseType: !138, size: 16, offset: 96)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !954, file: !600, line: 1202, baseType: !2567, size: 64, offset: 17472)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !600, line: 48, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !954, file: !600, line: 1205, baseType: !9, size: 64, offset: 17536)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !954, file: !600, line: 1206, baseType: !2571, size: 64, offset: 17600)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1533, line: 14, baseType: !2573)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1533, line: 12, size: 384, elements: !2574)
!2574 = !{!2575}
!2575 = !DIDerivedType(tag: DW_TAG_member, scope: !2573, file: !1533, line: 13, baseType: !2576, size: 384)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2573, file: !1533, line: 13, size: 384, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2576, file: !1533, line: 13, baseType: !102, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2576, file: !1533, line: 13, baseType: !102, size: 32, offset: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2576, file: !1533, line: 13, baseType: !102, size: 32, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2576, file: !1533, line: 13, baseType: !2582, size: 256, offset: 128)
!2582 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2583, line: 37, size: 256, elements: !2584)
!2583 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2584 = !{!2585, !2590, !2603, !2609, !2618, !2645, !2650}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2582, file: !2583, line: 42, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2582, file: !2583, line: 39, size: 64, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2586, file: !2583, line: 40, baseType: !2246, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2586, file: !2583, line: 41, baseType: !342, size: 32, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2582, file: !2583, line: 50, baseType: !2591, size: 192)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2582, file: !2583, line: 45, size: 192, elements: !2592)
!2592 = !{!2593, !2595, !2596, !2602}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2591, file: !2583, line: 46, baseType: !2594, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !285, line: 95, baseType: !102)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2591, file: !2583, line: 47, baseType: !102, size: 32, offset: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2591, file: !2583, line: 48, baseType: !2597, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2583, line: 11, baseType: !2598)
!2598 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2583, line: 8, size: 64, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2598, file: !2583, line: 9, baseType: !102, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2598, file: !2583, line: 10, baseType: !119, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2591, file: !2583, line: 49, baseType: !102, size: 32, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2582, file: !2583, line: 57, baseType: !2604, size: 128)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2582, file: !2583, line: 53, size: 128, elements: !2605)
!2605 = !{!2606, !2607, !2608}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2604, file: !2583, line: 54, baseType: !2246, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2604, file: !2583, line: 55, baseType: !342, size: 32, offset: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2604, file: !2583, line: 56, baseType: !2597, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2582, file: !2583, line: 66, baseType: !2610, size: 256)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2582, file: !2583, line: 60, size: 256, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2617}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2610, file: !2583, line: 61, baseType: !2246, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2610, file: !2583, line: 62, baseType: !342, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2610, file: !2583, line: 63, baseType: !102, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2610, file: !2583, line: 64, baseType: !2616, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !285, line: 94, baseType: !286)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2610, file: !2583, line: 65, baseType: !2616, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2582, file: !2583, line: 105, baseType: !2619, size: 256)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2582, file: !2583, line: 69, size: 256, elements: !2620)
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2619, file: !2583, line: 70, baseType: !119, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, scope: !2619, file: !2583, line: 79, baseType: !2623, size: 192, offset: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2619, file: !2583, line: 79, size: 192, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2634, !2639}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2623, file: !2583, line: 81, baseType: !102, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2623, file: !2583, line: 86, baseType: !1414, size: 16)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2623, file: !2583, line: 92, baseType: !2628, size: 192)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2623, file: !2583, line: 88, size: 192, elements: !2629)
!2629 = !{!2630, !2632, !2633}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2628, file: !2583, line: 89, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1124)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2628, file: !2583, line: 90, baseType: !119, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2628, file: !2583, line: 91, baseType: !119, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2623, file: !2583, line: 97, baseType: !2635, size: 96)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2623, file: !2583, line: 94, size: 96, elements: !2636)
!2636 = !{!2637, !2638}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2635, file: !2583, line: 95, baseType: !2631, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2635, file: !2583, line: 96, baseType: !131, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2623, file: !2583, line: 103, baseType: !2640, size: 128)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2623, file: !2583, line: 99, size: 128, elements: !2641)
!2641 = !{!2642, !2643, !2644}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2640, file: !2583, line: 100, baseType: !9, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2640, file: !2583, line: 101, baseType: !131, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2640, file: !2583, line: 102, baseType: !131, size: 32, offset: 96)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2582, file: !2583, line: 111, baseType: !2646, size: 128)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2582, file: !2583, line: 108, size: 128, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2646, file: !2583, line: 109, baseType: !287, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2646, file: !2583, line: 110, baseType: !102, size: 32, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2582, file: !2583, line: 118, baseType: !2651, size: 128)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2582, file: !2583, line: 114, size: 128, elements: !2652)
!2652 = !{!2653, !2654, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2651, file: !2583, line: 115, baseType: !119, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2651, file: !2583, line: 116, baseType: !102, size: 32, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2651, file: !2583, line: 117, baseType: !21, size: 32, offset: 96)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !954, file: !600, line: 1208, baseType: !2434, size: 448, offset: 17664)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !954, file: !600, line: 1215, baseType: !402, size: 64, offset: 18112)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !954, file: !600, line: 1217, baseType: !402, size: 64, offset: 18176)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !954, file: !600, line: 1219, baseType: !402, size: 64, offset: 18240)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !954, file: !600, line: 1223, baseType: !2661, size: 64, offset: 18304)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2662, line: 99, baseType: !2663)
!2662 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2662, line: 99, size: 64, elements: !2664)
!2664 = !{!2665}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2663, file: !2662, line: 99, baseType: !1208, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !954, file: !600, line: 1225, baseType: !371, size: 32, offset: 18368)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !954, file: !600, line: 1226, baseType: !102, size: 32, offset: 18400)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !954, file: !600, line: 1227, baseType: !102, size: 32, offset: 18432)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !954, file: !600, line: 1231, baseType: !2670, size: 64, offset: 18496)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !600, line: 1231, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !954, file: !600, line: 1233, baseType: !155, size: 128, offset: 18560)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !954, file: !600, line: 1240, baseType: !2674, size: 64, offset: 18688)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !600, line: 62, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !954, file: !600, line: 1242, baseType: !2677, size: 64, offset: 18752)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !600, line: 1242, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !954, file: !600, line: 1244, baseType: !155, size: 128, offset: 18816)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !954, file: !600, line: 1245, baseType: !2681, size: 64, offset: 18944)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !600, line: 51, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !954, file: !600, line: 1246, baseType: !625, size: 256, offset: 19008)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !954, file: !600, line: 1247, baseType: !21, size: 32, offset: 19264)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !954, file: !600, line: 1250, baseType: !2686, size: 64, offset: 19328)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !600, line: 57, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !954, file: !600, line: 1251, baseType: !625, size: 256, offset: 19392)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !954, file: !600, line: 1252, baseType: !155, size: 128, offset: 19648)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !954, file: !600, line: 1259, baseType: !1922, size: 64, offset: 19776)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !954, file: !600, line: 1260, baseType: !1414, size: 16, offset: 19840)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !954, file: !600, line: 1261, baseType: !1414, size: 16, offset: 19856)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !954, file: !600, line: 1314, baseType: !2694, size: 64, offset: 19904)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2696, line: 62, size: 256, align: 256, elements: !2697)
!2696 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2695, file: !2696, line: 75, baseType: !131, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2695, file: !2696, line: 90, baseType: !131, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2695, file: !2696, line: 112, baseType: !141, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2695, file: !2696, line: 132, baseType: !131, size: 32, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2695, file: !2696, line: 140, baseType: !131, size: 32, offset: 160)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2695, file: !2696, line: 149, baseType: !131, size: 32, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2695, file: !2696, line: 154, baseType: !2705, offset: 224)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, elements: !1346)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !954, file: !600, line: 1315, baseType: !399, size: 32, offset: 19968)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !954, file: !600, line: 1316, baseType: !399, size: 32, offset: 20000)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !954, file: !600, line: 1321, baseType: !9, size: 64, offset: 20032)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !954, file: !600, line: 1325, baseType: !102, size: 32, offset: 20096)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !954, file: !600, line: 1326, baseType: !102, size: 32, offset: 20128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !954, file: !600, line: 1327, baseType: !102, size: 32, offset: 20160)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !954, file: !600, line: 1328, baseType: !102, size: 32, offset: 20192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !954, file: !600, line: 1329, baseType: !938, size: 128, align: 64, offset: 20224)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !954, file: !600, line: 1332, baseType: !2715, size: 128, offset: 20352)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2716, line: 51, size: 128, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2717 = !{!2718, !2723, !2724}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2715, file: !2716, line: 60, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2720, line: 7, size: 64, elements: !2721)
!2720 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2719, file: !2720, line: 12, baseType: !1205, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2715, file: !2716, line: 63, baseType: !1445, size: 8, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2715, file: !2716, line: 70, baseType: !1445, size: 8, offset: 72)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !954, file: !600, line: 1335, baseType: !1974, size: 64, offset: 20480)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !954, file: !600, line: 1337, baseType: !2727, size: 128, offset: 20544)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2716, line: 39, size: 128, elements: !2728)
!2728 = !{!2729, !2730, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2727, file: !2716, line: 40, baseType: !1751, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2727, file: !2716, line: 42, baseType: !131, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2727, file: !2716, line: 43, baseType: !131, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !954, file: !600, line: 1340, baseType: !2733, size: 64, offset: 20672)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !600, line: 69, flags: DIFlagFwdDecl)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !954, file: !600, line: 1351, baseType: !102, size: 32, offset: 20736)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !954, file: !600, line: 1352, baseType: !102, size: 32, offset: 20768)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !954, file: !600, line: 1354, baseType: !9, size: 64, offset: 20800)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !954, file: !600, line: 1364, baseType: !402, size: 64, offset: 20864)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !954, file: !600, line: 1365, baseType: !402, size: 64, offset: 20928)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !954, file: !600, line: 1412, baseType: !9, size: 64, offset: 20992)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !954, file: !600, line: 1453, baseType: !2742, size: 64, offset: 21056)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !600, line: 1453, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !954, file: !600, line: 1457, baseType: !2745, size: 64, offset: 21120)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !82, line: 61, size: 576, elements: !2747)
!2747 = !{!2748, !2749, !2768, !2771, !2772, !2805, !2815}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2746, file: !82, line: 62, baseType: !81, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !2746, file: !82, line: 64, baseType: !2750, size: 192, offset: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2746, file: !82, line: 64, size: 192, elements: !2751)
!2751 = !{!2752, !2763}
!2752 = !DIDerivedType(tag: DW_TAG_member, scope: !2750, file: !82, line: 65, baseType: !2753, size: 192)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2750, file: !82, line: 65, size: 192, elements: !2754)
!2754 = !{!2755, !2762}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2753, file: !82, line: 66, baseType: !2756, size: 128)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2757, line: 50, size: 128, elements: !2758)
!2757 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2758 = !{!2759, !2760, !2761}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2756, file: !2757, line: 52, baseType: !9, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2756, file: !2757, line: 54, baseType: !21, size: 32, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2756, file: !2757, line: 55, baseType: !21, size: 32, offset: 96)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2753, file: !82, line: 67, baseType: !9, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, scope: !2750, file: !82, line: 70, baseType: !2764, size: 192)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2750, file: !82, line: 70, size: 192, elements: !2765)
!2765 = !{!2766, !2767}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2764, file: !82, line: 71, baseType: !938, size: 128, align: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2764, file: !82, line: 72, baseType: !9, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2746, file: !82, line: 76, baseType: !2769, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !82, line: 76, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2746, file: !82, line: 77, baseType: !9, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2746, file: !82, line: 79, baseType: !2773, size: 64, offset: 384)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2757, line: 25, size: 256, elements: !2775)
!2775 = !{!2776, !2782, !2786}
!2776 = !DIDerivedType(tag: DW_TAG_member, scope: !2774, file: !2757, line: 26, baseType: !2777, size: 128)
!2777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2774, file: !2757, line: 26, size: 128, elements: !2778)
!2778 = !{!2779, !2781}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2777, file: !2757, line: 27, baseType: !2780, size: 128)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 128, elements: !2305)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2777, file: !2757, line: 28, baseType: !2780, size: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2774, file: !2757, line: 31, baseType: !2783, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2785)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2757, line: 23, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, scope: !2774, file: !2757, line: 33, baseType: !2787, size: 64, offset: 192)
!2787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2774, file: !2757, line: 33, size: 64, elements: !2788)
!2788 = !{!2789, !2795, !2800}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2787, file: !2757, line: 38, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2787, file: !2757, line: 34, size: 64, elements: !2791)
!2791 = !{!2792, !2793, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2790, file: !2757, line: 35, baseType: !1388, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2790, file: !2757, line: 36, baseType: !214, size: 8, offset: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2790, file: !2757, line: 37, baseType: !214, size: 8, offset: 40)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2787, file: !2757, line: 42, baseType: !2796, size: 16)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2787, file: !2757, line: 39, size: 16, elements: !2797)
!2797 = !{!2798, !2799}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2796, file: !2757, line: 40, baseType: !214, size: 8)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2796, file: !2757, line: 41, baseType: !214, size: 8, offset: 8)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2787, file: !2757, line: 46, baseType: !2801, size: 16)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2787, file: !2757, line: 43, size: 16, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2801, file: !2757, line: 44, baseType: !214, size: 8)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2801, file: !2757, line: 45, baseType: !214, size: 8, offset: 8)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2746, file: !82, line: 81, baseType: !2806, size: 64, offset: 448)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !82, line: 85, size: 384, elements: !2808)
!2808 = !{!2809, !2810, !2811, !2812, !2813, !2814}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2807, file: !82, line: 86, baseType: !2769, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2807, file: !82, line: 87, baseType: !9, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2807, file: !82, line: 88, baseType: !9, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2807, file: !82, line: 89, baseType: !9, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2807, file: !82, line: 90, baseType: !1445, size: 8, offset: 256)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2807, file: !82, line: 92, baseType: !2806, size: 64, offset: 320)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2746, file: !82, line: 82, baseType: !21, size: 32, offset: 512)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !954, file: !600, line: 1463, baseType: !2817, offset: 21184)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !600, line: 739, elements: !529)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !954, file: !600, line: 1470, baseType: !938, size: 128, align: 64, offset: 21184)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !954, file: !600, line: 1471, baseType: !967, size: 32, offset: 21312)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !954, file: !600, line: 1472, baseType: !102, size: 32, offset: 21344)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !954, file: !600, line: 1474, baseType: !953, size: 64, offset: 21376)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !954, file: !600, line: 1475, baseType: !2823, size: 320, offset: 21440)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2824, line: 11, size: 320, elements: !2825)
!2824 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2825 = !{!2826, !2827, !2828, !2833}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2823, file: !2824, line: 16, baseType: !521, size: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2823, file: !2824, line: 17, baseType: !9, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2823, file: !2824, line: 18, baseType: !2829, size: 64, offset: 192)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{null, !2832}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2823, file: !2824, line: 19, baseType: !399, size: 32, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !954, file: !600, line: 1478, baseType: !2835, size: 64, offset: 21760)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !600, line: 1478, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !954, file: !600, line: 1482, baseType: !967, size: 32, offset: 21824)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !954, file: !600, line: 1489, baseType: !119, size: 64, offset: 21888)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !954, file: !600, line: 1504, baseType: !119, size: 64, offset: 21952)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !954, file: !600, line: 1505, baseType: !141, size: 64, offset: 22016)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !954, file: !600, line: 1506, baseType: !402, size: 64, offset: 22080)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !954, file: !600, line: 1507, baseType: !141, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !954, file: !600, line: 1508, baseType: !141, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !954, file: !600, line: 1509, baseType: !141, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !954, file: !600, line: 1510, baseType: !938, size: 128, align: 64, offset: 22208)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !954, file: !600, line: 1511, baseType: !102, size: 32, offset: 22336)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !954, file: !600, line: 1515, baseType: !2848, size: 64, offset: 22400)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !981, line: 56, size: 64, elements: !2849)
!2849 = !{!2850}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2848, file: !981, line: 57, baseType: !984, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !954, file: !600, line: 1518, baseType: !2848, size: 64, offset: 22464)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !954, file: !600, line: 1528, baseType: !938, size: 128, align: 64, offset: 22528)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !954, file: !600, line: 1552, baseType: !2854, size: 35328, offset: 23040)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2855, line: 430, size: 35328, elements: !2856)
!2855 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2856 = !{!2857, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2886, !2887, !2888, !2889, !2890, !2891, !2894, !2895, !2896, !2897}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2854, file: !2855, line: 432, baseType: !2858, size: 192)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2859, size: 192, elements: !252)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2860, line: 16, size: 64, elements: !2861)
!2860 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2861 = !{!2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2859, file: !2860, line: 17, baseType: !222, size: 16)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2859, file: !2860, line: 18, baseType: !222, size: 16, offset: 16)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2859, file: !2860, line: 19, baseType: !222, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2859, file: !2860, line: 19, baseType: !222, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2859, file: !2860, line: 19, baseType: !222, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2859, file: !2860, line: 19, baseType: !222, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2859, file: !2860, line: 19, baseType: !222, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2859, file: !2860, line: 20, baseType: !222, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2859, file: !2860, line: 20, baseType: !222, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2859, file: !2860, line: 20, baseType: !222, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2859, file: !2860, line: 20, baseType: !222, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2859, file: !2860, line: 20, baseType: !222, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2859, file: !2860, line: 20, baseType: !222, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2854, file: !2855, line: 436, baseType: !9, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2854, file: !2855, line: 440, baseType: !138, size: 16, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2854, file: !2855, line: 441, baseType: !138, size: 16, offset: 272)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2854, file: !2855, line: 442, baseType: !138, size: 16, offset: 288)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2854, file: !2855, line: 443, baseType: !138, size: 16, offset: 304)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2854, file: !2855, line: 447, baseType: !9, size: 64, offset: 320)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2854, file: !2855, line: 448, baseType: !9, size: 64, offset: 384)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2854, file: !2855, line: 459, baseType: !2883, size: 256, offset: 448)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2884, size: 256, elements: !1333)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2855, line: 428, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2854, file: !2855, line: 461, baseType: !9, size: 64, offset: 704)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2854, file: !2855, line: 463, baseType: !9, size: 64, offset: 768)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2854, file: !2855, line: 465, baseType: !9, size: 64, offset: 832)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2854, file: !2855, line: 466, baseType: !9, size: 64, offset: 896)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2854, file: !2855, line: 467, baseType: !9, size: 64, offset: 960)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2854, file: !2855, line: 473, baseType: !2892, size: 64, offset: 1024)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2855, line: 10, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2854, file: !2855, line: 480, baseType: !9, size: 64, offset: 1088)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2854, file: !2855, line: 482, baseType: !21, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2854, file: !2855, line: 491, baseType: !399, size: 32, offset: 1184)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2854, file: !2855, line: 501, baseType: !2898, size: 33792, offset: 1536)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2899, line: 448, size: 33792, elements: !2900)
!2899 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2900 = !{!2901, !2902, !2903, !3065, !3066, !3072, !3073}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2898, file: !2899, line: 461, baseType: !21, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2898, file: !2899, line: 468, baseType: !9, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2898, file: !2899, line: 476, baseType: !2904, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2899, line: 356, size: 33280, align: 512, elements: !2906)
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2905, file: !2899, line: 358, baseType: !21, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2905, file: !2899, line: 361, baseType: !21, size: 32, offset: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2905, file: !2899, line: 364, baseType: !402, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2905, file: !2899, line: 367, baseType: !402, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2905, file: !2899, line: 370, baseType: !402, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2905, file: !2899, line: 373, baseType: !21, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2905, file: !2899, line: 376, baseType: !21, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2905, file: !2899, line: 391, baseType: !21, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2905, file: !2899, line: 394, baseType: !21, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2905, file: !2899, line: 397, baseType: !2917, size: 32768, offset: 512)
!2917 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2899, line: 348, size: 32768, elements: !2918)
!2918 = !{!2919, !2934, !2971, !3048, !3061}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2917, file: !2899, line: 349, baseType: !2920, size: 896)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2899, line: 12, size: 896, elements: !2921)
!2921 = !{!2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2933}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2920, file: !2899, line: 13, baseType: !399, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2920, file: !2899, line: 14, baseType: !399, size: 32, offset: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2920, file: !2899, line: 15, baseType: !399, size: 32, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2920, file: !2899, line: 16, baseType: !399, size: 32, offset: 96)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2920, file: !2899, line: 17, baseType: !399, size: 32, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2920, file: !2899, line: 18, baseType: !399, size: 32, offset: 160)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2920, file: !2899, line: 19, baseType: !399, size: 32, offset: 192)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2920, file: !2899, line: 22, baseType: !2930, size: 640, offset: 224)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 640, elements: !2931)
!2931 = !{!2932}
!2932 = !DISubrange(count: 20)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2920, file: !2899, line: 25, baseType: !399, size: 32, offset: 864)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2917, file: !2899, line: 350, baseType: !2935, size: 4096, align: 128)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2899, line: 34, size: 4096, align: 128, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2940, !2941, !2956, !2957, !2958, !2960, !2962, !2966}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2935, file: !2899, line: 35, baseType: !222, size: 16)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2935, file: !2899, line: 36, baseType: !222, size: 16, offset: 16)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2935, file: !2899, line: 37, baseType: !222, size: 16, offset: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2935, file: !2899, line: 38, baseType: !222, size: 16, offset: 48)
!2941 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !2899, line: 39, baseType: !2942, size: 128, offset: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !2899, line: 39, size: 128, elements: !2943)
!2943 = !{!2944, !2949}
!2944 = !DIDerivedType(tag: DW_TAG_member, scope: !2942, file: !2899, line: 40, baseType: !2945, size: 128)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2942, file: !2899, line: 40, size: 128, elements: !2946)
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2945, file: !2899, line: 41, baseType: !402, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2945, file: !2899, line: 42, baseType: !402, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2942, file: !2899, line: 44, baseType: !2950, size: 128)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2942, file: !2899, line: 44, size: 128, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2955}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2950, file: !2899, line: 45, baseType: !399, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2950, file: !2899, line: 46, baseType: !399, size: 32, offset: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2950, file: !2899, line: 47, baseType: !399, size: 32, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2950, file: !2899, line: 48, baseType: !399, size: 32, offset: 96)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2935, file: !2899, line: 51, baseType: !399, size: 32, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2935, file: !2899, line: 52, baseType: !399, size: 32, offset: 224)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2935, file: !2899, line: 55, baseType: !2959, size: 1024, offset: 256)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 1024, elements: !407)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2935, file: !2899, line: 58, baseType: !2961, size: 2048, offset: 1280)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 2048, elements: !256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2935, file: !2899, line: 60, baseType: !2963, size: 384, offset: 3328)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 384, elements: !2964)
!2964 = !{!2965}
!2965 = !DISubrange(count: 12)
!2966 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !2899, line: 62, baseType: !2967, size: 384, offset: 3712)
!2967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !2899, line: 62, size: 384, elements: !2968)
!2968 = !{!2969, !2970}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2967, file: !2899, line: 63, baseType: !2963, size: 384)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2967, file: !2899, line: 64, baseType: !2963, size: 384)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2917, file: !2899, line: 351, baseType: !2972, size: 1088)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2899, line: 79, size: 1088, elements: !2973)
!2973 = !{!2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !3047}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2972, file: !2899, line: 80, baseType: !399, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2972, file: !2899, line: 81, baseType: !399, size: 32, offset: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2972, file: !2899, line: 82, baseType: !399, size: 32, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2972, file: !2899, line: 83, baseType: !399, size: 32, offset: 96)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2972, file: !2899, line: 84, baseType: !399, size: 32, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2972, file: !2899, line: 85, baseType: !399, size: 32, offset: 160)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2972, file: !2899, line: 86, baseType: !399, size: 32, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2972, file: !2899, line: 88, baseType: !2930, size: 640, offset: 224)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2972, file: !2899, line: 89, baseType: !214, size: 8, offset: 864)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2972, file: !2899, line: 90, baseType: !214, size: 8, offset: 872)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2972, file: !2899, line: 91, baseType: !214, size: 8, offset: 880)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2972, file: !2899, line: 92, baseType: !214, size: 8, offset: 888)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2972, file: !2899, line: 93, baseType: !214, size: 8, offset: 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2972, file: !2899, line: 94, baseType: !214, size: 8, offset: 904)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2972, file: !2899, line: 95, baseType: !2989, size: 64, offset: 960)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2991, line: 11, size: 128, elements: !2992)
!2991 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2990, file: !2991, line: 12, baseType: !287, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2990, file: !2991, line: 13, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2997, line: 103, size: 1344, elements: !2998)
!2997 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2998 = !{!2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3027, !3028, !3029}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2996, file: !2997, line: 109, baseType: !9, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2996, file: !2997, line: 110, baseType: !9, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2996, file: !2997, line: 111, baseType: !9, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2996, file: !2997, line: 112, baseType: !9, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2996, file: !2997, line: 113, baseType: !9, size: 64, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2996, file: !2997, line: 114, baseType: !9, size: 64, offset: 320)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2996, file: !2997, line: 117, baseType: !9, size: 64, offset: 384)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2996, file: !2997, line: 118, baseType: !9, size: 64, offset: 448)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2996, file: !2997, line: 119, baseType: !9, size: 64, offset: 512)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2996, file: !2997, line: 120, baseType: !9, size: 64, offset: 576)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2996, file: !2997, line: 121, baseType: !9, size: 64, offset: 640)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2996, file: !2997, line: 122, baseType: !9, size: 64, offset: 704)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2996, file: !2997, line: 123, baseType: !9, size: 64, offset: 768)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2996, file: !2997, line: 124, baseType: !9, size: 64, offset: 832)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2996, file: !2997, line: 125, baseType: !9, size: 64, offset: 896)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2996, file: !2997, line: 139, baseType: !9, size: 64, offset: 960)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2996, file: !2997, line: 142, baseType: !9, size: 64, offset: 1024)
!3016 = !DIDerivedType(tag: DW_TAG_member, scope: !2996, file: !2997, line: 144, baseType: !3017, size: 64, offset: 1088)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2996, file: !2997, line: 144, size: 64, elements: !3018)
!3018 = !{!3019, !3020, !3021}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3017, file: !2997, line: 146, baseType: !222, size: 16)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3017, file: !2997, line: 148, baseType: !402, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3017, file: !2997, line: 150, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2997, line: 59, size: 64, elements: !3023)
!3023 = !{!3024, !3025, !3026}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3022, file: !2997, line: 61, baseType: !402, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3022, file: !2997, line: 63, baseType: !402, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3022, file: !2997, line: 65, baseType: !402, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2996, file: !2997, line: 153, baseType: !9, size: 64, offset: 1152)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2996, file: !2997, line: 154, baseType: !9, size: 64, offset: 1216)
!3029 = !DIDerivedType(tag: DW_TAG_member, scope: !2996, file: !2997, line: 156, baseType: !3030, size: 64, offset: 1280)
!3030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2996, file: !2997, line: 156, size: 64, elements: !3031)
!3031 = !{!3032, !3033, !3034}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3030, file: !2997, line: 158, baseType: !222, size: 16)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3030, file: !2997, line: 160, baseType: !402, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3030, file: !2997, line: 162, baseType: !3035, size: 64)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2997, line: 69, size: 64, elements: !3036)
!3036 = !{!3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3035, file: !2997, line: 71, baseType: !402, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3035, file: !2997, line: 73, baseType: !402, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3035, file: !2997, line: 75, baseType: !402, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3035, file: !2997, line: 77, baseType: !402, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3035, file: !2997, line: 80, baseType: !402, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3035, file: !2997, line: 83, baseType: !402, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3035, file: !2997, line: 86, baseType: !402, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3035, file: !2997, line: 88, baseType: !402, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3035, file: !2997, line: 93, baseType: !402, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3035, file: !2997, line: 100, baseType: !402, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2972, file: !2899, line: 96, baseType: !399, size: 32, offset: 1024)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2917, file: !2899, line: 352, baseType: !3049, size: 4608, align: 512)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2899, line: 333, size: 4608, align: 512, elements: !3050)
!3050 = !{!3051, !3052, !3059}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3049, file: !2899, line: 334, baseType: !2935, size: 4096, align: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3049, file: !2899, line: 335, baseType: !3053, size: 512, offset: 4096)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2899, line: 312, size: 512, elements: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3053, file: !2899, line: 313, baseType: !402, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3053, file: !2899, line: 314, baseType: !402, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3053, file: !2899, line: 315, baseType: !3058, size: 384, offset: 128)
!3058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 384, elements: !1432)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3049, file: !2899, line: 336, baseType: !3060, offset: 4608)
!3060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, elements: !1346)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2917, file: !2899, line: 353, baseType: !3062, size: 32768)
!3062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 32768, elements: !3063)
!3063 = !{!3064}
!3064 = !DISubrange(count: 4096)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2898, file: !2899, line: 484, baseType: !2904, size: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2898, file: !2899, line: 491, baseType: !3067, size: 128, offset: 256)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2899, line: 404, size: 128, elements: !3068)
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3067, file: !2899, line: 424, baseType: !402, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3067, file: !2899, line: 432, baseType: !21, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3067, file: !2899, line: 440, baseType: !21, size: 32, offset: 96)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2898, file: !2899, line: 498, baseType: !3067, size: 128, offset: 384)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2898, file: !2899, line: 508, baseType: !2905, size: 33280, align: 512, offset: 512)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !921, file: !922, line: 16, baseType: !931, size: 192, offset: 512)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !921, file: !922, line: 17, baseType: !206, size: 32, offset: 704)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !477, file: !28, line: 1240, baseType: !119, size: 64, offset: 6912)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !477, file: !28, line: 1243, baseType: !399, size: 32, offset: 6976)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !477, file: !28, line: 1245, baseType: !678, size: 64, offset: 7040)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !477, file: !28, line: 1246, baseType: !678, size: 64, offset: 7104)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !477, file: !28, line: 1248, baseType: !131, size: 32, offset: 7168)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !477, file: !28, line: 1249, baseType: !3082, size: 64, offset: 7232)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !477, file: !28, line: 1252, baseType: !3085, size: 256, offset: 7296)
!3085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !407)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !477, file: !28, line: 1253, baseType: !3087, size: 128, offset: 7552)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3088, line: 21, baseType: !3089)
!3088 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3088, line: 19, size: 128, elements: !3090)
!3090 = !{!3091}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3089, file: !3088, line: 20, baseType: !3092, size: 128)
!3092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 128, elements: !2305)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !477, file: !28, line: 1255, baseType: !21, size: 32, offset: 7680)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !477, file: !28, line: 1261, baseType: !625, size: 256, offset: 7744)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !477, file: !28, line: 1267, baseType: !6, size: 64, offset: 8000)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !477, file: !28, line: 1269, baseType: !423, size: 64, offset: 8064)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !477, file: !28, line: 1271, baseType: !3098, size: 448, offset: 8128)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !687, line: 63, size: 448, elements: !3099)
!3099 = !{!3100, !3105, !3106, !3107, !3108, !3109, !3110}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3098, file: !687, line: 64, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!9, !3104, !685}
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3098, file: !687, line: 66, baseType: !3101, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3098, file: !687, line: 69, baseType: !287, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3098, file: !687, line: 70, baseType: !102, size: 32, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3098, file: !687, line: 71, baseType: !21, size: 32, offset: 224)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3098, file: !687, line: 74, baseType: !155, size: 128, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3098, file: !687, line: 85, baseType: !3111, size: 64, offset: 384)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !477, file: !28, line: 1274, baseType: !629, size: 64, offset: 8576)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !477, file: !28, line: 1280, baseType: !629, size: 64, offset: 8640)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !477, file: !28, line: 1283, baseType: !102, size: 32, offset: 8704)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !477, file: !28, line: 1286, baseType: !2024, size: 32, offset: 8736)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !477, file: !28, line: 1289, baseType: !3117, size: 64, offset: 8768)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2153, line: 18, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !477, file: !28, line: 1290, baseType: !517, size: 64, offset: 8832)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !477, file: !28, line: 1297, baseType: !1528, size: 64, offset: 8896)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !477, file: !28, line: 1304, baseType: !3122, size: 64, offset: 8960)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3123, line: 49, size: 64, elements: !3124)
!3123 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3122, file: !3123, line: 50, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3123, line: 41, size: 512, align: 512, elements: !3128)
!3128 = !{!3129, !3130, !3135}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3127, file: !3123, line: 43, baseType: !186, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3127, file: !3123, line: 45, baseType: !3131, size: 192, offset: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3123, line: 29, size: 192, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3131, file: !3123, line: 30, baseType: !155, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3131, file: !3123, line: 32, baseType: !287, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3127, file: !3123, line: 46, baseType: !287, size: 64, offset: 256)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !477, file: !28, line: 1305, baseType: !3122, size: 64, offset: 9024)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !477, file: !28, line: 1306, baseType: !938, size: 128, align: 64, offset: 9088)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !477, file: !28, line: 1307, baseType: !2152, size: 256, offset: 9216)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !477, file: !28, line: 1309, baseType: !625, size: 256, offset: 9472)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !477, file: !28, line: 1314, baseType: !102, size: 32, offset: 9728)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !477, file: !28, line: 1317, baseType: !186, size: 32, align: 512, offset: 10240)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !477, file: !28, line: 1318, baseType: !155, size: 128, offset: 10304)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !477, file: !28, line: 1320, baseType: !186, size: 32, offset: 10432)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !477, file: !28, line: 1321, baseType: !155, size: 128, offset: 10496)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !471, file: !472, line: 73, baseType: !102, size: 32, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !471, file: !472, line: 74, baseType: !3147, size: 64, offset: 192)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1370, line: 42, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !425, file: !367, line: 141, baseType: !3151, size: 64, offset: 704)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!102, !748, !1445}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !425, file: !367, line: 142, baseType: !3155, size: 64, offset: 768)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!365, !365, !3158}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !366, file: !367, line: 96, baseType: !476, size: 64, offset: 832)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !366, file: !367, line: 97, baseType: !9, size: 64, offset: 896)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !366, file: !367, line: 98, baseType: !119, size: 64, offset: 960)
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !367, line: 100, baseType: !3164, size: 128, offset: 1024)
!3164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !367, line: 100, size: 128, elements: !3165)
!3165 = !{!3166, !3167}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3164, file: !367, line: 101, baseType: !155, size: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3164, file: !367, line: 102, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !366, file: !367, line: 104, baseType: !155, size: 128, offset: 1152)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !366, file: !367, line: 105, baseType: !155, size: 128, offset: 1280)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !366, file: !367, line: 113, baseType: !3172, size: 128, offset: 1408)
!3172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !367, line: 109, size: 128, elements: !3173)
!3173 = !{!3174, !3175, !3176}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3172, file: !367, line: 110, baseType: !521, size: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3172, file: !367, line: 111, baseType: !381, size: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3172, file: !367, line: 112, baseType: !938, size: 128, align: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !359, file: !28, line: 1968, baseType: !3178, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!6, !365, !330, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3183, line: 10, size: 128, elements: !3184)
!3183 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3184 = !{!3185, !3189}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3182, file: !3183, line: 11, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !119}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3182, file: !3183, line: 12, baseType: !119, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !359, file: !28, line: 1969, baseType: !3191, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!102, !3147, !330, !102}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !359, file: !28, line: 1970, baseType: !3195, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!353, !330, !102, !1445}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !359, file: !28, line: 1972, baseType: !3199, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!102, !365, !12, !102}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !359, file: !28, line: 1974, baseType: !3203, size: 64, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!102, !3147, !330, !365, !293, !1445}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !359, file: !28, line: 1976, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!102, !365, !330, !365}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !359, file: !28, line: 1977, baseType: !3211, size: 64, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!102, !330, !365}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !359, file: !28, line: 1978, baseType: !3215, size: 64, offset: 512)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!102, !3147, !330, !365, !6}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !359, file: !28, line: 1980, baseType: !3219, size: 64, offset: 576)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!102, !3147, !330, !365, !293}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !359, file: !28, line: 1982, baseType: !3211, size: 64, offset: 640)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !359, file: !28, line: 1983, baseType: !3224, size: 64, offset: 704)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!102, !3147, !330, !365, !293, !481}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !359, file: !28, line: 1985, baseType: !3228, size: 64, offset: 768)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!102, !3147, !330, !365, !330, !365, !21}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !359, file: !28, line: 1987, baseType: !3232, size: 64, offset: 832)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!102, !3147, !365, !3235}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3250, !3259, !3260, !3265, !3266, !3267}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3236, file: !28, line: 227, baseType: !21, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3236, file: !28, line: 228, baseType: !293, size: 16, offset: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !28, line: 241, baseType: !3241, size: 32, offset: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3236, file: !28, line: 241, size: 32, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3241, file: !28, line: 242, baseType: !336, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3241, file: !28, line: 243, baseType: !3245, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3246, line: 16, baseType: !3247)
!3246 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3246, line: 14, size: 32, elements: !3248)
!3248 = !{!3249}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3247, file: !3246, line: 15, baseType: !341, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !28, line: 245, baseType: !3251, size: 32, offset: 96)
!3251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3236, file: !28, line: 245, size: 32, elements: !3252)
!3252 = !{!3253, !3254}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3251, file: !28, line: 246, baseType: !345, size: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3251, file: !28, line: 247, baseType: !3255, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3246, line: 20, baseType: !3256)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3246, line: 18, size: 32, elements: !3257)
!3257 = !{!3258}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3256, file: !3246, line: 19, baseType: !349, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3236, file: !28, line: 249, baseType: !486, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3236, file: !28, line: 250, baseType: !3261, size: 128, offset: 192)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !679, line: 13, size: 128, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3261, file: !679, line: 14, baseType: !678, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3261, file: !679, line: 15, baseType: !287, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3236, file: !28, line: 251, baseType: !3261, size: 128, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3236, file: !28, line: 252, baseType: !3261, size: 128, offset: 448)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3236, file: !28, line: 259, baseType: !1284, size: 64, offset: 576)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !359, file: !28, line: 1988, baseType: !3269, size: 64, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!102, !3147, !748, !3272, !399, !21}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3274, line: 22, size: 1280, elements: !3275)
!3274 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3275 = !{!3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3273, file: !3274, line: 23, baseType: !399, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3273, file: !3274, line: 24, baseType: !293, size: 16, offset: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3273, file: !3274, line: 25, baseType: !21, size: 32, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3273, file: !3274, line: 26, baseType: !1410, size: 32, offset: 96)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3273, file: !3274, line: 27, baseType: !402, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3273, file: !3274, line: 28, baseType: !402, size: 64, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3273, file: !3274, line: 41, baseType: !402, size: 64, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3273, file: !3274, line: 42, baseType: !481, size: 32, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3273, file: !3274, line: 43, baseType: !481, size: 32, offset: 352)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3273, file: !3274, line: 44, baseType: !336, size: 32, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3273, file: !3274, line: 45, baseType: !345, size: 32, offset: 416)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3273, file: !3274, line: 46, baseType: !486, size: 64, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3273, file: !3274, line: 47, baseType: !3261, size: 128, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3273, file: !3274, line: 48, baseType: !3261, size: 128, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3273, file: !3274, line: 49, baseType: !3261, size: 128, offset: 768)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3273, file: !3274, line: 50, baseType: !3261, size: 128, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3273, file: !3274, line: 51, baseType: !402, size: 64, offset: 1024)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3273, file: !3274, line: 52, baseType: !402, size: 64, offset: 1088)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3273, file: !3274, line: 53, baseType: !399, size: 32, offset: 1152)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3273, file: !3274, line: 54, baseType: !399, size: 32, offset: 1184)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3273, file: !3274, line: 55, baseType: !402, size: 64, offset: 1216)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !359, file: !28, line: 1990, baseType: !3298, size: 64, offset: 960)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!283, !365, !12, !298}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !359, file: !28, line: 1991, baseType: !3302, size: 64, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!102, !330, !3305, !402, !402}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !359, file: !28, line: 1993, baseType: !3308, size: 64, offset: 1088)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!102, !330, !102}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !359, file: !28, line: 1994, baseType: !3312, size: 64, offset: 1152)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!102, !330, !365, !1284, !21, !293}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !359, file: !28, line: 1997, baseType: !3316, size: 64, offset: 1216)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!102, !3147, !330, !1284, !293}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !359, file: !28, line: 1999, baseType: !3320, size: 64, offset: 1280)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!353, !3147, !365, !102}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !359, file: !28, line: 2001, baseType: !3324, size: 64, offset: 1344)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!102, !3147, !365, !353, !102}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !359, file: !28, line: 2003, baseType: !3328, size: 64, offset: 1408)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!102, !3147, !365, !3331}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !359, file: !28, line: 2005, baseType: !3334, size: 64, offset: 1472)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!102, !365, !3331}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !359, file: !28, line: 2006, baseType: !3338, size: 64, offset: 1536)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!3341, !330}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3343)
!3343 = !{!3344, !3351}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3342, file: !28, line: 3193, baseType: !3345, size: 128)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3346, line: 296, size: 128, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3347 = !{!3348, !3349, !3350}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3345, file: !3346, line: 297, baseType: !186, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3345, file: !3346, line: 299, baseType: !690, size: 32, offset: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3345, file: !3346, line: 300, baseType: !119, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3342, file: !28, line: 3194, baseType: !399, size: 32, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !331, file: !28, line: 655, baseType: !476, size: 64, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !331, file: !28, line: 656, baseType: !326, size: 64, offset: 512)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !331, file: !28, line: 659, baseType: !119, size: 64, offset: 576)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !331, file: !28, line: 663, baseType: !9, size: 64, offset: 640)
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !28, line: 671, baseType: !3357, size: 32, offset: 704)
!3357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !28, line: 671, size: 32, elements: !3358)
!3358 = !{!3359, !3361}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3357, file: !28, line: 672, baseType: !3360, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3357, file: !28, line: 673, baseType: !21, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !331, file: !28, line: 675, baseType: !481, size: 32, offset: 736)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !331, file: !28, line: 676, baseType: !486, size: 64, offset: 768)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !331, file: !28, line: 677, baseType: !3261, size: 128, offset: 832)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !331, file: !28, line: 678, baseType: !3261, size: 128, offset: 960)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !331, file: !28, line: 679, baseType: !3261, size: 128, offset: 1088)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !331, file: !28, line: 680, baseType: !186, size: 32, offset: 1216)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !331, file: !28, line: 681, baseType: !138, size: 16, offset: 1248)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !331, file: !28, line: 682, baseType: !214, size: 8, offset: 1264)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !331, file: !28, line: 683, baseType: !214, size: 8, offset: 1272)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !331, file: !28, line: 684, baseType: !826, size: 64, offset: 1280)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !331, file: !28, line: 691, baseType: !9, size: 64, offset: 1344)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !331, file: !28, line: 692, baseType: !838, size: 320, offset: 1408)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !331, file: !28, line: 694, baseType: !9, size: 64, offset: 1728)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !331, file: !28, line: 695, baseType: !9, size: 64, offset: 1792)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !331, file: !28, line: 697, baseType: !521, size: 128, offset: 1856)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !331, file: !28, line: 698, baseType: !155, size: 128, offset: 1984)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !331, file: !28, line: 707, baseType: !155, size: 128, offset: 2112)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !331, file: !28, line: 708, baseType: !155, size: 128, offset: 2240)
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !28, line: 709, baseType: !3381, size: 128, offset: 2368)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !28, line: 709, size: 128, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3381, file: !28, line: 710, baseType: !517, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3381, file: !28, line: 711, baseType: !938, size: 128, align: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !331, file: !28, line: 713, baseType: !631, size: 64, offset: 2496)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !331, file: !28, line: 714, baseType: !631, size: 64, offset: 2560)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !331, file: !28, line: 715, baseType: !206, size: 32, offset: 2624)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !331, file: !28, line: 716, baseType: !206, size: 32, offset: 2656)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !331, file: !28, line: 717, baseType: !206, size: 32, offset: 2688)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !331, file: !28, line: 719, baseType: !206, size: 32, offset: 2720)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !28, line: 721, baseType: !3392, size: 64, offset: 2752)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !28, line: 721, size: 64, elements: !3393)
!3393 = !{!3394, !3395}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3392, file: !28, line: 722, baseType: !1559, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3392, file: !28, line: 723, baseType: !548, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !331, file: !28, line: 725, baseType: !3397, size: 64, offset: 2816)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !331, file: !28, line: 726, baseType: !327, size: 1536, align: 64, offset: 2880)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !331, file: !28, line: 727, baseType: !155, size: 128, offset: 4416)
!3401 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !28, line: 728, baseType: !3402, size: 64, offset: 4544)
!3402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !28, line: 728, size: 64, elements: !3403)
!3403 = !{!3404, !3405, !3408, !3409}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3402, file: !28, line: 729, baseType: !1974, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3402, file: !28, line: 730, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !28, line: 730, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3402, file: !28, line: 731, baseType: !12, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3402, file: !28, line: 732, baseType: !21, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !331, file: !28, line: 735, baseType: !131, size: 32, offset: 4608)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !331, file: !28, line: 738, baseType: !131, size: 32, offset: 4640)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !331, file: !28, line: 739, baseType: !3082, size: 64, offset: 4672)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !331, file: !28, line: 750, baseType: !119, size: 64, offset: 4736)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !327, file: !28, line: 474, baseType: !3345, size: 128, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !327, file: !28, line: 475, baseType: !838, size: 320, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !327, file: !28, line: 476, baseType: !690, size: 32, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !327, file: !28, line: 477, baseType: !206, size: 32, offset: 544)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !327, file: !28, line: 482, baseType: !1140, size: 128, offset: 576)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !327, file: !28, line: 483, baseType: !9, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !327, file: !28, line: 484, baseType: !9, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !327, file: !28, line: 485, baseType: !3422, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3424)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3425)
!3425 = !{!3426, !3430, !3500, !3504, !3508, !3514, !3519, !3523, !3528, !3532, !3536, !3540, !3541, !3545, !3549, !3553, !3558, !3562, !3569, !3570}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3424, file: !28, line: 405, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!102, !1751, !560}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3424, file: !28, line: 406, baseType: !3431, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!102, !1284, !3434}
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !3436)
!3436 = !{!3437, !3467, !3481}
!3437 = !DIDerivedType(tag: DW_TAG_member, scope: !3435, file: !52, line: 295, baseType: !3438, size: 512)
!3438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3435, file: !52, line: 295, size: 512, elements: !3439)
!3439 = !{!3440, !3466}
!3440 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !52, line: 296, baseType: !3441, size: 448)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !52, line: 296, size: 448, elements: !3442)
!3442 = !{!3443, !3444, !3453, !3454, !3455, !3464, !3465}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3441, file: !52, line: 298, baseType: !9, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, scope: !3441, file: !52, line: 299, baseType: !3445, size: 128, offset: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3441, file: !52, line: 299, size: 128, elements: !3446)
!3446 = !{!3447, !3448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3445, file: !52, line: 300, baseType: !155, size: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, scope: !3445, file: !52, line: 302, baseType: !3449, size: 128)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3445, file: !52, line: 302, size: 128, elements: !3450)
!3450 = !{!3451, !3452}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3449, file: !52, line: 303, baseType: !119, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3449, file: !52, line: 305, baseType: !21, size: 32, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3441, file: !52, line: 310, baseType: !326, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3441, file: !52, line: 311, baseType: !9, size: 64, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, scope: !3441, file: !52, line: 312, baseType: !3456, size: 64, offset: 320)
!3456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3441, file: !52, line: 312, size: 64, elements: !3457)
!3457 = !{!3458, !3459}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3456, file: !52, line: 313, baseType: !119, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3456, file: !52, line: 314, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !3461)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !3462)
!3462 = !{!3463}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3461, file: !52, line: 256, baseType: !9, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3441, file: !52, line: 316, baseType: !206, size: 32, offset: 384)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3441, file: !52, line: 317, baseType: !206, size: 32, offset: 416)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3438, file: !52, line: 323, baseType: !1752, size: 512, align: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, scope: !3435, file: !52, line: 325, baseType: !3468, size: 512, offset: 512)
!3468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3435, file: !52, line: 325, size: 512, elements: !3469)
!3469 = !{!3470, !3480}
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3468, file: !52, line: 326, baseType: !3471, size: 320)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3468, file: !52, line: 326, size: 320, elements: !3472)
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478, !3479}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3471, file: !52, line: 327, baseType: !9, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3471, file: !52, line: 328, baseType: !9, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3471, file: !52, line: 329, baseType: !9, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3471, file: !52, line: 331, baseType: !206, size: 32, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3471, file: !52, line: 332, baseType: !206, size: 32, offset: 224)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3471, file: !52, line: 333, baseType: !206, size: 32, offset: 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3471, file: !52, line: 335, baseType: !21, size: 32, offset: 288)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3468, file: !52, line: 339, baseType: !1752, size: 512, align: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !3435, file: !52, line: 341, baseType: !3482, size: 512, offset: 1024)
!3482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3435, file: !52, line: 341, size: 512, elements: !3483)
!3483 = !{!3484, !3493, !3499}
!3484 = !DIDerivedType(tag: DW_TAG_member, scope: !3482, file: !52, line: 342, baseType: !3485, size: 384)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3482, file: !52, line: 342, size: 384, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3485, file: !52, line: 343, baseType: !9, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3485, file: !52, line: 344, baseType: !9, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3485, file: !52, line: 346, baseType: !119, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3485, file: !52, line: 347, baseType: !119, size: 64, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3485, file: !52, line: 348, baseType: !119, size: 64, offset: 256)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3485, file: !52, line: 349, baseType: !119, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !3482, file: !52, line: 352, baseType: !3494, size: 256)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3482, file: !52, line: 352, size: 256, elements: !3495)
!3495 = !{!3496, !3497, !3498}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3494, file: !52, line: 353, baseType: !9, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3494, file: !52, line: 354, baseType: !9, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3494, file: !52, line: 356, baseType: !155, size: 128, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3482, file: !52, line: 359, baseType: !1752, size: 512, align: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3424, file: !28, line: 409, baseType: !3501, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!102, !326, !560}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3424, file: !28, line: 412, baseType: !3505, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!1445, !326, !3434}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3424, file: !28, line: 414, baseType: !3509, size: 64, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !3512}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3424, file: !28, line: 416, baseType: !3515, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!102, !1284, !326, !486, !21, !3518, !1989}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3424, file: !28, line: 419, baseType: !3520, size: 64, offset: 384)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!102, !1284, !326, !486, !21, !21, !1751, !119}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3424, file: !28, line: 424, baseType: !3524, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!3527, !326, !3527}
!3527 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !156, line: 131, baseType: !402)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3424, file: !28, line: 425, baseType: !3529, size: 64, offset: 512)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !3434, !298, !298}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3424, file: !28, line: 426, baseType: !3533, size: 64, offset: 576)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!1445, !3434, !690}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3424, file: !28, line: 427, baseType: !3537, size: 64, offset: 640)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{null, !3434}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3424, file: !28, line: 428, baseType: !1578, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3424, file: !28, line: 433, baseType: !3542, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!102, !326, !3434, !3434, !88}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3424, file: !28, line: 435, baseType: !3546, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!102, !3434}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3424, file: !28, line: 436, baseType: !3550, size: 64, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!1445, !3434, !298, !298}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3424, file: !28, line: 438, baseType: !3554, size: 64, offset: 960)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{null, !3434, !3557, !3557}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3424, file: !28, line: 439, baseType: !3559, size: 64, offset: 1024)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!102, !326, !1751}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3424, file: !28, line: 442, baseType: !3563, size: 64, offset: 1088)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!102, !3566, !1284, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3424, file: !28, line: 444, baseType: !1981, size: 64, offset: 1152)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3424, file: !28, line: 445, baseType: !3571, size: 64, offset: 1216)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!102, !1581, !1603}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !28, line: 486, baseType: !9, size: 64, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !327, file: !28, line: 487, baseType: !838, size: 320, offset: 960)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !327, file: !28, line: 488, baseType: !2024, size: 32, offset: 1280)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !327, file: !28, line: 489, baseType: !186, size: 32, offset: 1312)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !327, file: !28, line: 490, baseType: !155, size: 128, offset: 1344)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !327, file: !28, line: 491, baseType: !119, size: 64, offset: 1472)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !317, file: !277, line: 180, baseType: !3581, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!283, !1284, !179, !316, !12, !486, !298}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !317, file: !277, line: 182, baseType: !3581, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !317, file: !277, line: 184, baseType: !3586, size: 64, offset: 448)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!102, !1284, !179, !316, !1642}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !305, file: !277, line: 90, baseType: !3590, size: 64, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !305, file: !277, line: 91, baseType: !3592, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !267, file: !174, line: 120, baseType: !3594, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!3597, !235}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3599)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !96, line: 39, size: 384, elements: !3600)
!3600 = !{!3601, !3602, !3606, !3610, !3616, !3620}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3599, file: !96, line: 40, baseType: !95, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3599, file: !96, line: 41, baseType: !3603, size: 64, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!1445}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3599, file: !96, line: 42, baseType: !3607, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!119}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3599, file: !96, line: 43, baseType: !3611, size: 64, offset: 192)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!2113, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !96, line: 19, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3599, file: !96, line: 44, baseType: !3617, size: 64, offset: 256)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!2113}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3599, file: !96, line: 45, baseType: !3186, size: 64, offset: 320)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !267, file: !174, line: 121, baseType: !3622, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!2113, !235}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !267, file: !174, line: 122, baseType: !3626, size: 64, offset: 320)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{null, !235, !3629, !3630}
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !173, file: !174, line: 70, baseType: !3632, size: 64, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !501, line: 190, size: 1152, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3726, !3727, !3728, !3729, !3730, !3733}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3633, file: !501, line: 191, baseType: !206, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3633, file: !501, line: 192, baseType: !206, size: 32, offset: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3633, file: !501, line: 202, baseType: !3632, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3633, file: !501, line: 203, baseType: !6, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3633, file: !501, line: 205, baseType: !1011, size: 192, align: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3633, file: !501, line: 207, baseType: !2113, size: 64, offset: 384)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3633, file: !501, line: 208, baseType: !21, size: 32, offset: 448)
!3642 = !DIDerivedType(tag: DW_TAG_member, scope: !3633, file: !501, line: 209, baseType: !3643, size: 256, offset: 512)
!3643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3633, file: !501, line: 209, size: 256, elements: !3644)
!3644 = !{!3645, !3654, !3658}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3643, file: !501, line: 210, baseType: !3646, size: 256)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !501, line: 153, size: 256, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3653}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3646, file: !501, line: 154, baseType: !9, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3646, file: !501, line: 156, baseType: !1143, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3646, file: !501, line: 162, baseType: !3651, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !501, line: 162, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3646, file: !501, line: 167, baseType: !9, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3643, file: !501, line: 211, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !501, line: 170, size: 64, elements: !3656)
!3656 = !{!3657}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3655, file: !501, line: 171, baseType: !3632, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3643, file: !501, line: 212, baseType: !3659, size: 256)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !501, line: 174, size: 256, elements: !3660)
!3660 = !{!3661, !3721, !3724, !3725}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3659, file: !501, line: 175, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !501, line: 271, size: 768, elements: !3665)
!3665 = !{!3666, !3686, !3690, !3694, !3698, !3702, !3706, !3710, !3711, !3712, !3713, !3717}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3664, file: !501, line: 276, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!102, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !501, line: 251, size: 1216, elements: !3672)
!3672 = !{!3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3671, file: !501, line: 253, baseType: !3632, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3671, file: !501, line: 254, baseType: !1284, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3671, file: !501, line: 255, baseType: !598, size: 64, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3671, file: !501, line: 256, baseType: !119, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3671, file: !501, line: 259, baseType: !625, size: 256, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3671, file: !501, line: 260, baseType: !625, size: 256, offset: 512)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3671, file: !501, line: 261, baseType: !102, size: 32, offset: 768)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3671, file: !501, line: 262, baseType: !155, size: 128, offset: 832)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3671, file: !501, line: 263, baseType: !12, size: 64, offset: 960)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3671, file: !501, line: 265, baseType: !298, size: 64, offset: 1024)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3671, file: !501, line: 266, baseType: !1445, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3671, file: !501, line: 267, baseType: !1445, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3671, file: !501, line: 268, baseType: !1687, size: 64, offset: 1152)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3664, file: !501, line: 277, baseType: !3687, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !3670}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3664, file: !501, line: 290, baseType: !3691, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!102, !598, !119}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3664, file: !501, line: 292, baseType: !3695, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!119, !598, !1572}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3664, file: !501, line: 293, baseType: !3699, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!119, !598, !119, !1572}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3664, file: !501, line: 294, baseType: !3703, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !598, !119}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3664, file: !501, line: 296, baseType: !3707, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!283, !3670, !12, !298, !486}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3664, file: !501, line: 306, baseType: !298, size: 64, offset: 448)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3664, file: !501, line: 313, baseType: !1445, size: 8, offset: 512)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3664, file: !501, line: 314, baseType: !3707, size: 64, offset: 576)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3664, file: !501, line: 317, baseType: !3714, size: 64, offset: 640)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!1629, !3670, !1631}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3664, file: !501, line: 320, baseType: !3718, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!102, !3670, !1642}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3659, file: !501, line: 176, baseType: !3722, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !501, line: 35, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3659, file: !501, line: 177, baseType: !486, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3659, file: !501, line: 178, baseType: !3632, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3633, file: !501, line: 215, baseType: !119, size: 64, offset: 768)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3633, file: !501, line: 221, baseType: !402, size: 64, offset: 832)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3633, file: !501, line: 223, baseType: !138, size: 16, offset: 896)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3633, file: !501, line: 224, baseType: !293, size: 16, offset: 912)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3633, file: !501, line: 225, baseType: !3731, size: 64, offset: 960)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !501, line: 36, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3633, file: !501, line: 227, baseType: !938, size: 128, align: 64, offset: 1024)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !173, file: !174, line: 71, baseType: !3735, size: 32, offset: 448)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3736, line: 19, size: 32, elements: !3737)
!3736 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3737 = !{!3738}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3735, file: !3736, line: 20, baseType: !967, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !173, file: !174, line: 73, baseType: !21, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !173, file: !174, line: 74, baseType: !21, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !173, file: !174, line: 75, baseType: !21, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !173, file: !174, line: 76, baseType: !21, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !173, file: !174, line: 77, baseType: !21, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !170, file: !20, line: 47, baseType: !160, size: 64, offset: 512)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !170, file: !20, line: 48, baseType: !179, size: 64, offset: 576)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !170, file: !20, line: 49, baseType: !3747, size: 64, offset: 640)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !170, file: !20, line: 50, baseType: !2262, size: 64, offset: 704)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !161, file: !20, line: 418, baseType: !3751, size: 64, offset: 1408)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !3753)
!3753 = !{!3754, !3755, !3760, !3764, !3768, !3772}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3752, file: !20, line: 54, baseType: !289, size: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3752, file: !20, line: 55, baseType: !3756, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!283, !3751, !3759, !12}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3752, file: !20, line: 57, baseType: !3761, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!283, !3751, !3759, !6, !298}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3752, file: !20, line: 59, baseType: !3765, size: 64, offset: 256)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !160, !6}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3752, file: !20, line: 60, baseType: !3769, size: 64, offset: 320)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!102, !160}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3752, file: !20, line: 61, baseType: !3773, size: 64, offset: 384)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !160}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !161, file: !20, line: 419, baseType: !6, size: 64, offset: 1472)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !161, file: !20, line: 420, baseType: !6, size: 64, offset: 1536)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !161, file: !20, line: 421, baseType: !179, size: 64, offset: 1600)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !161, file: !20, line: 424, baseType: !3780, size: 64, offset: 1664)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !3783, line: 35, size: 96, elements: !3784)
!3783 = !DIFile(filename: "kernel/module/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90211cd71019263d9071e3fe8acaefa7")
!3784 = !{!3785, !3786, !3787}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "value_offset", scope: !3782, file: !3783, line: 37, baseType: !102, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "name_offset", scope: !3782, file: !3783, line: 38, baseType: !102, size: 32, offset: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_offset", scope: !3782, file: !3783, line: 39, baseType: !102, size: 32, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !161, file: !20, line: 425, baseType: !3789, size: 64, offset: 1728)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !161, file: !20, line: 426, baseType: !21, size: 32, offset: 1792)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !161, file: !20, line: 435, baseType: !625, size: 256, offset: 1856)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !161, file: !20, line: 437, baseType: !3794, size: 64, offset: 2112)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3796, line: 69, size: 320, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3797 = !{!3798, !3799, !3800, !3817, !3819, !3823, !3824}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3795, file: !3796, line: 70, baseType: !6, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3795, file: !3796, line: 71, baseType: !160, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3795, file: !3796, line: 72, baseType: !3801, size: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3796, line: 47, size: 256, elements: !3804)
!3804 = !{!3805, !3806, !3812, !3816}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3803, file: !3796, line: 49, baseType: !21, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3803, file: !3796, line: 51, baseType: !3807, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!102, !6, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3795)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3803, file: !3796, line: 53, baseType: !3813, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!102, !12, !3810}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3803, file: !3796, line: 55, baseType: !3186, size: 64, offset: 192)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3795, file: !3796, line: 73, baseType: !3818, size: 16, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3795, file: !3796, line: 74, baseType: !3820, size: 8, offset: 208)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !215, line: 16, baseType: !3821)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !132, line: 20, baseType: !3822)
!3822 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3795, file: !3796, line: 75, baseType: !214, size: 8, offset: 216)
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !3795, file: !3796, line: 76, baseType: !3825, size: 64, offset: 256)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3795, file: !3796, line: 76, size: 64, elements: !3826)
!3826 = !{!3827, !3828, !3835}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3825, file: !3796, line: 77, baseType: !119, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3825, file: !3796, line: 78, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3796, line: 86, size: 128, elements: !3832)
!3832 = !{!3833, !3834}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3831, file: !3796, line: 87, baseType: !21, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3831, file: !3796, line: 88, baseType: !12, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3825, file: !3796, line: 79, baseType: !3836, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3838)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3796, line: 92, size: 256, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3843, !3844}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3838, file: !3796, line: 94, baseType: !21, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3838, file: !3796, line: 95, baseType: !21, size: 32, offset: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3838, file: !3796, line: 96, baseType: !947, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3838, file: !3796, line: 97, baseType: !3801, size: 64, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3838, file: !3796, line: 98, baseType: !119, size: 64, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !161, file: !20, line: 438, baseType: !21, size: 32, offset: 2176)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !161, file: !20, line: 441, baseType: !21, size: 32, offset: 2208)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !161, file: !20, line: 442, baseType: !3780, size: 64, offset: 2240)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !161, file: !20, line: 443, baseType: !3789, size: 64, offset: 2304)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !161, file: !20, line: 444, baseType: !1445, size: 8, offset: 2368)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !161, file: !20, line: 451, baseType: !1445, size: 8, offset: 2376)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !161, file: !20, line: 454, baseType: !21, size: 32, offset: 2400)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !161, file: !20, line: 455, baseType: !3853, size: 64, offset: 2432)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3855, line: 23, size: 96, elements: !3856)
!3855 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3856 = !{!3857, !3858, !3859}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3854, file: !3855, line: 24, baseType: !102, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3854, file: !3855, line: 24, baseType: !102, size: 32, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3854, file: !3855, line: 24, baseType: !102, size: 32, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !161, file: !20, line: 458, baseType: !3861, size: 64, offset: 2496)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!102}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !161, file: !20, line: 460, baseType: !3865, size: 4032, align: 512, offset: 2560)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3866, size: 4032, elements: !3880)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !3867)
!3867 = !{!3868, !3869, !3870}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3866, file: !20, line: 363, baseType: !119, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3866, file: !20, line: 364, baseType: !21, size: 32, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3866, file: !20, line: 367, baseType: !3871, size: 448, offset: 128)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !3872)
!3872 = !{!3873, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3871, file: !20, line: 320, baseType: !160, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3871, file: !20, line: 321, baseType: !3875, size: 384, offset: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3876, line: 40, size: 384, elements: !3877)
!3876 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3877 = !{!3878}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3875, file: !3876, line: 41, baseType: !3879, size: 384, align: 64)
!3879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 384, align: 64, elements: !2387)
!3880 = !{!3881}
!3881 = !DISubrange(count: 7)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !161, file: !20, line: 463, baseType: !3883, size: 192, offset: 6592)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3884, line: 8, size: 192, elements: !3885)
!3884 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3883, file: !3884, line: 10, baseType: !21, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3883, file: !3884, line: 11, baseType: !592, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3883, file: !3884, line: 12, baseType: !3889, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3891, line: 59, size: 48, elements: !3892)
!3891 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3890, file: !3891, line: 60, baseType: !2130, size: 16)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3890, file: !3891, line: 61, baseType: !2130, size: 16, offset: 16)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3890, file: !3891, line: 63, baseType: !21, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3890, file: !3891, line: 64, baseType: !21, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3890, file: !3891, line: 65, baseType: !21, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3890, file: !3891, line: 66, baseType: !21, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !161, file: !20, line: 465, baseType: !9, size: 64, offset: 6784)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !161, file: !20, line: 469, baseType: !21, size: 32, offset: 6848)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !161, file: !20, line: 470, baseType: !155, size: 128, offset: 6912)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !161, file: !20, line: 471, baseType: !3903, size: 64, offset: 7040)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3905, line: 33, size: 96, elements: !3906)
!3905 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3906 = !{!3907, !3908, !3909, !3910}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3904, file: !3905, line: 37, baseType: !102, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3904, file: !3905, line: 43, baseType: !102, size: 32, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3904, file: !3905, line: 45, baseType: !138, size: 16, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3904, file: !3905, line: 47, baseType: !138, size: 16, offset: 80)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !161, file: !20, line: 476, baseType: !120, size: 64, offset: 7104)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !161, file: !20, line: 477, baseType: !121, size: 256, offset: 7168)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !161, file: !20, line: 480, baseType: !3914, size: 64, offset: 7424)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !161, file: !20, line: 483, baseType: !3917, size: 64, offset: 7488)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !161, file: !20, line: 488, baseType: !12, size: 64, offset: 7552)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !161, file: !20, line: 492, baseType: !119, size: 64, offset: 7616)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !161, file: !20, line: 493, baseType: !21, size: 32, offset: 7680)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !161, file: !20, line: 495, baseType: !119, size: 64, offset: 7744)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !161, file: !20, line: 496, baseType: !21, size: 32, offset: 7808)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !161, file: !20, line: 499, baseType: !21, size: 32, offset: 7840)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !161, file: !20, line: 500, baseType: !3926, size: 64, offset: 7872)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3928, line: 45, baseType: !3929)
!3928 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !161, file: !20, line: 503, baseType: !21, size: 32, offset: 7936)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !161, file: !20, line: 504, baseType: !3932, size: 64, offset: 8000)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3935, line: 96, size: 192, elements: !3936)
!3935 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3936 = !{!3937, !3938, !3981, !3983}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3934, file: !3935, line: 97, baseType: !21, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3934, file: !3935, line: 98, baseType: !3939, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3935, line: 24, size: 3072, elements: !3941)
!3941 = !{!3942, !3944, !3945, !3946, !3947, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3978, !3979, !3980}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3940, file: !3935, line: 26, baseType: !3943, size: 128)
!3943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 128, elements: !2387)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3940, file: !3935, line: 27, baseType: !3943, size: 128, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3940, file: !3935, line: 28, baseType: !102, size: 32, offset: 256)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3940, file: !3935, line: 31, baseType: !186, size: 32, align: 512, offset: 512)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3940, file: !3935, line: 32, baseType: !3948, size: 960, offset: 576)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3949, line: 206, size: 960, elements: !3950)
!3949 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3950 = !{!3951, !3952, !3955, !3957, !3958, !3960}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3948, file: !3949, line: 207, baseType: !941, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3948, file: !3949, line: 208, baseType: !3953, size: 256, offset: 64)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3954, size: 256, elements: !1333)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3948, file: !3949, line: 209, baseType: !3956, size: 256, offset: 320)
!3956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !1333)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3948, file: !3949, line: 213, baseType: !287, size: 64, offset: 576)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3948, file: !3949, line: 215, baseType: !3959, size: 256, offset: 640)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !1333)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3948, file: !3949, line: 216, baseType: !214, size: 8, offset: 896)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3940, file: !3935, line: 33, baseType: !9, size: 64, offset: 1536)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3940, file: !3935, line: 34, baseType: !9, size: 64, offset: 1600)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3940, file: !3935, line: 35, baseType: !1445, size: 8, offset: 1664)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3940, file: !3935, line: 36, baseType: !2823, size: 320, offset: 1728)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3940, file: !3935, line: 37, baseType: !2152, size: 256, offset: 2048)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3940, file: !3935, line: 38, baseType: !938, size: 128, align: 64, offset: 2304)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3940, file: !3935, line: 39, baseType: !3968, size: 64, offset: 2432)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3935, line: 49, size: 768, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3974, !3975, !3976, !3977}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3969, file: !3935, line: 50, baseType: !186, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3969, file: !3935, line: 51, baseType: !3956, size: 256, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3969, file: !3935, line: 53, baseType: !3956, size: 256, offset: 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3969, file: !3935, line: 54, baseType: !9, size: 64, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3969, file: !3935, line: 55, baseType: !3968, size: 64, offset: 640)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3969, file: !3935, line: 56, baseType: !102, size: 32, offset: 704)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3969, file: !3935, line: 57, baseType: !102, size: 32, offset: 736)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3940, file: !3935, line: 40, baseType: !9, size: 64, offset: 2496)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3940, file: !3935, line: 42, baseType: !102, size: 32, offset: 2560)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3940, file: !3935, line: 43, baseType: !3933, size: 64, offset: 2624)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3934, file: !3935, line: 99, baseType: !3982, offset: 128)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !528, line: 211, elements: !529)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3934, file: !3935, line: 100, baseType: !3984, size: 64, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3935, line: 63, size: 3008, elements: !3986)
!3986 = !{!3987, !3988, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4016}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3985, file: !3935, line: 64, baseType: !3968, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3985, file: !3935, line: 65, baseType: !3989, size: 192, offset: 64)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3968, size: 192, elements: !252)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3985, file: !3935, line: 67, baseType: !102, size: 32, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3985, file: !3935, line: 68, baseType: !625, size: 256, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3985, file: !3935, line: 69, baseType: !186, size: 32, offset: 576)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3985, file: !3935, line: 70, baseType: !625, size: 256, offset: 640)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3985, file: !3935, line: 71, baseType: !9, size: 64, offset: 896)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3985, file: !3935, line: 72, baseType: !9, size: 64, offset: 960)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3985, file: !3935, line: 73, baseType: !9, size: 64, offset: 1024)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3985, file: !3935, line: 74, baseType: !9, size: 64, offset: 1088)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3985, file: !3935, line: 75, baseType: !9, size: 64, offset: 1152)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3985, file: !3935, line: 76, baseType: !9, size: 64, offset: 1216)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3985, file: !3935, line: 77, baseType: !9, size: 64, offset: 1280)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3985, file: !3935, line: 78, baseType: !9, size: 64, offset: 1344)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3985, file: !3935, line: 79, baseType: !1445, size: 8, offset: 1408)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3985, file: !3935, line: 80, baseType: !9, size: 64, offset: 1472)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3985, file: !3935, line: 81, baseType: !625, size: 256, offset: 1536)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3985, file: !3935, line: 82, baseType: !1836, size: 256, offset: 1792)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3985, file: !3935, line: 84, baseType: !206, size: 32, offset: 2048)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3985, file: !3935, line: 87, baseType: !9, size: 64, offset: 2112)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3985, file: !3935, line: 88, baseType: !9, size: 64, offset: 2176)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3985, file: !3935, line: 89, baseType: !4010, size: 704, offset: 2240)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2153, line: 111, size: 704, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4010, file: !2153, line: 112, baseType: !2152, size: 256)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4010, file: !2153, line: 113, baseType: !2823, size: 320, offset: 256)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4010, file: !2153, line: 116, baseType: !3117, size: 64, offset: 576)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4010, file: !2153, line: 117, baseType: !102, size: 32, offset: 640)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3985, file: !3935, line: 90, baseType: !3933, size: 64, offset: 2944)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !161, file: !20, line: 515, baseType: !4018, size: 64, offset: 8064)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4020, line: 117, size: 128, elements: !4021)
!4020 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4021 = !{!4022, !4023, !4024}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4019, file: !4020, line: 118, baseType: !1388, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4019, file: !4020, line: 119, baseType: !1388, size: 32, offset: 32)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4019, file: !4020, line: 120, baseType: !287, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !161, file: !20, line: 516, baseType: !21, size: 32, offset: 8128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !161, file: !20, line: 519, baseType: !21, size: 32, offset: 8160)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !161, file: !20, line: 520, baseType: !4028, size: 64, offset: 8192)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !161, file: !20, line: 523, baseType: !4030, size: 64, offset: 8256)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !161, file: !20, line: 524, baseType: !21, size: 32, offset: 8320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !161, file: !20, line: 525, baseType: !4035, size: 64, offset: 8384)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !161, file: !20, line: 526, baseType: !21, size: 32, offset: 8448)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !161, file: !20, line: 533, baseType: !119, size: 64, offset: 8512)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !161, file: !20, line: 534, baseType: !21, size: 32, offset: 8576)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !161, file: !20, line: 535, baseType: !10, size: 64, offset: 8640)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !161, file: !20, line: 536, baseType: !21, size: 32, offset: 8704)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !161, file: !20, line: 539, baseType: !102, size: 32, offset: 8736)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !161, file: !20, line: 540, baseType: !4045, size: 64, offset: 8768)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4047, line: 32, size: 64, elements: !4048)
!4047 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4046, file: !4047, line: 33, baseType: !1388, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4046, file: !4047, line: 34, baseType: !1388, size: 32, offset: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !161, file: !20, line: 563, baseType: !155, size: 128, offset: 8832)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !161, file: !20, line: 565, baseType: !155, size: 128, offset: 8960)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !161, file: !20, line: 568, baseType: !4054, size: 64, offset: 9088)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !161, file: !20, line: 570, baseType: !206, size: 32, offset: 9152)
!4056 = !{!0, !4057, !4077, !4079, !4107, !4109, !4117, !4126, !4156}
!4057 = !DIGlobalVariableExpression(var: !4058, expr: !DIExpression())
!4058 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule310", scope: !4059, file: !3, line: 375, type: !119, isLocal: true, isDefinition: true)
!4059 = distinct !DISubprogram(name: "lookup_module_symbol_name", scope: !3, file: !3, line: 359, type: !4060, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!102, !9, !12}
!4062 = !{!4063, !4064, !4065, !4066, !4069, !4074, !4076}
!4063 = !DILocalVariable(name: "addr", arg: 1, scope: !4059, file: !3, line: 359, type: !9)
!4064 = !DILocalVariable(name: "symname", arg: 2, scope: !4059, file: !3, line: 359, type: !12)
!4065 = !DILocalVariable(name: "mod", scope: !4059, file: !3, line: 361, type: !160)
!4066 = !DILocalVariable(name: "__mptr", scope: !4067, file: !3, line: 364, type: !119)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 364, column: 2)
!4068 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 364, column: 2)
!4069 = !DILocalVariable(name: "sym", scope: !4070, file: !3, line: 368, type: !6)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 367, column: 33)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 367, column: 7)
!4072 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 364, column: 47)
!4073 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 364, column: 2)
!4074 = !DILocalVariable(name: "__mptr", scope: !4075, file: !3, line: 364, type: !119)
!4075 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 364, column: 2)
!4076 = !DILabel(scope: !4059, name: "out", file: !3, line: 379)
!4077 = !DIGlobalVariableExpression(var: !4078, expr: !DIExpression())
!4078 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule311", scope: !4059, file: !3, line: 380, type: !119, isLocal: true, isDefinition: true)
!4079 = !DIGlobalVariableExpression(var: !4080, expr: !DIExpression())
!4080 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule316", scope: !4081, file: !3, line: 404, type: !119, isLocal: true, isDefinition: true)
!4081 = distinct !DISubprogram(name: "module_get_kallsym", scope: !3, file: !3, line: 384, type: !4082, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!102, !21, !10, !12, !12, !12, !592}
!4084 = !{!4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4095, !4098, !4100, !4105}
!4085 = !DILocalVariable(name: "symnum", arg: 1, scope: !4081, file: !3, line: 384, type: !21)
!4086 = !DILocalVariable(name: "value", arg: 2, scope: !4081, file: !3, line: 384, type: !10)
!4087 = !DILocalVariable(name: "type", arg: 3, scope: !4081, file: !3, line: 384, type: !12)
!4088 = !DILocalVariable(name: "name", arg: 4, scope: !4081, file: !3, line: 385, type: !12)
!4089 = !DILocalVariable(name: "module_name", arg: 5, scope: !4081, file: !3, line: 385, type: !12)
!4090 = !DILocalVariable(name: "exported", arg: 6, scope: !4081, file: !3, line: 385, type: !592)
!4091 = !DILocalVariable(name: "mod", scope: !4081, file: !3, line: 387, type: !160)
!4092 = !DILocalVariable(name: "__mptr", scope: !4093, file: !3, line: 390, type: !119)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 390, column: 2)
!4094 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 390, column: 2)
!4095 = !DILocalVariable(name: "kallsyms", scope: !4096, file: !3, line: 391, type: !120)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 390, column: 47)
!4097 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 390, column: 2)
!4098 = !DILocalVariable(name: "__UNIQUE_ID_rcu314", scope: !4099, file: !3, line: 395, type: !120)
!4099 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 395, column: 14)
!4100 = !DILocalVariable(name: "sym", scope: !4101, file: !3, line: 397, type: !4103)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 396, column: 38)
!4102 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 396, column: 7)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!4105 = !DILocalVariable(name: "__mptr", scope: !4106, file: !3, line: 390, type: !119)
!4106 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 390, column: 2)
!4107 = !DIGlobalVariableExpression(var: !4108, expr: !DIExpression())
!4108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule317", scope: !4081, file: !3, line: 409, type: !119, isLocal: true, isDefinition: true)
!4109 = !DIGlobalVariableExpression(var: !4110, expr: !DIExpression())
!4110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule322", scope: !4111, file: !3, line: 462, type: !119, isLocal: true, isDefinition: true)
!4111 = distinct !DISubprogram(name: "module_kallsyms_lookup_name", scope: !3, file: !3, line: 455, type: !4112, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!9, !6}
!4114 = !{!4115, !4116}
!4115 = !DILocalVariable(name: "name", arg: 1, scope: !4111, file: !3, line: 455, type: !6)
!4116 = !DILocalVariable(name: "ret", scope: !4111, file: !3, line: 457, type: !9)
!4117 = !DIGlobalVariableExpression(var: !4118, expr: !DIExpression())
!4118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule323", scope: !4119, file: !3, line: 472, type: !119, isLocal: true, isDefinition: true)
!4119 = distinct !DISubprogram(name: "find_kallsyms_symbol_value", scope: !3, file: !3, line: 466, type: !4120, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!9, !160, !6}
!4122 = !{!4123, !4124, !4125}
!4123 = !DILocalVariable(name: "mod", arg: 1, scope: !4119, file: !3, line: 466, type: !160)
!4124 = !DILocalVariable(name: "name", arg: 2, scope: !4119, file: !3, line: 466, type: !6)
!4125 = !DILocalVariable(name: "ret", scope: !4119, file: !3, line: 468, type: !9)
!4126 = !DIGlobalVariableExpression(var: !4127, expr: !DIExpression())
!4127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule326", scope: !4128, file: !3, line: 497, type: !119, isLocal: true, isDefinition: true)
!4128 = distinct !DISubprogram(name: "module_kallsyms_on_each_symbol", scope: !3, file: !3, line: 476, type: !4129, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4134)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!102, !6, !4131, !119}
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!102, !119, !6, !9}
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4140, !4141, !4144, !4147, !4149, !4153, !4155}
!4135 = !DILocalVariable(name: "modname", arg: 1, scope: !4128, file: !3, line: 476, type: !6)
!4136 = !DILocalVariable(name: "fn", arg: 2, scope: !4128, file: !3, line: 477, type: !4131)
!4137 = !DILocalVariable(name: "data", arg: 3, scope: !4128, file: !3, line: 478, type: !119)
!4138 = !DILocalVariable(name: "mod", scope: !4128, file: !3, line: 480, type: !160)
!4139 = !DILocalVariable(name: "i", scope: !4128, file: !3, line: 481, type: !21)
!4140 = !DILocalVariable(name: "ret", scope: !4128, file: !3, line: 482, type: !102)
!4141 = !DILocalVariable(name: "__mptr", scope: !4142, file: !3, line: 485, type: !119)
!4142 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 485, column: 2)
!4143 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 485, column: 2)
!4144 = !DILocalVariable(name: "kallsyms", scope: !4145, file: !3, line: 486, type: !120)
!4145 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 485, column: 43)
!4146 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 485, column: 2)
!4147 = !DILocalVariable(name: "__UNIQUE_ID_rcu324", scope: !4148, file: !3, line: 496, type: !120)
!4148 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 496, column: 14)
!4149 = !DILocalVariable(name: "sym", scope: !4150, file: !3, line: 500, type: !4103)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 499, column: 46)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 499, column: 3)
!4152 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 499, column: 3)
!4153 = !DILocalVariable(name: "__mptr", scope: !4154, file: !3, line: 485, type: !119)
!4154 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 485, column: 2)
!4155 = !DILabel(scope: !4128, name: "out", file: !3, line: 518)
!4156 = !DIGlobalVariableExpression(var: !4157, expr: !DIExpression())
!4157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !4158, isLocal: true, isDefinition: true)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 56, elements: !3880)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167}
!4160 = !DILocalVariable(name: "addr", arg: 1, scope: !2, file: !3, line: 324, type: !9)
!4161 = !DILocalVariable(name: "size", arg: 2, scope: !2, file: !3, line: 325, type: !10)
!4162 = !DILocalVariable(name: "offset", arg: 3, scope: !2, file: !3, line: 326, type: !10)
!4163 = !DILocalVariable(name: "modname", arg: 4, scope: !2, file: !3, line: 327, type: !11)
!4164 = !DILocalVariable(name: "modbuildid", arg: 5, scope: !2, file: !3, line: 328, type: !13)
!4165 = !DILocalVariable(name: "namebuf", arg: 6, scope: !2, file: !3, line: 329, type: !12)
!4166 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 331, type: !6)
!4167 = !DILocalVariable(name: "mod", scope: !2, file: !3, line: 332, type: !160)
!4168 = !{!"rsp"}
!4169 = !{i32 7, !"Dwarf Version", i32 5}
!4170 = !{i32 2, !"Debug Info Version", i32 3}
!4171 = !{i32 1, !"wchar_size", i32 2}
!4172 = !{i32 8, !"cf-protection-branch", i32 1}
!4173 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4174 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4175 = !{i32 1, !"Code Model", i32 2}
!4176 = !{i32 1, !"override-stack-alignment", i32 8}
!4177 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4178 = distinct !DISubprogram(name: "layout_symtab", scope: !3, file: !3, line: 113, type: !4179, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4240)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{null, !160, !4181}
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_info", file: !3783, line: 61, size: 1024, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4207, !4208, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4182, file: !3783, line: 62, baseType: !6, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4182, file: !3783, line: 64, baseType: !160, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4182, file: !3783, line: 65, baseType: !4187, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Ehdr", file: !126, line: 241, baseType: !4189)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_hdr", file: !126, line: 226, size: 512, elements: !4190)
!4190 = !{!4191, !4193, !4194, !4195, !4196, !4197, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !4189, file: !126, line: 227, baseType: !4192, size: 128)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !2305)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !4189, file: !126, line: 228, baseType: !136, size: 16, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !4189, file: !126, line: 229, baseType: !136, size: 16, offset: 144)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !4189, file: !126, line: 230, baseType: !130, size: 32, offset: 160)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !4189, file: !126, line: 231, baseType: !140, size: 64, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !4189, file: !126, line: 232, baseType: !4198, size: 64, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Off", file: !126, line: 19, baseType: !141)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !4189, file: !126, line: 233, baseType: !4198, size: 64, offset: 320)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !4189, file: !126, line: 234, baseType: !130, size: 32, offset: 384)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !4189, file: !126, line: 235, baseType: !136, size: 16, offset: 416)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !4189, file: !126, line: 236, baseType: !136, size: 16, offset: 432)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !4189, file: !126, line: 237, baseType: !136, size: 16, offset: 448)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !4189, file: !126, line: 238, baseType: !136, size: 16, offset: 464)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !4189, file: !126, line: 239, baseType: !136, size: 16, offset: 480)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !4189, file: !126, line: 240, baseType: !136, size: 16, offset: 496)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4182, file: !3783, line: 66, baseType: !9, size: 64, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "sechdrs", scope: !4182, file: !3783, line: 67, baseType: !4209, size: 64, offset: 256)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Shdr", file: !126, line: 332, baseType: !4211)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_shdr", file: !126, line: 321, size: 512, elements: !4212)
!4212 = !{!4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "sh_name", scope: !4211, file: !126, line: 322, baseType: !130, size: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "sh_type", scope: !4211, file: !126, line: 323, baseType: !130, size: 32, offset: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "sh_flags", scope: !4211, file: !126, line: 324, baseType: !144, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addr", scope: !4211, file: !126, line: 325, baseType: !140, size: 64, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "sh_offset", scope: !4211, file: !126, line: 326, baseType: !4198, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "sh_size", scope: !4211, file: !126, line: 327, baseType: !144, size: 64, offset: 256)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "sh_link", scope: !4211, file: !126, line: 328, baseType: !130, size: 32, offset: 320)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sh_info", scope: !4211, file: !126, line: 329, baseType: !130, size: 32, offset: 352)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addralign", scope: !4211, file: !126, line: 330, baseType: !144, size: 64, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "sh_entsize", scope: !4211, file: !126, line: 331, baseType: !144, size: 64, offset: 448)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "secstrings", scope: !4182, file: !3783, line: 68, baseType: !12, size: 64, offset: 320)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4182, file: !3783, line: 68, baseType: !12, size: 64, offset: 384)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "symoffs", scope: !4182, file: !3783, line: 69, baseType: !9, size: 64, offset: 448)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "stroffs", scope: !4182, file: !3783, line: 69, baseType: !9, size: 64, offset: 512)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "init_typeoffs", scope: !4182, file: !3783, line: 69, baseType: !9, size: 64, offset: 576)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "core_typeoffs", scope: !4182, file: !3783, line: 69, baseType: !9, size: 64, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "sig_ok", scope: !4182, file: !3783, line: 70, baseType: !1445, size: 8, offset: 704)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "mod_kallsyms_init_off", scope: !4182, file: !3783, line: 72, baseType: !9, size: 64, offset: 768)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4182, file: !3783, line: 84, baseType: !4232, size: 192, offset: 832)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4182, file: !3783, line: 82, size: 192, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4237, !4238, !4239}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !4232, file: !3783, line: 83, baseType: !21, size: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4232, file: !3783, line: 83, baseType: !21, size: 32, offset: 32)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4232, file: !3783, line: 83, baseType: !21, size: 32, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "vers", scope: !4232, file: !3783, line: 83, baseType: !21, size: 32, offset: 96)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4232, file: !3783, line: 83, baseType: !21, size: 32, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu", scope: !4232, file: !3783, line: 83, baseType: !21, size: 32, offset: 160)
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4252}
!4241 = !DILocalVariable(name: "mod", arg: 1, scope: !4178, file: !3, line: 113, type: !160)
!4242 = !DILocalVariable(name: "info", arg: 2, scope: !4178, file: !3, line: 113, type: !4181)
!4243 = !DILocalVariable(name: "symsect", scope: !4178, file: !3, line: 115, type: !4209)
!4244 = !DILocalVariable(name: "strsect", scope: !4178, file: !3, line: 116, type: !4209)
!4245 = !DILocalVariable(name: "src", scope: !4178, file: !3, line: 117, type: !4103)
!4246 = !DILocalVariable(name: "i", scope: !4178, file: !3, line: 118, type: !21)
!4247 = !DILocalVariable(name: "nsrc", scope: !4178, file: !3, line: 118, type: !21)
!4248 = !DILocalVariable(name: "ndst", scope: !4178, file: !3, line: 118, type: !21)
!4249 = !DILocalVariable(name: "strtab_size", scope: !4178, file: !3, line: 118, type: !21)
!4250 = !DILocalVariable(name: "mod_mem_data", scope: !4178, file: !3, line: 119, type: !4251)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!4252 = !DILocalVariable(name: "mod_mem_init_data", scope: !4178, file: !3, line: 120, type: !4251)
!4253 = !DILocation(line: 113, column: 35, scope: !4178)
!4254 = !DILocation(line: 113, column: 58, scope: !4178)
!4255 = !DILocation(line: 115, column: 2, scope: !4178)
!4256 = !DILocation(line: 115, column: 12, scope: !4178)
!4257 = !DILocation(line: 115, column: 22, scope: !4178)
!4258 = !DILocation(line: 115, column: 28, scope: !4178)
!4259 = !DILocation(line: 115, column: 38, scope: !4178)
!4260 = !DILocation(line: 115, column: 44, scope: !4178)
!4261 = !DILocation(line: 115, column: 50, scope: !4178)
!4262 = !DILocation(line: 115, column: 36, scope: !4178)
!4263 = !DILocation(line: 116, column: 2, scope: !4178)
!4264 = !DILocation(line: 116, column: 12, scope: !4178)
!4265 = !DILocation(line: 116, column: 22, scope: !4178)
!4266 = !DILocation(line: 116, column: 28, scope: !4178)
!4267 = !DILocation(line: 116, column: 38, scope: !4178)
!4268 = !DILocation(line: 116, column: 44, scope: !4178)
!4269 = !DILocation(line: 116, column: 50, scope: !4178)
!4270 = !DILocation(line: 116, column: 36, scope: !4178)
!4271 = !DILocation(line: 117, column: 2, scope: !4178)
!4272 = !DILocation(line: 117, column: 17, scope: !4178)
!4273 = !DILocation(line: 118, column: 2, scope: !4178)
!4274 = !DILocation(line: 118, column: 15, scope: !4178)
!4275 = !DILocation(line: 118, column: 18, scope: !4178)
!4276 = !DILocation(line: 118, column: 24, scope: !4178)
!4277 = !DILocation(line: 118, column: 30, scope: !4178)
!4278 = !DILocation(line: 119, column: 2, scope: !4178)
!4279 = !DILocation(line: 119, column: 24, scope: !4178)
!4280 = !DILocation(line: 119, column: 40, scope: !4178)
!4281 = !DILocation(line: 119, column: 45, scope: !4178)
!4282 = !DILocation(line: 120, column: 2, scope: !4178)
!4283 = !DILocation(line: 120, column: 24, scope: !4178)
!4284 = !DILocation(line: 120, column: 45, scope: !4178)
!4285 = !DILocation(line: 120, column: 50, scope: !4178)
!4286 = !DILocation(line: 123, column: 2, scope: !4178)
!4287 = !DILocation(line: 123, column: 11, scope: !4178)
!4288 = !DILocation(line: 123, column: 20, scope: !4178)
!4289 = !DILocation(line: 124, column: 51, scope: !4178)
!4290 = !DILocation(line: 125, column: 9, scope: !4178)
!4291 = !DILocation(line: 125, column: 18, scope: !4178)
!4292 = !DILocation(line: 125, column: 24, scope: !4178)
!4293 = !DILocation(line: 125, column: 30, scope: !4178)
!4294 = !DILocation(line: 124, column: 24, scope: !4178)
!4295 = !DILocation(line: 124, column: 2, scope: !4178)
!4296 = !DILocation(line: 124, column: 11, scope: !4178)
!4297 = !DILocation(line: 124, column: 22, scope: !4178)
!4298 = !DILocation(line: 126, column: 2, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 126, column: 2)
!4300 = distinct !DILexicalBlock(scope: !4178, file: !3, line: 126, column: 2)
!4301 = !DILocation(line: 126, column: 2, scope: !4300)
!4302 = !DILocation(line: 128, column: 16, scope: !4178)
!4303 = !DILocation(line: 128, column: 22, scope: !4178)
!4304 = !DILocation(line: 128, column: 28, scope: !4178)
!4305 = !DILocation(line: 128, column: 37, scope: !4178)
!4306 = !DILocation(line: 128, column: 26, scope: !4178)
!4307 = !DILocation(line: 128, column: 6, scope: !4178)
!4308 = !DILocation(line: 129, column: 9, scope: !4178)
!4309 = !DILocation(line: 129, column: 18, scope: !4178)
!4310 = !DILocation(line: 129, column: 26, scope: !4178)
!4311 = !DILocation(line: 129, column: 7, scope: !4178)
!4312 = !DILocation(line: 132, column: 16, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4178, file: !3, line: 132, column: 2)
!4314 = !DILocation(line: 132, column: 12, scope: !4313)
!4315 = !DILocation(line: 132, column: 7, scope: !4313)
!4316 = !DILocation(line: 132, column: 21, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 132, column: 2)
!4318 = !DILocation(line: 132, column: 25, scope: !4317)
!4319 = !DILocation(line: 132, column: 23, scope: !4317)
!4320 = !DILocation(line: 132, column: 2, scope: !4313)
!4321 = !DILocation(line: 133, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 133, column: 7)
!4323 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 132, column: 36)
!4324 = !DILocation(line: 133, column: 9, scope: !4322)
!4325 = !DILocation(line: 133, column: 14, scope: !4322)
!4326 = !DILocation(line: 133, column: 37, scope: !4322)
!4327 = !DILocation(line: 133, column: 17, scope: !4322)
!4328 = !DILocation(line: 133, column: 42, scope: !4322)
!4329 = !DILocation(line: 134, column: 22, scope: !4322)
!4330 = !DILocation(line: 134, column: 28, scope: !4322)
!4331 = !DILocation(line: 134, column: 26, scope: !4322)
!4332 = !DILocation(line: 134, column: 31, scope: !4322)
!4333 = !DILocation(line: 134, column: 37, scope: !4322)
!4334 = !DILocation(line: 134, column: 46, scope: !4322)
!4335 = !DILocation(line: 134, column: 52, scope: !4322)
!4336 = !DILocation(line: 134, column: 57, scope: !4322)
!4337 = !DILocation(line: 135, column: 8, scope: !4322)
!4338 = !DILocation(line: 135, column: 14, scope: !4322)
!4339 = !DILocation(line: 135, column: 20, scope: !4322)
!4340 = !DILocation(line: 134, column: 7, scope: !4322)
!4341 = !DILocation(line: 133, column: 7, scope: !4323)
!4342 = !DILocation(line: 136, column: 27, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 135, column: 27)
!4344 = !DILocation(line: 136, column: 33, scope: !4343)
!4345 = !DILocation(line: 136, column: 40, scope: !4343)
!4346 = !DILocation(line: 136, column: 44, scope: !4343)
!4347 = !DILocation(line: 136, column: 47, scope: !4343)
!4348 = !DILocation(line: 136, column: 19, scope: !4343)
!4349 = !DILocation(line: 136, column: 57, scope: !4343)
!4350 = !DILocation(line: 136, column: 16, scope: !4343)
!4351 = !DILocation(line: 137, column: 8, scope: !4343)
!4352 = !DILocation(line: 138, column: 3, scope: !4343)
!4353 = !DILocation(line: 139, column: 2, scope: !4323)
!4354 = !DILocation(line: 132, column: 32, scope: !4317)
!4355 = !DILocation(line: 132, column: 2, scope: !4317)
!4356 = distinct !{!4356, !4320, !4357, !4358, !4359}
!4357 = !DILocation(line: 139, column: 2, scope: !4313)
!4358 = !{!"llvm.loop.mustprogress"}
!4359 = !{!"llvm.loop.unroll.disable"}
!4360 = !DILocation(line: 142, column: 18, scope: !4178)
!4361 = !DILocation(line: 142, column: 2, scope: !4178)
!4362 = !DILocation(line: 142, column: 8, scope: !4178)
!4363 = !DILocation(line: 142, column: 16, scope: !4178)
!4364 = !DILocation(line: 143, column: 39, scope: !4178)
!4365 = !DILocation(line: 143, column: 45, scope: !4178)
!4366 = !DILocation(line: 143, column: 55, scope: !4178)
!4367 = !DILocation(line: 143, column: 60, scope: !4178)
!4368 = !DILocation(line: 143, column: 53, scope: !4178)
!4369 = !DILocation(line: 143, column: 18, scope: !4178)
!4370 = !DILocation(line: 143, column: 32, scope: !4178)
!4371 = !DILocation(line: 143, column: 37, scope: !4178)
!4372 = !DILocation(line: 143, column: 2, scope: !4178)
!4373 = !DILocation(line: 143, column: 8, scope: !4178)
!4374 = !DILocation(line: 143, column: 16, scope: !4178)
!4375 = !DILocation(line: 144, column: 24, scope: !4178)
!4376 = !DILocation(line: 144, column: 2, scope: !4178)
!4377 = !DILocation(line: 144, column: 16, scope: !4178)
!4378 = !DILocation(line: 144, column: 21, scope: !4178)
!4379 = !DILocation(line: 146, column: 24, scope: !4178)
!4380 = !DILocation(line: 146, column: 38, scope: !4178)
!4381 = !DILocation(line: 146, column: 2, scope: !4178)
!4382 = !DILocation(line: 146, column: 8, scope: !4178)
!4383 = !DILocation(line: 146, column: 22, scope: !4178)
!4384 = !DILocation(line: 147, column: 24, scope: !4178)
!4385 = !DILocation(line: 147, column: 29, scope: !4178)
!4386 = !DILocation(line: 147, column: 2, scope: !4178)
!4387 = !DILocation(line: 147, column: 16, scope: !4178)
!4388 = !DILocation(line: 147, column: 21, scope: !4178)
!4389 = !DILocation(line: 150, column: 2, scope: !4178)
!4390 = !DILocation(line: 150, column: 11, scope: !4178)
!4391 = !DILocation(line: 150, column: 20, scope: !4178)
!4392 = !DILocation(line: 151, column: 51, scope: !4178)
!4393 = !DILocation(line: 152, column: 9, scope: !4178)
!4394 = !DILocation(line: 152, column: 18, scope: !4178)
!4395 = !DILocation(line: 152, column: 24, scope: !4178)
!4396 = !DILocation(line: 152, column: 30, scope: !4178)
!4397 = !DILocation(line: 151, column: 24, scope: !4178)
!4398 = !DILocation(line: 151, column: 2, scope: !4178)
!4399 = !DILocation(line: 151, column: 11, scope: !4178)
!4400 = !DILocation(line: 151, column: 22, scope: !4178)
!4401 = !DILocation(line: 153, column: 2, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 153, column: 2)
!4403 = distinct !DILexicalBlock(scope: !4178, file: !3, line: 153, column: 2)
!4404 = !DILocation(line: 153, column: 2, scope: !4403)
!4405 = !DILocation(line: 156, column: 28, scope: !4178)
!4406 = !DILocation(line: 156, column: 2, scope: !4178)
!4407 = !DILocation(line: 156, column: 21, scope: !4178)
!4408 = !DILocation(line: 156, column: 26, scope: !4178)
!4409 = !DILocation(line: 158, column: 32, scope: !4178)
!4410 = !DILocation(line: 158, column: 51, scope: !4178)
!4411 = !DILocation(line: 158, column: 2, scope: !4178)
!4412 = !DILocation(line: 158, column: 8, scope: !4178)
!4413 = !DILocation(line: 158, column: 30, scope: !4178)
!4414 = !DILocation(line: 160, column: 2, scope: !4178)
!4415 = !DILocation(line: 160, column: 21, scope: !4178)
!4416 = !DILocation(line: 160, column: 26, scope: !4178)
!4417 = !DILocation(line: 161, column: 24, scope: !4178)
!4418 = !DILocation(line: 161, column: 43, scope: !4178)
!4419 = !DILocation(line: 161, column: 2, scope: !4178)
!4420 = !DILocation(line: 161, column: 8, scope: !4178)
!4421 = !DILocation(line: 161, column: 22, scope: !4178)
!4422 = !DILocation(line: 162, column: 29, scope: !4178)
!4423 = !DILocation(line: 162, column: 34, scope: !4178)
!4424 = !DILocation(line: 162, column: 2, scope: !4178)
!4425 = !DILocation(line: 162, column: 21, scope: !4178)
!4426 = !DILocation(line: 162, column: 26, scope: !4178)
!4427 = !DILocation(line: 163, column: 1, scope: !4178)
!4428 = !DISubprogram(name: "module_get_offset_and_type", scope: !3783, file: !3783, line: 110, type: !4429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!287, !160, !101, !4209, !21}
!4431 = distinct !DISubprogram(name: "is_livepatch_module", scope: !20, file: !20, line: 744, type: !4432, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4434)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!1445, !160}
!4434 = !{!4435}
!4435 = !DILocalVariable(name: "mod", arg: 1, scope: !4431, file: !20, line: 744, type: !160)
!4436 = !DILocation(line: 744, column: 55, scope: !4431)
!4437 = !DILocation(line: 749, column: 2, scope: !4431)
!4438 = distinct !DISubprogram(name: "is_core_symbol", scope: !3, file: !3, line: 78, type: !4439, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4443)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!1445, !4103, !4441, !21, !21}
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4210)
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4449}
!4444 = !DILocalVariable(name: "src", arg: 1, scope: !4438, file: !3, line: 78, type: !4103)
!4445 = !DILocalVariable(name: "sechdrs", arg: 2, scope: !4438, file: !3, line: 78, type: !4441)
!4446 = !DILocalVariable(name: "shnum", arg: 3, scope: !4438, file: !3, line: 79, type: !21)
!4447 = !DILocalVariable(name: "pcpundx", arg: 4, scope: !4438, file: !3, line: 79, type: !21)
!4448 = !DILocalVariable(name: "sec", scope: !4438, file: !3, line: 81, type: !4441)
!4449 = !DILocalVariable(name: "type", scope: !4438, file: !3, line: 82, type: !101)
!4450 = !DILocation(line: 78, column: 43, scope: !4438)
!4451 = !DILocation(line: 78, column: 64, scope: !4438)
!4452 = !DILocation(line: 79, column: 20, scope: !4438)
!4453 = !DILocation(line: 79, column: 40, scope: !4438)
!4454 = !DILocation(line: 81, column: 2, scope: !4438)
!4455 = !DILocation(line: 81, column: 18, scope: !4438)
!4456 = !DILocation(line: 82, column: 2, scope: !4438)
!4457 = !DILocation(line: 82, column: 20, scope: !4438)
!4458 = !DILocation(line: 84, column: 6, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 84, column: 6)
!4460 = !DILocation(line: 84, column: 11, scope: !4459)
!4461 = !DILocation(line: 84, column: 20, scope: !4459)
!4462 = !DILocation(line: 84, column: 33, scope: !4459)
!4463 = !DILocation(line: 85, column: 6, scope: !4459)
!4464 = !DILocation(line: 85, column: 11, scope: !4459)
!4465 = !DILocation(line: 85, column: 23, scope: !4459)
!4466 = !DILocation(line: 85, column: 20, scope: !4459)
!4467 = !DILocation(line: 85, column: 29, scope: !4459)
!4468 = !DILocation(line: 86, column: 7, scope: !4459)
!4469 = !DILocation(line: 86, column: 12, scope: !4459)
!4470 = !DILocation(line: 84, column: 6, scope: !4438)
!4471 = !DILocation(line: 87, column: 3, scope: !4459)
!4472 = !DILocation(line: 90, column: 6, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 90, column: 6)
!4474 = !DILocation(line: 90, column: 11, scope: !4473)
!4475 = !DILocation(line: 90, column: 23, scope: !4473)
!4476 = !DILocation(line: 90, column: 20, scope: !4473)
!4477 = !DILocation(line: 90, column: 6, scope: !4438)
!4478 = !DILocation(line: 91, column: 3, scope: !4473)
!4479 = !DILocation(line: 94, column: 8, scope: !4438)
!4480 = !DILocation(line: 94, column: 18, scope: !4438)
!4481 = !DILocation(line: 94, column: 23, scope: !4438)
!4482 = !DILocation(line: 94, column: 16, scope: !4438)
!4483 = !DILocation(line: 94, column: 6, scope: !4438)
!4484 = !DILocation(line: 95, column: 9, scope: !4438)
!4485 = !DILocation(line: 95, column: 14, scope: !4438)
!4486 = !DILocation(line: 95, column: 25, scope: !4438)
!4487 = !DILocation(line: 95, column: 7, scope: !4438)
!4488 = !DILocation(line: 96, column: 8, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 96, column: 6)
!4490 = !DILocation(line: 96, column: 13, scope: !4489)
!4491 = !DILocation(line: 96, column: 22, scope: !4489)
!4492 = !DILocation(line: 100, column: 6, scope: !4489)
!4493 = !DILocation(line: 100, column: 9, scope: !4489)
!4494 = !DILocation(line: 96, column: 6, scope: !4438)
!4495 = !DILocation(line: 101, column: 3, scope: !4489)
!4496 = !DILocation(line: 103, column: 2, scope: !4438)
!4497 = !DILocation(line: 104, column: 1, scope: !4438)
!4498 = !DISubprogram(name: "strlen", scope: !4499, file: !4499, line: 128, type: !4112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4499 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4500 = distinct !DISubprogram(name: "add_kallsyms", scope: !3, file: !3, line: 170, type: !4501, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4505)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{null, !160, !4503}
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4182)
!4505 = !{!4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4519, !4521, !4523, !4525, !4527, !4531, !4534, !4537, !4539}
!4506 = !DILocalVariable(name: "mod", arg: 1, scope: !4500, file: !3, line: 170, type: !160)
!4507 = !DILocalVariable(name: "info", arg: 2, scope: !4500, file: !3, line: 170, type: !4503)
!4508 = !DILocalVariable(name: "i", scope: !4500, file: !3, line: 172, type: !21)
!4509 = !DILocalVariable(name: "ndst", scope: !4500, file: !3, line: 172, type: !21)
!4510 = !DILocalVariable(name: "src", scope: !4500, file: !3, line: 173, type: !4103)
!4511 = !DILocalVariable(name: "dst", scope: !4500, file: !3, line: 174, type: !124)
!4512 = !DILocalVariable(name: "s", scope: !4500, file: !3, line: 175, type: !12)
!4513 = !DILocalVariable(name: "symsec", scope: !4500, file: !3, line: 176, type: !4209)
!4514 = !DILocalVariable(name: "strtab_size", scope: !4500, file: !3, line: 177, type: !9)
!4515 = !DILocalVariable(name: "data_base", scope: !4500, file: !3, line: 178, type: !119)
!4516 = !DILocalVariable(name: "init_data_base", scope: !4500, file: !3, line: 179, type: !119)
!4517 = !DILocalVariable(name: "__UNIQUE_ID_rcu287", scope: !4518, file: !3, line: 187, type: !120)
!4518 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 187, column: 2)
!4519 = !DILocalVariable(name: "__UNIQUE_ID_rcu289", scope: !4520, file: !3, line: 188, type: !120)
!4520 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 188, column: 2)
!4521 = !DILocalVariable(name: "__UNIQUE_ID_rcu291", scope: !4522, file: !3, line: 190, type: !120)
!4522 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 190, column: 2)
!4523 = !DILocalVariable(name: "__UNIQUE_ID_rcu293", scope: !4524, file: !3, line: 192, type: !120)
!4524 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 192, column: 2)
!4525 = !DILocalVariable(name: "__UNIQUE_ID_rcu295", scope: !4526, file: !3, line: 202, type: !120)
!4526 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 202, column: 8)
!4527 = !DILocalVariable(name: "__UNIQUE_ID_rcu297", scope: !4528, file: !3, line: 203, type: !120)
!4528 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 203, column: 25)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 203, column: 2)
!4530 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 203, column: 2)
!4531 = !DILocalVariable(name: "__UNIQUE_ID_rcu299", scope: !4532, file: !3, line: 204, type: !120)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 204, column: 3)
!4533 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 203, column: 74)
!4534 = !DILocalVariable(name: "ret", scope: !4535, file: !3, line: 208, type: !283)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 207, column: 27)
!4536 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 205, column: 7)
!4537 = !DILocalVariable(name: "__UNIQUE_ID_rcu301", scope: !4538, file: !3, line: 211, type: !120)
!4538 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 211, column: 8)
!4539 = !DILocalVariable(name: "__UNIQUE_ID_rcu303", scope: !4540, file: !3, line: 215, type: !120)
!4540 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 215, column: 12)
!4541 = !DILocation(line: 170, column: 34, scope: !4500)
!4542 = !DILocation(line: 170, column: 63, scope: !4500)
!4543 = !DILocation(line: 172, column: 2, scope: !4500)
!4544 = !DILocation(line: 172, column: 15, scope: !4500)
!4545 = !DILocation(line: 172, column: 18, scope: !4500)
!4546 = !DILocation(line: 173, column: 2, scope: !4500)
!4547 = !DILocation(line: 173, column: 17, scope: !4500)
!4548 = !DILocation(line: 174, column: 2, scope: !4500)
!4549 = !DILocation(line: 174, column: 11, scope: !4500)
!4550 = !DILocation(line: 175, column: 2, scope: !4500)
!4551 = !DILocation(line: 175, column: 8, scope: !4500)
!4552 = !DILocation(line: 176, column: 2, scope: !4500)
!4553 = !DILocation(line: 176, column: 12, scope: !4500)
!4554 = !DILocation(line: 176, column: 22, scope: !4500)
!4555 = !DILocation(line: 176, column: 28, scope: !4500)
!4556 = !DILocation(line: 176, column: 36, scope: !4500)
!4557 = !DILocation(line: 176, column: 42, scope: !4500)
!4558 = !DILocation(line: 176, column: 48, scope: !4500)
!4559 = !DILocation(line: 177, column: 2, scope: !4500)
!4560 = !DILocation(line: 177, column: 16, scope: !4500)
!4561 = !DILocation(line: 178, column: 2, scope: !4500)
!4562 = !DILocation(line: 178, column: 8, scope: !4500)
!4563 = !DILocation(line: 178, column: 20, scope: !4500)
!4564 = !DILocation(line: 178, column: 25, scope: !4500)
!4565 = !DILocation(line: 178, column: 39, scope: !4500)
!4566 = !DILocation(line: 179, column: 2, scope: !4500)
!4567 = !DILocation(line: 179, column: 8, scope: !4500)
!4568 = !DILocation(line: 179, column: 25, scope: !4500)
!4569 = !DILocation(line: 179, column: 30, scope: !4500)
!4570 = !DILocation(line: 179, column: 49, scope: !4500)
!4571 = !DILocation(line: 182, column: 32, scope: !4500)
!4572 = !DILocation(line: 183, column: 3, scope: !4500)
!4573 = !DILocation(line: 183, column: 9, scope: !4500)
!4574 = !DILocation(line: 182, column: 47, scope: !4500)
!4575 = !DILocation(line: 182, column: 2, scope: !4500)
!4576 = !DILocation(line: 182, column: 7, scope: !4500)
!4577 = !DILocation(line: 182, column: 16, scope: !4500)
!4578 = !DILocation(line: 185, column: 2, scope: !4500)
!4579 = !DILocation(line: 187, column: 51, scope: !4500)
!4580 = !DILocation(line: 187, column: 59, scope: !4500)
!4581 = !DILocation(line: 187, column: 43, scope: !4500)
!4582 = !DILocation(line: 187, column: 2, scope: !4518)
!4583 = !DILocation(line: 187, column: 2, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 187, column: 2)
!4585 = !DILocation(line: 187, column: 2, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 187, column: 2)
!4587 = !DILocation(line: 187, column: 2, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 187, column: 2)
!4589 = !DILocation(line: 187, column: 2, scope: !4500)
!4590 = !DILocation(line: 187, column: 34, scope: !4500)
!4591 = !DILocation(line: 187, column: 41, scope: !4500)
!4592 = !DILocation(line: 188, column: 47, scope: !4500)
!4593 = !DILocation(line: 188, column: 55, scope: !4500)
!4594 = !DILocation(line: 188, column: 63, scope: !4500)
!4595 = !DILocation(line: 188, column: 2, scope: !4520)
!4596 = !DILocation(line: 188, column: 2, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 188, column: 2)
!4598 = !DILocation(line: 188, column: 2, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 188, column: 2)
!4600 = !DILocation(line: 188, column: 2, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 188, column: 2)
!4602 = !DILocation(line: 188, column: 2, scope: !4500)
!4603 = !DILocation(line: 188, column: 34, scope: !4500)
!4604 = !DILocation(line: 188, column: 45, scope: !4500)
!4605 = !DILocation(line: 191, column: 11, scope: !4500)
!4606 = !DILocation(line: 191, column: 17, scope: !4500)
!4607 = !DILocation(line: 191, column: 25, scope: !4500)
!4608 = !DILocation(line: 191, column: 31, scope: !4500)
!4609 = !DILocation(line: 191, column: 37, scope: !4500)
!4610 = !DILocation(line: 191, column: 42, scope: !4500)
!4611 = !DILocation(line: 191, column: 3, scope: !4500)
!4612 = !DILocation(line: 190, column: 2, scope: !4522)
!4613 = !DILocation(line: 190, column: 2, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 190, column: 2)
!4615 = !DILocation(line: 190, column: 2, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 190, column: 2)
!4617 = !DILocation(line: 190, column: 2, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 190, column: 2)
!4619 = !DILocation(line: 190, column: 2, scope: !4500)
!4620 = !DILocation(line: 190, column: 34, scope: !4500)
!4621 = !DILocation(line: 190, column: 41, scope: !4500)
!4622 = !DILocation(line: 192, column: 44, scope: !4500)
!4623 = !DILocation(line: 192, column: 61, scope: !4500)
!4624 = !DILocation(line: 192, column: 67, scope: !4500)
!4625 = !DILocation(line: 192, column: 59, scope: !4500)
!4626 = !DILocation(line: 192, column: 2, scope: !4524)
!4627 = !DILocation(line: 192, column: 2, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 192, column: 2)
!4629 = !DILocation(line: 192, column: 2, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4628, file: !3, line: 192, column: 2)
!4631 = !DILocation(line: 192, column: 2, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 192, column: 2)
!4633 = !DILocation(line: 192, column: 2, scope: !4500)
!4634 = !DILocation(line: 192, column: 34, scope: !4500)
!4635 = !DILocation(line: 192, column: 42, scope: !4500)
!4636 = !DILocation(line: 198, column: 36, scope: !4500)
!4637 = !DILocation(line: 198, column: 48, scope: !4500)
!4638 = !DILocation(line: 198, column: 54, scope: !4500)
!4639 = !DILocation(line: 198, column: 46, scope: !4500)
!4640 = !DILocation(line: 198, column: 34, scope: !4500)
!4641 = !DILocation(line: 198, column: 2, scope: !4500)
!4642 = !DILocation(line: 198, column: 7, scope: !4500)
!4643 = !DILocation(line: 198, column: 21, scope: !4500)
!4644 = !DILocation(line: 198, column: 28, scope: !4500)
!4645 = !DILocation(line: 199, column: 34, scope: !4500)
!4646 = !DILocation(line: 199, column: 46, scope: !4500)
!4647 = !DILocation(line: 199, column: 52, scope: !4500)
!4648 = !DILocation(line: 199, column: 44, scope: !4500)
!4649 = !DILocation(line: 199, column: 32, scope: !4500)
!4650 = !DILocation(line: 199, column: 2, scope: !4500)
!4651 = !DILocation(line: 199, column: 7, scope: !4500)
!4652 = !DILocation(line: 199, column: 21, scope: !4500)
!4653 = !DILocation(line: 199, column: 28, scope: !4500)
!4654 = !DILocation(line: 200, column: 31, scope: !4500)
!4655 = !DILocation(line: 200, column: 43, scope: !4500)
!4656 = !DILocation(line: 200, column: 49, scope: !4500)
!4657 = !DILocation(line: 200, column: 41, scope: !4500)
!4658 = !DILocation(line: 200, column: 2, scope: !4500)
!4659 = !DILocation(line: 200, column: 7, scope: !4500)
!4660 = !DILocation(line: 200, column: 21, scope: !4500)
!4661 = !DILocation(line: 200, column: 29, scope: !4500)
!4662 = !DILocation(line: 201, column: 16, scope: !4500)
!4663 = !DILocation(line: 201, column: 22, scope: !4500)
!4664 = !DILocation(line: 201, column: 38, scope: !4500)
!4665 = !DILocation(line: 201, column: 44, scope: !4500)
!4666 = !DILocation(line: 201, column: 36, scope: !4500)
!4667 = !DILocation(line: 201, column: 14, scope: !4500)
!4668 = !DILocation(line: 202, column: 8, scope: !4526)
!4669 = !DILocation(line: 202, column: 8, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 202, column: 8)
!4671 = !DILocation(line: 202, column: 8, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 202, column: 8)
!4673 = !DILocation(line: 202, column: 8, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 202, column: 8)
!4675 = !DILocation(line: 202, column: 8, scope: !4500)
!4676 = !DILocation(line: 202, column: 40, scope: !4500)
!4677 = !DILocation(line: 202, column: 6, scope: !4500)
!4678 = !DILocation(line: 203, column: 16, scope: !4530)
!4679 = !DILocation(line: 203, column: 12, scope: !4530)
!4680 = !DILocation(line: 203, column: 7, scope: !4530)
!4681 = !DILocation(line: 203, column: 21, scope: !4529)
!4682 = !DILocation(line: 203, column: 25, scope: !4528)
!4683 = !DILocation(line: 203, column: 25, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 203, column: 25)
!4685 = !DILocation(line: 203, column: 25, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 203, column: 25)
!4687 = !DILocation(line: 203, column: 25, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 203, column: 25)
!4689 = !DILocation(line: 203, column: 25, scope: !4529)
!4690 = !DILocation(line: 203, column: 57, scope: !4529)
!4691 = !DILocation(line: 203, column: 23, scope: !4529)
!4692 = !DILocation(line: 203, column: 2, scope: !4530)
!4693 = !DILocation(line: 204, column: 57, scope: !4533)
!4694 = !DILocation(line: 204, column: 63, scope: !4533)
!4695 = !DILocation(line: 204, column: 61, scope: !4533)
!4696 = !DILocation(line: 204, column: 66, scope: !4533)
!4697 = !DILocation(line: 204, column: 48, scope: !4533)
!4698 = !DILocation(line: 204, column: 3, scope: !4532)
!4699 = !DILocation(line: 204, column: 3, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 204, column: 3)
!4701 = !DILocation(line: 204, column: 3, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 204, column: 3)
!4703 = !DILocation(line: 204, column: 3, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 204, column: 3)
!4705 = !DILocation(line: 204, column: 3, scope: !4533)
!4706 = !DILocation(line: 204, column: 35, scope: !4533)
!4707 = !DILocation(line: 204, column: 43, scope: !4533)
!4708 = !DILocation(line: 204, column: 46, scope: !4533)
!4709 = !DILocation(line: 205, column: 7, scope: !4536)
!4710 = !DILocation(line: 205, column: 9, scope: !4536)
!4711 = !DILocation(line: 205, column: 14, scope: !4536)
!4712 = !DILocation(line: 205, column: 37, scope: !4536)
!4713 = !DILocation(line: 205, column: 17, scope: !4536)
!4714 = !DILocation(line: 205, column: 42, scope: !4536)
!4715 = !DILocation(line: 206, column: 22, scope: !4536)
!4716 = !DILocation(line: 206, column: 28, scope: !4536)
!4717 = !DILocation(line: 206, column: 26, scope: !4536)
!4718 = !DILocation(line: 206, column: 31, scope: !4536)
!4719 = !DILocation(line: 206, column: 37, scope: !4536)
!4720 = !DILocation(line: 206, column: 46, scope: !4536)
!4721 = !DILocation(line: 206, column: 52, scope: !4536)
!4722 = !DILocation(line: 206, column: 57, scope: !4536)
!4723 = !DILocation(line: 207, column: 8, scope: !4536)
!4724 = !DILocation(line: 207, column: 14, scope: !4536)
!4725 = !DILocation(line: 207, column: 20, scope: !4536)
!4726 = !DILocation(line: 206, column: 7, scope: !4536)
!4727 = !DILocation(line: 205, column: 7, scope: !4533)
!4728 = !DILocation(line: 208, column: 4, scope: !4535)
!4729 = !DILocation(line: 208, column: 12, scope: !4535)
!4730 = !DILocation(line: 211, column: 8, scope: !4538)
!4731 = !DILocation(line: 211, column: 8, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 211, column: 8)
!4733 = !DILocation(line: 211, column: 8, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 211, column: 8)
!4735 = !DILocation(line: 211, column: 8, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 211, column: 8)
!4737 = !DILocation(line: 211, column: 8, scope: !4535)
!4738 = !DILocation(line: 211, column: 40, scope: !4535)
!4739 = !DILocation(line: 211, column: 48, scope: !4535)
!4740 = !DILocation(line: 210, column: 4, scope: !4535)
!4741 = !DILocation(line: 210, column: 9, scope: !4535)
!4742 = !DILocation(line: 210, column: 23, scope: !4535)
!4743 = !DILocation(line: 210, column: 31, scope: !4535)
!4744 = !DILocation(line: 210, column: 37, scope: !4535)
!4745 = !DILocation(line: 212, column: 4, scope: !4535)
!4746 = !DILocation(line: 212, column: 8, scope: !4535)
!4747 = !DILocation(line: 212, column: 16, scope: !4535)
!4748 = !DILocation(line: 212, column: 20, scope: !4535)
!4749 = !DILocation(line: 213, column: 26, scope: !4535)
!4750 = !DILocation(line: 213, column: 30, scope: !4535)
!4751 = !DILocation(line: 213, column: 35, scope: !4535)
!4752 = !DILocation(line: 213, column: 49, scope: !4535)
!4753 = !DILocation(line: 213, column: 28, scope: !4535)
!4754 = !DILocation(line: 213, column: 4, scope: !4535)
!4755 = !DILocation(line: 213, column: 12, scope: !4535)
!4756 = !DILocation(line: 213, column: 16, scope: !4535)
!4757 = !DILocation(line: 213, column: 24, scope: !4535)
!4758 = !DILocation(line: 214, column: 18, scope: !4535)
!4759 = !DILocation(line: 215, column: 12, scope: !4540)
!4760 = !DILocation(line: 215, column: 12, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 215, column: 12)
!4762 = !DILocation(line: 215, column: 12, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 215, column: 12)
!4764 = !DILocation(line: 215, column: 12, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 215, column: 12)
!4766 = !DILocation(line: 215, column: 12, scope: !4535)
!4767 = !DILocation(line: 215, column: 44, scope: !4535)
!4768 = !DILocation(line: 215, column: 51, scope: !4535)
!4769 = !DILocation(line: 215, column: 55, scope: !4535)
!4770 = !DILocation(line: 215, column: 58, scope: !4535)
!4771 = !DILocation(line: 216, column: 11, scope: !4535)
!4772 = !DILocation(line: 214, column: 10, scope: !4535)
!4773 = !DILocation(line: 214, column: 8, scope: !4535)
!4774 = !DILocation(line: 217, column: 8, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 217, column: 8)
!4776 = !DILocation(line: 217, column: 12, scope: !4775)
!4777 = !DILocation(line: 217, column: 8, scope: !4535)
!4778 = !DILocation(line: 218, column: 5, scope: !4775)
!4779 = !DILocation(line: 219, column: 9, scope: !4535)
!4780 = !DILocation(line: 219, column: 13, scope: !4535)
!4781 = !DILocation(line: 219, column: 6, scope: !4535)
!4782 = !DILocation(line: 220, column: 19, scope: !4535)
!4783 = !DILocation(line: 220, column: 23, scope: !4535)
!4784 = !DILocation(line: 220, column: 16, scope: !4535)
!4785 = !DILocation(line: 221, column: 3, scope: !4536)
!4786 = !DILocation(line: 221, column: 3, scope: !4535)
!4787 = !DILocation(line: 222, column: 2, scope: !4533)
!4788 = !DILocation(line: 203, column: 70, scope: !4529)
!4789 = !DILocation(line: 203, column: 2, scope: !4529)
!4790 = distinct !{!4790, !4692, !4791, !4358, !4359}
!4791 = !DILocation(line: 222, column: 2, scope: !4530)
!4792 = !DILocation(line: 223, column: 2, scope: !4500)
!4793 = !DILocation(line: 224, column: 34, scope: !4500)
!4794 = !DILocation(line: 224, column: 2, scope: !4500)
!4795 = !DILocation(line: 224, column: 7, scope: !4500)
!4796 = !DILocation(line: 224, column: 21, scope: !4500)
!4797 = !DILocation(line: 224, column: 32, scope: !4500)
!4798 = !DILocation(line: 225, column: 1, scope: !4500)
!4799 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4800, file: !4800, line: 782, type: !2501, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!4800 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4801 = !DILocation(line: 784, column: 2, scope: !4799)
!4802 = !DILocation(line: 786, column: 2, scope: !4799)
!4803 = !DILocation(line: 786, column: 2, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4799, file: !4800, line: 786, column: 2)
!4805 = !DILocation(line: 787, column: 2, scope: !4799)
!4806 = !DILocation(line: 787, column: 2, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4799, file: !4800, line: 787, column: 2)
!4808 = !DILocation(line: 789, column: 1, scope: !4799)
!4809 = distinct !DISubprogram(name: "elf_type", scope: !3, file: !3, line: 38, type: !4810, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4812)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!8, !4103, !4503}
!4812 = !{!4813, !4814, !4815}
!4813 = !DILocalVariable(name: "sym", arg: 1, scope: !4809, file: !3, line: 38, type: !4103)
!4814 = !DILocalVariable(name: "info", arg: 2, scope: !4809, file: !3, line: 38, type: !4503)
!4815 = !DILocalVariable(name: "sechdrs", scope: !4809, file: !3, line: 40, type: !4441)
!4816 = !DILocation(line: 38, column: 37, scope: !4809)
!4817 = !DILocation(line: 38, column: 66, scope: !4809)
!4818 = !DILocation(line: 40, column: 2, scope: !4809)
!4819 = !DILocation(line: 40, column: 18, scope: !4809)
!4820 = !DILocation(line: 40, column: 28, scope: !4809)
!4821 = !DILocation(line: 40, column: 34, scope: !4809)
!4822 = !DILocation(line: 42, column: 6, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 42, column: 6)
!4824 = !DILocation(line: 42, column: 32, scope: !4823)
!4825 = !DILocation(line: 42, column: 6, scope: !4809)
!4826 = !DILocation(line: 43, column: 7, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 43, column: 7)
!4828 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 42, column: 45)
!4829 = !DILocation(line: 43, column: 33, scope: !4827)
!4830 = !DILocation(line: 43, column: 7, scope: !4828)
!4831 = !DILocation(line: 44, column: 4, scope: !4827)
!4832 = !DILocation(line: 46, column: 4, scope: !4827)
!4833 = !DILocation(line: 48, column: 6, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 48, column: 6)
!4835 = !DILocation(line: 48, column: 11, scope: !4834)
!4836 = !DILocation(line: 48, column: 20, scope: !4834)
!4837 = !DILocation(line: 48, column: 6, scope: !4809)
!4838 = !DILocation(line: 49, column: 3, scope: !4834)
!4839 = !DILocation(line: 50, column: 6, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 50, column: 6)
!4841 = !DILocation(line: 50, column: 11, scope: !4840)
!4842 = !DILocation(line: 50, column: 20, scope: !4840)
!4843 = !DILocation(line: 50, column: 31, scope: !4840)
!4844 = !DILocation(line: 50, column: 34, scope: !4840)
!4845 = !DILocation(line: 50, column: 39, scope: !4840)
!4846 = !DILocation(line: 50, column: 51, scope: !4840)
!4847 = !DILocation(line: 50, column: 57, scope: !4840)
!4848 = !DILocation(line: 50, column: 63, scope: !4840)
!4849 = !DILocation(line: 50, column: 48, scope: !4840)
!4850 = !DILocation(line: 50, column: 6, scope: !4809)
!4851 = !DILocation(line: 51, column: 3, scope: !4840)
!4852 = !DILocation(line: 52, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 52, column: 6)
!4854 = !DILocation(line: 52, column: 11, scope: !4853)
!4855 = !DILocation(line: 52, column: 20, scope: !4853)
!4856 = !DILocation(line: 52, column: 6, scope: !4809)
!4857 = !DILocation(line: 53, column: 3, scope: !4853)
!4858 = !DILocation(line: 54, column: 6, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 54, column: 6)
!4860 = !DILocation(line: 54, column: 14, scope: !4859)
!4861 = !DILocation(line: 54, column: 19, scope: !4859)
!4862 = !DILocation(line: 54, column: 29, scope: !4859)
!4863 = !DILocation(line: 54, column: 38, scope: !4859)
!4864 = !DILocation(line: 54, column: 6, scope: !4809)
!4865 = !DILocation(line: 55, column: 3, scope: !4859)
!4866 = !DILocation(line: 56, column: 6, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 56, column: 6)
!4868 = !DILocation(line: 56, column: 14, scope: !4867)
!4869 = !DILocation(line: 56, column: 19, scope: !4867)
!4870 = !DILocation(line: 56, column: 29, scope: !4867)
!4871 = !DILocation(line: 56, column: 38, scope: !4867)
!4872 = !DILocation(line: 56, column: 50, scope: !4867)
!4873 = !DILocation(line: 57, column: 6, scope: !4867)
!4874 = !DILocation(line: 57, column: 14, scope: !4867)
!4875 = !DILocation(line: 57, column: 19, scope: !4867)
!4876 = !DILocation(line: 57, column: 29, scope: !4867)
!4877 = !DILocation(line: 57, column: 37, scope: !4867)
!4878 = !DILocation(line: 56, column: 6, scope: !4809)
!4879 = !DILocation(line: 58, column: 9, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 58, column: 7)
!4881 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 57, column: 52)
!4882 = !DILocation(line: 58, column: 17, scope: !4880)
!4883 = !DILocation(line: 58, column: 22, scope: !4880)
!4884 = !DILocation(line: 58, column: 32, scope: !4880)
!4885 = !DILocation(line: 58, column: 41, scope: !4880)
!4886 = !DILocation(line: 58, column: 7, scope: !4881)
!4887 = !DILocation(line: 59, column: 4, scope: !4880)
!4888 = !DILocation(line: 60, column: 12, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 60, column: 12)
!4890 = !DILocation(line: 60, column: 20, scope: !4889)
!4891 = !DILocation(line: 60, column: 25, scope: !4889)
!4892 = !DILocation(line: 60, column: 35, scope: !4889)
!4893 = !DILocation(line: 60, column: 44, scope: !4889)
!4894 = !DILocation(line: 60, column: 12, scope: !4880)
!4895 = !DILocation(line: 61, column: 4, scope: !4889)
!4896 = !DILocation(line: 63, column: 4, scope: !4889)
!4897 = !DILocation(line: 65, column: 6, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 65, column: 6)
!4899 = !DILocation(line: 65, column: 14, scope: !4898)
!4900 = !DILocation(line: 65, column: 19, scope: !4898)
!4901 = !DILocation(line: 65, column: 29, scope: !4898)
!4902 = !DILocation(line: 65, column: 37, scope: !4898)
!4903 = !DILocation(line: 65, column: 6, scope: !4809)
!4904 = !DILocation(line: 66, column: 7, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 66, column: 7)
!4906 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 65, column: 52)
!4907 = !DILocation(line: 66, column: 15, scope: !4905)
!4908 = !DILocation(line: 66, column: 20, scope: !4905)
!4909 = !DILocation(line: 66, column: 30, scope: !4905)
!4910 = !DILocation(line: 66, column: 39, scope: !4905)
!4911 = !DILocation(line: 66, column: 7, scope: !4906)
!4912 = !DILocation(line: 67, column: 4, scope: !4905)
!4913 = !DILocation(line: 69, column: 4, scope: !4905)
!4914 = !DILocation(line: 71, column: 16, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 71, column: 6)
!4916 = !DILocation(line: 71, column: 22, scope: !4915)
!4917 = !DILocation(line: 71, column: 35, scope: !4915)
!4918 = !DILocation(line: 71, column: 43, scope: !4915)
!4919 = !DILocation(line: 71, column: 48, scope: !4915)
!4920 = !DILocation(line: 71, column: 58, scope: !4915)
!4921 = !DILocation(line: 71, column: 33, scope: !4915)
!4922 = !DILocation(line: 71, column: 6, scope: !4915)
!4923 = !DILocation(line: 71, column: 6, scope: !4809)
!4924 = !DILocation(line: 73, column: 3, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 72, column: 20)
!4926 = !DILocation(line: 75, column: 2, scope: !4809)
!4927 = !DILocation(line: 76, column: 1, scope: !4809)
!4928 = !DISubprogram(name: "strscpy", scope: !4499, file: !4499, line: 72, type: !4929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!283, !12, !6, !298}
!4931 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4800, file: !4800, line: 813, type: !2501, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!4932 = !DILocation(line: 815, column: 2, scope: !4931)
!4933 = !DILocation(line: 815, column: 2, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4931, file: !4800, line: 815, column: 2)
!4935 = !DILocation(line: 818, column: 2, scope: !4931)
!4936 = !DILocation(line: 819, column: 2, scope: !4931)
!4937 = !DILocation(line: 819, column: 2, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4931, file: !4800, line: 819, column: 2)
!4939 = !DILocation(line: 820, column: 1, scope: !4931)
!4940 = distinct !DISubprogram(name: "init_build_id", scope: !3, file: !3, line: 242, type: !4501, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4941)
!4941 = !{!4942, !4943}
!4942 = !DILocalVariable(name: "mod", arg: 1, scope: !4940, file: !3, line: 242, type: !160)
!4943 = !DILocalVariable(name: "info", arg: 2, scope: !4940, file: !3, line: 242, type: !4503)
!4944 = !DILocation(line: 242, column: 35, scope: !4940)
!4945 = !DILocation(line: 242, column: 64, scope: !4940)
!4946 = !DILocation(line: 244, column: 1, scope: !4940)
!4947 = distinct !DISubprogram(name: "dereference_module_function_descriptor", scope: !3, file: !3, line: 314, type: !4948, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !4950)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!119, !160, !119}
!4950 = !{!4951, !4952}
!4951 = !DILocalVariable(name: "mod", arg: 1, scope: !4947, file: !3, line: 314, type: !160)
!4952 = !DILocalVariable(name: "ptr", arg: 2, scope: !4947, file: !3, line: 315, type: !119)
!4953 = !DILocation(line: 314, column: 69, scope: !4947)
!4954 = !DILocation(line: 315, column: 18, scope: !4947)
!4955 = !DILocation(line: 317, column: 9, scope: !4947)
!4956 = !DILocation(line: 317, column: 2, scope: !4947)
!4957 = !DILocation(line: 324, column: 49, scope: !2)
!4958 = !DILocation(line: 325, column: 22, scope: !2)
!4959 = !DILocation(line: 326, column: 23, scope: !2)
!4960 = !DILocation(line: 327, column: 15, scope: !2)
!4961 = !DILocation(line: 328, column: 30, scope: !2)
!4962 = !DILocation(line: 329, column: 14, scope: !2)
!4963 = !DILocation(line: 331, column: 2, scope: !2)
!4964 = !DILocation(line: 331, column: 14, scope: !2)
!4965 = !DILocation(line: 332, column: 2, scope: !2)
!4966 = !DILocation(line: 332, column: 17, scope: !2)
!4967 = !DILocation(line: 334, column: 2, scope: !2)
!4968 = !DILocation(line: 334, column: 2, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !2, file: !3, line: 334, column: 2)
!4970 = !{i64 2154208044}
!4971 = !DILocation(line: 335, column: 25, scope: !2)
!4972 = !DILocation(line: 335, column: 8, scope: !2)
!4973 = !DILocation(line: 335, column: 6, scope: !2)
!4974 = !DILocation(line: 336, column: 6, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !2, file: !3, line: 336, column: 6)
!4976 = !DILocation(line: 336, column: 6, scope: !2)
!4977 = !DILocation(line: 337, column: 7, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 337, column: 7)
!4979 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 336, column: 11)
!4980 = !DILocation(line: 337, column: 7, scope: !4979)
!4981 = !DILocation(line: 338, column: 15, scope: !4978)
!4982 = !DILocation(line: 338, column: 20, scope: !4978)
!4983 = !DILocation(line: 338, column: 5, scope: !4978)
!4984 = !DILocation(line: 338, column: 13, scope: !4978)
!4985 = !DILocation(line: 338, column: 4, scope: !4978)
!4986 = !DILocation(line: 339, column: 7, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 339, column: 7)
!4988 = !DILocation(line: 339, column: 7, scope: !4979)
!4989 = !DILocation(line: 343, column: 5, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 339, column: 19)
!4991 = !DILocation(line: 343, column: 16, scope: !4990)
!4992 = !DILocation(line: 345, column: 3, scope: !4990)
!4993 = !DILocation(line: 347, column: 30, scope: !4979)
!4994 = !DILocation(line: 347, column: 35, scope: !4979)
!4995 = !DILocation(line: 347, column: 41, scope: !4979)
!4996 = !DILocation(line: 347, column: 47, scope: !4979)
!4997 = !DILocation(line: 347, column: 9, scope: !4979)
!4998 = !DILocation(line: 347, column: 7, scope: !4979)
!4999 = !DILocation(line: 348, column: 2, scope: !4979)
!5000 = !DILocation(line: 350, column: 6, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !2, file: !3, line: 350, column: 6)
!5002 = !DILocation(line: 350, column: 6, scope: !2)
!5003 = !DILocation(line: 351, column: 11, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 350, column: 11)
!5005 = !DILocation(line: 351, column: 20, scope: !5004)
!5006 = !DILocation(line: 351, column: 3, scope: !5004)
!5007 = !DILocation(line: 352, column: 9, scope: !5004)
!5008 = !DILocation(line: 352, column: 7, scope: !5004)
!5009 = !DILocation(line: 353, column: 2, scope: !5004)
!5010 = !DILocation(line: 354, column: 2, scope: !2)
!5011 = !DILocation(line: 354, column: 2, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !2, file: !3, line: 354, column: 2)
!5013 = !{i64 2154209097}
!5014 = !DILocation(line: 354, column: 2, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 354, column: 2)
!5016 = !DILocation(line: 354, column: 2, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 354, column: 2)
!5018 = !{i64 2154209279}
!5019 = !DILocation(line: 356, column: 9, scope: !2)
!5020 = !DILocation(line: 357, column: 1, scope: !2)
!5021 = !DILocation(line: 356, column: 2, scope: !2)
!5022 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5023, file: !5023, line: 78, type: !2494, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5024)
!5023 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5024 = !{!5025, !5026, !5028}
!5025 = !DILocalVariable(name: "val", arg: 1, scope: !5022, file: !5023, line: 78, type: !102)
!5026 = !DILocalVariable(name: "pao_ID__", scope: !5027, file: !5023, line: 80, type: !3929)
!5027 = distinct !DILexicalBlock(scope: !5022, file: !5023, line: 80, column: 2)
!5028 = !DILocalVariable(name: "pto_val__", scope: !5029, file: !5023, line: 80, type: !399)
!5029 = distinct !DILexicalBlock(scope: !5030, file: !5023, line: 80, column: 2)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !5023, line: 80, column: 2)
!5031 = distinct !DILexicalBlock(scope: !5027, file: !5023, line: 80, column: 2)
!5032 = !DILocation(line: 78, column: 53, scope: !5022)
!5033 = !DILocation(line: 80, column: 2, scope: !5022)
!5034 = !DILocation(line: 80, column: 2, scope: !5027)
!5035 = !DILocation(line: 80, column: 2, scope: !5031)
!5036 = !DILocation(line: 80, column: 2, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5031, file: !5023, line: 80, column: 2)
!5038 = !{i64 2149627222}
!5039 = !DILocation(line: 80, column: 2, scope: !5030)
!5040 = !DILocation(line: 80, column: 2, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5030, file: !5023, line: 80, column: 2)
!5042 = !{i64 2149627517}
!5043 = !DILocation(line: 80, column: 2, scope: !5029)
!5044 = !{i64 2149628222}
!5045 = !DILocation(line: 81, column: 1, scope: !5022)
!5046 = !DISubprogram(name: "__module_address", scope: !20, file: !20, line: 607, type: !5047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!160, !9}
!5049 = distinct !DISubprogram(name: "find_kallsyms_symbol", scope: !3, file: !3, line: 256, type: !5050, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5052)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!6, !160, !9, !10, !10}
!5052 = !{!5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5064, !5065, !5069}
!5053 = !DILocalVariable(name: "mod", arg: 1, scope: !5049, file: !3, line: 256, type: !160)
!5054 = !DILocalVariable(name: "addr", arg: 2, scope: !5049, file: !3, line: 257, type: !9)
!5055 = !DILocalVariable(name: "size", arg: 3, scope: !5049, file: !3, line: 258, type: !10)
!5056 = !DILocalVariable(name: "offset", arg: 4, scope: !5049, file: !3, line: 259, type: !10)
!5057 = !DILocalVariable(name: "i", scope: !5049, file: !3, line: 261, type: !21)
!5058 = !DILocalVariable(name: "best", scope: !5049, file: !3, line: 261, type: !21)
!5059 = !DILocalVariable(name: "nextval", scope: !5049, file: !3, line: 262, type: !9)
!5060 = !DILocalVariable(name: "bestval", scope: !5049, file: !3, line: 262, type: !9)
!5061 = !DILocalVariable(name: "kallsyms", scope: !5049, file: !3, line: 263, type: !120)
!5062 = !DILocalVariable(name: "__UNIQUE_ID_rcu305", scope: !5063, file: !3, line: 263, type: !120)
!5063 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 263, column: 34)
!5064 = !DILocalVariable(name: "mod_mem", scope: !5049, file: !3, line: 264, type: !4251)
!5065 = !DILocalVariable(name: "sym", scope: !5066, file: !3, line: 281, type: !4103)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 280, column: 45)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 280, column: 2)
!5068 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 280, column: 2)
!5069 = !DILocalVariable(name: "thisval", scope: !5066, file: !3, line: 282, type: !9)
!5070 = !DILocation(line: 256, column: 56, scope: !5049)
!5071 = !DILocation(line: 257, column: 20, scope: !5049)
!5072 = !DILocation(line: 258, column: 21, scope: !5049)
!5073 = !DILocation(line: 259, column: 21, scope: !5049)
!5074 = !DILocation(line: 261, column: 2, scope: !5049)
!5075 = !DILocation(line: 261, column: 15, scope: !5049)
!5076 = !DILocation(line: 261, column: 18, scope: !5049)
!5077 = !DILocation(line: 262, column: 2, scope: !5049)
!5078 = !DILocation(line: 262, column: 16, scope: !5049)
!5079 = !DILocation(line: 262, column: 25, scope: !5049)
!5080 = !DILocation(line: 263, column: 2, scope: !5049)
!5081 = !DILocation(line: 263, column: 23, scope: !5049)
!5082 = !DILocation(line: 263, column: 34, scope: !5063)
!5083 = !DILocation(line: 263, column: 34, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 263, column: 34)
!5085 = !DILocation(line: 263, column: 34, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 263, column: 34)
!5087 = !DILocation(line: 263, column: 34, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 263, column: 34)
!5089 = !DILocation(line: 263, column: 34, scope: !5049)
!5090 = !DILocation(line: 264, column: 2, scope: !5049)
!5091 = !DILocation(line: 264, column: 24, scope: !5049)
!5092 = !DILocation(line: 267, column: 25, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 267, column: 6)
!5094 = !DILocation(line: 267, column: 31, scope: !5093)
!5095 = !DILocation(line: 267, column: 6, scope: !5093)
!5096 = !DILocation(line: 267, column: 6, scope: !5049)
!5097 = !DILocation(line: 268, column: 14, scope: !5093)
!5098 = !DILocation(line: 268, column: 19, scope: !5093)
!5099 = !DILocation(line: 268, column: 11, scope: !5093)
!5100 = !DILocation(line: 268, column: 3, scope: !5093)
!5101 = !DILocation(line: 270, column: 14, scope: !5093)
!5102 = !DILocation(line: 270, column: 19, scope: !5093)
!5103 = !DILocation(line: 270, column: 11, scope: !5093)
!5104 = !DILocation(line: 272, column: 27, scope: !5049)
!5105 = !DILocation(line: 272, column: 36, scope: !5049)
!5106 = !DILocation(line: 272, column: 12, scope: !5049)
!5107 = !DILocation(line: 272, column: 43, scope: !5049)
!5108 = !DILocation(line: 272, column: 52, scope: !5049)
!5109 = !DILocation(line: 272, column: 41, scope: !5049)
!5110 = !DILocation(line: 272, column: 10, scope: !5049)
!5111 = !DILocation(line: 274, column: 35, scope: !5049)
!5112 = !DILocation(line: 274, column: 45, scope: !5049)
!5113 = !DILocation(line: 274, column: 52, scope: !5049)
!5114 = !DILocation(line: 274, column: 12, scope: !5049)
!5115 = !DILocation(line: 274, column: 10, scope: !5049)
!5116 = !DILocation(line: 280, column: 9, scope: !5068)
!5117 = !DILocation(line: 280, column: 7, scope: !5068)
!5118 = !DILocation(line: 280, column: 14, scope: !5067)
!5119 = !DILocation(line: 280, column: 18, scope: !5067)
!5120 = !DILocation(line: 280, column: 28, scope: !5067)
!5121 = !DILocation(line: 280, column: 16, scope: !5067)
!5122 = !DILocation(line: 280, column: 2, scope: !5068)
!5123 = !DILocation(line: 281, column: 3, scope: !5066)
!5124 = !DILocation(line: 281, column: 18, scope: !5066)
!5125 = !DILocation(line: 281, column: 25, scope: !5066)
!5126 = !DILocation(line: 281, column: 35, scope: !5066)
!5127 = !DILocation(line: 281, column: 42, scope: !5066)
!5128 = !DILocation(line: 282, column: 3, scope: !5066)
!5129 = !DILocation(line: 282, column: 17, scope: !5066)
!5130 = !DILocation(line: 282, column: 49, scope: !5066)
!5131 = !DILocation(line: 282, column: 27, scope: !5066)
!5132 = !DILocation(line: 284, column: 7, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 284, column: 7)
!5134 = !DILocation(line: 284, column: 12, scope: !5133)
!5135 = !DILocation(line: 284, column: 21, scope: !5133)
!5136 = !DILocation(line: 284, column: 7, scope: !5066)
!5137 = !DILocation(line: 285, column: 4, scope: !5133)
!5138 = !DILocation(line: 291, column: 29, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 291, column: 7)
!5140 = !DILocation(line: 291, column: 39, scope: !5139)
!5141 = !DILocation(line: 291, column: 8, scope: !5139)
!5142 = !DILocation(line: 291, column: 7, scope: !5139)
!5143 = !DILocation(line: 291, column: 42, scope: !5139)
!5144 = !DILocation(line: 291, column: 50, scope: !5139)
!5145 = !DILocation(line: 292, column: 46, scope: !5139)
!5146 = !DILocation(line: 292, column: 56, scope: !5139)
!5147 = !DILocation(line: 292, column: 25, scope: !5139)
!5148 = !DILocation(line: 292, column: 7, scope: !5139)
!5149 = !DILocation(line: 291, column: 7, scope: !5066)
!5150 = !DILocation(line: 293, column: 4, scope: !5139)
!5151 = !DILocation(line: 295, column: 7, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 295, column: 7)
!5153 = !DILocation(line: 295, column: 18, scope: !5152)
!5154 = !DILocation(line: 295, column: 15, scope: !5152)
!5155 = !DILocation(line: 295, column: 23, scope: !5152)
!5156 = !DILocation(line: 295, column: 26, scope: !5152)
!5157 = !DILocation(line: 295, column: 36, scope: !5152)
!5158 = !DILocation(line: 295, column: 34, scope: !5152)
!5159 = !DILocation(line: 295, column: 7, scope: !5066)
!5160 = !DILocation(line: 296, column: 11, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 295, column: 45)
!5162 = !DILocation(line: 296, column: 9, scope: !5161)
!5163 = !DILocation(line: 297, column: 14, scope: !5161)
!5164 = !DILocation(line: 297, column: 12, scope: !5161)
!5165 = !DILocation(line: 298, column: 3, scope: !5161)
!5166 = !DILocation(line: 299, column: 7, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 299, column: 7)
!5168 = !DILocation(line: 299, column: 17, scope: !5167)
!5169 = !DILocation(line: 299, column: 15, scope: !5167)
!5170 = !DILocation(line: 299, column: 22, scope: !5167)
!5171 = !DILocation(line: 299, column: 25, scope: !5167)
!5172 = !DILocation(line: 299, column: 35, scope: !5167)
!5173 = !DILocation(line: 299, column: 33, scope: !5167)
!5174 = !DILocation(line: 299, column: 7, scope: !5066)
!5175 = !DILocation(line: 300, column: 14, scope: !5167)
!5176 = !DILocation(line: 300, column: 12, scope: !5167)
!5177 = !DILocation(line: 300, column: 4, scope: !5167)
!5178 = !DILocation(line: 301, column: 2, scope: !5067)
!5179 = !DILocation(line: 301, column: 2, scope: !5066)
!5180 = !DILocation(line: 280, column: 41, scope: !5067)
!5181 = !DILocation(line: 280, column: 2, scope: !5067)
!5182 = distinct !{!5182, !5122, !5183, !4358, !4359}
!5183 = !DILocation(line: 301, column: 2, scope: !5068)
!5184 = !DILocation(line: 303, column: 7, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 303, column: 6)
!5186 = !DILocation(line: 303, column: 6, scope: !5049)
!5187 = !DILocation(line: 304, column: 3, scope: !5185)
!5188 = !DILocation(line: 306, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 306, column: 6)
!5190 = !DILocation(line: 306, column: 6, scope: !5049)
!5191 = !DILocation(line: 307, column: 11, scope: !5189)
!5192 = !DILocation(line: 307, column: 21, scope: !5189)
!5193 = !DILocation(line: 307, column: 19, scope: !5189)
!5194 = !DILocation(line: 307, column: 4, scope: !5189)
!5195 = !DILocation(line: 307, column: 9, scope: !5189)
!5196 = !DILocation(line: 307, column: 3, scope: !5189)
!5197 = !DILocation(line: 308, column: 6, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 308, column: 6)
!5199 = !DILocation(line: 308, column: 6, scope: !5049)
!5200 = !DILocation(line: 309, column: 13, scope: !5198)
!5201 = !DILocation(line: 309, column: 20, scope: !5198)
!5202 = !DILocation(line: 309, column: 18, scope: !5198)
!5203 = !DILocation(line: 309, column: 4, scope: !5198)
!5204 = !DILocation(line: 309, column: 11, scope: !5198)
!5205 = !DILocation(line: 309, column: 3, scope: !5198)
!5206 = !DILocation(line: 311, column: 30, scope: !5049)
!5207 = !DILocation(line: 311, column: 40, scope: !5049)
!5208 = !DILocation(line: 311, column: 9, scope: !5049)
!5209 = !DILocation(line: 311, column: 2, scope: !5049)
!5210 = !DILocation(line: 312, column: 1, scope: !5049)
!5211 = !DISubprogram(name: "strncpy", scope: !4499, file: !4499, line: 66, type: !5212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!12, !12, !6, !299}
!5214 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5023, file: !5023, line: 93, type: !3604, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5215)
!5215 = !{!5216}
!5216 = !DILocalVariable(name: "c", scope: !5217, file: !5023, line: 95, type: !1445)
!5217 = distinct !DILexicalBlock(scope: !5214, file: !5023, line: 95, column: 9)
!5218 = !DILocation(line: 95, column: 9, scope: !5217)
!5219 = !{i64 2149631578, i64 2149631671}
!5220 = !{i8 0, i8 2}
!5221 = !DILocation(line: 95, column: 9, scope: !5214)
!5222 = !DILocation(line: 95, column: 2, scope: !5214)
!5223 = !DILocation(line: 359, column: 45, scope: !4059)
!5224 = !DILocation(line: 359, column: 57, scope: !4059)
!5225 = !DILocation(line: 361, column: 2, scope: !4059)
!5226 = !DILocation(line: 361, column: 17, scope: !4059)
!5227 = !DILocation(line: 363, column: 2, scope: !4059)
!5228 = !DILocation(line: 363, column: 2, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 363, column: 2)
!5230 = !{i64 2154211007}
!5231 = !DILocation(line: 364, column: 2, scope: !4067)
!5232 = !DILocation(line: 364, column: 2, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 364, column: 2)
!5234 = !DILocation(line: 364, column: 2, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 364, column: 2)
!5236 = !DILocation(line: 364, column: 2, scope: !4068)
!5237 = !DILocation(line: 364, column: 2, scope: !4073)
!5238 = !DILocation(line: 365, column: 7, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 365, column: 7)
!5240 = !DILocation(line: 365, column: 12, scope: !5239)
!5241 = !DILocation(line: 365, column: 18, scope: !5239)
!5242 = !DILocation(line: 365, column: 7, scope: !4072)
!5243 = !DILocation(line: 366, column: 4, scope: !5239)
!5244 = !DILocation(line: 367, column: 21, scope: !4071)
!5245 = !DILocation(line: 367, column: 27, scope: !4071)
!5246 = !DILocation(line: 367, column: 7, scope: !4071)
!5247 = !DILocation(line: 367, column: 7, scope: !4072)
!5248 = !DILocation(line: 368, column: 4, scope: !4070)
!5249 = !DILocation(line: 368, column: 16, scope: !4070)
!5250 = !DILocation(line: 370, column: 31, scope: !4070)
!5251 = !DILocation(line: 370, column: 36, scope: !4070)
!5252 = !DILocation(line: 370, column: 10, scope: !4070)
!5253 = !DILocation(line: 370, column: 8, scope: !4070)
!5254 = !DILocation(line: 371, column: 9, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 371, column: 8)
!5256 = !DILocation(line: 371, column: 8, scope: !4070)
!5257 = !DILocation(line: 372, column: 5, scope: !5255)
!5258 = !DILocation(line: 374, column: 12, scope: !4070)
!5259 = !DILocation(line: 374, column: 21, scope: !4070)
!5260 = !DILocation(line: 374, column: 4, scope: !4070)
!5261 = !DILocation(line: 375, column: 4, scope: !4070)
!5262 = !DILocation(line: 375, column: 4, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 375, column: 4)
!5264 = !{i64 2154245838}
!5265 = !DILocation(line: 375, column: 4, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 375, column: 4)
!5267 = !DILocation(line: 375, column: 4, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 375, column: 4)
!5269 = !{i64 2154246020}
!5270 = !DILocation(line: 376, column: 4, scope: !4070)
!5271 = !DILocation(line: 377, column: 3, scope: !4071)
!5272 = !DILocation(line: 378, column: 2, scope: !4072)
!5273 = !DILocation(line: 364, column: 2, scope: !4075)
!5274 = !DILocation(line: 364, column: 2, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 364, column: 2)
!5276 = !DILocation(line: 364, column: 2, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 364, column: 2)
!5278 = distinct !{!5278, !5236, !5279, !4358, !4359}
!5279 = !DILocation(line: 378, column: 2, scope: !4068)
!5280 = !DILocation(line: 379, column: 1, scope: !4059)
!5281 = !DILocation(line: 380, column: 2, scope: !4059)
!5282 = !DILocation(line: 380, column: 2, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 380, column: 2)
!5284 = !{i64 2154247749}
!5285 = !DILocation(line: 380, column: 2, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 380, column: 2)
!5287 = !DILocation(line: 380, column: 2, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 380, column: 2)
!5289 = !{i64 2154247931}
!5290 = !DILocation(line: 381, column: 2, scope: !4059)
!5291 = !DILocation(line: 382, column: 1, scope: !4059)
!5292 = distinct !DISubprogram(name: "within_module", scope: !20, file: !20, line: 644, type: !5293, scopeLine: 645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5297)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!1445, !9, !5295}
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!5297 = !{!5298, !5299}
!5298 = !DILocalVariable(name: "addr", arg: 1, scope: !5292, file: !20, line: 644, type: !9)
!5299 = !DILocalVariable(name: "mod", arg: 2, scope: !5292, file: !20, line: 644, type: !5295)
!5300 = !DILocation(line: 644, column: 48, scope: !5292)
!5301 = !DILocation(line: 644, column: 75, scope: !5292)
!5302 = !DILocation(line: 646, column: 28, scope: !5292)
!5303 = !DILocation(line: 646, column: 34, scope: !5292)
!5304 = !DILocation(line: 646, column: 9, scope: !5292)
!5305 = !DILocation(line: 646, column: 39, scope: !5292)
!5306 = !DILocation(line: 646, column: 61, scope: !5292)
!5307 = !DILocation(line: 646, column: 67, scope: !5292)
!5308 = !DILocation(line: 646, column: 42, scope: !5292)
!5309 = !DILocation(line: 646, column: 2, scope: !5292)
!5310 = !DILocation(line: 384, column: 37, scope: !4081)
!5311 = !DILocation(line: 384, column: 60, scope: !4081)
!5312 = !DILocation(line: 384, column: 73, scope: !4081)
!5313 = !DILocation(line: 385, column: 16, scope: !4081)
!5314 = !DILocation(line: 385, column: 28, scope: !4081)
!5315 = !DILocation(line: 385, column: 46, scope: !4081)
!5316 = !DILocation(line: 387, column: 2, scope: !4081)
!5317 = !DILocation(line: 387, column: 17, scope: !4081)
!5318 = !DILocation(line: 389, column: 2, scope: !4081)
!5319 = !DILocation(line: 389, column: 2, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 389, column: 2)
!5321 = !{i64 2154253723}
!5322 = !DILocation(line: 390, column: 2, scope: !4093)
!5323 = !DILocation(line: 390, column: 2, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 390, column: 2)
!5325 = !DILocation(line: 390, column: 2, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 390, column: 2)
!5327 = !DILocation(line: 390, column: 2, scope: !4094)
!5328 = !DILocation(line: 390, column: 2, scope: !4097)
!5329 = !DILocation(line: 391, column: 3, scope: !4096)
!5330 = !DILocation(line: 391, column: 24, scope: !4096)
!5331 = !DILocation(line: 393, column: 7, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 393, column: 7)
!5333 = !DILocation(line: 393, column: 12, scope: !5332)
!5334 = !DILocation(line: 393, column: 18, scope: !5332)
!5335 = !DILocation(line: 393, column: 7, scope: !4096)
!5336 = !DILocation(line: 394, column: 4, scope: !5332)
!5337 = !DILocation(line: 395, column: 14, scope: !4099)
!5338 = !DILocation(line: 395, column: 14, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 395, column: 14)
!5340 = !DILocation(line: 395, column: 14, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 395, column: 14)
!5342 = !DILocation(line: 395, column: 14, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 395, column: 14)
!5344 = !DILocation(line: 395, column: 14, scope: !4096)
!5345 = !DILocation(line: 395, column: 12, scope: !4096)
!5346 = !DILocation(line: 396, column: 7, scope: !4102)
!5347 = !DILocation(line: 396, column: 16, scope: !4102)
!5348 = !DILocation(line: 396, column: 26, scope: !4102)
!5349 = !DILocation(line: 396, column: 14, scope: !4102)
!5350 = !DILocation(line: 396, column: 7, scope: !4096)
!5351 = !DILocation(line: 397, column: 4, scope: !4101)
!5352 = !DILocation(line: 397, column: 19, scope: !4101)
!5353 = !DILocation(line: 397, column: 26, scope: !4101)
!5354 = !DILocation(line: 397, column: 36, scope: !4101)
!5355 = !DILocation(line: 397, column: 43, scope: !4101)
!5356 = !DILocation(line: 399, column: 35, scope: !4101)
!5357 = !DILocation(line: 399, column: 13, scope: !4101)
!5358 = !DILocation(line: 399, column: 5, scope: !4101)
!5359 = !DILocation(line: 399, column: 11, scope: !4101)
!5360 = !DILocation(line: 400, column: 12, scope: !4101)
!5361 = !DILocation(line: 400, column: 22, scope: !4101)
!5362 = !DILocation(line: 400, column: 30, scope: !4101)
!5363 = !DILocation(line: 400, column: 5, scope: !4101)
!5364 = !DILocation(line: 400, column: 10, scope: !4101)
!5365 = !DILocation(line: 401, column: 12, scope: !4101)
!5366 = !DILocation(line: 401, column: 39, scope: !4101)
!5367 = !DILocation(line: 401, column: 49, scope: !4101)
!5368 = !DILocation(line: 401, column: 18, scope: !4101)
!5369 = !DILocation(line: 401, column: 4, scope: !4101)
!5370 = !DILocation(line: 402, column: 12, scope: !4101)
!5371 = !DILocation(line: 402, column: 25, scope: !4101)
!5372 = !DILocation(line: 402, column: 30, scope: !4101)
!5373 = !DILocation(line: 402, column: 4, scope: !4101)
!5374 = !DILocation(line: 403, column: 28, scope: !4101)
!5375 = !DILocation(line: 403, column: 35, scope: !4101)
!5376 = !DILocation(line: 403, column: 34, scope: !4101)
!5377 = !DILocation(line: 403, column: 42, scope: !4101)
!5378 = !DILocation(line: 403, column: 16, scope: !4101)
!5379 = !DILocation(line: 403, column: 5, scope: !4101)
!5380 = !DILocation(line: 403, column: 14, scope: !4101)
!5381 = !DILocation(line: 404, column: 4, scope: !4101)
!5382 = !DILocation(line: 404, column: 4, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 404, column: 4)
!5384 = !{i64 2154288359}
!5385 = !DILocation(line: 404, column: 4, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 404, column: 4)
!5387 = !DILocation(line: 404, column: 4, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 404, column: 4)
!5389 = !{i64 2154288541}
!5390 = !DILocation(line: 405, column: 4, scope: !4101)
!5391 = !DILocation(line: 406, column: 3, scope: !4102)
!5392 = !DILocation(line: 407, column: 13, scope: !4096)
!5393 = !DILocation(line: 407, column: 23, scope: !4096)
!5394 = !DILocation(line: 407, column: 10, scope: !4096)
!5395 = !DILocation(line: 408, column: 2, scope: !4097)
!5396 = !DILocation(line: 408, column: 2, scope: !4096)
!5397 = !DILocation(line: 390, column: 2, scope: !4106)
!5398 = !DILocation(line: 390, column: 2, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 390, column: 2)
!5400 = !DILocation(line: 390, column: 2, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 390, column: 2)
!5402 = distinct !{!5402, !5327, !5403, !4358, !4359}
!5403 = !DILocation(line: 408, column: 2, scope: !4094)
!5404 = !DILocation(line: 409, column: 2, scope: !4081)
!5405 = !DILocation(line: 409, column: 2, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 409, column: 2)
!5407 = !{i64 2154294331}
!5408 = !DILocation(line: 409, column: 2, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 409, column: 2)
!5410 = !DILocation(line: 409, column: 2, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 409, column: 2)
!5412 = !{i64 2154294513}
!5413 = !DILocation(line: 410, column: 2, scope: !4081)
!5414 = !DILocation(line: 411, column: 1, scope: !4081)
!5415 = distinct !DISubprogram(name: "kallsyms_symbol_value", scope: !20, file: !20, line: 592, type: !5416, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5418)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!9, !4103}
!5418 = !{!5419}
!5419 = !DILocalVariable(name: "sym", arg: 1, scope: !5415, file: !20, line: 592, type: !4103)
!5420 = !DILocation(line: 592, column: 66, scope: !5415)
!5421 = !DILocation(line: 594, column: 9, scope: !5415)
!5422 = !DILocation(line: 594, column: 14, scope: !5415)
!5423 = !DILocation(line: 594, column: 2, scope: !5415)
!5424 = distinct !DISubprogram(name: "kallsyms_symbol_name", scope: !3, file: !3, line: 247, type: !5425, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5427)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!6, !120, !21}
!5427 = !{!5428, !5429}
!5428 = !DILocalVariable(name: "kallsyms", arg: 1, scope: !5424, file: !3, line: 247, type: !120)
!5429 = !DILocalVariable(name: "symnum", arg: 2, scope: !5424, file: !3, line: 247, type: !21)
!5430 = !DILocation(line: 247, column: 62, scope: !5424)
!5431 = !DILocation(line: 247, column: 85, scope: !5424)
!5432 = !DILocation(line: 249, column: 9, scope: !5424)
!5433 = !DILocation(line: 249, column: 19, scope: !5424)
!5434 = !DILocation(line: 249, column: 28, scope: !5424)
!5435 = !DILocation(line: 249, column: 38, scope: !5424)
!5436 = !DILocation(line: 249, column: 45, scope: !5424)
!5437 = !DILocation(line: 249, column: 53, scope: !5424)
!5438 = !DILocation(line: 249, column: 26, scope: !5424)
!5439 = !DILocation(line: 249, column: 2, scope: !5424)
!5440 = distinct !DISubprogram(name: "is_exported", scope: !3, file: !3, line: 24, type: !5441, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5443)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!102, !6, !9, !5295}
!5443 = !{!5444, !5445, !5446, !5447}
!5444 = !DILocalVariable(name: "name", arg: 1, scope: !5440, file: !3, line: 24, type: !6)
!5445 = !DILocalVariable(name: "value", arg: 2, scope: !5440, file: !3, line: 24, type: !9)
!5446 = !DILocalVariable(name: "mod", arg: 3, scope: !5440, file: !3, line: 25, type: !5295)
!5447 = !DILocalVariable(name: "ks", scope: !5440, file: !3, line: 27, type: !3780)
!5448 = !DILocation(line: 24, column: 36, scope: !5440)
!5449 = !DILocation(line: 24, column: 56, scope: !5440)
!5450 = !DILocation(line: 25, column: 31, scope: !5440)
!5451 = !DILocation(line: 27, column: 2, scope: !5440)
!5452 = !DILocation(line: 27, column: 30, scope: !5440)
!5453 = !DILocation(line: 29, column: 7, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 29, column: 6)
!5455 = !DILocation(line: 29, column: 6, scope: !5440)
!5456 = !DILocation(line: 30, column: 31, scope: !5454)
!5457 = !DILocation(line: 30, column: 8, scope: !5454)
!5458 = !DILocation(line: 30, column: 6, scope: !5454)
!5459 = !DILocation(line: 30, column: 3, scope: !5454)
!5460 = !DILocation(line: 32, column: 31, scope: !5454)
!5461 = !DILocation(line: 32, column: 37, scope: !5454)
!5462 = !DILocation(line: 32, column: 42, scope: !5454)
!5463 = !DILocation(line: 32, column: 48, scope: !5454)
!5464 = !DILocation(line: 32, column: 53, scope: !5454)
!5465 = !DILocation(line: 32, column: 60, scope: !5454)
!5466 = !DILocation(line: 32, column: 65, scope: !5454)
!5467 = !DILocation(line: 32, column: 58, scope: !5454)
!5468 = !DILocation(line: 32, column: 8, scope: !5454)
!5469 = !DILocation(line: 32, column: 6, scope: !5454)
!5470 = !DILocation(line: 34, column: 9, scope: !5440)
!5471 = !DILocation(line: 34, column: 12, scope: !5440)
!5472 = !DILocation(line: 34, column: 35, scope: !5440)
!5473 = !DILocation(line: 34, column: 15, scope: !5440)
!5474 = !DILocation(line: 34, column: 42, scope: !5440)
!5475 = !DILocation(line: 34, column: 39, scope: !5440)
!5476 = !DILocation(line: 0, scope: !5440)
!5477 = !DILocation(line: 35, column: 1, scope: !5440)
!5478 = !DILocation(line: 34, column: 2, scope: !5440)
!5479 = !DILocation(line: 455, column: 55, scope: !4111)
!5480 = !DILocation(line: 457, column: 2, scope: !4111)
!5481 = !DILocation(line: 457, column: 16, scope: !4111)
!5482 = !DILocation(line: 460, column: 2, scope: !4111)
!5483 = !DILocation(line: 460, column: 2, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 460, column: 2)
!5485 = !{i64 2154334793}
!5486 = !DILocation(line: 461, column: 38, scope: !4111)
!5487 = !DILocation(line: 461, column: 8, scope: !4111)
!5488 = !DILocation(line: 461, column: 6, scope: !4111)
!5489 = !DILocation(line: 462, column: 2, scope: !4111)
!5490 = !DILocation(line: 462, column: 2, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 462, column: 2)
!5492 = !{i64 2154334939}
!5493 = !DILocation(line: 462, column: 2, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 462, column: 2)
!5495 = !DILocation(line: 462, column: 2, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 462, column: 2)
!5497 = !{i64 2154335121}
!5498 = !DILocation(line: 463, column: 9, scope: !4111)
!5499 = !DILocation(line: 464, column: 1, scope: !4111)
!5500 = !DILocation(line: 463, column: 2, scope: !4111)
!5501 = distinct !DISubprogram(name: "__module_kallsyms_lookup_name", scope: !3, file: !3, line: 429, type: !4112, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5502)
!5502 = !{!5503, !5504, !5505, !5506, !5509, !5512}
!5503 = !DILocalVariable(name: "name", arg: 1, scope: !5501, file: !3, line: 429, type: !6)
!5504 = !DILocalVariable(name: "mod", scope: !5501, file: !3, line: 431, type: !160)
!5505 = !DILocalVariable(name: "colon", scope: !5501, file: !3, line: 432, type: !12)
!5506 = !DILocalVariable(name: "__mptr", scope: !5507, file: !3, line: 442, type: !119)
!5507 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 442, column: 2)
!5508 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 442, column: 2)
!5509 = !DILocalVariable(name: "ret", scope: !5510, file: !3, line: 443, type: !9)
!5510 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 442, column: 47)
!5511 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 442, column: 2)
!5512 = !DILocalVariable(name: "__mptr", scope: !5513, file: !3, line: 442, type: !119)
!5513 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 442, column: 2)
!5514 = !DILocation(line: 429, column: 64, scope: !5501)
!5515 = !DILocation(line: 431, column: 2, scope: !5501)
!5516 = !DILocation(line: 431, column: 17, scope: !5501)
!5517 = !DILocation(line: 432, column: 2, scope: !5501)
!5518 = !DILocation(line: 432, column: 8, scope: !5501)
!5519 = !DILocation(line: 434, column: 18, scope: !5501)
!5520 = !DILocation(line: 434, column: 10, scope: !5501)
!5521 = !DILocation(line: 434, column: 8, scope: !5501)
!5522 = !DILocation(line: 435, column: 6, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 435, column: 6)
!5524 = !DILocation(line: 435, column: 6, scope: !5501)
!5525 = !DILocation(line: 436, column: 25, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 435, column: 13)
!5527 = !DILocation(line: 436, column: 31, scope: !5526)
!5528 = !DILocation(line: 436, column: 39, scope: !5526)
!5529 = !DILocation(line: 436, column: 37, scope: !5526)
!5530 = !DILocation(line: 436, column: 9, scope: !5526)
!5531 = !DILocation(line: 436, column: 7, scope: !5526)
!5532 = !DILocation(line: 437, column: 7, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 437, column: 7)
!5534 = !DILocation(line: 437, column: 7, scope: !5526)
!5535 = !DILocation(line: 438, column: 40, scope: !5533)
!5536 = !DILocation(line: 438, column: 45, scope: !5533)
!5537 = !DILocation(line: 438, column: 51, scope: !5533)
!5538 = !DILocation(line: 438, column: 11, scope: !5533)
!5539 = !DILocation(line: 438, column: 4, scope: !5533)
!5540 = !DILocation(line: 439, column: 3, scope: !5526)
!5541 = !DILocation(line: 442, column: 2, scope: !5507)
!5542 = !DILocation(line: 442, column: 2, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 442, column: 2)
!5544 = !DILocation(line: 442, column: 2, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 442, column: 2)
!5546 = !DILocation(line: 442, column: 2, scope: !5508)
!5547 = !DILocation(line: 442, column: 2, scope: !5511)
!5548 = !DILocation(line: 443, column: 3, scope: !5510)
!5549 = !DILocation(line: 443, column: 17, scope: !5510)
!5550 = !DILocation(line: 445, column: 7, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 445, column: 7)
!5552 = !DILocation(line: 445, column: 12, scope: !5551)
!5553 = !DILocation(line: 445, column: 18, scope: !5551)
!5554 = !DILocation(line: 445, column: 7, scope: !5510)
!5555 = !DILocation(line: 446, column: 4, scope: !5551)
!5556 = !DILocation(line: 447, column: 38, scope: !5510)
!5557 = !DILocation(line: 447, column: 43, scope: !5510)
!5558 = !DILocation(line: 447, column: 9, scope: !5510)
!5559 = !DILocation(line: 447, column: 7, scope: !5510)
!5560 = !DILocation(line: 448, column: 7, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 448, column: 7)
!5562 = !DILocation(line: 448, column: 7, scope: !5510)
!5563 = !DILocation(line: 449, column: 11, scope: !5561)
!5564 = !DILocation(line: 449, column: 4, scope: !5561)
!5565 = !DILocation(line: 450, column: 2, scope: !5511)
!5566 = !DILocation(line: 450, column: 2, scope: !5510)
!5567 = !DILocation(line: 442, column: 2, scope: !5513)
!5568 = !DILocation(line: 442, column: 2, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 442, column: 2)
!5570 = !DILocation(line: 442, column: 2, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 442, column: 2)
!5572 = distinct !{!5572, !5546, !5573, !4358, !4359}
!5573 = !DILocation(line: 450, column: 2, scope: !5508)
!5574 = !DILocation(line: 451, column: 2, scope: !5501)
!5575 = !DILocation(line: 452, column: 1, scope: !5501)
!5576 = !DILocation(line: 466, column: 57, scope: !4119)
!5577 = !DILocation(line: 466, column: 74, scope: !4119)
!5578 = !DILocation(line: 468, column: 2, scope: !4119)
!5579 = !DILocation(line: 468, column: 16, scope: !4119)
!5580 = !DILocation(line: 470, column: 2, scope: !4119)
!5581 = !DILocation(line: 470, column: 2, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 470, column: 2)
!5583 = !{i64 2154336849}
!5584 = !DILocation(line: 471, column: 37, scope: !4119)
!5585 = !DILocation(line: 471, column: 42, scope: !4119)
!5586 = !DILocation(line: 471, column: 8, scope: !4119)
!5587 = !DILocation(line: 471, column: 6, scope: !4119)
!5588 = !DILocation(line: 472, column: 2, scope: !4119)
!5589 = !DILocation(line: 472, column: 2, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 472, column: 2)
!5591 = !{i64 2154336995}
!5592 = !DILocation(line: 472, column: 2, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 472, column: 2)
!5594 = !DILocation(line: 472, column: 2, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 472, column: 2)
!5596 = !{i64 2154337177}
!5597 = !DILocation(line: 473, column: 9, scope: !4119)
!5598 = !DILocation(line: 474, column: 1, scope: !4119)
!5599 = !DILocation(line: 473, column: 2, scope: !4119)
!5600 = distinct !DISubprogram(name: "__find_kallsyms_symbol_value", scope: !3, file: !3, line: 414, type: !4120, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5601)
!5601 = !{!5602, !5603, !5604, !5605, !5606, !5608}
!5602 = !DILocalVariable(name: "mod", arg: 1, scope: !5600, file: !3, line: 414, type: !160)
!5603 = !DILocalVariable(name: "name", arg: 2, scope: !5600, file: !3, line: 414, type: !6)
!5604 = !DILocalVariable(name: "i", scope: !5600, file: !3, line: 416, type: !21)
!5605 = !DILocalVariable(name: "kallsyms", scope: !5600, file: !3, line: 417, type: !120)
!5606 = !DILocalVariable(name: "__UNIQUE_ID_rcu318", scope: !5607, file: !3, line: 417, type: !120)
!5607 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 417, column: 34)
!5608 = !DILocalVariable(name: "sym", scope: !5609, file: !3, line: 420, type: !4103)
!5609 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 419, column: 45)
!5610 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 419, column: 2)
!5611 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 419, column: 2)
!5612 = !DILocation(line: 414, column: 66, scope: !5600)
!5613 = !DILocation(line: 414, column: 83, scope: !5600)
!5614 = !DILocation(line: 416, column: 2, scope: !5600)
!5615 = !DILocation(line: 416, column: 15, scope: !5600)
!5616 = !DILocation(line: 417, column: 2, scope: !5600)
!5617 = !DILocation(line: 417, column: 23, scope: !5600)
!5618 = !DILocation(line: 417, column: 34, scope: !5607)
!5619 = !DILocation(line: 417, column: 34, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 417, column: 34)
!5621 = !DILocation(line: 417, column: 34, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 417, column: 34)
!5623 = !DILocation(line: 417, column: 34, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 417, column: 34)
!5625 = !DILocation(line: 417, column: 34, scope: !5600)
!5626 = !DILocation(line: 419, column: 9, scope: !5611)
!5627 = !DILocation(line: 419, column: 7, scope: !5611)
!5628 = !DILocation(line: 419, column: 14, scope: !5610)
!5629 = !DILocation(line: 419, column: 18, scope: !5610)
!5630 = !DILocation(line: 419, column: 28, scope: !5610)
!5631 = !DILocation(line: 419, column: 16, scope: !5610)
!5632 = !DILocation(line: 419, column: 2, scope: !5611)
!5633 = !DILocation(line: 420, column: 3, scope: !5609)
!5634 = !DILocation(line: 420, column: 18, scope: !5609)
!5635 = !DILocation(line: 420, column: 25, scope: !5609)
!5636 = !DILocation(line: 420, column: 35, scope: !5609)
!5637 = !DILocation(line: 420, column: 42, scope: !5609)
!5638 = !DILocation(line: 422, column: 14, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 422, column: 7)
!5640 = !DILocation(line: 422, column: 41, scope: !5639)
!5641 = !DILocation(line: 422, column: 51, scope: !5639)
!5642 = !DILocation(line: 422, column: 20, scope: !5639)
!5643 = !DILocation(line: 422, column: 7, scope: !5639)
!5644 = !DILocation(line: 422, column: 55, scope: !5639)
!5645 = !DILocation(line: 422, column: 60, scope: !5639)
!5646 = !DILocation(line: 423, column: 7, scope: !5639)
!5647 = !DILocation(line: 423, column: 12, scope: !5639)
!5648 = !DILocation(line: 423, column: 21, scope: !5639)
!5649 = !DILocation(line: 422, column: 7, scope: !5609)
!5650 = !DILocation(line: 424, column: 33, scope: !5639)
!5651 = !DILocation(line: 424, column: 11, scope: !5639)
!5652 = !DILocation(line: 424, column: 4, scope: !5639)
!5653 = !DILocation(line: 425, column: 2, scope: !5610)
!5654 = !DILocation(line: 425, column: 2, scope: !5609)
!5655 = !DILocation(line: 419, column: 41, scope: !5610)
!5656 = !DILocation(line: 419, column: 2, scope: !5610)
!5657 = distinct !{!5657, !5632, !5658, !4358, !4359}
!5658 = !DILocation(line: 425, column: 2, scope: !5611)
!5659 = !DILocation(line: 426, column: 2, scope: !5600)
!5660 = !DILocation(line: 427, column: 1, scope: !5600)
!5661 = !DILocation(line: 476, column: 48, scope: !4128)
!5662 = !DILocation(line: 477, column: 14, scope: !4128)
!5663 = !DILocation(line: 478, column: 14, scope: !4128)
!5664 = !DILocation(line: 480, column: 2, scope: !4128)
!5665 = !DILocation(line: 480, column: 17, scope: !4128)
!5666 = !DILocation(line: 481, column: 2, scope: !4128)
!5667 = !DILocation(line: 481, column: 15, scope: !4128)
!5668 = !DILocation(line: 482, column: 2, scope: !4128)
!5669 = !DILocation(line: 482, column: 6, scope: !4128)
!5670 = !DILocation(line: 484, column: 2, scope: !4128)
!5671 = !DILocation(line: 485, column: 2, scope: !4142)
!5672 = !DILocation(line: 485, column: 2, scope: !4143)
!5673 = !DILocation(line: 485, column: 2, scope: !4146)
!5674 = !DILocation(line: 486, column: 3, scope: !4145)
!5675 = !DILocation(line: 486, column: 24, scope: !4145)
!5676 = !DILocation(line: 488, column: 7, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 488, column: 7)
!5678 = !DILocation(line: 488, column: 12, scope: !5677)
!5679 = !DILocation(line: 488, column: 18, scope: !5677)
!5680 = !DILocation(line: 488, column: 7, scope: !4145)
!5681 = !DILocation(line: 489, column: 4, scope: !5677)
!5682 = !DILocation(line: 491, column: 7, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 491, column: 7)
!5684 = !DILocation(line: 491, column: 15, scope: !5683)
!5685 = !DILocation(line: 491, column: 25, scope: !5683)
!5686 = !DILocation(line: 491, column: 34, scope: !5683)
!5687 = !DILocation(line: 491, column: 39, scope: !5683)
!5688 = !DILocation(line: 491, column: 18, scope: !5683)
!5689 = !DILocation(line: 491, column: 7, scope: !4145)
!5690 = !DILocation(line: 492, column: 4, scope: !5683)
!5691 = !DILocation(line: 495, column: 3, scope: !4145)
!5692 = !DILocation(line: 495, column: 3, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 495, column: 3)
!5694 = !{i64 2154341936}
!5695 = !DILocation(line: 496, column: 14, scope: !4148)
!5696 = !DILocation(line: 496, column: 14, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 496, column: 14)
!5698 = !DILocation(line: 496, column: 14, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 496, column: 14)
!5700 = !DILocation(line: 496, column: 14, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 496, column: 14)
!5702 = !DILocation(line: 496, column: 14, scope: !4145)
!5703 = !DILocation(line: 496, column: 12, scope: !4145)
!5704 = !DILocation(line: 497, column: 3, scope: !4145)
!5705 = !DILocation(line: 497, column: 3, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 497, column: 3)
!5707 = !{i64 2154345912}
!5708 = !DILocation(line: 497, column: 3, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 497, column: 3)
!5710 = !DILocation(line: 497, column: 3, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 497, column: 3)
!5712 = !{i64 2154346094}
!5713 = !DILocation(line: 499, column: 10, scope: !4152)
!5714 = !DILocation(line: 499, column: 8, scope: !4152)
!5715 = !DILocation(line: 499, column: 15, scope: !4151)
!5716 = !DILocation(line: 499, column: 19, scope: !4151)
!5717 = !DILocation(line: 499, column: 29, scope: !4151)
!5718 = !DILocation(line: 499, column: 17, scope: !4151)
!5719 = !DILocation(line: 499, column: 3, scope: !4152)
!5720 = !DILocation(line: 500, column: 4, scope: !4150)
!5721 = !DILocation(line: 500, column: 19, scope: !4150)
!5722 = !DILocation(line: 500, column: 26, scope: !4150)
!5723 = !DILocation(line: 500, column: 36, scope: !4150)
!5724 = !DILocation(line: 500, column: 43, scope: !4150)
!5725 = !DILocation(line: 502, column: 8, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 502, column: 8)
!5727 = !DILocation(line: 502, column: 13, scope: !5726)
!5728 = !DILocation(line: 502, column: 22, scope: !5726)
!5729 = !DILocation(line: 502, column: 8, scope: !4150)
!5730 = !DILocation(line: 503, column: 5, scope: !5726)
!5731 = !DILocation(line: 505, column: 10, scope: !4150)
!5732 = !DILocation(line: 505, column: 13, scope: !4150)
!5733 = !DILocation(line: 505, column: 40, scope: !4150)
!5734 = !DILocation(line: 505, column: 50, scope: !4150)
!5735 = !DILocation(line: 505, column: 19, scope: !4150)
!5736 = !DILocation(line: 506, column: 28, scope: !4150)
!5737 = !DILocation(line: 506, column: 6, scope: !4150)
!5738 = !DILocation(line: 505, column: 8, scope: !4150)
!5739 = !DILocation(line: 507, column: 8, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 507, column: 8)
!5741 = !DILocation(line: 507, column: 12, scope: !5740)
!5742 = !DILocation(line: 507, column: 8, scope: !4150)
!5743 = !DILocation(line: 508, column: 5, scope: !5740)
!5744 = !DILocation(line: 509, column: 3, scope: !4151)
!5745 = !DILocation(line: 509, column: 3, scope: !4150)
!5746 = !DILocation(line: 499, column: 42, scope: !4151)
!5747 = !DILocation(line: 499, column: 3, scope: !4151)
!5748 = distinct !{!5748, !5719, !5749, !4358, !4359}
!5749 = !DILocation(line: 509, column: 3, scope: !4152)
!5750 = !DILocation(line: 515, column: 7, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 515, column: 7)
!5752 = !DILocation(line: 515, column: 7, scope: !4145)
!5753 = !DILocation(line: 516, column: 4, scope: !5751)
!5754 = !DILocation(line: 517, column: 2, scope: !4146)
!5755 = !DILocation(line: 517, column: 2, scope: !4145)
!5756 = !DILocation(line: 485, column: 2, scope: !4154)
!5757 = distinct !{!5757, !5672, !5758, !4358, !4359}
!5758 = !DILocation(line: 517, column: 2, scope: !4143)
!5759 = !DILocation(line: 518, column: 1, scope: !4128)
!5760 = !DILocation(line: 519, column: 2, scope: !4128)
!5761 = !DILocation(line: 520, column: 9, scope: !4128)
!5762 = !DILocation(line: 520, column: 2, scope: !4128)
!5763 = !DILocation(line: 521, column: 1, scope: !4128)
!5764 = !DISubprogram(name: "mutex_lock", scope: !626, file: !626, line: 227, type: !5765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5765 = !DISubroutineType(types: !5766)
!5766 = !{null, !5767}
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!5768 = !DISubprogram(name: "strcmp", scope: !4499, file: !4499, line: 88, type: !5769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!102, !6, !6}
!5771 = !DISubprogram(name: "mutex_unlock", scope: !626, file: !626, line: 246, type: !5765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5772 = !DISubprogram(name: "__rcu_read_lock", scope: !4800, file: !4800, line: 74, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5773 = distinct !DISubprogram(name: "strstarts", scope: !4499, file: !4499, line: 255, type: !5774, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5776)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!1445, !6, !6}
!5776 = !{!5777, !5778}
!5777 = !DILocalVariable(name: "str", arg: 1, scope: !5773, file: !4499, line: 255, type: !6)
!5778 = !DILocalVariable(name: "prefix", arg: 2, scope: !5773, file: !4499, line: 255, type: !6)
!5779 = !DILocation(line: 255, column: 42, scope: !5773)
!5780 = !DILocation(line: 255, column: 59, scope: !5773)
!5781 = !DILocation(line: 257, column: 17, scope: !5773)
!5782 = !DILocation(line: 257, column: 22, scope: !5773)
!5783 = !DILocation(line: 257, column: 37, scope: !5773)
!5784 = !DILocation(line: 257, column: 30, scope: !5773)
!5785 = !DILocation(line: 257, column: 9, scope: !5773)
!5786 = !DILocation(line: 257, column: 46, scope: !5773)
!5787 = !DILocation(line: 257, column: 2, scope: !5773)
!5788 = !DISubprogram(name: "strncmp", scope: !4499, file: !4499, line: 91, type: !5789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5789 = !DISubroutineType(types: !5790)
!5790 = !{!102, !6, !6, !299}
!5791 = !DISubprogram(name: "__rcu_read_unlock", scope: !4800, file: !4800, line: 75, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5792 = distinct !DISubprogram(name: "within_module_init", scope: !20, file: !20, line: 634, type: !5293, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5793)
!5793 = !{!5794, !5795, !5796}
!5794 = !DILocalVariable(name: "addr", arg: 1, scope: !5792, file: !20, line: 634, type: !9)
!5795 = !DILocalVariable(name: "mod", arg: 2, scope: !5792, file: !20, line: 635, type: !5295)
!5796 = !DILocalVariable(name: "type", scope: !5797, file: !20, line: 637, type: !101)
!5797 = distinct !DILexicalBlock(scope: !5792, file: !20, line: 637, column: 2)
!5798 = !DILocation(line: 634, column: 53, scope: !5792)
!5799 = !DILocation(line: 635, column: 32, scope: !5792)
!5800 = !DILocation(line: 637, column: 2, scope: !5797)
!5801 = !DILocation(line: 637, column: 2, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5797, file: !20, line: 637, column: 2)
!5803 = !DILocation(line: 637, column: 2, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5802, file: !20, line: 637, column: 2)
!5805 = !DILocation(line: 638, column: 30, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5807, file: !20, line: 638, column: 7)
!5807 = distinct !DILexicalBlock(scope: !5804, file: !20, line: 637, column: 37)
!5808 = !DILocation(line: 638, column: 36, scope: !5806)
!5809 = !DILocation(line: 638, column: 41, scope: !5806)
!5810 = !DILocation(line: 638, column: 7, scope: !5806)
!5811 = !DILocation(line: 638, column: 7, scope: !5807)
!5812 = !DILocation(line: 639, column: 4, scope: !5806)
!5813 = !DILocation(line: 640, column: 2, scope: !5807)
!5814 = distinct !{!5814, !5800, !5815, !4358, !4359}
!5815 = !DILocation(line: 640, column: 2, scope: !5797)
!5816 = !DILocation(line: 641, column: 2, scope: !5792)
!5817 = !DILocation(line: 642, column: 1, scope: !5792)
!5818 = distinct !DISubprogram(name: "is_mapping_symbol", scope: !5819, file: !5819, line: 6, type: !5820, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5822)
!5819 = !DIFile(filename: "./include/linux/module_symbol.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d1a86667eded660267d47174acff01cc")
!5820 = !DISubroutineType(types: !5821)
!5821 = !{!102, !6}
!5822 = !{!5823}
!5823 = !DILocalVariable(name: "str", arg: 1, scope: !5818, file: !5819, line: 6, type: !6)
!5824 = !DILocation(line: 6, column: 49, scope: !5818)
!5825 = !DILocation(line: 8, column: 6, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5818, file: !5819, line: 8, column: 6)
!5827 = !DILocation(line: 8, column: 13, scope: !5826)
!5828 = !DILocation(line: 8, column: 20, scope: !5826)
!5829 = !DILocation(line: 8, column: 23, scope: !5826)
!5830 = !DILocation(line: 8, column: 30, scope: !5826)
!5831 = !DILocation(line: 8, column: 6, scope: !5818)
!5832 = !DILocation(line: 9, column: 3, scope: !5826)
!5833 = !DILocation(line: 10, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5818, file: !5819, line: 10, column: 6)
!5835 = !DILocation(line: 10, column: 13, scope: !5834)
!5836 = !DILocation(line: 10, column: 20, scope: !5834)
!5837 = !DILocation(line: 10, column: 23, scope: !5834)
!5838 = !DILocation(line: 10, column: 30, scope: !5834)
!5839 = !DILocation(line: 10, column: 6, scope: !5818)
!5840 = !DILocation(line: 11, column: 3, scope: !5834)
!5841 = !DILocation(line: 12, column: 9, scope: !5818)
!5842 = !DILocation(line: 12, column: 16, scope: !5818)
!5843 = !DILocation(line: 12, column: 2, scope: !5818)
!5844 = !DILocation(line: 13, column: 1, scope: !5818)
!5845 = distinct !DISubprogram(name: "within_module_mem_type", scope: !20, file: !20, line: 613, type: !5846, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5848)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{!1445, !9, !5295, !101}
!5848 = !{!5849, !5850, !5851, !5852, !5853}
!5849 = !DILocalVariable(name: "addr", arg: 1, scope: !5845, file: !20, line: 613, type: !9)
!5850 = !DILocalVariable(name: "mod", arg: 2, scope: !5845, file: !20, line: 614, type: !5295)
!5851 = !DILocalVariable(name: "type", arg: 3, scope: !5845, file: !20, line: 615, type: !101)
!5852 = !DILocalVariable(name: "base", scope: !5845, file: !20, line: 617, type: !9)
!5853 = !DILocalVariable(name: "size", scope: !5845, file: !20, line: 617, type: !9)
!5854 = !DILocation(line: 613, column: 57, scope: !5845)
!5855 = !DILocation(line: 614, column: 29, scope: !5845)
!5856 = !DILocation(line: 615, column: 26, scope: !5845)
!5857 = !DILocation(line: 617, column: 2, scope: !5845)
!5858 = !DILocation(line: 617, column: 16, scope: !5845)
!5859 = !DILocation(line: 617, column: 22, scope: !5845)
!5860 = !DILocation(line: 619, column: 24, scope: !5845)
!5861 = !DILocation(line: 619, column: 29, scope: !5845)
!5862 = !DILocation(line: 619, column: 33, scope: !5845)
!5863 = !DILocation(line: 619, column: 39, scope: !5845)
!5864 = !DILocation(line: 619, column: 9, scope: !5845)
!5865 = !DILocation(line: 619, column: 7, scope: !5845)
!5866 = !DILocation(line: 620, column: 9, scope: !5845)
!5867 = !DILocation(line: 620, column: 14, scope: !5845)
!5868 = !DILocation(line: 620, column: 18, scope: !5845)
!5869 = !DILocation(line: 620, column: 24, scope: !5845)
!5870 = !DILocation(line: 620, column: 7, scope: !5845)
!5871 = !DILocation(line: 621, column: 9, scope: !5845)
!5872 = !DILocation(line: 621, column: 16, scope: !5845)
!5873 = !DILocation(line: 621, column: 14, scope: !5845)
!5874 = !DILocation(line: 621, column: 23, scope: !5845)
!5875 = !DILocation(line: 621, column: 21, scope: !5845)
!5876 = !DILocation(line: 622, column: 1, scope: !5845)
!5877 = !DILocation(line: 621, column: 2, scope: !5845)
!5878 = distinct !DISubprogram(name: "within_module_core", scope: !20, file: !20, line: 624, type: !5293, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5879)
!5879 = !{!5880, !5881, !5882}
!5880 = !DILocalVariable(name: "addr", arg: 1, scope: !5878, file: !20, line: 624, type: !9)
!5881 = !DILocalVariable(name: "mod", arg: 2, scope: !5878, file: !20, line: 625, type: !5295)
!5882 = !DILocalVariable(name: "type", scope: !5883, file: !20, line: 627, type: !101)
!5883 = distinct !DILexicalBlock(scope: !5878, file: !20, line: 627, column: 2)
!5884 = !DILocation(line: 624, column: 53, scope: !5878)
!5885 = !DILocation(line: 625, column: 32, scope: !5878)
!5886 = !DILocation(line: 627, column: 2, scope: !5883)
!5887 = !DILocation(line: 627, column: 2, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5883, file: !20, line: 627, column: 2)
!5889 = !DILocation(line: 627, column: 2, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5888, file: !20, line: 627, column: 2)
!5891 = !DILocation(line: 628, column: 30, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5893, file: !20, line: 628, column: 7)
!5893 = distinct !DILexicalBlock(scope: !5890, file: !20, line: 627, column: 37)
!5894 = !DILocation(line: 628, column: 36, scope: !5892)
!5895 = !DILocation(line: 628, column: 41, scope: !5892)
!5896 = !DILocation(line: 628, column: 7, scope: !5892)
!5897 = !DILocation(line: 628, column: 7, scope: !5893)
!5898 = !DILocation(line: 629, column: 4, scope: !5892)
!5899 = !DILocation(line: 630, column: 2, scope: !5893)
!5900 = distinct !{!5900, !5886, !5901, !4358, !4359}
!5901 = !DILocation(line: 630, column: 2, scope: !5883)
!5902 = !DILocation(line: 631, column: 2, scope: !5878)
!5903 = !DILocation(line: 632, column: 1, scope: !5878)
!5904 = distinct !DISubprogram(name: "lookup_exported_symbol", scope: !3, file: !3, line: 16, type: !5905, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5907)
!5905 = !DISubroutineType(types: !5906)
!5906 = !{!3780, !6, !3780, !3780}
!5907 = !{!5908, !5909, !5910}
!5908 = !DILocalVariable(name: "name", arg: 1, scope: !5904, file: !3, line: 16, type: !6)
!5909 = !DILocalVariable(name: "start", arg: 2, scope: !5904, file: !3, line: 17, type: !3780)
!5910 = !DILocalVariable(name: "stop", arg: 3, scope: !5904, file: !3, line: 18, type: !3780)
!5911 = !DILocation(line: 16, column: 71, scope: !5904)
!5912 = !DILocation(line: 17, column: 38, scope: !5904)
!5913 = !DILocation(line: 18, column: 38, scope: !5904)
!5914 = !DILocation(line: 20, column: 17, scope: !5904)
!5915 = !DILocation(line: 20, column: 23, scope: !5904)
!5916 = !DILocation(line: 20, column: 30, scope: !5904)
!5917 = !DILocation(line: 20, column: 37, scope: !5904)
!5918 = !DILocation(line: 20, column: 35, scope: !5904)
!5919 = !DILocation(line: 20, column: 9, scope: !5904)
!5920 = !DILocation(line: 20, column: 2, scope: !5904)
!5921 = distinct !DISubprogram(name: "kernel_symbol_value", scope: !3783, file: !3783, line: 131, type: !5922, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5924)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{!9, !3780}
!5924 = !{!5925}
!5925 = !DILocalVariable(name: "sym", arg: 1, scope: !5921, file: !3783, line: 131, type: !3780)
!5926 = !DILocation(line: 131, column: 77, scope: !5921)
!5927 = !DILocation(line: 134, column: 39, scope: !5921)
!5928 = !DILocation(line: 134, column: 44, scope: !5921)
!5929 = !DILocation(line: 134, column: 24, scope: !5921)
!5930 = !DILocation(line: 134, column: 9, scope: !5921)
!5931 = !DILocation(line: 134, column: 2, scope: !5921)
!5932 = !DISubprogram(name: "bsearch", scope: !5933, file: !5933, line: 30, type: !5934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5933 = !DIFile(filename: "./include/linux/bsearch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "349c7fd6b20db6d92bc7bafdce6c5532")
!5934 = !DISubroutineType(types: !5935)
!5935 = !{!119, !2113, !2113, !298, !298, !5936}
!5936 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !156, line: 245, baseType: !5937)
!5937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5938, size: 64)
!5938 = !DISubroutineType(types: !5939)
!5939 = !{!102, !2113, !2113}
!5940 = distinct !DISubprogram(name: "offset_to_ptr", scope: !5941, file: !5941, line: 211, type: !5942, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !5945)
!5941 = !DIFile(filename: "./include/linux/compiler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2f04abb963d4806925887def212f010")
!5942 = !DISubroutineType(types: !5943)
!5943 = !{!119, !5944}
!5944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!5945 = !{!5946}
!5946 = !DILocalVariable(name: "off", arg: 1, scope: !5940, file: !5941, line: 211, type: !5944)
!5947 = !DILocation(line: 211, column: 46, scope: !5940)
!5948 = !DILocation(line: 213, column: 33, scope: !5940)
!5949 = !DILocation(line: 213, column: 18, scope: !5940)
!5950 = !DILocation(line: 213, column: 40, scope: !5940)
!5951 = !DILocation(line: 213, column: 39, scope: !5940)
!5952 = !DILocation(line: 213, column: 37, scope: !5940)
!5953 = !DILocation(line: 213, column: 9, scope: !5940)
!5954 = !DILocation(line: 213, column: 2, scope: !5940)
!5955 = !DISubprogram(name: "strnchr", scope: !4499, file: !4499, line: 107, type: !5956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5956 = !DISubroutineType(types: !5957)
!5957 = !{!12, !6, !298, !102}
!5958 = !DISubprogram(name: "find_module_all", scope: !3783, file: !3783, line: 108, type: !5959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!160, !6, !298, !1445}
