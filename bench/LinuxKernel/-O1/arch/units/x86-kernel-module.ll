; ModuleID = 'arch/x86/kernel/module.c'
source_filename = "arch/x86/kernel/module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.14, %union.anon.21, i8, i8 }>
%union.anon.14 = type { %struct.anon.17 }
%struct.anon.17 = type { i64 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i8, i8, i16, i32, i64 }
%struct.pgprot = type { i64 }
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
%struct.callthunk_sites = type { ptr, ptr, ptr, ptr }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.elf64_rela = type { i64, i64, i64 }
%struct.elf64_sym = type { i32, i8, i8, i16, i64, i64 }

@__default_kernel_pte_mask = external dso_local global i64, align 8
@.str = private unnamed_addr constant [17 x i8] c".altinstructions\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c".smp_locks\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [18 x i8] c".parainstructions\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [12 x i8] c".orc_unwind\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [15 x i8] c".orc_unwind_ip\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [17 x i8] c".retpoline_sites\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [14 x i8] c".return_sites\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [12 x i8] c".call_sites\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [11 x i8] c".cfi_sites\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [16 x i8] c".ibt_endbr_seal\00", align 1, !dbg !38
@module_kaslr_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @module_kaslr_mutex, i64 16), ptr getelementptr (i8, ptr @module_kaslr_mutex, i64 16) } }, align 8, !dbg !43
@module_load_offset = internal global i64 0, align 8, !dbg !189
@boot_params = external dso_local global %struct.boot_params, align 1
@text_mutex = external dso_local global %struct.mutex, align 8
@.str.10 = private unnamed_addr constant [45 x i8] c"\013module: %s: Unknown rela relocation: %llu\0A\00", align 1, !dbg !191
@.str.11 = private unnamed_addr constant [106 x i8] c"\013module: x86/modules: Invalid relocation target, existing value is nonzero for type %d, loc %p, val %Lx\0A\00", align 1, !dbg !196
@.str.12 = private unnamed_addr constant [125 x i8] c"\014module: x86/modules: Invalid relocation target, existing value does not match expected value for type %d, loc %p, val %Lx\0A\00", align 1, !dbg !201
@.str.13 = private unnamed_addr constant [50 x i8] c"\013module: overflow in relocation type %d val %Lx\0A\00", align 1, !dbg !206
@.str.14 = private unnamed_addr constant [57 x i8] c"\013module: `%s' likely not compiled with -mcmodel=kernel\0A\00", align 1, !dbg !211

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @module_alloc(i64 noundef %size) #0 align 16 !dbg !274 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp_mask = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !278, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp_mask) #13, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %gfp_mask, metadata !279, metadata !DIExpression()), !dbg !283
  store i32 3264, ptr %gfp_mask, align 4, !dbg !283
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %p, metadata !280, metadata !DIExpression()), !dbg !285
  %0 = load i64, ptr %size.addr, align 8, !dbg !286
  %add = add i64 %0, 4095, !dbg !286
  %and = and i64 %add, -4096, !dbg !286
  %cmp = icmp ugt i64 %and, 1056964608, !dbg !288
  br i1 %cmp, label %if.then, label %if.end, !dbg !289

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !290

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !291
  %call = call i64 @get_module_load_offset() #14, !dbg !292
  %add1 = add i64 -1073741824, %call, !dbg !293
  %2 = load i32, ptr %gfp_mask, align 4, !dbg !294
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !295
  %3 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !295
  %and2 = and i64 -9223372036854775453, %3, !dbg !295
  store i64 %and2, ptr %pgprot, align 8, !dbg !295
  %4 = call ptr @llvm.returnaddress(i32 0), !dbg !296
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !297
  %5 = load i64, ptr %coerce.dive, align 8, !dbg !297
  %call3 = call noalias ptr @__vmalloc_node_range(i64 noundef %1, i64 noundef 4096, i64 noundef %add1, i64 noundef -16777216, i32 noundef %2, i64 %5, i64 noundef 256, i32 noundef -1, ptr noundef %4) #15, !dbg !297
  store ptr %call3, ptr %p, align 8, !dbg !298
  %6 = load ptr, ptr %p, align 8, !dbg !299
  %tobool = icmp ne ptr %6, null, !dbg !299
  br i1 %tobool, label %land.lhs.true, label %if.end7, !dbg !301

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %p, align 8, !dbg !302
  %8 = load i64, ptr %size.addr, align 8, !dbg !303
  %9 = load i32, ptr %gfp_mask, align 4, !dbg !304
  %call4 = call i32 @kasan_alloc_module_shadow(ptr noundef %7, i64 noundef %8, i32 noundef %9) #14, !dbg !305
  %cmp5 = icmp slt i32 %call4, 0, !dbg !306
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !307

if.then6:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %p, align 8, !dbg !308
  call void @vfree(ptr noundef %10) #14, !dbg !310
  store ptr null, ptr %retval, align 8, !dbg !311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !311

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %11 = load ptr, ptr %p, align 8, !dbg !312
  store ptr %11, ptr %retval, align 8, !dbg !313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !313

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !314
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp_mask) #13, !dbg !314
  %12 = load ptr, ptr %retval, align 8, !dbg !314
  ret ptr %12, !dbg !314
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !315 dso_local noalias ptr @__vmalloc_node_range(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i64, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_module_load_offset() #0 align 16 !dbg !327 {
entry:
  %call = call zeroext i1 @kaslr_enabled() #14, !dbg !330
  br i1 %call, label %if.then, label %if.end3, !dbg !332

if.then:                                          ; preds = %entry
  call void @mutex_lock(ptr noundef @module_kaslr_mutex) #14, !dbg !333
  %0 = load i64, ptr @module_load_offset, align 8, !dbg !335
  %cmp = icmp eq i64 %0, 0, !dbg !337
  br i1 %cmp, label %if.then1, label %if.end, !dbg !338

if.then1:                                         ; preds = %if.then
  %call2 = call i32 @get_random_u32_inclusive(i32 noundef 1, i32 noundef 1024) #14, !dbg !339
  %conv = zext i32 %call2 to i64, !dbg !339
  %mul = mul i64 %conv, 4096, !dbg !340
  store i64 %mul, ptr @module_load_offset, align 8, !dbg !341
  br label %if.end, !dbg !342

if.end:                                           ; preds = %if.then1, %if.then
  call void @mutex_unlock(ptr noundef @module_kaslr_mutex) #14, !dbg !343
  br label %if.end3, !dbg !344

if.end3:                                          ; preds = %if.end, %entry
  %1 = load i64, ptr @module_load_offset, align 8, !dbg !345
  ret i64 %1, !dbg !346
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kasan_alloc_module_shadow(ptr noundef %addr, i64 noundef %size, i32 noundef %gfp_mask) #5 align 16 !dbg !347 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !356, metadata !DIExpression()), !dbg !359
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !357, metadata !DIExpression()), !dbg !360
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !358, metadata !DIExpression()), !dbg !361
  ret i32 0, !dbg !362
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !363 dso_local void @vfree(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @apply_relocate_add(ptr noundef %sechdrs, ptr noundef %strtab, i32 noundef %symindex, i32 noundef %relsec, ptr noundef %me) #0 align 16 !dbg !366 {
entry:
  %sechdrs.addr = alloca ptr, align 8
  %strtab.addr = alloca ptr, align 8
  %symindex.addr = alloca i32, align 4
  %relsec.addr = alloca i32, align 4
  %me.addr = alloca ptr, align 8
  store ptr %sechdrs, ptr %sechdrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sechdrs.addr, metadata !4281, metadata !DIExpression()), !dbg !4286
  store ptr %strtab, ptr %strtab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strtab.addr, metadata !4282, metadata !DIExpression()), !dbg !4287
  store i32 %symindex, ptr %symindex.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %symindex.addr, metadata !4283, metadata !DIExpression()), !dbg !4288
  store i32 %relsec, ptr %relsec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %relsec.addr, metadata !4284, metadata !DIExpression()), !dbg !4289
  store ptr %me, ptr %me.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %me.addr, metadata !4285, metadata !DIExpression()), !dbg !4290
  %0 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4291
  %1 = load ptr, ptr %strtab.addr, align 8, !dbg !4292
  %2 = load i32, ptr %symindex.addr, align 4, !dbg !4293
  %3 = load i32, ptr %relsec.addr, align 4, !dbg !4294
  %4 = load ptr, ptr %me.addr, align 8, !dbg !4295
  %call = call i32 @write_relocate_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext true) #14, !dbg !4296
  ret i32 %call, !dbg !4297
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @write_relocate_add(ptr noundef %sechdrs, ptr noundef %strtab, i32 noundef %symindex, i32 noundef %relsec, ptr noundef %me, i1 noundef zeroext %apply) #0 align 16 !dbg !4298 {
entry:
  %sechdrs.addr = alloca ptr, align 8
  %strtab.addr = alloca ptr, align 8
  %symindex.addr = alloca i32, align 4
  %relsec.addr = alloca i32, align 4
  %me.addr = alloca ptr, align 8
  %apply.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %early = alloca i8, align 1
  %write = alloca ptr, align 8
  store ptr %sechdrs, ptr %sechdrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sechdrs.addr, metadata !4302, metadata !DIExpression()), !dbg !4314
  store ptr %strtab, ptr %strtab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strtab.addr, metadata !4303, metadata !DIExpression()), !dbg !4315
  store i32 %symindex, ptr %symindex.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %symindex.addr, metadata !4304, metadata !DIExpression()), !dbg !4316
  store i32 %relsec, ptr %relsec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %relsec.addr, metadata !4305, metadata !DIExpression()), !dbg !4317
  store ptr %me, ptr %me.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %me.addr, metadata !4306, metadata !DIExpression()), !dbg !4318
  %frombool = zext i1 %apply to i8
  store i8 %frombool, ptr %apply.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %apply.addr, metadata !4307, metadata !DIExpression()), !dbg !4319
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !4320
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4308, metadata !DIExpression()), !dbg !4321
  call void @llvm.lifetime.start.p0(i64 1, ptr %early) #13, !dbg !4322
  call void @llvm.dbg.declare(metadata ptr %early, metadata !4309, metadata !DIExpression()), !dbg !4323
  %0 = load ptr, ptr %me.addr, align 8, !dbg !4324
  %state = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 0, !dbg !4325
  %1 = load i32, ptr %state, align 64, !dbg !4325
  %cmp = icmp eq i32 %1, 3, !dbg !4326
  %frombool1 = zext i1 %cmp to i8, !dbg !4323
  store i8 %frombool1, ptr %early, align 1, !dbg !4323
  call void @llvm.lifetime.start.p0(i64 8, ptr %write) #13, !dbg !4327
  call void @llvm.dbg.declare(metadata ptr %write, metadata !4310, metadata !DIExpression()), !dbg !4328
  store ptr @memcpy, ptr %write, align 8, !dbg !4328
  %2 = load i8, ptr %early, align 1, !dbg !4329, !range !4331, !noundef !721
  %tobool = trunc i8 %2 to i1, !dbg !4329
  br i1 %tobool, label %if.end, label %if.then, !dbg !4332

if.then:                                          ; preds = %entry
  store ptr @text_poke, ptr %write, align 8, !dbg !4333
  call void @mutex_lock(ptr noundef @text_mutex) #14, !dbg !4335
  br label %if.end, !dbg !4336

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4337
  %4 = load ptr, ptr %strtab.addr, align 8, !dbg !4338
  %5 = load i32, ptr %symindex.addr, align 4, !dbg !4339
  %6 = load i32, ptr %relsec.addr, align 4, !dbg !4340
  %7 = load ptr, ptr %me.addr, align 8, !dbg !4341
  %8 = load ptr, ptr %write, align 8, !dbg !4342
  %9 = load i8, ptr %apply.addr, align 1, !dbg !4343, !range !4331, !noundef !721
  %tobool2 = trunc i8 %9 to i1, !dbg !4343
  %call = call i32 @__write_relocate_add(ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %tobool2) #14, !dbg !4344
  store i32 %call, ptr %ret, align 4, !dbg !4345
  %10 = load i8, ptr %early, align 1, !dbg !4346, !range !4331, !noundef !721
  %tobool3 = trunc i8 %10 to i1, !dbg !4346
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4348

if.then4:                                         ; preds = %if.end
  call void @text_poke_sync() #14, !dbg !4349
  call void @mutex_unlock(ptr noundef @text_mutex) #14, !dbg !4351
  br label %if.end5, !dbg !4352

if.end5:                                          ; preds = %if.then4, %if.end
  %11 = load i32, ptr %ret, align 4, !dbg !4353
  call void @llvm.lifetime.end.p0(i64 8, ptr %write) #13, !dbg !4354
  call void @llvm.lifetime.end.p0(i64 1, ptr %early) #13, !dbg !4354
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !4354
  ret i32 %11, !dbg !4355
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @module_finalize(ptr noundef %hdr, ptr noundef %sechdrs, ptr noundef %me) #0 align 16 !dbg !4356 {
entry:
  %hdr.addr = alloca ptr, align 8
  %sechdrs.addr = alloca ptr, align 8
  %me.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %alt = alloca ptr, align 8
  %locks = alloca ptr, align 8
  %para = alloca ptr, align 8
  %orc = alloca ptr, align 8
  %orc_ip = alloca ptr, align 8
  %retpolines = alloca ptr, align 8
  %returns = alloca ptr, align 8
  %ibt_endbr = alloca ptr, align 8
  %calls = alloca ptr, align 8
  %cfi = alloca ptr, align 8
  %secstrings = alloca ptr, align 8
  %pseg = alloca ptr, align 8
  %rseg = alloca ptr, align 8
  %cseg = alloca ptr, align 8
  %rsize = alloca i32, align 4
  %csize = alloca i32, align 4
  %rseg94 = alloca ptr, align 8
  %rseg101 = alloca ptr, align 8
  %aseg = alloca ptr, align 8
  %cs = alloca %struct.callthunk_sites, align 8
  %iseg = alloca ptr, align 8
  %lseg = alloca ptr, align 8
  %text = alloca ptr, align 8
  %text_end = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !4382, metadata !DIExpression()), !dbg !4441
  store ptr %sechdrs, ptr %sechdrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sechdrs.addr, metadata !4383, metadata !DIExpression()), !dbg !4442
  store ptr %me, ptr %me.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %me.addr, metadata !4384, metadata !DIExpression()), !dbg !4443
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %s, metadata !4385, metadata !DIExpression()), !dbg !4445
  call void @llvm.lifetime.start.p0(i64 8, ptr %alt) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %alt, metadata !4386, metadata !DIExpression()), !dbg !4446
  store ptr null, ptr %alt, align 8, !dbg !4446
  call void @llvm.lifetime.start.p0(i64 8, ptr %locks) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %locks, metadata !4387, metadata !DIExpression()), !dbg !4447
  store ptr null, ptr %locks, align 8, !dbg !4447
  call void @llvm.lifetime.start.p0(i64 8, ptr %para) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %para, metadata !4388, metadata !DIExpression()), !dbg !4448
  store ptr null, ptr %para, align 8, !dbg !4448
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %orc, metadata !4389, metadata !DIExpression()), !dbg !4449
  store ptr null, ptr %orc, align 8, !dbg !4449
  call void @llvm.lifetime.start.p0(i64 8, ptr %orc_ip) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %orc_ip, metadata !4390, metadata !DIExpression()), !dbg !4450
  store ptr null, ptr %orc_ip, align 8, !dbg !4450
  call void @llvm.lifetime.start.p0(i64 8, ptr %retpolines) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %retpolines, metadata !4391, metadata !DIExpression()), !dbg !4451
  store ptr null, ptr %retpolines, align 8, !dbg !4451
  call void @llvm.lifetime.start.p0(i64 8, ptr %returns) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %returns, metadata !4392, metadata !DIExpression()), !dbg !4452
  store ptr null, ptr %returns, align 8, !dbg !4452
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibt_endbr) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %ibt_endbr, metadata !4393, metadata !DIExpression()), !dbg !4453
  store ptr null, ptr %ibt_endbr, align 8, !dbg !4453
  call void @llvm.lifetime.start.p0(i64 8, ptr %calls) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %calls, metadata !4394, metadata !DIExpression()), !dbg !4454
  store ptr null, ptr %calls, align 8, !dbg !4454
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfi) #13, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %cfi, metadata !4395, metadata !DIExpression()), !dbg !4455
  store ptr null, ptr %cfi, align 8, !dbg !4455
  call void @llvm.lifetime.start.p0(i64 8, ptr %secstrings) #13, !dbg !4456
  call void @llvm.dbg.declare(metadata ptr %secstrings, metadata !4396, metadata !DIExpression()), !dbg !4457
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !4458
  %1 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4459
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !4460
  %e_shstrndx = getelementptr inbounds %struct.elf64_hdr, ptr %2, i32 0, i32 13, !dbg !4461
  %3 = load i16, ptr %e_shstrndx, align 2, !dbg !4461
  %idxprom = zext i16 %3 to i64, !dbg !4459
  %arrayidx = getelementptr %struct.elf64_shdr, ptr %1, i64 %idxprom, !dbg !4459
  %sh_offset = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx, i32 0, i32 4, !dbg !4462
  %4 = load i64, ptr %sh_offset, align 8, !dbg !4462
  %add.ptr = getelementptr i8, ptr %0, i64 %4, !dbg !4463
  store ptr %add.ptr, ptr %secstrings, align 8, !dbg !4457
  %5 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4464
  store ptr %5, ptr %s, align 8, !dbg !4466
  br label %for.cond, !dbg !4467

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %s, align 8, !dbg !4468
  %7 = load ptr, ptr %sechdrs.addr, align 8, !dbg !4470
  %8 = load ptr, ptr %hdr.addr, align 8, !dbg !4471
  %e_shnum = getelementptr inbounds %struct.elf64_hdr, ptr %8, i32 0, i32 12, !dbg !4472
  %9 = load i16, ptr %e_shnum, align 4, !dbg !4472
  %conv = zext i16 %9 to i32, !dbg !4471
  %idx.ext = sext i32 %conv to i64, !dbg !4473
  %add.ptr1 = getelementptr %struct.elf64_shdr, ptr %7, i64 %idx.ext, !dbg !4473
  %cmp = icmp ult ptr %6, %add.ptr1, !dbg !4474
  br i1 %cmp, label %for.body, label %for.end, !dbg !4475

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %secstrings, align 8, !dbg !4476
  %11 = load ptr, ptr %s, align 8, !dbg !4479
  %sh_name = getelementptr inbounds %struct.elf64_shdr, ptr %11, i32 0, i32 0, !dbg !4480
  %12 = load i32, ptr %sh_name, align 8, !dbg !4480
  %idx.ext3 = zext i32 %12 to i64, !dbg !4481
  %add.ptr4 = getelementptr i8, ptr %10, i64 %idx.ext3, !dbg !4481
  %call = call i32 @strcmp(ptr noundef @.str, ptr noundef %add.ptr4) #14, !dbg !4482
  %tobool = icmp ne i32 %call, 0, !dbg !4482
  br i1 %tobool, label %if.end, label %if.then, !dbg !4483

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr %s, align 8, !dbg !4484
  store ptr %13, ptr %alt, align 8, !dbg !4485
  br label %if.end, !dbg !4486

if.end:                                           ; preds = %if.then, %for.body
  %14 = load ptr, ptr %secstrings, align 8, !dbg !4487
  %15 = load ptr, ptr %s, align 8, !dbg !4489
  %sh_name5 = getelementptr inbounds %struct.elf64_shdr, ptr %15, i32 0, i32 0, !dbg !4490
  %16 = load i32, ptr %sh_name5, align 8, !dbg !4490
  %idx.ext6 = zext i32 %16 to i64, !dbg !4491
  %add.ptr7 = getelementptr i8, ptr %14, i64 %idx.ext6, !dbg !4491
  %call8 = call i32 @strcmp(ptr noundef @.str.1, ptr noundef %add.ptr7) #14, !dbg !4492
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4492
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4493

if.then10:                                        ; preds = %if.end
  %17 = load ptr, ptr %s, align 8, !dbg !4494
  store ptr %17, ptr %locks, align 8, !dbg !4495
  br label %if.end11, !dbg !4496

if.end11:                                         ; preds = %if.then10, %if.end
  %18 = load ptr, ptr %secstrings, align 8, !dbg !4497
  %19 = load ptr, ptr %s, align 8, !dbg !4499
  %sh_name12 = getelementptr inbounds %struct.elf64_shdr, ptr %19, i32 0, i32 0, !dbg !4500
  %20 = load i32, ptr %sh_name12, align 8, !dbg !4500
  %idx.ext13 = zext i32 %20 to i64, !dbg !4501
  %add.ptr14 = getelementptr i8, ptr %18, i64 %idx.ext13, !dbg !4501
  %call15 = call i32 @strcmp(ptr noundef @.str.2, ptr noundef %add.ptr14) #14, !dbg !4502
  %tobool16 = icmp ne i32 %call15, 0, !dbg !4502
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4503

if.then17:                                        ; preds = %if.end11
  %21 = load ptr, ptr %s, align 8, !dbg !4504
  store ptr %21, ptr %para, align 8, !dbg !4505
  br label %if.end18, !dbg !4506

if.end18:                                         ; preds = %if.then17, %if.end11
  %22 = load ptr, ptr %secstrings, align 8, !dbg !4507
  %23 = load ptr, ptr %s, align 8, !dbg !4509
  %sh_name19 = getelementptr inbounds %struct.elf64_shdr, ptr %23, i32 0, i32 0, !dbg !4510
  %24 = load i32, ptr %sh_name19, align 8, !dbg !4510
  %idx.ext20 = zext i32 %24 to i64, !dbg !4511
  %add.ptr21 = getelementptr i8, ptr %22, i64 %idx.ext20, !dbg !4511
  %call22 = call i32 @strcmp(ptr noundef @.str.3, ptr noundef %add.ptr21) #14, !dbg !4512
  %tobool23 = icmp ne i32 %call22, 0, !dbg !4512
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !4513

if.then24:                                        ; preds = %if.end18
  %25 = load ptr, ptr %s, align 8, !dbg !4514
  store ptr %25, ptr %orc, align 8, !dbg !4515
  br label %if.end25, !dbg !4516

if.end25:                                         ; preds = %if.then24, %if.end18
  %26 = load ptr, ptr %secstrings, align 8, !dbg !4517
  %27 = load ptr, ptr %s, align 8, !dbg !4519
  %sh_name26 = getelementptr inbounds %struct.elf64_shdr, ptr %27, i32 0, i32 0, !dbg !4520
  %28 = load i32, ptr %sh_name26, align 8, !dbg !4520
  %idx.ext27 = zext i32 %28 to i64, !dbg !4521
  %add.ptr28 = getelementptr i8, ptr %26, i64 %idx.ext27, !dbg !4521
  %call29 = call i32 @strcmp(ptr noundef @.str.4, ptr noundef %add.ptr28) #14, !dbg !4522
  %tobool30 = icmp ne i32 %call29, 0, !dbg !4522
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !4523

if.then31:                                        ; preds = %if.end25
  %29 = load ptr, ptr %s, align 8, !dbg !4524
  store ptr %29, ptr %orc_ip, align 8, !dbg !4525
  br label %if.end32, !dbg !4526

if.end32:                                         ; preds = %if.then31, %if.end25
  %30 = load ptr, ptr %secstrings, align 8, !dbg !4527
  %31 = load ptr, ptr %s, align 8, !dbg !4529
  %sh_name33 = getelementptr inbounds %struct.elf64_shdr, ptr %31, i32 0, i32 0, !dbg !4530
  %32 = load i32, ptr %sh_name33, align 8, !dbg !4530
  %idx.ext34 = zext i32 %32 to i64, !dbg !4531
  %add.ptr35 = getelementptr i8, ptr %30, i64 %idx.ext34, !dbg !4531
  %call36 = call i32 @strcmp(ptr noundef @.str.5, ptr noundef %add.ptr35) #14, !dbg !4532
  %tobool37 = icmp ne i32 %call36, 0, !dbg !4532
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !4533

if.then38:                                        ; preds = %if.end32
  %33 = load ptr, ptr %s, align 8, !dbg !4534
  store ptr %33, ptr %retpolines, align 8, !dbg !4535
  br label %if.end39, !dbg !4536

if.end39:                                         ; preds = %if.then38, %if.end32
  %34 = load ptr, ptr %secstrings, align 8, !dbg !4537
  %35 = load ptr, ptr %s, align 8, !dbg !4539
  %sh_name40 = getelementptr inbounds %struct.elf64_shdr, ptr %35, i32 0, i32 0, !dbg !4540
  %36 = load i32, ptr %sh_name40, align 8, !dbg !4540
  %idx.ext41 = zext i32 %36 to i64, !dbg !4541
  %add.ptr42 = getelementptr i8, ptr %34, i64 %idx.ext41, !dbg !4541
  %call43 = call i32 @strcmp(ptr noundef @.str.6, ptr noundef %add.ptr42) #14, !dbg !4542
  %tobool44 = icmp ne i32 %call43, 0, !dbg !4542
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !4543

if.then45:                                        ; preds = %if.end39
  %37 = load ptr, ptr %s, align 8, !dbg !4544
  store ptr %37, ptr %returns, align 8, !dbg !4545
  br label %if.end46, !dbg !4546

if.end46:                                         ; preds = %if.then45, %if.end39
  %38 = load ptr, ptr %secstrings, align 8, !dbg !4547
  %39 = load ptr, ptr %s, align 8, !dbg !4549
  %sh_name47 = getelementptr inbounds %struct.elf64_shdr, ptr %39, i32 0, i32 0, !dbg !4550
  %40 = load i32, ptr %sh_name47, align 8, !dbg !4550
  %idx.ext48 = zext i32 %40 to i64, !dbg !4551
  %add.ptr49 = getelementptr i8, ptr %38, i64 %idx.ext48, !dbg !4551
  %call50 = call i32 @strcmp(ptr noundef @.str.7, ptr noundef %add.ptr49) #14, !dbg !4552
  %tobool51 = icmp ne i32 %call50, 0, !dbg !4552
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !4553

if.then52:                                        ; preds = %if.end46
  %41 = load ptr, ptr %s, align 8, !dbg !4554
  store ptr %41, ptr %calls, align 8, !dbg !4555
  br label %if.end53, !dbg !4556

if.end53:                                         ; preds = %if.then52, %if.end46
  %42 = load ptr, ptr %secstrings, align 8, !dbg !4557
  %43 = load ptr, ptr %s, align 8, !dbg !4559
  %sh_name54 = getelementptr inbounds %struct.elf64_shdr, ptr %43, i32 0, i32 0, !dbg !4560
  %44 = load i32, ptr %sh_name54, align 8, !dbg !4560
  %idx.ext55 = zext i32 %44 to i64, !dbg !4561
  %add.ptr56 = getelementptr i8, ptr %42, i64 %idx.ext55, !dbg !4561
  %call57 = call i32 @strcmp(ptr noundef @.str.8, ptr noundef %add.ptr56) #14, !dbg !4562
  %tobool58 = icmp ne i32 %call57, 0, !dbg !4562
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !4563

if.then59:                                        ; preds = %if.end53
  %45 = load ptr, ptr %s, align 8, !dbg !4564
  store ptr %45, ptr %cfi, align 8, !dbg !4565
  br label %if.end60, !dbg !4566

if.end60:                                         ; preds = %if.then59, %if.end53
  %46 = load ptr, ptr %secstrings, align 8, !dbg !4567
  %47 = load ptr, ptr %s, align 8, !dbg !4569
  %sh_name61 = getelementptr inbounds %struct.elf64_shdr, ptr %47, i32 0, i32 0, !dbg !4570
  %48 = load i32, ptr %sh_name61, align 8, !dbg !4570
  %idx.ext62 = zext i32 %48 to i64, !dbg !4571
  %add.ptr63 = getelementptr i8, ptr %46, i64 %idx.ext62, !dbg !4571
  %call64 = call i32 @strcmp(ptr noundef @.str.9, ptr noundef %add.ptr63) #14, !dbg !4572
  %tobool65 = icmp ne i32 %call64, 0, !dbg !4572
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !4573

if.then66:                                        ; preds = %if.end60
  %49 = load ptr, ptr %s, align 8, !dbg !4574
  store ptr %49, ptr %ibt_endbr, align 8, !dbg !4575
  br label %if.end67, !dbg !4576

if.end67:                                         ; preds = %if.then66, %if.end60
  br label %for.inc, !dbg !4577

for.inc:                                          ; preds = %if.end67
  %50 = load ptr, ptr %s, align 8, !dbg !4578
  %incdec.ptr = getelementptr %struct.elf64_shdr, ptr %50, i32 1, !dbg !4578
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !4578
  br label %for.cond, !dbg !4579, !llvm.loop !4580

for.end:                                          ; preds = %for.cond
  %51 = load ptr, ptr %para, align 8, !dbg !4584
  %tobool68 = icmp ne ptr %51, null, !dbg !4584
  br i1 %tobool68, label %if.then69, label %if.end71, !dbg !4585

if.then69:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pseg) #13, !dbg !4586
  call void @llvm.dbg.declare(metadata ptr %pseg, metadata !4397, metadata !DIExpression()), !dbg !4587
  %52 = load ptr, ptr %para, align 8, !dbg !4588
  %sh_addr = getelementptr inbounds %struct.elf64_shdr, ptr %52, i32 0, i32 3, !dbg !4589
  %53 = load i64, ptr %sh_addr, align 8, !dbg !4589
  %54 = inttoptr i64 %53 to ptr, !dbg !4590
  store ptr %54, ptr %pseg, align 8, !dbg !4587
  %55 = load ptr, ptr %pseg, align 8, !dbg !4591
  %56 = load ptr, ptr %pseg, align 8, !dbg !4592
  %57 = load ptr, ptr %para, align 8, !dbg !4593
  %sh_size = getelementptr inbounds %struct.elf64_shdr, ptr %57, i32 0, i32 5, !dbg !4594
  %58 = load i64, ptr %sh_size, align 8, !dbg !4594
  %add.ptr70 = getelementptr i8, ptr %56, i64 %58, !dbg !4595
  call void @apply_paravirt(ptr noundef %55, ptr noundef %add.ptr70) #14, !dbg !4596
  call void @llvm.lifetime.end.p0(i64 8, ptr %pseg) #13, !dbg !4597
  br label %if.end71, !dbg !4598

if.end71:                                         ; preds = %if.then69, %for.end
  %59 = load ptr, ptr %retpolines, align 8, !dbg !4599
  %tobool72 = icmp ne ptr %59, null, !dbg !4599
  br i1 %tobool72, label %if.then74, label %lor.lhs.false, !dbg !4600

lor.lhs.false:                                    ; preds = %if.end71
  %60 = load ptr, ptr %cfi, align 8, !dbg !4601
  %tobool73 = icmp ne ptr %60, null, !dbg !4601
  br i1 %tobool73, label %if.then74, label %if.end91, !dbg !4602

if.then74:                                        ; preds = %lor.lhs.false, %if.end71
  call void @llvm.lifetime.start.p0(i64 8, ptr %rseg) #13, !dbg !4603
  call void @llvm.dbg.declare(metadata ptr %rseg, metadata !4400, metadata !DIExpression()), !dbg !4604
  store ptr null, ptr %rseg, align 8, !dbg !4604
  call void @llvm.lifetime.start.p0(i64 8, ptr %cseg) #13, !dbg !4603
  call void @llvm.dbg.declare(metadata ptr %cseg, metadata !4403, metadata !DIExpression()), !dbg !4605
  store ptr null, ptr %cseg, align 8, !dbg !4605
  call void @llvm.lifetime.start.p0(i64 4, ptr %rsize) #13, !dbg !4606
  call void @llvm.dbg.declare(metadata ptr %rsize, metadata !4404, metadata !DIExpression()), !dbg !4607
  store i32 0, ptr %rsize, align 4, !dbg !4607
  call void @llvm.lifetime.start.p0(i64 4, ptr %csize) #13, !dbg !4606
  call void @llvm.dbg.declare(metadata ptr %csize, metadata !4405, metadata !DIExpression()), !dbg !4608
  store i32 0, ptr %csize, align 4, !dbg !4608
  %61 = load ptr, ptr %retpolines, align 8, !dbg !4609
  %tobool75 = icmp ne ptr %61, null, !dbg !4609
  br i1 %tobool75, label %if.then76, label %if.end80, !dbg !4611

if.then76:                                        ; preds = %if.then74
  %62 = load ptr, ptr %retpolines, align 8, !dbg !4612
  %sh_addr77 = getelementptr inbounds %struct.elf64_shdr, ptr %62, i32 0, i32 3, !dbg !4614
  %63 = load i64, ptr %sh_addr77, align 8, !dbg !4614
  %64 = inttoptr i64 %63 to ptr, !dbg !4615
  store ptr %64, ptr %rseg, align 8, !dbg !4616
  %65 = load ptr, ptr %retpolines, align 8, !dbg !4617
  %sh_size78 = getelementptr inbounds %struct.elf64_shdr, ptr %65, i32 0, i32 5, !dbg !4618
  %66 = load i64, ptr %sh_size78, align 8, !dbg !4618
  %conv79 = trunc i64 %66 to i32, !dbg !4617
  store i32 %conv79, ptr %rsize, align 4, !dbg !4619
  br label %if.end80, !dbg !4620

if.end80:                                         ; preds = %if.then76, %if.then74
  %67 = load ptr, ptr %cfi, align 8, !dbg !4621
  %tobool81 = icmp ne ptr %67, null, !dbg !4621
  br i1 %tobool81, label %if.then82, label %if.end86, !dbg !4623

if.then82:                                        ; preds = %if.end80
  %68 = load ptr, ptr %cfi, align 8, !dbg !4624
  %sh_addr83 = getelementptr inbounds %struct.elf64_shdr, ptr %68, i32 0, i32 3, !dbg !4626
  %69 = load i64, ptr %sh_addr83, align 8, !dbg !4626
  %70 = inttoptr i64 %69 to ptr, !dbg !4627
  store ptr %70, ptr %cseg, align 8, !dbg !4628
  %71 = load ptr, ptr %cfi, align 8, !dbg !4629
  %sh_size84 = getelementptr inbounds %struct.elf64_shdr, ptr %71, i32 0, i32 5, !dbg !4630
  %72 = load i64, ptr %sh_size84, align 8, !dbg !4630
  %conv85 = trunc i64 %72 to i32, !dbg !4629
  store i32 %conv85, ptr %csize, align 4, !dbg !4631
  br label %if.end86, !dbg !4632

if.end86:                                         ; preds = %if.then82, %if.end80
  %73 = load ptr, ptr %rseg, align 8, !dbg !4633
  %74 = load ptr, ptr %rseg, align 8, !dbg !4634
  %75 = load i32, ptr %rsize, align 4, !dbg !4635
  %idx.ext87 = zext i32 %75 to i64, !dbg !4636
  %add.ptr88 = getelementptr i8, ptr %74, i64 %idx.ext87, !dbg !4636
  %76 = load ptr, ptr %cseg, align 8, !dbg !4637
  %77 = load ptr, ptr %cseg, align 8, !dbg !4638
  %78 = load i32, ptr %csize, align 4, !dbg !4639
  %idx.ext89 = zext i32 %78 to i64, !dbg !4640
  %add.ptr90 = getelementptr i8, ptr %77, i64 %idx.ext89, !dbg !4640
  call void @apply_fineibt(ptr noundef %73, ptr noundef %add.ptr88, ptr noundef %76, ptr noundef %add.ptr90) #14, !dbg !4641
  call void @llvm.lifetime.end.p0(i64 4, ptr %csize) #13, !dbg !4642
  call void @llvm.lifetime.end.p0(i64 4, ptr %rsize) #13, !dbg !4642
  call void @llvm.lifetime.end.p0(i64 8, ptr %cseg) #13, !dbg !4642
  call void @llvm.lifetime.end.p0(i64 8, ptr %rseg) #13, !dbg !4642
  br label %if.end91, !dbg !4643

if.end91:                                         ; preds = %if.end86, %lor.lhs.false
  %79 = load ptr, ptr %retpolines, align 8, !dbg !4644
  %tobool92 = icmp ne ptr %79, null, !dbg !4644
  br i1 %tobool92, label %if.then93, label %if.end98, !dbg !4645

if.then93:                                        ; preds = %if.end91
  call void @llvm.lifetime.start.p0(i64 8, ptr %rseg94) #13, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %rseg94, metadata !4406, metadata !DIExpression()), !dbg !4647
  %80 = load ptr, ptr %retpolines, align 8, !dbg !4648
  %sh_addr95 = getelementptr inbounds %struct.elf64_shdr, ptr %80, i32 0, i32 3, !dbg !4649
  %81 = load i64, ptr %sh_addr95, align 8, !dbg !4649
  %82 = inttoptr i64 %81 to ptr, !dbg !4650
  store ptr %82, ptr %rseg94, align 8, !dbg !4647
  %83 = load ptr, ptr %rseg94, align 8, !dbg !4651
  %84 = load ptr, ptr %rseg94, align 8, !dbg !4652
  %85 = load ptr, ptr %retpolines, align 8, !dbg !4653
  %sh_size96 = getelementptr inbounds %struct.elf64_shdr, ptr %85, i32 0, i32 5, !dbg !4654
  %86 = load i64, ptr %sh_size96, align 8, !dbg !4654
  %add.ptr97 = getelementptr i8, ptr %84, i64 %86, !dbg !4655
  call void @apply_retpolines(ptr noundef %83, ptr noundef %add.ptr97) #14, !dbg !4656
  call void @llvm.lifetime.end.p0(i64 8, ptr %rseg94) #13, !dbg !4657
  br label %if.end98, !dbg !4658

if.end98:                                         ; preds = %if.then93, %if.end91
  %87 = load ptr, ptr %returns, align 8, !dbg !4659
  %tobool99 = icmp ne ptr %87, null, !dbg !4659
  br i1 %tobool99, label %if.then100, label %if.end105, !dbg !4660

if.then100:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 8, ptr %rseg101) #13, !dbg !4661
  call void @llvm.dbg.declare(metadata ptr %rseg101, metadata !4409, metadata !DIExpression()), !dbg !4662
  %88 = load ptr, ptr %returns, align 8, !dbg !4663
  %sh_addr102 = getelementptr inbounds %struct.elf64_shdr, ptr %88, i32 0, i32 3, !dbg !4664
  %89 = load i64, ptr %sh_addr102, align 8, !dbg !4664
  %90 = inttoptr i64 %89 to ptr, !dbg !4665
  store ptr %90, ptr %rseg101, align 8, !dbg !4662
  %91 = load ptr, ptr %rseg101, align 8, !dbg !4666
  %92 = load ptr, ptr %rseg101, align 8, !dbg !4667
  %93 = load ptr, ptr %returns, align 8, !dbg !4668
  %sh_size103 = getelementptr inbounds %struct.elf64_shdr, ptr %93, i32 0, i32 5, !dbg !4669
  %94 = load i64, ptr %sh_size103, align 8, !dbg !4669
  %add.ptr104 = getelementptr i8, ptr %92, i64 %94, !dbg !4670
  call void @apply_returns(ptr noundef %91, ptr noundef %add.ptr104) #14, !dbg !4671
  call void @llvm.lifetime.end.p0(i64 8, ptr %rseg101) #13, !dbg !4672
  br label %if.end105, !dbg !4673

if.end105:                                        ; preds = %if.then100, %if.end98
  %95 = load ptr, ptr %alt, align 8, !dbg !4674
  %tobool106 = icmp ne ptr %95, null, !dbg !4674
  br i1 %tobool106, label %if.then107, label %if.end111, !dbg !4675

if.then107:                                       ; preds = %if.end105
  call void @llvm.lifetime.start.p0(i64 8, ptr %aseg) #13, !dbg !4676
  call void @llvm.dbg.declare(metadata ptr %aseg, metadata !4412, metadata !DIExpression()), !dbg !4677
  %96 = load ptr, ptr %alt, align 8, !dbg !4678
  %sh_addr108 = getelementptr inbounds %struct.elf64_shdr, ptr %96, i32 0, i32 3, !dbg !4679
  %97 = load i64, ptr %sh_addr108, align 8, !dbg !4679
  %98 = inttoptr i64 %97 to ptr, !dbg !4680
  store ptr %98, ptr %aseg, align 8, !dbg !4677
  %99 = load ptr, ptr %aseg, align 8, !dbg !4681
  %100 = load ptr, ptr %aseg, align 8, !dbg !4682
  %101 = load ptr, ptr %alt, align 8, !dbg !4683
  %sh_size109 = getelementptr inbounds %struct.elf64_shdr, ptr %101, i32 0, i32 5, !dbg !4684
  %102 = load i64, ptr %sh_size109, align 8, !dbg !4684
  %add.ptr110 = getelementptr i8, ptr %100, i64 %102, !dbg !4685
  call void @apply_alternatives(ptr noundef %99, ptr noundef %add.ptr110) #14, !dbg !4686
  call void @llvm.lifetime.end.p0(i64 8, ptr %aseg) #13, !dbg !4687
  br label %if.end111, !dbg !4688

if.end111:                                        ; preds = %if.then107, %if.end105
  %103 = load ptr, ptr %calls, align 8, !dbg !4689
  %tobool112 = icmp ne ptr %103, null, !dbg !4689
  br i1 %tobool112, label %if.then115, label %lor.lhs.false113, !dbg !4690

lor.lhs.false113:                                 ; preds = %if.end111
  %104 = load ptr, ptr %para, align 8, !dbg !4691
  %tobool114 = icmp ne ptr %104, null, !dbg !4691
  br i1 %tobool114, label %if.then115, label %if.end130, !dbg !4692

if.then115:                                       ; preds = %lor.lhs.false113, %if.end111
  call void @llvm.lifetime.start.p0(i64 32, ptr %cs) #13, !dbg !4693
  call void @llvm.dbg.declare(metadata ptr %cs, metadata !4415, metadata !DIExpression()), !dbg !4694
  call void @llvm.memset.p0.i64(ptr align 8 %cs, i8 0, i64 32, i1 false), !dbg !4694
  %105 = load ptr, ptr %calls, align 8, !dbg !4695
  %tobool116 = icmp ne ptr %105, null, !dbg !4695
  br i1 %tobool116, label %if.then117, label %if.end122, !dbg !4697

if.then117:                                       ; preds = %if.then115
  %106 = load ptr, ptr %calls, align 8, !dbg !4698
  %sh_addr118 = getelementptr inbounds %struct.elf64_shdr, ptr %106, i32 0, i32 3, !dbg !4700
  %107 = load i64, ptr %sh_addr118, align 8, !dbg !4700
  %108 = inttoptr i64 %107 to ptr, !dbg !4701
  %call_start = getelementptr inbounds %struct.callthunk_sites, ptr %cs, i32 0, i32 0, !dbg !4702
  store ptr %108, ptr %call_start, align 8, !dbg !4703
  %109 = load ptr, ptr %calls, align 8, !dbg !4704
  %sh_addr119 = getelementptr inbounds %struct.elf64_shdr, ptr %109, i32 0, i32 3, !dbg !4705
  %110 = load i64, ptr %sh_addr119, align 8, !dbg !4705
  %111 = inttoptr i64 %110 to ptr, !dbg !4706
  %112 = load ptr, ptr %calls, align 8, !dbg !4707
  %sh_size120 = getelementptr inbounds %struct.elf64_shdr, ptr %112, i32 0, i32 5, !dbg !4708
  %113 = load i64, ptr %sh_size120, align 8, !dbg !4708
  %add.ptr121 = getelementptr i8, ptr %111, i64 %113, !dbg !4709
  %call_end = getelementptr inbounds %struct.callthunk_sites, ptr %cs, i32 0, i32 1, !dbg !4710
  store ptr %add.ptr121, ptr %call_end, align 8, !dbg !4711
  br label %if.end122, !dbg !4712

if.end122:                                        ; preds = %if.then117, %if.then115
  %114 = load ptr, ptr %para, align 8, !dbg !4713
  %tobool123 = icmp ne ptr %114, null, !dbg !4713
  br i1 %tobool123, label %if.then124, label %if.end129, !dbg !4715

if.then124:                                       ; preds = %if.end122
  %115 = load ptr, ptr %para, align 8, !dbg !4716
  %sh_addr125 = getelementptr inbounds %struct.elf64_shdr, ptr %115, i32 0, i32 3, !dbg !4718
  %116 = load i64, ptr %sh_addr125, align 8, !dbg !4718
  %117 = inttoptr i64 %116 to ptr, !dbg !4719
  %pv_start = getelementptr inbounds %struct.callthunk_sites, ptr %cs, i32 0, i32 2, !dbg !4720
  store ptr %117, ptr %pv_start, align 8, !dbg !4721
  %118 = load ptr, ptr %para, align 8, !dbg !4722
  %sh_addr126 = getelementptr inbounds %struct.elf64_shdr, ptr %118, i32 0, i32 3, !dbg !4723
  %119 = load i64, ptr %sh_addr126, align 8, !dbg !4723
  %120 = inttoptr i64 %119 to ptr, !dbg !4724
  %121 = load ptr, ptr %para, align 8, !dbg !4725
  %sh_size127 = getelementptr inbounds %struct.elf64_shdr, ptr %121, i32 0, i32 5, !dbg !4726
  %122 = load i64, ptr %sh_size127, align 8, !dbg !4726
  %add.ptr128 = getelementptr i8, ptr %120, i64 %122, !dbg !4727
  %pv_end = getelementptr inbounds %struct.callthunk_sites, ptr %cs, i32 0, i32 3, !dbg !4728
  store ptr %add.ptr128, ptr %pv_end, align 8, !dbg !4729
  br label %if.end129, !dbg !4730

if.end129:                                        ; preds = %if.then124, %if.end122
  %123 = load ptr, ptr %me.addr, align 8, !dbg !4731
  call void @callthunks_patch_module_calls(ptr noundef %cs, ptr noundef %123) #14, !dbg !4732
  call void @llvm.lifetime.end.p0(i64 32, ptr %cs) #13, !dbg !4733
  br label %if.end130, !dbg !4734

if.end130:                                        ; preds = %if.end129, %lor.lhs.false113
  %124 = load ptr, ptr %ibt_endbr, align 8, !dbg !4735
  %tobool131 = icmp ne ptr %124, null, !dbg !4735
  br i1 %tobool131, label %if.then132, label %if.end136, !dbg !4736

if.then132:                                       ; preds = %if.end130
  call void @llvm.lifetime.start.p0(i64 8, ptr %iseg) #13, !dbg !4737
  call void @llvm.dbg.declare(metadata ptr %iseg, metadata !4433, metadata !DIExpression()), !dbg !4738
  %125 = load ptr, ptr %ibt_endbr, align 8, !dbg !4739
  %sh_addr133 = getelementptr inbounds %struct.elf64_shdr, ptr %125, i32 0, i32 3, !dbg !4740
  %126 = load i64, ptr %sh_addr133, align 8, !dbg !4740
  %127 = inttoptr i64 %126 to ptr, !dbg !4741
  store ptr %127, ptr %iseg, align 8, !dbg !4738
  %128 = load ptr, ptr %iseg, align 8, !dbg !4742
  %129 = load ptr, ptr %iseg, align 8, !dbg !4743
  %130 = load ptr, ptr %ibt_endbr, align 8, !dbg !4744
  %sh_size134 = getelementptr inbounds %struct.elf64_shdr, ptr %130, i32 0, i32 5, !dbg !4745
  %131 = load i64, ptr %sh_size134, align 8, !dbg !4745
  %add.ptr135 = getelementptr i8, ptr %129, i64 %131, !dbg !4746
  call void @apply_seal_endbr(ptr noundef %128, ptr noundef %add.ptr135) #14, !dbg !4747
  call void @llvm.lifetime.end.p0(i64 8, ptr %iseg) #13, !dbg !4748
  br label %if.end136, !dbg !4749

if.end136:                                        ; preds = %if.then132, %if.end130
  %132 = load ptr, ptr %locks, align 8, !dbg !4750
  %tobool137 = icmp ne ptr %132, null, !dbg !4750
  br i1 %tobool137, label %if.then138, label %if.end147, !dbg !4751

if.then138:                                       ; preds = %if.end136
  call void @llvm.lifetime.start.p0(i64 8, ptr %lseg) #13, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %lseg, metadata !4436, metadata !DIExpression()), !dbg !4753
  %133 = load ptr, ptr %locks, align 8, !dbg !4754
  %sh_addr139 = getelementptr inbounds %struct.elf64_shdr, ptr %133, i32 0, i32 3, !dbg !4755
  %134 = load i64, ptr %sh_addr139, align 8, !dbg !4755
  %135 = inttoptr i64 %134 to ptr, !dbg !4756
  store ptr %135, ptr %lseg, align 8, !dbg !4753
  call void @llvm.lifetime.start.p0(i64 8, ptr %text) #13, !dbg !4757
  call void @llvm.dbg.declare(metadata ptr %text, metadata !4439, metadata !DIExpression()), !dbg !4758
  %136 = load ptr, ptr %me.addr, align 8, !dbg !4759
  %mem = getelementptr inbounds %struct.module, ptr %136, i32 0, i32 22, !dbg !4760
  %arrayidx140 = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 0, !dbg !4759
  %base = getelementptr inbounds %struct.module_memory, ptr %arrayidx140, i32 0, i32 0, !dbg !4761
  %137 = load ptr, ptr %base, align 64, !dbg !4761
  store ptr %137, ptr %text, align 8, !dbg !4758
  call void @llvm.lifetime.start.p0(i64 8, ptr %text_end) #13, !dbg !4762
  call void @llvm.dbg.declare(metadata ptr %text_end, metadata !4440, metadata !DIExpression()), !dbg !4763
  %138 = load ptr, ptr %text, align 8, !dbg !4764
  %139 = load ptr, ptr %me.addr, align 8, !dbg !4765
  %mem141 = getelementptr inbounds %struct.module, ptr %139, i32 0, i32 22, !dbg !4766
  %arrayidx142 = getelementptr [7 x %struct.module_memory], ptr %mem141, i64 0, i64 0, !dbg !4765
  %size = getelementptr inbounds %struct.module_memory, ptr %arrayidx142, i32 0, i32 1, !dbg !4767
  %140 = load i32, ptr %size, align 8, !dbg !4767
  %idx.ext143 = zext i32 %140 to i64, !dbg !4768
  %add.ptr144 = getelementptr i8, ptr %138, i64 %idx.ext143, !dbg !4768
  store ptr %add.ptr144, ptr %text_end, align 8, !dbg !4763
  %141 = load ptr, ptr %me.addr, align 8, !dbg !4769
  %142 = load ptr, ptr %me.addr, align 8, !dbg !4770
  %name = getelementptr inbounds %struct.module, ptr %142, i32 0, i32 2, !dbg !4771
  %arraydecay = getelementptr inbounds [56 x i8], ptr %name, i64 0, i64 0, !dbg !4770
  %143 = load ptr, ptr %lseg, align 8, !dbg !4772
  %144 = load ptr, ptr %lseg, align 8, !dbg !4773
  %145 = load ptr, ptr %locks, align 8, !dbg !4774
  %sh_size145 = getelementptr inbounds %struct.elf64_shdr, ptr %145, i32 0, i32 5, !dbg !4775
  %146 = load i64, ptr %sh_size145, align 8, !dbg !4775
  %add.ptr146 = getelementptr i8, ptr %144, i64 %146, !dbg !4776
  %147 = load ptr, ptr %text, align 8, !dbg !4777
  %148 = load ptr, ptr %text_end, align 8, !dbg !4778
  call void @alternatives_smp_module_add(ptr noundef %141, ptr noundef %arraydecay, ptr noundef %143, ptr noundef %add.ptr146, ptr noundef %147, ptr noundef %148) #14, !dbg !4779
  call void @llvm.lifetime.end.p0(i64 8, ptr %text_end) #13, !dbg !4780
  call void @llvm.lifetime.end.p0(i64 8, ptr %text) #13, !dbg !4780
  call void @llvm.lifetime.end.p0(i64 8, ptr %lseg) #13, !dbg !4780
  br label %if.end147, !dbg !4781

if.end147:                                        ; preds = %if.then138, %if.end136
  %149 = load ptr, ptr %orc, align 8, !dbg !4782
  %tobool148 = icmp ne ptr %149, null, !dbg !4782
  br i1 %tobool148, label %land.lhs.true, label %if.end155, !dbg !4784

land.lhs.true:                                    ; preds = %if.end147
  %150 = load ptr, ptr %orc_ip, align 8, !dbg !4785
  %tobool149 = icmp ne ptr %150, null, !dbg !4785
  br i1 %tobool149, label %if.then150, label %if.end155, !dbg !4786

if.then150:                                       ; preds = %land.lhs.true
  %151 = load ptr, ptr %me.addr, align 8, !dbg !4787
  %152 = load ptr, ptr %orc_ip, align 8, !dbg !4788
  %sh_addr151 = getelementptr inbounds %struct.elf64_shdr, ptr %152, i32 0, i32 3, !dbg !4789
  %153 = load i64, ptr %sh_addr151, align 8, !dbg !4789
  %154 = inttoptr i64 %153 to ptr, !dbg !4790
  %155 = load ptr, ptr %orc_ip, align 8, !dbg !4791
  %sh_size152 = getelementptr inbounds %struct.elf64_shdr, ptr %155, i32 0, i32 5, !dbg !4792
  %156 = load i64, ptr %sh_size152, align 8, !dbg !4792
  %157 = load ptr, ptr %orc, align 8, !dbg !4793
  %sh_addr153 = getelementptr inbounds %struct.elf64_shdr, ptr %157, i32 0, i32 3, !dbg !4794
  %158 = load i64, ptr %sh_addr153, align 8, !dbg !4794
  %159 = inttoptr i64 %158 to ptr, !dbg !4795
  %160 = load ptr, ptr %orc, align 8, !dbg !4796
  %sh_size154 = getelementptr inbounds %struct.elf64_shdr, ptr %160, i32 0, i32 5, !dbg !4797
  %161 = load i64, ptr %sh_size154, align 8, !dbg !4797
  call void @unwind_module_init(ptr noundef %151, ptr noundef %154, i64 noundef %156, ptr noundef %159, i64 noundef %161) #14, !dbg !4798
  br label %if.end155, !dbg !4798

if.end155:                                        ; preds = %if.then150, %land.lhs.true, %if.end147
  call void @llvm.lifetime.end.p0(i64 8, ptr %secstrings) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfi) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %calls) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibt_endbr) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %returns) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %retpolines) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc_ip) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %orc) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %para) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %locks) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %alt) #13, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #13, !dbg !4799
  ret i32 0, !dbg !4800
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4801 dso_local i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4805 dso_local void @apply_paravirt(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4809 dso_local void @apply_fineibt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4812 dso_local void @apply_retpolines(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4815 dso_local void @apply_returns(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4816 dso_local void @apply_alternatives(ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4835 dso_local void @callthunks_patch_module_calls(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4839 dso_local void @apply_seal_endbr(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4840 dso_local void @alternatives_smp_module_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4843 dso_local void @unwind_module_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @module_arch_cleanup(ptr noundef %mod) #0 align 16 !dbg !4847 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4851
  call void @alternatives_smp_module_del(ptr noundef %0) #14, !dbg !4852
  ret void, !dbg !4853
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4854 dso_local void @alternatives_smp_module_del(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kaslr_enabled() #5 align 16 !dbg !4855 {
entry:
  %0 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 14), align 1, !dbg !4857
  %conv = zext i8 %0 to i32, !dbg !4858
  %and = and i32 %conv, 2, !dbg !4859
  %tobool = icmp ne i32 %and, 0, !dbg !4860
  %lnot = xor i1 %tobool, true, !dbg !4860
  %lnot1 = xor i1 %lnot, true, !dbg !4861
  ret i1 %lnot1, !dbg !4862
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4863 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_random_u32_inclusive(i32 noundef %floor, i32 noundef %ceil) #5 align 16 !dbg !4867 {
entry:
  %floor.addr = alloca i32, align 4
  %ceil.addr = alloca i32, align 4
  store i32 %floor, ptr %floor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %floor.addr, metadata !4872, metadata !DIExpression()), !dbg !4874
  store i32 %ceil, ptr %ceil.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ceil.addr, metadata !4873, metadata !DIExpression()), !dbg !4875
  br label %do.body, !dbg !4876

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %floor.addr, align 4, !dbg !4877
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4877
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !4877

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %ceil.addr, align 4, !dbg !4877
  %3 = call i1 @llvm.is.constant.i32(i32 %2), !dbg !4877
  br i1 %3, label %land.lhs.true1, label %if.end, !dbg !4877

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %floor.addr, align 4, !dbg !4877
  %5 = load i32, ptr %ceil.addr, align 4, !dbg !4877
  %cmp = icmp ugt i32 %4, %5, !dbg !4877
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4877

lor.lhs.false:                                    ; preds = %land.lhs.true1
  %6 = load i32, ptr %ceil.addr, align 4, !dbg !4877
  %7 = load i32, ptr %floor.addr, align 4, !dbg !4877
  %sub = sub i32 %6, %7, !dbg !4877
  %cmp2 = icmp eq i32 %sub, -1, !dbg !4877
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4880

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true1
  call void @__compiletime_assert_97() #16, !dbg !4877, !srcloc !4881
  unreachable, !dbg !4877

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %do.body
  br label %do.end, !dbg !4880

do.end:                                           ; preds = %if.end
  %8 = load i32, ptr %floor.addr, align 4, !dbg !4882
  %9 = load i32, ptr %ceil.addr, align 4, !dbg !4883
  %10 = load i32, ptr %floor.addr, align 4, !dbg !4884
  %sub3 = sub i32 %9, %10, !dbg !4885
  %add = add i32 %sub3, 1, !dbg !4886
  %call = call i32 @get_random_u32_below(i32 noundef %add) #14, !dbg !4887
  %add4 = add i32 %8, %call, !dbg !4888
  ret i32 %add4, !dbg !4889
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4890 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4891 dso_local void @__compiletime_assert_97() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_random_u32_below(i32 noundef %ceil) #5 align 16 !dbg !4892 {
entry:
  %retval = alloca i32, align 4
  %ceil.addr = alloca i32, align 4
  %mult = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %mult23 = alloca i32, align 4
  %mult51 = alloca i64, align 8
  store i32 %ceil, ptr %ceil.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ceil.addr, metadata !4896, metadata !DIExpression()), !dbg !4908
  %0 = load i32, ptr %ceil.addr, align 4, !dbg !4909
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4911
  br i1 %1, label %if.end, label %if.then, !dbg !4912

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ceil.addr, align 4, !dbg !4913
  %call = call i32 @__get_random_u32_below(i32 noundef %2) #14, !dbg !4914
  store i32 %call, ptr %retval, align 4, !dbg !4915
  br label %return, !dbg !4915

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4916

do.body:                                          ; preds = %if.end
  %3 = load i32, ptr %ceil.addr, align 4, !dbg !4917
  %tobool = icmp ne i32 %3, 0, !dbg !4917
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4920

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_95() #16, !dbg !4917, !srcloc !4921
  unreachable, !dbg !4917

if.end2:                                          ; preds = %do.body
  br label %do.end, !dbg !4920

do.end:                                           ; preds = %if.end2
  %4 = load i32, ptr %ceil.addr, align 4, !dbg !4922
  %cmp = icmp ule i32 %4, 1, !dbg !4924
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4925

if.then3:                                         ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

if.end4:                                          ; preds = %do.end
  br label %for.cond, !dbg !4927

for.cond:                                         ; preds = %if.end80, %if.end4
  %5 = load i32, ptr %ceil.addr, align 4, !dbg !4928
  %cmp5 = icmp ule i32 %5, 256, !dbg !4929
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !4930

if.then6:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mult) #13, !dbg !4931
  call void @llvm.dbg.declare(metadata ptr %mult, metadata !4897, metadata !DIExpression()), !dbg !4932
  %6 = load i32, ptr %ceil.addr, align 4, !dbg !4933
  %call7 = call zeroext i8 @get_random_u8() #14, !dbg !4934
  %conv = zext i8 %call7 to i32, !dbg !4934
  %mul = mul i32 %6, %conv, !dbg !4935
  store i32 %mul, ptr %mult, align 4, !dbg !4932
  %7 = load i32, ptr %ceil.addr, align 4, !dbg !4936
  %conv8 = zext i32 %7 to i64, !dbg !4936
  %call9 = call zeroext i1 @is_power_of_2(i64 noundef %conv8) #17, !dbg !4936
  br i1 %call9, label %lor.end, label %lor.rhs, !dbg !4936

lor.rhs:                                          ; preds = %if.then6
  %8 = load i32, ptr %mult, align 4, !dbg !4936
  %conv11 = trunc i32 %8 to i8, !dbg !4936
  %conv12 = zext i8 %conv11 to i32, !dbg !4936
  %9 = load i32, ptr %ceil.addr, align 4, !dbg !4936
  %rem = urem i32 256, %9, !dbg !4936
  %cmp13 = icmp uge i32 %conv12, %rem, !dbg !4936
  br label %lor.end, !dbg !4936

lor.end:                                          ; preds = %lor.rhs, %if.then6
  %10 = phi i1 [ true, %if.then6 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !4936
  %lnot15 = xor i1 %lnot, true, !dbg !4936
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !4936
  %conv16 = sext i32 %lnot.ext to i64, !dbg !4936
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 1), !dbg !4936
  %tobool17 = icmp ne i64 %expval, 0, !dbg !4936
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4938

if.then18:                                        ; preds = %lor.end
  %11 = load i32, ptr %mult, align 4, !dbg !4939
  %shr = lshr i32 %11, 8, !dbg !4940
  store i32 %shr, ptr %retval, align 4, !dbg !4941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4941

if.end19:                                         ; preds = %lor.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4942
  br label %cleanup, !dbg !4942

cleanup:                                          ; preds = %if.end19, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %mult) #13, !dbg !4942
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end80, !dbg !4943

if.else:                                          ; preds = %for.cond
  %12 = load i32, ptr %ceil.addr, align 4, !dbg !4944
  %cmp20 = icmp ule i32 %12, 65536, !dbg !4945
  br i1 %cmp20, label %if.then22, label %if.else50, !dbg !4946

if.then22:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %mult23) #13, !dbg !4947
  call void @llvm.dbg.declare(metadata ptr %mult23, metadata !4903, metadata !DIExpression()), !dbg !4948
  %13 = load i32, ptr %ceil.addr, align 4, !dbg !4949
  %call24 = call zeroext i16 @get_random_u16() #14, !dbg !4950
  %conv25 = zext i16 %call24 to i32, !dbg !4950
  %mul26 = mul i32 %13, %conv25, !dbg !4951
  store i32 %mul26, ptr %mult23, align 4, !dbg !4948
  %14 = load i32, ptr %ceil.addr, align 4, !dbg !4952
  %conv27 = zext i32 %14 to i64, !dbg !4952
  %call28 = call zeroext i1 @is_power_of_2(i64 noundef %conv27) #17, !dbg !4952
  br i1 %call28, label %lor.end36, label %lor.rhs30, !dbg !4952

lor.rhs30:                                        ; preds = %if.then22
  %15 = load i32, ptr %mult23, align 4, !dbg !4952
  %conv31 = trunc i32 %15 to i16, !dbg !4952
  %conv32 = zext i16 %conv31 to i32, !dbg !4952
  %16 = load i32, ptr %ceil.addr, align 4, !dbg !4952
  %rem33 = urem i32 65536, %16, !dbg !4952
  %cmp34 = icmp uge i32 %conv32, %rem33, !dbg !4952
  br label %lor.end36, !dbg !4952

lor.end36:                                        ; preds = %lor.rhs30, %if.then22
  %17 = phi i1 [ true, %if.then22 ], [ %cmp34, %lor.rhs30 ]
  %lnot37 = xor i1 %17, true, !dbg !4952
  %lnot39 = xor i1 %lnot37, true, !dbg !4952
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !4952
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !4952
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 1), !dbg !4952
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !4952
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !4954

if.then44:                                        ; preds = %lor.end36
  %18 = load i32, ptr %mult23, align 4, !dbg !4955
  %shr45 = lshr i32 %18, 16, !dbg !4956
  store i32 %shr45, ptr %retval, align 4, !dbg !4957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !4957

if.end46:                                         ; preds = %lor.end36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4958
  br label %cleanup47, !dbg !4958

cleanup47:                                        ; preds = %if.end46, %if.then44
  call void @llvm.lifetime.end.p0(i64 4, ptr %mult23) #13, !dbg !4958
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %unreachable [
    i32 0, label %cleanup.cont49
    i32 1, label %return
  ]

cleanup.cont49:                                   ; preds = %cleanup47
  br label %if.end79, !dbg !4959

if.else50:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %mult51) #13, !dbg !4960
  call void @llvm.dbg.declare(metadata ptr %mult51, metadata !4906, metadata !DIExpression()), !dbg !4961
  %19 = load i32, ptr %ceil.addr, align 4, !dbg !4962
  %conv52 = zext i32 %19 to i64, !dbg !4963
  %call53 = call i32 @get_random_u32() #14, !dbg !4964
  %conv54 = zext i32 %call53 to i64, !dbg !4964
  %mul55 = mul i64 %conv52, %conv54, !dbg !4965
  store i64 %mul55, ptr %mult51, align 8, !dbg !4961
  %20 = load i32, ptr %ceil.addr, align 4, !dbg !4966
  %conv56 = zext i32 %20 to i64, !dbg !4966
  %call57 = call zeroext i1 @is_power_of_2(i64 noundef %conv56) #17, !dbg !4966
  br i1 %call57, label %lor.end64, label %lor.rhs59, !dbg !4966

lor.rhs59:                                        ; preds = %if.else50
  %21 = load i64, ptr %mult51, align 8, !dbg !4966
  %conv60 = trunc i64 %21 to i32, !dbg !4966
  %22 = load i32, ptr %ceil.addr, align 4, !dbg !4966
  %sub = sub i32 0, %22, !dbg !4966
  %23 = load i32, ptr %ceil.addr, align 4, !dbg !4966
  %rem61 = urem i32 %sub, %23, !dbg !4966
  %cmp62 = icmp uge i32 %conv60, %rem61, !dbg !4966
  br label %lor.end64, !dbg !4966

lor.end64:                                        ; preds = %lor.rhs59, %if.else50
  %24 = phi i1 [ true, %if.else50 ], [ %cmp62, %lor.rhs59 ]
  %lnot65 = xor i1 %24, true, !dbg !4966
  %lnot67 = xor i1 %lnot65, true, !dbg !4966
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !4966
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !4966
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 1), !dbg !4966
  %tobool71 = icmp ne i64 %expval70, 0, !dbg !4966
  br i1 %tobool71, label %if.then72, label %if.end75, !dbg !4968

if.then72:                                        ; preds = %lor.end64
  %25 = load i64, ptr %mult51, align 8, !dbg !4969
  %shr73 = lshr i64 %25, 32, !dbg !4970
  %conv74 = trunc i64 %shr73 to i32, !dbg !4969
  store i32 %conv74, ptr %retval, align 4, !dbg !4971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !4971

if.end75:                                         ; preds = %lor.end64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4972
  br label %cleanup76, !dbg !4972

cleanup76:                                        ; preds = %if.end75, %if.then72
  call void @llvm.lifetime.end.p0(i64 8, ptr %mult51) #13, !dbg !4972
  %cleanup.dest77 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest77, label %unreachable [
    i32 0, label %cleanup.cont78
    i32 1, label %return
  ]

cleanup.cont78:                                   ; preds = %cleanup76
  br label %if.end79

if.end79:                                         ; preds = %cleanup.cont78, %cleanup.cont49
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %cleanup.cont
  br label %for.cond, !dbg !4973, !llvm.loop !4974

return:                                           ; preds = %cleanup76, %cleanup47, %cleanup, %if.then3, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4977
  ret i32 %26, !dbg !4977

unreachable:                                      ; preds = %cleanup76, %cleanup47, %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4978 dso_local i32 @__get_random_u32_below(i32 noundef) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4979 dso_local void @__compiletime_assert_95() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4980 dso_local zeroext i8 @get_random_u8() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #11 align 16 !dbg !4983 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4988, metadata !DIExpression()), !dbg !4989
  %0 = load i64, ptr %n.addr, align 8, !dbg !4990
  %cmp = icmp ne i64 %0, 0, !dbg !4991
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4992

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !4993
  %2 = load i64, ptr %n.addr, align 8, !dbg !4994
  %sub = sub i64 %2, 1, !dbg !4995
  %and = and i64 %1, %sub, !dbg !4996
  %cmp1 = icmp eq i64 %and, 0, !dbg !4997
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !4998
  ret i1 %3, !dbg !4999
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5000 dso_local zeroext i16 @get_random_u16() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5003 dso_local i32 @get_random_u32() #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @text_poke(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__write_relocate_add(ptr noundef %sechdrs, ptr noundef %strtab, i32 noundef %symindex, i32 noundef %relsec, ptr noundef %me, ptr noundef %write, i1 noundef zeroext %apply) #0 align 16 !dbg !5006 {
entry:
  %retval = alloca i32, align 4
  %sechdrs.addr = alloca ptr, align 8
  %strtab.addr = alloca ptr, align 8
  %symindex.addr = alloca i32, align 4
  %relsec.addr = alloca i32, align 4
  %me.addr = alloca ptr, align 8
  %write.addr = alloca ptr, align 8
  %apply.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %rel = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %loc = alloca ptr, align 8
  %val = alloca i64, align 8
  %zero = alloca i64, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %tmp81 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  store ptr %sechdrs, ptr %sechdrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sechdrs.addr, metadata !5010, metadata !DIExpression()), !dbg !5036
  store ptr %strtab, ptr %strtab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strtab.addr, metadata !5011, metadata !DIExpression()), !dbg !5037
  store i32 %symindex, ptr %symindex.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %symindex.addr, metadata !5012, metadata !DIExpression()), !dbg !5038
  store i32 %relsec, ptr %relsec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %relsec.addr, metadata !5013, metadata !DIExpression()), !dbg !5039
  store ptr %me, ptr %me.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %me.addr, metadata !5014, metadata !DIExpression()), !dbg !5040
  store ptr %write, ptr %write.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !5015, metadata !DIExpression()), !dbg !5041
  %frombool = zext i1 %apply to i8
  store i8 %frombool, ptr %apply.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %apply.addr, metadata !5016, metadata !DIExpression()), !dbg !5042
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5043
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5017, metadata !DIExpression()), !dbg !5044
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel) #13, !dbg !5045
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !5018, metadata !DIExpression()), !dbg !5046
  %0 = load ptr, ptr %sechdrs.addr, align 8, !dbg !5047
  %1 = load i32, ptr %relsec.addr, align 4, !dbg !5048
  %idxprom = zext i32 %1 to i64, !dbg !5047
  %arrayidx = getelementptr %struct.elf64_shdr, ptr %0, i64 %idxprom, !dbg !5047
  %sh_addr = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx, i32 0, i32 3, !dbg !5049
  %2 = load i64, ptr %sh_addr, align 8, !dbg !5049
  %3 = inttoptr i64 %2 to ptr, !dbg !5050
  store ptr %3, ptr %rel, align 8, !dbg !5046
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #13, !dbg !5051
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !5027, metadata !DIExpression()), !dbg !5052
  call void @llvm.lifetime.start.p0(i64 8, ptr %loc) #13, !dbg !5053
  call void @llvm.dbg.declare(metadata ptr %loc, metadata !5028, metadata !DIExpression()), !dbg !5054
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !5055
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5029, metadata !DIExpression()), !dbg !5056
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #13, !dbg !5057
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !5030, metadata !DIExpression()), !dbg !5058
  store i64 0, ptr %zero, align 8, !dbg !5058
  br label %do.body, !dbg !5059

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5060

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5060

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !dbg !5062
  br label %for.cond, !dbg !5063

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, ptr %i, align 4, !dbg !5064
  %conv = zext i32 %4 to i64, !dbg !5064
  %5 = load ptr, ptr %sechdrs.addr, align 8, !dbg !5065
  %6 = load i32, ptr %relsec.addr, align 4, !dbg !5066
  %idxprom1 = zext i32 %6 to i64, !dbg !5065
  %arrayidx2 = getelementptr %struct.elf64_shdr, ptr %5, i64 %idxprom1, !dbg !5065
  %sh_size = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx2, i32 0, i32 5, !dbg !5067
  %7 = load i64, ptr %sh_size, align 8, !dbg !5067
  %div = udiv i64 %7, 24, !dbg !5068
  %cmp = icmp ult i64 %conv, %div, !dbg !5069
  br i1 %cmp, label %for.body, label %for.end, !dbg !5070

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5031, metadata !DIExpression()), !dbg !5072
  %8 = load ptr, ptr %sechdrs.addr, align 8, !dbg !5073
  %9 = load ptr, ptr %sechdrs.addr, align 8, !dbg !5074
  %10 = load i32, ptr %relsec.addr, align 4, !dbg !5075
  %idxprom4 = zext i32 %10 to i64, !dbg !5074
  %arrayidx5 = getelementptr %struct.elf64_shdr, ptr %9, i64 %idxprom4, !dbg !5074
  %sh_info = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx5, i32 0, i32 7, !dbg !5076
  %11 = load i32, ptr %sh_info, align 4, !dbg !5076
  %idxprom6 = zext i32 %11 to i64, !dbg !5073
  %arrayidx7 = getelementptr %struct.elf64_shdr, ptr %8, i64 %idxprom6, !dbg !5073
  %sh_addr8 = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx7, i32 0, i32 3, !dbg !5077
  %12 = load i64, ptr %sh_addr8, align 8, !dbg !5077
  %13 = inttoptr i64 %12 to ptr, !dbg !5078
  %14 = load ptr, ptr %rel, align 8, !dbg !5079
  %15 = load i32, ptr %i, align 4, !dbg !5080
  %idxprom9 = zext i32 %15 to i64, !dbg !5079
  %arrayidx10 = getelementptr %struct.elf64_rela, ptr %14, i64 %idxprom9, !dbg !5079
  %r_offset = getelementptr inbounds %struct.elf64_rela, ptr %arrayidx10, i32 0, i32 0, !dbg !5081
  %16 = load i64, ptr %r_offset, align 8, !dbg !5081
  %add.ptr = getelementptr i8, ptr %13, i64 %16, !dbg !5082
  store ptr %add.ptr, ptr %loc, align 8, !dbg !5083
  %17 = load ptr, ptr %sechdrs.addr, align 8, !dbg !5084
  %18 = load i32, ptr %symindex.addr, align 4, !dbg !5085
  %idxprom11 = zext i32 %18 to i64, !dbg !5084
  %arrayidx12 = getelementptr %struct.elf64_shdr, ptr %17, i64 %idxprom11, !dbg !5084
  %sh_addr13 = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx12, i32 0, i32 3, !dbg !5086
  %19 = load i64, ptr %sh_addr13, align 8, !dbg !5086
  %20 = inttoptr i64 %19 to ptr, !dbg !5087
  %21 = load ptr, ptr %rel, align 8, !dbg !5088
  %22 = load i32, ptr %i, align 4, !dbg !5088
  %idxprom14 = zext i32 %22 to i64, !dbg !5088
  %arrayidx15 = getelementptr %struct.elf64_rela, ptr %21, i64 %idxprom14, !dbg !5088
  %r_info = getelementptr inbounds %struct.elf64_rela, ptr %arrayidx15, i32 0, i32 1, !dbg !5088
  %23 = load i64, ptr %r_info, align 8, !dbg !5088
  %shr = lshr i64 %23, 32, !dbg !5088
  %add.ptr16 = getelementptr %struct.elf64_sym, ptr %20, i64 %shr, !dbg !5089
  store ptr %add.ptr16, ptr %sym, align 8, !dbg !5090
  br label %do.body17, !dbg !5091

do.body17:                                        ; preds = %for.body
  br label %do.cond18, !dbg !5092

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5092

do.end19:                                         ; preds = %do.cond18
  %24 = load ptr, ptr %sym, align 8, !dbg !5094
  %st_value = getelementptr inbounds %struct.elf64_sym, ptr %24, i32 0, i32 4, !dbg !5095
  %25 = load i64, ptr %st_value, align 8, !dbg !5095
  %26 = load ptr, ptr %rel, align 8, !dbg !5096
  %27 = load i32, ptr %i, align 4, !dbg !5097
  %idxprom20 = zext i32 %27 to i64, !dbg !5096
  %arrayidx21 = getelementptr %struct.elf64_rela, ptr %26, i64 %idxprom20, !dbg !5096
  %r_addend = getelementptr inbounds %struct.elf64_rela, ptr %arrayidx21, i32 0, i32 2, !dbg !5098
  %28 = load i64, ptr %r_addend, align 8, !dbg !5098
  %add = add i64 %25, %28, !dbg !5099
  store i64 %add, ptr %val, align 8, !dbg !5100
  %29 = load ptr, ptr %rel, align 8, !dbg !5101
  %30 = load i32, ptr %i, align 4, !dbg !5101
  %idxprom22 = zext i32 %30 to i64, !dbg !5101
  %arrayidx23 = getelementptr %struct.elf64_rela, ptr %29, i64 %idxprom22, !dbg !5101
  %r_info24 = getelementptr inbounds %struct.elf64_rela, ptr %arrayidx23, i32 0, i32 1, !dbg !5101
  %31 = load i64, ptr %r_info24, align 8, !dbg !5101
  %and = and i64 %31, 4294967295, !dbg !5101
  switch i64 %and, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb25
    i64 10, label %sw.bb26
    i64 11, label %sw.bb30
    i64 2, label %sw.bb36
    i64 4, label %sw.bb36
    i64 24, label %sw.bb37
  ], !dbg !5102

sw.bb:                                            ; preds = %do.end19
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5103

sw.bb25:                                          ; preds = %do.end19
  store i64 8, ptr %size, align 8, !dbg !5105
  br label %sw.epilog, !dbg !5106

sw.bb26:                                          ; preds = %do.end19
  %32 = load i64, ptr %val, align 8, !dbg !5107
  %33 = load i32, ptr %val, align 8, !dbg !5109
  %conv27 = zext i32 %33 to i64, !dbg !5109
  %cmp28 = icmp ne i64 %32, %conv27, !dbg !5110
  br i1 %cmp28, label %if.then, label %if.end, !dbg !5111

if.then:                                          ; preds = %sw.bb26
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5112

if.end:                                           ; preds = %sw.bb26
  store i64 4, ptr %size, align 8, !dbg !5113
  br label %sw.epilog, !dbg !5114

sw.bb30:                                          ; preds = %do.end19
  %34 = load i64, ptr %val, align 8, !dbg !5115
  %35 = load i32, ptr %val, align 8, !dbg !5117
  %conv31 = sext i32 %35 to i64, !dbg !5117
  %cmp32 = icmp ne i64 %34, %conv31, !dbg !5118
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !5119

if.then34:                                        ; preds = %sw.bb30
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5120

if.end35:                                         ; preds = %sw.bb30
  store i64 4, ptr %size, align 8, !dbg !5121
  br label %sw.epilog, !dbg !5122

sw.bb36:                                          ; preds = %do.end19, %do.end19
  %36 = load ptr, ptr %loc, align 8, !dbg !5123
  %37 = ptrtoint ptr %36 to i64, !dbg !5124
  %38 = load i64, ptr %val, align 8, !dbg !5125
  %sub = sub i64 %38, %37, !dbg !5125
  store i64 %sub, ptr %val, align 8, !dbg !5125
  store i64 4, ptr %size, align 8, !dbg !5126
  br label %sw.epilog, !dbg !5127

sw.bb37:                                          ; preds = %do.end19
  %39 = load ptr, ptr %loc, align 8, !dbg !5128
  %40 = ptrtoint ptr %39 to i64, !dbg !5129
  %41 = load i64, ptr %val, align 8, !dbg !5130
  %sub38 = sub i64 %41, %40, !dbg !5130
  store i64 %sub38, ptr %val, align 8, !dbg !5130
  store i64 8, ptr %size, align 8, !dbg !5131
  br label %sw.epilog, !dbg !5132

sw.default:                                       ; preds = %do.end19
  br label %do.body39, !dbg !5133

do.body39:                                        ; preds = %sw.default
  br label %do.cond40, !dbg !5135

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !5135

do.end41:                                         ; preds = %do.cond40
  %42 = load ptr, ptr %me.addr, align 8, !dbg !5133
  %name = getelementptr inbounds %struct.module, ptr %42, i32 0, i32 2, !dbg !5133
  %arraydecay = getelementptr inbounds [56 x i8], ptr %name, i64 0, i64 0, !dbg !5133
  %43 = load ptr, ptr %rel, align 8, !dbg !5133
  %44 = load i32, ptr %i, align 4, !dbg !5133
  %idxprom42 = zext i32 %44 to i64, !dbg !5133
  %arrayidx43 = getelementptr %struct.elf64_rela, ptr %43, i64 %idxprom42, !dbg !5133
  %r_info44 = getelementptr inbounds %struct.elf64_rela, ptr %arrayidx43, i32 0, i32 1, !dbg !5133
  %45 = load i64, ptr %r_info44, align 8, !dbg !5133
  %and45 = and i64 %45, 4294967295, !dbg !5133
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef %arraydecay, i64 noundef %and45) #18, !dbg !5133
  store i32 %call, ptr %tmp, align 4, !dbg !5135
  %46 = load i32, ptr %tmp, align 4, !dbg !5133
  store i32 -8, ptr %retval, align 4, !dbg !5137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5137

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb36, %if.end35, %if.end, %sw.bb25
  %47 = load i8, ptr %apply.addr, align 1, !dbg !5138, !range !4331, !noundef !721
  %tobool = trunc i8 %47 to i1, !dbg !5138
  br i1 %tobool, label %if.then46, label %if.else, !dbg !5140

if.then46:                                        ; preds = %sw.epilog
  %48 = load ptr, ptr %loc, align 8, !dbg !5141
  %49 = load i64, ptr %size, align 8, !dbg !5144
  %call47 = call i32 @memcmp(ptr noundef %48, ptr noundef %zero, i64 noundef %49) #14, !dbg !5145
  %tobool48 = icmp ne i32 %call47, 0, !dbg !5145
  br i1 %tobool48, label %if.then49, label %if.end60, !dbg !5146

if.then49:                                        ; preds = %if.then46
  br label %do.body50, !dbg !5147

do.body50:                                        ; preds = %if.then49
  br label %do.cond51, !dbg !5150

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !5150

do.end52:                                         ; preds = %do.cond51
  %50 = load ptr, ptr %rel, align 8, !dbg !5147
  %51 = load i32, ptr %i, align 4, !dbg !5147
  %idxprom54 = zext i32 %51 to i64, !dbg !5147
  %arrayidx55 = getelementptr %struct.elf64_rela, ptr %50, i64 %idxprom54, !dbg !5147
  %r_info56 = getelementptr inbounds %struct.elf64_rela, ptr %arrayidx55, i32 0, i32 1, !dbg !5147
  %52 = load i64, ptr %r_info56, align 8, !dbg !5147
  %and57 = and i64 %52, 4294967295, !dbg !5147
  %conv58 = trunc i64 %and57 to i32, !dbg !5147
  %53 = load ptr, ptr %loc, align 8, !dbg !5147
  %54 = load i64, ptr %val, align 8, !dbg !5147
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %conv58, ptr noundef %53, i64 noundef %54) #18, !dbg !5147
  store i32 %call59, ptr %tmp53, align 4, !dbg !5150
  %55 = load i32, ptr %tmp53, align 4, !dbg !5147
  store i32 -8, ptr %retval, align 4, !dbg !5152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5152

if.end60:                                         ; preds = %if.then46
  %56 = load ptr, ptr %write.addr, align 8, !dbg !5153
  %57 = load ptr, ptr %loc, align 8, !dbg !5154
  %58 = load i64, ptr %size, align 8, !dbg !5155
  %call61 = call ptr %56(ptr noundef %57, ptr noundef %val, i64 noundef %58) #14, !dbg !5153
  br label %if.end77, !dbg !5156

if.else:                                          ; preds = %sw.epilog
  %59 = load ptr, ptr %loc, align 8, !dbg !5157
  %60 = load i64, ptr %size, align 8, !dbg !5160
  %call62 = call i32 @memcmp(ptr noundef %59, ptr noundef %val, i64 noundef %60) #14, !dbg !5161
  %tobool63 = icmp ne i32 %call62, 0, !dbg !5161
  br i1 %tobool63, label %if.then64, label %if.end75, !dbg !5162

if.then64:                                        ; preds = %if.else
  br label %do.body65, !dbg !5163

do.body65:                                        ; preds = %if.then64
  br label %do.cond66, !dbg !5166

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !5166

do.end67:                                         ; preds = %do.cond66
  %61 = load ptr, ptr %rel, align 8, !dbg !5163
  %62 = load i32, ptr %i, align 4, !dbg !5163
  %idxprom69 = zext i32 %62 to i64, !dbg !5163
  %arrayidx70 = getelementptr %struct.elf64_rela, ptr %61, i64 %idxprom69, !dbg !5163
  %r_info71 = getelementptr inbounds %struct.elf64_rela, ptr %arrayidx70, i32 0, i32 1, !dbg !5163
  %63 = load i64, ptr %r_info71, align 8, !dbg !5163
  %and72 = and i64 %63, 4294967295, !dbg !5163
  %conv73 = trunc i64 %and72 to i32, !dbg !5163
  %64 = load ptr, ptr %loc, align 8, !dbg !5163
  %65 = load i64, ptr %val, align 8, !dbg !5163
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, i32 noundef %conv73, ptr noundef %64, i64 noundef %65) #18, !dbg !5163
  store i32 %call74, ptr %tmp68, align 4, !dbg !5166
  %66 = load i32, ptr %tmp68, align 4, !dbg !5163
  store i32 -8, ptr %retval, align 4, !dbg !5168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5168

if.end75:                                         ; preds = %if.else
  %67 = load ptr, ptr %write.addr, align 8, !dbg !5169
  %68 = load ptr, ptr %loc, align 8, !dbg !5170
  %69 = load i64, ptr %size, align 8, !dbg !5171
  %call76 = call ptr %67(ptr noundef %68, ptr noundef %zero, i64 noundef %69) #14, !dbg !5169
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.end60
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5172
  br label %cleanup, !dbg !5172

cleanup:                                          ; preds = %if.then34, %if.then, %if.end77, %do.end67, %do.end52, %do.end41, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !5172
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup95 [
    i32 0, label %cleanup.cont
    i32 6, label %for.inc
    i32 10, label %overflow
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5173

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %70 = load i32, ptr %i, align 4, !dbg !5174
  %inc = add i32 %70, 1, !dbg !5174
  store i32 %inc, ptr %i, align 4, !dbg !5174
  br label %for.cond, !dbg !5175, !llvm.loop !5176

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !5178

overflow:                                         ; preds = %cleanup
  call void @llvm.dbg.label(metadata !5035), !dbg !5179
  br label %do.body78, !dbg !5180

do.body78:                                        ; preds = %overflow
  br label %do.cond79, !dbg !5182

do.cond79:                                        ; preds = %do.body78
  br label %do.end80, !dbg !5182

do.end80:                                         ; preds = %do.cond79
  %71 = load ptr, ptr %rel, align 8, !dbg !5180
  %72 = load i32, ptr %i, align 4, !dbg !5180
  %idxprom82 = zext i32 %72 to i64, !dbg !5180
  %arrayidx83 = getelementptr %struct.elf64_rela, ptr %71, i64 %idxprom82, !dbg !5180
  %r_info84 = getelementptr inbounds %struct.elf64_rela, ptr %arrayidx83, i32 0, i32 1, !dbg !5180
  %73 = load i64, ptr %r_info84, align 8, !dbg !5180
  %and85 = and i64 %73, 4294967295, !dbg !5180
  %conv86 = trunc i64 %and85 to i32, !dbg !5180
  %74 = load i64, ptr %val, align 8, !dbg !5180
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, i32 noundef %conv86, i64 noundef %74) #18, !dbg !5180
  store i32 %call87, ptr %tmp81, align 4, !dbg !5182
  %75 = load i32, ptr %tmp81, align 4, !dbg !5180
  br label %do.body88, !dbg !5184

do.body88:                                        ; preds = %do.end80
  br label %do.cond89, !dbg !5186

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !5186

do.end90:                                         ; preds = %do.cond89
  %76 = load ptr, ptr %me.addr, align 8, !dbg !5184
  %name92 = getelementptr inbounds %struct.module, ptr %76, i32 0, i32 2, !dbg !5184
  %arraydecay93 = getelementptr inbounds [56 x i8], ptr %name92, i64 0, i64 0, !dbg !5184
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, ptr noundef %arraydecay93) #18, !dbg !5184
  store i32 %call94, ptr %tmp91, align 4, !dbg !5186
  %77 = load i32, ptr %tmp91, align 4, !dbg !5184
  store i32 -8, ptr %retval, align 4, !dbg !5188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !5188

cleanup95:                                        ; preds = %do.end90, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #13, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 8, ptr %loc) #13, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #13, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel) #13, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5189
  %78 = load i32, ptr %retval, align 4, !dbg !5189
  ret i32 %78, !dbg !5189
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5190 dso_local void @text_poke_sync() #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5191 dso_local i32 @_printk(ptr noundef, ...) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5195 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="get_random_u32_inclusive() must take floor <= ceil" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="get_random_u32_below() must take ceil > 0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone noreturn }
attributes #17 = { noredzone nounwind willreturn memory(none) }
attributes #18 = { cold noredzone }

!llvm.dbg.cu = !{!45}
!llvm.module.flags = !{!265, !266, !267, !268, !269, !270, !271, !272}
!llvm.ident = !{!273}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/module.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "56bcf023f265d6990fe0ab8c5d241c85")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 18)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 12)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 293, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 15)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !3, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 14)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !19, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !9, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 16)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "module_kaslr_mutex", scope: !45, file: !2, line: 43, type: !216, isLocal: true, isDefinition: true)
!45 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.module.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/module\22 -D KBUILD_BASENAME=\22module\22 -D KBUILD_MODNAME=\22module\22 -D __KBUILD_MODNAME=kmod_module -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/module.ll arch/x86/kernel/module.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !146, globals: !188, splitDebugInlining: false, nameTableKind: None)
!46 = !{!47, !55, !60, !66, !71, !79, !95, !103, !109, !116, !123, !129, !134}
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !48, line: 312, baseType: !49, size: 32, elements: !50)
!48 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!52 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!53 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!54 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !56, line: 2052, baseType: !49, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!57 = !{!58, !59}
!58 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!59 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !61, line: 54, baseType: !49, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "USRQUOTA", value: 0)
!64 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!65 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !67, line: 65, baseType: !49, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!70 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !72, line: 9, baseType: !49, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!75 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!76 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!77 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!78 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !80, line: 1325, baseType: !49, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!82 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!83 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!84 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!85 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!86 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!87 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!88 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!89 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!90 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!91 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!92 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!93 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!94 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !96, line: 68, baseType: !49, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!99 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!100 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!101 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!102 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !104, line: 16, baseType: !49, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!105 = !{!106, !107, !108}
!106 = !DIEnumerator(name: "TT_NONE", value: 0)
!107 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!108 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !110, line: 51, baseType: !49, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!113 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!114 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!115 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !117, line: 15, baseType: !49, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!120 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!121 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!122 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !124, line: 26, baseType: !49, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!127 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!128 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 10, baseType: !49, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!131 = !{!132, !133}
!132 = !DIEnumerator(name: "false", value: 0)
!133 = !DIEnumerator(name: "true", value: 1)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mod_mem_type", file: !48, line: 324, baseType: !135, size: 32, elements: !136)
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145}
!137 = !DIEnumerator(name: "MOD_TEXT", value: 0)
!138 = !DIEnumerator(name: "MOD_DATA", value: 1)
!139 = !DIEnumerator(name: "MOD_RODATA", value: 2)
!140 = !DIEnumerator(name: "MOD_RO_AFTER_INIT", value: 3)
!141 = !DIEnumerator(name: "MOD_INIT_TEXT", value: 4)
!142 = !DIEnumerator(name: "MOD_INIT_DATA", value: 5)
!143 = !DIEnumerator(name: "MOD_INIT_RODATA", value: 6)
!144 = !DIEnumerator(name: "MOD_MEM_NUM_TYPES", value: 7)
!145 = !DIEnumerator(name: "MOD_INVALID", value: -1)
!146 = !{!147, !149, !150, !151, !153, !157, !160, !163, !166, !181, !182, !185, !135}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !148, line: 154, baseType: !49)
!148 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!149 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !152, line: 14, baseType: !149)
!152 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !154, line: 21, baseType: !155)
!154 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !156, line: 27, baseType: !49)
!156 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !154, line: 17, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !156, line: 21, baseType: !159)
!159 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !154, line: 19, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !156, line: 24, baseType: !162)
!162 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !154, line: 23, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !156, line: 31, baseType: !165)
!165 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !168, line: 204, baseType: !169)
!168 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !168, line: 197, size: 192, elements: !170)
!170 = !{!171, !173, !174, !175, !177, !179}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !169, file: !168, line: 198, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !168, line: 21, baseType: !155)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !169, file: !168, line: 199, baseType: !159, size: 8, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !169, file: !168, line: 200, baseType: !159, size: 8, offset: 40)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !169, file: !168, line: 201, baseType: !176, size: 16, offset: 48)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !168, line: 17, baseType: !161)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !169, file: !168, line: 202, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !168, line: 16, baseType: !164)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !169, file: !168, line: 203, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !168, line: 22, baseType: !164)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !154, line: 22, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !156, line: 30, baseType: !184)
!184 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !154, line: 20, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !156, line: 26, baseType: !135)
!188 = !{!0, !7, !12, !17, !22, !27, !29, !34, !36, !38, !43, !189, !191, !196, !201, !206, !211}
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "module_load_offset", scope: !45, file: !2, line: 40, type: !149, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 45)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 848, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 106)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1000, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 125)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 50)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 57)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !217, line: 66, size: 256, elements: !218)
!217 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!218 = !{!219, !226, !254, !259}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !216, file: !217, line: 67, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !221, line: 13, baseType: !222)
!221 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !148, line: 181, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 179, size: 64, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !223, file: !148, line: 180, baseType: !182, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !216, file: !217, line: 68, baseType: !227, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !228, line: 23, baseType: !229)
!228 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !228, line: 14, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !229, file: !228, line: 15, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !233, line: 44, baseType: !234)
!233 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !233, line: 14, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !233, line: 15, baseType: !237, size: 32)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !233, line: 15, size: 32, elements: !238)
!238 = !{!239, !244, !249}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !237, file: !233, line: 16, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !148, line: 174, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 172, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !241, file: !148, line: 173, baseType: !135, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !233, line: 24, baseType: !245, size: 16)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !233, line: 24, size: 16, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !245, file: !233, line: 25, baseType: !157, size: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !245, file: !233, line: 26, baseType: !157, size: 8, offset: 8)
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !233, line: 28, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !233, line: 28, size: 32, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !250, file: !233, line: 29, baseType: !160, size: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !250, file: !233, line: 30, baseType: !160, size: 16, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !216, file: !217, line: 70, baseType: !255, size: 32, offset: 96)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !256, line: 15, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !255, file: !256, line: 20, baseType: !240, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !216, file: !217, line: 72, baseType: !260, size: 128, offset: 128)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !148, line: 190, size: 128, elements: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !148, line: 191, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !260, file: !148, line: 191, baseType: !263, size: 64, offset: 64)
!265 = !{i32 7, !"Dwarf Version", i32 5}
!266 = !{i32 2, !"Debug Info Version", i32 3}
!267 = !{i32 1, !"wchar_size", i32 2}
!268 = !{i32 8, !"cf-protection-branch", i32 1}
!269 = !{i32 4, !"function_return_thunk_extern", i32 1}
!270 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!271 = !{i32 1, !"Code Model", i32 2}
!272 = !{i32 1, !"override-stack-alignment", i32 8}
!273 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!274 = distinct !DISubprogram(name: "module_alloc", scope: !2, file: !2, line: 68, type: !275, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{!150, !149}
!277 = !{!278, !279, !280}
!278 = !DILocalVariable(name: "size", arg: 1, scope: !274, file: !2, line: 68, type: !149)
!279 = !DILocalVariable(name: "gfp_mask", scope: !274, file: !2, line: 70, type: !147)
!280 = !DILocalVariable(name: "p", scope: !274, file: !2, line: 71, type: !150)
!281 = !DILocation(line: 68, column: 34, scope: !274)
!282 = !DILocation(line: 70, column: 2, scope: !274)
!283 = !DILocation(line: 70, column: 8, scope: !274)
!284 = !DILocation(line: 71, column: 2, scope: !274)
!285 = !DILocation(line: 71, column: 8, scope: !274)
!286 = !DILocation(line: 73, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !274, file: !2, line: 73, column: 6)
!288 = !DILocation(line: 73, column: 23, scope: !287)
!289 = !DILocation(line: 73, column: 6, scope: !274)
!290 = !DILocation(line: 74, column: 3, scope: !287)
!291 = !DILocation(line: 76, column: 27, scope: !274)
!292 = !DILocation(line: 77, column: 22, scope: !274)
!293 = !DILocation(line: 77, column: 20, scope: !274)
!294 = !DILocation(line: 78, column: 19, scope: !274)
!295 = !DILocation(line: 78, column: 29, scope: !274)
!296 = !DILocation(line: 80, column: 20, scope: !274)
!297 = !DILocation(line: 76, column: 6, scope: !274)
!298 = !DILocation(line: 76, column: 4, scope: !274)
!299 = !DILocation(line: 82, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !274, file: !2, line: 82, column: 6)
!301 = !DILocation(line: 82, column: 8, scope: !300)
!302 = !DILocation(line: 82, column: 38, scope: !300)
!303 = !DILocation(line: 82, column: 41, scope: !300)
!304 = !DILocation(line: 82, column: 47, scope: !300)
!305 = !DILocation(line: 82, column: 12, scope: !300)
!306 = !DILocation(line: 82, column: 57, scope: !300)
!307 = !DILocation(line: 82, column: 6, scope: !274)
!308 = !DILocation(line: 83, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !300, file: !2, line: 82, column: 63)
!310 = !DILocation(line: 83, column: 3, scope: !309)
!311 = !DILocation(line: 84, column: 3, scope: !309)
!312 = !DILocation(line: 87, column: 9, scope: !274)
!313 = !DILocation(line: 87, column: 2, scope: !274)
!314 = !DILocation(line: 88, column: 1, scope: !274)
!315 = !DISubprogram(name: "__vmalloc_node_range", scope: !316, file: !316, line: 148, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!317 = !DISubroutineType(types: !318)
!318 = !{!150, !149, !149, !149, !149, !147, !319, !149, !135, !325}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !320, line: 297, baseType: !321)
!320 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !320, line: 297, size: 64, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !321, file: !320, line: 297, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !152, line: 19, baseType: !149)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!327 = distinct !DISubprogram(name: "get_module_load_offset", scope: !2, file: !2, line: 45, type: !328, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45)
!328 = !DISubroutineType(types: !329)
!329 = !{!149}
!330 = !DILocation(line: 47, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !2, line: 47, column: 6)
!332 = !DILocation(line: 47, column: 6, scope: !327)
!333 = !DILocation(line: 48, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !2, line: 47, column: 23)
!335 = !DILocation(line: 54, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !2, line: 54, column: 7)
!337 = !DILocation(line: 54, column: 26, scope: !336)
!338 = !DILocation(line: 54, column: 7, scope: !334)
!339 = !DILocation(line: 56, column: 5, scope: !336)
!340 = !DILocation(line: 56, column: 39, scope: !336)
!341 = !DILocation(line: 55, column: 23, scope: !336)
!342 = !DILocation(line: 55, column: 4, scope: !336)
!343 = !DILocation(line: 57, column: 3, scope: !334)
!344 = !DILocation(line: 58, column: 2, scope: !334)
!345 = !DILocation(line: 59, column: 9, scope: !327)
!346 = !DILocation(line: 59, column: 2, scope: !327)
!347 = distinct !DISubprogram(name: "kasan_alloc_module_shadow", scope: !348, file: !348, line: 464, type: !349, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !355)
!348 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!349 = !DISubroutineType(types: !350)
!350 = !{!135, !150, !351, !147}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 61, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !353, line: 72, baseType: !354)
!353 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !353, line: 16, baseType: !149)
!355 = !{!356, !357, !358}
!356 = !DILocalVariable(name: "addr", arg: 1, scope: !347, file: !348, line: 464, type: !150)
!357 = !DILocalVariable(name: "size", arg: 2, scope: !347, file: !348, line: 464, type: !351)
!358 = !DILocalVariable(name: "gfp_mask", arg: 3, scope: !347, file: !348, line: 464, type: !147)
!359 = !DILocation(line: 464, column: 51, scope: !347)
!360 = !DILocation(line: 464, column: 64, scope: !347)
!361 = !DILocation(line: 464, column: 76, scope: !347)
!362 = !DILocation(line: 464, column: 88, scope: !347)
!363 = !DISubprogram(name: "vfree", scope: !316, file: !316, line: 161, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !325}
!366 = distinct !DISubprogram(name: "apply_relocate_add", scope: !2, file: !2, line: 252, type: !367, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !4280)
!367 = !DISubroutineType(types: !368)
!368 = !{!135, !369, !384, !49, !49, !386}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Shdr", file: !168, line: 332, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_shdr", file: !168, line: 321, size: 512, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !379, !380, !381, !382, !383}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sh_name", scope: !371, file: !168, line: 322, baseType: !172, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sh_type", scope: !371, file: !168, line: 323, baseType: !172, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sh_flags", scope: !371, file: !168, line: 324, baseType: !180, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addr", scope: !371, file: !168, line: 325, baseType: !178, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sh_offset", scope: !371, file: !168, line: 326, baseType: !378, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Off", file: !168, line: 19, baseType: !164)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sh_size", scope: !371, file: !168, line: 327, baseType: !180, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sh_link", scope: !371, file: !168, line: 328, baseType: !172, size: 32, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sh_info", scope: !371, file: !168, line: 329, baseType: !172, size: 32, offset: 352)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addralign", scope: !371, file: !168, line: 330, baseType: !180, size: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sh_entsize", scope: !371, file: !168, line: 331, baseType: !180, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !48, line: 402, size: 9216, align: 512, elements: !388)
!388 = !{!389, !390, !391, !395, !3971, !3997, !3998, !3999, !4000, !4004, !4007, !4008, !4009, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4076, !4080, !4098, !4115, !4116, !4117, !4118, !4127, !4135, !4136, !4139, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4153, !4154, !4240, !4248, !4249, !4250, !4252, !4256, !4257, !4261, !4262, !4263, !4264, !4266, !4267, !4268, !4275, !4276, !4277, !4279}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !387, file: !48, line: 403, baseType: !47, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !387, file: !48, line: 406, baseType: !260, size: 128, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !387, file: !48, line: 409, baseType: !392, size: 448, offset: 192)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 56)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !387, file: !48, line: 417, baseType: !396, size: 768, offset: 640)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !48, line: 45, size: 768, elements: !397)
!397 = !{!398, !3965, !3966, !3967, !3970}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !396, file: !48, line: 46, baseType: !399, size: 512)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !400, line: 64, size: 512, elements: !401)
!400 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!401 = !{!402, !403, !404, !406, !461, !3852, !3955, !3960, !3961, !3962, !3963, !3964}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !400, line: 65, baseType: !384, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !399, file: !400, line: 66, baseType: !260, size: 128, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !399, file: !400, line: 67, baseType: !405, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !399, file: !400, line: 68, baseType: !407, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !400, line: 168, size: 768, elements: !409)
!409 = !{!410, !411, !420, !421}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !408, file: !400, line: 169, baseType: !260, size: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !408, file: !400, line: 170, baseType: !412, size: 32, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !413, line: 29, baseType: !414)
!413 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !413, line: 17, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !413, line: 18, baseType: !417, size: 32)
!417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !413, line: 18, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !417, file: !413, line: 19, baseType: !229, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !408, file: !400, line: 171, baseType: !399, size: 512, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !408, file: !400, line: 172, baseType: !422, size: 64, offset: 704)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !400, line: 133, size: 192, elements: !425)
!425 = !{!426, !433, !438}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !424, file: !400, line: 134, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!135, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !400, line: 135, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!384, !431}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !424, file: !400, line: 136, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!135, !431, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !400, line: 125, size: 20736, elements: !445)
!445 = !{!446, !451, !455, !456, !460}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !444, file: !400, line: 126, baseType: !447, size: 192)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 192, elements: !449)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!449 = !{!450}
!450 = !DISubrange(count: 3)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !444, file: !400, line: 127, baseType: !452, size: 4096, offset: 192)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 4096, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !444, file: !400, line: 128, baseType: !135, size: 32, offset: 4288)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !444, file: !400, line: 129, baseType: !457, size: 16384, offset: 4320)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 2048)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !444, file: !400, line: 130, baseType: !135, size: 32, offset: 20704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !399, file: !400, line: 69, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !400, line: 116, size: 384, elements: !465)
!465 = !{!466, !470, !494, !3814, !3842, !3846}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !464, file: !400, line: 117, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !405}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !464, file: !400, line: 118, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !474, line: 254, size: 128, elements: !475)
!474 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!475 = !{!476, !490}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !473, file: !474, line: 255, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !405, !484, !448}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !148, line: 66, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !353, line: 73, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !353, line: 15, baseType: !483)
!483 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !474, line: 30, size: 128, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !474, line: 31, baseType: !384, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !485, file: !474, line: 32, baseType: !489, size: 16, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !148, line: 24, baseType: !162)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !473, file: !474, line: 256, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!480, !405, !484, !384, !351}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !464, file: !400, line: 119, baseType: !495, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !474, line: 84, size: 320, elements: !499)
!499 = !{!500, !501, !505, !3810, !3812}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !474, line: 85, baseType: !384, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !498, file: !474, line: 86, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!489, !405, !484, !135}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !498, file: !474, line: 88, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!489, !405, !509, !135}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !474, line: 175, size: 512, elements: !511)
!511 = !{!512, !513, !514, !515, !3801, !3805, !3806}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !510, file: !474, line: 176, baseType: !485, size: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !510, file: !474, line: 177, baseType: !351, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !510, file: !474, line: 178, baseType: !150, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !510, file: !474, line: 179, baseType: !516, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !56, line: 472, size: 1536, align: 64, elements: !521)
!521 = !{!522, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3795, !3796, !3797, !3798, !3799, !3800}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !520, file: !56, line: 473, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !56, line: 641, size: 4800, elements: !525)
!525 = !{!526, !527, !528, !536, !537, !544, !545, !548, !549, !3574, !3575, !3576, !3577, !3578, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3618, !3621, !3622, !3623, !3632, !3633, !3634, !3635}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !524, file: !56, line: 642, baseType: !489, size: 16)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !524, file: !56, line: 643, baseType: !162, size: 16, offset: 16)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !524, file: !56, line: 644, baseType: !529, size: 32, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !530, line: 23, baseType: !531)
!530 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 21, size: 32, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !531, file: !530, line: 22, baseType: !534, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !148, line: 37, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !353, line: 49, baseType: !49)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !524, file: !56, line: 645, baseType: !260, size: 128, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !524, file: !56, line: 646, baseType: !538, size: 32, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !530, line: 28, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 26, size: 32, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !539, file: !530, line: 27, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !148, line: 38, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !353, line: 50, baseType: !49)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !524, file: !56, line: 647, baseType: !49, size: 32, offset: 224)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !524, file: !56, line: 650, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !56, line: 607, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !524, file: !56, line: 651, baseType: !546, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !524, file: !56, line: 654, baseType: !550, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !56, line: 1966, size: 2048, align: 512, elements: !553)
!553 = !{!554, !3405, !3418, !3422, !3426, !3430, !3434, !3438, !3442, !3446, !3450, !3451, !3455, !3459, !3496, !3525, !3529, !3535, !3539, !3543, !3547, !3551, !3555, !3561, !3565}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !552, file: !56, line: 1967, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!558, !523, !558, !49}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !560, line: 82, size: 1536, elements: !561)
!560 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!561 = !{!562, !563, !573, !581, !582, !597, !598, !602, !615, !3388, !3389, !3390, !3391, !3397, !3398, !3399}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !559, file: !560, line: 84, baseType: !49, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !559, file: !560, line: 85, baseType: !564, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !565, line: 275, baseType: !566)
!565 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !565, line: 275, size: 32, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !566, file: !565, line: 275, baseType: !569, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !565, line: 69, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !565, line: 64, size: 32, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !570, file: !565, line: 65, baseType: !49, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !559, file: !560, line: 86, baseType: !574, size: 128, offset: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !575, line: 38, size: 128, elements: !576)
!575 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!576 = !{!577, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !575, line: 39, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !574, file: !575, line: 39, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !559, file: !560, line: 87, baseType: !558, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !559, file: !560, line: 88, baseType: !583, size: 128, offset: 256)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !560, line: 49, size: 128, elements: !584)
!584 = !{!585, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !560, line: 50, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !560, line: 50, size: 64, elements: !587)
!587 = !{!588, !593}
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !560, line: 51, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !586, file: !560, line: 51, size: 64, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !589, file: !560, line: 52, baseType: !153, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !589, file: !560, line: 52, baseType: !153, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !586, file: !560, line: 54, baseType: !163, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !560, line: 56, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !559, file: !560, line: 89, baseType: !523, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !559, file: !560, line: 91, baseType: !599, size: 256, offset: 448)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !559, file: !560, line: 94, baseType: !603, size: 64, offset: 704)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !604, line: 25, size: 64, elements: !605)
!604 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !604, line: 26, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !603, file: !604, line: 26, size: 64, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !607, file: !604, line: 28, baseType: !164, size: 64, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !604, line: 30, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !607, file: !604, line: 30, size: 64, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !611, file: !604, line: 31, baseType: !412, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !611, file: !604, line: 32, baseType: !135, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !559, file: !560, line: 95, baseType: !616, size: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !560, line: 128, size: 1024, align: 512, elements: !619)
!619 = !{!620, !624, !625, !632, !638, !642, !646, !650, !651, !655, !659, !3378, !3382}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !618, file: !560, line: 129, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!135, !558, !49}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !618, file: !560, line: 130, baseType: !621, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !618, file: !560, line: 131, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!135, !629, !631}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !618, file: !560, line: 132, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!135, !629, !49, !384, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !618, file: !560, line: 134, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!135, !629}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !618, file: !560, line: 135, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!135, !558}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !618, file: !560, line: 136, baseType: !647, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !558}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !618, file: !560, line: 137, baseType: !647, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !618, file: !560, line: 138, baseType: !652, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !558, !523}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !618, file: !560, line: 139, baseType: !656, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!448, !558, !448, !135}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !618, file: !560, line: 140, baseType: !660, size: 64, offset: 640)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!663, !3377}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !665, line: 70, size: 256, elements: !666)
!665 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!666 = !{!667, !668, !3373, !3374}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !664, file: !665, line: 71, baseType: !558, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !664, file: !665, line: 72, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !56, line: 1190, size: 10752, elements: !671)
!671 = !{!672, !673, !676, !677, !678, !681, !730, !870, !910, !1000, !1004, !1005, !1006, !1007, !1008, !1017, !1018, !1019, !1020, !1025, !1029, !1030, !1033, !1036, !1039, !1042, !1043, !1044, !1085, !3304, !3305, !3306, !3307, !3308, !3309, !3312, !3314, !3321, !3322, !3323, !3324, !3325, !3340, !3341, !3342, !3343, !3344, !3347, !3348, !3349, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !670, file: !56, line: 1191, baseType: !260, size: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !670, file: !56, line: 1192, baseType: !674, size: 32, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !148, line: 21, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !148, line: 18, baseType: !153)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !670, file: !56, line: 1193, baseType: !159, size: 8, offset: 160)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !670, file: !56, line: 1194, baseType: !149, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !670, file: !56, line: 1195, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !148, line: 52, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !353, line: 88, baseType: !184)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !670, file: !56, line: 1196, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !56, line: 2366, size: 576, elements: !684)
!684 = !{!685, !686, !687, !694, !698, !702, !706, !707, !708, !718, !722, !723, !724, !726, !727, !728, !729}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !683, file: !56, line: 2367, baseType: !384, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !683, file: !56, line: 2368, baseType: !135, size: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !683, file: !56, line: 2376, baseType: !688, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!135, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !693, line: 32, flags: DIFlagFwdDecl)
!693 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !683, file: !56, line: 2377, baseType: !695, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !56, line: 75, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !683, file: !56, line: 2378, baseType: !699, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!558, !682, !135, !384, !150}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !683, file: !56, line: 2380, baseType: !703, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !669}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !683, file: !56, line: 2381, baseType: !386, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !56, line: 2382, baseType: !682, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !683, file: !56, line: 2383, baseType: !709, size: 64, offset: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !148, line: 194, size: 64, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !709, file: !148, line: 195, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !148, line: 198, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !148, line: 199, baseType: !712, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !713, file: !148, line: 199, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !683, file: !56, line: 2385, baseType: !719, offset: 576)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !720, line: 206, elements: !721)
!720 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!721 = !{}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !683, file: !56, line: 2386, baseType: !719, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !683, file: !56, line: 2387, baseType: !719, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !683, file: !56, line: 2388, baseType: !725, offset: 576)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, elements: !449)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !683, file: !56, line: 2390, baseType: !719, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !683, file: !56, line: 2391, baseType: !719, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !683, file: !56, line: 2392, baseType: !719, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !683, file: !56, line: 2393, baseType: !719, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !670, file: !56, line: 1197, baseType: !731, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !56, line: 2057, size: 1664, elements: !734)
!734 = !{!735, !739, !743, !744, !748, !754, !758, !759, !760, !764, !768, !772, !773, !774, !780, !785, !786, !793, !794, !795, !796, !800, !804, !853, !868, !869}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !733, file: !56, line: 2058, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!523, !669}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !733, file: !56, line: 2059, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !523}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !733, file: !56, line: 2060, baseType: !740, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !733, file: !56, line: 2062, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !523, !135}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !733, file: !56, line: 2063, baseType: !749, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!135, !523, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !56, line: 309, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !733, file: !56, line: 2064, baseType: !755, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!135, !523}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !733, file: !56, line: 2065, baseType: !740, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !733, file: !56, line: 2066, baseType: !703, size: 64, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !733, file: !56, line: 2067, baseType: !761, size: 64, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!135, !669, !135}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !733, file: !56, line: 2068, baseType: !765, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!135, !669, !55}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !733, file: !56, line: 2069, baseType: !769, size: 64, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!135, !669}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !733, file: !56, line: 2070, baseType: !765, size: 64, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !733, file: !56, line: 2071, baseType: !769, size: 64, offset: 768)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !733, file: !56, line: 2072, baseType: !775, size: 64, offset: 832)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!135, !558, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !56, line: 62, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !733, file: !56, line: 2073, baseType: !781, size: 64, offset: 896)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!135, !669, !784, !448}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !733, file: !56, line: 2074, baseType: !703, size: 64, offset: 960)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !733, file: !56, line: 2076, baseType: !787, size: 64, offset: 1024)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!135, !790, !558}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !792, line: 66, flags: DIFlagFwdDecl)
!792 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!793 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !733, file: !56, line: 2077, baseType: !787, size: 64, offset: 1088)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !733, file: !56, line: 2078, baseType: !787, size: 64, offset: 1152)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !733, file: !56, line: 2079, baseType: !787, size: 64, offset: 1216)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !733, file: !56, line: 2081, baseType: !797, size: 64, offset: 1280)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!480, !669, !135, !448, !351, !679}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !733, file: !56, line: 2082, baseType: !801, size: 64, offset: 1344)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!480, !669, !135, !384, !351, !679}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !733, file: !56, line: 2083, baseType: !805, size: 64, offset: 1408)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!808, !523}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !61, line: 296, size: 1664, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819, !820, !836, !837, !838}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !810, file: !61, line: 297, baseType: !713, size: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !810, file: !61, line: 298, baseType: !260, size: 128, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !810, file: !61, line: 299, baseType: !260, size: 128, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !810, file: !61, line: 300, baseType: !260, size: 128, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !810, file: !61, line: 301, baseType: !216, size: 256, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !810, file: !61, line: 302, baseType: !412, size: 32, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !810, file: !61, line: 303, baseType: !240, size: 32, offset: 800)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !810, file: !61, line: 304, baseType: !669, size: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !810, file: !61, line: 305, baseType: !821, size: 64, offset: 896)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !61, line: 68, size: 64, elements: !822)
!822 = !{!823, !835}
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !61, line: 69, baseType: !824, size: 32)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !61, line: 69, size: 32, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !824, file: !61, line: 70, baseType: !529, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !824, file: !61, line: 71, baseType: !538, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !824, file: !61, line: 72, baseType: !829, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !830, line: 24, baseType: !831)
!830 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !830, line: 22, size: 32, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !831, file: !830, line: 23, baseType: !834, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !830, line: 20, baseType: !535)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !821, file: !61, line: 74, baseType: !60, size: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !810, file: !61, line: 306, baseType: !679, size: 64, offset: 960)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !810, file: !61, line: 307, baseType: !149, size: 64, offset: 1024)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !810, file: !61, line: 308, baseType: !839, size: 576, offset: 1088)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !61, line: 205, size: 576, elements: !840)
!840 = !{!841, !843, !844, !845, !846, !847, !848, !849, !852}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !839, file: !61, line: 206, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !61, line: 66, baseType: !184)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !839, file: !61, line: 207, baseType: !842, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !839, file: !61, line: 208, baseType: !842, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !839, file: !61, line: 209, baseType: !842, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !839, file: !61, line: 210, baseType: !842, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !839, file: !61, line: 211, baseType: !842, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !839, file: !61, line: 212, baseType: !842, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !839, file: !61, line: 213, baseType: !850, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !851, line: 8, baseType: !183)
!851 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!852 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !839, file: !61, line: 214, baseType: !850, size: 64, offset: 512)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !733, file: !56, line: 2085, baseType: !854, size: 64, offset: 1472)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!483, !669, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !859, line: 15, size: 256, elements: !860)
!859 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!860 = !{!861, !862, !863, !864, !865}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !858, file: !859, line: 16, baseType: !147, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !858, file: !859, line: 19, baseType: !135, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !858, file: !859, line: 26, baseType: !149, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !858, file: !859, line: 33, baseType: !149, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !858, file: !859, line: 36, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !80, line: 33, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !733, file: !56, line: 2087, baseType: !854, size: 64, offset: 1536)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !733, file: !56, line: 2089, baseType: !703, size: 64, offset: 1600)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !670, file: !56, line: 1198, baseType: !871, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !61, line: 324, size: 704, elements: !874)
!874 = !{!875, !879, !883, !887, !888, !889, !890, !891, !896, !901, !905}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !873, file: !61, line: 325, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!135, !809}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !873, file: !61, line: 326, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!809, !669, !135}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !873, file: !61, line: 327, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !809}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !873, file: !61, line: 328, baseType: !876, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !873, file: !61, line: 329, baseType: !876, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !873, file: !61, line: 330, baseType: !876, size: 64, offset: 320)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !873, file: !61, line: 331, baseType: !761, size: 64, offset: 384)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !873, file: !61, line: 334, baseType: !892, size: 64, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!895, !523}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !873, file: !61, line: 335, baseType: !897, size: 64, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!135, !523, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !873, file: !61, line: 337, baseType: !902, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!135, !523, !895}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !873, file: !61, line: 339, baseType: !906, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!135, !669, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !670, file: !56, line: 1199, baseType: !911, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !61, line: 430, size: 704, elements: !914)
!914 = !{!915, !926, !927, !931, !932, !933, !948, !971, !975, !976, !999}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !913, file: !61, line: 431, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!135, !669, !135, !135, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !922, line: 8, size: 128, elements: !923)
!922 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !921, file: !922, line: 9, baseType: !663, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !921, file: !922, line: 10, baseType: !558, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !913, file: !61, line: 432, baseType: !761, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !913, file: !61, line: 433, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!135, !669, !49}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !913, file: !61, line: 434, baseType: !928, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !913, file: !61, line: 435, baseType: !761, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !913, file: !61, line: 436, baseType: !934, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!135, !669, !135, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !61, line: 417, size: 256, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945, !946, !947}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !938, file: !61, line: 418, baseType: !135, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !938, file: !61, line: 419, baseType: !49, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !938, file: !61, line: 420, baseType: !49, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !938, file: !61, line: 422, baseType: !49, size: 32, offset: 96)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !938, file: !61, line: 423, baseType: !49, size: 32, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !938, file: !61, line: 424, baseType: !49, size: 32, offset: 160)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !938, file: !61, line: 425, baseType: !49, size: 32, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !938, file: !61, line: 426, baseType: !49, size: 32, offset: 224)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !913, file: !61, line: 437, baseType: !949, size: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!135, !669, !821, !952}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !61, line: 345, size: 960, elements: !954)
!954 = !{!955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !953, file: !61, line: 346, baseType: !135, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !953, file: !61, line: 347, baseType: !163, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !953, file: !61, line: 348, baseType: !163, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !953, file: !61, line: 349, baseType: !163, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !953, file: !61, line: 350, baseType: !163, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !953, file: !61, line: 351, baseType: !163, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !953, file: !61, line: 352, baseType: !163, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !953, file: !61, line: 353, baseType: !182, size: 64, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !953, file: !61, line: 355, baseType: !182, size: 64, offset: 512)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !953, file: !61, line: 356, baseType: !135, size: 32, offset: 576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !953, file: !61, line: 357, baseType: !135, size: 32, offset: 608)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !953, file: !61, line: 358, baseType: !163, size: 64, offset: 640)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !953, file: !61, line: 359, baseType: !163, size: 64, offset: 704)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !953, file: !61, line: 360, baseType: !163, size: 64, offset: 768)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !953, file: !61, line: 361, baseType: !182, size: 64, offset: 832)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !953, file: !61, line: 362, baseType: !135, size: 32, offset: 896)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !913, file: !61, line: 438, baseType: !972, size: 64, offset: 448)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!135, !669, !909, !952}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !913, file: !61, line: 440, baseType: !949, size: 64, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !913, file: !61, line: 441, baseType: !977, size: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!135, !669, !980}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !61, line: 411, size: 1408, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !981, file: !61, line: 412, baseType: !49, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !981, file: !61, line: 413, baseType: !985, size: 1344, offset: 64)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 1344, elements: !449)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !61, line: 397, size: 448, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !996, !998}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !61, line: 398, baseType: !49, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !986, file: !61, line: 399, baseType: !49, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !986, file: !61, line: 401, baseType: !49, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !986, file: !61, line: 402, baseType: !49, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !986, file: !61, line: 403, baseType: !49, size: 32, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !986, file: !61, line: 404, baseType: !49, size: 32, offset: 160)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !986, file: !61, line: 405, baseType: !49, size: 32, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !986, file: !61, line: 406, baseType: !165, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !986, file: !61, line: 407, baseType: !997, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !148, line: 132, baseType: !163)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !986, file: !61, line: 408, baseType: !997, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !913, file: !61, line: 442, baseType: !928, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !670, file: !56, line: 1200, baseType: !1001, size: 64, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !56, line: 54, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !670, file: !56, line: 1201, baseType: !149, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !670, file: !56, line: 1202, baseType: !149, size: 64, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !670, file: !56, line: 1203, baseType: !149, size: 64, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !670, file: !56, line: 1204, baseType: !558, size: 64, offset: 832)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !670, file: !56, line: 1205, baseType: !1009, size: 320, offset: 896)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1010, line: 48, size: 320, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1011 = !{!1012, !1013, !1014, !1015, !1016}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1009, file: !1010, line: 49, baseType: !220, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1009, file: !1010, line: 55, baseType: !220, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1009, file: !1010, line: 57, baseType: !255, size: 32, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1009, file: !1010, line: 59, baseType: !227, size: 32, offset: 160)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1009, file: !1010, line: 60, baseType: !260, size: 128, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !670, file: !56, line: 1206, baseType: !135, size: 32, offset: 1216)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !670, file: !56, line: 1207, baseType: !240, size: 32, offset: 1248)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !670, file: !56, line: 1209, baseType: !150, size: 64, offset: 1280)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !670, file: !56, line: 1211, baseType: !1021, size: 64, offset: 1344)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !56, line: 1211, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !670, file: !56, line: 1223, baseType: !1026, size: 64, offset: 1408)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !575, line: 34, size: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1026, file: !575, line: 35, baseType: !578, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !670, file: !56, line: 1224, baseType: !260, size: 128, offset: 1472)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !670, file: !56, line: 1225, baseType: !1031, size: 64, offset: 1600)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !56, line: 1225, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !670, file: !56, line: 1226, baseType: !1034, size: 64, offset: 1664)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !56, line: 1226, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !670, file: !56, line: 1227, baseType: !1037, size: 64, offset: 1728)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !56, line: 50, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !670, file: !56, line: 1228, baseType: !1040, size: 64, offset: 1792)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !56, line: 1228, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !670, file: !56, line: 1229, baseType: !713, size: 128, offset: 1856)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !670, file: !56, line: 1230, baseType: !49, size: 32, offset: 1984)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !670, file: !56, line: 1231, baseType: !1045, size: 2496, offset: 2048)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !61, line: 521, size: 2496, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1051, !1083}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1045, file: !61, line: 522, baseType: !49, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1045, file: !61, line: 523, baseType: !1009, size: 320, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1045, file: !61, line: 524, baseType: !1050, size: 192, offset: 384)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 192, elements: !449)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1045, file: !61, line: 525, baseType: !1052, size: 1728, offset: 576)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1053, size: 1728, elements: !449)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !61, line: 222, size: 576, elements: !1054)
!1054 = !{!1055, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1053, file: !61, line: 223, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !61, line: 445, size: 256, elements: !1058)
!1058 = !{!1059, !1060, !1073, !1074}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1057, file: !61, line: 446, baseType: !135, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1057, file: !61, line: 447, baseType: !1061, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !61, line: 312, size: 512, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1063, file: !61, line: 313, baseType: !761, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1063, file: !61, line: 314, baseType: !761, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1063, file: !61, line: 315, baseType: !761, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1063, file: !61, line: 316, baseType: !761, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1063, file: !61, line: 317, baseType: !876, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1063, file: !61, line: 318, baseType: !876, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1063, file: !61, line: 319, baseType: !876, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1063, file: !61, line: 320, baseType: !906, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1057, file: !61, line: 448, baseType: !386, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1057, file: !61, line: 449, baseType: !1056, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1053, file: !61, line: 224, baseType: !135, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1053, file: !61, line: 226, baseType: !260, size: 128, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1053, file: !61, line: 227, baseType: !149, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1053, file: !61, line: 228, baseType: !49, size: 32, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1053, file: !61, line: 229, baseType: !49, size: 32, offset: 352)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1053, file: !61, line: 230, baseType: !842, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1053, file: !61, line: 231, baseType: !842, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1053, file: !61, line: 232, baseType: !150, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1045, file: !61, line: 526, baseType: !1084, size: 192, offset: 2304)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 192, elements: !449)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !670, file: !56, line: 1233, baseType: !1086, size: 2368, offset: 4544)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !56, line: 1184, size: 2368, elements: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1086, file: !56, line: 1185, baseType: !162, size: 16)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1086, file: !56, line: 1186, baseType: !162, size: 16, offset: 16)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1086, file: !56, line: 1187, baseType: !1091, size: 2304, offset: 64)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1092, size: 2304, elements: !449)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1093, line: 12, size: 768, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1094 = !{!1095, !1117, !1119, !3302, !3303}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1092, file: !1093, line: 13, baseType: !1096, size: 384)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1097, line: 17, size: 384, elements: !1098)
!1097 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1098 = !{!1099, !1100, !1101, !1108}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1096, file: !1097, line: 18, baseType: !135, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1096, file: !1097, line: 19, baseType: !135, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1096, file: !1097, line: 20, baseType: !1102, size: 192, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1103, line: 41, baseType: !1104)
!1103 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1103, line: 37, size: 192, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1104, file: !1103, line: 38, baseType: !412, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1104, file: !1103, line: 39, baseType: !260, size: 128, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1096, file: !1097, line: 22, baseType: !1109, size: 128, align: 64, offset: 256)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !148, line: 232, size: 128, align: 64, elements: !1110)
!1110 = !{!1111, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1109, file: !148, line: 233, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1109, file: !148, line: 234, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !1112}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1092, file: !1093, line: 14, baseType: !1118, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1092, file: !1093, line: 15, baseType: !1120, size: 64, offset: 448)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1121, line: 16, size: 64, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1120, file: !1121, line: 17, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !792, line: 746, size: 58368, elements: !1126)
!1126 = !{!1127, !1135, !1136, !1137, !1143, !1144, !1145, !1146, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1224, !1235, !1330, !1334, !1337, !1368, !1369, !1370, !1371, !1382, !1384, !1385, !1386, !1387, !1388, !1389, !1400, !1401, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1418, !1419, !1426, !1427, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2443, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2458, !2459, !2460, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2492, !2498, !2499, !2500, !2501, !2502, !2503, !2506, !2513, !2518, !2521, !2524, !2527, !2553, !2693, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2733, !2734, !2735, !2744, !2752, !2753, !2754, !2755, !2756, !2761, !2762, !2763, !2766, !2767, !2770, !2773, !2776, !2784, !2787, !2788, !2874, !2875, !2876, !2877, !2878, !2884, !2885, !2886, !2887, !2890, !2891, !2894, !2897, !2898, !2901, !2902, !2903, !2906, !2907, !2908, !2909, !2910, !2911, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2943, !2944, !2950, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2962, !3034, !3036, !3037, !3038, !3039, !3040, !3052, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3081, !3082, !3083}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1125, file: !792, line: 752, baseType: !1128, size: 192)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1129, line: 56, size: 192, elements: !1130)
!1129 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1128, file: !1129, line: 57, baseType: !149, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1128, file: !1129, line: 58, baseType: !149, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1128, file: !1129, line: 59, baseType: !153, size: 32, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1128, file: !1129, line: 61, baseType: !153, size: 32, offset: 160)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1125, file: !792, line: 754, baseType: !49, size: 32, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1125, file: !792, line: 767, baseType: !150, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1125, file: !792, line: 768, baseType: !1138, size: 32, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1139, line: 113, baseType: !1140)
!1139 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1139, line: 111, size: 32, elements: !1141)
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1140, file: !1139, line: 112, baseType: !240, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1125, file: !792, line: 770, baseType: !49, size: 32, offset: 352)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1125, file: !792, line: 771, baseType: !49, size: 32, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1125, file: !792, line: 774, baseType: !135, size: 32, offset: 416)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1125, file: !792, line: 775, baseType: !1147, size: 128, offset: 448)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1148, line: 58, size: 128, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1149 = !{!1150, !1156, !1161, !1162}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1147, file: !1148, line: 59, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1152, line: 60, size: 64, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1153 = !{!1154}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1151, file: !1152, line: 61, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !1148, line: 60, baseType: !1157, size: 32, offset: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1147, file: !1148, line: 60, size: 32, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1157, file: !1148, line: 61, baseType: !49, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1157, file: !1148, line: 62, baseType: !240, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1147, file: !1148, line: 65, baseType: !160, size: 16, offset: 96)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1147, file: !1148, line: 65, baseType: !160, size: 16, offset: 112)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1125, file: !792, line: 776, baseType: !49, size: 32, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1125, file: !792, line: 777, baseType: !149, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1125, file: !792, line: 778, baseType: !1124, size: 64, offset: 704)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1125, file: !792, line: 787, baseType: !135, size: 32, offset: 768)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1125, file: !792, line: 788, baseType: !135, size: 32, offset: 800)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1125, file: !792, line: 790, baseType: !135, size: 32, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1125, file: !792, line: 792, baseType: !135, size: 32, offset: 864)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1125, file: !792, line: 793, baseType: !135, size: 32, offset: 896)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1125, file: !792, line: 794, baseType: !135, size: 32, offset: 928)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1125, file: !792, line: 795, baseType: !49, size: 32, offset: 960)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1125, file: !792, line: 797, baseType: !1174, size: 2048, offset: 1024)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !792, line: 551, size: 2048, elements: !1175)
!1175 = !{!1176, !1181, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1203, !1206, !1207, !1208}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1174, file: !792, line: 553, baseType: !1177, size: 128)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !792, line: 411, size: 128, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1177, file: !792, line: 412, baseType: !149, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1177, file: !792, line: 413, baseType: !153, size: 32, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1174, file: !792, line: 554, baseType: !1182, size: 192, align: 64, offset: 128)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1183, line: 5, size: 192, align: 64, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1184 = !{!1185, !1186, !1188}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1182, file: !1183, line: 6, baseType: !149, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1182, file: !1183, line: 7, baseType: !1187, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1182, file: !1183, line: 8, baseType: !1187, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1174, file: !792, line: 555, baseType: !163, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1174, file: !792, line: 556, baseType: !163, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1174, file: !792, line: 558, baseType: !260, size: 128, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1174, file: !792, line: 559, baseType: !49, size: 32, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1174, file: !792, line: 561, baseType: !163, size: 64, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1174, file: !792, line: 562, baseType: !163, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1174, file: !792, line: 563, baseType: !163, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1174, file: !792, line: 564, baseType: !163, size: 64, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1174, file: !792, line: 565, baseType: !182, size: 64, offset: 896)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1174, file: !792, line: 566, baseType: !163, size: 64, offset: 960)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1174, file: !792, line: 568, baseType: !163, size: 64, offset: 1024)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1174, file: !792, line: 571, baseType: !135, size: 32, offset: 1088)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1174, file: !792, line: 572, baseType: !1202, size: 64, offset: 1152)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1174, file: !792, line: 574, baseType: !1204, size: 64, offset: 1216)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !792, line: 49, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1174, file: !792, line: 576, baseType: !1204, size: 64, offset: 1280)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1174, file: !792, line: 578, baseType: !149, size: 64, offset: 1344)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1174, file: !792, line: 588, baseType: !1209, size: 512, align: 512, offset: 1536)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !792, line: 497, size: 512, align: 512, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1209, file: !792, line: 498, baseType: !163, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1209, file: !792, line: 499, baseType: !163, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1209, file: !792, line: 500, baseType: !163, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1209, file: !792, line: 501, baseType: !153, size: 32, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1209, file: !792, line: 502, baseType: !153, size: 32, offset: 224)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1209, file: !792, line: 503, baseType: !149, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1209, file: !792, line: 504, baseType: !149, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1209, file: !792, line: 505, baseType: !149, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1209, file: !792, line: 506, baseType: !1220, size: 64, align: 64, offset: 448)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !792, line: 445, size: 64, align: 64, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1220, file: !792, line: 446, baseType: !49, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1220, file: !792, line: 447, baseType: !49, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1125, file: !792, line: 798, baseType: !1225, size: 384, offset: 3072)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !792, line: 592, size: 384, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1225, file: !792, line: 593, baseType: !260, size: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1225, file: !792, line: 594, baseType: !149, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1225, file: !792, line: 595, baseType: !149, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1225, file: !792, line: 596, baseType: !49, size: 32, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1225, file: !792, line: 597, baseType: !162, size: 16, offset: 288)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1225, file: !792, line: 598, baseType: !162, size: 16, offset: 304)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1225, file: !792, line: 600, baseType: !1234, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1125, file: !792, line: 799, baseType: !1236, size: 1792, offset: 3456)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !792, line: 610, size: 1792, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1327, !1328}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1236, file: !792, line: 611, baseType: !1182, size: 192, align: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1236, file: !792, line: 618, baseType: !163, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1236, file: !792, line: 619, baseType: !163, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1236, file: !792, line: 620, baseType: !163, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1236, file: !792, line: 621, baseType: !163, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1236, file: !792, line: 622, baseType: !163, size: 64, offset: 448)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1236, file: !792, line: 629, baseType: !182, size: 64, offset: 512)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1236, file: !792, line: 630, baseType: !163, size: 64, offset: 576)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1236, file: !792, line: 631, baseType: !49, size: 32, offset: 640)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1236, file: !792, line: 653, baseType: !49, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1236, file: !792, line: 654, baseType: !49, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1236, file: !792, line: 655, baseType: !49, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1236, file: !792, line: 656, baseType: !49, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1236, file: !792, line: 662, baseType: !1252, size: 512, offset: 704)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !67, line: 118, size: 512, elements: !1253)
!1253 = !{!1254, !1262, !1263, !1268, !1323, !1324, !1325, !1326}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1252, file: !67, line: 119, baseType: !1255, size: 256)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1256, line: 9, size: 256, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1255, file: !1256, line: 10, baseType: !1182, size: 192, align: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1255, file: !1256, line: 11, baseType: !1260, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1261, line: 29, baseType: !182)
!1261 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1252, file: !67, line: 120, baseType: !1260, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1252, file: !67, line: 121, baseType: !1264, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!66, !1267}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1252, file: !67, line: 122, baseType: !1269, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !67, line: 159, size: 512, align: 512, elements: !1271)
!1271 = !{!1272, !1297, !1298, !1301, !1306, !1307, !1318, !1322}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1270, file: !67, line: 160, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !67, line: 215, size: 4608, align: 512, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1274, file: !67, line: 216, baseType: !227, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1274, file: !67, line: 217, baseType: !49, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1274, file: !67, line: 218, baseType: !49, size: 32, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1274, file: !67, line: 219, baseType: !49, size: 32, offset: 96)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1274, file: !67, line: 220, baseType: !49, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1274, file: !67, line: 221, baseType: !49, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1274, file: !67, line: 222, baseType: !49, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1274, file: !67, line: 223, baseType: !49, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1274, file: !67, line: 224, baseType: !49, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1274, file: !67, line: 226, baseType: !49, size: 32, offset: 160)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1274, file: !67, line: 227, baseType: !162, size: 16, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1274, file: !67, line: 228, baseType: !162, size: 16, offset: 208)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1274, file: !67, line: 229, baseType: !49, size: 32, offset: 224)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1274, file: !67, line: 235, baseType: !1260, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1274, file: !67, line: 236, baseType: !1267, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1274, file: !67, line: 237, baseType: !1260, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1274, file: !67, line: 238, baseType: !1267, size: 64, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1274, file: !67, line: 239, baseType: !1294, size: 4096, align: 512, offset: 512)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 4096, align: 512, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 8)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1270, file: !67, line: 161, baseType: !49, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1270, file: !67, line: 162, baseType: !1299, size: 32, offset: 96)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !148, line: 32, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !353, line: 96, baseType: !135)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1270, file: !67, line: 163, baseType: !1302, size: 32, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !565, line: 274, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !565, line: 274, size: 32, elements: !1304)
!1304 = !{!1305}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1303, file: !565, line: 274, baseType: !569, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1270, file: !67, line: 164, baseType: !1267, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1270, file: !67, line: 165, baseType: !1308, size: 128, offset: 256)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1256, line: 14, size: 128, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1308, file: !1256, line: 15, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1183, line: 26, size: 128, elements: !1312)
!1312 = !{!1313, !1317}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1311, file: !1183, line: 27, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1183, line: 12, size: 64, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1314, file: !1183, line: 13, baseType: !1187, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1311, file: !1183, line: 28, baseType: !1187, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1270, file: !67, line: 166, baseType: !1319, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1260}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1270, file: !67, line: 167, baseType: !1260, size: 64, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1252, file: !67, line: 123, baseType: !157, size: 8, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1252, file: !67, line: 124, baseType: !157, size: 8, offset: 456)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1252, file: !67, line: 125, baseType: !157, size: 8, offset: 464)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1252, file: !67, line: 126, baseType: !157, size: 8, offset: 472)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1236, file: !792, line: 671, baseType: !1252, size: 512, offset: 1216)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1236, file: !792, line: 679, baseType: !1329, size: 64, offset: 1728)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1125, file: !792, line: 800, baseType: !1331, size: 64, offset: 5248)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !792, line: 800, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1125, file: !792, line: 809, baseType: !1335, size: 64, offset: 5312)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !792, line: 70, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1125, file: !792, line: 825, baseType: !1338, size: 2048, align: 512, offset: 5632)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !792, line: 509, size: 2048, align: 512, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1338, file: !792, line: 511, baseType: !163, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1338, file: !792, line: 512, baseType: !163, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1338, file: !792, line: 513, baseType: !163, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1338, file: !792, line: 514, baseType: !163, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1338, file: !792, line: 515, baseType: !163, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1338, file: !792, line: 516, baseType: !163, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1338, file: !792, line: 518, baseType: !163, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1338, file: !792, line: 519, baseType: !163, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1338, file: !792, line: 520, baseType: !182, size: 64, offset: 512)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1338, file: !792, line: 522, baseType: !163, size: 64, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1338, file: !792, line: 523, baseType: !163, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1338, file: !792, line: 524, baseType: !182, size: 64, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1338, file: !792, line: 526, baseType: !182, size: 64, offset: 768)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1338, file: !792, line: 527, baseType: !163, size: 64, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1338, file: !792, line: 529, baseType: !163, size: 64, offset: 896)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1338, file: !792, line: 530, baseType: !163, size: 64, offset: 960)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1338, file: !792, line: 531, baseType: !163, size: 64, offset: 1024)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1338, file: !792, line: 532, baseType: !163, size: 64, offset: 1088)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1338, file: !792, line: 533, baseType: !163, size: 64, offset: 1152)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1338, file: !792, line: 535, baseType: !163, size: 64, offset: 1216)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1338, file: !792, line: 536, baseType: !163, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1338, file: !792, line: 537, baseType: !163, size: 64, offset: 1344)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1338, file: !792, line: 538, baseType: !163, size: 64, offset: 1408)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1338, file: !792, line: 539, baseType: !163, size: 64, offset: 1472)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1338, file: !792, line: 540, baseType: !163, size: 64, offset: 1536)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1338, file: !792, line: 541, baseType: !163, size: 64, offset: 1600)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1338, file: !792, line: 542, baseType: !163, size: 64, offset: 1664)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1338, file: !792, line: 543, baseType: !163, size: 64, offset: 1728)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1125, file: !792, line: 833, baseType: !49, size: 32, offset: 7680)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1125, file: !792, line: 836, baseType: !49, size: 32, offset: 7712)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1125, file: !792, line: 837, baseType: !135, size: 32, offset: 7744)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1125, file: !792, line: 838, baseType: !1372, size: 64, offset: 7808)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1375, line: 19, baseType: !1376)
!1375 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1375, line: 19, size: 64, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1376, file: !1375, line: 19, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: 1)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1125, file: !792, line: 839, baseType: !1383, size: 64, offset: 7872)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1125, file: !792, line: 840, baseType: !1374, size: 64, offset: 7936)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1125, file: !792, line: 841, baseType: !150, size: 64, offset: 8000)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1125, file: !792, line: 843, baseType: !162, size: 16, offset: 8064)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1125, file: !792, line: 845, baseType: !162, size: 16, offset: 8080)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1125, file: !792, line: 848, baseType: !135, size: 32, offset: 8096)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1125, file: !792, line: 849, baseType: !1390, size: 32, offset: 8128)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !792, line: 718, size: 32, elements: !1391)
!1391 = !{!1392, !1399}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1390, file: !792, line: 724, baseType: !1393, size: 32)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1390, file: !792, line: 719, size: 32, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1393, file: !792, line: 720, baseType: !157, size: 8)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1393, file: !792, line: 721, baseType: !157, size: 8, offset: 8)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1393, file: !792, line: 722, baseType: !157, size: 8, offset: 16)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1393, file: !792, line: 723, baseType: !157, size: 8, offset: 24)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1390, file: !792, line: 725, baseType: !153, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1125, file: !792, line: 850, baseType: !260, size: 128, offset: 8192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1125, file: !792, line: 851, baseType: !1402, size: 64, offset: 8320)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !792, line: 60, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1125, file: !792, line: 855, baseType: !149, size: 64, offset: 8384)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1125, file: !792, line: 856, baseType: !157, size: 8, offset: 8448)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1125, file: !792, line: 857, baseType: !157, size: 8, offset: 8456)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1125, file: !792, line: 858, baseType: !135, size: 32, offset: 8480)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1125, file: !792, line: 859, baseType: !260, size: 128, offset: 8512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1125, file: !792, line: 860, baseType: !135, size: 32, offset: 8640)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1125, file: !792, line: 861, baseType: !260, size: 128, offset: 8704)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1125, file: !792, line: 873, baseType: !1412, size: 256, offset: 8832)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !792, line: 376, size: 256, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1412, file: !792, line: 381, baseType: !149, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1412, file: !792, line: 384, baseType: !165, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1412, file: !792, line: 389, baseType: !165, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1412, file: !792, line: 392, baseType: !165, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1125, file: !792, line: 875, baseType: !260, size: 128, offset: 9088)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1125, file: !792, line: 877, baseType: !1420, size: 320, offset: 9216)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1421, line: 86, size: 320, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1422 = !{!1423, !1424, !1425}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1420, file: !1421, line: 87, baseType: !135, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1420, file: !1421, line: 88, baseType: !260, size: 128, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1420, file: !1421, line: 89, baseType: !260, size: 128, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1125, file: !792, line: 878, baseType: !1182, size: 192, align: 64, offset: 9536)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1125, file: !792, line: 881, baseType: !1428, size: 64, offset: 9728)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !80, line: 733, size: 10240, elements: !1430)
!1430 = !{!1431, !2363}
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !80, line: 734, baseType: !1432, size: 10240)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !80, line: 734, size: 10240, elements: !1433)
!1433 = !{!1434, !1438, !1451, !2229, !2230, !2231, !2232, !2233, !2234, !2241, !2242, !2243, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2282, !2284, !2287, !2332, !2333, !2334, !2337, !2338, !2339, !2342, !2343, !2344, !2350, !2351}
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !80, line: 739, baseType: !1435, size: 512, align: 512)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1432, file: !80, line: 739, size: 512, align: 512, elements: !1436)
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1435, file: !80, line: 747, baseType: !240, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1432, file: !80, line: 750, baseType: !1439, size: 128, offset: 512)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1440, line: 218, size: 128, elements: !1441)
!1440 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1441 = !{!1442, !1449, !1450}
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1439, file: !1440, line: 219, baseType: !1443, size: 32)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1439, file: !1440, line: 219, size: 32, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1443, file: !1440, line: 220, baseType: !412, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1443, file: !1440, line: 221, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1440, line: 197, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1440, line: 197, elements: !721)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1439, file: !1440, line: 223, baseType: !49, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1439, file: !1440, line: 224, baseType: !150, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1432, file: !80, line: 752, baseType: !1452, size: 64, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!149, !1455, !149, !149, !149, !149}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !56, line: 994, size: 1856, align: 64, elements: !1457)
!1457 = !{!1458, !1464, !1465, !1467, !1468, !1469, !1470, !1471, !1570, !1757, !1766, !1767, !1768, !2219, !2220, !2221, !2222, !2224, !2225, !2228}
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !56, line: 995, baseType: !1459, size: 128)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !56, line: 995, size: 128, elements: !1460)
!1460 = !{!1461, !1462, !1463}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1459, file: !56, line: 996, baseType: !1151, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1459, file: !56, line: 997, baseType: !1109, size: 128, align: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1459, file: !56, line: 998, baseType: !49, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1456, file: !56, line: 1005, baseType: !412, size: 32, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1456, file: !56, line: 1006, baseType: !1466, size: 32, offset: 160)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !148, line: 156, baseType: !49)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1456, file: !56, line: 1007, baseType: !220, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1456, file: !56, line: 1008, baseType: !216, size: 256, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1456, file: !56, line: 1009, baseType: !679, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1456, file: !56, line: 1010, baseType: !49, size: 32, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1456, file: !56, line: 1011, baseType: !1472, size: 256, offset: 640)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !56, line: 948, size: 256, elements: !1473)
!1473 = !{!1474, !1495, !1566, !1567, !1568, !1569}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1472, file: !56, line: 949, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1476, line: 34, baseType: !1477)
!1476 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1476, line: 25, size: 64, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1477, file: !1476, line: 26, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1481, line: 27, baseType: !1482)
!1481 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1481, line: 13, size: 64, elements: !1483)
!1483 = !{!1484, !1494}
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !1481, line: 14, baseType: !1485, size: 32)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1482, file: !1481, line: 14, size: 32, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1485, file: !1481, line: 15, baseType: !240, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1481, line: 16, baseType: !1489, size: 32)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !1481, line: 16, size: 32, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1489, file: !1481, line: 18, baseType: !157, size: 8)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1489, file: !1481, line: 19, baseType: !1493, size: 24, offset: 8)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 24, elements: !449)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1482, file: !1481, line: 26, baseType: !232, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1472, file: !56, line: 950, baseType: !1496, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !72, line: 59, size: 768, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1506, !1507, !1508, !1509}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1497, file: !72, line: 61, baseType: !1138, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1497, file: !72, line: 62, baseType: !49, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1497, file: !72, line: 63, baseType: !412, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1497, file: !72, line: 65, baseType: !1503, size: 256, offset: 128)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 256, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: 4)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1497, file: !72, line: 66, baseType: !709, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1497, file: !72, line: 68, baseType: !1102, size: 192, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1497, file: !72, line: 69, baseType: !1109, size: 128, align: 64, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1497, file: !72, line: 70, baseType: !1510, offset: 768)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1511, elements: !1564)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !72, line: 54, size: 128, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1511, file: !72, line: 55, baseType: !135, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1511, file: !72, line: 56, baseType: !1515, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1517, line: 26, size: 1152, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1518 = !{!1519, !1532, !1533, !1534, !1535, !1539, !1540, !1541, !1544, !1547, !1551, !1552, !1563}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1516, file: !1517, line: 27, baseType: !1520, size: 192)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1521, line: 19, size: 192, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1522 = !{!1523, !1530, !1531}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1520, file: !1521, line: 20, baseType: !1524, size: 128)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1525, line: 296, size: 128, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1526 = !{!1527, !1528, !1529}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1524, file: !1525, line: 297, baseType: !412, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1524, file: !1525, line: 299, baseType: !147, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1524, file: !1525, line: 300, baseType: !150, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1520, file: !1521, line: 21, baseType: !49, size: 32, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1520, file: !1521, line: 22, baseType: !49, size: 32, offset: 160)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1516, file: !1517, line: 28, baseType: !1109, size: 128, align: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1516, file: !1517, line: 29, baseType: !49, size: 32, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1516, file: !1517, line: 30, baseType: !1124, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1516, file: !1517, line: 31, baseType: !1536, size: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1538, line: 325, flags: DIFlagFwdDecl)
!1538 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1516, file: !1517, line: 32, baseType: !49, size: 32, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1516, file: !1517, line: 33, baseType: !1515, size: 64, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1516, file: !1517, line: 35, baseType: !1542, size: 64, offset: 640)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1517, line: 17, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1516, file: !1517, line: 37, baseType: !1545, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !530, line: 18, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1516, file: !1517, line: 38, baseType: !1548, size: 64, offset: 768)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1550, line: 16, flags: DIFlagFwdDecl)
!1550 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1516, file: !1517, line: 39, baseType: !135, size: 32, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1516, file: !1517, line: 40, baseType: !1553, size: 192, offset: 896)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1554, line: 9, size: 192, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1555 = !{!1556, !1557, !1561, !1562}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1553, file: !1554, line: 10, baseType: !220, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1553, file: !1554, line: 11, baseType: !1558, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1554, line: 7, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1553, file: !1554, line: 12, baseType: !49, size: 32, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1553, file: !1554, line: 13, baseType: !1138, size: 32, offset: 160)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1516, file: !1517, line: 42, baseType: !135, size: 32, offset: 1088)
!1564 = !{!1565}
!1565 = !DISubrange(count: -1)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1472, file: !56, line: 951, baseType: !71, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1472, file: !56, line: 952, baseType: !529, size: 32, offset: 160)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1472, file: !56, line: 952, baseType: !529, size: 32, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1472, file: !56, line: 953, baseType: !135, size: 32, offset: 224)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1456, file: !56, line: 1012, baseType: !1571, size: 64, offset: 896)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1574, line: 110, size: 1472, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1592, !1593, !1594, !1595, !1596, !1597, !1708, !1709, !1710, !1711, !1712, !1742, !1743, !1744, !1752}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1573, file: !1574, line: 111, baseType: !220, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1573, file: !1574, line: 112, baseType: !529, size: 32, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1573, file: !1574, line: 113, baseType: !538, size: 32, offset: 96)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1573, file: !1574, line: 114, baseType: !529, size: 32, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1573, file: !1574, line: 115, baseType: !538, size: 32, offset: 160)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1573, file: !1574, line: 116, baseType: !529, size: 32, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1573, file: !1574, line: 117, baseType: !538, size: 32, offset: 224)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1573, file: !1574, line: 118, baseType: !529, size: 32, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1573, file: !1574, line: 119, baseType: !538, size: 32, offset: 288)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1573, file: !1574, line: 120, baseType: !49, size: 32, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1573, file: !1574, line: 121, baseType: !1587, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1588, line: 24, baseType: !1589)
!1588 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1588, line: 24, size: 64, elements: !1590)
!1590 = !{!1591}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1589, file: !1588, line: 24, baseType: !163, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1573, file: !1574, line: 122, baseType: !1587, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1573, file: !1574, line: 123, baseType: !1587, size: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1573, file: !1574, line: 124, baseType: !1587, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1573, file: !1574, line: 125, baseType: !1587, size: 64, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1573, file: !1574, line: 127, baseType: !159, size: 8, offset: 704)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1573, file: !1574, line: 129, baseType: !1598, size: 64, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1600, line: 195, size: 1728, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1601 = !{!1602, !1603, !1606, !1611, !1612, !1615, !1616, !1621, !1622, !1623, !1624, !1627, !1628, !1629, !1631, !1632, !1672, !1693}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1599, file: !1600, line: 196, baseType: !1138, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1599, file: !1600, line: 197, baseType: !1604, size: 32, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1600, line: 28, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !148, line: 104, baseType: !186)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 198, baseType: !1607, size: 192, offset: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 198, size: 192, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1607, file: !1600, line: 199, baseType: !260, size: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1607, file: !1600, line: 200, baseType: !1182, size: 192, align: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1599, file: !1600, line: 205, baseType: !1009, size: 320, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1599, file: !1600, line: 206, baseType: !1613, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1600, line: 206, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1599, file: !1600, line: 207, baseType: !150, size: 64, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 208, baseType: !1617, size: 64, offset: 704)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 208, size: 64, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1617, file: !1600, line: 209, baseType: !850, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1617, file: !1600, line: 210, baseType: !850, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1599, file: !1600, line: 212, baseType: !850, size: 64, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1599, file: !1600, line: 213, baseType: !529, size: 32, offset: 832)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1599, file: !1600, line: 214, baseType: !538, size: 32, offset: 864)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1599, file: !1600, line: 215, baseType: !1625, size: 32, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1600, line: 31, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !148, line: 110, baseType: !153)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1599, file: !1600, line: 216, baseType: !162, size: 16, offset: 928)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1599, file: !1600, line: 217, baseType: !162, size: 16, offset: 944)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1599, file: !1600, line: 221, baseType: !1630, size: 16, offset: 960)
!1630 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1599, file: !1600, line: 228, baseType: !149, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 245, baseType: !1633, size: 320, offset: 1088)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 245, size: 320, elements: !1634)
!1634 = !{!1635, !1664}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1633, file: !1600, line: 246, baseType: !1636, size: 320)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1600, line: 114, size: 320, elements: !1637)
!1637 = !{!1638, !1639, !1651, !1654, !1663}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1636, file: !1600, line: 116, baseType: !149, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1600, line: 117, baseType: !1640, size: 64, offset: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !1600, line: 117, size: 64, elements: !1641)
!1641 = !{!1642, !1650}
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !1600, line: 118, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1640, file: !1600, line: 118, size: 64, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1643, file: !1600, line: 120, baseType: !160, size: 16)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1643, file: !1600, line: 121, baseType: !1647, size: 48, offset: 16)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 6)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1640, file: !1600, line: 127, baseType: !149, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1636, file: !1600, line: 129, baseType: !1652, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1600, line: 102, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1636, file: !1600, line: 130, baseType: !1655, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1600, line: 108, size: 192, elements: !1657)
!1657 = !{!1658, !1659, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1656, file: !1600, line: 109, baseType: !1109, size: 128, align: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1656, file: !1600, line: 110, baseType: !1138, size: 32, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1656, file: !1600, line: 111, baseType: !1661, size: 8, offset: 160)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !148, line: 35, baseType: !1662)
!1662 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1636, file: !1600, line: 131, baseType: !384, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !1600, line: 247, baseType: !1665, size: 320)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !1600, line: 247, size: 320, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1665, file: !1600, line: 248, baseType: !149, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1665, file: !1600, line: 249, baseType: !149, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1665, file: !1600, line: 250, baseType: !1652, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1665, file: !1600, line: 251, baseType: !1655, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1665, file: !1600, line: 252, baseType: !448, size: 64, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 260, baseType: !1673, size: 256, offset: 1408)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 260, size: 256, elements: !1674)
!1674 = !{!1675, !1681}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1673, file: !1600, line: 261, baseType: !1676, size: 256)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1600, line: 134, size: 256, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1676, file: !1600, line: 135, baseType: !150, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1676, file: !1600, line: 136, baseType: !1680, size: 256)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !1504)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !1600, line: 262, baseType: !1682, size: 256)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1673, file: !1600, line: 262, size: 256, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1682, file: !1600, line: 264, baseType: !260, size: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1682, file: !1600, line: 265, baseType: !1686, size: 128, offset: 128)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1687, line: 22, size: 128, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1688 = !{!1689, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1686, file: !1687, line: 23, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1687, line: 23, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1686, file: !1687, line: 24, baseType: !149, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1599, file: !1600, line: 280, baseType: !1694, size: 64, offset: 1664)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1600, line: 176, size: 192, elements: !1696)
!1696 = !{!1697, !1706, !1707}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1695, file: !1600, line: 177, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1600, line: 171, baseType: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!135, !1598, !1702, !1704, !1598}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1653)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1695, file: !1600, line: 178, baseType: !1598, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1695, file: !1600, line: 179, baseType: !1652, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1573, file: !1574, line: 130, baseType: !1598, size: 64, offset: 832)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1573, file: !1574, line: 131, baseType: !1598, size: 64, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1573, file: !1574, line: 132, baseType: !1598, size: 64, offset: 960)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1573, file: !1574, line: 135, baseType: !150, size: 64, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1573, file: !1574, line: 137, baseType: !1713, size: 64, offset: 1088)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1715, line: 14, size: 1088, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1716 = !{!1717, !1718, !1726, !1727, !1728, !1729, !1730, !1731}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1714, file: !1715, line: 15, baseType: !1138, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1714, file: !1715, line: 17, baseType: !1719, size: 320, offset: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1720, line: 22, size: 320, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1721 = !{!1722, !1723, !1724, !1725}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1719, file: !1720, line: 23, baseType: !227, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1719, file: !1720, line: 24, baseType: !182, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1719, file: !1720, line: 26, baseType: !260, size: 128, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1719, file: !1720, line: 28, baseType: !185, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1714, file: !1715, line: 19, baseType: !149, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1714, file: !1715, line: 20, baseType: !220, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1714, file: !1715, line: 23, baseType: !713, size: 128, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1714, file: !1715, line: 24, baseType: !529, size: 32, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1714, file: !1715, line: 29, baseType: !220, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1714, file: !1715, line: 36, baseType: !1732, size: 320, offset: 768)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1733, line: 15, size: 320, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !1733, line: 16, baseType: !227, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1732, file: !1733, line: 18, baseType: !135, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1732, file: !1733, line: 19, baseType: !135, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1732, file: !1733, line: 20, baseType: !135, size: 32, offset: 96)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1732, file: !1733, line: 21, baseType: !135, size: 32, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1732, file: !1733, line: 22, baseType: !149, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !1733, line: 23, baseType: !149, size: 64, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1573, file: !1574, line: 138, baseType: !1545, size: 64, offset: 1152)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1573, file: !1574, line: 139, baseType: !1548, size: 64, offset: 1216)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1573, file: !1574, line: 140, baseType: !1745, size: 64, offset: 1280)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1574, line: 25, size: 64, elements: !1747)
!1747 = !{!1748, !1749, !1750}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1746, file: !1574, line: 26, baseType: !240, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1746, file: !1574, line: 27, baseType: !135, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1746, file: !1574, line: 28, baseType: !1751, offset: 64)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, elements: !1564)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 142, baseType: !1753, size: 128, offset: 1344)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 142, size: 128, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1753, file: !1574, line: 143, baseType: !135, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1753, file: !1574, line: 144, baseType: !1109, size: 128, align: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1456, file: !56, line: 1013, baseType: !1758, size: 256, offset: 960)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !56, line: 970, size: 256, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1758, file: !56, line: 971, baseType: !149, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1758, file: !56, line: 972, baseType: !49, size: 32, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1758, file: !56, line: 973, baseType: !49, size: 32, offset: 96)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1758, file: !56, line: 974, baseType: !49, size: 32, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1758, file: !56, line: 975, baseType: !49, size: 32, offset: 160)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1758, file: !56, line: 976, baseType: !679, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1456, file: !56, line: 1014, baseType: !921, size: 128, offset: 1216)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1456, file: !56, line: 1015, baseType: !523, size: 64, offset: 1344)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1456, file: !56, line: 1016, baseType: !1769, size: 64, offset: 1408)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !56, line: 1914, size: 2112, elements: !1772)
!1772 = !{!1773, !1774, !1778, !1783, !1787, !1815, !1816, !1822, !1835, !1843, !1847, !1848, !2141, !2142, !2146, !2151, !2152, !2156, !2160, !2166, !2167, !2171, !2172, !2178, !2182, !2186, !2192, !2196, !2200, !2204, !2208, !2209, !2215}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1771, file: !56, line: 1915, baseType: !386, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1771, file: !56, line: 1916, baseType: !1775, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!679, !1455, !679, !135}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1771, file: !56, line: 1917, baseType: !1779, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!480, !1455, !448, !351, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1771, file: !56, line: 1918, baseType: !1784, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!480, !1455, !384, !351, !1782}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1771, file: !56, line: 1919, baseType: !1788, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!480, !1791, !1813}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !56, line: 373, size: 384, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1800, !1801, !1802, !1803}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1792, file: !56, line: 374, baseType: !1455, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1792, file: !56, line: 375, baseType: !679, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1792, file: !56, line: 376, baseType: !1797, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1791, !483}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1792, file: !56, line: 377, baseType: !150, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1792, file: !56, line: 378, baseType: !135, size: 32, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1792, file: !56, line: 379, baseType: !160, size: 16, offset: 288)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !56, line: 380, baseType: !1804, size: 64, offset: 320)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1792, file: !56, line: 380, size: 64, elements: !1805)
!1805 = !{!1806, !1809}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1804, file: !56, line: 386, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !56, line: 386, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1804, file: !56, line: 395, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!480, !150}
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !316, line: 17, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1771, file: !56, line: 1920, baseType: !1788, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1771, file: !56, line: 1921, baseType: !1817, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!135, !1791, !1820, !49}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !56, line: 53, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1771, file: !56, line: 1923, baseType: !1823, size: 64, offset: 448)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!135, !1455, !1826}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !56, line: 1858, size: 128, elements: !1828)
!1828 = !{!1829, !1834}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1827, file: !56, line: 1859, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !56, line: 1855, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!1661, !1826, !384, !135, !679, !163, !49}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1827, file: !56, line: 1860, baseType: !679, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1771, file: !56, line: 1924, baseType: !1836, size: 64, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!1839, !1455, !1841}
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1840, line: 59, baseType: !49)
!1840 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !693, line: 31, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1771, file: !56, line: 1925, baseType: !1844, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!483, !1455, !49, !149}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1771, file: !56, line: 1926, baseType: !1844, size: 64, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1771, file: !56, line: 1927, baseType: !1849, size: 64, offset: 704)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!135, !1455, !1852}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !80, line: 625, size: 1344, elements: !1854)
!1854 = !{!1855, !1864, !1865, !1866, !1873, !1874, !1879, !1880, !1885, !1886, !1889, !2134, !2135, !2136, !2137, !2138, !2139}
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !80, line: 628, baseType: !1856, size: 128)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !80, line: 628, size: 128, elements: !1857)
!1857 = !{!1858, !1863}
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !80, line: 629, baseType: !1859, size: 128)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !80, line: 629, size: 128, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1859, file: !80, line: 631, baseType: !149, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1859, file: !80, line: 632, baseType: !149, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1856, file: !80, line: 635, baseType: !1109, size: 128, align: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1853, file: !80, line: 639, baseType: !1428, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1853, file: !80, line: 640, baseType: !319, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !80, line: 646, baseType: !1867, size: 64, offset: 256)
!1867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !80, line: 646, size: 64, elements: !1868)
!1868 = !{!1869, !1872}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1867, file: !80, line: 647, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !80, line: 542, baseType: !149)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1867, file: !80, line: 648, baseType: !1871, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1853, file: !80, line: 666, baseType: !135, size: 32, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1853, file: !80, line: 667, baseType: !1875, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !80, line: 579, size: 320, elements: !1877)
!1877 = !{!1878}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1876, file: !80, line: 580, baseType: !1009, size: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1853, file: !80, line: 670, baseType: !1661, size: 8, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1853, file: !80, line: 681, baseType: !1881, size: 256, offset: 512)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !80, line: 678, size: 256, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1881, file: !80, line: 679, baseType: !1182, size: 192, align: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1881, file: !80, line: 680, baseType: !149, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1853, file: !80, line: 689, baseType: !260, size: 128, offset: 768)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1853, file: !80, line: 691, baseType: !1887, size: 64, offset: 896)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !80, line: 691, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1853, file: !80, line: 694, baseType: !1890, size: 64, offset: 960)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1893, line: 563, size: 1024, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1894 = !{!1895, !1899, !1900, !1904, !1908, !1912, !2098, !2102, !2106, !2110, !2111, !2112, !2116, !2120, !2126, !2130}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1892, file: !1893, line: 564, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1852}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1892, file: !1893, line: 569, baseType: !1896, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1892, file: !1893, line: 571, baseType: !1901, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!135, !1852, !149}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1892, file: !1893, line: 572, baseType: !1905, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!135, !1852}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1892, file: !1893, line: 578, baseType: !1909, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!135, !1852, !149, !149, !149}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1892, file: !1893, line: 580, baseType: !1913, size: 64, offset: 320)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !80, line: 1184, baseType: !49)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1893, line: 512, size: 896, elements: !1919)
!1919 = !{!1920, !1928, !1929, !1936, !1943, !1952, !2091, !2092, !2094, !2096}
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !1893, line: 513, baseType: !1921, size: 320)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1893, line: 513, size: 320, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1921, file: !1893, line: 514, baseType: !1852, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1921, file: !1893, line: 515, baseType: !147, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1921, file: !1893, line: 516, baseType: !149, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1921, file: !1893, line: 517, baseType: !149, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1921, file: !1893, line: 518, baseType: !149, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1918, file: !1893, line: 520, baseType: !79, size: 32, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1918, file: !1893, line: 522, baseType: !1930, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !152, line: 22, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 22, size: 64, elements: !1933)
!1933 = !{!1934}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1932, file: !152, line: 22, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !152, line: 15, baseType: !149)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1918, file: !1893, line: 524, baseType: !1937, size: 64, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !320, line: 372, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 372, size: 64, elements: !1940)
!1940 = !{!1941}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1939, file: !320, line: 372, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !152, line: 16, baseType: !149)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !1893, line: 527, baseType: !1944, size: 64, offset: 512)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1918, file: !1893, line: 527, size: 64, elements: !1945)
!1945 = !{!1946, !1951}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1944, file: !1893, line: 528, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !152, line: 21, baseType: !1948)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 21, size: 64, elements: !1949)
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1948, file: !152, line: 21, baseType: !151, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1944, file: !1893, line: 529, baseType: !1931, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1918, file: !1893, line: 534, baseType: !1953, size: 64, offset: 576)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !80, line: 74, size: 512, align: 128, elements: !1955)
!1955 = !{!1956, !1957, !2085, !2090}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1954, file: !80, line: 75, baseType: !149, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !80, line: 83, baseType: !1958, size: 320, offset: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !80, line: 83, size: 320, elements: !1959)
!1959 = !{!1960, !1981, !1995, !1999, !2084}
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !80, line: 84, baseType: !1961, size: 320)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !80, line: 84, size: 320, elements: !1962)
!1962 = !{!1963, !1974, !1975, !1980}
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !80, line: 90, baseType: !1964, size: 128)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !80, line: 90, size: 128, elements: !1965)
!1965 = !{!1966, !1967, !1972, !1973}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1964, file: !80, line: 91, baseType: !260, size: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !80, line: 94, baseType: !1968, size: 128)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !80, line: 94, size: 128, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1968, file: !80, line: 96, baseType: !150, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1968, file: !80, line: 98, baseType: !49, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1964, file: !80, line: 102, baseType: !260, size: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1964, file: !80, line: 103, baseType: !260, size: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1961, file: !80, line: 106, baseType: !519, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !80, line: 107, baseType: !1976, size: 64, offset: 192)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !80, line: 107, size: 64, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1976, file: !80, line: 108, baseType: !149, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1976, file: !80, line: 109, baseType: !149, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1961, file: !80, line: 117, baseType: !149, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !80, line: 119, baseType: !1982, size: 320)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !80, line: 119, size: 320, elements: !1983)
!1983 = !{!1984, !1985, !1988, !1989, !1990}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1982, file: !80, line: 124, baseType: !149, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1982, file: !80, line: 125, baseType: !1986, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !80, line: 125, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1982, file: !80, line: 126, baseType: !149, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1982, file: !80, line: 127, baseType: !149, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !80, line: 128, baseType: !1991, size: 64, offset: 256)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1982, file: !80, line: 128, size: 64, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1991, file: !80, line: 133, baseType: !149, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1991, file: !80, line: 138, baseType: !220, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !80, line: 141, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !80, line: 141, size: 64, elements: !1997)
!1997 = !{!1998}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1996, file: !80, line: 142, baseType: !149, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !80, line: 144, baseType: !2000, size: 128)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !80, line: 144, size: 128, elements: !2001)
!2001 = !{!2002, !2083}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2000, file: !80, line: 146, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !96, line: 126, size: 1216, elements: !2005)
!2005 = !{!2006, !2016, !2037, !2048, !2049, !2050, !2051, !2065, !2066, !2067}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2004, file: !96, line: 127, baseType: !2007, size: 384)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !96, line: 21, size: 384, elements: !2008)
!2008 = !{!2009, !2010, !2012, !2013, !2014, !2015}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2007, file: !96, line: 22, baseType: !149, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2007, file: !96, line: 23, baseType: !2011, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2007, file: !96, line: 24, baseType: !2011, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2007, file: !96, line: 25, baseType: !149, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2007, file: !96, line: 26, baseType: !149, size: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2007, file: !96, line: 27, baseType: !149, size: 64, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2004, file: !96, line: 128, baseType: !2017, size: 128, offset: 384)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2018, line: 105, size: 128, elements: !2019)
!2018 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2017, file: !2018, line: 110, baseType: !149, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2017, file: !2018, line: 118, baseType: !2022, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2018, line: 95, size: 448, elements: !2024)
!2024 = !{!2025, !2026, !2032, !2033, !2034, !2035, !2036}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2023, file: !2018, line: 96, baseType: !220, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2023, file: !2018, line: 97, baseType: !2027, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2018, line: 60, baseType: !2029)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !2031}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2023, file: !2018, line: 98, baseType: !2027, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2023, file: !2018, line: 99, baseType: !1661, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2023, file: !2018, line: 100, baseType: !1661, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2023, file: !2018, line: 101, baseType: !1109, size: 128, align: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2023, file: !2018, line: 102, baseType: !2031, size: 64, offset: 384)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2004, file: !96, line: 129, baseType: !2038, size: 256, offset: 512)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2039, line: 26, size: 256, elements: !2040)
!2039 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2038, file: !2039, line: 27, baseType: !49, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2038, file: !2039, line: 28, baseType: !2043, size: 192, offset: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2044, line: 43, size: 192, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2043, file: !2044, line: 44, baseType: !227, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2043, file: !2044, line: 45, baseType: !260, size: 128, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2004, file: !96, line: 130, baseType: !95, size: 32, offset: 768)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2004, file: !96, line: 131, baseType: !49, size: 32, offset: 800)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2004, file: !96, line: 132, baseType: !149, size: 64, offset: 832)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2004, file: !96, line: 133, baseType: !2052, size: 64, offset: 896)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2054)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !96, line: 77, size: 192, elements: !2055)
!2055 = !{!2056, !2060, !2061}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2054, file: !96, line: 83, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1953}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2054, file: !96, line: 89, baseType: !1913, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2054, file: !96, line: 100, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!135, !2003, !149, !149, !135}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2004, file: !96, line: 134, baseType: !150, size: 64, offset: 960)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2004, file: !96, line: 135, baseType: !135, size: 32, offset: 1024)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !96, line: 136, baseType: !2068, size: 128, offset: 1088)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !96, line: 136, size: 128, elements: !2069)
!2069 = !{!2070, !2076}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2068, file: !96, line: 137, baseType: !2071, size: 128)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2072, line: 6, size: 128, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2071, file: !2072, line: 7, baseType: !163, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2071, file: !2072, line: 8, baseType: !163, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !96, line: 138, baseType: !2077)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !96, line: 138, elements: !2078)
!2078 = !{!2079, !2081}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2077, file: !96, line: 138, baseType: !2080)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !96, line: 138, elements: !721)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2077, file: !96, line: 138, baseType: !2082)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2071, elements: !1564)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2000, file: !80, line: 147, baseType: !150, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1958, file: !80, line: 161, baseType: !1109, size: 128, align: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !80, line: 164, baseType: !2086, size: 32, offset: 384)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !80, line: 164, size: 32, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2086, file: !80, line: 169, baseType: !240, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2086, file: !80, line: 177, baseType: !49, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1954, file: !80, line: 181, baseType: !240, size: 32, offset: 416)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1918, file: !1893, line: 535, baseType: !1953, size: 64, offset: 640)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1918, file: !1893, line: 541, baseType: !2093, size: 64, offset: 704)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1918, file: !1893, line: 545, baseType: !2095, size: 64, offset: 768)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1918, file: !1893, line: 549, baseType: !2097, size: 64, offset: 832)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !320, line: 520, baseType: !1953)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1892, file: !1893, line: 581, baseType: !2099, size: 64, offset: 384)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!1916, !1917, !49}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1892, file: !1893, line: 582, baseType: !2103, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!1916, !1917, !149, !149}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1892, file: !1893, line: 584, baseType: !2107, size: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!149, !1852}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1892, file: !1893, line: 588, baseType: !1913, size: 64, offset: 576)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1892, file: !1893, line: 591, baseType: !1913, size: 64, offset: 640)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1892, file: !1893, line: 597, baseType: !2113, size: 64, offset: 704)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!135, !1852, !149, !150, !135, !135}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1892, file: !1893, line: 603, baseType: !2117, size: 64, offset: 768)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!384, !1852}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1892, file: !1893, line: 613, baseType: !2121, size: 64, offset: 832)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!135, !1852, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !80, line: 717, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1892, file: !1893, line: 625, baseType: !2127, size: 64, offset: 896)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2124, !1852, !149}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1892, file: !1893, line: 633, baseType: !2131, size: 64, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!1953, !1852, !149}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1853, file: !80, line: 697, baseType: !149, size: 64, offset: 1024)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1853, file: !80, line: 699, baseType: !1455, size: 64, offset: 1088)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1853, file: !80, line: 700, baseType: !150, size: 64, offset: 1152)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1853, file: !80, line: 711, baseType: !220, size: 64, offset: 1216)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1853, file: !80, line: 717, baseType: !2124, size: 64, offset: 1280)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1853, file: !80, line: 722, baseType: !2140, offset: 1344)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !80, line: 570, elements: !721)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1771, file: !56, line: 1928, baseType: !149, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1771, file: !56, line: 1929, baseType: !2143, size: 64, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!135, !523, !1455}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1771, file: !56, line: 1930, baseType: !2147, size: 64, offset: 896)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!135, !1455, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !56, line: 1061, baseType: !150)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1771, file: !56, line: 1931, baseType: !2143, size: 64, offset: 960)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1771, file: !56, line: 1932, baseType: !2153, size: 64, offset: 1024)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!135, !1455, !679, !679, !135}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1771, file: !56, line: 1933, baseType: !2157, size: 64, offset: 1088)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!135, !135, !1455, !135}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !56, line: 1934, baseType: !2161, size: 64, offset: 1152)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!135, !1455, !135, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !56, line: 1063, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1771, file: !56, line: 1935, baseType: !1452, size: 64, offset: 1216)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1771, file: !56, line: 1936, baseType: !2168, size: 64, offset: 1280)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!135, !135}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1771, file: !56, line: 1937, baseType: !2161, size: 64, offset: 1344)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1771, file: !56, line: 1938, baseType: !2173, size: 64, offset: 1408)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!480, !2176, !1455, !1782, !351, !49}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !792, line: 59, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1771, file: !56, line: 1939, baseType: !2179, size: 64, offset: 1472)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!480, !1455, !1782, !2176, !351, !49}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1771, file: !56, line: 1940, baseType: !2183, size: 64, offset: 1536)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !1455}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1771, file: !56, line: 1941, baseType: !2187, size: 64, offset: 1600)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!135, !1455, !135, !2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1771, file: !56, line: 1942, baseType: !2193, size: 64, offset: 1664)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!483, !1455, !135, !679, !679}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1771, file: !56, line: 1944, baseType: !2197, size: 64, offset: 1728)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !790, !1455}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1771, file: !56, line: 1948, baseType: !2201, size: 64, offset: 1792)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!480, !1455, !679, !1455, !679, !351, !49}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1771, file: !56, line: 1950, baseType: !2205, size: 64, offset: 1856)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!679, !1455, !679, !1455, !679, !679, !49}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1771, file: !56, line: 1953, baseType: !2153, size: 64, offset: 1920)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1771, file: !56, line: 1954, baseType: !2210, size: 64, offset: 1984)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!135, !2213, !49}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !56, line: 1911, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1771, file: !56, line: 1955, baseType: !2216, size: 64, offset: 2048)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!135, !2213, !1820, !49}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1456, file: !56, line: 1018, baseType: !163, size: 64, offset: 1472)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1456, file: !56, line: 1020, baseType: !150, size: 64, offset: 1536)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1456, file: !56, line: 1023, baseType: !150, size: 64, offset: 1600)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1456, file: !56, line: 1027, baseType: !2223, size: 64, offset: 1664)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1456, file: !56, line: 1029, baseType: !519, size: 64, offset: 1728)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1456, file: !56, line: 1030, baseType: !2226, size: 32, offset: 1792)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2227, line: 8, baseType: !153)
!2227 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1456, file: !56, line: 1031, baseType: !2226, size: 32, offset: 1824)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1432, file: !80, line: 756, baseType: !149, size: 64, offset: 704)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1432, file: !80, line: 757, baseType: !149, size: 64, offset: 768)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1432, file: !80, line: 760, baseType: !149, size: 64, offset: 832)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1432, file: !80, line: 761, baseType: !149, size: 64, offset: 896)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1432, file: !80, line: 763, baseType: !149, size: 64, offset: 960)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1432, file: !80, line: 764, baseType: !2235, size: 64, offset: 1024)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !320, line: 299, baseType: !2237)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 299, size: 64, elements: !2238)
!2238 = !{!2239}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2237, file: !320, line: 299, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !152, line: 18, baseType: !149)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1432, file: !80, line: 773, baseType: !240, size: 32, offset: 1088)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1432, file: !80, line: 785, baseType: !240, size: 32, offset: 1120)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1432, file: !80, line: 795, baseType: !2244, size: 64, offset: 1152)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !80, line: 726, size: 128, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2245, file: !80, line: 727, baseType: !163, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2245, file: !80, line: 728, baseType: !135, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1432, file: !80, line: 801, baseType: !149, size: 64, offset: 1216)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1432, file: !80, line: 804, baseType: !220, size: 64, offset: 1280)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1432, file: !80, line: 806, baseType: !135, size: 32, offset: 1344)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1432, file: !80, line: 808, baseType: !412, size: 32, offset: 1376)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1432, file: !80, line: 823, baseType: !1009, size: 320, offset: 1408)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1432, file: !80, line: 825, baseType: !260, size: 128, offset: 1728)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1432, file: !80, line: 845, baseType: !135, size: 32, offset: 1856)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1432, file: !80, line: 849, baseType: !149, size: 64, offset: 1920)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1432, file: !80, line: 850, baseType: !149, size: 64, offset: 1984)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1432, file: !80, line: 852, baseType: !149, size: 64, offset: 2048)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1432, file: !80, line: 853, baseType: !149, size: 64, offset: 2112)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1432, file: !80, line: 854, baseType: !222, size: 64, offset: 2176)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1432, file: !80, line: 855, baseType: !149, size: 64, offset: 2240)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1432, file: !80, line: 856, baseType: !149, size: 64, offset: 2304)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1432, file: !80, line: 857, baseType: !149, size: 64, offset: 2368)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1432, file: !80, line: 858, baseType: !149, size: 64, offset: 2432)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1432, file: !80, line: 865, baseType: !569, size: 32, offset: 2496)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1432, file: !80, line: 867, baseType: !412, size: 32, offset: 2528)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1432, file: !80, line: 869, baseType: !149, size: 64, offset: 2560)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1432, file: !80, line: 869, baseType: !149, size: 64, offset: 2624)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1432, file: !80, line: 869, baseType: !149, size: 64, offset: 2688)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1432, file: !80, line: 869, baseType: !149, size: 64, offset: 2752)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1432, file: !80, line: 870, baseType: !149, size: 64, offset: 2816)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1432, file: !80, line: 870, baseType: !149, size: 64, offset: 2880)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1432, file: !80, line: 870, baseType: !149, size: 64, offset: 2944)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1432, file: !80, line: 871, baseType: !149, size: 64, offset: 3008)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1432, file: !80, line: 871, baseType: !149, size: 64, offset: 3072)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1432, file: !80, line: 871, baseType: !149, size: 64, offset: 3136)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1432, file: !80, line: 871, baseType: !149, size: 64, offset: 3200)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1432, file: !80, line: 873, baseType: !2279, size: 3328, offset: 3264)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 3328, elements: !2280)
!2280 = !{!2281}
!2281 = !DISubrange(count: 52)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1432, file: !80, line: 875, baseType: !2283, size: 1280, offset: 6592)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1719, size: 1280, elements: !1504)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1432, file: !80, line: 877, baseType: !2285, size: 64, offset: 7872)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !80, line: 877, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1432, file: !80, line: 880, baseType: !2288, size: 1088, offset: 7936)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2289, line: 72, baseType: !2290)
!2289 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2289, line: 23, size: 1088, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2299, !2300, !2301, !2302, !2327, !2328, !2329}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2290, file: !2289, line: 28, baseType: !163, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2290, file: !2289, line: 38, baseType: !222, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2290, file: !2289, line: 40, baseType: !149, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2290, file: !2289, line: 43, baseType: !1009, size: 320, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2290, file: !2289, line: 44, baseType: !2297, size: 64, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2289, line: 44, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2290, file: !2289, line: 48, baseType: !149, size: 64, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2290, file: !2289, line: 59, baseType: !216, size: 256, offset: 640)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2290, file: !2289, line: 60, baseType: !150, size: 64, offset: 896)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2290, file: !2289, line: 61, baseType: !2303, size: 64, offset: 960)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2305)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2306, line: 13, size: 1216, elements: !2307)
!2306 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2305, file: !2306, line: 14, baseType: !150, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2305, file: !2306, line: 15, baseType: !149, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2305, file: !2306, line: 17, baseType: !149, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2305, file: !2306, line: 17, baseType: !149, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2305, file: !2306, line: 18, baseType: !149, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2305, file: !2306, line: 18, baseType: !149, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2305, file: !2306, line: 19, baseType: !325, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2305, file: !2306, line: 21, baseType: !483, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2305, file: !2306, line: 23, baseType: !483, size: 64, offset: 512)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2305, file: !2306, line: 24, baseType: !483, size: 64, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2305, file: !2306, line: 25, baseType: !483, size: 64, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2305, file: !2306, line: 26, baseType: !483, size: 64, offset: 704)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2305, file: !2306, line: 27, baseType: !483, size: 64, offset: 768)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2305, file: !2306, line: 28, baseType: !483, size: 64, offset: 832)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2305, file: !2306, line: 29, baseType: !483, size: 64, offset: 896)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2305, file: !2306, line: 30, baseType: !483, size: 64, offset: 960)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2305, file: !2306, line: 31, baseType: !483, size: 64, offset: 1024)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2305, file: !2306, line: 32, baseType: !483, size: 64, offset: 1088)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2305, file: !2306, line: 33, baseType: !483, size: 64, offset: 1152)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2290, file: !2289, line: 63, baseType: !240, size: 32, offset: 1024)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2290, file: !2289, line: 69, baseType: !160, size: 16, offset: 1056)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2290, file: !2289, line: 70, baseType: !2330, size: 16, offset: 1072)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !154, line: 18, baseType: !2331)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !156, line: 23, baseType: !1630)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1432, file: !80, line: 882, baseType: !149, size: 64, offset: 9024)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1432, file: !80, line: 885, baseType: !412, size: 32, offset: 9088)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1432, file: !80, line: 886, baseType: !2335, size: 64, offset: 9152)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !80, line: 732, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1432, file: !80, line: 901, baseType: !1545, size: 64, offset: 9216)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1432, file: !80, line: 904, baseType: !1455, size: 64, offset: 9280)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1432, file: !80, line: 906, baseType: !2340, size: 64, offset: 9344)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !80, line: 906, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1432, file: !80, line: 930, baseType: !240, size: 32, offset: 9408)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1432, file: !80, line: 933, baseType: !240, size: 32, offset: 9440)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1432, file: !80, line: 935, baseType: !2345, size: 64, offset: 9472)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !110, line: 103, size: 64, elements: !2346)
!2346 = !{!2347}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2345, file: !110, line: 104, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !110, line: 101, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1432, file: !80, line: 940, baseType: !220, size: 64, offset: 9536)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1432, file: !80, line: 942, baseType: !2352, size: 256, offset: 9600)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2353, line: 98, size: 256, elements: !2354)
!2353 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2352, file: !2353, line: 99, baseType: !220, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2352, file: !2353, line: 100, baseType: !260, size: 128, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2352, file: !2353, line: 101, baseType: !2358, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2353, line: 21, baseType: !2359)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2362}
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1429, file: !80, line: 986, baseType: !2364, offset: 10240)
!2364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, elements: !1564)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1125, file: !792, line: 882, baseType: !1428, size: 64, offset: 9792)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1125, file: !792, line: 884, baseType: !135, size: 32, offset: 9856)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1125, file: !792, line: 885, baseType: !135, size: 32, offset: 9888)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1125, file: !792, line: 886, baseType: !135, size: 32, offset: 9920)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1125, file: !792, line: 888, baseType: !135, size: 32, offset: 9952)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1125, file: !792, line: 890, baseType: !149, size: 64, offset: 9984)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1125, file: !792, line: 893, baseType: !49, size: 32, offset: 10048)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1125, file: !792, line: 896, baseType: !49, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1125, file: !792, line: 897, baseType: !49, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1125, file: !792, line: 898, baseType: !49, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1125, file: !792, line: 899, baseType: !49, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1125, file: !792, line: 919, baseType: !49, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1125, file: !792, line: 922, baseType: !49, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1125, file: !792, line: 923, baseType: !49, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1125, file: !792, line: 925, baseType: !49, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1125, file: !792, line: 939, baseType: !49, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1125, file: !792, line: 941, baseType: !49, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1125, file: !792, line: 944, baseType: !49, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1125, file: !792, line: 956, baseType: !49, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1125, file: !792, line: 962, baseType: !49, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1125, file: !792, line: 966, baseType: !49, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1125, file: !792, line: 969, baseType: !149, size: 64, offset: 10176)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1125, file: !792, line: 971, baseType: !2388, size: 448, offset: 10240)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !104, line: 25, size: 448, elements: !2389)
!2389 = !{!2390, !2391, !2396}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2388, file: !104, line: 26, baseType: !149, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2388, file: !104, line: 27, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!483, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2388, file: !104, line: 28, baseType: !2397, size: 320, offset: 128)
!2397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2388, file: !104, line: 28, size: 320, elements: !2398)
!2398 = !{!2399, !2408, !2433}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2397, file: !104, line: 37, baseType: !2400, size: 320)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2397, file: !104, line: 30, size: 320, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2407}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2400, file: !104, line: 31, baseType: !181, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2400, file: !104, line: 32, baseType: !153, size: 32, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2400, file: !104, line: 33, baseType: !153, size: 32, offset: 96)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2400, file: !104, line: 34, baseType: !153, size: 32, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2400, file: !104, line: 35, baseType: !163, size: 64, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2400, file: !104, line: 36, baseType: !181, size: 64, offset: 256)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2397, file: !104, line: 47, baseType: !2409, size: 192)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2397, file: !104, line: 39, size: 192, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2432}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2409, file: !104, line: 40, baseType: !1299, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2409, file: !104, line: 41, baseType: !103, size: 32, offset: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, scope: !2409, file: !104, line: 42, baseType: !2414, size: 64, offset: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2409, file: !104, line: 42, size: 64, elements: !2415)
!2415 = !{!2416, !2424}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2414, file: !104, line: 43, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2419, line: 7, size: 128, elements: !2420)
!2419 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2420 = !{!2421, !2423}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2418, file: !2419, line: 8, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !353, line: 93, baseType: !184)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2418, file: !2419, line: 9, baseType: !184, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2414, file: !104, line: 44, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2427, line: 7, size: 64, elements: !2428)
!2427 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2428 = !{!2429, !2431}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2426, file: !2427, line: 8, baseType: !2430, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2427, line: 5, baseType: !186)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2426, file: !2427, line: 9, baseType: !186, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2409, file: !104, line: 46, baseType: !163, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2397, file: !104, line: 55, baseType: !2434, size: 256)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2397, file: !104, line: 49, size: 256, elements: !2435)
!2435 = !{!2436, !2439, !2440, !2441, !2442}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2434, file: !104, line: 50, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !104, line: 14, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2434, file: !104, line: 51, baseType: !135, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2434, file: !104, line: 52, baseType: !135, size: 32, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2434, file: !104, line: 53, baseType: !149, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2434, file: !104, line: 54, baseType: !149, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1125, file: !792, line: 973, baseType: !2444, size: 32, offset: 10688)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !148, line: 27, baseType: !2445)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !353, line: 28, baseType: !135)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1125, file: !792, line: 974, baseType: !2444, size: 32, offset: 10720)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1125, file: !792, line: 978, baseType: !149, size: 64, offset: 10752)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1125, file: !792, line: 987, baseType: !1124, size: 64, offset: 10816)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1125, file: !792, line: 990, baseType: !1124, size: 64, offset: 10880)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1125, file: !792, line: 995, baseType: !260, size: 128, offset: 10944)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1125, file: !792, line: 996, baseType: !260, size: 128, offset: 11072)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1125, file: !792, line: 997, baseType: !1124, size: 64, offset: 11200)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1125, file: !792, line: 1005, baseType: !260, size: 128, offset: 11264)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1125, file: !792, line: 1006, baseType: !260, size: 128, offset: 11392)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1125, file: !792, line: 1009, baseType: !1496, size: 64, offset: 11520)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1125, file: !792, line: 1010, baseType: !2457, size: 512, offset: 11584)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 512, elements: !1504)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1125, file: !792, line: 1011, baseType: !260, size: 128, offset: 12096)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1125, file: !792, line: 1012, baseType: !260, size: 128, offset: 12224)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1125, file: !792, line: 1014, baseType: !2461, size: 64, offset: 12352)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1125, file: !792, line: 1017, baseType: !784, size: 64, offset: 12416)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1125, file: !792, line: 1020, baseType: !784, size: 64, offset: 12480)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1125, file: !792, line: 1023, baseType: !150, size: 64, offset: 12544)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1125, file: !792, line: 1025, baseType: !163, size: 64, offset: 12608)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1125, file: !792, line: 1026, baseType: !163, size: 64, offset: 12672)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1125, file: !792, line: 1031, baseType: !163, size: 64, offset: 12736)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1125, file: !792, line: 1032, baseType: !2469, size: 192, offset: 12800)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !792, line: 324, size: 192, elements: !2470)
!2470 = !{!2471, !2472, !2473}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2469, file: !792, line: 326, baseType: !163, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2469, file: !792, line: 327, baseType: !163, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2469, file: !792, line: 328, baseType: !227, size: 32, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1125, file: !792, line: 1041, baseType: !149, size: 64, offset: 12992)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1125, file: !792, line: 1042, baseType: !149, size: 64, offset: 13056)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1125, file: !792, line: 1045, baseType: !163, size: 64, offset: 13120)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1125, file: !792, line: 1048, baseType: !163, size: 64, offset: 13184)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1125, file: !792, line: 1051, baseType: !149, size: 64, offset: 13248)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1125, file: !792, line: 1052, baseType: !149, size: 64, offset: 13312)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1125, file: !792, line: 1055, baseType: !2481, size: 640, offset: 13376)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2482, line: 132, size: 640, elements: !2483)
!2482 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2483 = !{!2484, !2490, !2491}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2481, file: !2482, line: 133, baseType: !2485, size: 576)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2486, size: 576, elements: !449)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2482, line: 117, size: 192, elements: !2487)
!2487 = !{!2488, !2489}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2486, file: !2482, line: 118, baseType: !163, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2486, file: !2482, line: 119, baseType: !1308, size: 128, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2481, file: !2482, line: 134, baseType: !49, size: 32, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2481, file: !2482, line: 135, baseType: !49, size: 32, offset: 608)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1125, file: !792, line: 1058, baseType: !2493, size: 448, offset: 14016)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2482, line: 144, size: 448, elements: !2494)
!2494 = !{!2495, !2496, !2497}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2493, file: !2482, line: 145, baseType: !1109, size: 128, align: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2493, file: !2482, line: 146, baseType: !216, size: 256, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2493, file: !2482, line: 147, baseType: !49, size: 32, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1125, file: !792, line: 1064, baseType: !1571, size: 64, offset: 14464)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1125, file: !792, line: 1067, baseType: !1571, size: 64, offset: 14528)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1125, file: !792, line: 1070, baseType: !1571, size: 64, offset: 14592)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1125, file: !792, line: 1074, baseType: !1598, size: 64, offset: 14656)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1125, file: !792, line: 1084, baseType: !40, size: 128, offset: 14720)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1125, file: !792, line: 1086, baseType: !2504, size: 64, offset: 14848)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !792, line: 55, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1125, file: !792, line: 1089, baseType: !2507, size: 64, offset: 14912)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2508, line: 12, size: 64, elements: !2509)
!2508 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2509 = !{!2510}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2507, file: !2508, line: 13, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2508, line: 8, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1125, file: !792, line: 1090, baseType: !2514, size: 128, offset: 14976)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2515, line: 13, size: 128, elements: !2516)
!2515 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2516 = !{!2517}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2514, file: !2515, line: 14, baseType: !260, size: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1125, file: !792, line: 1097, baseType: !2519, size: 64, offset: 15104)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !792, line: 50, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1125, file: !792, line: 1100, baseType: !2522, size: 64, offset: 15168)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !792, line: 1100, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1125, file: !792, line: 1103, baseType: !2525, size: 64, offset: 15232)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !792, line: 53, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1125, file: !792, line: 1107, baseType: !2528, size: 64, offset: 15296)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2530, line: 31, size: 576, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2531 = !{!2532, !2533, !2536, !2539, !2542, !2543, !2546, !2549, !2550}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2529, file: !2530, line: 32, baseType: !1138, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2529, file: !2530, line: 33, baseType: !2534, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2530, line: 9, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2529, file: !2530, line: 34, baseType: !2537, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2530, line: 10, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2529, file: !2530, line: 35, baseType: !2540, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2530, line: 8, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2529, file: !2530, line: 36, baseType: !1515, size: 64, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2529, file: !2530, line: 37, baseType: !2544, size: 64, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1600, line: 34, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2529, file: !2530, line: 38, baseType: !2547, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2530, line: 38, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2529, file: !2530, line: 39, baseType: !2547, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2529, file: !2530, line: 40, baseType: !2551, size: 64, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2530, line: 12, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1125, file: !792, line: 1110, baseType: !2554, size: 64, offset: 15360)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2556, line: 93, size: 8768, elements: !2557)
!2556 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2607, !2616, !2617, !2619, !2620, !2621, !2624, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2662, !2663, !2670, !2680, !2683, !2684, !2687, !2688, !2689, !2690, !2691, !2692}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2555, file: !2556, line: 94, baseType: !1138, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2555, file: !2556, line: 95, baseType: !240, size: 32, offset: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2555, file: !2556, line: 96, baseType: !135, size: 32, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2555, file: !2556, line: 97, baseType: !135, size: 32, offset: 96)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2555, file: !2556, line: 98, baseType: !260, size: 128, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2555, file: !2556, line: 100, baseType: !1102, size: 192, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2555, file: !2556, line: 103, baseType: !1124, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2555, file: !2556, line: 106, baseType: !2566, size: 192, offset: 512)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1550, line: 32, size: 192, elements: !2567)
!2567 = !{!2568, !2569}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2566, file: !1550, line: 33, baseType: !260, size: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2566, file: !1550, line: 34, baseType: !2570, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2571, line: 25, baseType: !2572)
!2571 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2571, line: 23, size: 64, elements: !2573)
!2573 = !{!2574}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2572, file: !2571, line: 24, baseType: !1379, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2555, file: !2556, line: 109, baseType: !709, size: 64, offset: 704)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2555, file: !2556, line: 112, baseType: !135, size: 32, offset: 768)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2555, file: !2556, line: 114, baseType: !135, size: 32, offset: 800)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2555, file: !2556, line: 115, baseType: !1124, size: 64, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2555, file: !2556, line: 118, baseType: !135, size: 32, offset: 896)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2555, file: !2556, line: 119, baseType: !49, size: 32, offset: 928)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2555, file: !2556, line: 121, baseType: !2582, size: 64, offset: 960)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2556, line: 80, size: 448, elements: !2584)
!2584 = !{!2585, !2586, !2592}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2583, file: !2556, line: 81, baseType: !240, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2583, file: !2556, line: 82, baseType: !2587, size: 128, offset: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2556, line: 75, size: 128, elements: !2588)
!2588 = !{!2589, !2590}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2587, file: !2556, line: 76, baseType: !1124, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2587, file: !2556, line: 77, baseType: !2591, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2583, file: !2556, line: 83, baseType: !2038, size: 256, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2555, file: !2556, line: 132, baseType: !49, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2555, file: !2556, line: 133, baseType: !49, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2555, file: !2556, line: 138, baseType: !49, size: 32, offset: 1056)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2555, file: !2556, line: 139, baseType: !260, size: 128, offset: 1088)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2555, file: !2556, line: 142, baseType: !1252, size: 512, offset: 1216)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2555, file: !2556, line: 143, baseType: !1260, size: 64, offset: 1728)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2555, file: !2556, line: 150, baseType: !2600, size: 256, offset: 1792)
!2600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2601, size: 256, elements: !2605)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2556, line: 38, size: 128, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2601, file: !2556, line: 39, baseType: !163, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2601, file: !2556, line: 40, baseType: !163, size: 64, offset: 64)
!2605 = !{!2606}
!2606 = !DISubrange(count: 2)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2555, file: !2556, line: 156, baseType: !2608, size: 192, offset: 2048)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2556, line: 66, size: 192, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2608, file: !2556, line: 67, baseType: !2611, size: 192)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2556, line: 47, size: 192, elements: !2612)
!2612 = !{!2613, !2614, !2615}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2611, file: !2556, line: 48, baseType: !222, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2611, file: !2556, line: 49, baseType: !222, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2611, file: !2556, line: 50, baseType: !222, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2555, file: !2556, line: 160, baseType: !2481, size: 640, offset: 2240)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2555, file: !2556, line: 163, baseType: !2618, size: 256, offset: 2880)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1496, size: 256, elements: !1504)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2555, file: !2556, line: 169, baseType: !1496, size: 64, offset: 3136)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2555, file: !2556, line: 172, baseType: !135, size: 32, offset: 3200)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2555, file: !2556, line: 174, baseType: !2622, size: 64, offset: 3264)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2556, line: 174, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2555, file: !2556, line: 185, baseType: !2625, size: 64, offset: 3328)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !565, line: 860, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 853, size: 64, elements: !2627)
!2627 = !{!2628, !2629}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2626, file: !565, line: 858, baseType: !564, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2626, file: !565, line: 859, baseType: !412, size: 32, offset: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2555, file: !2556, line: 186, baseType: !163, size: 64, offset: 3392)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2555, file: !2556, line: 186, baseType: !163, size: 64, offset: 3456)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2555, file: !2556, line: 186, baseType: !163, size: 64, offset: 3520)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2555, file: !2556, line: 186, baseType: !163, size: 64, offset: 3584)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2555, file: !2556, line: 187, baseType: !163, size: 64, offset: 3648)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2555, file: !2556, line: 188, baseType: !163, size: 64, offset: 3712)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2555, file: !2556, line: 189, baseType: !2469, size: 192, offset: 3776)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2555, file: !2556, line: 190, baseType: !149, size: 64, offset: 3968)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2555, file: !2556, line: 190, baseType: !149, size: 64, offset: 4032)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2555, file: !2556, line: 190, baseType: !149, size: 64, offset: 4096)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2555, file: !2556, line: 190, baseType: !149, size: 64, offset: 4160)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2555, file: !2556, line: 191, baseType: !149, size: 64, offset: 4224)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2555, file: !2556, line: 191, baseType: !149, size: 64, offset: 4288)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2555, file: !2556, line: 191, baseType: !149, size: 64, offset: 4352)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2555, file: !2556, line: 191, baseType: !149, size: 64, offset: 4416)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2555, file: !2556, line: 192, baseType: !149, size: 64, offset: 4480)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2555, file: !2556, line: 192, baseType: !149, size: 64, offset: 4544)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2555, file: !2556, line: 192, baseType: !149, size: 64, offset: 4608)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2555, file: !2556, line: 192, baseType: !149, size: 64, offset: 4672)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2555, file: !2556, line: 193, baseType: !149, size: 64, offset: 4736)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2555, file: !2556, line: 193, baseType: !149, size: 64, offset: 4800)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2555, file: !2556, line: 194, baseType: !2652, size: 448, offset: 4864)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2653, line: 12, size: 448, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2652, file: !2653, line: 15, baseType: !163, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2652, file: !2653, line: 17, baseType: !163, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2652, file: !2653, line: 19, baseType: !163, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2652, file: !2653, line: 21, baseType: !163, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2652, file: !2653, line: 29, baseType: !163, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2652, file: !2653, line: 35, baseType: !163, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2652, file: !2653, line: 44, baseType: !163, size: 64, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2555, file: !2556, line: 202, baseType: !165, size: 64, offset: 5312)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2555, file: !2556, line: 213, baseType: !2664, size: 2048, offset: 5376)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2665, size: 2048, elements: !41)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2666, line: 43, size: 128, elements: !2667)
!2666 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2667 = !{!2668, !2669}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2665, file: !2666, line: 44, baseType: !354, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2665, file: !2666, line: 45, baseType: !354, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2555, file: !2556, line: 216, baseType: !2671, size: 448, offset: 7424)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2556, line: 30, size: 448, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2671, file: !2556, line: 31, baseType: !135, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2671, file: !2556, line: 32, baseType: !483, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2671, file: !2556, line: 33, baseType: !149, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2671, file: !2556, line: 34, baseType: !163, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2671, file: !2556, line: 34, baseType: !163, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2671, file: !2556, line: 35, baseType: !149, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2671, file: !2556, line: 35, baseType: !149, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2555, file: !2556, line: 219, baseType: !2681, size: 64, offset: 7872)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2556, line: 219, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2555, file: !2556, line: 222, baseType: !49, size: 32, offset: 7936)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2555, file: !2556, line: 223, baseType: !2685, size: 64, offset: 8000)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2556, line: 223, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2555, file: !2556, line: 230, baseType: !1661, size: 8, offset: 8064)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2555, file: !2556, line: 231, baseType: !1630, size: 16, offset: 8080)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2555, file: !2556, line: 232, baseType: !1630, size: 16, offset: 8096)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2555, file: !2556, line: 234, baseType: !1428, size: 64, offset: 8128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2555, file: !2556, line: 237, baseType: !216, size: 256, offset: 8192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2555, file: !2556, line: 243, baseType: !1009, size: 320, offset: 8448)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1125, file: !792, line: 1111, baseType: !2694, size: 64, offset: 15424)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2556, line: 20, size: 16640, elements: !2696)
!2696 = !{!2697, !2698, !2699, !2700}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2695, file: !2556, line: 21, baseType: !412, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2695, file: !2556, line: 22, baseType: !1138, size: 32, offset: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2695, file: !2556, line: 23, baseType: !1102, size: 192, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2695, file: !2556, line: 24, baseType: !2701, size: 16384, offset: 256)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 16384, elements: !453)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1550, line: 51, size: 256, elements: !2703)
!2703 = !{!2704}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2702, file: !1550, line: 52, baseType: !2705, size: 256)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1550, line: 37, size: 256, elements: !2706)
!2706 = !{!2707, !2714, !2715, !2721}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2705, file: !1550, line: 39, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2709, line: 83, baseType: !2710)
!2709 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2709, line: 82, baseType: !2712)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{null, !135}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2705, file: !1550, line: 40, baseType: !149, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2705, file: !1550, line: 46, baseType: !2716, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2709, line: 86, baseType: !2717)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2709, line: 85, baseType: !2719)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2705, file: !1550, line: 48, baseType: !2570, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1125, file: !792, line: 1112, baseType: !2570, size: 64, offset: 15488)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1125, file: !792, line: 1113, baseType: !2570, size: 64, offset: 15552)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1125, file: !792, line: 1115, baseType: !2570, size: 64, offset: 15616)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1125, file: !792, line: 1116, baseType: !2566, size: 192, offset: 15680)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1125, file: !792, line: 1117, baseType: !149, size: 64, offset: 15872)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1125, file: !792, line: 1118, baseType: !351, size: 64, offset: 15936)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1125, file: !792, line: 1119, baseType: !49, size: 32, offset: 16000)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1125, file: !792, line: 1121, baseType: !1112, size: 64, offset: 16064)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1125, file: !792, line: 1125, baseType: !2731, size: 64, offset: 16128)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !792, line: 43, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1125, file: !792, line: 1127, baseType: !529, size: 32, offset: 16192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1125, file: !792, line: 1128, baseType: !49, size: 32, offset: 16224)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1125, file: !792, line: 1130, baseType: !2736, size: 128, offset: 16256)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2737, line: 37, size: 128, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2738 = !{!2739, !2740, !2741}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2736, file: !2737, line: 38, baseType: !135, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2736, file: !2737, line: 39, baseType: !240, size: 32, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2736, file: !2737, line: 40, baseType: !2742, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2737, line: 24, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1125, file: !792, line: 1131, baseType: !2745, size: 256, offset: 16384)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2746, line: 12, size: 256, elements: !2747)
!2746 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2747 = !{!2748, !2749, !2750, !2751}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2745, file: !2746, line: 13, baseType: !448, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2745, file: !2746, line: 14, baseType: !149, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2745, file: !2746, line: 15, baseType: !149, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2745, file: !2746, line: 16, baseType: !1661, size: 8, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1125, file: !792, line: 1134, baseType: !163, size: 64, offset: 16640)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1125, file: !792, line: 1135, baseType: !163, size: 64, offset: 16704)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1125, file: !792, line: 1138, baseType: !412, size: 32, offset: 16768)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1125, file: !792, line: 1141, baseType: !227, size: 32, offset: 16800)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1125, file: !792, line: 1143, baseType: !2757, size: 64, offset: 16832)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !792, line: 735, size: 64, elements: !2758)
!2758 = !{!2759}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2757, file: !792, line: 736, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1125, file: !792, line: 1147, baseType: !1311, size: 128, offset: 16896)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1125, file: !792, line: 1149, baseType: !1124, size: 64, offset: 17024)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1125, file: !792, line: 1151, baseType: !2764, size: 64, offset: 17088)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !792, line: 1151, flags: DIFlagFwdDecl)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1125, file: !792, line: 1188, baseType: !150, size: 64, offset: 17152)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1125, file: !792, line: 1191, baseType: !2768, size: 64, offset: 17216)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !792, line: 44, flags: DIFlagFwdDecl)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1125, file: !792, line: 1194, baseType: !2771, size: 64, offset: 17280)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !792, line: 45, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1125, file: !792, line: 1197, baseType: !2774, size: 64, offset: 17344)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !792, line: 61, flags: DIFlagFwdDecl)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1125, file: !792, line: 1199, baseType: !2777, size: 64, offset: 17408)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2779, line: 99, size: 128, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2780 = !{!2781, !2782, !2783}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2778, file: !2779, line: 100, baseType: !220, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2778, file: !2779, line: 101, baseType: !240, size: 32, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2778, file: !2779, line: 103, baseType: !162, size: 16, offset: 96)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1125, file: !792, line: 1202, baseType: !2785, size: 64, offset: 17472)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !792, line: 48, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1125, file: !792, line: 1205, baseType: !149, size: 64, offset: 17536)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1125, file: !792, line: 1206, baseType: !2789, size: 64, offset: 17600)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1550, line: 14, baseType: !2791)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1550, line: 12, size: 384, elements: !2792)
!2792 = !{!2793}
!2793 = !DIDerivedType(tag: DW_TAG_member, scope: !2791, file: !1550, line: 13, baseType: !2794, size: 384)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2791, file: !1550, line: 13, size: 384, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2794, file: !1550, line: 13, baseType: !135, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2794, file: !1550, line: 13, baseType: !135, size: 32, offset: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2794, file: !1550, line: 13, baseType: !135, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2794, file: !1550, line: 13, baseType: !2800, size: 256, offset: 128)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2801, line: 37, size: 256, elements: !2802)
!2801 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2802 = !{!2803, !2808, !2821, !2827, !2836, !2863, !2868}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2800, file: !2801, line: 42, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2800, file: !2801, line: 39, size: 64, elements: !2805)
!2805 = !{!2806, !2807}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2804, file: !2801, line: 40, baseType: !2445, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2804, file: !2801, line: 41, baseType: !535, size: 32, offset: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2800, file: !2801, line: 50, baseType: !2809, size: 192)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2800, file: !2801, line: 45, size: 192, elements: !2810)
!2810 = !{!2811, !2813, !2814, !2820}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2809, file: !2801, line: 46, baseType: !2812, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !353, line: 95, baseType: !135)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2809, file: !2801, line: 47, baseType: !135, size: 32, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2809, file: !2801, line: 48, baseType: !2815, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2801, line: 11, baseType: !2816)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2801, line: 8, size: 64, elements: !2817)
!2817 = !{!2818, !2819}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2816, file: !2801, line: 9, baseType: !135, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2816, file: !2801, line: 10, baseType: !150, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2809, file: !2801, line: 49, baseType: !135, size: 32, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2800, file: !2801, line: 57, baseType: !2822, size: 128)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2800, file: !2801, line: 53, size: 128, elements: !2823)
!2823 = !{!2824, !2825, !2826}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2822, file: !2801, line: 54, baseType: !2445, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2822, file: !2801, line: 55, baseType: !535, size: 32, offset: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2822, file: !2801, line: 56, baseType: !2815, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2800, file: !2801, line: 66, baseType: !2828, size: 256)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2800, file: !2801, line: 60, size: 256, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2835}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2828, file: !2801, line: 61, baseType: !2445, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2828, file: !2801, line: 62, baseType: !535, size: 32, offset: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2828, file: !2801, line: 63, baseType: !135, size: 32, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2828, file: !2801, line: 64, baseType: !2834, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !353, line: 94, baseType: !482)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2828, file: !2801, line: 65, baseType: !2834, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2800, file: !2801, line: 105, baseType: !2837, size: 256)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2800, file: !2801, line: 69, size: 256, elements: !2838)
!2838 = !{!2839, !2840}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2837, file: !2801, line: 70, baseType: !150, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !2801, line: 79, baseType: !2841, size: 192, offset: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !2801, line: 79, size: 192, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2852, !2857}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2841, file: !2801, line: 81, baseType: !135, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2841, file: !2801, line: 86, baseType: !1630, size: 16)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2841, file: !2801, line: 92, baseType: !2846, size: 192)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2801, line: 88, size: 192, elements: !2847)
!2847 = !{!2848, !2850, !2851}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2846, file: !2801, line: 89, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1295)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2846, file: !2801, line: 90, baseType: !150, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2846, file: !2801, line: 91, baseType: !150, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2841, file: !2801, line: 97, baseType: !2853, size: 96)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2801, line: 94, size: 96, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2853, file: !2801, line: 95, baseType: !2849, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2853, file: !2801, line: 96, baseType: !155, size: 32, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2841, file: !2801, line: 103, baseType: !2858, size: 128)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2801, line: 99, size: 128, elements: !2859)
!2859 = !{!2860, !2861, !2862}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2858, file: !2801, line: 100, baseType: !149, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2858, file: !2801, line: 101, baseType: !155, size: 32, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2858, file: !2801, line: 102, baseType: !155, size: 32, offset: 96)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2800, file: !2801, line: 111, baseType: !2864, size: 128)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2800, file: !2801, line: 108, size: 128, elements: !2865)
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2864, file: !2801, line: 109, baseType: !483, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2864, file: !2801, line: 110, baseType: !135, size: 32, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2800, file: !2801, line: 118, baseType: !2869, size: 128)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2800, file: !2801, line: 114, size: 128, elements: !2870)
!2870 = !{!2871, !2872, !2873}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2869, file: !2801, line: 115, baseType: !150, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2869, file: !2801, line: 116, baseType: !135, size: 32, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2869, file: !2801, line: 117, baseType: !49, size: 32, offset: 96)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1125, file: !792, line: 1208, baseType: !2652, size: 448, offset: 17664)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1125, file: !792, line: 1215, baseType: !163, size: 64, offset: 18112)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1125, file: !792, line: 1217, baseType: !163, size: 64, offset: 18176)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1125, file: !792, line: 1219, baseType: !163, size: 64, offset: 18240)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1125, file: !792, line: 1223, baseType: !2879, size: 64, offset: 18304)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2880, line: 99, baseType: !2881)
!2880 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2880, line: 99, size: 64, elements: !2882)
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2881, file: !2880, line: 99, baseType: !1379, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1125, file: !792, line: 1225, baseType: !564, size: 32, offset: 18368)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1125, file: !792, line: 1226, baseType: !135, size: 32, offset: 18400)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1125, file: !792, line: 1227, baseType: !135, size: 32, offset: 18432)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1125, file: !792, line: 1231, baseType: !2888, size: 64, offset: 18496)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !792, line: 1231, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1125, file: !792, line: 1233, baseType: !260, size: 128, offset: 18560)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1125, file: !792, line: 1240, baseType: !2892, size: 64, offset: 18688)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !792, line: 62, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1125, file: !792, line: 1242, baseType: !2895, size: 64, offset: 18752)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !792, line: 1242, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1125, file: !792, line: 1244, baseType: !260, size: 128, offset: 18816)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1125, file: !792, line: 1245, baseType: !2899, size: 64, offset: 18944)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !792, line: 51, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1125, file: !792, line: 1246, baseType: !216, size: 256, offset: 19008)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1125, file: !792, line: 1247, baseType: !49, size: 32, offset: 19264)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1125, file: !792, line: 1250, baseType: !2904, size: 64, offset: 19328)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !792, line: 57, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1125, file: !792, line: 1251, baseType: !216, size: 256, offset: 19392)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1125, file: !792, line: 1252, baseType: !260, size: 128, offset: 19648)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1125, file: !792, line: 1259, baseType: !2124, size: 64, offset: 19776)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1125, file: !792, line: 1260, baseType: !1630, size: 16, offset: 19840)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1125, file: !792, line: 1261, baseType: !1630, size: 16, offset: 19856)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1125, file: !792, line: 1314, baseType: !2912, size: 64, offset: 19904)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2914, line: 62, size: 256, align: 256, elements: !2915)
!2914 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921, !2922}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2913, file: !2914, line: 75, baseType: !155, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2913, file: !2914, line: 90, baseType: !155, size: 32, offset: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2913, file: !2914, line: 112, baseType: !164, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2913, file: !2914, line: 132, baseType: !155, size: 32, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2913, file: !2914, line: 140, baseType: !155, size: 32, offset: 160)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2913, file: !2914, line: 149, baseType: !155, size: 32, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2913, file: !2914, line: 154, baseType: !2923, offset: 224)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1564)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1125, file: !792, line: 1315, baseType: !153, size: 32, offset: 19968)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1125, file: !792, line: 1316, baseType: !153, size: 32, offset: 20000)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1125, file: !792, line: 1321, baseType: !149, size: 64, offset: 20032)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1125, file: !792, line: 1325, baseType: !135, size: 32, offset: 20096)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1125, file: !792, line: 1326, baseType: !135, size: 32, offset: 20128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1125, file: !792, line: 1327, baseType: !135, size: 32, offset: 20160)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1125, file: !792, line: 1328, baseType: !135, size: 32, offset: 20192)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1125, file: !792, line: 1329, baseType: !1109, size: 128, align: 64, offset: 20224)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1125, file: !792, line: 1332, baseType: !2933, size: 128, offset: 20352)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2934, line: 51, size: 128, elements: !2935)
!2934 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2935 = !{!2936, !2941, !2942}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2933, file: !2934, line: 60, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2938, line: 7, size: 64, elements: !2939)
!2938 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2939 = !{!2940}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2937, file: !2938, line: 12, baseType: !1376, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2933, file: !2934, line: 63, baseType: !1661, size: 8, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2933, file: !2934, line: 70, baseType: !1661, size: 8, offset: 72)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1125, file: !792, line: 1335, baseType: !2176, size: 64, offset: 20480)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1125, file: !792, line: 1337, baseType: !2945, size: 128, offset: 20544)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2934, line: 39, size: 128, elements: !2946)
!2946 = !{!2947, !2948, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2945, file: !2934, line: 40, baseType: !1953, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2945, file: !2934, line: 42, baseType: !155, size: 32, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2945, file: !2934, line: 43, baseType: !155, size: 32, offset: 96)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1125, file: !792, line: 1340, baseType: !2951, size: 64, offset: 20672)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !792, line: 69, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1125, file: !792, line: 1351, baseType: !135, size: 32, offset: 20736)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1125, file: !792, line: 1352, baseType: !135, size: 32, offset: 20768)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1125, file: !792, line: 1354, baseType: !149, size: 64, offset: 20800)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1125, file: !792, line: 1364, baseType: !163, size: 64, offset: 20864)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1125, file: !792, line: 1365, baseType: !163, size: 64, offset: 20928)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1125, file: !792, line: 1412, baseType: !149, size: 64, offset: 20992)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1125, file: !792, line: 1453, baseType: !2960, size: 64, offset: 21056)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !792, line: 1453, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1125, file: !792, line: 1457, baseType: !2963, size: 64, offset: 21120)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !110, line: 61, size: 576, elements: !2965)
!2965 = !{!2966, !2967, !2986, !2989, !2990, !3023, !3033}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2964, file: !110, line: 62, baseType: !109, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !2964, file: !110, line: 64, baseType: !2968, size: 192, offset: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2964, file: !110, line: 64, size: 192, elements: !2969)
!2969 = !{!2970, !2981}
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !2968, file: !110, line: 65, baseType: !2971, size: 192)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2968, file: !110, line: 65, size: 192, elements: !2972)
!2972 = !{!2973, !2980}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2971, file: !110, line: 66, baseType: !2974, size: 128)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2975, line: 50, size: 128, elements: !2976)
!2975 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2976 = !{!2977, !2978, !2979}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2974, file: !2975, line: 52, baseType: !149, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2974, file: !2975, line: 54, baseType: !49, size: 32, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2974, file: !2975, line: 55, baseType: !49, size: 32, offset: 96)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2971, file: !110, line: 67, baseType: !149, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, scope: !2968, file: !110, line: 70, baseType: !2982, size: 192)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2968, file: !110, line: 70, size: 192, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2982, file: !110, line: 71, baseType: !1109, size: 128, align: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2982, file: !110, line: 72, baseType: !149, size: 64, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2964, file: !110, line: 76, baseType: !2987, size: 64, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !110, line: 76, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2964, file: !110, line: 77, baseType: !149, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2964, file: !110, line: 79, baseType: !2991, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2975, line: 25, size: 256, elements: !2993)
!2993 = !{!2994, !3000, !3004}
!2994 = !DIDerivedType(tag: DW_TAG_member, scope: !2992, file: !2975, line: 26, baseType: !2995, size: 128)
!2995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2992, file: !2975, line: 26, size: 128, elements: !2996)
!2996 = !{!2997, !2999}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2995, file: !2975, line: 27, baseType: !2998, size: 128)
!2998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 128, elements: !41)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2995, file: !2975, line: 28, baseType: !2998, size: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2992, file: !2975, line: 31, baseType: !3001, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3003)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2975, line: 23, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, scope: !2992, file: !2975, line: 33, baseType: !3005, size: 64, offset: 192)
!3005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2992, file: !2975, line: 33, size: 64, elements: !3006)
!3006 = !{!3007, !3013, !3018}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3005, file: !2975, line: 38, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !2975, line: 34, size: 64, elements: !3009)
!3009 = !{!3010, !3011, !3012}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3008, file: !2975, line: 35, baseType: !186, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3008, file: !2975, line: 36, baseType: !157, size: 8, offset: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3008, file: !2975, line: 37, baseType: !157, size: 8, offset: 40)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3005, file: !2975, line: 42, baseType: !3014, size: 16)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !2975, line: 39, size: 16, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3014, file: !2975, line: 40, baseType: !157, size: 8)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3014, file: !2975, line: 41, baseType: !157, size: 8, offset: 8)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3005, file: !2975, line: 46, baseType: !3019, size: 16)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !2975, line: 43, size: 16, elements: !3020)
!3020 = !{!3021, !3022}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3019, file: !2975, line: 44, baseType: !157, size: 8)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3019, file: !2975, line: 45, baseType: !157, size: 8, offset: 8)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2964, file: !110, line: 81, baseType: !3024, size: 64, offset: 448)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !110, line: 85, size: 384, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3025, file: !110, line: 86, baseType: !2987, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3025, file: !110, line: 87, baseType: !149, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3025, file: !110, line: 88, baseType: !149, size: 64, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3025, file: !110, line: 89, baseType: !149, size: 64, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3025, file: !110, line: 90, baseType: !1661, size: 8, offset: 256)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3025, file: !110, line: 92, baseType: !3024, size: 64, offset: 320)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2964, file: !110, line: 82, baseType: !49, size: 32, offset: 512)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1125, file: !792, line: 1463, baseType: !3035, offset: 21184)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !792, line: 739, elements: !721)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1125, file: !792, line: 1470, baseType: !1109, size: 128, align: 64, offset: 21184)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1125, file: !792, line: 1471, baseType: !1138, size: 32, offset: 21312)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1125, file: !792, line: 1472, baseType: !135, size: 32, offset: 21344)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1125, file: !792, line: 1474, baseType: !1124, size: 64, offset: 21376)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1125, file: !792, line: 1475, baseType: !3041, size: 320, offset: 21440)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3042, line: 11, size: 320, elements: !3043)
!3042 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3043 = !{!3044, !3045, !3046, !3051}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3041, file: !3042, line: 16, baseType: !713, size: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3041, file: !3042, line: 17, baseType: !149, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3041, file: !3042, line: 18, baseType: !3047, size: 64, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !3050}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3041, file: !3042, line: 19, baseType: !153, size: 32, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1125, file: !792, line: 1478, baseType: !3053, size: 64, offset: 21760)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !316, line: 49, size: 512, elements: !3055)
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3062, !3063, !3064, !3066}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3054, file: !316, line: 50, baseType: !3053, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3054, file: !316, line: 51, baseType: !150, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3054, file: !316, line: 52, baseType: !149, size: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3054, file: !316, line: 53, baseType: !149, size: 64, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3054, file: !316, line: 54, baseType: !3061, size: 64, offset: 256)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3054, file: !316, line: 56, baseType: !49, size: 32, offset: 320)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3054, file: !316, line: 58, baseType: !49, size: 32, offset: 352)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3054, file: !316, line: 59, baseType: !3065, size: 64, offset: 384)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !148, line: 159, baseType: !163)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3054, file: !316, line: 60, baseType: !325, size: 64, offset: 448)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1125, file: !792, line: 1482, baseType: !1138, size: 32, offset: 21824)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1125, file: !792, line: 1489, baseType: !150, size: 64, offset: 21888)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1125, file: !792, line: 1504, baseType: !150, size: 64, offset: 21952)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1125, file: !792, line: 1505, baseType: !164, size: 64, offset: 22016)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1125, file: !792, line: 1506, baseType: !163, size: 64, offset: 22080)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1125, file: !792, line: 1507, baseType: !164, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1125, file: !792, line: 1508, baseType: !164, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1125, file: !792, line: 1509, baseType: !164, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1125, file: !792, line: 1510, baseType: !1109, size: 128, align: 64, offset: 22208)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1125, file: !792, line: 1511, baseType: !135, size: 32, offset: 22336)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1125, file: !792, line: 1515, baseType: !3078, size: 64, offset: 22400)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1152, line: 56, size: 64, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3078, file: !1152, line: 57, baseType: !1155, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1125, file: !792, line: 1518, baseType: !3078, size: 64, offset: 22464)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1125, file: !792, line: 1528, baseType: !1109, size: 128, align: 64, offset: 22528)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1125, file: !792, line: 1552, baseType: !3084, size: 35328, offset: 23040)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3085, line: 430, size: 35328, elements: !3086)
!3085 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3086 = !{!3087, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3116, !3117, !3118, !3119, !3120, !3121, !3124, !3125, !3126, !3127}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3084, file: !3085, line: 432, baseType: !3088, size: 192)
!3088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3089, size: 192, elements: !449)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3090, line: 16, size: 64, elements: !3091)
!3090 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3089, file: !3090, line: 17, baseType: !160, size: 16)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3089, file: !3090, line: 18, baseType: !160, size: 16, offset: 16)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3089, file: !3090, line: 19, baseType: !160, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3089, file: !3090, line: 19, baseType: !160, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3089, file: !3090, line: 19, baseType: !160, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3089, file: !3090, line: 19, baseType: !160, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3089, file: !3090, line: 19, baseType: !160, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3089, file: !3090, line: 20, baseType: !160, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3089, file: !3090, line: 20, baseType: !160, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3089, file: !3090, line: 20, baseType: !160, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3089, file: !3090, line: 20, baseType: !160, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3089, file: !3090, line: 20, baseType: !160, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3089, file: !3090, line: 20, baseType: !160, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3084, file: !3085, line: 436, baseType: !149, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3084, file: !3085, line: 440, baseType: !162, size: 16, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3084, file: !3085, line: 441, baseType: !162, size: 16, offset: 272)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3084, file: !3085, line: 442, baseType: !162, size: 16, offset: 288)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3084, file: !3085, line: 443, baseType: !162, size: 16, offset: 304)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3084, file: !3085, line: 447, baseType: !149, size: 64, offset: 320)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3084, file: !3085, line: 448, baseType: !149, size: 64, offset: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3084, file: !3085, line: 459, baseType: !3113, size: 256, offset: 448)
!3113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3114, size: 256, elements: !1504)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3085, line: 428, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3084, file: !3085, line: 461, baseType: !149, size: 64, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3084, file: !3085, line: 463, baseType: !149, size: 64, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3084, file: !3085, line: 465, baseType: !149, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3084, file: !3085, line: 466, baseType: !149, size: 64, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3084, file: !3085, line: 467, baseType: !149, size: 64, offset: 960)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3084, file: !3085, line: 473, baseType: !3122, size: 64, offset: 1024)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3085, line: 10, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3084, file: !3085, line: 480, baseType: !149, size: 64, offset: 1088)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3084, file: !3085, line: 482, baseType: !49, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3084, file: !3085, line: 491, baseType: !153, size: 32, offset: 1184)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3084, file: !3085, line: 501, baseType: !3128, size: 33792, offset: 1536)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3129, line: 448, size: 33792, elements: !3130)
!3129 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3130 = !{!3131, !3132, !3133, !3293, !3294, !3300, !3301}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3128, file: !3129, line: 461, baseType: !49, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3128, file: !3129, line: 468, baseType: !149, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3128, file: !3129, line: 476, baseType: !3134, size: 64, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3129, line: 356, size: 33280, align: 512, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3135, file: !3129, line: 358, baseType: !49, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3135, file: !3129, line: 361, baseType: !49, size: 32, offset: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3135, file: !3129, line: 364, baseType: !163, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3135, file: !3129, line: 367, baseType: !163, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3135, file: !3129, line: 370, baseType: !163, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3135, file: !3129, line: 373, baseType: !49, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3135, file: !3129, line: 376, baseType: !49, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3135, file: !3129, line: 391, baseType: !49, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3135, file: !3129, line: 394, baseType: !49, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3135, file: !3129, line: 397, baseType: !3147, size: 32768, offset: 512)
!3147 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3129, line: 348, size: 32768, elements: !3148)
!3148 = !{!3149, !3164, !3199, !3276, !3289}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3147, file: !3129, line: 349, baseType: !3150, size: 896)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3129, line: 12, size: 896, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3163}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3150, file: !3129, line: 13, baseType: !153, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3150, file: !3129, line: 14, baseType: !153, size: 32, offset: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3150, file: !3129, line: 15, baseType: !153, size: 32, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3150, file: !3129, line: 16, baseType: !153, size: 32, offset: 96)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3150, file: !3129, line: 17, baseType: !153, size: 32, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3150, file: !3129, line: 18, baseType: !153, size: 32, offset: 160)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3150, file: !3129, line: 19, baseType: !153, size: 32, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3150, file: !3129, line: 22, baseType: !3160, size: 640, offset: 224)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 640, elements: !3161)
!3161 = !{!3162}
!3162 = !DISubrange(count: 20)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3150, file: !3129, line: 25, baseType: !153, size: 32, offset: 864)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3147, file: !3129, line: 350, baseType: !3165, size: 4096, align: 128)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3129, line: 34, size: 4096, align: 128, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3170, !3171, !3186, !3187, !3188, !3190, !3192, !3194}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3165, file: !3129, line: 35, baseType: !160, size: 16)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3165, file: !3129, line: 36, baseType: !160, size: 16, offset: 16)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3165, file: !3129, line: 37, baseType: !160, size: 16, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3165, file: !3129, line: 38, baseType: !160, size: 16, offset: 48)
!3171 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !3129, line: 39, baseType: !3172, size: 128, offset: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !3129, line: 39, size: 128, elements: !3173)
!3173 = !{!3174, !3179}
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3129, line: 40, baseType: !3175, size: 128)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3129, line: 40, size: 128, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3175, file: !3129, line: 41, baseType: !163, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3175, file: !3129, line: 42, baseType: !163, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3129, line: 44, baseType: !3180, size: 128)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3172, file: !3129, line: 44, size: 128, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3180, file: !3129, line: 45, baseType: !153, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3180, file: !3129, line: 46, baseType: !153, size: 32, offset: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3180, file: !3129, line: 47, baseType: !153, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3180, file: !3129, line: 48, baseType: !153, size: 32, offset: 96)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3165, file: !3129, line: 51, baseType: !153, size: 32, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3165, file: !3129, line: 52, baseType: !153, size: 32, offset: 224)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3165, file: !3129, line: 55, baseType: !3189, size: 1024, offset: 256)
!3189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 1024, elements: !600)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3165, file: !3129, line: 58, baseType: !3191, size: 2048, offset: 1280)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 2048, elements: !453)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3165, file: !3129, line: 60, baseType: !3193, size: 384, offset: 3328)
!3193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 384, elements: !20)
!3194 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !3129, line: 62, baseType: !3195, size: 384, offset: 3712)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !3129, line: 62, size: 384, elements: !3196)
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3195, file: !3129, line: 63, baseType: !3193, size: 384)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3195, file: !3129, line: 64, baseType: !3193, size: 384)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3147, file: !3129, line: 351, baseType: !3200, size: 1088)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3129, line: 79, size: 1088, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3275}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3200, file: !3129, line: 80, baseType: !153, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3200, file: !3129, line: 81, baseType: !153, size: 32, offset: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3200, file: !3129, line: 82, baseType: !153, size: 32, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3200, file: !3129, line: 83, baseType: !153, size: 32, offset: 96)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3200, file: !3129, line: 84, baseType: !153, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3200, file: !3129, line: 85, baseType: !153, size: 32, offset: 160)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3200, file: !3129, line: 86, baseType: !153, size: 32, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3200, file: !3129, line: 88, baseType: !3160, size: 640, offset: 224)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3200, file: !3129, line: 89, baseType: !157, size: 8, offset: 864)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3200, file: !3129, line: 90, baseType: !157, size: 8, offset: 872)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3200, file: !3129, line: 91, baseType: !157, size: 8, offset: 880)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3200, file: !3129, line: 92, baseType: !157, size: 8, offset: 888)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3200, file: !3129, line: 93, baseType: !157, size: 8, offset: 896)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3200, file: !3129, line: 94, baseType: !157, size: 8, offset: 904)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3200, file: !3129, line: 95, baseType: !3217, size: 64, offset: 960)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3219, line: 11, size: 128, elements: !3220)
!3219 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3218, file: !3219, line: 12, baseType: !483, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3218, file: !3219, line: 13, baseType: !3223, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3225, line: 103, size: 1344, elements: !3226)
!3225 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3255, !3256, !3257}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3224, file: !3225, line: 109, baseType: !149, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3224, file: !3225, line: 110, baseType: !149, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3224, file: !3225, line: 111, baseType: !149, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3224, file: !3225, line: 112, baseType: !149, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3224, file: !3225, line: 113, baseType: !149, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3224, file: !3225, line: 114, baseType: !149, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3224, file: !3225, line: 117, baseType: !149, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3224, file: !3225, line: 118, baseType: !149, size: 64, offset: 448)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3224, file: !3225, line: 119, baseType: !149, size: 64, offset: 512)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3224, file: !3225, line: 120, baseType: !149, size: 64, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3224, file: !3225, line: 121, baseType: !149, size: 64, offset: 640)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3224, file: !3225, line: 122, baseType: !149, size: 64, offset: 704)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3224, file: !3225, line: 123, baseType: !149, size: 64, offset: 768)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3224, file: !3225, line: 124, baseType: !149, size: 64, offset: 832)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3224, file: !3225, line: 125, baseType: !149, size: 64, offset: 896)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3224, file: !3225, line: 139, baseType: !149, size: 64, offset: 960)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3224, file: !3225, line: 142, baseType: !149, size: 64, offset: 1024)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3224, file: !3225, line: 144, baseType: !3245, size: 64, offset: 1088)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3224, file: !3225, line: 144, size: 64, elements: !3246)
!3246 = !{!3247, !3248, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3245, file: !3225, line: 146, baseType: !160, size: 16)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3245, file: !3225, line: 148, baseType: !163, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3245, file: !3225, line: 150, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3225, line: 59, size: 64, elements: !3251)
!3251 = !{!3252, !3253, !3254}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3250, file: !3225, line: 61, baseType: !163, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3250, file: !3225, line: 63, baseType: !163, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3250, file: !3225, line: 65, baseType: !163, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3224, file: !3225, line: 153, baseType: !149, size: 64, offset: 1152)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3224, file: !3225, line: 154, baseType: !149, size: 64, offset: 1216)
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !3224, file: !3225, line: 156, baseType: !3258, size: 64, offset: 1280)
!3258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3224, file: !3225, line: 156, size: 64, elements: !3259)
!3259 = !{!3260, !3261, !3262}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3258, file: !3225, line: 158, baseType: !160, size: 16)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3258, file: !3225, line: 160, baseType: !163, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3258, file: !3225, line: 162, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3225, line: 69, size: 64, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3263, file: !3225, line: 71, baseType: !163, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3263, file: !3225, line: 73, baseType: !163, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3263, file: !3225, line: 75, baseType: !163, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3263, file: !3225, line: 77, baseType: !163, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3263, file: !3225, line: 80, baseType: !163, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3263, file: !3225, line: 83, baseType: !163, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3263, file: !3225, line: 86, baseType: !163, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3263, file: !3225, line: 88, baseType: !163, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3263, file: !3225, line: 93, baseType: !163, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3263, file: !3225, line: 100, baseType: !163, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3200, file: !3129, line: 96, baseType: !153, size: 32, offset: 1024)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3147, file: !3129, line: 352, baseType: !3277, size: 4608, align: 512)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3129, line: 333, size: 4608, align: 512, elements: !3278)
!3278 = !{!3279, !3280, !3287}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3277, file: !3129, line: 334, baseType: !3165, size: 4096, align: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3277, file: !3129, line: 335, baseType: !3281, size: 512, offset: 4096)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3129, line: 312, size: 512, elements: !3282)
!3282 = !{!3283, !3284, !3285}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3281, file: !3129, line: 313, baseType: !163, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3281, file: !3129, line: 314, baseType: !163, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3281, file: !3129, line: 315, baseType: !3286, size: 384, offset: 128)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 384, elements: !1648)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3277, file: !3129, line: 336, baseType: !3288, offset: 4608)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, elements: !1564)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3147, file: !3129, line: 353, baseType: !3290, size: 32768)
!3290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 32768, elements: !3291)
!3291 = !{!3292}
!3292 = !DISubrange(count: 4096)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3128, file: !3129, line: 484, baseType: !3134, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3128, file: !3129, line: 491, baseType: !3295, size: 128, offset: 256)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3129, line: 404, size: 128, elements: !3296)
!3296 = !{!3297, !3298, !3299}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3295, file: !3129, line: 424, baseType: !163, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3295, file: !3129, line: 432, baseType: !49, size: 32, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3295, file: !3129, line: 440, baseType: !49, size: 32, offset: 96)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3128, file: !3129, line: 498, baseType: !3295, size: 128, offset: 384)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3128, file: !3129, line: 508, baseType: !3135, size: 33280, align: 512, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1092, file: !1093, line: 16, baseType: !1102, size: 192, offset: 512)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1092, file: !1093, line: 17, baseType: !240, size: 32, offset: 704)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !670, file: !56, line: 1240, baseType: !150, size: 64, offset: 6912)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !670, file: !56, line: 1243, baseType: !153, size: 32, offset: 6976)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !670, file: !56, line: 1245, baseType: !850, size: 64, offset: 7040)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !670, file: !56, line: 1246, baseType: !850, size: 64, offset: 7104)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !670, file: !56, line: 1248, baseType: !155, size: 32, offset: 7168)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !670, file: !56, line: 1249, baseType: !3310, size: 64, offset: 7232)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !56, line: 634, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !670, file: !56, line: 1252, baseType: !3313, size: 256, offset: 7296)
!3313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !600)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !670, file: !56, line: 1253, baseType: !3315, size: 128, offset: 7552)
!3315 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3316, line: 21, baseType: !3317)
!3316 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3316, line: 19, size: 128, elements: !3318)
!3318 = !{!3319}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3317, file: !3316, line: 20, baseType: !3320, size: 128)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !41)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !670, file: !56, line: 1255, baseType: !49, size: 32, offset: 7680)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !670, file: !56, line: 1261, baseType: !216, size: 256, offset: 7744)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !670, file: !56, line: 1267, baseType: !384, size: 64, offset: 8000)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !670, file: !56, line: 1269, baseType: !616, size: 64, offset: 8064)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !670, file: !56, line: 1271, baseType: !3326, size: 448, offset: 8128)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !859, line: 63, size: 448, elements: !3327)
!3327 = !{!3328, !3333, !3334, !3335, !3336, !3337, !3338}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3326, file: !859, line: 64, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!149, !3332, !857}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3326, file: !859, line: 66, baseType: !3329, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3326, file: !859, line: 69, baseType: !483, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3326, file: !859, line: 70, baseType: !135, size: 32, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3326, file: !859, line: 71, baseType: !49, size: 32, offset: 224)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3326, file: !859, line: 74, baseType: !260, size: 128, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3326, file: !859, line: 85, baseType: !3339, size: 64, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !670, file: !56, line: 1274, baseType: !220, size: 64, offset: 8576)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !670, file: !56, line: 1280, baseType: !220, size: 64, offset: 8640)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !670, file: !56, line: 1283, baseType: !135, size: 32, offset: 8704)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !670, file: !56, line: 1286, baseType: !2226, size: 32, offset: 8736)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !670, file: !56, line: 1289, baseType: !3345, size: 64, offset: 8768)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2353, line: 18, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !670, file: !56, line: 1290, baseType: !709, size: 64, offset: 8832)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !670, file: !56, line: 1297, baseType: !1545, size: 64, offset: 8896)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !670, file: !56, line: 1304, baseType: !3350, size: 64, offset: 8960)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3351, line: 49, size: 64, elements: !3352)
!3351 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3352 = !{!3353}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3350, file: !3351, line: 50, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3351, line: 41, size: 512, align: 512, elements: !3356)
!3356 = !{!3357, !3358, !3363}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3355, file: !3351, line: 43, baseType: !412, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3355, file: !3351, line: 45, baseType: !3359, size: 192, offset: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3351, line: 29, size: 192, elements: !3360)
!3360 = !{!3361, !3362}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3359, file: !3351, line: 30, baseType: !260, size: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3359, file: !3351, line: 32, baseType: !483, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3355, file: !3351, line: 46, baseType: !483, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !670, file: !56, line: 1305, baseType: !3350, size: 64, offset: 9024)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !670, file: !56, line: 1306, baseType: !1109, size: 128, align: 64, offset: 9088)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !670, file: !56, line: 1307, baseType: !2352, size: 256, offset: 9216)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !670, file: !56, line: 1309, baseType: !216, size: 256, offset: 9472)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !670, file: !56, line: 1314, baseType: !135, size: 32, offset: 9728)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !670, file: !56, line: 1317, baseType: !412, size: 32, align: 512, offset: 10240)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !670, file: !56, line: 1318, baseType: !260, size: 128, offset: 10304)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !670, file: !56, line: 1320, baseType: !412, size: 32, offset: 10432)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !670, file: !56, line: 1321, baseType: !260, size: 128, offset: 10496)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !664, file: !665, line: 73, baseType: !135, size: 32, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !664, file: !665, line: 74, baseType: !3375, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1588, line: 42, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !618, file: !560, line: 141, baseType: !3379, size: 64, offset: 704)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!135, !919, !1661}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !618, file: !560, line: 142, baseType: !3383, size: 64, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!558, !558, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !559, file: !560, line: 96, baseType: !669, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !559, file: !560, line: 97, baseType: !149, size: 64, offset: 896)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !559, file: !560, line: 98, baseType: !150, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !560, line: 100, baseType: !3392, size: 128, offset: 1024)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !560, line: 100, size: 128, elements: !3393)
!3393 = !{!3394, !3395}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3392, file: !560, line: 101, baseType: !260, size: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3392, file: !560, line: 102, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !559, file: !560, line: 104, baseType: !260, size: 128, offset: 1152)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !559, file: !560, line: 105, baseType: !260, size: 128, offset: 1280)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !559, file: !560, line: 113, baseType: !3400, size: 128, offset: 1408)
!3400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !560, line: 109, size: 128, elements: !3401)
!3401 = !{!3402, !3403, !3404}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3400, file: !560, line: 110, baseType: !713, size: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3400, file: !560, line: 111, baseType: !574, size: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3400, file: !560, line: 112, baseType: !1109, size: 128, align: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !552, file: !56, line: 1968, baseType: !3406, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!384, !558, !523, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3411, line: 10, size: 128, elements: !3412)
!3411 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3412 = !{!3413, !3417}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3410, file: !3411, line: 11, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !150}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3410, file: !3411, line: 12, baseType: !150, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !552, file: !56, line: 1969, baseType: !3419, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!135, !3375, !523, !135}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !552, file: !56, line: 1970, baseType: !3423, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!546, !523, !135, !1661}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !552, file: !56, line: 1972, baseType: !3427, size: 64, offset: 256)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!135, !558, !448, !135}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !552, file: !56, line: 1974, baseType: !3431, size: 64, offset: 320)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!135, !3375, !523, !558, !489, !1661}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !552, file: !56, line: 1976, baseType: !3435, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!135, !558, !523, !558}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !552, file: !56, line: 1977, baseType: !3439, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!135, !523, !558}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !552, file: !56, line: 1978, baseType: !3443, size: 64, offset: 512)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!135, !3375, !523, !558, !384}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !552, file: !56, line: 1980, baseType: !3447, size: 64, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!135, !3375, !523, !558, !489}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !552, file: !56, line: 1982, baseType: !3439, size: 64, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !552, file: !56, line: 1983, baseType: !3452, size: 64, offset: 704)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!135, !3375, !523, !558, !489, !674}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !552, file: !56, line: 1985, baseType: !3456, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!135, !3375, !523, !558, !523, !558, !49}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !552, file: !56, line: 1987, baseType: !3460, size: 64, offset: 832)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!135, !3375, !558, !3463}
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !56, line: 226, size: 640, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3478, !3487, !3488, !3493, !3494, !3495}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3464, file: !56, line: 227, baseType: !49, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3464, file: !56, line: 228, baseType: !489, size: 16, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !56, line: 241, baseType: !3469, size: 32, offset: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !56, line: 241, size: 32, elements: !3470)
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3469, file: !56, line: 242, baseType: !529, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3469, file: !56, line: 243, baseType: !3473, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3474, line: 16, baseType: !3475)
!3474 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3474, line: 14, size: 32, elements: !3476)
!3476 = !{!3477}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3475, file: !3474, line: 15, baseType: !534, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !56, line: 245, baseType: !3479, size: 32, offset: 96)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !56, line: 245, size: 32, elements: !3480)
!3480 = !{!3481, !3482}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3479, file: !56, line: 246, baseType: !538, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3479, file: !56, line: 247, baseType: !3483, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3474, line: 20, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3474, line: 18, size: 32, elements: !3485)
!3485 = !{!3486}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3484, file: !3474, line: 19, baseType: !542, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3464, file: !56, line: 249, baseType: !679, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3464, file: !56, line: 250, baseType: !3489, size: 128, offset: 192)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !851, line: 13, size: 128, elements: !3490)
!3490 = !{!3491, !3492}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3489, file: !851, line: 14, baseType: !850, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3489, file: !851, line: 15, baseType: !483, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3464, file: !56, line: 251, baseType: !3489, size: 128, offset: 320)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3464, file: !56, line: 252, baseType: !3489, size: 128, offset: 448)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3464, file: !56, line: 259, baseType: !1455, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !552, file: !56, line: 1988, baseType: !3497, size: 64, offset: 896)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!135, !3375, !919, !3500, !153, !49}
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3502, line: 22, size: 1280, elements: !3503)
!3502 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3501, file: !3502, line: 23, baseType: !153, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3501, file: !3502, line: 24, baseType: !489, size: 16, offset: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3501, file: !3502, line: 25, baseType: !49, size: 32, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3501, file: !3502, line: 26, baseType: !1626, size: 32, offset: 96)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3501, file: !3502, line: 27, baseType: !163, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3501, file: !3502, line: 28, baseType: !163, size: 64, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3501, file: !3502, line: 41, baseType: !163, size: 64, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3501, file: !3502, line: 42, baseType: !674, size: 32, offset: 320)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3501, file: !3502, line: 43, baseType: !674, size: 32, offset: 352)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3501, file: !3502, line: 44, baseType: !529, size: 32, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3501, file: !3502, line: 45, baseType: !538, size: 32, offset: 416)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3501, file: !3502, line: 46, baseType: !679, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3501, file: !3502, line: 47, baseType: !3489, size: 128, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3501, file: !3502, line: 48, baseType: !3489, size: 128, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3501, file: !3502, line: 49, baseType: !3489, size: 128, offset: 768)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3501, file: !3502, line: 50, baseType: !3489, size: 128, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3501, file: !3502, line: 51, baseType: !163, size: 64, offset: 1024)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3501, file: !3502, line: 52, baseType: !163, size: 64, offset: 1088)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3501, file: !3502, line: 53, baseType: !153, size: 32, offset: 1152)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3501, file: !3502, line: 54, baseType: !153, size: 32, offset: 1184)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3501, file: !3502, line: 55, baseType: !163, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !552, file: !56, line: 1990, baseType: !3526, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!480, !558, !448, !351}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !552, file: !56, line: 1991, baseType: !3530, size: 64, offset: 1024)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!135, !523, !3533, !163, !163}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !56, line: 55, flags: DIFlagFwdDecl)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !552, file: !56, line: 1993, baseType: !3536, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!135, !523, !135}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !552, file: !56, line: 1994, baseType: !3540, size: 64, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!135, !523, !558, !1455, !49, !489}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !552, file: !56, line: 1997, baseType: !3544, size: 64, offset: 1216)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!135, !3375, !523, !1455, !489}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !552, file: !56, line: 1999, baseType: !3548, size: 64, offset: 1280)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!546, !3375, !558, !135}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !552, file: !56, line: 2001, baseType: !3552, size: 64, offset: 1344)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!135, !3375, !558, !546, !135}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !552, file: !56, line: 2003, baseType: !3556, size: 64, offset: 1408)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!135, !3375, !558, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !56, line: 76, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !552, file: !56, line: 2005, baseType: !3562, size: 64, offset: 1472)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!135, !558, !3559}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !552, file: !56, line: 2006, baseType: !3566, size: 64, offset: 1536)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!3569, !523}
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !56, line: 3192, size: 192, elements: !3571)
!3571 = !{!3572, !3573}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3570, file: !56, line: 3193, baseType: !1524, size: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3570, file: !56, line: 3194, baseType: !153, size: 32, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !524, file: !56, line: 655, baseType: !669, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !524, file: !56, line: 656, baseType: !519, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !524, file: !56, line: 659, baseType: !150, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !524, file: !56, line: 663, baseType: !149, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !56, line: 671, baseType: !3579, size: 32, offset: 704)
!3579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !524, file: !56, line: 671, size: 32, elements: !3580)
!3580 = !{!3581, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3579, file: !56, line: 672, baseType: !3582, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3579, file: !56, line: 673, baseType: !49, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !524, file: !56, line: 675, baseType: !674, size: 32, offset: 736)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !524, file: !56, line: 676, baseType: !679, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !524, file: !56, line: 677, baseType: !3489, size: 128, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !524, file: !56, line: 678, baseType: !3489, size: 128, offset: 960)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !524, file: !56, line: 679, baseType: !3489, size: 128, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !524, file: !56, line: 680, baseType: !412, size: 32, offset: 1216)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !524, file: !56, line: 681, baseType: !162, size: 16, offset: 1248)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !524, file: !56, line: 682, baseType: !157, size: 8, offset: 1264)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !524, file: !56, line: 683, baseType: !157, size: 8, offset: 1272)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !524, file: !56, line: 684, baseType: !997, size: 64, offset: 1280)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !524, file: !56, line: 691, baseType: !149, size: 64, offset: 1344)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !524, file: !56, line: 692, baseType: !1009, size: 320, offset: 1408)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !524, file: !56, line: 694, baseType: !149, size: 64, offset: 1728)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !524, file: !56, line: 695, baseType: !149, size: 64, offset: 1792)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !524, file: !56, line: 697, baseType: !713, size: 128, offset: 1856)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !524, file: !56, line: 698, baseType: !260, size: 128, offset: 1984)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !524, file: !56, line: 707, baseType: !260, size: 128, offset: 2112)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !524, file: !56, line: 708, baseType: !260, size: 128, offset: 2240)
!3602 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !56, line: 709, baseType: !3603, size: 128, offset: 2368)
!3603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !524, file: !56, line: 709, size: 128, elements: !3604)
!3604 = !{!3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3603, file: !56, line: 710, baseType: !709, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3603, file: !56, line: 711, baseType: !1109, size: 128, align: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !524, file: !56, line: 713, baseType: !222, size: 64, offset: 2496)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !524, file: !56, line: 714, baseType: !222, size: 64, offset: 2560)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !524, file: !56, line: 715, baseType: !240, size: 32, offset: 2624)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !524, file: !56, line: 716, baseType: !240, size: 32, offset: 2656)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !524, file: !56, line: 717, baseType: !240, size: 32, offset: 2688)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !524, file: !56, line: 719, baseType: !240, size: 32, offset: 2720)
!3613 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !56, line: 721, baseType: !3614, size: 64, offset: 2752)
!3614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !524, file: !56, line: 721, size: 64, elements: !3615)
!3615 = !{!3616, !3617}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3614, file: !56, line: 722, baseType: !1769, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3614, file: !56, line: 723, baseType: !740, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !524, file: !56, line: 725, baseType: !3619, size: 64, offset: 2816)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !56, line: 725, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !524, file: !56, line: 726, baseType: !520, size: 1536, align: 64, offset: 2880)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !524, file: !56, line: 727, baseType: !260, size: 128, offset: 4416)
!3623 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !56, line: 728, baseType: !3624, size: 64, offset: 4544)
!3624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !524, file: !56, line: 728, size: 64, elements: !3625)
!3625 = !{!3626, !3627, !3630, !3631}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3624, file: !56, line: 729, baseType: !2176, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3624, file: !56, line: 730, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !56, line: 730, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3624, file: !56, line: 731, baseType: !448, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3624, file: !56, line: 732, baseType: !49, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !524, file: !56, line: 735, baseType: !155, size: 32, offset: 4608)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !524, file: !56, line: 738, baseType: !155, size: 32, offset: 4640)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !524, file: !56, line: 739, baseType: !3310, size: 64, offset: 4672)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !524, file: !56, line: 750, baseType: !150, size: 64, offset: 4736)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !520, file: !56, line: 474, baseType: !1524, size: 128, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !520, file: !56, line: 475, baseType: !1009, size: 320, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !520, file: !56, line: 476, baseType: !147, size: 32, offset: 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !520, file: !56, line: 477, baseType: !240, size: 32, offset: 544)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !520, file: !56, line: 482, baseType: !1311, size: 128, offset: 576)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !520, file: !56, line: 483, baseType: !149, size: 64, offset: 704)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !520, file: !56, line: 484, baseType: !149, size: 64, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !520, file: !56, line: 485, baseType: !3644, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !56, line: 404, size: 1280, elements: !3647)
!3647 = !{!3648, !3652, !3722, !3726, !3730, !3736, !3740, !3744, !3749, !3753, !3757, !3761, !3762, !3766, !3770, !3774, !3779, !3783, !3790, !3791}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3646, file: !56, line: 405, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!135, !1953, !752}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3646, file: !56, line: 406, baseType: !3653, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!135, !1455, !3656}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !80, line: 293, size: 1536, elements: !3658)
!3658 = !{!3659, !3689, !3703}
!3659 = !DIDerivedType(tag: DW_TAG_member, scope: !3657, file: !80, line: 295, baseType: !3660, size: 512)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3657, file: !80, line: 295, size: 512, elements: !3661)
!3661 = !{!3662, !3688}
!3662 = !DIDerivedType(tag: DW_TAG_member, scope: !3660, file: !80, line: 296, baseType: !3663, size: 448)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3660, file: !80, line: 296, size: 448, elements: !3664)
!3664 = !{!3665, !3666, !3675, !3676, !3677, !3686, !3687}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !80, line: 298, baseType: !149, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, scope: !3663, file: !80, line: 299, baseType: !3667, size: 128, offset: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3663, file: !80, line: 299, size: 128, elements: !3668)
!3668 = !{!3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3667, file: !80, line: 300, baseType: !260, size: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, scope: !3667, file: !80, line: 302, baseType: !3671, size: 128)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3667, file: !80, line: 302, size: 128, elements: !3672)
!3672 = !{!3673, !3674}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3671, file: !80, line: 303, baseType: !150, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3671, file: !80, line: 305, baseType: !49, size: 32, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3663, file: !80, line: 310, baseType: !519, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3663, file: !80, line: 311, baseType: !149, size: 64, offset: 256)
!3677 = !DIDerivedType(tag: DW_TAG_member, scope: !3663, file: !80, line: 312, baseType: !3678, size: 64, offset: 320)
!3678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3663, file: !80, line: 312, size: 64, elements: !3679)
!3679 = !{!3680, !3681}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3678, file: !80, line: 313, baseType: !150, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3678, file: !80, line: 314, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !80, line: 257, baseType: !3683)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 255, size: 64, elements: !3684)
!3684 = !{!3685}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3683, file: !80, line: 256, baseType: !149, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3663, file: !80, line: 316, baseType: !240, size: 32, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3663, file: !80, line: 317, baseType: !240, size: 32, offset: 416)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3660, file: !80, line: 323, baseType: !1954, size: 512, align: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, scope: !3657, file: !80, line: 325, baseType: !3690, size: 512, offset: 512)
!3690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3657, file: !80, line: 325, size: 512, elements: !3691)
!3691 = !{!3692, !3702}
!3692 = !DIDerivedType(tag: DW_TAG_member, scope: !3690, file: !80, line: 326, baseType: !3693, size: 320)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3690, file: !80, line: 326, size: 320, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698, !3699, !3700, !3701}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3693, file: !80, line: 327, baseType: !149, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3693, file: !80, line: 328, baseType: !149, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3693, file: !80, line: 329, baseType: !149, size: 64, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3693, file: !80, line: 331, baseType: !240, size: 32, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3693, file: !80, line: 332, baseType: !240, size: 32, offset: 224)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3693, file: !80, line: 333, baseType: !240, size: 32, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3693, file: !80, line: 335, baseType: !49, size: 32, offset: 288)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3690, file: !80, line: 339, baseType: !1954, size: 512, align: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, scope: !3657, file: !80, line: 341, baseType: !3704, size: 512, offset: 1024)
!3704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3657, file: !80, line: 341, size: 512, elements: !3705)
!3705 = !{!3706, !3715, !3721}
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !80, line: 342, baseType: !3707, size: 384)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3704, file: !80, line: 342, size: 384, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3707, file: !80, line: 343, baseType: !149, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3707, file: !80, line: 344, baseType: !149, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3707, file: !80, line: 346, baseType: !150, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3707, file: !80, line: 347, baseType: !150, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3707, file: !80, line: 348, baseType: !150, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3707, file: !80, line: 349, baseType: !150, size: 64, offset: 320)
!3715 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !80, line: 352, baseType: !3716, size: 256)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3704, file: !80, line: 352, size: 256, elements: !3717)
!3717 = !{!3718, !3719, !3720}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3716, file: !80, line: 353, baseType: !149, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3716, file: !80, line: 354, baseType: !149, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3716, file: !80, line: 356, baseType: !260, size: 128, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3704, file: !80, line: 359, baseType: !1954, size: 512, align: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3646, file: !56, line: 409, baseType: !3723, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!135, !519, !752}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3646, file: !56, line: 412, baseType: !3727, size: 64, offset: 192)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!1661, !519, !3656}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3646, file: !56, line: 414, baseType: !3731, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{null, !3734}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !56, line: 310, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3646, file: !56, line: 416, baseType: !3737, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!135, !1455, !519, !679, !49, !3061, !2191}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3646, file: !56, line: 419, baseType: !3741, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!135, !1455, !519, !679, !49, !49, !1953, !150}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3646, file: !56, line: 424, baseType: !3745, size: 64, offset: 448)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!3748, !519, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !148, line: 131, baseType: !163)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3646, file: !56, line: 425, baseType: !3750, size: 64, offset: 512)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !3656, !351, !351}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3646, file: !56, line: 426, baseType: !3754, size: 64, offset: 576)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!1661, !3656, !147}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3646, file: !56, line: 427, baseType: !3758, size: 64, offset: 640)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{null, !3656}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3646, file: !56, line: 428, baseType: !1788, size: 64, offset: 704)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3646, file: !56, line: 433, baseType: !3763, size: 64, offset: 768)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!135, !519, !3656, !3656, !116}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3646, file: !56, line: 435, baseType: !3767, size: 64, offset: 832)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!135, !3656}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3646, file: !56, line: 436, baseType: !3771, size: 64, offset: 896)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!1661, !3656, !351, !351}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3646, file: !56, line: 438, baseType: !3775, size: 64, offset: 960)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{null, !3656, !3778, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3646, file: !56, line: 439, baseType: !3780, size: 64, offset: 1024)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!135, !519, !1953}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3646, file: !56, line: 442, baseType: !3784, size: 64, offset: 1088)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!135, !3787, !1455, !3789}
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !56, line: 66, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3646, file: !56, line: 444, baseType: !2183, size: 64, offset: 1152)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3646, file: !56, line: 445, baseType: !3792, size: 64, offset: 1216)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!135, !1791, !1813}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !56, line: 486, baseType: !149, size: 64, offset: 896)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !520, file: !56, line: 487, baseType: !1009, size: 320, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !520, file: !56, line: 488, baseType: !2226, size: 32, offset: 1280)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !520, file: !56, line: 489, baseType: !412, size: 32, offset: 1312)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !520, file: !56, line: 490, baseType: !260, size: 128, offset: 1344)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !520, file: !56, line: 491, baseType: !150, size: 64, offset: 1472)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !510, file: !474, line: 180, baseType: !3802, size: 64, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!480, !1455, !405, !509, !448, !679, !351}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !510, file: !474, line: 182, baseType: !3802, size: 64, offset: 384)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !510, file: !474, line: 184, baseType: !3807, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!135, !1455, !405, !509, !1852}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !498, file: !474, line: 90, baseType: !3811, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !498, file: !474, line: 91, baseType: !3813, size: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !464, file: !400, line: 120, baseType: !3815, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!3818, !431}
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3820)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !124, line: 39, size: 384, elements: !3821)
!3821 = !{!3822, !3823, !3827, !3831, !3837, !3841}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3820, file: !124, line: 40, baseType: !123, size: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3820, file: !124, line: 41, baseType: !3824, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!1661}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3820, file: !124, line: 42, baseType: !3828, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!150}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3820, file: !124, line: 43, baseType: !3832, size: 64, offset: 192)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!325, !3835}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !124, line: 19, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3820, file: !124, line: 44, baseType: !3838, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!325}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3820, file: !124, line: 45, baseType: !3414, size: 64, offset: 320)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !464, file: !400, line: 121, baseType: !3843, size: 64, offset: 256)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!325, !431}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !464, file: !400, line: 122, baseType: !3847, size: 64, offset: 320)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !431, !3850, !3851}
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !399, file: !400, line: 70, baseType: !3853, size: 64, offset: 384)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !693, line: 190, size: 1152, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3947, !3948, !3949, !3950, !3951, !3954}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3854, file: !693, line: 191, baseType: !240, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3854, file: !693, line: 192, baseType: !240, size: 32, offset: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3854, file: !693, line: 202, baseType: !3853, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3854, file: !693, line: 203, baseType: !384, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3854, file: !693, line: 205, baseType: !1182, size: 192, align: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3854, file: !693, line: 207, baseType: !325, size: 64, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3854, file: !693, line: 208, baseType: !49, size: 32, offset: 448)
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !3854, file: !693, line: 209, baseType: !3864, size: 256, offset: 512)
!3864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3854, file: !693, line: 209, size: 256, elements: !3865)
!3865 = !{!3866, !3875, !3879}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3864, file: !693, line: 210, baseType: !3867, size: 256)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !693, line: 153, size: 256, elements: !3868)
!3868 = !{!3869, !3870, !3871, !3874}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3867, file: !693, line: 154, baseType: !149, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3867, file: !693, line: 156, baseType: !1314, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3867, file: !693, line: 162, baseType: !3872, size: 64, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !693, line: 162, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3867, file: !693, line: 167, baseType: !149, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3864, file: !693, line: 211, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !693, line: 170, size: 64, elements: !3877)
!3877 = !{!3878}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3876, file: !693, line: 171, baseType: !3853, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3864, file: !693, line: 212, baseType: !3880, size: 256)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !693, line: 174, size: 256, elements: !3881)
!3881 = !{!3882, !3942, !3945, !3946}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3880, file: !693, line: 175, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3885)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !693, line: 271, size: 768, elements: !3886)
!3886 = !{!3887, !3907, !3911, !3915, !3919, !3923, !3927, !3931, !3932, !3933, !3934, !3938}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3885, file: !693, line: 276, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!135, !3891}
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !693, line: 251, size: 1216, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3892, file: !693, line: 253, baseType: !3853, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3892, file: !693, line: 254, baseType: !1455, size: 64, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3892, file: !693, line: 255, baseType: !790, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3892, file: !693, line: 256, baseType: !150, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3892, file: !693, line: 259, baseType: !216, size: 256, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3892, file: !693, line: 260, baseType: !216, size: 256, offset: 512)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3892, file: !693, line: 261, baseType: !135, size: 32, offset: 768)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3892, file: !693, line: 262, baseType: !260, size: 128, offset: 832)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3892, file: !693, line: 263, baseType: !448, size: 64, offset: 960)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3892, file: !693, line: 265, baseType: !351, size: 64, offset: 1024)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3892, file: !693, line: 266, baseType: !1661, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3892, file: !693, line: 267, baseType: !1661, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3892, file: !693, line: 268, baseType: !1890, size: 64, offset: 1152)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3885, file: !693, line: 277, baseType: !3908, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !3891}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3885, file: !693, line: 290, baseType: !3912, size: 64, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!135, !790, !150}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3885, file: !693, line: 292, baseType: !3916, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!150, !790, !1782}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3885, file: !693, line: 293, baseType: !3920, size: 64, offset: 256)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!150, !790, !150, !1782}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3885, file: !693, line: 294, baseType: !3924, size: 64, offset: 320)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !790, !150}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3885, file: !693, line: 296, baseType: !3928, size: 64, offset: 384)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!480, !3891, !448, !351, !679}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3885, file: !693, line: 306, baseType: !351, size: 64, offset: 448)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3885, file: !693, line: 313, baseType: !1661, size: 8, offset: 512)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3885, file: !693, line: 314, baseType: !3928, size: 64, offset: 576)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3885, file: !693, line: 317, baseType: !3935, size: 64, offset: 640)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!1839, !3891, !1841}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3885, file: !693, line: 320, baseType: !3939, size: 64, offset: 704)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!135, !3891, !1852}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3880, file: !693, line: 176, baseType: !3943, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !693, line: 35, flags: DIFlagFwdDecl)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3880, file: !693, line: 177, baseType: !679, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3880, file: !693, line: 178, baseType: !3853, size: 64, offset: 192)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3854, file: !693, line: 215, baseType: !150, size: 64, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3854, file: !693, line: 221, baseType: !163, size: 64, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3854, file: !693, line: 223, baseType: !162, size: 16, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3854, file: !693, line: 224, baseType: !489, size: 16, offset: 912)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3854, file: !693, line: 225, baseType: !3952, size: 64, offset: 960)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !693, line: 36, flags: DIFlagFwdDecl)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3854, file: !693, line: 227, baseType: !1109, size: 128, align: 64, offset: 1024)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !399, file: !400, line: 71, baseType: !3956, size: 32, offset: 448)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3957, line: 19, size: 32, elements: !3958)
!3957 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3958 = !{!3959}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3956, file: !3957, line: 20, baseType: !1138, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !399, file: !400, line: 73, baseType: !49, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !399, file: !400, line: 74, baseType: !49, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !399, file: !400, line: 75, baseType: !49, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !399, file: !400, line: 76, baseType: !49, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !399, file: !400, line: 77, baseType: !49, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !396, file: !48, line: 47, baseType: !386, size: 64, offset: 512)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !396, file: !48, line: 48, baseType: !405, size: 64, offset: 576)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !396, file: !48, line: 49, baseType: !3968, size: 64, offset: 640)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !48, line: 49, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !396, file: !48, line: 50, baseType: !2461, size: 64, offset: 704)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !387, file: !48, line: 418, baseType: !3972, size: 64, offset: 1408)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !48, line: 53, size: 448, elements: !3974)
!3974 = !{!3975, !3976, !3981, !3985, !3989, !3993}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3973, file: !48, line: 54, baseType: !485, size: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3973, file: !48, line: 55, baseType: !3977, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!480, !3972, !3980, !448}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3973, file: !48, line: 57, baseType: !3982, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!480, !3972, !3980, !384, !351}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3973, file: !48, line: 59, baseType: !3986, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !386, !384}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3973, file: !48, line: 60, baseType: !3990, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!135, !386}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3973, file: !48, line: 61, baseType: !3994, size: 64, offset: 384)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !386}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !387, file: !48, line: 419, baseType: !384, size: 64, offset: 1472)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !387, file: !48, line: 420, baseType: !384, size: 64, offset: 1536)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !387, file: !48, line: 421, baseType: !405, size: 64, offset: 1600)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !387, file: !48, line: 424, baseType: !4001, size: 64, offset: 1664)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4003)
!4003 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !48, line: 424, flags: DIFlagFwdDecl)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !387, file: !48, line: 425, baseType: !4005, size: 64, offset: 1728)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !387, file: !48, line: 426, baseType: !49, size: 32, offset: 1792)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !387, file: !48, line: 435, baseType: !216, size: 256, offset: 1856)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !387, file: !48, line: 437, baseType: !4010, size: 64, offset: 2112)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4012, line: 69, size: 320, elements: !4013)
!4012 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4013 = !{!4014, !4015, !4016, !4033, !4035, !4039, !4040}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4011, file: !4012, line: 70, baseType: !384, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4011, file: !4012, line: 71, baseType: !386, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4011, file: !4012, line: 72, baseType: !4017, size: 64, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4019)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4012, line: 47, size: 256, elements: !4020)
!4020 = !{!4021, !4022, !4028, !4032}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4019, file: !4012, line: 49, baseType: !49, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4019, file: !4012, line: 51, baseType: !4023, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!135, !384, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4011)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4019, file: !4012, line: 53, baseType: !4029, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!135, !448, !4026}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4019, file: !4012, line: 55, baseType: !3414, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4011, file: !4012, line: 73, baseType: !4034, size: 16, offset: 192)
!4034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4011, file: !4012, line: 74, baseType: !4036, size: 8, offset: 208)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !154, line: 16, baseType: !4037)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !156, line: 20, baseType: !4038)
!4038 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4011, file: !4012, line: 75, baseType: !157, size: 8, offset: 216)
!4040 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !4012, line: 76, baseType: !4041, size: 64, offset: 256)
!4041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !4012, line: 76, size: 64, elements: !4042)
!4042 = !{!4043, !4044, !4051}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4041, file: !4012, line: 77, baseType: !150, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4041, file: !4012, line: 78, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4047)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4012, line: 86, size: 128, elements: !4048)
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4047, file: !4012, line: 87, baseType: !49, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4047, file: !4012, line: 88, baseType: !448, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4041, file: !4012, line: 79, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4054)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4012, line: 92, size: 256, elements: !4055)
!4055 = !{!4056, !4057, !4058, !4059, !4060}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4054, file: !4012, line: 94, baseType: !49, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4054, file: !4012, line: 95, baseType: !49, size: 32, offset: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4054, file: !4012, line: 96, baseType: !1118, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4054, file: !4012, line: 97, baseType: !4017, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4054, file: !4012, line: 98, baseType: !150, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !387, file: !48, line: 438, baseType: !49, size: 32, offset: 2176)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !387, file: !48, line: 441, baseType: !49, size: 32, offset: 2208)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !387, file: !48, line: 442, baseType: !4001, size: 64, offset: 2240)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !387, file: !48, line: 443, baseType: !4005, size: 64, offset: 2304)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !387, file: !48, line: 444, baseType: !1661, size: 8, offset: 2368)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !387, file: !48, line: 451, baseType: !1661, size: 8, offset: 2376)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !387, file: !48, line: 454, baseType: !49, size: 32, offset: 2400)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !387, file: !48, line: 455, baseType: !4069, size: 64, offset: 2432)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4071, line: 23, size: 96, elements: !4072)
!4071 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4072 = !{!4073, !4074, !4075}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4070, file: !4071, line: 24, baseType: !135, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4070, file: !4071, line: 24, baseType: !135, size: 32, offset: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4070, file: !4071, line: 24, baseType: !135, size: 32, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !387, file: !48, line: 458, baseType: !4077, size: 64, offset: 2496)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!135}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !387, file: !48, line: 460, baseType: !4081, size: 4032, align: 512, offset: 2560)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4082, size: 4032, elements: !4096)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !48, line: 362, size: 576, elements: !4083)
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4082, file: !48, line: 363, baseType: !150, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4082, file: !48, line: 364, baseType: !49, size: 32, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4082, file: !48, line: 367, baseType: !4087, size: 448, offset: 128)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !48, line: 319, size: 448, elements: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4087, file: !48, line: 320, baseType: !386, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4087, file: !48, line: 321, baseType: !4091, size: 384, offset: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4092, line: 40, size: 384, elements: !4093)
!4092 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4093 = !{!4094}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4091, file: !4092, line: 41, baseType: !4095, size: 384, align: 64)
!4095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 384, align: 64, elements: !2605)
!4096 = !{!4097}
!4097 = !DISubrange(count: 7)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !387, file: !48, line: 463, baseType: !4099, size: 192, offset: 6592)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4100, line: 8, size: 192, elements: !4101)
!4100 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4101 = !{!4102, !4103, !4104}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4099, file: !4100, line: 10, baseType: !49, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4099, file: !4100, line: 11, baseType: !784, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4099, file: !4100, line: 12, baseType: !4105, size: 64, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4107, line: 59, size: 48, elements: !4108)
!4107 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4106, file: !4107, line: 60, baseType: !2330, size: 16)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4106, file: !4107, line: 61, baseType: !2330, size: 16, offset: 16)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4106, file: !4107, line: 63, baseType: !49, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4106, file: !4107, line: 64, baseType: !49, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4106, file: !4107, line: 65, baseType: !49, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4106, file: !4107, line: 66, baseType: !49, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !387, file: !48, line: 465, baseType: !149, size: 64, offset: 6784)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !387, file: !48, line: 469, baseType: !49, size: 32, offset: 6848)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !387, file: !48, line: 470, baseType: !260, size: 128, offset: 6912)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !387, file: !48, line: 471, baseType: !4119, size: 64, offset: 7040)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4121, line: 33, size: 96, elements: !4122)
!4121 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4122 = !{!4123, !4124, !4125, !4126}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4120, file: !4121, line: 37, baseType: !135, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4120, file: !4121, line: 43, baseType: !135, size: 32, offset: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4120, file: !4121, line: 45, baseType: !162, size: 16, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4120, file: !4121, line: 47, baseType: !162, size: 16, offset: 80)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !387, file: !48, line: 476, baseType: !4128, size: 64, offset: 7104)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !48, line: 378, size: 256, elements: !4130)
!4130 = !{!4131, !4132, !4133, !4134}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4129, file: !48, line: 379, baseType: !166, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4129, file: !48, line: 380, baseType: !49, size: 32, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4129, file: !48, line: 381, baseType: !448, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4129, file: !48, line: 382, baseType: !448, size: 64, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !387, file: !48, line: 477, baseType: !4129, size: 256, offset: 7168)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !387, file: !48, line: 480, baseType: !4137, size: 64, offset: 7424)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !48, line: 480, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !387, file: !48, line: 483, baseType: !4140, size: 64, offset: 7488)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !48, line: 483, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !387, file: !48, line: 488, baseType: !448, size: 64, offset: 7552)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !387, file: !48, line: 492, baseType: !150, size: 64, offset: 7616)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !387, file: !48, line: 493, baseType: !49, size: 32, offset: 7680)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !387, file: !48, line: 495, baseType: !150, size: 64, offset: 7744)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !387, file: !48, line: 496, baseType: !49, size: 32, offset: 7808)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !387, file: !48, line: 499, baseType: !49, size: 32, offset: 7840)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !387, file: !48, line: 500, baseType: !4149, size: 64, offset: 7872)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4151, line: 45, baseType: !4152)
!4151 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !387, file: !48, line: 503, baseType: !49, size: 32, offset: 7936)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !387, file: !48, line: 504, baseType: !4155, size: 64, offset: 8000)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4158, line: 96, size: 192, elements: !4159)
!4158 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4159 = !{!4160, !4161, !4204, !4206}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4157, file: !4158, line: 97, baseType: !49, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4157, file: !4158, line: 98, baseType: !4162, size: 64, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4158, line: 24, size: 3072, elements: !4164)
!4164 = !{!4165, !4167, !4168, !4169, !4170, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4201, !4202, !4203}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4163, file: !4158, line: 26, baseType: !4166, size: 128)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !2605)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4163, file: !4158, line: 27, baseType: !4166, size: 128, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4163, file: !4158, line: 28, baseType: !135, size: 32, offset: 256)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4163, file: !4158, line: 31, baseType: !412, size: 32, align: 512, offset: 512)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4163, file: !4158, line: 32, baseType: !4171, size: 960, offset: 576)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4172, line: 206, size: 960, elements: !4173)
!4172 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4173 = !{!4174, !4175, !4178, !4180, !4181, !4183}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4171, file: !4172, line: 207, baseType: !1112, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4171, file: !4172, line: 208, baseType: !4176, size: 256, offset: 64)
!4176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4177, size: 256, elements: !1504)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4171, file: !4172, line: 209, baseType: !4179, size: 256, offset: 320)
!4179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !1504)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4171, file: !4172, line: 213, baseType: !483, size: 64, offset: 576)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4171, file: !4172, line: 215, baseType: !4182, size: 256, offset: 640)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 256, elements: !1504)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4171, file: !4172, line: 216, baseType: !157, size: 8, offset: 896)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4163, file: !4158, line: 33, baseType: !149, size: 64, offset: 1536)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4163, file: !4158, line: 34, baseType: !149, size: 64, offset: 1600)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4163, file: !4158, line: 35, baseType: !1661, size: 8, offset: 1664)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4163, file: !4158, line: 36, baseType: !3041, size: 320, offset: 1728)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4163, file: !4158, line: 37, baseType: !2352, size: 256, offset: 2048)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4163, file: !4158, line: 38, baseType: !1109, size: 128, align: 64, offset: 2304)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4163, file: !4158, line: 39, baseType: !4191, size: 64, offset: 2432)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4158, line: 49, size: 768, elements: !4193)
!4193 = !{!4194, !4195, !4196, !4197, !4198, !4199, !4200}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4192, file: !4158, line: 50, baseType: !412, size: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4192, file: !4158, line: 51, baseType: !4179, size: 256, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4192, file: !4158, line: 53, baseType: !4179, size: 256, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4192, file: !4158, line: 54, baseType: !149, size: 64, offset: 576)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4192, file: !4158, line: 55, baseType: !4191, size: 64, offset: 640)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4192, file: !4158, line: 56, baseType: !135, size: 32, offset: 704)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4192, file: !4158, line: 57, baseType: !135, size: 32, offset: 736)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4163, file: !4158, line: 40, baseType: !149, size: 64, offset: 2496)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4163, file: !4158, line: 42, baseType: !135, size: 32, offset: 2560)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4163, file: !4158, line: 43, baseType: !4156, size: 64, offset: 2624)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4157, file: !4158, line: 99, baseType: !4205, offset: 128)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !720, line: 211, elements: !721)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4157, file: !4158, line: 100, baseType: !4207, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4158, line: 63, size: 3008, elements: !4209)
!4209 = !{!4210, !4211, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4239}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4208, file: !4158, line: 64, baseType: !4191, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4208, file: !4158, line: 65, baseType: !4212, size: 192, offset: 64)
!4212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4191, size: 192, elements: !449)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4208, file: !4158, line: 67, baseType: !135, size: 32, offset: 256)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4208, file: !4158, line: 68, baseType: !216, size: 256, offset: 320)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4208, file: !4158, line: 69, baseType: !412, size: 32, offset: 576)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4208, file: !4158, line: 70, baseType: !216, size: 256, offset: 640)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4208, file: !4158, line: 71, baseType: !149, size: 64, offset: 896)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4208, file: !4158, line: 72, baseType: !149, size: 64, offset: 960)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4208, file: !4158, line: 73, baseType: !149, size: 64, offset: 1024)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4208, file: !4158, line: 74, baseType: !149, size: 64, offset: 1088)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4208, file: !4158, line: 75, baseType: !149, size: 64, offset: 1152)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4208, file: !4158, line: 76, baseType: !149, size: 64, offset: 1216)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4208, file: !4158, line: 77, baseType: !149, size: 64, offset: 1280)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4208, file: !4158, line: 78, baseType: !149, size: 64, offset: 1344)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4208, file: !4158, line: 79, baseType: !1661, size: 8, offset: 1408)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4208, file: !4158, line: 80, baseType: !149, size: 64, offset: 1472)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4208, file: !4158, line: 81, baseType: !216, size: 256, offset: 1536)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4208, file: !4158, line: 82, baseType: !2038, size: 256, offset: 1792)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4208, file: !4158, line: 84, baseType: !240, size: 32, offset: 2048)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4208, file: !4158, line: 87, baseType: !149, size: 64, offset: 2112)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4208, file: !4158, line: 88, baseType: !149, size: 64, offset: 2176)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4208, file: !4158, line: 89, baseType: !4233, size: 704, offset: 2240)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2353, line: 111, size: 704, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4238}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4233, file: !2353, line: 112, baseType: !2352, size: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4233, file: !2353, line: 113, baseType: !3041, size: 320, offset: 256)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4233, file: !2353, line: 116, baseType: !3345, size: 64, offset: 576)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4233, file: !2353, line: 117, baseType: !135, size: 32, offset: 640)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4208, file: !4158, line: 90, baseType: !4156, size: 64, offset: 2944)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !387, file: !48, line: 515, baseType: !4241, size: 64, offset: 8064)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4243, line: 117, size: 128, elements: !4244)
!4243 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4244 = !{!4245, !4246, !4247}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4242, file: !4243, line: 118, baseType: !186, size: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4242, file: !4243, line: 119, baseType: !186, size: 32, offset: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4242, file: !4243, line: 120, baseType: !483, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !387, file: !48, line: 516, baseType: !49, size: 32, offset: 8128)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !387, file: !48, line: 519, baseType: !49, size: 32, offset: 8160)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !387, file: !48, line: 520, baseType: !4251, size: 64, offset: 8192)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !387, file: !48, line: 523, baseType: !4253, size: 64, offset: 8256)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !48, line: 523, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !387, file: !48, line: 524, baseType: !49, size: 32, offset: 8320)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !387, file: !48, line: 525, baseType: !4258, size: 64, offset: 8384)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !48, line: 525, flags: DIFlagFwdDecl)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !387, file: !48, line: 526, baseType: !49, size: 32, offset: 8448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !387, file: !48, line: 533, baseType: !150, size: 64, offset: 8512)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !387, file: !48, line: 534, baseType: !49, size: 32, offset: 8576)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !387, file: !48, line: 535, baseType: !4265, size: 64, offset: 8640)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !387, file: !48, line: 536, baseType: !49, size: 32, offset: 8704)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !387, file: !48, line: 539, baseType: !135, size: 32, offset: 8736)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !387, file: !48, line: 540, baseType: !4269, size: 64, offset: 8768)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4271, line: 32, size: 64, elements: !4272)
!4271 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4272 = !{!4273, !4274}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4270, file: !4271, line: 33, baseType: !186, size: 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4270, file: !4271, line: 34, baseType: !186, size: 32, offset: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !387, file: !48, line: 563, baseType: !260, size: 128, offset: 8832)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !387, file: !48, line: 565, baseType: !260, size: 128, offset: 8960)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !387, file: !48, line: 568, baseType: !4278, size: 64, offset: 9088)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !387, file: !48, line: 570, baseType: !240, size: 32, offset: 9152)
!4280 = !{!4281, !4282, !4283, !4284, !4285}
!4281 = !DILocalVariable(name: "sechdrs", arg: 1, scope: !366, file: !2, line: 252, type: !369)
!4282 = !DILocalVariable(name: "strtab", arg: 2, scope: !366, file: !2, line: 253, type: !384)
!4283 = !DILocalVariable(name: "symindex", arg: 3, scope: !366, file: !2, line: 254, type: !49)
!4284 = !DILocalVariable(name: "relsec", arg: 4, scope: !366, file: !2, line: 255, type: !49)
!4285 = !DILocalVariable(name: "me", arg: 5, scope: !366, file: !2, line: 256, type: !386)
!4286 = !DILocation(line: 252, column: 36, scope: !366)
!4287 = !DILocation(line: 253, column: 18, scope: !366)
!4288 = !DILocation(line: 254, column: 19, scope: !366)
!4289 = !DILocation(line: 255, column: 19, scope: !366)
!4290 = !DILocation(line: 256, column: 21, scope: !366)
!4291 = !DILocation(line: 258, column: 28, scope: !366)
!4292 = !DILocation(line: 258, column: 37, scope: !366)
!4293 = !DILocation(line: 258, column: 45, scope: !366)
!4294 = !DILocation(line: 258, column: 55, scope: !366)
!4295 = !DILocation(line: 258, column: 63, scope: !366)
!4296 = !DILocation(line: 258, column: 9, scope: !366)
!4297 = !DILocation(line: 258, column: 2, scope: !366)
!4298 = distinct !DISubprogram(name: "write_relocate_add", scope: !2, file: !2, line: 225, type: !4299, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !4301)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!135, !369, !384, !49, !49, !386, !1661}
!4301 = !{!4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310}
!4302 = !DILocalVariable(name: "sechdrs", arg: 1, scope: !4298, file: !2, line: 225, type: !369)
!4303 = !DILocalVariable(name: "strtab", arg: 2, scope: !4298, file: !2, line: 226, type: !384)
!4304 = !DILocalVariable(name: "symindex", arg: 3, scope: !4298, file: !2, line: 227, type: !49)
!4305 = !DILocalVariable(name: "relsec", arg: 4, scope: !4298, file: !2, line: 228, type: !49)
!4306 = !DILocalVariable(name: "me", arg: 5, scope: !4298, file: !2, line: 229, type: !386)
!4307 = !DILocalVariable(name: "apply", arg: 6, scope: !4298, file: !2, line: 230, type: !1661)
!4308 = !DILocalVariable(name: "ret", scope: !4298, file: !2, line: 232, type: !135)
!4309 = !DILocalVariable(name: "early", scope: !4298, file: !2, line: 233, type: !1661)
!4310 = !DILocalVariable(name: "write", scope: !4298, file: !2, line: 234, type: !4311)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!150, !150, !325, !351}
!4314 = !DILocation(line: 225, column: 43, scope: !4298)
!4315 = !DILocation(line: 226, column: 22, scope: !4298)
!4316 = !DILocation(line: 227, column: 23, scope: !4298)
!4317 = !DILocation(line: 228, column: 23, scope: !4298)
!4318 = !DILocation(line: 229, column: 25, scope: !4298)
!4319 = !DILocation(line: 230, column: 15, scope: !4298)
!4320 = !DILocation(line: 232, column: 2, scope: !4298)
!4321 = !DILocation(line: 232, column: 6, scope: !4298)
!4322 = !DILocation(line: 233, column: 2, scope: !4298)
!4323 = !DILocation(line: 233, column: 7, scope: !4298)
!4324 = !DILocation(line: 233, column: 15, scope: !4298)
!4325 = !DILocation(line: 233, column: 19, scope: !4298)
!4326 = !DILocation(line: 233, column: 25, scope: !4298)
!4327 = !DILocation(line: 234, column: 2, scope: !4298)
!4328 = !DILocation(line: 234, column: 10, scope: !4298)
!4329 = !DILocation(line: 236, column: 7, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4298, file: !2, line: 236, column: 6)
!4331 = !{i8 0, i8 2}
!4332 = !DILocation(line: 236, column: 6, scope: !4298)
!4333 = !DILocation(line: 237, column: 9, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4330, file: !2, line: 236, column: 14)
!4335 = !DILocation(line: 238, column: 3, scope: !4334)
!4336 = !DILocation(line: 239, column: 2, scope: !4334)
!4337 = !DILocation(line: 241, column: 29, scope: !4298)
!4338 = !DILocation(line: 241, column: 38, scope: !4298)
!4339 = !DILocation(line: 241, column: 46, scope: !4298)
!4340 = !DILocation(line: 241, column: 56, scope: !4298)
!4341 = !DILocation(line: 241, column: 64, scope: !4298)
!4342 = !DILocation(line: 242, column: 8, scope: !4298)
!4343 = !DILocation(line: 242, column: 15, scope: !4298)
!4344 = !DILocation(line: 241, column: 8, scope: !4298)
!4345 = !DILocation(line: 241, column: 6, scope: !4298)
!4346 = !DILocation(line: 244, column: 7, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4298, file: !2, line: 244, column: 6)
!4348 = !DILocation(line: 244, column: 6, scope: !4298)
!4349 = !DILocation(line: 245, column: 3, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4347, file: !2, line: 244, column: 14)
!4351 = !DILocation(line: 246, column: 3, scope: !4350)
!4352 = !DILocation(line: 247, column: 2, scope: !4350)
!4353 = !DILocation(line: 249, column: 9, scope: !4298)
!4354 = !DILocation(line: 250, column: 1, scope: !4298)
!4355 = !DILocation(line: 249, column: 2, scope: !4298)
!4356 = distinct !DISubprogram(name: "module_finalize", scope: !2, file: !2, line: 274, type: !4357, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !4381)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!135, !4359, !4379, !386}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4361)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Ehdr", file: !168, line: 241, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_hdr", file: !168, line: 226, size: 512, elements: !4363)
!4363 = !{!4364, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !4362, file: !168, line: 227, baseType: !4365, size: 128)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !41)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !4362, file: !168, line: 228, baseType: !176, size: 16, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !4362, file: !168, line: 229, baseType: !176, size: 16, offset: 144)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !4362, file: !168, line: 230, baseType: !172, size: 32, offset: 160)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !4362, file: !168, line: 231, baseType: !178, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !4362, file: !168, line: 232, baseType: !378, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !4362, file: !168, line: 233, baseType: !378, size: 64, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !4362, file: !168, line: 234, baseType: !172, size: 32, offset: 384)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !4362, file: !168, line: 235, baseType: !176, size: 16, offset: 416)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !4362, file: !168, line: 236, baseType: !176, size: 16, offset: 432)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !4362, file: !168, line: 237, baseType: !176, size: 16, offset: 448)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !4362, file: !168, line: 238, baseType: !176, size: 16, offset: 464)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !4362, file: !168, line: 239, baseType: !176, size: 16, offset: 480)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !4362, file: !168, line: 240, baseType: !176, size: 16, offset: 496)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!4381 = !{!4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4400, !4403, !4404, !4405, !4406, !4409, !4412, !4415, !4433, !4436, !4439, !4440}
!4382 = !DILocalVariable(name: "hdr", arg: 1, scope: !4356, file: !2, line: 274, type: !4359)
!4383 = !DILocalVariable(name: "sechdrs", arg: 2, scope: !4356, file: !2, line: 275, type: !4379)
!4384 = !DILocalVariable(name: "me", arg: 3, scope: !4356, file: !2, line: 276, type: !386)
!4385 = !DILocalVariable(name: "s", scope: !4356, file: !2, line: 278, type: !4379)
!4386 = !DILocalVariable(name: "alt", scope: !4356, file: !2, line: 278, type: !4379)
!4387 = !DILocalVariable(name: "locks", scope: !4356, file: !2, line: 278, type: !4379)
!4388 = !DILocalVariable(name: "para", scope: !4356, file: !2, line: 279, type: !4379)
!4389 = !DILocalVariable(name: "orc", scope: !4356, file: !2, line: 279, type: !4379)
!4390 = !DILocalVariable(name: "orc_ip", scope: !4356, file: !2, line: 279, type: !4379)
!4391 = !DILocalVariable(name: "retpolines", scope: !4356, file: !2, line: 280, type: !4379)
!4392 = !DILocalVariable(name: "returns", scope: !4356, file: !2, line: 280, type: !4379)
!4393 = !DILocalVariable(name: "ibt_endbr", scope: !4356, file: !2, line: 280, type: !4379)
!4394 = !DILocalVariable(name: "calls", scope: !4356, file: !2, line: 281, type: !4379)
!4395 = !DILocalVariable(name: "cfi", scope: !4356, file: !2, line: 281, type: !4379)
!4396 = !DILocalVariable(name: "secstrings", scope: !4356, file: !2, line: 282, type: !448)
!4397 = !DILocalVariable(name: "pseg", scope: !4398, file: !2, line: 312, type: !150)
!4398 = distinct !DILexicalBlock(scope: !4399, file: !2, line: 311, column: 12)
!4399 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 311, column: 6)
!4400 = !DILocalVariable(name: "rseg", scope: !4401, file: !2, line: 316, type: !150)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !2, line: 315, column: 25)
!4402 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 315, column: 6)
!4403 = !DILocalVariable(name: "cseg", scope: !4401, file: !2, line: 316, type: !150)
!4404 = !DILocalVariable(name: "rsize", scope: !4401, file: !2, line: 317, type: !49)
!4405 = !DILocalVariable(name: "csize", scope: !4401, file: !2, line: 317, type: !49)
!4406 = !DILocalVariable(name: "rseg", scope: !4407, file: !2, line: 332, type: !150)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !2, line: 331, column: 18)
!4408 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 331, column: 6)
!4409 = !DILocalVariable(name: "rseg", scope: !4410, file: !2, line: 336, type: !150)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !2, line: 335, column: 15)
!4411 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 335, column: 6)
!4412 = !DILocalVariable(name: "aseg", scope: !4413, file: !2, line: 341, type: !150)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !2, line: 339, column: 11)
!4414 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 339, column: 6)
!4415 = !DILocalVariable(name: "cs", scope: !4416, file: !2, line: 345, type: !4418)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !2, line: 344, column: 21)
!4417 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 344, column: 6)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callthunk_sites", file: !4419, line: 106, size: 256, elements: !4420)
!4419 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!4420 = !{!4421, !4422, !4423, !4432}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "call_start", scope: !4418, file: !4419, line: 107, baseType: !185, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "call_end", scope: !4418, file: !4419, line: 107, baseType: !185, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "pv_start", scope: !4418, file: !4419, line: 108, baseType: !4424, size: 64, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "paravirt_patch_site", file: !4426, line: 7, size: 128, elements: !4427)
!4426 = !DIFile(filename: "./arch/x86/include/asm/paravirt_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6536b931051cedf88271762a2f1845b")
!4427 = !{!4428, !4430, !4431}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "instr", scope: !4425, file: !4426, line: 8, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4425, file: !4426, line: 9, baseType: !157, size: 8, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4425, file: !4426, line: 10, baseType: !157, size: 8, offset: 72)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "pv_end", scope: !4418, file: !4419, line: 108, baseType: !4424, size: 64, offset: 192)
!4433 = !DILocalVariable(name: "iseg", scope: !4434, file: !2, line: 360, type: !150)
!4434 = distinct !DILexicalBlock(scope: !4435, file: !2, line: 359, column: 17)
!4435 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 359, column: 6)
!4436 = !DILocalVariable(name: "lseg", scope: !4437, file: !2, line: 364, type: !150)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !2, line: 363, column: 13)
!4438 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 363, column: 6)
!4439 = !DILocalVariable(name: "text", scope: !4437, file: !2, line: 365, type: !150)
!4440 = !DILocalVariable(name: "text_end", scope: !4437, file: !2, line: 366, type: !150)
!4441 = !DILocation(line: 274, column: 37, scope: !4356)
!4442 = !DILocation(line: 275, column: 23, scope: !4356)
!4443 = !DILocation(line: 276, column: 22, scope: !4356)
!4444 = !DILocation(line: 278, column: 2, scope: !4356)
!4445 = !DILocation(line: 278, column: 18, scope: !4356)
!4446 = !DILocation(line: 278, column: 22, scope: !4356)
!4447 = !DILocation(line: 278, column: 35, scope: !4356)
!4448 = !DILocation(line: 279, column: 4, scope: !4356)
!4449 = !DILocation(line: 279, column: 18, scope: !4356)
!4450 = !DILocation(line: 279, column: 31, scope: !4356)
!4451 = !DILocation(line: 280, column: 4, scope: !4356)
!4452 = !DILocation(line: 280, column: 24, scope: !4356)
!4453 = !DILocation(line: 280, column: 41, scope: !4356)
!4454 = !DILocation(line: 281, column: 4, scope: !4356)
!4455 = !DILocation(line: 281, column: 19, scope: !4356)
!4456 = !DILocation(line: 282, column: 2, scope: !4356)
!4457 = !DILocation(line: 282, column: 8, scope: !4356)
!4458 = !DILocation(line: 282, column: 29, scope: !4356)
!4459 = !DILocation(line: 282, column: 35, scope: !4356)
!4460 = !DILocation(line: 282, column: 43, scope: !4356)
!4461 = !DILocation(line: 282, column: 48, scope: !4356)
!4462 = !DILocation(line: 282, column: 60, scope: !4356)
!4463 = !DILocation(line: 282, column: 33, scope: !4356)
!4464 = !DILocation(line: 284, column: 11, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 284, column: 2)
!4466 = !DILocation(line: 284, column: 9, scope: !4465)
!4467 = !DILocation(line: 284, column: 7, scope: !4465)
!4468 = !DILocation(line: 284, column: 20, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4465, file: !2, line: 284, column: 2)
!4470 = !DILocation(line: 284, column: 24, scope: !4469)
!4471 = !DILocation(line: 284, column: 34, scope: !4469)
!4472 = !DILocation(line: 284, column: 39, scope: !4469)
!4473 = !DILocation(line: 284, column: 32, scope: !4469)
!4474 = !DILocation(line: 284, column: 22, scope: !4469)
!4475 = !DILocation(line: 284, column: 2, scope: !4465)
!4476 = !DILocation(line: 285, column: 35, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 285, column: 7)
!4478 = distinct !DILexicalBlock(scope: !4469, file: !2, line: 284, column: 53)
!4479 = !DILocation(line: 285, column: 48, scope: !4477)
!4480 = !DILocation(line: 285, column: 51, scope: !4477)
!4481 = !DILocation(line: 285, column: 46, scope: !4477)
!4482 = !DILocation(line: 285, column: 8, scope: !4477)
!4483 = !DILocation(line: 285, column: 7, scope: !4478)
!4484 = !DILocation(line: 286, column: 10, scope: !4477)
!4485 = !DILocation(line: 286, column: 8, scope: !4477)
!4486 = !DILocation(line: 286, column: 4, scope: !4477)
!4487 = !DILocation(line: 287, column: 29, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 287, column: 7)
!4489 = !DILocation(line: 287, column: 42, scope: !4488)
!4490 = !DILocation(line: 287, column: 45, scope: !4488)
!4491 = !DILocation(line: 287, column: 40, scope: !4488)
!4492 = !DILocation(line: 287, column: 8, scope: !4488)
!4493 = !DILocation(line: 287, column: 7, scope: !4478)
!4494 = !DILocation(line: 288, column: 12, scope: !4488)
!4495 = !DILocation(line: 288, column: 10, scope: !4488)
!4496 = !DILocation(line: 288, column: 4, scope: !4488)
!4497 = !DILocation(line: 289, column: 36, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 289, column: 7)
!4499 = !DILocation(line: 289, column: 49, scope: !4498)
!4500 = !DILocation(line: 289, column: 52, scope: !4498)
!4501 = !DILocation(line: 289, column: 47, scope: !4498)
!4502 = !DILocation(line: 289, column: 8, scope: !4498)
!4503 = !DILocation(line: 289, column: 7, scope: !4478)
!4504 = !DILocation(line: 290, column: 11, scope: !4498)
!4505 = !DILocation(line: 290, column: 9, scope: !4498)
!4506 = !DILocation(line: 290, column: 4, scope: !4498)
!4507 = !DILocation(line: 291, column: 30, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 291, column: 7)
!4509 = !DILocation(line: 291, column: 43, scope: !4508)
!4510 = !DILocation(line: 291, column: 46, scope: !4508)
!4511 = !DILocation(line: 291, column: 41, scope: !4508)
!4512 = !DILocation(line: 291, column: 8, scope: !4508)
!4513 = !DILocation(line: 291, column: 7, scope: !4478)
!4514 = !DILocation(line: 292, column: 10, scope: !4508)
!4515 = !DILocation(line: 292, column: 8, scope: !4508)
!4516 = !DILocation(line: 292, column: 4, scope: !4508)
!4517 = !DILocation(line: 293, column: 33, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 293, column: 7)
!4519 = !DILocation(line: 293, column: 46, scope: !4518)
!4520 = !DILocation(line: 293, column: 49, scope: !4518)
!4521 = !DILocation(line: 293, column: 44, scope: !4518)
!4522 = !DILocation(line: 293, column: 8, scope: !4518)
!4523 = !DILocation(line: 293, column: 7, scope: !4478)
!4524 = !DILocation(line: 294, column: 13, scope: !4518)
!4525 = !DILocation(line: 294, column: 11, scope: !4518)
!4526 = !DILocation(line: 294, column: 4, scope: !4518)
!4527 = !DILocation(line: 295, column: 35, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 295, column: 7)
!4529 = !DILocation(line: 295, column: 48, scope: !4528)
!4530 = !DILocation(line: 295, column: 51, scope: !4528)
!4531 = !DILocation(line: 295, column: 46, scope: !4528)
!4532 = !DILocation(line: 295, column: 8, scope: !4528)
!4533 = !DILocation(line: 295, column: 7, scope: !4478)
!4534 = !DILocation(line: 296, column: 17, scope: !4528)
!4535 = !DILocation(line: 296, column: 15, scope: !4528)
!4536 = !DILocation(line: 296, column: 4, scope: !4528)
!4537 = !DILocation(line: 297, column: 32, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 297, column: 7)
!4539 = !DILocation(line: 297, column: 45, scope: !4538)
!4540 = !DILocation(line: 297, column: 48, scope: !4538)
!4541 = !DILocation(line: 297, column: 43, scope: !4538)
!4542 = !DILocation(line: 297, column: 8, scope: !4538)
!4543 = !DILocation(line: 297, column: 7, scope: !4478)
!4544 = !DILocation(line: 298, column: 14, scope: !4538)
!4545 = !DILocation(line: 298, column: 12, scope: !4538)
!4546 = !DILocation(line: 298, column: 4, scope: !4538)
!4547 = !DILocation(line: 299, column: 30, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 299, column: 7)
!4549 = !DILocation(line: 299, column: 43, scope: !4548)
!4550 = !DILocation(line: 299, column: 46, scope: !4548)
!4551 = !DILocation(line: 299, column: 41, scope: !4548)
!4552 = !DILocation(line: 299, column: 8, scope: !4548)
!4553 = !DILocation(line: 299, column: 7, scope: !4478)
!4554 = !DILocation(line: 300, column: 12, scope: !4548)
!4555 = !DILocation(line: 300, column: 10, scope: !4548)
!4556 = !DILocation(line: 300, column: 4, scope: !4548)
!4557 = !DILocation(line: 301, column: 29, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 301, column: 7)
!4559 = !DILocation(line: 301, column: 42, scope: !4558)
!4560 = !DILocation(line: 301, column: 45, scope: !4558)
!4561 = !DILocation(line: 301, column: 40, scope: !4558)
!4562 = !DILocation(line: 301, column: 8, scope: !4558)
!4563 = !DILocation(line: 301, column: 7, scope: !4478)
!4564 = !DILocation(line: 302, column: 10, scope: !4558)
!4565 = !DILocation(line: 302, column: 8, scope: !4558)
!4566 = !DILocation(line: 302, column: 4, scope: !4558)
!4567 = !DILocation(line: 303, column: 34, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 303, column: 7)
!4569 = !DILocation(line: 303, column: 47, scope: !4568)
!4570 = !DILocation(line: 303, column: 50, scope: !4568)
!4571 = !DILocation(line: 303, column: 45, scope: !4568)
!4572 = !DILocation(line: 303, column: 8, scope: !4568)
!4573 = !DILocation(line: 303, column: 7, scope: !4478)
!4574 = !DILocation(line: 304, column: 16, scope: !4568)
!4575 = !DILocation(line: 304, column: 14, scope: !4568)
!4576 = !DILocation(line: 304, column: 4, scope: !4568)
!4577 = !DILocation(line: 305, column: 2, scope: !4478)
!4578 = !DILocation(line: 284, column: 49, scope: !4469)
!4579 = !DILocation(line: 284, column: 2, scope: !4469)
!4580 = distinct !{!4580, !4475, !4581, !4582, !4583}
!4581 = !DILocation(line: 305, column: 2, scope: !4465)
!4582 = !{!"llvm.loop.mustprogress"}
!4583 = !{!"llvm.loop.unroll.disable"}
!4584 = !DILocation(line: 311, column: 6, scope: !4399)
!4585 = !DILocation(line: 311, column: 6, scope: !4356)
!4586 = !DILocation(line: 312, column: 3, scope: !4398)
!4587 = !DILocation(line: 312, column: 9, scope: !4398)
!4588 = !DILocation(line: 312, column: 24, scope: !4398)
!4589 = !DILocation(line: 312, column: 30, scope: !4398)
!4590 = !DILocation(line: 312, column: 16, scope: !4398)
!4591 = !DILocation(line: 313, column: 18, scope: !4398)
!4592 = !DILocation(line: 313, column: 24, scope: !4398)
!4593 = !DILocation(line: 313, column: 31, scope: !4398)
!4594 = !DILocation(line: 313, column: 37, scope: !4398)
!4595 = !DILocation(line: 313, column: 29, scope: !4398)
!4596 = !DILocation(line: 313, column: 3, scope: !4398)
!4597 = !DILocation(line: 314, column: 2, scope: !4399)
!4598 = !DILocation(line: 314, column: 2, scope: !4398)
!4599 = !DILocation(line: 315, column: 6, scope: !4402)
!4600 = !DILocation(line: 315, column: 17, scope: !4402)
!4601 = !DILocation(line: 315, column: 20, scope: !4402)
!4602 = !DILocation(line: 315, column: 6, scope: !4356)
!4603 = !DILocation(line: 316, column: 3, scope: !4401)
!4604 = !DILocation(line: 316, column: 9, scope: !4401)
!4605 = !DILocation(line: 316, column: 23, scope: !4401)
!4606 = !DILocation(line: 317, column: 3, scope: !4401)
!4607 = !DILocation(line: 317, column: 16, scope: !4401)
!4608 = !DILocation(line: 317, column: 27, scope: !4401)
!4609 = !DILocation(line: 319, column: 7, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4401, file: !2, line: 319, column: 7)
!4611 = !DILocation(line: 319, column: 7, scope: !4401)
!4612 = !DILocation(line: 320, column: 19, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4610, file: !2, line: 319, column: 19)
!4614 = !DILocation(line: 320, column: 31, scope: !4613)
!4615 = !DILocation(line: 320, column: 11, scope: !4613)
!4616 = !DILocation(line: 320, column: 9, scope: !4613)
!4617 = !DILocation(line: 321, column: 12, scope: !4613)
!4618 = !DILocation(line: 321, column: 24, scope: !4613)
!4619 = !DILocation(line: 321, column: 10, scope: !4613)
!4620 = !DILocation(line: 322, column: 3, scope: !4613)
!4621 = !DILocation(line: 324, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4401, file: !2, line: 324, column: 7)
!4623 = !DILocation(line: 324, column: 7, scope: !4401)
!4624 = !DILocation(line: 325, column: 19, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4622, file: !2, line: 324, column: 12)
!4626 = !DILocation(line: 325, column: 24, scope: !4625)
!4627 = !DILocation(line: 325, column: 11, scope: !4625)
!4628 = !DILocation(line: 325, column: 9, scope: !4625)
!4629 = !DILocation(line: 326, column: 12, scope: !4625)
!4630 = !DILocation(line: 326, column: 17, scope: !4625)
!4631 = !DILocation(line: 326, column: 10, scope: !4625)
!4632 = !DILocation(line: 327, column: 3, scope: !4625)
!4633 = !DILocation(line: 329, column: 17, scope: !4401)
!4634 = !DILocation(line: 329, column: 23, scope: !4401)
!4635 = !DILocation(line: 329, column: 30, scope: !4401)
!4636 = !DILocation(line: 329, column: 28, scope: !4401)
!4637 = !DILocation(line: 329, column: 37, scope: !4401)
!4638 = !DILocation(line: 329, column: 43, scope: !4401)
!4639 = !DILocation(line: 329, column: 50, scope: !4401)
!4640 = !DILocation(line: 329, column: 48, scope: !4401)
!4641 = !DILocation(line: 329, column: 3, scope: !4401)
!4642 = !DILocation(line: 330, column: 2, scope: !4402)
!4643 = !DILocation(line: 330, column: 2, scope: !4401)
!4644 = !DILocation(line: 331, column: 6, scope: !4408)
!4645 = !DILocation(line: 331, column: 6, scope: !4356)
!4646 = !DILocation(line: 332, column: 3, scope: !4407)
!4647 = !DILocation(line: 332, column: 9, scope: !4407)
!4648 = !DILocation(line: 332, column: 24, scope: !4407)
!4649 = !DILocation(line: 332, column: 36, scope: !4407)
!4650 = !DILocation(line: 332, column: 16, scope: !4407)
!4651 = !DILocation(line: 333, column: 20, scope: !4407)
!4652 = !DILocation(line: 333, column: 26, scope: !4407)
!4653 = !DILocation(line: 333, column: 33, scope: !4407)
!4654 = !DILocation(line: 333, column: 45, scope: !4407)
!4655 = !DILocation(line: 333, column: 31, scope: !4407)
!4656 = !DILocation(line: 333, column: 3, scope: !4407)
!4657 = !DILocation(line: 334, column: 2, scope: !4408)
!4658 = !DILocation(line: 334, column: 2, scope: !4407)
!4659 = !DILocation(line: 335, column: 6, scope: !4411)
!4660 = !DILocation(line: 335, column: 6, scope: !4356)
!4661 = !DILocation(line: 336, column: 3, scope: !4410)
!4662 = !DILocation(line: 336, column: 9, scope: !4410)
!4663 = !DILocation(line: 336, column: 24, scope: !4410)
!4664 = !DILocation(line: 336, column: 33, scope: !4410)
!4665 = !DILocation(line: 336, column: 16, scope: !4410)
!4666 = !DILocation(line: 337, column: 17, scope: !4410)
!4667 = !DILocation(line: 337, column: 23, scope: !4410)
!4668 = !DILocation(line: 337, column: 30, scope: !4410)
!4669 = !DILocation(line: 337, column: 39, scope: !4410)
!4670 = !DILocation(line: 337, column: 28, scope: !4410)
!4671 = !DILocation(line: 337, column: 3, scope: !4410)
!4672 = !DILocation(line: 338, column: 2, scope: !4411)
!4673 = !DILocation(line: 338, column: 2, scope: !4410)
!4674 = !DILocation(line: 339, column: 6, scope: !4414)
!4675 = !DILocation(line: 339, column: 6, scope: !4356)
!4676 = !DILocation(line: 341, column: 3, scope: !4413)
!4677 = !DILocation(line: 341, column: 9, scope: !4413)
!4678 = !DILocation(line: 341, column: 24, scope: !4413)
!4679 = !DILocation(line: 341, column: 29, scope: !4413)
!4680 = !DILocation(line: 341, column: 16, scope: !4413)
!4681 = !DILocation(line: 342, column: 22, scope: !4413)
!4682 = !DILocation(line: 342, column: 28, scope: !4413)
!4683 = !DILocation(line: 342, column: 35, scope: !4413)
!4684 = !DILocation(line: 342, column: 40, scope: !4413)
!4685 = !DILocation(line: 342, column: 33, scope: !4413)
!4686 = !DILocation(line: 342, column: 3, scope: !4413)
!4687 = !DILocation(line: 343, column: 2, scope: !4414)
!4688 = !DILocation(line: 343, column: 2, scope: !4413)
!4689 = !DILocation(line: 344, column: 6, scope: !4417)
!4690 = !DILocation(line: 344, column: 12, scope: !4417)
!4691 = !DILocation(line: 344, column: 15, scope: !4417)
!4692 = !DILocation(line: 344, column: 6, scope: !4356)
!4693 = !DILocation(line: 345, column: 3, scope: !4416)
!4694 = !DILocation(line: 345, column: 26, scope: !4416)
!4695 = !DILocation(line: 347, column: 7, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4416, file: !2, line: 347, column: 7)
!4697 = !DILocation(line: 347, column: 7, scope: !4416)
!4698 = !DILocation(line: 348, column: 28, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4696, file: !2, line: 347, column: 14)
!4700 = !DILocation(line: 348, column: 35, scope: !4699)
!4701 = !DILocation(line: 348, column: 20, scope: !4699)
!4702 = !DILocation(line: 348, column: 7, scope: !4699)
!4703 = !DILocation(line: 348, column: 18, scope: !4699)
!4704 = !DILocation(line: 349, column: 26, scope: !4699)
!4705 = !DILocation(line: 349, column: 33, scope: !4699)
!4706 = !DILocation(line: 349, column: 18, scope: !4699)
!4707 = !DILocation(line: 349, column: 43, scope: !4699)
!4708 = !DILocation(line: 349, column: 50, scope: !4699)
!4709 = !DILocation(line: 349, column: 41, scope: !4699)
!4710 = !DILocation(line: 349, column: 7, scope: !4699)
!4711 = !DILocation(line: 349, column: 16, scope: !4699)
!4712 = !DILocation(line: 350, column: 3, scope: !4699)
!4713 = !DILocation(line: 352, column: 7, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4416, file: !2, line: 352, column: 7)
!4715 = !DILocation(line: 352, column: 7, scope: !4416)
!4716 = !DILocation(line: 353, column: 26, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4714, file: !2, line: 352, column: 13)
!4718 = !DILocation(line: 353, column: 32, scope: !4717)
!4719 = !DILocation(line: 353, column: 18, scope: !4717)
!4720 = !DILocation(line: 353, column: 7, scope: !4717)
!4721 = !DILocation(line: 353, column: 16, scope: !4717)
!4722 = !DILocation(line: 354, column: 24, scope: !4717)
!4723 = !DILocation(line: 354, column: 30, scope: !4717)
!4724 = !DILocation(line: 354, column: 16, scope: !4717)
!4725 = !DILocation(line: 354, column: 40, scope: !4717)
!4726 = !DILocation(line: 354, column: 46, scope: !4717)
!4727 = !DILocation(line: 354, column: 38, scope: !4717)
!4728 = !DILocation(line: 354, column: 7, scope: !4717)
!4729 = !DILocation(line: 354, column: 14, scope: !4717)
!4730 = !DILocation(line: 355, column: 3, scope: !4717)
!4731 = !DILocation(line: 357, column: 38, scope: !4416)
!4732 = !DILocation(line: 357, column: 3, scope: !4416)
!4733 = !DILocation(line: 358, column: 2, scope: !4417)
!4734 = !DILocation(line: 358, column: 2, scope: !4416)
!4735 = !DILocation(line: 359, column: 6, scope: !4435)
!4736 = !DILocation(line: 359, column: 6, scope: !4356)
!4737 = !DILocation(line: 360, column: 3, scope: !4434)
!4738 = !DILocation(line: 360, column: 9, scope: !4434)
!4739 = !DILocation(line: 360, column: 24, scope: !4434)
!4740 = !DILocation(line: 360, column: 35, scope: !4434)
!4741 = !DILocation(line: 360, column: 16, scope: !4434)
!4742 = !DILocation(line: 361, column: 20, scope: !4434)
!4743 = !DILocation(line: 361, column: 26, scope: !4434)
!4744 = !DILocation(line: 361, column: 33, scope: !4434)
!4745 = !DILocation(line: 361, column: 44, scope: !4434)
!4746 = !DILocation(line: 361, column: 31, scope: !4434)
!4747 = !DILocation(line: 361, column: 3, scope: !4434)
!4748 = !DILocation(line: 362, column: 2, scope: !4435)
!4749 = !DILocation(line: 362, column: 2, scope: !4434)
!4750 = !DILocation(line: 363, column: 6, scope: !4438)
!4751 = !DILocation(line: 363, column: 6, scope: !4356)
!4752 = !DILocation(line: 364, column: 3, scope: !4437)
!4753 = !DILocation(line: 364, column: 9, scope: !4437)
!4754 = !DILocation(line: 364, column: 24, scope: !4437)
!4755 = !DILocation(line: 364, column: 31, scope: !4437)
!4756 = !DILocation(line: 364, column: 16, scope: !4437)
!4757 = !DILocation(line: 365, column: 3, scope: !4437)
!4758 = !DILocation(line: 365, column: 9, scope: !4437)
!4759 = !DILocation(line: 365, column: 16, scope: !4437)
!4760 = !DILocation(line: 365, column: 20, scope: !4437)
!4761 = !DILocation(line: 365, column: 34, scope: !4437)
!4762 = !DILocation(line: 366, column: 3, scope: !4437)
!4763 = !DILocation(line: 366, column: 9, scope: !4437)
!4764 = !DILocation(line: 366, column: 20, scope: !4437)
!4765 = !DILocation(line: 366, column: 27, scope: !4437)
!4766 = !DILocation(line: 366, column: 31, scope: !4437)
!4767 = !DILocation(line: 366, column: 45, scope: !4437)
!4768 = !DILocation(line: 366, column: 25, scope: !4437)
!4769 = !DILocation(line: 367, column: 31, scope: !4437)
!4770 = !DILocation(line: 367, column: 35, scope: !4437)
!4771 = !DILocation(line: 367, column: 39, scope: !4437)
!4772 = !DILocation(line: 368, column: 10, scope: !4437)
!4773 = !DILocation(line: 368, column: 16, scope: !4437)
!4774 = !DILocation(line: 368, column: 23, scope: !4437)
!4775 = !DILocation(line: 368, column: 30, scope: !4437)
!4776 = !DILocation(line: 368, column: 21, scope: !4437)
!4777 = !DILocation(line: 369, column: 10, scope: !4437)
!4778 = !DILocation(line: 369, column: 16, scope: !4437)
!4779 = !DILocation(line: 367, column: 3, scope: !4437)
!4780 = !DILocation(line: 370, column: 2, scope: !4438)
!4781 = !DILocation(line: 370, column: 2, scope: !4437)
!4782 = !DILocation(line: 372, column: 6, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 372, column: 6)
!4784 = !DILocation(line: 372, column: 10, scope: !4783)
!4785 = !DILocation(line: 372, column: 13, scope: !4783)
!4786 = !DILocation(line: 372, column: 6, scope: !4356)
!4787 = !DILocation(line: 373, column: 22, scope: !4783)
!4788 = !DILocation(line: 373, column: 34, scope: !4783)
!4789 = !DILocation(line: 373, column: 42, scope: !4783)
!4790 = !DILocation(line: 373, column: 26, scope: !4783)
!4791 = !DILocation(line: 373, column: 51, scope: !4783)
!4792 = !DILocation(line: 373, column: 59, scope: !4783)
!4793 = !DILocation(line: 374, column: 16, scope: !4783)
!4794 = !DILocation(line: 374, column: 21, scope: !4783)
!4795 = !DILocation(line: 374, column: 8, scope: !4783)
!4796 = !DILocation(line: 374, column: 30, scope: !4783)
!4797 = !DILocation(line: 374, column: 35, scope: !4783)
!4798 = !DILocation(line: 373, column: 3, scope: !4783)
!4799 = !DILocation(line: 377, column: 1, scope: !4356)
!4800 = !DILocation(line: 376, column: 2, scope: !4356)
!4801 = !DISubprogram(name: "strcmp", scope: !4802, file: !4802, line: 88, type: !4803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4802 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!135, !384, !384}
!4805 = !DISubprogram(name: "apply_paravirt", scope: !4806, file: !4806, line: 11, type: !4807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4806 = !DIFile(filename: "./arch/x86/include/asm/text-patching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4df22955607f445a62da6adb58adb51")
!4807 = !DISubroutineType(types: !4808)
!4808 = !{null, !4424, !4424}
!4809 = !DISubprogram(name: "apply_fineibt", scope: !4419, file: !4419, line: 100, type: !4810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{null, !185, !185, !185, !185}
!4812 = !DISubprogram(name: "apply_retpolines", scope: !4419, file: !4419, line: 97, type: !4813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !185, !185}
!4815 = !DISubprogram(name: "apply_returns", scope: !4419, file: !4419, line: 98, type: !4813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4816 = !DISubprogram(name: "apply_alternatives", scope: !4419, file: !4419, line: 96, type: !4817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{null, !4819, !4819}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alt_instr", file: !4419, line: 73, size: 112, elements: !4821)
!4821 = !{!4822, !4823, !4824, !4833, !4834}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "instr_offset", scope: !4820, file: !4419, line: 74, baseType: !186, size: 32)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "repl_offset", scope: !4820, file: !4419, line: 75, baseType: !186, size: 32, offset: 32)
!4824 = !DIDerivedType(tag: DW_TAG_member, scope: !4820, file: !4419, line: 77, baseType: !4825, size: 32, offset: 64)
!4825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4820, file: !4419, line: 77, size: 32, elements: !4826)
!4826 = !{!4827, !4832}
!4827 = !DIDerivedType(tag: DW_TAG_member, scope: !4825, file: !4419, line: 78, baseType: !4828, size: 32)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4825, file: !4419, line: 78, size: 32, elements: !4829)
!4829 = !{!4830, !4831}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid", scope: !4828, file: !4419, line: 79, baseType: !153, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4828, file: !4419, line: 80, baseType: !153, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "ft_flags", scope: !4825, file: !4419, line: 82, baseType: !153, size: 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "instrlen", scope: !4820, file: !4419, line: 85, baseType: !157, size: 8, offset: 96)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "replacementlen", scope: !4820, file: !4419, line: 86, baseType: !157, size: 8, offset: 104)
!4835 = !DISubprogram(name: "callthunks_patch_module_calls", scope: !4419, file: !4419, line: 113, type: !4836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{null, !4838, !386}
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4839 = !DISubprogram(name: "apply_seal_endbr", scope: !4419, file: !4419, line: 99, type: !4813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4840 = !DISubprogram(name: "alternatives_smp_module_add", scope: !4419, file: !4419, line: 134, type: !4841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{null, !386, !448, !150, !150, !150, !150}
!4843 = !DISubprogram(name: "unwind_module_init", scope: !4844, file: !4844, line: 97, type: !4845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4844 = !DIFile(filename: "./arch/x86/include/asm/unwind.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3235c5cc80be598600446a4d6bd7e4")
!4845 = !DISubroutineType(types: !4846)
!4846 = !{null, !386, !150, !351, !150, !351}
!4847 = distinct !DISubprogram(name: "module_arch_cleanup", scope: !2, file: !2, line: 379, type: !3995, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !4848)
!4848 = !{!4849}
!4849 = !DILocalVariable(name: "mod", arg: 1, scope: !4847, file: !2, line: 379, type: !386)
!4850 = !DILocation(line: 379, column: 41, scope: !4847)
!4851 = !DILocation(line: 381, column: 30, scope: !4847)
!4852 = !DILocation(line: 381, column: 2, scope: !4847)
!4853 = !DILocation(line: 382, column: 1, scope: !4847)
!4854 = !DISubprogram(name: "alternatives_smp_module_del", scope: !4419, file: !4419, line: 137, type: !3995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4855 = distinct !DISubprogram(name: "kaslr_enabled", scope: !4856, file: !4856, line: 80, type: !3825, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45)
!4856 = !DIFile(filename: "./arch/x86/include/asm/setup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70163219e3d956dec6d0e7b32cf67c8b")
!4857 = !DILocation(line: 83, column: 22, scope: !4855)
!4858 = !DILocation(line: 83, column: 6, scope: !4855)
!4859 = !DILocation(line: 83, column: 32, scope: !4855)
!4860 = !DILocation(line: 83, column: 4, scope: !4855)
!4861 = !DILocation(line: 83, column: 3, scope: !4855)
!4862 = !DILocation(line: 82, column: 2, scope: !4855)
!4863 = !DISubprogram(name: "mutex_lock", scope: !217, file: !217, line: 227, type: !4864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{null, !4866}
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!4867 = distinct !DISubprogram(name: "get_random_u32_inclusive", scope: !4868, file: !4868, line: 110, type: !4869, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !4871)
!4868 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!153, !153, !153}
!4871 = !{!4872, !4873}
!4872 = !DILocalVariable(name: "floor", arg: 1, scope: !4867, file: !4868, line: 110, type: !153)
!4873 = !DILocalVariable(name: "ceil", arg: 2, scope: !4867, file: !4868, line: 110, type: !153)
!4874 = !DILocation(line: 110, column: 48, scope: !4867)
!4875 = !DILocation(line: 110, column: 59, scope: !4867)
!4876 = !DILocation(line: 112, column: 2, scope: !4867)
!4877 = !DILocation(line: 112, column: 2, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !4868, line: 112, column: 2)
!4879 = distinct !DILexicalBlock(scope: !4867, file: !4868, line: 112, column: 2)
!4880 = !DILocation(line: 112, column: 2, scope: !4879)
!4881 = !{i32 -2144333892}
!4882 = !DILocation(line: 115, column: 9, scope: !4867)
!4883 = !DILocation(line: 115, column: 38, scope: !4867)
!4884 = !DILocation(line: 115, column: 45, scope: !4867)
!4885 = !DILocation(line: 115, column: 43, scope: !4867)
!4886 = !DILocation(line: 115, column: 51, scope: !4867)
!4887 = !DILocation(line: 115, column: 17, scope: !4867)
!4888 = !DILocation(line: 115, column: 15, scope: !4867)
!4889 = !DILocation(line: 115, column: 2, scope: !4867)
!4890 = !DISubprogram(name: "mutex_unlock", scope: !217, file: !217, line: 246, type: !4864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4891 = !DISubprogram(name: "__compiletime_assert_97", scope: !4868, file: !4868, line: 112, type: !2719, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4892 = distinct !DISubprogram(name: "get_random_u32_below", scope: !4868, file: !4868, line: 60, type: !4893, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !4895)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!153, !153}
!4895 = !{!4896, !4897, !4903, !4906}
!4896 = !DILocalVariable(name: "ceil", arg: 1, scope: !4892, file: !4868, line: 60, type: !153)
!4897 = !DILocalVariable(name: "mult", scope: !4898, file: !4868, line: 78, type: !153)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !4868, line: 77, column: 24)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !4868, line: 77, column: 7)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !4868, line: 76, column: 11)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !4868, line: 76, column: 2)
!4902 = distinct !DILexicalBlock(scope: !4892, file: !4868, line: 76, column: 2)
!4903 = !DILocalVariable(name: "mult", scope: !4904, file: !4868, line: 82, type: !153)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !4868, line: 81, column: 32)
!4905 = distinct !DILexicalBlock(scope: !4899, file: !4868, line: 81, column: 14)
!4906 = !DILocalVariable(name: "mult", scope: !4907, file: !4868, line: 86, type: !163)
!4907 = distinct !DILexicalBlock(scope: !4905, file: !4868, line: 85, column: 10)
!4908 = !DILocation(line: 60, column: 44, scope: !4892)
!4909 = !DILocation(line: 62, column: 28, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4892, file: !4868, line: 62, column: 6)
!4911 = !DILocation(line: 62, column: 7, scope: !4910)
!4912 = !DILocation(line: 62, column: 6, scope: !4892)
!4913 = !DILocation(line: 63, column: 33, scope: !4910)
!4914 = !DILocation(line: 63, column: 10, scope: !4910)
!4915 = !DILocation(line: 63, column: 3, scope: !4910)
!4916 = !DILocation(line: 73, column: 2, scope: !4892)
!4917 = !DILocation(line: 73, column: 2, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !4868, line: 73, column: 2)
!4919 = distinct !DILexicalBlock(scope: !4892, file: !4868, line: 73, column: 2)
!4920 = !DILocation(line: 73, column: 2, scope: !4919)
!4921 = !{i32 -2144337099}
!4922 = !DILocation(line: 74, column: 6, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4892, file: !4868, line: 74, column: 6)
!4924 = !DILocation(line: 74, column: 11, scope: !4923)
!4925 = !DILocation(line: 74, column: 6, scope: !4892)
!4926 = !DILocation(line: 75, column: 3, scope: !4923)
!4927 = !DILocation(line: 76, column: 2, scope: !4892)
!4928 = !DILocation(line: 77, column: 7, scope: !4899)
!4929 = !DILocation(line: 77, column: 12, scope: !4899)
!4930 = !DILocation(line: 77, column: 7, scope: !4900)
!4931 = !DILocation(line: 78, column: 4, scope: !4898)
!4932 = !DILocation(line: 78, column: 8, scope: !4898)
!4933 = !DILocation(line: 78, column: 15, scope: !4898)
!4934 = !DILocation(line: 78, column: 22, scope: !4898)
!4935 = !DILocation(line: 78, column: 20, scope: !4898)
!4936 = !DILocation(line: 79, column: 8, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4898, file: !4868, line: 79, column: 8)
!4938 = !DILocation(line: 79, column: 8, scope: !4898)
!4939 = !DILocation(line: 80, column: 12, scope: !4937)
!4940 = !DILocation(line: 80, column: 17, scope: !4937)
!4941 = !DILocation(line: 80, column: 5, scope: !4937)
!4942 = !DILocation(line: 81, column: 3, scope: !4899)
!4943 = !DILocation(line: 81, column: 3, scope: !4898)
!4944 = !DILocation(line: 81, column: 14, scope: !4905)
!4945 = !DILocation(line: 81, column: 19, scope: !4905)
!4946 = !DILocation(line: 81, column: 14, scope: !4899)
!4947 = !DILocation(line: 82, column: 4, scope: !4904)
!4948 = !DILocation(line: 82, column: 8, scope: !4904)
!4949 = !DILocation(line: 82, column: 15, scope: !4904)
!4950 = !DILocation(line: 82, column: 22, scope: !4904)
!4951 = !DILocation(line: 82, column: 20, scope: !4904)
!4952 = !DILocation(line: 83, column: 8, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4904, file: !4868, line: 83, column: 8)
!4954 = !DILocation(line: 83, column: 8, scope: !4904)
!4955 = !DILocation(line: 84, column: 12, scope: !4953)
!4956 = !DILocation(line: 84, column: 17, scope: !4953)
!4957 = !DILocation(line: 84, column: 5, scope: !4953)
!4958 = !DILocation(line: 85, column: 3, scope: !4905)
!4959 = !DILocation(line: 85, column: 3, scope: !4904)
!4960 = !DILocation(line: 86, column: 4, scope: !4907)
!4961 = !DILocation(line: 86, column: 8, scope: !4907)
!4962 = !DILocation(line: 86, column: 20, scope: !4907)
!4963 = !DILocation(line: 86, column: 15, scope: !4907)
!4964 = !DILocation(line: 86, column: 27, scope: !4907)
!4965 = !DILocation(line: 86, column: 25, scope: !4907)
!4966 = !DILocation(line: 87, column: 8, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4907, file: !4868, line: 87, column: 8)
!4968 = !DILocation(line: 87, column: 8, scope: !4907)
!4969 = !DILocation(line: 88, column: 12, scope: !4967)
!4970 = !DILocation(line: 88, column: 17, scope: !4967)
!4971 = !DILocation(line: 88, column: 5, scope: !4967)
!4972 = !DILocation(line: 89, column: 3, scope: !4905)
!4973 = !DILocation(line: 76, column: 2, scope: !4901)
!4974 = distinct !{!4974, !4975, !4976, !4583}
!4975 = !DILocation(line: 76, column: 2, scope: !4902)
!4976 = !DILocation(line: 90, column: 2, scope: !4902)
!4977 = !DILocation(line: 91, column: 1, scope: !4892)
!4978 = !DISubprogram(name: "__get_random_u32_below", scope: !4868, file: !4868, line: 53, type: !4893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4979 = !DISubprogram(name: "__compiletime_assert_95", scope: !4868, file: !4868, line: 73, type: !2719, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4980 = !DISubprogram(name: "get_random_u8", scope: !4868, file: !4868, line: 40, type: !4981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!157}
!4983 = distinct !DISubprogram(name: "is_power_of_2", scope: !4984, file: !4984, line: 45, type: !4985, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !4987)
!4984 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!1661, !149}
!4987 = !{!4988}
!4988 = !DILocalVariable(name: "n", arg: 1, scope: !4983, file: !4984, line: 45, type: !149)
!4989 = !DILocation(line: 45, column: 34, scope: !4983)
!4990 = !DILocation(line: 47, column: 10, scope: !4983)
!4991 = !DILocation(line: 47, column: 12, scope: !4983)
!4992 = !DILocation(line: 47, column: 17, scope: !4983)
!4993 = !DILocation(line: 47, column: 22, scope: !4983)
!4994 = !DILocation(line: 47, column: 27, scope: !4983)
!4995 = !DILocation(line: 47, column: 29, scope: !4983)
!4996 = !DILocation(line: 47, column: 24, scope: !4983)
!4997 = !DILocation(line: 47, column: 35, scope: !4983)
!4998 = !DILocation(line: 0, scope: !4983)
!4999 = !DILocation(line: 47, column: 2, scope: !4983)
!5000 = !DISubprogram(name: "get_random_u16", scope: !4868, file: !4868, line: 41, type: !5001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!160}
!5003 = !DISubprogram(name: "get_random_u32", scope: !4868, file: !4868, line: 42, type: !5004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!153}
!5006 = distinct !DISubprogram(name: "__write_relocate_add", scope: !2, file: !2, line: 132, type: !5007, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !5009)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!135, !369, !384, !49, !49, !386, !4311, !1661}
!5009 = !{!5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5027, !5028, !5029, !5030, !5031, !5035}
!5010 = !DILocalVariable(name: "sechdrs", arg: 1, scope: !5006, file: !2, line: 132, type: !369)
!5011 = !DILocalVariable(name: "strtab", arg: 2, scope: !5006, file: !2, line: 133, type: !384)
!5012 = !DILocalVariable(name: "symindex", arg: 3, scope: !5006, file: !2, line: 134, type: !49)
!5013 = !DILocalVariable(name: "relsec", arg: 4, scope: !5006, file: !2, line: 135, type: !49)
!5014 = !DILocalVariable(name: "me", arg: 5, scope: !5006, file: !2, line: 136, type: !386)
!5015 = !DILocalVariable(name: "write", arg: 6, scope: !5006, file: !2, line: 137, type: !4311)
!5016 = !DILocalVariable(name: "apply", arg: 7, scope: !5006, file: !2, line: 138, type: !1661)
!5017 = !DILocalVariable(name: "i", scope: !5006, file: !2, line: 140, type: !49)
!5018 = !DILocalVariable(name: "rel", scope: !5006, file: !2, line: 141, type: !5019)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Rela", file: !168, line: 186, baseType: !5021)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_rela", file: !168, line: 182, size: 192, elements: !5022)
!5022 = !{!5023, !5024, !5025}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "r_offset", scope: !5021, file: !168, line: 183, baseType: !178, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "r_info", scope: !5021, file: !168, line: 184, baseType: !180, size: 64, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "r_addend", scope: !5021, file: !168, line: 185, baseType: !5026, size: 64, offset: 128)
!5026 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sxword", file: !168, line: 23, baseType: !183)
!5027 = !DILocalVariable(name: "sym", scope: !5006, file: !2, line: 142, type: !166)
!5028 = !DILocalVariable(name: "loc", scope: !5006, file: !2, line: 143, type: !150)
!5029 = !DILocalVariable(name: "val", scope: !5006, file: !2, line: 144, type: !163)
!5030 = !DILocalVariable(name: "zero", scope: !5006, file: !2, line: 145, type: !163)
!5031 = !DILocalVariable(name: "size", scope: !5032, file: !2, line: 151, type: !351)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !2, line: 150, column: 63)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !2, line: 150, column: 2)
!5034 = distinct !DILexicalBlock(scope: !5006, file: !2, line: 150, column: 2)
!5035 = !DILabel(scope: !5006, name: "overflow", file: !2, line: 217)
!5036 = !DILocation(line: 132, column: 45, scope: !5006)
!5037 = !DILocation(line: 133, column: 18, scope: !5006)
!5038 = !DILocation(line: 134, column: 19, scope: !5006)
!5039 = !DILocation(line: 135, column: 19, scope: !5006)
!5040 = !DILocation(line: 136, column: 21, scope: !5006)
!5041 = !DILocation(line: 137, column: 14, scope: !5006)
!5042 = !DILocation(line: 138, column: 11, scope: !5006)
!5043 = !DILocation(line: 140, column: 2, scope: !5006)
!5044 = !DILocation(line: 140, column: 15, scope: !5006)
!5045 = !DILocation(line: 141, column: 2, scope: !5006)
!5046 = !DILocation(line: 141, column: 14, scope: !5006)
!5047 = !DILocation(line: 141, column: 28, scope: !5006)
!5048 = !DILocation(line: 141, column: 36, scope: !5006)
!5049 = !DILocation(line: 141, column: 44, scope: !5006)
!5050 = !DILocation(line: 141, column: 20, scope: !5006)
!5051 = !DILocation(line: 142, column: 2, scope: !5006)
!5052 = !DILocation(line: 142, column: 13, scope: !5006)
!5053 = !DILocation(line: 143, column: 2, scope: !5006)
!5054 = !DILocation(line: 143, column: 8, scope: !5006)
!5055 = !DILocation(line: 144, column: 2, scope: !5006)
!5056 = !DILocation(line: 144, column: 6, scope: !5006)
!5057 = !DILocation(line: 145, column: 2, scope: !5006)
!5058 = !DILocation(line: 145, column: 6, scope: !5006)
!5059 = !DILocation(line: 147, column: 2, scope: !5006)
!5060 = !DILocation(line: 147, column: 2, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5006, file: !2, line: 147, column: 2)
!5062 = !DILocation(line: 150, column: 9, scope: !5034)
!5063 = !DILocation(line: 150, column: 7, scope: !5034)
!5064 = !DILocation(line: 150, column: 14, scope: !5033)
!5065 = !DILocation(line: 150, column: 18, scope: !5033)
!5066 = !DILocation(line: 150, column: 26, scope: !5033)
!5067 = !DILocation(line: 150, column: 34, scope: !5033)
!5068 = !DILocation(line: 150, column: 42, scope: !5033)
!5069 = !DILocation(line: 150, column: 16, scope: !5033)
!5070 = !DILocation(line: 150, column: 2, scope: !5034)
!5071 = !DILocation(line: 151, column: 3, scope: !5032)
!5072 = !DILocation(line: 151, column: 10, scope: !5032)
!5073 = !DILocation(line: 154, column: 17, scope: !5032)
!5074 = !DILocation(line: 154, column: 25, scope: !5032)
!5075 = !DILocation(line: 154, column: 33, scope: !5032)
!5076 = !DILocation(line: 154, column: 41, scope: !5032)
!5077 = !DILocation(line: 154, column: 50, scope: !5032)
!5078 = !DILocation(line: 154, column: 9, scope: !5032)
!5079 = !DILocation(line: 155, column: 6, scope: !5032)
!5080 = !DILocation(line: 155, column: 10, scope: !5032)
!5081 = !DILocation(line: 155, column: 13, scope: !5032)
!5082 = !DILocation(line: 155, column: 4, scope: !5032)
!5083 = !DILocation(line: 154, column: 7, scope: !5032)
!5084 = !DILocation(line: 159, column: 22, scope: !5032)
!5085 = !DILocation(line: 159, column: 30, scope: !5032)
!5086 = !DILocation(line: 159, column: 40, scope: !5032)
!5087 = !DILocation(line: 159, column: 9, scope: !5032)
!5088 = !DILocation(line: 160, column: 6, scope: !5032)
!5089 = !DILocation(line: 160, column: 4, scope: !5032)
!5090 = !DILocation(line: 159, column: 7, scope: !5032)
!5091 = !DILocation(line: 162, column: 3, scope: !5032)
!5092 = !DILocation(line: 162, column: 3, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5032, file: !2, line: 162, column: 3)
!5094 = !DILocation(line: 166, column: 9, scope: !5032)
!5095 = !DILocation(line: 166, column: 14, scope: !5032)
!5096 = !DILocation(line: 166, column: 25, scope: !5032)
!5097 = !DILocation(line: 166, column: 29, scope: !5032)
!5098 = !DILocation(line: 166, column: 32, scope: !5032)
!5099 = !DILocation(line: 166, column: 23, scope: !5032)
!5100 = !DILocation(line: 166, column: 7, scope: !5032)
!5101 = !DILocation(line: 168, column: 11, scope: !5032)
!5102 = !DILocation(line: 168, column: 3, scope: !5032)
!5103 = !DILocation(line: 170, column: 4, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5032, file: !2, line: 168, column: 40)
!5105 = !DILocation(line: 172, column: 9, scope: !5104)
!5106 = !DILocation(line: 173, column: 4, scope: !5104)
!5107 = !DILocation(line: 175, column: 8, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 175, column: 8)
!5109 = !DILocation(line: 175, column: 15, scope: !5108)
!5110 = !DILocation(line: 175, column: 12, scope: !5108)
!5111 = !DILocation(line: 175, column: 8, scope: !5104)
!5112 = !DILocation(line: 176, column: 5, scope: !5108)
!5113 = !DILocation(line: 177, column: 9, scope: !5104)
!5114 = !DILocation(line: 178, column: 4, scope: !5104)
!5115 = !DILocation(line: 180, column: 13, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 180, column: 8)
!5117 = !DILocation(line: 180, column: 20, scope: !5116)
!5118 = !DILocation(line: 180, column: 17, scope: !5116)
!5119 = !DILocation(line: 180, column: 8, scope: !5104)
!5120 = !DILocation(line: 181, column: 5, scope: !5116)
!5121 = !DILocation(line: 182, column: 9, scope: !5104)
!5122 = !DILocation(line: 183, column: 4, scope: !5104)
!5123 = !DILocation(line: 186, column: 16, scope: !5104)
!5124 = !DILocation(line: 186, column: 11, scope: !5104)
!5125 = !DILocation(line: 186, column: 8, scope: !5104)
!5126 = !DILocation(line: 187, column: 9, scope: !5104)
!5127 = !DILocation(line: 188, column: 4, scope: !5104)
!5128 = !DILocation(line: 190, column: 16, scope: !5104)
!5129 = !DILocation(line: 190, column: 11, scope: !5104)
!5130 = !DILocation(line: 190, column: 8, scope: !5104)
!5131 = !DILocation(line: 191, column: 9, scope: !5104)
!5132 = !DILocation(line: 192, column: 4, scope: !5104)
!5133 = !DILocation(line: 194, column: 4, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 194, column: 4)
!5135 = !DILocation(line: 194, column: 4, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5134, file: !2, line: 194, column: 4)
!5137 = !DILocation(line: 196, column: 4, scope: !5104)
!5138 = !DILocation(line: 199, column: 7, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5032, file: !2, line: 199, column: 7)
!5140 = !DILocation(line: 199, column: 7, scope: !5032)
!5141 = !DILocation(line: 200, column: 15, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5143, file: !2, line: 200, column: 8)
!5143 = distinct !DILexicalBlock(scope: !5139, file: !2, line: 199, column: 14)
!5144 = !DILocation(line: 200, column: 27, scope: !5142)
!5145 = !DILocation(line: 200, column: 8, scope: !5142)
!5146 = !DILocation(line: 200, column: 8, scope: !5143)
!5147 = !DILocation(line: 201, column: 5, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !2, line: 201, column: 5)
!5149 = distinct !DILexicalBlock(scope: !5142, file: !2, line: 200, column: 34)
!5150 = !DILocation(line: 201, column: 5, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5148, file: !2, line: 201, column: 5)
!5152 = !DILocation(line: 203, column: 5, scope: !5149)
!5153 = !DILocation(line: 205, column: 4, scope: !5143)
!5154 = !DILocation(line: 205, column: 10, scope: !5143)
!5155 = !DILocation(line: 205, column: 21, scope: !5143)
!5156 = !DILocation(line: 206, column: 3, scope: !5143)
!5157 = !DILocation(line: 207, column: 15, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5159, file: !2, line: 207, column: 8)
!5159 = distinct !DILexicalBlock(scope: !5139, file: !2, line: 206, column: 10)
!5160 = !DILocation(line: 207, column: 26, scope: !5158)
!5161 = !DILocation(line: 207, column: 8, scope: !5158)
!5162 = !DILocation(line: 207, column: 8, scope: !5159)
!5163 = !DILocation(line: 208, column: 5, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5165, file: !2, line: 208, column: 5)
!5165 = distinct !DILexicalBlock(scope: !5158, file: !2, line: 207, column: 33)
!5166 = !DILocation(line: 208, column: 5, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5164, file: !2, line: 208, column: 5)
!5168 = !DILocation(line: 210, column: 5, scope: !5165)
!5169 = !DILocation(line: 212, column: 4, scope: !5159)
!5170 = !DILocation(line: 212, column: 10, scope: !5159)
!5171 = !DILocation(line: 212, column: 22, scope: !5159)
!5172 = !DILocation(line: 214, column: 2, scope: !5033)
!5173 = !DILocation(line: 214, column: 2, scope: !5032)
!5174 = !DILocation(line: 150, column: 59, scope: !5033)
!5175 = !DILocation(line: 150, column: 2, scope: !5033)
!5176 = distinct !{!5176, !5070, !5177, !4582, !4583}
!5177 = !DILocation(line: 214, column: 2, scope: !5034)
!5178 = !DILocation(line: 215, column: 2, scope: !5006)
!5179 = !DILocation(line: 217, column: 1, scope: !5006)
!5180 = !DILocation(line: 218, column: 2, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5006, file: !2, line: 218, column: 2)
!5182 = !DILocation(line: 218, column: 2, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5181, file: !2, line: 218, column: 2)
!5184 = !DILocation(line: 220, column: 2, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5006, file: !2, line: 220, column: 2)
!5186 = !DILocation(line: 220, column: 2, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5185, file: !2, line: 220, column: 2)
!5188 = !DILocation(line: 222, column: 2, scope: !5006)
!5189 = !DILocation(line: 223, column: 1, scope: !5006)
!5190 = !DISubprogram(name: "text_poke_sync", scope: !4806, file: !4806, line: 45, type: !2719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5191 = !DISubprogram(name: "_printk", scope: !5192, file: !5192, line: 153, type: !5193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5192 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!135, !384, null}
!5195 = !DISubprogram(name: "memcmp", scope: !4802, file: !4802, line: 196, type: !5196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!135, !325, !325, !352}
