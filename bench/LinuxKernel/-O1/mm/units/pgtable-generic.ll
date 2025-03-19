; ModuleID = 'mm/pgtable-generic.c'
source_filename = "mm/pgtable-generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.pgd_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.vm_area_struct = type { %union.anon.16, ptr, %struct.pgprot, %union.anon.18, i32, ptr, i8, %struct.anon.19, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.18 = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_struct = type { %struct.anon.20, [0 x i64] }
%struct.anon.20 = type { %struct.anon.21, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.21 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.22, i32, ptr }
%union.anon.22 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.page = type { i64, %union.anon.23, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { %union.anon.25, ptr, %union.anon.27, i64 }
%union.anon.25 = type { %struct.list_head }
%union.anon.27 = type { i64 }
%union.anon.32 = type { %struct.atomic_t }
%struct.ptdesc = type { i64, %union.anon.33, i64, %union.anon.35, %union.anon.36, i32, %struct.atomic_t }
%union.anon.33 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.35 = type { ptr }
%union.anon.36 = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"\013%s:%d: bad pgd %p(%016lx)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [21 x i8] c"mm/pgtable-generic.c\00", align 1, !dbg !7
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\013%s:%d: bad p4d %p(%016lx)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [29 x i8] c"\013%s:%d: bad pud %p(%016lx)\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [29 x i8] c"\013%s:%d: bad pmd %p(%016lx)\0A\00", align 1, !dbg !16
@page_offset_base = external dso_local global i64, align 8
@vmemmap_base = external dso_local global i64, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pgd_clear_bad(ptr noundef %pgd) #0 align 16 !dbg !5229 {
entry:
  %pgd.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !5233, metadata !DIExpression()), !dbg !5234
  br label %do.body, !dbg !5235

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5237

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !5235
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !5235
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !5235
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !5235
  %call = call i64 @native_pgd_val(i64 %2) #11, !dbg !5235
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 27, ptr noundef %0, i64 noundef %call) #12, !dbg !5235
  store i32 %call1, ptr %tmp, align 4, !dbg !5237
  %3 = load i32, ptr %tmp, align 4, !dbg !5235
  br i1 false, label %cond.true, label %cond.false, !dbg !5239

cond.true:                                        ; preds = %do.end
  br i1 false, label %cond.true8, label %cond.false9, !dbg !5239

cond.false:                                       ; preds = %do.end
  br i1 false, label %cond.true2, label %cond.false6, !dbg !5239

cond.true2:                                       ; preds = %cond.false
  br i1 false, label %cond.true3, label %cond.false4, !dbg !5239

cond.true3:                                       ; preds = %cond.true2
  br i1 true, label %cond.true8, label %cond.false9, !dbg !5239

cond.false4:                                      ; preds = %cond.true2
  %call5 = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !5239
  br i1 %call5, label %cond.true8, label %cond.false9, !dbg !5239

cond.false6:                                      ; preds = %cond.false
  %call7 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #11, !dbg !5239
  br i1 %call7, label %cond.true8, label %cond.false9, !dbg !5239

cond.true8:                                       ; preds = %cond.false6, %cond.false4, %cond.true3, %cond.true
  %4 = load ptr, ptr %pgd.addr, align 8, !dbg !5239
  call void @native_pgd_clear(ptr noundef %4) #11, !dbg !5239
  br label %cond.end, !dbg !5239

cond.false9:                                      ; preds = %cond.false6, %cond.false4, %cond.true3, %cond.true
  br label %cond.end, !dbg !5239

cond.end:                                         ; preds = %cond.false9, %cond.true8
  ret void, !dbg !5240
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5241 dso_local i32 @_printk(ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #3 align 16 !dbg !5245 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5249, metadata !DIExpression()), !dbg !5250
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5251
  %0 = load i64, ptr %pgd1, align 8, !dbg !5251
  %and = and i64 %0, -1, !dbg !5252
  ret i64 %and, !dbg !5253
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5254 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5262, metadata !DIExpression()), !dbg !5264
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5263, metadata !DIExpression()), !dbg !5265
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5266
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5267
  br i1 %1, label %cond.true, label %cond.false, !dbg !5267

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5268
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5269
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !5270
  %conv = zext i1 %call to i32, !dbg !5270
  br label %cond.end, !dbg !5267

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5271
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5272
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !5273
  %conv2 = zext i1 %call1 to i32, !dbg !5273
  br label %cond.end, !dbg !5267

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5267
  %tobool = icmp ne i32 %cond, 0, !dbg !5267
  ret i1 %tobool, !dbg !5274
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !5275 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !5280, metadata !DIExpression()), !dbg !5283
  %0 = load i16, ptr %bit.addr, align 2, !dbg !5284
  %1 = load i16, ptr %bit.addr, align 2, !dbg !5285
  %conv = zext i16 %1 to i32, !dbg !5285
  %and = and i32 %conv, 7, !dbg !5286
  %shl = shl i32 1, %and, !dbg !5287
  %2 = load i16, ptr %bit.addr, align 2, !dbg !5288
  %conv1 = zext i16 %2 to i32, !dbg !5288
  %shr = ashr i32 %conv1, 3, !dbg !5289
  %idxprom = sext i32 %shr to i64, !dbg !5290
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !5290
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #13
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !5291, !srcloc !5292

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !5291

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !5281), !dbg !5293
  store i1 true, ptr %retval, align 1, !dbg !5294
  br label %return, !dbg !5294

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !5282), !dbg !5295
  store i1 false, ptr %retval, align 1, !dbg !5296
  br label %return, !dbg !5296

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !5297
  ret i1 %3, !dbg !5297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_pgd_clear(ptr noundef %pgd) #3 align 16 !dbg !5298 {
entry:
  %pgd.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.pgd_t, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !5301, metadata !DIExpression()), !dbg !5302
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !5303
  %call = call i64 @native_make_pgd(i64 noundef 0) #11, !dbg !5304
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5304
  store i64 %call, ptr %coerce.dive, align 8, !dbg !5304
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5305
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !5305
  call void @native_set_pgd(ptr noundef %0, i64 %1) #11, !dbg !5305
  ret void, !dbg !5306
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @p4d_clear_bad(ptr noundef %p4d) #0 align 16 !dbg !5307 {
entry:
  %p4d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  br label %do.body, !dbg !5314

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5316

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !5314
  %1 = load ptr, ptr %p4d.addr, align 8, !dbg !5314
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %1, i32 0, i32 0, !dbg !5314
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !5314
  %call = call i64 @native_p4d_val(i64 %2) #11, !dbg !5314
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 34, ptr noundef %0, i64 noundef %call) #12, !dbg !5314
  store i32 %call1, ptr %tmp, align 4, !dbg !5316
  %3 = load i32, ptr %tmp, align 4, !dbg !5314
  %4 = load ptr, ptr %p4d.addr, align 8, !dbg !5318
  call void @native_p4d_clear(ptr noundef %4) #11, !dbg !5318
  ret void, !dbg !5319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #3 align 16 !dbg !5320 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !5324, metadata !DIExpression()), !dbg !5325
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !5326
  %0 = load i64, ptr %p4d1, align 8, !dbg !5326
  ret i64 %0, !dbg !5327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_p4d_clear(ptr noundef %p4d) #3 align 16 !dbg !5328 {
entry:
  %p4d.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.p4d_t, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !5332
  %call = call i64 @native_make_p4d(i64 noundef 0) #11, !dbg !5333
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5333
  store i64 %call, ptr %coerce.dive, align 8, !dbg !5333
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5334
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !5334
  call void @native_set_p4d(ptr noundef %0, i64 %1) #11, !dbg !5334
  ret void, !dbg !5335
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pud_clear_bad(ptr noundef %pud) #0 align 16 !dbg !5336 {
entry:
  %pud.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !5340, metadata !DIExpression()), !dbg !5341
  br label %do.body, !dbg !5342

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5344

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !5342
  %1 = load ptr, ptr %pud.addr, align 8, !dbg !5342
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %1, i32 0, i32 0, !dbg !5342
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !5342
  %call = call i64 @native_pud_val(i64 %2) #11, !dbg !5342
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 42, ptr noundef %0, i64 noundef %call) #12, !dbg !5342
  store i32 %call1, ptr %tmp, align 4, !dbg !5344
  %3 = load i32, ptr %tmp, align 4, !dbg !5342
  %4 = load ptr, ptr %pud.addr, align 8, !dbg !5346
  call void @native_pud_clear(ptr noundef %4) #11, !dbg !5346
  ret void, !dbg !5347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #3 align 16 !dbg !5348 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5352, metadata !DIExpression()), !dbg !5353
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !5354
  %0 = load i64, ptr %pud1, align 8, !dbg !5354
  ret i64 %0, !dbg !5355
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_pud_clear(ptr noundef %pud) #3 align 16 !dbg !5356 {
entry:
  %pud.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.pud_t, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !5360
  %call = call i64 @native_make_pud(i64 noundef 0) #11, !dbg !5361
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5361
  store i64 %call, ptr %coerce.dive, align 8, !dbg !5361
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5362
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !5362
  call void @native_set_pud(ptr noundef %0, i64 %1) #11, !dbg !5362
  ret void, !dbg !5363
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pmd_clear_bad(ptr noundef %pmd) #0 align 16 !dbg !5364 {
entry:
  %pmd.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  br label %do.body, !dbg !5370

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5372

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !5370
  %1 = load ptr, ptr %pmd.addr, align 8, !dbg !5370
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %1, i32 0, i32 0, !dbg !5370
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !5370
  %call = call i64 @native_pmd_val(i64 %2) #11, !dbg !5370
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 54, ptr noundef %0, i64 noundef %call) #12, !dbg !5370
  store i32 %call1, ptr %tmp, align 4, !dbg !5372
  %3 = load i32, ptr %tmp, align 4, !dbg !5370
  %4 = load ptr, ptr %pmd.addr, align 8, !dbg !5374
  call void @native_pmd_clear(ptr noundef %4) #11, !dbg !5374
  ret void, !dbg !5375
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #3 align 16 !dbg !5376 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5380, metadata !DIExpression()), !dbg !5381
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5382
  %0 = load i64, ptr %pmd1, align 8, !dbg !5382
  ret i64 %0, !dbg !5383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_pmd_clear(ptr noundef %pmd) #3 align 16 !dbg !5384 {
entry:
  %pmd.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.pmd_t, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !5386, metadata !DIExpression()), !dbg !5387
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !5388
  %call = call i64 @native_make_pmd(i64 noundef 0) #11, !dbg !5389
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5389
  store i64 %call, ptr %coerce.dive, align 8, !dbg !5389
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5390
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !5390
  call void @native_set_pmd(ptr noundef %0, i64 %1) #11, !dbg !5390
  ret void, !dbg !5391
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ptep_clear_flush(ptr noundef %vma, i64 noundef %address, ptr noundef %ptep) #0 align 16 !dbg !5392 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %vma.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %ptep.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %tmp = alloca %struct.pte_t, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5396, metadata !DIExpression()), !dbg !5401
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5397, metadata !DIExpression()), !dbg !5402
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !5398, metadata !DIExpression()), !dbg !5403
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #13, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5399, metadata !DIExpression()), !dbg !5405
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5406
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !5407
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !5407
  store ptr %1, ptr %mm, align 8, !dbg !5405
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5400, metadata !DIExpression()), !dbg !5408
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !5409
  %2 = load ptr, ptr %mm, align 8, !dbg !5410
  %3 = load i64, ptr %address.addr, align 8, !dbg !5411
  %4 = load ptr, ptr %ptep.addr, align 8, !dbg !5412
  %call = call i64 @ptep_get_and_clear(ptr noundef %2, i64 noundef %3, ptr noundef %4) #11, !dbg !5409
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !5409
  store i64 %call, ptr %coerce.dive, align 8, !dbg !5409
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %tmp, i64 8, i1 false), !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !5409
  %5 = load ptr, ptr %mm, align 8, !dbg !5413
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5415
  %6 = load i64, ptr %coerce.dive1, align 8, !dbg !5415
  %call2 = call zeroext i1 @pte_accessible(ptr noundef %5, i64 %6) #11, !dbg !5415
  br i1 %call2, label %if.then, label %if.end, !dbg !5416

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !5417
  %8 = load i64, ptr %address.addr, align 8, !dbg !5418
  call void @flush_tlb_page(ptr noundef %7, i64 noundef %8) #11, !dbg !5419
  br label %if.end, !dbg !5419

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #13, !dbg !5420
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5420
  %9 = load i64, ptr %coerce.dive3, align 8, !dbg !5420
  ret i64 %9, !dbg !5420
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ptep_get_and_clear(ptr noundef %mm, i64 noundef %addr, ptr noundef %ptep) #3 align 16 !dbg !5421 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %mm.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ptep.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5426, metadata !DIExpression()), !dbg !5430
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5427, metadata !DIExpression()), !dbg !5431
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !5428, metadata !DIExpression()), !dbg !5432
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5429, metadata !DIExpression()), !dbg !5433
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !5434
  %call = call i64 @native_ptep_get_and_clear(ptr noundef %0) #11, !dbg !5435
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5435
  store i64 %call, ptr %coerce.dive, align 8, !dbg !5435
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5436
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5437
  %2 = load i64, ptr %coerce.dive1, align 8, !dbg !5437
  call void @page_table_check_pte_clear(ptr noundef %1, i64 %2) #11, !dbg !5437
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5438
  %3 = load i64, ptr %coerce.dive2, align 8, !dbg !5438
  ret i64 %3, !dbg !5438
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pte_accessible(ptr noundef %mm, i64 %a.coerce) #3 align 16 !dbg !5439 {
entry:
  %retval = alloca i1, align 1
  %a = alloca %struct.pte_t, align 8
  %mm.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %a, i32 0, i32 0
  store i64 %a.coerce, ptr %coerce.dive, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5443, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.declare(metadata ptr %a, metadata !5444, metadata !DIExpression()), !dbg !5446
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %a, i32 0, i32 0, !dbg !5447
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5447
  %call = call i64 @pte_flags(i64 %0) #11, !dbg !5447
  %and = and i64 %call, 1, !dbg !5449
  %tobool = icmp ne i64 %and, 0, !dbg !5449
  br i1 %tobool, label %if.then, label %if.end, !dbg !5450

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5451
  br label %return, !dbg !5451

if.end:                                           ; preds = %entry
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %a, i32 0, i32 0, !dbg !5452
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !5452
  %call3 = call i64 @pte_flags(i64 %1) #11, !dbg !5452
  %and4 = and i64 %call3, 256, !dbg !5454
  %tobool5 = icmp ne i64 %and4, 0, !dbg !5454
  br i1 %tobool5, label %land.lhs.true, label %if.end9, !dbg !5455

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !5456
  %3 = getelementptr inbounds %struct.mm_struct, ptr %2, i32 0, i32 0, !dbg !5457
  %tlb_flush_pending = getelementptr inbounds %struct.anon.20, ptr %3, i32 0, i32 51, !dbg !5457
  %call6 = call i32 @atomic_read(ptr noundef %tlb_flush_pending) #11, !dbg !5458
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5458
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5459

if.then8:                                         ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !5460
  br label %return, !dbg !5460

if.end9:                                          ; preds = %land.lhs.true, %if.end
  store i1 false, ptr %retval, align 1, !dbg !5461
  br label %return, !dbg !5461

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !5462
  ret i1 %4, !dbg !5462
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flush_tlb_page(ptr noundef %vma, i64 noundef %a) #3 align 16 !dbg !5463 {
entry:
  %vma.addr = alloca ptr, align 8
  %a.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5468, metadata !DIExpression()), !dbg !5470
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5469, metadata !DIExpression()), !dbg !5471
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5472
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !5473
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !5473
  %2 = load i64, ptr %a.addr, align 8, !dbg !5474
  %3 = load i64, ptr %a.addr, align 8, !dbg !5475
  %add = add i64 %3, 4096, !dbg !5476
  call void @flush_tlb_mm_range(ptr noundef %1, i64 noundef %2, i64 noundef %add, i32 noundef 12, i1 noundef zeroext false) #11, !dbg !5477
  ret void, !dbg !5478
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__pte_offset_map(ptr noundef %pmd, i64 noundef %addr, ptr noundef %pmdvalp) #0 align 16 !dbg !5479 {
entry:
  %retval = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %pmdvalp.addr = alloca ptr, align 8
  %irqflags = alloca i64, align 8
  %pmdval = alloca %struct.pmd_t, align 8
  %tmp = alloca %struct.pmd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !5483, metadata !DIExpression()), !dbg !5489
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5484, metadata !DIExpression()), !dbg !5490
  store ptr %pmdvalp, ptr %pmdvalp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdvalp.addr, metadata !5485, metadata !DIExpression()), !dbg !5491
  call void @llvm.lifetime.start.p0(i64 8, ptr %irqflags) #13, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %irqflags, metadata !5486, metadata !DIExpression()), !dbg !5493
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmdval) #13, !dbg !5494
  call void @llvm.dbg.declare(metadata ptr %pmdval, metadata !5487, metadata !DIExpression()), !dbg !5495
  call void @rcu_read_lock() #11, !dbg !5496
  %call = call i64 @pmdp_get_lockless_start() #11, !dbg !5497
  store i64 %call, ptr %irqflags, align 8, !dbg !5498
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !5499
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !5500
  %call1 = call i64 @pmdp_get_lockless(ptr noundef %0) #11, !dbg !5499
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %tmp, i32 0, i32 0, !dbg !5499
  store i64 %call1, ptr %coerce.dive, align 8, !dbg !5499
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pmdval, ptr align 8 %tmp, i64 8, i1 false), !dbg !5499
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !5499
  %1 = load i64, ptr %irqflags, align 8, !dbg !5501
  call void @pmdp_get_lockless_end(i64 noundef %1) #11, !dbg !5502
  %2 = load ptr, ptr %pmdvalp.addr, align 8, !dbg !5503
  %tobool = icmp ne ptr %2, null, !dbg !5503
  br i1 %tobool, label %if.then, label %if.end, !dbg !5505

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pmdvalp.addr, align 8, !dbg !5506
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %pmdval, i64 8, i1 false), !dbg !5507
  br label %if.end, !dbg !5508

if.end:                                           ; preds = %if.then, %entry
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmdval, i32 0, i32 0, !dbg !5509
  %4 = load i64, ptr %coerce.dive2, align 8, !dbg !5509
  %call3 = call i32 @pmd_none(i64 %4) #11, !dbg !5509
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5509
  br i1 %tobool4, label %lor.end, label %lor.rhs, !dbg !5509

lor.rhs:                                          ; preds = %if.end
  %coerce.dive5 = getelementptr inbounds %struct.pmd_t, ptr %pmdval, i32 0, i32 0, !dbg !5509
  %5 = load i64, ptr %coerce.dive5, align 8, !dbg !5509
  %call6 = call i32 @is_pmd_migration_entry(i64 %5) #11, !dbg !5509
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5509
  br label %lor.end, !dbg !5509

lor.end:                                          ; preds = %lor.rhs, %if.end
  %6 = phi i1 [ true, %if.end ], [ %tobool7, %lor.rhs ]
  %lnot = xor i1 %6, true, !dbg !5509
  %lnot8 = xor i1 %lnot, true, !dbg !5509
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5509
  %conv = sext i32 %lnot.ext to i64, !dbg !5509
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5509
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5509
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5511

if.then10:                                        ; preds = %lor.end
  br label %nomap, !dbg !5512

if.end11:                                         ; preds = %lor.end
  %coerce.dive12 = getelementptr inbounds %struct.pmd_t, ptr %pmdval, i32 0, i32 0, !dbg !5513
  %7 = load i64, ptr %coerce.dive12, align 8, !dbg !5513
  %call13 = call i32 @pmd_trans_huge(i64 %7) #11, !dbg !5513
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5513
  br i1 %tobool14, label %lor.end19, label %lor.rhs15, !dbg !5513

lor.rhs15:                                        ; preds = %if.end11
  %coerce.dive16 = getelementptr inbounds %struct.pmd_t, ptr %pmdval, i32 0, i32 0, !dbg !5513
  %8 = load i64, ptr %coerce.dive16, align 8, !dbg !5513
  %call17 = call i32 @pmd_devmap(i64 %8) #11, !dbg !5513
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5513
  br label %lor.end19, !dbg !5513

lor.end19:                                        ; preds = %lor.rhs15, %if.end11
  %9 = phi i1 [ true, %if.end11 ], [ %tobool18, %lor.rhs15 ]
  %lnot20 = xor i1 %9, true, !dbg !5513
  %lnot22 = xor i1 %lnot20, true, !dbg !5513
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5513
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5513
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5513
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5513
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5515

if.then27:                                        ; preds = %lor.end19
  br label %nomap, !dbg !5516

if.end28:                                         ; preds = %lor.end19
  %coerce.dive29 = getelementptr inbounds %struct.pmd_t, ptr %pmdval, i32 0, i32 0, !dbg !5517
  %10 = load i64, ptr %coerce.dive29, align 8, !dbg !5517
  %call30 = call i32 @pmd_bad(i64 %10) #11, !dbg !5517
  %tobool31 = icmp ne i32 %call30, 0, !dbg !5517
  %lnot32 = xor i1 %tobool31, true, !dbg !5517
  %lnot34 = xor i1 %lnot32, true, !dbg !5517
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !5517
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !5517
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !5517
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !5517
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !5519

if.then39:                                        ; preds = %if.end28
  %11 = load ptr, ptr %pmd.addr, align 8, !dbg !5520
  call void @pmd_clear_bad(ptr noundef %11) #11, !dbg !5522
  br label %nomap, !dbg !5523

if.end40:                                         ; preds = %if.end28
  %12 = load i64, ptr %addr.addr, align 8, !dbg !5524
  %call41 = call ptr @__pte_map(ptr noundef %pmdval, i64 noundef %12) #11, !dbg !5525
  store ptr %call41, ptr %retval, align 8, !dbg !5526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5526

nomap:                                            ; preds = %if.then39, %if.then27, %if.then10
  call void @llvm.dbg.label(metadata !5488), !dbg !5527
  call void @rcu_read_unlock() #11, !dbg !5528
  store ptr null, ptr %retval, align 8, !dbg !5529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5529

cleanup:                                          ; preds = %nomap, %if.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmdval) #13, !dbg !5530
  call void @llvm.lifetime.end.p0(i64 8, ptr %irqflags) #13, !dbg !5530
  %13 = load ptr, ptr %retval, align 8, !dbg !5530
  ret ptr %13, !dbg !5530
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !5531 {
entry:
  call void @__rcu_read_lock() #11, !dbg !5533
  br label %do.body, !dbg !5534

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5535

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5537

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5538

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5540
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmdp_get_lockless_start() #0 align 16 !dbg !5541 {
entry:
  ret i64 0, !dbg !5544
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmdp_get_lockless(ptr noundef %pmdp) #3 align 16 !dbg !5545 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !5552
  %call = call i64 @pmdp_get(ptr noundef %0) #11, !dbg !5553
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !5553
  store i64 %call, ptr %coerce.dive, align 8, !dbg !5553
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !5554
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !5554
  ret i64 %1, !dbg !5554
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pmdp_get_lockless_end(i64 noundef %irqflags) #0 align 16 !dbg !5555 {
entry:
  %irqflags.addr = alloca i64, align 8
  store i64 %irqflags, ptr %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irqflags.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  ret void, !dbg !5561
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_none(i64 %pmd.coerce) #3 align 16 !dbg !5562 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5566, metadata !DIExpression()), !dbg !5568
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !5569
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5567, metadata !DIExpression()), !dbg !5570
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5571
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5571
  %call = call i64 @native_pmd_val(i64 %0) #11, !dbg !5571
  store i64 %call, ptr %val, align 8, !dbg !5570
  %1 = load i64, ptr %val, align 8, !dbg !5572
  %and = and i64 %1, -97, !dbg !5573
  %cmp = icmp eq i64 %and, 0, !dbg !5574
  %conv = zext i1 %cmp to i32, !dbg !5574
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !5575
  ret i32 %conv, !dbg !5576
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_pmd_migration_entry(i64 %pmd.coerce) #3 align 16 !dbg !5577 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5580, metadata !DIExpression()), !dbg !5581
  ret i32 0, !dbg !5582
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_trans_huge(i64 %pmd.coerce) #3 align 16 !dbg !5583 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5585, metadata !DIExpression()), !dbg !5586
  ret i32 0, !dbg !5587
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_devmap(i64 %pmd.coerce) #3 align 16 !dbg !5588 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5590, metadata !DIExpression()), !dbg !5591
  ret i32 0, !dbg !5592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_bad(i64 %pmd.coerce) #3 align 16 !dbg !5593 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5595, metadata !DIExpression()), !dbg !5596
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !5597
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5597
  %call = call i64 @pmd_flags(i64 %0) #11, !dbg !5597
  %and = and i64 %call, -37, !dbg !5598
  %cmp = icmp ne i64 %and, 67, !dbg !5599
  %conv = zext i1 %cmp to i32, !dbg !5599
  ret i32 %conv, !dbg !5600
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__pte_map(ptr noundef %pmd, i64 noundef %address) #3 align 16 !dbg !5601 {
entry:
  %pmd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !5605, metadata !DIExpression()), !dbg !5607
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5606, metadata !DIExpression()), !dbg !5608
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !5609
  %1 = load i64, ptr %address.addr, align 8, !dbg !5610
  %call = call ptr @pte_offset_kernel(ptr noundef %0, i64 noundef %1) #11, !dbg !5611
  ret ptr %call, !dbg !5612
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !5613 {
entry:
  br label %do.body, !dbg !5614

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5615

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #11, !dbg !5617
  br label %do.body1, !dbg !5618

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5619

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pte_offset_map_nolock(ptr noundef %mm, ptr noundef %pmd, i64 noundef %addr, ptr noundef %ptlp) #0 align 16 !dbg !5622 {
entry:
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ptlp.addr = alloca ptr, align 8
  %pmdval = alloca %struct.pmd_t, align 8
  %pte = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5627, metadata !DIExpression()), !dbg !5633
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !5628, metadata !DIExpression()), !dbg !5634
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5629, metadata !DIExpression()), !dbg !5635
  store ptr %ptlp, ptr %ptlp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptlp.addr, metadata !5630, metadata !DIExpression()), !dbg !5636
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmdval) #13, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %pmdval, metadata !5631, metadata !DIExpression()), !dbg !5638
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #13, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5632, metadata !DIExpression()), !dbg !5640
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !5641
  %1 = load i64, ptr %addr.addr, align 8, !dbg !5642
  %call = call ptr @__pte_offset_map(ptr noundef %0, i64 noundef %1, ptr noundef %pmdval) #11, !dbg !5643
  store ptr %call, ptr %pte, align 8, !dbg !5644
  %2 = load ptr, ptr %pte, align 8, !dbg !5645
  %tobool = icmp ne ptr %2, null, !dbg !5645
  %lnot = xor i1 %tobool, true, !dbg !5645
  %lnot1 = xor i1 %lnot, true, !dbg !5645
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5645
  %conv = sext i32 %lnot.ext to i64, !dbg !5645
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5645
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5645
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5647

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !5648
  %call3 = call ptr @pte_lockptr(ptr noundef %3, ptr noundef %pmdval) #11, !dbg !5649
  %4 = load ptr, ptr %ptlp.addr, align 8, !dbg !5650
  store ptr %call3, ptr %4, align 8, !dbg !5651
  br label %if.end, !dbg !5652

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %pte, align 8, !dbg !5653
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #13, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmdval) #13, !dbg !5654
  ret ptr %5, !dbg !5655
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_lockptr(ptr noundef %mm, ptr noundef %pmd) #3 align 16 !dbg !5656 {
entry:
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5660, metadata !DIExpression()), !dbg !5662
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !5661, metadata !DIExpression()), !dbg !5663
  %0 = load i64, ptr @vmemmap_base, align 8, !dbg !5664
  %1 = inttoptr i64 %0 to ptr, !dbg !5664
  %2 = load ptr, ptr %pmd.addr, align 8, !dbg !5664
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %2, i32 0, i32 0, !dbg !5664
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !5664
  %call = call i64 @pmd_pfn(i64 %3) #11, !dbg !5664
  %add.ptr = getelementptr %struct.page, ptr %1, i64 %call, !dbg !5664
  %call1 = call ptr @ptlock_ptr(ptr noundef %add.ptr) #11, !dbg !5665
  ret ptr %call1, !dbg !5666
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__pte_offset_map_lock(ptr noundef %mm, ptr noundef %pmd, i64 noundef %addr, ptr noundef %ptlp) #0 align 16 !dbg !5667 {
entry:
  %retval = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ptlp.addr = alloca ptr, align 8
  %ptl = alloca ptr, align 8
  %pmdval = alloca %struct.pmd_t, align 8
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.pmd_t, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5669, metadata !DIExpression()), !dbg !5677
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !5670, metadata !DIExpression()), !dbg !5678
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5671, metadata !DIExpression()), !dbg !5679
  store ptr %ptlp, ptr %ptlp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptlp.addr, metadata !5672, metadata !DIExpression()), !dbg !5680
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptl) #13, !dbg !5681
  call void @llvm.dbg.declare(metadata ptr %ptl, metadata !5673, metadata !DIExpression()), !dbg !5682
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmdval) #13, !dbg !5683
  call void @llvm.dbg.declare(metadata ptr %pmdval, metadata !5674, metadata !DIExpression()), !dbg !5684
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #13, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5675, metadata !DIExpression()), !dbg !5686
  br label %again, !dbg !5685

again:                                            ; preds = %do.end, %entry
  call void @llvm.dbg.label(metadata !5676), !dbg !5687
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !5688
  %1 = load i64, ptr %addr.addr, align 8, !dbg !5689
  %call = call ptr @__pte_offset_map(ptr noundef %0, i64 noundef %1, ptr noundef %pmdval) #11, !dbg !5690
  store ptr %call, ptr %pte, align 8, !dbg !5691
  %2 = load ptr, ptr %pte, align 8, !dbg !5692
  %tobool = icmp ne ptr %2, null, !dbg !5692
  %lnot = xor i1 %tobool, true, !dbg !5692
  %lnot1 = xor i1 %lnot, true, !dbg !5692
  %lnot2 = xor i1 %lnot1, true, !dbg !5692
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5692
  %conv = sext i32 %lnot.ext to i64, !dbg !5692
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5692
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5692
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5694

if.then:                                          ; preds = %again
  %3 = load ptr, ptr %pte, align 8, !dbg !5695
  store ptr %3, ptr %retval, align 8, !dbg !5696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5696

if.end:                                           ; preds = %again
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !5697
  %call4 = call ptr @pte_lockptr(ptr noundef %4, ptr noundef %pmdval) #11, !dbg !5698
  store ptr %call4, ptr %ptl, align 8, !dbg !5699
  %5 = load ptr, ptr %ptl, align 8, !dbg !5700
  call void @spin_lock(ptr noundef %5) #11, !dbg !5701
  %6 = load ptr, ptr %pmd.addr, align 8, !dbg !5702
  %call5 = call i64 @pmdp_get_lockless(ptr noundef %6) #11, !dbg !5702
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5702
  store i64 %call5, ptr %coerce.dive, align 8, !dbg !5702
  %coerce.dive6 = getelementptr inbounds %struct.pmd_t, ptr %pmdval, i32 0, i32 0, !dbg !5702
  %7 = load i64, ptr %coerce.dive6, align 8, !dbg !5702
  %coerce.dive7 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5702
  %8 = load i64, ptr %coerce.dive7, align 8, !dbg !5702
  %call8 = call i32 @pmd_same(i64 %7, i64 %8) #11, !dbg !5702
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5702
  %lnot10 = xor i1 %tobool9, true, !dbg !5702
  %lnot12 = xor i1 %lnot10, true, !dbg !5702
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !5702
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !5702
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 1), !dbg !5702
  %tobool16 = icmp ne i64 %expval15, 0, !dbg !5702
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5704

if.then17:                                        ; preds = %if.end
  %9 = load ptr, ptr %ptl, align 8, !dbg !5705
  %10 = load ptr, ptr %ptlp.addr, align 8, !dbg !5707
  store ptr %9, ptr %10, align 8, !dbg !5708
  %11 = load ptr, ptr %pte, align 8, !dbg !5709
  store ptr %11, ptr %retval, align 8, !dbg !5710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5710

if.end18:                                         ; preds = %if.end
  br label %do.body, !dbg !5711

do.body:                                          ; preds = %if.end18
  %12 = load ptr, ptr %ptl, align 8, !dbg !5712
  call void @spin_unlock(ptr noundef %12) #11, !dbg !5712
  %13 = load ptr, ptr %pte, align 8, !dbg !5712
  call void @pte_unmap(ptr noundef %13) #11, !dbg !5712
  br label %do.cond, !dbg !5712

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5712

do.end:                                           ; preds = %do.cond
  br label %again, !dbg !5714

cleanup:                                          ; preds = %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #13, !dbg !5715
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmdval) #13, !dbg !5715
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptl) #13, !dbg !5715
  %14 = load ptr, ptr %retval, align 8, !dbg !5715
  ret ptr %14, !dbg !5715
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !5716 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5723
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5723
  call void @_raw_spin_lock(ptr noundef %1) #11, !dbg !5723
  ret void, !dbg !5724
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_same(i64 %pmd_a.coerce, i64 %pmd_b.coerce) #3 align 16 !dbg !5725 {
entry:
  %pmd_a = alloca %struct.pmd_t, align 8
  %pmd_b = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd_a, i32 0, i32 0
  store i64 %pmd_a.coerce, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd_b, i32 0, i32 0
  store i64 %pmd_b.coerce, ptr %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd_a, metadata !5729, metadata !DIExpression()), !dbg !5731
  call void @llvm.dbg.declare(metadata ptr %pmd_b, metadata !5730, metadata !DIExpression()), !dbg !5732
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd_a, i32 0, i32 0, !dbg !5733
  %0 = load i64, ptr %coerce.dive2, align 8, !dbg !5733
  %call = call i64 @native_pmd_val(i64 %0) #11, !dbg !5733
  %coerce.dive3 = getelementptr inbounds %struct.pmd_t, ptr %pmd_b, i32 0, i32 0, !dbg !5734
  %1 = load i64, ptr %coerce.dive3, align 8, !dbg !5734
  %call4 = call i64 @native_pmd_val(i64 %1) #11, !dbg !5734
  %cmp = icmp eq i64 %call, %call4, !dbg !5735
  %conv = zext i1 %cmp to i32, !dbg !5735
  ret i32 %conv, !dbg !5736
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !5737 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5741
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5741
  call void @_raw_spin_unlock(ptr noundef %1) #11, !dbg !5741
  ret void, !dbg !5742
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pte_unmap(ptr noundef %pte) #3 align 16 !dbg !5743 {
entry:
  %pte.addr = alloca ptr, align 8
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !5747, metadata !DIExpression()), !dbg !5748
  call void @rcu_read_unlock() #11, !dbg !5749
  ret void, !dbg !5750
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5751 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5755, metadata !DIExpression()), !dbg !5757
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5756, metadata !DIExpression()), !dbg !5758
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5759
  %and = and i64 %0, 63, !dbg !5760
  %shl = shl i64 1, %and, !dbg !5761
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5762
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5763
  %shr = ashr i64 %2, 6, !dbg !5764
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5762
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5762
  %and1 = and i64 %shl, %3, !dbg !5765
  %cmp = icmp ne i64 %and1, 0, !dbg !5766
  ret i1 %cmp, !dbg !5767
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5768 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5770, metadata !DIExpression()), !dbg !5773
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5771, metadata !DIExpression()), !dbg !5774
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !5775
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5772, metadata !DIExpression()), !dbg !5776
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5777
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5778
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !5779, !srcloc !5780
  %3 = icmp ult i8 %2, 2, !dbg !5779
  call void @llvm.assume(i1 %3), !dbg !5779
  store i8 %2, ptr %oldbit, align 1, !dbg !5779
  %4 = load i8, ptr %oldbit, align 1, !dbg !5781, !range !5782, !noundef !1362
  %tobool = trunc i8 %4 to i1, !dbg !5781
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !5783
  ret i1 %tobool, !dbg !5784
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pgd(ptr noundef %pgdp, i64 %pgd.coerce) #3 align 16 !dbg !5785 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %tmp = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !5789, metadata !DIExpression()), !dbg !5791
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5790, metadata !DIExpression()), !dbg !5792
  br label %do.body, !dbg !5793

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5794

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5796

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5794

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !5798
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !5798
  %1 = load ptr, ptr %pgdp.addr, align 8, !dbg !5798
  %coerce.dive3 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5798
  %2 = load i64, ptr %coerce.dive3, align 8, !dbg !5798
  %call = call i64 @pti_set_user_pgtbl(ptr noundef %1, i64 %2) #11, !dbg !5798
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !5798
  store volatile i64 %call, ptr %coerce.dive4, align 8, !dbg !5798
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %tmp, i64 8, i1 true), !dbg !5798
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !5798
  br label %do.end5, !dbg !5798

do.end5:                                          ; preds = %do.body2
  br label %do.end6, !dbg !5794

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pgd(i64 noundef %val) #3 align 16 !dbg !5801 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5805, metadata !DIExpression()), !dbg !5806
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !5807
  %0 = load i64, ptr %val.addr, align 8, !dbg !5808
  %and = and i64 %0, -1, !dbg !5809
  store i64 %and, ptr %pgd, align 8, !dbg !5807
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !5810
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5810
  ret i64 %1, !dbg !5810
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #3 align 16 !dbg !5811 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !5815, metadata !DIExpression()), !dbg !5817
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5816, metadata !DIExpression()), !dbg !5818
  br i1 false, label %cond.true, label %cond.false2, !dbg !5819

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !5820

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.end, label %if.then, !dbg !5820

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !5820
  br i1 %call, label %if.end, label %if.then, !dbg !5820

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 235) #11, !dbg !5820
  br i1 %call3, label %if.end, label %if.then, !dbg !5819

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !5822
  br label %return, !dbg !5823

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !5824
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5825
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !5825
  %call5 = call i64 @__pti_set_user_pgtbl(ptr noundef %0, i64 %1) #11, !dbg !5825
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !5825
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !5825
  br label %return, !dbg !5826

return:                                           ; preds = %if.end, %if.then
  %coerce.dive7 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !5827
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !5827
  ret i64 %2, !dbg !5827
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5828 dso_local i64 @__pti_set_user_pgtbl(ptr noundef, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #3 align 16 !dbg !5829 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %p4dp.addr = alloca ptr, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgd_t, align 8
  %tmp16 = alloca %struct.pgd_t, align 8
  %tmp25 = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  store ptr %p4dp, ptr %p4dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !5833, metadata !DIExpression()), !dbg !5836
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !5834, metadata !DIExpression()), !dbg !5837
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #13, !dbg !5838
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !5835, metadata !DIExpression()), !dbg !5839
  br i1 false, label %cond.true, label %cond.false, !dbg !5840

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !5841

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !5840

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !5841

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !5841

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !5841
  br i1 %call, label %if.then, label %if.end, !dbg !5841

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #11, !dbg !5841
  br i1 %call5, label %if.then, label %if.end, !dbg !5840

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !5843

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !5845

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !5847

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5847

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5845

do.body7:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !5849
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !5849
  br label %do.cond8, !dbg !5849

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5849

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !5845

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5845

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5851

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !5852
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !5853
  %1 = load i64, ptr %coerce.dive12, align 8, !dbg !5853
  %call13 = call i64 @native_p4d_val(i64 %1) #11, !dbg !5853
  %call14 = call i64 @native_make_pgd(i64 noundef %call13) #11, !dbg !5852
  %coerce.dive15 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !5852
  store i64 %call14, ptr %coerce.dive15, align 8, !dbg !5852
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !5852
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !5852
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp16) #13, !dbg !5854
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !5855
  %coerce.dive17 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5854
  %3 = load i64, ptr %coerce.dive17, align 8, !dbg !5854
  %call18 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #11, !dbg !5854
  %coerce.dive19 = getelementptr inbounds %struct.pgd_t, ptr %tmp16, i32 0, i32 0, !dbg !5854
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !5854
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp16, i64 8, i1 false), !dbg !5854
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp16) #13, !dbg !5854
  br label %do.body20, !dbg !5856

do.body20:                                        ; preds = %if.end
  br label %do.body21, !dbg !5857

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !5859

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5859

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !5857

do.body24:                                        ; preds = %do.end23
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !5861
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp25) #13, !dbg !5861
  %coerce.dive26 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !5861
  %5 = load i64, ptr %coerce.dive26, align 8, !dbg !5861
  %call27 = call i64 @native_pgd_val(i64 %5) #11, !dbg !5861
  %call28 = call i64 @native_make_p4d(i64 noundef %call27) #11, !dbg !5861
  %coerce.dive29 = getelementptr inbounds %struct.p4d_t, ptr %tmp25, i32 0, i32 0, !dbg !5861
  store volatile i64 %call28, ptr %coerce.dive29, align 8, !dbg !5861
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp25, i64 8, i1 true), !dbg !5861
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp25) #13, !dbg !5861
  br label %do.cond30, !dbg !5861

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !5861

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !5857

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !5857

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5863
  br label %cleanup, !dbg !5863

cleanup:                                          ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #13, !dbg !5863
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5863

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_p4d(i64 noundef %val) #3 align 16 !dbg !5864 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5868, metadata !DIExpression()), !dbg !5869
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !5870
  %0 = load i64, ptr %val.addr, align 8, !dbg !5871
  store i64 %0, ptr %p4d, align 8, !dbg !5870
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !5872
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5872
  ret i64 %1, !dbg !5872
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pud(ptr noundef %pudp, i64 %pud.coerce) #3 align 16 !dbg !5873 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pudp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  store ptr %pudp, ptr %pudp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pudp.addr, metadata !5877, metadata !DIExpression()), !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !5878, metadata !DIExpression()), !dbg !5880
  br label %do.body, !dbg !5881

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5882

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5884

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5882

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pudp.addr, align 8, !dbg !5886
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pud, i64 8, i1 true), !dbg !5886
  br label %do.end3, !dbg !5886

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5882

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pud(i64 noundef %val) #3 align 16 !dbg !5889 {
entry:
  %retval = alloca %struct.pud_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  %pud = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !5895
  %0 = load i64, ptr %val.addr, align 8, !dbg !5896
  store i64 %0, ptr %pud, align 8, !dbg !5895
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !5897
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5897
  ret i64 %1, !dbg !5897
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #3 align 16 !dbg !5898 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !5902, metadata !DIExpression()), !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !5903, metadata !DIExpression()), !dbg !5905
  br label %do.body, !dbg !5906

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5907

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5909

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5907

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !5911
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !5911
  br label %do.end3, !dbg !5911

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5907

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pmd(i64 noundef %val) #3 align 16 !dbg !5914 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !5920
  %0 = load i64, ptr %val.addr, align 8, !dbg !5921
  store i64 %0, ptr %pmd, align 8, !dbg !5920
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !5922
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5922
  ret i64 %1, !dbg !5922
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_ptep_get_and_clear(ptr noundef %xp) #3 align 16 !dbg !5923 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %xp.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  store ptr %xp, ptr %xp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xp.addr, metadata !5927, metadata !DIExpression()), !dbg !5933
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #13, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5928, metadata !DIExpression()), !dbg !5934
  %0 = load ptr, ptr %xp.addr, align 8, !dbg !5934
  %pte = getelementptr inbounds %struct.pte_t, ptr %0, i32 0, i32 0, !dbg !5934
  store ptr %pte, ptr %__ai_ptr, align 8, !dbg !5934
  br label %do.body, !dbg !5934

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5935

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5935

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !5934
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #11, !dbg !5934
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #13, !dbg !5937
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5931, metadata !DIExpression()), !dbg !5937
  store i64 0, ptr %__ret, align 8, !dbg !5937
  %2 = load i64, ptr %__ret, align 8, !dbg !5937
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !5937
  %4 = call i64 asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %3, i64 %2, ptr elementtype(i64) %3) #13, !dbg !5937, !srcloc !5938
  store i64 %4, ptr %__ret, align 8, !dbg !5937
  %5 = load i64, ptr %__ret, align 8, !dbg !5937
  store i64 %5, ptr %tmp1, align 8, !dbg !5937
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #13, !dbg !5934
  %6 = load i64, ptr %tmp1, align 8, !dbg !5937
  store i64 %6, ptr %tmp, align 8, !dbg !5934
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #13, !dbg !5939
  %7 = load i64, ptr %tmp, align 8, !dbg !5934
  %call = call i64 @native_make_pte(i64 noundef %7) #11, !dbg !5940
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5940
  store i64 %call, ptr %coerce.dive, align 8, !dbg !5940
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5941
  %8 = load i64, ptr %coerce.dive2, align 8, !dbg !5941
  ret i64 %8, !dbg !5941
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @page_table_check_pte_clear(ptr noundef %mm, i64 %pte.coerce) #3 align 16 !dbg !5942 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %mm.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5947, metadata !DIExpression()), !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !5948, metadata !DIExpression()), !dbg !5950
  ret void, !dbg !5951
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #3 align 16 !dbg !5952 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5956, metadata !DIExpression()), !dbg !5957
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5958
  %0 = load i64, ptr %val.addr, align 8, !dbg !5959
  store i64 %0, ptr %pte, align 8, !dbg !5958
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !5960
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5960
  ret i64 %1, !dbg !5960
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5961 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5969, metadata !DIExpression()), !dbg !5971
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5970, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5973
  %1 = load i64, ptr %size.addr, align 8, !dbg !5974
  %conv = trunc i64 %1 to i32, !dbg !5974
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !5975
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5976
  %3 = load i64, ptr %size.addr, align 8, !dbg !5976
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !5976
  ret void, !dbg !5977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5978 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5983, metadata !DIExpression()), !dbg !5985
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5984, metadata !DIExpression()), !dbg !5986
  ret i1 true, !dbg !5987
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5988 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5993, metadata !DIExpression()), !dbg !5996
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5994, metadata !DIExpression()), !dbg !5997
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5995, metadata !DIExpression()), !dbg !5998
  ret void, !dbg !5999
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_flags(i64 %pte.coerce) #3 align 16 !dbg !6000 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6004, metadata !DIExpression()), !dbg !6005
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6006
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6006
  %call = call i64 @native_pte_val(i64 %0) #11, !dbg !6006
  %and = and i64 %call, -4503599627366401, !dbg !6007
  ret i64 %and, !dbg !6008
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !6009 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6016, metadata !DIExpression()), !dbg !6017
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6018
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #11, !dbg !6019
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6020
  %call = call i32 @raw_atomic_read(ptr noundef %1) #11, !dbg !6021
  ret i32 %call, !dbg !6022
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pte_val(i64 %pte.coerce) #3 align 16 !dbg !6023 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6025, metadata !DIExpression()), !dbg !6026
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !6027
  %0 = load i64, ptr %pte1, align 8, !dbg !6027
  ret i64 %0, !dbg !6028
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6029 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6031, metadata !DIExpression()), !dbg !6033
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6032, metadata !DIExpression()), !dbg !6034
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6035
  %1 = load i64, ptr %size.addr, align 8, !dbg !6036
  %conv = trunc i64 %1 to i32, !dbg !6036
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !6037
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6038
  %3 = load i64, ptr %size.addr, align 8, !dbg !6038
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !6038
  ret void, !dbg !6039
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !6040 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6043, metadata !DIExpression()), !dbg !6044
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6045
  %call = call i32 @arch_atomic_read(ptr noundef %0) #11, !dbg !6046
  ret i32 %call, !dbg !6047
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6048 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6050, metadata !DIExpression()), !dbg !6052
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6051, metadata !DIExpression()), !dbg !6053
  ret i1 true, !dbg !6054
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !6055 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6060
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6060
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6060
  ret i32 %1, !dbg !6061
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6062 dso_local void @flush_tlb_mm_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6065 dso_local void @__rcu_read_lock() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmdp_get(ptr noundef %pmdp) #3 align 16 !dbg !6066 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !6068, metadata !DIExpression()), !dbg !6069
  br label %do.body, !dbg !6070

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6072

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !6070
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %0, i64 8, i1 true), !dbg !6070
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !6074
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6074
  ret i64 %1, !dbg !6074
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags(i64 %pmd.coerce) #3 align 16 !dbg !6075 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6077, metadata !DIExpression()), !dbg !6078
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6079
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6079
  %call = call i64 @native_pmd_val(i64 %0) #11, !dbg !6079
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6080
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6080
  %call3 = call i64 @pmd_flags_mask(i64 %1) #11, !dbg !6080
  %and = and i64 %call, %call3, !dbg !6081
  ret i64 %and, !dbg !6082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags_mask(i64 %pmd.coerce) #3 align 16 !dbg !6083 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6085, metadata !DIExpression()), !dbg !6086
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6087
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6087
  %call = call i64 @pmd_pfn_mask(i64 %0) #11, !dbg !6087
  %not = xor i64 %call, -1, !dbg !6088
  ret i64 %not, !dbg !6089
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #3 align 16 !dbg !6090 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6092, metadata !DIExpression()), !dbg !6093
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6094
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6094
  %call = call i64 @native_pmd_val(i64 %0) #11, !dbg !6094
  %and = and i64 %call, 128, !dbg !6096
  %tobool = icmp ne i64 %and, 0, !dbg !6096
  br i1 %tobool, label %if.then, label %if.else, !dbg !6097

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !6098
  br label %return, !dbg !6098

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !6099
  br label %return, !dbg !6099

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !6100
  ret i64 %1, !dbg !6100
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_kernel(ptr noundef %pmd, i64 noundef %address) #3 align 16 !dbg !6101 {
entry:
  %pmd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6103, metadata !DIExpression()), !dbg !6105
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6104, metadata !DIExpression()), !dbg !6106
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !6107
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %0, i32 0, i32 0, !dbg !6108
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6108
  %call = call i64 @pmd_page_vaddr(i64 %1) #11, !dbg !6108
  %2 = inttoptr i64 %call to ptr, !dbg !6109
  %3 = load i64, ptr %address.addr, align 8, !dbg !6110
  %call1 = call i64 @pte_index(i64 noundef %3) #11, !dbg !6111
  %add.ptr = getelementptr %struct.pte_t, ptr %2, i64 %call1, !dbg !6112
  ret ptr %add.ptr, !dbg !6113
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_page_vaddr(i64 %pmd.coerce) #3 align 16 !dbg !6114 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6118, metadata !DIExpression()), !dbg !6119
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6120
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6120
  %call = call i64 @native_pmd_val(i64 %0) #11, !dbg !6120
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6120
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6120
  %call3 = call i64 @pmd_pfn_mask(i64 %1) #11, !dbg !6120
  %and = and i64 %call, %call3, !dbg !6120
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !6120
  %add = add i64 %and, %2, !dbg !6120
  %3 = inttoptr i64 %add to ptr, !dbg !6120
  %4 = ptrtoint ptr %3 to i64, !dbg !6121
  ret i64 %4, !dbg !6122
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_index(i64 noundef %address) #3 align 16 !dbg !6123 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6127, metadata !DIExpression()), !dbg !6128
  %0 = load i64, ptr %address.addr, align 8, !dbg !6129
  %shr = lshr i64 %0, 12, !dbg !6130
  %and = and i64 %shr, 511, !dbg !6131
  ret i64 %and, !dbg !6132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6133 dso_local void @__rcu_read_unlock() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ptlock_ptr(ptr noundef %ptdesc) #3 align 16 !dbg !6134 {
entry:
  %ptdesc.addr = alloca ptr, align 8
  store ptr %ptdesc, ptr %ptdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptdesc.addr, metadata !6138, metadata !DIExpression()), !dbg !6139
  %0 = load ptr, ptr %ptdesc.addr, align 8, !dbg !6140
  %1 = getelementptr inbounds %struct.ptdesc, ptr %0, i32 0, i32 4, !dbg !6141
  ret ptr %1, !dbg !6142
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn(i64 %pmd.coerce) #3 align 16 !dbg !6143 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6145, metadata !DIExpression()), !dbg !6147
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #13, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6146, metadata !DIExpression()), !dbg !6149
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6150
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6150
  %call = call i64 @native_pmd_val(i64 %0) #11, !dbg !6150
  store i64 %call, ptr %pfn, align 8, !dbg !6149
  %1 = load i64, ptr %pfn, align 8, !dbg !6151
  %call2 = call i64 @protnone_mask(i64 noundef %1) #11, !dbg !6152
  %2 = load i64, ptr %pfn, align 8, !dbg !6153
  %xor = xor i64 %2, %call2, !dbg !6153
  store i64 %xor, ptr %pfn, align 8, !dbg !6153
  %3 = load i64, ptr %pfn, align 8, !dbg !6154
  %coerce.dive3 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6155
  %4 = load i64, ptr %coerce.dive3, align 8, !dbg !6155
  %call4 = call i64 @pmd_pfn_mask(i64 %4) #11, !dbg !6155
  %and = and i64 %3, %call4, !dbg !6156
  %shr = lshr i64 %and, 12, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #13, !dbg !6158
  ret i64 %shr, !dbg !6159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @protnone_mask(i64 noundef %val) #3 align 16 !dbg !6160 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6165, metadata !DIExpression()), !dbg !6166
  %0 = load i64, ptr %val.addr, align 8, !dbg !6167
  %call = call zeroext i1 @__pte_needs_invert(i64 noundef %0) #11, !dbg !6168
  %1 = zext i1 %call to i64, !dbg !6168
  %cond = select i1 %call, i64 -1, i64 0, !dbg !6168
  ret i64 %cond, !dbg !6169
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__pte_needs_invert(i64 noundef %val) #3 align 16 !dbg !6170 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6174, metadata !DIExpression()), !dbg !6175
  %0 = load i64, ptr %val.addr, align 8, !dbg !6176
  %tobool = icmp ne i64 %0, 0, !dbg !6176
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6177

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !6178
  %and = and i64 %1, 1, !dbg !6179
  %tobool1 = icmp ne i64 %and, 0, !dbg !6180
  %lnot = xor i1 %tobool1, true, !dbg !6180
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6181
  ret i1 %2, !dbg !6182
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6183 dso_local void @_raw_spin_lock(ptr noundef) #10 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6188 dso_local void @_raw_spin_unlock(ptr noundef) #10 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227}
!llvm.ident = !{!5228}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mm/pgtable-generic.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ee79b6558272f91b5d2991803fa70db")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 21)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !3, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!18 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.pgtable-generic.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/pgtable-generic\22 -D KBUILD_BASENAME=\22pgtable_generic\22 -D KBUILD_MODNAME=\22pgtable_generic\22 -D __KBUILD_MODNAME=kmod_pgtable_generic -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/pgtable-generic.ll mm/pgtable-generic.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !272, globals: !5219, splitDebugInlining: false, nameTableKind: None)
!19 = !{!20, !29, !124, !131, !139, !155, !160, !167, !173, !180, !185, !193, !200, !206, !215, !220, !225, !231, !236, !242, !254, !260, !267}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !21, line: 9, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!25 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!26 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!27 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!28 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !31, file: !30, line: 147, baseType: !22, size: 32, elements: !121)
!30 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !30, line: 135, size: 512, elements: !32)
!32 = !{!33, !36, !38, !40, !44, !45, !61, !119, !120}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !31, file: !30, line: 136, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !30, line: 137, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !31, file: !30, line: 138, baseType: !39, size: 32, offset: 128)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !31, file: !30, line: 139, baseType: !41, size: 16, offset: 160)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !42, line: 24, baseType: !43)
!42 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !31, file: !30, line: 150, baseType: !29, size: 32, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !31, file: !30, line: 151, baseType: !46, size: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !30, line: 64, baseType: !48)
!48 = !DISubroutineType(types: !49)
!49 = !{!39, !50, !39, !37, !51, !57}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 61, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !54, line: 72, baseType: !55)
!54 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !54, line: 16, baseType: !56)
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !42, line: 52, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !54, line: 88, baseType: !60)
!60 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !31, file: !30, line: 152, baseType: !62, size: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !30, line: 117, size: 256, elements: !64)
!64 = !{!65, !70}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !63, file: !30, line: 118, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !42, line: 174, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 172, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !67, file: !42, line: 173, baseType: !39, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !63, file: !30, line: 119, baseType: !71, size: 192, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !72, line: 41, baseType: !73)
!72 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !72, line: 37, size: 192, elements: !74)
!74 = !{!75, !113}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !73, file: !72, line: 38, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !77, line: 29, baseType: !78)
!77 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !77, line: 17, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !77, line: 18, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !77, line: 18, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !81, file: !77, line: 19, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !85, line: 14, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !84, file: !85, line: 15, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !89, line: 44, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !89, line: 14, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !90, file: !89, line: 15, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !90, file: !89, line: 15, size: 32, elements: !94)
!94 = !{!95, !96, !106}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !93, file: !89, line: 16, baseType: !66, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !89, line: 24, baseType: !97, size: 16)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !89, line: 24, size: 16, elements: !98)
!98 = !{!99, !105}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !97, file: !89, line: 25, baseType: !100, size: 8)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !101, line: 17, baseType: !102)
!101 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !103, line: 21, baseType: !104)
!103 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !97, file: !89, line: 26, baseType: !100, size: 8, offset: 8)
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !89, line: 28, baseType: !107, size: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !89, line: 28, size: 32, elements: !108)
!108 = !{!109, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !107, file: !89, line: 29, baseType: !110, size: 16)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !101, line: 19, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !103, line: 24, baseType: !43)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !107, file: !89, line: 30, baseType: !110, size: 16, offset: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !73, file: !72, line: 39, baseType: !114, size: 128, offset: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !42, line: 190, size: 128, elements: !115)
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !42, line: 191, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !42, line: 191, baseType: !117, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !31, file: !30, line: 153, baseType: !37, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !31, file: !30, line: 154, baseType: !37, size: 64, offset: 448)
!121 = !{!122, !123}
!122 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!123 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !125, line: 312, baseType: !22, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!126 = !{!127, !128, !129, !130}
!127 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!128 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!129 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!130 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !132, line: 68, baseType: !22, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!133 = !{!134, !135, !136, !137, !138}
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!135 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!136 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!137 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!138 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !140, line: 1325, baseType: !22, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!142 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!143 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!144 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!145 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!146 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!147 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!148 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!149 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!150 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!151 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!152 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!153 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!154 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !156, line: 32, baseType: !22, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!157 = !{!158, !159}
!158 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!159 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !161, line: 15, baseType: !22, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!162 = !{!163, !164, !165, !166}
!163 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!164 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!165 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!166 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !168, line: 45, baseType: !22, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!171 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!172 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !174, line: 487, baseType: !22, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!175 = !{!176, !177, !178, !179}
!176 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!177 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!178 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!179 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !181, line: 65, baseType: !22, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!182 = !{!183, !184}
!183 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!184 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !186, line: 620, baseType: !22, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!187 = !{!188, !189, !190, !191, !192}
!188 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!189 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!190 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!191 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!192 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !186, line: 597, baseType: !39, size: 32, elements: !194)
!194 = !{!195, !196, !197, !198, !199}
!195 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!196 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!197 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!198 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!199 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !201, line: 26, baseType: !22, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!204 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!205 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !174, line: 547, baseType: !22, size: 32, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214}
!208 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!209 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!210 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!211 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!212 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!213 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!214 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !174, line: 564, baseType: !22, size: 32, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!218 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!219 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !174, line: 577, baseType: !22, size: 32, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!223 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!224 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !174, line: 503, baseType: !22, size: 32, elements: !226)
!226 = !{!227, !228, !229, !230}
!227 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!228 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!229 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!230 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !232, line: 2052, baseType: !22, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!233 = !{!234, !235}
!234 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!235 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !237, line: 54, baseType: !22, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!238 = !{!239, !240, !241}
!239 = !DIEnumerator(name: "USRQUOTA", value: 0)
!240 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!241 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !243, line: 44, baseType: !22, size: 32, elements: !244)
!243 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253}
!245 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!246 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!247 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!248 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!249 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!250 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!251 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!252 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!253 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !255, line: 16, baseType: !22, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!256 = !{!257, !258, !259}
!257 = !DIEnumerator(name: "TT_NONE", value: 0)
!258 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!259 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !261, line: 51, baseType: !22, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!262 = !{!263, !264, !265, !266}
!263 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!264 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!265 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!266 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 10, baseType: !22, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!269 = !{!270, !271}
!270 = !DIEnumerator(name: "false", value: 0)
!271 = !DIEnumerator(name: "true", value: 1)
!272 = !{!39, !273, !34, !274, !283, !290, !291, !298, !305, !306, !307, !311, !314, !316, !56, !37, !321, !344}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !277, line: 299, baseType: !278)
!277 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 299, size: 64, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !278, file: !277, line: 299, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !282, line: 18, baseType: !56)
!282 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !277, line: 346, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 346, size: 64, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !286, file: !277, line: 346, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !282, line: 17, baseType: !56)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !277, line: 372, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 372, size: 64, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !294, file: !277, line: 372, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !282, line: 16, baseType: !56)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !282, line: 22, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 22, size: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !301, file: !282, line: 22, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !282, line: 15, baseType: !56)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !282, line: 14, baseType: !56)
!306 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !42, line: 159, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !101, line: 23, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !103, line: 31, baseType: !310)
!310 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !282, line: 21, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 21, size: 64, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !318, file: !282, line: 21, baseType: !305, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptdesc", file: !140, line: 412, size: 448, elements: !323)
!323 = !{!324, !325, !5206, !5207, !5212, !5217, !5218}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__page_flags", scope: !322, file: !140, line: 413, baseType: !56, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !140, line: 415, baseType: !326, size: 128, offset: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !140, line: 415, size: 128, elements: !327)
!327 = !{!328, !337, !338}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pt_rcu_head", scope: !326, file: !140, line: 416, baseType: !329, size: 128, align: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !42, line: 232, size: 128, align: 64, elements: !330)
!330 = !{!331, !333}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !42, line: 233, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !329, file: !42, line: 234, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !332}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pt_list", scope: !326, file: !140, line: 417, baseType: !114, size: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !140, line: 418, baseType: !339, size: 128)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !140, line: 418, size: 128, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !339, file: !140, line: 419, baseType: !56, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !339, file: !140, line: 420, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !277, line: 520, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !140, line: 74, size: 512, align: 128, elements: !346)
!346 = !{!347, !348, !5200, !5205}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !140, line: 75, baseType: !56, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !140, line: 83, baseType: !349, size: 320, offset: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !140, line: 83, size: 320, elements: !350)
!350 = !{!351, !5126, !5140, !5144, !5199}
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !140, line: 84, baseType: !352, size: 320)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !140, line: 84, size: 320, elements: !353)
!353 = !{!354, !365, !5120, !5125}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !140, line: 90, baseType: !355, size: 128)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !140, line: 90, size: 128, elements: !356)
!356 = !{!357, !358, !363, !364}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !355, file: !140, line: 91, baseType: !114, size: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !140, line: 94, baseType: !359, size: 128)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !140, line: 94, size: 128, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !359, file: !140, line: 96, baseType: !37, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !359, file: !140, line: 98, baseType: !22, size: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !355, file: !140, line: 102, baseType: !114, size: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !355, file: !140, line: 103, baseType: !114, size: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !352, file: !140, line: 106, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !232, line: 472, size: 1536, align: 64, elements: !368)
!368 = !{!369, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !5114, !5115, !5116, !5117, !5118, !5119}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !367, file: !232, line: 473, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !232, line: 641, size: 4800, elements: !372)
!372 = !{!373, !374, !375, !383, !384, !391, !392, !395, !396, !4904, !4905, !4906, !4907, !4908, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4948, !4951, !4952, !4953, !4962, !4963, !4964, !4965}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !371, file: !232, line: 642, baseType: !41, size: 16)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !371, file: !232, line: 643, baseType: !43, size: 16, offset: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !371, file: !232, line: 644, baseType: !376, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !377, line: 23, baseType: !378)
!377 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 21, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !377, line: 22, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !42, line: 37, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !54, line: 49, baseType: !22)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !371, file: !232, line: 645, baseType: !114, size: 128, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !371, file: !232, line: 646, baseType: !385, size: 32, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !377, line: 28, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 26, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !386, file: !377, line: 27, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !42, line: 38, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !54, line: 50, baseType: !22)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !371, file: !232, line: 647, baseType: !22, size: 32, offset: 224)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !371, file: !232, line: 650, baseType: !393, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !232, line: 607, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !371, file: !232, line: 651, baseType: !393, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !371, file: !232, line: 654, baseType: !397, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !232, line: 1966, size: 2048, align: 512, elements: !400)
!400 = !{!401, !4738, !4748, !4752, !4756, !4760, !4764, !4768, !4772, !4776, !4780, !4781, !4785, !4789, !4826, !4855, !4859, !4865, !4869, !4873, !4877, !4881, !4885, !4891, !4895}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !399, file: !232, line: 1967, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!405, !370, !405, !22}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !407, line: 82, size: 1536, elements: !408)
!407 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!408 = !{!409, !410, !420, !428, !429, !446, !447, !451, !464, !4721, !4722, !4723, !4724, !4730, !4731, !4732}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !406, file: !407, line: 84, baseType: !22, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !406, file: !407, line: 85, baseType: !411, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !412, line: 275, baseType: !413)
!412 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !412, line: 275, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !413, file: !412, line: 275, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !412, line: 69, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !412, line: 64, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !417, file: !412, line: 65, baseType: !22, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !406, file: !407, line: 86, baseType: !421, size: 128, offset: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !422, line: 38, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!423 = !{!424, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !422, line: 39, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !421, file: !422, line: 39, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !406, file: !407, line: 87, baseType: !405, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !406, file: !407, line: 88, baseType: !430, size: 128, offset: 256)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !407, line: 49, size: 128, elements: !431)
!431 = !{!432, !443}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !407, line: 50, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !407, line: 50, size: 64, elements: !434)
!434 = !{!435, !442}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !407, line: 51, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !433, file: !407, line: 51, size: 64, elements: !437)
!437 = !{!438, !441}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !436, file: !407, line: 52, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !101, line: 21, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !103, line: 27, baseType: !22)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !436, file: !407, line: 52, baseType: !439, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !433, file: !407, line: 54, baseType: !308, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !407, line: 56, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !406, file: !407, line: 89, baseType: !370, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !406, file: !407, line: 91, baseType: !448, size: 256, offset: 448)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !406, file: !407, line: 94, baseType: !452, size: 64, offset: 704)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !453, line: 25, size: 64, elements: !454)
!453 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !453, line: 26, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !453, line: 26, size: 64, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !456, file: !453, line: 28, baseType: !309, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !453, line: 30, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !456, file: !453, line: 30, size: 64, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !460, file: !453, line: 31, baseType: !76, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !460, file: !453, line: 32, baseType: !39, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !406, file: !407, line: 95, baseType: !465, size: 64, offset: 768)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !407, line: 128, size: 1024, align: 512, elements: !468)
!468 = !{!469, !473, !474, !481, !487, !491, !495, !499, !500, !504, !509, !4711, !4715}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !467, file: !407, line: 129, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!39, !405, !22}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !467, file: !407, line: 130, baseType: !470, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !467, file: !407, line: 131, baseType: !475, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!39, !478, !480}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !467, file: !407, line: 132, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!39, !478, !22, !34, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !467, file: !407, line: 134, baseType: !488, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!39, !478}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !467, file: !407, line: 135, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!39, !405}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !467, file: !407, line: 136, baseType: !496, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !405}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !467, file: !407, line: 137, baseType: !496, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !467, file: !407, line: 138, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !405, !370}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !467, file: !407, line: 139, baseType: !505, size: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!508, !405, !508, !39}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !467, file: !407, line: 140, baseType: !510, size: 64, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!513, !4710}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !515, line: 70, size: 256, elements: !516)
!515 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!516 = !{!517, !518, !4706, !4707}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !514, file: !515, line: 71, baseType: !405, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !514, file: !515, line: 72, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !232, line: 1190, size: 10752, elements: !521)
!521 = !{!522, !523, !526, !527, !528, !529, !2275, !2427, !2467, !2552, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2569, !2573, !2574, !3039, !3042, !3100, !3103, !3104, !3105, !3146, !4640, !4641, !4642, !4643, !4644, !4645, !4648, !4649, !4656, !4657, !4658, !4659, !4660, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !520, file: !232, line: 1191, baseType: !114, size: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !520, file: !232, line: 1192, baseType: !524, size: 32, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !42, line: 21, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !42, line: 18, baseType: !439)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !520, file: !232, line: 1193, baseType: !104, size: 8, offset: 160)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !520, file: !232, line: 1194, baseType: !56, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !520, file: !232, line: 1195, baseType: !58, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !520, file: !232, line: 1196, baseType: !530, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !232, line: 2366, size: 576, elements: !532)
!532 = !{!533, !534, !535, !541, !545, !549, !553, !2263, !2264, !2265, !2267, !2268, !2269, !2271, !2272, !2273, !2274}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !232, line: 2367, baseType: !34, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !531, file: !232, line: 2368, baseType: !39, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !531, file: !232, line: 2376, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!39, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !515, line: 21, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !531, file: !232, line: 2377, baseType: !542, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !232, line: 75, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !531, file: !232, line: 2378, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!405, !530, !39, !34, !37}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !531, file: !232, line: 2380, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !519}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !531, file: !232, line: 2381, baseType: !554, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !125, line: 402, size: 9216, align: 512, elements: !556)
!556 = !{!557, !558, !559, !563, !1921, !1947, !1948, !1949, !1950, !1954, !1957, !1958, !1959, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2027, !2031, !2051, !2069, !2070, !2071, !2072, !2081, !2104, !2105, !2108, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2122, !2123, !2222, !2230, !2231, !2232, !2234, !2238, !2239, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2256, !2257, !2258, !2262}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !555, file: !125, line: 403, baseType: !124, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !555, file: !125, line: 406, baseType: !114, size: 128, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !125, line: 409, baseType: !560, size: 448, offset: 192)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 56)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !555, file: !125, line: 417, baseType: !564, size: 768, offset: 640)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !125, line: 45, size: 768, elements: !565)
!565 = !{!566, !1915, !1916, !1917, !1920}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !564, file: !125, line: 46, baseType: !567, size: 512)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !568, line: 64, size: 512, elements: !569)
!568 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!569 = !{!570, !571, !572, !574, !620, !1813, !1905, !1910, !1911, !1912, !1913, !1914}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !567, file: !568, line: 65, baseType: !34, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !567, file: !568, line: 66, baseType: !114, size: 128, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !567, file: !568, line: 67, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !567, file: !568, line: 68, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !568, line: 168, size: 768, elements: !577)
!577 = !{!578, !579, !580, !581}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !576, file: !568, line: 169, baseType: !114, size: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !576, file: !568, line: 170, baseType: !76, size: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !576, file: !568, line: 171, baseType: !567, size: 512, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !576, file: !568, line: 172, baseType: !582, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !568, line: 133, size: 192, elements: !585)
!585 = !{!586, !593, !598}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !584, file: !568, line: 134, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!39, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !584, file: !568, line: 135, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!34, !591}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !584, file: !568, line: 136, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!39, !591, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !568, line: 125, size: 20736, elements: !605)
!605 = !{!606, !610, !614, !615, !619}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !604, file: !568, line: 126, baseType: !607, size: 192)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 192, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 3)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !604, file: !568, line: 127, baseType: !611, size: 4096, offset: 192)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 4096, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !604, file: !568, line: 128, baseType: !39, size: 32, offset: 4288)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !604, file: !568, line: 129, baseType: !616, size: 16384, offset: 4320)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 2048)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !604, file: !568, line: 130, baseType: !39, size: 32, offset: 20704)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !567, file: !568, line: 69, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !568, line: 116, size: 384, elements: !624)
!624 = !{!625, !629, !651, !1774, !1805, !1809}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !623, file: !568, line: 117, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !573}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !623, file: !568, line: 118, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !633, line: 254, size: 128, elements: !634)
!633 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!634 = !{!635, !647}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !632, file: !633, line: 255, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!639, !573, !642, !508}
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !42, line: 66, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !54, line: 73, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !54, line: 15, baseType: !306)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !633, line: 30, size: 128, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !643, file: !633, line: 31, baseType: !34, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !643, file: !633, line: 32, baseType: !41, size: 16, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !632, file: !633, line: 256, baseType: !648, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!639, !573, !642, !34, !52}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !623, file: !568, line: 119, baseType: !652, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !633, line: 84, size: 320, elements: !656)
!656 = !{!657, !658, !662, !1770, !1772}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !655, file: !633, line: 85, baseType: !34, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !655, file: !633, line: 86, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!41, !573, !642, !39}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !655, file: !633, line: 88, baseType: !663, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!41, !573, !666, !39}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !633, line: 175, size: 512, elements: !668)
!668 = !{!669, !670, !671, !672, !676, !1765, !1766}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !667, file: !633, line: 176, baseType: !643, size: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !667, file: !633, line: 177, baseType: !52, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !667, file: !633, line: 178, baseType: !37, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !667, file: !633, line: 179, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!366}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !667, file: !633, line: 180, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!639, !680, !573, !666, !508, !58, !52}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !232, line: 994, size: 1856, align: 64, elements: !682)
!682 = !{!683, !694, !695, !697, !706, !719, !720, !721, !787, !1146, !1155, !1161, !1162, !1755, !1756, !1757, !1758, !1760, !1761, !1764}
!683 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !232, line: 995, baseType: !684, size: 128)
!684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !232, line: 995, size: 128, elements: !685)
!685 = !{!686, !692, !693}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !684, file: !232, line: 996, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !688, line: 60, size: 64, elements: !689)
!688 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !688, line: 61, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !684, file: !232, line: 997, baseType: !329, size: 128, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !684, file: !232, line: 998, baseType: !22, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !681, file: !232, line: 1005, baseType: !76, size: 32, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !681, file: !232, line: 1006, baseType: !696, size: 32, offset: 160)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !42, line: 156, baseType: !22)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !681, file: !232, line: 1007, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !699, line: 13, baseType: !700)
!699 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !42, line: 181, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 179, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !701, file: !42, line: 180, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !101, line: 22, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !103, line: 30, baseType: !60)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !681, file: !232, line: 1008, baseType: !707, size: 256, offset: 256)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !708, line: 66, size: 256, elements: !709)
!708 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!709 = !{!710, !711, !713, !718}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !707, file: !708, line: 67, baseType: !698, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !707, file: !708, line: 68, baseType: !712, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !85, line: 23, baseType: !84)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !707, file: !708, line: 70, baseType: !714, size: 32, offset: 96)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !715, line: 15, size: 32, elements: !716)
!715 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !714, file: !715, line: 20, baseType: !66, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !707, file: !708, line: 72, baseType: !114, size: 128, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !681, file: !232, line: 1009, baseType: !58, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !681, file: !232, line: 1010, baseType: !22, size: 32, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !681, file: !232, line: 1011, baseType: !722, size: 256, offset: 640)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !232, line: 948, size: 256, elements: !723)
!723 = !{!724, !745, !783, !784, !785, !786}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !232, line: 949, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !726, line: 34, baseType: !727)
!726 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 25, size: 64, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !727, file: !726, line: 26, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !731, line: 27, baseType: !732)
!731 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !731, line: 13, size: 64, elements: !733)
!733 = !{!734, !744}
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !731, line: 14, baseType: !735, size: 32)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !731, line: 14, size: 32, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !735, file: !731, line: 15, baseType: !66, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !731, line: 16, baseType: !739, size: 32)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !731, line: 16, size: 32, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !739, file: !731, line: 18, baseType: !100, size: 8)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !739, file: !731, line: 19, baseType: !743, size: 24, offset: 8)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 24, elements: !608)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !732, file: !731, line: 26, baseType: !88, size: 32, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !722, file: !232, line: 950, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !21, line: 59, size: 768, elements: !748)
!748 = !{!749, !755, !756, !757, !770, !771, !772, !773}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !747, file: !21, line: 61, baseType: !750, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !751, line: 113, baseType: !752)
!751 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !751, line: 111, size: 32, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !752, file: !751, line: 112, baseType: !66, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !747, file: !21, line: 62, baseType: !22, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !747, file: !21, line: 63, baseType: !76, size: 32, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !747, file: !21, line: 65, baseType: !758, size: 256, offset: 128)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 256, elements: !768)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !42, line: 194, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !759, file: !42, line: 195, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !42, line: 198, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !763, file: !42, line: 199, baseType: !762, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !763, file: !42, line: 199, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!768 = !{!769}
!769 = !DISubrange(count: 4)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !747, file: !21, line: 66, baseType: !759, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !747, file: !21, line: 68, baseType: !71, size: 192, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !747, file: !21, line: 69, baseType: !329, size: 128, align: 64, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !747, file: !21, line: 70, baseType: !774, offset: 768)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, elements: !781)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !21, line: 54, size: 128, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !775, file: !21, line: 55, baseType: !39, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !775, file: !21, line: 56, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !21, line: 56, flags: DIFlagFwdDecl)
!781 = !{!782}
!782 = !DISubrange(count: -1)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !722, file: !232, line: 951, baseType: !20, size: 32, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !722, file: !232, line: 952, baseType: !376, size: 32, offset: 160)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !722, file: !232, line: 952, baseType: !376, size: 32, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !722, file: !232, line: 953, baseType: !39, size: 32, offset: 224)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !681, file: !232, line: 1012, baseType: !788, size: 64, offset: 896)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !791, line: 110, size: 1472, elements: !792)
!791 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !809, !810, !811, !812, !813, !814, !944, !945, !946, !947, !948, !979, !1132, !1133, !1141}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !790, file: !791, line: 111, baseType: !698, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !790, file: !791, line: 112, baseType: !376, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !790, file: !791, line: 113, baseType: !385, size: 32, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !790, file: !791, line: 114, baseType: !376, size: 32, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !790, file: !791, line: 115, baseType: !385, size: 32, offset: 160)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !790, file: !791, line: 116, baseType: !376, size: 32, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !790, file: !791, line: 117, baseType: !385, size: 32, offset: 224)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !790, file: !791, line: 118, baseType: !376, size: 32, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !790, file: !791, line: 119, baseType: !385, size: 32, offset: 288)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !790, file: !791, line: 120, baseType: !22, size: 32, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !790, file: !791, line: 121, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !805, line: 24, baseType: !806)
!805 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !805, line: 24, size: 64, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !806, file: !805, line: 24, baseType: !308, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !790, file: !791, line: 122, baseType: !804, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !790, file: !791, line: 123, baseType: !804, size: 64, offset: 512)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !790, file: !791, line: 124, baseType: !804, size: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !790, file: !791, line: 125, baseType: !804, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !790, file: !791, line: 127, baseType: !104, size: 8, offset: 704)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !790, file: !791, line: 129, baseType: !815, size: 64, offset: 768)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !817, line: 195, size: 1728, elements: !818)
!817 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!818 = !{!819, !820, !825, !837, !846, !849, !850, !857, !858, !859, !860, !863, !864, !865, !867, !868, !908, !929}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !816, file: !817, line: 196, baseType: !750, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !816, file: !817, line: 197, baseType: !821, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !817, line: 28, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !42, line: 104, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !101, line: 20, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !103, line: 26, baseType: !39)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !817, line: 198, baseType: !826, size: 192, offset: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !817, line: 198, size: 192, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !826, file: !817, line: 199, baseType: !114, size: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !826, file: !817, line: 200, baseType: !830, size: 192, align: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !831, line: 5, size: 192, align: 64, elements: !832)
!831 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!832 = !{!833, !834, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !830, file: !831, line: 6, baseType: !56, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !830, file: !831, line: 7, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !830, file: !831, line: 8, baseType: !835, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !816, file: !817, line: 205, baseType: !838, size: 320, offset: 256)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !839, line: 48, size: 320, elements: !840)
!839 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!840 = !{!841, !842, !843, !844, !845}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !838, file: !839, line: 49, baseType: !698, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !838, file: !839, line: 55, baseType: !698, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !838, file: !839, line: 57, baseType: !714, size: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !838, file: !839, line: 59, baseType: !712, size: 32, offset: 160)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !838, file: !839, line: 60, baseType: !114, size: 128, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !816, file: !817, line: 206, baseType: !847, size: 64, offset: 576)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !817, line: 206, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !816, file: !817, line: 207, baseType: !37, size: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !817, line: 208, baseType: !851, size: 64, offset: 704)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !817, line: 208, size: 64, elements: !852)
!852 = !{!853, !856}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !851, file: !817, line: 209, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !855, line: 8, baseType: !705)
!855 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!856 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !851, file: !817, line: 210, baseType: !854, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !816, file: !817, line: 212, baseType: !854, size: 64, offset: 768)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !816, file: !817, line: 213, baseType: !376, size: 32, offset: 832)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !816, file: !817, line: 214, baseType: !385, size: 32, offset: 864)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !816, file: !817, line: 215, baseType: !861, size: 32, offset: 896)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !817, line: 31, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !42, line: 110, baseType: !439)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !816, file: !817, line: 216, baseType: !43, size: 16, offset: 928)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !816, file: !817, line: 217, baseType: !43, size: 16, offset: 944)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !816, file: !817, line: 221, baseType: !866, size: 16, offset: 960)
!866 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !817, line: 228, baseType: !56, size: 64, offset: 1024)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !817, line: 245, baseType: !869, size: 320, offset: 1088)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !817, line: 245, size: 320, elements: !870)
!870 = !{!871, !900}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !869, file: !817, line: 246, baseType: !872, size: 320)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !817, line: 114, size: 320, elements: !873)
!873 = !{!874, !875, !887, !890, !899}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !872, file: !817, line: 116, baseType: !56, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !817, line: 117, baseType: !876, size: 64, offset: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !872, file: !817, line: 117, size: 64, elements: !877)
!877 = !{!878, !886}
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !817, line: 118, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !817, line: 118, size: 64, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !879, file: !817, line: 120, baseType: !110, size: 16)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !879, file: !817, line: 121, baseType: !883, size: 48, offset: 16)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 6)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !876, file: !817, line: 127, baseType: !56, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !872, file: !817, line: 129, baseType: !888, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !817, line: 102, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !872, file: !817, line: 130, baseType: !891, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !817, line: 108, size: 192, elements: !893)
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !892, file: !817, line: 109, baseType: !329, size: 128, align: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !892, file: !817, line: 110, baseType: !750, size: 32, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !892, file: !817, line: 111, baseType: !897, size: 8, offset: 160)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !42, line: 35, baseType: !898)
!898 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !872, file: !817, line: 131, baseType: !34, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !817, line: 247, baseType: !901, size: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !817, line: 247, size: 320, elements: !902)
!902 = !{!903, !904, !905, !906, !907}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !901, file: !817, line: 248, baseType: !56, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !901, file: !817, line: 249, baseType: !56, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !901, file: !817, line: 250, baseType: !888, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !901, file: !817, line: 251, baseType: !891, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !901, file: !817, line: 252, baseType: !508, size: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !817, line: 260, baseType: !909, size: 256, offset: 1408)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !817, line: 260, size: 256, elements: !910)
!910 = !{!911, !917}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !909, file: !817, line: 261, baseType: !912, size: 256)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !817, line: 134, size: 256, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !912, file: !817, line: 135, baseType: !37, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !912, file: !817, line: 136, baseType: !916, size: 256)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !768)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !817, line: 262, baseType: !918, size: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !817, line: 262, size: 256, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !918, file: !817, line: 264, baseType: !114, size: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !918, file: !817, line: 265, baseType: !922, size: 128, offset: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !923, line: 22, size: 128, elements: !924)
!923 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!924 = !{!925, !928}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !922, file: !923, line: 23, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !923, line: 23, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !922, file: !923, line: 24, baseType: !56, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !816, file: !817, line: 280, baseType: !930, size: 64, offset: 1664)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !817, line: 176, size: 192, elements: !932)
!932 = !{!933, !942, !943}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !931, file: !817, line: 177, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !817, line: 171, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!39, !815, !938, !940, !815}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !931, file: !817, line: 178, baseType: !815, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !931, file: !817, line: 179, baseType: !888, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !790, file: !791, line: 130, baseType: !815, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !790, file: !791, line: 131, baseType: !815, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !790, file: !791, line: 132, baseType: !815, size: 64, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !790, file: !791, line: 135, baseType: !37, size: 64, offset: 1024)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !790, file: !791, line: 137, baseType: !949, size: 64, offset: 1088)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !951, line: 14, size: 1088, elements: !952)
!951 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!952 = !{!953, !954, !963, !964, !965, !966, !967, !968}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !950, file: !951, line: 15, baseType: !750, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !950, file: !951, line: 17, baseType: !955, size: 320, offset: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !956, line: 22, size: 320, elements: !957)
!956 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!957 = !{!958, !959, !960, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !955, file: !956, line: 23, baseType: !712, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !955, file: !956, line: 24, baseType: !704, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !955, file: !956, line: 26, baseType: !114, size: 128, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !955, file: !956, line: 28, baseType: !962, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !950, file: !951, line: 19, baseType: !56, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !950, file: !951, line: 20, baseType: !698, size: 64, offset: 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !950, file: !951, line: 23, baseType: !763, size: 128, offset: 512)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !950, file: !951, line: 24, baseType: !376, size: 32, offset: 640)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !950, file: !951, line: 29, baseType: !698, size: 64, offset: 704)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !950, file: !951, line: 36, baseType: !969, size: 320, offset: 768)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !970, line: 15, size: 320, elements: !971)
!970 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!971 = !{!972, !973, !974, !975, !976, !977, !978}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !969, file: !970, line: 16, baseType: !712, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !969, file: !970, line: 18, baseType: !39, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !969, file: !970, line: 19, baseType: !39, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !969, file: !970, line: 20, baseType: !39, size: 32, offset: 96)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !969, file: !970, line: 21, baseType: !39, size: 32, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !969, file: !970, line: 22, baseType: !56, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !969, file: !970, line: 23, baseType: !56, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !790, file: !791, line: 138, baseType: !980, size: 64, offset: 1152)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !982, line: 68, size: 4800, elements: !983)
!982 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!983 = !{!984, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1023, !1024, !1025, !1026, !1027, !1028, !1040, !1113, !1114, !1128, !1130}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !981, file: !982, line: 69, baseType: !985, size: 576)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !982, line: 23, size: 576, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !985, file: !982, line: 24, baseType: !439, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !982, line: 25, baseType: !989, size: 512, offset: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !982, line: 25, size: 512, elements: !990)
!990 = !{!991, !1000}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !989, file: !982, line: 26, baseType: !992, size: 480)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 480, elements: !998)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !982, line: 17, size: 96, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !993, file: !982, line: 18, baseType: !439, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !993, file: !982, line: 19, baseType: !439, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !993, file: !982, line: 20, baseType: !439, size: 32, offset: 64)
!998 = !{!999}
!999 = !DISubrange(count: 5)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !982, line: 27, baseType: !1001, size: 128)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !982, line: 27, size: 128, elements: !1002)
!1002 = !{!1003, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1001, file: !982, line: 28, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1001, file: !982, line: 29, baseType: !1004, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !981, file: !982, line: 70, baseType: !985, size: 576, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !981, file: !982, line: 71, baseType: !985, size: 576, offset: 1152)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !981, file: !982, line: 72, baseType: !980, size: 64, offset: 1728)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !981, file: !982, line: 73, baseType: !39, size: 32, offset: 1792)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !981, file: !982, line: 74, baseType: !376, size: 32, offset: 1824)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !981, file: !982, line: 75, baseType: !385, size: 32, offset: 1856)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !981, file: !982, line: 76, baseType: !1013, size: 192, offset: 1920)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1014, line: 9, size: 192, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1015 = !{!1016, !1017, !1021, !1022}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1013, file: !1014, line: 10, baseType: !698, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1013, file: !1014, line: 11, baseType: !1018, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1014, line: 7, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1013, file: !1014, line: 12, baseType: !22, size: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1013, file: !1014, line: 13, baseType: !750, size: 32, offset: 160)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !982, line: 77, baseType: !56, size: 64, offset: 2112)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !981, file: !982, line: 80, baseType: !897, size: 8, offset: 2176)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !981, file: !982, line: 88, baseType: !114, size: 128, offset: 2240)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !981, file: !982, line: 89, baseType: !815, size: 64, offset: 2368)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !981, file: !982, line: 90, baseType: !838, size: 320, offset: 2432)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !981, file: !982, line: 97, baseType: !1029, size: 256, offset: 2752)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1030, line: 98, size: 256, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1029, file: !1030, line: 99, baseType: !698, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1029, file: !1030, line: 100, baseType: !114, size: 128, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1029, file: !1030, line: 101, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1030, line: 21, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !981, file: !982, line: 99, baseType: !1041, size: 768, offset: 3008)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !30, line: 199, size: 768, elements: !1042)
!1042 = !{!1043, !1048}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1041, file: !30, line: 200, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!39, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1041, file: !30, line: 201, baseType: !1049, size: 704, offset: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !30, line: 193, size: 704, elements: !1050)
!1050 = !{!1051, !1109}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1049, file: !30, line: 195, baseType: !1052, size: 640)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !30, line: 173, size: 640, elements: !1053)
!1053 = !{!1054, !1066, !1078, !1079, !1099, !1100, !1102, !1108}
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !30, line: 174, baseType: !1055, size: 192)
!1055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1052, file: !30, line: 174, size: 192, elements: !1056)
!1056 = !{!1057, !1065}
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !30, line: 175, baseType: !1058, size: 192)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !30, line: 175, size: 192, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1064}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1058, file: !30, line: 176, baseType: !50, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1058, file: !30, line: 177, baseType: !39, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1058, file: !30, line: 178, baseType: !39, size: 32, offset: 96)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1058, file: !30, line: 179, baseType: !39, size: 32, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1058, file: !30, line: 180, baseType: !39, size: 32, offset: 160)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1055, file: !30, line: 182, baseType: !329, size: 128, align: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1052, file: !30, line: 184, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1069, line: 26, size: 256, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1068, file: !1069, line: 27, baseType: !22, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1068, file: !1069, line: 28, baseType: !1073, size: 192, offset: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1074, line: 43, size: 192, elements: !1075)
!1074 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1073, file: !1074, line: 44, baseType: !712, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1073, file: !1074, line: 45, baseType: !114, size: 128, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1052, file: !30, line: 185, baseType: !50, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1052, file: !30, line: 186, baseType: !1080, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !30, line: 204, size: 960, elements: !1082)
!1082 = !{!1083, !1084, !1088, !1095}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1081, file: !30, line: 205, baseType: !1041, size: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1081, file: !30, line: 206, baseType: !1085, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!1047, !1080}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1081, file: !30, line: 207, baseType: !1089, size: 64, offset: 832)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1092, !1093, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1081, file: !30, line: 209, baseType: !1096, size: 64, offset: 896)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!39, !1092, !50}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1052, file: !30, line: 187, baseType: !1047, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1052, file: !30, line: 188, baseType: !1101, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1052, file: !30, line: 189, baseType: !1103, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !30, line: 157, size: 256, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1104, file: !30, line: 158, baseType: !830, size: 192, align: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1104, file: !30, line: 159, baseType: !1092, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1052, file: !30, line: 190, baseType: !759, size: 64, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1049, file: !30, line: 196, baseType: !1110, size: 64, offset: 640)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !831, line: 12, size: 64, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1110, file: !831, line: 13, baseType: !835, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !981, file: !982, line: 100, baseType: !1092, size: 64, offset: 3776)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !981, file: !982, line: 102, baseType: !1115, size: 64, offset: 3840)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !982, line: 107, size: 1152, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1126}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1116, file: !982, line: 108, baseType: !763, size: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1116, file: !982, line: 109, baseType: !980, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1116, file: !982, line: 110, baseType: !376, size: 32, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1116, file: !982, line: 111, baseType: !66, size: 32, offset: 224)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1116, file: !982, line: 112, baseType: !1123, size: 640, offset: 256)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 640, elements: !1124)
!1124 = !{!1125}
!1125 = !DISubrange(count: 10)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1116, file: !982, line: 113, baseType: !1127, size: 256, offset: 896)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 256, elements: !768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !981, file: !982, line: 103, baseType: !1129, size: 640, offset: 3904)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 640, elements: !1124)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !981, file: !982, line: 104, baseType: !1131, size: 256, offset: 4544)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 256, elements: !768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !790, file: !791, line: 139, baseType: !1115, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !790, file: !791, line: 140, baseType: !1134, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !791, line: 25, size: 64, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1135, file: !791, line: 26, baseType: !66, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1135, file: !791, line: 27, baseType: !39, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1135, file: !791, line: 28, baseType: !1140, offset: 64)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, elements: !781)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 142, baseType: !1142, size: 128, offset: 1344)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !791, line: 142, size: 128, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1142, file: !791, line: 143, baseType: !39, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1142, file: !791, line: 144, baseType: !329, size: 128, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !681, file: !232, line: 1013, baseType: !1147, size: 256, offset: 960)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !232, line: 970, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1147, file: !232, line: 971, baseType: !56, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1147, file: !232, line: 972, baseType: !22, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1147, file: !232, line: 973, baseType: !22, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1147, file: !232, line: 974, baseType: !22, size: 32, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1147, file: !232, line: 975, baseType: !22, size: 32, offset: 160)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1147, file: !232, line: 976, baseType: !58, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !681, file: !232, line: 1014, baseType: !1156, size: 128, offset: 1216)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1157, line: 8, size: 128, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1156, file: !1157, line: 9, baseType: !513, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1156, file: !1157, line: 10, baseType: !405, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !681, file: !232, line: 1015, baseType: !370, size: 64, offset: 1344)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !681, file: !232, line: 1016, baseType: !1163, size: 64, offset: 1408)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !232, line: 1914, size: 2112, elements: !1166)
!1166 = !{!1167, !1168, !1172, !1176, !1180, !1291, !1292, !1298, !1311, !1319, !1323, !1324, !1638, !1639, !1643, !1648, !1649, !1653, !1657, !1663, !1664, !1668, !1669, !1676, !1680, !1684, !1690, !1694, !1736, !1740, !1744, !1745, !1751}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1165, file: !232, line: 1915, baseType: !554, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1165, file: !232, line: 1916, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!58, !680, !58, !39}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1165, file: !232, line: 1917, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!639, !680, !508, !52, !57}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1165, file: !232, line: 1918, baseType: !1177, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!639, !680, !34, !52, !57}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1165, file: !232, line: 1919, baseType: !1181, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!639, !1184, !1289}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !232, line: 373, size: 384, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1193, !1194, !1195, !1196}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1185, file: !232, line: 374, baseType: !680, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1185, file: !232, line: 375, baseType: !58, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1185, file: !232, line: 376, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !1184, !306}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1185, file: !232, line: 377, baseType: !37, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1185, file: !232, line: 378, baseType: !39, size: 32, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1185, file: !232, line: 379, baseType: !110, size: 16, offset: 288)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !232, line: 380, baseType: !1197, size: 64, offset: 320)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !232, line: 380, size: 64, elements: !1198)
!1198 = !{!1199, !1285}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1197, file: !232, line: 386, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1202, line: 998, size: 448, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1203 = !{!1204, !1271, !1272}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1201, file: !1202, line: 999, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !140, line: 293, size: 1536, elements: !1207)
!1207 = !{!1208, !1238, !1252}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !140, line: 295, baseType: !1209, size: 512)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1206, file: !140, line: 295, size: 512, elements: !1210)
!1210 = !{!1211, !1237}
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !140, line: 296, baseType: !1212, size: 448)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1209, file: !140, line: 296, size: 448, elements: !1213)
!1213 = !{!1214, !1215, !1224, !1225, !1226, !1235, !1236}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !140, line: 298, baseType: !56, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !140, line: 299, baseType: !1216, size: 128, offset: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !140, line: 299, size: 128, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1216, file: !140, line: 300, baseType: !114, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !140, line: 302, baseType: !1220, size: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !140, line: 302, size: 128, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1220, file: !140, line: 303, baseType: !37, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1220, file: !140, line: 305, baseType: !22, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1212, file: !140, line: 310, baseType: !366, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1212, file: !140, line: 311, baseType: !56, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !140, line: 312, baseType: !1227, size: 64, offset: 320)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !140, line: 312, size: 64, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1227, file: !140, line: 313, baseType: !37, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1227, file: !140, line: 314, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !140, line: 257, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 255, size: 64, elements: !1233)
!1233 = !{!1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1232, file: !140, line: 256, baseType: !56, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1212, file: !140, line: 316, baseType: !66, size: 32, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1212, file: !140, line: 317, baseType: !66, size: 32, offset: 416)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1209, file: !140, line: 323, baseType: !345, size: 512, align: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !140, line: 325, baseType: !1239, size: 512, offset: 512)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1206, file: !140, line: 325, size: 512, elements: !1240)
!1240 = !{!1241, !1251}
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !140, line: 326, baseType: !1242, size: 320)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1239, file: !140, line: 326, size: 320, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1242, file: !140, line: 327, baseType: !56, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1242, file: !140, line: 328, baseType: !56, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1242, file: !140, line: 329, baseType: !56, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1242, file: !140, line: 331, baseType: !66, size: 32, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1242, file: !140, line: 332, baseType: !66, size: 32, offset: 224)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1242, file: !140, line: 333, baseType: !66, size: 32, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1242, file: !140, line: 335, baseType: !22, size: 32, offset: 288)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1239, file: !140, line: 339, baseType: !345, size: 512, align: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !140, line: 341, baseType: !1253, size: 512, offset: 1024)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1206, file: !140, line: 341, size: 512, elements: !1254)
!1254 = !{!1255, !1264, !1270}
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !140, line: 342, baseType: !1256, size: 384)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !140, line: 342, size: 384, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1256, file: !140, line: 343, baseType: !56, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1256, file: !140, line: 344, baseType: !56, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1256, file: !140, line: 346, baseType: !37, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1256, file: !140, line: 347, baseType: !37, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1256, file: !140, line: 348, baseType: !37, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1256, file: !140, line: 349, baseType: !37, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !140, line: 352, baseType: !1265, size: 256)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !140, line: 352, size: 256, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1265, file: !140, line: 353, baseType: !56, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1265, file: !140, line: 354, baseType: !56, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1265, file: !140, line: 356, baseType: !114, size: 128, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1253, file: !140, line: 359, baseType: !345, size: 512, align: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1201, file: !1202, line: 1000, baseType: !39, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1201, file: !1202, line: 1001, baseType: !1273, size: 320, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !72, line: 14, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !72, line: 30, size: 320, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1284}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1274, file: !72, line: 31, baseType: !22, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1274, file: !72, line: 32, baseType: !37, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1274, file: !72, line: 33, baseType: !1279, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !72, line: 16, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!39, !1283, !22, !39, !37}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1274, file: !72, line: 34, baseType: !114, size: 128, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1197, file: !232, line: 395, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!639, !37}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !232, line: 69, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1165, file: !232, line: 1920, baseType: !1181, size: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1165, file: !232, line: 1921, baseType: !1293, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!39, !1184, !1296, !22}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !232, line: 53, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1165, file: !232, line: 1923, baseType: !1299, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!39, !680, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !232, line: 1858, size: 128, elements: !1304)
!1304 = !{!1305, !1310}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1303, file: !232, line: 1859, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !232, line: 1855, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!897, !1302, !34, !39, !58, !308, !22}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1303, file: !232, line: 1860, baseType: !58, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1165, file: !232, line: 1924, baseType: !1312, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1315, !680, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1316, line: 59, baseType: !22)
!1316 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !232, line: 61, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1165, file: !232, line: 1925, baseType: !1320, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!306, !680, !22, !56}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1165, file: !232, line: 1926, baseType: !1320, size: 64, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1165, file: !232, line: 1927, baseType: !1325, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!39, !680, !1328}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !140, line: 625, size: 1344, elements: !1330)
!1330 = !{!1331, !1340, !1490, !1496, !1503, !1504, !1509, !1510, !1515, !1516, !1519, !1631, !1632, !1633, !1634, !1635, !1636}
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !140, line: 628, baseType: !1332, size: 128)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1329, file: !140, line: 628, size: 128, elements: !1333)
!1333 = !{!1334, !1339}
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !140, line: 629, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !140, line: 629, size: 128, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1335, file: !140, line: 631, baseType: !56, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1335, file: !140, line: 632, baseType: !56, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1332, file: !140, line: 635, baseType: !329, size: 128, align: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1329, file: !140, line: 639, baseType: !1341, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !140, line: 733, size: 10240, elements: !1343)
!1343 = !{!1344, !1488}
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !140, line: 734, baseType: !1345, size: 10240)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !140, line: 734, size: 10240, elements: !1346)
!1346 = !{!1347, !1351, !1365, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1416, !1418, !1421, !1468, !1469, !1470, !1473, !1474, !1475, !1478, !1479, !1480, !1486, !1487}
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !140, line: 739, baseType: !1348, size: 512, align: 512)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1345, file: !140, line: 739, size: 512, align: 512, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1348, file: !140, line: 747, baseType: !66, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1345, file: !140, line: 750, baseType: !1352, size: 128, offset: 512)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1353, line: 218, size: 128, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1354 = !{!1355, !1363, !1364}
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1352, file: !1353, line: 219, baseType: !1356, size: 32)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1352, file: !1353, line: 219, size: 32, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1356, file: !1353, line: 220, baseType: !76, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1356, file: !1353, line: 221, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1353, line: 197, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1353, line: 197, elements: !1362)
!1362 = !{}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1352, file: !1353, line: 223, baseType: !22, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1352, file: !1353, line: 224, baseType: !37, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1345, file: !140, line: 752, baseType: !1366, size: 64, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!56, !680, !56, !56, !56, !56}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1345, file: !140, line: 756, baseType: !56, size: 64, offset: 704)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1345, file: !140, line: 757, baseType: !56, size: 64, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1345, file: !140, line: 760, baseType: !56, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1345, file: !140, line: 761, baseType: !56, size: 64, offset: 896)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1345, file: !140, line: 763, baseType: !56, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1345, file: !140, line: 764, baseType: !290, size: 64, offset: 1024)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1345, file: !140, line: 773, baseType: !66, size: 32, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1345, file: !140, line: 785, baseType: !66, size: 32, offset: 1120)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1345, file: !140, line: 795, baseType: !1378, size: 64, offset: 1152)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !140, line: 726, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1379, file: !140, line: 727, baseType: !308, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1379, file: !140, line: 728, baseType: !39, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1345, file: !140, line: 801, baseType: !56, size: 64, offset: 1216)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1345, file: !140, line: 804, baseType: !698, size: 64, offset: 1280)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1345, file: !140, line: 806, baseType: !39, size: 32, offset: 1344)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1345, file: !140, line: 808, baseType: !76, size: 32, offset: 1376)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1345, file: !140, line: 823, baseType: !838, size: 320, offset: 1408)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1345, file: !140, line: 825, baseType: !114, size: 128, offset: 1728)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1345, file: !140, line: 845, baseType: !39, size: 32, offset: 1856)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1345, file: !140, line: 849, baseType: !56, size: 64, offset: 1920)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1345, file: !140, line: 850, baseType: !56, size: 64, offset: 1984)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1345, file: !140, line: 852, baseType: !56, size: 64, offset: 2048)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1345, file: !140, line: 853, baseType: !56, size: 64, offset: 2112)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1345, file: !140, line: 854, baseType: !700, size: 64, offset: 2176)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1345, file: !140, line: 855, baseType: !56, size: 64, offset: 2240)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1345, file: !140, line: 856, baseType: !56, size: 64, offset: 2304)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1345, file: !140, line: 857, baseType: !56, size: 64, offset: 2368)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1345, file: !140, line: 858, baseType: !56, size: 64, offset: 2432)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1345, file: !140, line: 865, baseType: !416, size: 32, offset: 2496)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1345, file: !140, line: 867, baseType: !76, size: 32, offset: 2528)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1345, file: !140, line: 869, baseType: !56, size: 64, offset: 2560)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1345, file: !140, line: 869, baseType: !56, size: 64, offset: 2624)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1345, file: !140, line: 869, baseType: !56, size: 64, offset: 2688)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1345, file: !140, line: 869, baseType: !56, size: 64, offset: 2752)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1345, file: !140, line: 870, baseType: !56, size: 64, offset: 2816)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1345, file: !140, line: 870, baseType: !56, size: 64, offset: 2880)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1345, file: !140, line: 870, baseType: !56, size: 64, offset: 2944)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1345, file: !140, line: 871, baseType: !56, size: 64, offset: 3008)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1345, file: !140, line: 871, baseType: !56, size: 64, offset: 3072)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1345, file: !140, line: 871, baseType: !56, size: 64, offset: 3136)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1345, file: !140, line: 871, baseType: !56, size: 64, offset: 3200)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1345, file: !140, line: 873, baseType: !1413, size: 3328, offset: 3264)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 3328, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: 52)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1345, file: !140, line: 875, baseType: !1417, size: 1280, offset: 6592)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !955, size: 1280, elements: !768)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1345, file: !140, line: 877, baseType: !1419, size: 64, offset: 7872)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !140, line: 877, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1345, file: !140, line: 880, baseType: !1422, size: 1088, offset: 7936)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1423, line: 72, baseType: !1424)
!1423 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1423, line: 23, size: 1088, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1433, !1434, !1435, !1436, !1463, !1464, !1465}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1424, file: !1423, line: 28, baseType: !308, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1424, file: !1423, line: 38, baseType: !700, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1424, file: !1423, line: 40, baseType: !56, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1424, file: !1423, line: 43, baseType: !838, size: 320, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1424, file: !1423, line: 44, baseType: !1431, size: 64, offset: 512)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1423, line: 44, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1423, line: 48, baseType: !56, size: 64, offset: 576)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1424, file: !1423, line: 59, baseType: !707, size: 256, offset: 640)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1424, file: !1423, line: 60, baseType: !37, size: 64, offset: 896)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1424, file: !1423, line: 61, baseType: !1437, size: 64, offset: 960)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1440, line: 13, size: 1216, elements: !1441)
!1440 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1439, file: !1440, line: 14, baseType: !37, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1439, file: !1440, line: 15, baseType: !56, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1439, file: !1440, line: 17, baseType: !56, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1439, file: !1440, line: 17, baseType: !56, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1439, file: !1440, line: 18, baseType: !56, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1439, file: !1440, line: 18, baseType: !56, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1439, file: !1440, line: 19, baseType: !1449, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1439, file: !1440, line: 21, baseType: !306, size: 64, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1439, file: !1440, line: 23, baseType: !306, size: 64, offset: 512)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1439, file: !1440, line: 24, baseType: !306, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1439, file: !1440, line: 25, baseType: !306, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1439, file: !1440, line: 26, baseType: !306, size: 64, offset: 704)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1439, file: !1440, line: 27, baseType: !306, size: 64, offset: 768)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1439, file: !1440, line: 28, baseType: !306, size: 64, offset: 832)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1439, file: !1440, line: 29, baseType: !306, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1439, file: !1440, line: 30, baseType: !306, size: 64, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1439, file: !1440, line: 31, baseType: !306, size: 64, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1439, file: !1440, line: 32, baseType: !306, size: 64, offset: 1088)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1439, file: !1440, line: 33, baseType: !306, size: 64, offset: 1152)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1424, file: !1423, line: 63, baseType: !66, size: 32, offset: 1024)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1424, file: !1423, line: 69, baseType: !110, size: 16, offset: 1056)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1424, file: !1423, line: 70, baseType: !1466, size: 16, offset: 1072)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !101, line: 18, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !103, line: 23, baseType: !866)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1345, file: !140, line: 882, baseType: !56, size: 64, offset: 9024)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1345, file: !140, line: 885, baseType: !76, size: 32, offset: 9088)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1345, file: !140, line: 886, baseType: !1471, size: 64, offset: 9152)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !140, line: 732, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1345, file: !140, line: 901, baseType: !980, size: 64, offset: 9216)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1345, file: !140, line: 904, baseType: !680, size: 64, offset: 9280)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1345, file: !140, line: 906, baseType: !1476, size: 64, offset: 9344)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !140, line: 906, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1345, file: !140, line: 930, baseType: !66, size: 32, offset: 9408)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1345, file: !140, line: 933, baseType: !66, size: 32, offset: 9440)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1345, file: !140, line: 935, baseType: !1481, size: 64, offset: 9472)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !261, line: 103, size: 64, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1481, file: !261, line: 104, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !261, line: 101, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1345, file: !140, line: 940, baseType: !698, size: 64, offset: 9536)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1345, file: !140, line: 942, baseType: !1029, size: 256, offset: 9600)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1342, file: !140, line: 986, baseType: !1489, offset: 10240)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, elements: !781)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1329, file: !140, line: 640, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !277, line: 297, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !277, line: 297, size: 64, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1492, file: !277, line: 297, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !282, line: 19, baseType: !56)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !140, line: 646, baseType: !1497, size: 64, offset: 256)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1329, file: !140, line: 646, size: 64, elements: !1498)
!1498 = !{!1499, !1502}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1497, file: !140, line: 647, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !140, line: 542, baseType: !56)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1497, file: !140, line: 648, baseType: !1501, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1329, file: !140, line: 666, baseType: !39, size: 32, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1329, file: !140, line: 667, baseType: !1505, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !140, line: 579, size: 320, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1506, file: !140, line: 580, baseType: !838, size: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1329, file: !140, line: 670, baseType: !897, size: 8, offset: 448)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1329, file: !140, line: 681, baseType: !1511, size: 256, offset: 512)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1329, file: !140, line: 678, size: 256, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1511, file: !140, line: 679, baseType: !830, size: 192, align: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1511, file: !140, line: 680, baseType: !56, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1329, file: !140, line: 689, baseType: !114, size: 128, offset: 768)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1329, file: !140, line: 691, baseType: !1517, size: 64, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !140, line: 691, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1329, file: !140, line: 694, baseType: !1520, size: 64, offset: 960)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1523, line: 563, size: 1024, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1524 = !{!1525, !1529, !1530, !1534, !1538, !1542, !1575, !1579, !1583, !1587, !1588, !1589, !1593, !1597, !1623, !1627}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1522, file: !1523, line: 564, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1328}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1522, file: !1523, line: 569, baseType: !1526, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1522, file: !1523, line: 571, baseType: !1531, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!39, !1328, !56}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1522, file: !1523, line: 572, baseType: !1535, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!39, !1328}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1522, file: !1523, line: 578, baseType: !1539, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!39, !1328, !56, !56, !56}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1522, file: !1523, line: 580, baseType: !1543, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !140, line: 1184, baseType: !22)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1523, line: 512, size: 896, elements: !1549)
!1549 = !{!1550, !1559, !1560, !1562, !1564, !1569, !1570, !1571, !1572, !1574}
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1523, line: 513, baseType: !1551, size: 320)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !1523, line: 513, size: 320, elements: !1552)
!1552 = !{!1553, !1554, !1556, !1557, !1558}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1551, file: !1523, line: 514, baseType: !1328, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1551, file: !1523, line: 515, baseType: !1555, size: 32, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !42, line: 154, baseType: !22)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1551, file: !1523, line: 516, baseType: !56, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1551, file: !1523, line: 517, baseType: !56, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1551, file: !1523, line: 518, baseType: !56, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1548, file: !1523, line: 520, baseType: !139, size: 32, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1548, file: !1523, line: 522, baseType: !1561, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1548, file: !1523, line: 524, baseType: !1563, size: 64, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1523, line: 527, baseType: !1565, size: 64, offset: 512)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !1523, line: 527, size: 64, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1565, file: !1523, line: 528, baseType: !317, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1565, file: !1523, line: 529, baseType: !300, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1548, file: !1523, line: 534, baseType: !344, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1548, file: !1523, line: 535, baseType: !344, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1548, file: !1523, line: 541, baseType: !316, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1548, file: !1523, line: 545, baseType: !1573, size: 64, offset: 768)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1548, file: !1523, line: 549, baseType: !343, size: 64, offset: 832)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1522, file: !1523, line: 581, baseType: !1576, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1546, !1547, !22}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1522, file: !1523, line: 582, baseType: !1580, size: 64, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!1546, !1547, !56, !56}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1522, file: !1523, line: 584, baseType: !1584, size: 64, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!56, !1328}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1522, file: !1523, line: 588, baseType: !1543, size: 64, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1522, file: !1523, line: 591, baseType: !1543, size: 64, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1522, file: !1523, line: 597, baseType: !1590, size: 64, offset: 704)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!39, !1328, !56, !37, !39, !39}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1522, file: !1523, line: 603, baseType: !1594, size: 64, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!34, !1328}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1522, file: !1523, line: 613, baseType: !1598, size: 64, offset: 832)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!39, !1328, !1601}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1603, line: 44, size: 256, elements: !1604)
!1603 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!1604 = !{!1605, !1606, !1607, !1608, !1617, !1618}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1602, file: !1603, line: 45, baseType: !66, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1602, file: !1603, line: 46, baseType: !43, size: 16, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1602, file: !1603, line: 47, baseType: !43, size: 16, offset: 48)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1602, file: !1603, line: 48, baseType: !1609, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1610, line: 99, baseType: !1611)
!1610 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1610, line: 99, size: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1611, file: !1610, line: 99, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DISubrange(count: 1)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !1602, file: !1603, line: 49, baseType: !39, size: 32, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1602, file: !1603, line: 54, baseType: !1619, size: 64, offset: 192)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !1603, line: 51, size: 64, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !1619, file: !1603, line: 52, baseType: !1609, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !1619, file: !1603, line: 53, baseType: !1609, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1522, file: !1523, line: 625, baseType: !1624, size: 64, offset: 896)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!1601, !1328, !56}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1522, file: !1523, line: 633, baseType: !1628, size: 64, offset: 960)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!344, !1328, !56}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1329, file: !140, line: 697, baseType: !56, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1329, file: !140, line: 699, baseType: !680, size: 64, offset: 1088)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1329, file: !140, line: 700, baseType: !37, size: 64, offset: 1152)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1329, file: !140, line: 711, baseType: !698, size: 64, offset: 1216)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1329, file: !140, line: 717, baseType: !1601, size: 64, offset: 1280)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1329, file: !140, line: 722, baseType: !1637, offset: 1344)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !140, line: 570, elements: !1362)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1165, file: !232, line: 1928, baseType: !56, size: 64, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1165, file: !232, line: 1929, baseType: !1640, size: 64, offset: 832)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!39, !370, !680}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1165, file: !232, line: 1930, baseType: !1644, size: 64, offset: 896)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!39, !680, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !232, line: 1061, baseType: !37)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1165, file: !232, line: 1931, baseType: !1640, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1165, file: !232, line: 1932, baseType: !1650, size: 64, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!39, !680, !58, !58, !39}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1165, file: !232, line: 1933, baseType: !1654, size: 64, offset: 1088)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!39, !39, !680, !39}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1165, file: !232, line: 1934, baseType: !1658, size: 64, offset: 1152)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!39, !680, !39, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !232, line: 1063, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1165, file: !232, line: 1935, baseType: !1366, size: 64, offset: 1216)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1165, file: !232, line: 1936, baseType: !1665, size: 64, offset: 1280)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!39, !39}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1165, file: !232, line: 1937, baseType: !1658, size: 64, offset: 1344)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1165, file: !232, line: 1938, baseType: !1670, size: 64, offset: 1408)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!639, !1673, !680, !57, !52, !22}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1675, line: 59, flags: DIFlagFwdDecl)
!1675 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1165, file: !232, line: 1939, baseType: !1677, size: 64, offset: 1472)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!639, !680, !57, !1673, !52, !22}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1165, file: !232, line: 1940, baseType: !1681, size: 64, offset: 1536)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !680}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1165, file: !232, line: 1941, baseType: !1685, size: 64, offset: 1600)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!39, !680, !39, !1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1165, file: !232, line: 1942, baseType: !1691, size: 64, offset: 1664)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!306, !680, !39, !58, !58}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1165, file: !232, line: 1944, baseType: !1695, size: 64, offset: 1728)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !1698, !680}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1700, line: 17, size: 960, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1731, !1732, !1735}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1699, file: !1700, line: 18, baseType: !508, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1699, file: !1700, line: 19, baseType: !52, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1699, file: !1700, line: 20, baseType: !52, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1699, file: !1700, line: 21, baseType: !52, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1699, file: !1700, line: 22, baseType: !52, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1699, file: !1700, line: 23, baseType: !58, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1699, file: !1700, line: 24, baseType: !58, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1699, file: !1700, line: 25, baseType: !707, size: 256, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1699, file: !1700, line: 26, baseType: !1711, size: 64, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1700, line: 32, size: 256, elements: !1714)
!1714 = !{!1715, !1719, !1723, !1727}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1713, file: !1700, line: 33, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!37, !1698, !57}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1713, file: !1700, line: 34, baseType: !1720, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !1698, !37}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1713, file: !1700, line: 35, baseType: !1724, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!37, !1698, !37, !57}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1713, file: !1700, line: 36, baseType: !1728, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!39, !1698, !37}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1699, file: !1700, line: 27, baseType: !39, size: 32, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1699, file: !1700, line: 28, baseType: !1733, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1699, file: !1700, line: 29, baseType: !37, size: 64, offset: 896)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1165, file: !232, line: 1948, baseType: !1737, size: 64, offset: 1792)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!639, !680, !58, !680, !58, !52, !22}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1165, file: !232, line: 1950, baseType: !1741, size: 64, offset: 1856)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!58, !680, !58, !680, !58, !58, !22}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1165, file: !232, line: 1953, baseType: !1650, size: 64, offset: 1920)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1165, file: !232, line: 1954, baseType: !1746, size: 64, offset: 1984)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!39, !1749, !22}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !232, line: 1911, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1165, file: !232, line: 1955, baseType: !1752, size: 64, offset: 2048)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!39, !1749, !1296, !22}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !681, file: !232, line: 1018, baseType: !308, size: 64, offset: 1472)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !681, file: !232, line: 1020, baseType: !37, size: 64, offset: 1536)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !681, file: !232, line: 1023, baseType: !37, size: 64, offset: 1600)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !681, file: !232, line: 1027, baseType: !1759, size: 64, offset: 1664)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !681, file: !232, line: 1029, baseType: !366, size: 64, offset: 1728)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !681, file: !232, line: 1030, baseType: !1762, size: 32, offset: 1792)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1763, line: 8, baseType: !439)
!1763 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !681, file: !232, line: 1031, baseType: !1762, size: 32, offset: 1824)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !667, file: !633, line: 182, baseType: !677, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !667, file: !633, line: 184, baseType: !1767, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!39, !680, !573, !666, !1328}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !655, file: !633, line: 90, baseType: !1771, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !655, file: !633, line: 91, baseType: !1773, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !623, file: !568, line: 120, baseType: !1775, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!1778, !591}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !201, line: 39, size: 384, elements: !1781)
!1781 = !{!1782, !1783, !1787, !1791, !1797, !1801}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1780, file: !201, line: 40, baseType: !200, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1780, file: !201, line: 41, baseType: !1784, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!897}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1780, file: !201, line: 42, baseType: !1788, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!37}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1780, file: !201, line: 43, baseType: !1792, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!1449, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !201, line: 19, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1780, file: !201, line: 44, baseType: !1798, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1449}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1780, file: !201, line: 45, baseType: !1802, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !37}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !623, file: !568, line: 121, baseType: !1806, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!1449, !591}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !623, file: !568, line: 122, baseType: !1810, size: 64, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !591, !1093, !1094}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !567, file: !568, line: 70, baseType: !1814, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1816, line: 190, size: 1152, elements: !1817)
!1816 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1897, !1898, !1899, !1900, !1901, !1904}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1815, file: !1816, line: 191, baseType: !66, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1815, file: !1816, line: 192, baseType: !66, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1815, file: !1816, line: 202, baseType: !1814, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1815, file: !1816, line: 203, baseType: !34, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1815, file: !1816, line: 205, baseType: !830, size: 192, align: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1815, file: !1816, line: 207, baseType: !1449, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1815, file: !1816, line: 208, baseType: !22, size: 32, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !1816, line: 209, baseType: !1826, size: 256, offset: 512)
!1826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !1816, line: 209, size: 256, elements: !1827)
!1827 = !{!1828, !1837, !1841}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1826, file: !1816, line: 210, baseType: !1829, size: 256)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1816, line: 153, size: 256, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1836}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1829, file: !1816, line: 154, baseType: !56, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1829, file: !1816, line: 156, baseType: !1110, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1829, file: !1816, line: 162, baseType: !1834, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1816, line: 162, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1829, file: !1816, line: 167, baseType: !56, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1826, file: !1816, line: 211, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1816, line: 170, size: 64, elements: !1839)
!1839 = !{!1840}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1838, file: !1816, line: 171, baseType: !1814, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1826, file: !1816, line: 212, baseType: !1842, size: 256)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1816, line: 174, size: 256, elements: !1843)
!1843 = !{!1844, !1892, !1895, !1896}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1842, file: !1816, line: 175, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1847)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1816, line: 271, size: 768, elements: !1848)
!1848 = !{!1849, !1869, !1873, !1874, !1875, !1876, !1877, !1881, !1882, !1883, !1884, !1888}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1847, file: !1816, line: 276, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!39, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1816, line: 251, size: 1216, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1854, file: !1816, line: 253, baseType: !1814, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1854, file: !1816, line: 254, baseType: !680, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1854, file: !1816, line: 255, baseType: !1698, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1854, file: !1816, line: 256, baseType: !37, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1854, file: !1816, line: 259, baseType: !707, size: 256, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1854, file: !1816, line: 260, baseType: !707, size: 256, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1854, file: !1816, line: 261, baseType: !39, size: 32, offset: 768)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1854, file: !1816, line: 262, baseType: !114, size: 128, offset: 832)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1854, file: !1816, line: 263, baseType: !508, size: 64, offset: 960)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1854, file: !1816, line: 265, baseType: !52, size: 64, offset: 1024)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1854, file: !1816, line: 266, baseType: !897, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1854, file: !1816, line: 267, baseType: !897, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1854, file: !1816, line: 268, baseType: !1520, size: 64, offset: 1152)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1847, file: !1816, line: 277, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1853}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1847, file: !1816, line: 290, baseType: !1728, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1847, file: !1816, line: 292, baseType: !1716, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1847, file: !1816, line: 293, baseType: !1724, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1847, file: !1816, line: 294, baseType: !1720, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1847, file: !1816, line: 296, baseType: !1878, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!639, !1853, !508, !52, !58}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1847, file: !1816, line: 306, baseType: !52, size: 64, offset: 448)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1847, file: !1816, line: 313, baseType: !897, size: 8, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1847, file: !1816, line: 314, baseType: !1878, size: 64, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1847, file: !1816, line: 317, baseType: !1885, size: 64, offset: 640)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1315, !1853, !1317}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1847, file: !1816, line: 320, baseType: !1889, size: 64, offset: 704)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!39, !1853, !1328}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1842, file: !1816, line: 176, baseType: !1893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1816, line: 35, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1842, file: !1816, line: 177, baseType: !58, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1842, file: !1816, line: 178, baseType: !1814, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1815, file: !1816, line: 215, baseType: !37, size: 64, offset: 768)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1815, file: !1816, line: 221, baseType: !308, size: 64, offset: 832)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1815, file: !1816, line: 223, baseType: !43, size: 16, offset: 896)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1815, file: !1816, line: 224, baseType: !41, size: 16, offset: 912)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1815, file: !1816, line: 225, baseType: !1902, size: 64, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1816, line: 36, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1815, file: !1816, line: 227, baseType: !329, size: 128, align: 64, offset: 1024)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !567, file: !568, line: 71, baseType: !1906, size: 32, offset: 448)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1907, line: 19, size: 32, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1908 = !{!1909}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1906, file: !1907, line: 20, baseType: !750, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !567, file: !568, line: 73, baseType: !22, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !567, file: !568, line: 74, baseType: !22, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !567, file: !568, line: 75, baseType: !22, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !567, file: !568, line: 76, baseType: !22, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !567, file: !568, line: 77, baseType: !22, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !564, file: !125, line: 47, baseType: !554, size: 64, offset: 512)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !564, file: !125, line: 48, baseType: !573, size: 64, offset: 576)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !564, file: !125, line: 49, baseType: !1918, size: 64, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !125, line: 49, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !564, file: !125, line: 50, baseType: !1067, size: 64, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !555, file: !125, line: 418, baseType: !1922, size: 64, offset: 1408)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !125, line: 53, size: 448, elements: !1924)
!1924 = !{!1925, !1926, !1931, !1935, !1939, !1943}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1923, file: !125, line: 54, baseType: !643, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1923, file: !125, line: 55, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!639, !1922, !1930, !508}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1923, file: !125, line: 57, baseType: !1932, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!639, !1922, !1930, !34, !52}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1923, file: !125, line: 59, baseType: !1936, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !554, !34}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1923, file: !125, line: 60, baseType: !1940, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!39, !554}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1923, file: !125, line: 61, baseType: !1944, size: 64, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !554}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !555, file: !125, line: 419, baseType: !34, size: 64, offset: 1472)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !555, file: !125, line: 420, baseType: !34, size: 64, offset: 1536)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !555, file: !125, line: 421, baseType: !573, size: 64, offset: 1600)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !555, file: !125, line: 424, baseType: !1951, size: 64, offset: 1664)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !125, line: 424, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !555, file: !125, line: 425, baseType: !1955, size: 64, offset: 1728)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !555, file: !125, line: 426, baseType: !22, size: 32, offset: 1792)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !555, file: !125, line: 435, baseType: !707, size: 256, offset: 1856)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !555, file: !125, line: 437, baseType: !1960, size: 64, offset: 2112)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1962, line: 69, size: 320, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1963 = !{!1964, !1965, !1966, !1983, !1985, !1989, !1990}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1961, file: !1962, line: 70, baseType: !34, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1961, file: !1962, line: 71, baseType: !554, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1961, file: !1962, line: 72, baseType: !1967, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1962, line: 47, size: 256, elements: !1970)
!1970 = !{!1971, !1972, !1978, !1982}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1969, file: !1962, line: 49, baseType: !22, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1969, file: !1962, line: 51, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!39, !34, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1961)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1969, file: !1962, line: 53, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!39, !508, !1976}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1969, file: !1962, line: 55, baseType: !1802, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1961, file: !1962, line: 73, baseType: !1984, size: 16, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1961, file: !1962, line: 74, baseType: !1986, size: 8, offset: 208)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !101, line: 16, baseType: !1987)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !103, line: 20, baseType: !1988)
!1988 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !1962, line: 75, baseType: !100, size: 8, offset: 216)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !1962, line: 76, baseType: !1991, size: 64, offset: 256)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !1962, line: 76, size: 64, elements: !1992)
!1992 = !{!1993, !1994, !2001}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1991, file: !1962, line: 77, baseType: !37, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1991, file: !1962, line: 78, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1997)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1962, line: 86, size: 128, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1997, file: !1962, line: 87, baseType: !22, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1997, file: !1962, line: 88, baseType: !508, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1991, file: !1962, line: 79, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1962, line: 92, size: 256, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2010, !2011}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2004, file: !1962, line: 94, baseType: !22, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2004, file: !1962, line: 95, baseType: !22, size: 32, offset: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2004, file: !1962, line: 96, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2004, file: !1962, line: 97, baseType: !1967, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2004, file: !1962, line: 98, baseType: !37, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !555, file: !125, line: 438, baseType: !22, size: 32, offset: 2176)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !555, file: !125, line: 441, baseType: !22, size: 32, offset: 2208)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !555, file: !125, line: 442, baseType: !1951, size: 64, offset: 2240)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !555, file: !125, line: 443, baseType: !1955, size: 64, offset: 2304)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !555, file: !125, line: 444, baseType: !897, size: 8, offset: 2368)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !555, file: !125, line: 451, baseType: !897, size: 8, offset: 2376)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !555, file: !125, line: 454, baseType: !22, size: 32, offset: 2400)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !555, file: !125, line: 455, baseType: !2020, size: 64, offset: 2432)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2022, line: 23, size: 96, elements: !2023)
!2022 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2023 = !{!2024, !2025, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2021, file: !2022, line: 24, baseType: !39, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2021, file: !2022, line: 24, baseType: !39, size: 32, offset: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2021, file: !2022, line: 24, baseType: !39, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !555, file: !125, line: 458, baseType: !2028, size: 64, offset: 2496)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!39}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !555, file: !125, line: 460, baseType: !2032, size: 4032, align: 512, offset: 2560)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2033, size: 4032, elements: !2049)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !125, line: 362, size: 576, elements: !2034)
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2033, file: !125, line: 363, baseType: !37, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2033, file: !125, line: 364, baseType: !22, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2033, file: !125, line: 367, baseType: !2038, size: 448, offset: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !125, line: 319, size: 448, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2038, file: !125, line: 320, baseType: !554, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2038, file: !125, line: 321, baseType: !2042, size: 384, offset: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2043, line: 40, size: 384, elements: !2044)
!2043 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2044 = !{!2045}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2042, file: !2043, line: 41, baseType: !2046, size: 384, align: 64)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 384, align: 64, elements: !2047)
!2047 = !{!2048}
!2048 = !DISubrange(count: 2)
!2049 = !{!2050}
!2050 = !DISubrange(count: 7)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !555, file: !125, line: 463, baseType: !2052, size: 192, offset: 6592)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2053, line: 8, size: 192, elements: !2054)
!2053 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2054 = !{!2055, !2056, !2058}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2052, file: !2053, line: 10, baseType: !22, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2052, file: !2053, line: 11, baseType: !2057, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2052, file: !2053, line: 12, baseType: !2059, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2061, line: 59, size: 48, elements: !2062)
!2061 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2060, file: !2061, line: 60, baseType: !1466, size: 16)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2060, file: !2061, line: 61, baseType: !1466, size: 16, offset: 16)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2060, file: !2061, line: 63, baseType: !22, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2060, file: !2061, line: 64, baseType: !22, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2060, file: !2061, line: 65, baseType: !22, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2060, file: !2061, line: 66, baseType: !22, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !555, file: !125, line: 465, baseType: !56, size: 64, offset: 6784)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !555, file: !125, line: 469, baseType: !22, size: 32, offset: 6848)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !555, file: !125, line: 470, baseType: !114, size: 128, offset: 6912)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !555, file: !125, line: 471, baseType: !2073, size: 64, offset: 7040)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2075, line: 33, size: 96, elements: !2076)
!2075 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2076 = !{!2077, !2078, !2079, !2080}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2074, file: !2075, line: 37, baseType: !39, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2074, file: !2075, line: 43, baseType: !39, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2074, file: !2075, line: 45, baseType: !43, size: 16, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2074, file: !2075, line: 47, baseType: !43, size: 16, offset: 80)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !555, file: !125, line: 476, baseType: !2082, size: 64, offset: 7104)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !125, line: 378, size: 256, elements: !2084)
!2084 = !{!2085, !2101, !2102, !2103}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2083, file: !125, line: 379, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2088, line: 204, baseType: !2089)
!2088 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2088, line: 197, size: 192, elements: !2090)
!2090 = !{!2091, !2093, !2094, !2095, !2097, !2099}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2089, file: !2088, line: 198, baseType: !2092, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2088, line: 21, baseType: !440)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2089, file: !2088, line: 199, baseType: !104, size: 8, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2089, file: !2088, line: 200, baseType: !104, size: 8, offset: 40)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2089, file: !2088, line: 201, baseType: !2096, size: 16, offset: 48)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2088, line: 17, baseType: !111)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2089, file: !2088, line: 202, baseType: !2098, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2088, line: 16, baseType: !309)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2089, file: !2088, line: 203, baseType: !2100, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2088, line: 22, baseType: !309)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2083, file: !125, line: 380, baseType: !22, size: 32, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2083, file: !125, line: 381, baseType: !508, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2083, file: !125, line: 382, baseType: !508, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !555, file: !125, line: 477, baseType: !2083, size: 256, offset: 7168)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !555, file: !125, line: 480, baseType: !2106, size: 64, offset: 7424)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !125, line: 480, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !555, file: !125, line: 483, baseType: !2109, size: 64, offset: 7488)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !125, line: 483, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !555, file: !125, line: 488, baseType: !508, size: 64, offset: 7552)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !555, file: !125, line: 492, baseType: !37, size: 64, offset: 7616)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !555, file: !125, line: 493, baseType: !22, size: 32, offset: 7680)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !555, file: !125, line: 495, baseType: !37, size: 64, offset: 7744)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !555, file: !125, line: 496, baseType: !22, size: 32, offset: 7808)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !555, file: !125, line: 499, baseType: !22, size: 32, offset: 7840)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !555, file: !125, line: 500, baseType: !2118, size: 64, offset: 7872)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2120, line: 45, baseType: !2121)
!2120 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !555, file: !125, line: 503, baseType: !22, size: 32, offset: 7936)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !555, file: !125, line: 504, baseType: !2124, size: 64, offset: 8000)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2127, line: 96, size: 192, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2128 = !{!2129, !2130, !2183, !2186}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2126, file: !2127, line: 97, baseType: !22, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2126, file: !2127, line: 98, baseType: !2131, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2127, line: 24, size: 3072, elements: !2133)
!2133 = !{!2134, !2136, !2137, !2138, !2139, !2152, !2153, !2154, !2155, !2167, !2168, !2169, !2180, !2181, !2182}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2132, file: !2127, line: 26, baseType: !2135, size: 128)
!2135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 128, elements: !2047)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2132, file: !2127, line: 27, baseType: !2135, size: 128, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2132, file: !2127, line: 28, baseType: !39, size: 32, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2132, file: !2127, line: 31, baseType: !76, size: 32, align: 512, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2132, file: !2127, line: 32, baseType: !2140, size: 960, offset: 576)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2141, line: 206, size: 960, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2142 = !{!2143, !2144, !2147, !2149, !2150, !2151}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2140, file: !2141, line: 207, baseType: !332, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2140, file: !2141, line: 208, baseType: !2145, size: 256, offset: 64)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2146, size: 256, elements: !768)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2140, file: !2141, line: 209, baseType: !2148, size: 256, offset: 320)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, elements: !768)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2140, file: !2141, line: 213, baseType: !306, size: 64, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2140, file: !2141, line: 215, baseType: !1131, size: 256, offset: 640)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2140, file: !2141, line: 216, baseType: !100, size: 8, offset: 896)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2132, file: !2127, line: 33, baseType: !56, size: 64, offset: 1536)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2132, file: !2127, line: 34, baseType: !56, size: 64, offset: 1600)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2132, file: !2127, line: 35, baseType: !897, size: 8, offset: 1664)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2132, file: !2127, line: 36, baseType: !2156, size: 320, offset: 1728)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2157, line: 11, size: 320, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2158 = !{!2159, !2160, !2161, !2166}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2156, file: !2157, line: 16, baseType: !763, size: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2156, file: !2157, line: 17, baseType: !56, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2156, file: !2157, line: 18, baseType: !2162, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !2165}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !2157, line: 19, baseType: !439, size: 32, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2132, file: !2127, line: 37, baseType: !1029, size: 256, offset: 2048)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2132, file: !2127, line: 38, baseType: !329, size: 128, align: 64, offset: 2304)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2132, file: !2127, line: 39, baseType: !2170, size: 64, offset: 2432)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2127, line: 49, size: 768, elements: !2172)
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2171, file: !2127, line: 50, baseType: !76, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2171, file: !2127, line: 51, baseType: !2148, size: 256, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2171, file: !2127, line: 53, baseType: !2148, size: 256, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2171, file: !2127, line: 54, baseType: !56, size: 64, offset: 576)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2171, file: !2127, line: 55, baseType: !2170, size: 64, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2171, file: !2127, line: 56, baseType: !39, size: 32, offset: 704)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2171, file: !2127, line: 57, baseType: !39, size: 32, offset: 736)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2132, file: !2127, line: 40, baseType: !56, size: 64, offset: 2496)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2132, file: !2127, line: 42, baseType: !39, size: 32, offset: 2560)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2132, file: !2127, line: 43, baseType: !2125, size: 64, offset: 2624)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2126, file: !2127, line: 99, baseType: !2184, offset: 128)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2185, line: 211, elements: !1362)
!2185 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2126, file: !2127, line: 100, baseType: !2187, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2127, line: 63, size: 3008, elements: !2189)
!2189 = !{!2190, !2191, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2221}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2188, file: !2127, line: 64, baseType: !2170, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2188, file: !2127, line: 65, baseType: !2192, size: 192, offset: 64)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2170, size: 192, elements: !608)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2188, file: !2127, line: 67, baseType: !39, size: 32, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2188, file: !2127, line: 68, baseType: !707, size: 256, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2188, file: !2127, line: 69, baseType: !76, size: 32, offset: 576)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2188, file: !2127, line: 70, baseType: !707, size: 256, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2188, file: !2127, line: 71, baseType: !56, size: 64, offset: 896)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2188, file: !2127, line: 72, baseType: !56, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2188, file: !2127, line: 73, baseType: !56, size: 64, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2188, file: !2127, line: 74, baseType: !56, size: 64, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2188, file: !2127, line: 75, baseType: !56, size: 64, offset: 1152)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2188, file: !2127, line: 76, baseType: !56, size: 64, offset: 1216)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2188, file: !2127, line: 77, baseType: !56, size: 64, offset: 1280)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2188, file: !2127, line: 78, baseType: !56, size: 64, offset: 1344)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2188, file: !2127, line: 79, baseType: !897, size: 8, offset: 1408)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2188, file: !2127, line: 80, baseType: !56, size: 64, offset: 1472)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2188, file: !2127, line: 81, baseType: !707, size: 256, offset: 1536)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2188, file: !2127, line: 82, baseType: !1068, size: 256, offset: 1792)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2188, file: !2127, line: 84, baseType: !66, size: 32, offset: 2048)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2188, file: !2127, line: 87, baseType: !56, size: 64, offset: 2112)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2188, file: !2127, line: 88, baseType: !56, size: 64, offset: 2176)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2188, file: !2127, line: 89, baseType: !2213, size: 704, offset: 2240)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1030, line: 111, size: 704, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2220}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2213, file: !1030, line: 112, baseType: !1029, size: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2213, file: !1030, line: 113, baseType: !2156, size: 320, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2213, file: !1030, line: 116, baseType: !2218, size: 64, offset: 576)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1030, line: 18, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2213, file: !1030, line: 117, baseType: !39, size: 32, offset: 640)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2188, file: !2127, line: 90, baseType: !2125, size: 64, offset: 2944)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !555, file: !125, line: 515, baseType: !2223, size: 64, offset: 8064)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2225, line: 117, size: 128, elements: !2226)
!2225 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2226 = !{!2227, !2228, !2229}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2224, file: !2225, line: 118, baseType: !823, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2224, file: !2225, line: 119, baseType: !823, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2224, file: !2225, line: 120, baseType: !306, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !555, file: !125, line: 516, baseType: !22, size: 32, offset: 8128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !555, file: !125, line: 519, baseType: !22, size: 32, offset: 8160)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !555, file: !125, line: 520, baseType: !2233, size: 64, offset: 8192)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !555, file: !125, line: 523, baseType: !2235, size: 64, offset: 8256)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !125, line: 523, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !555, file: !125, line: 524, baseType: !22, size: 32, offset: 8320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !555, file: !125, line: 525, baseType: !2240, size: 64, offset: 8384)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !125, line: 525, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !555, file: !125, line: 526, baseType: !22, size: 32, offset: 8448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !555, file: !125, line: 533, baseType: !37, size: 64, offset: 8512)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !555, file: !125, line: 534, baseType: !22, size: 32, offset: 8576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !555, file: !125, line: 535, baseType: !273, size: 64, offset: 8640)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !555, file: !125, line: 536, baseType: !22, size: 32, offset: 8704)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !555, file: !125, line: 539, baseType: !39, size: 32, offset: 8736)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !555, file: !125, line: 540, baseType: !2250, size: 64, offset: 8768)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2252, line: 32, size: 64, elements: !2253)
!2252 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2251, file: !2252, line: 33, baseType: !823, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2251, file: !2252, line: 34, baseType: !823, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !555, file: !125, line: 563, baseType: !114, size: 128, offset: 8832)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !555, file: !125, line: 565, baseType: !114, size: 128, offset: 8960)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !555, file: !125, line: 568, baseType: !2259, size: 64, offset: 9088)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !555, file: !125, line: 570, baseType: !66, size: 32, offset: 9152)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !232, line: 2382, baseType: !530, size: 64, offset: 448)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !531, file: !232, line: 2383, baseType: !759, size: 64, offset: 512)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !531, file: !232, line: 2385, baseType: !2266, offset: 576)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2185, line: 206, elements: !1362)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !531, file: !232, line: 2386, baseType: !2266, offset: 576)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !531, file: !232, line: 2387, baseType: !2266, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !531, file: !232, line: 2388, baseType: !2270, offset: 576)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2266, elements: !608)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !531, file: !232, line: 2390, baseType: !2266, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !531, file: !232, line: 2391, baseType: !2266, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !531, file: !232, line: 2392, baseType: !2266, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !531, file: !232, line: 2393, baseType: !2266, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !520, file: !232, line: 1197, baseType: !2276, size: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2278)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !232, line: 2057, size: 1664, elements: !2279)
!2279 = !{!2280, !2284, !2288, !2289, !2293, !2317, !2321, !2322, !2323, !2327, !2331, !2335, !2336, !2337, !2343, !2347, !2348, !2352, !2353, !2354, !2355, !2359, !2363, !2410, !2425, !2426}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2278, file: !232, line: 2058, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!370, !519}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2278, file: !232, line: 2059, baseType: !2285, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !370}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2278, file: !232, line: 2060, baseType: !2285, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2278, file: !232, line: 2062, baseType: !2290, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{null, !370, !39}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2278, file: !232, line: 2063, baseType: !2294, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!39, !370, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !156, line: 42, size: 384, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2298, file: !156, line: 43, baseType: !306, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2298, file: !156, line: 45, baseType: !306, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2298, file: !156, line: 52, baseType: !58, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2298, file: !156, line: 53, baseType: !58, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2298, file: !156, line: 55, baseType: !155, size: 32, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2298, file: !156, line: 57, baseType: !22, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2298, file: !156, line: 58, baseType: !22, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2298, file: !156, line: 59, baseType: !22, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2298, file: !156, line: 60, baseType: !22, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2298, file: !156, line: 61, baseType: !22, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2298, file: !156, line: 62, baseType: !22, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2298, file: !156, line: 63, baseType: !22, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2298, file: !156, line: 71, baseType: !22, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2298, file: !156, line: 78, baseType: !2314, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !156, line: 78, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2278, file: !232, line: 2064, baseType: !2318, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!39, !370}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2278, file: !232, line: 2065, baseType: !2285, size: 64, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2278, file: !232, line: 2066, baseType: !550, size: 64, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2278, file: !232, line: 2067, baseType: !2324, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!39, !519, !39}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2278, file: !232, line: 2068, baseType: !2328, size: 64, offset: 576)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!39, !519, !231}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2278, file: !232, line: 2069, baseType: !2332, size: 64, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!39, !519}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2278, file: !232, line: 2070, baseType: !2328, size: 64, offset: 704)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2278, file: !232, line: 2071, baseType: !2332, size: 64, offset: 768)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2278, file: !232, line: 2072, baseType: !2338, size: 64, offset: 832)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!39, !405, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !232, line: 62, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2278, file: !232, line: 2073, baseType: !2344, size: 64, offset: 896)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!39, !519, !2057, !508}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2278, file: !232, line: 2074, baseType: !550, size: 64, offset: 960)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2278, file: !232, line: 2076, baseType: !2349, size: 64, offset: 1024)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!39, !1698, !405}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2278, file: !232, line: 2077, baseType: !2349, size: 64, offset: 1088)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2278, file: !232, line: 2078, baseType: !2349, size: 64, offset: 1152)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2278, file: !232, line: 2079, baseType: !2349, size: 64, offset: 1216)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2278, file: !232, line: 2081, baseType: !2356, size: 64, offset: 1280)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!639, !519, !39, !508, !52, !58}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2278, file: !232, line: 2082, baseType: !2360, size: 64, offset: 1344)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!639, !519, !39, !34, !52, !58}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2278, file: !232, line: 2083, baseType: !2364, size: 64, offset: 1408)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!2367, !370}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !237, line: 296, size: 1664, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2395, !2396, !2397}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2369, file: !237, line: 297, baseType: !763, size: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2369, file: !237, line: 298, baseType: !114, size: 128, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2369, file: !237, line: 299, baseType: !114, size: 128, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2369, file: !237, line: 300, baseType: !114, size: 128, offset: 384)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2369, file: !237, line: 301, baseType: !707, size: 256, offset: 512)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2369, file: !237, line: 302, baseType: !76, size: 32, offset: 768)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2369, file: !237, line: 303, baseType: !66, size: 32, offset: 800)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2369, file: !237, line: 304, baseType: !519, size: 64, offset: 832)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2369, file: !237, line: 305, baseType: !2380, size: 64, offset: 896)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !237, line: 68, size: 64, elements: !2381)
!2381 = !{!2382, !2394}
!2382 = !DIDerivedType(tag: DW_TAG_member, scope: !2380, file: !237, line: 69, baseType: !2383, size: 32)
!2383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2380, file: !237, line: 69, size: 32, elements: !2384)
!2384 = !{!2385, !2386, !2387}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2383, file: !237, line: 70, baseType: !376, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2383, file: !237, line: 71, baseType: !385, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2383, file: !237, line: 72, baseType: !2388, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2389, line: 24, baseType: !2390)
!2389 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2389, line: 22, size: 32, elements: !2391)
!2391 = !{!2392}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2390, file: !2389, line: 23, baseType: !2393, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2389, line: 20, baseType: !382)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2380, file: !237, line: 74, baseType: !236, size: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2369, file: !237, line: 306, baseType: !58, size: 64, offset: 960)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2369, file: !237, line: 307, baseType: !56, size: 64, offset: 1024)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2369, file: !237, line: 308, baseType: !2398, size: 576, offset: 1088)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !237, line: 205, size: 576, elements: !2399)
!2399 = !{!2400, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2398, file: !237, line: 206, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !237, line: 66, baseType: !60)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2398, file: !237, line: 207, baseType: !2401, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2398, file: !237, line: 208, baseType: !2401, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2398, file: !237, line: 209, baseType: !2401, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2398, file: !237, line: 210, baseType: !2401, size: 64, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2398, file: !237, line: 211, baseType: !2401, size: 64, offset: 320)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2398, file: !237, line: 212, baseType: !2401, size: 64, offset: 384)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2398, file: !237, line: 213, baseType: !854, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2398, file: !237, line: 214, baseType: !854, size: 64, offset: 512)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2278, file: !232, line: 2085, baseType: !2411, size: 64, offset: 1472)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!306, !519, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2416, line: 15, size: 256, elements: !2417)
!2416 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2417 = !{!2418, !2419, !2420, !2421, !2422}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2415, file: !2416, line: 16, baseType: !1555, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2415, file: !2416, line: 19, baseType: !39, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2415, file: !2416, line: 26, baseType: !56, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2415, file: !2416, line: 33, baseType: !56, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2415, file: !2416, line: 36, baseType: !2423, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !140, line: 33, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2278, file: !232, line: 2087, baseType: !2411, size: 64, offset: 1536)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2278, file: !232, line: 2089, baseType: !550, size: 64, offset: 1600)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !520, file: !232, line: 1198, baseType: !2428, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2430)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !237, line: 324, size: 704, elements: !2431)
!2431 = !{!2432, !2436, !2440, !2444, !2445, !2446, !2447, !2448, !2453, !2458, !2462}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2430, file: !237, line: 325, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!39, !2368}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2430, file: !237, line: 326, baseType: !2437, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!2368, !519, !39}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2430, file: !237, line: 327, baseType: !2441, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !2368}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2430, file: !237, line: 328, baseType: !2433, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2430, file: !237, line: 329, baseType: !2433, size: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2430, file: !237, line: 330, baseType: !2433, size: 64, offset: 320)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2430, file: !237, line: 331, baseType: !2324, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2430, file: !237, line: 334, baseType: !2449, size: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!2452, !370}
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2430, file: !237, line: 335, baseType: !2454, size: 64, offset: 512)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!39, !370, !2457}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2430, file: !237, line: 337, baseType: !2459, size: 64, offset: 576)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!39, !370, !2452}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2430, file: !237, line: 339, baseType: !2463, size: 64, offset: 640)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!39, !519, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !520, file: !232, line: 1199, baseType: !2468, size: 64, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !237, line: 430, size: 704, elements: !2471)
!2471 = !{!2472, !2478, !2479, !2483, !2484, !2485, !2500, !2523, !2527, !2528, !2551}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2470, file: !237, line: 431, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!39, !519, !39, !39, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2470, file: !237, line: 432, baseType: !2324, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2470, file: !237, line: 433, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!39, !519, !22}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2470, file: !237, line: 434, baseType: !2480, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2470, file: !237, line: 435, baseType: !2324, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2470, file: !237, line: 436, baseType: !2486, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!39, !519, !39, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !237, line: 417, size: 256, elements: !2491)
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2490, file: !237, line: 418, baseType: !39, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2490, file: !237, line: 419, baseType: !22, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2490, file: !237, line: 420, baseType: !22, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2490, file: !237, line: 422, baseType: !22, size: 32, offset: 96)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2490, file: !237, line: 423, baseType: !22, size: 32, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2490, file: !237, line: 424, baseType: !22, size: 32, offset: 160)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2490, file: !237, line: 425, baseType: !22, size: 32, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2490, file: !237, line: 426, baseType: !22, size: 32, offset: 224)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2470, file: !237, line: 437, baseType: !2501, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!39, !519, !2380, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !237, line: 345, size: 960, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2505, file: !237, line: 346, baseType: !39, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2505, file: !237, line: 347, baseType: !308, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2505, file: !237, line: 348, baseType: !308, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2505, file: !237, line: 349, baseType: !308, size: 64, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2505, file: !237, line: 350, baseType: !308, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2505, file: !237, line: 351, baseType: !308, size: 64, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2505, file: !237, line: 352, baseType: !308, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2505, file: !237, line: 353, baseType: !704, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2505, file: !237, line: 355, baseType: !704, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2505, file: !237, line: 356, baseType: !39, size: 32, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2505, file: !237, line: 357, baseType: !39, size: 32, offset: 608)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2505, file: !237, line: 358, baseType: !308, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2505, file: !237, line: 359, baseType: !308, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2505, file: !237, line: 360, baseType: !308, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2505, file: !237, line: 361, baseType: !704, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2505, file: !237, line: 362, baseType: !39, size: 32, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2470, file: !237, line: 438, baseType: !2524, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!39, !519, !2466, !2504}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2470, file: !237, line: 440, baseType: !2501, size: 64, offset: 512)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2470, file: !237, line: 441, baseType: !2529, size: 64, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!39, !519, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !237, line: 411, size: 1408, elements: !2534)
!2534 = !{!2535, !2536}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2533, file: !237, line: 412, baseType: !22, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2533, file: !237, line: 413, baseType: !2537, size: 1344, offset: 64)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2538, size: 1344, elements: !608)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !237, line: 397, size: 448, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2550}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2538, file: !237, line: 398, baseType: !22, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2538, file: !237, line: 399, baseType: !22, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2538, file: !237, line: 401, baseType: !22, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2538, file: !237, line: 402, baseType: !22, size: 32, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2538, file: !237, line: 403, baseType: !22, size: 32, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2538, file: !237, line: 404, baseType: !22, size: 32, offset: 160)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2538, file: !237, line: 405, baseType: !22, size: 32, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2538, file: !237, line: 406, baseType: !310, size: 64, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2538, file: !237, line: 407, baseType: !2549, size: 64, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !42, line: 132, baseType: !308)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2538, file: !237, line: 408, baseType: !2549, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2470, file: !237, line: 442, baseType: !2480, size: 64, offset: 640)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !520, file: !232, line: 1200, baseType: !2553, size: 64, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2555)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !232, line: 54, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !520, file: !232, line: 1201, baseType: !56, size: 64, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !520, file: !232, line: 1202, baseType: !56, size: 64, offset: 704)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !520, file: !232, line: 1203, baseType: !56, size: 64, offset: 768)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !520, file: !232, line: 1204, baseType: !405, size: 64, offset: 832)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !520, file: !232, line: 1205, baseType: !838, size: 320, offset: 896)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !520, file: !232, line: 1206, baseType: !39, size: 32, offset: 1216)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !520, file: !232, line: 1207, baseType: !66, size: 32, offset: 1248)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !520, file: !232, line: 1209, baseType: !37, size: 64, offset: 1280)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !520, file: !232, line: 1211, baseType: !2565, size: 64, offset: 1344)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2568)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !232, line: 1211, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !520, file: !232, line: 1223, baseType: !2570, size: 64, offset: 1408)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !422, line: 34, size: 64, elements: !2571)
!2571 = !{!2572}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2570, file: !422, line: 35, baseType: !425, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !520, file: !232, line: 1224, baseType: !114, size: 128, offset: 1472)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !520, file: !232, line: 1225, baseType: !2575, size: 64, offset: 1600)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2577, line: 40, size: 7424, elements: !2578)
!2577 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2578 = !{!2579, !2581, !2582, !2585, !2589, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2616, !2617}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2576, file: !2577, line: 41, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !42, line: 131, baseType: !308)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2576, file: !2577, line: 42, baseType: !2580, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2576, file: !2577, line: 43, baseType: !2583, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1675, line: 1453, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2576, file: !2577, line: 44, baseType: !2586, size: 64, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2588, line: 74, flags: DIFlagFwdDecl)
!2588 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2576, file: !2577, line: 45, baseType: !2590, size: 64, offset: 256)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2577, line: 45, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2576, file: !2577, line: 46, baseType: !56, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2576, file: !2577, line: 47, baseType: !897, size: 8, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2576, file: !2577, line: 48, baseType: !100, size: 8, offset: 392)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2576, file: !2577, line: 49, baseType: !897, size: 8, offset: 400)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2576, file: !2577, line: 50, baseType: !897, size: 8, offset: 408)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2576, file: !2577, line: 51, baseType: !524, size: 32, offset: 416)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2576, file: !2577, line: 52, baseType: !66, size: 32, offset: 448)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2576, file: !2577, line: 53, baseType: !76, size: 32, offset: 480)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2576, file: !2577, line: 54, baseType: !370, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2576, file: !2577, line: 55, baseType: !37, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2576, file: !2577, line: 56, baseType: !37, size: 64, offset: 640)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2576, file: !2577, line: 57, baseType: !2604, size: 64, offset: 704)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2606)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2577, line: 57, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2576, file: !2577, line: 58, baseType: !707, size: 256, offset: 768)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2576, file: !2577, line: 60, baseType: !39, size: 32, offset: 1024)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2576, file: !2577, line: 61, baseType: !39, size: 32, offset: 1056)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2576, file: !2577, line: 62, baseType: !573, size: 64, offset: 1088)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2576, file: !2577, line: 65, baseType: !707, size: 256, offset: 1152)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2576, file: !2577, line: 66, baseType: !519, size: 64, offset: 1408)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2576, file: !2577, line: 68, baseType: !2614, size: 64, offset: 1472)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2577, line: 68, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2576, file: !2577, line: 72, baseType: !897, size: 8, offset: 1536)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2576, file: !2577, line: 77, baseType: !2618, size: 5824, offset: 1600)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !174, line: 705, size: 5824, elements: !2619)
!2619 = !{!2620, !2621, !2623, !2626, !2627, !2680, !2750, !2751, !2752, !2753, !2754, !2761, !2925, !2938, !2948, !2952, !2954, !2955, !2956, !2960, !2967, !2968, !2971, !2974, !2978, !2981, !2982, !2983, !2984, !2985, !2986, !3016, !3017, !3018, !3021, !3024, !3033, !3034, !3035, !3036, !3037, !3038}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2618, file: !174, line: 706, baseType: !567, size: 512)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2618, file: !174, line: 707, baseType: !2622, size: 64, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2618, file: !174, line: 709, baseType: !2624, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !174, line: 37, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2618, file: !174, line: 711, baseType: !34, size: 64, offset: 640)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2618, file: !174, line: 712, baseType: !2628, size: 64, offset: 704)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2630)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !174, line: 89, size: 384, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2640, !2645, !2649}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2630, file: !174, line: 90, baseType: !34, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2630, file: !174, line: 91, baseType: !652, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2630, file: !174, line: 92, baseType: !2635, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!39, !2638, !603}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2618)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2630, file: !174, line: 93, baseType: !2641, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!508, !2638, !2644, !1093, !1094}
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2630, file: !174, line: 95, baseType: !2646, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{null, !2622}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2630, file: !174, line: 97, baseType: !2650, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !186, line: 286, size: 1472, elements: !2653)
!2653 = !{!2654, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2652, file: !186, line: 287, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!39, !2622}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2652, file: !186, line: 288, baseType: !2646, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2652, file: !186, line: 289, baseType: !2655, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2652, file: !186, line: 290, baseType: !2655, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2652, file: !186, line: 291, baseType: !2655, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2652, file: !186, line: 292, baseType: !2655, size: 64, offset: 320)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2652, file: !186, line: 293, baseType: !2655, size: 64, offset: 384)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2652, file: !186, line: 294, baseType: !2655, size: 64, offset: 448)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2652, file: !186, line: 295, baseType: !2655, size: 64, offset: 512)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2652, file: !186, line: 296, baseType: !2655, size: 64, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2652, file: !186, line: 297, baseType: !2655, size: 64, offset: 640)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2652, file: !186, line: 298, baseType: !2655, size: 64, offset: 704)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2652, file: !186, line: 299, baseType: !2655, size: 64, offset: 768)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2652, file: !186, line: 300, baseType: !2655, size: 64, offset: 832)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2652, file: !186, line: 301, baseType: !2655, size: 64, offset: 896)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2652, file: !186, line: 302, baseType: !2655, size: 64, offset: 960)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2652, file: !186, line: 303, baseType: !2655, size: 64, offset: 1024)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2652, file: !186, line: 304, baseType: !2655, size: 64, offset: 1088)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2652, file: !186, line: 305, baseType: !2655, size: 64, offset: 1152)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2652, file: !186, line: 306, baseType: !2655, size: 64, offset: 1216)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2652, file: !186, line: 307, baseType: !2655, size: 64, offset: 1280)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2652, file: !186, line: 308, baseType: !2655, size: 64, offset: 1344)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2652, file: !186, line: 309, baseType: !2655, size: 64, offset: 1408)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2618, file: !174, line: 714, baseType: !2681, size: 64, offset: 768)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2683)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2684, line: 80, size: 1344, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2749}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2683, file: !2684, line: 81, baseType: !34, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2683, file: !2684, line: 82, baseType: !34, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2683, file: !2684, line: 83, baseType: !652, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2683, file: !2684, line: 84, baseType: !652, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2683, file: !2684, line: 85, baseType: !652, size: 64, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2683, file: !2684, line: 87, baseType: !2692, size: 64, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!39, !2622, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !168, line: 96, size: 1152, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2708, !2712, !2713, !2714, !2715, !2716, !2724, !2725, !2726, !2727, !2728, !2729}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2696, file: !168, line: 97, baseType: !34, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2696, file: !168, line: 98, baseType: !2681, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2696, file: !168, line: 100, baseType: !554, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2696, file: !168, line: 101, baseType: !34, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2696, file: !168, line: 103, baseType: !897, size: 8, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2696, file: !168, line: 104, baseType: !167, size: 32, offset: 288)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2696, file: !168, line: 106, baseType: !2705, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2707)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !168, line: 106, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2696, file: !168, line: 107, baseType: !2709, size: 64, offset: 384)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2711)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !168, line: 107, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2696, file: !168, line: 109, baseType: !2655, size: 64, offset: 448)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2696, file: !168, line: 110, baseType: !2646, size: 64, offset: 512)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2696, file: !168, line: 111, baseType: !2655, size: 64, offset: 576)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2696, file: !168, line: 112, baseType: !2646, size: 64, offset: 640)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2696, file: !168, line: 113, baseType: !2717, size: 64, offset: 704)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!39, !2622, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !186, line: 60, baseType: !2721)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !186, line: 58, size: 32, elements: !2722)
!2722 = !{!2723}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2721, file: !186, line: 59, baseType: !39, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2696, file: !168, line: 114, baseType: !2655, size: 64, offset: 768)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2696, file: !168, line: 115, baseType: !652, size: 64, offset: 832)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2696, file: !168, line: 116, baseType: !652, size: 64, offset: 896)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2696, file: !168, line: 118, baseType: !2650, size: 64, offset: 960)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2696, file: !168, line: 119, baseType: !2646, size: 64, offset: 1024)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2696, file: !168, line: 121, baseType: !2730, size: 64, offset: 1088)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !168, line: 121, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2683, file: !2684, line: 88, baseType: !2635, size: 64, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2683, file: !2684, line: 89, baseType: !2655, size: 64, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2683, file: !2684, line: 90, baseType: !2646, size: 64, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2683, file: !2684, line: 91, baseType: !2646, size: 64, offset: 576)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2683, file: !2684, line: 92, baseType: !2646, size: 64, offset: 640)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2683, file: !2684, line: 94, baseType: !2655, size: 64, offset: 704)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2683, file: !2684, line: 95, baseType: !2655, size: 64, offset: 768)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2683, file: !2684, line: 97, baseType: !2717, size: 64, offset: 832)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2683, file: !2684, line: 98, baseType: !2655, size: 64, offset: 896)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2683, file: !2684, line: 100, baseType: !2655, size: 64, offset: 960)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2683, file: !2684, line: 102, baseType: !2655, size: 64, offset: 1024)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2683, file: !2684, line: 103, baseType: !2646, size: 64, offset: 1088)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2683, file: !2684, line: 105, baseType: !2650, size: 64, offset: 1152)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2683, file: !2684, line: 107, baseType: !2746, size: 64, offset: 1216)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2748)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2684, line: 107, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2683, file: !2684, line: 109, baseType: !897, size: 8, offset: 1280)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2618, file: !174, line: 715, baseType: !2695, size: 64, offset: 832)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2618, file: !174, line: 717, baseType: !37, size: 64, offset: 896)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2618, file: !174, line: 719, baseType: !37, size: 64, offset: 960)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2618, file: !174, line: 721, baseType: !707, size: 256, offset: 1024)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2618, file: !174, line: 725, baseType: !2755, size: 448, offset: 1280)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !174, line: 517, size: 448, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2755, file: !174, line: 518, baseType: !114, size: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2755, file: !174, line: 519, baseType: !114, size: 128, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2755, file: !174, line: 520, baseType: !114, size: 128, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2755, file: !174, line: 521, baseType: !173, size: 32, offset: 384)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2618, file: !174, line: 726, baseType: !2762, size: 2496, offset: 1728)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !186, line: 663, size: 2496, elements: !2763)
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2808, !2809, !2810, !2811, !2812, !2813, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2918, !2922}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2762, file: !186, line: 664, baseType: !2720, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2762, file: !186, line: 665, baseType: !22, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2762, file: !186, line: 666, baseType: !22, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2762, file: !186, line: 667, baseType: !897, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2762, file: !186, line: 668, baseType: !897, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2762, file: !186, line: 669, baseType: !897, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2762, file: !186, line: 670, baseType: !897, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2762, file: !186, line: 671, baseType: !897, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2762, file: !186, line: 672, baseType: !897, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2762, file: !186, line: 673, baseType: !897, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2762, file: !186, line: 674, baseType: !897, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2762, file: !186, line: 675, baseType: !439, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2762, file: !186, line: 676, baseType: !76, size: 32, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2762, file: !186, line: 678, baseType: !114, size: 128, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2762, file: !186, line: 679, baseType: !1068, size: 256, offset: 256)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2762, file: !186, line: 680, baseType: !2780, size: 64, offset: 512)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2782, line: 43, size: 1536, elements: !2783)
!2782 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2791, !2792, !2793, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2781, file: !2782, line: 44, baseType: !34, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2781, file: !2782, line: 45, baseType: !39, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2781, file: !2782, line: 46, baseType: !114, size: 128, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2781, file: !2782, line: 47, baseType: !76, size: 32, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2781, file: !2782, line: 48, baseType: !2789, size: 64, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !186, line: 629, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2781, file: !2782, line: 49, baseType: !2156, size: 320, offset: 384)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2781, file: !2782, line: 50, baseType: !56, size: 64, offset: 704)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2781, file: !2782, line: 51, baseType: !2794, size: 64, offset: 768)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2795, line: 29, baseType: !704)
!2795 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2781, file: !2782, line: 52, baseType: !2794, size: 64, offset: 832)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2781, file: !2782, line: 53, baseType: !2794, size: 64, offset: 896)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2781, file: !2782, line: 54, baseType: !2794, size: 64, offset: 960)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2781, file: !2782, line: 55, baseType: !2794, size: 64, offset: 1024)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2781, file: !2782, line: 56, baseType: !56, size: 64, offset: 1088)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2781, file: !2782, line: 57, baseType: !56, size: 64, offset: 1152)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2781, file: !2782, line: 58, baseType: !56, size: 64, offset: 1216)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2781, file: !2782, line: 59, baseType: !56, size: 64, offset: 1280)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2781, file: !2782, line: 60, baseType: !56, size: 64, offset: 1344)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2781, file: !2782, line: 61, baseType: !2622, size: 64, offset: 1408)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2781, file: !2782, line: 62, baseType: !897, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2781, file: !2782, line: 63, baseType: !897, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2762, file: !186, line: 681, baseType: !897, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2762, file: !186, line: 682, baseType: !897, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2762, file: !186, line: 683, baseType: !897, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2762, file: !186, line: 684, baseType: !22, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2762, file: !186, line: 685, baseType: !22, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2762, file: !186, line: 690, baseType: !2814, size: 512, offset: 640)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !181, line: 118, size: 512, elements: !2815)
!2815 = !{!2816, !2822, !2823, !2828, !2880, !2881, !2882, !2883}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2814, file: !181, line: 119, baseType: !2817, size: 256)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2818, line: 9, size: 256, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2819 = !{!2820, !2821}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2817, file: !2818, line: 10, baseType: !830, size: 192, align: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2817, file: !2818, line: 11, baseType: !2794, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2814, file: !181, line: 120, baseType: !2794, size: 64, offset: 256)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2814, file: !181, line: 121, baseType: !2824, size: 64, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!180, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2814, file: !181, line: 122, baseType: !2829, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !181, line: 159, size: 512, align: 512, elements: !2831)
!2831 = !{!2832, !2857, !2858, !2861, !2866, !2867, !2875, !2879}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2830, file: !181, line: 160, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !181, line: 215, size: 4608, align: 512, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2834, file: !181, line: 216, baseType: !712, size: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2834, file: !181, line: 217, baseType: !22, size: 32, offset: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2834, file: !181, line: 218, baseType: !22, size: 32, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2834, file: !181, line: 219, baseType: !22, size: 32, offset: 96)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2834, file: !181, line: 220, baseType: !22, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2834, file: !181, line: 221, baseType: !22, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2834, file: !181, line: 222, baseType: !22, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2834, file: !181, line: 223, baseType: !22, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2834, file: !181, line: 224, baseType: !22, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2834, file: !181, line: 226, baseType: !22, size: 32, offset: 160)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2834, file: !181, line: 227, baseType: !43, size: 16, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2834, file: !181, line: 228, baseType: !43, size: 16, offset: 208)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2834, file: !181, line: 229, baseType: !22, size: 32, offset: 224)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2834, file: !181, line: 235, baseType: !2794, size: 64, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2834, file: !181, line: 236, baseType: !2827, size: 64, offset: 320)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2834, file: !181, line: 237, baseType: !2794, size: 64, offset: 384)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2834, file: !181, line: 238, baseType: !2827, size: 64, offset: 448)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2834, file: !181, line: 239, baseType: !2854, size: 4096, align: 512, offset: 512)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2830, size: 4096, align: 512, elements: !2855)
!2855 = !{!2856}
!2856 = !DISubrange(count: 8)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2830, file: !181, line: 161, baseType: !22, size: 32, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2830, file: !181, line: 162, baseType: !2859, size: 32, offset: 96)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !42, line: 32, baseType: !2860)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !54, line: 96, baseType: !39)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2830, file: !181, line: 163, baseType: !2862, size: 32, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !412, line: 274, baseType: !2863)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !412, line: 274, size: 32, elements: !2864)
!2864 = !{!2865}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2863, file: !412, line: 274, baseType: !416, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2830, file: !181, line: 164, baseType: !2827, size: 64, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2830, file: !181, line: 165, baseType: !2868, size: 128, offset: 256)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2818, line: 14, size: 128, elements: !2869)
!2869 = !{!2870}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2868, file: !2818, line: 15, baseType: !2871, size: 128)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !831, line: 26, size: 128, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2871, file: !831, line: 27, baseType: !1110, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2871, file: !831, line: 28, baseType: !835, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2830, file: !181, line: 166, baseType: !2876, size: 64, offset: 384)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!2794}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2830, file: !181, line: 167, baseType: !2794, size: 64, offset: 448)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2814, file: !181, line: 123, baseType: !100, size: 8, offset: 448)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2814, file: !181, line: 124, baseType: !100, size: 8, offset: 456)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2814, file: !181, line: 125, baseType: !100, size: 8, offset: 464)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2814, file: !181, line: 126, baseType: !100, size: 8, offset: 472)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2762, file: !186, line: 691, baseType: !308, size: 64, offset: 1152)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2762, file: !186, line: 692, baseType: !1029, size: 256, offset: 1216)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2762, file: !186, line: 693, baseType: !71, size: 192, offset: 1472)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2762, file: !186, line: 694, baseType: !2789, size: 64, offset: 1664)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2762, file: !186, line: 695, baseType: !66, size: 32, offset: 1728)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2762, file: !186, line: 696, baseType: !66, size: 32, offset: 1760)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2762, file: !186, line: 697, baseType: !22, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2762, file: !186, line: 698, baseType: !22, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2762, file: !186, line: 699, baseType: !22, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2762, file: !186, line: 700, baseType: !22, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2762, file: !186, line: 701, baseType: !22, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2762, file: !186, line: 702, baseType: !22, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2762, file: !186, line: 703, baseType: !897, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2762, file: !186, line: 704, baseType: !22, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2762, file: !186, line: 705, baseType: !22, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2762, file: !186, line: 706, baseType: !22, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2762, file: !186, line: 707, baseType: !22, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2762, file: !186, line: 708, baseType: !22, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2762, file: !186, line: 709, baseType: !22, size: 32, offset: 1824)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2762, file: !186, line: 710, baseType: !185, size: 32, offset: 1856)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2762, file: !186, line: 711, baseType: !193, size: 32, offset: 1888)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2762, file: !186, line: 712, baseType: !193, size: 32, offset: 1920)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2762, file: !186, line: 713, baseType: !39, size: 32, offset: 1952)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2762, file: !186, line: 714, baseType: !39, size: 32, offset: 1984)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2762, file: !186, line: 715, baseType: !308, size: 64, offset: 2048)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2762, file: !186, line: 716, baseType: !308, size: 64, offset: 2112)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2762, file: !186, line: 717, baseType: !308, size: 64, offset: 2176)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2762, file: !186, line: 718, baseType: !308, size: 64, offset: 2240)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2762, file: !186, line: 720, baseType: !2913, size: 64, offset: 2304)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !186, line: 632, size: 64, elements: !2915)
!2915 = !{!2916, !2917}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2914, file: !186, line: 633, baseType: !76, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2914, file: !186, line: 634, baseType: !22, size: 32, offset: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2762, file: !186, line: 721, baseType: !2919, size: 64, offset: 2368)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !2622, !823}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2762, file: !186, line: 722, baseType: !2923, size: 64, offset: 2432)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !186, line: 722, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2618, file: !174, line: 727, baseType: !2926, size: 64, offset: 4224)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !186, line: 742, size: 1792, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2935, !2936, !2937}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2927, file: !186, line: 743, baseType: !2652, size: 1472)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2927, file: !186, line: 744, baseType: !2655, size: 64, offset: 1472)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2927, file: !186, line: 745, baseType: !2932, size: 64, offset: 1536)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2622, !897}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2927, file: !186, line: 746, baseType: !2655, size: 64, offset: 1600)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2927, file: !186, line: 747, baseType: !2646, size: 64, offset: 1664)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2927, file: !186, line: 748, baseType: !2646, size: 64, offset: 1728)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2618, file: !174, line: 736, baseType: !2939, size: 128, offset: 4288)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !174, line: 529, size: 128, elements: !2940)
!2940 = !{!2941, !2945}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2939, file: !174, line: 531, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2944, line: 13, flags: DIFlagFwdDecl)
!2944 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2939, file: !174, line: 532, baseType: !2946, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !174, line: 49, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2618, file: !174, line: 738, baseType: !2949, size: 64, offset: 4416)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2951)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !174, line: 738, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2618, file: !174, line: 740, baseType: !2953, size: 64, offset: 4480)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2618, file: !174, line: 741, baseType: !308, size: 64, offset: 4544)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2618, file: !174, line: 746, baseType: !308, size: 64, offset: 4608)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2618, file: !174, line: 747, baseType: !2957, size: 64, offset: 4672)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2959)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !174, line: 747, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2618, file: !174, line: 749, baseType: !2961, size: 64, offset: 4736)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !174, line: 428, size: 128, elements: !2963)
!2963 = !{!2964, !2965, !2966}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2962, file: !174, line: 433, baseType: !22, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2962, file: !174, line: 434, baseType: !22, size: 32, offset: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2962, file: !174, line: 435, baseType: !56, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2618, file: !174, line: 751, baseType: !114, size: 128, offset: 4800)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2618, file: !174, line: 762, baseType: !2969, size: 64, offset: 4928)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !174, line: 762, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2618, file: !174, line: 770, baseType: !2972, offset: 4992)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2973, line: 5, elements: !1362)
!2973 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2618, file: !174, line: 772, baseType: !2975, size: 64, offset: 4992)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2977, line: 18, flags: DIFlagFwdDecl)
!2977 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2618, file: !174, line: 773, baseType: !2979, size: 64, offset: 5056)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2684, line: 22, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2618, file: !174, line: 776, baseType: !39, size: 32, offset: 5120)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2618, file: !174, line: 778, baseType: !524, size: 32, offset: 5152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2618, file: !174, line: 779, baseType: !439, size: 32, offset: 5184)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2618, file: !174, line: 781, baseType: !76, size: 32, offset: 5216)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2618, file: !174, line: 782, baseType: !114, size: 128, offset: 5248)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2618, file: !174, line: 784, baseType: !2987, size: 64, offset: 5376)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2990, line: 52, size: 768, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2991 = !{!2992, !2993, !2994, !2995, !2996, !3000, !3004, !3005, !3006, !3007, !3011, !3015}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2989, file: !2990, line: 53, baseType: !34, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2989, file: !2990, line: 55, baseType: !652, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2989, file: !2990, line: 56, baseType: !652, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2989, file: !2990, line: 58, baseType: !2635, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2989, file: !2990, line: 59, baseType: !2997, size: 64, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!508, !2638, !2644}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2989, file: !2990, line: 61, baseType: !3001, size: 64, offset: 320)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !2987}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2989, file: !2990, line: 62, baseType: !2646, size: 64, offset: 384)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2989, file: !2990, line: 64, baseType: !2655, size: 64, offset: 448)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2989, file: !2990, line: 66, baseType: !1778, size: 64, offset: 512)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2989, file: !2990, line: 67, baseType: !3008, size: 64, offset: 576)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!1449, !2638}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2989, file: !2990, line: 69, baseType: !3012, size: 64, offset: 640)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !2638, !1093, !1094}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2989, file: !2990, line: 71, baseType: !2650, size: 64, offset: 704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2618, file: !174, line: 785, baseType: !652, size: 64, offset: 5440)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2618, file: !174, line: 787, baseType: !2646, size: 64, offset: 5504)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2618, file: !174, line: 788, baseType: !3019, size: 64, offset: 5568)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !174, line: 46, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2618, file: !174, line: 789, baseType: !3022, size: 64, offset: 5632)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !174, line: 48, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2618, file: !174, line: 791, baseType: !3025, size: 64, offset: 5696)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !174, line: 597, size: 128, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3032}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3026, file: !174, line: 598, baseType: !206, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3026, file: !174, line: 599, baseType: !215, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3026, file: !174, line: 600, baseType: !220, size: 32, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3026, file: !174, line: 601, baseType: !897, size: 8, offset: 96)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3026, file: !174, line: 602, baseType: !897, size: 8, offset: 104)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2618, file: !174, line: 793, baseType: !225, size: 32, offset: 5760)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2618, file: !174, line: 795, baseType: !897, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2618, file: !174, line: 796, baseType: !897, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2618, file: !174, line: 797, baseType: !897, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2618, file: !174, line: 798, baseType: !897, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2618, file: !174, line: 799, baseType: !897, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !520, file: !232, line: 1226, baseType: !3040, size: 64, offset: 1664)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !232, line: 1226, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !520, file: !232, line: 1227, baseType: !3043, size: 64, offset: 1728)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !243, line: 163, size: 6848, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3092, !3093, !3094, !3095, !3097, !3098, !3099}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3044, file: !243, line: 164, baseType: !308, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3044, file: !243, line: 165, baseType: !830, size: 192, align: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3044, file: !243, line: 166, baseType: !114, size: 128, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3044, file: !243, line: 167, baseType: !56, size: 64, offset: 384)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3044, file: !243, line: 168, baseType: !56, size: 64, offset: 448)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3044, file: !243, line: 170, baseType: !1906, size: 32, offset: 512)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3044, file: !243, line: 171, baseType: !22, size: 32, offset: 544)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3044, file: !243, line: 172, baseType: !22, size: 32, offset: 576)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3044, file: !243, line: 173, baseType: !22, size: 32, offset: 608)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3044, file: !243, line: 173, baseType: !22, size: 32, offset: 640)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3044, file: !243, line: 179, baseType: !698, size: 64, offset: 704)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3044, file: !243, line: 184, baseType: !56, size: 64, offset: 768)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3044, file: !243, line: 186, baseType: !3059, size: 4672, offset: 832)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !243, line: 105, size: 4672, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3085, !3086, !3087, !3088, !3089, !3090, !3091}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3059, file: !243, line: 106, baseType: !3043, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3059, file: !243, line: 108, baseType: !56, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3059, file: !243, line: 109, baseType: !56, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3059, file: !243, line: 111, baseType: !114, size: 128, offset: 192)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3059, file: !243, line: 112, baseType: !114, size: 128, offset: 320)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3059, file: !243, line: 113, baseType: !114, size: 128, offset: 448)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3059, file: !243, line: 114, baseType: !114, size: 128, offset: 576)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3059, file: !243, line: 115, baseType: !76, size: 32, offset: 704)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3059, file: !243, line: 117, baseType: !66, size: 32, offset: 736)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3059, file: !243, line: 118, baseType: !1417, size: 1280, offset: 768)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3059, file: !243, line: 120, baseType: !56, size: 64, offset: 2048)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3059, file: !243, line: 121, baseType: !56, size: 64, offset: 2112)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3059, file: !243, line: 122, baseType: !56, size: 64, offset: 2176)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3059, file: !243, line: 123, baseType: !56, size: 64, offset: 2240)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3059, file: !243, line: 124, baseType: !56, size: 64, offset: 2304)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3059, file: !243, line: 132, baseType: !56, size: 64, offset: 2368)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3059, file: !243, line: 133, baseType: !56, size: 64, offset: 2432)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3059, file: !243, line: 135, baseType: !3079, size: 384, offset: 2496)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3080, line: 76, size: 384, elements: !3081)
!3080 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3081 = !{!3082, !3083, !3084}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3079, file: !3080, line: 78, baseType: !955, size: 320)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3079, file: !3080, line: 80, baseType: !22, size: 32, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3079, file: !3080, line: 81, baseType: !712, size: 32, offset: 352)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3059, file: !243, line: 136, baseType: !39, size: 32, offset: 2880)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3059, file: !243, line: 137, baseType: !242, size: 32, offset: 2912)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3059, file: !243, line: 139, baseType: !76, size: 32, offset: 2944)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3059, file: !243, line: 140, baseType: !114, size: 128, offset: 3008)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3059, file: !243, line: 141, baseType: !2213, size: 704, offset: 3136)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3059, file: !243, line: 142, baseType: !2213, size: 704, offset: 3840)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3059, file: !243, line: 144, baseType: !114, size: 128, offset: 4544)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3044, file: !243, line: 187, baseType: !114, size: 128, offset: 5504)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3044, file: !243, line: 193, baseType: !71, size: 192, offset: 5632)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3044, file: !243, line: 195, baseType: !2622, size: 64, offset: 5824)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3044, file: !243, line: 196, baseType: !3096, size: 512, offset: 5888)
!3096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !612)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3044, file: !243, line: 197, baseType: !2622, size: 64, offset: 6400)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3044, file: !243, line: 199, baseType: !2156, size: 320, offset: 6464)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3044, file: !243, line: 202, baseType: !405, size: 64, offset: 6784)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !520, file: !232, line: 1228, baseType: !3101, size: 64, offset: 1792)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !232, line: 1228, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !520, file: !232, line: 1229, baseType: !763, size: 128, offset: 1856)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !520, file: !232, line: 1230, baseType: !22, size: 32, offset: 1984)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !520, file: !232, line: 1231, baseType: !3106, size: 2496, offset: 2048)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !237, line: 521, size: 2496, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3112, !3144}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3106, file: !237, line: 522, baseType: !22, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3106, file: !237, line: 523, baseType: !838, size: 320, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3106, file: !237, line: 524, baseType: !3111, size: 192, offset: 384)
!3111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 192, elements: !608)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3106, file: !237, line: 525, baseType: !3113, size: 1728, offset: 576)
!3113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3114, size: 1728, elements: !608)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !237, line: 222, size: 576, elements: !3115)
!3115 = !{!3116, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3114, file: !237, line: 223, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !237, line: 445, size: 256, elements: !3119)
!3119 = !{!3120, !3121, !3134, !3135}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3118, file: !237, line: 446, baseType: !39, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3118, file: !237, line: 447, baseType: !3122, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3124)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !237, line: 312, size: 512, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3124, file: !237, line: 313, baseType: !2324, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3124, file: !237, line: 314, baseType: !2324, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3124, file: !237, line: 315, baseType: !2324, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3124, file: !237, line: 316, baseType: !2324, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3124, file: !237, line: 317, baseType: !2433, size: 64, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3124, file: !237, line: 318, baseType: !2433, size: 64, offset: 320)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3124, file: !237, line: 319, baseType: !2433, size: 64, offset: 384)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3124, file: !237, line: 320, baseType: !2463, size: 64, offset: 448)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3118, file: !237, line: 448, baseType: !554, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3118, file: !237, line: 449, baseType: !3117, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3114, file: !237, line: 224, baseType: !39, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3114, file: !237, line: 226, baseType: !114, size: 128, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3114, file: !237, line: 227, baseType: !56, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3114, file: !237, line: 228, baseType: !22, size: 32, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3114, file: !237, line: 229, baseType: !22, size: 32, offset: 352)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3114, file: !237, line: 230, baseType: !2401, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3114, file: !237, line: 231, baseType: !2401, size: 64, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3114, file: !237, line: 232, baseType: !37, size: 64, offset: 512)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3106, file: !237, line: 526, baseType: !3145, size: 192, offset: 2304)
!3145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3122, size: 192, elements: !608)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !520, file: !232, line: 1233, baseType: !3147, size: 2368, offset: 4544)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !232, line: 1184, size: 2368, elements: !3148)
!3148 = !{!3149, !3150, !3151}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3147, file: !232, line: 1185, baseType: !43, size: 16)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3147, file: !232, line: 1186, baseType: !43, size: 16, offset: 16)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3147, file: !232, line: 1187, baseType: !3152, size: 2304, offset: 64)
!3152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3153, size: 2304, elements: !608)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3154, line: 12, size: 768, elements: !3155)
!3154 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3155 = !{!3156, !3164, !3165, !4638, !4639}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3153, file: !3154, line: 13, baseType: !3157, size: 384)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3158, line: 17, size: 384, elements: !3159)
!3158 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3159 = !{!3160, !3161, !3162, !3163}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3157, file: !3158, line: 18, baseType: !39, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3157, file: !3158, line: 19, baseType: !39, size: 32, offset: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3157, file: !3158, line: 20, baseType: !71, size: 192, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3157, file: !3158, line: 22, baseType: !329, size: 128, align: 64, offset: 256)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3153, file: !3154, line: 14, baseType: !2009, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3153, file: !3154, line: 15, baseType: !3166, size: 64, offset: 448)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3167, line: 16, size: 64, elements: !3168)
!3167 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3168 = !{!3169}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3166, file: !3167, line: 17, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1675, line: 746, size: 58368, elements: !3172)
!3172 = !{!3173, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3253, !3264, !3284, !3288, !3291, !3322, !3323, !3324, !3325, !3333, !3335, !3336, !3337, !3338, !3339, !3340, !3351, !3352, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3369, !3370, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3458, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3506, !3512, !3513, !3514, !3515, !3516, !3520, !3523, !3530, !3535, !3538, !3541, !3544, !3862, !4061, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4099, !4100, !4101, !4110, !4118, !4119, !4120, !4121, !4122, !4127, !4128, !4129, !4132, !4133, !4136, !4139, !4145, !4152, !4155, !4156, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4255, !4258, !4259, !4262, !4263, !4264, !4267, !4268, !4269, !4270, !4271, !4272, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4304, !4305, !4311, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4393, !4395, !4396, !4397, !4398, !4399, !4400, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4417, !4418, !4419}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3171, file: !1675, line: 752, baseType: !3174, size: 192)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3175, line: 56, size: 192, elements: !3176)
!3175 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3176 = !{!3177, !3178, !3179, !3180}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3174, file: !3175, line: 57, baseType: !56, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3174, file: !3175, line: 58, baseType: !56, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3174, file: !3175, line: 59, baseType: !439, size: 32, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3174, file: !3175, line: 61, baseType: !439, size: 32, offset: 160)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3171, file: !1675, line: 754, baseType: !22, size: 32, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3171, file: !1675, line: 767, baseType: !37, size: 64, offset: 256)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3171, file: !1675, line: 768, baseType: !750, size: 32, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3171, file: !1675, line: 770, baseType: !22, size: 32, offset: 352)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3171, file: !1675, line: 771, baseType: !22, size: 32, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3171, file: !1675, line: 774, baseType: !39, size: 32, offset: 416)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3171, file: !1675, line: 775, baseType: !3188, size: 128, offset: 448)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3189, line: 58, size: 128, elements: !3190)
!3189 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3190 = !{!3191, !3192, !3197, !3198}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3188, file: !3189, line: 59, baseType: !687, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3188, file: !3189, line: 60, baseType: !3193, size: 32, offset: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3188, file: !3189, line: 60, size: 32, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3193, file: !3189, line: 61, baseType: !22, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3193, file: !3189, line: 62, baseType: !66, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3188, file: !3189, line: 65, baseType: !110, size: 16, offset: 96)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3188, file: !3189, line: 65, baseType: !110, size: 16, offset: 112)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3171, file: !1675, line: 776, baseType: !22, size: 32, offset: 576)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3171, file: !1675, line: 777, baseType: !56, size: 64, offset: 640)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3171, file: !1675, line: 778, baseType: !3170, size: 64, offset: 704)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3171, file: !1675, line: 787, baseType: !39, size: 32, offset: 768)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3171, file: !1675, line: 788, baseType: !39, size: 32, offset: 800)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3171, file: !1675, line: 790, baseType: !39, size: 32, offset: 832)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3171, file: !1675, line: 792, baseType: !39, size: 32, offset: 864)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3171, file: !1675, line: 793, baseType: !39, size: 32, offset: 896)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3171, file: !1675, line: 794, baseType: !39, size: 32, offset: 928)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3171, file: !1675, line: 795, baseType: !22, size: 32, offset: 960)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3171, file: !1675, line: 797, baseType: !3210, size: 2048, offset: 1024)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1675, line: 551, size: 2048, elements: !3211)
!3211 = !{!3212, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3232, !3235, !3236, !3237}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3210, file: !1675, line: 553, baseType: !3213, size: 128)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1675, line: 411, size: 128, elements: !3214)
!3214 = !{!3215, !3216}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3213, file: !1675, line: 412, baseType: !56, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3213, file: !1675, line: 413, baseType: !439, size: 32, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3210, file: !1675, line: 554, baseType: !830, size: 192, align: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3210, file: !1675, line: 555, baseType: !308, size: 64, offset: 320)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3210, file: !1675, line: 556, baseType: !308, size: 64, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3210, file: !1675, line: 558, baseType: !114, size: 128, offset: 448)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3210, file: !1675, line: 559, baseType: !22, size: 32, offset: 576)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3210, file: !1675, line: 561, baseType: !308, size: 64, offset: 640)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3210, file: !1675, line: 562, baseType: !308, size: 64, offset: 704)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3210, file: !1675, line: 563, baseType: !308, size: 64, offset: 768)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3210, file: !1675, line: 564, baseType: !308, size: 64, offset: 832)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3210, file: !1675, line: 565, baseType: !704, size: 64, offset: 896)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3210, file: !1675, line: 566, baseType: !308, size: 64, offset: 960)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3210, file: !1675, line: 568, baseType: !308, size: 64, offset: 1024)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3210, file: !1675, line: 571, baseType: !39, size: 32, offset: 1088)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3210, file: !1675, line: 572, baseType: !3231, size: 64, offset: 1152)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3210, file: !1675, line: 574, baseType: !3233, size: 64, offset: 1216)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1675, line: 49, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3210, file: !1675, line: 576, baseType: !3233, size: 64, offset: 1280)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3210, file: !1675, line: 578, baseType: !56, size: 64, offset: 1344)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3210, file: !1675, line: 588, baseType: !3238, size: 512, align: 512, offset: 1536)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1675, line: 497, size: 512, align: 512, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3238, file: !1675, line: 498, baseType: !308, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3238, file: !1675, line: 499, baseType: !308, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3238, file: !1675, line: 500, baseType: !308, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3238, file: !1675, line: 501, baseType: !439, size: 32, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3238, file: !1675, line: 502, baseType: !439, size: 32, offset: 224)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3238, file: !1675, line: 503, baseType: !56, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3238, file: !1675, line: 504, baseType: !56, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3238, file: !1675, line: 505, baseType: !56, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3238, file: !1675, line: 506, baseType: !3249, size: 64, align: 64, offset: 448)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1675, line: 445, size: 64, align: 64, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3249, file: !1675, line: 446, baseType: !22, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3249, file: !1675, line: 447, baseType: !22, size: 32, offset: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3171, file: !1675, line: 798, baseType: !3254, size: 384, offset: 3072)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1675, line: 592, size: 384, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261, !3262}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3254, file: !1675, line: 593, baseType: !114, size: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3254, file: !1675, line: 594, baseType: !56, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3254, file: !1675, line: 595, baseType: !56, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3254, file: !1675, line: 596, baseType: !22, size: 32, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3254, file: !1675, line: 597, baseType: !43, size: 16, offset: 288)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3254, file: !1675, line: 598, baseType: !43, size: 16, offset: 304)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3254, file: !1675, line: 600, baseType: !3263, size: 64, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3171, file: !1675, line: 799, baseType: !3265, size: 1792, offset: 3456)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1675, line: 610, size: 1792, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3265, file: !1675, line: 611, baseType: !830, size: 192, align: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3265, file: !1675, line: 618, baseType: !308, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3265, file: !1675, line: 619, baseType: !308, size: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3265, file: !1675, line: 620, baseType: !308, size: 64, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3265, file: !1675, line: 621, baseType: !308, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3265, file: !1675, line: 622, baseType: !308, size: 64, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3265, file: !1675, line: 629, baseType: !704, size: 64, offset: 512)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3265, file: !1675, line: 630, baseType: !308, size: 64, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3265, file: !1675, line: 631, baseType: !22, size: 32, offset: 640)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3265, file: !1675, line: 653, baseType: !22, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3265, file: !1675, line: 654, baseType: !22, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3265, file: !1675, line: 655, baseType: !22, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3265, file: !1675, line: 656, baseType: !22, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3265, file: !1675, line: 662, baseType: !2814, size: 512, offset: 704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3265, file: !1675, line: 671, baseType: !2814, size: 512, offset: 1216)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3265, file: !1675, line: 679, baseType: !3283, size: 64, offset: 1728)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3171, file: !1675, line: 800, baseType: !3285, size: 64, offset: 5248)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3287)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1675, line: 800, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3171, file: !1675, line: 809, baseType: !3289, size: 64, offset: 5312)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1675, line: 70, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3171, file: !1675, line: 825, baseType: !3292, size: 2048, align: 512, offset: 5632)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1675, line: 509, size: 2048, align: 512, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3292, file: !1675, line: 511, baseType: !308, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3292, file: !1675, line: 512, baseType: !308, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3292, file: !1675, line: 513, baseType: !308, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3292, file: !1675, line: 514, baseType: !308, size: 64, offset: 192)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3292, file: !1675, line: 515, baseType: !308, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3292, file: !1675, line: 516, baseType: !308, size: 64, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3292, file: !1675, line: 518, baseType: !308, size: 64, offset: 384)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3292, file: !1675, line: 519, baseType: !308, size: 64, offset: 448)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3292, file: !1675, line: 520, baseType: !704, size: 64, offset: 512)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3292, file: !1675, line: 522, baseType: !308, size: 64, offset: 576)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3292, file: !1675, line: 523, baseType: !308, size: 64, offset: 640)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3292, file: !1675, line: 524, baseType: !704, size: 64, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3292, file: !1675, line: 526, baseType: !704, size: 64, offset: 768)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3292, file: !1675, line: 527, baseType: !308, size: 64, offset: 832)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3292, file: !1675, line: 529, baseType: !308, size: 64, offset: 896)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3292, file: !1675, line: 530, baseType: !308, size: 64, offset: 960)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3292, file: !1675, line: 531, baseType: !308, size: 64, offset: 1024)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3292, file: !1675, line: 532, baseType: !308, size: 64, offset: 1088)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3292, file: !1675, line: 533, baseType: !308, size: 64, offset: 1152)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3292, file: !1675, line: 535, baseType: !308, size: 64, offset: 1216)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3292, file: !1675, line: 536, baseType: !308, size: 64, offset: 1280)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3292, file: !1675, line: 537, baseType: !308, size: 64, offset: 1344)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3292, file: !1675, line: 538, baseType: !308, size: 64, offset: 1408)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3292, file: !1675, line: 539, baseType: !308, size: 64, offset: 1472)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3292, file: !1675, line: 540, baseType: !308, size: 64, offset: 1536)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3292, file: !1675, line: 541, baseType: !308, size: 64, offset: 1600)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3292, file: !1675, line: 542, baseType: !308, size: 64, offset: 1664)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3292, file: !1675, line: 543, baseType: !308, size: 64, offset: 1728)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3171, file: !1675, line: 833, baseType: !22, size: 32, offset: 7680)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3171, file: !1675, line: 836, baseType: !22, size: 32, offset: 7712)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3171, file: !1675, line: 837, baseType: !39, size: 32, offset: 7744)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3171, file: !1675, line: 838, baseType: !3326, size: 64, offset: 7808)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3328)
!3328 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3329, line: 19, baseType: !3330)
!3329 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3329, line: 19, size: 64, elements: !3331)
!3331 = !{!3332}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3330, file: !3329, line: 19, baseType: !1614, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3171, file: !1675, line: 839, baseType: !3334, size: 64, offset: 7872)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3171, file: !1675, line: 840, baseType: !3328, size: 64, offset: 7936)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3171, file: !1675, line: 841, baseType: !37, size: 64, offset: 8000)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3171, file: !1675, line: 843, baseType: !43, size: 16, offset: 8064)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3171, file: !1675, line: 845, baseType: !43, size: 16, offset: 8080)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3171, file: !1675, line: 848, baseType: !39, size: 32, offset: 8096)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3171, file: !1675, line: 849, baseType: !3341, size: 32, offset: 8128)
!3341 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1675, line: 718, size: 32, elements: !3342)
!3342 = !{!3343, !3350}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3341, file: !1675, line: 724, baseType: !3344, size: 32)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3341, file: !1675, line: 719, size: 32, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3344, file: !1675, line: 720, baseType: !100, size: 8)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3344, file: !1675, line: 721, baseType: !100, size: 8, offset: 8)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3344, file: !1675, line: 722, baseType: !100, size: 8, offset: 16)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3344, file: !1675, line: 723, baseType: !100, size: 8, offset: 24)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3341, file: !1675, line: 725, baseType: !439, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3171, file: !1675, line: 850, baseType: !114, size: 128, offset: 8192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3171, file: !1675, line: 851, baseType: !3353, size: 64, offset: 8320)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1675, line: 60, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3171, file: !1675, line: 855, baseType: !56, size: 64, offset: 8384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3171, file: !1675, line: 856, baseType: !100, size: 8, offset: 8448)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3171, file: !1675, line: 857, baseType: !100, size: 8, offset: 8456)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3171, file: !1675, line: 858, baseType: !39, size: 32, offset: 8480)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3171, file: !1675, line: 859, baseType: !114, size: 128, offset: 8512)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3171, file: !1675, line: 860, baseType: !39, size: 32, offset: 8640)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3171, file: !1675, line: 861, baseType: !114, size: 128, offset: 8704)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3171, file: !1675, line: 873, baseType: !3363, size: 256, offset: 8832)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1675, line: 376, size: 256, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3363, file: !1675, line: 381, baseType: !56, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3363, file: !1675, line: 384, baseType: !310, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3363, file: !1675, line: 389, baseType: !310, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3363, file: !1675, line: 392, baseType: !310, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3171, file: !1675, line: 875, baseType: !114, size: 128, offset: 9088)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3171, file: !1675, line: 877, baseType: !3371, size: 320, offset: 9216)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3372, line: 86, size: 320, elements: !3373)
!3372 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3373 = !{!3374, !3375, !3376}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3371, file: !3372, line: 87, baseType: !39, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3371, file: !3372, line: 88, baseType: !114, size: 128, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3371, file: !3372, line: 89, baseType: !114, size: 128, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3171, file: !1675, line: 878, baseType: !830, size: 192, align: 64, offset: 9536)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3171, file: !1675, line: 881, baseType: !1341, size: 64, offset: 9728)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3171, file: !1675, line: 882, baseType: !1341, size: 64, offset: 9792)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3171, file: !1675, line: 884, baseType: !39, size: 32, offset: 9856)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3171, file: !1675, line: 885, baseType: !39, size: 32, offset: 9888)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3171, file: !1675, line: 886, baseType: !39, size: 32, offset: 9920)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3171, file: !1675, line: 888, baseType: !39, size: 32, offset: 9952)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3171, file: !1675, line: 890, baseType: !56, size: 64, offset: 9984)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3171, file: !1675, line: 893, baseType: !22, size: 32, offset: 10048)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3171, file: !1675, line: 896, baseType: !22, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3171, file: !1675, line: 897, baseType: !22, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3171, file: !1675, line: 898, baseType: !22, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3171, file: !1675, line: 899, baseType: !22, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3171, file: !1675, line: 919, baseType: !22, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3171, file: !1675, line: 922, baseType: !22, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3171, file: !1675, line: 923, baseType: !22, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3171, file: !1675, line: 925, baseType: !22, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3171, file: !1675, line: 939, baseType: !22, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3171, file: !1675, line: 941, baseType: !22, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3171, file: !1675, line: 944, baseType: !22, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3171, file: !1675, line: 956, baseType: !22, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3171, file: !1675, line: 962, baseType: !22, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3171, file: !1675, line: 966, baseType: !22, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3171, file: !1675, line: 969, baseType: !56, size: 64, offset: 10176)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3171, file: !1675, line: 971, baseType: !3402, size: 448, offset: 10240)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !255, line: 25, size: 448, elements: !3403)
!3403 = !{!3404, !3405, !3410}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3402, file: !255, line: 26, baseType: !56, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3402, file: !255, line: 27, baseType: !3406, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!306, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, scope: !3402, file: !255, line: 28, baseType: !3411, size: 320, offset: 128)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3402, file: !255, line: 28, size: 320, elements: !3412)
!3412 = !{!3413, !3423, !3448}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3411, file: !255, line: 37, baseType: !3414, size: 320)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3411, file: !255, line: 30, size: 320, elements: !3415)
!3415 = !{!3416, !3418, !3419, !3420, !3421, !3422}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3414, file: !255, line: 31, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3414, file: !255, line: 32, baseType: !439, size: 32, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3414, file: !255, line: 33, baseType: !439, size: 32, offset: 96)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3414, file: !255, line: 34, baseType: !439, size: 32, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3414, file: !255, line: 35, baseType: !308, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3414, file: !255, line: 36, baseType: !3417, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3411, file: !255, line: 47, baseType: !3424, size: 192)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3411, file: !255, line: 39, size: 192, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3447}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3424, file: !255, line: 40, baseType: !2859, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3424, file: !255, line: 41, baseType: !254, size: 32, offset: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !255, line: 42, baseType: !3429, size: 64, offset: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3424, file: !255, line: 42, size: 64, elements: !3430)
!3430 = !{!3431, !3439}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3429, file: !255, line: 43, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3434, line: 7, size: 128, elements: !3435)
!3434 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3435 = !{!3436, !3438}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3433, file: !3434, line: 8, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !54, line: 93, baseType: !60)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3433, file: !3434, line: 9, baseType: !60, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3429, file: !255, line: 44, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3442, line: 7, size: 64, elements: !3443)
!3442 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3443 = !{!3444, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3441, file: !3442, line: 8, baseType: !3445, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3442, line: 5, baseType: !823)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3441, file: !3442, line: 9, baseType: !823, size: 32, offset: 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3424, file: !255, line: 46, baseType: !308, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3411, file: !255, line: 55, baseType: !3449, size: 256)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3411, file: !255, line: 49, size: 256, elements: !3450)
!3450 = !{!3451, !3454, !3455, !3456, !3457}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3449, file: !255, line: 50, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !255, line: 14, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3449, file: !255, line: 51, baseType: !39, size: 32, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3449, file: !255, line: 52, baseType: !39, size: 32, offset: 96)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3449, file: !255, line: 53, baseType: !56, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3449, file: !255, line: 54, baseType: !56, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3171, file: !1675, line: 973, baseType: !3459, size: 32, offset: 10688)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !42, line: 27, baseType: !3460)
!3460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !54, line: 28, baseType: !39)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3171, file: !1675, line: 974, baseType: !3459, size: 32, offset: 10720)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3171, file: !1675, line: 978, baseType: !56, size: 64, offset: 10752)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3171, file: !1675, line: 987, baseType: !3170, size: 64, offset: 10816)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3171, file: !1675, line: 990, baseType: !3170, size: 64, offset: 10880)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3171, file: !1675, line: 995, baseType: !114, size: 128, offset: 10944)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3171, file: !1675, line: 996, baseType: !114, size: 128, offset: 11072)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3171, file: !1675, line: 997, baseType: !3170, size: 64, offset: 11200)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3171, file: !1675, line: 1005, baseType: !114, size: 128, offset: 11264)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3171, file: !1675, line: 1006, baseType: !114, size: 128, offset: 11392)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3171, file: !1675, line: 1009, baseType: !746, size: 64, offset: 11520)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3171, file: !1675, line: 1010, baseType: !3472, size: 512, offset: 11584)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 512, elements: !768)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3171, file: !1675, line: 1011, baseType: !114, size: 128, offset: 12096)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3171, file: !1675, line: 1012, baseType: !114, size: 128, offset: 12224)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3171, file: !1675, line: 1014, baseType: !1067, size: 64, offset: 12352)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3171, file: !1675, line: 1017, baseType: !2057, size: 64, offset: 12416)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3171, file: !1675, line: 1020, baseType: !2057, size: 64, offset: 12480)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3171, file: !1675, line: 1023, baseType: !37, size: 64, offset: 12544)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3171, file: !1675, line: 1025, baseType: !308, size: 64, offset: 12608)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3171, file: !1675, line: 1026, baseType: !308, size: 64, offset: 12672)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3171, file: !1675, line: 1031, baseType: !308, size: 64, offset: 12736)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3171, file: !1675, line: 1032, baseType: !3483, size: 192, offset: 12800)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1675, line: 324, size: 192, elements: !3484)
!3484 = !{!3485, !3486, !3487}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3483, file: !1675, line: 326, baseType: !308, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3483, file: !1675, line: 327, baseType: !308, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3483, file: !1675, line: 328, baseType: !712, size: 32, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3171, file: !1675, line: 1041, baseType: !56, size: 64, offset: 12992)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3171, file: !1675, line: 1042, baseType: !56, size: 64, offset: 13056)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3171, file: !1675, line: 1045, baseType: !308, size: 64, offset: 13120)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3171, file: !1675, line: 1048, baseType: !308, size: 64, offset: 13184)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3171, file: !1675, line: 1051, baseType: !56, size: 64, offset: 13248)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3171, file: !1675, line: 1052, baseType: !56, size: 64, offset: 13312)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3171, file: !1675, line: 1055, baseType: !3495, size: 640, offset: 13376)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3496, line: 132, size: 640, elements: !3497)
!3496 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3497 = !{!3498, !3504, !3505}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3495, file: !3496, line: 133, baseType: !3499, size: 576)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3500, size: 576, elements: !608)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3496, line: 117, size: 192, elements: !3501)
!3501 = !{!3502, !3503}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3500, file: !3496, line: 118, baseType: !308, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3500, file: !3496, line: 119, baseType: !2868, size: 128, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3495, file: !3496, line: 134, baseType: !22, size: 32, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3495, file: !3496, line: 135, baseType: !22, size: 32, offset: 608)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3171, file: !1675, line: 1058, baseType: !3507, size: 448, offset: 14016)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3496, line: 144, size: 448, elements: !3508)
!3508 = !{!3509, !3510, !3511}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3507, file: !3496, line: 145, baseType: !329, size: 128, align: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3507, file: !3496, line: 146, baseType: !707, size: 256, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3507, file: !3496, line: 147, baseType: !22, size: 32, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3171, file: !1675, line: 1064, baseType: !788, size: 64, offset: 14464)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3171, file: !1675, line: 1067, baseType: !788, size: 64, offset: 14528)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3171, file: !1675, line: 1070, baseType: !788, size: 64, offset: 14592)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3171, file: !1675, line: 1074, baseType: !815, size: 64, offset: 14656)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3171, file: !1675, line: 1084, baseType: !3517, size: 128, offset: 14720)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3518)
!3518 = !{!3519}
!3519 = !DISubrange(count: 16)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3171, file: !1675, line: 1086, baseType: !3521, size: 64, offset: 14848)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1675, line: 55, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3171, file: !1675, line: 1089, baseType: !3524, size: 64, offset: 14912)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3525, line: 12, size: 64, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3526 = !{!3527}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3524, file: !3525, line: 13, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3525, line: 8, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3171, file: !1675, line: 1090, baseType: !3531, size: 128, offset: 14976)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3532, line: 13, size: 128, elements: !3533)
!3532 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3533 = !{!3534}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3531, file: !3532, line: 14, baseType: !114, size: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3171, file: !1675, line: 1097, baseType: !3536, size: 64, offset: 15104)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1675, line: 50, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3171, file: !1675, line: 1100, baseType: !3539, size: 64, offset: 15168)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1675, line: 1100, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3171, file: !1675, line: 1103, baseType: !3542, size: 64, offset: 15232)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1675, line: 53, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3171, file: !1675, line: 1107, baseType: !3545, size: 64, offset: 15296)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3547, line: 31, size: 576, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3548 = !{!3549, !3550, !3553, !3556, !3559, !3560, !3563, !3566, !3567}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3546, file: !3547, line: 32, baseType: !750, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3546, file: !3547, line: 33, baseType: !3551, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3547, line: 9, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3546, file: !3547, line: 34, baseType: !3554, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3547, line: 10, flags: DIFlagFwdDecl)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3546, file: !3547, line: 35, baseType: !3557, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3547, line: 8, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3546, file: !3547, line: 36, baseType: !779, size: 64, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3546, file: !3547, line: 37, baseType: !3561, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !817, line: 34, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3546, file: !3547, line: 38, baseType: !3564, size: 64, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3547, line: 38, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3546, file: !3547, line: 39, baseType: !3564, size: 64, offset: 448)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3546, file: !3547, line: 40, baseType: !3568, size: 64, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3570, line: 771, size: 384, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3571 = !{!3572, !3573, !3574, !3575}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3569, file: !3570, line: 772, baseType: !1013, size: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3569, file: !3570, line: 773, baseType: !980, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3569, file: !3570, line: 774, baseType: !1115, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3569, file: !3570, line: 775, baseType: !3576, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3578, line: 209, size: 4736, elements: !3579)
!3578 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3579 = !{!3580, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3577, file: !3578, line: 215, baseType: !3581, size: 896)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3582, size: 896, elements: !3639)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3578, line: 152, size: 1600, elements: !3584)
!3584 = !{!3585, !3690, !3805, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3840}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3583, file: !3578, line: 154, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3578, line: 389, size: 7872, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3608, !3609, !3613, !3614, !3615, !3616, !3617, !3618, !3636, !3637, !3641, !3642, !3643, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3677, !3680, !3681, !3688}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3587, file: !3578, line: 391, baseType: !3583, size: 1600)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3587, file: !3578, line: 393, baseType: !56, size: 64, offset: 1600)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3587, file: !3578, line: 401, baseType: !39, size: 32, offset: 1664)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3587, file: !3578, line: 404, baseType: !39, size: 32, offset: 1696)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3587, file: !3578, line: 417, baseType: !39, size: 32, offset: 1728)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3587, file: !3578, line: 418, baseType: !39, size: 32, offset: 1760)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3587, file: !3578, line: 419, baseType: !39, size: 32, offset: 1792)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3587, file: !3578, line: 432, baseType: !39, size: 32, offset: 1824)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3587, file: !3578, line: 433, baseType: !39, size: 32, offset: 1856)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3587, file: !3578, line: 434, baseType: !39, size: 32, offset: 1888)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3587, file: !3578, line: 436, baseType: !39, size: 32, offset: 1920)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3587, file: !3578, line: 439, baseType: !22, size: 32, offset: 1952)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3587, file: !3578, line: 441, baseType: !1814, size: 64, offset: 1984)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3587, file: !3578, line: 442, baseType: !3603, size: 448, offset: 2048)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3578, line: 138, size: 448, elements: !3604)
!3604 = !{!3605, !3606, !3607}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3603, file: !3578, line: 140, baseType: !1814, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3603, file: !3578, line: 141, baseType: !56, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3603, file: !3578, line: 142, baseType: !2156, size: 320, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3587, file: !3578, line: 443, baseType: !3603, size: 448, offset: 2496)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3587, file: !3578, line: 446, baseType: !3610, offset: 2944)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3603, elements: !3611)
!3611 = !{!3612}
!3612 = !DISubrange(count: 0)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3587, file: !3578, line: 455, baseType: !110, size: 16, offset: 2944)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3587, file: !3578, line: 456, baseType: !110, size: 16, offset: 2960)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3587, file: !3578, line: 457, baseType: !110, size: 16, offset: 2976)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3587, file: !3578, line: 458, baseType: !110, size: 16, offset: 2992)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3587, file: !3578, line: 461, baseType: !3581, size: 896, offset: 3008)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3587, file: !3578, line: 463, baseType: !3619, size: 64, offset: 3904)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3578, line: 537, size: 41664, elements: !3621)
!3621 = !{!3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3635}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3620, file: !3578, line: 538, baseType: !1834, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3620, file: !3578, line: 541, baseType: !22, size: 32, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3620, file: !3578, line: 544, baseType: !39, size: 32, offset: 96)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3620, file: !3578, line: 547, baseType: !114, size: 128, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3620, file: !3578, line: 548, baseType: !329, size: 128, align: 64, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3620, file: !3578, line: 555, baseType: !3587, size: 7872, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3620, file: !3578, line: 558, baseType: !3586, size: 64, offset: 8256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3620, file: !3578, line: 561, baseType: !66, size: 32, offset: 8320)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3620, file: !3578, line: 564, baseType: !22, size: 32, offset: 8352)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3620, file: !3578, line: 567, baseType: !3632, size: 32768, offset: 8384)
!3632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !3633)
!3633 = !{!3634}
!3634 = !DISubrange(count: 4096)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3620, file: !3578, line: 570, baseType: !3096, size: 512, offset: 41152)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3587, file: !3578, line: 469, baseType: !114, size: 128, offset: 3968)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3587, file: !3578, line: 478, baseType: !3638, size: 1792, offset: 4096)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1792, elements: !3639)
!3639 = !{!3640}
!3640 = !DISubrange(count: 14)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3587, file: !3578, line: 487, baseType: !3586, size: 64, offset: 5888)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3587, file: !3578, line: 488, baseType: !3586, size: 64, offset: 5952)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3587, file: !3578, line: 491, baseType: !3644, size: 64, offset: 6016)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3578, line: 327, size: 896, elements: !3646)
!3646 = !{!3647, !3650, !3660, !3661, !3662, !3663, !3664}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3645, file: !3578, line: 332, baseType: !3648)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3649, line: 64, elements: !1362)
!3649 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3645, file: !3578, line: 333, baseType: !3651, size: 192)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3578, line: 299, size: 192, elements: !3652)
!3652 = !{!3653}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3651, file: !3578, line: 300, baseType: !3654, size: 192)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3655, line: 17, size: 192, elements: !3656)
!3655 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3656 = !{!3657, !3658, !3659}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3654, file: !3655, line: 18, baseType: !308, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3654, file: !3655, line: 19, baseType: !308, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3654, file: !3655, line: 20, baseType: !310, size: 64, offset: 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3645, file: !3578, line: 339, baseType: !3651, size: 192, offset: 192)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3645, file: !3578, line: 347, baseType: !3651, size: 192, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3645, file: !3578, line: 353, baseType: !3651, size: 192, offset: 576)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3645, file: !3578, line: 366, baseType: !3586, size: 64, offset: 768)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3645, file: !3578, line: 367, baseType: !3586, size: 64, offset: 832)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3587, file: !3578, line: 492, baseType: !114, size: 128, offset: 6080)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3587, file: !3578, line: 495, baseType: !3651, size: 192, offset: 6208)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3587, file: !3578, line: 496, baseType: !3651, size: 192, offset: 6400)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3587, file: !3578, line: 497, baseType: !3483, size: 192, offset: 6592)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3587, file: !3578, line: 503, baseType: !114, size: 128, offset: 6784)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3587, file: !3578, line: 504, baseType: !707, size: 256, offset: 6912)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3587, file: !3578, line: 507, baseType: !71, size: 192, offset: 7168)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3587, file: !3578, line: 510, baseType: !1029, size: 256, offset: 7360)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3587, file: !3578, line: 513, baseType: !3674, size: 64, offset: 7616)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3676, line: 214, elements: !1362)
!3676 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3587, file: !3578, line: 516, baseType: !3678, offset: 7680)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3679, line: 76, elements: !1362)
!3679 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3587, file: !3578, line: 519, baseType: !66, size: 32, offset: 7680)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3587, file: !3578, line: 522, baseType: !3682, size: 128, offset: 7712)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3578, line: 370, size: 128, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3682, file: !3578, line: 372, baseType: !897, size: 8)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3682, file: !3578, line: 375, baseType: !39, size: 32, offset: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3682, file: !3578, line: 380, baseType: !39, size: 32, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3682, file: !3578, line: 386, baseType: !39, size: 32, offset: 96)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3587, file: !3578, line: 529, baseType: !3689, offset: 7872)
!3689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3586, elements: !781)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3583, file: !3578, line: 157, baseType: !3691, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3578, line: 669, size: 1984, elements: !3693)
!3693 = !{!3694, !3698, !3702, !3706, !3707, !3708, !3709, !3713, !3717, !3718, !3724, !3728, !3729, !3730, !3734, !3738, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3765, !3766, !3803, !3804}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3692, file: !3578, line: 670, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!3582, !3582}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3692, file: !3578, line: 671, baseType: !3699, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!39, !3582}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3692, file: !3578, line: 672, baseType: !3703, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3582}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3692, file: !3578, line: 673, baseType: !3703, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3692, file: !3578, line: 674, baseType: !3703, size: 64, offset: 256)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3692, file: !3578, line: 675, baseType: !3703, size: 64, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3692, file: !3578, line: 676, baseType: !3710, size: 64, offset: 384)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !3582, !39}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3692, file: !3578, line: 677, baseType: !3714, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!39, !1698, !3582}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3692, file: !3578, line: 679, baseType: !3714, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3692, file: !3578, line: 682, baseType: !3719, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!39, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3578, line: 30, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3692, file: !3578, line: 683, baseType: !3725, size: 64, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3722}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3692, file: !3578, line: 684, baseType: !3725, size: 64, offset: 704)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3692, file: !3578, line: 685, baseType: !2259, size: 64, offset: 768)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3692, file: !3578, line: 686, baseType: !3731, size: 64, offset: 832)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!39, !3170, !3576}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3692, file: !3578, line: 688, baseType: !3735, size: 64, offset: 896)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{null, !3170, !3576}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3692, file: !3578, line: 689, baseType: !3739, size: 64, offset: 960)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !3170}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3692, file: !3578, line: 690, baseType: !3739, size: 64, offset: 1024)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3692, file: !3578, line: 691, baseType: !3739, size: 64, offset: 1088)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3692, file: !3578, line: 692, baseType: !3703, size: 64, offset: 1152)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3692, file: !3578, line: 694, baseType: !897, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3692, file: !3578, line: 707, baseType: !897, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3692, file: !3578, line: 719, baseType: !897, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3692, file: !3578, line: 722, baseType: !39, size: 32, offset: 1248)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3692, file: !3578, line: 723, baseType: !34, size: 64, offset: 1280)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3692, file: !3578, line: 726, baseType: !34, size: 64, offset: 1344)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3692, file: !3578, line: 729, baseType: !3619, size: 64, offset: 1408)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3692, file: !3578, line: 732, baseType: !3753, size: 192, offset: 1472)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3754, line: 19, size: 192, elements: !3755)
!3754 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3755 = !{!3756, !3763, !3764}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3753, file: !3754, line: 20, baseType: !3757, size: 128)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3758, line: 296, size: 128, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3759 = !{!3760, !3761, !3762}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3757, file: !3758, line: 297, baseType: !76, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3757, file: !3758, line: 299, baseType: !1555, size: 32, offset: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3757, file: !3758, line: 300, baseType: !37, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3753, file: !3754, line: 21, baseType: !22, size: 32, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3753, file: !3754, line: 22, baseType: !22, size: 32, offset: 160)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3692, file: !3578, line: 738, baseType: !114, size: 128, offset: 1664)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3692, file: !3578, line: 744, baseType: !3767, size: 64, offset: 1792)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3578, line: 580, size: 1728, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3779, !3780, !3781, !3785, !3789, !3790, !3791, !3792, !3793, !3797, !3801, !3802}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3768, file: !3578, line: 586, baseType: !3096, size: 512)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3768, file: !3578, line: 587, baseType: !56, size: 64, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3768, file: !3578, line: 593, baseType: !52, size: 64, offset: 576)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3768, file: !3578, line: 596, baseType: !22, size: 32, offset: 640)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3768, file: !3578, line: 604, baseType: !22, size: 32, offset: 672)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3768, file: !3578, line: 610, baseType: !3691, size: 64, offset: 704)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3768, file: !3578, line: 611, baseType: !114, size: 128, offset: 768)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3768, file: !3578, line: 612, baseType: !3778, size: 64, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3768, file: !3578, line: 614, baseType: !1850, size: 64, offset: 960)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3768, file: !3578, line: 615, baseType: !1870, size: 64, offset: 1024)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3768, file: !3578, line: 621, baseType: !3782, size: 64, offset: 1088)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!308, !3582, !3767}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3768, file: !3578, line: 625, baseType: !3786, size: 64, offset: 1152)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!704, !3582, !3767}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3768, file: !3578, line: 628, baseType: !1728, size: 64, offset: 1216)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3768, file: !3578, line: 631, baseType: !1716, size: 64, offset: 1280)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3768, file: !3578, line: 632, baseType: !1724, size: 64, offset: 1344)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3768, file: !3578, line: 633, baseType: !1720, size: 64, offset: 1408)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3768, file: !3578, line: 640, baseType: !3794, size: 64, offset: 1472)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!39, !3582, !3767, !308}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3768, file: !3578, line: 645, baseType: !3798, size: 64, offset: 1536)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!39, !3582, !3767, !704}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3768, file: !3578, line: 654, baseType: !1878, size: 64, offset: 1600)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3768, file: !3578, line: 657, baseType: !1885, size: 64, offset: 1664)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3692, file: !3578, line: 745, baseType: !3767, size: 64, offset: 1856)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3692, file: !3578, line: 754, baseType: !22, size: 32, offset: 1920)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3583, file: !3578, line: 160, baseType: !3806, size: 128, offset: 128)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3807, line: 105, size: 128, elements: !3808)
!3807 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3808 = !{!3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3806, file: !3807, line: 110, baseType: !56, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3806, file: !3807, line: 118, baseType: !3811, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3807, line: 95, size: 448, elements: !3813)
!3813 = !{!3814, !3815, !3821, !3822, !3823, !3824, !3825}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3812, file: !3807, line: 96, baseType: !698, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3812, file: !3807, line: 97, baseType: !3816, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3807, line: 60, baseType: !3818)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3812, file: !3807, line: 98, baseType: !3816, size: 64, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3812, file: !3807, line: 99, baseType: !897, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3812, file: !3807, line: 100, baseType: !897, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3812, file: !3807, line: 101, baseType: !329, size: 128, align: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3812, file: !3807, line: 102, baseType: !3820, size: 64, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3583, file: !3578, line: 163, baseType: !114, size: 128, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3583, file: !3578, line: 164, baseType: !114, size: 128, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3583, file: !3578, line: 167, baseType: !114, size: 128, offset: 512)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3583, file: !3578, line: 173, baseType: !39, size: 32, offset: 640)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3583, file: !3578, line: 175, baseType: !22, size: 32, offset: 672)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3583, file: !3578, line: 183, baseType: !308, size: 64, offset: 704)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3583, file: !3578, line: 189, baseType: !66, size: 32, offset: 768)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3583, file: !3578, line: 192, baseType: !1029, size: 256, offset: 832)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3583, file: !3578, line: 193, baseType: !3835, size: 448, offset: 1088)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1030, line: 120, size: 448, elements: !3836)
!3836 = !{!3837, !3838, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3835, file: !1030, line: 121, baseType: !1029, size: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3835, file: !1030, line: 122, baseType: !329, size: 128, align: 64, offset: 256)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3835, file: !1030, line: 125, baseType: !2218, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3583, file: !3578, line: 199, baseType: !3582, size: 64, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3577, file: !3578, line: 218, baseType: !750, size: 32, offset: 896)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3577, file: !3578, line: 226, baseType: !3576, size: 64, offset: 960)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3577, file: !3578, line: 229, baseType: !3586, size: 64, offset: 1024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3577, file: !3578, line: 232, baseType: !39, size: 32, offset: 1088)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3577, file: !3578, line: 241, baseType: !114, size: 128, offset: 1152)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3577, file: !3578, line: 242, baseType: !114, size: 128, offset: 1280)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3577, file: !3578, line: 243, baseType: !114, size: 128, offset: 1408)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3577, file: !3578, line: 246, baseType: !114, size: 128, offset: 1536)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3577, file: !3578, line: 255, baseType: !3638, size: 1792, offset: 1664)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3577, file: !3578, line: 258, baseType: !114, size: 128, offset: 3456)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3577, file: !3578, line: 259, baseType: !114, size: 128, offset: 3584)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3577, file: !3578, line: 265, baseType: !763, size: 128, offset: 3712)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3577, file: !3578, line: 271, baseType: !114, size: 128, offset: 3840)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3577, file: !3578, line: 277, baseType: !114, size: 128, offset: 3968)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3577, file: !3578, line: 278, baseType: !114, size: 128, offset: 4096)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3577, file: !3578, line: 279, baseType: !114, size: 128, offset: 4224)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3577, file: !3578, line: 288, baseType: !3586, size: 64, offset: 4352)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3577, file: !3578, line: 289, baseType: !3586, size: 64, offset: 4416)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3577, file: !3578, line: 290, baseType: !3576, size: 64, offset: 4480)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3577, file: !3578, line: 293, baseType: !897, size: 8, offset: 4544)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3577, file: !3578, line: 296, baseType: !329, size: 128, align: 64, offset: 4608)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3171, file: !1675, line: 1110, baseType: !3863, size: 64, offset: 15360)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3865, line: 93, size: 8768, elements: !3866)
!3865 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3915, !3924, !3925, !3927, !3928, !3929, !3932, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3970, !3971, !3978, !3988, !4051, !4052, !4055, !4056, !4057, !4058, !4059, !4060}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3864, file: !3865, line: 94, baseType: !750, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3864, file: !3865, line: 95, baseType: !66, size: 32, offset: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3864, file: !3865, line: 96, baseType: !39, size: 32, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3864, file: !3865, line: 97, baseType: !39, size: 32, offset: 96)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3864, file: !3865, line: 98, baseType: !114, size: 128, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3864, file: !3865, line: 100, baseType: !71, size: 192, offset: 256)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3864, file: !3865, line: 103, baseType: !3170, size: 64, offset: 448)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3864, file: !3865, line: 106, baseType: !3875, size: 192, offset: 512)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3876, line: 32, size: 192, elements: !3877)
!3876 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3877 = !{!3878, !3879}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3875, file: !3876, line: 33, baseType: !114, size: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3875, file: !3876, line: 34, baseType: !3880, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3881, line: 25, baseType: !3882)
!3881 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3881, line: 23, size: 64, elements: !3883)
!3883 = !{!3884}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3882, file: !3881, line: 24, baseType: !1614, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3864, file: !3865, line: 109, baseType: !759, size: 64, offset: 704)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3864, file: !3865, line: 112, baseType: !39, size: 32, offset: 768)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3864, file: !3865, line: 114, baseType: !39, size: 32, offset: 800)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3864, file: !3865, line: 115, baseType: !3170, size: 64, offset: 832)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3864, file: !3865, line: 118, baseType: !39, size: 32, offset: 896)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3864, file: !3865, line: 119, baseType: !22, size: 32, offset: 928)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3864, file: !3865, line: 121, baseType: !3892, size: 64, offset: 960)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3865, line: 80, size: 448, elements: !3894)
!3894 = !{!3895, !3896, !3902}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3893, file: !3865, line: 81, baseType: !66, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3893, file: !3865, line: 82, baseType: !3897, size: 128, offset: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3865, line: 75, size: 128, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3897, file: !3865, line: 76, baseType: !3170, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3897, file: !3865, line: 77, baseType: !3901, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3893, file: !3865, line: 83, baseType: !1068, size: 256, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3864, file: !3865, line: 132, baseType: !22, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3864, file: !3865, line: 133, baseType: !22, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3864, file: !3865, line: 138, baseType: !22, size: 32, offset: 1056)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3864, file: !3865, line: 139, baseType: !114, size: 128, offset: 1088)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3864, file: !3865, line: 142, baseType: !2814, size: 512, offset: 1216)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3864, file: !3865, line: 143, baseType: !2794, size: 64, offset: 1728)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3864, file: !3865, line: 150, baseType: !3910, size: 256, offset: 1792)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3911, size: 256, elements: !2047)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3865, line: 38, size: 128, elements: !3912)
!3912 = !{!3913, !3914}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3911, file: !3865, line: 39, baseType: !308, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3911, file: !3865, line: 40, baseType: !308, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3864, file: !3865, line: 156, baseType: !3916, size: 192, offset: 2048)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3865, line: 66, size: 192, elements: !3917)
!3917 = !{!3918}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3916, file: !3865, line: 67, baseType: !3919, size: 192)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3865, line: 47, size: 192, elements: !3920)
!3920 = !{!3921, !3922, !3923}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3919, file: !3865, line: 48, baseType: !700, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3919, file: !3865, line: 49, baseType: !700, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3919, file: !3865, line: 50, baseType: !700, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3864, file: !3865, line: 160, baseType: !3495, size: 640, offset: 2240)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3864, file: !3865, line: 163, baseType: !3926, size: 256, offset: 2880)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 256, elements: !768)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3864, file: !3865, line: 169, baseType: !746, size: 64, offset: 3136)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3864, file: !3865, line: 172, baseType: !39, size: 32, offset: 3200)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3864, file: !3865, line: 174, baseType: !3930, size: 64, offset: 3264)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3865, line: 174, flags: DIFlagFwdDecl)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3864, file: !3865, line: 185, baseType: !3933, size: 64, offset: 3328)
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !412, line: 860, baseType: !3934)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 853, size: 64, elements: !3935)
!3935 = !{!3936, !3937}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3934, file: !412, line: 858, baseType: !411, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3934, file: !412, line: 859, baseType: !76, size: 32, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3864, file: !3865, line: 186, baseType: !308, size: 64, offset: 3392)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3864, file: !3865, line: 186, baseType: !308, size: 64, offset: 3456)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3864, file: !3865, line: 186, baseType: !308, size: 64, offset: 3520)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3864, file: !3865, line: 186, baseType: !308, size: 64, offset: 3584)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3864, file: !3865, line: 187, baseType: !308, size: 64, offset: 3648)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3864, file: !3865, line: 188, baseType: !308, size: 64, offset: 3712)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3864, file: !3865, line: 189, baseType: !3483, size: 192, offset: 3776)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3864, file: !3865, line: 190, baseType: !56, size: 64, offset: 3968)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3864, file: !3865, line: 190, baseType: !56, size: 64, offset: 4032)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3864, file: !3865, line: 190, baseType: !56, size: 64, offset: 4096)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3864, file: !3865, line: 190, baseType: !56, size: 64, offset: 4160)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3864, file: !3865, line: 191, baseType: !56, size: 64, offset: 4224)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3864, file: !3865, line: 191, baseType: !56, size: 64, offset: 4288)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3864, file: !3865, line: 191, baseType: !56, size: 64, offset: 4352)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3864, file: !3865, line: 191, baseType: !56, size: 64, offset: 4416)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3864, file: !3865, line: 192, baseType: !56, size: 64, offset: 4480)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3864, file: !3865, line: 192, baseType: !56, size: 64, offset: 4544)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3864, file: !3865, line: 192, baseType: !56, size: 64, offset: 4608)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3864, file: !3865, line: 192, baseType: !56, size: 64, offset: 4672)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3864, file: !3865, line: 193, baseType: !56, size: 64, offset: 4736)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3864, file: !3865, line: 193, baseType: !56, size: 64, offset: 4800)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3864, file: !3865, line: 194, baseType: !3960, size: 448, offset: 4864)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3961, line: 12, size: 448, elements: !3962)
!3961 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968, !3969}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3960, file: !3961, line: 15, baseType: !308, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3960, file: !3961, line: 17, baseType: !308, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3960, file: !3961, line: 19, baseType: !308, size: 64, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3960, file: !3961, line: 21, baseType: !308, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3960, file: !3961, line: 29, baseType: !308, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3960, file: !3961, line: 35, baseType: !308, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3960, file: !3961, line: 44, baseType: !308, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3864, file: !3865, line: 202, baseType: !310, size: 64, offset: 5312)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3864, file: !3865, line: 213, baseType: !3972, size: 2048, offset: 5376)
!3972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3973, size: 2048, elements: !3518)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3974, line: 43, size: 128, elements: !3975)
!3974 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3975 = !{!3976, !3977}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3973, file: !3974, line: 44, baseType: !55, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3973, file: !3974, line: 45, baseType: !55, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3864, file: !3865, line: 216, baseType: !3979, size: 448, offset: 7424)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3865, line: 30, size: 448, elements: !3980)
!3980 = !{!3981, !3982, !3983, !3984, !3985, !3986, !3987}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3979, file: !3865, line: 31, baseType: !39, size: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3979, file: !3865, line: 32, baseType: !306, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3979, file: !3865, line: 33, baseType: !56, size: 64, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3979, file: !3865, line: 34, baseType: !308, size: 64, offset: 192)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3979, file: !3865, line: 34, baseType: !308, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3979, file: !3865, line: 35, baseType: !56, size: 64, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3979, file: !3865, line: 35, baseType: !56, size: 64, offset: 384)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3864, file: !3865, line: 219, baseType: !3989, size: 64, offset: 7872)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3991, line: 41, size: 3456, elements: !3992)
!3991 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4007, !4008, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3990, file: !3991, line: 47, baseType: !111, size: 16)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3990, file: !3991, line: 48, baseType: !440, size: 32, offset: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3990, file: !3991, line: 54, baseType: !102, size: 8, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3990, file: !3991, line: 55, baseType: !102, size: 8, offset: 72)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3990, file: !3991, line: 73, baseType: !309, size: 64, align: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3990, file: !3991, line: 74, baseType: !309, size: 64, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3990, file: !3991, line: 81, baseType: !309, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3990, file: !3991, line: 82, baseType: !309, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3990, file: !3991, line: 85, baseType: !309, size: 64, offset: 384)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3990, file: !3991, line: 86, baseType: !309, size: 64, offset: 448)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3990, file: !3991, line: 94, baseType: !309, size: 64, offset: 512)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3990, file: !3991, line: 102, baseType: !309, size: 64, offset: 576)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3990, file: !3991, line: 107, baseType: !4006, size: 256, offset: 640)
!4006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !449)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3990, file: !3991, line: 108, baseType: !102, size: 8, align: 64, offset: 896)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3990, file: !3991, line: 110, baseType: !4009, size: 24, offset: 904)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 24, elements: !608)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3990, file: !3991, line: 111, baseType: !440, size: 32, align: 64, offset: 960)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3990, file: !3991, line: 113, baseType: !440, size: 32, offset: 992)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3990, file: !3991, line: 114, baseType: !440, size: 32, offset: 1024)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3990, file: !3991, line: 115, baseType: !440, size: 32, offset: 1056)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3990, file: !3991, line: 117, baseType: !440, size: 32, offset: 1088)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3990, file: !3991, line: 118, baseType: !309, size: 64, align: 64, offset: 1152)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3990, file: !3991, line: 120, baseType: !309, size: 64, offset: 1216)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3990, file: !3991, line: 121, baseType: !309, size: 64, offset: 1280)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3990, file: !3991, line: 122, baseType: !309, size: 64, offset: 1344)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3990, file: !3991, line: 123, baseType: !309, size: 64, offset: 1408)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3990, file: !3991, line: 133, baseType: !309, size: 64, offset: 1472)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3990, file: !3991, line: 137, baseType: !309, size: 64, offset: 1536)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3990, file: !3991, line: 142, baseType: !309, size: 64, offset: 1600)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3990, file: !3991, line: 143, baseType: !309, size: 64, offset: 1664)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3990, file: !3991, line: 146, baseType: !309, size: 64, offset: 1728)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3990, file: !3991, line: 147, baseType: !309, size: 64, offset: 1792)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3990, file: !3991, line: 148, baseType: !309, size: 64, offset: 1856)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3990, file: !3991, line: 149, baseType: !309, size: 64, offset: 1920)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3990, file: !3991, line: 154, baseType: !309, size: 64, offset: 1984)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3990, file: !3991, line: 155, baseType: !309, size: 64, offset: 2048)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3990, file: !3991, line: 156, baseType: !309, size: 64, offset: 2112)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3990, file: !3991, line: 158, baseType: !309, size: 64, offset: 2176)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3990, file: !3991, line: 159, baseType: !309, size: 64, offset: 2240)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3990, file: !3991, line: 162, baseType: !309, size: 64, offset: 2304)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3990, file: !3991, line: 163, baseType: !309, size: 64, offset: 2368)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3990, file: !3991, line: 164, baseType: !309, size: 64, offset: 2432)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3990, file: !3991, line: 167, baseType: !309, size: 64, offset: 2496)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3990, file: !3991, line: 168, baseType: !309, size: 64, offset: 2560)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3990, file: !3991, line: 171, baseType: !309, size: 64, offset: 2624)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3990, file: !3991, line: 172, baseType: !309, size: 64, offset: 2688)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3990, file: !3991, line: 175, baseType: !309, size: 64, offset: 2752)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3990, file: !3991, line: 178, baseType: !309, size: 64, offset: 2816)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3990, file: !3991, line: 179, baseType: !309, size: 64, offset: 2880)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3990, file: !3991, line: 182, baseType: !440, size: 32, offset: 2944)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3990, file: !3991, line: 186, baseType: !309, size: 64, align: 64, offset: 3008)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3990, file: !3991, line: 194, baseType: !309, size: 64, offset: 3072)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3990, file: !3991, line: 195, baseType: !309, size: 64, offset: 3136)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3990, file: !3991, line: 199, baseType: !309, size: 64, offset: 3200)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3990, file: !3991, line: 200, baseType: !309, size: 64, offset: 3264)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3990, file: !3991, line: 203, baseType: !309, size: 64, offset: 3328)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3990, file: !3991, line: 204, baseType: !309, size: 64, offset: 3392)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3864, file: !3865, line: 222, baseType: !22, size: 32, offset: 7936)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3864, file: !3865, line: 223, baseType: !4053, size: 64, offset: 8000)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3865, line: 223, flags: DIFlagFwdDecl)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3864, file: !3865, line: 230, baseType: !897, size: 8, offset: 8064)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3864, file: !3865, line: 231, baseType: !866, size: 16, offset: 8080)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3864, file: !3865, line: 232, baseType: !866, size: 16, offset: 8096)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3864, file: !3865, line: 234, baseType: !1341, size: 64, offset: 8128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3864, file: !3865, line: 237, baseType: !707, size: 256, offset: 8192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3864, file: !3865, line: 243, baseType: !838, size: 320, offset: 8448)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3171, file: !1675, line: 1111, baseType: !4062, size: 64, offset: 15424)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3865, line: 20, size: 16640, elements: !4064)
!4064 = !{!4065, !4066, !4067, !4068}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4063, file: !3865, line: 21, baseType: !76, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4063, file: !3865, line: 22, baseType: !750, size: 32, offset: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4063, file: !3865, line: 23, baseType: !71, size: 192, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4063, file: !3865, line: 24, baseType: !4069, size: 16384, offset: 256)
!4069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4070, size: 16384, elements: !612)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3876, line: 51, size: 256, elements: !4071)
!4071 = !{!4072}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4070, file: !3876, line: 52, baseType: !4073, size: 256)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3876, line: 37, size: 256, elements: !4074)
!4074 = !{!4075, !4082, !4083, !4087}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4073, file: !3876, line: 39, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4077, line: 83, baseType: !4078)
!4077 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4077, line: 82, baseType: !4080)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !39}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4073, file: !3876, line: 40, baseType: !56, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4073, file: !3876, line: 46, baseType: !4084, size: 64, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4077, line: 86, baseType: !4085)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4077, line: 85, baseType: !2260)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4073, file: !3876, line: 48, baseType: !3880, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3171, file: !1675, line: 1112, baseType: !3880, size: 64, offset: 15488)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3171, file: !1675, line: 1113, baseType: !3880, size: 64, offset: 15552)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3171, file: !1675, line: 1115, baseType: !3880, size: 64, offset: 15616)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3171, file: !1675, line: 1116, baseType: !3875, size: 192, offset: 15680)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3171, file: !1675, line: 1117, baseType: !56, size: 64, offset: 15872)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3171, file: !1675, line: 1118, baseType: !52, size: 64, offset: 15936)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3171, file: !1675, line: 1119, baseType: !22, size: 32, offset: 16000)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3171, file: !1675, line: 1121, baseType: !332, size: 64, offset: 16064)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3171, file: !1675, line: 1125, baseType: !4097, size: 64, offset: 16128)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1675, line: 43, flags: DIFlagFwdDecl)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3171, file: !1675, line: 1127, baseType: !376, size: 32, offset: 16192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3171, file: !1675, line: 1128, baseType: !22, size: 32, offset: 16224)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3171, file: !1675, line: 1130, baseType: !4102, size: 128, offset: 16256)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4103, line: 37, size: 128, elements: !4104)
!4103 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4104 = !{!4105, !4106, !4107}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4102, file: !4103, line: 38, baseType: !39, size: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4102, file: !4103, line: 39, baseType: !66, size: 32, offset: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4102, file: !4103, line: 40, baseType: !4108, size: 64, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4103, line: 24, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3171, file: !1675, line: 1131, baseType: !4111, size: 256, offset: 16384)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4112, line: 12, size: 256, elements: !4113)
!4112 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4113 = !{!4114, !4115, !4116, !4117}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4111, file: !4112, line: 13, baseType: !508, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4111, file: !4112, line: 14, baseType: !56, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4111, file: !4112, line: 15, baseType: !56, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4111, file: !4112, line: 16, baseType: !897, size: 8, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3171, file: !1675, line: 1134, baseType: !308, size: 64, offset: 16640)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3171, file: !1675, line: 1135, baseType: !308, size: 64, offset: 16704)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3171, file: !1675, line: 1138, baseType: !76, size: 32, offset: 16768)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3171, file: !1675, line: 1141, baseType: !712, size: 32, offset: 16800)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3171, file: !1675, line: 1143, baseType: !4123, size: 64, offset: 16832)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1675, line: 735, size: 64, elements: !4124)
!4124 = !{!4125}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4123, file: !1675, line: 736, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3171, file: !1675, line: 1147, baseType: !2871, size: 128, offset: 16896)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3171, file: !1675, line: 1149, baseType: !3170, size: 64, offset: 17024)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3171, file: !1675, line: 1151, baseType: !4130, size: 64, offset: 17088)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1675, line: 1151, flags: DIFlagFwdDecl)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3171, file: !1675, line: 1188, baseType: !37, size: 64, offset: 17152)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3171, file: !1675, line: 1191, baseType: !4134, size: 64, offset: 17216)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1675, line: 44, flags: DIFlagFwdDecl)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3171, file: !1675, line: 1194, baseType: !4137, size: 64, offset: 17280)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1675, line: 45, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3171, file: !1675, line: 1197, baseType: !4140, size: 64, offset: 17344)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4142, line: 155, size: 64, elements: !4143)
!4142 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4143 = !{!4144}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4141, file: !4142, line: 157, baseType: !56, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3171, file: !1675, line: 1199, baseType: !4146, size: 64, offset: 17408)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2588, line: 99, size: 128, elements: !4148)
!4148 = !{!4149, !4150, !4151}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4147, file: !2588, line: 100, baseType: !698, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4147, file: !2588, line: 101, baseType: !66, size: 32, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4147, file: !2588, line: 103, baseType: !43, size: 16, offset: 96)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3171, file: !1675, line: 1202, baseType: !4153, size: 64, offset: 17472)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1675, line: 48, flags: DIFlagFwdDecl)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3171, file: !1675, line: 1205, baseType: !56, size: 64, offset: 17536)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3171, file: !1675, line: 1206, baseType: !4157, size: 64, offset: 17600)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3876, line: 14, baseType: !4159)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3876, line: 12, size: 384, elements: !4160)
!4160 = !{!4161}
!4161 = !DIDerivedType(tag: DW_TAG_member, scope: !4159, file: !3876, line: 13, baseType: !4162, size: 384)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4159, file: !3876, line: 13, size: 384, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4162, file: !3876, line: 13, baseType: !39, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4162, file: !3876, line: 13, baseType: !39, size: 32, offset: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4162, file: !3876, line: 13, baseType: !39, size: 32, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4162, file: !3876, line: 13, baseType: !4168, size: 256, offset: 128)
!4168 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4169, line: 37, size: 256, elements: !4170)
!4169 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4170 = !{!4171, !4176, !4189, !4195, !4204, !4231, !4236}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4168, file: !4169, line: 42, baseType: !4172, size: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4168, file: !4169, line: 39, size: 64, elements: !4173)
!4173 = !{!4174, !4175}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4172, file: !4169, line: 40, baseType: !3460, size: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4172, file: !4169, line: 41, baseType: !382, size: 32, offset: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4168, file: !4169, line: 50, baseType: !4177, size: 192)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4168, file: !4169, line: 45, size: 192, elements: !4178)
!4178 = !{!4179, !4181, !4182, !4188}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4177, file: !4169, line: 46, baseType: !4180, size: 32)
!4180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !54, line: 95, baseType: !39)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4177, file: !4169, line: 47, baseType: !39, size: 32, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4177, file: !4169, line: 48, baseType: !4183, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4169, line: 11, baseType: !4184)
!4184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4169, line: 8, size: 64, elements: !4185)
!4185 = !{!4186, !4187}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4184, file: !4169, line: 9, baseType: !39, size: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4184, file: !4169, line: 10, baseType: !37, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4177, file: !4169, line: 49, baseType: !39, size: 32, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4168, file: !4169, line: 57, baseType: !4190, size: 128)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4168, file: !4169, line: 53, size: 128, elements: !4191)
!4191 = !{!4192, !4193, !4194}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4190, file: !4169, line: 54, baseType: !3460, size: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4190, file: !4169, line: 55, baseType: !382, size: 32, offset: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4190, file: !4169, line: 56, baseType: !4183, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4168, file: !4169, line: 66, baseType: !4196, size: 256)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4168, file: !4169, line: 60, size: 256, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4203}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4196, file: !4169, line: 61, baseType: !3460, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4196, file: !4169, line: 62, baseType: !382, size: 32, offset: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4196, file: !4169, line: 63, baseType: !39, size: 32, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4196, file: !4169, line: 64, baseType: !4202, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !54, line: 94, baseType: !641)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4196, file: !4169, line: 65, baseType: !4202, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4168, file: !4169, line: 105, baseType: !4205, size: 256)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4168, file: !4169, line: 69, size: 256, elements: !4206)
!4206 = !{!4207, !4208}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4205, file: !4169, line: 70, baseType: !37, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, scope: !4205, file: !4169, line: 79, baseType: !4209, size: 192, offset: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4205, file: !4169, line: 79, size: 192, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4220, !4225}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4209, file: !4169, line: 81, baseType: !39, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4209, file: !4169, line: 86, baseType: !866, size: 16)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4209, file: !4169, line: 92, baseType: !4214, size: 192)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4209, file: !4169, line: 88, size: 192, elements: !4215)
!4215 = !{!4216, !4218, !4219}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4214, file: !4169, line: 89, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2855)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4214, file: !4169, line: 90, baseType: !37, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4214, file: !4169, line: 91, baseType: !37, size: 64, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4209, file: !4169, line: 97, baseType: !4221, size: 96)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4209, file: !4169, line: 94, size: 96, elements: !4222)
!4222 = !{!4223, !4224}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4221, file: !4169, line: 95, baseType: !4217, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4221, file: !4169, line: 96, baseType: !440, size: 32, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4209, file: !4169, line: 103, baseType: !4226, size: 128)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4209, file: !4169, line: 99, size: 128, elements: !4227)
!4227 = !{!4228, !4229, !4230}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4226, file: !4169, line: 100, baseType: !56, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4226, file: !4169, line: 101, baseType: !440, size: 32, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4226, file: !4169, line: 102, baseType: !440, size: 32, offset: 96)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4168, file: !4169, line: 111, baseType: !4232, size: 128)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4168, file: !4169, line: 108, size: 128, elements: !4233)
!4233 = !{!4234, !4235}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4232, file: !4169, line: 109, baseType: !306, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4232, file: !4169, line: 110, baseType: !39, size: 32, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4168, file: !4169, line: 118, baseType: !4237, size: 128)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4168, file: !4169, line: 114, size: 128, elements: !4238)
!4238 = !{!4239, !4240, !4241}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4237, file: !4169, line: 115, baseType: !37, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4237, file: !4169, line: 116, baseType: !39, size: 32, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4237, file: !4169, line: 117, baseType: !22, size: 32, offset: 96)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3171, file: !1675, line: 1208, baseType: !3960, size: 448, offset: 17664)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3171, file: !1675, line: 1215, baseType: !308, size: 64, offset: 18112)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3171, file: !1675, line: 1217, baseType: !308, size: 64, offset: 18176)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3171, file: !1675, line: 1219, baseType: !308, size: 64, offset: 18240)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3171, file: !1675, line: 1223, baseType: !1609, size: 64, offset: 18304)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3171, file: !1675, line: 1225, baseType: !411, size: 32, offset: 18368)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3171, file: !1675, line: 1226, baseType: !39, size: 32, offset: 18400)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3171, file: !1675, line: 1227, baseType: !39, size: 32, offset: 18432)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3171, file: !1675, line: 1231, baseType: !3576, size: 64, offset: 18496)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3171, file: !1675, line: 1233, baseType: !114, size: 128, offset: 18560)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3171, file: !1675, line: 1240, baseType: !4253, size: 64, offset: 18688)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1675, line: 62, flags: DIFlagFwdDecl)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3171, file: !1675, line: 1242, baseType: !4256, size: 64, offset: 18752)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1675, line: 1242, flags: DIFlagFwdDecl)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3171, file: !1675, line: 1244, baseType: !114, size: 128, offset: 18816)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3171, file: !1675, line: 1245, baseType: !4260, size: 64, offset: 18944)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1675, line: 51, flags: DIFlagFwdDecl)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3171, file: !1675, line: 1246, baseType: !707, size: 256, offset: 19008)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3171, file: !1675, line: 1247, baseType: !22, size: 32, offset: 19264)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3171, file: !1675, line: 1250, baseType: !4265, size: 64, offset: 19328)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1675, line: 57, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3171, file: !1675, line: 1251, baseType: !707, size: 256, offset: 19392)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3171, file: !1675, line: 1252, baseType: !114, size: 128, offset: 19648)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3171, file: !1675, line: 1259, baseType: !1601, size: 64, offset: 19776)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3171, file: !1675, line: 1260, baseType: !866, size: 16, offset: 19840)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3171, file: !1675, line: 1261, baseType: !866, size: 16, offset: 19856)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3171, file: !1675, line: 1314, baseType: !4273, size: 64, offset: 19904)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4275, line: 62, size: 256, align: 256, elements: !4276)
!4275 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4276 = !{!4277, !4278, !4279, !4280, !4281, !4282, !4283}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4274, file: !4275, line: 75, baseType: !440, size: 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4274, file: !4275, line: 90, baseType: !440, size: 32, offset: 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4274, file: !4275, line: 112, baseType: !309, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4274, file: !4275, line: 132, baseType: !440, size: 32, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4274, file: !4275, line: 140, baseType: !440, size: 32, offset: 160)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4274, file: !4275, line: 149, baseType: !440, size: 32, offset: 192)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4274, file: !4275, line: 154, baseType: !4284, offset: 224)
!4284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !781)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3171, file: !1675, line: 1315, baseType: !439, size: 32, offset: 19968)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3171, file: !1675, line: 1316, baseType: !439, size: 32, offset: 20000)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3171, file: !1675, line: 1321, baseType: !56, size: 64, offset: 20032)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3171, file: !1675, line: 1325, baseType: !39, size: 32, offset: 20096)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3171, file: !1675, line: 1326, baseType: !39, size: 32, offset: 20128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3171, file: !1675, line: 1327, baseType: !39, size: 32, offset: 20160)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3171, file: !1675, line: 1328, baseType: !39, size: 32, offset: 20192)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3171, file: !1675, line: 1329, baseType: !329, size: 128, align: 64, offset: 20224)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3171, file: !1675, line: 1332, baseType: !4294, size: 128, offset: 20352)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4295, line: 51, size: 128, elements: !4296)
!4295 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4296 = !{!4297, !4302, !4303}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4294, file: !4295, line: 60, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4299, line: 7, size: 64, elements: !4300)
!4299 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4300 = !{!4301}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4298, file: !4299, line: 12, baseType: !3330, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4294, file: !4295, line: 63, baseType: !897, size: 8, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4294, file: !4295, line: 70, baseType: !897, size: 8, offset: 72)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3171, file: !1675, line: 1335, baseType: !1673, size: 64, offset: 20480)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3171, file: !1675, line: 1337, baseType: !4306, size: 128, offset: 20544)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4295, line: 39, size: 128, elements: !4307)
!4307 = !{!4308, !4309, !4310}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4306, file: !4295, line: 40, baseType: !344, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4306, file: !4295, line: 42, baseType: !440, size: 32, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4306, file: !4295, line: 43, baseType: !440, size: 32, offset: 96)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3171, file: !1675, line: 1340, baseType: !4312, size: 64, offset: 20672)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1675, line: 69, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3171, file: !1675, line: 1351, baseType: !39, size: 32, offset: 20736)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3171, file: !1675, line: 1352, baseType: !39, size: 32, offset: 20768)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3171, file: !1675, line: 1354, baseType: !56, size: 64, offset: 20800)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3171, file: !1675, line: 1364, baseType: !308, size: 64, offset: 20864)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3171, file: !1675, line: 1365, baseType: !308, size: 64, offset: 20928)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3171, file: !1675, line: 1412, baseType: !56, size: 64, offset: 20992)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3171, file: !1675, line: 1453, baseType: !2583, size: 64, offset: 21056)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3171, file: !1675, line: 1457, baseType: !4322, size: 64, offset: 21120)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !261, line: 61, size: 576, elements: !4324)
!4324 = !{!4325, !4326, !4345, !4348, !4349, !4382, !4392}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4323, file: !261, line: 62, baseType: !260, size: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, scope: !4323, file: !261, line: 64, baseType: !4327, size: 192, offset: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4323, file: !261, line: 64, size: 192, elements: !4328)
!4328 = !{!4329, !4340}
!4329 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !261, line: 65, baseType: !4330, size: 192)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !261, line: 65, size: 192, elements: !4331)
!4331 = !{!4332, !4339}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4330, file: !261, line: 66, baseType: !4333, size: 128)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4334, line: 50, size: 128, elements: !4335)
!4334 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4335 = !{!4336, !4337, !4338}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4333, file: !4334, line: 52, baseType: !56, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4333, file: !4334, line: 54, baseType: !22, size: 32, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4333, file: !4334, line: 55, baseType: !22, size: 32, offset: 96)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4330, file: !261, line: 67, baseType: !56, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !261, line: 70, baseType: !4341, size: 192)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !261, line: 70, size: 192, elements: !4342)
!4342 = !{!4343, !4344}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4341, file: !261, line: 71, baseType: !329, size: 128, align: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4341, file: !261, line: 72, baseType: !56, size: 64, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4323, file: !261, line: 76, baseType: !4346, size: 64, offset: 256)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !261, line: 76, flags: DIFlagFwdDecl)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4323, file: !261, line: 77, baseType: !56, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4323, file: !261, line: 79, baseType: !4350, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4334, line: 25, size: 256, elements: !4352)
!4352 = !{!4353, !4359, !4363}
!4353 = !DIDerivedType(tag: DW_TAG_member, scope: !4351, file: !4334, line: 26, baseType: !4354, size: 128)
!4354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4351, file: !4334, line: 26, size: 128, elements: !4355)
!4355 = !{!4356, !4358}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4354, file: !4334, line: 27, baseType: !4357, size: 128)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !3518)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4354, file: !4334, line: 28, baseType: !4357, size: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4351, file: !4334, line: 31, baseType: !4360, size: 64, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4334, line: 23, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, scope: !4351, file: !4334, line: 33, baseType: !4364, size: 64, offset: 192)
!4364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4351, file: !4334, line: 33, size: 64, elements: !4365)
!4365 = !{!4366, !4372, !4377}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4364, file: !4334, line: 38, baseType: !4367, size: 64)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4364, file: !4334, line: 34, size: 64, elements: !4368)
!4368 = !{!4369, !4370, !4371}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4367, file: !4334, line: 35, baseType: !823, size: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4367, file: !4334, line: 36, baseType: !100, size: 8, offset: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4367, file: !4334, line: 37, baseType: !100, size: 8, offset: 40)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4364, file: !4334, line: 42, baseType: !4373, size: 16)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4364, file: !4334, line: 39, size: 16, elements: !4374)
!4374 = !{!4375, !4376}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4373, file: !4334, line: 40, baseType: !100, size: 8)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4373, file: !4334, line: 41, baseType: !100, size: 8, offset: 8)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4364, file: !4334, line: 46, baseType: !4378, size: 16)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4364, file: !4334, line: 43, size: 16, elements: !4379)
!4379 = !{!4380, !4381}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4378, file: !4334, line: 44, baseType: !100, size: 8)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4378, file: !4334, line: 45, baseType: !100, size: 8, offset: 8)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4323, file: !261, line: 81, baseType: !4383, size: 64, offset: 448)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !261, line: 85, size: 384, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4391}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4384, file: !261, line: 86, baseType: !4346, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4384, file: !261, line: 87, baseType: !56, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4384, file: !261, line: 88, baseType: !56, size: 64, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4384, file: !261, line: 89, baseType: !56, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4384, file: !261, line: 90, baseType: !897, size: 8, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4384, file: !261, line: 92, baseType: !4383, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4323, file: !261, line: 82, baseType: !22, size: 32, offset: 512)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3171, file: !1675, line: 1463, baseType: !4394, offset: 21184)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1675, line: 739, elements: !1362)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3171, file: !1675, line: 1470, baseType: !329, size: 128, align: 64, offset: 21184)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3171, file: !1675, line: 1471, baseType: !750, size: 32, offset: 21312)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3171, file: !1675, line: 1472, baseType: !39, size: 32, offset: 21344)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3171, file: !1675, line: 1474, baseType: !3170, size: 64, offset: 21376)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3171, file: !1675, line: 1475, baseType: !2156, size: 320, offset: 21440)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3171, file: !1675, line: 1478, baseType: !4401, size: 64, offset: 21760)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1675, line: 1478, flags: DIFlagFwdDecl)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3171, file: !1675, line: 1482, baseType: !750, size: 32, offset: 21824)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3171, file: !1675, line: 1489, baseType: !37, size: 64, offset: 21888)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3171, file: !1675, line: 1504, baseType: !37, size: 64, offset: 21952)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3171, file: !1675, line: 1505, baseType: !309, size: 64, offset: 22016)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3171, file: !1675, line: 1506, baseType: !308, size: 64, offset: 22080)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3171, file: !1675, line: 1507, baseType: !309, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3171, file: !1675, line: 1508, baseType: !309, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3171, file: !1675, line: 1509, baseType: !309, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3171, file: !1675, line: 1510, baseType: !329, size: 128, align: 64, offset: 22208)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3171, file: !1675, line: 1511, baseType: !39, size: 32, offset: 22336)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3171, file: !1675, line: 1515, baseType: !4414, size: 64, offset: 22400)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !688, line: 56, size: 64, elements: !4415)
!4415 = !{!4416}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4414, file: !688, line: 57, baseType: !691, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3171, file: !1675, line: 1518, baseType: !4414, size: 64, offset: 22464)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3171, file: !1675, line: 1528, baseType: !329, size: 128, align: 64, offset: 22528)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3171, file: !1675, line: 1552, baseType: !4420, size: 35328, offset: 23040)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4421, line: 430, size: 35328, elements: !4422)
!4421 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4422 = !{!4423, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4452, !4453, !4454, !4455, !4456, !4457, !4460, !4461, !4462, !4463}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4420, file: !4421, line: 432, baseType: !4424, size: 192)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4425, size: 192, elements: !608)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4426, line: 16, size: 64, elements: !4427)
!4426 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4425, file: !4426, line: 17, baseType: !110, size: 16)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4425, file: !4426, line: 18, baseType: !110, size: 16, offset: 16)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4425, file: !4426, line: 19, baseType: !110, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4425, file: !4426, line: 19, baseType: !110, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4425, file: !4426, line: 19, baseType: !110, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4425, file: !4426, line: 19, baseType: !110, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4425, file: !4426, line: 19, baseType: !110, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4425, file: !4426, line: 20, baseType: !110, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4425, file: !4426, line: 20, baseType: !110, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4425, file: !4426, line: 20, baseType: !110, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4425, file: !4426, line: 20, baseType: !110, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4425, file: !4426, line: 20, baseType: !110, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4425, file: !4426, line: 20, baseType: !110, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4420, file: !4421, line: 436, baseType: !56, size: 64, offset: 192)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4420, file: !4421, line: 440, baseType: !43, size: 16, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4420, file: !4421, line: 441, baseType: !43, size: 16, offset: 272)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4420, file: !4421, line: 442, baseType: !43, size: 16, offset: 288)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4420, file: !4421, line: 443, baseType: !43, size: 16, offset: 304)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4420, file: !4421, line: 447, baseType: !56, size: 64, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4420, file: !4421, line: 448, baseType: !56, size: 64, offset: 384)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4420, file: !4421, line: 459, baseType: !4449, size: 256, offset: 448)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4450, size: 256, elements: !768)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4421, line: 428, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4420, file: !4421, line: 461, baseType: !56, size: 64, offset: 704)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4420, file: !4421, line: 463, baseType: !56, size: 64, offset: 768)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4420, file: !4421, line: 465, baseType: !56, size: 64, offset: 832)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4420, file: !4421, line: 466, baseType: !56, size: 64, offset: 896)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4420, file: !4421, line: 467, baseType: !56, size: 64, offset: 960)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4420, file: !4421, line: 473, baseType: !4458, size: 64, offset: 1024)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4421, line: 10, flags: DIFlagFwdDecl)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4420, file: !4421, line: 480, baseType: !56, size: 64, offset: 1088)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4420, file: !4421, line: 482, baseType: !22, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4420, file: !4421, line: 491, baseType: !439, size: 32, offset: 1184)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4420, file: !4421, line: 501, baseType: !4464, size: 33792, offset: 1536)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4465, line: 448, size: 33792, elements: !4466)
!4465 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4466 = !{!4467, !4468, !4469, !4629, !4630, !4636, !4637}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4464, file: !4465, line: 461, baseType: !22, size: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4464, file: !4465, line: 468, baseType: !56, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4464, file: !4465, line: 476, baseType: !4470, size: 64, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4465, line: 356, size: 33280, align: 512, elements: !4472)
!4472 = !{!4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4471, file: !4465, line: 358, baseType: !22, size: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4471, file: !4465, line: 361, baseType: !22, size: 32, offset: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4471, file: !4465, line: 364, baseType: !308, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4471, file: !4465, line: 367, baseType: !308, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4471, file: !4465, line: 370, baseType: !308, size: 64, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4471, file: !4465, line: 373, baseType: !22, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4471, file: !4465, line: 376, baseType: !22, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4471, file: !4465, line: 391, baseType: !22, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4471, file: !4465, line: 394, baseType: !22, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4471, file: !4465, line: 397, baseType: !4483, size: 32768, offset: 512)
!4483 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4465, line: 348, size: 32768, elements: !4484)
!4484 = !{!4485, !4500, !4537, !4614, !4627}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4483, file: !4465, line: 349, baseType: !4486, size: 896)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4465, line: 12, size: 896, elements: !4487)
!4487 = !{!4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4499}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4486, file: !4465, line: 13, baseType: !439, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4486, file: !4465, line: 14, baseType: !439, size: 32, offset: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4486, file: !4465, line: 15, baseType: !439, size: 32, offset: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4486, file: !4465, line: 16, baseType: !439, size: 32, offset: 96)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4486, file: !4465, line: 17, baseType: !439, size: 32, offset: 128)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4486, file: !4465, line: 18, baseType: !439, size: 32, offset: 160)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4486, file: !4465, line: 19, baseType: !439, size: 32, offset: 192)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4486, file: !4465, line: 22, baseType: !4496, size: 640, offset: 224)
!4496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 640, elements: !4497)
!4497 = !{!4498}
!4498 = !DISubrange(count: 20)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4486, file: !4465, line: 25, baseType: !439, size: 32, offset: 864)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4483, file: !4465, line: 350, baseType: !4501, size: 4096, align: 128)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4465, line: 34, size: 4096, align: 128, elements: !4502)
!4502 = !{!4503, !4504, !4505, !4506, !4507, !4522, !4523, !4524, !4526, !4528, !4532}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4501, file: !4465, line: 35, baseType: !110, size: 16)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4501, file: !4465, line: 36, baseType: !110, size: 16, offset: 16)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4501, file: !4465, line: 37, baseType: !110, size: 16, offset: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4501, file: !4465, line: 38, baseType: !110, size: 16, offset: 48)
!4507 = !DIDerivedType(tag: DW_TAG_member, scope: !4501, file: !4465, line: 39, baseType: !4508, size: 128, offset: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4501, file: !4465, line: 39, size: 128, elements: !4509)
!4509 = !{!4510, !4515}
!4510 = !DIDerivedType(tag: DW_TAG_member, scope: !4508, file: !4465, line: 40, baseType: !4511, size: 128)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4508, file: !4465, line: 40, size: 128, elements: !4512)
!4512 = !{!4513, !4514}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4511, file: !4465, line: 41, baseType: !308, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4511, file: !4465, line: 42, baseType: !308, size: 64, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, scope: !4508, file: !4465, line: 44, baseType: !4516, size: 128)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4508, file: !4465, line: 44, size: 128, elements: !4517)
!4517 = !{!4518, !4519, !4520, !4521}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4516, file: !4465, line: 45, baseType: !439, size: 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4516, file: !4465, line: 46, baseType: !439, size: 32, offset: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4516, file: !4465, line: 47, baseType: !439, size: 32, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4516, file: !4465, line: 48, baseType: !439, size: 32, offset: 96)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4501, file: !4465, line: 51, baseType: !439, size: 32, offset: 192)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4501, file: !4465, line: 52, baseType: !439, size: 32, offset: 224)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4501, file: !4465, line: 55, baseType: !4525, size: 1024, offset: 256)
!4525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 1024, elements: !449)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4501, file: !4465, line: 58, baseType: !4527, size: 2048, offset: 1280)
!4527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 2048, elements: !612)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4501, file: !4465, line: 60, baseType: !4529, size: 384, offset: 3328)
!4529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 384, elements: !4530)
!4530 = !{!4531}
!4531 = !DISubrange(count: 12)
!4532 = !DIDerivedType(tag: DW_TAG_member, scope: !4501, file: !4465, line: 62, baseType: !4533, size: 384, offset: 3712)
!4533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4501, file: !4465, line: 62, size: 384, elements: !4534)
!4534 = !{!4535, !4536}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4533, file: !4465, line: 63, baseType: !4529, size: 384)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4533, file: !4465, line: 64, baseType: !4529, size: 384)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4483, file: !4465, line: 351, baseType: !4538, size: 1088)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4465, line: 79, size: 1088, elements: !4539)
!4539 = !{!4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4613}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4538, file: !4465, line: 80, baseType: !439, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4538, file: !4465, line: 81, baseType: !439, size: 32, offset: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4538, file: !4465, line: 82, baseType: !439, size: 32, offset: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4538, file: !4465, line: 83, baseType: !439, size: 32, offset: 96)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4538, file: !4465, line: 84, baseType: !439, size: 32, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4538, file: !4465, line: 85, baseType: !439, size: 32, offset: 160)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4538, file: !4465, line: 86, baseType: !439, size: 32, offset: 192)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4538, file: !4465, line: 88, baseType: !4496, size: 640, offset: 224)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4538, file: !4465, line: 89, baseType: !100, size: 8, offset: 864)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4538, file: !4465, line: 90, baseType: !100, size: 8, offset: 872)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4538, file: !4465, line: 91, baseType: !100, size: 8, offset: 880)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4538, file: !4465, line: 92, baseType: !100, size: 8, offset: 888)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4538, file: !4465, line: 93, baseType: !100, size: 8, offset: 896)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4538, file: !4465, line: 94, baseType: !100, size: 8, offset: 904)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4538, file: !4465, line: 95, baseType: !4555, size: 64, offset: 960)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4557, line: 11, size: 128, elements: !4558)
!4557 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4558 = !{!4559, !4560}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4556, file: !4557, line: 12, baseType: !306, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4556, file: !4557, line: 13, baseType: !4561, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4563, line: 103, size: 1344, elements: !4564)
!4563 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4564 = !{!4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4593, !4594, !4595}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4562, file: !4563, line: 109, baseType: !56, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4562, file: !4563, line: 110, baseType: !56, size: 64, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4562, file: !4563, line: 111, baseType: !56, size: 64, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4562, file: !4563, line: 112, baseType: !56, size: 64, offset: 192)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4562, file: !4563, line: 113, baseType: !56, size: 64, offset: 256)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4562, file: !4563, line: 114, baseType: !56, size: 64, offset: 320)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4562, file: !4563, line: 117, baseType: !56, size: 64, offset: 384)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4562, file: !4563, line: 118, baseType: !56, size: 64, offset: 448)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4562, file: !4563, line: 119, baseType: !56, size: 64, offset: 512)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4562, file: !4563, line: 120, baseType: !56, size: 64, offset: 576)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4562, file: !4563, line: 121, baseType: !56, size: 64, offset: 640)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4562, file: !4563, line: 122, baseType: !56, size: 64, offset: 704)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4562, file: !4563, line: 123, baseType: !56, size: 64, offset: 768)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4562, file: !4563, line: 124, baseType: !56, size: 64, offset: 832)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4562, file: !4563, line: 125, baseType: !56, size: 64, offset: 896)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4562, file: !4563, line: 139, baseType: !56, size: 64, offset: 960)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4562, file: !4563, line: 142, baseType: !56, size: 64, offset: 1024)
!4582 = !DIDerivedType(tag: DW_TAG_member, scope: !4562, file: !4563, line: 144, baseType: !4583, size: 64, offset: 1088)
!4583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4562, file: !4563, line: 144, size: 64, elements: !4584)
!4584 = !{!4585, !4586, !4587}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4583, file: !4563, line: 146, baseType: !110, size: 16)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4583, file: !4563, line: 148, baseType: !308, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4583, file: !4563, line: 150, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4563, line: 59, size: 64, elements: !4589)
!4589 = !{!4590, !4591, !4592}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4588, file: !4563, line: 61, baseType: !308, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4588, file: !4563, line: 63, baseType: !308, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4588, file: !4563, line: 65, baseType: !308, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4562, file: !4563, line: 153, baseType: !56, size: 64, offset: 1152)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4562, file: !4563, line: 154, baseType: !56, size: 64, offset: 1216)
!4595 = !DIDerivedType(tag: DW_TAG_member, scope: !4562, file: !4563, line: 156, baseType: !4596, size: 64, offset: 1280)
!4596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4562, file: !4563, line: 156, size: 64, elements: !4597)
!4597 = !{!4598, !4599, !4600}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4596, file: !4563, line: 158, baseType: !110, size: 16)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4596, file: !4563, line: 160, baseType: !308, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4596, file: !4563, line: 162, baseType: !4601, size: 64)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4563, line: 69, size: 64, elements: !4602)
!4602 = !{!4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4601, file: !4563, line: 71, baseType: !308, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4601, file: !4563, line: 73, baseType: !308, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4601, file: !4563, line: 75, baseType: !308, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4601, file: !4563, line: 77, baseType: !308, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4601, file: !4563, line: 80, baseType: !308, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4601, file: !4563, line: 83, baseType: !308, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4601, file: !4563, line: 86, baseType: !308, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4601, file: !4563, line: 88, baseType: !308, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4601, file: !4563, line: 93, baseType: !308, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4601, file: !4563, line: 100, baseType: !308, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4538, file: !4465, line: 96, baseType: !439, size: 32, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4483, file: !4465, line: 352, baseType: !4615, size: 4608, align: 512)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4465, line: 333, size: 4608, align: 512, elements: !4616)
!4616 = !{!4617, !4618, !4625}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4615, file: !4465, line: 334, baseType: !4501, size: 4096, align: 128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4615, file: !4465, line: 335, baseType: !4619, size: 512, offset: 4096)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4465, line: 312, size: 512, elements: !4620)
!4620 = !{!4621, !4622, !4623}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4619, file: !4465, line: 313, baseType: !308, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4619, file: !4465, line: 314, baseType: !308, size: 64, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4619, file: !4465, line: 315, baseType: !4624, size: 384, offset: 128)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 384, elements: !884)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4615, file: !4465, line: 336, baseType: !4626, offset: 4608)
!4626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, elements: !781)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4483, file: !4465, line: 353, baseType: !4628, size: 32768)
!4628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 32768, elements: !3633)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4464, file: !4465, line: 484, baseType: !4470, size: 64, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4464, file: !4465, line: 491, baseType: !4631, size: 128, offset: 256)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4465, line: 404, size: 128, elements: !4632)
!4632 = !{!4633, !4634, !4635}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4631, file: !4465, line: 424, baseType: !308, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4631, file: !4465, line: 432, baseType: !22, size: 32, offset: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4631, file: !4465, line: 440, baseType: !22, size: 32, offset: 96)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4464, file: !4465, line: 498, baseType: !4631, size: 128, offset: 384)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4464, file: !4465, line: 508, baseType: !4471, size: 33280, align: 512, offset: 512)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3153, file: !3154, line: 16, baseType: !71, size: 192, offset: 512)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3153, file: !3154, line: 17, baseType: !66, size: 32, offset: 704)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !520, file: !232, line: 1240, baseType: !37, size: 64, offset: 6912)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !520, file: !232, line: 1243, baseType: !439, size: 32, offset: 6976)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !520, file: !232, line: 1245, baseType: !854, size: 64, offset: 7040)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !520, file: !232, line: 1246, baseType: !854, size: 64, offset: 7104)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !520, file: !232, line: 1248, baseType: !440, size: 32, offset: 7168)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !520, file: !232, line: 1249, baseType: !4646, size: 64, offset: 7232)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !232, line: 634, flags: DIFlagFwdDecl)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !520, file: !232, line: 1252, baseType: !4006, size: 256, offset: 7296)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !520, file: !232, line: 1253, baseType: !4650, size: 128, offset: 7552)
!4650 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4651, line: 21, baseType: !4652)
!4651 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4651, line: 19, size: 128, elements: !4653)
!4653 = !{!4654}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4652, file: !4651, line: 20, baseType: !4655, size: 128)
!4655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !3518)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !520, file: !232, line: 1255, baseType: !22, size: 32, offset: 7680)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !520, file: !232, line: 1261, baseType: !707, size: 256, offset: 7744)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !520, file: !232, line: 1267, baseType: !34, size: 64, offset: 8000)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !520, file: !232, line: 1269, baseType: !465, size: 64, offset: 8064)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !520, file: !232, line: 1271, baseType: !4661, size: 448, offset: 8128)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2416, line: 63, size: 448, elements: !4662)
!4662 = !{!4663, !4668, !4669, !4670, !4671, !4672, !4673}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4661, file: !2416, line: 64, baseType: !4664, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!56, !4667, !2414}
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4661, file: !2416, line: 66, baseType: !4664, size: 64, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4661, file: !2416, line: 69, baseType: !306, size: 64, offset: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4661, file: !2416, line: 70, baseType: !39, size: 32, offset: 192)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4661, file: !2416, line: 71, baseType: !22, size: 32, offset: 224)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4661, file: !2416, line: 74, baseType: !114, size: 128, offset: 256)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4661, file: !2416, line: 85, baseType: !4674, size: 64, offset: 384)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !520, file: !232, line: 1274, baseType: !698, size: 64, offset: 8576)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !520, file: !232, line: 1280, baseType: !698, size: 64, offset: 8640)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !520, file: !232, line: 1283, baseType: !39, size: 32, offset: 8704)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !520, file: !232, line: 1286, baseType: !1762, size: 32, offset: 8736)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !520, file: !232, line: 1289, baseType: !2218, size: 64, offset: 8768)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !520, file: !232, line: 1290, baseType: !759, size: 64, offset: 8832)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !520, file: !232, line: 1297, baseType: !980, size: 64, offset: 8896)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !520, file: !232, line: 1304, baseType: !4683, size: 64, offset: 8960)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4684, line: 49, size: 64, elements: !4685)
!4684 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4685 = !{!4686}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4683, file: !4684, line: 50, baseType: !4687, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4684, line: 41, size: 512, align: 512, elements: !4689)
!4689 = !{!4690, !4691, !4696}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4688, file: !4684, line: 43, baseType: !76, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4688, file: !4684, line: 45, baseType: !4692, size: 192, offset: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4684, line: 29, size: 192, elements: !4693)
!4693 = !{!4694, !4695}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4692, file: !4684, line: 30, baseType: !114, size: 128)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4692, file: !4684, line: 32, baseType: !306, size: 64, offset: 128)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4688, file: !4684, line: 46, baseType: !306, size: 64, offset: 256)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !520, file: !232, line: 1305, baseType: !4683, size: 64, offset: 9024)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !520, file: !232, line: 1306, baseType: !329, size: 128, align: 64, offset: 9088)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !520, file: !232, line: 1307, baseType: !1029, size: 256, offset: 9216)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !520, file: !232, line: 1309, baseType: !707, size: 256, offset: 9472)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !520, file: !232, line: 1314, baseType: !39, size: 32, offset: 9728)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !520, file: !232, line: 1317, baseType: !76, size: 32, align: 512, offset: 10240)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !520, file: !232, line: 1318, baseType: !114, size: 128, offset: 10304)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !520, file: !232, line: 1320, baseType: !76, size: 32, offset: 10432)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !520, file: !232, line: 1321, baseType: !114, size: 128, offset: 10496)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !514, file: !515, line: 73, baseType: !39, size: 32, offset: 128)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !514, file: !515, line: 74, baseType: !4708, size: 64, offset: 192)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !805, line: 42, flags: DIFlagFwdDecl)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !467, file: !407, line: 141, baseType: !4712, size: 64, offset: 704)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!39, !2476, !897}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !467, file: !407, line: 142, baseType: !4716, size: 64, offset: 768)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!405, !405, !4719}
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !406, file: !407, line: 96, baseType: !519, size: 64, offset: 832)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !406, file: !407, line: 97, baseType: !56, size: 64, offset: 896)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !406, file: !407, line: 98, baseType: !37, size: 64, offset: 960)
!4724 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !407, line: 100, baseType: !4725, size: 128, offset: 1024)
!4725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !407, line: 100, size: 128, elements: !4726)
!4726 = !{!4727, !4728}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4725, file: !407, line: 101, baseType: !114, size: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4725, file: !407, line: 102, baseType: !4729, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !406, file: !407, line: 104, baseType: !114, size: 128, offset: 1152)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !406, file: !407, line: 105, baseType: !114, size: 128, offset: 1280)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !406, file: !407, line: 113, baseType: !4733, size: 128, offset: 1408)
!4733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !407, line: 109, size: 128, elements: !4734)
!4734 = !{!4735, !4736, !4737}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4733, file: !407, line: 110, baseType: !763, size: 128)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4733, file: !407, line: 111, baseType: !421, size: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4733, file: !407, line: 112, baseType: !329, size: 128, align: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !399, file: !232, line: 1968, baseType: !4739, size: 64, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!34, !405, !370, !4742}
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4744, line: 10, size: 128, elements: !4745)
!4744 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4745 = !{!4746, !4747}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4743, file: !4744, line: 11, baseType: !1802, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4743, file: !4744, line: 12, baseType: !37, size: 64, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !399, file: !232, line: 1969, baseType: !4749, size: 64, offset: 128)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!39, !4708, !370, !39}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !399, file: !232, line: 1970, baseType: !4753, size: 64, offset: 192)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!393, !370, !39, !897}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !399, file: !232, line: 1972, baseType: !4757, size: 64, offset: 256)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!39, !405, !508, !39}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !399, file: !232, line: 1974, baseType: !4761, size: 64, offset: 320)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!39, !4708, !370, !405, !41, !897}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !399, file: !232, line: 1976, baseType: !4765, size: 64, offset: 384)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!39, !405, !370, !405}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !399, file: !232, line: 1977, baseType: !4769, size: 64, offset: 448)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!39, !370, !405}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !399, file: !232, line: 1978, baseType: !4773, size: 64, offset: 512)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!39, !4708, !370, !405, !34}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !399, file: !232, line: 1980, baseType: !4777, size: 64, offset: 576)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!39, !4708, !370, !405, !41}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !399, file: !232, line: 1982, baseType: !4769, size: 64, offset: 640)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !399, file: !232, line: 1983, baseType: !4782, size: 64, offset: 704)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!39, !4708, !370, !405, !41, !524}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !399, file: !232, line: 1985, baseType: !4786, size: 64, offset: 768)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!39, !4708, !370, !405, !370, !405, !22}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !399, file: !232, line: 1987, baseType: !4790, size: 64, offset: 832)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!39, !4708, !405, !4793}
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !232, line: 226, size: 640, elements: !4795)
!4795 = !{!4796, !4797, !4798, !4808, !4817, !4818, !4823, !4824, !4825}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4794, file: !232, line: 227, baseType: !22, size: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4794, file: !232, line: 228, baseType: !41, size: 16, offset: 32)
!4798 = !DIDerivedType(tag: DW_TAG_member, scope: !4794, file: !232, line: 241, baseType: !4799, size: 32, offset: 64)
!4799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4794, file: !232, line: 241, size: 32, elements: !4800)
!4800 = !{!4801, !4802}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4799, file: !232, line: 242, baseType: !376, size: 32)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4799, file: !232, line: 243, baseType: !4803, size: 32)
!4803 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4804, line: 16, baseType: !4805)
!4804 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4804, line: 14, size: 32, elements: !4806)
!4806 = !{!4807}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4805, file: !4804, line: 15, baseType: !381, size: 32)
!4808 = !DIDerivedType(tag: DW_TAG_member, scope: !4794, file: !232, line: 245, baseType: !4809, size: 32, offset: 96)
!4809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4794, file: !232, line: 245, size: 32, elements: !4810)
!4810 = !{!4811, !4812}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4809, file: !232, line: 246, baseType: !385, size: 32)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4809, file: !232, line: 247, baseType: !4813, size: 32)
!4813 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4804, line: 20, baseType: !4814)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4804, line: 18, size: 32, elements: !4815)
!4815 = !{!4816}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4814, file: !4804, line: 19, baseType: !389, size: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4794, file: !232, line: 249, baseType: !58, size: 64, offset: 128)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4794, file: !232, line: 250, baseType: !4819, size: 128, offset: 192)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !855, line: 13, size: 128, elements: !4820)
!4820 = !{!4821, !4822}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4819, file: !855, line: 14, baseType: !854, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4819, file: !855, line: 15, baseType: !306, size: 64, offset: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4794, file: !232, line: 251, baseType: !4819, size: 128, offset: 320)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4794, file: !232, line: 252, baseType: !4819, size: 128, offset: 448)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4794, file: !232, line: 259, baseType: !680, size: 64, offset: 576)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !399, file: !232, line: 1988, baseType: !4827, size: 64, offset: 896)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!39, !4708, !2476, !4830, !439, !22}
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4832, line: 22, size: 1280, elements: !4833)
!4832 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4833 = !{!4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4831, file: !4832, line: 23, baseType: !439, size: 32)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4831, file: !4832, line: 24, baseType: !41, size: 16, offset: 32)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4831, file: !4832, line: 25, baseType: !22, size: 32, offset: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4831, file: !4832, line: 26, baseType: !862, size: 32, offset: 96)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4831, file: !4832, line: 27, baseType: !308, size: 64, offset: 128)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4831, file: !4832, line: 28, baseType: !308, size: 64, offset: 192)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4831, file: !4832, line: 41, baseType: !308, size: 64, offset: 256)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4831, file: !4832, line: 42, baseType: !524, size: 32, offset: 320)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4831, file: !4832, line: 43, baseType: !524, size: 32, offset: 352)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4831, file: !4832, line: 44, baseType: !376, size: 32, offset: 384)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4831, file: !4832, line: 45, baseType: !385, size: 32, offset: 416)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4831, file: !4832, line: 46, baseType: !58, size: 64, offset: 448)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4831, file: !4832, line: 47, baseType: !4819, size: 128, offset: 512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4831, file: !4832, line: 48, baseType: !4819, size: 128, offset: 640)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4831, file: !4832, line: 49, baseType: !4819, size: 128, offset: 768)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4831, file: !4832, line: 50, baseType: !4819, size: 128, offset: 896)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4831, file: !4832, line: 51, baseType: !308, size: 64, offset: 1024)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4831, file: !4832, line: 52, baseType: !308, size: 64, offset: 1088)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4831, file: !4832, line: 53, baseType: !439, size: 32, offset: 1152)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4831, file: !4832, line: 54, baseType: !439, size: 32, offset: 1184)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4831, file: !4832, line: 55, baseType: !308, size: 64, offset: 1216)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !399, file: !232, line: 1990, baseType: !4856, size: 64, offset: 960)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!639, !405, !508, !52}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !399, file: !232, line: 1991, baseType: !4860, size: 64, offset: 1024)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!39, !370, !4863, !308, !308}
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !232, line: 55, flags: DIFlagFwdDecl)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !399, file: !232, line: 1993, baseType: !4866, size: 64, offset: 1088)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!39, !370, !39}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !399, file: !232, line: 1994, baseType: !4870, size: 64, offset: 1152)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!39, !370, !405, !680, !22, !41}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !399, file: !232, line: 1997, baseType: !4874, size: 64, offset: 1216)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!39, !4708, !370, !680, !41}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !399, file: !232, line: 1999, baseType: !4878, size: 64, offset: 1280)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!393, !4708, !405, !39}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !399, file: !232, line: 2001, baseType: !4882, size: 64, offset: 1344)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!39, !4708, !405, !393, !39}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !399, file: !232, line: 2003, baseType: !4886, size: 64, offset: 1408)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!39, !4708, !405, !4889}
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !232, line: 76, flags: DIFlagFwdDecl)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !399, file: !232, line: 2005, baseType: !4892, size: 64, offset: 1472)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!39, !405, !4889}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !399, file: !232, line: 2006, baseType: !4896, size: 64, offset: 1536)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!4899, !370}
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !232, line: 3192, size: 192, elements: !4901)
!4901 = !{!4902, !4903}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4900, file: !232, line: 3193, baseType: !3757, size: 128)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4900, file: !232, line: 3194, baseType: !439, size: 32, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !371, file: !232, line: 655, baseType: !519, size: 64, offset: 448)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !371, file: !232, line: 656, baseType: !366, size: 64, offset: 512)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !371, file: !232, line: 659, baseType: !37, size: 64, offset: 576)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !371, file: !232, line: 663, baseType: !56, size: 64, offset: 640)
!4908 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !232, line: 671, baseType: !4909, size: 32, offset: 704)
!4909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !232, line: 671, size: 32, elements: !4910)
!4910 = !{!4911, !4913}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4909, file: !232, line: 672, baseType: !4912, size: 32)
!4912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4909, file: !232, line: 673, baseType: !22, size: 32)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !371, file: !232, line: 675, baseType: !524, size: 32, offset: 736)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !371, file: !232, line: 676, baseType: !58, size: 64, offset: 768)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !371, file: !232, line: 677, baseType: !4819, size: 128, offset: 832)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !371, file: !232, line: 678, baseType: !4819, size: 128, offset: 960)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !371, file: !232, line: 679, baseType: !4819, size: 128, offset: 1088)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !371, file: !232, line: 680, baseType: !76, size: 32, offset: 1216)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !371, file: !232, line: 681, baseType: !43, size: 16, offset: 1248)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !371, file: !232, line: 682, baseType: !100, size: 8, offset: 1264)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !371, file: !232, line: 683, baseType: !100, size: 8, offset: 1272)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !371, file: !232, line: 684, baseType: !2549, size: 64, offset: 1280)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !371, file: !232, line: 691, baseType: !56, size: 64, offset: 1344)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !371, file: !232, line: 692, baseType: !838, size: 320, offset: 1408)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !371, file: !232, line: 694, baseType: !56, size: 64, offset: 1728)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !371, file: !232, line: 695, baseType: !56, size: 64, offset: 1792)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !371, file: !232, line: 697, baseType: !763, size: 128, offset: 1856)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !371, file: !232, line: 698, baseType: !114, size: 128, offset: 1984)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !371, file: !232, line: 707, baseType: !114, size: 128, offset: 2112)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !371, file: !232, line: 708, baseType: !114, size: 128, offset: 2240)
!4932 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !232, line: 709, baseType: !4933, size: 128, offset: 2368)
!4933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !232, line: 709, size: 128, elements: !4934)
!4934 = !{!4935, !4936}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4933, file: !232, line: 710, baseType: !759, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4933, file: !232, line: 711, baseType: !329, size: 128, align: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !371, file: !232, line: 713, baseType: !700, size: 64, offset: 2496)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !371, file: !232, line: 714, baseType: !700, size: 64, offset: 2560)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !371, file: !232, line: 715, baseType: !66, size: 32, offset: 2624)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !371, file: !232, line: 716, baseType: !66, size: 32, offset: 2656)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !371, file: !232, line: 717, baseType: !66, size: 32, offset: 2688)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !371, file: !232, line: 719, baseType: !66, size: 32, offset: 2720)
!4943 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !232, line: 721, baseType: !4944, size: 64, offset: 2752)
!4944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !232, line: 721, size: 64, elements: !4945)
!4945 = !{!4946, !4947}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4944, file: !232, line: 722, baseType: !1163, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4944, file: !232, line: 723, baseType: !2285, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !371, file: !232, line: 725, baseType: !4949, size: 64, offset: 2816)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !232, line: 725, flags: DIFlagFwdDecl)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !371, file: !232, line: 726, baseType: !367, size: 1536, align: 64, offset: 2880)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !371, file: !232, line: 727, baseType: !114, size: 128, offset: 4416)
!4953 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !232, line: 728, baseType: !4954, size: 64, offset: 4544)
!4954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !232, line: 728, size: 64, elements: !4955)
!4955 = !{!4956, !4957, !4960, !4961}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4954, file: !232, line: 729, baseType: !1673, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4954, file: !232, line: 730, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !232, line: 730, flags: DIFlagFwdDecl)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4954, file: !232, line: 731, baseType: !508, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4954, file: !232, line: 732, baseType: !22, size: 32)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !371, file: !232, line: 735, baseType: !440, size: 32, offset: 4608)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !371, file: !232, line: 738, baseType: !440, size: 32, offset: 4640)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !371, file: !232, line: 739, baseType: !4646, size: 64, offset: 4672)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !371, file: !232, line: 750, baseType: !37, size: 64, offset: 4736)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !367, file: !232, line: 474, baseType: !3757, size: 128, offset: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !367, file: !232, line: 475, baseType: !838, size: 320, offset: 192)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !367, file: !232, line: 476, baseType: !1555, size: 32, offset: 512)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !367, file: !232, line: 477, baseType: !66, size: 32, offset: 544)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !367, file: !232, line: 482, baseType: !2871, size: 128, offset: 576)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !367, file: !232, line: 483, baseType: !56, size: 64, offset: 704)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !367, file: !232, line: 484, baseType: !56, size: 64, offset: 768)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !367, file: !232, line: 485, baseType: !4974, size: 64, offset: 832)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4976)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !232, line: 404, size: 1280, elements: !4977)
!4977 = !{!4978, !4982, !4986, !4990, !4994, !5010, !5015, !5019, !5023, !5027, !5031, !5035, !5036, !5040, !5044, !5048, !5053, !5057, !5109, !5110}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4976, file: !232, line: 405, baseType: !4979, size: 64)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!39, !344, !2297}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4976, file: !232, line: 406, baseType: !4983, size: 64, offset: 64)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!39, !680, !1205}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4976, file: !232, line: 409, baseType: !4987, size: 64, offset: 128)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!39, !366, !2297}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4976, file: !232, line: 412, baseType: !4991, size: 64, offset: 192)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!897, !366, !1205}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4976, file: !232, line: 414, baseType: !4995, size: 64, offset: 256)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{null, !4998}
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1202, line: 1276, size: 448, elements: !5000)
!5000 = !{!5001, !5002, !5003, !5005, !5006, !5007, !5008, !5009}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4999, file: !1202, line: 1277, baseType: !680, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4999, file: !1202, line: 1278, baseType: !366, size: 64, offset: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4999, file: !1202, line: 1279, baseType: !5004, size: 64, offset: 128)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4999, file: !1202, line: 1281, baseType: !56, size: 64, offset: 192)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4999, file: !1202, line: 1282, baseType: !22, size: 32, offset: 256)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4999, file: !1202, line: 1283, baseType: !22, size: 32, offset: 288)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4999, file: !1202, line: 1284, baseType: !897, size: 8, offset: 320)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4999, file: !1202, line: 1285, baseType: !56, size: 64, offset: 384)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4976, file: !232, line: 416, baseType: !5011, size: 64, offset: 320)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!39, !680, !366, !58, !22, !5014, !1689}
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4976, file: !232, line: 419, baseType: !5016, size: 64, offset: 384)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!39, !680, !366, !58, !22, !22, !344, !37}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4976, file: !232, line: 424, baseType: !5020, size: 64, offset: 448)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!2580, !366, !2580}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4976, file: !232, line: 425, baseType: !5024, size: 64, offset: 512)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{null, !1205, !52, !52}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4976, file: !232, line: 426, baseType: !5028, size: 64, offset: 576)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!897, !1205, !1555}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4976, file: !232, line: 427, baseType: !5032, size: 64, offset: 640)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{null, !1205}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4976, file: !232, line: 428, baseType: !1181, size: 64, offset: 704)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4976, file: !232, line: 433, baseType: !5037, size: 64, offset: 768)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!39, !366, !1205, !1205, !160}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4976, file: !232, line: 435, baseType: !5041, size: 64, offset: 832)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!39, !1205}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4976, file: !232, line: 436, baseType: !5045, size: 64, offset: 896)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!897, !1205, !52, !52}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4976, file: !232, line: 438, baseType: !5049, size: 64, offset: 960)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{null, !1205, !5052, !5052}
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4976, file: !232, line: 439, baseType: !5054, size: 64, offset: 1024)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!39, !366, !344}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4976, file: !232, line: 442, baseType: !5058, size: 64, offset: 1088)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!39, !5061, !680, !5108}
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4142, line: 282, size: 2176, elements: !5063)
!5063 = !{!5064, !5065, !5066, !5067, !5068, !5069, !5070, !5072, !5079, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5062, file: !4142, line: 283, baseType: !3806, size: 128)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5062, file: !4142, line: 284, baseType: !56, size: 64, offset: 128)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5062, file: !4142, line: 285, baseType: !866, size: 16, offset: 192)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5062, file: !4142, line: 286, baseType: !3371, size: 320, offset: 256)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5062, file: !4142, line: 287, baseType: !1988, size: 8, offset: 576)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5062, file: !4142, line: 288, baseType: !22, size: 32, offset: 608)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5062, file: !4142, line: 289, baseType: !5071, size: 64, offset: 640)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5062, file: !4142, line: 290, baseType: !5073, size: 64, offset: 704)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4142, line: 250, size: 64, elements: !5075)
!5075 = !{!5076, !5077, !5078}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5074, file: !4142, line: 251, baseType: !76, size: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5074, file: !4142, line: 257, baseType: !22, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5074, file: !4142, line: 258, baseType: !22, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5062, file: !4142, line: 291, baseType: !5080, size: 128, offset: 768)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4142, line: 274, size: 128, elements: !5081)
!5081 = !{!5082, !5083}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5080, file: !4142, line: 275, baseType: !5074, size: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5080, file: !4142, line: 276, baseType: !5074, size: 64, offset: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5062, file: !4142, line: 292, baseType: !22, size: 32, offset: 896)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5062, file: !4142, line: 293, baseType: !22, size: 32, offset: 928)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5062, file: !4142, line: 294, baseType: !22, size: 32, offset: 960)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5062, file: !4142, line: 295, baseType: !22, size: 32, offset: 992)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5062, file: !4142, line: 296, baseType: !22, size: 32, offset: 1024)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5062, file: !4142, line: 297, baseType: !22, size: 32, offset: 1056)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5062, file: !4142, line: 298, baseType: !2009, size: 64, offset: 1088)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5062, file: !4142, line: 299, baseType: !5092, size: 64, offset: 1152)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4142, line: 269, size: 96, elements: !5094)
!5094 = !{!5095, !5096}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5093, file: !4142, line: 270, baseType: !5074, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5093, file: !4142, line: 271, baseType: !22, size: 32, offset: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5062, file: !4142, line: 300, baseType: !1110, size: 64, offset: 1216)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5062, file: !4142, line: 301, baseType: !2575, size: 64, offset: 1280)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5062, file: !4142, line: 302, baseType: !680, size: 64, offset: 1344)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5062, file: !4142, line: 303, baseType: !22, size: 32, offset: 1408)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5062, file: !4142, line: 304, baseType: !1068, size: 256, offset: 1472)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5062, file: !4142, line: 305, baseType: !76, size: 32, offset: 1728)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5062, file: !4142, line: 318, baseType: !76, size: 32, offset: 1760)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5062, file: !4142, line: 322, baseType: !1029, size: 256, offset: 1792)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5062, file: !4142, line: 323, baseType: !5080, size: 128, offset: 2048)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5062, file: !4142, line: 324, baseType: !5107, offset: 2176)
!5107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3371, elements: !781)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4976, file: !232, line: 444, baseType: !1681, size: 64, offset: 1152)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4976, file: !232, line: 445, baseType: !5111, size: 64, offset: 1216)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!39, !1184, !1289}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !232, line: 486, baseType: !56, size: 64, offset: 896)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !367, file: !232, line: 487, baseType: !838, size: 320, offset: 960)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !367, file: !232, line: 488, baseType: !1762, size: 32, offset: 1280)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !367, file: !232, line: 489, baseType: !76, size: 32, offset: 1312)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !367, file: !232, line: 490, baseType: !114, size: 128, offset: 1344)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !367, file: !232, line: 491, baseType: !37, size: 64, offset: 1472)
!5120 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !140, line: 107, baseType: !5121, size: 64, offset: 192)
!5121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !140, line: 107, size: 64, elements: !5122)
!5122 = !{!5123, !5124}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5121, file: !140, line: 108, baseType: !56, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5121, file: !140, line: 109, baseType: !56, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !352, file: !140, line: 117, baseType: !56, size: 64, offset: 256)
!5126 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !140, line: 119, baseType: !5127, size: 320)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !140, line: 119, size: 320, elements: !5128)
!5128 = !{!5129, !5130, !5133, !5134, !5135}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5127, file: !140, line: 124, baseType: !56, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5127, file: !140, line: 125, baseType: !5131, size: 64, offset: 64)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !140, line: 125, flags: DIFlagFwdDecl)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5127, file: !140, line: 126, baseType: !56, size: 64, offset: 128)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5127, file: !140, line: 127, baseType: !56, size: 64, offset: 192)
!5135 = !DIDerivedType(tag: DW_TAG_member, scope: !5127, file: !140, line: 128, baseType: !5136, size: 64, offset: 256)
!5136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5127, file: !140, line: 128, size: 64, elements: !5137)
!5137 = !{!5138, !5139}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5136, file: !140, line: 133, baseType: !56, size: 64)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5136, file: !140, line: 138, baseType: !698, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !140, line: 141, baseType: !5141, size: 64)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !140, line: 141, size: 64, elements: !5142)
!5142 = !{!5143}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5141, file: !140, line: 142, baseType: !56, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !140, line: 144, baseType: !5145, size: 128)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !140, line: 144, size: 128, elements: !5146)
!5146 = !{!5147, !5198}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5145, file: !140, line: 146, baseType: !5148, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !132, line: 126, size: 1216, elements: !5150)
!5150 = !{!5151, !5161, !5162, !5163, !5164, !5165, !5166, !5180, !5181, !5182}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5149, file: !132, line: 127, baseType: !5152, size: 384)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !132, line: 21, size: 384, elements: !5153)
!5153 = !{!5154, !5155, !5157, !5158, !5159, !5160}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5152, file: !132, line: 22, baseType: !56, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5152, file: !132, line: 23, baseType: !5156, size: 64, offset: 64)
!5156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5152, file: !132, line: 24, baseType: !5156, size: 64, offset: 128)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5152, file: !132, line: 25, baseType: !56, size: 64, offset: 192)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5152, file: !132, line: 26, baseType: !56, size: 64, offset: 256)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5152, file: !132, line: 27, baseType: !56, size: 64, offset: 320)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5149, file: !132, line: 128, baseType: !3806, size: 128, offset: 384)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5149, file: !132, line: 129, baseType: !1068, size: 256, offset: 512)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5149, file: !132, line: 130, baseType: !131, size: 32, offset: 768)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5149, file: !132, line: 131, baseType: !22, size: 32, offset: 800)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5149, file: !132, line: 132, baseType: !56, size: 64, offset: 832)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5149, file: !132, line: 133, baseType: !5167, size: 64, offset: 896)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5169)
!5169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !132, line: 77, size: 192, elements: !5170)
!5170 = !{!5171, !5175, !5176}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5169, file: !132, line: 83, baseType: !5172, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{null, !344}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5169, file: !132, line: 89, baseType: !1543, size: 64, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5169, file: !132, line: 100, baseType: !5177, size: 64, offset: 128)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!39, !5148, !56, !56, !39}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5149, file: !132, line: 134, baseType: !37, size: 64, offset: 960)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5149, file: !132, line: 135, baseType: !39, size: 32, offset: 1024)
!5182 = !DIDerivedType(tag: DW_TAG_member, scope: !5149, file: !132, line: 136, baseType: !5183, size: 128, offset: 1088)
!5183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5149, file: !132, line: 136, size: 128, elements: !5184)
!5184 = !{!5185, !5191}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5183, file: !132, line: 137, baseType: !5186, size: 128)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5187, line: 6, size: 128, elements: !5188)
!5187 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5188 = !{!5189, !5190}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5186, file: !5187, line: 7, baseType: !308, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5186, file: !5187, line: 8, baseType: !308, size: 64, offset: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, scope: !5183, file: !132, line: 138, baseType: !5192)
!5192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5183, file: !132, line: 138, elements: !5193)
!5193 = !{!5194, !5196}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5192, file: !132, line: 138, baseType: !5195)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5192, file: !132, line: 138, elements: !1362)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5192, file: !132, line: 138, baseType: !5197)
!5197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5186, elements: !781)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5145, file: !140, line: 147, baseType: !37, size: 64, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !349, file: !140, line: 161, baseType: !329, size: 128, align: 64)
!5200 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !140, line: 164, baseType: !5201, size: 32, offset: 384)
!5201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !140, line: 164, size: 32, elements: !5202)
!5202 = !{!5203, !5204}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5201, file: !140, line: 169, baseType: !66, size: 32)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5201, file: !140, line: 177, baseType: !22, size: 32)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !345, file: !140, line: 181, baseType: !66, size: 32, offset: 416)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "__page_mapping", scope: !322, file: !140, line: 423, baseType: !56, size: 64, offset: 192)
!5207 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !140, line: 425, baseType: !5208, size: 64, offset: 256)
!5208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !140, line: 425, size: 64, elements: !5209)
!5209 = !{!5210, !5211}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !5208, file: !140, line: 426, baseType: !1341, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !5208, file: !140, line: 427, baseType: !66, size: 32)
!5212 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !140, line: 433, baseType: !5213, size: 64, offset: 320)
!5213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !140, line: 433, size: 64, elements: !5214)
!5214 = !{!5215, !5216}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !5213, file: !140, line: 434, baseType: !56, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !5213, file: !140, line: 438, baseType: !76, size: 32)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "__page_type", scope: !322, file: !140, line: 441, baseType: !22, size: 32, offset: 384)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !322, file: !140, line: 442, baseType: !66, size: 32, offset: 416)
!5219 = !{!0, !7, !12, !14, !16}
!5220 = !{i32 7, !"Dwarf Version", i32 5}
!5221 = !{i32 2, !"Debug Info Version", i32 3}
!5222 = !{i32 1, !"wchar_size", i32 2}
!5223 = !{i32 8, !"cf-protection-branch", i32 1}
!5224 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5225 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5226 = !{i32 1, !"Code Model", i32 2}
!5227 = !{i32 1, !"override-stack-alignment", i32 8}
!5228 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5229 = distinct !DISubprogram(name: "pgd_clear_bad", scope: !2, file: !2, line: 25, type: !5230, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5232)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{null, !290}
!5232 = !{!5233}
!5233 = !DILocalVariable(name: "pgd", arg: 1, scope: !5229, file: !2, line: 25, type: !290)
!5234 = !DILocation(line: 25, column: 27, scope: !5229)
!5235 = !DILocation(line: 27, column: 2, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5229, file: !2, line: 27, column: 2)
!5237 = !DILocation(line: 27, column: 2, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 27, column: 2)
!5239 = !DILocation(line: 28, column: 2, scope: !5229)
!5240 = !DILocation(line: 29, column: 1, scope: !5229)
!5241 = !DISubprogram(name: "_printk", scope: !5242, file: !5242, line: 153, type: !5243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5242 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!39, !34, null}
!5245 = distinct !DISubprogram(name: "native_pgd_val", scope: !277, file: !277, line: 335, type: !5246, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5248)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!281, !276}
!5248 = !{!5249}
!5249 = !DILocalVariable(name: "pgd", arg: 1, scope: !5245, file: !277, line: 335, type: !276)
!5250 = !DILocation(line: 335, column: 45, scope: !5245)
!5251 = !DILocation(line: 337, column: 13, scope: !5245)
!5252 = !DILocation(line: 337, column: 17, scope: !5245)
!5253 = !DILocation(line: 337, column: 2, scope: !5245)
!5254 = distinct !DISubprogram(name: "arch_test_bit", scope: !5255, file: !5255, line: 237, type: !5256, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5261)
!5255 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!897, !56, !5258}
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5260)
!5260 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!5261 = !{!5262, !5263}
!5262 = !DILocalVariable(name: "nr", arg: 1, scope: !5254, file: !5255, line: 237, type: !56)
!5263 = !DILocalVariable(name: "addr", arg: 2, scope: !5254, file: !5255, line: 237, type: !5258)
!5264 = !DILocation(line: 237, column: 29, scope: !5254)
!5265 = !DILocation(line: 237, column: 63, scope: !5254)
!5266 = !DILocation(line: 239, column: 30, scope: !5254)
!5267 = !DILocation(line: 239, column: 9, scope: !5254)
!5268 = !DILocation(line: 239, column: 54, scope: !5254)
!5269 = !DILocation(line: 239, column: 58, scope: !5254)
!5270 = !DILocation(line: 239, column: 36, scope: !5254)
!5271 = !DILocation(line: 240, column: 26, scope: !5254)
!5272 = !DILocation(line: 240, column: 30, scope: !5254)
!5273 = !DILocation(line: 240, column: 8, scope: !5254)
!5274 = !DILocation(line: 239, column: 2, scope: !5254)
!5275 = distinct !DISubprogram(name: "_static_cpu_has", scope: !5276, file: !5276, line: 173, type: !5277, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5279)
!5276 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!897, !110}
!5279 = !{!5280, !5281, !5282}
!5280 = !DILocalVariable(name: "bit", arg: 1, scope: !5275, file: !5276, line: 173, type: !110)
!5281 = !DILabel(scope: !5275, name: "t_yes", file: !5276, line: 187)
!5282 = !DILabel(scope: !5275, name: "t_no", file: !5276, line: 189)
!5283 = !DILocation(line: 173, column: 49, scope: !5275)
!5284 = !DILocation(line: 183, column: 24, scope: !5275)
!5285 = !DILocation(line: 184, column: 30, scope: !5275)
!5286 = !DILocation(line: 184, column: 34, scope: !5275)
!5287 = !DILocation(line: 184, column: 26, scope: !5275)
!5288 = !DILocation(line: 185, column: 70, scope: !5275)
!5289 = !DILocation(line: 185, column: 74, scope: !5275)
!5290 = !DILocation(line: 185, column: 25, scope: !5275)
!5291 = !DILocation(line: 175, column: 2, scope: !5275)
!5292 = !{i64 2149694903, i64 2149694936, i64 2149694942, i64 2149694958, i64 2149694977, i64 2149695008, i64 2149695961, i64 2149694550, i64 2149695967, i64 2149696015, i64 2149696079, i64 2149696143, i64 2149696200, i64 2149696407, i64 2149696455, i64 2149696519, i64 2149696583, i64 2149696640, i64 2149694668, i64 2149694693, i64 2149696850, i64 2149696978, i64 2149696911, i64 2149696992, i64 2149697006, i64 2149697122, i64 2149697067, i64 2149697136, i64 2149694827, i64 1173740, i64 1173780, i64 1173789, i64 1173839, i64 1173860, i64 1173880}
!5293 = !DILocation(line: 187, column: 1, scope: !5275)
!5294 = !DILocation(line: 188, column: 2, scope: !5275)
!5295 = !DILocation(line: 189, column: 1, scope: !5275)
!5296 = !DILocation(line: 190, column: 2, scope: !5275)
!5297 = !DILocation(line: 191, column: 1, scope: !5275)
!5298 = distinct !DISubprogram(name: "native_pgd_clear", scope: !5299, file: !5299, line: 166, type: !5230, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5300)
!5299 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!5300 = !{!5301}
!5301 = !DILocalVariable(name: "pgd", arg: 1, scope: !5298, file: !5299, line: 166, type: !290)
!5302 = !DILocation(line: 166, column: 44, scope: !5298)
!5303 = !DILocation(line: 168, column: 17, scope: !5298)
!5304 = !DILocation(line: 168, column: 22, scope: !5298)
!5305 = !DILocation(line: 168, column: 2, scope: !5298)
!5306 = !DILocation(line: 169, column: 1, scope: !5298)
!5307 = distinct !DISubprogram(name: "p4d_clear_bad", scope: !2, file: !2, line: 32, type: !5308, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5311)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{null, !5310}
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!5311 = !{!5312}
!5312 = !DILocalVariable(name: "p4d", arg: 1, scope: !5307, file: !2, line: 32, type: !5310)
!5313 = !DILocation(line: 32, column: 27, scope: !5307)
!5314 = !DILocation(line: 34, column: 2, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5307, file: !2, line: 34, column: 2)
!5316 = !DILocation(line: 34, column: 2, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5315, file: !2, line: 34, column: 2)
!5318 = !DILocation(line: 35, column: 2, scope: !5307)
!5319 = !DILocation(line: 36, column: 1, scope: !5307)
!5320 = distinct !DISubprogram(name: "native_p4d_val", scope: !277, file: !277, line: 353, type: !5321, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5323)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!289, !285}
!5323 = !{!5324}
!5324 = !DILocalVariable(name: "p4d", arg: 1, scope: !5320, file: !277, line: 353, type: !285)
!5325 = !DILocation(line: 353, column: 45, scope: !5320)
!5326 = !DILocation(line: 355, column: 13, scope: !5320)
!5327 = !DILocation(line: 355, column: 2, scope: !5320)
!5328 = distinct !DISubprogram(name: "native_p4d_clear", scope: !5299, file: !5299, line: 156, type: !5308, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5329)
!5329 = !{!5330}
!5330 = !DILocalVariable(name: "p4d", arg: 1, scope: !5328, file: !5299, line: 156, type: !5310)
!5331 = !DILocation(line: 156, column: 44, scope: !5328)
!5332 = !DILocation(line: 158, column: 17, scope: !5328)
!5333 = !DILocation(line: 158, column: 22, scope: !5328)
!5334 = !DILocation(line: 158, column: 2, scope: !5328)
!5335 = !DILocation(line: 159, column: 1, scope: !5328)
!5336 = distinct !DISubprogram(name: "pud_clear_bad", scope: !2, file: !2, line: 40, type: !5337, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5339)
!5337 = !DISubroutineType(types: !5338)
!5338 = !{null, !1563}
!5339 = !{!5340}
!5340 = !DILocalVariable(name: "pud", arg: 1, scope: !5336, file: !2, line: 40, type: !1563)
!5341 = !DILocation(line: 40, column: 27, scope: !5336)
!5342 = !DILocation(line: 42, column: 2, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5336, file: !2, line: 42, column: 2)
!5344 = !DILocation(line: 42, column: 2, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5343, file: !2, line: 42, column: 2)
!5346 = !DILocation(line: 43, column: 2, scope: !5336)
!5347 = !DILocation(line: 44, column: 1, scope: !5336)
!5348 = distinct !DISubprogram(name: "native_pud_val", scope: !277, file: !277, line: 379, type: !5349, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5351)
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!297, !293}
!5351 = !{!5352}
!5352 = !DILocalVariable(name: "pud", arg: 1, scope: !5348, file: !277, line: 379, type: !293)
!5353 = !DILocation(line: 379, column: 45, scope: !5348)
!5354 = !DILocation(line: 381, column: 13, scope: !5348)
!5355 = !DILocation(line: 381, column: 2, scope: !5348)
!5356 = distinct !DISubprogram(name: "native_pud_clear", scope: !5299, file: !5299, line: 122, type: !5337, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5357)
!5357 = !{!5358}
!5358 = !DILocalVariable(name: "pud", arg: 1, scope: !5356, file: !5299, line: 122, type: !1563)
!5359 = !DILocation(line: 122, column: 44, scope: !5356)
!5360 = !DILocation(line: 124, column: 17, scope: !5356)
!5361 = !DILocation(line: 124, column: 22, scope: !5356)
!5362 = !DILocation(line: 124, column: 2, scope: !5356)
!5363 = !DILocation(line: 125, column: 1, scope: !5356)
!5364 = distinct !DISubprogram(name: "pmd_clear_bad", scope: !2, file: !2, line: 52, type: !5365, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5367)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{null, !1561}
!5367 = !{!5368}
!5368 = !DILocalVariable(name: "pmd", arg: 1, scope: !5364, file: !2, line: 52, type: !1561)
!5369 = !DILocation(line: 52, column: 27, scope: !5364)
!5370 = !DILocation(line: 54, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5364, file: !2, line: 54, column: 2)
!5372 = !DILocation(line: 54, column: 2, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5371, file: !2, line: 54, column: 2)
!5374 = !DILocation(line: 55, column: 2, scope: !5364)
!5375 = !DILocation(line: 56, column: 1, scope: !5364)
!5376 = distinct !DISubprogram(name: "native_pmd_val", scope: !277, file: !277, line: 403, type: !5377, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5379)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{!304, !300}
!5379 = !{!5380}
!5380 = !DILocalVariable(name: "pmd", arg: 1, scope: !5376, file: !277, line: 403, type: !300)
!5381 = !DILocation(line: 403, column: 45, scope: !5376)
!5382 = !DILocation(line: 405, column: 13, scope: !5376)
!5383 = !DILocation(line: 405, column: 2, scope: !5376)
!5384 = distinct !DISubprogram(name: "native_pmd_clear", scope: !5299, file: !5299, line: 86, type: !5365, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5385)
!5385 = !{!5386}
!5386 = !DILocalVariable(name: "pmd", arg: 1, scope: !5384, file: !5299, line: 86, type: !1561)
!5387 = !DILocation(line: 86, column: 44, scope: !5384)
!5388 = !DILocation(line: 88, column: 17, scope: !5384)
!5389 = !DILocation(line: 88, column: 22, scope: !5384)
!5390 = !DILocation(line: 88, column: 2, scope: !5384)
!5391 = !DILocation(line: 89, column: 1, scope: !5384)
!5392 = distinct !DISubprogram(name: "ptep_clear_flush", scope: !2, file: !2, line: 94, type: !5393, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5395)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!317, !1328, !56, !316}
!5395 = !{!5396, !5397, !5398, !5399, !5400}
!5396 = !DILocalVariable(name: "vma", arg: 1, scope: !5392, file: !2, line: 94, type: !1328)
!5397 = !DILocalVariable(name: "address", arg: 2, scope: !5392, file: !2, line: 94, type: !56)
!5398 = !DILocalVariable(name: "ptep", arg: 3, scope: !5392, file: !2, line: 95, type: !316)
!5399 = !DILocalVariable(name: "mm", scope: !5392, file: !2, line: 97, type: !1341)
!5400 = !DILocalVariable(name: "pte", scope: !5392, file: !2, line: 98, type: !317)
!5401 = !DILocation(line: 94, column: 47, scope: !5392)
!5402 = !DILocation(line: 94, column: 66, scope: !5392)
!5403 = !DILocation(line: 95, column: 17, scope: !5392)
!5404 = !DILocation(line: 97, column: 2, scope: !5392)
!5405 = !DILocation(line: 97, column: 20, scope: !5392)
!5406 = !DILocation(line: 97, column: 26, scope: !5392)
!5407 = !DILocation(line: 97, column: 32, scope: !5392)
!5408 = !DILocation(line: 98, column: 8, scope: !5392)
!5409 = !DILocation(line: 99, column: 8, scope: !5392)
!5410 = !DILocation(line: 99, column: 27, scope: !5392)
!5411 = !DILocation(line: 99, column: 31, scope: !5392)
!5412 = !DILocation(line: 99, column: 40, scope: !5392)
!5413 = !DILocation(line: 100, column: 21, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5392, file: !2, line: 100, column: 6)
!5415 = !DILocation(line: 100, column: 6, scope: !5414)
!5416 = !DILocation(line: 100, column: 6, scope: !5392)
!5417 = !DILocation(line: 101, column: 18, scope: !5414)
!5418 = !DILocation(line: 101, column: 23, scope: !5414)
!5419 = !DILocation(line: 101, column: 3, scope: !5414)
!5420 = !DILocation(line: 103, column: 1, scope: !5392)
!5421 = distinct !DISubprogram(name: "ptep_get_and_clear", scope: !5422, file: !5422, line: 1265, type: !5423, scopeLine: 1267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5425)
!5422 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!317, !1341, !56, !316}
!5425 = !{!5426, !5427, !5428, !5429}
!5426 = !DILocalVariable(name: "mm", arg: 1, scope: !5421, file: !5422, line: 1265, type: !1341)
!5427 = !DILocalVariable(name: "addr", arg: 2, scope: !5421, file: !5422, line: 1265, type: !56)
!5428 = !DILocalVariable(name: "ptep", arg: 3, scope: !5421, file: !5422, line: 1266, type: !316)
!5429 = !DILocalVariable(name: "pte", scope: !5421, file: !5422, line: 1268, type: !317)
!5430 = !DILocation(line: 1265, column: 58, scope: !5421)
!5431 = !DILocation(line: 1265, column: 76, scope: !5421)
!5432 = !DILocation(line: 1266, column: 19, scope: !5421)
!5433 = !DILocation(line: 1268, column: 8, scope: !5421)
!5434 = !DILocation(line: 1268, column: 40, scope: !5421)
!5435 = !DILocation(line: 1268, column: 14, scope: !5421)
!5436 = !DILocation(line: 1269, column: 29, scope: !5421)
!5437 = !DILocation(line: 1269, column: 2, scope: !5421)
!5438 = !DILocation(line: 1270, column: 2, scope: !5421)
!5439 = distinct !DISubprogram(name: "pte_accessible", scope: !5422, file: !5422, line: 963, type: !5440, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5442)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{!897, !1341, !317}
!5442 = !{!5443, !5444}
!5443 = !DILocalVariable(name: "mm", arg: 1, scope: !5439, file: !5422, line: 963, type: !1341)
!5444 = !DILocalVariable(name: "a", arg: 2, scope: !5439, file: !5422, line: 963, type: !317)
!5445 = !DILocation(line: 963, column: 53, scope: !5439)
!5446 = !DILocation(line: 963, column: 63, scope: !5439)
!5447 = !DILocation(line: 965, column: 6, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5439, file: !5422, line: 965, column: 6)
!5449 = !DILocation(line: 965, column: 19, scope: !5448)
!5450 = !DILocation(line: 965, column: 6, scope: !5439)
!5451 = !DILocation(line: 966, column: 3, scope: !5448)
!5452 = !DILocation(line: 968, column: 7, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5439, file: !5422, line: 968, column: 6)
!5454 = !DILocation(line: 968, column: 20, scope: !5453)
!5455 = !DILocation(line: 968, column: 38, scope: !5453)
!5456 = !DILocation(line: 969, column: 17, scope: !5453)
!5457 = !DILocation(line: 969, column: 21, scope: !5453)
!5458 = !DILocation(line: 969, column: 4, scope: !5453)
!5459 = !DILocation(line: 968, column: 6, scope: !5439)
!5460 = !DILocation(line: 970, column: 3, scope: !5453)
!5461 = !DILocation(line: 972, column: 2, scope: !5439)
!5462 = !DILocation(line: 973, column: 1, scope: !5439)
!5463 = distinct !DISubprogram(name: "flush_tlb_page", scope: !5464, file: !5464, line: 253, type: !5465, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5467)
!5464 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!5465 = !DISubroutineType(types: !5466)
!5466 = !{null, !1328, !56}
!5467 = !{!5468, !5469}
!5468 = !DILocalVariable(name: "vma", arg: 1, scope: !5463, file: !5464, line: 253, type: !1328)
!5469 = !DILocalVariable(name: "a", arg: 2, scope: !5463, file: !5464, line: 253, type: !56)
!5470 = !DILocation(line: 253, column: 58, scope: !5463)
!5471 = !DILocation(line: 253, column: 77, scope: !5463)
!5472 = !DILocation(line: 255, column: 21, scope: !5463)
!5473 = !DILocation(line: 255, column: 26, scope: !5463)
!5474 = !DILocation(line: 255, column: 33, scope: !5463)
!5475 = !DILocation(line: 255, column: 36, scope: !5463)
!5476 = !DILocation(line: 255, column: 38, scope: !5463)
!5477 = !DILocation(line: 255, column: 2, scope: !5463)
!5478 = !DILocation(line: 256, column: 1, scope: !5463)
!5479 = distinct !DISubprogram(name: "__pte_offset_map", scope: !2, file: !2, line: 282, type: !5480, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5482)
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!316, !1561, !56, !1561}
!5482 = !{!5483, !5484, !5485, !5486, !5487, !5488}
!5483 = !DILocalVariable(name: "pmd", arg: 1, scope: !5479, file: !2, line: 282, type: !1561)
!5484 = !DILocalVariable(name: "addr", arg: 2, scope: !5479, file: !2, line: 282, type: !56)
!5485 = !DILocalVariable(name: "pmdvalp", arg: 3, scope: !5479, file: !2, line: 282, type: !1561)
!5486 = !DILocalVariable(name: "irqflags", scope: !5479, file: !2, line: 284, type: !56)
!5487 = !DILocalVariable(name: "pmdval", scope: !5479, file: !2, line: 285, type: !300)
!5488 = !DILabel(scope: !5479, name: "nomap", file: !2, line: 303)
!5489 = !DILocation(line: 282, column: 32, scope: !5479)
!5490 = !DILocation(line: 282, column: 51, scope: !5479)
!5491 = !DILocation(line: 282, column: 64, scope: !5479)
!5492 = !DILocation(line: 284, column: 2, scope: !5479)
!5493 = !DILocation(line: 284, column: 16, scope: !5479)
!5494 = !DILocation(line: 285, column: 2, scope: !5479)
!5495 = !DILocation(line: 285, column: 8, scope: !5479)
!5496 = !DILocation(line: 287, column: 2, scope: !5479)
!5497 = !DILocation(line: 288, column: 13, scope: !5479)
!5498 = !DILocation(line: 288, column: 11, scope: !5479)
!5499 = !DILocation(line: 289, column: 11, scope: !5479)
!5500 = !DILocation(line: 289, column: 29, scope: !5479)
!5501 = !DILocation(line: 290, column: 24, scope: !5479)
!5502 = !DILocation(line: 290, column: 2, scope: !5479)
!5503 = !DILocation(line: 292, column: 6, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5479, file: !2, line: 292, column: 6)
!5505 = !DILocation(line: 292, column: 6, scope: !5479)
!5506 = !DILocation(line: 293, column: 4, scope: !5504)
!5507 = !DILocation(line: 293, column: 14, scope: !5504)
!5508 = !DILocation(line: 293, column: 3, scope: !5504)
!5509 = !DILocation(line: 294, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5479, file: !2, line: 294, column: 6)
!5511 = !DILocation(line: 294, column: 6, scope: !5479)
!5512 = !DILocation(line: 295, column: 3, scope: !5510)
!5513 = !DILocation(line: 296, column: 6, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5479, file: !2, line: 296, column: 6)
!5515 = !DILocation(line: 296, column: 6, scope: !5479)
!5516 = !DILocation(line: 297, column: 3, scope: !5514)
!5517 = !DILocation(line: 298, column: 6, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5479, file: !2, line: 298, column: 6)
!5519 = !DILocation(line: 298, column: 6, scope: !5479)
!5520 = !DILocation(line: 299, column: 17, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5518, file: !2, line: 298, column: 33)
!5522 = !DILocation(line: 299, column: 3, scope: !5521)
!5523 = !DILocation(line: 300, column: 3, scope: !5521)
!5524 = !DILocation(line: 302, column: 28, scope: !5479)
!5525 = !DILocation(line: 302, column: 9, scope: !5479)
!5526 = !DILocation(line: 302, column: 2, scope: !5479)
!5527 = !DILocation(line: 303, column: 1, scope: !5479)
!5528 = !DILocation(line: 304, column: 2, scope: !5479)
!5529 = !DILocation(line: 305, column: 2, scope: !5479)
!5530 = !DILocation(line: 306, column: 1, scope: !5479)
!5531 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5532, file: !5532, line: 782, type: !2260, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!5532 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5533 = !DILocation(line: 784, column: 2, scope: !5531)
!5534 = !DILocation(line: 786, column: 2, scope: !5531)
!5535 = !DILocation(line: 786, column: 2, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5531, file: !5532, line: 786, column: 2)
!5537 = !DILocation(line: 787, column: 2, scope: !5531)
!5538 = !DILocation(line: 787, column: 2, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5531, file: !5532, line: 787, column: 2)
!5540 = !DILocation(line: 789, column: 1, scope: !5531)
!5541 = distinct !DISubprogram(name: "pmdp_get_lockless_start", scope: !2, file: !2, line: 278, type: !5542, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!56}
!5544 = !DILocation(line: 278, column: 54, scope: !5541)
!5545 = distinct !DISubprogram(name: "pmdp_get_lockless", scope: !5546, file: !5546, line: 509, type: !5547, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5549)
!5546 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!300, !1561}
!5549 = !{!5550}
!5550 = !DILocalVariable(name: "pmdp", arg: 1, scope: !5545, file: !5546, line: 509, type: !1561)
!5551 = !DILocation(line: 509, column: 46, scope: !5545)
!5552 = !DILocation(line: 511, column: 18, scope: !5545)
!5553 = !DILocation(line: 511, column: 9, scope: !5545)
!5554 = !DILocation(line: 511, column: 2, scope: !5545)
!5555 = distinct !DISubprogram(name: "pmdp_get_lockless_end", scope: !2, file: !2, line: 279, type: !5556, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5558)
!5556 = !DISubroutineType(types: !5557)
!5557 = !{null, !56}
!5558 = !{!5559}
!5559 = !DILocalVariable(name: "irqflags", arg: 1, scope: !5555, file: !2, line: 279, type: !56)
!5560 = !DILocation(line: 279, column: 49, scope: !5555)
!5561 = !DILocation(line: 279, column: 61, scope: !5555)
!5562 = distinct !DISubprogram(name: "pmd_none", scope: !5422, file: !5422, line: 1004, type: !5563, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5565)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!39, !300}
!5565 = !{!5566, !5567}
!5566 = !DILocalVariable(name: "pmd", arg: 1, scope: !5562, file: !5422, line: 1004, type: !300)
!5567 = !DILocalVariable(name: "val", scope: !5562, file: !5422, line: 1008, type: !56)
!5568 = !DILocation(line: 1004, column: 34, scope: !5562)
!5569 = !DILocation(line: 1008, column: 2, scope: !5562)
!5570 = !DILocation(line: 1008, column: 16, scope: !5562)
!5571 = !DILocation(line: 1008, column: 22, scope: !5562)
!5572 = !DILocation(line: 1009, column: 10, scope: !5562)
!5573 = !DILocation(line: 1009, column: 14, scope: !5562)
!5574 = !DILocation(line: 1009, column: 41, scope: !5562)
!5575 = !DILocation(line: 1010, column: 1, scope: !5562)
!5576 = !DILocation(line: 1009, column: 2, scope: !5562)
!5577 = distinct !DISubprogram(name: "is_pmd_migration_entry", scope: !5578, file: !5578, line: 575, type: !5563, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5579)
!5578 = !DIFile(filename: "./include/linux/swapops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "419a3b3a4a5151a11499b62fe534498e")
!5579 = !{!5580}
!5580 = !DILocalVariable(name: "pmd", arg: 1, scope: !5577, file: !5578, line: 575, type: !300)
!5581 = !DILocation(line: 575, column: 48, scope: !5577)
!5582 = !DILocation(line: 577, column: 2, scope: !5577)
!5583 = distinct !DISubprogram(name: "pmd_trans_huge", scope: !5546, file: !5546, line: 1366, type: !5563, scopeLine: 1367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5584)
!5584 = !{!5585}
!5585 = !DILocalVariable(name: "pmd", arg: 1, scope: !5583, file: !5546, line: 1366, type: !300)
!5586 = !DILocation(line: 1366, column: 40, scope: !5583)
!5587 = !DILocation(line: 1368, column: 2, scope: !5583)
!5588 = distinct !DISubprogram(name: "pmd_devmap", scope: !5546, file: !5546, line: 1388, type: !5563, scopeLine: 1389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5589)
!5589 = !{!5590}
!5590 = !DILocalVariable(name: "pmd", arg: 1, scope: !5588, file: !5546, line: 1388, type: !300)
!5591 = !DILocation(line: 1388, column: 36, scope: !5588)
!5592 = !DILocation(line: 1390, column: 2, scope: !5588)
!5593 = distinct !DISubprogram(name: "pmd_bad", scope: !5422, file: !5422, line: 1039, type: !5563, scopeLine: 1040, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5594)
!5594 = !{!5595}
!5595 = !DILocalVariable(name: "pmd", arg: 1, scope: !5593, file: !5422, line: 1039, type: !300)
!5596 = !DILocation(line: 1039, column: 33, scope: !5593)
!5597 = !DILocation(line: 1041, column: 10, scope: !5593)
!5598 = !DILocation(line: 1041, column: 25, scope: !5593)
!5599 = !DILocation(line: 1041, column: 59, scope: !5593)
!5600 = !DILocation(line: 1041, column: 2, scope: !5593)
!5601 = distinct !DISubprogram(name: "__pte_map", scope: !5546, file: !5546, line: 107, type: !5602, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5604)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!316, !1561, !56}
!5604 = !{!5605, !5606}
!5605 = !DILocalVariable(name: "pmd", arg: 1, scope: !5601, file: !5546, line: 107, type: !1561)
!5606 = !DILocalVariable(name: "address", arg: 2, scope: !5601, file: !5546, line: 107, type: !56)
!5607 = !DILocation(line: 107, column: 39, scope: !5601)
!5608 = !DILocation(line: 107, column: 58, scope: !5601)
!5609 = !DILocation(line: 109, column: 27, scope: !5601)
!5610 = !DILocation(line: 109, column: 32, scope: !5601)
!5611 = !DILocation(line: 109, column: 9, scope: !5601)
!5612 = !DILocation(line: 109, column: 2, scope: !5601)
!5613 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5532, file: !5532, line: 813, type: !2260, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!5614 = !DILocation(line: 815, column: 2, scope: !5613)
!5615 = !DILocation(line: 815, column: 2, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5613, file: !5532, line: 815, column: 2)
!5617 = !DILocation(line: 818, column: 2, scope: !5613)
!5618 = !DILocation(line: 819, column: 2, scope: !5613)
!5619 = !DILocation(line: 819, column: 2, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5613, file: !5532, line: 819, column: 2)
!5621 = !DILocation(line: 820, column: 1, scope: !5613)
!5622 = distinct !DISubprogram(name: "pte_offset_map_nolock", scope: !2, file: !2, line: 308, type: !5623, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5626)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{!316, !1341, !1561, !56, !5625}
!5625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!5626 = !{!5627, !5628, !5629, !5630, !5631, !5632}
!5627 = !DILocalVariable(name: "mm", arg: 1, scope: !5622, file: !2, line: 308, type: !1341)
!5628 = !DILocalVariable(name: "pmd", arg: 2, scope: !5622, file: !2, line: 308, type: !1561)
!5629 = !DILocalVariable(name: "addr", arg: 3, scope: !5622, file: !2, line: 309, type: !56)
!5630 = !DILocalVariable(name: "ptlp", arg: 4, scope: !5622, file: !2, line: 309, type: !5625)
!5631 = !DILocalVariable(name: "pmdval", scope: !5622, file: !2, line: 311, type: !300)
!5632 = !DILocalVariable(name: "pte", scope: !5622, file: !2, line: 312, type: !316)
!5633 = !DILocation(line: 308, column: 48, scope: !5622)
!5634 = !DILocation(line: 308, column: 59, scope: !5622)
!5635 = !DILocation(line: 309, column: 23, scope: !5622)
!5636 = !DILocation(line: 309, column: 42, scope: !5622)
!5637 = !DILocation(line: 311, column: 2, scope: !5622)
!5638 = !DILocation(line: 311, column: 8, scope: !5622)
!5639 = !DILocation(line: 312, column: 2, scope: !5622)
!5640 = !DILocation(line: 312, column: 9, scope: !5622)
!5641 = !DILocation(line: 314, column: 25, scope: !5622)
!5642 = !DILocation(line: 314, column: 30, scope: !5622)
!5643 = !DILocation(line: 314, column: 8, scope: !5622)
!5644 = !DILocation(line: 314, column: 6, scope: !5622)
!5645 = !DILocation(line: 315, column: 6, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 315, column: 6)
!5647 = !DILocation(line: 315, column: 6, scope: !5622)
!5648 = !DILocation(line: 316, column: 23, scope: !5646)
!5649 = !DILocation(line: 316, column: 11, scope: !5646)
!5650 = !DILocation(line: 316, column: 4, scope: !5646)
!5651 = !DILocation(line: 316, column: 9, scope: !5646)
!5652 = !DILocation(line: 316, column: 3, scope: !5646)
!5653 = !DILocation(line: 317, column: 9, scope: !5622)
!5654 = !DILocation(line: 318, column: 1, scope: !5622)
!5655 = !DILocation(line: 317, column: 2, scope: !5622)
!5656 = distinct !DISubprogram(name: "pte_lockptr", scope: !1523, file: !1523, line: 2878, type: !5657, scopeLine: 2879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5659)
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!1573, !1341, !1561}
!5659 = !{!5660, !5661}
!5660 = !DILocalVariable(name: "mm", arg: 1, scope: !5656, file: !1523, line: 2878, type: !1341)
!5661 = !DILocalVariable(name: "pmd", arg: 2, scope: !5656, file: !1523, line: 2878, type: !1561)
!5662 = !DILocation(line: 2878, column: 57, scope: !5656)
!5663 = !DILocation(line: 2878, column: 68, scope: !5656)
!5664 = !DILocation(line: 2880, column: 20, scope: !5656)
!5665 = !DILocation(line: 2880, column: 9, scope: !5656)
!5666 = !DILocation(line: 2880, column: 2, scope: !5656)
!5667 = distinct !DISubprogram(name: "__pte_offset_map_lock", scope: !2, file: !2, line: 364, type: !5623, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5668)
!5668 = !{!5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676}
!5669 = !DILocalVariable(name: "mm", arg: 1, scope: !5667, file: !2, line: 364, type: !1341)
!5670 = !DILocalVariable(name: "pmd", arg: 2, scope: !5667, file: !2, line: 364, type: !1561)
!5671 = !DILocalVariable(name: "addr", arg: 3, scope: !5667, file: !2, line: 365, type: !56)
!5672 = !DILocalVariable(name: "ptlp", arg: 4, scope: !5667, file: !2, line: 365, type: !5625)
!5673 = !DILocalVariable(name: "ptl", scope: !5667, file: !2, line: 367, type: !1573)
!5674 = !DILocalVariable(name: "pmdval", scope: !5667, file: !2, line: 368, type: !300)
!5675 = !DILocalVariable(name: "pte", scope: !5667, file: !2, line: 369, type: !316)
!5676 = !DILabel(scope: !5667, name: "again", file: !2, line: 370)
!5677 = !DILocation(line: 364, column: 48, scope: !5667)
!5678 = !DILocation(line: 364, column: 59, scope: !5667)
!5679 = !DILocation(line: 365, column: 23, scope: !5667)
!5680 = !DILocation(line: 365, column: 42, scope: !5667)
!5681 = !DILocation(line: 367, column: 2, scope: !5667)
!5682 = !DILocation(line: 367, column: 14, scope: !5667)
!5683 = !DILocation(line: 368, column: 2, scope: !5667)
!5684 = !DILocation(line: 368, column: 8, scope: !5667)
!5685 = !DILocation(line: 369, column: 2, scope: !5667)
!5686 = !DILocation(line: 369, column: 9, scope: !5667)
!5687 = !DILocation(line: 370, column: 1, scope: !5667)
!5688 = !DILocation(line: 371, column: 25, scope: !5667)
!5689 = !DILocation(line: 371, column: 30, scope: !5667)
!5690 = !DILocation(line: 371, column: 8, scope: !5667)
!5691 = !DILocation(line: 371, column: 6, scope: !5667)
!5692 = !DILocation(line: 372, column: 6, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5667, file: !2, line: 372, column: 6)
!5694 = !DILocation(line: 372, column: 6, scope: !5667)
!5695 = !DILocation(line: 373, column: 10, scope: !5693)
!5696 = !DILocation(line: 373, column: 3, scope: !5693)
!5697 = !DILocation(line: 374, column: 20, scope: !5667)
!5698 = !DILocation(line: 374, column: 8, scope: !5667)
!5699 = !DILocation(line: 374, column: 6, scope: !5667)
!5700 = !DILocation(line: 375, column: 12, scope: !5667)
!5701 = !DILocation(line: 375, column: 2, scope: !5667)
!5702 = !DILocation(line: 376, column: 6, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5667, file: !2, line: 376, column: 6)
!5704 = !DILocation(line: 376, column: 6, scope: !5667)
!5705 = !DILocation(line: 377, column: 11, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5703, file: !2, line: 376, column: 56)
!5707 = !DILocation(line: 377, column: 4, scope: !5706)
!5708 = !DILocation(line: 377, column: 9, scope: !5706)
!5709 = !DILocation(line: 378, column: 10, scope: !5706)
!5710 = !DILocation(line: 378, column: 3, scope: !5706)
!5711 = !DILocation(line: 380, column: 2, scope: !5667)
!5712 = !DILocation(line: 380, column: 2, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5667, file: !2, line: 380, column: 2)
!5714 = !DILocation(line: 381, column: 2, scope: !5667)
!5715 = !DILocation(line: 382, column: 1, scope: !5667)
!5716 = distinct !DISubprogram(name: "spin_lock", scope: !5717, file: !5717, line: 349, type: !5718, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5720)
!5717 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5718 = !DISubroutineType(types: !5719)
!5719 = !{null, !1573}
!5720 = !{!5721}
!5721 = !DILocalVariable(name: "lock", arg: 1, scope: !5716, file: !5717, line: 349, type: !1573)
!5722 = !DILocation(line: 349, column: 51, scope: !5716)
!5723 = !DILocation(line: 351, column: 2, scope: !5716)
!5724 = !DILocation(line: 352, column: 1, scope: !5716)
!5725 = distinct !DISubprogram(name: "pmd_same", scope: !5546, file: !5546, line: 813, type: !5726, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5728)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!39, !300, !300}
!5728 = !{!5729, !5730}
!5729 = !DILocalVariable(name: "pmd_a", arg: 1, scope: !5725, file: !5546, line: 813, type: !300)
!5730 = !DILocalVariable(name: "pmd_b", arg: 2, scope: !5725, file: !5546, line: 813, type: !300)
!5731 = !DILocation(line: 813, column: 34, scope: !5725)
!5732 = !DILocation(line: 813, column: 47, scope: !5725)
!5733 = !DILocation(line: 815, column: 9, scope: !5725)
!5734 = !DILocation(line: 815, column: 27, scope: !5725)
!5735 = !DILocation(line: 815, column: 24, scope: !5725)
!5736 = !DILocation(line: 815, column: 2, scope: !5725)
!5737 = distinct !DISubprogram(name: "spin_unlock", scope: !5717, file: !5717, line: 389, type: !5718, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5738)
!5738 = !{!5739}
!5739 = !DILocalVariable(name: "lock", arg: 1, scope: !5737, file: !5717, line: 389, type: !1573)
!5740 = !DILocation(line: 389, column: 53, scope: !5737)
!5741 = !DILocation(line: 391, column: 2, scope: !5737)
!5742 = !DILocation(line: 392, column: 1, scope: !5737)
!5743 = distinct !DISubprogram(name: "pte_unmap", scope: !5546, file: !5546, line: 111, type: !5744, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5746)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{null, !316}
!5746 = !{!5747}
!5747 = !DILocalVariable(name: "pte", arg: 1, scope: !5743, file: !5546, line: 111, type: !316)
!5748 = !DILocation(line: 111, column: 37, scope: !5743)
!5749 = !DILocation(line: 113, column: 2, scope: !5743)
!5750 = !DILocation(line: 114, column: 1, scope: !5743)
!5751 = distinct !DISubprogram(name: "constant_test_bit", scope: !5255, file: !5255, line: 204, type: !5752, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5754)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!897, !306, !5258}
!5754 = !{!5755, !5756}
!5755 = !DILocalVariable(name: "nr", arg: 1, scope: !5751, file: !5255, line: 204, type: !306)
!5756 = !DILocalVariable(name: "addr", arg: 2, scope: !5751, file: !5255, line: 204, type: !5258)
!5757 = !DILocation(line: 204, column: 52, scope: !5751)
!5758 = !DILocation(line: 204, column: 86, scope: !5751)
!5759 = !DILocation(line: 206, column: 19, scope: !5751)
!5760 = !DILocation(line: 206, column: 22, scope: !5751)
!5761 = !DILocation(line: 206, column: 15, scope: !5751)
!5762 = !DILocation(line: 207, column: 4, scope: !5751)
!5763 = !DILocation(line: 207, column: 9, scope: !5751)
!5764 = !DILocation(line: 207, column: 12, scope: !5751)
!5765 = !DILocation(line: 206, column: 44, scope: !5751)
!5766 = !DILocation(line: 207, column: 37, scope: !5751)
!5767 = !DILocation(line: 206, column: 2, scope: !5751)
!5768 = distinct !DISubprogram(name: "variable_test_bit", scope: !5255, file: !5255, line: 224, type: !5752, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5769)
!5769 = !{!5770, !5771, !5772}
!5770 = !DILocalVariable(name: "nr", arg: 1, scope: !5768, file: !5255, line: 224, type: !306)
!5771 = !DILocalVariable(name: "addr", arg: 2, scope: !5768, file: !5255, line: 224, type: !5258)
!5772 = !DILocalVariable(name: "oldbit", scope: !5768, file: !5255, line: 226, type: !897)
!5773 = !DILocation(line: 224, column: 52, scope: !5768)
!5774 = !DILocation(line: 224, column: 86, scope: !5768)
!5775 = !DILocation(line: 226, column: 2, scope: !5768)
!5776 = !DILocation(line: 226, column: 7, scope: !5768)
!5777 = !DILocation(line: 231, column: 33, scope: !5768)
!5778 = !DILocation(line: 231, column: 46, scope: !5768)
!5779 = !DILocation(line: 228, column: 2, scope: !5768)
!5780 = !{i64 2148362587, i64 2148362661}
!5781 = !DILocation(line: 233, column: 9, scope: !5768)
!5782 = !{i8 0, i8 2}
!5783 = !DILocation(line: 234, column: 1, scope: !5768)
!5784 = !DILocation(line: 233, column: 2, scope: !5768)
!5785 = distinct !DISubprogram(name: "native_set_pgd", scope: !5299, file: !5299, line: 161, type: !5786, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5788)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{null, !290, !276}
!5788 = !{!5789, !5790}
!5789 = !DILocalVariable(name: "pgdp", arg: 1, scope: !5785, file: !5299, line: 161, type: !290)
!5790 = !DILocalVariable(name: "pgd", arg: 2, scope: !5785, file: !5299, line: 161, type: !276)
!5791 = !DILocation(line: 161, column: 42, scope: !5785)
!5792 = !DILocation(line: 161, column: 54, scope: !5785)
!5793 = !DILocation(line: 163, column: 2, scope: !5785)
!5794 = !DILocation(line: 163, column: 2, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5785, file: !5299, line: 163, column: 2)
!5796 = !DILocation(line: 163, column: 2, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5795, file: !5299, line: 163, column: 2)
!5798 = !DILocation(line: 163, column: 2, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5795, file: !5299, line: 163, column: 2)
!5800 = !DILocation(line: 164, column: 1, scope: !5785)
!5801 = distinct !DISubprogram(name: "native_make_pgd", scope: !277, file: !277, line: 330, type: !5802, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5804)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!276, !281}
!5804 = !{!5805}
!5805 = !DILocalVariable(name: "val", arg: 1, scope: !5801, file: !277, line: 330, type: !281)
!5806 = !DILocation(line: 330, column: 46, scope: !5801)
!5807 = !DILocation(line: 332, column: 17, scope: !5801)
!5808 = !DILocation(line: 332, column: 19, scope: !5801)
!5809 = !DILocation(line: 332, column: 23, scope: !5801)
!5810 = !DILocation(line: 332, column: 2, scope: !5801)
!5811 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !5422, file: !5422, line: 903, type: !5812, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5814)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{!276, !290, !276}
!5814 = !{!5815, !5816}
!5815 = !DILocalVariable(name: "pgdp", arg: 1, scope: !5811, file: !5422, line: 903, type: !290)
!5816 = !DILocalVariable(name: "pgd", arg: 2, scope: !5811, file: !5422, line: 903, type: !276)
!5817 = !DILocation(line: 903, column: 47, scope: !5811)
!5818 = !DILocation(line: 903, column: 59, scope: !5811)
!5819 = !DILocation(line: 905, column: 6, scope: !5811)
!5820 = !DILocation(line: 905, column: 7, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5811, file: !5422, line: 905, column: 6)
!5822 = !DILocation(line: 906, column: 10, scope: !5821)
!5823 = !DILocation(line: 906, column: 3, scope: !5821)
!5824 = !DILocation(line: 907, column: 30, scope: !5811)
!5825 = !DILocation(line: 907, column: 9, scope: !5811)
!5826 = !DILocation(line: 907, column: 2, scope: !5811)
!5827 = !DILocation(line: 908, column: 1, scope: !5811)
!5828 = !DISubprogram(name: "__pti_set_user_pgtbl", scope: !5422, file: !5422, line: 896, type: !5812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5829 = distinct !DISubprogram(name: "native_set_p4d", scope: !5299, file: !5299, line: 142, type: !5830, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5832)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{null, !5310, !285}
!5832 = !{!5833, !5834, !5835}
!5833 = !DILocalVariable(name: "p4dp", arg: 1, scope: !5829, file: !5299, line: 142, type: !5310)
!5834 = !DILocalVariable(name: "p4d", arg: 2, scope: !5829, file: !5299, line: 142, type: !285)
!5835 = !DILocalVariable(name: "pgd", scope: !5829, file: !5299, line: 144, type: !276)
!5836 = !DILocation(line: 142, column: 42, scope: !5829)
!5837 = !DILocation(line: 142, column: 54, scope: !5829)
!5838 = !DILocation(line: 144, column: 2, scope: !5829)
!5839 = !DILocation(line: 144, column: 8, scope: !5829)
!5840 = !DILocation(line: 146, column: 6, scope: !5829)
!5841 = !DILocation(line: 146, column: 6, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5829, file: !5299, line: 146, column: 6)
!5843 = !DILocation(line: 147, column: 3, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5842, file: !5299, line: 146, column: 72)
!5845 = !DILocation(line: 147, column: 3, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5844, file: !5299, line: 147, column: 3)
!5847 = !DILocation(line: 147, column: 3, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5846, file: !5299, line: 147, column: 3)
!5849 = !DILocation(line: 147, column: 3, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5846, file: !5299, line: 147, column: 3)
!5851 = !DILocation(line: 148, column: 3, scope: !5844)
!5852 = !DILocation(line: 151, column: 8, scope: !5829)
!5853 = !DILocation(line: 151, column: 24, scope: !5829)
!5854 = !DILocation(line: 152, column: 8, scope: !5829)
!5855 = !DILocation(line: 152, column: 36, scope: !5829)
!5856 = !DILocation(line: 153, column: 2, scope: !5829)
!5857 = !DILocation(line: 153, column: 2, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5829, file: !5299, line: 153, column: 2)
!5859 = !DILocation(line: 153, column: 2, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5858, file: !5299, line: 153, column: 2)
!5861 = !DILocation(line: 153, column: 2, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5858, file: !5299, line: 153, column: 2)
!5863 = !DILocation(line: 154, column: 1, scope: !5829)
!5864 = distinct !DISubprogram(name: "native_make_p4d", scope: !277, file: !277, line: 348, type: !5865, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5867)
!5865 = !DISubroutineType(types: !5866)
!5866 = !{!285, !297}
!5867 = !{!5868}
!5868 = !DILocalVariable(name: "val", arg: 1, scope: !5864, file: !277, line: 348, type: !297)
!5869 = !DILocation(line: 348, column: 46, scope: !5864)
!5870 = !DILocation(line: 350, column: 17, scope: !5864)
!5871 = !DILocation(line: 350, column: 19, scope: !5864)
!5872 = !DILocation(line: 350, column: 2, scope: !5864)
!5873 = distinct !DISubprogram(name: "native_set_pud", scope: !5299, file: !5299, line: 117, type: !5874, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5876)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{null, !1563, !293}
!5876 = !{!5877, !5878}
!5877 = !DILocalVariable(name: "pudp", arg: 1, scope: !5873, file: !5299, line: 117, type: !1563)
!5878 = !DILocalVariable(name: "pud", arg: 2, scope: !5873, file: !5299, line: 117, type: !293)
!5879 = !DILocation(line: 117, column: 42, scope: !5873)
!5880 = !DILocation(line: 117, column: 54, scope: !5873)
!5881 = !DILocation(line: 119, column: 2, scope: !5873)
!5882 = !DILocation(line: 119, column: 2, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5873, file: !5299, line: 119, column: 2)
!5884 = !DILocation(line: 119, column: 2, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5883, file: !5299, line: 119, column: 2)
!5886 = !DILocation(line: 119, column: 2, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5883, file: !5299, line: 119, column: 2)
!5888 = !DILocation(line: 120, column: 1, scope: !5873)
!5889 = distinct !DISubprogram(name: "native_make_pud", scope: !277, file: !277, line: 374, type: !5890, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5892)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!293, !304}
!5892 = !{!5893}
!5893 = !DILocalVariable(name: "val", arg: 1, scope: !5889, file: !277, line: 374, type: !304)
!5894 = !DILocation(line: 374, column: 46, scope: !5889)
!5895 = !DILocation(line: 376, column: 17, scope: !5889)
!5896 = !DILocation(line: 376, column: 19, scope: !5889)
!5897 = !DILocation(line: 376, column: 2, scope: !5889)
!5898 = distinct !DISubprogram(name: "native_set_pmd", scope: !5299, file: !5299, line: 81, type: !5899, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5901)
!5899 = !DISubroutineType(types: !5900)
!5900 = !{null, !1561, !300}
!5901 = !{!5902, !5903}
!5902 = !DILocalVariable(name: "pmdp", arg: 1, scope: !5898, file: !5299, line: 81, type: !1561)
!5903 = !DILocalVariable(name: "pmd", arg: 2, scope: !5898, file: !5299, line: 81, type: !300)
!5904 = !DILocation(line: 81, column: 42, scope: !5898)
!5905 = !DILocation(line: 81, column: 54, scope: !5898)
!5906 = !DILocation(line: 83, column: 2, scope: !5898)
!5907 = !DILocation(line: 83, column: 2, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5898, file: !5299, line: 83, column: 2)
!5909 = !DILocation(line: 83, column: 2, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5908, file: !5299, line: 83, column: 2)
!5911 = !DILocation(line: 83, column: 2, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5908, file: !5299, line: 83, column: 2)
!5913 = !DILocation(line: 84, column: 1, scope: !5898)
!5914 = distinct !DISubprogram(name: "native_make_pmd", scope: !277, file: !277, line: 398, type: !5915, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5917)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!300, !304}
!5917 = !{!5918}
!5918 = !DILocalVariable(name: "val", arg: 1, scope: !5914, file: !277, line: 398, type: !304)
!5919 = !DILocation(line: 398, column: 46, scope: !5914)
!5920 = !DILocation(line: 400, column: 17, scope: !5914)
!5921 = !DILocation(line: 400, column: 26, scope: !5914)
!5922 = !DILocation(line: 400, column: 2, scope: !5914)
!5923 = distinct !DISubprogram(name: "native_ptep_get_and_clear", scope: !5299, file: !5299, line: 91, type: !5924, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5926)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!317, !316}
!5926 = !{!5927, !5928, !5931}
!5927 = !DILocalVariable(name: "xp", arg: 1, scope: !5923, file: !5299, line: 91, type: !316)
!5928 = !DILocalVariable(name: "__ai_ptr", scope: !5929, file: !5299, line: 94, type: !5930)
!5929 = distinct !DILexicalBlock(scope: !5923, file: !5299, line: 94, column: 25)
!5930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!5931 = !DILocalVariable(name: "__ret", scope: !5932, file: !5299, line: 94, type: !305)
!5932 = distinct !DILexicalBlock(scope: !5929, file: !5299, line: 94, column: 25)
!5933 = !DILocation(line: 91, column: 54, scope: !5923)
!5934 = !DILocation(line: 94, column: 25, scope: !5929)
!5935 = !DILocation(line: 94, column: 25, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5929, file: !5299, line: 94, column: 25)
!5937 = !DILocation(line: 94, column: 25, scope: !5932)
!5938 = !{i64 2152373602}
!5939 = !DILocation(line: 94, column: 25, scope: !5923)
!5940 = !DILocation(line: 94, column: 9, scope: !5923)
!5941 = !DILocation(line: 94, column: 2, scope: !5923)
!5942 = distinct !DISubprogram(name: "page_table_check_pte_clear", scope: !5943, file: !5943, line: 115, type: !5944, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5946)
!5943 = !DIFile(filename: "./include/linux/page_table_check.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f306f72d0e6fa942e3056f300d545aa2")
!5944 = !DISubroutineType(types: !5945)
!5945 = !{null, !1341, !317}
!5946 = !{!5947, !5948}
!5947 = !DILocalVariable(name: "mm", arg: 1, scope: !5942, file: !5943, line: 115, type: !1341)
!5948 = !DILocalVariable(name: "pte", arg: 2, scope: !5942, file: !5943, line: 115, type: !317)
!5949 = !DILocation(line: 115, column: 65, scope: !5942)
!5950 = !DILocation(line: 115, column: 75, scope: !5942)
!5951 = !DILocation(line: 117, column: 1, scope: !5942)
!5952 = distinct !DISubprogram(name: "native_make_pte", scope: !277, file: !277, line: 473, type: !5953, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5955)
!5953 = !DISubroutineType(types: !5954)
!5954 = !{!317, !305}
!5955 = !{!5956}
!5956 = !DILocalVariable(name: "val", arg: 1, scope: !5952, file: !277, line: 473, type: !305)
!5957 = !DILocation(line: 473, column: 46, scope: !5952)
!5958 = !DILocation(line: 475, column: 17, scope: !5952)
!5959 = !DILocation(line: 475, column: 26, scope: !5952)
!5960 = !DILocation(line: 475, column: 2, scope: !5952)
!5961 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5962, file: !5962, line: 94, type: !5963, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5968)
!5962 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5963 = !DISubroutineType(types: !5964)
!5964 = !{null, !5965, !52}
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5967)
!5967 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5968 = !{!5969, !5970}
!5969 = !DILocalVariable(name: "v", arg: 1, scope: !5961, file: !5962, line: 94, type: !5965)
!5970 = !DILocalVariable(name: "size", arg: 2, scope: !5961, file: !5962, line: 94, type: !52)
!5971 = !DILocation(line: 94, column: 79, scope: !5961)
!5972 = !DILocation(line: 94, column: 89, scope: !5961)
!5973 = !DILocation(line: 96, column: 20, scope: !5961)
!5974 = !DILocation(line: 96, column: 23, scope: !5961)
!5975 = !DILocation(line: 96, column: 2, scope: !5961)
!5976 = !DILocation(line: 97, column: 2, scope: !5961)
!5977 = !DILocation(line: 98, column: 1, scope: !5961)
!5978 = distinct !DISubprogram(name: "kasan_check_write", scope: !5979, file: !5979, line: 44, type: !5980, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5982)
!5979 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5980 = !DISubroutineType(types: !5981)
!5981 = !{!897, !5965, !22}
!5982 = !{!5983, !5984}
!5983 = !DILocalVariable(name: "p", arg: 1, scope: !5978, file: !5979, line: 44, type: !5965)
!5984 = !DILocalVariable(name: "size", arg: 2, scope: !5978, file: !5979, line: 44, type: !22)
!5985 = !DILocation(line: 44, column: 59, scope: !5978)
!5986 = !DILocation(line: 44, column: 75, scope: !5978)
!5987 = !DILocation(line: 46, column: 2, scope: !5978)
!5988 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5989, file: !5989, line: 229, type: !5990, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !5992)
!5989 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5990 = !DISubroutineType(types: !5991)
!5991 = !{null, !5965, !52, !39}
!5992 = !{!5993, !5994, !5995}
!5993 = !DILocalVariable(name: "ptr", arg: 1, scope: !5988, file: !5989, line: 229, type: !5965)
!5994 = !DILocalVariable(name: "size", arg: 2, scope: !5988, file: !5989, line: 229, type: !52)
!5995 = !DILocalVariable(name: "type", arg: 3, scope: !5988, file: !5989, line: 230, type: !39)
!5996 = !DILocation(line: 229, column: 60, scope: !5988)
!5997 = !DILocation(line: 229, column: 72, scope: !5988)
!5998 = !DILocation(line: 230, column: 15, scope: !5988)
!5999 = !DILocation(line: 230, column: 23, scope: !5988)
!6000 = distinct !DISubprogram(name: "pte_flags", scope: !277, file: !277, line: 483, type: !6001, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6003)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{!305, !317}
!6003 = !{!6004}
!6004 = !DILocalVariable(name: "pte", arg: 1, scope: !6000, file: !277, line: 483, type: !317)
!6005 = !DILocation(line: 483, column: 40, scope: !6000)
!6006 = !DILocation(line: 485, column: 9, scope: !6000)
!6007 = !DILocation(line: 485, column: 29, scope: !6000)
!6008 = !DILocation(line: 485, column: 2, scope: !6000)
!6009 = distinct !DISubprogram(name: "atomic_read", scope: !6010, file: !6010, line: 30, type: !6011, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6015)
!6010 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!39, !6013}
!6013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6014, size: 64)
!6014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!6015 = !{!6016}
!6016 = !DILocalVariable(name: "v", arg: 1, scope: !6009, file: !6010, line: 30, type: !6013)
!6017 = !DILocation(line: 30, column: 29, scope: !6009)
!6018 = !DILocation(line: 32, column: 25, scope: !6009)
!6019 = !DILocation(line: 32, column: 2, scope: !6009)
!6020 = !DILocation(line: 33, column: 25, scope: !6009)
!6021 = !DILocation(line: 33, column: 9, scope: !6009)
!6022 = !DILocation(line: 33, column: 2, scope: !6009)
!6023 = distinct !DISubprogram(name: "native_pte_val", scope: !277, file: !277, line: 478, type: !6001, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6024)
!6024 = !{!6025}
!6025 = !DILocalVariable(name: "pte", arg: 1, scope: !6023, file: !277, line: 478, type: !317)
!6026 = !DILocation(line: 478, column: 45, scope: !6023)
!6027 = !DILocation(line: 480, column: 13, scope: !6023)
!6028 = !DILocation(line: 480, column: 2, scope: !6023)
!6029 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5962, file: !5962, line: 66, type: !5963, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6030)
!6030 = !{!6031, !6032}
!6031 = !DILocalVariable(name: "v", arg: 1, scope: !6029, file: !5962, line: 66, type: !5965)
!6032 = !DILocalVariable(name: "size", arg: 2, scope: !6029, file: !5962, line: 66, type: !52)
!6033 = !DILocation(line: 66, column: 73, scope: !6029)
!6034 = !DILocation(line: 66, column: 83, scope: !6029)
!6035 = !DILocation(line: 68, column: 19, scope: !6029)
!6036 = !DILocation(line: 68, column: 22, scope: !6029)
!6037 = !DILocation(line: 68, column: 2, scope: !6029)
!6038 = !DILocation(line: 69, column: 2, scope: !6029)
!6039 = !DILocation(line: 70, column: 1, scope: !6029)
!6040 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6041, file: !6041, line: 442, type: !6011, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6042)
!6041 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6042 = !{!6043}
!6043 = !DILocalVariable(name: "v", arg: 1, scope: !6040, file: !6041, line: 442, type: !6013)
!6044 = !DILocation(line: 442, column: 33, scope: !6040)
!6045 = !DILocation(line: 444, column: 26, scope: !6040)
!6046 = !DILocation(line: 444, column: 9, scope: !6040)
!6047 = !DILocation(line: 444, column: 2, scope: !6040)
!6048 = distinct !DISubprogram(name: "kasan_check_read", scope: !5979, file: !5979, line: 40, type: !5980, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6049)
!6049 = !{!6050, !6051}
!6050 = !DILocalVariable(name: "p", arg: 1, scope: !6048, file: !5979, line: 40, type: !5965)
!6051 = !DILocalVariable(name: "size", arg: 2, scope: !6048, file: !5979, line: 40, type: !22)
!6052 = !DILocation(line: 40, column: 58, scope: !6048)
!6053 = !DILocation(line: 40, column: 74, scope: !6048)
!6054 = !DILocation(line: 42, column: 2, scope: !6048)
!6055 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6056, file: !6056, line: 17, type: !6011, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6057)
!6056 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6057 = !{!6058}
!6058 = !DILocalVariable(name: "v", arg: 1, scope: !6055, file: !6056, line: 17, type: !6013)
!6059 = !DILocation(line: 17, column: 61, scope: !6055)
!6060 = !DILocation(line: 23, column: 9, scope: !6055)
!6061 = !DILocation(line: 23, column: 2, scope: !6055)
!6062 = !DISubprogram(name: "flush_tlb_mm_range", scope: !5464, file: !5464, line: 248, type: !6063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{null, !1341, !56, !56, !22, !897}
!6065 = !DISubprogram(name: "__rcu_read_lock", scope: !5532, file: !5532, line: 74, type: !2260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6066 = distinct !DISubprogram(name: "pmdp_get", scope: !5546, file: !5546, line: 289, type: !5547, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6067)
!6067 = !{!6068}
!6068 = !DILocalVariable(name: "pmdp", arg: 1, scope: !6066, file: !5546, line: 289, type: !1561)
!6069 = !DILocation(line: 289, column: 37, scope: !6066)
!6070 = !DILocation(line: 291, column: 9, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6066, file: !5546, line: 291, column: 9)
!6072 = !DILocation(line: 291, column: 9, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6071, file: !5546, line: 291, column: 9)
!6074 = !DILocation(line: 291, column: 2, scope: !6066)
!6075 = distinct !DISubprogram(name: "pmd_flags", scope: !277, file: !277, line: 468, type: !5377, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6076)
!6076 = !{!6077}
!6077 = !DILocalVariable(name: "pmd", arg: 1, scope: !6075, file: !277, line: 468, type: !300)
!6078 = !DILocation(line: 468, column: 40, scope: !6075)
!6079 = !DILocation(line: 470, column: 9, scope: !6075)
!6080 = !DILocation(line: 470, column: 31, scope: !6075)
!6081 = !DILocation(line: 470, column: 29, scope: !6075)
!6082 = !DILocation(line: 470, column: 2, scope: !6075)
!6083 = distinct !DISubprogram(name: "pmd_flags_mask", scope: !277, file: !277, line: 463, type: !5377, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6084)
!6084 = !{!6085}
!6085 = !DILocalVariable(name: "pmd", arg: 1, scope: !6083, file: !277, line: 463, type: !300)
!6086 = !DILocation(line: 463, column: 45, scope: !6083)
!6087 = !DILocation(line: 465, column: 10, scope: !6083)
!6088 = !DILocation(line: 465, column: 9, scope: !6083)
!6089 = !DILocation(line: 465, column: 2, scope: !6083)
!6090 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !277, file: !277, line: 455, type: !5377, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6091)
!6091 = !{!6092}
!6092 = !DILocalVariable(name: "pmd", arg: 1, scope: !6090, file: !277, line: 455, type: !300)
!6093 = !DILocation(line: 455, column: 43, scope: !6090)
!6094 = !DILocation(line: 457, column: 6, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6090, file: !277, line: 457, column: 6)
!6096 = !DILocation(line: 457, column: 26, scope: !6095)
!6097 = !DILocation(line: 457, column: 6, scope: !6090)
!6098 = !DILocation(line: 458, column: 3, scope: !6095)
!6099 = !DILocation(line: 460, column: 3, scope: !6095)
!6100 = !DILocation(line: 461, column: 1, scope: !6090)
!6101 = distinct !DISubprogram(name: "pte_offset_kernel", scope: !5546, file: !5546, line: 92, type: !5602, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6102)
!6102 = !{!6103, !6104}
!6103 = !DILocalVariable(name: "pmd", arg: 1, scope: !6101, file: !5546, line: 92, type: !1561)
!6104 = !DILocalVariable(name: "address", arg: 2, scope: !6101, file: !5546, line: 92, type: !56)
!6105 = !DILocation(line: 92, column: 47, scope: !6101)
!6106 = !DILocation(line: 92, column: 66, scope: !6101)
!6107 = !DILocation(line: 94, column: 34, scope: !6101)
!6108 = !DILocation(line: 94, column: 18, scope: !6101)
!6109 = !DILocation(line: 94, column: 9, scope: !6101)
!6110 = !DILocation(line: 94, column: 51, scope: !6101)
!6111 = !DILocation(line: 94, column: 41, scope: !6101)
!6112 = !DILocation(line: 94, column: 39, scope: !6101)
!6113 = !DILocation(line: 94, column: 2, scope: !6101)
!6114 = distinct !DISubprogram(name: "pmd_page_vaddr", scope: !5422, file: !5422, line: 1012, type: !6115, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6117)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!56, !300}
!6117 = !{!6118}
!6118 = !DILocalVariable(name: "pmd", arg: 1, scope: !6114, file: !5422, line: 1012, type: !300)
!6119 = !DILocation(line: 1012, column: 50, scope: !6114)
!6120 = !DILocation(line: 1014, column: 24, scope: !6114)
!6121 = !DILocation(line: 1014, column: 9, scope: !6114)
!6122 = !DILocation(line: 1014, column: 2, scope: !6114)
!6123 = distinct !DISubprogram(name: "pte_index", scope: !5546, file: !5546, line: 65, type: !6124, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6126)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!56, !56}
!6126 = !{!6127}
!6127 = !DILocalVariable(name: "address", arg: 1, scope: !6123, file: !5546, line: 65, type: !56)
!6128 = !DILocation(line: 65, column: 53, scope: !6123)
!6129 = !DILocation(line: 67, column: 10, scope: !6123)
!6130 = !DILocation(line: 67, column: 18, scope: !6123)
!6131 = !DILocation(line: 67, column: 33, scope: !6123)
!6132 = !DILocation(line: 67, column: 2, scope: !6123)
!6133 = !DISubprogram(name: "__rcu_read_unlock", scope: !5532, file: !5532, line: 75, type: !2260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6134 = distinct !DISubprogram(name: "ptlock_ptr", scope: !1523, file: !1523, line: 2872, type: !6135, scopeLine: 2873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6137)
!6135 = !DISubroutineType(types: !6136)
!6136 = !{!1573, !321}
!6137 = !{!6138}
!6138 = !DILocalVariable(name: "ptdesc", arg: 1, scope: !6134, file: !1523, line: 2872, type: !321)
!6139 = !DILocation(line: 2872, column: 53, scope: !6134)
!6140 = !DILocation(line: 2874, column: 10, scope: !6134)
!6141 = !DILocation(line: 2874, column: 18, scope: !6134)
!6142 = !DILocation(line: 2874, column: 2, scope: !6134)
!6143 = distinct !DISubprogram(name: "pmd_pfn", scope: !5422, file: !5422, line: 230, type: !6115, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6144)
!6144 = !{!6145, !6146}
!6145 = !DILocalVariable(name: "pmd", arg: 1, scope: !6143, file: !5422, line: 230, type: !300)
!6146 = !DILocalVariable(name: "pfn", scope: !6143, file: !5422, line: 232, type: !307)
!6147 = !DILocation(line: 230, column: 43, scope: !6143)
!6148 = !DILocation(line: 232, column: 2, scope: !6143)
!6149 = !DILocation(line: 232, column: 14, scope: !6143)
!6150 = !DILocation(line: 232, column: 20, scope: !6143)
!6151 = !DILocation(line: 233, column: 23, scope: !6143)
!6152 = !DILocation(line: 233, column: 9, scope: !6143)
!6153 = !DILocation(line: 233, column: 6, scope: !6143)
!6154 = !DILocation(line: 234, column: 10, scope: !6143)
!6155 = !DILocation(line: 234, column: 16, scope: !6143)
!6156 = !DILocation(line: 234, column: 14, scope: !6143)
!6157 = !DILocation(line: 234, column: 35, scope: !6143)
!6158 = !DILocation(line: 235, column: 1, scope: !6143)
!6159 = !DILocation(line: 234, column: 2, scope: !6143)
!6160 = distinct !DISubprogram(name: "protnone_mask", scope: !6161, file: !6161, line: 22, type: !6162, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6164)
!6161 = !DIFile(filename: "./arch/x86/include/asm/pgtable-invert.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef882e7cb6c7c8e916706b4e150780ec")
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!308, !308}
!6164 = !{!6165}
!6165 = !DILocalVariable(name: "val", arg: 1, scope: !6160, file: !6161, line: 22, type: !308)
!6166 = !DILocation(line: 22, column: 37, scope: !6160)
!6167 = !DILocation(line: 24, column: 28, scope: !6160)
!6168 = !DILocation(line: 24, column: 9, scope: !6160)
!6169 = !DILocation(line: 24, column: 2, scope: !6160)
!6170 = distinct !DISubprogram(name: "__pte_needs_invert", scope: !6161, file: !6161, line: 16, type: !6171, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6173)
!6171 = !DISubroutineType(types: !6172)
!6172 = !{!897, !308}
!6173 = !{!6174}
!6174 = !DILocalVariable(name: "val", arg: 1, scope: !6170, file: !6161, line: 16, type: !308)
!6175 = !DILocation(line: 16, column: 43, scope: !6170)
!6176 = !DILocation(line: 18, column: 9, scope: !6170)
!6177 = !DILocation(line: 18, column: 13, scope: !6170)
!6178 = !DILocation(line: 18, column: 18, scope: !6170)
!6179 = !DILocation(line: 18, column: 22, scope: !6170)
!6180 = !DILocation(line: 18, column: 16, scope: !6170)
!6181 = !DILocation(line: 0, scope: !6170)
!6182 = !DILocation(line: 18, column: 2, scope: !6170)
!6183 = !DISubprogram(name: "_raw_spin_lock", scope: !6184, file: !6184, line: 22, type: !6185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6184 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6185 = !DISubroutineType(types: !6186)
!6186 = !{null, !6187}
!6187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!6188 = !DISubprogram(name: "_raw_spin_unlock", scope: !6184, file: !6184, line: 39, type: !6185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
