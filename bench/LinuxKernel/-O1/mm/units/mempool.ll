; ModuleID = 'mm/mempool.c'
source_filename = "mm/mempool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_exit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_destroy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_init_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_init_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_create_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_create_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_resize: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_resize ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_alloc_slab: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_alloc_slab ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_free_slab: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_free_slab ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_kmalloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_kmalloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_kfree: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_kfree ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_alloc_pages: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_alloc_pages ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mempool_free_pages: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mempool_free_pages ; .previous"

%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID___addressable_mempool_exit329 = internal global ptr @mempool_exit, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_mempool_destroy330 = internal global ptr @mempool_destroy, section ".discard.addressable", align 8, !dbg !5101
@mempool_init_node.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5103
@.str = private unnamed_addr constant [12 x i8] c"&pool->wait\00", align 1, !dbg !5139
@__UNIQUE_ID___addressable_mempool_init_node331 = internal global ptr @mempool_init_node, section ".discard.addressable", align 8, !dbg !5142
@__UNIQUE_ID___addressable_mempool_init332 = internal global ptr @mempool_init, section ".discard.addressable", align 8, !dbg !5144
@__UNIQUE_ID___addressable_mempool_create333 = internal global ptr @mempool_create, section ".discard.addressable", align 8, !dbg !5146
@__UNIQUE_ID___addressable_mempool_create_node334 = internal global ptr @mempool_create_node, section ".discard.addressable", align 8, !dbg !5148
@.str.1 = private unnamed_addr constant [13 x i8] c"mm/mempool.c\00", align 1, !dbg !5150
@__UNIQUE_ID___addressable_mempool_resize335 = internal global ptr @mempool_resize, section ".discard.addressable", align 8, !dbg !5155
@__UNIQUE_ID___addressable_mempool_alloc336 = internal global ptr @mempool_alloc, section ".discard.addressable", align 8, !dbg !5157
@__UNIQUE_ID___addressable_mempool_free338 = internal global ptr @mempool_free, section ".discard.addressable", align 8, !dbg !5159
@__UNIQUE_ID___addressable_mempool_alloc_slab339 = internal global ptr @mempool_alloc_slab, section ".discard.addressable", align 8, !dbg !5161
@__UNIQUE_ID___addressable_mempool_free_slab340 = internal global ptr @mempool_free_slab, section ".discard.addressable", align 8, !dbg !5163
@__UNIQUE_ID___addressable_mempool_kmalloc341 = internal global ptr @mempool_kmalloc, section ".discard.addressable", align 8, !dbg !5165
@__UNIQUE_ID___addressable_mempool_kfree342 = internal global ptr @mempool_kfree, section ".discard.addressable", align 8, !dbg !5167
@__UNIQUE_ID___addressable_mempool_alloc_pages343 = internal global ptr @mempool_alloc_pages, section ".discard.addressable", align 8, !dbg !5169
@__UNIQUE_ID___addressable_mempool_free_pages344 = internal global ptr @mempool_free_pages, section ".discard.addressable", align 8, !dbg !5171
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5173
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5178
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID___addressable_mempool_exit329, ptr @__UNIQUE_ID___addressable_mempool_destroy330, ptr @__UNIQUE_ID___addressable_mempool_init_node331, ptr @__UNIQUE_ID___addressable_mempool_init332, ptr @__UNIQUE_ID___addressable_mempool_create333, ptr @__UNIQUE_ID___addressable_mempool_create_node334, ptr @__UNIQUE_ID___addressable_mempool_resize335, ptr @__UNIQUE_ID___addressable_mempool_alloc336, ptr @__UNIQUE_ID___addressable_mempool_free338, ptr @__UNIQUE_ID___addressable_mempool_alloc_slab339, ptr @__UNIQUE_ID___addressable_mempool_free_slab340, ptr @__UNIQUE_ID___addressable_mempool_kmalloc341, ptr @__UNIQUE_ID___addressable_mempool_kfree342, ptr @__UNIQUE_ID___addressable_mempool_alloc_pages343, ptr @__UNIQUE_ID___addressable_mempool_free_pages344, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mempool_exit(ptr noundef %pool) #0 align 16 !dbg !5191 {
entry:
  %pool.addr = alloca ptr, align 8
  %element = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5195, metadata !DIExpression()), !dbg !5198
  br label %while.cond, !dbg !5199

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5200
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 2, !dbg !5201
  %1 = load i32, ptr %curr_nr, align 8, !dbg !5201
  %tobool = icmp ne i32 %1, 0, !dbg !5199
  br i1 %tobool, label %while.body, label %while.end, !dbg !5199

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #16, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %element, metadata !5196, metadata !DIExpression()), !dbg !5203
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5204
  %call = call ptr @remove_element(ptr noundef %2) #17, !dbg !5205
  store ptr %call, ptr %element, align 8, !dbg !5203
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !5206
  %free = getelementptr inbounds %struct.mempool_s, ptr %3, i32 0, i32 6, !dbg !5207
  %4 = load ptr, ptr %free, align 8, !dbg !5207
  %5 = load ptr, ptr %element, align 8, !dbg !5208
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5209
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %6, i32 0, i32 4, !dbg !5210
  %7 = load ptr, ptr %pool_data, align 8, !dbg !5210
  call void %4(ptr noundef %5, ptr noundef %7) #17, !dbg !5206
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #16, !dbg !5211
  br label %while.cond, !dbg !5199, !llvm.loop !5212

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %pool.addr, align 8, !dbg !5215
  %elements = getelementptr inbounds %struct.mempool_s, ptr %8, i32 0, i32 3, !dbg !5216
  %9 = load ptr, ptr %elements, align 8, !dbg !5216
  call void @kfree(ptr noundef %9) #17, !dbg !5217
  %10 = load ptr, ptr %pool.addr, align 8, !dbg !5218
  %elements1 = getelementptr inbounds %struct.mempool_s, ptr %10, i32 0, i32 3, !dbg !5219
  store ptr null, ptr %elements1, align 8, !dbg !5220
  ret void, !dbg !5221
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @remove_element(ptr noundef %pool) #0 align 16 !dbg !5222 {
entry:
  %pool.addr = alloca ptr, align 8
  %element = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5226, metadata !DIExpression()), !dbg !5228
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #16, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %element, metadata !5227, metadata !DIExpression()), !dbg !5230
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5231
  %elements = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3, !dbg !5232
  %1 = load ptr, ptr %elements, align 8, !dbg !5232
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5233
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %2, i32 0, i32 2, !dbg !5234
  %3 = load i32, ptr %curr_nr, align 8, !dbg !5235
  %dec = add i32 %3, -1, !dbg !5235
  store i32 %dec, ptr %curr_nr, align 8, !dbg !5235
  %idxprom = sext i32 %dec to i64, !dbg !5231
  %arrayidx = getelementptr ptr, ptr %1, i64 %idxprom, !dbg !5231
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !5231
  store ptr %4, ptr %element, align 8, !dbg !5230
  br label %do.body, !dbg !5236

do.body:                                          ; preds = %entry
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !5237
  %curr_nr1 = getelementptr inbounds %struct.mempool_s, ptr %5, i32 0, i32 2, !dbg !5237
  %6 = load i32, ptr %curr_nr1, align 8, !dbg !5237
  %cmp = icmp slt i32 %6, 0, !dbg !5237
  %lnot = xor i1 %cmp, true, !dbg !5237
  %lnot2 = xor i1 %lnot, true, !dbg !5237
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5237
  %conv = sext i32 %lnot.ext to i64, !dbg !5237
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5237
  %tobool = icmp ne i64 %expval, 0, !dbg !5237
  br i1 %tobool, label %if.then, label %if.end, !dbg !5240

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !5237

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !5241

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !5243

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5243

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !5241

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 139, i32 0, i64 12) #16, !dbg !5245, !srcloc !5247
  br label %do.cond6, !dbg !5245

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5245

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !5241

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !5241

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !5241

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !5240

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !5240

do.end11:                                         ; preds = %do.cond10
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !5248
  %8 = load ptr, ptr %element, align 8, !dbg !5249
  call void @kasan_unpoison_element(ptr noundef %7, ptr noundef %8) #17, !dbg !5250
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !5251
  %10 = load ptr, ptr %element, align 8, !dbg !5252
  call void @check_element(ptr noundef %9, ptr noundef %10) #17, !dbg !5253
  %11 = load ptr, ptr %element, align 8, !dbg !5254
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #16, !dbg !5255
  ret ptr %11, !dbg !5256
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5257 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mempool_destroy(ptr noundef %pool) #0 align 16 !dbg !5260 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5264
  %tobool = icmp ne ptr %0, null, !dbg !5264
  %lnot = xor i1 %tobool, true, !dbg !5264
  %lnot1 = xor i1 %lnot, true, !dbg !5264
  %lnot2 = xor i1 %lnot1, true, !dbg !5264
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5264
  %conv = sext i32 %lnot.ext to i64, !dbg !5264
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5264
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5264
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5266

if.then:                                          ; preds = %entry
  br label %return, !dbg !5267

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !5268
  call void @mempool_exit(ptr noundef %1) #17, !dbg !5269
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5270
  call void @kfree(ptr noundef %2) #17, !dbg !5271
  br label %return, !dbg !5272

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5272
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mempool_init_node(ptr noundef %pool, i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data, i32 noundef %gfp_mask, i32 noundef %node_id) #0 align 16 !dbg !5105 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %min_nr.addr = alloca i32, align 4
  %alloc_fn.addr = alloca ptr, align 8
  %free_fn.addr = alloca ptr, align 8
  %pool_data.addr = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %node_id.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %element = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5130, metadata !DIExpression()), !dbg !5273
  store i32 %min_nr, ptr %min_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_nr.addr, metadata !5131, metadata !DIExpression()), !dbg !5274
  store ptr %alloc_fn, ptr %alloc_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alloc_fn.addr, metadata !5132, metadata !DIExpression()), !dbg !5275
  store ptr %free_fn, ptr %free_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %free_fn.addr, metadata !5133, metadata !DIExpression()), !dbg !5276
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !5134, metadata !DIExpression()), !dbg !5277
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5135, metadata !DIExpression()), !dbg !5278
  store i32 %node_id, ptr %node_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node_id.addr, metadata !5136, metadata !DIExpression()), !dbg !5279
  br label %do.body, !dbg !5280

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5281
  %lock = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 0, !dbg !5281
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !5281
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !5281
  %lock1 = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 0, !dbg !5281
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5281
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !5281
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5281
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !5281
  store i32 0, ptr %counter, align 4, !dbg !5281
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5281
  br label %do.end, !dbg !5281

do.end:                                           ; preds = %do.body
  %4 = load i32, ptr %min_nr.addr, align 4, !dbg !5283
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !5284
  %min_nr2 = getelementptr inbounds %struct.mempool_s, ptr %5, i32 0, i32 1, !dbg !5285
  store i32 %4, ptr %min_nr2, align 4, !dbg !5286
  %6 = load ptr, ptr %pool_data.addr, align 8, !dbg !5287
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !5288
  %pool_data3 = getelementptr inbounds %struct.mempool_s, ptr %7, i32 0, i32 4, !dbg !5289
  store ptr %6, ptr %pool_data3, align 8, !dbg !5290
  %8 = load ptr, ptr %alloc_fn.addr, align 8, !dbg !5291
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !5292
  %alloc = getelementptr inbounds %struct.mempool_s, ptr %9, i32 0, i32 5, !dbg !5293
  store ptr %8, ptr %alloc, align 8, !dbg !5294
  %10 = load ptr, ptr %free_fn.addr, align 8, !dbg !5295
  %11 = load ptr, ptr %pool.addr, align 8, !dbg !5296
  %free = getelementptr inbounds %struct.mempool_s, ptr %11, i32 0, i32 6, !dbg !5297
  store ptr %10, ptr %free, align 8, !dbg !5298
  br label %do.body4, !dbg !5299

do.body4:                                         ; preds = %do.end
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !5300
  %wait = getelementptr inbounds %struct.mempool_s, ptr %12, i32 0, i32 7, !dbg !5300
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef @.str, ptr noundef @mempool_init_node.__key) #17, !dbg !5300
  br label %do.end5, !dbg !5300

do.end5:                                          ; preds = %do.body4
  %13 = load i32, ptr %min_nr.addr, align 4, !dbg !5302
  %conv = sext i32 %13 to i64, !dbg !5302
  %14 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5303
  %15 = load i32, ptr %node_id.addr, align 4, !dbg !5304
  %call6 = call noalias ptr @kmalloc_array_node(i64 noundef %conv, i64 noundef 8, i32 noundef %14, i32 noundef %15) #18, !dbg !5305
  %16 = load ptr, ptr %pool.addr, align 8, !dbg !5306
  %elements = getelementptr inbounds %struct.mempool_s, ptr %16, i32 0, i32 3, !dbg !5307
  store ptr %call6, ptr %elements, align 8, !dbg !5308
  %17 = load ptr, ptr %pool.addr, align 8, !dbg !5309
  %elements7 = getelementptr inbounds %struct.mempool_s, ptr %17, i32 0, i32 3, !dbg !5311
  %18 = load ptr, ptr %elements7, align 8, !dbg !5311
  %tobool = icmp ne ptr %18, null, !dbg !5309
  br i1 %tobool, label %if.end, label %if.then, !dbg !5312

if.then:                                          ; preds = %do.end5
  store i32 -12, ptr %retval, align 4, !dbg !5313
  br label %return, !dbg !5313

if.end:                                           ; preds = %do.end5
  br label %while.cond, !dbg !5314

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %19 = load ptr, ptr %pool.addr, align 8, !dbg !5315
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %19, i32 0, i32 2, !dbg !5316
  %20 = load i32, ptr %curr_nr, align 8, !dbg !5316
  %21 = load ptr, ptr %pool.addr, align 8, !dbg !5317
  %min_nr8 = getelementptr inbounds %struct.mempool_s, ptr %21, i32 0, i32 1, !dbg !5318
  %22 = load i32, ptr %min_nr8, align 4, !dbg !5318
  %cmp = icmp slt i32 %20, %22, !dbg !5319
  br i1 %cmp, label %while.body, label %while.end, !dbg !5314

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #16, !dbg !5320
  call void @llvm.dbg.declare(metadata ptr %element, metadata !5137, metadata !DIExpression()), !dbg !5321
  %23 = load ptr, ptr %pool.addr, align 8, !dbg !5322
  %alloc10 = getelementptr inbounds %struct.mempool_s, ptr %23, i32 0, i32 5, !dbg !5323
  %24 = load ptr, ptr %alloc10, align 8, !dbg !5323
  %25 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5324
  %26 = load ptr, ptr %pool.addr, align 8, !dbg !5325
  %pool_data11 = getelementptr inbounds %struct.mempool_s, ptr %26, i32 0, i32 4, !dbg !5326
  %27 = load ptr, ptr %pool_data11, align 8, !dbg !5326
  %call12 = call ptr %24(i32 noundef %25, ptr noundef %27) #17, !dbg !5322
  store ptr %call12, ptr %element, align 8, !dbg !5327
  %28 = load ptr, ptr %element, align 8, !dbg !5328
  %tobool13 = icmp ne ptr %28, null, !dbg !5328
  %lnot = xor i1 %tobool13, true, !dbg !5328
  %lnot14 = xor i1 %lnot, true, !dbg !5328
  %lnot15 = xor i1 %lnot14, true, !dbg !5328
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5328
  %conv16 = sext i32 %lnot.ext to i64, !dbg !5328
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !5328
  %tobool17 = icmp ne i64 %expval, 0, !dbg !5328
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5330

if.then18:                                        ; preds = %while.body
  %29 = load ptr, ptr %pool.addr, align 8, !dbg !5331
  call void @mempool_exit(ptr noundef %29) #17, !dbg !5333
  store i32 -12, ptr %retval, align 4, !dbg !5334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5334

if.end19:                                         ; preds = %while.body
  %30 = load ptr, ptr %pool.addr, align 8, !dbg !5335
  %31 = load ptr, ptr %element, align 8, !dbg !5336
  call void @add_element(ptr noundef %30, ptr noundef %31) #17, !dbg !5337
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5338
  br label %cleanup, !dbg !5338

cleanup:                                          ; preds = %if.end19, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #16, !dbg !5338
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5314, !llvm.loop !5339

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !5340
  br label %return, !dbg !5340

return:                                           ; preds = %while.end, %cleanup, %if.then
  %32 = load i32, ptr %retval, align 4, !dbg !5341
  ret i32 %32, !dbg !5341

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5342 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5350
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5351
  ret ptr %1, !dbg !5352
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5353 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array_node(i64 noundef %n, i64 noundef %size, i32 noundef %flags, i32 noundef %node) #7 align 16 !dbg !5358 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5362, metadata !DIExpression()), !dbg !5367
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5363, metadata !DIExpression()), !dbg !5368
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5364, metadata !DIExpression()), !dbg !5369
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5365, metadata !DIExpression()), !dbg !5370
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !5371
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5366, metadata !DIExpression()), !dbg !5372
  %0 = load i64, ptr %n.addr, align 8, !dbg !5373
  %1 = load i64, ptr %size.addr, align 8, !dbg !5373
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5373
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5373
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5373
  store i64 %4, ptr %bytes, align 8, !dbg !5373
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !5373
  %lnot = xor i1 %call, true, !dbg !5373
  %lnot1 = xor i1 %lnot, true, !dbg !5373
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5373
  %conv = sext i32 %lnot.ext to i64, !dbg !5373
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5373
  %tobool = icmp ne i64 %expval, 0, !dbg !5373
  br i1 %tobool, label %if.then, label %if.end, !dbg !5375

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5376

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5377
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5379
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5380

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5381
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5382
  br i1 %8, label %if.then2, label %if.end4, !dbg !5383

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5384
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5385
  %11 = load i32, ptr %node.addr, align 4, !dbg !5386
  %call3 = call noalias ptr @kmalloc_node(i64 noundef %9, i32 noundef %10, i32 noundef %11) #19, !dbg !5387
  store ptr %call3, ptr %retval, align 8, !dbg !5388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5388

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i64, ptr %bytes, align 8, !dbg !5389
  %13 = load i32, ptr %flags.addr, align 4, !dbg !5390
  %14 = load i32, ptr %node.addr, align 4, !dbg !5391
  %call5 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %12, i32 noundef %13, i32 noundef %14) #19, !dbg !5392
  store ptr %call5, ptr %retval, align 8, !dbg !5393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5393

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !5394
  %15 = load ptr, ptr %retval, align 8, !dbg !5394
  ret ptr %15, !dbg !5394
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_element(ptr noundef %pool, ptr noundef %element) #5 align 16 !dbg !5395 {
entry:
  %pool.addr = alloca ptr, align 8
  %element.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5399, metadata !DIExpression()), !dbg !5401
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !5400, metadata !DIExpression()), !dbg !5402
  br label %do.body, !dbg !5403

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5404
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 2, !dbg !5404
  %1 = load i32, ptr %curr_nr, align 8, !dbg !5404
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5404
  %min_nr = getelementptr inbounds %struct.mempool_s, ptr %2, i32 0, i32 1, !dbg !5404
  %3 = load i32, ptr %min_nr, align 4, !dbg !5404
  %cmp = icmp sge i32 %1, %3, !dbg !5404
  %lnot = xor i1 %cmp, true, !dbg !5404
  %lnot1 = xor i1 %lnot, true, !dbg !5404
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5404
  %conv = sext i32 %lnot.ext to i64, !dbg !5404
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5404
  %tobool = icmp ne i64 %expval, 0, !dbg !5404
  br i1 %tobool, label %if.then, label %if.end, !dbg !5407

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !5404

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !5408

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !5410

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !5408

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 129, i32 0, i64 12) #16, !dbg !5412, !srcloc !5414
  br label %do.end5, !dbg !5412

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !5408

do.end6:                                          ; No predecessors!
  br label %if.end, !dbg !5408

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !5407

do.end7:                                          ; preds = %if.end
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !5415
  %5 = load ptr, ptr %element.addr, align 8, !dbg !5416
  call void @poison_element(ptr noundef %4, ptr noundef %5) #17, !dbg !5417
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5418
  %7 = load ptr, ptr %element.addr, align 8, !dbg !5419
  call void @kasan_poison_element(ptr noundef %6, ptr noundef %7) #17, !dbg !5420
  %8 = load ptr, ptr %element.addr, align 8, !dbg !5421
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !5422
  %elements = getelementptr inbounds %struct.mempool_s, ptr %9, i32 0, i32 3, !dbg !5423
  %10 = load ptr, ptr %elements, align 8, !dbg !5423
  %11 = load ptr, ptr %pool.addr, align 8, !dbg !5424
  %curr_nr8 = getelementptr inbounds %struct.mempool_s, ptr %11, i32 0, i32 2, !dbg !5425
  %12 = load i32, ptr %curr_nr8, align 8, !dbg !5426
  %inc = add i32 %12, 1, !dbg !5426
  store i32 %inc, ptr %curr_nr8, align 8, !dbg !5426
  %idxprom = sext i32 %12 to i64, !dbg !5422
  %arrayidx = getelementptr ptr, ptr %10, i64 %idxprom, !dbg !5422
  store ptr %8, ptr %arrayidx, align 8, !dbg !5427
  ret void, !dbg !5428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mempool_init(ptr noundef %pool, i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data) #0 align 16 !dbg !5429 {
entry:
  %pool.addr = alloca ptr, align 8
  %min_nr.addr = alloca i32, align 4
  %alloc_fn.addr = alloca ptr, align 8
  %free_fn.addr = alloca ptr, align 8
  %pool_data.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5433, metadata !DIExpression()), !dbg !5438
  store i32 %min_nr, ptr %min_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_nr.addr, metadata !5434, metadata !DIExpression()), !dbg !5439
  store ptr %alloc_fn, ptr %alloc_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alloc_fn.addr, metadata !5435, metadata !DIExpression()), !dbg !5440
  store ptr %free_fn, ptr %free_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %free_fn.addr, metadata !5436, metadata !DIExpression()), !dbg !5441
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !5437, metadata !DIExpression()), !dbg !5442
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5443
  %1 = load i32, ptr %min_nr.addr, align 4, !dbg !5444
  %2 = load ptr, ptr %alloc_fn.addr, align 8, !dbg !5445
  %3 = load ptr, ptr %free_fn.addr, align 8, !dbg !5446
  %4 = load ptr, ptr %pool_data.addr, align 8, !dbg !5447
  %call = call i32 @mempool_init_node(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 3264, i32 noundef -1) #17, !dbg !5448
  ret i32 %call, !dbg !5449
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mempool_create(i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data) #0 align 16 !dbg !5450 {
entry:
  %min_nr.addr = alloca i32, align 4
  %alloc_fn.addr = alloca ptr, align 8
  %free_fn.addr = alloca ptr, align 8
  %pool_data.addr = alloca ptr, align 8
  store i32 %min_nr, ptr %min_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_nr.addr, metadata !5454, metadata !DIExpression()), !dbg !5458
  store ptr %alloc_fn, ptr %alloc_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alloc_fn.addr, metadata !5455, metadata !DIExpression()), !dbg !5459
  store ptr %free_fn, ptr %free_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %free_fn.addr, metadata !5456, metadata !DIExpression()), !dbg !5460
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !5457, metadata !DIExpression()), !dbg !5461
  %0 = load i32, ptr %min_nr.addr, align 4, !dbg !5462
  %1 = load ptr, ptr %alloc_fn.addr, align 8, !dbg !5463
  %2 = load ptr, ptr %free_fn.addr, align 8, !dbg !5464
  %3 = load ptr, ptr %pool_data.addr, align 8, !dbg !5465
  %call = call ptr @mempool_create_node(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3264, i32 noundef -1) #17, !dbg !5466
  ret ptr %call, !dbg !5467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mempool_create_node(i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data, i32 noundef %gfp_mask, i32 noundef %node_id) #0 align 16 !dbg !5468 {
entry:
  %retval = alloca ptr, align 8
  %min_nr.addr = alloca i32, align 4
  %alloc_fn.addr = alloca ptr, align 8
  %free_fn.addr = alloca ptr, align 8
  %pool_data.addr = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %node_id.addr = alloca i32, align 4
  %pool = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %min_nr, ptr %min_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_nr.addr, metadata !5472, metadata !DIExpression()), !dbg !5479
  store ptr %alloc_fn, ptr %alloc_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alloc_fn.addr, metadata !5473, metadata !DIExpression()), !dbg !5480
  store ptr %free_fn, ptr %free_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %free_fn.addr, metadata !5474, metadata !DIExpression()), !dbg !5481
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !5475, metadata !DIExpression()), !dbg !5482
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5476, metadata !DIExpression()), !dbg !5483
  store i32 %node_id, ptr %node_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node_id.addr, metadata !5477, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #16, !dbg !5485
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !5478, metadata !DIExpression()), !dbg !5486
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5487
  %1 = load i32, ptr %node_id.addr, align 4, !dbg !5488
  %call = call noalias ptr @kzalloc_node(i64 noundef 72, i32 noundef %0, i32 noundef %1) #19, !dbg !5489
  store ptr %call, ptr %pool, align 8, !dbg !5490
  %2 = load ptr, ptr %pool, align 8, !dbg !5491
  %tobool = icmp ne ptr %2, null, !dbg !5491
  br i1 %tobool, label %if.end, label %if.then, !dbg !5493

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5494

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pool, align 8, !dbg !5495
  %4 = load i32, ptr %min_nr.addr, align 4, !dbg !5497
  %5 = load ptr, ptr %alloc_fn.addr, align 8, !dbg !5498
  %6 = load ptr, ptr %free_fn.addr, align 8, !dbg !5499
  %7 = load ptr, ptr %pool_data.addr, align 8, !dbg !5500
  %8 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5501
  %9 = load i32, ptr %node_id.addr, align 4, !dbg !5502
  %call1 = call i32 @mempool_init_node(ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) #17, !dbg !5503
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5503
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5504

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %pool, align 8, !dbg !5505
  call void @kfree(ptr noundef %10) #17, !dbg !5507
  store ptr null, ptr %retval, align 8, !dbg !5508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5508

if.end4:                                          ; preds = %if.end
  %11 = load ptr, ptr %pool, align 8, !dbg !5509
  store ptr %11, ptr %retval, align 8, !dbg !5510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5510

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #16, !dbg !5511
  %12 = load ptr, ptr %retval, align 8, !dbg !5511
  ret ptr %12, !dbg !5511
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #8 align 16 !dbg !5512 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5516, metadata !DIExpression()), !dbg !5519
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5517, metadata !DIExpression()), !dbg !5520
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5518, metadata !DIExpression()), !dbg !5521
  %0 = load i64, ptr %size.addr, align 8, !dbg !5522
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5523
  %or = or i32 %1, 256, !dbg !5524
  %2 = load i32, ptr %node.addr, align 4, !dbg !5525
  %call = call noalias ptr @kmalloc_node(i64 noundef %0, i32 noundef %or, i32 noundef %2) #19, !dbg !5526
  ret ptr %call, !dbg !5527
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mempool_resize(ptr noundef %pool, i32 noundef %new_min_nr) #0 align 16 !dbg !5528 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %new_min_nr.addr = alloca i32, align 4
  %element = alloca ptr, align 8
  %new_elements = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy32 = alloca i64, align 8
  %__dummy233 = alloca i64, align 8
  %tmp36 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy54 = alloca i64, align 8
  %__dummy255 = alloca i64, align 8
  %tmp58 = alloca i32, align 4
  %__dummy98 = alloca i64, align 8
  %__dummy299 = alloca i64, align 8
  %tmp102 = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5532, metadata !DIExpression()), !dbg !5563
  store i32 %new_min_nr, ptr %new_min_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_min_nr.addr, metadata !5533, metadata !DIExpression()), !dbg !5564
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #16, !dbg !5565
  call void @llvm.dbg.declare(metadata ptr %element, metadata !5534, metadata !DIExpression()), !dbg !5566
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_elements) #16, !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %new_elements, metadata !5535, metadata !DIExpression()), !dbg !5568
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5569
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5536, metadata !DIExpression()), !dbg !5570
  br label %do.body, !dbg !5571

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %new_min_nr.addr, align 4, !dbg !5572
  %cmp = icmp sle i32 %0, 0, !dbg !5572
  %lnot = xor i1 %cmp, true, !dbg !5572
  %lnot1 = xor i1 %lnot, true, !dbg !5572
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5572
  %conv = sext i32 %lnot.ext to i64, !dbg !5572
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5572
  %tobool = icmp ne i64 %expval, 0, !dbg !5572
  br i1 %tobool, label %if.then, label %if.end, !dbg !5575

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !5572

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !5576

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !5578

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5578

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5576

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 310, i32 0, i64 12) #16, !dbg !5580, !srcloc !5582
  br label %do.cond5, !dbg !5580

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5580

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !5576

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !5576

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !5576

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !5575

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !5575

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5583

do.body11:                                        ; preds = %do.end10
  call void @might_resched() #17, !dbg !5584
  br label %do.cond12, !dbg !5584

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5584

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5586

do.body14:                                        ; preds = %do.end13
  br label %do.body15, !dbg !5587

do.body15:                                        ; preds = %do.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5588
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5537, metadata !DIExpression()), !dbg !5588
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5588
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5541, metadata !DIExpression()), !dbg !5588
  %cmp16 = icmp eq ptr %__dummy, %__dummy2, !dbg !5588
  %conv17 = zext i1 %cmp16 to i32, !dbg !5588
  store i32 1, ptr %tmp, align 4, !dbg !5588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5589
  %1 = load i32, ptr %tmp, align 4, !dbg !5588
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5589
  %lock = getelementptr inbounds %struct.mempool_s, ptr %2, i32 0, i32 0, !dbg !5589
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !5589
  %call18 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !5589
  store i64 %call18, ptr %flags, align 8, !dbg !5589
  br label %do.cond19, !dbg !5589

do.cond19:                                        ; preds = %do.body15
  br label %do.end20, !dbg !5589

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !5587

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !5587

do.end22:                                         ; preds = %do.cond21
  %3 = load i32, ptr %new_min_nr.addr, align 4, !dbg !5590
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !5591
  %min_nr = getelementptr inbounds %struct.mempool_s, ptr %4, i32 0, i32 1, !dbg !5592
  %5 = load i32, ptr %min_nr, align 4, !dbg !5592
  %cmp23 = icmp sle i32 %3, %5, !dbg !5593
  br i1 %cmp23, label %if.then25, label %if.end45, !dbg !5594

if.then25:                                        ; preds = %do.end22
  br label %while.cond, !dbg !5595

while.cond:                                       ; preds = %do.end43, %if.then25
  %6 = load i32, ptr %new_min_nr.addr, align 4, !dbg !5596
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !5597
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %7, i32 0, i32 2, !dbg !5598
  %8 = load i32, ptr %curr_nr, align 8, !dbg !5598
  %cmp26 = icmp slt i32 %6, %8, !dbg !5599
  br i1 %cmp26, label %while.body, label %while.end, !dbg !5595

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !5600
  %call28 = call ptr @remove_element(ptr noundef %9) #17, !dbg !5601
  store ptr %call28, ptr %element, align 8, !dbg !5602
  %10 = load ptr, ptr %pool.addr, align 8, !dbg !5603
  %lock29 = getelementptr inbounds %struct.mempool_s, ptr %10, i32 0, i32 0, !dbg !5604
  %11 = load i64, ptr %flags, align 8, !dbg !5605
  call void @spin_unlock_irqrestore(ptr noundef %lock29, i64 noundef %11) #17, !dbg !5606
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !5607
  %free = getelementptr inbounds %struct.mempool_s, ptr %12, i32 0, i32 6, !dbg !5608
  %13 = load ptr, ptr %free, align 8, !dbg !5608
  %14 = load ptr, ptr %element, align 8, !dbg !5609
  %15 = load ptr, ptr %pool.addr, align 8, !dbg !5610
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %15, i32 0, i32 4, !dbg !5611
  %16 = load ptr, ptr %pool_data, align 8, !dbg !5611
  call void %13(ptr noundef %14, ptr noundef %16) #17, !dbg !5607
  br label %do.body30, !dbg !5612

do.body30:                                        ; preds = %while.body
  br label %do.body31, !dbg !5613

do.body31:                                        ; preds = %do.body30
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy32) #16, !dbg !5614
  call void @llvm.dbg.declare(metadata ptr %__dummy32, metadata !5542, metadata !DIExpression()), !dbg !5614
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy233) #16, !dbg !5614
  call void @llvm.dbg.declare(metadata ptr %__dummy233, metadata !5549, metadata !DIExpression()), !dbg !5614
  %cmp34 = icmp eq ptr %__dummy32, %__dummy233, !dbg !5614
  %conv35 = zext i1 %cmp34 to i32, !dbg !5614
  store i32 1, ptr %tmp36, align 4, !dbg !5614
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy233) #16, !dbg !5615
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy32) #16, !dbg !5615
  %17 = load i32, ptr %tmp36, align 4, !dbg !5614
  %18 = load ptr, ptr %pool.addr, align 8, !dbg !5615
  %lock37 = getelementptr inbounds %struct.mempool_s, ptr %18, i32 0, i32 0, !dbg !5615
  %call38 = call ptr @spinlock_check(ptr noundef %lock37) #17, !dbg !5615
  %call39 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call38) #17, !dbg !5615
  store i64 %call39, ptr %flags, align 8, !dbg !5615
  br label %do.cond40, !dbg !5615

do.cond40:                                        ; preds = %do.body31
  br label %do.end41, !dbg !5615

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42, !dbg !5613

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !5613

do.end43:                                         ; preds = %do.cond42
  br label %while.cond, !dbg !5595, !llvm.loop !5616

while.end:                                        ; preds = %while.cond
  %19 = load i32, ptr %new_min_nr.addr, align 4, !dbg !5618
  %20 = load ptr, ptr %pool.addr, align 8, !dbg !5619
  %min_nr44 = getelementptr inbounds %struct.mempool_s, ptr %20, i32 0, i32 1, !dbg !5620
  store i32 %19, ptr %min_nr44, align 4, !dbg !5621
  br label %out_unlock, !dbg !5622

if.end45:                                         ; preds = %do.end22
  %21 = load ptr, ptr %pool.addr, align 8, !dbg !5623
  %lock46 = getelementptr inbounds %struct.mempool_s, ptr %21, i32 0, i32 0, !dbg !5624
  %22 = load i64, ptr %flags, align 8, !dbg !5625
  call void @spin_unlock_irqrestore(ptr noundef %lock46, i64 noundef %22) #17, !dbg !5626
  %23 = load i32, ptr %new_min_nr.addr, align 4, !dbg !5627
  %conv47 = sext i32 %23 to i64, !dbg !5627
  %call48 = call noalias ptr @kmalloc_array(i64 noundef %conv47, i64 noundef 8, i32 noundef 3264) #18, !dbg !5628
  store ptr %call48, ptr %new_elements, align 8, !dbg !5629
  %24 = load ptr, ptr %new_elements, align 8, !dbg !5630
  %tobool49 = icmp ne ptr %24, null, !dbg !5630
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !5632

if.then50:                                        ; preds = %if.end45
  store i32 -12, ptr %retval, align 4, !dbg !5633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5633

if.end51:                                         ; preds = %if.end45
  br label %do.body52, !dbg !5634

do.body52:                                        ; preds = %if.end51
  br label %do.body53, !dbg !5635

do.body53:                                        ; preds = %do.body52
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy54) #16, !dbg !5636
  call void @llvm.dbg.declare(metadata ptr %__dummy54, metadata !5550, metadata !DIExpression()), !dbg !5636
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy255) #16, !dbg !5636
  call void @llvm.dbg.declare(metadata ptr %__dummy255, metadata !5554, metadata !DIExpression()), !dbg !5636
  %cmp56 = icmp eq ptr %__dummy54, %__dummy255, !dbg !5636
  %conv57 = zext i1 %cmp56 to i32, !dbg !5636
  store i32 1, ptr %tmp58, align 4, !dbg !5636
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy255) #16, !dbg !5637
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy54) #16, !dbg !5637
  %25 = load i32, ptr %tmp58, align 4, !dbg !5636
  %26 = load ptr, ptr %pool.addr, align 8, !dbg !5637
  %lock59 = getelementptr inbounds %struct.mempool_s, ptr %26, i32 0, i32 0, !dbg !5637
  %call60 = call ptr @spinlock_check(ptr noundef %lock59) #17, !dbg !5637
  %call61 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call60) #17, !dbg !5637
  store i64 %call61, ptr %flags, align 8, !dbg !5637
  br label %do.cond62, !dbg !5637

do.cond62:                                        ; preds = %do.body53
  br label %do.end63, !dbg !5637

do.end63:                                         ; preds = %do.cond62
  br label %do.cond64, !dbg !5635

do.cond64:                                        ; preds = %do.end63
  br label %do.end65, !dbg !5635

do.end65:                                         ; preds = %do.cond64
  %27 = load i32, ptr %new_min_nr.addr, align 4, !dbg !5638
  %28 = load ptr, ptr %pool.addr, align 8, !dbg !5638
  %min_nr66 = getelementptr inbounds %struct.mempool_s, ptr %28, i32 0, i32 1, !dbg !5638
  %29 = load i32, ptr %min_nr66, align 4, !dbg !5638
  %cmp67 = icmp sle i32 %27, %29, !dbg !5638
  %lnot69 = xor i1 %cmp67, true, !dbg !5638
  %lnot71 = xor i1 %lnot69, true, !dbg !5638
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !5638
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !5638
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !5638
  %tobool75 = icmp ne i64 %expval74, 0, !dbg !5638
  br i1 %tobool75, label %if.then76, label %if.end78, !dbg !5640

if.then76:                                        ; preds = %do.end65
  %30 = load ptr, ptr %pool.addr, align 8, !dbg !5641
  %lock77 = getelementptr inbounds %struct.mempool_s, ptr %30, i32 0, i32 0, !dbg !5643
  %31 = load i64, ptr %flags, align 8, !dbg !5644
  call void @spin_unlock_irqrestore(ptr noundef %lock77, i64 noundef %31) #17, !dbg !5645
  %32 = load ptr, ptr %new_elements, align 8, !dbg !5646
  call void @kfree(ptr noundef %32) #17, !dbg !5647
  br label %out, !dbg !5648

if.end78:                                         ; preds = %do.end65
  %33 = load ptr, ptr %new_elements, align 8, !dbg !5649
  %34 = load ptr, ptr %pool.addr, align 8, !dbg !5650
  %elements = getelementptr inbounds %struct.mempool_s, ptr %34, i32 0, i32 3, !dbg !5651
  %35 = load ptr, ptr %elements, align 8, !dbg !5651
  %36 = load ptr, ptr %pool.addr, align 8, !dbg !5652
  %curr_nr79 = getelementptr inbounds %struct.mempool_s, ptr %36, i32 0, i32 2, !dbg !5653
  %37 = load i32, ptr %curr_nr79, align 8, !dbg !5653
  %conv80 = sext i32 %37 to i64, !dbg !5652
  %mul = mul i64 %conv80, 8, !dbg !5654
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %35, i64 %mul, i1 false), !dbg !5655
  %38 = load ptr, ptr %pool.addr, align 8, !dbg !5656
  %elements81 = getelementptr inbounds %struct.mempool_s, ptr %38, i32 0, i32 3, !dbg !5657
  %39 = load ptr, ptr %elements81, align 8, !dbg !5657
  call void @kfree(ptr noundef %39) #17, !dbg !5658
  %40 = load ptr, ptr %new_elements, align 8, !dbg !5659
  %41 = load ptr, ptr %pool.addr, align 8, !dbg !5660
  %elements82 = getelementptr inbounds %struct.mempool_s, ptr %41, i32 0, i32 3, !dbg !5661
  store ptr %40, ptr %elements82, align 8, !dbg !5662
  %42 = load i32, ptr %new_min_nr.addr, align 4, !dbg !5663
  %43 = load ptr, ptr %pool.addr, align 8, !dbg !5664
  %min_nr83 = getelementptr inbounds %struct.mempool_s, ptr %43, i32 0, i32 1, !dbg !5665
  store i32 %42, ptr %min_nr83, align 4, !dbg !5666
  br label %while.cond84, !dbg !5667

while.cond84:                                     ; preds = %if.end118, %if.end78
  %44 = load ptr, ptr %pool.addr, align 8, !dbg !5668
  %curr_nr85 = getelementptr inbounds %struct.mempool_s, ptr %44, i32 0, i32 2, !dbg !5669
  %45 = load i32, ptr %curr_nr85, align 8, !dbg !5669
  %46 = load ptr, ptr %pool.addr, align 8, !dbg !5670
  %min_nr86 = getelementptr inbounds %struct.mempool_s, ptr %46, i32 0, i32 1, !dbg !5671
  %47 = load i32, ptr %min_nr86, align 4, !dbg !5671
  %cmp87 = icmp slt i32 %45, %47, !dbg !5672
  br i1 %cmp87, label %while.body89, label %while.end119, !dbg !5667

while.body89:                                     ; preds = %while.cond84
  %48 = load ptr, ptr %pool.addr, align 8, !dbg !5673
  %lock90 = getelementptr inbounds %struct.mempool_s, ptr %48, i32 0, i32 0, !dbg !5674
  %49 = load i64, ptr %flags, align 8, !dbg !5675
  call void @spin_unlock_irqrestore(ptr noundef %lock90, i64 noundef %49) #17, !dbg !5676
  %50 = load ptr, ptr %pool.addr, align 8, !dbg !5677
  %alloc = getelementptr inbounds %struct.mempool_s, ptr %50, i32 0, i32 5, !dbg !5678
  %51 = load ptr, ptr %alloc, align 8, !dbg !5678
  %52 = load ptr, ptr %pool.addr, align 8, !dbg !5679
  %pool_data91 = getelementptr inbounds %struct.mempool_s, ptr %52, i32 0, i32 4, !dbg !5680
  %53 = load ptr, ptr %pool_data91, align 8, !dbg !5680
  %call92 = call ptr %51(i32 noundef 3264, ptr noundef %53) #17, !dbg !5677
  store ptr %call92, ptr %element, align 8, !dbg !5681
  %54 = load ptr, ptr %element, align 8, !dbg !5682
  %tobool93 = icmp ne ptr %54, null, !dbg !5682
  br i1 %tobool93, label %if.end95, label %if.then94, !dbg !5684

if.then94:                                        ; preds = %while.body89
  br label %out, !dbg !5685

if.end95:                                         ; preds = %while.body89
  br label %do.body96, !dbg !5686

do.body96:                                        ; preds = %if.end95
  br label %do.body97, !dbg !5687

do.body97:                                        ; preds = %do.body96
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy98) #16, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %__dummy98, metadata !5555, metadata !DIExpression()), !dbg !5688
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy299) #16, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %__dummy299, metadata !5560, metadata !DIExpression()), !dbg !5688
  %cmp100 = icmp eq ptr %__dummy98, %__dummy299, !dbg !5688
  %conv101 = zext i1 %cmp100 to i32, !dbg !5688
  store i32 1, ptr %tmp102, align 4, !dbg !5688
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy299) #16, !dbg !5689
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy98) #16, !dbg !5689
  %55 = load i32, ptr %tmp102, align 4, !dbg !5688
  %56 = load ptr, ptr %pool.addr, align 8, !dbg !5689
  %lock103 = getelementptr inbounds %struct.mempool_s, ptr %56, i32 0, i32 0, !dbg !5689
  %call104 = call ptr @spinlock_check(ptr noundef %lock103) #17, !dbg !5689
  %call105 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call104) #17, !dbg !5689
  store i64 %call105, ptr %flags, align 8, !dbg !5689
  br label %do.cond106, !dbg !5689

do.cond106:                                       ; preds = %do.body97
  br label %do.end107, !dbg !5689

do.end107:                                        ; preds = %do.cond106
  br label %do.cond108, !dbg !5687

do.cond108:                                       ; preds = %do.end107
  br label %do.end109, !dbg !5687

do.end109:                                        ; preds = %do.cond108
  %57 = load ptr, ptr %pool.addr, align 8, !dbg !5690
  %curr_nr110 = getelementptr inbounds %struct.mempool_s, ptr %57, i32 0, i32 2, !dbg !5692
  %58 = load i32, ptr %curr_nr110, align 8, !dbg !5692
  %59 = load ptr, ptr %pool.addr, align 8, !dbg !5693
  %min_nr111 = getelementptr inbounds %struct.mempool_s, ptr %59, i32 0, i32 1, !dbg !5694
  %60 = load i32, ptr %min_nr111, align 4, !dbg !5694
  %cmp112 = icmp slt i32 %58, %60, !dbg !5695
  br i1 %cmp112, label %if.then114, label %if.else, !dbg !5696

if.then114:                                       ; preds = %do.end109
  %61 = load ptr, ptr %pool.addr, align 8, !dbg !5697
  %62 = load ptr, ptr %element, align 8, !dbg !5699
  call void @add_element(ptr noundef %61, ptr noundef %62) #17, !dbg !5700
  br label %if.end118, !dbg !5701

if.else:                                          ; preds = %do.end109
  %63 = load ptr, ptr %pool.addr, align 8, !dbg !5702
  %lock115 = getelementptr inbounds %struct.mempool_s, ptr %63, i32 0, i32 0, !dbg !5704
  %64 = load i64, ptr %flags, align 8, !dbg !5705
  call void @spin_unlock_irqrestore(ptr noundef %lock115, i64 noundef %64) #17, !dbg !5706
  %65 = load ptr, ptr %pool.addr, align 8, !dbg !5707
  %free116 = getelementptr inbounds %struct.mempool_s, ptr %65, i32 0, i32 6, !dbg !5708
  %66 = load ptr, ptr %free116, align 8, !dbg !5708
  %67 = load ptr, ptr %element, align 8, !dbg !5709
  %68 = load ptr, ptr %pool.addr, align 8, !dbg !5710
  %pool_data117 = getelementptr inbounds %struct.mempool_s, ptr %68, i32 0, i32 4, !dbg !5711
  %69 = load ptr, ptr %pool_data117, align 8, !dbg !5711
  call void %66(ptr noundef %67, ptr noundef %69) #17, !dbg !5707
  br label %out, !dbg !5712

if.end118:                                        ; preds = %if.then114
  br label %while.cond84, !dbg !5667, !llvm.loop !5713

while.end119:                                     ; preds = %while.cond84
  br label %out_unlock, !dbg !5667

out_unlock:                                       ; preds = %while.end119, %while.end
  call void @llvm.dbg.label(metadata !5561), !dbg !5715
  %70 = load ptr, ptr %pool.addr, align 8, !dbg !5716
  %lock120 = getelementptr inbounds %struct.mempool_s, ptr %70, i32 0, i32 0, !dbg !5717
  %71 = load i64, ptr %flags, align 8, !dbg !5718
  call void @spin_unlock_irqrestore(ptr noundef %lock120, i64 noundef %71) #17, !dbg !5719
  br label %out, !dbg !5719

out:                                              ; preds = %out_unlock, %if.else, %if.then94, %if.then76
  call void @llvm.dbg.label(metadata !5562), !dbg !5720
  store i32 0, ptr %retval, align 4, !dbg !5721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5721

cleanup:                                          ; preds = %out, %if.then50
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5722
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_elements) #16, !dbg !5722
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #16, !dbg !5722
  %72 = load i32, ptr %retval, align 4, !dbg !5722
  ret i32 %72, !dbg !5722
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !5180 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5723
  %0 = load ptr, ptr %tmp, align 8, !dbg !5723
  %call = call i32 %0() #17, !dbg !5725
  ret void, !dbg !5726
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5727 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !5731 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5735, metadata !DIExpression()), !dbg !5741
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5736, metadata !DIExpression()), !dbg !5742
  br label %do.body, !dbg !5743

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5737, metadata !DIExpression()), !dbg !5744
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5740, metadata !DIExpression()), !dbg !5744
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5744
  %conv = zext i1 %cmp to i32, !dbg !5744
  store i32 1, ptr %tmp, align 4, !dbg !5744
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5745
  %0 = load i32, ptr %tmp, align 4, !dbg !5744
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5745
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5745
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5745
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !5745
  br label %do.end, !dbg !5745

do.end:                                           ; preds = %do.body
  ret void, !dbg !5746
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5747 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5751, metadata !DIExpression()), !dbg !5755
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5752, metadata !DIExpression()), !dbg !5756
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5753, metadata !DIExpression()), !dbg !5757
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !5758
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5754, metadata !DIExpression()), !dbg !5759
  %0 = load i64, ptr %n.addr, align 8, !dbg !5760
  %1 = load i64, ptr %size.addr, align 8, !dbg !5760
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5760
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5760
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5760
  store i64 %4, ptr %bytes, align 8, !dbg !5760
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !5760
  %lnot = xor i1 %call, true, !dbg !5760
  %lnot1 = xor i1 %lnot, true, !dbg !5760
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5760
  %conv = sext i32 %lnot.ext to i64, !dbg !5760
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5760
  %tobool = icmp ne i64 %expval, 0, !dbg !5760
  br i1 %tobool, label %if.then, label %if.end, !dbg !5762

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5763

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5764
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5766
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5767

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5768
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5769
  br i1 %8, label %if.then2, label %if.end4, !dbg !5770

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5771
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5772
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #19, !dbg !5773
  store ptr %call3, ptr %retval, align 8, !dbg !5774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5774

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5775
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5776
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #19, !dbg !5777
  store ptr %call5, ptr %retval, align 8, !dbg !5778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5778

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !5779
  %13 = load ptr, ptr %retval, align 8, !dbg !5779
  ret ptr %13, !dbg !5779
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden noalias ptr @mempool_alloc(ptr noundef %pool, i32 noundef %gfp_mask) #0 align 16 !dbg !5780 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %element = alloca ptr, align 8
  %flags = alloca i64, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %gfp_temp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5784, metadata !DIExpression()), !dbg !5808
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5785, metadata !DIExpression()), !dbg !5809
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #16, !dbg !5810
  call void @llvm.dbg.declare(metadata ptr %element, metadata !5786, metadata !DIExpression()), !dbg !5811
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5812
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5787, metadata !DIExpression()), !dbg !5813
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #16, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !5788, metadata !DIExpression()), !dbg !5815
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp_temp) #16, !dbg !5816
  call void @llvm.dbg.declare(metadata ptr %gfp_temp, metadata !5801, metadata !DIExpression()), !dbg !5817
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5818
  call void @might_alloc(i32 noundef %0) #17, !dbg !5819
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5820
  %or = or i32 %1, 524288, !dbg !5820
  store i32 %or, ptr %gfp_mask.addr, align 4, !dbg !5820
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5821
  %or1 = or i32 %2, 65536, !dbg !5821
  store i32 %or1, ptr %gfp_mask.addr, align 4, !dbg !5821
  %3 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5822
  %or2 = or i32 %3, 8192, !dbg !5822
  store i32 %or2, ptr %gfp_mask.addr, align 4, !dbg !5822
  %4 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5823
  %and = and i32 %4, -1089, !dbg !5824
  store i32 %and, ptr %gfp_temp, align 4, !dbg !5825
  br label %repeat_alloc, !dbg !5826

repeat_alloc:                                     ; preds = %do.end44, %if.then31, %entry
  call void @llvm.dbg.label(metadata !5802), !dbg !5827
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !5828
  %alloc = getelementptr inbounds %struct.mempool_s, ptr %5, i32 0, i32 5, !dbg !5829
  %6 = load ptr, ptr %alloc, align 8, !dbg !5829
  %7 = load i32, ptr %gfp_temp, align 4, !dbg !5830
  %8 = load ptr, ptr %pool.addr, align 8, !dbg !5831
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %8, i32 0, i32 4, !dbg !5832
  %9 = load ptr, ptr %pool_data, align 8, !dbg !5832
  %call = call ptr %6(i32 noundef %7, ptr noundef %9) #17, !dbg !5828
  store ptr %call, ptr %element, align 8, !dbg !5833
  %10 = load ptr, ptr %element, align 8, !dbg !5834
  %cmp = icmp ne ptr %10, null, !dbg !5834
  %lnot = xor i1 %cmp, true, !dbg !5834
  %lnot3 = xor i1 %lnot, true, !dbg !5834
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5834
  %conv = sext i32 %lnot.ext to i64, !dbg !5834
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5834
  %tobool = icmp ne i64 %expval, 0, !dbg !5834
  br i1 %tobool, label %if.then, label %if.end, !dbg !5836

if.then:                                          ; preds = %repeat_alloc
  %11 = load ptr, ptr %element, align 8, !dbg !5837
  store ptr %11, ptr %retval, align 8, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end:                                           ; preds = %repeat_alloc
  br label %do.body, !dbg !5839

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5840

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5803, metadata !DIExpression()), !dbg !5841
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5807, metadata !DIExpression()), !dbg !5841
  %cmp5 = icmp eq ptr %__dummy, %__dummy2, !dbg !5841
  %conv6 = zext i1 %cmp5 to i32, !dbg !5841
  store i32 1, ptr %tmp, align 4, !dbg !5841
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5842
  %12 = load i32, ptr %tmp, align 4, !dbg !5841
  %13 = load ptr, ptr %pool.addr, align 8, !dbg !5842
  %lock = getelementptr inbounds %struct.mempool_s, ptr %13, i32 0, i32 0, !dbg !5842
  %call7 = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !5842
  %call8 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call7) #17, !dbg !5842
  store i64 %call8, ptr %flags, align 8, !dbg !5842
  br label %do.cond, !dbg !5842

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5842

do.end:                                           ; preds = %do.cond
  br label %do.cond9, !dbg !5840

do.cond9:                                         ; preds = %do.end
  br label %do.end10, !dbg !5840

do.end10:                                         ; preds = %do.cond9
  %14 = load ptr, ptr %pool.addr, align 8, !dbg !5843
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %14, i32 0, i32 2, !dbg !5843
  %15 = load i32, ptr %curr_nr, align 8, !dbg !5843
  %tobool11 = icmp ne i32 %15, 0, !dbg !5843
  %lnot12 = xor i1 %tobool11, true, !dbg !5843
  %lnot14 = xor i1 %lnot12, true, !dbg !5843
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !5843
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !5843
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 1), !dbg !5843
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !5843
  br i1 %tobool18, label %if.then19, label %if.end28, !dbg !5845

if.then19:                                        ; preds = %do.end10
  %16 = load ptr, ptr %pool.addr, align 8, !dbg !5846
  %call20 = call ptr @remove_element(ptr noundef %16) #17, !dbg !5848
  store ptr %call20, ptr %element, align 8, !dbg !5849
  %17 = load ptr, ptr %pool.addr, align 8, !dbg !5850
  %lock21 = getelementptr inbounds %struct.mempool_s, ptr %17, i32 0, i32 0, !dbg !5851
  %18 = load i64, ptr %flags, align 8, !dbg !5852
  call void @spin_unlock_irqrestore(ptr noundef %lock21, i64 noundef %18) #17, !dbg !5853
  br label %do.body22, !dbg !5854

do.body22:                                        ; preds = %if.then19
  br label %do.body23, !dbg !5855

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !5857

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5857

do.end25:                                         ; preds = %do.cond24
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5855, !srcloc !5859
  br label %do.cond26, !dbg !5855

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5855

do.end27:                                         ; preds = %do.cond26
  %19 = load ptr, ptr %element, align 8, !dbg !5860
  call void @kmemleak_update_trace(ptr noundef %19) #17, !dbg !5861
  %20 = load ptr, ptr %element, align 8, !dbg !5862
  store ptr %20, ptr %retval, align 8, !dbg !5863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5863

if.end28:                                         ; preds = %do.end10
  %21 = load i32, ptr %gfp_temp, align 4, !dbg !5864
  %22 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5866
  %cmp29 = icmp ne i32 %21, %22, !dbg !5867
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !5868

if.then31:                                        ; preds = %if.end28
  %23 = load ptr, ptr %pool.addr, align 8, !dbg !5869
  %lock32 = getelementptr inbounds %struct.mempool_s, ptr %23, i32 0, i32 0, !dbg !5871
  %24 = load i64, ptr %flags, align 8, !dbg !5872
  call void @spin_unlock_irqrestore(ptr noundef %lock32, i64 noundef %24) #17, !dbg !5873
  %25 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5874
  store i32 %25, ptr %gfp_temp, align 4, !dbg !5875
  br label %repeat_alloc, !dbg !5876

if.end33:                                         ; preds = %if.end28
  %26 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5877
  %and34 = and i32 %26, 1024, !dbg !5879
  %tobool35 = icmp ne i32 %and34, 0, !dbg !5879
  br i1 %tobool35, label %if.end38, label %if.then36, !dbg !5880

if.then36:                                        ; preds = %if.end33
  %27 = load ptr, ptr %pool.addr, align 8, !dbg !5881
  %lock37 = getelementptr inbounds %struct.mempool_s, ptr %27, i32 0, i32 0, !dbg !5883
  %28 = load i64, ptr %flags, align 8, !dbg !5884
  call void @spin_unlock_irqrestore(ptr noundef %lock37, i64 noundef %28) #17, !dbg !5885
  store ptr null, ptr %retval, align 8, !dbg !5886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5886

if.end38:                                         ; preds = %if.end33
  br label %do.body39, !dbg !5887

do.body39:                                        ; preds = %if.end38
  %call40 = call ptr @get_current() #17, !dbg !5888
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1, !dbg !5888
  store ptr %call40, ptr %private, align 8, !dbg !5888
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2, !dbg !5888
  store ptr @autoremove_wake_function, ptr %func, align 8, !dbg !5888
  %entry41 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !5888
  call void @INIT_LIST_HEAD(ptr noundef %entry41) #17, !dbg !5888
  %flags42 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 0, !dbg !5888
  store i32 0, ptr %flags42, align 8, !dbg !5888
  br label %do.cond43, !dbg !5888

do.cond43:                                        ; preds = %do.body39
  br label %do.end44, !dbg !5888

do.end44:                                         ; preds = %do.cond43
  %29 = load ptr, ptr %pool.addr, align 8, !dbg !5890
  %wait45 = getelementptr inbounds %struct.mempool_s, ptr %29, i32 0, i32 7, !dbg !5891
  call void @prepare_to_wait(ptr noundef %wait45, ptr noundef %wait, i32 noundef 2) #17, !dbg !5892
  %30 = load ptr, ptr %pool.addr, align 8, !dbg !5893
  %lock46 = getelementptr inbounds %struct.mempool_s, ptr %30, i32 0, i32 0, !dbg !5894
  %31 = load i64, ptr %flags, align 8, !dbg !5895
  call void @spin_unlock_irqrestore(ptr noundef %lock46, i64 noundef %31) #17, !dbg !5896
  %call47 = call i64 @io_schedule_timeout(i64 noundef 5000) #17, !dbg !5897
  %32 = load ptr, ptr %pool.addr, align 8, !dbg !5898
  %wait48 = getelementptr inbounds %struct.mempool_s, ptr %32, i32 0, i32 7, !dbg !5899
  call void @finish_wait(ptr noundef %wait48, ptr noundef %wait) #17, !dbg !5900
  br label %repeat_alloc, !dbg !5901

cleanup:                                          ; preds = %if.then36, %do.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp_temp) #16, !dbg !5902
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #16, !dbg !5902
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5902
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #16, !dbg !5902
  %33 = load ptr, ptr %retval, align 8, !dbg !5902
  ret ptr %33, !dbg !5902
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_alloc(i32 noundef %gfp_mask) #9 align 16 !dbg !5903 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !5908, metadata !DIExpression()), !dbg !5909
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5910
  call void @fs_reclaim_acquire(i32 noundef %0) #17, !dbg !5911
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5912
  call void @fs_reclaim_release(i32 noundef %1) #17, !dbg !5913
  br label %do.body, !dbg !5914

do.body:                                          ; preds = %entry
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !5915
  %call = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %2) #17, !dbg !5915
  br i1 %call, label %if.then, label %if.end, !dbg !5918

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !5915

do.body1:                                         ; preds = %if.then
  call void @might_resched() #17, !dbg !5919
  br label %do.end, !dbg !5919

do.end:                                           ; preds = %do.body1
  br label %if.end, !dbg !5919

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end2, !dbg !5918

do.end2:                                          ; preds = %if.end
  ret void, !dbg !5921
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_update_trace(ptr noundef %ptr) #9 align 16 !dbg !5922 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  ret void, !dbg !5927
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !5928 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5939
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5933, metadata !DIExpression()), !dbg !5939
  br label %do.body, !dbg !5939

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5940
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5935, metadata !DIExpression()), !dbg !5940
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5940
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5939
  br label %do.cond, !dbg !5940

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5940

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !5941
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5937, metadata !DIExpression()), !dbg !5941
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !5941, !srcloc !5942
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5941
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5941
  %3 = inttoptr i64 %2 to ptr, !dbg !5941
  store ptr %3, ptr %tmp, align 8, !dbg !5941
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !5939
  %4 = load ptr, ptr %tmp, align 8, !dbg !5941
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5939
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5939
  store ptr %5, ptr %tmp1, align 8, !dbg !5939
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5943
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5939
  ret ptr %6, !dbg !5944
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #9 align 16 !dbg !5945 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  br label %do.body, !dbg !5952

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5953

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5955

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5953

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5957
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5957
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5957
  store volatile ptr %0, ptr %next, align 8, !dbg !5957
  br label %do.end3, !dbg !5957

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5953

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5959

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5960

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5962

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5960

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5964
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5964
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5964
  store volatile ptr %2, ptr %prev, align 8, !dbg !5964
  br label %do.end9, !dbg !5964

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5960

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5966
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5967 dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5970 dso_local i64 @io_schedule_timeout(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5973 dso_local void @finish_wait(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mempool_free(ptr noundef %element, ptr noundef %pool) #0 align 16 !dbg !5976 {
entry:
  %element.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !5980, metadata !DIExpression()), !dbg !5990
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5981, metadata !DIExpression()), !dbg !5991
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5992
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5982, metadata !DIExpression()), !dbg !5993
  %0 = load ptr, ptr %element.addr, align 8, !dbg !5994
  %cmp = icmp eq ptr %0, null, !dbg !5994
  %lnot = xor i1 %cmp, true, !dbg !5994
  %lnot1 = xor i1 %lnot, true, !dbg !5994
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5994
  %conv = sext i32 %lnot.ext to i64, !dbg !5994
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5994
  %tobool = icmp ne i64 %expval, 0, !dbg !5994
  br i1 %tobool, label %if.then, label %if.end, !dbg !5996

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5997

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5998

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !5999

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6001

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6001

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5999

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6003

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6005

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6005

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6003, !srcloc !6007
  br label %do.cond7, !dbg !6003

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6003

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5999

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5999

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6008

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6010

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6010

do.end13:                                         ; preds = %do.cond12
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !6008
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 2, !dbg !6008
  %2 = load volatile i32, ptr %curr_nr, align 8, !dbg !6008
  store i32 %2, ptr %tmp, align 4, !dbg !6010
  %3 = load i32, ptr %tmp, align 4, !dbg !6008
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !6012
  %min_nr = getelementptr inbounds %struct.mempool_s, ptr %4, i32 0, i32 1, !dbg !6012
  %5 = load i32, ptr %min_nr, align 4, !dbg !6012
  %cmp14 = icmp slt i32 %3, %5, !dbg !6012
  %lnot16 = xor i1 %cmp14, true, !dbg !6012
  %lnot18 = xor i1 %lnot16, true, !dbg !6012
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6012
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6012
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !6012
  %tobool22 = icmp ne i64 %expval21, 0, !dbg !6012
  br i1 %tobool22, label %if.then23, label %if.end50, !dbg !6013

if.then23:                                        ; preds = %do.end13
  br label %do.body24, !dbg !6014

do.body24:                                        ; preds = %if.then23
  br label %do.body25, !dbg !6015

do.body25:                                        ; preds = %do.body24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6016
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5983, metadata !DIExpression()), !dbg !6016
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6016
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5989, metadata !DIExpression()), !dbg !6016
  %cmp26 = icmp eq ptr %__dummy, %__dummy2, !dbg !6016
  %conv27 = zext i1 %cmp26 to i32, !dbg !6016
  store i32 1, ptr %tmp28, align 4, !dbg !6016
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6017
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6017
  %6 = load i32, ptr %tmp28, align 4, !dbg !6016
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !6017
  %lock = getelementptr inbounds %struct.mempool_s, ptr %7, i32 0, i32 0, !dbg !6017
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !6017
  %call29 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !6017
  store i64 %call29, ptr %flags, align 8, !dbg !6017
  br label %do.cond30, !dbg !6017

do.cond30:                                        ; preds = %do.body25
  br label %do.end31, !dbg !6017

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !6015

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !6015

do.end33:                                         ; preds = %do.cond32
  %8 = load ptr, ptr %pool.addr, align 8, !dbg !6018
  %curr_nr34 = getelementptr inbounds %struct.mempool_s, ptr %8, i32 0, i32 2, !dbg !6018
  %9 = load i32, ptr %curr_nr34, align 8, !dbg !6018
  %10 = load ptr, ptr %pool.addr, align 8, !dbg !6018
  %min_nr35 = getelementptr inbounds %struct.mempool_s, ptr %10, i32 0, i32 1, !dbg !6018
  %11 = load i32, ptr %min_nr35, align 4, !dbg !6018
  %cmp36 = icmp slt i32 %9, %11, !dbg !6018
  %lnot38 = xor i1 %cmp36, true, !dbg !6018
  %lnot40 = xor i1 %lnot38, true, !dbg !6018
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !6018
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !6018
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 1), !dbg !6018
  %tobool44 = icmp ne i64 %expval43, 0, !dbg !6018
  br i1 %tobool44, label %if.then45, label %if.end48, !dbg !6020

if.then45:                                        ; preds = %do.end33
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !6021
  %13 = load ptr, ptr %element.addr, align 8, !dbg !6023
  call void @add_element(ptr noundef %12, ptr noundef %13) #17, !dbg !6024
  %14 = load ptr, ptr %pool.addr, align 8, !dbg !6025
  %lock46 = getelementptr inbounds %struct.mempool_s, ptr %14, i32 0, i32 0, !dbg !6026
  %15 = load i64, ptr %flags, align 8, !dbg !6027
  call void @spin_unlock_irqrestore(ptr noundef %lock46, i64 noundef %15) #17, !dbg !6028
  %16 = load ptr, ptr %pool.addr, align 8, !dbg !6029
  %wait = getelementptr inbounds %struct.mempool_s, ptr %16, i32 0, i32 7, !dbg !6029
  %call47 = call i32 @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #17, !dbg !6029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6030

if.end48:                                         ; preds = %do.end33
  %17 = load ptr, ptr %pool.addr, align 8, !dbg !6031
  %lock49 = getelementptr inbounds %struct.mempool_s, ptr %17, i32 0, i32 0, !dbg !6032
  %18 = load i64, ptr %flags, align 8, !dbg !6033
  call void @spin_unlock_irqrestore(ptr noundef %lock49, i64 noundef %18) #17, !dbg !6034
  br label %if.end50, !dbg !6035

if.end50:                                         ; preds = %if.end48, %do.end13
  %19 = load ptr, ptr %pool.addr, align 8, !dbg !6036
  %free = getelementptr inbounds %struct.mempool_s, ptr %19, i32 0, i32 6, !dbg !6037
  %20 = load ptr, ptr %free, align 8, !dbg !6037
  %21 = load ptr, ptr %element.addr, align 8, !dbg !6038
  %22 = load ptr, ptr %pool.addr, align 8, !dbg !6039
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %22, i32 0, i32 4, !dbg !6040
  %23 = load ptr, ptr %pool_data, align 8, !dbg !6040
  call void %20(ptr noundef %21, ptr noundef %23) #17, !dbg !6036
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6041
  br label %cleanup, !dbg !6041

cleanup:                                          ; preds = %if.end50, %if.then45, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6041
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6041

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6042 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mempool_alloc_slab(i32 noundef %gfp_mask, ptr noundef %pool_data) #0 align 16 !dbg !6045 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %pool_data.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6047, metadata !DIExpression()), !dbg !6169
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !6048, metadata !DIExpression()), !dbg !6170
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #16, !dbg !6171
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !6049, metadata !DIExpression()), !dbg !6172
  %0 = load ptr, ptr %pool_data.addr, align 8, !dbg !6173
  store ptr %0, ptr %mem, align 8, !dbg !6172
  %1 = load ptr, ptr %mem, align 8, !dbg !6174
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6175
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef %2) #17, !dbg !6176
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #16, !dbg !6177
  ret ptr %call, !dbg !6179
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6180 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mempool_free_slab(ptr noundef %element, ptr noundef %pool_data) #0 align 16 !dbg !6183 {
entry:
  %element.addr = alloca ptr, align 8
  %pool_data.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !6185, metadata !DIExpression()), !dbg !6188
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !6186, metadata !DIExpression()), !dbg !6189
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #16, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !6187, metadata !DIExpression()), !dbg !6191
  %0 = load ptr, ptr %pool_data.addr, align 8, !dbg !6192
  store ptr %0, ptr %mem, align 8, !dbg !6191
  %1 = load ptr, ptr %mem, align 8, !dbg !6193
  %2 = load ptr, ptr %element.addr, align 8, !dbg !6194
  call void @kmem_cache_free(ptr noundef %1, ptr noundef %2) #17, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #16, !dbg !6196
  ret void, !dbg !6196
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6197 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mempool_kmalloc(i32 noundef %gfp_mask, ptr noundef %pool_data) #0 align 16 !dbg !6200 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %pool_data.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6202, metadata !DIExpression()), !dbg !6205
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !6203, metadata !DIExpression()), !dbg !6206
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !6207
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6204, metadata !DIExpression()), !dbg !6208
  %0 = load ptr, ptr %pool_data.addr, align 8, !dbg !6209
  %1 = ptrtoint ptr %0 to i64, !dbg !6210
  store i64 %1, ptr %size, align 8, !dbg !6208
  %2 = load i64, ptr %size, align 8, !dbg !6211
  %3 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6212
  %call = call noalias ptr @kmalloc(i64 noundef %2, i32 noundef %3) #19, !dbg !6213
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !6214
  ret ptr %call, !dbg !6215
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6216 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6220, metadata !DIExpression()), !dbg !6225
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6221, metadata !DIExpression()), !dbg !6226
  %0 = load i64, ptr %size.addr, align 8, !dbg !6227
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6228
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6229

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6230
  %tobool = icmp ne i64 %2, 0, !dbg !6230
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6231

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6222, metadata !DIExpression()), !dbg !6233
  %3 = load i64, ptr %size.addr, align 8, !dbg !6234
  %cmp = icmp ugt i64 %3, 8192, !dbg !6236
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6237

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6238
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6239
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6240
  store ptr %call, ptr %retval, align 8, !dbg !6241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6241

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6242
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6242
  store i32 %call2, ptr %index, align 4, !dbg !6243
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6244
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6245
  %9 = ptrtoint ptr %8 to i64, !dbg !6245
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6246
  %idxprom = zext i32 %call3 to i64, !dbg !6247
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6247
  %10 = load i32, ptr %index, align 4, !dbg !6248
  %idxprom4 = zext i32 %10 to i64, !dbg !6247
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6247
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6247
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6249
  %13 = load i64, ptr %size.addr, align 8, !dbg !6250
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6251
  store ptr %call6, ptr %retval, align 8, !dbg !6252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6252

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6253
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6254
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6255
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6256
  store ptr %call8, ptr %retval, align 8, !dbg !6257
  br label %return, !dbg !6257

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6258
  ret ptr %16, !dbg !6258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mempool_kfree(ptr noundef %element, ptr noundef %pool_data) #0 align 16 !dbg !6259 {
entry:
  %element.addr = alloca ptr, align 8
  %pool_data.addr = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !6261, metadata !DIExpression()), !dbg !6263
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !6262, metadata !DIExpression()), !dbg !6264
  %0 = load ptr, ptr %element.addr, align 8, !dbg !6265
  call void @kfree(ptr noundef %0) #17, !dbg !6266
  ret void, !dbg !6267
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mempool_alloc_pages(i32 noundef %gfp_mask, ptr noundef %pool_data) #0 align 16 !dbg !6268 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %pool_data.addr = alloca ptr, align 8
  %order = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6270, metadata !DIExpression()), !dbg !6273
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !6271, metadata !DIExpression()), !dbg !6274
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #16, !dbg !6275
  call void @llvm.dbg.declare(metadata ptr %order, metadata !6272, metadata !DIExpression()), !dbg !6276
  %0 = load ptr, ptr %pool_data.addr, align 8, !dbg !6277
  %1 = ptrtoint ptr %0 to i64, !dbg !6278
  %conv = trunc i64 %1 to i32, !dbg !6279
  store i32 %conv, ptr %order, align 4, !dbg !6276
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6280
  %3 = load i32, ptr %order, align 4, !dbg !6281
  %call = call ptr @alloc_pages(i32 noundef %2, i32 noundef %3) #17, !dbg !6282
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #16, !dbg !6283
  ret ptr %call, !dbg !6284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6285 dso_local ptr @alloc_pages(i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mempool_free_pages(ptr noundef %element, ptr noundef %pool_data) #0 align 16 !dbg !6289 {
entry:
  %element.addr = alloca ptr, align 8
  %pool_data.addr = alloca ptr, align 8
  %order = alloca i32, align 4
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !6291, metadata !DIExpression()), !dbg !6294
  store ptr %pool_data, ptr %pool_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool_data.addr, metadata !6292, metadata !DIExpression()), !dbg !6295
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #16, !dbg !6296
  call void @llvm.dbg.declare(metadata ptr %order, metadata !6293, metadata !DIExpression()), !dbg !6297
  %0 = load ptr, ptr %pool_data.addr, align 8, !dbg !6298
  %1 = ptrtoint ptr %0 to i64, !dbg !6299
  %conv = trunc i64 %1 to i32, !dbg !6300
  store i32 %conv, ptr %order, align 4, !dbg !6297
  %2 = load ptr, ptr %element.addr, align 8, !dbg !6301
  %3 = load i32, ptr %order, align 4, !dbg !6302
  call void @__free_pages(ptr noundef %2, i32 noundef %3) #17, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #16, !dbg !6304
  ret void, !dbg !6304
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6305 dso_local void @__free_pages(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_unpoison_element(ptr noundef %pool, ptr noundef %element) #0 align 16 !dbg !6308 {
entry:
  %pool.addr = alloca ptr, align 8
  %element.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !6310, metadata !DIExpression()), !dbg !6312
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !6311, metadata !DIExpression()), !dbg !6313
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !6314
  %alloc = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 5, !dbg !6316
  %1 = load ptr, ptr %alloc, align 8, !dbg !6316
  %cmp = icmp eq ptr %1, @mempool_kmalloc, !dbg !6317
  br i1 %cmp, label %if.then, label %if.else, !dbg !6318

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %element.addr, align 8, !dbg !6319
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !6320
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %3, i32 0, i32 4, !dbg !6321
  %4 = load ptr, ptr %pool_data, align 8, !dbg !6321
  %5 = ptrtoint ptr %4 to i64, !dbg !6322
  call void @kasan_unpoison_range(ptr noundef %2, i64 noundef %5) #17, !dbg !6323
  br label %if.end14, !dbg !6323

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !6324
  %alloc1 = getelementptr inbounds %struct.mempool_s, ptr %6, i32 0, i32 5, !dbg !6326
  %7 = load ptr, ptr %alloc1, align 8, !dbg !6326
  %cmp2 = icmp eq ptr %7, @mempool_alloc_slab, !dbg !6327
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !6328

if.then3:                                         ; preds = %if.else
  %8 = load ptr, ptr %element.addr, align 8, !dbg !6329
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !6330
  %pool_data4 = getelementptr inbounds %struct.mempool_s, ptr %9, i32 0, i32 4, !dbg !6331
  %10 = load ptr, ptr %pool_data4, align 8, !dbg !6331
  %call = call i32 @kmem_cache_size(ptr noundef %10) #17, !dbg !6332
  %conv = zext i32 %call to i64, !dbg !6332
  call void @kasan_unpoison_range(ptr noundef %8, i64 noundef %conv) #17, !dbg !6333
  br label %if.end13, !dbg !6333

if.else5:                                         ; preds = %if.else
  %11 = load ptr, ptr %pool.addr, align 8, !dbg !6334
  %alloc6 = getelementptr inbounds %struct.mempool_s, ptr %11, i32 0, i32 5, !dbg !6336
  %12 = load ptr, ptr %alloc6, align 8, !dbg !6336
  %cmp7 = icmp eq ptr %12, @mempool_alloc_pages, !dbg !6337
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !6338

if.then9:                                         ; preds = %if.else5
  %13 = load ptr, ptr %element.addr, align 8, !dbg !6339
  %14 = load ptr, ptr %pool.addr, align 8, !dbg !6340
  %pool_data10 = getelementptr inbounds %struct.mempool_s, ptr %14, i32 0, i32 4, !dbg !6341
  %15 = load ptr, ptr %pool_data10, align 8, !dbg !6341
  %16 = ptrtoint ptr %15 to i64, !dbg !6342
  %conv11 = trunc i64 %16 to i32, !dbg !6342
  %call12 = call zeroext i1 @kasan_unpoison_pages(ptr noundef %13, i32 noundef %conv11, i1 noundef zeroext false) #17, !dbg !6343
  br label %if.end, !dbg !6343

if.end:                                           ; preds = %if.then9, %if.else5
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then3
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  ret void, !dbg !6344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_element(ptr noundef %pool, ptr noundef %element) #9 align 16 !dbg !6345 {
entry:
  %pool.addr = alloca ptr, align 8
  %element.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !6347, metadata !DIExpression()), !dbg !6349
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !6348, metadata !DIExpression()), !dbg !6350
  ret void, !dbg !6351
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_unpoison_range(ptr noundef %address, i64 noundef %size) #9 align 16 !dbg !6352 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6357, metadata !DIExpression()), !dbg !6359
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6358, metadata !DIExpression()), !dbg !6360
  ret void, !dbg !6361
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6362 dso_local i32 @kmem_cache_size(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_unpoison_pages(ptr noundef %page, i32 noundef %order, i1 noundef zeroext %init) #9 align 16 !dbg !6365 {
entry:
  %page.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %init.addr = alloca i8, align 1
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6369, metadata !DIExpression()), !dbg !6372
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6370, metadata !DIExpression()), !dbg !6373
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !6371, metadata !DIExpression()), !dbg !6374
  ret i1 false, !dbg !6375
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #9 align 16 !dbg !6376 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6381, metadata !DIExpression()), !dbg !6382
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6383, !range !6384, !noundef !614
  %tobool = trunc i8 %0 to i1, !dbg !6383
  %lnot = xor i1 %tobool, true, !dbg !6383
  %lnot1 = xor i1 %lnot, true, !dbg !6383
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6383
  %conv = sext i32 %lnot.ext to i64, !dbg !6383
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6383
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6383
  ret i1 %tobool2, !dbg !6385
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #10 align 16 !dbg !6386 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6388, metadata !DIExpression()), !dbg !6394
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6389, metadata !DIExpression()), !dbg !6395
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6390, metadata !DIExpression()), !dbg !6396
  %0 = load i64, ptr %size.addr, align 8, !dbg !6397
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6398
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6399

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6400
  %tobool = icmp ne i64 %2, 0, !dbg !6400
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6401

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6402
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6391, metadata !DIExpression()), !dbg !6403
  %3 = load i64, ptr %size.addr, align 8, !dbg !6404
  %cmp = icmp ugt i64 %3, 8192, !dbg !6406
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6407

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6408
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6409
  %6 = load i32, ptr %node.addr, align 4, !dbg !6410
  %call = call noalias align 4096 ptr @kmalloc_large_node(i64 noundef %4, i32 noundef %5, i32 noundef %6) #19, !dbg !6411
  store ptr %call, ptr %retval, align 8, !dbg !6412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6412

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !6413
  %call2 = call i32 @__kmalloc_index(i64 noundef %7, i1 noundef zeroext true) #17, !dbg !6413
  store i32 %call2, ptr %index, align 4, !dbg !6414
  %8 = load i32, ptr %flags.addr, align 4, !dbg !6415
  %9 = call ptr @llvm.returnaddress(i32 0), !dbg !6416
  %10 = ptrtoint ptr %9 to i64, !dbg !6416
  %call3 = call i32 @kmalloc_type(i32 noundef %8, i64 noundef %10) #17, !dbg !6417
  %idxprom = zext i32 %call3 to i64, !dbg !6418
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6418
  %11 = load i32, ptr %index, align 4, !dbg !6419
  %idxprom4 = zext i32 %11 to i64, !dbg !6418
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6418
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !6418
  %13 = load i32, ptr %flags.addr, align 4, !dbg !6420
  %14 = load i32, ptr %node.addr, align 4, !dbg !6421
  %15 = load i64, ptr %size.addr, align 8, !dbg !6422
  %call6 = call noalias align 8 ptr @kmalloc_node_trace(ptr noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15) #22, !dbg !6423
  store ptr %call6, ptr %retval, align 8, !dbg !6424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6424

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6425
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %16 = load i64, ptr %size.addr, align 8, !dbg !6426
  %17 = load i32, ptr %flags.addr, align 4, !dbg !6427
  %18 = load i32, ptr %node.addr, align 4, !dbg !6428
  %call8 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %16, i32 noundef %17, i32 noundef %18) #19, !dbg !6429
  store ptr %call8, ptr %retval, align 8, !dbg !6430
  br label %return, !dbg !6430

return:                                           ; preds = %if.end7, %cleanup
  %19 = load ptr, ptr %retval, align 8, !dbg !6431
  ret ptr %19, !dbg !6431
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6432 dso_local noalias ptr @__kmalloc_node(i64 noundef, i32 noundef, i32 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6433 dso_local noalias ptr @kmalloc_large_node(i64 noundef, i32 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !6434 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6438, metadata !DIExpression()), !dbg !6440
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6439, metadata !DIExpression()), !dbg !6441
  %0 = load i64, ptr %size.addr, align 8, !dbg !6442
  %tobool = icmp ne i64 %0, 0, !dbg !6442
  br i1 %tobool, label %if.end, label %if.then, !dbg !6444

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6445
  br label %return, !dbg !6445

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6446
  %cmp = icmp ule i64 %1, 8, !dbg !6448
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6449

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6450
  br label %return, !dbg !6450

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6451
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6453
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6454

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6455
  %cmp4 = icmp ule i64 %3, 96, !dbg !6456
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6457

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6458
  br label %return, !dbg !6458

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6459
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6461
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6462

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6463
  %cmp9 = icmp ule i64 %5, 192, !dbg !6464
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6465

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6466
  br label %return, !dbg !6466

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6467
  %cmp12 = icmp ule i64 %6, 8, !dbg !6469
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6470

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6471
  br label %return, !dbg !6471

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6472
  %cmp15 = icmp ule i64 %7, 16, !dbg !6474
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6475

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6476
  br label %return, !dbg !6476

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6477
  %cmp18 = icmp ule i64 %8, 32, !dbg !6479
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6480

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6481
  br label %return, !dbg !6481

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6482
  %cmp21 = icmp ule i64 %9, 64, !dbg !6484
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6485

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6486
  br label %return, !dbg !6486

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6487
  %cmp24 = icmp ule i64 %10, 128, !dbg !6489
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6490

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6491
  br label %return, !dbg !6491

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6492
  %cmp27 = icmp ule i64 %11, 256, !dbg !6494
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6495

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6496
  br label %return, !dbg !6496

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6497
  %cmp30 = icmp ule i64 %12, 512, !dbg !6499
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6500

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6501
  br label %return, !dbg !6501

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6502
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6504
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6505

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6506
  br label %return, !dbg !6506

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6507
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6509
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6510

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6511
  br label %return, !dbg !6511

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6512
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6514
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6515

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6516
  br label %return, !dbg !6516

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6517
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6519
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6520

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6521
  br label %return, !dbg !6521

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6522
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6524
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6525

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6526
  br label %return, !dbg !6526

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6527
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6529
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6530

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6531
  br label %return, !dbg !6531

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6532
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6534
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6535

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6536
  br label %return, !dbg !6536

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6537
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6539
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6540

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6541
  br label %return, !dbg !6541

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6542
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6544
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6545

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6546
  br label %return, !dbg !6546

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6547
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6549
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6550

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6551
  br label %return, !dbg !6551

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6552
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6554
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6555

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6556
  br label %return, !dbg !6556

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6557
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6559
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6560

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6561
  br label %return, !dbg !6561

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6562, !range !6384, !noundef !614
  %tobool69 = trunc i8 %25 to i1, !dbg !6562
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6564

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6565

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #23, !dbg !6566, !srcloc !6569
  unreachable, !dbg !6566

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6570

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6571

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6572

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6574

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6572

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #16, !dbg !6576, !srcloc !6578
  br label %do.end75, !dbg !6576

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6572

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6579
  br label %return, !dbg !6579

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6580
  ret i32 %26, !dbg !6580
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare !dbg !6581 dso_local noalias ptr @kmalloc_node_trace(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !6584 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6588, metadata !DIExpression()), !dbg !6590
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6589, metadata !DIExpression()), !dbg !6591
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6592
  %and = and i32 %0, 17, !dbg !6592
  %cmp = icmp eq i32 %and, 0, !dbg !6592
  %lnot = xor i1 %cmp, true, !dbg !6592
  %lnot1 = xor i1 %lnot, true, !dbg !6592
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6592
  %conv = sext i32 %lnot.ext to i64, !dbg !6592
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6592
  %tobool = icmp ne i64 %expval, 0, !dbg !6592
  br i1 %tobool, label %if.then, label %if.end, !dbg !6594

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6595
  br label %return, !dbg !6595

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6596
  %and2 = and i32 %1, 1, !dbg !6598
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6598
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6599

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6600
  br label %return, !dbg !6600

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6601
  br label %return, !dbg !6601

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6603
  ret i32 %2, !dbg !6603
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6604 dso_local void @__compiletime_assert_206() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poison_element(ptr noundef %pool, ptr noundef %element) #9 align 16 !dbg !6605 {
entry:
  %pool.addr = alloca ptr, align 8
  %element.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !6607, metadata !DIExpression()), !dbg !6609
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !6608, metadata !DIExpression()), !dbg !6610
  ret void, !dbg !6611
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_poison_element(ptr noundef %pool, ptr noundef %element) #5 align 16 !dbg !6612 {
entry:
  %pool.addr = alloca ptr, align 8
  %element.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !6614, metadata !DIExpression()), !dbg !6616
  store ptr %element, ptr %element.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !6615, metadata !DIExpression()), !dbg !6617
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !6618
  %alloc = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 5, !dbg !6620
  %1 = load ptr, ptr %alloc, align 8, !dbg !6620
  %cmp = icmp eq ptr %1, @mempool_alloc_slab, !dbg !6621
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6622

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !6623
  %alloc1 = getelementptr inbounds %struct.mempool_s, ptr %2, i32 0, i32 5, !dbg !6624
  %3 = load ptr, ptr %alloc1, align 8, !dbg !6624
  %cmp2 = icmp eq ptr %3, @mempool_kmalloc, !dbg !6625
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6626

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %element.addr, align 8, !dbg !6627
  call void @kasan_slab_free_mempool(ptr noundef %4) #17, !dbg !6628
  br label %if.end6, !dbg !6628

if.else:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !6629
  %alloc3 = getelementptr inbounds %struct.mempool_s, ptr %5, i32 0, i32 5, !dbg !6631
  %6 = load ptr, ptr %alloc3, align 8, !dbg !6631
  %cmp4 = icmp eq ptr %6, @mempool_alloc_pages, !dbg !6632
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !6633

if.then5:                                         ; preds = %if.else
  %7 = load ptr, ptr %element.addr, align 8, !dbg !6634
  %8 = load ptr, ptr %pool.addr, align 8, !dbg !6635
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %8, i32 0, i32 4, !dbg !6636
  %9 = load ptr, ptr %pool_data, align 8, !dbg !6636
  %10 = ptrtoint ptr %9 to i64, !dbg !6637
  %conv = trunc i64 %10 to i32, !dbg !6637
  call void @kasan_poison_pages(ptr noundef %7, i32 noundef %conv, i1 noundef zeroext false) #17, !dbg !6638
  br label %if.end, !dbg !6638

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void, !dbg !6639
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_slab_free_mempool(ptr noundef %ptr) #9 align 16 !dbg !6640 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6642, metadata !DIExpression()), !dbg !6643
  ret void, !dbg !6644
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_poison_pages(ptr noundef %page, i32 noundef %order, i1 noundef zeroext %init) #9 align 16 !dbg !6645 {
entry:
  %page.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %init.addr = alloca i8, align 1
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6649, metadata !DIExpression()), !dbg !6652
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6650, metadata !DIExpression()), !dbg !6653
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !6651, metadata !DIExpression()), !dbg !6654
  ret void, !dbg !6655
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6656 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6659 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fs_reclaim_acquire(i32 noundef %gfp_mask) #9 align 16 !dbg !6660 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6662, metadata !DIExpression()), !dbg !6663
  ret void, !dbg !6664
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fs_reclaim_release(i32 noundef %gfp_mask) #9 align 16 !dbg !6665 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6667, metadata !DIExpression()), !dbg !6668
  ret void, !dbg !6669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gfpflags_allow_blocking(i32 noundef %gfp_flags) #9 align 16 !dbg !6670 {
entry:
  %gfp_flags.addr = alloca i32, align 4
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !6675, metadata !DIExpression()), !dbg !6676
  %0 = load i32, ptr %gfp_flags.addr, align 4, !dbg !6677
  %and = and i32 %0, 1024, !dbg !6678
  %tobool = icmp ne i32 %and, 0, !dbg !6679
  %lnot = xor i1 %tobool, true, !dbg !6679
  %lnot1 = xor i1 %lnot, true, !dbg !6680
  ret i1 %lnot1, !dbg !6681
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6682 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6683 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(3) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone allocsize(3) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189}
!llvm.ident = !{!5190}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_exit329", scope: !2, file: !3, line: 165, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.mempool.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/mempool\22 -D KBUILD_BASENAME=\22mempool\22 -D KBUILD_MODNAME=\22mempool\22 -D __KBUILD_MODNAME=kmod_mempool -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/mempool.ll mm/mempool.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !268, globals: !5100, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/mempool.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fac17a6a62ae1e119725b41a9922cf85")
!4 = !{!5, !13, !18, !23, !31, !127, !143, !151, !157, !163, !170, !175, !183, !190, !196, !205, !210, !215, !221, !233, !239, !246, !253, !258}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!17 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !24, line: 9, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!27 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!28 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!29 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!30 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 147, baseType: !7, size: 32, elements: !124)
!32 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !32, line: 135, size: 512, elements: !34)
!34 = !{!35, !39, !41, !43, !47, !48, !64, !122, !123}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !33, file: !32, line: 136, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !32, line: 137, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !33, file: !32, line: 138, baseType: !42, size: 32, offset: 128)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !33, file: !32, line: 139, baseType: !44, size: 16, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 150, baseType: !31, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !33, file: !32, line: 151, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !32, line: 64, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{!42, !53, !42, !40, !54, !60}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !45, line: 52, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !57, line: 88, baseType: !63)
!63 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !33, file: !32, line: 152, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !32, line: 117, size: 256, elements: !67)
!67 = !{!68, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !66, file: !32, line: 118, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !45, line: 173, baseType: !42, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !66, file: !32, line: 119, baseType: !74, size: 192, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !75, line: 37, size: 192, elements: !77)
!77 = !{!78, !116}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !76, file: !75, line: 38, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !80, line: 17, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 18, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 18, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !84, file: !80, line: 19, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 14, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !87, file: !88, line: 15, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !92, line: 14, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 15, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 15, size: 32, elements: !97)
!97 = !{!98, !99, !109}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !69, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !100, size: 16)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !100, file: !92, line: 25, baseType: !103, size: 8)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !104, line: 17, baseType: !105)
!104 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !100, file: !92, line: 26, baseType: !103, size: 8, offset: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !110, file: !92, line: 29, baseType: !113, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !104, line: 19, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !106, line: 24, baseType: !46)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !110, file: !92, line: 30, baseType: !113, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !76, file: !75, line: 39, baseType: !117, size: 128, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !45, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !45, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !33, file: !32, line: 153, baseType: !40, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !33, file: !32, line: 154, baseType: !40, size: 64, offset: 448)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !128, line: 1325, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!130 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!131 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!132 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!133 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!134 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!135 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!136 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!137 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!138 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!139 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!140 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!141 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!142 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !144, line: 68, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!145 = !{!146, !147, !148, !149, !150}
!146 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!149 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!150 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !152, line: 54, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "USRQUOTA", value: 0)
!155 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!156 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !158, line: 45, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!161 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!162 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !164, line: 487, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!167 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!168 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!169 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !171, line: 65, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!174 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !176, line: 620, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!179 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!180 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!181 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!182 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !176, line: 597, baseType: !42, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!186 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!187 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!188 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!189 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !191, line: 26, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!194 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!195 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !164, line: 547, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204}
!198 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!199 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!200 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!201 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!202 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!203 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!204 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !164, line: 564, baseType: !7, size: 32, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!208 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!209 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !164, line: 577, baseType: !7, size: 32, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!213 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!214 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !164, line: 503, baseType: !7, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220}
!217 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!218 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!219 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!220 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !222, line: 44, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!225 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!226 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!227 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!228 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!229 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!230 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!231 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!232 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !234, line: 16, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!235 = !{!236, !237, !238}
!236 = !DIEnumerator(name: "TT_NONE", value: 0)
!237 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!238 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !240, line: 51, baseType: !7, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!241 = !{!242, !243, !244, !245}
!242 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!243 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!244 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!245 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !247, line: 15, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!248 = !{!249, !250, !251, !252}
!249 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!250 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!251 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!252 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !254, line: 10, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!255 = !{!256, !257}
!256 = !DIEnumerator(name: "false", value: 0)
!257 = !DIEnumerator(name: "true", value: 1)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !259, line: 364, baseType: !7, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!260 = !{!261, !262, !263, !264, !265, !266, !267}
!261 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!262 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!263 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!264 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!265 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!266 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!267 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!268 = !{!40, !269, !270, !55, !42, !273, !59, !274, !275, !5098}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!273 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !277, line: 746, size: 58368, elements: !278)
!277 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!278 = !{!279, !289, !290, !291, !297, !298, !299, !300, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !383, !394, !495, !499, !502, !533, !534, !535, !536, !547, !549, !550, !551, !552, !553, !554, !565, !566, !569, !570, !571, !572, !573, !574, !575, !576, !583, !584, !591, !592, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3933, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3981, !3987, !3988, !3989, !3990, !3991, !3993, !3996, !4003, !4008, !4011, !4014, !4017, !4309, !4507, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4545, !4546, !4547, !4556, !4564, !4565, !4566, !4567, !4568, !4573, !4574, !4575, !4578, !4579, !4582, !4585, !4588, !4595, !4598, !4599, !4685, !4686, !4687, !4688, !4689, !4695, !4696, !4697, !4698, !4699, !4700, !4703, !4706, !4707, !4710, !4711, !4712, !4715, !4716, !4717, !4718, !4719, !4720, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4752, !4753, !4759, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4841, !4843, !4844, !4845, !4846, !4847, !4848, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4877, !4878, !4879}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !276, file: !277, line: 752, baseType: !280, size: 192)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !281, line: 56, size: 192, elements: !282)
!281 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!282 = !{!283, !284, !285, !288}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !281, line: 57, baseType: !59, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !280, file: !281, line: 58, baseType: !59, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !280, file: !281, line: 59, baseType: !286, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !104, line: 21, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !106, line: 27, baseType: !7)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !280, file: !281, line: 61, baseType: !286, size: 32, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !276, file: !277, line: 754, baseType: !7, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !276, file: !277, line: 767, baseType: !40, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !276, file: !277, line: 768, baseType: !292, size: 32, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !293, line: 113, baseType: !294)
!293 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !293, line: 111, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !294, file: !293, line: 112, baseType: !69, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !277, line: 770, baseType: !7, size: 32, offset: 352)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !276, file: !277, line: 771, baseType: !7, size: 32, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !276, file: !277, line: 774, baseType: !42, size: 32, offset: 416)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !276, file: !277, line: 775, baseType: !301, size: 128, offset: 448)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !302, line: 58, size: 128, elements: !303)
!302 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!303 = !{!304, !310, !315, !316}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !301, file: !302, line: 59, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !306, line: 60, size: 64, elements: !307)
!306 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !306, line: 61, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !302, line: 60, baseType: !311, size: 32, offset: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !302, line: 60, size: 32, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !311, file: !302, line: 61, baseType: !7, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !311, file: !302, line: 62, baseType: !69, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !301, file: !302, line: 65, baseType: !113, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !301, file: !302, line: 65, baseType: !113, size: 16, offset: 112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !276, file: !277, line: 776, baseType: !7, size: 32, offset: 576)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !276, file: !277, line: 777, baseType: !59, size: 64, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !276, file: !277, line: 778, baseType: !275, size: 64, offset: 704)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !276, file: !277, line: 787, baseType: !42, size: 32, offset: 768)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !276, file: !277, line: 788, baseType: !42, size: 32, offset: 800)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !276, file: !277, line: 790, baseType: !42, size: 32, offset: 832)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !276, file: !277, line: 792, baseType: !42, size: 32, offset: 864)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !276, file: !277, line: 793, baseType: !42, size: 32, offset: 896)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !276, file: !277, line: 794, baseType: !42, size: 32, offset: 928)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !276, file: !277, line: 795, baseType: !7, size: 32, offset: 960)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !276, file: !277, line: 797, baseType: !328, size: 2048, offset: 1024)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !277, line: 551, size: 2048, elements: !329)
!329 = !{!330, !335, !343, !347, !348, !349, !350, !351, !352, !353, !354, !357, !358, !359, !360, !362, !365, !366, !367}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !328, file: !277, line: 553, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !277, line: 411, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !331, file: !277, line: 412, baseType: !59, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !331, file: !277, line: 413, baseType: !286, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !328, file: !277, line: 554, baseType: !336, size: 192, align: 64, offset: 128)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !337, line: 5, size: 192, align: 64, elements: !338)
!337 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!338 = !{!339, !340, !342}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !336, file: !337, line: 6, baseType: !59, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !336, file: !337, line: 7, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !336, file: !337, line: 8, baseType: !341, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !328, file: !277, line: 555, baseType: !344, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !104, line: 23, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !106, line: 31, baseType: !346)
!346 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !328, file: !277, line: 556, baseType: !344, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !328, file: !277, line: 558, baseType: !117, size: 128, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !328, file: !277, line: 559, baseType: !7, size: 32, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !328, file: !277, line: 561, baseType: !344, size: 64, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !328, file: !277, line: 562, baseType: !344, size: 64, offset: 704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !328, file: !277, line: 563, baseType: !344, size: 64, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !328, file: !277, line: 564, baseType: !344, size: 64, offset: 832)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !328, file: !277, line: 565, baseType: !355, size: 64, offset: 896)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !104, line: 22, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !106, line: 30, baseType: !63)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !328, file: !277, line: 566, baseType: !344, size: 64, offset: 960)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !328, file: !277, line: 568, baseType: !344, size: 64, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !328, file: !277, line: 571, baseType: !42, size: 32, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !328, file: !277, line: 572, baseType: !361, size: 64, offset: 1152)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !328, file: !277, line: 574, baseType: !363, size: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !277, line: 49, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !328, file: !277, line: 576, baseType: !363, size: 64, offset: 1280)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !328, file: !277, line: 578, baseType: !59, size: 64, offset: 1344)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !328, file: !277, line: 588, baseType: !368, size: 512, align: 512, offset: 1536)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !277, line: 497, size: 512, align: 512, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !368, file: !277, line: 498, baseType: !344, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !368, file: !277, line: 499, baseType: !344, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !368, file: !277, line: 500, baseType: !344, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !368, file: !277, line: 501, baseType: !286, size: 32, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !368, file: !277, line: 502, baseType: !286, size: 32, offset: 224)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !368, file: !277, line: 503, baseType: !59, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !368, file: !277, line: 504, baseType: !59, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !368, file: !277, line: 505, baseType: !59, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !368, file: !277, line: 506, baseType: !379, size: 64, align: 64, offset: 448)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !277, line: 445, size: 64, align: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !379, file: !277, line: 446, baseType: !7, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !379, file: !277, line: 447, baseType: !7, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !276, file: !277, line: 798, baseType: !384, size: 384, offset: 3072)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !277, line: 592, size: 384, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !384, file: !277, line: 593, baseType: !117, size: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !384, file: !277, line: 594, baseType: !59, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !384, file: !277, line: 595, baseType: !59, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !384, file: !277, line: 596, baseType: !7, size: 32, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !384, file: !277, line: 597, baseType: !46, size: 16, offset: 288)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !384, file: !277, line: 598, baseType: !46, size: 16, offset: 304)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !384, file: !277, line: 600, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !276, file: !277, line: 799, baseType: !395, size: 1792, offset: 3456)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !277, line: 610, size: 1792, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !492, !493}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !395, file: !277, line: 611, baseType: !336, size: 192, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !395, file: !277, line: 618, baseType: !344, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !395, file: !277, line: 619, baseType: !344, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !395, file: !277, line: 620, baseType: !344, size: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !395, file: !277, line: 621, baseType: !344, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !395, file: !277, line: 622, baseType: !344, size: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !395, file: !277, line: 629, baseType: !355, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !395, file: !277, line: 630, baseType: !344, size: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !277, line: 631, baseType: !7, size: 32, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !395, file: !277, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !395, file: !277, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !395, file: !277, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !395, file: !277, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !395, file: !277, line: 662, baseType: !411, size: 512, offset: 704)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !171, line: 118, size: 512, elements: !412)
!412 = !{!413, !421, !422, !427, !488, !489, !490, !491}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !411, file: !171, line: 119, baseType: !414, size: 256)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !415, line: 9, size: 256, elements: !416)
!415 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !414, file: !415, line: 10, baseType: !336, size: 192, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !414, file: !415, line: 11, baseType: !419, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !420, line: 29, baseType: !355)
!420 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !411, file: !171, line: 120, baseType: !419, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !411, file: !171, line: 121, baseType: !423, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!170, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !411, file: !171, line: 122, baseType: !428, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !171, line: 159, size: 512, align: 512, elements: !430)
!430 = !{!431, !457, !458, !461, !471, !472, !483, !487}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !429, file: !171, line: 160, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !171, line: 215, size: 4608, align: 512, elements: !434)
!434 = !{!435, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !433, file: !171, line: 216, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !433, file: !171, line: 217, baseType: !7, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !433, file: !171, line: 218, baseType: !7, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !433, file: !171, line: 219, baseType: !7, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !433, file: !171, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !433, file: !171, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !433, file: !171, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !433, file: !171, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !433, file: !171, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !433, file: !171, line: 226, baseType: !7, size: 32, offset: 160)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !433, file: !171, line: 227, baseType: !46, size: 16, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !433, file: !171, line: 228, baseType: !46, size: 16, offset: 208)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !433, file: !171, line: 229, baseType: !7, size: 32, offset: 224)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !433, file: !171, line: 235, baseType: !419, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !433, file: !171, line: 236, baseType: !426, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !433, file: !171, line: 237, baseType: !419, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !433, file: !171, line: 238, baseType: !426, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !433, file: !171, line: 239, baseType: !454, size: 4096, align: 512, offset: 512)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 4096, align: 512, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !429, file: !171, line: 161, baseType: !7, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !429, file: !171, line: 162, baseType: !459, size: 32, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !45, line: 32, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !57, line: 96, baseType: !42)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !429, file: !171, line: 163, baseType: !462, size: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !463, line: 274, baseType: !464)
!463 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !463, line: 274, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !464, file: !463, line: 274, baseType: !467, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !463, line: 69, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !463, line: 64, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !468, file: !463, line: 65, baseType: !7, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !429, file: !171, line: 164, baseType: !426, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !429, file: !171, line: 165, baseType: !473, size: 128, offset: 256)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !415, line: 14, size: 128, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !473, file: !415, line: 15, baseType: !476, size: 128)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !337, line: 26, size: 128, elements: !477)
!477 = !{!478, !482}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !476, file: !337, line: 27, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !337, line: 12, size: 64, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !479, file: !337, line: 13, baseType: !341, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !476, file: !337, line: 28, baseType: !341, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !429, file: !171, line: 166, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!419}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !429, file: !171, line: 167, baseType: !419, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !411, file: !171, line: 123, baseType: !103, size: 8, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !411, file: !171, line: 124, baseType: !103, size: 8, offset: 456)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !411, file: !171, line: 125, baseType: !103, size: 8, offset: 464)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !411, file: !171, line: 126, baseType: !103, size: 8, offset: 472)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !395, file: !277, line: 671, baseType: !411, size: 512, offset: 1216)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !395, file: !277, line: 679, baseType: !494, size: 64, offset: 1728)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !276, file: !277, line: 800, baseType: !496, size: 64, offset: 5248)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !277, line: 800, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !276, file: !277, line: 809, baseType: !500, size: 64, offset: 5312)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !277, line: 70, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !276, file: !277, line: 825, baseType: !503, size: 2048, align: 512, offset: 5632)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !277, line: 509, size: 2048, align: 512, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !503, file: !277, line: 511, baseType: !344, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !503, file: !277, line: 512, baseType: !344, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !503, file: !277, line: 513, baseType: !344, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !503, file: !277, line: 514, baseType: !344, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !503, file: !277, line: 515, baseType: !344, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !503, file: !277, line: 516, baseType: !344, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !503, file: !277, line: 518, baseType: !344, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !503, file: !277, line: 519, baseType: !344, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !503, file: !277, line: 520, baseType: !355, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !503, file: !277, line: 522, baseType: !344, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !503, file: !277, line: 523, baseType: !344, size: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !503, file: !277, line: 524, baseType: !355, size: 64, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !503, file: !277, line: 526, baseType: !355, size: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !503, file: !277, line: 527, baseType: !344, size: 64, offset: 832)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !503, file: !277, line: 529, baseType: !344, size: 64, offset: 896)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !503, file: !277, line: 530, baseType: !344, size: 64, offset: 960)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !503, file: !277, line: 531, baseType: !344, size: 64, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !503, file: !277, line: 532, baseType: !344, size: 64, offset: 1088)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !503, file: !277, line: 533, baseType: !344, size: 64, offset: 1152)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !503, file: !277, line: 535, baseType: !344, size: 64, offset: 1216)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !503, file: !277, line: 536, baseType: !344, size: 64, offset: 1280)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !503, file: !277, line: 537, baseType: !344, size: 64, offset: 1344)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !503, file: !277, line: 538, baseType: !344, size: 64, offset: 1408)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !503, file: !277, line: 539, baseType: !344, size: 64, offset: 1472)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !503, file: !277, line: 540, baseType: !344, size: 64, offset: 1536)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !503, file: !277, line: 541, baseType: !344, size: 64, offset: 1600)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !503, file: !277, line: 542, baseType: !344, size: 64, offset: 1664)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !503, file: !277, line: 543, baseType: !344, size: 64, offset: 1728)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !276, file: !277, line: 833, baseType: !7, size: 32, offset: 7680)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !276, file: !277, line: 836, baseType: !7, size: 32, offset: 7712)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !276, file: !277, line: 837, baseType: !42, size: 32, offset: 7744)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !276, file: !277, line: 838, baseType: !537, size: 64, offset: 7808)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !540, line: 19, baseType: !541)
!540 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !540, line: 19, size: 64, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !541, file: !540, line: 19, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 1)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !276, file: !277, line: 839, baseType: !548, size: 64, offset: 7872)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !276, file: !277, line: 840, baseType: !539, size: 64, offset: 7936)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !276, file: !277, line: 841, baseType: !40, size: 64, offset: 8000)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !276, file: !277, line: 843, baseType: !46, size: 16, offset: 8064)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !276, file: !277, line: 845, baseType: !46, size: 16, offset: 8080)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !276, file: !277, line: 848, baseType: !42, size: 32, offset: 8096)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !276, file: !277, line: 849, baseType: !555, size: 32, offset: 8128)
!555 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !277, line: 718, size: 32, elements: !556)
!556 = !{!557, !564}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !555, file: !277, line: 724, baseType: !558, size: 32)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !555, file: !277, line: 719, size: 32, elements: !559)
!559 = !{!560, !561, !562, !563}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !558, file: !277, line: 720, baseType: !103, size: 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !558, file: !277, line: 721, baseType: !103, size: 8, offset: 8)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !558, file: !277, line: 722, baseType: !103, size: 8, offset: 16)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !558, file: !277, line: 723, baseType: !103, size: 8, offset: 24)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !555, file: !277, line: 725, baseType: !286, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !276, file: !277, line: 850, baseType: !117, size: 128, offset: 8192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !276, file: !277, line: 851, baseType: !567, size: 64, offset: 8320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !277, line: 60, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !276, file: !277, line: 855, baseType: !59, size: 64, offset: 8384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !276, file: !277, line: 856, baseType: !103, size: 8, offset: 8448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !276, file: !277, line: 857, baseType: !103, size: 8, offset: 8456)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !276, file: !277, line: 858, baseType: !42, size: 32, offset: 8480)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !276, file: !277, line: 859, baseType: !117, size: 128, offset: 8512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !276, file: !277, line: 860, baseType: !42, size: 32, offset: 8640)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !276, file: !277, line: 861, baseType: !117, size: 128, offset: 8704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !276, file: !277, line: 873, baseType: !577, size: 256, offset: 8832)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !277, line: 376, size: 256, elements: !578)
!578 = !{!579, !580, !581, !582}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !577, file: !277, line: 381, baseType: !59, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !577, file: !277, line: 384, baseType: !346, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !577, file: !277, line: 389, baseType: !346, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !577, file: !277, line: 392, baseType: !346, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !276, file: !277, line: 875, baseType: !117, size: 128, offset: 9088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !276, file: !277, line: 877, baseType: !585, size: 320, offset: 9216)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !586, line: 86, size: 320, elements: !587)
!586 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!587 = !{!588, !589, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !585, file: !586, line: 87, baseType: !42, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !585, file: !586, line: 88, baseType: !117, size: 128, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !585, file: !586, line: 89, baseType: !117, size: 128, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !276, file: !277, line: 878, baseType: !336, size: 192, align: 64, offset: 9536)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !276, file: !277, line: 881, baseType: !593, size: 64, offset: 9728)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !128, line: 733, size: 10240, elements: !595)
!595 = !{!596, !3852}
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !128, line: 734, baseType: !597, size: 10240)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !128, line: 734, size: 10240, elements: !598)
!598 = !{!599, !603, !617, !3732, !3733, !3734, !3735, !3736, !3737, !3744, !3745, !3746, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3785, !3786, !3789, !3832, !3833, !3834, !3837, !3838, !3839, !3842, !3843, !3844, !3850, !3851}
!599 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !128, line: 739, baseType: !600, size: 512, align: 512)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !597, file: !128, line: 739, size: 512, align: 512, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !600, file: !128, line: 747, baseType: !69, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !597, file: !128, line: 750, baseType: !604, size: 128, offset: 512)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !605, line: 218, size: 128, elements: !606)
!605 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!606 = !{!607, !615, !616}
!607 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !605, line: 219, baseType: !608, size: 32)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !605, line: 219, size: 32, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !608, file: !605, line: 220, baseType: !79, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !608, file: !605, line: 221, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !605, line: 197, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 197, elements: !614)
!614 = !{}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !604, file: !605, line: 223, baseType: !7, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !604, file: !605, line: 224, baseType: !40, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !597, file: !128, line: 752, baseType: !618, size: 64, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!59, !621, !59, !59, !59, !59}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !623)
!623 = !{!624, !638, !639, !641, !648, !660, !661, !662, !732, !1088, !1097, !3722, !3723, !3724, !3725, !3726, !3727, !3729, !3730, !3731}
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !19, line: 995, baseType: !625, size: 128)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !19, line: 995, size: 128, elements: !626)
!626 = !{!627, !628, !637}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !625, file: !19, line: 996, baseType: !305, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !625, file: !19, line: 997, baseType: !629, size: 128, align: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !45, line: 232, size: 128, align: 64, elements: !630)
!630 = !{!631, !633}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !629, file: !45, line: 233, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !629, file: !45, line: 234, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !632}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !625, file: !19, line: 998, baseType: !7, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !622, file: !19, line: 1005, baseType: !79, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !622, file: !19, line: 1006, baseType: !640, size: 32, offset: 160)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !45, line: 156, baseType: !7)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !622, file: !19, line: 1007, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !643, line: 13, baseType: !644)
!643 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !645, file: !45, line: 180, baseType: !355, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !622, file: !19, line: 1008, baseType: !649, size: 256, offset: 256)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !650, line: 66, size: 256, elements: !651)
!650 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!651 = !{!652, !653, !654, !659}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !649, file: !650, line: 67, baseType: !642, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !649, file: !650, line: 68, baseType: !436, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !649, file: !650, line: 70, baseType: !655, size: 32, offset: 96)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !656, line: 15, size: 32, elements: !657)
!656 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !655, file: !656, line: 20, baseType: !69, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !649, file: !650, line: 72, baseType: !117, size: 128, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !622, file: !19, line: 1009, baseType: !61, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !622, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !622, file: !19, line: 1011, baseType: !663, size: 256, offset: 640)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !664)
!664 = !{!665, !688, !721, !722, !730, !731}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !663, file: !19, line: 949, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !667, line: 34, baseType: !668)
!667 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 25, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !668, file: !667, line: 26, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !672, line: 27, baseType: !673)
!672 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !672, line: 13, size: 64, elements: !674)
!674 = !{!675, !687}
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !672, line: 14, baseType: !676, size: 32)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !672, line: 14, size: 32, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !676, file: !672, line: 15, baseType: !69, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !672, line: 16, baseType: !680, size: 32)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !676, file: !672, line: 16, size: 32, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !680, file: !672, line: 18, baseType: !103, size: 8)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !680, file: !672, line: 19, baseType: !684, size: 24, offset: 8)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 3)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !673, file: !672, line: 26, baseType: !91, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !663, file: !19, line: 950, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !24, line: 59, size: 768, elements: !691)
!691 = !{!692, !693, !694, !695, !708, !709, !710, !711}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !690, file: !24, line: 61, baseType: !292, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !690, file: !24, line: 62, baseType: !7, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !690, file: !24, line: 63, baseType: !79, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !690, file: !24, line: 65, baseType: !696, size: 256, offset: 128)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 256, elements: !706)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !45, line: 194, size: 64, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !697, file: !45, line: 195, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !45, line: 198, size: 128, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !701, file: !45, line: 199, baseType: !700, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !701, file: !45, line: 199, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!706 = !{!707}
!707 = !DISubrange(count: 4)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !690, file: !24, line: 66, baseType: !697, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !690, file: !24, line: 68, baseType: !74, size: 192, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !690, file: !24, line: 69, baseType: !629, size: 128, align: 64, offset: 640)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !690, file: !24, line: 70, baseType: !712, offset: 768)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, elements: !719)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !24, line: 54, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !713, file: !24, line: 55, baseType: !42, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !713, file: !24, line: 56, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !24, line: 56, flags: DIFlagFwdDecl)
!719 = !{!720}
!720 = !DISubrange(count: -1)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !663, file: !19, line: 951, baseType: !23, size: 32, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !663, file: !19, line: 952, baseType: !723, size: 32, offset: 160)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !724, line: 23, baseType: !725)
!724 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !724, line: 21, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !725, file: !724, line: 22, baseType: !728, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !45, line: 37, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !57, line: 49, baseType: !7)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !663, file: !19, line: 952, baseType: !723, size: 32, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !663, file: !19, line: 953, baseType: !42, size: 32, offset: 224)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !622, file: !19, line: 1012, baseType: !733, size: 64, offset: 896)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !736, line: 110, size: 1472, elements: !737)
!736 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!737 = !{!738, !739, !740, !747, !748, !749, !750, !751, !752, !753, !754, !760, !761, !762, !763, !764, !765, !889, !890, !891, !892, !893, !924, !1074, !1075, !1083}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !735, file: !736, line: 111, baseType: !642, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !735, file: !736, line: 112, baseType: !723, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !735, file: !736, line: 113, baseType: !741, size: 32, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !724, line: 28, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !724, line: 26, size: 32, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !742, file: !724, line: 27, baseType: !745, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !45, line: 38, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !57, line: 50, baseType: !7)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !735, file: !736, line: 114, baseType: !723, size: 32, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !735, file: !736, line: 115, baseType: !741, size: 32, offset: 160)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !735, file: !736, line: 116, baseType: !723, size: 32, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !735, file: !736, line: 117, baseType: !741, size: 32, offset: 224)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !735, file: !736, line: 118, baseType: !723, size: 32, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !735, file: !736, line: 119, baseType: !741, size: 32, offset: 288)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !735, file: !736, line: 120, baseType: !7, size: 32, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !735, file: !736, line: 121, baseType: !755, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !756, line: 24, baseType: !757)
!756 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !756, line: 24, size: 64, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !757, file: !756, line: 24, baseType: !344, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !735, file: !736, line: 122, baseType: !755, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !735, file: !736, line: 123, baseType: !755, size: 64, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !735, file: !736, line: 124, baseType: !755, size: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !735, file: !736, line: 125, baseType: !755, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !735, file: !736, line: 127, baseType: !107, size: 8, offset: 704)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !735, file: !736, line: 129, baseType: !766, size: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !768, line: 195, size: 1728, elements: !769)
!768 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!769 = !{!770, !771, !776, !781, !790, !793, !794, !801, !802, !803, !804, !807, !808, !809, !811, !812, !853, !874}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !767, file: !768, line: 196, baseType: !292, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !767, file: !768, line: 197, baseType: !772, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !768, line: 28, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !45, line: 104, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !104, line: 20, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !106, line: 26, baseType: !42)
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !768, line: 198, baseType: !777, size: 192, offset: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !768, line: 198, size: 192, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !777, file: !768, line: 199, baseType: !117, size: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !777, file: !768, line: 200, baseType: !336, size: 192, align: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !767, file: !768, line: 205, baseType: !782, size: 320, offset: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !783, line: 48, size: 320, elements: !784)
!783 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!784 = !{!785, !786, !787, !788, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !782, file: !783, line: 49, baseType: !642, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !782, file: !783, line: 55, baseType: !642, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !782, file: !783, line: 57, baseType: !655, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !782, file: !783, line: 59, baseType: !436, size: 32, offset: 160)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !782, file: !783, line: 60, baseType: !117, size: 128, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !767, file: !768, line: 206, baseType: !791, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !768, line: 206, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !767, file: !768, line: 207, baseType: !40, size: 64, offset: 640)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !768, line: 208, baseType: !795, size: 64, offset: 704)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !768, line: 208, size: 64, elements: !796)
!796 = !{!797, !800}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !795, file: !768, line: 209, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !799, line: 8, baseType: !356)
!799 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!800 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !795, file: !768, line: 210, baseType: !798, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !767, file: !768, line: 212, baseType: !798, size: 64, offset: 768)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !767, file: !768, line: 213, baseType: !723, size: 32, offset: 832)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !767, file: !768, line: 214, baseType: !741, size: 32, offset: 864)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !767, file: !768, line: 215, baseType: !805, size: 32, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !768, line: 31, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 110, baseType: !286)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !767, file: !768, line: 216, baseType: !46, size: 16, offset: 928)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !767, file: !768, line: 217, baseType: !46, size: 16, offset: 944)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !767, file: !768, line: 221, baseType: !810, size: 16, offset: 960)
!810 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !768, line: 228, baseType: !59, size: 64, offset: 1024)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !768, line: 245, baseType: !813, size: 320, offset: 1088)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !768, line: 245, size: 320, elements: !814)
!814 = !{!815, !844}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !813, file: !768, line: 246, baseType: !816, size: 320)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !768, line: 114, size: 320, elements: !817)
!817 = !{!818, !819, !831, !834, !843}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !816, file: !768, line: 116, baseType: !59, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !768, line: 117, baseType: !820, size: 64, offset: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !768, line: 117, size: 64, elements: !821)
!821 = !{!822, !830}
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !768, line: 118, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !820, file: !768, line: 118, size: 64, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !823, file: !768, line: 120, baseType: !113, size: 16)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !823, file: !768, line: 121, baseType: !827, size: 48, offset: 16)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 6)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !820, file: !768, line: 127, baseType: !59, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !768, line: 129, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !768, line: 102, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !816, file: !768, line: 130, baseType: !835, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !768, line: 108, size: 192, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !836, file: !768, line: 109, baseType: !629, size: 128, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !836, file: !768, line: 110, baseType: !292, size: 32, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !836, file: !768, line: 111, baseType: !841, size: 8, offset: 160)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !842)
!842 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !816, file: !768, line: 131, baseType: !36, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !768, line: 247, baseType: !845, size: 320)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !768, line: 247, size: 320, elements: !846)
!846 = !{!847, !848, !849, !850, !851}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !845, file: !768, line: 248, baseType: !59, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !845, file: !768, line: 249, baseType: !59, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !768, line: 250, baseType: !832, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !845, file: !768, line: 251, baseType: !835, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !845, file: !768, line: 252, baseType: !852, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !768, line: 260, baseType: !854, size: 256, offset: 1408)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !768, line: 260, size: 256, elements: !855)
!855 = !{!856, !862}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !854, file: !768, line: 261, baseType: !857, size: 256)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !768, line: 134, size: 256, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !857, file: !768, line: 135, baseType: !40, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !857, file: !768, line: 136, baseType: !861, size: 256)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !706)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !768, line: 262, baseType: !863, size: 256)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !854, file: !768, line: 262, size: 256, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !863, file: !768, line: 264, baseType: !117, size: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !863, file: !768, line: 265, baseType: !867, size: 128, offset: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !868, line: 22, size: 128, elements: !869)
!868 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!869 = !{!870, !873}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !867, file: !868, line: 23, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !868, line: 23, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !867, file: !868, line: 24, baseType: !59, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !767, file: !768, line: 280, baseType: !875, size: 64, offset: 1664)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !768, line: 176, size: 192, elements: !877)
!877 = !{!878, !887, !888}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !876, file: !768, line: 177, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !768, line: 171, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!42, !766, !883, !885, !766}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !876, file: !768, line: 178, baseType: !766, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !876, file: !768, line: 179, baseType: !832, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !735, file: !736, line: 130, baseType: !766, size: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !735, file: !736, line: 131, baseType: !766, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !735, file: !736, line: 132, baseType: !766, size: 64, offset: 960)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !735, file: !736, line: 135, baseType: !40, size: 64, offset: 1024)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !735, file: !736, line: 137, baseType: !894, size: 64, offset: 1088)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !896, line: 14, size: 1088, elements: !897)
!896 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!897 = !{!898, !899, !908, !909, !910, !911, !912, !913}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !895, file: !896, line: 15, baseType: !292, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !895, file: !896, line: 17, baseType: !900, size: 320, offset: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !901, line: 22, size: 320, elements: !902)
!901 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!902 = !{!903, !904, !905, !906}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !900, file: !901, line: 23, baseType: !436, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !900, file: !901, line: 24, baseType: !355, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !900, file: !901, line: 26, baseType: !117, size: 128, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !900, file: !901, line: 28, baseType: !907, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !895, file: !896, line: 19, baseType: !59, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !895, file: !896, line: 20, baseType: !642, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !895, file: !896, line: 23, baseType: !701, size: 128, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !895, file: !896, line: 24, baseType: !723, size: 32, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !895, file: !896, line: 29, baseType: !642, size: 64, offset: 704)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !895, file: !896, line: 36, baseType: !914, size: 320, offset: 768)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !915, line: 15, size: 320, elements: !916)
!915 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!916 = !{!917, !918, !919, !920, !921, !922, !923}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !915, line: 16, baseType: !436, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !914, file: !915, line: 18, baseType: !42, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !914, file: !915, line: 19, baseType: !42, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !914, file: !915, line: 20, baseType: !42, size: 32, offset: 96)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !914, file: !915, line: 21, baseType: !42, size: 32, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !914, file: !915, line: 22, baseType: !59, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !914, file: !915, line: 23, baseType: !59, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !735, file: !736, line: 138, baseType: !925, size: 64, offset: 1152)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !927, line: 68, size: 4800, elements: !928)
!927 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!928 = !{!929, !951, !952, !953, !954, !955, !956, !957, !968, !969, !970, !971, !972, !973, !985, !1055, !1056, !1070, !1072}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !926, file: !927, line: 69, baseType: !930, size: 576)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !927, line: 23, size: 576, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !930, file: !927, line: 24, baseType: !286, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !927, line: 25, baseType: !934, size: 512, offset: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !927, line: 25, size: 512, elements: !935)
!935 = !{!936, !945}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !934, file: !927, line: 26, baseType: !937, size: 480)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 480, elements: !943)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !927, line: 17, size: 96, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !938, file: !927, line: 18, baseType: !286, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !938, file: !927, line: 19, baseType: !286, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !938, file: !927, line: 20, baseType: !286, size: 32, offset: 64)
!943 = !{!944}
!944 = !DISubrange(count: 5)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !927, line: 27, baseType: !946, size: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !927, line: 27, size: 128, elements: !947)
!947 = !{!948, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !946, file: !927, line: 28, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !946, file: !927, line: 29, baseType: !949, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !926, file: !927, line: 70, baseType: !930, size: 576, offset: 576)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !926, file: !927, line: 71, baseType: !930, size: 576, offset: 1152)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !926, file: !927, line: 72, baseType: !925, size: 64, offset: 1728)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !926, file: !927, line: 73, baseType: !42, size: 32, offset: 1792)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !926, file: !927, line: 74, baseType: !723, size: 32, offset: 1824)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !926, file: !927, line: 75, baseType: !741, size: 32, offset: 1856)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !926, file: !927, line: 76, baseType: !958, size: 192, offset: 1920)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !959, line: 9, size: 192, elements: !960)
!959 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!960 = !{!961, !962, !966, !967}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !958, file: !959, line: 10, baseType: !642, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !958, file: !959, line: 11, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !959, line: 7, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !958, file: !959, line: 12, baseType: !7, size: 32, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !958, file: !959, line: 13, baseType: !292, size: 32, offset: 160)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !926, file: !927, line: 77, baseType: !59, size: 64, offset: 2112)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !926, file: !927, line: 80, baseType: !841, size: 8, offset: 2176)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !926, file: !927, line: 88, baseType: !117, size: 128, offset: 2240)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !926, file: !927, line: 89, baseType: !766, size: 64, offset: 2368)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !926, file: !927, line: 90, baseType: !782, size: 320, offset: 2432)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !926, file: !927, line: 97, baseType: !974, size: 256, offset: 2752)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !975, line: 98, size: 256, elements: !976)
!975 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !974, file: !975, line: 99, baseType: !642, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !974, file: !975, line: 100, baseType: !117, size: 128, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !974, file: !975, line: 101, baseType: !980, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !975, line: 21, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !926, file: !927, line: 99, baseType: !986, size: 768, offset: 3008)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !32, line: 199, size: 768, elements: !987)
!987 = !{!988, !993}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !986, file: !32, line: 200, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!42, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !986, file: !32, line: 201, baseType: !994, size: 704, offset: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !32, line: 193, size: 704, elements: !995)
!995 = !{!996, !1054}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !994, file: !32, line: 195, baseType: !997, size: 640)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !32, line: 173, size: 640, elements: !998)
!998 = !{!999, !1011, !1023, !1024, !1044, !1045, !1047, !1053}
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !32, line: 174, baseType: !1000, size: 192)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !32, line: 174, size: 192, elements: !1001)
!1001 = !{!1002, !1010}
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !32, line: 175, baseType: !1003, size: 192)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !32, line: 175, size: 192, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1003, file: !32, line: 176, baseType: !53, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1003, file: !32, line: 177, baseType: !42, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1003, file: !32, line: 178, baseType: !42, size: 32, offset: 96)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1003, file: !32, line: 179, baseType: !42, size: 32, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1003, file: !32, line: 180, baseType: !42, size: 32, offset: 160)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1000, file: !32, line: 182, baseType: !629, size: 128, align: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !997, file: !32, line: 184, baseType: !1012, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1014, line: 26, size: 256, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1013, file: !1014, line: 27, baseType: !7, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1013, file: !1014, line: 28, baseType: !1018, size: 192, offset: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1019, line: 43, size: 192, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1018, file: !1019, line: 44, baseType: !436, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1018, file: !1019, line: 45, baseType: !117, size: 128, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !997, file: !32, line: 185, baseType: !53, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !997, file: !32, line: 186, baseType: !1025, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !32, line: 204, size: 960, elements: !1027)
!1027 = !{!1028, !1029, !1033, !1040}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1026, file: !32, line: 205, baseType: !986, size: 768)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1026, file: !32, line: 206, baseType: !1030, size: 64, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!992, !1025}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1026, file: !32, line: 207, baseType: !1034, size: 64, offset: 832)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1026, file: !32, line: 209, baseType: !1041, size: 64, offset: 896)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!42, !1037, !53}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !997, file: !32, line: 187, baseType: !992, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !997, file: !32, line: 188, baseType: !1046, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !997, file: !32, line: 189, baseType: !1048, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !32, line: 157, size: 256, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1049, file: !32, line: 158, baseType: !336, size: 192, align: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1049, file: !32, line: 159, baseType: !1037, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !997, file: !32, line: 190, baseType: !697, size: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !994, file: !32, line: 196, baseType: !479, size: 64, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !926, file: !927, line: 100, baseType: !1037, size: 64, offset: 3776)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !926, file: !927, line: 102, baseType: !1057, size: 64, offset: 3840)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !927, line: 107, size: 1152, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1068}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1058, file: !927, line: 108, baseType: !701, size: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1058, file: !927, line: 109, baseType: !925, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1058, file: !927, line: 110, baseType: !723, size: 32, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1058, file: !927, line: 111, baseType: !69, size: 32, offset: 224)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1058, file: !927, line: 112, baseType: !1065, size: 640, offset: 256)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 640, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 10)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1058, file: !927, line: 113, baseType: !1069, size: 256, offset: 896)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 256, elements: !706)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !926, file: !927, line: 103, baseType: !1071, size: 640, offset: 3904)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 640, elements: !1066)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !926, file: !927, line: 104, baseType: !1073, size: 256, offset: 4544)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 256, elements: !706)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !735, file: !736, line: 139, baseType: !1057, size: 64, offset: 1216)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !735, file: !736, line: 140, baseType: !1076, size: 64, offset: 1280)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !736, line: 25, size: 64, elements: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1077, file: !736, line: 26, baseType: !69, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1077, file: !736, line: 27, baseType: !42, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1077, file: !736, line: 28, baseType: !1082, offset: 64)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, elements: !719)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !736, line: 142, baseType: !1084, size: 128, offset: 1344)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !736, line: 142, size: 128, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1084, file: !736, line: 143, baseType: !42, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1084, file: !736, line: 144, baseType: !629, size: 128, align: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !622, file: !19, line: 1013, baseType: !1089, size: 256, offset: 960)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1096}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1089, file: !19, line: 971, baseType: !59, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1089, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1089, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1089, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1089, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1089, file: !19, line: 976, baseType: !61, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !622, file: !19, line: 1014, baseType: !1098, size: 128, offset: 1216)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1099, line: 8, size: 128, elements: !1100)
!1099 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1100 = !{!1101, !3721}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1098, file: !1099, line: 9, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1104, line: 70, size: 256, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1105 = !{!1106, !3718, !3719, !3720}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1103, file: !1104, line: 71, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1109, line: 82, size: 1536, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1110 = !{!1111, !1112, !1117, !1125, !1126, !1141, !3685, !3687, !3700, !3701, !3702, !3703, !3704, !3710, !3711, !3712}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1108, file: !1109, line: 84, baseType: !7, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1108, file: !1109, line: 85, baseType: !1113, size: 32, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !463, line: 275, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !463, line: 275, size: 32, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1114, file: !463, line: 275, baseType: !467, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1108, file: !1109, line: 86, baseType: !1118, size: 128, offset: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1119, line: 38, size: 128, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1120 = !{!1121, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1118, file: !1119, line: 39, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1118, file: !1119, line: 39, baseType: !1124, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1108, file: !1109, line: 87, baseType: !1107, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1108, file: !1109, line: 88, baseType: !1127, size: 128, offset: 256)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1109, line: 49, size: 128, elements: !1128)
!1128 = !{!1129, !1138}
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !1109, line: 50, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !1109, line: 50, size: 64, elements: !1131)
!1131 = !{!1132, !1137}
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !1109, line: 51, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1109, line: 51, size: 64, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1133, file: !1109, line: 52, baseType: !286, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1133, file: !1109, line: 52, baseType: !286, size: 32, offset: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1130, file: !1109, line: 54, baseType: !344, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1127, file: !1109, line: 56, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1108, file: !1109, line: 89, baseType: !1142, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1154, !1155, !1348, !3499, !3500, !3501, !3502, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3667, !3670, !3671, !3672, !3681, !3682, !3683, !3684}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1143, file: !19, line: 642, baseType: !44, size: 16)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1143, file: !19, line: 643, baseType: !46, size: 16, offset: 16)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1143, file: !19, line: 644, baseType: !723, size: 32, offset: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1143, file: !19, line: 645, baseType: !117, size: 128, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1143, file: !19, line: 646, baseType: !741, size: 32, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1143, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1143, file: !19, line: 650, baseType: !1152, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1143, file: !19, line: 651, baseType: !1152, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1143, file: !19, line: 654, baseType: !1156, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !1159)
!1159 = !{!1160, !1164, !1177, !1183, !1187, !1191, !1195, !1199, !1203, !1207, !1211, !1212, !1218, !1222, !1259, !1290, !1297, !1303, !1307, !1311, !1315, !1319, !1323, !1329, !1333}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1158, file: !19, line: 1967, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1107, !1142, !1107, !7}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1158, file: !19, line: 1968, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!36, !1107, !1142, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1170, line: 10, size: 128, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1171 = !{!1172, !1176}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1169, file: !1170, line: 11, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !40}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1169, file: !1170, line: 12, baseType: !40, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1158, file: !19, line: 1969, baseType: !1178, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!42, !1181, !1142, !42}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !756, line: 42, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1158, file: !19, line: 1970, baseType: !1184, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!1152, !1142, !42, !841}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1158, file: !19, line: 1972, baseType: !1188, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!42, !1107, !852, !42}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1158, file: !19, line: 1974, baseType: !1192, size: 64, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!42, !1181, !1142, !1107, !44, !841}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1158, file: !19, line: 1976, baseType: !1196, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!42, !1107, !1142, !1107}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1158, file: !19, line: 1977, baseType: !1200, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!42, !1142, !1107}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1158, file: !19, line: 1978, baseType: !1204, size: 64, offset: 512)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!42, !1181, !1142, !1107, !36}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1158, file: !19, line: 1980, baseType: !1208, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!42, !1181, !1142, !1107, !44}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1158, file: !19, line: 1982, baseType: !1200, size: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1158, file: !19, line: 1983, baseType: !1213, size: 64, offset: 704)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!42, !1181, !1142, !1107, !44, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !45, line: 21, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !45, line: 18, baseType: !286)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1158, file: !19, line: 1985, baseType: !1219, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!42, !1181, !1142, !1107, !1142, !1107, !7}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1158, file: !19, line: 1987, baseType: !1223, size: 64, offset: 832)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!42, !1181, !1107, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1241, !1250, !1251, !1256, !1257, !1258}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1227, file: !19, line: 227, baseType: !7, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1227, file: !19, line: 228, baseType: !44, size: 16, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1227, file: !19, line: 241, baseType: !1232, size: 32, offset: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1227, file: !19, line: 241, size: 32, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1232, file: !19, line: 242, baseType: !723, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1232, file: !19, line: 243, baseType: !1236, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1237, line: 16, baseType: !1238)
!1237 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1237, line: 14, size: 32, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1238, file: !1237, line: 15, baseType: !728, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1227, file: !19, line: 245, baseType: !1242, size: 32, offset: 96)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1227, file: !19, line: 245, size: 32, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1242, file: !19, line: 246, baseType: !741, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1242, file: !19, line: 247, baseType: !1246, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1237, line: 20, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1237, line: 18, size: 32, elements: !1248)
!1248 = !{!1249}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1247, file: !1237, line: 19, baseType: !745, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1227, file: !19, line: 249, baseType: !61, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1227, file: !19, line: 250, baseType: !1252, size: 128, offset: 192)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !799, line: 13, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1252, file: !799, line: 14, baseType: !798, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1252, file: !799, line: 15, baseType: !273, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1227, file: !19, line: 251, baseType: !1252, size: 128, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1227, file: !19, line: 252, baseType: !1252, size: 128, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1227, file: !19, line: 259, baseType: !621, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1158, file: !19, line: 1988, baseType: !1260, size: 64, offset: 896)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!42, !1181, !1263, !1265, !286, !7}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1267, line: 22, size: 1280, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1266, file: !1267, line: 23, baseType: !286, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1266, file: !1267, line: 24, baseType: !44, size: 16, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1266, file: !1267, line: 25, baseType: !7, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1266, file: !1267, line: 26, baseType: !806, size: 32, offset: 96)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1266, file: !1267, line: 27, baseType: !344, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1266, file: !1267, line: 28, baseType: !344, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1266, file: !1267, line: 41, baseType: !344, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1266, file: !1267, line: 42, baseType: !1216, size: 32, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1266, file: !1267, line: 43, baseType: !1216, size: 32, offset: 352)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1266, file: !1267, line: 44, baseType: !723, size: 32, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1266, file: !1267, line: 45, baseType: !741, size: 32, offset: 416)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1266, file: !1267, line: 46, baseType: !61, size: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1266, file: !1267, line: 47, baseType: !1252, size: 128, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1266, file: !1267, line: 48, baseType: !1252, size: 128, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1266, file: !1267, line: 49, baseType: !1252, size: 128, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1266, file: !1267, line: 50, baseType: !1252, size: 128, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1266, file: !1267, line: 51, baseType: !344, size: 64, offset: 1024)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1266, file: !1267, line: 52, baseType: !344, size: 64, offset: 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1266, file: !1267, line: 53, baseType: !286, size: 32, offset: 1152)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1266, file: !1267, line: 54, baseType: !286, size: 32, offset: 1184)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1266, file: !1267, line: 55, baseType: !344, size: 64, offset: 1216)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1158, file: !19, line: 1990, baseType: !1291, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1294, !1107, !852, !55}
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 66, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !57, line: 73, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !57, line: 15, baseType: !273)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1158, file: !19, line: 1991, baseType: !1298, size: 64, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!42, !1142, !1301, !344, !344}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1158, file: !19, line: 1993, baseType: !1304, size: 64, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!42, !1142, !42}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1158, file: !19, line: 1994, baseType: !1308, size: 64, offset: 1152)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!42, !1142, !1107, !621, !7, !44}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1158, file: !19, line: 1997, baseType: !1312, size: 64, offset: 1216)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!42, !1181, !1142, !621, !44}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1158, file: !19, line: 1999, baseType: !1316, size: 64, offset: 1280)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1152, !1181, !1107, !42}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1158, file: !19, line: 2001, baseType: !1320, size: 64, offset: 1344)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!42, !1181, !1107, !1152, !42}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1158, file: !19, line: 2003, baseType: !1324, size: 64, offset: 1408)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!42, !1181, !1107, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1158, file: !19, line: 2005, baseType: !1330, size: 64, offset: 1472)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!42, !1107, !1327}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1158, file: !19, line: 2006, baseType: !1334, size: 64, offset: 1536)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!1337, !1142}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !1339)
!1339 = !{!1340, !1347}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1338, file: !19, line: 3193, baseType: !1341, size: 128)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1342, line: 296, size: 128, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1343 = !{!1344, !1345, !1346}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1341, file: !1342, line: 297, baseType: !79, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1341, file: !1342, line: 299, baseType: !269, size: 32, offset: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1341, file: !1342, line: 300, baseType: !40, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1338, file: !19, line: 3194, baseType: !286, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1143, file: !19, line: 655, baseType: !1349, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !2567, !2699, !2739, !2822, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2839, !2843, !2844, !3236, !3239, !3298, !3301, !3302, !3303, !3344, !3370, !3371, !3372, !3373, !3374, !3375, !3378, !3382, !3391, !3392, !3393, !3394, !3453, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1350, file: !19, line: 1191, baseType: !117, size: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1350, file: !19, line: 1192, baseType: !1216, size: 32, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1350, file: !19, line: 1193, baseType: !107, size: 8, offset: 160)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1350, file: !19, line: 1194, baseType: !59, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1350, file: !19, line: 1195, baseType: !61, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1350, file: !19, line: 1196, baseType: !1358, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1369, !1373, !1377, !1381, !2555, !2556, !2557, !2559, !2560, !2561, !2563, !2564, !2565, !2566}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1359, file: !19, line: 2367, baseType: !36, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1359, file: !19, line: 2368, baseType: !42, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1359, file: !19, line: 2376, baseType: !1364, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!42, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1104, line: 21, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1359, file: !19, line: 2377, baseType: !1370, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1372)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1359, file: !19, line: 2378, baseType: !1374, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1107, !1358, !42, !36, !40}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1359, file: !19, line: 2380, baseType: !1378, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !1349}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1359, file: !19, line: 2381, baseType: !1382, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1391, !2210, !2236, !2237, !2238, !2239, !2243, !2246, !2247, !2248, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2316, !2320, !2340, !2360, !2361, !2362, !2363, !2372, !2395, !2396, !2399, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2413, !2414, !2513, !2521, !2522, !2523, !2525, !2529, !2530, !2534, !2535, !2536, !2537, !2539, !2540, !2541, !2548, !2549, !2550, !2554}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1383, file: !6, line: 403, baseType: !5, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1383, file: !6, line: 406, baseType: !117, size: 128, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1383, file: !6, line: 409, baseType: !1388, size: 448, offset: 192)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 448, elements: !1389)
!1389 = !{!1390}
!1390 = !DISubrange(count: 56)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1383, file: !6, line: 417, baseType: !1392, size: 768, offset: 640)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1393)
!1393 = !{!1394, !2204, !2205, !2206, !2209}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1392, file: !6, line: 46, baseType: !1395, size: 512)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1396, line: 64, size: 512, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1397 = !{!1398, !1399, !1400, !1402, !1446, !2060, !2194, !2199, !2200, !2201, !2202, !2203}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1395, file: !1396, line: 65, baseType: !36, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1395, file: !1396, line: 66, baseType: !117, size: 128, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1395, file: !1396, line: 67, baseType: !1401, size: 64, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1395, file: !1396, line: 68, baseType: !1403, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1396, line: 168, size: 768, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1404, file: !1396, line: 169, baseType: !117, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1404, file: !1396, line: 170, baseType: !79, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1404, file: !1396, line: 171, baseType: !1395, size: 512, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1404, file: !1396, line: 172, baseType: !1410, size: 64, offset: 704)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1396, line: 133, size: 192, elements: !1413)
!1413 = !{!1414, !1421, !1426}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1412, file: !1396, line: 134, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!42, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1412, file: !1396, line: 135, baseType: !1422, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!36, !1419}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1412, file: !1396, line: 136, baseType: !1427, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!42, !1419, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1396, line: 125, size: 20736, elements: !1433)
!1433 = !{!1434, !1436, !1440, !1441, !1445}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1432, file: !1396, line: 126, baseType: !1435, size: 192)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 192, elements: !685)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1432, file: !1396, line: 127, baseType: !1437, size: 4096, offset: 192)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 4096, elements: !1438)
!1438 = !{!1439}
!1439 = !DISubrange(count: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1432, file: !1396, line: 128, baseType: !42, size: 32, offset: 4288)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1432, file: !1396, line: 129, baseType: !1442, size: 16384, offset: 4320)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16384, elements: !1443)
!1443 = !{!1444}
!1444 = !DISubrange(count: 2048)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1432, file: !1396, line: 130, baseType: !42, size: 32, offset: 20704)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1395, file: !1396, line: 69, baseType: !1447, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1396, line: 116, size: 384, elements: !1450)
!1450 = !{!1451, !1455, !1474, !2022, !2052, !2056}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1449, file: !1396, line: 117, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1401}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1449, file: !1396, line: 118, baseType: !1456, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1459, line: 254, size: 128, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1460 = !{!1461, !1470}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1458, file: !1459, line: 255, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1294, !1401, !1465, !852}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1459, line: 30, size: 128, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1466, file: !1459, line: 31, baseType: !36, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1466, file: !1459, line: 32, baseType: !44, size: 16, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1458, file: !1459, line: 256, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1294, !1401, !1465, !36, !55}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1449, file: !1396, line: 119, baseType: !1475, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1459, line: 84, size: 320, elements: !1479)
!1479 = !{!1480, !1481, !1485, !2018, !2020}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1478, file: !1459, line: 85, baseType: !36, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1478, file: !1459, line: 86, baseType: !1482, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!44, !1401, !1465, !42}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1478, file: !1459, line: 88, baseType: !1486, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!44, !1401, !1489, !42}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1459, line: 175, size: 512, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !2009, !2013, !2014}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1490, file: !1459, line: 176, baseType: !1466, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1490, file: !1459, line: 177, baseType: !55, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1490, file: !1459, line: 178, baseType: !40, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1490, file: !1459, line: 179, baseType: !1496, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !2001, !2002, !2003, !2006, !2007, !2008}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1500, file: !19, line: 473, baseType: !1142, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1500, file: !19, line: 474, baseType: !1341, size: 128, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1500, file: !19, line: 475, baseType: !782, size: 320, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1500, file: !19, line: 476, baseType: !269, size: 32, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1500, file: !19, line: 477, baseType: !69, size: 32, offset: 544)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1500, file: !19, line: 482, baseType: !476, size: 128, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1500, file: !19, line: 483, baseType: !59, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1500, file: !19, line: 484, baseType: !59, size: 64, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1500, file: !19, line: 485, baseType: !1511, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !1514)
!1514 = !{!1515, !1826, !1896, !1900, !1904, !1910, !1916, !1920, !1925, !1929, !1933, !1937, !1965, !1969, !1973, !1977, !1982, !1986, !1993, !1997}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1513, file: !19, line: 405, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!42, !1519, !1806}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !128, line: 74, size: 512, align: 128, elements: !1521)
!1521 = !{!1522, !1523, !1800, !1805}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1520, file: !128, line: 75, baseType: !59, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !128, line: 83, baseType: !1524, size: 320, offset: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !128, line: 83, size: 320, elements: !1525)
!1525 = !{!1526, !1547, !1561, !1565, !1799}
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !128, line: 84, baseType: !1527, size: 320)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !128, line: 84, size: 320, elements: !1528)
!1528 = !{!1529, !1540, !1541, !1546}
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !128, line: 90, baseType: !1530, size: 128)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1527, file: !128, line: 90, size: 128, elements: !1531)
!1531 = !{!1532, !1533, !1538, !1539}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1530, file: !128, line: 91, baseType: !117, size: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !128, line: 94, baseType: !1534, size: 128)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1530, file: !128, line: 94, size: 128, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1534, file: !128, line: 96, baseType: !40, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1534, file: !128, line: 98, baseType: !7, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1530, file: !128, line: 102, baseType: !117, size: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1530, file: !128, line: 103, baseType: !117, size: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1527, file: !128, line: 106, baseType: !1499, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !128, line: 107, baseType: !1542, size: 64, offset: 192)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1527, file: !128, line: 107, size: 64, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1542, file: !128, line: 108, baseType: !59, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1542, file: !128, line: 109, baseType: !59, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1527, file: !128, line: 117, baseType: !59, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !128, line: 119, baseType: !1548, size: 320)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !128, line: 119, size: 320, elements: !1549)
!1549 = !{!1550, !1551, !1554, !1555, !1556}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1548, file: !128, line: 124, baseType: !59, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1548, file: !128, line: 125, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !128, line: 125, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1548, file: !128, line: 126, baseType: !59, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1548, file: !128, line: 127, baseType: !59, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !128, line: 128, baseType: !1557, size: 64, offset: 256)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !128, line: 128, size: 64, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1557, file: !128, line: 133, baseType: !59, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1557, file: !128, line: 138, baseType: !642, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !128, line: 141, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !128, line: 141, size: 64, elements: !1563)
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1562, file: !128, line: 142, baseType: !59, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !128, line: 144, baseType: !1566, size: 128)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !128, line: 144, size: 128, elements: !1567)
!1567 = !{!1568, !1798}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1566, file: !128, line: 146, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !144, line: 126, size: 1216, elements: !1571)
!1571 = !{!1572, !1582, !1603, !1604, !1605, !1606, !1607, !1780, !1781, !1782}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1570, file: !144, line: 127, baseType: !1573, size: 384)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !144, line: 21, size: 384, elements: !1574)
!1574 = !{!1575, !1576, !1578, !1579, !1580, !1581}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1573, file: !144, line: 22, baseType: !59, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1573, file: !144, line: 23, baseType: !1577, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1573, file: !144, line: 24, baseType: !1577, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1573, file: !144, line: 25, baseType: !59, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1573, file: !144, line: 26, baseType: !59, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1573, file: !144, line: 27, baseType: !59, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1570, file: !144, line: 128, baseType: !1583, size: 128, offset: 384)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1584, line: 105, size: 128, elements: !1585)
!1584 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1583, file: !1584, line: 110, baseType: !59, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1583, file: !1584, line: 118, baseType: !1588, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1584, line: 95, size: 448, elements: !1590)
!1590 = !{!1591, !1592, !1598, !1599, !1600, !1601, !1602}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1589, file: !1584, line: 96, baseType: !642, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1589, file: !1584, line: 97, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1584, line: 60, baseType: !1595)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1589, file: !1584, line: 98, baseType: !1593, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1589, file: !1584, line: 99, baseType: !841, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1589, file: !1584, line: 100, baseType: !841, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1589, file: !1584, line: 101, baseType: !629, size: 128, align: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1589, file: !1584, line: 102, baseType: !1597, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1570, file: !144, line: 129, baseType: !1013, size: 256, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1570, file: !144, line: 130, baseType: !143, size: 32, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !144, line: 131, baseType: !7, size: 32, offset: 800)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1570, file: !144, line: 132, baseType: !59, size: 64, offset: 832)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1570, file: !144, line: 133, baseType: !1608, size: 64, offset: 896)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !144, line: 77, size: 192, elements: !1611)
!1611 = !{!1612, !1616, !1776}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1610, file: !144, line: 83, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1519}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1610, file: !144, line: 89, baseType: !1617, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !128, line: 1184, baseType: !7)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1623, line: 512, size: 896, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1624 = !{!1625, !1743, !1744, !1751, !1758, !1768, !1769, !1770, !1772, !1774}
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1623, line: 513, baseType: !1626, size: 320)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1622, file: !1623, line: 513, size: 320, elements: !1627)
!1627 = !{!1628, !1739, !1740, !1741, !1742}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1626, file: !1623, line: 514, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !128, line: 625, size: 1344, elements: !1631)
!1631 = !{!1632, !1641, !1642, !1650, !1657, !1658, !1663, !1664, !1669, !1670, !1673, !1732, !1733, !1734, !1735, !1736, !1737}
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !128, line: 628, baseType: !1633, size: 128)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !128, line: 628, size: 128, elements: !1634)
!1634 = !{!1635, !1640}
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !128, line: 629, baseType: !1636, size: 128)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !128, line: 629, size: 128, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1636, file: !128, line: 631, baseType: !59, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1636, file: !128, line: 632, baseType: !59, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1633, file: !128, line: 635, baseType: !629, size: 128, align: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1630, file: !128, line: 639, baseType: !593, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1630, file: !128, line: 640, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1644, line: 297, baseType: !1645)
!1644 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1644, line: 297, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1645, file: !1644, line: 297, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1649, line: 19, baseType: !59)
!1649 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !128, line: 646, baseType: !1651, size: 64, offset: 256)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !128, line: 646, size: 64, elements: !1652)
!1652 = !{!1653, !1656}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1651, file: !128, line: 647, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !128, line: 542, baseType: !59)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1651, file: !128, line: 648, baseType: !1655, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1630, file: !128, line: 666, baseType: !42, size: 32, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1630, file: !128, line: 667, baseType: !1659, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !128, line: 579, size: 320, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1660, file: !128, line: 580, baseType: !782, size: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1630, file: !128, line: 670, baseType: !841, size: 8, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1630, file: !128, line: 681, baseType: !1665, size: 256, offset: 512)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1630, file: !128, line: 678, size: 256, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1665, file: !128, line: 679, baseType: !336, size: 192, align: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1665, file: !128, line: 680, baseType: !59, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1630, file: !128, line: 689, baseType: !117, size: 128, offset: 768)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1630, file: !128, line: 691, baseType: !1671, size: 64, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !128, line: 691, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1630, file: !128, line: 694, baseType: !1674, size: 64, offset: 960)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1623, line: 563, size: 1024, elements: !1677)
!1677 = !{!1678, !1682, !1683, !1687, !1691, !1695, !1696, !1700, !1704, !1708, !1709, !1710, !1714, !1718, !1724, !1728}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1676, file: !1623, line: 564, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !1629}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1676, file: !1623, line: 569, baseType: !1679, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1676, file: !1623, line: 571, baseType: !1684, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!42, !1629, !59}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1676, file: !1623, line: 572, baseType: !1688, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!42, !1629}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1676, file: !1623, line: 578, baseType: !1692, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!42, !1629, !59, !59, !59}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1676, file: !1623, line: 580, baseType: !1617, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1676, file: !1623, line: 581, baseType: !1697, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1620, !1621, !7}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1676, file: !1623, line: 582, baseType: !1701, size: 64, offset: 448)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1620, !1621, !59, !59}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1676, file: !1623, line: 584, baseType: !1705, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!59, !1629}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1676, file: !1623, line: 588, baseType: !1617, size: 64, offset: 576)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1676, file: !1623, line: 591, baseType: !1617, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1676, file: !1623, line: 597, baseType: !1711, size: 64, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!42, !1629, !59, !40, !42, !42}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1676, file: !1623, line: 603, baseType: !1715, size: 64, offset: 768)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!36, !1629}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1676, file: !1623, line: 613, baseType: !1719, size: 64, offset: 832)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!42, !1629, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !128, line: 717, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1676, file: !1623, line: 625, baseType: !1725, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1722, !1629, !59}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1676, file: !1623, line: 633, baseType: !1729, size: 64, offset: 960)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!1519, !1629, !59}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1630, file: !128, line: 697, baseType: !59, size: 64, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1630, file: !128, line: 699, baseType: !621, size: 64, offset: 1088)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1630, file: !128, line: 700, baseType: !40, size: 64, offset: 1152)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1630, file: !128, line: 711, baseType: !642, size: 64, offset: 1216)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1630, file: !128, line: 717, baseType: !1722, size: 64, offset: 1280)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1630, file: !128, line: 722, baseType: !1738, offset: 1344)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !128, line: 570, elements: !614)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1626, file: !1623, line: 515, baseType: !269, size: 32, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1626, file: !1623, line: 516, baseType: !59, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1626, file: !1623, line: 517, baseType: !59, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1626, file: !1623, line: 518, baseType: !59, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !1623, line: 520, baseType: !127, size: 32, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1622, file: !1623, line: 522, baseType: !1745, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1649, line: 22, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1649, line: 22, size: 64, elements: !1748)
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1747, file: !1649, line: 22, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1649, line: 15, baseType: !59)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1622, file: !1623, line: 524, baseType: !1752, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1644, line: 372, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1644, line: 372, size: 64, elements: !1755)
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1754, file: !1644, line: 372, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1649, line: 16, baseType: !59)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1623, line: 527, baseType: !1759, size: 64, offset: 512)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !1623, line: 527, size: 64, elements: !1760)
!1760 = !{!1761, !1767}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1759, file: !1623, line: 528, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1649, line: 21, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1649, line: 21, size: 64, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1763, file: !1649, line: 21, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1649, line: 14, baseType: !59)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1759, file: !1623, line: 529, baseType: !1746, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1622, file: !1623, line: 534, baseType: !1519, size: 64, offset: 576)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1622, file: !1623, line: 535, baseType: !1519, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1622, file: !1623, line: 541, baseType: !1771, size: 64, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1622, file: !1623, line: 545, baseType: !1773, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1622, file: !1623, line: 549, baseType: !1775, size: 64, offset: 832)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1644, line: 520, baseType: !1519)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1610, file: !144, line: 100, baseType: !1777, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!42, !1569, !59, !59, !42}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1570, file: !144, line: 134, baseType: !40, size: 64, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1570, file: !144, line: 135, baseType: !42, size: 32, offset: 1024)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !144, line: 136, baseType: !1783, size: 128, offset: 1088)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !144, line: 136, size: 128, elements: !1784)
!1784 = !{!1785, !1791}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1783, file: !144, line: 137, baseType: !1786, size: 128)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1787, line: 6, size: 128, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1786, file: !1787, line: 7, baseType: !344, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1786, file: !1787, line: 8, baseType: !344, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !144, line: 138, baseType: !1792)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !144, line: 138, elements: !1793)
!1793 = !{!1794, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1792, file: !144, line: 138, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1792, file: !144, line: 138, elements: !614)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1792, file: !144, line: 138, baseType: !1797)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1786, elements: !719)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1566, file: !128, line: 147, baseType: !40, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1524, file: !128, line: 161, baseType: !629, size: 128, align: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !128, line: 164, baseType: !1801, size: 32, offset: 384)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !128, line: 164, size: 32, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1801, file: !128, line: 169, baseType: !69, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1801, file: !128, line: 177, baseType: !7, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1520, file: !128, line: 181, baseType: !69, size: 32, offset: 416)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 42, size: 384, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1807, file: !14, line: 43, baseType: !273, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1807, file: !14, line: 45, baseType: !273, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1807, file: !14, line: 52, baseType: !61, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1807, file: !14, line: 53, baseType: !61, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1807, file: !14, line: 55, baseType: !13, size: 32, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1807, file: !14, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1807, file: !14, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1807, file: !14, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1807, file: !14, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1807, file: !14, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1807, file: !14, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1807, file: !14, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1807, file: !14, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1807, file: !14, line: 78, baseType: !1823, size: 64, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !14, line: 78, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1513, file: !19, line: 406, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!42, !621, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !128, line: 293, size: 1536, elements: !1832)
!1832 = !{!1833, !1863, !1877}
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !128, line: 295, baseType: !1834, size: 512)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !128, line: 295, size: 512, elements: !1835)
!1835 = !{!1836, !1862}
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1834, file: !128, line: 296, baseType: !1837, size: 448)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !128, line: 296, size: 448, elements: !1838)
!1838 = !{!1839, !1840, !1849, !1850, !1851, !1860, !1861}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1837, file: !128, line: 298, baseType: !59, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !128, line: 299, baseType: !1841, size: 128, offset: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !128, line: 299, size: 128, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1841, file: !128, line: 300, baseType: !117, size: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !128, line: 302, baseType: !1845, size: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !128, line: 302, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1845, file: !128, line: 303, baseType: !40, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1845, file: !128, line: 305, baseType: !7, size: 32, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1837, file: !128, line: 310, baseType: !1499, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1837, file: !128, line: 311, baseType: !59, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !128, line: 312, baseType: !1852, size: 64, offset: 320)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !128, line: 312, size: 64, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1852, file: !128, line: 313, baseType: !40, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1852, file: !128, line: 314, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !128, line: 257, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 255, size: 64, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1857, file: !128, line: 256, baseType: !59, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1837, file: !128, line: 316, baseType: !69, size: 32, offset: 384)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1837, file: !128, line: 317, baseType: !69, size: 32, offset: 416)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1834, file: !128, line: 323, baseType: !1520, size: 512, align: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !128, line: 325, baseType: !1864, size: 512, offset: 512)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !128, line: 325, size: 512, elements: !1865)
!1865 = !{!1866, !1876}
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !128, line: 326, baseType: !1867, size: 320)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !128, line: 326, size: 320, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1867, file: !128, line: 327, baseType: !59, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1867, file: !128, line: 328, baseType: !59, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1867, file: !128, line: 329, baseType: !59, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1867, file: !128, line: 331, baseType: !69, size: 32, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1867, file: !128, line: 332, baseType: !69, size: 32, offset: 224)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1867, file: !128, line: 333, baseType: !69, size: 32, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1867, file: !128, line: 335, baseType: !7, size: 32, offset: 288)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1864, file: !128, line: 339, baseType: !1520, size: 512, align: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !128, line: 341, baseType: !1878, size: 512, offset: 1024)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !128, line: 341, size: 512, elements: !1879)
!1879 = !{!1880, !1889, !1895}
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1878, file: !128, line: 342, baseType: !1881, size: 384)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1878, file: !128, line: 342, size: 384, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1881, file: !128, line: 343, baseType: !59, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1881, file: !128, line: 344, baseType: !59, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1881, file: !128, line: 346, baseType: !40, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1881, file: !128, line: 347, baseType: !40, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1881, file: !128, line: 348, baseType: !40, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1881, file: !128, line: 349, baseType: !40, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1878, file: !128, line: 352, baseType: !1890, size: 256)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1878, file: !128, line: 352, size: 256, elements: !1891)
!1891 = !{!1892, !1893, !1894}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1890, file: !128, line: 353, baseType: !59, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1890, file: !128, line: 354, baseType: !59, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1890, file: !128, line: 356, baseType: !117, size: 128, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1878, file: !128, line: 359, baseType: !1520, size: 512, align: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1513, file: !19, line: 409, baseType: !1897, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!42, !1499, !1806}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1513, file: !19, line: 412, baseType: !1901, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!841, !1499, !1830}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1513, file: !19, line: 414, baseType: !1905, size: 64, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !19, line: 310, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1513, file: !19, line: 416, baseType: !1911, size: 64, offset: 320)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!42, !621, !1499, !61, !7, !1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1513, file: !19, line: 419, baseType: !1917, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!42, !621, !1499, !61, !7, !7, !1519, !40}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1513, file: !19, line: 424, baseType: !1921, size: 64, offset: 448)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1924, !1499, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !45, line: 131, baseType: !344)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1513, file: !19, line: 425, baseType: !1926, size: 64, offset: 512)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1830, !55, !55}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1513, file: !19, line: 426, baseType: !1930, size: 64, offset: 576)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!841, !1830, !269}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1513, file: !19, line: 427, baseType: !1934, size: 64, offset: 640)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1830}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1513, file: !19, line: 428, baseType: !1938, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1294, !1941, !1963}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1950, !1951, !1952, !1953}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1942, file: !19, line: 374, baseType: !621, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1942, file: !19, line: 375, baseType: !61, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1942, file: !19, line: 376, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1941, !273}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1942, file: !19, line: 377, baseType: !40, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1942, file: !19, line: 378, baseType: !42, size: 32, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1942, file: !19, line: 379, baseType: !113, size: 16, offset: 288)
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !19, line: 380, baseType: !1954, size: 64, offset: 320)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !19, line: 380, size: 64, elements: !1955)
!1955 = !{!1956, !1959}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1954, file: !19, line: 386, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !19, line: 386, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1954, file: !19, line: 395, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1294, !40}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !19, line: 69, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1513, file: !19, line: 433, baseType: !1966, size: 64, offset: 768)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!42, !1499, !1830, !1830, !246}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1513, file: !19, line: 435, baseType: !1970, size: 64, offset: 832)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!42, !1830}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1513, file: !19, line: 436, baseType: !1974, size: 64, offset: 896)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!841, !1830, !55, !55}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1513, file: !19, line: 438, baseType: !1978, size: 64, offset: 960)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1830, !1981, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1513, file: !19, line: 439, baseType: !1983, size: 64, offset: 1024)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!42, !1499, !1519}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1513, file: !19, line: 442, baseType: !1987, size: 64, offset: 1088)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!42, !1990, !621, !1992}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !19, line: 66, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1513, file: !19, line: 444, baseType: !1994, size: 64, offset: 1152)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !621}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1513, file: !19, line: 445, baseType: !1998, size: 64, offset: 1216)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!42, !1941, !1963}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1500, file: !19, line: 486, baseType: !59, size: 64, offset: 896)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1500, file: !19, line: 487, baseType: !782, size: 320, offset: 960)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1500, file: !19, line: 488, baseType: !2004, size: 32, offset: 1280)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2005, line: 8, baseType: !286)
!2005 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1500, file: !19, line: 489, baseType: !79, size: 32, offset: 1312)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1500, file: !19, line: 490, baseType: !117, size: 128, offset: 1344)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1500, file: !19, line: 491, baseType: !40, size: 64, offset: 1472)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1490, file: !1459, line: 180, baseType: !2010, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!1294, !621, !1401, !1489, !852, !61, !55}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1490, file: !1459, line: 182, baseType: !2010, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1490, file: !1459, line: 184, baseType: !2015, size: 64, offset: 448)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!42, !621, !1401, !1489, !1629}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1478, file: !1459, line: 90, baseType: !2019, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1478, file: !1459, line: 91, baseType: !2021, size: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1449, file: !1396, line: 120, baseType: !2023, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!2026, !1419}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !191, line: 39, size: 384, elements: !2029)
!2029 = !{!2030, !2031, !2035, !2039, !2047, !2051}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2028, file: !191, line: 40, baseType: !190, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2028, file: !191, line: 41, baseType: !2032, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!841}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2028, file: !191, line: 42, baseType: !2036, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!40}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2028, file: !191, line: 43, baseType: !2040, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!2043, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !191, line: 19, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2028, file: !191, line: 44, baseType: !2048, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2043}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2028, file: !191, line: 45, baseType: !1173, size: 64, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1449, file: !1396, line: 121, baseType: !2053, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!2043, !1419}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1449, file: !1396, line: 122, baseType: !2057, size: 64, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1419, !1038, !1039}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1395, file: !1396, line: 70, baseType: !2061, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2063, line: 190, size: 1152, elements: !2064)
!2063 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2064 = !{!2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2186, !2187, !2188, !2189, !2190, !2193}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2062, file: !2063, line: 191, baseType: !69, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2062, file: !2063, line: 192, baseType: !69, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2062, file: !2063, line: 202, baseType: !2061, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2062, file: !2063, line: 203, baseType: !36, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2062, file: !2063, line: 205, baseType: !336, size: 192, align: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2062, file: !2063, line: 207, baseType: !2043, size: 64, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2062, file: !2063, line: 208, baseType: !7, size: 32, offset: 448)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2062, file: !2063, line: 209, baseType: !2073, size: 256, offset: 512)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2062, file: !2063, line: 209, size: 256, elements: !2074)
!2074 = !{!2075, !2084, !2088}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2073, file: !2063, line: 210, baseType: !2076, size: 256)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2063, line: 153, size: 256, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2083}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2076, file: !2063, line: 154, baseType: !59, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2076, file: !2063, line: 156, baseType: !479, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2076, file: !2063, line: 162, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2063, line: 162, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2076, file: !2063, line: 167, baseType: !59, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2073, file: !2063, line: 211, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2063, line: 170, size: 64, elements: !2086)
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2085, file: !2063, line: 171, baseType: !2061, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2073, file: !2063, line: 212, baseType: !2089, size: 256)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2063, line: 174, size: 256, elements: !2090)
!2090 = !{!2091, !2181, !2184, !2185}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2089, file: !2063, line: 175, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2094)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2063, line: 271, size: 768, elements: !2095)
!2095 = !{!2096, !2154, !2158, !2159, !2160, !2161, !2162, !2166, !2167, !2168, !2169, !2177}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2094, file: !2063, line: 276, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!42, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2063, line: 251, size: 1216, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2101, file: !2063, line: 253, baseType: !2061, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2101, file: !2063, line: 254, baseType: !621, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2101, file: !2063, line: 255, baseType: !2106, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2108, line: 17, size: 960, elements: !2109)
!2108 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2139, !2140, !2143}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2107, file: !2108, line: 18, baseType: !852, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2107, file: !2108, line: 19, baseType: !55, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2107, file: !2108, line: 20, baseType: !55, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2107, file: !2108, line: 21, baseType: !55, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2107, file: !2108, line: 22, baseType: !55, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2107, file: !2108, line: 23, baseType: !61, size: 64, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2107, file: !2108, line: 24, baseType: !61, size: 64, offset: 384)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2107, file: !2108, line: 25, baseType: !649, size: 256, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2107, file: !2108, line: 26, baseType: !2119, size: 64, offset: 704)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2108, line: 32, size: 256, elements: !2122)
!2122 = !{!2123, !2127, !2131, !2135}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2121, file: !2108, line: 33, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!40, !2106, !60}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2121, file: !2108, line: 34, baseType: !2128, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !2106, !40}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2121, file: !2108, line: 35, baseType: !2132, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!40, !2106, !40, !60}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2121, file: !2108, line: 36, baseType: !2136, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!42, !2106, !40}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2107, file: !2108, line: 27, baseType: !42, size: 32, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2107, file: !2108, line: 28, baseType: !2141, size: 64, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2107, file: !2108, line: 29, baseType: !40, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2101, file: !2063, line: 256, baseType: !40, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2101, file: !2063, line: 259, baseType: !649, size: 256, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2101, file: !2063, line: 260, baseType: !649, size: 256, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2101, file: !2063, line: 261, baseType: !42, size: 32, offset: 768)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2101, file: !2063, line: 262, baseType: !117, size: 128, offset: 832)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2101, file: !2063, line: 263, baseType: !852, size: 64, offset: 960)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2101, file: !2063, line: 265, baseType: !55, size: 64, offset: 1024)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2101, file: !2063, line: 266, baseType: !841, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2101, file: !2063, line: 267, baseType: !841, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2101, file: !2063, line: 268, baseType: !1674, size: 64, offset: 1152)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2094, file: !2063, line: 277, baseType: !2155, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{null, !2100}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2094, file: !2063, line: 290, baseType: !2136, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2094, file: !2063, line: 292, baseType: !2124, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2094, file: !2063, line: 293, baseType: !2132, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2094, file: !2063, line: 294, baseType: !2128, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2094, file: !2063, line: 296, baseType: !2163, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!1294, !2100, !852, !55, !61}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2094, file: !2063, line: 306, baseType: !55, size: 64, offset: 448)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2094, file: !2063, line: 313, baseType: !841, size: 8, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2094, file: !2063, line: 314, baseType: !2163, size: 64, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2094, file: !2063, line: 317, baseType: !2170, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!2173, !2100, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2174, line: 59, baseType: !7)
!2174 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !19, line: 61, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2094, file: !2063, line: 320, baseType: !2178, size: 64, offset: 704)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!42, !2100, !1629}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2089, file: !2063, line: 176, baseType: !2182, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2063, line: 35, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2089, file: !2063, line: 177, baseType: !61, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2089, file: !2063, line: 178, baseType: !2061, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2062, file: !2063, line: 215, baseType: !40, size: 64, offset: 768)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2062, file: !2063, line: 221, baseType: !344, size: 64, offset: 832)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2062, file: !2063, line: 223, baseType: !46, size: 16, offset: 896)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2062, file: !2063, line: 224, baseType: !44, size: 16, offset: 912)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2062, file: !2063, line: 225, baseType: !2191, size: 64, offset: 960)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2063, line: 36, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2062, file: !2063, line: 227, baseType: !629, size: 128, align: 64, offset: 1024)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1395, file: !1396, line: 71, baseType: !2195, size: 32, offset: 448)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2196, line: 19, size: 32, elements: !2197)
!2196 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2197 = !{!2198}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2195, file: !2196, line: 20, baseType: !292, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1395, file: !1396, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1395, file: !1396, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1395, file: !1396, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1395, file: !1396, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1395, file: !1396, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1392, file: !6, line: 47, baseType: !1382, size: 64, offset: 512)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1392, file: !6, line: 48, baseType: !1401, size: 64, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1392, file: !6, line: 49, baseType: !2207, size: 64, offset: 640)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1392, file: !6, line: 50, baseType: !1012, size: 64, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1383, file: !6, line: 418, baseType: !2211, size: 64, offset: 1408)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2213)
!2213 = !{!2214, !2215, !2220, !2224, !2228, !2232}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2212, file: !6, line: 54, baseType: !1466, size: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2212, file: !6, line: 55, baseType: !2216, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!1294, !2211, !2219, !852}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2212, file: !6, line: 57, baseType: !2221, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!1294, !2211, !2219, !36, !55}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2212, file: !6, line: 59, baseType: !2225, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !1382, !36}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2212, file: !6, line: 60, baseType: !2229, size: 64, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!42, !1382}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2212, file: !6, line: 61, baseType: !2233, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !1382}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1383, file: !6, line: 419, baseType: !36, size: 64, offset: 1472)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1383, file: !6, line: 420, baseType: !36, size: 64, offset: 1536)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1383, file: !6, line: 421, baseType: !1401, size: 64, offset: 1600)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1383, file: !6, line: 424, baseType: !2240, size: 64, offset: 1664)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2242)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1383, file: !6, line: 425, baseType: !2244, size: 64, offset: 1728)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1383, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1383, file: !6, line: 435, baseType: !649, size: 256, offset: 1856)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1383, file: !6, line: 437, baseType: !2249, size: 64, offset: 2112)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2251, line: 69, size: 320, elements: !2252)
!2251 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2252 = !{!2253, !2254, !2255, !2272, !2274, !2278, !2279}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2250, file: !2251, line: 70, baseType: !36, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2250, file: !2251, line: 71, baseType: !1382, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2250, file: !2251, line: 72, baseType: !2256, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2258)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2251, line: 47, size: 256, elements: !2259)
!2259 = !{!2260, !2261, !2267, !2271}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2258, file: !2251, line: 49, baseType: !7, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2258, file: !2251, line: 51, baseType: !2262, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!42, !36, !2265}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2258, file: !2251, line: 53, baseType: !2268, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!42, !852, !2265}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2258, file: !2251, line: 55, baseType: !1173, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2250, file: !2251, line: 73, baseType: !2273, size: 16, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2250, file: !2251, line: 74, baseType: !2275, size: 8, offset: 208)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !104, line: 16, baseType: !2276)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !106, line: 20, baseType: !2277)
!2277 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2250, file: !2251, line: 75, baseType: !103, size: 8, offset: 216)
!2279 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2251, line: 76, baseType: !2280, size: 64, offset: 256)
!2280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2250, file: !2251, line: 76, size: 64, elements: !2281)
!2281 = !{!2282, !2283, !2290}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2280, file: !2251, line: 77, baseType: !40, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2280, file: !2251, line: 78, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2251, line: 86, size: 128, elements: !2287)
!2287 = !{!2288, !2289}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2286, file: !2251, line: 87, baseType: !7, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2286, file: !2251, line: 88, baseType: !852, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2280, file: !2251, line: 79, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2293)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2251, line: 92, size: 256, elements: !2294)
!2294 = !{!2295, !2296, !2297, !2299, !2300}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2293, file: !2251, line: 94, baseType: !7, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2293, file: !2251, line: 95, baseType: !7, size: 32, offset: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2293, file: !2251, line: 96, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2293, file: !2251, line: 97, baseType: !2256, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2293, file: !2251, line: 98, baseType: !40, size: 64, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1383, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1383, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1383, file: !6, line: 442, baseType: !2240, size: 64, offset: 2240)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1383, file: !6, line: 443, baseType: !2244, size: 64, offset: 2304)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1383, file: !6, line: 444, baseType: !841, size: 8, offset: 2368)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1383, file: !6, line: 451, baseType: !841, size: 8, offset: 2376)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1383, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1383, file: !6, line: 455, baseType: !2309, size: 64, offset: 2432)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2311, line: 23, size: 96, elements: !2312)
!2311 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2312 = !{!2313, !2314, !2315}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2310, file: !2311, line: 24, baseType: !42, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2310, file: !2311, line: 24, baseType: !42, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2310, file: !2311, line: 24, baseType: !42, size: 32, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1383, file: !6, line: 458, baseType: !2317, size: 64, offset: 2496)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!42}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1383, file: !6, line: 460, baseType: !2321, size: 4032, align: 512, offset: 2560)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2322, size: 4032, elements: !2338)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2323)
!2323 = !{!2324, !2325, !2326}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2322, file: !6, line: 363, baseType: !40, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2322, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2322, file: !6, line: 367, baseType: !2327, size: 448, offset: 128)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2328)
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2327, file: !6, line: 320, baseType: !1382, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2327, file: !6, line: 321, baseType: !2331, size: 384, offset: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2332, line: 40, size: 384, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2333 = !{!2334}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2331, file: !2332, line: 41, baseType: !2335, size: 384, align: 64)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 384, align: 64, elements: !2336)
!2336 = !{!2337}
!2337 = !DISubrange(count: 2)
!2338 = !{!2339}
!2339 = !DISubrange(count: 7)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1383, file: !6, line: 463, baseType: !2341, size: 192, offset: 6592)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2342, line: 8, size: 192, elements: !2343)
!2342 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2343 = !{!2344, !2345, !2347}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2341, file: !2342, line: 10, baseType: !7, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2341, file: !2342, line: 11, baseType: !2346, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2341, file: !2342, line: 12, baseType: !2348, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2350, line: 59, size: 48, elements: !2351)
!2350 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2351 = !{!2352, !2355, !2356, !2357, !2358, !2359}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2349, file: !2350, line: 60, baseType: !2353, size: 16)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !104, line: 18, baseType: !2354)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !106, line: 23, baseType: !810)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2349, file: !2350, line: 61, baseType: !2353, size: 16, offset: 16)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2349, file: !2350, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2349, file: !2350, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2349, file: !2350, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2349, file: !2350, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1383, file: !6, line: 465, baseType: !59, size: 64, offset: 6784)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1383, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1383, file: !6, line: 470, baseType: !117, size: 128, offset: 6912)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1383, file: !6, line: 471, baseType: !2364, size: 64, offset: 7040)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2366, line: 33, size: 96, elements: !2367)
!2366 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2367 = !{!2368, !2369, !2370, !2371}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2365, file: !2366, line: 37, baseType: !42, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2365, file: !2366, line: 43, baseType: !42, size: 32, offset: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2365, file: !2366, line: 45, baseType: !46, size: 16, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2365, file: !2366, line: 47, baseType: !46, size: 16, offset: 80)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1383, file: !6, line: 476, baseType: !2373, size: 64, offset: 7104)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2375)
!2375 = !{!2376, !2392, !2393, !2394}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2374, file: !6, line: 379, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2379, line: 204, baseType: !2380)
!2379 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2379, line: 197, size: 192, elements: !2381)
!2381 = !{!2382, !2384, !2385, !2386, !2388, !2390}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2380, file: !2379, line: 198, baseType: !2383, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2379, line: 21, baseType: !287)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2380, file: !2379, line: 199, baseType: !107, size: 8, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2380, file: !2379, line: 200, baseType: !107, size: 8, offset: 40)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2380, file: !2379, line: 201, baseType: !2387, size: 16, offset: 48)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2379, line: 17, baseType: !114)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2380, file: !2379, line: 202, baseType: !2389, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2379, line: 16, baseType: !345)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2380, file: !2379, line: 203, baseType: !2391, size: 64, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2379, line: 22, baseType: !345)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2374, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2374, file: !6, line: 381, baseType: !852, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2374, file: !6, line: 382, baseType: !852, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1383, file: !6, line: 477, baseType: !2374, size: 256, offset: 7168)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1383, file: !6, line: 480, baseType: !2397, size: 64, offset: 7424)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1383, file: !6, line: 483, baseType: !2400, size: 64, offset: 7488)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1383, file: !6, line: 488, baseType: !852, size: 64, offset: 7552)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1383, file: !6, line: 492, baseType: !40, size: 64, offset: 7616)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1383, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1383, file: !6, line: 495, baseType: !40, size: 64, offset: 7744)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1383, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1383, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1383, file: !6, line: 500, baseType: !2409, size: 64, offset: 7872)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2411, line: 45, baseType: !2412)
!2411 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1383, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1383, file: !6, line: 504, baseType: !2415, size: 64, offset: 8000)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2418, line: 96, size: 192, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2419 = !{!2420, !2421, !2474, !2477}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2417, file: !2418, line: 97, baseType: !7, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2417, file: !2418, line: 98, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2418, line: 24, size: 3072, elements: !2424)
!2424 = !{!2425, !2427, !2428, !2429, !2430, !2443, !2444, !2445, !2446, !2458, !2459, !2460, !2471, !2472, !2473}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2423, file: !2418, line: 26, baseType: !2426, size: 128)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 128, elements: !2336)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2423, file: !2418, line: 27, baseType: !2426, size: 128, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2423, file: !2418, line: 28, baseType: !42, size: 32, offset: 256)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2423, file: !2418, line: 31, baseType: !79, size: 32, align: 512, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2423, file: !2418, line: 32, baseType: !2431, size: 960, offset: 576)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2432, line: 206, size: 960, elements: !2433)
!2432 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2433 = !{!2434, !2435, !2438, !2440, !2441, !2442}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2431, file: !2432, line: 207, baseType: !632, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2431, file: !2432, line: 208, baseType: !2436, size: 256, offset: 64)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2437, size: 256, elements: !706)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2431, file: !2432, line: 209, baseType: !2439, size: 256, offset: 320)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !706)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2431, file: !2432, line: 213, baseType: !273, size: 64, offset: 576)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2431, file: !2432, line: 215, baseType: !1073, size: 256, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2431, file: !2432, line: 216, baseType: !103, size: 8, offset: 896)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2423, file: !2418, line: 33, baseType: !59, size: 64, offset: 1536)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2423, file: !2418, line: 34, baseType: !59, size: 64, offset: 1600)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2423, file: !2418, line: 35, baseType: !841, size: 8, offset: 1664)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2423, file: !2418, line: 36, baseType: !2447, size: 320, offset: 1728)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2448, line: 11, size: 320, elements: !2449)
!2448 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2449 = !{!2450, !2451, !2452, !2457}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2447, file: !2448, line: 16, baseType: !701, size: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2447, file: !2448, line: 17, baseType: !59, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2447, file: !2448, line: 18, baseType: !2453, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !2456}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2447, file: !2448, line: 19, baseType: !286, size: 32, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2423, file: !2418, line: 37, baseType: !974, size: 256, offset: 2048)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2423, file: !2418, line: 38, baseType: !629, size: 128, align: 64, offset: 2304)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2423, file: !2418, line: 39, baseType: !2461, size: 64, offset: 2432)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2418, line: 49, size: 768, elements: !2463)
!2463 = !{!2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2462, file: !2418, line: 50, baseType: !79, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2462, file: !2418, line: 51, baseType: !2439, size: 256, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2462, file: !2418, line: 53, baseType: !2439, size: 256, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2462, file: !2418, line: 54, baseType: !59, size: 64, offset: 576)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2462, file: !2418, line: 55, baseType: !2461, size: 64, offset: 640)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2462, file: !2418, line: 56, baseType: !42, size: 32, offset: 704)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2462, file: !2418, line: 57, baseType: !42, size: 32, offset: 736)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2423, file: !2418, line: 40, baseType: !59, size: 64, offset: 2496)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2423, file: !2418, line: 42, baseType: !42, size: 32, offset: 2560)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2423, file: !2418, line: 43, baseType: !2416, size: 64, offset: 2624)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2417, file: !2418, line: 99, baseType: !2475, offset: 128)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2476, line: 211, elements: !614)
!2476 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2417, file: !2418, line: 100, baseType: !2478, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2418, line: 63, size: 3008, elements: !2480)
!2480 = !{!2481, !2482, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2512}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2479, file: !2418, line: 64, baseType: !2461, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2479, file: !2418, line: 65, baseType: !2483, size: 192, offset: 64)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2461, size: 192, elements: !685)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2479, file: !2418, line: 67, baseType: !42, size: 32, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2479, file: !2418, line: 68, baseType: !649, size: 256, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2479, file: !2418, line: 69, baseType: !79, size: 32, offset: 576)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2479, file: !2418, line: 70, baseType: !649, size: 256, offset: 640)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2479, file: !2418, line: 71, baseType: !59, size: 64, offset: 896)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2479, file: !2418, line: 72, baseType: !59, size: 64, offset: 960)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2479, file: !2418, line: 73, baseType: !59, size: 64, offset: 1024)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2479, file: !2418, line: 74, baseType: !59, size: 64, offset: 1088)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2479, file: !2418, line: 75, baseType: !59, size: 64, offset: 1152)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2479, file: !2418, line: 76, baseType: !59, size: 64, offset: 1216)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2479, file: !2418, line: 77, baseType: !59, size: 64, offset: 1280)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2479, file: !2418, line: 78, baseType: !59, size: 64, offset: 1344)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2479, file: !2418, line: 79, baseType: !841, size: 8, offset: 1408)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2479, file: !2418, line: 80, baseType: !59, size: 64, offset: 1472)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2479, file: !2418, line: 81, baseType: !649, size: 256, offset: 1536)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2479, file: !2418, line: 82, baseType: !1013, size: 256, offset: 1792)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2479, file: !2418, line: 84, baseType: !69, size: 32, offset: 2048)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2479, file: !2418, line: 87, baseType: !59, size: 64, offset: 2112)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2479, file: !2418, line: 88, baseType: !59, size: 64, offset: 2176)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2479, file: !2418, line: 89, baseType: !2504, size: 704, offset: 2240)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !975, line: 111, size: 704, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2511}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2504, file: !975, line: 112, baseType: !974, size: 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2504, file: !975, line: 113, baseType: !2447, size: 320, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2504, file: !975, line: 116, baseType: !2509, size: 64, offset: 576)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !975, line: 18, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2504, file: !975, line: 117, baseType: !42, size: 32, offset: 640)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2479, file: !2418, line: 90, baseType: !2416, size: 64, offset: 2944)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1383, file: !6, line: 515, baseType: !2514, size: 64, offset: 8064)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2516, line: 117, size: 128, elements: !2517)
!2516 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2517 = !{!2518, !2519, !2520}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2515, file: !2516, line: 118, baseType: !774, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2515, file: !2516, line: 119, baseType: !774, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2515, file: !2516, line: 120, baseType: !273, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1383, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1383, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1383, file: !6, line: 520, baseType: !2524, size: 64, offset: 8192)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1383, file: !6, line: 523, baseType: !2526, size: 64, offset: 8256)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1383, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1383, file: !6, line: 525, baseType: !2531, size: 64, offset: 8384)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1383, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1383, file: !6, line: 533, baseType: !40, size: 64, offset: 8512)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1383, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1383, file: !6, line: 535, baseType: !2538, size: 64, offset: 8640)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1383, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1383, file: !6, line: 539, baseType: !42, size: 32, offset: 8736)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1383, file: !6, line: 540, baseType: !2542, size: 64, offset: 8768)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2544, line: 32, size: 64, elements: !2545)
!2544 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2543, file: !2544, line: 33, baseType: !774, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2543, file: !2544, line: 34, baseType: !774, size: 32, offset: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1383, file: !6, line: 563, baseType: !117, size: 128, offset: 8832)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1383, file: !6, line: 565, baseType: !117, size: 128, offset: 8960)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1383, file: !6, line: 568, baseType: !2551, size: 64, offset: 9088)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1383, file: !6, line: 570, baseType: !69, size: 32, offset: 9152)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1359, file: !19, line: 2382, baseType: !1358, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1359, file: !19, line: 2383, baseType: !697, size: 64, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1359, file: !19, line: 2385, baseType: !2558, offset: 576)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2476, line: 206, elements: !614)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1359, file: !19, line: 2386, baseType: !2558, offset: 576)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1359, file: !19, line: 2387, baseType: !2558, offset: 576)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1359, file: !19, line: 2388, baseType: !2562, offset: 576)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2558, elements: !685)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1359, file: !19, line: 2390, baseType: !2558, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1359, file: !19, line: 2391, baseType: !2558, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1359, file: !19, line: 2392, baseType: !2558, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1359, file: !19, line: 2393, baseType: !2558, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1350, file: !19, line: 1197, baseType: !2568, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2570)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !2571)
!2571 = !{!2572, !2576, !2580, !2581, !2585, !2589, !2593, !2594, !2595, !2599, !2603, !2607, !2608, !2609, !2615, !2619, !2620, !2624, !2625, !2626, !2627, !2631, !2635, !2682, !2697, !2698}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2570, file: !19, line: 2058, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!1142, !1349}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2570, file: !19, line: 2059, baseType: !2577, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !1142}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2570, file: !19, line: 2060, baseType: !2577, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2570, file: !19, line: 2062, baseType: !2582, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !1142, !42}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2570, file: !19, line: 2063, baseType: !2586, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!42, !1142, !1806}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2570, file: !19, line: 2064, baseType: !2590, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!42, !1142}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2570, file: !19, line: 2065, baseType: !2577, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2570, file: !19, line: 2066, baseType: !1378, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2570, file: !19, line: 2067, baseType: !2596, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!42, !1349, !42}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2570, file: !19, line: 2068, baseType: !2600, size: 64, offset: 576)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!42, !1349, !18}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2570, file: !19, line: 2069, baseType: !2604, size: 64, offset: 640)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!42, !1349}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2570, file: !19, line: 2070, baseType: !2600, size: 64, offset: 704)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2570, file: !19, line: 2071, baseType: !2604, size: 64, offset: 768)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2570, file: !19, line: 2072, baseType: !2610, size: 64, offset: 832)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!42, !1107, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2570, file: !19, line: 2073, baseType: !2616, size: 64, offset: 896)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!42, !1349, !2346, !852}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2570, file: !19, line: 2074, baseType: !1378, size: 64, offset: 960)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2570, file: !19, line: 2076, baseType: !2621, size: 64, offset: 1024)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!42, !2106, !1107}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2570, file: !19, line: 2077, baseType: !2621, size: 64, offset: 1088)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2570, file: !19, line: 2078, baseType: !2621, size: 64, offset: 1152)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2570, file: !19, line: 2079, baseType: !2621, size: 64, offset: 1216)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2570, file: !19, line: 2081, baseType: !2628, size: 64, offset: 1280)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!1294, !1349, !42, !852, !55, !61}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2570, file: !19, line: 2082, baseType: !2632, size: 64, offset: 1344)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!1294, !1349, !42, !36, !55, !61}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2570, file: !19, line: 2083, baseType: !2636, size: 64, offset: 1408)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!2639, !1142}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !152, line: 296, size: 1664, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2667, !2668, !2669}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2641, file: !152, line: 297, baseType: !701, size: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2641, file: !152, line: 298, baseType: !117, size: 128, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2641, file: !152, line: 299, baseType: !117, size: 128, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2641, file: !152, line: 300, baseType: !117, size: 128, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2641, file: !152, line: 301, baseType: !649, size: 256, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2641, file: !152, line: 302, baseType: !79, size: 32, offset: 768)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2641, file: !152, line: 303, baseType: !69, size: 32, offset: 800)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2641, file: !152, line: 304, baseType: !1349, size: 64, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2641, file: !152, line: 305, baseType: !2652, size: 64, offset: 896)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !152, line: 68, size: 64, elements: !2653)
!2653 = !{!2654, !2666}
!2654 = !DIDerivedType(tag: DW_TAG_member, scope: !2652, file: !152, line: 69, baseType: !2655, size: 32)
!2655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2652, file: !152, line: 69, size: 32, elements: !2656)
!2656 = !{!2657, !2658, !2659}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2655, file: !152, line: 70, baseType: !723, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2655, file: !152, line: 71, baseType: !741, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2655, file: !152, line: 72, baseType: !2660, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2661, line: 24, baseType: !2662)
!2661 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2661, line: 22, size: 32, elements: !2663)
!2663 = !{!2664}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2662, file: !2661, line: 23, baseType: !2665, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2661, line: 20, baseType: !729)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2652, file: !152, line: 74, baseType: !151, size: 32, offset: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2641, file: !152, line: 306, baseType: !61, size: 64, offset: 960)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2641, file: !152, line: 307, baseType: !59, size: 64, offset: 1024)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2641, file: !152, line: 308, baseType: !2670, size: 576, offset: 1088)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !152, line: 205, size: 576, elements: !2671)
!2671 = !{!2672, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2670, file: !152, line: 206, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !152, line: 66, baseType: !63)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2670, file: !152, line: 207, baseType: !2673, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2670, file: !152, line: 208, baseType: !2673, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2670, file: !152, line: 209, baseType: !2673, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2670, file: !152, line: 210, baseType: !2673, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2670, file: !152, line: 211, baseType: !2673, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2670, file: !152, line: 212, baseType: !2673, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2670, file: !152, line: 213, baseType: !798, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2670, file: !152, line: 214, baseType: !798, size: 64, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2570, file: !19, line: 2085, baseType: !2683, size: 64, offset: 1472)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!273, !1349, !2686}
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2688, line: 15, size: 256, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2689 = !{!2690, !2691, !2692, !2693, !2694}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2687, file: !2688, line: 16, baseType: !269, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2687, file: !2688, line: 19, baseType: !42, size: 32, offset: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2687, file: !2688, line: 26, baseType: !59, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2687, file: !2688, line: 33, baseType: !59, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2687, file: !2688, line: 36, baseType: !2695, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !128, line: 33, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2570, file: !19, line: 2087, baseType: !2683, size: 64, offset: 1536)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2570, file: !19, line: 2089, baseType: !1378, size: 64, offset: 1600)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1350, file: !19, line: 1198, baseType: !2700, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2702)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !152, line: 324, size: 704, elements: !2703)
!2703 = !{!2704, !2708, !2712, !2716, !2717, !2718, !2719, !2720, !2725, !2730, !2734}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2702, file: !152, line: 325, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!42, !2640}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2702, file: !152, line: 326, baseType: !2709, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!2640, !1349, !42}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2702, file: !152, line: 327, baseType: !2713, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !2640}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2702, file: !152, line: 328, baseType: !2705, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2702, file: !152, line: 329, baseType: !2705, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2702, file: !152, line: 330, baseType: !2705, size: 64, offset: 320)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2702, file: !152, line: 331, baseType: !2596, size: 64, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2702, file: !152, line: 334, baseType: !2721, size: 64, offset: 448)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!2724, !1142}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2702, file: !152, line: 335, baseType: !2726, size: 64, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!42, !1142, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2702, file: !152, line: 337, baseType: !2731, size: 64, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!42, !1142, !2724}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2702, file: !152, line: 339, baseType: !2735, size: 64, offset: 640)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!42, !1349, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1350, file: !19, line: 1199, baseType: !2740, size: 64, offset: 512)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2742)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !152, line: 430, size: 704, elements: !2743)
!2743 = !{!2744, !2748, !2749, !2753, !2754, !2755, !2770, !2793, !2797, !2798, !2821}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2742, file: !152, line: 431, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!42, !1349, !42, !42, !1263}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2742, file: !152, line: 432, baseType: !2596, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2742, file: !152, line: 433, baseType: !2750, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!42, !1349, !7}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2742, file: !152, line: 434, baseType: !2750, size: 64, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2742, file: !152, line: 435, baseType: !2596, size: 64, offset: 256)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2742, file: !152, line: 436, baseType: !2756, size: 64, offset: 320)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!42, !1349, !42, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !152, line: 417, size: 256, elements: !2761)
!2761 = !{!2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2760, file: !152, line: 418, baseType: !42, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2760, file: !152, line: 419, baseType: !7, size: 32, offset: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2760, file: !152, line: 420, baseType: !7, size: 32, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2760, file: !152, line: 422, baseType: !7, size: 32, offset: 96)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2760, file: !152, line: 423, baseType: !7, size: 32, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2760, file: !152, line: 424, baseType: !7, size: 32, offset: 160)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2760, file: !152, line: 425, baseType: !7, size: 32, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2760, file: !152, line: 426, baseType: !7, size: 32, offset: 224)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2742, file: !152, line: 437, baseType: !2771, size: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!42, !1349, !2652, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !152, line: 345, size: 960, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2775, file: !152, line: 346, baseType: !42, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2775, file: !152, line: 347, baseType: !344, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2775, file: !152, line: 348, baseType: !344, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2775, file: !152, line: 349, baseType: !344, size: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2775, file: !152, line: 350, baseType: !344, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2775, file: !152, line: 351, baseType: !344, size: 64, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2775, file: !152, line: 352, baseType: !344, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2775, file: !152, line: 353, baseType: !355, size: 64, offset: 448)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2775, file: !152, line: 355, baseType: !355, size: 64, offset: 512)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2775, file: !152, line: 356, baseType: !42, size: 32, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2775, file: !152, line: 357, baseType: !42, size: 32, offset: 608)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2775, file: !152, line: 358, baseType: !344, size: 64, offset: 640)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2775, file: !152, line: 359, baseType: !344, size: 64, offset: 704)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2775, file: !152, line: 360, baseType: !344, size: 64, offset: 768)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2775, file: !152, line: 361, baseType: !355, size: 64, offset: 832)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2775, file: !152, line: 362, baseType: !42, size: 32, offset: 896)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2742, file: !152, line: 438, baseType: !2794, size: 64, offset: 448)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!42, !1349, !2738, !2774}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2742, file: !152, line: 440, baseType: !2771, size: 64, offset: 512)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2742, file: !152, line: 441, baseType: !2799, size: 64, offset: 576)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!42, !1349, !2802}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !152, line: 411, size: 1408, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2803, file: !152, line: 412, baseType: !7, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2803, file: !152, line: 413, baseType: !2807, size: 1344, offset: 64)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2808, size: 1344, elements: !685)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !152, line: 397, size: 448, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2820}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2808, file: !152, line: 398, baseType: !7, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2808, file: !152, line: 399, baseType: !7, size: 32, offset: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2808, file: !152, line: 401, baseType: !7, size: 32, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2808, file: !152, line: 402, baseType: !7, size: 32, offset: 96)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2808, file: !152, line: 403, baseType: !7, size: 32, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2808, file: !152, line: 404, baseType: !7, size: 32, offset: 160)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2808, file: !152, line: 405, baseType: !7, size: 32, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2808, file: !152, line: 406, baseType: !346, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2808, file: !152, line: 407, baseType: !2819, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !45, line: 132, baseType: !344)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2808, file: !152, line: 408, baseType: !2819, size: 64, offset: 384)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2742, file: !152, line: 442, baseType: !2750, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1350, file: !19, line: 1200, baseType: !2823, size: 64, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2825)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1350, file: !19, line: 1201, baseType: !59, size: 64, offset: 640)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1350, file: !19, line: 1202, baseType: !59, size: 64, offset: 704)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1350, file: !19, line: 1203, baseType: !59, size: 64, offset: 768)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1350, file: !19, line: 1204, baseType: !1107, size: 64, offset: 832)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1350, file: !19, line: 1205, baseType: !782, size: 320, offset: 896)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1350, file: !19, line: 1206, baseType: !42, size: 32, offset: 1216)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1350, file: !19, line: 1207, baseType: !69, size: 32, offset: 1248)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1350, file: !19, line: 1209, baseType: !40, size: 64, offset: 1280)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1350, file: !19, line: 1211, baseType: !2835, size: 64, offset: 1344)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2838)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1350, file: !19, line: 1223, baseType: !2840, size: 64, offset: 1408)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1119, line: 34, size: 64, elements: !2841)
!2841 = !{!2842}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2840, file: !1119, line: 35, baseType: !1122, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1350, file: !19, line: 1224, baseType: !117, size: 128, offset: 1472)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1350, file: !19, line: 1225, baseType: !2845, size: 64, offset: 1600)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2847, line: 40, size: 7424, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2848 = !{!2849, !2850, !2851, !2854, !2858, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2885, !2886}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2846, file: !2847, line: 41, baseType: !1924, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2846, file: !2847, line: 42, baseType: !1924, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2846, file: !2847, line: 43, baseType: !2852, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !277, line: 1453, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2846, file: !2847, line: 44, baseType: !2855, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2857, line: 74, flags: DIFlagFwdDecl)
!2857 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2846, file: !2847, line: 45, baseType: !2859, size: 64, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2847, line: 45, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2846, file: !2847, line: 46, baseType: !59, size: 64, offset: 320)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2846, file: !2847, line: 47, baseType: !841, size: 8, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2846, file: !2847, line: 48, baseType: !103, size: 8, offset: 392)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2846, file: !2847, line: 49, baseType: !841, size: 8, offset: 400)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2846, file: !2847, line: 50, baseType: !841, size: 8, offset: 408)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2846, file: !2847, line: 51, baseType: !1216, size: 32, offset: 416)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2846, file: !2847, line: 52, baseType: !69, size: 32, offset: 448)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2846, file: !2847, line: 53, baseType: !79, size: 32, offset: 480)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2846, file: !2847, line: 54, baseType: !1142, size: 64, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2846, file: !2847, line: 55, baseType: !40, size: 64, offset: 576)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2846, file: !2847, line: 56, baseType: !40, size: 64, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2846, file: !2847, line: 57, baseType: !2873, size: 64, offset: 704)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2875)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2847, line: 57, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2846, file: !2847, line: 58, baseType: !649, size: 256, offset: 768)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2846, file: !2847, line: 60, baseType: !42, size: 32, offset: 1024)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2846, file: !2847, line: 61, baseType: !42, size: 32, offset: 1056)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2846, file: !2847, line: 62, baseType: !1401, size: 64, offset: 1088)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2846, file: !2847, line: 65, baseType: !649, size: 256, offset: 1152)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2846, file: !2847, line: 66, baseType: !1349, size: 64, offset: 1408)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2846, file: !2847, line: 68, baseType: !2883, size: 64, offset: 1472)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2847, line: 68, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2846, file: !2847, line: 72, baseType: !841, size: 8, offset: 1536)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2846, file: !2847, line: 77, baseType: !2887, size: 5824, offset: 1600)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !164, line: 705, size: 5824, elements: !2888)
!2888 = !{!2889, !2890, !2892, !2895, !2896, !2949, !3019, !3020, !3021, !3022, !3023, !3030, !3122, !3135, !3145, !3149, !3151, !3152, !3153, !3157, !3164, !3165, !3168, !3171, !3175, !3178, !3179, !3180, !3181, !3182, !3183, !3213, !3214, !3215, !3218, !3221, !3230, !3231, !3232, !3233, !3234, !3235}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2887, file: !164, line: 706, baseType: !1395, size: 512)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2887, file: !164, line: 707, baseType: !2891, size: 64, offset: 512)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2887, file: !164, line: 709, baseType: !2893, size: 64, offset: 576)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !164, line: 37, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2887, file: !164, line: 711, baseType: !36, size: 64, offset: 640)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2887, file: !164, line: 712, baseType: !2897, size: 64, offset: 704)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2899)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !164, line: 89, size: 384, elements: !2900)
!2900 = !{!2901, !2902, !2903, !2909, !2914, !2918}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2899, file: !164, line: 90, baseType: !36, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2899, file: !164, line: 91, baseType: !1475, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2899, file: !164, line: 92, baseType: !2904, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!42, !2907, !1431}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2887)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2899, file: !164, line: 93, baseType: !2910, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!852, !2907, !2913, !1038, !1039}
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2899, file: !164, line: 95, baseType: !2915, size: 64, offset: 256)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{null, !2891}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2899, file: !164, line: 97, baseType: !2919, size: 64, offset: 320)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2921)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !176, line: 286, size: 1472, elements: !2922)
!2922 = !{!2923, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2921, file: !176, line: 287, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!42, !2891}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2921, file: !176, line: 288, baseType: !2915, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2921, file: !176, line: 289, baseType: !2924, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2921, file: !176, line: 290, baseType: !2924, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2921, file: !176, line: 291, baseType: !2924, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2921, file: !176, line: 292, baseType: !2924, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2921, file: !176, line: 293, baseType: !2924, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2921, file: !176, line: 294, baseType: !2924, size: 64, offset: 448)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2921, file: !176, line: 295, baseType: !2924, size: 64, offset: 512)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2921, file: !176, line: 296, baseType: !2924, size: 64, offset: 576)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2921, file: !176, line: 297, baseType: !2924, size: 64, offset: 640)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2921, file: !176, line: 298, baseType: !2924, size: 64, offset: 704)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2921, file: !176, line: 299, baseType: !2924, size: 64, offset: 768)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2921, file: !176, line: 300, baseType: !2924, size: 64, offset: 832)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2921, file: !176, line: 301, baseType: !2924, size: 64, offset: 896)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2921, file: !176, line: 302, baseType: !2924, size: 64, offset: 960)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2921, file: !176, line: 303, baseType: !2924, size: 64, offset: 1024)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2921, file: !176, line: 304, baseType: !2924, size: 64, offset: 1088)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2921, file: !176, line: 305, baseType: !2924, size: 64, offset: 1152)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2921, file: !176, line: 306, baseType: !2924, size: 64, offset: 1216)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2921, file: !176, line: 307, baseType: !2924, size: 64, offset: 1280)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2921, file: !176, line: 308, baseType: !2924, size: 64, offset: 1344)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2921, file: !176, line: 309, baseType: !2924, size: 64, offset: 1408)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2887, file: !164, line: 714, baseType: !2950, size: 64, offset: 768)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2953, line: 80, size: 1344, elements: !2954)
!2953 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3018}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2952, file: !2953, line: 81, baseType: !36, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2952, file: !2953, line: 82, baseType: !36, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2952, file: !2953, line: 83, baseType: !1475, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2952, file: !2953, line: 84, baseType: !1475, size: 64, offset: 192)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2952, file: !2953, line: 85, baseType: !1475, size: 64, offset: 256)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2952, file: !2953, line: 87, baseType: !2961, size: 64, offset: 320)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!42, !2891, !2964}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !158, line: 96, size: 1152, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2977, !2981, !2982, !2983, !2984, !2985, !2993, !2994, !2995, !2996, !2997, !2998}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2965, file: !158, line: 97, baseType: !36, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2965, file: !158, line: 98, baseType: !2950, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2965, file: !158, line: 100, baseType: !1382, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2965, file: !158, line: 101, baseType: !36, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2965, file: !158, line: 103, baseType: !841, size: 8, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2965, file: !158, line: 104, baseType: !157, size: 32, offset: 288)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2965, file: !158, line: 106, baseType: !2974, size: 64, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2976)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !158, line: 106, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2965, file: !158, line: 107, baseType: !2978, size: 64, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2980)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !158, line: 107, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2965, file: !158, line: 109, baseType: !2924, size: 64, offset: 448)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2965, file: !158, line: 110, baseType: !2915, size: 64, offset: 512)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2965, file: !158, line: 111, baseType: !2924, size: 64, offset: 576)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2965, file: !158, line: 112, baseType: !2915, size: 64, offset: 640)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2965, file: !158, line: 113, baseType: !2986, size: 64, offset: 704)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!42, !2891, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !176, line: 60, baseType: !2990)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !176, line: 58, size: 32, elements: !2991)
!2991 = !{!2992}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2990, file: !176, line: 59, baseType: !42, size: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2965, file: !158, line: 114, baseType: !2924, size: 64, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2965, file: !158, line: 115, baseType: !1475, size: 64, offset: 832)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2965, file: !158, line: 116, baseType: !1475, size: 64, offset: 896)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2965, file: !158, line: 118, baseType: !2919, size: 64, offset: 960)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2965, file: !158, line: 119, baseType: !2915, size: 64, offset: 1024)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2965, file: !158, line: 121, baseType: !2999, size: 64, offset: 1088)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !158, line: 121, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2952, file: !2953, line: 88, baseType: !2904, size: 64, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2952, file: !2953, line: 89, baseType: !2924, size: 64, offset: 448)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2952, file: !2953, line: 90, baseType: !2915, size: 64, offset: 512)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2952, file: !2953, line: 91, baseType: !2915, size: 64, offset: 576)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2952, file: !2953, line: 92, baseType: !2915, size: 64, offset: 640)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2952, file: !2953, line: 94, baseType: !2924, size: 64, offset: 704)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2952, file: !2953, line: 95, baseType: !2924, size: 64, offset: 768)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2952, file: !2953, line: 97, baseType: !2986, size: 64, offset: 832)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2952, file: !2953, line: 98, baseType: !2924, size: 64, offset: 896)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2952, file: !2953, line: 100, baseType: !2924, size: 64, offset: 960)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2952, file: !2953, line: 102, baseType: !2924, size: 64, offset: 1024)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2952, file: !2953, line: 103, baseType: !2915, size: 64, offset: 1088)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2952, file: !2953, line: 105, baseType: !2919, size: 64, offset: 1152)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2952, file: !2953, line: 107, baseType: !3015, size: 64, offset: 1216)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3017)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2953, line: 107, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2952, file: !2953, line: 109, baseType: !841, size: 8, offset: 1280)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2887, file: !164, line: 715, baseType: !2964, size: 64, offset: 832)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2887, file: !164, line: 717, baseType: !40, size: 64, offset: 896)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2887, file: !164, line: 719, baseType: !40, size: 64, offset: 960)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2887, file: !164, line: 721, baseType: !649, size: 256, offset: 1024)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2887, file: !164, line: 725, baseType: !3024, size: 448, offset: 1280)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !164, line: 517, size: 448, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3029}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3024, file: !164, line: 518, baseType: !117, size: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3024, file: !164, line: 519, baseType: !117, size: 128, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3024, file: !164, line: 520, baseType: !117, size: 128, offset: 256)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3024, file: !164, line: 521, baseType: !163, size: 32, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2887, file: !164, line: 726, baseType: !3031, size: 2496, offset: 1728)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !176, line: 663, size: 2496, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3115, !3119}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3031, file: !176, line: 664, baseType: !2989, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3031, file: !176, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3031, file: !176, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3031, file: !176, line: 667, baseType: !841, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3031, file: !176, line: 668, baseType: !841, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3031, file: !176, line: 669, baseType: !841, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3031, file: !176, line: 670, baseType: !841, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3031, file: !176, line: 671, baseType: !841, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3031, file: !176, line: 672, baseType: !841, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3031, file: !176, line: 673, baseType: !841, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3031, file: !176, line: 674, baseType: !841, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3031, file: !176, line: 675, baseType: !286, size: 32, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3031, file: !176, line: 676, baseType: !79, size: 32, offset: 96)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3031, file: !176, line: 678, baseType: !117, size: 128, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3031, file: !176, line: 679, baseType: !1013, size: 256, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3031, file: !176, line: 680, baseType: !3049, size: 64, offset: 512)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3051, line: 43, size: 1536, elements: !3052)
!3051 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3052 = !{!3053, !3054, !3055, !3056, !3057, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3050, file: !3051, line: 44, baseType: !36, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3050, file: !3051, line: 45, baseType: !42, size: 32, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3050, file: !3051, line: 46, baseType: !117, size: 128, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3050, file: !3051, line: 47, baseType: !79, size: 32, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3050, file: !3051, line: 48, baseType: !3058, size: 64, offset: 320)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !176, line: 629, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3050, file: !3051, line: 49, baseType: !2447, size: 320, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3050, file: !3051, line: 50, baseType: !59, size: 64, offset: 704)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3050, file: !3051, line: 51, baseType: !419, size: 64, offset: 768)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3050, file: !3051, line: 52, baseType: !419, size: 64, offset: 832)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3050, file: !3051, line: 53, baseType: !419, size: 64, offset: 896)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3050, file: !3051, line: 54, baseType: !419, size: 64, offset: 960)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3050, file: !3051, line: 55, baseType: !419, size: 64, offset: 1024)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3050, file: !3051, line: 56, baseType: !59, size: 64, offset: 1088)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3050, file: !3051, line: 57, baseType: !59, size: 64, offset: 1152)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3050, file: !3051, line: 58, baseType: !59, size: 64, offset: 1216)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3050, file: !3051, line: 59, baseType: !59, size: 64, offset: 1280)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3050, file: !3051, line: 60, baseType: !59, size: 64, offset: 1344)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3050, file: !3051, line: 61, baseType: !2891, size: 64, offset: 1408)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3050, file: !3051, line: 62, baseType: !841, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3050, file: !3051, line: 63, baseType: !841, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3031, file: !176, line: 681, baseType: !841, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3031, file: !176, line: 682, baseType: !841, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3031, file: !176, line: 683, baseType: !841, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3031, file: !176, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3031, file: !176, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3031, file: !176, line: 690, baseType: !411, size: 512, offset: 640)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3031, file: !176, line: 691, baseType: !344, size: 64, offset: 1152)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3031, file: !176, line: 692, baseType: !974, size: 256, offset: 1216)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3031, file: !176, line: 693, baseType: !74, size: 192, offset: 1472)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3031, file: !176, line: 694, baseType: !3058, size: 64, offset: 1664)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3031, file: !176, line: 695, baseType: !69, size: 32, offset: 1728)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3031, file: !176, line: 696, baseType: !69, size: 32, offset: 1760)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3031, file: !176, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3031, file: !176, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3031, file: !176, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3031, file: !176, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3031, file: !176, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3031, file: !176, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3031, file: !176, line: 703, baseType: !841, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3031, file: !176, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3031, file: !176, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3031, file: !176, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3031, file: !176, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3031, file: !176, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3031, file: !176, line: 709, baseType: !7, size: 32, offset: 1824)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3031, file: !176, line: 710, baseType: !175, size: 32, offset: 1856)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3031, file: !176, line: 711, baseType: !183, size: 32, offset: 1888)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3031, file: !176, line: 712, baseType: !183, size: 32, offset: 1920)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3031, file: !176, line: 713, baseType: !42, size: 32, offset: 1952)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3031, file: !176, line: 714, baseType: !42, size: 32, offset: 1984)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3031, file: !176, line: 715, baseType: !344, size: 64, offset: 2048)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3031, file: !176, line: 716, baseType: !344, size: 64, offset: 2112)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3031, file: !176, line: 717, baseType: !344, size: 64, offset: 2176)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3031, file: !176, line: 718, baseType: !344, size: 64, offset: 2240)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3031, file: !176, line: 720, baseType: !3110, size: 64, offset: 2304)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !176, line: 632, size: 64, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3111, file: !176, line: 633, baseType: !79, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3111, file: !176, line: 634, baseType: !7, size: 32, offset: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3031, file: !176, line: 721, baseType: !3116, size: 64, offset: 2368)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{null, !2891, !774}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3031, file: !176, line: 722, baseType: !3120, size: 64, offset: 2432)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !176, line: 722, flags: DIFlagFwdDecl)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2887, file: !164, line: 727, baseType: !3123, size: 64, offset: 4224)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !176, line: 742, size: 1792, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3132, !3133, !3134}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3124, file: !176, line: 743, baseType: !2921, size: 1472)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3124, file: !176, line: 744, baseType: !2924, size: 64, offset: 1472)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3124, file: !176, line: 745, baseType: !3129, size: 64, offset: 1536)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !2891, !841}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3124, file: !176, line: 746, baseType: !2924, size: 64, offset: 1600)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3124, file: !176, line: 747, baseType: !2915, size: 64, offset: 1664)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3124, file: !176, line: 748, baseType: !2915, size: 64, offset: 1728)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2887, file: !164, line: 736, baseType: !3136, size: 128, offset: 4288)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !164, line: 529, size: 128, elements: !3137)
!3137 = !{!3138, !3142}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3136, file: !164, line: 531, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3141, line: 13, flags: DIFlagFwdDecl)
!3141 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3136, file: !164, line: 532, baseType: !3143, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !164, line: 49, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2887, file: !164, line: 738, baseType: !3146, size: 64, offset: 4416)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3148)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !164, line: 738, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2887, file: !164, line: 740, baseType: !3150, size: 64, offset: 4480)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2887, file: !164, line: 741, baseType: !344, size: 64, offset: 4544)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2887, file: !164, line: 746, baseType: !344, size: 64, offset: 4608)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2887, file: !164, line: 747, baseType: !3154, size: 64, offset: 4672)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3156)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !164, line: 747, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2887, file: !164, line: 749, baseType: !3158, size: 64, offset: 4736)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !164, line: 428, size: 128, elements: !3160)
!3160 = !{!3161, !3162, !3163}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3159, file: !164, line: 433, baseType: !7, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3159, file: !164, line: 434, baseType: !7, size: 32, offset: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3159, file: !164, line: 435, baseType: !59, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2887, file: !164, line: 751, baseType: !117, size: 128, offset: 4800)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2887, file: !164, line: 762, baseType: !3166, size: 64, offset: 4928)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !164, line: 762, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2887, file: !164, line: 770, baseType: !3169, offset: 4992)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3170, line: 5, elements: !614)
!3170 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2887, file: !164, line: 772, baseType: !3172, size: 64, offset: 4992)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3174, line: 18, flags: DIFlagFwdDecl)
!3174 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2887, file: !164, line: 773, baseType: !3176, size: 64, offset: 5056)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2953, line: 22, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2887, file: !164, line: 776, baseType: !42, size: 32, offset: 5120)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2887, file: !164, line: 778, baseType: !1216, size: 32, offset: 5152)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2887, file: !164, line: 779, baseType: !286, size: 32, offset: 5184)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2887, file: !164, line: 781, baseType: !79, size: 32, offset: 5216)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2887, file: !164, line: 782, baseType: !117, size: 128, offset: 5248)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2887, file: !164, line: 784, baseType: !3184, size: 64, offset: 5376)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3187, line: 52, size: 768, elements: !3188)
!3187 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3197, !3201, !3202, !3203, !3204, !3208, !3212}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3186, file: !3187, line: 53, baseType: !36, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3186, file: !3187, line: 55, baseType: !1475, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3186, file: !3187, line: 56, baseType: !1475, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3186, file: !3187, line: 58, baseType: !2904, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3186, file: !3187, line: 59, baseType: !3194, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!852, !2907, !2913}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3186, file: !3187, line: 61, baseType: !3198, size: 64, offset: 320)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !3184}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3186, file: !3187, line: 62, baseType: !2915, size: 64, offset: 384)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3186, file: !3187, line: 64, baseType: !2924, size: 64, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3186, file: !3187, line: 66, baseType: !2026, size: 64, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3186, file: !3187, line: 67, baseType: !3205, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!2043, !2907}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3186, file: !3187, line: 69, baseType: !3209, size: 64, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !2907, !1038, !1039}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3186, file: !3187, line: 71, baseType: !2919, size: 64, offset: 704)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2887, file: !164, line: 785, baseType: !1475, size: 64, offset: 5440)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2887, file: !164, line: 787, baseType: !2915, size: 64, offset: 5504)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2887, file: !164, line: 788, baseType: !3216, size: 64, offset: 5568)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !164, line: 46, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2887, file: !164, line: 789, baseType: !3219, size: 64, offset: 5632)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !164, line: 48, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2887, file: !164, line: 791, baseType: !3222, size: 64, offset: 5696)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !164, line: 597, size: 128, elements: !3224)
!3224 = !{!3225, !3226, !3227, !3228, !3229}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3223, file: !164, line: 598, baseType: !196, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3223, file: !164, line: 599, baseType: !205, size: 32, offset: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3223, file: !164, line: 600, baseType: !210, size: 32, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3223, file: !164, line: 601, baseType: !841, size: 8, offset: 96)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3223, file: !164, line: 602, baseType: !841, size: 8, offset: 104)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2887, file: !164, line: 793, baseType: !215, size: 32, offset: 5760)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2887, file: !164, line: 795, baseType: !841, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2887, file: !164, line: 796, baseType: !841, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2887, file: !164, line: 797, baseType: !841, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2887, file: !164, line: 798, baseType: !841, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2887, file: !164, line: 799, baseType: !841, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1350, file: !19, line: 1226, baseType: !3237, size: 64, offset: 1664)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1350, file: !19, line: 1227, baseType: !3240, size: 64, offset: 1728)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !222, line: 163, size: 6848, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3290, !3291, !3292, !3293, !3295, !3296, !3297}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3241, file: !222, line: 164, baseType: !344, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3241, file: !222, line: 165, baseType: !336, size: 192, align: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3241, file: !222, line: 166, baseType: !117, size: 128, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3241, file: !222, line: 167, baseType: !59, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3241, file: !222, line: 168, baseType: !59, size: 64, offset: 448)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3241, file: !222, line: 170, baseType: !2195, size: 32, offset: 512)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3241, file: !222, line: 171, baseType: !7, size: 32, offset: 544)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3241, file: !222, line: 172, baseType: !7, size: 32, offset: 576)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3241, file: !222, line: 173, baseType: !7, size: 32, offset: 608)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3241, file: !222, line: 173, baseType: !7, size: 32, offset: 640)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3241, file: !222, line: 179, baseType: !642, size: 64, offset: 704)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3241, file: !222, line: 184, baseType: !59, size: 64, offset: 768)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3241, file: !222, line: 186, baseType: !3256, size: 4672, offset: 832)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !222, line: 105, size: 4672, elements: !3257)
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3283, !3284, !3285, !3286, !3287, !3288, !3289}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3256, file: !222, line: 106, baseType: !3240, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3256, file: !222, line: 108, baseType: !59, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3256, file: !222, line: 109, baseType: !59, size: 64, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3256, file: !222, line: 111, baseType: !117, size: 128, offset: 192)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3256, file: !222, line: 112, baseType: !117, size: 128, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3256, file: !222, line: 113, baseType: !117, size: 128, offset: 448)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3256, file: !222, line: 114, baseType: !117, size: 128, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3256, file: !222, line: 115, baseType: !79, size: 32, offset: 704)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3256, file: !222, line: 117, baseType: !69, size: 32, offset: 736)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3256, file: !222, line: 118, baseType: !3268, size: 1280, offset: 768)
!3268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 1280, elements: !706)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3256, file: !222, line: 120, baseType: !59, size: 64, offset: 2048)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3256, file: !222, line: 121, baseType: !59, size: 64, offset: 2112)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3256, file: !222, line: 122, baseType: !59, size: 64, offset: 2176)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3256, file: !222, line: 123, baseType: !59, size: 64, offset: 2240)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3256, file: !222, line: 124, baseType: !59, size: 64, offset: 2304)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3256, file: !222, line: 132, baseType: !59, size: 64, offset: 2368)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3256, file: !222, line: 133, baseType: !59, size: 64, offset: 2432)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3256, file: !222, line: 135, baseType: !3277, size: 384, offset: 2496)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3278, line: 76, size: 384, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3277, file: !3278, line: 78, baseType: !900, size: 320)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3277, file: !3278, line: 80, baseType: !7, size: 32, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3277, file: !3278, line: 81, baseType: !436, size: 32, offset: 352)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3256, file: !222, line: 136, baseType: !42, size: 32, offset: 2880)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3256, file: !222, line: 137, baseType: !221, size: 32, offset: 2912)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3256, file: !222, line: 139, baseType: !79, size: 32, offset: 2944)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3256, file: !222, line: 140, baseType: !117, size: 128, offset: 3008)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3256, file: !222, line: 141, baseType: !2504, size: 704, offset: 3136)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3256, file: !222, line: 142, baseType: !2504, size: 704, offset: 3840)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3256, file: !222, line: 144, baseType: !117, size: 128, offset: 4544)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3241, file: !222, line: 187, baseType: !117, size: 128, offset: 5504)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3241, file: !222, line: 193, baseType: !74, size: 192, offset: 5632)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3241, file: !222, line: 195, baseType: !2891, size: 64, offset: 5824)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3241, file: !222, line: 196, baseType: !3294, size: 512, offset: 5888)
!3294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !1438)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3241, file: !222, line: 197, baseType: !2891, size: 64, offset: 6400)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3241, file: !222, line: 199, baseType: !2447, size: 320, offset: 6464)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3241, file: !222, line: 202, baseType: !1107, size: 64, offset: 6784)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1350, file: !19, line: 1228, baseType: !3299, size: 64, offset: 1792)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1350, file: !19, line: 1229, baseType: !701, size: 128, offset: 1856)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1350, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1350, file: !19, line: 1231, baseType: !3304, size: 2496, offset: 2048)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !152, line: 521, size: 2496, elements: !3305)
!3305 = !{!3306, !3307, !3308, !3310, !3342}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3304, file: !152, line: 522, baseType: !7, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3304, file: !152, line: 523, baseType: !782, size: 320, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3304, file: !152, line: 524, baseType: !3309, size: 192, offset: 384)
!3309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1142, size: 192, elements: !685)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3304, file: !152, line: 525, baseType: !3311, size: 1728, offset: 576)
!3311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3312, size: 1728, elements: !685)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !152, line: 222, size: 576, elements: !3313)
!3313 = !{!3314, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3312, file: !152, line: 223, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !152, line: 445, size: 256, elements: !3317)
!3317 = !{!3318, !3319, !3332, !3333}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3316, file: !152, line: 446, baseType: !42, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3316, file: !152, line: 447, baseType: !3320, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3322)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !152, line: 312, size: 512, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3322, file: !152, line: 313, baseType: !2596, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3322, file: !152, line: 314, baseType: !2596, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3322, file: !152, line: 315, baseType: !2596, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3322, file: !152, line: 316, baseType: !2596, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3322, file: !152, line: 317, baseType: !2705, size: 64, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3322, file: !152, line: 318, baseType: !2705, size: 64, offset: 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3322, file: !152, line: 319, baseType: !2705, size: 64, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3322, file: !152, line: 320, baseType: !2735, size: 64, offset: 448)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3316, file: !152, line: 448, baseType: !1382, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3316, file: !152, line: 449, baseType: !3315, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3312, file: !152, line: 224, baseType: !42, size: 32, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3312, file: !152, line: 226, baseType: !117, size: 128, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3312, file: !152, line: 227, baseType: !59, size: 64, offset: 256)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3312, file: !152, line: 228, baseType: !7, size: 32, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3312, file: !152, line: 229, baseType: !7, size: 32, offset: 352)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3312, file: !152, line: 230, baseType: !2673, size: 64, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3312, file: !152, line: 231, baseType: !2673, size: 64, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3312, file: !152, line: 232, baseType: !40, size: 64, offset: 512)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3304, file: !152, line: 526, baseType: !3343, size: 192, offset: 2304)
!3343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3320, size: 192, elements: !685)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1350, file: !19, line: 1233, baseType: !3345, size: 2368, offset: 4544)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !3346)
!3346 = !{!3347, !3348, !3349}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3345, file: !19, line: 1185, baseType: !46, size: 16)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3345, file: !19, line: 1186, baseType: !46, size: 16, offset: 16)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3345, file: !19, line: 1187, baseType: !3350, size: 2304, offset: 64)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3351, size: 2304, elements: !685)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3352, line: 12, size: 768, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3353 = !{!3354, !3362, !3363, !3368, !3369}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3351, file: !3352, line: 13, baseType: !3355, size: 384)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3356, line: 17, size: 384, elements: !3357)
!3356 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3357 = !{!3358, !3359, !3360, !3361}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3355, file: !3356, line: 18, baseType: !42, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3355, file: !3356, line: 19, baseType: !42, size: 32, offset: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3355, file: !3356, line: 20, baseType: !74, size: 192, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3355, file: !3356, line: 22, baseType: !629, size: 128, align: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3351, file: !3352, line: 14, baseType: !2298, size: 64, offset: 384)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3351, file: !3352, line: 15, baseType: !3364, size: 64, offset: 448)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3365, line: 16, size: 64, elements: !3366)
!3365 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3366 = !{!3367}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3364, file: !3365, line: 17, baseType: !275, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3351, file: !3352, line: 16, baseType: !74, size: 192, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3351, file: !3352, line: 17, baseType: !69, size: 32, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1350, file: !19, line: 1240, baseType: !40, size: 64, offset: 6912)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1350, file: !19, line: 1243, baseType: !286, size: 32, offset: 6976)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1350, file: !19, line: 1245, baseType: !798, size: 64, offset: 7040)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1350, file: !19, line: 1246, baseType: !798, size: 64, offset: 7104)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1350, file: !19, line: 1248, baseType: !287, size: 32, offset: 7168)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1350, file: !19, line: 1249, baseType: !3376, size: 64, offset: 7232)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1350, file: !19, line: 1252, baseType: !3379, size: 256, offset: 7296)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !3380)
!3380 = !{!3381}
!3381 = !DISubrange(count: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1350, file: !19, line: 1253, baseType: !3383, size: 128, offset: 7552)
!3383 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3384, line: 21, baseType: !3385)
!3384 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3384, line: 19, size: 128, elements: !3386)
!3386 = !{!3387}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3385, file: !3384, line: 20, baseType: !3388, size: 128)
!3388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !3389)
!3389 = !{!3390}
!3390 = !DISubrange(count: 16)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1350, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1350, file: !19, line: 1261, baseType: !649, size: 256, offset: 7744)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1350, file: !19, line: 1267, baseType: !36, size: 64, offset: 8000)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1350, file: !19, line: 1269, baseType: !3395, size: 64, offset: 8064)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3397)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1109, line: 128, size: 1024, align: 512, elements: !3398)
!3398 = !{!3399, !3403, !3404, !3411, !3417, !3421, !3425, !3429, !3430, !3434, !3438, !3443, !3447}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3397, file: !1109, line: 129, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!42, !1107, !7}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3397, file: !1109, line: 130, baseType: !3400, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3397, file: !1109, line: 131, baseType: !3405, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!42, !3408, !3410}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3397, file: !1109, line: 132, baseType: !3412, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!42, !3408, !7, !36, !3415}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1127)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3397, file: !1109, line: 134, baseType: !3418, size: 64, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!42, !3408}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3397, file: !1109, line: 135, baseType: !3422, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!42, !1107}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3397, file: !1109, line: 136, baseType: !3426, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !1107}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3397, file: !1109, line: 137, baseType: !3426, size: 64, offset: 448)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3397, file: !1109, line: 138, baseType: !3431, size: 64, offset: 512)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{null, !1107, !1142}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3397, file: !1109, line: 139, baseType: !3435, size: 64, offset: 576)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!852, !1107, !852, !42}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3397, file: !1109, line: 140, baseType: !3439, size: 64, offset: 640)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!1102, !3442}
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3397, file: !1109, line: 141, baseType: !3444, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!42, !1263, !841}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3397, file: !1109, line: 142, baseType: !3448, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!1107, !1107, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1350, file: !19, line: 1271, baseType: !3454, size: 448, offset: 8128)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2688, line: 63, size: 448, elements: !3455)
!3455 = !{!3456, !3461, !3462, !3463, !3464, !3465, !3466}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3454, file: !2688, line: 64, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!59, !3460, !2686}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3454, file: !2688, line: 66, baseType: !3457, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3454, file: !2688, line: 69, baseType: !273, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3454, file: !2688, line: 70, baseType: !42, size: 32, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3454, file: !2688, line: 71, baseType: !7, size: 32, offset: 224)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3454, file: !2688, line: 74, baseType: !117, size: 128, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3454, file: !2688, line: 85, baseType: !3467, size: 64, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1350, file: !19, line: 1274, baseType: !642, size: 64, offset: 8576)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1350, file: !19, line: 1280, baseType: !642, size: 64, offset: 8640)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1350, file: !19, line: 1283, baseType: !42, size: 32, offset: 8704)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1350, file: !19, line: 1286, baseType: !2004, size: 32, offset: 8736)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1350, file: !19, line: 1289, baseType: !2509, size: 64, offset: 8768)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1350, file: !19, line: 1290, baseType: !697, size: 64, offset: 8832)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1350, file: !19, line: 1297, baseType: !925, size: 64, offset: 8896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1350, file: !19, line: 1304, baseType: !3476, size: 64, offset: 8960)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3477, line: 49, size: 64, elements: !3478)
!3477 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3478 = !{!3479}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3476, file: !3477, line: 50, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3477, line: 41, size: 512, align: 512, elements: !3482)
!3482 = !{!3483, !3484, !3489}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3481, file: !3477, line: 43, baseType: !79, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3481, file: !3477, line: 45, baseType: !3485, size: 192, offset: 64)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3477, line: 29, size: 192, elements: !3486)
!3486 = !{!3487, !3488}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3485, file: !3477, line: 30, baseType: !117, size: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3485, file: !3477, line: 32, baseType: !273, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3481, file: !3477, line: 46, baseType: !273, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1350, file: !19, line: 1305, baseType: !3476, size: 64, offset: 9024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1350, file: !19, line: 1306, baseType: !629, size: 128, align: 64, offset: 9088)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1350, file: !19, line: 1307, baseType: !974, size: 256, offset: 9216)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1350, file: !19, line: 1309, baseType: !649, size: 256, offset: 9472)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1350, file: !19, line: 1314, baseType: !42, size: 32, offset: 9728)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1350, file: !19, line: 1317, baseType: !79, size: 32, align: 512, offset: 10240)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1350, file: !19, line: 1318, baseType: !117, size: 128, offset: 10304)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1350, file: !19, line: 1320, baseType: !79, size: 32, offset: 10432)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1350, file: !19, line: 1321, baseType: !117, size: 128, offset: 10496)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1143, file: !19, line: 656, baseType: !1499, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1143, file: !19, line: 659, baseType: !40, size: 64, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1143, file: !19, line: 663, baseType: !59, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !19, line: 671, baseType: !3503, size: 32, offset: 704)
!3503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !19, line: 671, size: 32, elements: !3504)
!3504 = !{!3505, !3507}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3503, file: !19, line: 672, baseType: !3506, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3503, file: !19, line: 673, baseType: !7, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1143, file: !19, line: 675, baseType: !1216, size: 32, offset: 736)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1143, file: !19, line: 676, baseType: !61, size: 64, offset: 768)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1143, file: !19, line: 677, baseType: !1252, size: 128, offset: 832)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1143, file: !19, line: 678, baseType: !1252, size: 128, offset: 960)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1143, file: !19, line: 679, baseType: !1252, size: 128, offset: 1088)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1143, file: !19, line: 680, baseType: !79, size: 32, offset: 1216)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1143, file: !19, line: 681, baseType: !46, size: 16, offset: 1248)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1143, file: !19, line: 682, baseType: !103, size: 8, offset: 1264)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1143, file: !19, line: 683, baseType: !103, size: 8, offset: 1272)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1143, file: !19, line: 684, baseType: !2819, size: 64, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1143, file: !19, line: 691, baseType: !59, size: 64, offset: 1344)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1143, file: !19, line: 692, baseType: !782, size: 320, offset: 1408)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1143, file: !19, line: 694, baseType: !59, size: 64, offset: 1728)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1143, file: !19, line: 695, baseType: !59, size: 64, offset: 1792)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1143, file: !19, line: 697, baseType: !701, size: 128, offset: 1856)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1143, file: !19, line: 698, baseType: !117, size: 128, offset: 1984)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1143, file: !19, line: 707, baseType: !117, size: 128, offset: 2112)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1143, file: !19, line: 708, baseType: !117, size: 128, offset: 2240)
!3526 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !19, line: 709, baseType: !3527, size: 128, offset: 2368)
!3527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !19, line: 709, size: 128, elements: !3528)
!3528 = !{!3529, !3530}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3527, file: !19, line: 710, baseType: !697, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3527, file: !19, line: 711, baseType: !629, size: 128, align: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1143, file: !19, line: 713, baseType: !644, size: 64, offset: 2496)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1143, file: !19, line: 714, baseType: !644, size: 64, offset: 2560)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1143, file: !19, line: 715, baseType: !69, size: 32, offset: 2624)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1143, file: !19, line: 716, baseType: !69, size: 32, offset: 2656)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1143, file: !19, line: 717, baseType: !69, size: 32, offset: 2688)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1143, file: !19, line: 719, baseType: !69, size: 32, offset: 2720)
!3537 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !19, line: 721, baseType: !3538, size: 64, offset: 2752)
!3538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !19, line: 721, size: 64, elements: !3539)
!3539 = !{!3540, !3666}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3538, file: !19, line: 722, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !3544)
!3544 = !{!3545, !3546, !3550, !3554, !3558, !3559, !3560, !3566, !3579, !3583, !3587, !3588, !3592, !3593, !3597, !3602, !3603, !3607, !3611, !3617, !3618, !3622, !3623, !3629, !3633, !3634, !3639, !3643, !3647, !3651, !3655, !3656, !3662}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3543, file: !19, line: 1915, baseType: !1382, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3543, file: !19, line: 1916, baseType: !3547, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!61, !621, !61, !42}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3543, file: !19, line: 1917, baseType: !3551, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!1294, !621, !852, !55, !60}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3543, file: !19, line: 1918, baseType: !3555, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!1294, !621, !36, !55, !60}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3543, file: !19, line: 1919, baseType: !1938, size: 64, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3543, file: !19, line: 1920, baseType: !1938, size: 64, offset: 320)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3543, file: !19, line: 1921, baseType: !3561, size: 64, offset: 384)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!42, !1941, !3564, !7}
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3543, file: !19, line: 1923, baseType: !3567, size: 64, offset: 448)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!42, !621, !3570}
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !3572)
!3572 = !{!3573, !3578}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3571, file: !19, line: 1859, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !3575)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!841, !3570, !36, !42, !61, !344, !7}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3571, file: !19, line: 1860, baseType: !61, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3543, file: !19, line: 1924, baseType: !3580, size: 64, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!2173, !621, !2175}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3543, file: !19, line: 1925, baseType: !3584, size: 64, offset: 576)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!273, !621, !7, !59}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3543, file: !19, line: 1926, baseType: !3584, size: 64, offset: 640)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3543, file: !19, line: 1927, baseType: !3589, size: 64, offset: 704)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!42, !621, !1629}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3543, file: !19, line: 1928, baseType: !59, size: 64, offset: 768)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3543, file: !19, line: 1929, baseType: !3594, size: 64, offset: 832)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!42, !1142, !621}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3543, file: !19, line: 1930, baseType: !3598, size: 64, offset: 896)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!42, !621, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !40)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3543, file: !19, line: 1931, baseType: !3594, size: 64, offset: 960)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3543, file: !19, line: 1932, baseType: !3604, size: 64, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!42, !621, !61, !61, !42}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3543, file: !19, line: 1933, baseType: !3608, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!42, !42, !621, !42}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3543, file: !19, line: 1934, baseType: !3612, size: 64, offset: 1152)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!42, !621, !42, !3615}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3543, file: !19, line: 1935, baseType: !618, size: 64, offset: 1216)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3543, file: !19, line: 1936, baseType: !3619, size: 64, offset: 1280)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!42, !42}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3543, file: !19, line: 1937, baseType: !3612, size: 64, offset: 1344)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3543, file: !19, line: 1938, baseType: !3624, size: 64, offset: 1408)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!1294, !3627, !621, !60, !55, !7}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !277, line: 59, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3543, file: !19, line: 1939, baseType: !3630, size: 64, offset: 1472)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!1294, !621, !60, !3627, !55, !7}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3543, file: !19, line: 1940, baseType: !1994, size: 64, offset: 1536)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3543, file: !19, line: 1941, baseType: !3635, size: 64, offset: 1600)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!42, !621, !42, !3638, !1915}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3543, file: !19, line: 1942, baseType: !3640, size: 64, offset: 1664)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!273, !621, !42, !61, !61}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3543, file: !19, line: 1944, baseType: !3644, size: 64, offset: 1728)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{null, !2106, !621}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3543, file: !19, line: 1948, baseType: !3648, size: 64, offset: 1792)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!1294, !621, !61, !621, !61, !55, !7}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3543, file: !19, line: 1950, baseType: !3652, size: 64, offset: 1856)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!61, !621, !61, !621, !61, !61, !7}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3543, file: !19, line: 1953, baseType: !3604, size: 64, offset: 1920)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3543, file: !19, line: 1954, baseType: !3657, size: 64, offset: 1984)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!42, !3660, !7}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3543, file: !19, line: 1955, baseType: !3663, size: 64, offset: 2048)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!42, !3660, !3564, !7}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3538, file: !19, line: 723, baseType: !2577, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1143, file: !19, line: 725, baseType: !3668, size: 64, offset: 2816)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1143, file: !19, line: 726, baseType: !1500, size: 1536, align: 64, offset: 2880)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1143, file: !19, line: 727, baseType: !117, size: 128, offset: 4416)
!3672 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !19, line: 728, baseType: !3673, size: 64, offset: 4544)
!3673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !19, line: 728, size: 64, elements: !3674)
!3674 = !{!3675, !3676, !3679, !3680}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3673, file: !19, line: 729, baseType: !3627, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3673, file: !19, line: 730, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3673, file: !19, line: 731, baseType: !852, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3673, file: !19, line: 732, baseType: !7, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1143, file: !19, line: 735, baseType: !287, size: 32, offset: 4608)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1143, file: !19, line: 738, baseType: !287, size: 32, offset: 4640)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1143, file: !19, line: 739, baseType: !3376, size: 64, offset: 4672)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1143, file: !19, line: 750, baseType: !40, size: 64, offset: 4736)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1108, file: !1109, line: 91, baseType: !3686, size: 256, offset: 448)
!3686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !3380)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1108, file: !1109, line: 94, baseType: !3688, size: 64, offset: 704)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3689, line: 25, size: 64, elements: !3690)
!3689 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3690 = !{!3691}
!3691 = !DIDerivedType(tag: DW_TAG_member, scope: !3688, file: !3689, line: 26, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3688, file: !3689, line: 26, size: 64, elements: !3693)
!3693 = !{!3694, !3695}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3692, file: !3689, line: 28, baseType: !345, size: 64, align: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, scope: !3692, file: !3689, line: 30, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3689, line: 30, size: 64, elements: !3697)
!3697 = !{!3698, !3699}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3696, file: !3689, line: 31, baseType: !79, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3696, file: !3689, line: 32, baseType: !42, size: 32, offset: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1108, file: !1109, line: 95, baseType: !3395, size: 64, offset: 768)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1108, file: !1109, line: 96, baseType: !1349, size: 64, offset: 832)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1108, file: !1109, line: 97, baseType: !59, size: 64, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1108, file: !1109, line: 98, baseType: !40, size: 64, offset: 960)
!3704 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !1109, line: 100, baseType: !3705, size: 128, offset: 1024)
!3705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !1109, line: 100, size: 128, elements: !3706)
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3705, file: !1109, line: 101, baseType: !117, size: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3705, file: !1109, line: 102, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1108, file: !1109, line: 104, baseType: !117, size: 128, offset: 1152)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1108, file: !1109, line: 105, baseType: !117, size: 128, offset: 1280)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1108, file: !1109, line: 113, baseType: !3713, size: 128, offset: 1408)
!3713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !1109, line: 109, size: 128, elements: !3714)
!3714 = !{!3715, !3716, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3713, file: !1109, line: 110, baseType: !701, size: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3713, file: !1109, line: 111, baseType: !1118, size: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3713, file: !1109, line: 112, baseType: !629, size: 128, align: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1103, file: !1104, line: 72, baseType: !1349, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1103, file: !1104, line: 73, baseType: !42, size: 32, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1103, file: !1104, line: 74, baseType: !1181, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1098, file: !1099, line: 10, baseType: !1107, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !622, file: !19, line: 1015, baseType: !1142, size: 64, offset: 1344)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !622, file: !19, line: 1016, baseType: !3541, size: 64, offset: 1408)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !622, file: !19, line: 1018, baseType: !344, size: 64, offset: 1472)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !622, file: !19, line: 1020, baseType: !40, size: 64, offset: 1536)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !622, file: !19, line: 1023, baseType: !40, size: 64, offset: 1600)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !622, file: !19, line: 1027, baseType: !3728, size: 64, offset: 1664)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !622, file: !19, line: 1029, baseType: !1499, size: 64, offset: 1728)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !622, file: !19, line: 1030, baseType: !2004, size: 32, offset: 1792)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !622, file: !19, line: 1031, baseType: !2004, size: 32, offset: 1824)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !597, file: !128, line: 756, baseType: !59, size: 64, offset: 704)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !597, file: !128, line: 757, baseType: !59, size: 64, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !597, file: !128, line: 760, baseType: !59, size: 64, offset: 832)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !597, file: !128, line: 761, baseType: !59, size: 64, offset: 896)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !597, file: !128, line: 763, baseType: !59, size: 64, offset: 960)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !597, file: !128, line: 764, baseType: !3738, size: 64, offset: 1024)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1644, line: 299, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1644, line: 299, size: 64, elements: !3741)
!3741 = !{!3742}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3740, file: !1644, line: 299, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1649, line: 18, baseType: !59)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !597, file: !128, line: 773, baseType: !69, size: 32, offset: 1088)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !597, file: !128, line: 785, baseType: !69, size: 32, offset: 1120)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !597, file: !128, line: 795, baseType: !3747, size: 64, offset: 1152)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !128, line: 726, size: 128, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3748, file: !128, line: 727, baseType: !344, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3748, file: !128, line: 728, baseType: !42, size: 32, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !597, file: !128, line: 801, baseType: !59, size: 64, offset: 1216)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !597, file: !128, line: 804, baseType: !642, size: 64, offset: 1280)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !597, file: !128, line: 806, baseType: !42, size: 32, offset: 1344)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !597, file: !128, line: 808, baseType: !79, size: 32, offset: 1376)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !597, file: !128, line: 823, baseType: !782, size: 320, offset: 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !597, file: !128, line: 825, baseType: !117, size: 128, offset: 1728)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !597, file: !128, line: 845, baseType: !42, size: 32, offset: 1856)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !597, file: !128, line: 849, baseType: !59, size: 64, offset: 1920)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !597, file: !128, line: 850, baseType: !59, size: 64, offset: 1984)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !597, file: !128, line: 852, baseType: !59, size: 64, offset: 2048)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !597, file: !128, line: 853, baseType: !59, size: 64, offset: 2112)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !597, file: !128, line: 854, baseType: !644, size: 64, offset: 2176)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !597, file: !128, line: 855, baseType: !59, size: 64, offset: 2240)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !597, file: !128, line: 856, baseType: !59, size: 64, offset: 2304)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !597, file: !128, line: 857, baseType: !59, size: 64, offset: 2368)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !597, file: !128, line: 858, baseType: !59, size: 64, offset: 2432)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !597, file: !128, line: 865, baseType: !467, size: 32, offset: 2496)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !597, file: !128, line: 867, baseType: !79, size: 32, offset: 2528)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !597, file: !128, line: 869, baseType: !59, size: 64, offset: 2560)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !597, file: !128, line: 869, baseType: !59, size: 64, offset: 2624)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !597, file: !128, line: 869, baseType: !59, size: 64, offset: 2688)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !597, file: !128, line: 869, baseType: !59, size: 64, offset: 2752)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !597, file: !128, line: 870, baseType: !59, size: 64, offset: 2816)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !597, file: !128, line: 870, baseType: !59, size: 64, offset: 2880)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !597, file: !128, line: 870, baseType: !59, size: 64, offset: 2944)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !597, file: !128, line: 871, baseType: !59, size: 64, offset: 3008)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !597, file: !128, line: 871, baseType: !59, size: 64, offset: 3072)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !597, file: !128, line: 871, baseType: !59, size: 64, offset: 3136)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !597, file: !128, line: 871, baseType: !59, size: 64, offset: 3200)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !597, file: !128, line: 873, baseType: !3782, size: 3328, offset: 3264)
!3782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !3783)
!3783 = !{!3784}
!3784 = !DISubrange(count: 52)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !597, file: !128, line: 875, baseType: !3268, size: 1280, offset: 6592)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !597, file: !128, line: 877, baseType: !3787, size: 64, offset: 7872)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !128, line: 877, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !597, file: !128, line: 880, baseType: !3790, size: 1088, offset: 7936)
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3791, line: 72, baseType: !3792)
!3791 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3791, line: 23, size: 1088, elements: !3793)
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3801, !3802, !3803, !3804, !3829, !3830, !3831}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3792, file: !3791, line: 28, baseType: !344, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3792, file: !3791, line: 38, baseType: !644, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3792, file: !3791, line: 40, baseType: !59, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3792, file: !3791, line: 43, baseType: !782, size: 320, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3792, file: !3791, line: 44, baseType: !3799, size: 64, offset: 512)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3791, line: 44, flags: DIFlagFwdDecl)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3792, file: !3791, line: 48, baseType: !59, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3792, file: !3791, line: 59, baseType: !649, size: 256, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3792, file: !3791, line: 60, baseType: !40, size: 64, offset: 896)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3792, file: !3791, line: 61, baseType: !3805, size: 64, offset: 960)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3808, line: 13, size: 1216, elements: !3809)
!3808 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3807, file: !3808, line: 14, baseType: !40, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3807, file: !3808, line: 15, baseType: !59, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3807, file: !3808, line: 17, baseType: !59, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3807, file: !3808, line: 17, baseType: !59, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3807, file: !3808, line: 18, baseType: !59, size: 64, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3807, file: !3808, line: 18, baseType: !59, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3807, file: !3808, line: 19, baseType: !2043, size: 64, offset: 384)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3807, file: !3808, line: 21, baseType: !273, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3807, file: !3808, line: 23, baseType: !273, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3807, file: !3808, line: 24, baseType: !273, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3807, file: !3808, line: 25, baseType: !273, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3807, file: !3808, line: 26, baseType: !273, size: 64, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3807, file: !3808, line: 27, baseType: !273, size: 64, offset: 768)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3807, file: !3808, line: 28, baseType: !273, size: 64, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3807, file: !3808, line: 29, baseType: !273, size: 64, offset: 896)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3807, file: !3808, line: 30, baseType: !273, size: 64, offset: 960)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3807, file: !3808, line: 31, baseType: !273, size: 64, offset: 1024)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3807, file: !3808, line: 32, baseType: !273, size: 64, offset: 1088)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3807, file: !3808, line: 33, baseType: !273, size: 64, offset: 1152)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3792, file: !3791, line: 63, baseType: !69, size: 32, offset: 1024)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3792, file: !3791, line: 69, baseType: !113, size: 16, offset: 1056)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3792, file: !3791, line: 70, baseType: !2353, size: 16, offset: 1072)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !128, line: 882, baseType: !59, size: 64, offset: 9024)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !597, file: !128, line: 885, baseType: !79, size: 32, offset: 9088)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !597, file: !128, line: 886, baseType: !3835, size: 64, offset: 9152)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !128, line: 732, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !597, file: !128, line: 901, baseType: !925, size: 64, offset: 9216)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !597, file: !128, line: 904, baseType: !621, size: 64, offset: 9280)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !597, file: !128, line: 906, baseType: !3840, size: 64, offset: 9344)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !128, line: 906, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !597, file: !128, line: 930, baseType: !69, size: 32, offset: 9408)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !597, file: !128, line: 933, baseType: !69, size: 32, offset: 9440)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !597, file: !128, line: 935, baseType: !3845, size: 64, offset: 9472)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !240, line: 103, size: 64, elements: !3846)
!3846 = !{!3847}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3845, file: !240, line: 104, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !240, line: 101, flags: DIFlagFwdDecl)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !597, file: !128, line: 940, baseType: !642, size: 64, offset: 9536)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !597, file: !128, line: 942, baseType: !974, size: 256, offset: 9600)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !594, file: !128, line: 986, baseType: !3853, offset: 10240)
!3853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !719)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !276, file: !277, line: 882, baseType: !593, size: 64, offset: 9792)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !276, file: !277, line: 884, baseType: !42, size: 32, offset: 9856)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !276, file: !277, line: 885, baseType: !42, size: 32, offset: 9888)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !276, file: !277, line: 886, baseType: !42, size: 32, offset: 9920)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !276, file: !277, line: 888, baseType: !42, size: 32, offset: 9952)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !276, file: !277, line: 890, baseType: !59, size: 64, offset: 9984)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !276, file: !277, line: 893, baseType: !7, size: 32, offset: 10048)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !276, file: !277, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !276, file: !277, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !276, file: !277, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !276, file: !277, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !276, file: !277, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !276, file: !277, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !276, file: !277, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !276, file: !277, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !276, file: !277, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !276, file: !277, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !276, file: !277, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !276, file: !277, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !276, file: !277, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !276, file: !277, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !276, file: !277, line: 969, baseType: !59, size: 64, offset: 10176)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !276, file: !277, line: 971, baseType: !3877, size: 448, offset: 10240)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !234, line: 25, size: 448, elements: !3878)
!3878 = !{!3879, !3880, !3885}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3877, file: !234, line: 26, baseType: !59, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3877, file: !234, line: 27, baseType: !3881, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!273, !3884}
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, scope: !3877, file: !234, line: 28, baseType: !3886, size: 320, offset: 128)
!3886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3877, file: !234, line: 28, size: 320, elements: !3887)
!3887 = !{!3888, !3898, !3923}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3886, file: !234, line: 37, baseType: !3889, size: 320)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3886, file: !234, line: 30, size: 320, elements: !3890)
!3890 = !{!3891, !3893, !3894, !3895, !3896, !3897}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3889, file: !234, line: 31, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3889, file: !234, line: 32, baseType: !286, size: 32, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3889, file: !234, line: 33, baseType: !286, size: 32, offset: 96)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3889, file: !234, line: 34, baseType: !286, size: 32, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3889, file: !234, line: 35, baseType: !344, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3889, file: !234, line: 36, baseType: !3892, size: 64, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3886, file: !234, line: 47, baseType: !3899, size: 192)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3886, file: !234, line: 39, size: 192, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3922}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3899, file: !234, line: 40, baseType: !459, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3899, file: !234, line: 41, baseType: !233, size: 32, offset: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, scope: !3899, file: !234, line: 42, baseType: !3904, size: 64, offset: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3899, file: !234, line: 42, size: 64, elements: !3905)
!3905 = !{!3906, !3914}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3904, file: !234, line: 43, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3909, line: 7, size: 128, elements: !3910)
!3909 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3910 = !{!3911, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3908, file: !3909, line: 8, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !57, line: 93, baseType: !63)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3908, file: !3909, line: 9, baseType: !63, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3904, file: !234, line: 44, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3917, line: 7, size: 64, elements: !3918)
!3917 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3918 = !{!3919, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3916, file: !3917, line: 8, baseType: !3920, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3917, line: 5, baseType: !774)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3916, file: !3917, line: 9, baseType: !774, size: 32, offset: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3899, file: !234, line: 46, baseType: !344, size: 64, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3886, file: !234, line: 55, baseType: !3924, size: 256)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3886, file: !234, line: 49, size: 256, elements: !3925)
!3925 = !{!3926, !3929, !3930, !3931, !3932}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3924, file: !234, line: 50, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !234, line: 14, flags: DIFlagFwdDecl)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3924, file: !234, line: 51, baseType: !42, size: 32, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3924, file: !234, line: 52, baseType: !42, size: 32, offset: 96)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3924, file: !234, line: 53, baseType: !59, size: 64, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3924, file: !234, line: 54, baseType: !59, size: 64, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !276, file: !277, line: 973, baseType: !3934, size: 32, offset: 10688)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !45, line: 27, baseType: !3935)
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !57, line: 28, baseType: !42)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !276, file: !277, line: 974, baseType: !3934, size: 32, offset: 10720)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !276, file: !277, line: 978, baseType: !59, size: 64, offset: 10752)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !276, file: !277, line: 987, baseType: !275, size: 64, offset: 10816)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !276, file: !277, line: 990, baseType: !275, size: 64, offset: 10880)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !276, file: !277, line: 995, baseType: !117, size: 128, offset: 10944)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !276, file: !277, line: 996, baseType: !117, size: 128, offset: 11072)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !276, file: !277, line: 997, baseType: !275, size: 64, offset: 11200)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !276, file: !277, line: 1005, baseType: !117, size: 128, offset: 11264)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !276, file: !277, line: 1006, baseType: !117, size: 128, offset: 11392)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !276, file: !277, line: 1009, baseType: !689, size: 64, offset: 11520)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !276, file: !277, line: 1010, baseType: !3947, size: 512, offset: 11584)
!3947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 512, elements: !706)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !276, file: !277, line: 1011, baseType: !117, size: 128, offset: 12096)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !276, file: !277, line: 1012, baseType: !117, size: 128, offset: 12224)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !276, file: !277, line: 1014, baseType: !1012, size: 64, offset: 12352)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !276, file: !277, line: 1017, baseType: !2346, size: 64, offset: 12416)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !276, file: !277, line: 1020, baseType: !2346, size: 64, offset: 12480)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !276, file: !277, line: 1023, baseType: !40, size: 64, offset: 12544)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !276, file: !277, line: 1025, baseType: !344, size: 64, offset: 12608)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !276, file: !277, line: 1026, baseType: !344, size: 64, offset: 12672)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !276, file: !277, line: 1031, baseType: !344, size: 64, offset: 12736)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !276, file: !277, line: 1032, baseType: !3958, size: 192, offset: 12800)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !277, line: 324, size: 192, elements: !3959)
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3958, file: !277, line: 326, baseType: !344, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3958, file: !277, line: 327, baseType: !344, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3958, file: !277, line: 328, baseType: !436, size: 32, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !276, file: !277, line: 1041, baseType: !59, size: 64, offset: 12992)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !276, file: !277, line: 1042, baseType: !59, size: 64, offset: 13056)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !276, file: !277, line: 1045, baseType: !344, size: 64, offset: 13120)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !276, file: !277, line: 1048, baseType: !344, size: 64, offset: 13184)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !276, file: !277, line: 1051, baseType: !59, size: 64, offset: 13248)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !276, file: !277, line: 1052, baseType: !59, size: 64, offset: 13312)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !276, file: !277, line: 1055, baseType: !3970, size: 640, offset: 13376)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3971, line: 132, size: 640, elements: !3972)
!3971 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3972 = !{!3973, !3979, !3980}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3970, file: !3971, line: 133, baseType: !3974, size: 576)
!3974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3975, size: 576, elements: !685)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3971, line: 117, size: 192, elements: !3976)
!3976 = !{!3977, !3978}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3975, file: !3971, line: 118, baseType: !344, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3975, file: !3971, line: 119, baseType: !473, size: 128, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3970, file: !3971, line: 134, baseType: !7, size: 32, offset: 576)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3970, file: !3971, line: 135, baseType: !7, size: 32, offset: 608)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !276, file: !277, line: 1058, baseType: !3982, size: 448, offset: 14016)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3971, line: 144, size: 448, elements: !3983)
!3983 = !{!3984, !3985, !3986}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3982, file: !3971, line: 145, baseType: !629, size: 128, align: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3982, file: !3971, line: 146, baseType: !649, size: 256, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3982, file: !3971, line: 147, baseType: !7, size: 32, offset: 384)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !276, file: !277, line: 1064, baseType: !733, size: 64, offset: 14464)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !276, file: !277, line: 1067, baseType: !733, size: 64, offset: 14528)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !276, file: !277, line: 1070, baseType: !733, size: 64, offset: 14592)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !276, file: !277, line: 1074, baseType: !766, size: 64, offset: 14656)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !276, file: !277, line: 1084, baseType: !3992, size: 128, offset: 14720)
!3992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !3389)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !276, file: !277, line: 1086, baseType: !3994, size: 64, offset: 14848)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !277, line: 55, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !276, file: !277, line: 1089, baseType: !3997, size: 64, offset: 14912)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3998, line: 12, size: 64, elements: !3999)
!3998 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3999 = !{!4000}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3997, file: !3998, line: 13, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3998, line: 8, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !276, file: !277, line: 1090, baseType: !4004, size: 128, offset: 14976)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4005, line: 13, size: 128, elements: !4006)
!4005 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4006 = !{!4007}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4004, file: !4005, line: 14, baseType: !117, size: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !276, file: !277, line: 1097, baseType: !4009, size: 64, offset: 15104)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !277, line: 50, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !276, file: !277, line: 1100, baseType: !4012, size: 64, offset: 15168)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !277, line: 1100, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !276, file: !277, line: 1103, baseType: !4015, size: 64, offset: 15232)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !277, line: 53, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !276, file: !277, line: 1107, baseType: !4018, size: 64, offset: 15296)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4020, line: 31, size: 576, elements: !4021)
!4020 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4021 = !{!4022, !4023, !4026, !4029, !4032, !4033, !4036, !4039, !4040}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4019, file: !4020, line: 32, baseType: !292, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4019, file: !4020, line: 33, baseType: !4024, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4020, line: 9, flags: DIFlagFwdDecl)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4019, file: !4020, line: 34, baseType: !4027, size: 64, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4020, line: 10, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4019, file: !4020, line: 35, baseType: !4030, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4020, line: 8, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4019, file: !4020, line: 36, baseType: !717, size: 64, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4019, file: !4020, line: 37, baseType: !4034, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !768, line: 34, flags: DIFlagFwdDecl)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4019, file: !4020, line: 38, baseType: !4037, size: 64, offset: 384)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4020, line: 38, flags: DIFlagFwdDecl)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4019, file: !4020, line: 39, baseType: !4037, size: 64, offset: 448)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4019, file: !4020, line: 40, baseType: !4041, size: 64, offset: 512)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4043, line: 771, size: 384, elements: !4044)
!4043 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4044 = !{!4045, !4046, !4047, !4048}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4042, file: !4043, line: 772, baseType: !958, size: 192)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4042, file: !4043, line: 773, baseType: !925, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4042, file: !4043, line: 774, baseType: !1057, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4042, file: !4043, line: 775, baseType: !4049, size: 64, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4051, line: 209, size: 4736, elements: !4052)
!4051 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4052 = !{!4053, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4050, file: !4051, line: 215, baseType: !4054, size: 896)
!4054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4055, size: 896, elements: !4112)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4051, line: 152, size: 1600, elements: !4057)
!4057 = !{!4058, !4163, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4287}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4056, file: !4051, line: 154, baseType: !4059, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4051, line: 389, size: 7872, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4081, !4082, !4086, !4087, !4088, !4089, !4090, !4091, !4109, !4110, !4114, !4115, !4116, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4150, !4153, !4154, !4161}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4060, file: !4051, line: 391, baseType: !4056, size: 1600)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4060, file: !4051, line: 393, baseType: !59, size: 64, offset: 1600)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4060, file: !4051, line: 401, baseType: !42, size: 32, offset: 1664)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4060, file: !4051, line: 404, baseType: !42, size: 32, offset: 1696)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4060, file: !4051, line: 417, baseType: !42, size: 32, offset: 1728)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4060, file: !4051, line: 418, baseType: !42, size: 32, offset: 1760)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4060, file: !4051, line: 419, baseType: !42, size: 32, offset: 1792)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4060, file: !4051, line: 432, baseType: !42, size: 32, offset: 1824)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4060, file: !4051, line: 433, baseType: !42, size: 32, offset: 1856)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4060, file: !4051, line: 434, baseType: !42, size: 32, offset: 1888)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4060, file: !4051, line: 436, baseType: !42, size: 32, offset: 1920)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4060, file: !4051, line: 439, baseType: !7, size: 32, offset: 1952)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4060, file: !4051, line: 441, baseType: !2061, size: 64, offset: 1984)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4060, file: !4051, line: 442, baseType: !4076, size: 448, offset: 2048)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4051, line: 138, size: 448, elements: !4077)
!4077 = !{!4078, !4079, !4080}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4076, file: !4051, line: 140, baseType: !2061, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4076, file: !4051, line: 141, baseType: !59, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4076, file: !4051, line: 142, baseType: !2447, size: 320, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4060, file: !4051, line: 443, baseType: !4076, size: 448, offset: 2496)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4060, file: !4051, line: 446, baseType: !4083, offset: 2944)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4076, elements: !4084)
!4084 = !{!4085}
!4085 = !DISubrange(count: 0)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4060, file: !4051, line: 455, baseType: !113, size: 16, offset: 2944)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4060, file: !4051, line: 456, baseType: !113, size: 16, offset: 2960)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4060, file: !4051, line: 457, baseType: !113, size: 16, offset: 2976)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4060, file: !4051, line: 458, baseType: !113, size: 16, offset: 2992)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4060, file: !4051, line: 461, baseType: !4054, size: 896, offset: 3008)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4060, file: !4051, line: 463, baseType: !4092, size: 64, offset: 3904)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4051, line: 537, size: 41664, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4108}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4093, file: !4051, line: 538, baseType: !2081, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4093, file: !4051, line: 541, baseType: !7, size: 32, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4093, file: !4051, line: 544, baseType: !42, size: 32, offset: 96)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4093, file: !4051, line: 547, baseType: !117, size: 128, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4093, file: !4051, line: 548, baseType: !629, size: 128, align: 64, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4093, file: !4051, line: 555, baseType: !4060, size: 7872, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4093, file: !4051, line: 558, baseType: !4059, size: 64, offset: 8256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4093, file: !4051, line: 561, baseType: !69, size: 32, offset: 8320)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4093, file: !4051, line: 564, baseType: !7, size: 32, offset: 8352)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4093, file: !4051, line: 567, baseType: !4105, size: 32768, offset: 8384)
!4105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !4106)
!4106 = !{!4107}
!4107 = !DISubrange(count: 4096)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4093, file: !4051, line: 570, baseType: !3294, size: 512, offset: 41152)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4060, file: !4051, line: 469, baseType: !117, size: 128, offset: 3968)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4060, file: !4051, line: 478, baseType: !4111, size: 1792, offset: 4096)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1792, elements: !4112)
!4112 = !{!4113}
!4113 = !DISubrange(count: 14)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4060, file: !4051, line: 487, baseType: !4059, size: 64, offset: 5888)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4060, file: !4051, line: 488, baseType: !4059, size: 64, offset: 5952)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4060, file: !4051, line: 491, baseType: !4117, size: 64, offset: 6016)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4051, line: 327, size: 896, elements: !4119)
!4119 = !{!4120, !4123, !4133, !4134, !4135, !4136, !4137}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4118, file: !4051, line: 332, baseType: !4121)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4122, line: 64, elements: !614)
!4122 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4118, file: !4051, line: 333, baseType: !4124, size: 192)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4051, line: 299, size: 192, elements: !4125)
!4125 = !{!4126}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4124, file: !4051, line: 300, baseType: !4127, size: 192)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4128, line: 17, size: 192, elements: !4129)
!4128 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4129 = !{!4130, !4131, !4132}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4127, file: !4128, line: 18, baseType: !344, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4127, file: !4128, line: 19, baseType: !344, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4127, file: !4128, line: 20, baseType: !346, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4118, file: !4051, line: 339, baseType: !4124, size: 192, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4118, file: !4051, line: 347, baseType: !4124, size: 192, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4118, file: !4051, line: 353, baseType: !4124, size: 192, offset: 576)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4118, file: !4051, line: 366, baseType: !4059, size: 64, offset: 768)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4118, file: !4051, line: 367, baseType: !4059, size: 64, offset: 832)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4060, file: !4051, line: 492, baseType: !117, size: 128, offset: 6080)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4060, file: !4051, line: 495, baseType: !4124, size: 192, offset: 6208)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4060, file: !4051, line: 496, baseType: !4124, size: 192, offset: 6400)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4060, file: !4051, line: 497, baseType: !3958, size: 192, offset: 6592)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4060, file: !4051, line: 503, baseType: !117, size: 128, offset: 6784)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4060, file: !4051, line: 504, baseType: !649, size: 256, offset: 6912)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4060, file: !4051, line: 507, baseType: !74, size: 192, offset: 7168)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4060, file: !4051, line: 510, baseType: !974, size: 256, offset: 7360)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4060, file: !4051, line: 513, baseType: !4147, size: 64, offset: 7616)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4149, line: 214, elements: !614)
!4149 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4060, file: !4051, line: 516, baseType: !4151, offset: 7680)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4152, line: 76, elements: !614)
!4152 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4060, file: !4051, line: 519, baseType: !69, size: 32, offset: 7680)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4060, file: !4051, line: 522, baseType: !4155, size: 128, offset: 7712)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4051, line: 370, size: 128, elements: !4156)
!4156 = !{!4157, !4158, !4159, !4160}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4155, file: !4051, line: 372, baseType: !841, size: 8)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4155, file: !4051, line: 375, baseType: !42, size: 32, offset: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4155, file: !4051, line: 380, baseType: !42, size: 32, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4155, file: !4051, line: 386, baseType: !42, size: 32, offset: 96)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4060, file: !4051, line: 529, baseType: !4162, offset: 7872)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4059, elements: !719)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4056, file: !4051, line: 157, baseType: !4164, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4051, line: 669, size: 1984, elements: !4166)
!4166 = !{!4167, !4171, !4175, !4179, !4180, !4181, !4182, !4186, !4190, !4191, !4197, !4201, !4202, !4203, !4207, !4211, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4232, !4233, !4270, !4271}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4165, file: !4051, line: 670, baseType: !4168, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!4055, !4055}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4165, file: !4051, line: 671, baseType: !4172, size: 64, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!42, !4055}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4165, file: !4051, line: 672, baseType: !4176, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !4055}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4165, file: !4051, line: 673, baseType: !4176, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4165, file: !4051, line: 674, baseType: !4176, size: 64, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4165, file: !4051, line: 675, baseType: !4176, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4165, file: !4051, line: 676, baseType: !4183, size: 64, offset: 384)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !4055, !42}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4165, file: !4051, line: 677, baseType: !4187, size: 64, offset: 448)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!42, !2106, !4055}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4165, file: !4051, line: 679, baseType: !4187, size: 64, offset: 512)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4165, file: !4051, line: 682, baseType: !4192, size: 64, offset: 576)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!42, !4195}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4051, line: 30, flags: DIFlagFwdDecl)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4165, file: !4051, line: 683, baseType: !4198, size: 64, offset: 640)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !4195}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4165, file: !4051, line: 684, baseType: !4198, size: 64, offset: 704)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4165, file: !4051, line: 685, baseType: !2551, size: 64, offset: 768)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4165, file: !4051, line: 686, baseType: !4204, size: 64, offset: 832)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!42, !275, !4049}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4165, file: !4051, line: 688, baseType: !4208, size: 64, offset: 896)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !275, !4049}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4165, file: !4051, line: 689, baseType: !4212, size: 64, offset: 960)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{null, !275}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4165, file: !4051, line: 690, baseType: !4212, size: 64, offset: 1024)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4165, file: !4051, line: 691, baseType: !4212, size: 64, offset: 1088)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4165, file: !4051, line: 692, baseType: !4176, size: 64, offset: 1152)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4165, file: !4051, line: 694, baseType: !841, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4165, file: !4051, line: 707, baseType: !841, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4165, file: !4051, line: 719, baseType: !841, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4165, file: !4051, line: 722, baseType: !42, size: 32, offset: 1248)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4165, file: !4051, line: 723, baseType: !36, size: 64, offset: 1280)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4165, file: !4051, line: 726, baseType: !36, size: 64, offset: 1344)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4165, file: !4051, line: 729, baseType: !4092, size: 64, offset: 1408)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4165, file: !4051, line: 732, baseType: !4226, size: 192, offset: 1472)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4227, line: 19, size: 192, elements: !4228)
!4227 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4228 = !{!4229, !4230, !4231}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4226, file: !4227, line: 20, baseType: !1341, size: 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4226, file: !4227, line: 21, baseType: !7, size: 32, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4226, file: !4227, line: 22, baseType: !7, size: 32, offset: 160)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4165, file: !4051, line: 738, baseType: !117, size: 128, offset: 1664)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4165, file: !4051, line: 744, baseType: !4234, size: 64, offset: 1792)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4051, line: 580, size: 1728, elements: !4236)
!4236 = !{!4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4246, !4247, !4248, !4252, !4256, !4257, !4258, !4259, !4260, !4264, !4268, !4269}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4235, file: !4051, line: 586, baseType: !3294, size: 512)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4235, file: !4051, line: 587, baseType: !59, size: 64, offset: 512)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4235, file: !4051, line: 593, baseType: !55, size: 64, offset: 576)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4235, file: !4051, line: 596, baseType: !7, size: 32, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4235, file: !4051, line: 604, baseType: !7, size: 32, offset: 672)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4235, file: !4051, line: 610, baseType: !4164, size: 64, offset: 704)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4235, file: !4051, line: 611, baseType: !117, size: 128, offset: 768)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4235, file: !4051, line: 612, baseType: !4245, size: 64, offset: 896)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4235, file: !4051, line: 614, baseType: !2097, size: 64, offset: 960)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4235, file: !4051, line: 615, baseType: !2155, size: 64, offset: 1024)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4235, file: !4051, line: 621, baseType: !4249, size: 64, offset: 1088)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!344, !4055, !4234}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4235, file: !4051, line: 625, baseType: !4253, size: 64, offset: 1152)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!355, !4055, !4234}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4235, file: !4051, line: 628, baseType: !2136, size: 64, offset: 1216)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4235, file: !4051, line: 631, baseType: !2124, size: 64, offset: 1280)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4235, file: !4051, line: 632, baseType: !2132, size: 64, offset: 1344)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4235, file: !4051, line: 633, baseType: !2128, size: 64, offset: 1408)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4235, file: !4051, line: 640, baseType: !4261, size: 64, offset: 1472)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!42, !4055, !4234, !344}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4235, file: !4051, line: 645, baseType: !4265, size: 64, offset: 1536)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!42, !4055, !4234, !355}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4235, file: !4051, line: 654, baseType: !2163, size: 64, offset: 1600)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4235, file: !4051, line: 657, baseType: !2170, size: 64, offset: 1664)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4165, file: !4051, line: 745, baseType: !4234, size: 64, offset: 1856)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4165, file: !4051, line: 754, baseType: !7, size: 32, offset: 1920)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4056, file: !4051, line: 160, baseType: !1583, size: 128, offset: 128)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4056, file: !4051, line: 163, baseType: !117, size: 128, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4056, file: !4051, line: 164, baseType: !117, size: 128, offset: 384)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4056, file: !4051, line: 167, baseType: !117, size: 128, offset: 512)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4056, file: !4051, line: 173, baseType: !42, size: 32, offset: 640)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4056, file: !4051, line: 175, baseType: !7, size: 32, offset: 672)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4056, file: !4051, line: 183, baseType: !344, size: 64, offset: 704)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4056, file: !4051, line: 189, baseType: !69, size: 32, offset: 768)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4056, file: !4051, line: 192, baseType: !974, size: 256, offset: 832)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4056, file: !4051, line: 193, baseType: !4282, size: 448, offset: 1088)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !975, line: 120, size: 448, elements: !4283)
!4283 = !{!4284, !4285, !4286}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4282, file: !975, line: 121, baseType: !974, size: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4282, file: !975, line: 122, baseType: !629, size: 128, align: 64, offset: 256)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4282, file: !975, line: 125, baseType: !2509, size: 64, offset: 384)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4056, file: !4051, line: 199, baseType: !4055, size: 64, offset: 1536)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4050, file: !4051, line: 218, baseType: !292, size: 32, offset: 896)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4050, file: !4051, line: 226, baseType: !4049, size: 64, offset: 960)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4050, file: !4051, line: 229, baseType: !4059, size: 64, offset: 1024)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4050, file: !4051, line: 232, baseType: !42, size: 32, offset: 1088)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4050, file: !4051, line: 241, baseType: !117, size: 128, offset: 1152)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4050, file: !4051, line: 242, baseType: !117, size: 128, offset: 1280)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4050, file: !4051, line: 243, baseType: !117, size: 128, offset: 1408)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4050, file: !4051, line: 246, baseType: !117, size: 128, offset: 1536)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4050, file: !4051, line: 255, baseType: !4111, size: 1792, offset: 1664)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4050, file: !4051, line: 258, baseType: !117, size: 128, offset: 3456)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4050, file: !4051, line: 259, baseType: !117, size: 128, offset: 3584)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4050, file: !4051, line: 265, baseType: !701, size: 128, offset: 3712)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4050, file: !4051, line: 271, baseType: !117, size: 128, offset: 3840)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4050, file: !4051, line: 277, baseType: !117, size: 128, offset: 3968)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4050, file: !4051, line: 278, baseType: !117, size: 128, offset: 4096)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4050, file: !4051, line: 279, baseType: !117, size: 128, offset: 4224)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4050, file: !4051, line: 288, baseType: !4059, size: 64, offset: 4352)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4050, file: !4051, line: 289, baseType: !4059, size: 64, offset: 4416)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4050, file: !4051, line: 290, baseType: !4049, size: 64, offset: 4480)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4050, file: !4051, line: 293, baseType: !841, size: 8, offset: 4544)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4050, file: !4051, line: 296, baseType: !629, size: 128, align: 64, offset: 4608)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !276, file: !277, line: 1110, baseType: !4310, size: 64, offset: 15360)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4312, line: 93, size: 8768, elements: !4313)
!4312 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4313 = !{!4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4362, !4371, !4372, !4374, !4375, !4376, !4379, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4417, !4418, !4425, !4435, !4497, !4498, !4501, !4502, !4503, !4504, !4505, !4506}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4311, file: !4312, line: 94, baseType: !292, size: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4311, file: !4312, line: 95, baseType: !69, size: 32, offset: 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4311, file: !4312, line: 96, baseType: !42, size: 32, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4311, file: !4312, line: 97, baseType: !42, size: 32, offset: 96)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4311, file: !4312, line: 98, baseType: !117, size: 128, offset: 128)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4311, file: !4312, line: 100, baseType: !74, size: 192, offset: 256)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4311, file: !4312, line: 103, baseType: !275, size: 64, offset: 448)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4311, file: !4312, line: 106, baseType: !4322, size: 192, offset: 512)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4323, line: 32, size: 192, elements: !4324)
!4323 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4324 = !{!4325, !4326}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4322, file: !4323, line: 33, baseType: !117, size: 128)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4322, file: !4323, line: 34, baseType: !4327, size: 64, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4328, line: 25, baseType: !4329)
!4328 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4328, line: 23, size: 64, elements: !4330)
!4330 = !{!4331}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4329, file: !4328, line: 24, baseType: !544, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4311, file: !4312, line: 109, baseType: !697, size: 64, offset: 704)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4311, file: !4312, line: 112, baseType: !42, size: 32, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4311, file: !4312, line: 114, baseType: !42, size: 32, offset: 800)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4311, file: !4312, line: 115, baseType: !275, size: 64, offset: 832)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4311, file: !4312, line: 118, baseType: !42, size: 32, offset: 896)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4311, file: !4312, line: 119, baseType: !7, size: 32, offset: 928)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4311, file: !4312, line: 121, baseType: !4339, size: 64, offset: 960)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4312, line: 80, size: 448, elements: !4341)
!4341 = !{!4342, !4343, !4349}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4340, file: !4312, line: 81, baseType: !69, size: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4340, file: !4312, line: 82, baseType: !4344, size: 128, offset: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4312, line: 75, size: 128, elements: !4345)
!4345 = !{!4346, !4347}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4344, file: !4312, line: 76, baseType: !275, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4344, file: !4312, line: 77, baseType: !4348, size: 64, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4340, file: !4312, line: 83, baseType: !1013, size: 256, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4311, file: !4312, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4311, file: !4312, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4311, file: !4312, line: 138, baseType: !7, size: 32, offset: 1056)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4311, file: !4312, line: 139, baseType: !117, size: 128, offset: 1088)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4311, file: !4312, line: 142, baseType: !411, size: 512, offset: 1216)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4311, file: !4312, line: 143, baseType: !419, size: 64, offset: 1728)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4311, file: !4312, line: 150, baseType: !4357, size: 256, offset: 1792)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4358, size: 256, elements: !2336)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4312, line: 38, size: 128, elements: !4359)
!4359 = !{!4360, !4361}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4358, file: !4312, line: 39, baseType: !344, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4358, file: !4312, line: 40, baseType: !344, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4311, file: !4312, line: 156, baseType: !4363, size: 192, offset: 2048)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4312, line: 66, size: 192, elements: !4364)
!4364 = !{!4365}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4363, file: !4312, line: 67, baseType: !4366, size: 192)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4312, line: 47, size: 192, elements: !4367)
!4367 = !{!4368, !4369, !4370}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4366, file: !4312, line: 48, baseType: !644, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4366, file: !4312, line: 49, baseType: !644, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4366, file: !4312, line: 50, baseType: !644, size: 64, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4311, file: !4312, line: 160, baseType: !3970, size: 640, offset: 2240)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4311, file: !4312, line: 163, baseType: !4373, size: 256, offset: 2880)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 256, elements: !706)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4311, file: !4312, line: 169, baseType: !689, size: 64, offset: 3136)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4311, file: !4312, line: 172, baseType: !42, size: 32, offset: 3200)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4311, file: !4312, line: 174, baseType: !4377, size: 64, offset: 3264)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4312, line: 174, flags: DIFlagFwdDecl)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4311, file: !4312, line: 185, baseType: !4380, size: 64, offset: 3328)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !463, line: 860, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 853, size: 64, elements: !4382)
!4382 = !{!4383, !4384}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4381, file: !463, line: 858, baseType: !1113, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4381, file: !463, line: 859, baseType: !79, size: 32, offset: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4311, file: !4312, line: 186, baseType: !344, size: 64, offset: 3392)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4311, file: !4312, line: 186, baseType: !344, size: 64, offset: 3456)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4311, file: !4312, line: 186, baseType: !344, size: 64, offset: 3520)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4311, file: !4312, line: 186, baseType: !344, size: 64, offset: 3584)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4311, file: !4312, line: 187, baseType: !344, size: 64, offset: 3648)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4311, file: !4312, line: 188, baseType: !344, size: 64, offset: 3712)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4311, file: !4312, line: 189, baseType: !3958, size: 192, offset: 3776)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4311, file: !4312, line: 190, baseType: !59, size: 64, offset: 3968)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4311, file: !4312, line: 190, baseType: !59, size: 64, offset: 4032)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4311, file: !4312, line: 190, baseType: !59, size: 64, offset: 4096)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4311, file: !4312, line: 190, baseType: !59, size: 64, offset: 4160)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4311, file: !4312, line: 191, baseType: !59, size: 64, offset: 4224)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4311, file: !4312, line: 191, baseType: !59, size: 64, offset: 4288)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4311, file: !4312, line: 191, baseType: !59, size: 64, offset: 4352)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4311, file: !4312, line: 191, baseType: !59, size: 64, offset: 4416)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4311, file: !4312, line: 192, baseType: !59, size: 64, offset: 4480)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4311, file: !4312, line: 192, baseType: !59, size: 64, offset: 4544)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4311, file: !4312, line: 192, baseType: !59, size: 64, offset: 4608)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4311, file: !4312, line: 192, baseType: !59, size: 64, offset: 4672)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4311, file: !4312, line: 193, baseType: !59, size: 64, offset: 4736)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4311, file: !4312, line: 193, baseType: !59, size: 64, offset: 4800)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4311, file: !4312, line: 194, baseType: !4407, size: 448, offset: 4864)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4408, line: 12, size: 448, elements: !4409)
!4408 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4409 = !{!4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4407, file: !4408, line: 15, baseType: !344, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4407, file: !4408, line: 17, baseType: !344, size: 64, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4407, file: !4408, line: 19, baseType: !344, size: 64, offset: 128)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4407, file: !4408, line: 21, baseType: !344, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4407, file: !4408, line: 29, baseType: !344, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4407, file: !4408, line: 35, baseType: !344, size: 64, offset: 320)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4407, file: !4408, line: 44, baseType: !344, size: 64, offset: 384)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4311, file: !4312, line: 202, baseType: !346, size: 64, offset: 5312)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4311, file: !4312, line: 213, baseType: !4419, size: 2048, offset: 5376)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4420, size: 2048, elements: !3389)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4421, line: 43, size: 128, elements: !4422)
!4421 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4422 = !{!4423, !4424}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4420, file: !4421, line: 44, baseType: !58, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4420, file: !4421, line: 45, baseType: !58, size: 64, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4311, file: !4312, line: 216, baseType: !4426, size: 448, offset: 7424)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4312, line: 30, size: 448, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433, !4434}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4426, file: !4312, line: 31, baseType: !42, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4426, file: !4312, line: 32, baseType: !273, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4426, file: !4312, line: 33, baseType: !59, size: 64, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4426, file: !4312, line: 34, baseType: !344, size: 64, offset: 192)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4426, file: !4312, line: 34, baseType: !344, size: 64, offset: 256)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4426, file: !4312, line: 35, baseType: !59, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4426, file: !4312, line: 35, baseType: !59, size: 64, offset: 384)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4311, file: !4312, line: 219, baseType: !4436, size: 64, offset: 7872)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4438, line: 41, size: 3456, elements: !4439)
!4438 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4437, file: !4438, line: 47, baseType: !114, size: 16)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4437, file: !4438, line: 48, baseType: !287, size: 32, offset: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4437, file: !4438, line: 54, baseType: !105, size: 8, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4437, file: !4438, line: 55, baseType: !105, size: 8, offset: 72)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4437, file: !4438, line: 73, baseType: !345, size: 64, align: 64, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4437, file: !4438, line: 74, baseType: !345, size: 64, offset: 192)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4437, file: !4438, line: 81, baseType: !345, size: 64, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4437, file: !4438, line: 82, baseType: !345, size: 64, offset: 320)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4437, file: !4438, line: 85, baseType: !345, size: 64, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4437, file: !4438, line: 86, baseType: !345, size: 64, offset: 448)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4437, file: !4438, line: 94, baseType: !345, size: 64, offset: 512)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4437, file: !4438, line: 102, baseType: !345, size: 64, offset: 576)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4437, file: !4438, line: 107, baseType: !3379, size: 256, offset: 640)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4437, file: !4438, line: 108, baseType: !105, size: 8, align: 64, offset: 896)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4437, file: !4438, line: 110, baseType: !4455, size: 24, offset: 904)
!4455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !685)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4437, file: !4438, line: 111, baseType: !287, size: 32, align: 64, offset: 960)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4437, file: !4438, line: 113, baseType: !287, size: 32, offset: 992)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4437, file: !4438, line: 114, baseType: !287, size: 32, offset: 1024)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4437, file: !4438, line: 115, baseType: !287, size: 32, offset: 1056)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4437, file: !4438, line: 117, baseType: !287, size: 32, offset: 1088)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4437, file: !4438, line: 118, baseType: !345, size: 64, align: 64, offset: 1152)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4437, file: !4438, line: 120, baseType: !345, size: 64, offset: 1216)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4437, file: !4438, line: 121, baseType: !345, size: 64, offset: 1280)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4437, file: !4438, line: 122, baseType: !345, size: 64, offset: 1344)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4437, file: !4438, line: 123, baseType: !345, size: 64, offset: 1408)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4437, file: !4438, line: 133, baseType: !345, size: 64, offset: 1472)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4437, file: !4438, line: 137, baseType: !345, size: 64, offset: 1536)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4437, file: !4438, line: 142, baseType: !345, size: 64, offset: 1600)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4437, file: !4438, line: 143, baseType: !345, size: 64, offset: 1664)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4437, file: !4438, line: 146, baseType: !345, size: 64, offset: 1728)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4437, file: !4438, line: 147, baseType: !345, size: 64, offset: 1792)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4437, file: !4438, line: 148, baseType: !345, size: 64, offset: 1856)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4437, file: !4438, line: 149, baseType: !345, size: 64, offset: 1920)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4437, file: !4438, line: 154, baseType: !345, size: 64, offset: 1984)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4437, file: !4438, line: 155, baseType: !345, size: 64, offset: 2048)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4437, file: !4438, line: 156, baseType: !345, size: 64, offset: 2112)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4437, file: !4438, line: 158, baseType: !345, size: 64, offset: 2176)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4437, file: !4438, line: 159, baseType: !345, size: 64, offset: 2240)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4437, file: !4438, line: 162, baseType: !345, size: 64, offset: 2304)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4437, file: !4438, line: 163, baseType: !345, size: 64, offset: 2368)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4437, file: !4438, line: 164, baseType: !345, size: 64, offset: 2432)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4437, file: !4438, line: 167, baseType: !345, size: 64, offset: 2496)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4437, file: !4438, line: 168, baseType: !345, size: 64, offset: 2560)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4437, file: !4438, line: 171, baseType: !345, size: 64, offset: 2624)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4437, file: !4438, line: 172, baseType: !345, size: 64, offset: 2688)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4437, file: !4438, line: 175, baseType: !345, size: 64, offset: 2752)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4437, file: !4438, line: 178, baseType: !345, size: 64, offset: 2816)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4437, file: !4438, line: 179, baseType: !345, size: 64, offset: 2880)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4437, file: !4438, line: 182, baseType: !287, size: 32, offset: 2944)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4437, file: !4438, line: 186, baseType: !345, size: 64, align: 64, offset: 3008)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4437, file: !4438, line: 194, baseType: !345, size: 64, offset: 3072)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4437, file: !4438, line: 195, baseType: !345, size: 64, offset: 3136)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4437, file: !4438, line: 199, baseType: !345, size: 64, offset: 3200)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4437, file: !4438, line: 200, baseType: !345, size: 64, offset: 3264)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4437, file: !4438, line: 203, baseType: !345, size: 64, offset: 3328)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4437, file: !4438, line: 204, baseType: !345, size: 64, offset: 3392)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4311, file: !4312, line: 222, baseType: !7, size: 32, offset: 7936)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4311, file: !4312, line: 223, baseType: !4499, size: 64, offset: 8000)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4312, line: 223, flags: DIFlagFwdDecl)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4311, file: !4312, line: 230, baseType: !841, size: 8, offset: 8064)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4311, file: !4312, line: 231, baseType: !810, size: 16, offset: 8080)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4311, file: !4312, line: 232, baseType: !810, size: 16, offset: 8096)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4311, file: !4312, line: 234, baseType: !593, size: 64, offset: 8128)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4311, file: !4312, line: 237, baseType: !649, size: 256, offset: 8192)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4311, file: !4312, line: 243, baseType: !782, size: 320, offset: 8448)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !276, file: !277, line: 1111, baseType: !4508, size: 64, offset: 15424)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4312, line: 20, size: 16640, elements: !4510)
!4510 = !{!4511, !4512, !4513, !4514}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4509, file: !4312, line: 21, baseType: !79, size: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4509, file: !4312, line: 22, baseType: !292, size: 32, offset: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4509, file: !4312, line: 23, baseType: !74, size: 192, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4509, file: !4312, line: 24, baseType: !4515, size: 16384, offset: 256)
!4515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4516, size: 16384, elements: !1438)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4323, line: 51, size: 256, elements: !4517)
!4517 = !{!4518}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4516, file: !4323, line: 52, baseType: !4519, size: 256)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4323, line: 37, size: 256, elements: !4520)
!4520 = !{!4521, !4528, !4529, !4533}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4519, file: !4323, line: 39, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4523, line: 83, baseType: !4524)
!4523 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4523, line: 82, baseType: !4526)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !42}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4519, file: !4323, line: 40, baseType: !59, size: 64, offset: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4519, file: !4323, line: 46, baseType: !4530, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4523, line: 86, baseType: !4531)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4523, line: 85, baseType: !2552)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4519, file: !4323, line: 48, baseType: !4327, size: 64, offset: 192)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !276, file: !277, line: 1112, baseType: !4327, size: 64, offset: 15488)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !276, file: !277, line: 1113, baseType: !4327, size: 64, offset: 15552)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !276, file: !277, line: 1115, baseType: !4327, size: 64, offset: 15616)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !276, file: !277, line: 1116, baseType: !4322, size: 192, offset: 15680)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !276, file: !277, line: 1117, baseType: !59, size: 64, offset: 15872)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !276, file: !277, line: 1118, baseType: !55, size: 64, offset: 15936)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !276, file: !277, line: 1119, baseType: !7, size: 32, offset: 16000)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !276, file: !277, line: 1121, baseType: !632, size: 64, offset: 16064)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !276, file: !277, line: 1125, baseType: !4543, size: 64, offset: 16128)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !277, line: 43, flags: DIFlagFwdDecl)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !276, file: !277, line: 1127, baseType: !723, size: 32, offset: 16192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !276, file: !277, line: 1128, baseType: !7, size: 32, offset: 16224)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !276, file: !277, line: 1130, baseType: !4548, size: 128, offset: 16256)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4549, line: 37, size: 128, elements: !4550)
!4549 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4550 = !{!4551, !4552, !4553}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4548, file: !4549, line: 38, baseType: !42, size: 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4548, file: !4549, line: 39, baseType: !69, size: 32, offset: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4548, file: !4549, line: 40, baseType: !4554, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4549, line: 24, flags: DIFlagFwdDecl)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !276, file: !277, line: 1131, baseType: !4557, size: 256, offset: 16384)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4558, line: 12, size: 256, elements: !4559)
!4558 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4559 = !{!4560, !4561, !4562, !4563}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4557, file: !4558, line: 13, baseType: !852, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4557, file: !4558, line: 14, baseType: !59, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4557, file: !4558, line: 15, baseType: !59, size: 64, offset: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4557, file: !4558, line: 16, baseType: !841, size: 8, offset: 192)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !276, file: !277, line: 1134, baseType: !344, size: 64, offset: 16640)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !276, file: !277, line: 1135, baseType: !344, size: 64, offset: 16704)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !276, file: !277, line: 1138, baseType: !79, size: 32, offset: 16768)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !276, file: !277, line: 1141, baseType: !436, size: 32, offset: 16800)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !276, file: !277, line: 1143, baseType: !4569, size: 64, offset: 16832)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !277, line: 735, size: 64, elements: !4570)
!4570 = !{!4571}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4569, file: !277, line: 736, baseType: !4572, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !276, file: !277, line: 1147, baseType: !476, size: 128, offset: 16896)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !276, file: !277, line: 1149, baseType: !275, size: 64, offset: 17024)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !276, file: !277, line: 1151, baseType: !4576, size: 64, offset: 17088)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !277, line: 1151, flags: DIFlagFwdDecl)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !276, file: !277, line: 1188, baseType: !40, size: 64, offset: 17152)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !276, file: !277, line: 1191, baseType: !4580, size: 64, offset: 17216)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !277, line: 44, flags: DIFlagFwdDecl)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !276, file: !277, line: 1194, baseType: !4583, size: 64, offset: 17280)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !277, line: 45, flags: DIFlagFwdDecl)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !276, file: !277, line: 1197, baseType: !4586, size: 64, offset: 17344)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !277, line: 61, flags: DIFlagFwdDecl)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !276, file: !277, line: 1199, baseType: !4589, size: 64, offset: 17408)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2857, line: 99, size: 128, elements: !4591)
!4591 = !{!4592, !4593, !4594}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4590, file: !2857, line: 100, baseType: !642, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4590, file: !2857, line: 101, baseType: !69, size: 32, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4590, file: !2857, line: 103, baseType: !46, size: 16, offset: 96)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !276, file: !277, line: 1202, baseType: !4596, size: 64, offset: 17472)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !277, line: 48, flags: DIFlagFwdDecl)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !276, file: !277, line: 1205, baseType: !59, size: 64, offset: 17536)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !276, file: !277, line: 1206, baseType: !4600, size: 64, offset: 17600)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4323, line: 14, baseType: !4602)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4323, line: 12, size: 384, elements: !4603)
!4603 = !{!4604}
!4604 = !DIDerivedType(tag: DW_TAG_member, scope: !4602, file: !4323, line: 13, baseType: !4605, size: 384)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4602, file: !4323, line: 13, size: 384, elements: !4606)
!4606 = !{!4607, !4608, !4609, !4610}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4605, file: !4323, line: 13, baseType: !42, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4605, file: !4323, line: 13, baseType: !42, size: 32, offset: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4605, file: !4323, line: 13, baseType: !42, size: 32, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4605, file: !4323, line: 13, baseType: !4611, size: 256, offset: 128)
!4611 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4612, line: 37, size: 256, elements: !4613)
!4612 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4613 = !{!4614, !4619, !4632, !4638, !4647, !4674, !4679}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4611, file: !4612, line: 42, baseType: !4615, size: 64)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4612, line: 39, size: 64, elements: !4616)
!4616 = !{!4617, !4618}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4615, file: !4612, line: 40, baseType: !3935, size: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4615, file: !4612, line: 41, baseType: !729, size: 32, offset: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4611, file: !4612, line: 50, baseType: !4620, size: 192)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4612, line: 45, size: 192, elements: !4621)
!4621 = !{!4622, !4624, !4625, !4631}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4620, file: !4612, line: 46, baseType: !4623, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !57, line: 95, baseType: !42)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4620, file: !4612, line: 47, baseType: !42, size: 32, offset: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4620, file: !4612, line: 48, baseType: !4626, size: 64, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4612, line: 11, baseType: !4627)
!4627 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4612, line: 8, size: 64, elements: !4628)
!4628 = !{!4629, !4630}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4627, file: !4612, line: 9, baseType: !42, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4627, file: !4612, line: 10, baseType: !40, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4620, file: !4612, line: 49, baseType: !42, size: 32, offset: 128)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4611, file: !4612, line: 57, baseType: !4633, size: 128)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4612, line: 53, size: 128, elements: !4634)
!4634 = !{!4635, !4636, !4637}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4633, file: !4612, line: 54, baseType: !3935, size: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4633, file: !4612, line: 55, baseType: !729, size: 32, offset: 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4633, file: !4612, line: 56, baseType: !4626, size: 64, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4611, file: !4612, line: 66, baseType: !4639, size: 256)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4612, line: 60, size: 256, elements: !4640)
!4640 = !{!4641, !4642, !4643, !4644, !4646}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4639, file: !4612, line: 61, baseType: !3935, size: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4639, file: !4612, line: 62, baseType: !729, size: 32, offset: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4639, file: !4612, line: 63, baseType: !42, size: 32, offset: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4639, file: !4612, line: 64, baseType: !4645, size: 64, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !57, line: 94, baseType: !1296)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4639, file: !4612, line: 65, baseType: !4645, size: 64, offset: 192)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4611, file: !4612, line: 105, baseType: !4648, size: 256)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4612, line: 69, size: 256, elements: !4649)
!4649 = !{!4650, !4651}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4648, file: !4612, line: 70, baseType: !40, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, scope: !4648, file: !4612, line: 79, baseType: !4652, size: 192, offset: 64)
!4652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4648, file: !4612, line: 79, size: 192, elements: !4653)
!4653 = !{!4654, !4655, !4656, !4663, !4668}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4652, file: !4612, line: 81, baseType: !42, size: 32)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4652, file: !4612, line: 86, baseType: !810, size: 16)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4652, file: !4612, line: 92, baseType: !4657, size: 192)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4652, file: !4612, line: 88, size: 192, elements: !4658)
!4658 = !{!4659, !4661, !4662}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4657, file: !4612, line: 89, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !455)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4657, file: !4612, line: 90, baseType: !40, size: 64, offset: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4657, file: !4612, line: 91, baseType: !40, size: 64, offset: 128)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4652, file: !4612, line: 97, baseType: !4664, size: 96)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4652, file: !4612, line: 94, size: 96, elements: !4665)
!4665 = !{!4666, !4667}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4664, file: !4612, line: 95, baseType: !4660, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4664, file: !4612, line: 96, baseType: !287, size: 32, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4652, file: !4612, line: 103, baseType: !4669, size: 128)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4652, file: !4612, line: 99, size: 128, elements: !4670)
!4670 = !{!4671, !4672, !4673}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4669, file: !4612, line: 100, baseType: !59, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4669, file: !4612, line: 101, baseType: !287, size: 32, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4669, file: !4612, line: 102, baseType: !287, size: 32, offset: 96)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4611, file: !4612, line: 111, baseType: !4675, size: 128)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4612, line: 108, size: 128, elements: !4676)
!4676 = !{!4677, !4678}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4675, file: !4612, line: 109, baseType: !273, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4675, file: !4612, line: 110, baseType: !42, size: 32, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4611, file: !4612, line: 118, baseType: !4680, size: 128)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4611, file: !4612, line: 114, size: 128, elements: !4681)
!4681 = !{!4682, !4683, !4684}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4680, file: !4612, line: 115, baseType: !40, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4680, file: !4612, line: 116, baseType: !42, size: 32, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4680, file: !4612, line: 117, baseType: !7, size: 32, offset: 96)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !276, file: !277, line: 1208, baseType: !4407, size: 448, offset: 17664)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !276, file: !277, line: 1215, baseType: !344, size: 64, offset: 18112)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !276, file: !277, line: 1217, baseType: !344, size: 64, offset: 18176)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !276, file: !277, line: 1219, baseType: !344, size: 64, offset: 18240)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !276, file: !277, line: 1223, baseType: !4690, size: 64, offset: 18304)
!4690 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4691, line: 99, baseType: !4692)
!4691 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4691, line: 99, size: 64, elements: !4693)
!4693 = !{!4694}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4692, file: !4691, line: 99, baseType: !544, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !276, file: !277, line: 1225, baseType: !1113, size: 32, offset: 18368)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !276, file: !277, line: 1226, baseType: !42, size: 32, offset: 18400)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !276, file: !277, line: 1227, baseType: !42, size: 32, offset: 18432)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !276, file: !277, line: 1231, baseType: !4049, size: 64, offset: 18496)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !276, file: !277, line: 1233, baseType: !117, size: 128, offset: 18560)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !276, file: !277, line: 1240, baseType: !4701, size: 64, offset: 18688)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !277, line: 62, flags: DIFlagFwdDecl)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !276, file: !277, line: 1242, baseType: !4704, size: 64, offset: 18752)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !277, line: 1242, flags: DIFlagFwdDecl)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !276, file: !277, line: 1244, baseType: !117, size: 128, offset: 18816)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !276, file: !277, line: 1245, baseType: !4708, size: 64, offset: 18944)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !277, line: 51, flags: DIFlagFwdDecl)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !276, file: !277, line: 1246, baseType: !649, size: 256, offset: 19008)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !276, file: !277, line: 1247, baseType: !7, size: 32, offset: 19264)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !276, file: !277, line: 1250, baseType: !4713, size: 64, offset: 19328)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !277, line: 57, flags: DIFlagFwdDecl)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !276, file: !277, line: 1251, baseType: !649, size: 256, offset: 19392)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !276, file: !277, line: 1252, baseType: !117, size: 128, offset: 19648)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !276, file: !277, line: 1259, baseType: !1722, size: 64, offset: 19776)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !276, file: !277, line: 1260, baseType: !810, size: 16, offset: 19840)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !276, file: !277, line: 1261, baseType: !810, size: 16, offset: 19856)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !276, file: !277, line: 1314, baseType: !4721, size: 64, offset: 19904)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4723, line: 62, size: 256, align: 256, elements: !4724)
!4723 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4724 = !{!4725, !4726, !4727, !4728, !4729, !4730, !4731}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4722, file: !4723, line: 75, baseType: !287, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4722, file: !4723, line: 90, baseType: !287, size: 32, offset: 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4722, file: !4723, line: 112, baseType: !345, size: 64, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4722, file: !4723, line: 132, baseType: !287, size: 32, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4722, file: !4723, line: 140, baseType: !287, size: 32, offset: 160)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4722, file: !4723, line: 149, baseType: !287, size: 32, offset: 192)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4722, file: !4723, line: 154, baseType: !4732, offset: 224)
!4732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !719)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !276, file: !277, line: 1315, baseType: !286, size: 32, offset: 19968)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !276, file: !277, line: 1316, baseType: !286, size: 32, offset: 20000)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !276, file: !277, line: 1321, baseType: !59, size: 64, offset: 20032)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !276, file: !277, line: 1325, baseType: !42, size: 32, offset: 20096)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !276, file: !277, line: 1326, baseType: !42, size: 32, offset: 20128)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !276, file: !277, line: 1327, baseType: !42, size: 32, offset: 20160)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !276, file: !277, line: 1328, baseType: !42, size: 32, offset: 20192)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !276, file: !277, line: 1329, baseType: !629, size: 128, align: 64, offset: 20224)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !276, file: !277, line: 1332, baseType: !4742, size: 128, offset: 20352)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4743, line: 51, size: 128, elements: !4744)
!4743 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4744 = !{!4745, !4750, !4751}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4742, file: !4743, line: 60, baseType: !4746, size: 64)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4747, line: 7, size: 64, elements: !4748)
!4747 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4748 = !{!4749}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4746, file: !4747, line: 12, baseType: !541, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4742, file: !4743, line: 63, baseType: !841, size: 8, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4742, file: !4743, line: 70, baseType: !841, size: 8, offset: 72)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !276, file: !277, line: 1335, baseType: !3627, size: 64, offset: 20480)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !276, file: !277, line: 1337, baseType: !4754, size: 128, offset: 20544)
!4754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4743, line: 39, size: 128, elements: !4755)
!4755 = !{!4756, !4757, !4758}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4754, file: !4743, line: 40, baseType: !1519, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4754, file: !4743, line: 42, baseType: !287, size: 32, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4754, file: !4743, line: 43, baseType: !287, size: 32, offset: 96)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !276, file: !277, line: 1340, baseType: !4760, size: 64, offset: 20672)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !277, line: 69, flags: DIFlagFwdDecl)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !276, file: !277, line: 1351, baseType: !42, size: 32, offset: 20736)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !276, file: !277, line: 1352, baseType: !42, size: 32, offset: 20768)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !276, file: !277, line: 1354, baseType: !59, size: 64, offset: 20800)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !276, file: !277, line: 1364, baseType: !344, size: 64, offset: 20864)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !276, file: !277, line: 1365, baseType: !344, size: 64, offset: 20928)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !276, file: !277, line: 1412, baseType: !59, size: 64, offset: 20992)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !276, file: !277, line: 1453, baseType: !2852, size: 64, offset: 21056)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !276, file: !277, line: 1457, baseType: !4770, size: 64, offset: 21120)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !240, line: 61, size: 576, elements: !4772)
!4772 = !{!4773, !4774, !4793, !4796, !4797, !4830, !4840}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4771, file: !240, line: 62, baseType: !239, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, scope: !4771, file: !240, line: 64, baseType: !4775, size: 192, offset: 64)
!4775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4771, file: !240, line: 64, size: 192, elements: !4776)
!4776 = !{!4777, !4788}
!4777 = !DIDerivedType(tag: DW_TAG_member, scope: !4775, file: !240, line: 65, baseType: !4778, size: 192)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4775, file: !240, line: 65, size: 192, elements: !4779)
!4779 = !{!4780, !4787}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4778, file: !240, line: 66, baseType: !4781, size: 128)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4782, line: 50, size: 128, elements: !4783)
!4782 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4783 = !{!4784, !4785, !4786}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4781, file: !4782, line: 52, baseType: !59, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4781, file: !4782, line: 54, baseType: !7, size: 32, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4781, file: !4782, line: 55, baseType: !7, size: 32, offset: 96)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4778, file: !240, line: 67, baseType: !59, size: 64, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_member, scope: !4775, file: !240, line: 70, baseType: !4789, size: 192)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4775, file: !240, line: 70, size: 192, elements: !4790)
!4790 = !{!4791, !4792}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4789, file: !240, line: 71, baseType: !629, size: 128, align: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4789, file: !240, line: 72, baseType: !59, size: 64, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4771, file: !240, line: 76, baseType: !4794, size: 64, offset: 256)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !240, line: 76, flags: DIFlagFwdDecl)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4771, file: !240, line: 77, baseType: !59, size: 64, offset: 320)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4771, file: !240, line: 79, baseType: !4798, size: 64, offset: 384)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4782, line: 25, size: 256, elements: !4800)
!4800 = !{!4801, !4807, !4811}
!4801 = !DIDerivedType(tag: DW_TAG_member, scope: !4799, file: !4782, line: 26, baseType: !4802, size: 128)
!4802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4799, file: !4782, line: 26, size: 128, elements: !4803)
!4803 = !{!4804, !4806}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4802, file: !4782, line: 27, baseType: !4805, size: 128)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !3389)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4802, file: !4782, line: 28, baseType: !4805, size: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4799, file: !4782, line: 31, baseType: !4808, size: 64, offset: 128)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4810)
!4810 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4782, line: 23, flags: DIFlagFwdDecl)
!4811 = !DIDerivedType(tag: DW_TAG_member, scope: !4799, file: !4782, line: 33, baseType: !4812, size: 64, offset: 192)
!4812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4799, file: !4782, line: 33, size: 64, elements: !4813)
!4813 = !{!4814, !4820, !4825}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4812, file: !4782, line: 38, baseType: !4815, size: 64)
!4815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4812, file: !4782, line: 34, size: 64, elements: !4816)
!4816 = !{!4817, !4818, !4819}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4815, file: !4782, line: 35, baseType: !774, size: 32)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4815, file: !4782, line: 36, baseType: !103, size: 8, offset: 32)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4815, file: !4782, line: 37, baseType: !103, size: 8, offset: 40)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4812, file: !4782, line: 42, baseType: !4821, size: 16)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4812, file: !4782, line: 39, size: 16, elements: !4822)
!4822 = !{!4823, !4824}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4821, file: !4782, line: 40, baseType: !103, size: 8)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4821, file: !4782, line: 41, baseType: !103, size: 8, offset: 8)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4812, file: !4782, line: 46, baseType: !4826, size: 16)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4812, file: !4782, line: 43, size: 16, elements: !4827)
!4827 = !{!4828, !4829}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4826, file: !4782, line: 44, baseType: !103, size: 8)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4826, file: !4782, line: 45, baseType: !103, size: 8, offset: 8)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4771, file: !240, line: 81, baseType: !4831, size: 64, offset: 448)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !240, line: 85, size: 384, elements: !4833)
!4833 = !{!4834, !4835, !4836, !4837, !4838, !4839}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4832, file: !240, line: 86, baseType: !4794, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4832, file: !240, line: 87, baseType: !59, size: 64, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4832, file: !240, line: 88, baseType: !59, size: 64, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4832, file: !240, line: 89, baseType: !59, size: 64, offset: 192)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4832, file: !240, line: 90, baseType: !841, size: 8, offset: 256)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4832, file: !240, line: 92, baseType: !4831, size: 64, offset: 320)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4771, file: !240, line: 82, baseType: !7, size: 32, offset: 512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !276, file: !277, line: 1463, baseType: !4842, offset: 21184)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !277, line: 739, elements: !614)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !276, file: !277, line: 1470, baseType: !629, size: 128, align: 64, offset: 21184)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !276, file: !277, line: 1471, baseType: !292, size: 32, offset: 21312)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !276, file: !277, line: 1472, baseType: !42, size: 32, offset: 21344)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !276, file: !277, line: 1474, baseType: !275, size: 64, offset: 21376)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !276, file: !277, line: 1475, baseType: !2447, size: 320, offset: 21440)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !276, file: !277, line: 1478, baseType: !4849, size: 64, offset: 21760)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4851, line: 49, size: 512, elements: !4852)
!4851 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4852 = !{!4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4862}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4850, file: !4851, line: 50, baseType: !4849, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4850, file: !4851, line: 51, baseType: !40, size: 64, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4850, file: !4851, line: 52, baseType: !59, size: 64, offset: 128)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4850, file: !4851, line: 53, baseType: !59, size: 64, offset: 192)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4850, file: !4851, line: 54, baseType: !1914, size: 64, offset: 256)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4850, file: !4851, line: 56, baseType: !7, size: 32, offset: 320)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4850, file: !4851, line: 58, baseType: !7, size: 32, offset: 352)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4850, file: !4851, line: 59, baseType: !4861, size: 64, offset: 384)
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !45, line: 159, baseType: !344)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4850, file: !4851, line: 60, baseType: !2043, size: 64, offset: 448)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !276, file: !277, line: 1482, baseType: !292, size: 32, offset: 21824)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !276, file: !277, line: 1489, baseType: !40, size: 64, offset: 21888)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !276, file: !277, line: 1504, baseType: !40, size: 64, offset: 21952)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !276, file: !277, line: 1505, baseType: !345, size: 64, offset: 22016)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !276, file: !277, line: 1506, baseType: !344, size: 64, offset: 22080)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !276, file: !277, line: 1507, baseType: !345, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !276, file: !277, line: 1508, baseType: !345, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !276, file: !277, line: 1509, baseType: !345, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !276, file: !277, line: 1510, baseType: !629, size: 128, align: 64, offset: 22208)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !276, file: !277, line: 1511, baseType: !42, size: 32, offset: 22336)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !276, file: !277, line: 1515, baseType: !4874, size: 64, offset: 22400)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !306, line: 56, size: 64, elements: !4875)
!4875 = !{!4876}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4874, file: !306, line: 57, baseType: !309, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !276, file: !277, line: 1518, baseType: !4874, size: 64, offset: 22464)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !276, file: !277, line: 1528, baseType: !629, size: 128, align: 64, offset: 22528)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !276, file: !277, line: 1552, baseType: !4880, size: 35328, offset: 23040)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4881, line: 430, size: 35328, elements: !4882)
!4881 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4882 = !{!4883, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4912, !4913, !4914, !4915, !4916, !4917, !4920, !4921, !4922, !4923}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4880, file: !4881, line: 432, baseType: !4884, size: 192)
!4884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4885, size: 192, elements: !685)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4886, line: 16, size: 64, elements: !4887)
!4886 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4887 = !{!4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4885, file: !4886, line: 17, baseType: !113, size: 16)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4885, file: !4886, line: 18, baseType: !113, size: 16, offset: 16)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4885, file: !4886, line: 19, baseType: !113, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4885, file: !4886, line: 19, baseType: !113, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4885, file: !4886, line: 19, baseType: !113, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4885, file: !4886, line: 19, baseType: !113, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4885, file: !4886, line: 19, baseType: !113, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4885, file: !4886, line: 20, baseType: !113, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4885, file: !4886, line: 20, baseType: !113, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4885, file: !4886, line: 20, baseType: !113, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4885, file: !4886, line: 20, baseType: !113, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4885, file: !4886, line: 20, baseType: !113, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4885, file: !4886, line: 20, baseType: !113, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4880, file: !4881, line: 436, baseType: !59, size: 64, offset: 192)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4880, file: !4881, line: 440, baseType: !46, size: 16, offset: 256)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4880, file: !4881, line: 441, baseType: !46, size: 16, offset: 272)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4880, file: !4881, line: 442, baseType: !46, size: 16, offset: 288)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4880, file: !4881, line: 443, baseType: !46, size: 16, offset: 304)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4880, file: !4881, line: 447, baseType: !59, size: 64, offset: 320)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4880, file: !4881, line: 448, baseType: !59, size: 64, offset: 384)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4880, file: !4881, line: 459, baseType: !4909, size: 256, offset: 448)
!4909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4910, size: 256, elements: !706)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4881, line: 428, flags: DIFlagFwdDecl)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4880, file: !4881, line: 461, baseType: !59, size: 64, offset: 704)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4880, file: !4881, line: 463, baseType: !59, size: 64, offset: 768)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4880, file: !4881, line: 465, baseType: !59, size: 64, offset: 832)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4880, file: !4881, line: 466, baseType: !59, size: 64, offset: 896)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4880, file: !4881, line: 467, baseType: !59, size: 64, offset: 960)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4880, file: !4881, line: 473, baseType: !4918, size: 64, offset: 1024)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4881, line: 10, flags: DIFlagFwdDecl)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4880, file: !4881, line: 480, baseType: !59, size: 64, offset: 1088)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4880, file: !4881, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4880, file: !4881, line: 491, baseType: !286, size: 32, offset: 1184)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4880, file: !4881, line: 501, baseType: !4924, size: 33792, offset: 1536)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4925, line: 448, size: 33792, elements: !4926)
!4925 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4926 = !{!4927, !4928, !4929, !5089, !5090, !5096, !5097}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4924, file: !4925, line: 461, baseType: !7, size: 32)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4924, file: !4925, line: 468, baseType: !59, size: 64, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4924, file: !4925, line: 476, baseType: !4930, size: 64, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4925, line: 356, size: 33280, align: 512, elements: !4932)
!4932 = !{!4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4931, file: !4925, line: 358, baseType: !7, size: 32)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4931, file: !4925, line: 361, baseType: !7, size: 32, offset: 32)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4931, file: !4925, line: 364, baseType: !344, size: 64, offset: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4931, file: !4925, line: 367, baseType: !344, size: 64, offset: 128)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4931, file: !4925, line: 370, baseType: !344, size: 64, offset: 192)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4931, file: !4925, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4931, file: !4925, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4931, file: !4925, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4931, file: !4925, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4931, file: !4925, line: 397, baseType: !4943, size: 32768, offset: 512)
!4943 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4925, line: 348, size: 32768, elements: !4944)
!4944 = !{!4945, !4960, !4997, !5074, !5087}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4943, file: !4925, line: 349, baseType: !4946, size: 896)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4925, line: 12, size: 896, elements: !4947)
!4947 = !{!4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4959}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4946, file: !4925, line: 13, baseType: !286, size: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4946, file: !4925, line: 14, baseType: !286, size: 32, offset: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4946, file: !4925, line: 15, baseType: !286, size: 32, offset: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4946, file: !4925, line: 16, baseType: !286, size: 32, offset: 96)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4946, file: !4925, line: 17, baseType: !286, size: 32, offset: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4946, file: !4925, line: 18, baseType: !286, size: 32, offset: 160)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4946, file: !4925, line: 19, baseType: !286, size: 32, offset: 192)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4946, file: !4925, line: 22, baseType: !4956, size: 640, offset: 224)
!4956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 640, elements: !4957)
!4957 = !{!4958}
!4958 = !DISubrange(count: 20)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4946, file: !4925, line: 25, baseType: !286, size: 32, offset: 864)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4943, file: !4925, line: 350, baseType: !4961, size: 4096, align: 128)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4925, line: 34, size: 4096, align: 128, elements: !4962)
!4962 = !{!4963, !4964, !4965, !4966, !4967, !4982, !4983, !4984, !4986, !4988, !4992}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4961, file: !4925, line: 35, baseType: !113, size: 16)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4961, file: !4925, line: 36, baseType: !113, size: 16, offset: 16)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4961, file: !4925, line: 37, baseType: !113, size: 16, offset: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4961, file: !4925, line: 38, baseType: !113, size: 16, offset: 48)
!4967 = !DIDerivedType(tag: DW_TAG_member, scope: !4961, file: !4925, line: 39, baseType: !4968, size: 128, offset: 64)
!4968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4961, file: !4925, line: 39, size: 128, elements: !4969)
!4969 = !{!4970, !4975}
!4970 = !DIDerivedType(tag: DW_TAG_member, scope: !4968, file: !4925, line: 40, baseType: !4971, size: 128)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4968, file: !4925, line: 40, size: 128, elements: !4972)
!4972 = !{!4973, !4974}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4971, file: !4925, line: 41, baseType: !344, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4971, file: !4925, line: 42, baseType: !344, size: 64, offset: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, scope: !4968, file: !4925, line: 44, baseType: !4976, size: 128)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4968, file: !4925, line: 44, size: 128, elements: !4977)
!4977 = !{!4978, !4979, !4980, !4981}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4976, file: !4925, line: 45, baseType: !286, size: 32)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4976, file: !4925, line: 46, baseType: !286, size: 32, offset: 32)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4976, file: !4925, line: 47, baseType: !286, size: 32, offset: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4976, file: !4925, line: 48, baseType: !286, size: 32, offset: 96)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4961, file: !4925, line: 51, baseType: !286, size: 32, offset: 192)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4961, file: !4925, line: 52, baseType: !286, size: 32, offset: 224)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4961, file: !4925, line: 55, baseType: !4985, size: 1024, offset: 256)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 1024, elements: !3380)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4961, file: !4925, line: 58, baseType: !4987, size: 2048, offset: 1280)
!4987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 2048, elements: !1438)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4961, file: !4925, line: 60, baseType: !4989, size: 384, offset: 3328)
!4989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 384, elements: !4990)
!4990 = !{!4991}
!4991 = !DISubrange(count: 12)
!4992 = !DIDerivedType(tag: DW_TAG_member, scope: !4961, file: !4925, line: 62, baseType: !4993, size: 384, offset: 3712)
!4993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4961, file: !4925, line: 62, size: 384, elements: !4994)
!4994 = !{!4995, !4996}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4993, file: !4925, line: 63, baseType: !4989, size: 384)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4993, file: !4925, line: 64, baseType: !4989, size: 384)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4943, file: !4925, line: 351, baseType: !4998, size: 1088)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4925, line: 79, size: 1088, elements: !4999)
!4999 = !{!5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5073}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4998, file: !4925, line: 80, baseType: !286, size: 32)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4998, file: !4925, line: 81, baseType: !286, size: 32, offset: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4998, file: !4925, line: 82, baseType: !286, size: 32, offset: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4998, file: !4925, line: 83, baseType: !286, size: 32, offset: 96)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4998, file: !4925, line: 84, baseType: !286, size: 32, offset: 128)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4998, file: !4925, line: 85, baseType: !286, size: 32, offset: 160)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4998, file: !4925, line: 86, baseType: !286, size: 32, offset: 192)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4998, file: !4925, line: 88, baseType: !4956, size: 640, offset: 224)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4998, file: !4925, line: 89, baseType: !103, size: 8, offset: 864)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4998, file: !4925, line: 90, baseType: !103, size: 8, offset: 872)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4998, file: !4925, line: 91, baseType: !103, size: 8, offset: 880)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4998, file: !4925, line: 92, baseType: !103, size: 8, offset: 888)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4998, file: !4925, line: 93, baseType: !103, size: 8, offset: 896)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4998, file: !4925, line: 94, baseType: !103, size: 8, offset: 904)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4998, file: !4925, line: 95, baseType: !5015, size: 64, offset: 960)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5017, line: 11, size: 128, elements: !5018)
!5017 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5018 = !{!5019, !5020}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5016, file: !5017, line: 12, baseType: !273, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5016, file: !5017, line: 13, baseType: !5021, size: 64, offset: 64)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5023, line: 103, size: 1344, elements: !5024)
!5023 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5024 = !{!5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5053, !5054, !5055}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5022, file: !5023, line: 109, baseType: !59, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5022, file: !5023, line: 110, baseType: !59, size: 64, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5022, file: !5023, line: 111, baseType: !59, size: 64, offset: 128)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5022, file: !5023, line: 112, baseType: !59, size: 64, offset: 192)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5022, file: !5023, line: 113, baseType: !59, size: 64, offset: 256)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5022, file: !5023, line: 114, baseType: !59, size: 64, offset: 320)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5022, file: !5023, line: 117, baseType: !59, size: 64, offset: 384)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5022, file: !5023, line: 118, baseType: !59, size: 64, offset: 448)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5022, file: !5023, line: 119, baseType: !59, size: 64, offset: 512)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5022, file: !5023, line: 120, baseType: !59, size: 64, offset: 576)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5022, file: !5023, line: 121, baseType: !59, size: 64, offset: 640)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5022, file: !5023, line: 122, baseType: !59, size: 64, offset: 704)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5022, file: !5023, line: 123, baseType: !59, size: 64, offset: 768)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5022, file: !5023, line: 124, baseType: !59, size: 64, offset: 832)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5022, file: !5023, line: 125, baseType: !59, size: 64, offset: 896)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5022, file: !5023, line: 139, baseType: !59, size: 64, offset: 960)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5022, file: !5023, line: 142, baseType: !59, size: 64, offset: 1024)
!5042 = !DIDerivedType(tag: DW_TAG_member, scope: !5022, file: !5023, line: 144, baseType: !5043, size: 64, offset: 1088)
!5043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5022, file: !5023, line: 144, size: 64, elements: !5044)
!5044 = !{!5045, !5046, !5047}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5043, file: !5023, line: 146, baseType: !113, size: 16)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5043, file: !5023, line: 148, baseType: !344, size: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5043, file: !5023, line: 150, baseType: !5048, size: 64)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5023, line: 59, size: 64, elements: !5049)
!5049 = !{!5050, !5051, !5052}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5048, file: !5023, line: 61, baseType: !344, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5048, file: !5023, line: 63, baseType: !344, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5048, file: !5023, line: 65, baseType: !344, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5022, file: !5023, line: 153, baseType: !59, size: 64, offset: 1152)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5022, file: !5023, line: 154, baseType: !59, size: 64, offset: 1216)
!5055 = !DIDerivedType(tag: DW_TAG_member, scope: !5022, file: !5023, line: 156, baseType: !5056, size: 64, offset: 1280)
!5056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5022, file: !5023, line: 156, size: 64, elements: !5057)
!5057 = !{!5058, !5059, !5060}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5056, file: !5023, line: 158, baseType: !113, size: 16)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5056, file: !5023, line: 160, baseType: !344, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5056, file: !5023, line: 162, baseType: !5061, size: 64)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5023, line: 69, size: 64, elements: !5062)
!5062 = !{!5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5061, file: !5023, line: 71, baseType: !344, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5061, file: !5023, line: 73, baseType: !344, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5061, file: !5023, line: 75, baseType: !344, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5061, file: !5023, line: 77, baseType: !344, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5061, file: !5023, line: 80, baseType: !344, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5061, file: !5023, line: 83, baseType: !344, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5061, file: !5023, line: 86, baseType: !344, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5061, file: !5023, line: 88, baseType: !344, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5061, file: !5023, line: 93, baseType: !344, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5061, file: !5023, line: 100, baseType: !344, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4998, file: !4925, line: 96, baseType: !286, size: 32, offset: 1024)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4943, file: !4925, line: 352, baseType: !5075, size: 4608, align: 512)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4925, line: 333, size: 4608, align: 512, elements: !5076)
!5076 = !{!5077, !5078, !5085}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5075, file: !4925, line: 334, baseType: !4961, size: 4096, align: 128)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5075, file: !4925, line: 335, baseType: !5079, size: 512, offset: 4096)
!5079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4925, line: 312, size: 512, elements: !5080)
!5080 = !{!5081, !5082, !5083}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5079, file: !4925, line: 313, baseType: !344, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5079, file: !4925, line: 314, baseType: !344, size: 64, offset: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5079, file: !4925, line: 315, baseType: !5084, size: 384, offset: 128)
!5084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 384, elements: !828)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5075, file: !4925, line: 336, baseType: !5086, offset: 4608)
!5086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !719)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4943, file: !4925, line: 353, baseType: !5088, size: 32768)
!5088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32768, elements: !4106)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4924, file: !4925, line: 484, baseType: !4930, size: 64, offset: 192)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4924, file: !4925, line: 491, baseType: !5091, size: 128, offset: 256)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4925, line: 404, size: 128, elements: !5092)
!5092 = !{!5093, !5094, !5095}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5091, file: !4925, line: 424, baseType: !344, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5091, file: !4925, line: 432, baseType: !7, size: 32, offset: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5091, file: !4925, line: 440, baseType: !7, size: 32, offset: 96)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4924, file: !4925, line: 498, baseType: !5091, size: 128, offset: 384)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4924, file: !4925, line: 508, baseType: !4931, size: 33280, align: 512, offset: 512)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!5100 = !{!0, !5101, !5103, !5139, !5142, !5144, !5146, !5148, !5150, !5155, !5157, !5159, !5161, !5163, !5165, !5167, !5169, !5171, !5173, !5178}
!5101 = !DIGlobalVariableExpression(var: !5102, expr: !DIExpression())
!5102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_destroy330", scope: !2, file: !3, line: 183, type: !40, isLocal: true, isDefinition: true)
!5103 = !DIGlobalVariableExpression(var: !5104, expr: !DIExpression())
!5104 = distinct !DIGlobalVariable(name: "__key", scope: !5105, file: !3, line: 194, type: !2558, isLocal: true, isDefinition: true)
!5105 = distinct !DISubprogram(name: "mempool_init_node", scope: !3, file: !3, line: 185, type: !5106, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5129)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!42, !5108, !42, !5119, !5124, !40, !269, !42}
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !5110, line: 26, baseType: !5111)
!5110 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !5110, line: 16, size: 576, elements: !5112)
!5112 = !{!5113, !5114, !5115, !5116, !5117, !5118, !5123, !5128}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5111, file: !5110, line: 17, baseType: !79, size: 32)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !5111, file: !5110, line: 18, baseType: !42, size: 32, offset: 32)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !5111, file: !5110, line: 19, baseType: !42, size: 32, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !5111, file: !5110, line: 20, baseType: !1915, size: 64, offset: 128)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !5111, file: !5110, line: 22, baseType: !40, size: 64, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5111, file: !5110, line: 23, baseType: !5119, size: 64, offset: 256)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !5110, line: 13, baseType: !5121)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!40, !269, !40}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5111, file: !5110, line: 24, baseType: !5124, size: 64, offset: 320)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !5110, line: 14, baseType: !5126)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !40, !40}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5111, file: !5110, line: 25, baseType: !74, size: 192, offset: 384)
!5129 = !{!5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137}
!5130 = !DILocalVariable(name: "pool", arg: 1, scope: !5105, file: !3, line: 185, type: !5108)
!5131 = !DILocalVariable(name: "min_nr", arg: 2, scope: !5105, file: !3, line: 185, type: !42)
!5132 = !DILocalVariable(name: "alloc_fn", arg: 3, scope: !5105, file: !3, line: 185, type: !5119)
!5133 = !DILocalVariable(name: "free_fn", arg: 4, scope: !5105, file: !3, line: 186, type: !5124)
!5134 = !DILocalVariable(name: "pool_data", arg: 5, scope: !5105, file: !3, line: 186, type: !40)
!5135 = !DILocalVariable(name: "gfp_mask", arg: 6, scope: !5105, file: !3, line: 187, type: !269)
!5136 = !DILocalVariable(name: "node_id", arg: 7, scope: !5105, file: !3, line: 187, type: !42)
!5137 = !DILocalVariable(name: "element", scope: !5138, file: !3, line: 205, type: !40)
!5138 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 204, column: 39)
!5139 = !DIGlobalVariableExpression(var: !5140, expr: !DIExpression())
!5140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !5141, isLocal: true, isDefinition: true)
!5141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 96, elements: !4990)
!5142 = !DIGlobalVariableExpression(var: !5143, expr: !DIExpression())
!5143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_init_node331", scope: !2, file: !3, line: 217, type: !40, isLocal: true, isDefinition: true)
!5144 = !DIGlobalVariableExpression(var: !5145, expr: !DIExpression())
!5145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_init332", scope: !2, file: !3, line: 240, type: !40, isLocal: true, isDefinition: true)
!5146 = !DIGlobalVariableExpression(var: !5147, expr: !DIExpression())
!5147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_create333", scope: !2, file: !3, line: 264, type: !40, isLocal: true, isDefinition: true)
!5148 = !DIGlobalVariableExpression(var: !5149, expr: !DIExpression())
!5149 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_create_node334", scope: !2, file: !3, line: 284, type: !40, isLocal: true, isDefinition: true)
!5150 = !DIGlobalVariableExpression(var: !5151, expr: !DIExpression())
!5151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 310, type: !5152, isLocal: true, isDefinition: true)
!5152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 104, elements: !5153)
!5153 = !{!5154}
!5154 = !DISubrange(count: 13)
!5155 = !DIGlobalVariableExpression(var: !5156, expr: !DIExpression())
!5156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_resize335", scope: !2, file: !3, line: 364, type: !40, isLocal: true, isDefinition: true)
!5157 = !DIGlobalVariableExpression(var: !5158, expr: !DIExpression())
!5158 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_alloc336", scope: !2, file: !3, line: 447, type: !40, isLocal: true, isDefinition: true)
!5159 = !DIGlobalVariableExpression(var: !5160, expr: !DIExpression())
!5160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_free338", scope: !2, file: !3, line: 509, type: !40, isLocal: true, isDefinition: true)
!5161 = !DIGlobalVariableExpression(var: !5162, expr: !DIExpression())
!5162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_alloc_slab339", scope: !2, file: !3, line: 520, type: !40, isLocal: true, isDefinition: true)
!5163 = !DIGlobalVariableExpression(var: !5164, expr: !DIExpression())
!5164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_free_slab340", scope: !2, file: !3, line: 527, type: !40, isLocal: true, isDefinition: true)
!5165 = !DIGlobalVariableExpression(var: !5166, expr: !DIExpression())
!5166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_kmalloc341", scope: !2, file: !3, line: 538, type: !40, isLocal: true, isDefinition: true)
!5167 = !DIGlobalVariableExpression(var: !5168, expr: !DIExpression())
!5168 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_kfree342", scope: !2, file: !3, line: 544, type: !40, isLocal: true, isDefinition: true)
!5169 = !DIGlobalVariableExpression(var: !5170, expr: !DIExpression())
!5170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_alloc_pages343", scope: !2, file: !3, line: 555, type: !40, isLocal: true, isDefinition: true)
!5171 = !DIGlobalVariableExpression(var: !5172, expr: !DIExpression())
!5172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mempool_free_pages344", scope: !2, file: !3, line: 562, type: !40, isLocal: true, isDefinition: true)
!5173 = !DIGlobalVariableExpression(var: !5174, expr: !DIExpression())
!5174 = distinct !DIGlobalVariable(scope: null, file: !259, line: 480, type: !5175, isLocal: true, isDefinition: true)
!5175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 168, elements: !5176)
!5176 = !{!5177}
!5177 = !DISubrange(count: 21)
!5178 = !DIGlobalVariableExpression(var: !5179, expr: !DIExpression())
!5179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !5180, file: !5181, line: 112, type: !40, isLocal: true, isDefinition: true)
!5180 = distinct !DISubprogram(name: "might_resched", scope: !5181, file: !5181, line: 110, type: !2552, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5181 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5182 = !{i32 7, !"Dwarf Version", i32 5}
!5183 = !{i32 2, !"Debug Info Version", i32 3}
!5184 = !{i32 1, !"wchar_size", i32 2}
!5185 = !{i32 8, !"cf-protection-branch", i32 1}
!5186 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5187 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5188 = !{i32 1, !"Code Model", i32 2}
!5189 = !{i32 1, !"override-stack-alignment", i32 8}
!5190 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5191 = distinct !DISubprogram(name: "mempool_exit", scope: !3, file: !3, line: 156, type: !5192, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5194)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{null, !5108}
!5194 = !{!5195, !5196}
!5195 = !DILocalVariable(name: "pool", arg: 1, scope: !5191, file: !3, line: 156, type: !5108)
!5196 = !DILocalVariable(name: "element", scope: !5197, file: !3, line: 159, type: !40)
!5197 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 158, column: 24)
!5198 = !DILocation(line: 156, column: 30, scope: !5191)
!5199 = !DILocation(line: 158, column: 2, scope: !5191)
!5200 = !DILocation(line: 158, column: 9, scope: !5191)
!5201 = !DILocation(line: 158, column: 15, scope: !5191)
!5202 = !DILocation(line: 159, column: 3, scope: !5197)
!5203 = !DILocation(line: 159, column: 9, scope: !5197)
!5204 = !DILocation(line: 159, column: 34, scope: !5197)
!5205 = !DILocation(line: 159, column: 19, scope: !5197)
!5206 = !DILocation(line: 160, column: 3, scope: !5197)
!5207 = !DILocation(line: 160, column: 9, scope: !5197)
!5208 = !DILocation(line: 160, column: 14, scope: !5197)
!5209 = !DILocation(line: 160, column: 23, scope: !5197)
!5210 = !DILocation(line: 160, column: 29, scope: !5197)
!5211 = !DILocation(line: 161, column: 2, scope: !5191)
!5212 = distinct !{!5212, !5199, !5211, !5213, !5214}
!5213 = !{!"llvm.loop.mustprogress"}
!5214 = !{!"llvm.loop.unroll.disable"}
!5215 = !DILocation(line: 162, column: 8, scope: !5191)
!5216 = !DILocation(line: 162, column: 14, scope: !5191)
!5217 = !DILocation(line: 162, column: 2, scope: !5191)
!5218 = !DILocation(line: 163, column: 2, scope: !5191)
!5219 = !DILocation(line: 163, column: 8, scope: !5191)
!5220 = !DILocation(line: 163, column: 17, scope: !5191)
!5221 = !DILocation(line: 164, column: 1, scope: !5191)
!5222 = distinct !DISubprogram(name: "remove_element", scope: !3, file: !3, line: 135, type: !5223, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5225)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!40, !5108}
!5225 = !{!5226, !5227}
!5226 = !DILocalVariable(name: "pool", arg: 1, scope: !5222, file: !3, line: 135, type: !5108)
!5227 = !DILocalVariable(name: "element", scope: !5222, file: !3, line: 137, type: !40)
!5228 = !DILocation(line: 135, column: 40, scope: !5222)
!5229 = !DILocation(line: 137, column: 2, scope: !5222)
!5230 = !DILocation(line: 137, column: 8, scope: !5222)
!5231 = !DILocation(line: 137, column: 18, scope: !5222)
!5232 = !DILocation(line: 137, column: 24, scope: !5222)
!5233 = !DILocation(line: 137, column: 35, scope: !5222)
!5234 = !DILocation(line: 137, column: 41, scope: !5222)
!5235 = !DILocation(line: 137, column: 33, scope: !5222)
!5236 = !DILocation(line: 139, column: 2, scope: !5222)
!5237 = !DILocation(line: 139, column: 2, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 139, column: 2)
!5239 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 139, column: 2)
!5240 = !DILocation(line: 139, column: 2, scope: !5239)
!5241 = !DILocation(line: 139, column: 2, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 139, column: 2)
!5243 = !DILocation(line: 139, column: 2, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 139, column: 2)
!5245 = !DILocation(line: 139, column: 2, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 139, column: 2)
!5247 = !{i64 2155078292, i64 2155078321, i64 2155078367, i64 2155078425, i64 2155078479, i64 2155078533, i64 2155078588, i64 2155078619}
!5248 = !DILocation(line: 140, column: 25, scope: !5222)
!5249 = !DILocation(line: 140, column: 31, scope: !5222)
!5250 = !DILocation(line: 140, column: 2, scope: !5222)
!5251 = !DILocation(line: 141, column: 16, scope: !5222)
!5252 = !DILocation(line: 141, column: 22, scope: !5222)
!5253 = !DILocation(line: 141, column: 2, scope: !5222)
!5254 = !DILocation(line: 142, column: 9, scope: !5222)
!5255 = !DILocation(line: 143, column: 1, scope: !5222)
!5256 = !DILocation(line: 142, column: 2, scope: !5222)
!5257 = !DISubprogram(name: "kfree", scope: !259, file: !259, line: 227, type: !5258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{null, !2043}
!5260 = distinct !DISubprogram(name: "mempool_destroy", scope: !3, file: !3, line: 175, type: !5192, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5261)
!5261 = !{!5262}
!5262 = !DILocalVariable(name: "pool", arg: 1, scope: !5260, file: !3, line: 175, type: !5108)
!5263 = !DILocation(line: 175, column: 33, scope: !5260)
!5264 = !DILocation(line: 177, column: 6, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 177, column: 6)
!5266 = !DILocation(line: 177, column: 6, scope: !5260)
!5267 = !DILocation(line: 178, column: 3, scope: !5265)
!5268 = !DILocation(line: 180, column: 15, scope: !5260)
!5269 = !DILocation(line: 180, column: 2, scope: !5260)
!5270 = !DILocation(line: 181, column: 8, scope: !5260)
!5271 = !DILocation(line: 181, column: 2, scope: !5260)
!5272 = !DILocation(line: 182, column: 1, scope: !5260)
!5273 = !DILocation(line: 185, column: 34, scope: !5105)
!5274 = !DILocation(line: 185, column: 44, scope: !5105)
!5275 = !DILocation(line: 185, column: 69, scope: !5105)
!5276 = !DILocation(line: 186, column: 25, scope: !5105)
!5277 = !DILocation(line: 186, column: 40, scope: !5105)
!5278 = !DILocation(line: 187, column: 15, scope: !5105)
!5279 = !DILocation(line: 187, column: 29, scope: !5105)
!5280 = !DILocation(line: 189, column: 2, scope: !5105)
!5281 = !DILocation(line: 189, column: 2, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 189, column: 2)
!5283 = !DILocation(line: 190, column: 17, scope: !5105)
!5284 = !DILocation(line: 190, column: 2, scope: !5105)
!5285 = !DILocation(line: 190, column: 8, scope: !5105)
!5286 = !DILocation(line: 190, column: 15, scope: !5105)
!5287 = !DILocation(line: 191, column: 20, scope: !5105)
!5288 = !DILocation(line: 191, column: 2, scope: !5105)
!5289 = !DILocation(line: 191, column: 8, scope: !5105)
!5290 = !DILocation(line: 191, column: 18, scope: !5105)
!5291 = !DILocation(line: 192, column: 16, scope: !5105)
!5292 = !DILocation(line: 192, column: 2, scope: !5105)
!5293 = !DILocation(line: 192, column: 8, scope: !5105)
!5294 = !DILocation(line: 192, column: 14, scope: !5105)
!5295 = !DILocation(line: 193, column: 15, scope: !5105)
!5296 = !DILocation(line: 193, column: 2, scope: !5105)
!5297 = !DILocation(line: 193, column: 8, scope: !5105)
!5298 = !DILocation(line: 193, column: 13, scope: !5105)
!5299 = !DILocation(line: 194, column: 2, scope: !5105)
!5300 = !DILocation(line: 194, column: 2, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 194, column: 2)
!5302 = !DILocation(line: 196, column: 38, scope: !5105)
!5303 = !DILocation(line: 197, column: 10, scope: !5105)
!5304 = !DILocation(line: 197, column: 20, scope: !5105)
!5305 = !DILocation(line: 196, column: 19, scope: !5105)
!5306 = !DILocation(line: 196, column: 2, scope: !5105)
!5307 = !DILocation(line: 196, column: 8, scope: !5105)
!5308 = !DILocation(line: 196, column: 17, scope: !5105)
!5309 = !DILocation(line: 198, column: 7, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 198, column: 6)
!5311 = !DILocation(line: 198, column: 13, scope: !5310)
!5312 = !DILocation(line: 198, column: 6, scope: !5105)
!5313 = !DILocation(line: 199, column: 3, scope: !5310)
!5314 = !DILocation(line: 204, column: 2, scope: !5105)
!5315 = !DILocation(line: 204, column: 9, scope: !5105)
!5316 = !DILocation(line: 204, column: 15, scope: !5105)
!5317 = !DILocation(line: 204, column: 25, scope: !5105)
!5318 = !DILocation(line: 204, column: 31, scope: !5105)
!5319 = !DILocation(line: 204, column: 23, scope: !5105)
!5320 = !DILocation(line: 205, column: 3, scope: !5138)
!5321 = !DILocation(line: 205, column: 9, scope: !5138)
!5322 = !DILocation(line: 207, column: 13, scope: !5138)
!5323 = !DILocation(line: 207, column: 19, scope: !5138)
!5324 = !DILocation(line: 207, column: 25, scope: !5138)
!5325 = !DILocation(line: 207, column: 35, scope: !5138)
!5326 = !DILocation(line: 207, column: 41, scope: !5138)
!5327 = !DILocation(line: 207, column: 11, scope: !5138)
!5328 = !DILocation(line: 208, column: 7, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 208, column: 7)
!5330 = !DILocation(line: 208, column: 7, scope: !5138)
!5331 = !DILocation(line: 209, column: 17, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 208, column: 27)
!5333 = !DILocation(line: 209, column: 4, scope: !5332)
!5334 = !DILocation(line: 210, column: 4, scope: !5332)
!5335 = !DILocation(line: 212, column: 15, scope: !5138)
!5336 = !DILocation(line: 212, column: 21, scope: !5138)
!5337 = !DILocation(line: 212, column: 3, scope: !5138)
!5338 = !DILocation(line: 213, column: 2, scope: !5105)
!5339 = distinct !{!5339, !5314, !5338, !5213, !5214}
!5340 = !DILocation(line: 215, column: 2, scope: !5105)
!5341 = !DILocation(line: 216, column: 1, scope: !5105)
!5342 = distinct !DISubprogram(name: "spinlock_check", scope: !5343, file: !5343, line: 324, type: !5344, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5347)
!5343 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!5346, !1773}
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!5347 = !{!5348}
!5348 = !DILocalVariable(name: "lock", arg: 1, scope: !5342, file: !5343, line: 324, type: !1773)
!5349 = !DILocation(line: 324, column: 67, scope: !5342)
!5350 = !DILocation(line: 326, column: 10, scope: !5342)
!5351 = !DILocation(line: 326, column: 16, scope: !5342)
!5352 = !DILocation(line: 326, column: 2, scope: !5342)
!5353 = !DISubprogram(name: "__init_waitqueue_head", scope: !75, file: !75, line: 64, type: !5354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{null, !5356, !36, !5357}
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!5358 = distinct !DISubprogram(name: "kmalloc_array_node", scope: !259, file: !259, line: 689, type: !5359, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!40, !55, !55, !269, !42}
!5361 = !{!5362, !5363, !5364, !5365, !5366}
!5362 = !DILocalVariable(name: "n", arg: 1, scope: !5358, file: !259, line: 689, type: !55)
!5363 = !DILocalVariable(name: "size", arg: 2, scope: !5358, file: !259, line: 689, type: !55)
!5364 = !DILocalVariable(name: "flags", arg: 3, scope: !5358, file: !259, line: 689, type: !269)
!5365 = !DILocalVariable(name: "node", arg: 4, scope: !5358, file: !259, line: 690, type: !42)
!5366 = !DILocalVariable(name: "bytes", scope: !5358, file: !259, line: 692, type: !55)
!5367 = !DILocation(line: 689, column: 66, scope: !5358)
!5368 = !DILocation(line: 689, column: 76, scope: !5358)
!5369 = !DILocation(line: 689, column: 88, scope: !5358)
!5370 = !DILocation(line: 690, column: 14, scope: !5358)
!5371 = !DILocation(line: 692, column: 2, scope: !5358)
!5372 = !DILocation(line: 692, column: 9, scope: !5358)
!5373 = !DILocation(line: 694, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5358, file: !259, line: 694, column: 6)
!5375 = !DILocation(line: 694, column: 6, scope: !5358)
!5376 = !DILocation(line: 695, column: 3, scope: !5374)
!5377 = !DILocation(line: 696, column: 27, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5358, file: !259, line: 696, column: 6)
!5379 = !DILocation(line: 696, column: 6, scope: !5378)
!5380 = !DILocation(line: 696, column: 30, scope: !5378)
!5381 = !DILocation(line: 696, column: 54, scope: !5378)
!5382 = !DILocation(line: 696, column: 33, scope: !5378)
!5383 = !DILocation(line: 696, column: 6, scope: !5358)
!5384 = !DILocation(line: 697, column: 23, scope: !5378)
!5385 = !DILocation(line: 697, column: 30, scope: !5378)
!5386 = !DILocation(line: 697, column: 37, scope: !5378)
!5387 = !DILocation(line: 697, column: 10, scope: !5378)
!5388 = !DILocation(line: 697, column: 3, scope: !5378)
!5389 = !DILocation(line: 698, column: 24, scope: !5358)
!5390 = !DILocation(line: 698, column: 31, scope: !5358)
!5391 = !DILocation(line: 698, column: 38, scope: !5358)
!5392 = !DILocation(line: 698, column: 9, scope: !5358)
!5393 = !DILocation(line: 698, column: 2, scope: !5358)
!5394 = !DILocation(line: 699, column: 1, scope: !5358)
!5395 = distinct !DISubprogram(name: "add_element", scope: !3, file: !3, line: 127, type: !5396, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5398)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{null, !5108, !40}
!5398 = !{!5399, !5400}
!5399 = !DILocalVariable(name: "pool", arg: 1, scope: !5395, file: !3, line: 127, type: !5108)
!5400 = !DILocalVariable(name: "element", arg: 2, scope: !5395, file: !3, line: 127, type: !40)
!5401 = !DILocation(line: 127, column: 52, scope: !5395)
!5402 = !DILocation(line: 127, column: 64, scope: !5395)
!5403 = !DILocation(line: 129, column: 2, scope: !5395)
!5404 = !DILocation(line: 129, column: 2, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 129, column: 2)
!5406 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 129, column: 2)
!5407 = !DILocation(line: 129, column: 2, scope: !5406)
!5408 = !DILocation(line: 129, column: 2, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 129, column: 2)
!5410 = !DILocation(line: 129, column: 2, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 129, column: 2)
!5412 = !DILocation(line: 129, column: 2, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 129, column: 2)
!5414 = !{i64 2155077307, i64 2155077336, i64 2155077382, i64 2155077440, i64 2155077494, i64 2155077548, i64 2155077603, i64 2155077634}
!5415 = !DILocation(line: 130, column: 17, scope: !5395)
!5416 = !DILocation(line: 130, column: 23, scope: !5395)
!5417 = !DILocation(line: 130, column: 2, scope: !5395)
!5418 = !DILocation(line: 131, column: 23, scope: !5395)
!5419 = !DILocation(line: 131, column: 29, scope: !5395)
!5420 = !DILocation(line: 131, column: 2, scope: !5395)
!5421 = !DILocation(line: 132, column: 36, scope: !5395)
!5422 = !DILocation(line: 132, column: 2, scope: !5395)
!5423 = !DILocation(line: 132, column: 8, scope: !5395)
!5424 = !DILocation(line: 132, column: 17, scope: !5395)
!5425 = !DILocation(line: 132, column: 23, scope: !5395)
!5426 = !DILocation(line: 132, column: 30, scope: !5395)
!5427 = !DILocation(line: 132, column: 34, scope: !5395)
!5428 = !DILocation(line: 133, column: 1, scope: !5395)
!5429 = distinct !DISubprogram(name: "mempool_init", scope: !3, file: !3, line: 233, type: !5430, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5432)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!42, !5108, !42, !5119, !5124, !40}
!5432 = !{!5433, !5434, !5435, !5436, !5437}
!5433 = !DILocalVariable(name: "pool", arg: 1, scope: !5429, file: !3, line: 233, type: !5108)
!5434 = !DILocalVariable(name: "min_nr", arg: 2, scope: !5429, file: !3, line: 233, type: !42)
!5435 = !DILocalVariable(name: "alloc_fn", arg: 3, scope: !5429, file: !3, line: 233, type: !5119)
!5436 = !DILocalVariable(name: "free_fn", arg: 4, scope: !5429, file: !3, line: 234, type: !5124)
!5437 = !DILocalVariable(name: "pool_data", arg: 5, scope: !5429, file: !3, line: 234, type: !40)
!5438 = !DILocation(line: 233, column: 29, scope: !5429)
!5439 = !DILocation(line: 233, column: 39, scope: !5429)
!5440 = !DILocation(line: 233, column: 64, scope: !5429)
!5441 = !DILocation(line: 234, column: 20, scope: !5429)
!5442 = !DILocation(line: 234, column: 35, scope: !5429)
!5443 = !DILocation(line: 236, column: 27, scope: !5429)
!5444 = !DILocation(line: 236, column: 33, scope: !5429)
!5445 = !DILocation(line: 236, column: 41, scope: !5429)
!5446 = !DILocation(line: 236, column: 51, scope: !5429)
!5447 = !DILocation(line: 237, column: 6, scope: !5429)
!5448 = !DILocation(line: 236, column: 9, scope: !5429)
!5449 = !DILocation(line: 236, column: 2, scope: !5429)
!5450 = distinct !DISubprogram(name: "mempool_create", scope: !3, file: !3, line: 258, type: !5451, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5453)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!5108, !42, !5119, !5124, !40}
!5453 = !{!5454, !5455, !5456, !5457}
!5454 = !DILocalVariable(name: "min_nr", arg: 1, scope: !5450, file: !3, line: 258, type: !42)
!5455 = !DILocalVariable(name: "alloc_fn", arg: 2, scope: !5450, file: !3, line: 258, type: !5119)
!5456 = !DILocalVariable(name: "free_fn", arg: 3, scope: !5450, file: !3, line: 259, type: !5124)
!5457 = !DILocalVariable(name: "pool_data", arg: 4, scope: !5450, file: !3, line: 259, type: !40)
!5458 = !DILocation(line: 258, column: 31, scope: !5450)
!5459 = !DILocation(line: 258, column: 56, scope: !5450)
!5460 = !DILocation(line: 259, column: 21, scope: !5450)
!5461 = !DILocation(line: 259, column: 36, scope: !5450)
!5462 = !DILocation(line: 261, column: 29, scope: !5450)
!5463 = !DILocation(line: 261, column: 37, scope: !5450)
!5464 = !DILocation(line: 261, column: 47, scope: !5450)
!5465 = !DILocation(line: 261, column: 56, scope: !5450)
!5466 = !DILocation(line: 261, column: 9, scope: !5450)
!5467 = !DILocation(line: 261, column: 2, scope: !5450)
!5468 = distinct !DISubprogram(name: "mempool_create_node", scope: !3, file: !3, line: 266, type: !5469, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5471)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!5108, !42, !5119, !5124, !40, !269, !42}
!5471 = !{!5472, !5473, !5474, !5475, !5476, !5477, !5478}
!5472 = !DILocalVariable(name: "min_nr", arg: 1, scope: !5468, file: !3, line: 266, type: !42)
!5473 = !DILocalVariable(name: "alloc_fn", arg: 2, scope: !5468, file: !3, line: 266, type: !5119)
!5474 = !DILocalVariable(name: "free_fn", arg: 3, scope: !5468, file: !3, line: 267, type: !5124)
!5475 = !DILocalVariable(name: "pool_data", arg: 4, scope: !5468, file: !3, line: 267, type: !40)
!5476 = !DILocalVariable(name: "gfp_mask", arg: 5, scope: !5468, file: !3, line: 268, type: !269)
!5477 = !DILocalVariable(name: "node_id", arg: 6, scope: !5468, file: !3, line: 268, type: !42)
!5478 = !DILocalVariable(name: "pool", scope: !5468, file: !3, line: 270, type: !5108)
!5479 = !DILocation(line: 266, column: 36, scope: !5468)
!5480 = !DILocation(line: 266, column: 61, scope: !5468)
!5481 = !DILocation(line: 267, column: 27, scope: !5468)
!5482 = !DILocation(line: 267, column: 42, scope: !5468)
!5483 = !DILocation(line: 268, column: 17, scope: !5468)
!5484 = !DILocation(line: 268, column: 31, scope: !5468)
!5485 = !DILocation(line: 270, column: 2, scope: !5468)
!5486 = !DILocation(line: 270, column: 13, scope: !5468)
!5487 = !DILocation(line: 272, column: 37, scope: !5468)
!5488 = !DILocation(line: 272, column: 47, scope: !5468)
!5489 = !DILocation(line: 272, column: 9, scope: !5468)
!5490 = !DILocation(line: 272, column: 7, scope: !5468)
!5491 = !DILocation(line: 273, column: 7, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 273, column: 6)
!5493 = !DILocation(line: 273, column: 6, scope: !5468)
!5494 = !DILocation(line: 274, column: 3, scope: !5492)
!5495 = !DILocation(line: 276, column: 24, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 276, column: 6)
!5497 = !DILocation(line: 276, column: 30, scope: !5496)
!5498 = !DILocation(line: 276, column: 38, scope: !5496)
!5499 = !DILocation(line: 276, column: 48, scope: !5496)
!5500 = !DILocation(line: 276, column: 57, scope: !5496)
!5501 = !DILocation(line: 277, column: 10, scope: !5496)
!5502 = !DILocation(line: 277, column: 20, scope: !5496)
!5503 = !DILocation(line: 276, column: 6, scope: !5496)
!5504 = !DILocation(line: 276, column: 6, scope: !5468)
!5505 = !DILocation(line: 278, column: 9, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 277, column: 30)
!5507 = !DILocation(line: 278, column: 3, scope: !5506)
!5508 = !DILocation(line: 279, column: 3, scope: !5506)
!5509 = !DILocation(line: 282, column: 9, scope: !5468)
!5510 = !DILocation(line: 282, column: 2, scope: !5468)
!5511 = !DILocation(line: 283, column: 1, scope: !5468)
!5512 = distinct !DISubprogram(name: "kzalloc_node", scope: !259, file: !259, line: 730, type: !5513, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5515)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{!40, !55, !269, !42}
!5515 = !{!5516, !5517, !5518}
!5516 = !DILocalVariable(name: "size", arg: 1, scope: !5512, file: !259, line: 730, type: !55)
!5517 = !DILocalVariable(name: "flags", arg: 2, scope: !5512, file: !259, line: 730, type: !269)
!5518 = !DILocalVariable(name: "node", arg: 3, scope: !5512, file: !259, line: 730, type: !42)
!5519 = !DILocation(line: 730, column: 57, scope: !5512)
!5520 = !DILocation(line: 730, column: 69, scope: !5512)
!5521 = !DILocation(line: 730, column: 80, scope: !5512)
!5522 = !DILocation(line: 732, column: 22, scope: !5512)
!5523 = !DILocation(line: 732, column: 28, scope: !5512)
!5524 = !DILocation(line: 732, column: 34, scope: !5512)
!5525 = !DILocation(line: 732, column: 48, scope: !5512)
!5526 = !DILocation(line: 732, column: 9, scope: !5512)
!5527 = !DILocation(line: 732, column: 2, scope: !5512)
!5528 = distinct !DISubprogram(name: "mempool_resize", scope: !3, file: !3, line: 304, type: !5529, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5531)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!42, !5108, !42}
!5531 = !{!5532, !5533, !5534, !5535, !5536, !5537, !5541, !5542, !5549, !5550, !5554, !5555, !5560, !5561, !5562}
!5532 = !DILocalVariable(name: "pool", arg: 1, scope: !5528, file: !3, line: 304, type: !5108)
!5533 = !DILocalVariable(name: "new_min_nr", arg: 2, scope: !5528, file: !3, line: 304, type: !42)
!5534 = !DILocalVariable(name: "element", scope: !5528, file: !3, line: 306, type: !40)
!5535 = !DILocalVariable(name: "new_elements", scope: !5528, file: !3, line: 307, type: !1915)
!5536 = !DILocalVariable(name: "flags", scope: !5528, file: !3, line: 308, type: !59)
!5537 = !DILocalVariable(name: "__dummy", scope: !5538, file: !3, line: 313, type: !59)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 313, column: 2)
!5539 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 313, column: 2)
!5540 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 313, column: 2)
!5541 = !DILocalVariable(name: "__dummy2", scope: !5538, file: !3, line: 313, type: !59)
!5542 = !DILocalVariable(name: "__dummy", scope: !5543, file: !3, line: 319, type: !59)
!5543 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 319, column: 4)
!5544 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 319, column: 4)
!5545 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 319, column: 4)
!5546 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 315, column: 38)
!5547 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 314, column: 34)
!5548 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 314, column: 6)
!5549 = !DILocalVariable(name: "__dummy2", scope: !5543, file: !3, line: 319, type: !59)
!5550 = !DILocalVariable(name: "__dummy", scope: !5551, file: !3, line: 332, type: !59)
!5551 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 332, column: 2)
!5552 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 332, column: 2)
!5553 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 332, column: 2)
!5554 = !DILocalVariable(name: "__dummy2", scope: !5551, file: !3, line: 332, type: !59)
!5555 = !DILocalVariable(name: "__dummy", scope: !5556, file: !3, line: 350, type: !59)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 350, column: 3)
!5557 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 350, column: 3)
!5558 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 350, column: 3)
!5559 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 345, column: 39)
!5560 = !DILocalVariable(name: "__dummy2", scope: !5556, file: !3, line: 350, type: !59)
!5561 = !DILabel(scope: !5528, name: "out_unlock", file: !3, line: 359)
!5562 = !DILabel(scope: !5528, name: "out", file: !3, line: 361)
!5563 = !DILocation(line: 304, column: 31, scope: !5528)
!5564 = !DILocation(line: 304, column: 41, scope: !5528)
!5565 = !DILocation(line: 306, column: 2, scope: !5528)
!5566 = !DILocation(line: 306, column: 8, scope: !5528)
!5567 = !DILocation(line: 307, column: 2, scope: !5528)
!5568 = !DILocation(line: 307, column: 9, scope: !5528)
!5569 = !DILocation(line: 308, column: 2, scope: !5528)
!5570 = !DILocation(line: 308, column: 16, scope: !5528)
!5571 = !DILocation(line: 310, column: 2, scope: !5528)
!5572 = !DILocation(line: 310, column: 2, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 310, column: 2)
!5574 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 310, column: 2)
!5575 = !DILocation(line: 310, column: 2, scope: !5574)
!5576 = !DILocation(line: 310, column: 2, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 310, column: 2)
!5578 = !DILocation(line: 310, column: 2, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 310, column: 2)
!5580 = !DILocation(line: 310, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 310, column: 2)
!5582 = !{i64 2155090658, i64 2155090687, i64 2155090733, i64 2155090791, i64 2155090845, i64 2155090899, i64 2155090954, i64 2155090985}
!5583 = !DILocation(line: 311, column: 2, scope: !5528)
!5584 = !DILocation(line: 311, column: 2, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 311, column: 2)
!5586 = !DILocation(line: 313, column: 2, scope: !5528)
!5587 = !DILocation(line: 313, column: 2, scope: !5540)
!5588 = !DILocation(line: 313, column: 2, scope: !5538)
!5589 = !DILocation(line: 313, column: 2, scope: !5539)
!5590 = !DILocation(line: 314, column: 6, scope: !5548)
!5591 = !DILocation(line: 314, column: 20, scope: !5548)
!5592 = !DILocation(line: 314, column: 26, scope: !5548)
!5593 = !DILocation(line: 314, column: 17, scope: !5548)
!5594 = !DILocation(line: 314, column: 6, scope: !5528)
!5595 = !DILocation(line: 315, column: 3, scope: !5547)
!5596 = !DILocation(line: 315, column: 10, scope: !5547)
!5597 = !DILocation(line: 315, column: 23, scope: !5547)
!5598 = !DILocation(line: 315, column: 29, scope: !5547)
!5599 = !DILocation(line: 315, column: 21, scope: !5547)
!5600 = !DILocation(line: 316, column: 29, scope: !5546)
!5601 = !DILocation(line: 316, column: 14, scope: !5546)
!5602 = !DILocation(line: 316, column: 12, scope: !5546)
!5603 = !DILocation(line: 317, column: 28, scope: !5546)
!5604 = !DILocation(line: 317, column: 34, scope: !5546)
!5605 = !DILocation(line: 317, column: 40, scope: !5546)
!5606 = !DILocation(line: 317, column: 4, scope: !5546)
!5607 = !DILocation(line: 318, column: 4, scope: !5546)
!5608 = !DILocation(line: 318, column: 10, scope: !5546)
!5609 = !DILocation(line: 318, column: 15, scope: !5546)
!5610 = !DILocation(line: 318, column: 24, scope: !5546)
!5611 = !DILocation(line: 318, column: 30, scope: !5546)
!5612 = !DILocation(line: 319, column: 4, scope: !5546)
!5613 = !DILocation(line: 319, column: 4, scope: !5545)
!5614 = !DILocation(line: 319, column: 4, scope: !5543)
!5615 = !DILocation(line: 319, column: 4, scope: !5544)
!5616 = distinct !{!5616, !5595, !5617, !5213, !5214}
!5617 = !DILocation(line: 320, column: 3, scope: !5547)
!5618 = !DILocation(line: 321, column: 18, scope: !5547)
!5619 = !DILocation(line: 321, column: 3, scope: !5547)
!5620 = !DILocation(line: 321, column: 9, scope: !5547)
!5621 = !DILocation(line: 321, column: 16, scope: !5547)
!5622 = !DILocation(line: 322, column: 3, scope: !5547)
!5623 = !DILocation(line: 324, column: 26, scope: !5528)
!5624 = !DILocation(line: 324, column: 32, scope: !5528)
!5625 = !DILocation(line: 324, column: 38, scope: !5528)
!5626 = !DILocation(line: 324, column: 2, scope: !5528)
!5627 = !DILocation(line: 327, column: 31, scope: !5528)
!5628 = !DILocation(line: 327, column: 17, scope: !5528)
!5629 = !DILocation(line: 327, column: 15, scope: !5528)
!5630 = !DILocation(line: 329, column: 7, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 329, column: 6)
!5632 = !DILocation(line: 329, column: 6, scope: !5528)
!5633 = !DILocation(line: 330, column: 3, scope: !5631)
!5634 = !DILocation(line: 332, column: 2, scope: !5528)
!5635 = !DILocation(line: 332, column: 2, scope: !5553)
!5636 = !DILocation(line: 332, column: 2, scope: !5551)
!5637 = !DILocation(line: 332, column: 2, scope: !5552)
!5638 = !DILocation(line: 333, column: 6, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 333, column: 6)
!5640 = !DILocation(line: 333, column: 6, scope: !5528)
!5641 = !DILocation(line: 335, column: 27, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 333, column: 44)
!5643 = !DILocation(line: 335, column: 33, scope: !5642)
!5644 = !DILocation(line: 335, column: 39, scope: !5642)
!5645 = !DILocation(line: 335, column: 3, scope: !5642)
!5646 = !DILocation(line: 336, column: 9, scope: !5642)
!5647 = !DILocation(line: 336, column: 3, scope: !5642)
!5648 = !DILocation(line: 337, column: 3, scope: !5642)
!5649 = !DILocation(line: 339, column: 9, scope: !5528)
!5650 = !DILocation(line: 339, column: 23, scope: !5528)
!5651 = !DILocation(line: 339, column: 29, scope: !5528)
!5652 = !DILocation(line: 340, column: 4, scope: !5528)
!5653 = !DILocation(line: 340, column: 10, scope: !5528)
!5654 = !DILocation(line: 340, column: 18, scope: !5528)
!5655 = !DILocation(line: 339, column: 2, scope: !5528)
!5656 = !DILocation(line: 341, column: 8, scope: !5528)
!5657 = !DILocation(line: 341, column: 14, scope: !5528)
!5658 = !DILocation(line: 341, column: 2, scope: !5528)
!5659 = !DILocation(line: 342, column: 19, scope: !5528)
!5660 = !DILocation(line: 342, column: 2, scope: !5528)
!5661 = !DILocation(line: 342, column: 8, scope: !5528)
!5662 = !DILocation(line: 342, column: 17, scope: !5528)
!5663 = !DILocation(line: 343, column: 17, scope: !5528)
!5664 = !DILocation(line: 343, column: 2, scope: !5528)
!5665 = !DILocation(line: 343, column: 8, scope: !5528)
!5666 = !DILocation(line: 343, column: 15, scope: !5528)
!5667 = !DILocation(line: 345, column: 2, scope: !5528)
!5668 = !DILocation(line: 345, column: 9, scope: !5528)
!5669 = !DILocation(line: 345, column: 15, scope: !5528)
!5670 = !DILocation(line: 345, column: 25, scope: !5528)
!5671 = !DILocation(line: 345, column: 31, scope: !5528)
!5672 = !DILocation(line: 345, column: 23, scope: !5528)
!5673 = !DILocation(line: 346, column: 27, scope: !5559)
!5674 = !DILocation(line: 346, column: 33, scope: !5559)
!5675 = !DILocation(line: 346, column: 39, scope: !5559)
!5676 = !DILocation(line: 346, column: 3, scope: !5559)
!5677 = !DILocation(line: 347, column: 13, scope: !5559)
!5678 = !DILocation(line: 347, column: 19, scope: !5559)
!5679 = !DILocation(line: 347, column: 37, scope: !5559)
!5680 = !DILocation(line: 347, column: 43, scope: !5559)
!5681 = !DILocation(line: 347, column: 11, scope: !5559)
!5682 = !DILocation(line: 348, column: 8, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 348, column: 7)
!5684 = !DILocation(line: 348, column: 7, scope: !5559)
!5685 = !DILocation(line: 349, column: 4, scope: !5683)
!5686 = !DILocation(line: 350, column: 3, scope: !5559)
!5687 = !DILocation(line: 350, column: 3, scope: !5558)
!5688 = !DILocation(line: 350, column: 3, scope: !5556)
!5689 = !DILocation(line: 350, column: 3, scope: !5557)
!5690 = !DILocation(line: 351, column: 7, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 351, column: 7)
!5692 = !DILocation(line: 351, column: 13, scope: !5691)
!5693 = !DILocation(line: 351, column: 23, scope: !5691)
!5694 = !DILocation(line: 351, column: 29, scope: !5691)
!5695 = !DILocation(line: 351, column: 21, scope: !5691)
!5696 = !DILocation(line: 351, column: 7, scope: !5559)
!5697 = !DILocation(line: 352, column: 16, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 351, column: 37)
!5699 = !DILocation(line: 352, column: 22, scope: !5698)
!5700 = !DILocation(line: 352, column: 4, scope: !5698)
!5701 = !DILocation(line: 353, column: 3, scope: !5698)
!5702 = !DILocation(line: 354, column: 28, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 353, column: 10)
!5704 = !DILocation(line: 354, column: 34, scope: !5703)
!5705 = !DILocation(line: 354, column: 40, scope: !5703)
!5706 = !DILocation(line: 354, column: 4, scope: !5703)
!5707 = !DILocation(line: 355, column: 4, scope: !5703)
!5708 = !DILocation(line: 355, column: 10, scope: !5703)
!5709 = !DILocation(line: 355, column: 15, scope: !5703)
!5710 = !DILocation(line: 355, column: 24, scope: !5703)
!5711 = !DILocation(line: 355, column: 30, scope: !5703)
!5712 = !DILocation(line: 356, column: 4, scope: !5703)
!5713 = distinct !{!5713, !5667, !5714, !5213, !5214}
!5714 = !DILocation(line: 358, column: 2, scope: !5528)
!5715 = !DILocation(line: 359, column: 1, scope: !5528)
!5716 = !DILocation(line: 360, column: 26, scope: !5528)
!5717 = !DILocation(line: 360, column: 32, scope: !5528)
!5718 = !DILocation(line: 360, column: 38, scope: !5528)
!5719 = !DILocation(line: 360, column: 2, scope: !5528)
!5720 = !DILocation(line: 361, column: 1, scope: !5528)
!5721 = !DILocation(line: 362, column: 2, scope: !5528)
!5722 = !DILocation(line: 363, column: 1, scope: !5528)
!5723 = !DILocation(line: 112, column: 2, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5180, file: !5181, line: 112, column: 2)
!5725 = !DILocation(line: 112, column: 2, scope: !5180)
!5726 = !DILocation(line: 113, column: 1, scope: !5180)
!5727 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5728, file: !5728, line: 32, type: !5729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5728 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!59, !5346}
!5731 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5343, file: !5343, line: 404, type: !5732, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5734)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{null, !1773, !59}
!5734 = !{!5735, !5736, !5737, !5740}
!5735 = !DILocalVariable(name: "lock", arg: 1, scope: !5731, file: !5343, line: 404, type: !1773)
!5736 = !DILocalVariable(name: "flags", arg: 2, scope: !5731, file: !5343, line: 404, type: !59)
!5737 = !DILocalVariable(name: "__dummy", scope: !5738, file: !5343, line: 406, type: !59)
!5738 = distinct !DILexicalBlock(scope: !5739, file: !5343, line: 406, column: 2)
!5739 = distinct !DILexicalBlock(scope: !5731, file: !5343, line: 406, column: 2)
!5740 = !DILocalVariable(name: "__dummy2", scope: !5738, file: !5343, line: 406, type: !59)
!5741 = !DILocation(line: 404, column: 64, scope: !5731)
!5742 = !DILocation(line: 404, column: 84, scope: !5731)
!5743 = !DILocation(line: 406, column: 2, scope: !5731)
!5744 = !DILocation(line: 406, column: 2, scope: !5738)
!5745 = !DILocation(line: 406, column: 2, scope: !5739)
!5746 = !DILocation(line: 407, column: 1, scope: !5731)
!5747 = distinct !DISubprogram(name: "kmalloc_array", scope: !259, file: !259, line: 629, type: !5748, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5750)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!40, !55, !55, !269}
!5750 = !{!5751, !5752, !5753, !5754}
!5751 = !DILocalVariable(name: "n", arg: 1, scope: !5747, file: !259, line: 629, type: !55)
!5752 = !DILocalVariable(name: "size", arg: 2, scope: !5747, file: !259, line: 629, type: !55)
!5753 = !DILocalVariable(name: "flags", arg: 3, scope: !5747, file: !259, line: 629, type: !269)
!5754 = !DILocalVariable(name: "bytes", scope: !5747, file: !259, line: 631, type: !55)
!5755 = !DILocation(line: 629, column: 61, scope: !5747)
!5756 = !DILocation(line: 629, column: 71, scope: !5747)
!5757 = !DILocation(line: 629, column: 83, scope: !5747)
!5758 = !DILocation(line: 631, column: 2, scope: !5747)
!5759 = !DILocation(line: 631, column: 9, scope: !5747)
!5760 = !DILocation(line: 633, column: 6, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5747, file: !259, line: 633, column: 6)
!5762 = !DILocation(line: 633, column: 6, scope: !5747)
!5763 = !DILocation(line: 634, column: 3, scope: !5761)
!5764 = !DILocation(line: 635, column: 27, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5747, file: !259, line: 635, column: 6)
!5766 = !DILocation(line: 635, column: 6, scope: !5765)
!5767 = !DILocation(line: 635, column: 30, scope: !5765)
!5768 = !DILocation(line: 635, column: 54, scope: !5765)
!5769 = !DILocation(line: 635, column: 33, scope: !5765)
!5770 = !DILocation(line: 635, column: 6, scope: !5747)
!5771 = !DILocation(line: 636, column: 18, scope: !5765)
!5772 = !DILocation(line: 636, column: 25, scope: !5765)
!5773 = !DILocation(line: 636, column: 10, scope: !5765)
!5774 = !DILocation(line: 636, column: 3, scope: !5765)
!5775 = !DILocation(line: 637, column: 19, scope: !5747)
!5776 = !DILocation(line: 637, column: 26, scope: !5747)
!5777 = !DILocation(line: 637, column: 9, scope: !5747)
!5778 = !DILocation(line: 637, column: 2, scope: !5747)
!5779 = !DILocation(line: 638, column: 1, scope: !5747)
!5780 = distinct !DISubprogram(name: "mempool_alloc", scope: !3, file: !3, line: 380, type: !5781, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5783)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!40, !5108, !269}
!5783 = !{!5784, !5785, !5786, !5787, !5788, !5801, !5802, !5803, !5807}
!5784 = !DILocalVariable(name: "pool", arg: 1, scope: !5780, file: !3, line: 380, type: !5108)
!5785 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !5780, file: !3, line: 380, type: !269)
!5786 = !DILocalVariable(name: "element", scope: !5780, file: !3, line: 382, type: !40)
!5787 = !DILocalVariable(name: "flags", scope: !5780, file: !3, line: 383, type: !59)
!5788 = !DILocalVariable(name: "wait", scope: !5780, file: !3, line: 384, type: !5789)
!5789 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !75, line: 14, baseType: !5790)
!5790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !75, line: 30, size: 320, elements: !5791)
!5791 = !{!5792, !5793, !5794, !5800}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5790, file: !75, line: 31, baseType: !7, size: 32)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5790, file: !75, line: 32, baseType: !40, size: 64, offset: 64)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5790, file: !75, line: 33, baseType: !5795, size: 64, offset: 128)
!5795 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !75, line: 16, baseType: !5796)
!5796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5797, size: 64)
!5797 = !DISubroutineType(types: !5798)
!5798 = !{!42, !5799, !7, !42, !40}
!5799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5790, size: 64)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5790, file: !75, line: 34, baseType: !117, size: 128, offset: 192)
!5801 = !DILocalVariable(name: "gfp_temp", scope: !5780, file: !3, line: 385, type: !269)
!5802 = !DILabel(scope: !5780, name: "repeat_alloc", file: !3, line: 396)
!5803 = !DILocalVariable(name: "__dummy", scope: !5804, file: !3, line: 402, type: !59)
!5804 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 402, column: 2)
!5805 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 402, column: 2)
!5806 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 402, column: 2)
!5807 = !DILocalVariable(name: "__dummy2", scope: !5804, file: !3, line: 402, type: !59)
!5808 = !DILocation(line: 380, column: 32, scope: !5780)
!5809 = !DILocation(line: 380, column: 44, scope: !5780)
!5810 = !DILocation(line: 382, column: 2, scope: !5780)
!5811 = !DILocation(line: 382, column: 8, scope: !5780)
!5812 = !DILocation(line: 383, column: 2, scope: !5780)
!5813 = !DILocation(line: 383, column: 16, scope: !5780)
!5814 = !DILocation(line: 384, column: 2, scope: !5780)
!5815 = !DILocation(line: 384, column: 21, scope: !5780)
!5816 = !DILocation(line: 385, column: 2, scope: !5780)
!5817 = !DILocation(line: 385, column: 8, scope: !5780)
!5818 = !DILocation(line: 388, column: 14, scope: !5780)
!5819 = !DILocation(line: 388, column: 2, scope: !5780)
!5820 = !DILocation(line: 390, column: 11, scope: !5780)
!5821 = !DILocation(line: 391, column: 11, scope: !5780)
!5822 = !DILocation(line: 392, column: 11, scope: !5780)
!5823 = !DILocation(line: 394, column: 13, scope: !5780)
!5824 = !DILocation(line: 394, column: 22, scope: !5780)
!5825 = !DILocation(line: 394, column: 11, scope: !5780)
!5826 = !DILocation(line: 394, column: 2, scope: !5780)
!5827 = !DILocation(line: 396, column: 1, scope: !5780)
!5828 = !DILocation(line: 398, column: 12, scope: !5780)
!5829 = !DILocation(line: 398, column: 18, scope: !5780)
!5830 = !DILocation(line: 398, column: 24, scope: !5780)
!5831 = !DILocation(line: 398, column: 34, scope: !5780)
!5832 = !DILocation(line: 398, column: 40, scope: !5780)
!5833 = !DILocation(line: 398, column: 10, scope: !5780)
!5834 = !DILocation(line: 399, column: 6, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 399, column: 6)
!5836 = !DILocation(line: 399, column: 6, scope: !5780)
!5837 = !DILocation(line: 400, column: 10, scope: !5835)
!5838 = !DILocation(line: 400, column: 3, scope: !5835)
!5839 = !DILocation(line: 402, column: 2, scope: !5780)
!5840 = !DILocation(line: 402, column: 2, scope: !5806)
!5841 = !DILocation(line: 402, column: 2, scope: !5804)
!5842 = !DILocation(line: 402, column: 2, scope: !5805)
!5843 = !DILocation(line: 403, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 403, column: 6)
!5845 = !DILocation(line: 403, column: 6, scope: !5780)
!5846 = !DILocation(line: 404, column: 28, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 403, column: 29)
!5848 = !DILocation(line: 404, column: 13, scope: !5847)
!5849 = !DILocation(line: 404, column: 11, scope: !5847)
!5850 = !DILocation(line: 405, column: 27, scope: !5847)
!5851 = !DILocation(line: 405, column: 33, scope: !5847)
!5852 = !DILocation(line: 405, column: 39, scope: !5847)
!5853 = !DILocation(line: 405, column: 3, scope: !5847)
!5854 = !DILocation(line: 407, column: 3, scope: !5847)
!5855 = !DILocation(line: 407, column: 3, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 407, column: 3)
!5857 = !DILocation(line: 407, column: 3, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 407, column: 3)
!5859 = !{i64 2155099902}
!5860 = !DILocation(line: 412, column: 25, scope: !5847)
!5861 = !DILocation(line: 412, column: 3, scope: !5847)
!5862 = !DILocation(line: 413, column: 10, scope: !5847)
!5863 = !DILocation(line: 413, column: 3, scope: !5847)
!5864 = !DILocation(line: 420, column: 6, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 420, column: 6)
!5866 = !DILocation(line: 420, column: 18, scope: !5865)
!5867 = !DILocation(line: 420, column: 15, scope: !5865)
!5868 = !DILocation(line: 420, column: 6, scope: !5780)
!5869 = !DILocation(line: 421, column: 27, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 420, column: 28)
!5871 = !DILocation(line: 421, column: 33, scope: !5870)
!5872 = !DILocation(line: 421, column: 39, scope: !5870)
!5873 = !DILocation(line: 421, column: 3, scope: !5870)
!5874 = !DILocation(line: 422, column: 14, scope: !5870)
!5875 = !DILocation(line: 422, column: 12, scope: !5870)
!5876 = !DILocation(line: 423, column: 3, scope: !5870)
!5877 = !DILocation(line: 427, column: 8, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 427, column: 6)
!5879 = !DILocation(line: 427, column: 17, scope: !5878)
!5880 = !DILocation(line: 427, column: 6, scope: !5780)
!5881 = !DILocation(line: 428, column: 27, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 427, column: 42)
!5883 = !DILocation(line: 428, column: 33, scope: !5882)
!5884 = !DILocation(line: 428, column: 39, scope: !5882)
!5885 = !DILocation(line: 428, column: 3, scope: !5882)
!5886 = !DILocation(line: 429, column: 3, scope: !5882)
!5887 = !DILocation(line: 433, column: 2, scope: !5780)
!5888 = !DILocation(line: 433, column: 2, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 433, column: 2)
!5890 = !DILocation(line: 434, column: 19, scope: !5780)
!5891 = !DILocation(line: 434, column: 25, scope: !5780)
!5892 = !DILocation(line: 434, column: 2, scope: !5780)
!5893 = !DILocation(line: 436, column: 26, scope: !5780)
!5894 = !DILocation(line: 436, column: 32, scope: !5780)
!5895 = !DILocation(line: 436, column: 38, scope: !5780)
!5896 = !DILocation(line: 436, column: 2, scope: !5780)
!5897 = !DILocation(line: 442, column: 2, scope: !5780)
!5898 = !DILocation(line: 444, column: 15, scope: !5780)
!5899 = !DILocation(line: 444, column: 21, scope: !5780)
!5900 = !DILocation(line: 444, column: 2, scope: !5780)
!5901 = !DILocation(line: 445, column: 2, scope: !5780)
!5902 = !DILocation(line: 446, column: 1, scope: !5780)
!5903 = distinct !DISubprogram(name: "might_alloc", scope: !5904, file: !5904, line: 301, type: !5905, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5907)
!5904 = !DIFile(filename: "./include/linux/sched/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bdb17d42d55a8ac5ff9bf0c87450707")
!5905 = !DISubroutineType(types: !5906)
!5906 = !{null, !269}
!5907 = !{!5908}
!5908 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !5903, file: !5904, line: 301, type: !269)
!5909 = !DILocation(line: 301, column: 38, scope: !5903)
!5910 = !DILocation(line: 303, column: 21, scope: !5903)
!5911 = !DILocation(line: 303, column: 2, scope: !5903)
!5912 = !DILocation(line: 304, column: 21, scope: !5903)
!5913 = !DILocation(line: 304, column: 2, scope: !5903)
!5914 = !DILocation(line: 306, column: 2, scope: !5903)
!5915 = !DILocation(line: 306, column: 2, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5917, file: !5904, line: 306, column: 2)
!5917 = distinct !DILexicalBlock(scope: !5903, file: !5904, line: 306, column: 2)
!5918 = !DILocation(line: 306, column: 2, scope: !5917)
!5919 = !DILocation(line: 306, column: 2, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5916, file: !5904, line: 306, column: 2)
!5921 = !DILocation(line: 307, column: 1, scope: !5903)
!5922 = distinct !DISubprogram(name: "kmemleak_update_trace", scope: !5923, file: !5923, line: 90, type: !5258, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5924)
!5923 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f4ed42ee6c6e5d06af9997953e90d37")
!5924 = !{!5925}
!5925 = !DILocalVariable(name: "ptr", arg: 1, scope: !5922, file: !5923, line: 90, type: !2043)
!5926 = !DILocation(line: 90, column: 54, scope: !5922)
!5927 = !DILocation(line: 92, column: 1, scope: !5922)
!5928 = distinct !DISubprogram(name: "get_current", scope: !5929, file: !5929, line: 39, type: !5930, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5932)
!5929 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!275}
!5932 = !{!5933, !5935, !5937}
!5933 = !DILocalVariable(name: "pscr_ret__", scope: !5934, file: !5929, line: 41, type: !275)
!5934 = distinct !DILexicalBlock(scope: !5928, file: !5929, line: 41, column: 9)
!5935 = !DILocalVariable(name: "__vpp_verify", scope: !5936, file: !5929, line: 41, type: !2043)
!5936 = distinct !DILexicalBlock(scope: !5934, file: !5929, line: 41, column: 9)
!5937 = !DILocalVariable(name: "pfo_val__", scope: !5938, file: !5929, line: 41, type: !344)
!5938 = distinct !DILexicalBlock(scope: !5934, file: !5929, line: 41, column: 9)
!5939 = !DILocation(line: 41, column: 9, scope: !5934)
!5940 = !DILocation(line: 41, column: 9, scope: !5936)
!5941 = !DILocation(line: 41, column: 9, scope: !5938)
!5942 = !{i64 2148528532}
!5943 = !DILocation(line: 41, column: 9, scope: !5928)
!5944 = !DILocation(line: 41, column: 2, scope: !5928)
!5945 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5946, file: !5946, line: 35, type: !5947, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5949)
!5946 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5947 = !DISubroutineType(types: !5948)
!5948 = !{null, !120}
!5949 = !{!5950}
!5950 = !DILocalVariable(name: "list", arg: 1, scope: !5945, file: !5946, line: 35, type: !120)
!5951 = !DILocation(line: 35, column: 53, scope: !5945)
!5952 = !DILocation(line: 37, column: 2, scope: !5945)
!5953 = !DILocation(line: 37, column: 2, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5945, file: !5946, line: 37, column: 2)
!5955 = !DILocation(line: 37, column: 2, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5954, file: !5946, line: 37, column: 2)
!5957 = !DILocation(line: 37, column: 2, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5954, file: !5946, line: 37, column: 2)
!5959 = !DILocation(line: 38, column: 2, scope: !5945)
!5960 = !DILocation(line: 38, column: 2, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5945, file: !5946, line: 38, column: 2)
!5962 = !DILocation(line: 38, column: 2, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5961, file: !5946, line: 38, column: 2)
!5964 = !DILocation(line: 38, column: 2, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5961, file: !5946, line: 38, column: 2)
!5966 = !DILocation(line: 39, column: 1, scope: !5945)
!5967 = !DISubprogram(name: "prepare_to_wait", scope: !75, file: !75, line: 1197, type: !5968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{null, !5356, !5799, !42}
!5970 = !DISubprogram(name: "io_schedule_timeout", scope: !277, file: !277, line: 312, type: !5971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!273, !273}
!5973 = !DISubprogram(name: "finish_wait", scope: !75, file: !75, line: 1200, type: !5974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5974 = !DISubroutineType(types: !5975)
!5975 = !{null, !5356, !5799}
!5976 = distinct !DISubprogram(name: "mempool_free", scope: !3, file: !3, line: 457, type: !5977, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5979)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{null, !40, !5108}
!5979 = !{!5980, !5981, !5982, !5983, !5989}
!5980 = !DILocalVariable(name: "element", arg: 1, scope: !5976, file: !3, line: 457, type: !40)
!5981 = !DILocalVariable(name: "pool", arg: 2, scope: !5976, file: !3, line: 457, type: !5108)
!5982 = !DILocalVariable(name: "flags", scope: !5976, file: !3, line: 459, type: !59)
!5983 = !DILocalVariable(name: "__dummy", scope: !5984, file: !3, line: 498, type: !59)
!5984 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 498, column: 3)
!5985 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 498, column: 3)
!5986 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 498, column: 3)
!5987 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 497, column: 57)
!5988 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 497, column: 6)
!5989 = !DILocalVariable(name: "__dummy2", scope: !5984, file: !3, line: 498, type: !59)
!5990 = !DILocation(line: 457, column: 25, scope: !5976)
!5991 = !DILocation(line: 457, column: 45, scope: !5976)
!5992 = !DILocation(line: 459, column: 2, scope: !5976)
!5993 = !DILocation(line: 459, column: 16, scope: !5976)
!5994 = !DILocation(line: 461, column: 6, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 461, column: 6)
!5996 = !DILocation(line: 461, column: 6, scope: !5976)
!5997 = !DILocation(line: 462, column: 3, scope: !5995)
!5998 = !DILocation(line: 478, column: 2, scope: !5976)
!5999 = !DILocation(line: 478, column: 2, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 478, column: 2)
!6001 = !DILocation(line: 478, column: 2, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 478, column: 2)
!6003 = !DILocation(line: 478, column: 2, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 478, column: 2)
!6005 = !DILocation(line: 478, column: 2, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 478, column: 2)
!6007 = !{i64 2155102110}
!6008 = !DILocation(line: 497, column: 6, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 497, column: 6)
!6010 = !DILocation(line: 497, column: 6, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 497, column: 6)
!6012 = !DILocation(line: 497, column: 6, scope: !5988)
!6013 = !DILocation(line: 497, column: 6, scope: !5976)
!6014 = !DILocation(line: 498, column: 3, scope: !5987)
!6015 = !DILocation(line: 498, column: 3, scope: !5986)
!6016 = !DILocation(line: 498, column: 3, scope: !5984)
!6017 = !DILocation(line: 498, column: 3, scope: !5985)
!6018 = !DILocation(line: 499, column: 7, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 499, column: 7)
!6020 = !DILocation(line: 499, column: 7, scope: !5987)
!6021 = !DILocation(line: 500, column: 16, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 499, column: 45)
!6023 = !DILocation(line: 500, column: 22, scope: !6022)
!6024 = !DILocation(line: 500, column: 4, scope: !6022)
!6025 = !DILocation(line: 501, column: 28, scope: !6022)
!6026 = !DILocation(line: 501, column: 34, scope: !6022)
!6027 = !DILocation(line: 501, column: 40, scope: !6022)
!6028 = !DILocation(line: 501, column: 4, scope: !6022)
!6029 = !DILocation(line: 502, column: 4, scope: !6022)
!6030 = !DILocation(line: 503, column: 4, scope: !6022)
!6031 = !DILocation(line: 505, column: 27, scope: !5987)
!6032 = !DILocation(line: 505, column: 33, scope: !5987)
!6033 = !DILocation(line: 505, column: 39, scope: !5987)
!6034 = !DILocation(line: 505, column: 3, scope: !5987)
!6035 = !DILocation(line: 506, column: 2, scope: !5987)
!6036 = !DILocation(line: 507, column: 2, scope: !5976)
!6037 = !DILocation(line: 507, column: 8, scope: !5976)
!6038 = !DILocation(line: 507, column: 13, scope: !5976)
!6039 = !DILocation(line: 507, column: 22, scope: !5976)
!6040 = !DILocation(line: 507, column: 28, scope: !5976)
!6041 = !DILocation(line: 508, column: 1, scope: !5976)
!6042 = !DISubprogram(name: "__wake_up", scope: !75, file: !75, line: 212, type: !6043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6043 = !DISubroutineType(types: !6044)
!6044 = !{!42, !5356, !7, !42, !40}
!6045 = distinct !DISubprogram(name: "mempool_alloc_slab", scope: !3, file: !3, line: 514, type: !5121, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6046)
!6046 = !{!6047, !6048, !6049}
!6047 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !6045, file: !3, line: 514, type: !269)
!6048 = !DILocalVariable(name: "pool_data", arg: 2, scope: !6045, file: !3, line: 514, type: !40)
!6049 = !DILocalVariable(name: "mem", scope: !6045, file: !3, line: 516, type: !6050)
!6050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6051, size: 64)
!6051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6052, line: 98, size: 5632, elements: !6053)
!6052 = !DIFile(filename: "./include/linux/slub_def.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "614a4898a5f4350bac8911d64600cd9e")
!6053 = !{!6054, !6128, !6130, !6131, !6132, !6133, !6140, !6141, !6142, !6143, !6147, !6148, !6149, !6150, !6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158}
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_slab", scope: !6051, file: !6052, line: 100, baseType: !6055, size: 64)
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6056, size: 64)
!6056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache_cpu", file: !6052, line: 50, size: 256, elements: !6057)
!6057 = !{!6058, !6081, !6123, !6124}
!6058 = !DIDerivedType(tag: DW_TAG_member, scope: !6056, file: !6052, line: 51, baseType: !6059, size: 128)
!6059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6056, file: !6052, line: 51, size: 128, elements: !6060)
!6060 = !{!6061, !6066}
!6061 = !DIDerivedType(tag: DW_TAG_member, scope: !6059, file: !6052, line: 52, baseType: !6062, size: 128)
!6062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6059, file: !6052, line: 52, size: 128, elements: !6063)
!6063 = !{!6064, !6065}
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !6062, file: !6052, line: 53, baseType: !1915, size: 64)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !6062, file: !6052, line: 54, baseType: !59, size: 64, offset: 64)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_tid", scope: !6059, file: !6052, line: 56, baseType: !6067, size: 128)
!6067 = !DIDerivedType(tag: DW_TAG_typedef, name: "freelist_aba_t", file: !6068, line: 39, baseType: !6069)
!6068 = !DIFile(filename: "mm/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d5774d203a4fa72a33ec4902104668d1")
!6069 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6068, line: 33, size: 128, elements: !6070)
!6070 = !{!6071, !6076}
!6071 = !DIDerivedType(tag: DW_TAG_member, scope: !6069, file: !6068, line: 34, baseType: !6072, size: 128)
!6072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6069, file: !6068, line: 34, size: 128, elements: !6073)
!6073 = !{!6074, !6075}
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !6072, file: !6068, line: 35, baseType: !40, size: 64)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !6072, file: !6068, line: 36, baseType: !59, size: 64, offset: 64)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !6069, file: !6068, line: 38, baseType: !6077, size: 128, align: 128)
!6077 = !DIDerivedType(tag: DW_TAG_typedef, name: "freelist_full_t", file: !6068, line: 15, baseType: !6078)
!6078 = !DIDerivedType(tag: DW_TAG_typedef, name: "u128", file: !45, line: 15, baseType: !6079)
!6079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u128", file: !2174, line: 18, baseType: !6080, align: 128)
!6080 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !6056, file: !6052, line: 58, baseType: !6082, size: 64, offset: 128)
!6082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6083, size: 64)
!6083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slab", file: !6068, line: 42, size: 512, elements: !6084)
!6084 = !{!6085, !6086, !6087, !6121, !6122}
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "__page_flags", scope: !6083, file: !6068, line: 43, baseType: !59, size: 64)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !6083, file: !6068, line: 60, baseType: !6050, size: 64, offset: 64)
!6087 = !DIDerivedType(tag: DW_TAG_member, scope: !6083, file: !6068, line: 61, baseType: !6088, size: 256, offset: 128)
!6088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6083, file: !6068, line: 61, size: 256, elements: !6089)
!6089 = !{!6090, !6120}
!6090 = !DIDerivedType(tag: DW_TAG_member, scope: !6088, file: !6068, line: 62, baseType: !6091, size: 256)
!6091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6088, file: !6068, line: 62, size: 256, elements: !6092)
!6092 = !{!6093, !6102}
!6093 = !DIDerivedType(tag: DW_TAG_member, scope: !6091, file: !6068, line: 63, baseType: !6094, size: 128)
!6094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6091, file: !6068, line: 63, size: 128, elements: !6095)
!6095 = !{!6096, !6097}
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !6094, file: !6068, line: 64, baseType: !117, size: 128)
!6097 = !DIDerivedType(tag: DW_TAG_member, scope: !6094, file: !6068, line: 66, baseType: !6098, size: 128)
!6098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6094, file: !6068, line: 66, size: 128, elements: !6099)
!6099 = !{!6100, !6101}
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6098, file: !6068, line: 67, baseType: !6082, size: 64)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "slabs", scope: !6098, file: !6068, line: 68, baseType: !42, size: 32, offset: 64)
!6102 = !DIDerivedType(tag: DW_TAG_member, scope: !6091, file: !6068, line: 73, baseType: !6103, size: 128, offset: 128)
!6103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6091, file: !6068, line: 73, size: 128, elements: !6104)
!6104 = !{!6105, !6119}
!6105 = !DIDerivedType(tag: DW_TAG_member, scope: !6103, file: !6068, line: 74, baseType: !6106, size: 128)
!6106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6103, file: !6068, line: 74, size: 128, elements: !6107)
!6107 = !{!6108, !6109}
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !6106, file: !6068, line: 75, baseType: !40, size: 64)
!6109 = !DIDerivedType(tag: DW_TAG_member, scope: !6106, file: !6068, line: 76, baseType: !6110, size: 64, offset: 64)
!6110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6106, file: !6068, line: 76, size: 64, elements: !6111)
!6111 = !{!6112, !6113}
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !6110, file: !6068, line: 77, baseType: !59, size: 64)
!6113 = !DIDerivedType(tag: DW_TAG_member, scope: !6110, file: !6068, line: 78, baseType: !6114, size: 32)
!6114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6110, file: !6068, line: 78, size: 32, elements: !6115)
!6115 = !{!6116, !6117, !6118}
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !6114, file: !6068, line: 79, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !6114, file: !6068, line: 80, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !6114, file: !6068, line: 86, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_counter", scope: !6103, file: !6068, line: 91, baseType: !6067, size: 128)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !6088, file: !6068, line: 95, baseType: !629, size: 128, align: 64)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !6083, file: !6068, line: 97, baseType: !7, size: 32, offset: 384)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "__page_refcount", scope: !6083, file: !6068, line: 103, baseType: !69, size: 32, offset: 416)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "partial", scope: !6056, file: !6052, line: 60, baseType: !6082, size: 64, offset: 192)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6056, file: !6052, line: 62, baseType: !6125, offset: 256)
!6125 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_lock_t", file: !6126, line: 16, baseType: !6127)
!6126 = !DIFile(filename: "./include/linux/local_lock_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "469d1891d91ec9e6d4681e7c853930ac")
!6127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6126, line: 11, elements: !614)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6051, file: !6052, line: 103, baseType: !6129, size: 32, offset: 64)
!6129 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !45, line: 155, baseType: !7)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "min_partial", scope: !6051, file: !6052, line: 104, baseType: !59, size: 64, offset: 128)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6051, file: !6052, line: 105, baseType: !7, size: 32, offset: 192)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "object_size", scope: !6051, file: !6052, line: 106, baseType: !7, size: 32, offset: 224)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "reciprocal_size", scope: !6051, file: !6052, line: 107, baseType: !6134, size: 64, offset: 256)
!6134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reciprocal_value", file: !6135, line: 23, size: 64, elements: !6136)
!6135 = !DIFile(filename: "./include/linux/reciprocal_div.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8fcd850c6f01ce4c3f80e88020c04f49")
!6136 = !{!6137, !6138, !6139}
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !6134, file: !6135, line: 24, baseType: !286, size: 32)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "sh1", scope: !6134, file: !6135, line: 25, baseType: !103, size: 8, offset: 32)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "sh2", scope: !6134, file: !6135, line: 25, baseType: !103, size: 8, offset: 40)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6051, file: !6052, line: 108, baseType: !7, size: 32, offset: 320)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_partial", scope: !6051, file: !6052, line: 111, baseType: !7, size: 32, offset: 352)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_partial_slabs", scope: !6051, file: !6052, line: 113, baseType: !7, size: 32, offset: 384)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "oo", scope: !6051, file: !6052, line: 115, baseType: !6144, size: 32, offset: 416)
!6144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache_order_objects", file: !6052, line: 91, size: 32, elements: !6145)
!6145 = !{!6146}
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !6144, file: !6052, line: 92, baseType: !7, size: 32)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !6051, file: !6052, line: 118, baseType: !6144, size: 32, offset: 448)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "allocflags", scope: !6051, file: !6052, line: 119, baseType: !269, size: 32, offset: 480)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !6051, file: !6052, line: 120, baseType: !42, size: 32, offset: 512)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "ctor", scope: !6051, file: !6052, line: 121, baseType: !1173, size: 64, offset: 576)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !6051, file: !6052, line: 122, baseType: !7, size: 32, offset: 640)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !6051, file: !6052, line: 123, baseType: !7, size: 32, offset: 672)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "red_left_pad", scope: !6051, file: !6052, line: 124, baseType: !7, size: 32, offset: 704)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6051, file: !6052, line: 125, baseType: !36, size: 64, offset: 768)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6051, file: !6052, line: 126, baseType: !117, size: 128, offset: 832)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !6051, file: !6052, line: 128, baseType: !1395, size: 512, offset: 960)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "remote_node_defrag_ratio", scope: !6051, file: !6052, line: 138, baseType: !7, size: 32, offset: 1472)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6051, file: !6052, line: 154, baseType: !6159, size: 4096, offset: 1536)
!6159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6160, size: 4096, elements: !1438)
!6160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6161, size: 64)
!6161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache_node", file: !6068, line: 781, size: 512, elements: !6162)
!6162 = !{!6163, !6164, !6165, !6166, !6167, !6168}
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !6161, file: !6068, line: 799, baseType: !79, size: 32)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_partial", scope: !6161, file: !6068, line: 800, baseType: !59, size: 64, offset: 64)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "partial", scope: !6161, file: !6068, line: 801, baseType: !117, size: 128, offset: 128)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_slabs", scope: !6161, file: !6068, line: 803, baseType: !642, size: 64, offset: 256)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "total_objects", scope: !6161, file: !6068, line: 804, baseType: !642, size: 64, offset: 320)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !6161, file: !6068, line: 805, baseType: !117, size: 128, offset: 384)
!6169 = !DILocation(line: 514, column: 32, scope: !6045)
!6170 = !DILocation(line: 514, column: 48, scope: !6045)
!6171 = !DILocation(line: 516, column: 2, scope: !6045)
!6172 = !DILocation(line: 516, column: 21, scope: !6045)
!6173 = !DILocation(line: 516, column: 27, scope: !6045)
!6174 = !DILocation(line: 518, column: 26, scope: !6045)
!6175 = !DILocation(line: 518, column: 31, scope: !6045)
!6176 = !DILocation(line: 518, column: 9, scope: !6045)
!6177 = !DILocation(line: 519, column: 1, scope: !6178)
!6178 = !DILexicalBlockFile(scope: !6045, file: !3, discriminator: 0)
!6179 = !DILocation(line: 518, column: 2, scope: !6045)
!6180 = !DISubprogram(name: "kmem_cache_alloc", scope: !259, file: !259, line: 500, type: !6181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6181 = !DISubroutineType(types: !6182)
!6182 = !{!40, !6050, !269}
!6183 = distinct !DISubprogram(name: "mempool_free_slab", scope: !3, file: !3, line: 522, type: !5126, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6184)
!6184 = !{!6185, !6186, !6187}
!6185 = !DILocalVariable(name: "element", arg: 1, scope: !6183, file: !3, line: 522, type: !40)
!6186 = !DILocalVariable(name: "pool_data", arg: 2, scope: !6183, file: !3, line: 522, type: !40)
!6187 = !DILocalVariable(name: "mem", scope: !6183, file: !3, line: 524, type: !6050)
!6188 = !DILocation(line: 522, column: 30, scope: !6183)
!6189 = !DILocation(line: 522, column: 45, scope: !6183)
!6190 = !DILocation(line: 524, column: 2, scope: !6183)
!6191 = !DILocation(line: 524, column: 21, scope: !6183)
!6192 = !DILocation(line: 524, column: 27, scope: !6183)
!6193 = !DILocation(line: 525, column: 18, scope: !6183)
!6194 = !DILocation(line: 525, column: 23, scope: !6183)
!6195 = !DILocation(line: 525, column: 2, scope: !6183)
!6196 = !DILocation(line: 526, column: 1, scope: !6183)
!6197 = !DISubprogram(name: "kmem_cache_free", scope: !259, file: !259, line: 503, type: !6198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{null, !6050, !40}
!6200 = distinct !DISubprogram(name: "mempool_kmalloc", scope: !3, file: !3, line: 533, type: !5121, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6201)
!6201 = !{!6202, !6203, !6204}
!6202 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !6200, file: !3, line: 533, type: !269)
!6203 = !DILocalVariable(name: "pool_data", arg: 2, scope: !6200, file: !3, line: 533, type: !40)
!6204 = !DILocalVariable(name: "size", scope: !6200, file: !3, line: 535, type: !55)
!6205 = !DILocation(line: 533, column: 29, scope: !6200)
!6206 = !DILocation(line: 533, column: 45, scope: !6200)
!6207 = !DILocation(line: 535, column: 2, scope: !6200)
!6208 = !DILocation(line: 535, column: 9, scope: !6200)
!6209 = !DILocation(line: 535, column: 24, scope: !6200)
!6210 = !DILocation(line: 535, column: 16, scope: !6200)
!6211 = !DILocation(line: 536, column: 17, scope: !6200)
!6212 = !DILocation(line: 536, column: 23, scope: !6200)
!6213 = !DILocation(line: 536, column: 9, scope: !6200)
!6214 = !DILocation(line: 537, column: 1, scope: !6200)
!6215 = !DILocation(line: 536, column: 2, scope: !6200)
!6216 = distinct !DISubprogram(name: "kmalloc", scope: !259, file: !259, line: 591, type: !6217, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6219)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!40, !55, !269}
!6219 = !{!6220, !6221, !6222}
!6220 = !DILocalVariable(name: "size", arg: 1, scope: !6216, file: !259, line: 591, type: !55)
!6221 = !DILocalVariable(name: "flags", arg: 2, scope: !6216, file: !259, line: 591, type: !269)
!6222 = !DILocalVariable(name: "index", scope: !6223, file: !259, line: 594, type: !7)
!6223 = distinct !DILexicalBlock(scope: !6224, file: !259, line: 593, column: 42)
!6224 = distinct !DILexicalBlock(scope: !6216, file: !259, line: 593, column: 6)
!6225 = !DILocation(line: 591, column: 61, scope: !6216)
!6226 = !DILocation(line: 591, column: 73, scope: !6216)
!6227 = !DILocation(line: 593, column: 27, scope: !6224)
!6228 = !DILocation(line: 593, column: 6, scope: !6224)
!6229 = !DILocation(line: 593, column: 33, scope: !6224)
!6230 = !DILocation(line: 593, column: 36, scope: !6224)
!6231 = !DILocation(line: 593, column: 6, scope: !6216)
!6232 = !DILocation(line: 594, column: 3, scope: !6223)
!6233 = !DILocation(line: 594, column: 16, scope: !6223)
!6234 = !DILocation(line: 596, column: 7, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6223, file: !259, line: 596, column: 7)
!6236 = !DILocation(line: 596, column: 12, scope: !6235)
!6237 = !DILocation(line: 596, column: 7, scope: !6223)
!6238 = !DILocation(line: 597, column: 25, scope: !6235)
!6239 = !DILocation(line: 597, column: 31, scope: !6235)
!6240 = !DILocation(line: 597, column: 11, scope: !6235)
!6241 = !DILocation(line: 597, column: 4, scope: !6235)
!6242 = !DILocation(line: 599, column: 11, scope: !6223)
!6243 = !DILocation(line: 599, column: 9, scope: !6223)
!6244 = !DILocation(line: 601, column: 33, scope: !6223)
!6245 = !DILocation(line: 601, column: 40, scope: !6223)
!6246 = !DILocation(line: 601, column: 20, scope: !6223)
!6247 = !DILocation(line: 601, column: 5, scope: !6223)
!6248 = !DILocation(line: 601, column: 51, scope: !6223)
!6249 = !DILocation(line: 602, column: 5, scope: !6223)
!6250 = !DILocation(line: 602, column: 12, scope: !6223)
!6251 = !DILocation(line: 600, column: 10, scope: !6223)
!6252 = !DILocation(line: 600, column: 3, scope: !6223)
!6253 = !DILocation(line: 603, column: 2, scope: !6224)
!6254 = !DILocation(line: 604, column: 19, scope: !6216)
!6255 = !DILocation(line: 604, column: 25, scope: !6216)
!6256 = !DILocation(line: 604, column: 9, scope: !6216)
!6257 = !DILocation(line: 604, column: 2, scope: !6216)
!6258 = !DILocation(line: 605, column: 1, scope: !6216)
!6259 = distinct !DISubprogram(name: "mempool_kfree", scope: !3, file: !3, line: 540, type: !5126, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6260)
!6260 = !{!6261, !6262}
!6261 = !DILocalVariable(name: "element", arg: 1, scope: !6259, file: !3, line: 540, type: !40)
!6262 = !DILocalVariable(name: "pool_data", arg: 2, scope: !6259, file: !3, line: 540, type: !40)
!6263 = !DILocation(line: 540, column: 26, scope: !6259)
!6264 = !DILocation(line: 540, column: 41, scope: !6259)
!6265 = !DILocation(line: 542, column: 8, scope: !6259)
!6266 = !DILocation(line: 542, column: 2, scope: !6259)
!6267 = !DILocation(line: 543, column: 1, scope: !6259)
!6268 = distinct !DISubprogram(name: "mempool_alloc_pages", scope: !3, file: !3, line: 550, type: !5121, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6269)
!6269 = !{!6270, !6271, !6272}
!6270 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !6268, file: !3, line: 550, type: !269)
!6271 = !DILocalVariable(name: "pool_data", arg: 2, scope: !6268, file: !3, line: 550, type: !40)
!6272 = !DILocalVariable(name: "order", scope: !6268, file: !3, line: 552, type: !42)
!6273 = !DILocation(line: 550, column: 33, scope: !6268)
!6274 = !DILocation(line: 550, column: 49, scope: !6268)
!6275 = !DILocation(line: 552, column: 2, scope: !6268)
!6276 = !DILocation(line: 552, column: 6, scope: !6268)
!6277 = !DILocation(line: 552, column: 25, scope: !6268)
!6278 = !DILocation(line: 552, column: 19, scope: !6268)
!6279 = !DILocation(line: 552, column: 14, scope: !6268)
!6280 = !DILocation(line: 553, column: 21, scope: !6268)
!6281 = !DILocation(line: 553, column: 31, scope: !6268)
!6282 = !DILocation(line: 553, column: 9, scope: !6268)
!6283 = !DILocation(line: 554, column: 1, scope: !6268)
!6284 = !DILocation(line: 553, column: 2, scope: !6268)
!6285 = !DISubprogram(name: "alloc_pages", scope: !6286, file: !6286, line: 264, type: !6287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6286 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!6287 = !DISubroutineType(types: !6288)
!6288 = !{!1519, !269, !7}
!6289 = distinct !DISubprogram(name: "mempool_free_pages", scope: !3, file: !3, line: 557, type: !5126, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6290)
!6290 = !{!6291, !6292, !6293}
!6291 = !DILocalVariable(name: "element", arg: 1, scope: !6289, file: !3, line: 557, type: !40)
!6292 = !DILocalVariable(name: "pool_data", arg: 2, scope: !6289, file: !3, line: 557, type: !40)
!6293 = !DILocalVariable(name: "order", scope: !6289, file: !3, line: 559, type: !42)
!6294 = !DILocation(line: 557, column: 31, scope: !6289)
!6295 = !DILocation(line: 557, column: 46, scope: !6289)
!6296 = !DILocation(line: 559, column: 2, scope: !6289)
!6297 = !DILocation(line: 559, column: 6, scope: !6289)
!6298 = !DILocation(line: 559, column: 25, scope: !6289)
!6299 = !DILocation(line: 559, column: 19, scope: !6289)
!6300 = !DILocation(line: 559, column: 14, scope: !6289)
!6301 = !DILocation(line: 560, column: 15, scope: !6289)
!6302 = !DILocation(line: 560, column: 24, scope: !6289)
!6303 = !DILocation(line: 560, column: 2, scope: !6289)
!6304 = !DILocation(line: 561, column: 1, scope: !6289)
!6305 = !DISubprogram(name: "__free_pages", scope: !6286, file: !6286, line: 302, type: !6306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6306 = !DISubroutineType(types: !6307)
!6307 = !{null, !1519, !7}
!6308 = distinct !DISubprogram(name: "kasan_unpoison_element", scope: !3, file: !3, line: 116, type: !5396, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6309)
!6309 = !{!6310, !6311}
!6310 = !DILocalVariable(name: "pool", arg: 1, scope: !6308, file: !3, line: 116, type: !5108)
!6311 = !DILocalVariable(name: "element", arg: 2, scope: !6308, file: !3, line: 116, type: !40)
!6312 = !DILocation(line: 116, column: 47, scope: !6308)
!6313 = !DILocation(line: 116, column: 59, scope: !6308)
!6314 = !DILocation(line: 118, column: 6, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6308, file: !3, line: 118, column: 6)
!6316 = !DILocation(line: 118, column: 12, scope: !6315)
!6317 = !DILocation(line: 118, column: 18, scope: !6315)
!6318 = !DILocation(line: 118, column: 6, scope: !6308)
!6319 = !DILocation(line: 119, column: 24, scope: !6315)
!6320 = !DILocation(line: 119, column: 41, scope: !6315)
!6321 = !DILocation(line: 119, column: 47, scope: !6315)
!6322 = !DILocation(line: 119, column: 33, scope: !6315)
!6323 = !DILocation(line: 119, column: 3, scope: !6315)
!6324 = !DILocation(line: 120, column: 11, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 120, column: 11)
!6326 = !DILocation(line: 120, column: 17, scope: !6325)
!6327 = !DILocation(line: 120, column: 23, scope: !6325)
!6328 = !DILocation(line: 120, column: 11, scope: !6315)
!6329 = !DILocation(line: 121, column: 24, scope: !6325)
!6330 = !DILocation(line: 121, column: 49, scope: !6325)
!6331 = !DILocation(line: 121, column: 55, scope: !6325)
!6332 = !DILocation(line: 121, column: 33, scope: !6325)
!6333 = !DILocation(line: 121, column: 3, scope: !6325)
!6334 = !DILocation(line: 122, column: 11, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 122, column: 11)
!6336 = !DILocation(line: 122, column: 17, scope: !6335)
!6337 = !DILocation(line: 122, column: 23, scope: !6335)
!6338 = !DILocation(line: 122, column: 11, scope: !6325)
!6339 = !DILocation(line: 123, column: 24, scope: !6335)
!6340 = !DILocation(line: 123, column: 48, scope: !6335)
!6341 = !DILocation(line: 123, column: 54, scope: !6335)
!6342 = !DILocation(line: 123, column: 33, scope: !6335)
!6343 = !DILocation(line: 123, column: 3, scope: !6335)
!6344 = !DILocation(line: 125, column: 1, scope: !6308)
!6345 = distinct !DISubprogram(name: "check_element", scope: !3, file: !3, line: 99, type: !5396, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6346)
!6346 = !{!6347, !6348}
!6347 = !DILocalVariable(name: "pool", arg: 1, scope: !6345, file: !3, line: 99, type: !5108)
!6348 = !DILocalVariable(name: "element", arg: 2, scope: !6345, file: !3, line: 99, type: !40)
!6349 = !DILocation(line: 99, column: 45, scope: !6345)
!6350 = !DILocation(line: 99, column: 57, scope: !6345)
!6351 = !DILocation(line: 101, column: 1, scope: !6345)
!6352 = distinct !DISubprogram(name: "kasan_unpoison_range", scope: !6353, file: !6353, line: 236, type: !6354, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6356)
!6353 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6354 = !DISubroutineType(types: !6355)
!6355 = !{null, !2043, !55}
!6356 = !{!6357, !6358}
!6357 = !DILocalVariable(name: "address", arg: 1, scope: !6352, file: !6353, line: 236, type: !2043)
!6358 = !DILocalVariable(name: "size", arg: 2, scope: !6352, file: !6353, line: 236, type: !55)
!6359 = !DILocation(line: 236, column: 53, scope: !6352)
!6360 = !DILocation(line: 236, column: 69, scope: !6352)
!6361 = !DILocation(line: 236, column: 76, scope: !6352)
!6362 = !DISubprogram(name: "kmem_cache_size", scope: !259, file: !259, line: 769, type: !6363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{!7, !6050}
!6365 = distinct !DISubprogram(name: "kasan_unpoison_pages", scope: !6353, file: !6353, line: 239, type: !6366, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6368)
!6366 = !DISubroutineType(types: !6367)
!6367 = !{!841, !1519, !7, !841}
!6368 = !{!6369, !6370, !6371}
!6369 = !DILocalVariable(name: "page", arg: 1, scope: !6365, file: !6353, line: 239, type: !1519)
!6370 = !DILocalVariable(name: "order", arg: 2, scope: !6365, file: !6353, line: 239, type: !7)
!6371 = !DILocalVariable(name: "init", arg: 3, scope: !6365, file: !6353, line: 240, type: !841)
!6372 = !DILocation(line: 239, column: 54, scope: !6365)
!6373 = !DILocation(line: 239, column: 73, scope: !6365)
!6374 = !DILocation(line: 240, column: 11, scope: !6365)
!6375 = !DILocation(line: 242, column: 2, scope: !6365)
!6376 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6377, file: !6377, line: 51, type: !6378, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6380)
!6377 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!841, !841}
!6380 = !{!6381}
!6381 = !DILocalVariable(name: "overflow", arg: 1, scope: !6376, file: !6377, line: 51, type: !841)
!6382 = !DILocation(line: 51, column: 60, scope: !6376)
!6383 = !DILocation(line: 53, column: 9, scope: !6376)
!6384 = !{i8 0, i8 2}
!6385 = !DILocation(line: 53, column: 2, scope: !6376)
!6386 = distinct !DISubprogram(name: "kmalloc_node", scope: !259, file: !259, line: 607, type: !5513, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6387)
!6387 = !{!6388, !6389, !6390, !6391}
!6388 = !DILocalVariable(name: "size", arg: 1, scope: !6386, file: !259, line: 607, type: !55)
!6389 = !DILocalVariable(name: "flags", arg: 2, scope: !6386, file: !259, line: 607, type: !269)
!6390 = !DILocalVariable(name: "node", arg: 3, scope: !6386, file: !259, line: 607, type: !42)
!6391 = !DILocalVariable(name: "index", scope: !6392, file: !259, line: 610, type: !7)
!6392 = distinct !DILexicalBlock(scope: !6393, file: !259, line: 609, column: 42)
!6393 = distinct !DILexicalBlock(scope: !6386, file: !259, line: 609, column: 6)
!6394 = !DILocation(line: 607, column: 66, scope: !6386)
!6395 = !DILocation(line: 607, column: 78, scope: !6386)
!6396 = !DILocation(line: 607, column: 89, scope: !6386)
!6397 = !DILocation(line: 609, column: 27, scope: !6393)
!6398 = !DILocation(line: 609, column: 6, scope: !6393)
!6399 = !DILocation(line: 609, column: 33, scope: !6393)
!6400 = !DILocation(line: 609, column: 36, scope: !6393)
!6401 = !DILocation(line: 609, column: 6, scope: !6386)
!6402 = !DILocation(line: 610, column: 3, scope: !6392)
!6403 = !DILocation(line: 610, column: 16, scope: !6392)
!6404 = !DILocation(line: 612, column: 7, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6392, file: !259, line: 612, column: 7)
!6406 = !DILocation(line: 612, column: 12, scope: !6405)
!6407 = !DILocation(line: 612, column: 7, scope: !6392)
!6408 = !DILocation(line: 613, column: 30, scope: !6405)
!6409 = !DILocation(line: 613, column: 36, scope: !6405)
!6410 = !DILocation(line: 613, column: 43, scope: !6405)
!6411 = !DILocation(line: 613, column: 11, scope: !6405)
!6412 = !DILocation(line: 613, column: 4, scope: !6405)
!6413 = !DILocation(line: 615, column: 11, scope: !6392)
!6414 = !DILocation(line: 615, column: 9, scope: !6392)
!6415 = !DILocation(line: 617, column: 33, scope: !6392)
!6416 = !DILocation(line: 617, column: 40, scope: !6392)
!6417 = !DILocation(line: 617, column: 20, scope: !6392)
!6418 = !DILocation(line: 617, column: 5, scope: !6392)
!6419 = !DILocation(line: 617, column: 51, scope: !6392)
!6420 = !DILocation(line: 618, column: 5, scope: !6392)
!6421 = !DILocation(line: 618, column: 12, scope: !6392)
!6422 = !DILocation(line: 618, column: 18, scope: !6392)
!6423 = !DILocation(line: 616, column: 10, scope: !6392)
!6424 = !DILocation(line: 616, column: 3, scope: !6392)
!6425 = !DILocation(line: 619, column: 2, scope: !6393)
!6426 = !DILocation(line: 620, column: 24, scope: !6386)
!6427 = !DILocation(line: 620, column: 30, scope: !6386)
!6428 = !DILocation(line: 620, column: 37, scope: !6386)
!6429 = !DILocation(line: 620, column: 9, scope: !6386)
!6430 = !DILocation(line: 620, column: 2, scope: !6386)
!6431 = !DILocation(line: 621, column: 1, scope: !6386)
!6432 = !DISubprogram(name: "__kmalloc_node", scope: !259, file: !259, line: 520, type: !5513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6433 = !DISubprogram(name: "kmalloc_large_node", scope: !259, file: !259, line: 534, type: !5513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6434 = distinct !DISubprogram(name: "__kmalloc_index", scope: !259, file: !259, line: 444, type: !6435, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6437)
!6435 = !DISubroutineType(types: !6436)
!6436 = !{!7, !55, !841}
!6437 = !{!6438, !6439}
!6438 = !DILocalVariable(name: "size", arg: 1, scope: !6434, file: !259, line: 444, type: !55)
!6439 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6434, file: !259, line: 445, type: !841)
!6440 = !DILocation(line: 444, column: 60, scope: !6434)
!6441 = !DILocation(line: 445, column: 16, scope: !6434)
!6442 = !DILocation(line: 447, column: 7, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 447, column: 6)
!6444 = !DILocation(line: 447, column: 6, scope: !6434)
!6445 = !DILocation(line: 448, column: 3, scope: !6443)
!6446 = !DILocation(line: 450, column: 6, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 450, column: 6)
!6448 = !DILocation(line: 450, column: 11, scope: !6447)
!6449 = !DILocation(line: 450, column: 6, scope: !6434)
!6450 = !DILocation(line: 451, column: 3, scope: !6447)
!6451 = !DILocation(line: 453, column: 32, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 453, column: 6)
!6453 = !DILocation(line: 453, column: 37, scope: !6452)
!6454 = !DILocation(line: 453, column: 42, scope: !6452)
!6455 = !DILocation(line: 453, column: 45, scope: !6452)
!6456 = !DILocation(line: 453, column: 50, scope: !6452)
!6457 = !DILocation(line: 453, column: 6, scope: !6434)
!6458 = !DILocation(line: 454, column: 3, scope: !6452)
!6459 = !DILocation(line: 455, column: 32, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 455, column: 6)
!6461 = !DILocation(line: 455, column: 37, scope: !6460)
!6462 = !DILocation(line: 455, column: 43, scope: !6460)
!6463 = !DILocation(line: 455, column: 46, scope: !6460)
!6464 = !DILocation(line: 455, column: 51, scope: !6460)
!6465 = !DILocation(line: 455, column: 6, scope: !6434)
!6466 = !DILocation(line: 456, column: 3, scope: !6460)
!6467 = !DILocation(line: 457, column: 6, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 457, column: 6)
!6469 = !DILocation(line: 457, column: 11, scope: !6468)
!6470 = !DILocation(line: 457, column: 6, scope: !6434)
!6471 = !DILocation(line: 457, column: 26, scope: !6468)
!6472 = !DILocation(line: 458, column: 6, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 458, column: 6)
!6474 = !DILocation(line: 458, column: 11, scope: !6473)
!6475 = !DILocation(line: 458, column: 6, scope: !6434)
!6476 = !DILocation(line: 458, column: 26, scope: !6473)
!6477 = !DILocation(line: 459, column: 6, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 459, column: 6)
!6479 = !DILocation(line: 459, column: 11, scope: !6478)
!6480 = !DILocation(line: 459, column: 6, scope: !6434)
!6481 = !DILocation(line: 459, column: 26, scope: !6478)
!6482 = !DILocation(line: 460, column: 6, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 460, column: 6)
!6484 = !DILocation(line: 460, column: 11, scope: !6483)
!6485 = !DILocation(line: 460, column: 6, scope: !6434)
!6486 = !DILocation(line: 460, column: 26, scope: !6483)
!6487 = !DILocation(line: 461, column: 6, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 461, column: 6)
!6489 = !DILocation(line: 461, column: 11, scope: !6488)
!6490 = !DILocation(line: 461, column: 6, scope: !6434)
!6491 = !DILocation(line: 461, column: 26, scope: !6488)
!6492 = !DILocation(line: 462, column: 6, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 462, column: 6)
!6494 = !DILocation(line: 462, column: 11, scope: !6493)
!6495 = !DILocation(line: 462, column: 6, scope: !6434)
!6496 = !DILocation(line: 462, column: 26, scope: !6493)
!6497 = !DILocation(line: 463, column: 6, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 463, column: 6)
!6499 = !DILocation(line: 463, column: 11, scope: !6498)
!6500 = !DILocation(line: 463, column: 6, scope: !6434)
!6501 = !DILocation(line: 463, column: 26, scope: !6498)
!6502 = !DILocation(line: 464, column: 6, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 464, column: 6)
!6504 = !DILocation(line: 464, column: 11, scope: !6503)
!6505 = !DILocation(line: 464, column: 6, scope: !6434)
!6506 = !DILocation(line: 464, column: 26, scope: !6503)
!6507 = !DILocation(line: 465, column: 6, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 465, column: 6)
!6509 = !DILocation(line: 465, column: 11, scope: !6508)
!6510 = !DILocation(line: 465, column: 6, scope: !6434)
!6511 = !DILocation(line: 465, column: 26, scope: !6508)
!6512 = !DILocation(line: 466, column: 6, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 466, column: 6)
!6514 = !DILocation(line: 466, column: 11, scope: !6513)
!6515 = !DILocation(line: 466, column: 6, scope: !6434)
!6516 = !DILocation(line: 466, column: 26, scope: !6513)
!6517 = !DILocation(line: 467, column: 6, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 467, column: 6)
!6519 = !DILocation(line: 467, column: 11, scope: !6518)
!6520 = !DILocation(line: 467, column: 6, scope: !6434)
!6521 = !DILocation(line: 467, column: 26, scope: !6518)
!6522 = !DILocation(line: 468, column: 6, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 468, column: 6)
!6524 = !DILocation(line: 468, column: 11, scope: !6523)
!6525 = !DILocation(line: 468, column: 6, scope: !6434)
!6526 = !DILocation(line: 468, column: 26, scope: !6523)
!6527 = !DILocation(line: 469, column: 6, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 469, column: 6)
!6529 = !DILocation(line: 469, column: 11, scope: !6528)
!6530 = !DILocation(line: 469, column: 6, scope: !6434)
!6531 = !DILocation(line: 469, column: 26, scope: !6528)
!6532 = !DILocation(line: 470, column: 6, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 470, column: 6)
!6534 = !DILocation(line: 470, column: 11, scope: !6533)
!6535 = !DILocation(line: 470, column: 6, scope: !6434)
!6536 = !DILocation(line: 470, column: 26, scope: !6533)
!6537 = !DILocation(line: 471, column: 6, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 471, column: 6)
!6539 = !DILocation(line: 471, column: 11, scope: !6538)
!6540 = !DILocation(line: 471, column: 6, scope: !6434)
!6541 = !DILocation(line: 471, column: 26, scope: !6538)
!6542 = !DILocation(line: 472, column: 6, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 472, column: 6)
!6544 = !DILocation(line: 472, column: 11, scope: !6543)
!6545 = !DILocation(line: 472, column: 6, scope: !6434)
!6546 = !DILocation(line: 472, column: 26, scope: !6543)
!6547 = !DILocation(line: 473, column: 6, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 473, column: 6)
!6549 = !DILocation(line: 473, column: 11, scope: !6548)
!6550 = !DILocation(line: 473, column: 6, scope: !6434)
!6551 = !DILocation(line: 473, column: 26, scope: !6548)
!6552 = !DILocation(line: 474, column: 6, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 474, column: 6)
!6554 = !DILocation(line: 474, column: 11, scope: !6553)
!6555 = !DILocation(line: 474, column: 6, scope: !6434)
!6556 = !DILocation(line: 474, column: 27, scope: !6553)
!6557 = !DILocation(line: 475, column: 6, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 475, column: 6)
!6559 = !DILocation(line: 475, column: 11, scope: !6558)
!6560 = !DILocation(line: 475, column: 6, scope: !6434)
!6561 = !DILocation(line: 475, column: 32, scope: !6558)
!6562 = !DILocation(line: 477, column: 50, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6434, file: !259, line: 477, column: 6)
!6564 = !DILocation(line: 477, column: 6, scope: !6434)
!6565 = !DILocation(line: 478, column: 3, scope: !6563)
!6566 = !DILocation(line: 478, column: 3, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6568, file: !259, line: 478, column: 3)
!6568 = distinct !DILexicalBlock(scope: !6563, file: !259, line: 478, column: 3)
!6569 = !{i32 -2142320240}
!6570 = !DILocation(line: 478, column: 3, scope: !6568)
!6571 = !DILocation(line: 480, column: 3, scope: !6563)
!6572 = !DILocation(line: 480, column: 3, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6563, file: !259, line: 480, column: 3)
!6574 = !DILocation(line: 480, column: 3, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6573, file: !259, line: 480, column: 3)
!6576 = !DILocation(line: 480, column: 3, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6573, file: !259, line: 480, column: 3)
!6578 = !{i64 2152647259, i64 2152647288, i64 2152647334, i64 2152647392, i64 2152647446, i64 2152647500, i64 2152647555, i64 2152647586}
!6579 = !DILocation(line: 483, column: 2, scope: !6434)
!6580 = !DILocation(line: 484, column: 1, scope: !6434)
!6581 = !DISubprogram(name: "kmalloc_node_trace", scope: !259, file: !259, line: 528, type: !6582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6582 = !DISubroutineType(types: !6583)
!6583 = !{!40, !6050, !269, !42, !55}
!6584 = distinct !DISubprogram(name: "kmalloc_type", scope: !259, file: !259, line: 401, type: !6585, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6587)
!6585 = !DISubroutineType(types: !6586)
!6586 = !{!258, !269, !59}
!6587 = !{!6588, !6589}
!6588 = !DILocalVariable(name: "flags", arg: 1, scope: !6584, file: !259, line: 401, type: !269)
!6589 = !DILocalVariable(name: "caller", arg: 2, scope: !6584, file: !259, line: 401, type: !59)
!6590 = !DILocation(line: 401, column: 67, scope: !6584)
!6591 = !DILocation(line: 401, column: 88, scope: !6584)
!6592 = !DILocation(line: 407, column: 6, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6584, file: !259, line: 407, column: 6)
!6594 = !DILocation(line: 407, column: 6, scope: !6584)
!6595 = !DILocation(line: 413, column: 3, scope: !6593)
!6596 = !DILocation(line: 423, column: 38, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6584, file: !259, line: 423, column: 6)
!6598 = !DILocation(line: 423, column: 44, scope: !6597)
!6599 = !DILocation(line: 423, column: 6, scope: !6584)
!6600 = !DILocation(line: 424, column: 3, scope: !6597)
!6601 = !DILocation(line: 426, column: 3, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6584, file: !259, line: 425, column: 6)
!6603 = !DILocation(line: 429, column: 1, scope: !6584)
!6604 = !DISubprogram(name: "__compiletime_assert_206", scope: !259, file: !259, line: 478, type: !2552, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6605 = distinct !DISubprogram(name: "poison_element", scope: !3, file: !3, line: 102, type: !5396, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6606)
!6606 = !{!6607, !6608}
!6607 = !DILocalVariable(name: "pool", arg: 1, scope: !6605, file: !3, line: 102, type: !5108)
!6608 = !DILocalVariable(name: "element", arg: 2, scope: !6605, file: !3, line: 102, type: !40)
!6609 = !DILocation(line: 102, column: 46, scope: !6605)
!6610 = !DILocation(line: 102, column: 58, scope: !6605)
!6611 = !DILocation(line: 104, column: 1, scope: !6605)
!6612 = distinct !DISubprogram(name: "kasan_poison_element", scope: !3, file: !3, line: 107, type: !5396, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6613)
!6613 = !{!6614, !6615}
!6614 = !DILocalVariable(name: "pool", arg: 1, scope: !6612, file: !3, line: 107, type: !5108)
!6615 = !DILocalVariable(name: "element", arg: 2, scope: !6612, file: !3, line: 107, type: !40)
!6616 = !DILocation(line: 107, column: 61, scope: !6612)
!6617 = !DILocation(line: 107, column: 73, scope: !6612)
!6618 = !DILocation(line: 109, column: 6, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 109, column: 6)
!6620 = !DILocation(line: 109, column: 12, scope: !6619)
!6621 = !DILocation(line: 109, column: 18, scope: !6619)
!6622 = !DILocation(line: 109, column: 40, scope: !6619)
!6623 = !DILocation(line: 109, column: 43, scope: !6619)
!6624 = !DILocation(line: 109, column: 49, scope: !6619)
!6625 = !DILocation(line: 109, column: 55, scope: !6619)
!6626 = !DILocation(line: 109, column: 6, scope: !6612)
!6627 = !DILocation(line: 110, column: 27, scope: !6619)
!6628 = !DILocation(line: 110, column: 3, scope: !6619)
!6629 = !DILocation(line: 111, column: 11, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6619, file: !3, line: 111, column: 11)
!6631 = !DILocation(line: 111, column: 17, scope: !6630)
!6632 = !DILocation(line: 111, column: 23, scope: !6630)
!6633 = !DILocation(line: 111, column: 11, scope: !6619)
!6634 = !DILocation(line: 112, column: 22, scope: !6630)
!6635 = !DILocation(line: 112, column: 46, scope: !6630)
!6636 = !DILocation(line: 112, column: 52, scope: !6630)
!6637 = !DILocation(line: 112, column: 31, scope: !6630)
!6638 = !DILocation(line: 112, column: 3, scope: !6630)
!6639 = !DILocation(line: 114, column: 1, scope: !6612)
!6640 = distinct !DISubprogram(name: "kasan_slab_free_mempool", scope: !6353, file: !6353, line: 259, type: !1174, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6641)
!6641 = !{!6642}
!6642 = !DILocalVariable(name: "ptr", arg: 1, scope: !6640, file: !6353, line: 259, type: !40)
!6643 = !DILocation(line: 259, column: 50, scope: !6640)
!6644 = !DILocation(line: 259, column: 56, scope: !6640)
!6645 = distinct !DISubprogram(name: "kasan_poison_pages", scope: !6353, file: !6353, line: 237, type: !6646, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6648)
!6646 = !DISubroutineType(types: !6647)
!6647 = !{null, !1519, !7, !841}
!6648 = !{!6649, !6650, !6651}
!6649 = !DILocalVariable(name: "page", arg: 1, scope: !6645, file: !6353, line: 237, type: !1519)
!6650 = !DILocalVariable(name: "order", arg: 2, scope: !6645, file: !6353, line: 237, type: !7)
!6651 = !DILocalVariable(name: "init", arg: 3, scope: !6645, file: !6353, line: 238, type: !841)
!6652 = !DILocation(line: 237, column: 52, scope: !6645)
!6653 = !DILocation(line: 237, column: 71, scope: !6645)
!6654 = !DILocation(line: 238, column: 16, scope: !6645)
!6655 = !DILocation(line: 238, column: 23, scope: !6645)
!6656 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5728, file: !5728, line: 43, type: !6657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{null, !5346, !59}
!6659 = !DISubprogram(name: "__kmalloc", scope: !259, file: !259, line: 488, type: !6217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6660 = distinct !DISubprogram(name: "fs_reclaim_acquire", scope: !5904, file: !5904, line: 263, type: !5905, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6661)
!6661 = !{!6662}
!6662 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !6660, file: !5904, line: 263, type: !269)
!6663 = !DILocation(line: 263, column: 45, scope: !6660)
!6664 = !DILocation(line: 263, column: 57, scope: !6660)
!6665 = distinct !DISubprogram(name: "fs_reclaim_release", scope: !5904, file: !5904, line: 264, type: !5905, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6666)
!6666 = !{!6667}
!6667 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !6665, file: !5904, line: 264, type: !269)
!6668 = !DILocation(line: 264, column: 45, scope: !6665)
!6669 = !DILocation(line: 264, column: 57, scope: !6665)
!6670 = distinct !DISubprogram(name: "gfpflags_allow_blocking", scope: !6286, file: !6286, line: 34, type: !6671, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6674)
!6671 = !DISubroutineType(types: !6672)
!6672 = !{!841, !6673}
!6673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!6674 = !{!6675}
!6675 = !DILocalVariable(name: "gfp_flags", arg: 1, scope: !6670, file: !6286, line: 34, type: !6673)
!6676 = !DILocation(line: 34, column: 56, scope: !6670)
!6677 = !DILocation(line: 36, column: 12, scope: !6670)
!6678 = !DILocation(line: 36, column: 22, scope: !6670)
!6679 = !DILocation(line: 36, column: 10, scope: !6670)
!6680 = !DILocation(line: 36, column: 9, scope: !6670)
!6681 = !DILocation(line: 36, column: 2, scope: !6670)
!6682 = !DISubprogram(name: "kmalloc_large", scope: !259, file: !259, line: 531, type: !6217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6683 = !DISubprogram(name: "kmalloc_trace", scope: !259, file: !259, line: 525, type: !6684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6684 = !DISubroutineType(types: !6685)
!6685 = !{!40, !6050, !269, !55}
