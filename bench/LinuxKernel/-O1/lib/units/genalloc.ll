; ModuleID = 'lib/genalloc.c'
source_filename = "lib/genalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_add_owner: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_add_owner ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_virt_to_phys: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_virt_to_phys ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_destroy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_alloc_algo_owner: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_alloc_algo_owner ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_dma_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_dma_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_dma_alloc_algo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_dma_alloc_algo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_dma_alloc_align: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_dma_alloc_align ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_dma_zalloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_dma_zalloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_dma_zalloc_algo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_dma_zalloc_algo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_dma_zalloc_align: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_dma_zalloc_align ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_free_owner: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_free_owner ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_for_each_chunk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_for_each_chunk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_has_addr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_has_addr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_avail: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_avail ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_size: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_set_algo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_set_algo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_first_fit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_first_fit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_first_fit_align: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_first_fit_align ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_fixed_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_fixed_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_first_fit_order_align: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_first_fit_order_align ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_best_fit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_best_fit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gen_pool_get: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad gen_pool_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_gen_pool_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_gen_pool_create ; .previous"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.gen_pool_chunk = type { %struct.list_head, %struct.atomic64_t, i64, ptr, i64, i64, [0 x i64] }
%struct.atomic64_t = type { i64 }
%struct.genpool_data_align = type { i32 }
%struct.genpool_data_fixed = type { i64 }

@__UNIQUE_ID___addressable_gen_pool_create207 = internal global ptr @gen_pool_create, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_gen_pool_add_owner208 = internal global ptr @gen_pool_add_owner, section ".discard.addressable", align 8, !dbg !213
@__UNIQUE_ID___addressable_gen_pool_virt_to_phys211 = internal global ptr @gen_pool_virt_to_phys, section ".discard.addressable", align 8, !dbg !215
@.str = private unnamed_addr constant [15 x i8] c"lib/genalloc.c\00", align 1, !dbg !217
@__UNIQUE_ID___addressable_gen_pool_destroy212 = internal global ptr @gen_pool_destroy, section ".discard.addressable", align 8, !dbg !222
@__UNIQUE_ID___addressable_gen_pool_alloc_algo_owner215 = internal global ptr @gen_pool_alloc_algo_owner, section ".discard.addressable", align 8, !dbg !224
@__UNIQUE_ID___addressable_gen_pool_dma_alloc216 = internal global ptr @gen_pool_dma_alloc, section ".discard.addressable", align 8, !dbg !226
@__UNIQUE_ID___addressable_gen_pool_dma_alloc_algo217 = internal global ptr @gen_pool_dma_alloc_algo, section ".discard.addressable", align 8, !dbg !228
@__UNIQUE_ID___addressable_gen_pool_dma_alloc_align218 = internal global ptr @gen_pool_dma_alloc_align, section ".discard.addressable", align 8, !dbg !230
@__UNIQUE_ID___addressable_gen_pool_dma_zalloc219 = internal global ptr @gen_pool_dma_zalloc, section ".discard.addressable", align 8, !dbg !232
@__UNIQUE_ID___addressable_gen_pool_dma_zalloc_algo220 = internal global ptr @gen_pool_dma_zalloc_algo, section ".discard.addressable", align 8, !dbg !234
@__UNIQUE_ID___addressable_gen_pool_dma_zalloc_align221 = internal global ptr @gen_pool_dma_zalloc_align, section ".discard.addressable", align 8, !dbg !236
@__UNIQUE_ID___addressable_gen_pool_free_owner224 = internal global ptr @gen_pool_free_owner, section ".discard.addressable", align 8, !dbg !238
@__UNIQUE_ID___addressable_gen_pool_for_each_chunk227 = internal global ptr @gen_pool_for_each_chunk, section ".discard.addressable", align 8, !dbg !240
@__UNIQUE_ID___addressable_gen_pool_has_addr230 = internal global ptr @gen_pool_has_addr, section ".discard.addressable", align 8, !dbg !242
@__UNIQUE_ID___addressable_gen_pool_avail233 = internal global ptr @gen_pool_avail, section ".discard.addressable", align 8, !dbg !244
@__UNIQUE_ID___addressable_gen_pool_size236 = internal global ptr @gen_pool_size, section ".discard.addressable", align 8, !dbg !246
@__UNIQUE_ID___addressable_gen_pool_set_algo237 = internal global ptr @gen_pool_set_algo, section ".discard.addressable", align 8, !dbg !248
@__UNIQUE_ID___addressable_gen_pool_first_fit238 = internal global ptr @gen_pool_first_fit, section ".discard.addressable", align 8, !dbg !250
@__UNIQUE_ID___addressable_gen_pool_first_fit_align239 = internal global ptr @gen_pool_first_fit_align, section ".discard.addressable", align 8, !dbg !252
@__UNIQUE_ID___addressable_gen_pool_fixed_alloc240 = internal global ptr @gen_pool_fixed_alloc, section ".discard.addressable", align 8, !dbg !254
@__UNIQUE_ID___addressable_gen_pool_first_fit_order_align241 = internal global ptr @gen_pool_first_fit_order_align, section ".discard.addressable", align 8, !dbg !256
@__UNIQUE_ID___addressable_gen_pool_best_fit242 = internal global ptr @gen_pool_best_fit, section ".discard.addressable", align 8, !dbg !258
@__UNIQUE_ID___addressable_gen_pool_get243 = internal global ptr @gen_pool_get, section ".discard.addressable", align 8, !dbg !260
@.str.1 = private unnamed_addr constant [22 x i8] c"devm_gen_pool_release\00", align 1, !dbg !262
@__UNIQUE_ID___addressable_devm_gen_pool_create244 = internal global ptr @devm_gen_pool_create, section ".discard.addressable", align 8, !dbg !267
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !269
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID___addressable_gen_pool_create207, ptr @__UNIQUE_ID___addressable_gen_pool_add_owner208, ptr @__UNIQUE_ID___addressable_gen_pool_virt_to_phys211, ptr @__UNIQUE_ID___addressable_gen_pool_destroy212, ptr @__UNIQUE_ID___addressable_gen_pool_alloc_algo_owner215, ptr @__UNIQUE_ID___addressable_gen_pool_dma_alloc216, ptr @__UNIQUE_ID___addressable_gen_pool_dma_alloc_algo217, ptr @__UNIQUE_ID___addressable_gen_pool_dma_alloc_align218, ptr @__UNIQUE_ID___addressable_gen_pool_dma_zalloc219, ptr @__UNIQUE_ID___addressable_gen_pool_dma_zalloc_algo220, ptr @__UNIQUE_ID___addressable_gen_pool_dma_zalloc_align221, ptr @__UNIQUE_ID___addressable_gen_pool_free_owner224, ptr @__UNIQUE_ID___addressable_gen_pool_for_each_chunk227, ptr @__UNIQUE_ID___addressable_gen_pool_has_addr230, ptr @__UNIQUE_ID___addressable_gen_pool_avail233, ptr @__UNIQUE_ID___addressable_gen_pool_size236, ptr @__UNIQUE_ID___addressable_gen_pool_set_algo237, ptr @__UNIQUE_ID___addressable_gen_pool_first_fit238, ptr @__UNIQUE_ID___addressable_gen_pool_first_fit_align239, ptr @__UNIQUE_ID___addressable_gen_pool_fixed_alloc240, ptr @__UNIQUE_ID___addressable_gen_pool_first_fit_order_align241, ptr @__UNIQUE_ID___addressable_gen_pool_best_fit242, ptr @__UNIQUE_ID___addressable_gen_pool_get243, ptr @__UNIQUE_ID___addressable_devm_gen_pool_create244], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gen_pool_create(i32 noundef %min_alloc_order, i32 noundef %nid) #0 align 16 !dbg !283 {
entry:
  %min_alloc_order.addr = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  %pool = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  store i32 %min_alloc_order, ptr %min_alloc_order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_alloc_order.addr, metadata !287, metadata !DIExpression()), !dbg !290
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !288, metadata !DIExpression()), !dbg !291
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #17, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !289, metadata !DIExpression()), !dbg !293
  %0 = load i32, ptr %nid.addr, align 4, !dbg !294
  %call = call noalias ptr @kmalloc_node(i64 noundef 56, i32 noundef 3264, i32 noundef %0) #18, !dbg !295
  store ptr %call, ptr %pool, align 8, !dbg !296
  %1 = load ptr, ptr %pool, align 8, !dbg !297
  %cmp = icmp ne ptr %1, null, !dbg !299
  br i1 %cmp, label %if.then, label %if.end, !dbg !300

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !301

do.body:                                          ; preds = %if.then
  %2 = load ptr, ptr %pool, align 8, !dbg !303
  %lock = getelementptr inbounds %struct.gen_pool, ptr %2, i32 0, i32 0, !dbg !303
  %call1 = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !303
  %3 = load ptr, ptr %pool, align 8, !dbg !303
  %lock2 = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 0, !dbg !303
  %4 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !303
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %4, i32 0, i32 0, !dbg !303
  %5 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !303
  %counter = getelementptr inbounds %struct.atomic_t, ptr %5, i32 0, i32 0, !dbg !303
  store i32 0, ptr %counter, align 4, !dbg !303
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !303
  br label %do.cond, !dbg !303

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !303

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %pool, align 8, !dbg !305
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %6, i32 0, i32 1, !dbg !306
  call void @INIT_LIST_HEAD(ptr noundef %chunks) #19, !dbg !307
  %7 = load i32, ptr %min_alloc_order.addr, align 4, !dbg !308
  %8 = load ptr, ptr %pool, align 8, !dbg !309
  %min_alloc_order3 = getelementptr inbounds %struct.gen_pool, ptr %8, i32 0, i32 2, !dbg !310
  store i32 %7, ptr %min_alloc_order3, align 8, !dbg !311
  %9 = load ptr, ptr %pool, align 8, !dbg !312
  %algo = getelementptr inbounds %struct.gen_pool, ptr %9, i32 0, i32 3, !dbg !313
  store ptr @gen_pool_first_fit, ptr %algo, align 8, !dbg !314
  %10 = load ptr, ptr %pool, align 8, !dbg !315
  %data = getelementptr inbounds %struct.gen_pool, ptr %10, i32 0, i32 4, !dbg !316
  store ptr null, ptr %data, align 8, !dbg !317
  %11 = load ptr, ptr %pool, align 8, !dbg !318
  %name = getelementptr inbounds %struct.gen_pool, ptr %11, i32 0, i32 5, !dbg !319
  store ptr null, ptr %name, align 8, !dbg !320
  br label %if.end, !dbg !321

if.end:                                           ; preds = %do.end, %entry
  %12 = load ptr, ptr %pool, align 8, !dbg !322
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #17, !dbg !323
  ret ptr %12, !dbg !324
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #3 align 16 !dbg !325 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !333, metadata !DIExpression()), !dbg !339
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !334, metadata !DIExpression()), !dbg !340
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !335, metadata !DIExpression()), !dbg !341
  %0 = load i64, ptr %size.addr, align 8, !dbg !342
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !343
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !344

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !345
  %tobool = icmp ne i64 %2, 0, !dbg !345
  br i1 %tobool, label %if.then, label %if.end7, !dbg !346

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %index, metadata !336, metadata !DIExpression()), !dbg !348
  %3 = load i64, ptr %size.addr, align 8, !dbg !349
  %cmp = icmp ugt i64 %3, 8192, !dbg !351
  br i1 %cmp, label %if.then1, label %if.end, !dbg !352

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !353
  %5 = load i32, ptr %flags.addr, align 4, !dbg !354
  %6 = load i32, ptr %node.addr, align 4, !dbg !355
  %call = call noalias align 4096 ptr @kmalloc_large_node(i64 noundef %4, i32 noundef %5, i32 noundef %6) #18, !dbg !356
  store ptr %call, ptr %retval, align 8, !dbg !357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !357

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !358
  %call2 = call i32 @__kmalloc_index(i64 noundef %7, i1 noundef zeroext true) #19, !dbg !358
  store i32 %call2, ptr %index, align 4, !dbg !359
  %8 = load i32, ptr %flags.addr, align 4, !dbg !360
  %9 = call ptr @llvm.returnaddress(i32 0), !dbg !361
  %10 = ptrtoint ptr %9 to i64, !dbg !361
  %call3 = call i32 @kmalloc_type(i32 noundef %8, i64 noundef %10) #19, !dbg !362
  %idxprom = zext i32 %call3 to i64, !dbg !363
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !363
  %11 = load i32, ptr %index, align 4, !dbg !364
  %idxprom4 = zext i32 %11 to i64, !dbg !363
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !363
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !363
  %13 = load i32, ptr %flags.addr, align 4, !dbg !365
  %14 = load i32, ptr %node.addr, align 4, !dbg !366
  %15 = load i64, ptr %size.addr, align 8, !dbg !367
  %call6 = call noalias align 8 ptr @kmalloc_node_trace(ptr noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15) #20, !dbg !368
  store ptr %call6, ptr %retval, align 8, !dbg !369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !369

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !370
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %16 = load i64, ptr %size.addr, align 8, !dbg !371
  %17 = load i32, ptr %flags.addr, align 4, !dbg !372
  %18 = load i32, ptr %node.addr, align 4, !dbg !373
  %call8 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %16, i32 noundef %17, i32 noundef %18) #18, !dbg !374
  store ptr %call8, ptr %retval, align 8, !dbg !375
  br label %return, !dbg !375

return:                                           ; preds = %if.end7, %cleanup
  %19 = load ptr, ptr %retval, align 8, !dbg !376
  ret ptr %19, !dbg !376
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !377 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !387
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !388
  ret ptr %1, !dbg !389
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !390 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !395, metadata !DIExpression()), !dbg !396
  br label %do.body, !dbg !397

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !398

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !400

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !398

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !402
  %1 = load ptr, ptr %list.addr, align 8, !dbg !402
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !402
  store volatile ptr %0, ptr %next, align 8, !dbg !402
  br label %do.end3, !dbg !402

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !398

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !404

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !405

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !407

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !405

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !409
  %3 = load ptr, ptr %list.addr, align 8, !dbg !409
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !409
  store volatile ptr %2, ptr %prev, align 8, !dbg !409
  br label %do.end9, !dbg !409

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !405

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @gen_pool_first_fit(ptr noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, ptr noundef %data, ptr noundef %pool, i64 noundef %start_addr) #0 align 16 !dbg !412 {
entry:
  %map.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %nr.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %start_addr.addr = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !414, metadata !DIExpression()), !dbg !421
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !415, metadata !DIExpression()), !dbg !422
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !416, metadata !DIExpression()), !dbg !423
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !417, metadata !DIExpression()), !dbg !424
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !418, metadata !DIExpression()), !dbg !425
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !419, metadata !DIExpression()), !dbg !426
  store i64 %start_addr, ptr %start_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_addr.addr, metadata !420, metadata !DIExpression()), !dbg !427
  %0 = load ptr, ptr %map.addr, align 8, !dbg !428
  %1 = load i64, ptr %size.addr, align 8, !dbg !429
  %2 = load i64, ptr %start.addr, align 8, !dbg !430
  %3 = load i32, ptr %nr.addr, align 4, !dbg !431
  %call = call i64 @bitmap_find_next_zero_area(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef 0) #19, !dbg !432
  ret i64 %call, !dbg !433
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @gen_pool_add_owner(ptr noundef %pool, i64 noundef %virt, i64 noundef %phys, i64 noundef %size, i32 noundef %nid, ptr noundef %owner) #0 align 16 !dbg !434 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %virt.addr = alloca i64, align 8
  %phys.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %nid.addr = alloca i32, align 4
  %owner.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %nbits = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !438, metadata !DIExpression()), !dbg !447
  store i64 %virt, ptr %virt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virt.addr, metadata !439, metadata !DIExpression()), !dbg !448
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !440, metadata !DIExpression()), !dbg !449
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !441, metadata !DIExpression()), !dbg !450
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !442, metadata !DIExpression()), !dbg !451
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !443, metadata !DIExpression()), !dbg !452
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #17, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !444, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbits) #17, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %nbits, metadata !445, metadata !DIExpression()), !dbg !456
  %0 = load i64, ptr %size.addr, align 8, !dbg !457
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !458
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 2, !dbg !459
  %2 = load i32, ptr %min_alloc_order, align 8, !dbg !459
  %sh_prom = zext i32 %2 to i64, !dbg !460
  %shr = lshr i64 %0, %sh_prom, !dbg !460
  store i64 %shr, ptr %nbits, align 8, !dbg !456
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbytes) #17, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %nbytes, metadata !446, metadata !DIExpression()), !dbg !462
  %3 = load i64, ptr %nbits, align 8, !dbg !463
  %add = add i64 %3, 64, !dbg !463
  %sub = sub i64 %add, 1, !dbg !463
  %div = udiv i64 %sub, 64, !dbg !463
  %mul = mul i64 %div, 8, !dbg !464
  %add1 = add i64 56, %mul, !dbg !465
  store i64 %add1, ptr %nbytes, align 8, !dbg !462
  %4 = load i64, ptr %nbytes, align 8, !dbg !466
  %5 = load i32, ptr %nid.addr, align 4, !dbg !467
  %call = call noalias ptr @vzalloc_node(i64 noundef %4, i32 noundef %5) #18, !dbg !468
  store ptr %call, ptr %chunk, align 8, !dbg !469
  %6 = load ptr, ptr %chunk, align 8, !dbg !470
  %cmp = icmp eq ptr %6, null, !dbg !470
  %lnot = xor i1 %cmp, true, !dbg !470
  %lnot2 = xor i1 %lnot, true, !dbg !470
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !470
  %conv = sext i32 %lnot.ext to i64, !dbg !470
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !470
  %tobool = icmp ne i64 %expval, 0, !dbg !470
  br i1 %tobool, label %if.then, label %if.end, !dbg !472

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !473

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %phys.addr, align 8, !dbg !474
  %8 = load ptr, ptr %chunk, align 8, !dbg !475
  %phys_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %8, i32 0, i32 2, !dbg !476
  store i64 %7, ptr %phys_addr, align 8, !dbg !477
  %9 = load i64, ptr %virt.addr, align 8, !dbg !478
  %10 = load ptr, ptr %chunk, align 8, !dbg !479
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %10, i32 0, i32 4, !dbg !480
  store i64 %9, ptr %start_addr, align 8, !dbg !481
  %11 = load i64, ptr %virt.addr, align 8, !dbg !482
  %12 = load i64, ptr %size.addr, align 8, !dbg !483
  %add3 = add i64 %11, %12, !dbg !484
  %sub4 = sub i64 %add3, 1, !dbg !485
  %13 = load ptr, ptr %chunk, align 8, !dbg !486
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %13, i32 0, i32 5, !dbg !487
  store i64 %sub4, ptr %end_addr, align 8, !dbg !488
  %14 = load ptr, ptr %owner.addr, align 8, !dbg !489
  %15 = load ptr, ptr %chunk, align 8, !dbg !490
  %owner5 = getelementptr inbounds %struct.gen_pool_chunk, ptr %15, i32 0, i32 3, !dbg !491
  store ptr %14, ptr %owner5, align 8, !dbg !492
  %16 = load ptr, ptr %chunk, align 8, !dbg !493
  %avail = getelementptr inbounds %struct.gen_pool_chunk, ptr %16, i32 0, i32 1, !dbg !494
  %17 = load i64, ptr %size.addr, align 8, !dbg !495
  call void @atomic_long_set(ptr noundef %avail, i64 noundef %17) #19, !dbg !496
  %18 = load ptr, ptr %pool.addr, align 8, !dbg !497
  %lock = getelementptr inbounds %struct.gen_pool, ptr %18, i32 0, i32 0, !dbg !498
  call void @spin_lock(ptr noundef %lock) #19, !dbg !499
  %19 = load ptr, ptr %chunk, align 8, !dbg !500
  %next_chunk = getelementptr inbounds %struct.gen_pool_chunk, ptr %19, i32 0, i32 0, !dbg !501
  %20 = load ptr, ptr %pool.addr, align 8, !dbg !502
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %20, i32 0, i32 1, !dbg !503
  call void @list_add_rcu(ptr noundef %next_chunk, ptr noundef %chunks) #19, !dbg !504
  %21 = load ptr, ptr %pool.addr, align 8, !dbg !505
  %lock6 = getelementptr inbounds %struct.gen_pool, ptr %21, i32 0, i32 0, !dbg !506
  call void @spin_unlock(ptr noundef %lock6) #19, !dbg !507
  store i32 0, ptr %retval, align 4, !dbg !508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !508

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbytes) #17, !dbg !509
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbits) #17, !dbg !509
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #17, !dbg !509
  %22 = load i32, ptr %retval, align 4, !dbg !509
  ret i32 %22, !dbg !509
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !510 dso_local noalias ptr @vzalloc_node(i64 noundef, i32 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !514 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !521, metadata !DIExpression()), !dbg !523
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !522, metadata !DIExpression()), !dbg !524
  %0 = load ptr, ptr %v.addr, align 8, !dbg !525
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #19, !dbg !526
  %1 = load ptr, ptr %v.addr, align 8, !dbg !527
  %2 = load i64, ptr %i.addr, align 8, !dbg !528
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #19, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !531 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !535, metadata !DIExpression()), !dbg !536
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !537
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !537
  call void @_raw_spin_lock(ptr noundef %1) #19, !dbg !537
  ret void, !dbg !538
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_rcu(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !539 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !544, metadata !DIExpression()), !dbg !546
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !545, metadata !DIExpression()), !dbg !547
  %0 = load ptr, ptr %new.addr, align 8, !dbg !548
  %1 = load ptr, ptr %head.addr, align 8, !dbg !549
  %2 = load ptr, ptr %head.addr, align 8, !dbg !550
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !551
  %3 = load ptr, ptr %next, align 8, !dbg !551
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %1, ptr noundef %3) #19, !dbg !552
  ret void, !dbg !553
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !554 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !556, metadata !DIExpression()), !dbg !557
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !558
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !558
  call void @_raw_spin_unlock(ptr noundef %1) #19, !dbg !558
  ret void, !dbg !559
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @gen_pool_virt_to_phys(ptr noundef %pool, i64 noundef %addr) #0 align 16 !dbg !560 {
entry:
  %pool.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %chunk = alloca ptr, align 8
  %paddr = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !564, metadata !DIExpression()), !dbg !574
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !565, metadata !DIExpression()), !dbg !575
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #17, !dbg !576
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !566, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %paddr) #17, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %paddr, metadata !567, metadata !DIExpression()), !dbg !579
  store i64 -1, ptr %paddr, align 8, !dbg !579
  call void @rcu_read_lock() #19, !dbg !580
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !581
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !568, metadata !DIExpression()), !dbg !581
  br label %do.body, !dbg !582

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !584

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !584

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !582
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1, !dbg !582
  %next = getelementptr inbounds %struct.list_head, ptr %chunks, i32 0, i32 0, !dbg !582
  %1 = load volatile ptr, ptr %next, align 8, !dbg !582
  store ptr %1, ptr %tmp, align 8, !dbg !584
  %2 = load ptr, ptr %tmp, align 8, !dbg !582
  store ptr %2, ptr %__mptr, align 8, !dbg !581
  %3 = load ptr, ptr %__mptr, align 8, !dbg !581
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !581
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !581
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !586
  %4 = load ptr, ptr %tmp1, align 8, !dbg !581
  store ptr %4, ptr %chunk, align 8, !dbg !586
  br label %for.cond, !dbg !586

for.cond:                                         ; preds = %do.end9, %do.end
  %5 = load ptr, ptr %chunk, align 8, !dbg !587
  %next_chunk = getelementptr inbounds %struct.gen_pool_chunk, ptr %5, i32 0, i32 0, !dbg !587
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !587
  %chunks2 = getelementptr inbounds %struct.gen_pool, ptr %6, i32 0, i32 1, !dbg !587
  %cmp = icmp ne ptr %next_chunk, %chunks2, !dbg !587
  br i1 %cmp, label %for.body, label %for.end, !dbg !586

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %addr.addr, align 8, !dbg !588
  %8 = load ptr, ptr %chunk, align 8, !dbg !591
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %8, i32 0, i32 4, !dbg !592
  %9 = load i64, ptr %start_addr, align 8, !dbg !592
  %cmp3 = icmp uge i64 %7, %9, !dbg !593
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !594

land.lhs.true:                                    ; preds = %for.body
  %10 = load i64, ptr %addr.addr, align 8, !dbg !595
  %11 = load ptr, ptr %chunk, align 8, !dbg !596
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %11, i32 0, i32 5, !dbg !597
  %12 = load i64, ptr %end_addr, align 8, !dbg !597
  %cmp4 = icmp ule i64 %10, %12, !dbg !598
  br i1 %cmp4, label %if.then, label %if.end, !dbg !599

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %chunk, align 8, !dbg !600
  %phys_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %13, i32 0, i32 2, !dbg !602
  %14 = load i64, ptr %phys_addr, align 8, !dbg !602
  %15 = load i64, ptr %addr.addr, align 8, !dbg !603
  %16 = load ptr, ptr %chunk, align 8, !dbg !604
  %start_addr5 = getelementptr inbounds %struct.gen_pool_chunk, ptr %16, i32 0, i32 4, !dbg !605
  %17 = load i64, ptr %start_addr5, align 8, !dbg !605
  %sub = sub i64 %15, %17, !dbg !606
  %add = add i64 %14, %sub, !dbg !607
  store i64 %add, ptr %paddr, align 8, !dbg !608
  br label %for.end, !dbg !609

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !610

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #17, !dbg !611
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !571, metadata !DIExpression()), !dbg !611
  br label %do.body7, !dbg !612

do.body7:                                         ; preds = %for.inc
  br label %do.cond8, !dbg !614

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !614

do.end9:                                          ; preds = %do.cond8
  %18 = load ptr, ptr %chunk, align 8, !dbg !612
  %next_chunk11 = getelementptr inbounds %struct.gen_pool_chunk, ptr %18, i32 0, i32 0, !dbg !612
  %next12 = getelementptr inbounds %struct.list_head, ptr %next_chunk11, i32 0, i32 0, !dbg !612
  %19 = load volatile ptr, ptr %next12, align 8, !dbg !612
  store ptr %19, ptr %tmp10, align 8, !dbg !614
  %20 = load ptr, ptr %tmp10, align 8, !dbg !612
  store ptr %20, ptr %__mptr6, align 8, !dbg !611
  %21 = load ptr, ptr %__mptr6, align 8, !dbg !611
  %add.ptr14 = getelementptr i8, ptr %21, i64 0, !dbg !611
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !611
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #17, !dbg !587
  %22 = load ptr, ptr %tmp13, align 8, !dbg !611
  store ptr %22, ptr %chunk, align 8, !dbg !587
  br label %for.cond, !dbg !587, !llvm.loop !616

for.end:                                          ; preds = %if.then, %for.cond
  call void @rcu_read_unlock() #19, !dbg !620
  %23 = load i64, ptr %paddr, align 8, !dbg !621
  call void @llvm.lifetime.end.p0(i64 8, ptr %paddr) #17, !dbg !622
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #17, !dbg !622
  ret i64 %23, !dbg !623
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !624 {
entry:
  call void @__rcu_read_lock() #19, !dbg !628
  br label %do.body, !dbg !629

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !630

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !632

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !633

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #6 align 16 !dbg !636 {
entry:
  br label %do.body, !dbg !637

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !638

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #19, !dbg !640
  br label %do.body1, !dbg !641

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !642

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !644
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gen_pool_destroy(ptr noundef %pool) #0 align 16 !dbg !645 {
entry:
  %pool.addr = alloca ptr, align 8
  %_chunk = alloca ptr, align 8
  %_next_chunk = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %order = alloca i32, align 4
  %bit = alloca i64, align 8
  %end_bit = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !649, metadata !DIExpression()), !dbg !661
  call void @llvm.lifetime.start.p0(i64 8, ptr %_chunk) #17, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %_chunk, metadata !650, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 8, ptr %_next_chunk) #17, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %_next_chunk, metadata !651, metadata !DIExpression()), !dbg !664
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #17, !dbg !665
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !652, metadata !DIExpression()), !dbg !666
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #17, !dbg !667
  call void @llvm.dbg.declare(metadata ptr %order, metadata !653, metadata !DIExpression()), !dbg !668
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !669
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 2, !dbg !670
  %1 = load i32, ptr %min_alloc_order, align 8, !dbg !670
  store i32 %1, ptr %order, align 4, !dbg !668
  call void @llvm.lifetime.start.p0(i64 8, ptr %bit) #17, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !654, metadata !DIExpression()), !dbg !672
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_bit) #17, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %end_bit, metadata !655, metadata !DIExpression()), !dbg !673
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !674
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %2, i32 0, i32 1, !dbg !674
  %next = getelementptr inbounds %struct.list_head, ptr %chunks, i32 0, i32 0, !dbg !674
  %3 = load ptr, ptr %next, align 8, !dbg !674
  store ptr %3, ptr %_chunk, align 8, !dbg !674
  %4 = load ptr, ptr %_chunk, align 8, !dbg !674
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !674
  %5 = load ptr, ptr %next1, align 8, !dbg !674
  store ptr %5, ptr %_next_chunk, align 8, !dbg !674
  br label %for.cond, !dbg !674

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %_chunk, align 8, !dbg !675
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !675
  %chunks2 = getelementptr inbounds %struct.gen_pool, ptr %7, i32 0, i32 1, !dbg !675
  %call = call i32 @list_is_head(ptr noundef %6, ptr noundef %chunks2) #19, !dbg !675
  %tobool = icmp ne i32 %call, 0, !dbg !675
  %lnot = xor i1 %tobool, true, !dbg !675
  br i1 %lnot, label %for.body, label %for.end, !dbg !674

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !656, metadata !DIExpression()), !dbg !676
  %8 = load ptr, ptr %_chunk, align 8, !dbg !676
  store ptr %8, ptr %__mptr, align 8, !dbg !676
  %9 = load ptr, ptr %__mptr, align 8, !dbg !676
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !676
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !677
  %10 = load ptr, ptr %tmp, align 8, !dbg !676
  store ptr %10, ptr %chunk, align 8, !dbg !678
  %11 = load ptr, ptr %chunk, align 8, !dbg !679
  %next_chunk = getelementptr inbounds %struct.gen_pool_chunk, ptr %11, i32 0, i32 0, !dbg !680
  call void @list_del(ptr noundef %next_chunk) #19, !dbg !681
  %12 = load ptr, ptr %chunk, align 8, !dbg !682
  %call3 = call i64 @chunk_size(ptr noundef %12) #19, !dbg !683
  %13 = load i32, ptr %order, align 4, !dbg !684
  %sh_prom = zext i32 %13 to i64, !dbg !685
  %shr = lshr i64 %call3, %sh_prom, !dbg !685
  store i64 %shr, ptr %end_bit, align 8, !dbg !686
  %14 = load ptr, ptr %chunk, align 8, !dbg !687
  %bits = getelementptr inbounds %struct.gen_pool_chunk, ptr %14, i32 0, i32 6, !dbg !688
  %arraydecay = getelementptr inbounds [0 x i64], ptr %bits, i64 0, i64 0, !dbg !687
  %15 = load i64, ptr %end_bit, align 8, !dbg !689
  %call4 = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef %15) #19, !dbg !690
  store i64 %call4, ptr %bit, align 8, !dbg !691
  br label %do.body, !dbg !692

do.body:                                          ; preds = %for.body
  %16 = load i64, ptr %bit, align 8, !dbg !693
  %17 = load i64, ptr %end_bit, align 8, !dbg !693
  %cmp = icmp ult i64 %16, %17, !dbg !693
  %lnot5 = xor i1 %cmp, true, !dbg !693
  %lnot6 = xor i1 %lnot5, true, !dbg !693
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !693
  %conv = sext i32 %lnot.ext to i64, !dbg !693
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !693
  %tobool7 = icmp ne i64 %expval, 0, !dbg !693
  br i1 %tobool7, label %if.then, label %if.end, !dbg !696

if.then:                                          ; preds = %do.body
  br label %do.body8, !dbg !693

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !697

do.body9:                                         ; preds = %do.body8
  br label %do.cond, !dbg !699

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !699

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !697

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 255, i32 0, i64 12) #17, !dbg !701, !srcloc !703
  br label %do.cond11, !dbg !701

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !701

do.end12:                                         ; preds = %do.cond11
  unreachable, !dbg !697

do.cond13:                                        ; No predecessors!
  br label %do.end14, !dbg !697

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !697

if.end:                                           ; preds = %do.end14, %do.body
  br label %do.cond15, !dbg !696

do.cond15:                                        ; preds = %if.end
  br label %do.end16, !dbg !696

do.end16:                                         ; preds = %do.cond15
  %18 = load ptr, ptr %chunk, align 8, !dbg !704
  call void @vfree(ptr noundef %18) #19, !dbg !705
  br label %for.inc, !dbg !706

for.inc:                                          ; preds = %do.end16
  %19 = load ptr, ptr %_next_chunk, align 8, !dbg !675
  store ptr %19, ptr %_chunk, align 8, !dbg !675
  %20 = load ptr, ptr %_chunk, align 8, !dbg !675
  %next17 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 0, !dbg !675
  %21 = load ptr, ptr %next17, align 8, !dbg !675
  store ptr %21, ptr %_next_chunk, align 8, !dbg !675
  br label %for.cond, !dbg !675, !llvm.loop !707

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %pool.addr, align 8, !dbg !709
  %name = getelementptr inbounds %struct.gen_pool, ptr %22, i32 0, i32 5, !dbg !710
  %23 = load ptr, ptr %name, align 8, !dbg !710
  call void @kfree_const(ptr noundef %23) #19, !dbg !711
  %24 = load ptr, ptr %pool.addr, align 8, !dbg !712
  call void @kfree(ptr noundef %24) #19, !dbg !713
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_bit) #17, !dbg !714
  call void @llvm.lifetime.end.p0(i64 8, ptr %bit) #17, !dbg !714
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #17, !dbg !714
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #17, !dbg !714
  call void @llvm.lifetime.end.p0(i64 8, ptr %_next_chunk) #17, !dbg !714
  call void @llvm.lifetime.end.p0(i64 8, ptr %_chunk) #17, !dbg !714
  ret void, !dbg !714
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #6 align 16 !dbg !715 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !721, metadata !DIExpression()), !dbg !723
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !722, metadata !DIExpression()), !dbg !724
  %0 = load ptr, ptr %list.addr, align 8, !dbg !725
  %1 = load ptr, ptr %head.addr, align 8, !dbg !726
  %cmp = icmp eq ptr %0, %1, !dbg !727
  %conv = zext i1 %cmp to i32, !dbg !727
  ret i32 %conv, !dbg !728
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !729 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !731, metadata !DIExpression()), !dbg !732
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !733
  call void @__list_del_entry(ptr noundef %0) #19, !dbg !734
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !735
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !736
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !737
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !738
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !739
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !740
  ret void, !dbg !741
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @chunk_size(ptr noundef %chunk) #6 align 16 !dbg !742 {
entry:
  %chunk.addr = alloca ptr, align 8
  store ptr %chunk, ptr %chunk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !748, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %chunk.addr, align 8, !dbg !750
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %0, i32 0, i32 5, !dbg !751
  %1 = load i64, ptr %end_addr, align 8, !dbg !751
  %2 = load ptr, ptr %chunk.addr, align 8, !dbg !752
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %2, i32 0, i32 4, !dbg !753
  %3 = load i64, ptr %start_addr, align 8, !dbg !753
  %sub = sub i64 %1, %3, !dbg !754
  %add = add i64 %sub, 1, !dbg !755
  ret i64 %add, !dbg !756
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #6 align 16 !dbg !757 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !764, metadata !DIExpression()), !dbg !769
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !765, metadata !DIExpression()), !dbg !770
  %0 = load i64, ptr %size.addr, align 8, !dbg !771
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !771
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !771

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !771
  %cmp = icmp ule i64 %2, 64, !dbg !771
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !771

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !771
  %cmp2 = icmp ugt i64 %3, 0, !dbg !771
  br i1 %cmp2, label %if.then, label %if.end, !dbg !772

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %val, metadata !766, metadata !DIExpression()), !dbg !774
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !775
  %5 = load i64, ptr %4, align 8, !dbg !776
  %6 = load i64, ptr %size.addr, align 8, !dbg !777
  %sub = sub i64 %6, 1, !dbg !777
  %sub3 = sub i64 63, %sub, !dbg !777
  %shr = lshr i64 -1, %sub3, !dbg !777
  %and = and i64 -1, %shr, !dbg !777
  %add = add i64 0, %and, !dbg !777
  %and4 = and i64 %5, %add, !dbg !778
  store i64 %and4, ptr %val, align 8, !dbg !774
  %7 = load i64, ptr %val, align 8, !dbg !779
  %tobool = icmp ne i64 %7, 0, !dbg !779
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !779

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !780
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !780
  br i1 %9, label %cond.true5, label %cond.false, !dbg !780

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !780
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !780
  %cast = trunc i64 %11 to i32, !dbg !780
  %conv = sext i32 %cast to i64, !dbg !780
  br label %cond.end, !dbg !780

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !780
  %call = call i64 @variable__ffs(i64 noundef %12) #19, !dbg !780
  br label %cond.end, !dbg !780

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !780
  br label %cond.end7, !dbg !779

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !781
  br label %cond.end7, !dbg !779

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !779
  store i64 %cond8, ptr %retval, align 8, !dbg !782
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !783
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !784
  %15 = load i64, ptr %size.addr, align 8, !dbg !785
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #19, !dbg !786
  store i64 %call9, ptr %retval, align 8, !dbg !787
  br label %return, !dbg !787

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !788
  ret i64 %16, !dbg !788
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !789 dso_local void @vfree(ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !794 dso_local void @kfree_const(ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !796 dso_local void @kfree(ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @gen_pool_alloc_algo_owner(ptr noundef %pool, i64 noundef %size, ptr noundef %algo, ptr noundef %data, ptr noundef %owner) #0 align 16 !dbg !797 {
entry:
  %retval = alloca i64, align 8
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %algo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %addr = alloca i64, align 8
  %order = alloca i32, align 4
  %nbits = alloca i64, align 8
  %start_bit = alloca i64, align 8
  %end_bit = alloca i64, align 8
  %remain = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr57 = alloca ptr, align 8
  %tmp61 = alloca ptr, align 8
  %tmp64 = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !802, metadata !DIExpression()), !dbg !822
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !803, metadata !DIExpression()), !dbg !823
  store ptr %algo, ptr %algo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algo.addr, metadata !804, metadata !DIExpression()), !dbg !824
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !805, metadata !DIExpression()), !dbg !825
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !806, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #17, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !807, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #17, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !808, metadata !DIExpression()), !dbg !830
  store i64 0, ptr %addr, align 8, !dbg !830
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #17, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %order, metadata !809, metadata !DIExpression()), !dbg !832
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !833
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 2, !dbg !834
  %1 = load i32, ptr %min_alloc_order, align 8, !dbg !834
  store i32 %1, ptr %order, align 4, !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbits) #17, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %nbits, metadata !810, metadata !DIExpression()), !dbg !836
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_bit) #17, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %start_bit, metadata !811, metadata !DIExpression()), !dbg !837
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_bit) #17, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %end_bit, metadata !812, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %remain) #17, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %remain, metadata !813, metadata !DIExpression()), !dbg !839
  %2 = load ptr, ptr %owner.addr, align 8, !dbg !840
  %tobool = icmp ne ptr %2, null, !dbg !840
  br i1 %tobool, label %if.then, label %if.end, !dbg !842

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %owner.addr, align 8, !dbg !843
  store ptr null, ptr %3, align 8, !dbg !844
  br label %if.end, !dbg !845

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %size.addr, align 8, !dbg !846
  %cmp = icmp eq i64 %4, 0, !dbg !848
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !849

if.then1:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !850

if.end2:                                          ; preds = %if.end
  %5 = load i64, ptr %size.addr, align 8, !dbg !851
  %6 = load i32, ptr %order, align 4, !dbg !852
  %sh_prom = zext i32 %6 to i64, !dbg !853
  %shl = shl i64 1, %sh_prom, !dbg !853
  %add = add i64 %5, %shl, !dbg !854
  %sub = sub i64 %add, 1, !dbg !855
  %7 = load i32, ptr %order, align 4, !dbg !856
  %sh_prom3 = zext i32 %7 to i64, !dbg !857
  %shr = lshr i64 %sub, %sh_prom3, !dbg !857
  store i64 %shr, ptr %nbits, align 8, !dbg !858
  call void @rcu_read_lock() #19, !dbg !859
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !814, metadata !DIExpression()), !dbg !860
  br label %do.body, !dbg !861

do.body:                                          ; preds = %if.end2
  br label %do.cond, !dbg !863

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !863

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %pool.addr, align 8, !dbg !861
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %8, i32 0, i32 1, !dbg !861
  %next = getelementptr inbounds %struct.list_head, ptr %chunks, i32 0, i32 0, !dbg !861
  %9 = load volatile ptr, ptr %next, align 8, !dbg !861
  store ptr %9, ptr %tmp, align 8, !dbg !863
  %10 = load ptr, ptr %tmp, align 8, !dbg !861
  store ptr %10, ptr %__mptr, align 8, !dbg !860
  %11 = load ptr, ptr %__mptr, align 8, !dbg !860
  %add.ptr = getelementptr i8, ptr %11, i64 0, !dbg !860
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !860
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !865
  %12 = load ptr, ptr %tmp4, align 8, !dbg !860
  store ptr %12, ptr %chunk, align 8, !dbg !865
  br label %for.cond, !dbg !865

for.cond:                                         ; preds = %do.end60, %do.end
  %13 = load ptr, ptr %chunk, align 8, !dbg !866
  %next_chunk = getelementptr inbounds %struct.gen_pool_chunk, ptr %13, i32 0, i32 0, !dbg !866
  %14 = load ptr, ptr %pool.addr, align 8, !dbg !866
  %chunks5 = getelementptr inbounds %struct.gen_pool, ptr %14, i32 0, i32 1, !dbg !866
  %cmp6 = icmp ne ptr %next_chunk, %chunks5, !dbg !866
  br i1 %cmp6, label %for.body, label %for.end, !dbg !865

for.body:                                         ; preds = %for.cond
  %15 = load i64, ptr %size.addr, align 8, !dbg !867
  %16 = load ptr, ptr %chunk, align 8, !dbg !869
  %avail = getelementptr inbounds %struct.gen_pool_chunk, ptr %16, i32 0, i32 1, !dbg !870
  %call = call i64 @atomic_long_read(ptr noundef %avail) #19, !dbg !871
  %cmp7 = icmp ugt i64 %15, %call, !dbg !872
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !873

if.then8:                                         ; preds = %for.body
  br label %for.inc, !dbg !874

if.end9:                                          ; preds = %for.body
  store i64 0, ptr %start_bit, align 8, !dbg !875
  %17 = load ptr, ptr %chunk, align 8, !dbg !876
  %call10 = call i64 @chunk_size(ptr noundef %17) #19, !dbg !877
  %18 = load i32, ptr %order, align 4, !dbg !878
  %sh_prom11 = zext i32 %18 to i64, !dbg !879
  %shr12 = lshr i64 %call10, %sh_prom11, !dbg !879
  store i64 %shr12, ptr %end_bit, align 8, !dbg !880
  br label %retry, !dbg !881

retry:                                            ; preds = %do.end44, %if.end9
  call void @llvm.dbg.label(metadata !817), !dbg !882
  %19 = load ptr, ptr %algo.addr, align 8, !dbg !883
  %20 = load ptr, ptr %chunk, align 8, !dbg !884
  %bits = getelementptr inbounds %struct.gen_pool_chunk, ptr %20, i32 0, i32 6, !dbg !885
  %arraydecay = getelementptr inbounds [0 x i64], ptr %bits, i64 0, i64 0, !dbg !884
  %21 = load i64, ptr %end_bit, align 8, !dbg !886
  %22 = load i64, ptr %start_bit, align 8, !dbg !887
  %23 = load i64, ptr %nbits, align 8, !dbg !888
  %conv = trunc i64 %23 to i32, !dbg !888
  %24 = load ptr, ptr %data.addr, align 8, !dbg !889
  %25 = load ptr, ptr %pool.addr, align 8, !dbg !890
  %26 = load ptr, ptr %chunk, align 8, !dbg !891
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %26, i32 0, i32 4, !dbg !892
  %27 = load i64, ptr %start_addr, align 8, !dbg !892
  %call13 = call i64 %19(ptr noundef %arraydecay, i64 noundef %21, i64 noundef %22, i32 noundef %conv, ptr noundef %24, ptr noundef %25, i64 noundef %27) #19, !dbg !883
  store i64 %call13, ptr %start_bit, align 8, !dbg !893
  %28 = load i64, ptr %start_bit, align 8, !dbg !894
  %29 = load i64, ptr %end_bit, align 8, !dbg !896
  %cmp14 = icmp uge i64 %28, %29, !dbg !897
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !898

if.then16:                                        ; preds = %retry
  br label %for.inc, !dbg !899

if.end17:                                         ; preds = %retry
  %30 = load ptr, ptr %chunk, align 8, !dbg !900
  %bits18 = getelementptr inbounds %struct.gen_pool_chunk, ptr %30, i32 0, i32 6, !dbg !901
  %arraydecay19 = getelementptr inbounds [0 x i64], ptr %bits18, i64 0, i64 0, !dbg !900
  %31 = load i64, ptr %start_bit, align 8, !dbg !902
  %32 = load i64, ptr %nbits, align 8, !dbg !903
  %call20 = call i64 @bitmap_set_ll(ptr noundef %arraydecay19, i64 noundef %31, i64 noundef %32) #19, !dbg !904
  store i64 %call20, ptr %remain, align 8, !dbg !905
  %33 = load i64, ptr %remain, align 8, !dbg !906
  %tobool21 = icmp ne i64 %33, 0, !dbg !906
  br i1 %tobool21, label %if.then22, label %if.end45, !dbg !908

if.then22:                                        ; preds = %if.end17
  %34 = load ptr, ptr %chunk, align 8, !dbg !909
  %bits23 = getelementptr inbounds %struct.gen_pool_chunk, ptr %34, i32 0, i32 6, !dbg !911
  %arraydecay24 = getelementptr inbounds [0 x i64], ptr %bits23, i64 0, i64 0, !dbg !909
  %35 = load i64, ptr %start_bit, align 8, !dbg !912
  %36 = load i64, ptr %nbits, align 8, !dbg !913
  %37 = load i64, ptr %remain, align 8, !dbg !914
  %sub25 = sub i64 %36, %37, !dbg !915
  %call26 = call i64 @bitmap_clear_ll(ptr noundef %arraydecay24, i64 noundef %35, i64 noundef %sub25) #19, !dbg !916
  store i64 %call26, ptr %remain, align 8, !dbg !917
  br label %do.body27, !dbg !918

do.body27:                                        ; preds = %if.then22
  %38 = load i64, ptr %remain, align 8, !dbg !919
  %tobool28 = icmp ne i64 %38, 0, !dbg !919
  %lnot = xor i1 %tobool28, true, !dbg !919
  %lnot29 = xor i1 %lnot, true, !dbg !919
  %lnot.ext = zext i1 %lnot29 to i32, !dbg !919
  %conv30 = sext i32 %lnot.ext to i64, !dbg !919
  %expval = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !919
  %tobool31 = icmp ne i64 %expval, 0, !dbg !919
  br i1 %tobool31, label %if.then32, label %if.end42, !dbg !922

if.then32:                                        ; preds = %do.body27
  br label %do.body33, !dbg !919

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !923

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !925

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !925

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !923

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 312, i32 0, i64 12) #17, !dbg !927, !srcloc !929
  br label %do.cond38, !dbg !927

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !927

do.end39:                                         ; preds = %do.cond38
  unreachable, !dbg !923

do.cond40:                                        ; No predecessors!
  br label %do.end41, !dbg !923

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !923

if.end42:                                         ; preds = %do.end41, %do.body27
  br label %do.cond43, !dbg !922

do.cond43:                                        ; preds = %if.end42
  br label %do.end44, !dbg !922

do.end44:                                         ; preds = %do.cond43
  br label %retry, !dbg !930

if.end45:                                         ; preds = %if.end17
  %39 = load ptr, ptr %chunk, align 8, !dbg !931
  %start_addr46 = getelementptr inbounds %struct.gen_pool_chunk, ptr %39, i32 0, i32 4, !dbg !932
  %40 = load i64, ptr %start_addr46, align 8, !dbg !932
  %41 = load i64, ptr %start_bit, align 8, !dbg !933
  %42 = load i32, ptr %order, align 4, !dbg !934
  %sh_prom47 = zext i32 %42 to i64, !dbg !935
  %shl48 = shl i64 %41, %sh_prom47, !dbg !935
  %add49 = add i64 %40, %shl48, !dbg !936
  store i64 %add49, ptr %addr, align 8, !dbg !937
  %43 = load i64, ptr %nbits, align 8, !dbg !938
  %44 = load i32, ptr %order, align 4, !dbg !939
  %sh_prom50 = zext i32 %44 to i64, !dbg !940
  %shl51 = shl i64 %43, %sh_prom50, !dbg !940
  store i64 %shl51, ptr %size.addr, align 8, !dbg !941
  %45 = load i64, ptr %size.addr, align 8, !dbg !942
  %46 = load ptr, ptr %chunk, align 8, !dbg !943
  %avail52 = getelementptr inbounds %struct.gen_pool_chunk, ptr %46, i32 0, i32 1, !dbg !944
  call void @atomic_long_sub(i64 noundef %45, ptr noundef %avail52) #19, !dbg !945
  %47 = load ptr, ptr %owner.addr, align 8, !dbg !946
  %tobool53 = icmp ne ptr %47, null, !dbg !946
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !948

if.then54:                                        ; preds = %if.end45
  %48 = load ptr, ptr %chunk, align 8, !dbg !949
  %owner55 = getelementptr inbounds %struct.gen_pool_chunk, ptr %48, i32 0, i32 3, !dbg !950
  %49 = load ptr, ptr %owner55, align 8, !dbg !950
  %50 = load ptr, ptr %owner.addr, align 8, !dbg !951
  store ptr %49, ptr %50, align 8, !dbg !952
  br label %if.end56, !dbg !953

if.end56:                                         ; preds = %if.then54, %if.end45
  br label %for.end, !dbg !954

for.inc:                                          ; preds = %if.then16, %if.then8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr57) #17, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %__mptr57, metadata !820, metadata !DIExpression()), !dbg !955
  br label %do.body58, !dbg !956

do.body58:                                        ; preds = %for.inc
  br label %do.cond59, !dbg !958

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !958

do.end60:                                         ; preds = %do.cond59
  %51 = load ptr, ptr %chunk, align 8, !dbg !956
  %next_chunk62 = getelementptr inbounds %struct.gen_pool_chunk, ptr %51, i32 0, i32 0, !dbg !956
  %next63 = getelementptr inbounds %struct.list_head, ptr %next_chunk62, i32 0, i32 0, !dbg !956
  %52 = load volatile ptr, ptr %next63, align 8, !dbg !956
  store ptr %52, ptr %tmp61, align 8, !dbg !958
  %53 = load ptr, ptr %tmp61, align 8, !dbg !956
  store ptr %53, ptr %__mptr57, align 8, !dbg !955
  %54 = load ptr, ptr %__mptr57, align 8, !dbg !955
  %add.ptr65 = getelementptr i8, ptr %54, i64 0, !dbg !955
  store ptr %add.ptr65, ptr %tmp64, align 8, !dbg !955
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr57) #17, !dbg !866
  %55 = load ptr, ptr %tmp64, align 8, !dbg !955
  store ptr %55, ptr %chunk, align 8, !dbg !866
  br label %for.cond, !dbg !866, !llvm.loop !960

for.end:                                          ; preds = %if.end56, %for.cond
  call void @rcu_read_unlock() #19, !dbg !962
  %56 = load i64, ptr %addr, align 8, !dbg !963
  store i64 %56, ptr %retval, align 8, !dbg !964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !964

cleanup:                                          ; preds = %for.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %remain) #17, !dbg !965
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_bit) #17, !dbg !965
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_bit) #17, !dbg !965
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbits) #17, !dbg !965
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #17, !dbg !965
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #17, !dbg !965
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #17, !dbg !965
  %57 = load i64, ptr %retval, align 8, !dbg !965
  ret i64 %57, !dbg !965
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #4 align 16 !dbg !966 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !972, metadata !DIExpression()), !dbg !973
  %0 = load ptr, ptr %v.addr, align 8, !dbg !974
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #19, !dbg !975
  %1 = load ptr, ptr %v.addr, align 8, !dbg !976
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #19, !dbg !977
  ret i64 %call, !dbg !978
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bitmap_set_ll(ptr noundef %map, i64 noundef %start, i64 noundef %nr) #0 align 16 !dbg !979 {
entry:
  %retval = alloca i64, align 8
  %map.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %nr.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %size = alloca i64, align 8
  %bits_to_set = alloca i32, align 4
  %mask_to_set = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !983, metadata !DIExpression()), !dbg !990
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !984, metadata !DIExpression()), !dbg !991
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !985, metadata !DIExpression()), !dbg !992
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !993
  call void @llvm.dbg.declare(metadata ptr %p, metadata !986, metadata !DIExpression()), !dbg !994
  %0 = load ptr, ptr %map.addr, align 8, !dbg !995
  %1 = load i64, ptr %start.addr, align 8, !dbg !996
  %div = udiv i64 %1, 64, !dbg !996
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !997
  store ptr %add.ptr, ptr %p, align 8, !dbg !994
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !998
  call void @llvm.dbg.declare(metadata ptr %size, metadata !987, metadata !DIExpression()), !dbg !999
  %2 = load i64, ptr %start.addr, align 8, !dbg !1000
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1001
  %add = add i64 %2, %3, !dbg !1002
  store i64 %add, ptr %size, align 8, !dbg !999
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits_to_set) #17, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %bits_to_set, metadata !988, metadata !DIExpression()), !dbg !1004
  %4 = load i64, ptr %start.addr, align 8, !dbg !1005
  %rem = urem i64 %4, 64, !dbg !1006
  %sub = sub i64 64, %rem, !dbg !1007
  %conv = trunc i64 %sub to i32, !dbg !1008
  store i32 %conv, ptr %bits_to_set, align 4, !dbg !1004
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask_to_set) #17, !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %mask_to_set, metadata !989, metadata !DIExpression()), !dbg !1010
  %5 = load i64, ptr %start.addr, align 8, !dbg !1011
  %and = and i64 %5, 63, !dbg !1011
  %shl = shl i64 -1, %and, !dbg !1011
  store i64 %shl, ptr %mask_to_set, align 8, !dbg !1010
  br label %while.cond, !dbg !1012

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1013
  %7 = load i32, ptr %bits_to_set, align 4, !dbg !1014
  %conv1 = sext i32 %7 to i64, !dbg !1014
  %cmp = icmp uge i64 %6, %conv1, !dbg !1015
  br i1 %cmp, label %while.body, label %while.end, !dbg !1012

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %p, align 8, !dbg !1016
  %9 = load i64, ptr %mask_to_set, align 8, !dbg !1019
  %call = call i32 @set_bits_ll(ptr noundef %8, i64 noundef %9) #19, !dbg !1020
  %tobool = icmp ne i32 %call, 0, !dbg !1020
  br i1 %tobool, label %if.then, label %if.end, !dbg !1021

if.then:                                          ; preds = %while.body
  %10 = load i64, ptr %nr.addr, align 8, !dbg !1022
  store i64 %10, ptr %retval, align 8, !dbg !1023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1023

if.end:                                           ; preds = %while.body
  %11 = load i32, ptr %bits_to_set, align 4, !dbg !1024
  %conv3 = sext i32 %11 to i64, !dbg !1024
  %12 = load i64, ptr %nr.addr, align 8, !dbg !1025
  %sub4 = sub i64 %12, %conv3, !dbg !1025
  store i64 %sub4, ptr %nr.addr, align 8, !dbg !1025
  store i32 64, ptr %bits_to_set, align 4, !dbg !1026
  store i64 -1, ptr %mask_to_set, align 8, !dbg !1027
  %13 = load ptr, ptr %p, align 8, !dbg !1028
  %incdec.ptr = getelementptr i64, ptr %13, i32 1, !dbg !1028
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1028
  br label %while.cond, !dbg !1012, !llvm.loop !1029

while.end:                                        ; preds = %while.cond
  %14 = load i64, ptr %nr.addr, align 8, !dbg !1031
  %tobool5 = icmp ne i64 %14, 0, !dbg !1031
  br i1 %tobool5, label %if.then6, label %if.end14, !dbg !1033

if.then6:                                         ; preds = %while.end
  %15 = load i64, ptr %size, align 8, !dbg !1034
  %sub7 = sub i64 0, %15, !dbg !1034
  %and8 = and i64 %sub7, 63, !dbg !1034
  %shr = lshr i64 -1, %and8, !dbg !1034
  %16 = load i64, ptr %mask_to_set, align 8, !dbg !1036
  %and9 = and i64 %16, %shr, !dbg !1036
  store i64 %and9, ptr %mask_to_set, align 8, !dbg !1036
  %17 = load ptr, ptr %p, align 8, !dbg !1037
  %18 = load i64, ptr %mask_to_set, align 8, !dbg !1039
  %call10 = call i32 @set_bits_ll(ptr noundef %17, i64 noundef %18) #19, !dbg !1040
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1040
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1041

if.then12:                                        ; preds = %if.then6
  %19 = load i64, ptr %nr.addr, align 8, !dbg !1042
  store i64 %19, ptr %retval, align 8, !dbg !1043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1043

if.end13:                                         ; preds = %if.then6
  br label %if.end14, !dbg !1044

if.end14:                                         ; preds = %if.end13, %while.end
  store i64 0, ptr %retval, align 8, !dbg !1045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1045

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask_to_set) #17, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits_to_set) #17, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !1046
  %20 = load i64, ptr %retval, align 8, !dbg !1046
  ret i64 %20, !dbg !1046
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bitmap_clear_ll(ptr noundef %map, i64 noundef %start, i64 noundef %nr) #0 align 16 !dbg !1047 {
entry:
  %retval = alloca i64, align 8
  %map.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %nr.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %size = alloca i64, align 8
  %bits_to_clear = alloca i32, align 4
  %mask_to_clear = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !1049, metadata !DIExpression()), !dbg !1056
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1050, metadata !DIExpression()), !dbg !1057
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1052, metadata !DIExpression()), !dbg !1060
  %0 = load ptr, ptr %map.addr, align 8, !dbg !1061
  %1 = load i64, ptr %start.addr, align 8, !dbg !1062
  %div = udiv i64 %1, 64, !dbg !1062
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1063
  store ptr %add.ptr, ptr %p, align 8, !dbg !1060
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1053, metadata !DIExpression()), !dbg !1065
  %2 = load i64, ptr %start.addr, align 8, !dbg !1066
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1067
  %add = add i64 %2, %3, !dbg !1068
  store i64 %add, ptr %size, align 8, !dbg !1065
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits_to_clear) #17, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %bits_to_clear, metadata !1054, metadata !DIExpression()), !dbg !1070
  %4 = load i64, ptr %start.addr, align 8, !dbg !1071
  %rem = urem i64 %4, 64, !dbg !1072
  %sub = sub i64 64, %rem, !dbg !1073
  %conv = trunc i64 %sub to i32, !dbg !1074
  store i32 %conv, ptr %bits_to_clear, align 4, !dbg !1070
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask_to_clear) #17, !dbg !1075
  call void @llvm.dbg.declare(metadata ptr %mask_to_clear, metadata !1055, metadata !DIExpression()), !dbg !1076
  %5 = load i64, ptr %start.addr, align 8, !dbg !1077
  %and = and i64 %5, 63, !dbg !1077
  %shl = shl i64 -1, %and, !dbg !1077
  store i64 %shl, ptr %mask_to_clear, align 8, !dbg !1076
  br label %while.cond, !dbg !1078

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1079
  %7 = load i32, ptr %bits_to_clear, align 4, !dbg !1080
  %conv1 = sext i32 %7 to i64, !dbg !1080
  %cmp = icmp uge i64 %6, %conv1, !dbg !1081
  br i1 %cmp, label %while.body, label %while.end, !dbg !1078

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %p, align 8, !dbg !1082
  %9 = load i64, ptr %mask_to_clear, align 8, !dbg !1085
  %call = call i32 @clear_bits_ll(ptr noundef %8, i64 noundef %9) #19, !dbg !1086
  %tobool = icmp ne i32 %call, 0, !dbg !1086
  br i1 %tobool, label %if.then, label %if.end, !dbg !1087

if.then:                                          ; preds = %while.body
  %10 = load i64, ptr %nr.addr, align 8, !dbg !1088
  store i64 %10, ptr %retval, align 8, !dbg !1089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1089

if.end:                                           ; preds = %while.body
  %11 = load i32, ptr %bits_to_clear, align 4, !dbg !1090
  %conv3 = sext i32 %11 to i64, !dbg !1090
  %12 = load i64, ptr %nr.addr, align 8, !dbg !1091
  %sub4 = sub i64 %12, %conv3, !dbg !1091
  store i64 %sub4, ptr %nr.addr, align 8, !dbg !1091
  store i32 64, ptr %bits_to_clear, align 4, !dbg !1092
  store i64 -1, ptr %mask_to_clear, align 8, !dbg !1093
  %13 = load ptr, ptr %p, align 8, !dbg !1094
  %incdec.ptr = getelementptr i64, ptr %13, i32 1, !dbg !1094
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1094
  br label %while.cond, !dbg !1078, !llvm.loop !1095

while.end:                                        ; preds = %while.cond
  %14 = load i64, ptr %nr.addr, align 8, !dbg !1097
  %tobool5 = icmp ne i64 %14, 0, !dbg !1097
  br i1 %tobool5, label %if.then6, label %if.end14, !dbg !1099

if.then6:                                         ; preds = %while.end
  %15 = load i64, ptr %size, align 8, !dbg !1100
  %sub7 = sub i64 0, %15, !dbg !1100
  %and8 = and i64 %sub7, 63, !dbg !1100
  %shr = lshr i64 -1, %and8, !dbg !1100
  %16 = load i64, ptr %mask_to_clear, align 8, !dbg !1102
  %and9 = and i64 %16, %shr, !dbg !1102
  store i64 %and9, ptr %mask_to_clear, align 8, !dbg !1102
  %17 = load ptr, ptr %p, align 8, !dbg !1103
  %18 = load i64, ptr %mask_to_clear, align 8, !dbg !1105
  %call10 = call i32 @clear_bits_ll(ptr noundef %17, i64 noundef %18) #19, !dbg !1106
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1106
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1107

if.then12:                                        ; preds = %if.then6
  %19 = load i64, ptr %nr.addr, align 8, !dbg !1108
  store i64 %19, ptr %retval, align 8, !dbg !1109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1109

if.end13:                                         ; preds = %if.then6
  br label %if.end14, !dbg !1110

if.end14:                                         ; preds = %if.end13, %while.end
  store i64 0, ptr %retval, align 8, !dbg !1111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1111

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask_to_clear) #17, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits_to_clear) #17, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !1112
  %20 = load i64, ptr %retval, align 8, !dbg !1112
  ret i64 %20, !dbg !1112
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_sub(i64 noundef %i, ptr noundef %v) #4 align 16 !dbg !1113 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1117, metadata !DIExpression()), !dbg !1119
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1118, metadata !DIExpression()), !dbg !1120
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1121
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #19, !dbg !1122
  %1 = load i64, ptr %i.addr, align 8, !dbg !1123
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1124
  call void @raw_atomic_long_sub(i64 noundef %1, ptr noundef %2) #19, !dbg !1125
  ret void, !dbg !1126
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gen_pool_dma_alloc(ptr noundef %pool, i64 noundef %size, ptr noundef %dma) #0 align 16 !dbg !1127 {
entry:
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dma.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1133, metadata !DIExpression()), !dbg !1136
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1134, metadata !DIExpression()), !dbg !1137
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !1135, metadata !DIExpression()), !dbg !1138
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !1139
  %1 = load i64, ptr %size.addr, align 8, !dbg !1140
  %2 = load ptr, ptr %dma.addr, align 8, !dbg !1141
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !1142
  %algo = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 3, !dbg !1143
  %4 = load ptr, ptr %algo, align 8, !dbg !1143
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !1144
  %data = getelementptr inbounds %struct.gen_pool, ptr %5, i32 0, i32 4, !dbg !1145
  %6 = load ptr, ptr %data, align 8, !dbg !1145
  %call = call ptr @gen_pool_dma_alloc_algo(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %6) #19, !dbg !1146
  ret ptr %call, !dbg !1147
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gen_pool_dma_alloc_algo(ptr noundef %pool, i64 noundef %size, ptr noundef %dma, ptr noundef %algo, ptr noundef %data) #0 align 16 !dbg !1148 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dma.addr = alloca ptr, align 8
  %algo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %vaddr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1152, metadata !DIExpression()), !dbg !1158
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1153, metadata !DIExpression()), !dbg !1159
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !1154, metadata !DIExpression()), !dbg !1160
  store ptr %algo, ptr %algo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algo.addr, metadata !1155, metadata !DIExpression()), !dbg !1161
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1156, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #17, !dbg !1163
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !1157, metadata !DIExpression()), !dbg !1164
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !1165
  %tobool = icmp ne ptr %0, null, !dbg !1165
  br i1 %tobool, label %if.end, label %if.then, !dbg !1167

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1168

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !1169
  %2 = load i64, ptr %size.addr, align 8, !dbg !1170
  %3 = load ptr, ptr %algo.addr, align 8, !dbg !1171
  %4 = load ptr, ptr %data.addr, align 8, !dbg !1172
  %call = call i64 @gen_pool_alloc_algo(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #19, !dbg !1173
  store i64 %call, ptr %vaddr, align 8, !dbg !1174
  %5 = load i64, ptr %vaddr, align 8, !dbg !1175
  %tobool1 = icmp ne i64 %5, 0, !dbg !1175
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1177

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !1178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1178

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %dma.addr, align 8, !dbg !1179
  %tobool4 = icmp ne ptr %6, null, !dbg !1179
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !1181

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !1182
  %8 = load i64, ptr %vaddr, align 8, !dbg !1183
  %call6 = call i64 @gen_pool_virt_to_phys(ptr noundef %7, i64 noundef %8) #19, !dbg !1184
  %9 = load ptr, ptr %dma.addr, align 8, !dbg !1185
  store i64 %call6, ptr %9, align 8, !dbg !1186
  br label %if.end7, !dbg !1187

if.end7:                                          ; preds = %if.then5, %if.end3
  %10 = load i64, ptr %vaddr, align 8, !dbg !1188
  %11 = inttoptr i64 %10 to ptr, !dbg !1189
  store ptr %11, ptr %retval, align 8, !dbg !1190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1190

cleanup:                                          ; preds = %if.end7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #17, !dbg !1191
  %12 = load ptr, ptr %retval, align 8, !dbg !1191
  ret ptr %12, !dbg !1191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @gen_pool_alloc_algo(ptr noundef %pool, i64 noundef %size, ptr noundef %algo, ptr noundef %data) #6 align 16 !dbg !1192 {
entry:
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %algo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1196, metadata !DIExpression()), !dbg !1200
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1197, metadata !DIExpression()), !dbg !1201
  store ptr %algo, ptr %algo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algo.addr, metadata !1198, metadata !DIExpression()), !dbg !1202
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1199, metadata !DIExpression()), !dbg !1203
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !1204
  %1 = load i64, ptr %size.addr, align 8, !dbg !1205
  %2 = load ptr, ptr %algo.addr, align 8, !dbg !1206
  %3 = load ptr, ptr %data.addr, align 8, !dbg !1207
  %call = call i64 @gen_pool_alloc_algo_owner(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null) #19, !dbg !1208
  ret i64 %call, !dbg !1209
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gen_pool_dma_alloc_align(ptr noundef %pool, i64 noundef %size, ptr noundef %dma, i32 noundef %align) #0 align 16 !dbg !1210 {
entry:
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dma.addr = alloca ptr, align 8
  %align.addr = alloca i32, align 4
  %data = alloca %struct.genpool_data_align, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1214, metadata !DIExpression()), !dbg !1222
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1215, metadata !DIExpression()), !dbg !1223
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !1216, metadata !DIExpression()), !dbg !1224
  store i32 %align, ptr %align.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !1217, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #17, !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1218, metadata !DIExpression()), !dbg !1227
  %align1 = getelementptr inbounds %struct.genpool_data_align, ptr %data, i32 0, i32 0, !dbg !1228
  %0 = load i32, ptr %align.addr, align 4, !dbg !1229
  store i32 %0, ptr %align1, align 4, !dbg !1228
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !1230
  %2 = load i64, ptr %size.addr, align 8, !dbg !1231
  %3 = load ptr, ptr %dma.addr, align 8, !dbg !1232
  %call = call ptr @gen_pool_dma_alloc_algo(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef @gen_pool_first_fit_align, ptr noundef %data) #19, !dbg !1233
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #17, !dbg !1234
  ret ptr %call, !dbg !1235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @gen_pool_first_fit_align(ptr noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, ptr noundef %data, ptr noundef %pool, i64 noundef %start_addr) #0 align 16 !dbg !1236 {
entry:
  %map.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %nr.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %start_addr.addr = alloca i64, align 8
  %alignment = alloca ptr, align 8
  %align_mask = alloca i64, align 8
  %align_off = alloca i64, align 8
  %order = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !1238, metadata !DIExpression()), !dbg !1250
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1239, metadata !DIExpression()), !dbg !1251
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1240, metadata !DIExpression()), !dbg !1252
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1241, metadata !DIExpression()), !dbg !1253
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1242, metadata !DIExpression()), !dbg !1254
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1243, metadata !DIExpression()), !dbg !1255
  store i64 %start_addr, ptr %start_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_addr.addr, metadata !1244, metadata !DIExpression()), !dbg !1256
  call void @llvm.lifetime.start.p0(i64 8, ptr %alignment) #17, !dbg !1257
  call void @llvm.dbg.declare(metadata ptr %alignment, metadata !1245, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 8, ptr %align_mask) #17, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %align_mask, metadata !1247, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 8, ptr %align_off) #17, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %align_off, metadata !1248, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #17, !dbg !1262
  call void @llvm.dbg.declare(metadata ptr %order, metadata !1249, metadata !DIExpression()), !dbg !1263
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1264
  store ptr %0, ptr %alignment, align 8, !dbg !1265
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !1266
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 2, !dbg !1267
  %2 = load i32, ptr %min_alloc_order, align 8, !dbg !1267
  store i32 %2, ptr %order, align 4, !dbg !1268
  %3 = load ptr, ptr %alignment, align 8, !dbg !1269
  %align = getelementptr inbounds %struct.genpool_data_align, ptr %3, i32 0, i32 0, !dbg !1270
  %4 = load i32, ptr %align, align 4, !dbg !1270
  %conv = sext i32 %4 to i64, !dbg !1269
  %5 = load i32, ptr %order, align 4, !dbg !1271
  %sh_prom = zext i32 %5 to i64, !dbg !1272
  %shl = shl i64 1, %sh_prom, !dbg !1272
  %add = add i64 %conv, %shl, !dbg !1273
  %sub = sub i64 %add, 1, !dbg !1274
  %6 = load i32, ptr %order, align 4, !dbg !1275
  %sh_prom1 = zext i32 %6 to i64, !dbg !1276
  %shr = lshr i64 %sub, %sh_prom1, !dbg !1276
  %sub2 = sub i64 %shr, 1, !dbg !1277
  store i64 %sub2, ptr %align_mask, align 8, !dbg !1278
  %7 = load i64, ptr %start_addr.addr, align 8, !dbg !1279
  %8 = load ptr, ptr %alignment, align 8, !dbg !1280
  %align3 = getelementptr inbounds %struct.genpool_data_align, ptr %8, i32 0, i32 0, !dbg !1281
  %9 = load i32, ptr %align3, align 4, !dbg !1281
  %sub4 = sub i32 %9, 1, !dbg !1282
  %conv5 = sext i32 %sub4 to i64, !dbg !1283
  %and = and i64 %7, %conv5, !dbg !1284
  %10 = load i32, ptr %order, align 4, !dbg !1285
  %sh_prom6 = zext i32 %10 to i64, !dbg !1286
  %shr7 = lshr i64 %and, %sh_prom6, !dbg !1286
  store i64 %shr7, ptr %align_off, align 8, !dbg !1287
  %11 = load ptr, ptr %map.addr, align 8, !dbg !1288
  %12 = load i64, ptr %size.addr, align 8, !dbg !1289
  %13 = load i64, ptr %start.addr, align 8, !dbg !1290
  %14 = load i32, ptr %nr.addr, align 4, !dbg !1291
  %15 = load i64, ptr %align_mask, align 8, !dbg !1292
  %16 = load i64, ptr %align_off, align 8, !dbg !1293
  %call = call i64 @bitmap_find_next_zero_area_off(ptr noundef %11, i64 noundef %12, i64 noundef %13, i32 noundef %14, i64 noundef %15, i64 noundef %16) #19, !dbg !1294
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #17, !dbg !1295
  call void @llvm.lifetime.end.p0(i64 8, ptr %align_off) #17, !dbg !1295
  call void @llvm.lifetime.end.p0(i64 8, ptr %align_mask) #17, !dbg !1295
  call void @llvm.lifetime.end.p0(i64 8, ptr %alignment) #17, !dbg !1295
  ret i64 %call, !dbg !1296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gen_pool_dma_zalloc(ptr noundef %pool, i64 noundef %size, ptr noundef %dma) #0 align 16 !dbg !1297 {
entry:
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dma.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1299, metadata !DIExpression()), !dbg !1302
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1300, metadata !DIExpression()), !dbg !1303
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !1301, metadata !DIExpression()), !dbg !1304
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !1305
  %1 = load i64, ptr %size.addr, align 8, !dbg !1306
  %2 = load ptr, ptr %dma.addr, align 8, !dbg !1307
  %3 = load ptr, ptr %pool.addr, align 8, !dbg !1308
  %algo = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 3, !dbg !1309
  %4 = load ptr, ptr %algo, align 8, !dbg !1309
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !1310
  %data = getelementptr inbounds %struct.gen_pool, ptr %5, i32 0, i32 4, !dbg !1311
  %6 = load ptr, ptr %data, align 8, !dbg !1311
  %call = call ptr @gen_pool_dma_zalloc_algo(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %6) #19, !dbg !1312
  ret ptr %call, !dbg !1313
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gen_pool_dma_zalloc_algo(ptr noundef %pool, i64 noundef %size, ptr noundef %dma, ptr noundef %algo, ptr noundef %data) #0 align 16 !dbg !1314 {
entry:
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dma.addr = alloca ptr, align 8
  %algo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %vaddr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1316, metadata !DIExpression()), !dbg !1322
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1317, metadata !DIExpression()), !dbg !1323
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !1318, metadata !DIExpression()), !dbg !1324
  store ptr %algo, ptr %algo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algo.addr, metadata !1319, metadata !DIExpression()), !dbg !1325
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1320, metadata !DIExpression()), !dbg !1326
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #17, !dbg !1327
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !1321, metadata !DIExpression()), !dbg !1328
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !1329
  %1 = load i64, ptr %size.addr, align 8, !dbg !1330
  %2 = load ptr, ptr %dma.addr, align 8, !dbg !1331
  %3 = load ptr, ptr %algo.addr, align 8, !dbg !1332
  %4 = load ptr, ptr %data.addr, align 8, !dbg !1333
  %call = call ptr @gen_pool_dma_alloc_algo(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19, !dbg !1334
  store ptr %call, ptr %vaddr, align 8, !dbg !1328
  %5 = load ptr, ptr %vaddr, align 8, !dbg !1335
  %tobool = icmp ne ptr %5, null, !dbg !1335
  br i1 %tobool, label %if.then, label %if.end, !dbg !1337

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %vaddr, align 8, !dbg !1338
  %7 = load i64, ptr %size.addr, align 8, !dbg !1339
  call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %7, i1 false), !dbg !1340
  br label %if.end, !dbg !1340

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %vaddr, align 8, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #17, !dbg !1342
  ret ptr %8, !dbg !1343
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gen_pool_dma_zalloc_align(ptr noundef %pool, i64 noundef %size, ptr noundef %dma, i32 noundef %align) #0 align 16 !dbg !1344 {
entry:
  %pool.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dma.addr = alloca ptr, align 8
  %align.addr = alloca i32, align 4
  %data = alloca %struct.genpool_data_align, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1346, metadata !DIExpression()), !dbg !1351
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1347, metadata !DIExpression()), !dbg !1352
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !1348, metadata !DIExpression()), !dbg !1353
  store i32 %align, ptr %align.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !1349, metadata !DIExpression()), !dbg !1354
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #17, !dbg !1355
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1350, metadata !DIExpression()), !dbg !1356
  %align1 = getelementptr inbounds %struct.genpool_data_align, ptr %data, i32 0, i32 0, !dbg !1357
  %0 = load i32, ptr %align.addr, align 4, !dbg !1358
  store i32 %0, ptr %align1, align 4, !dbg !1357
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !1359
  %2 = load i64, ptr %size.addr, align 8, !dbg !1360
  %3 = load ptr, ptr %dma.addr, align 8, !dbg !1361
  %call = call ptr @gen_pool_dma_zalloc_algo(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef @gen_pool_first_fit_align, ptr noundef %data) #19, !dbg !1362
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #17, !dbg !1363
  ret ptr %call, !dbg !1364
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gen_pool_free_owner(ptr noundef %pool, i64 noundef %addr, i64 noundef %size, ptr noundef %owner) #0 align 16 !dbg !1365 {
entry:
  %pool.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %owner.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %order = alloca i32, align 4
  %start_bit = alloca i64, align 8
  %nbits = alloca i64, align 8
  %remain = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr60 = alloca ptr, align 8
  %tmp64 = alloca ptr, align 8
  %tmp67 = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1369, metadata !DIExpression()), !dbg !1384
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1370, metadata !DIExpression()), !dbg !1385
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1371, metadata !DIExpression()), !dbg !1386
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !1372, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #17, !dbg !1388
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !1373, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #17, !dbg !1390
  call void @llvm.dbg.declare(metadata ptr %order, metadata !1374, metadata !DIExpression()), !dbg !1391
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !1392
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 2, !dbg !1393
  %1 = load i32, ptr %min_alloc_order, align 8, !dbg !1393
  store i32 %1, ptr %order, align 4, !dbg !1391
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_bit) #17, !dbg !1394
  call void @llvm.dbg.declare(metadata ptr %start_bit, metadata !1375, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbits) #17, !dbg !1394
  call void @llvm.dbg.declare(metadata ptr %nbits, metadata !1376, metadata !DIExpression()), !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr %remain) #17, !dbg !1394
  call void @llvm.dbg.declare(metadata ptr %remain, metadata !1377, metadata !DIExpression()), !dbg !1397
  %2 = load ptr, ptr %owner.addr, align 8, !dbg !1398
  %tobool = icmp ne ptr %2, null, !dbg !1398
  br i1 %tobool, label %if.then, label %if.end, !dbg !1400

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %owner.addr, align 8, !dbg !1401
  store ptr null, ptr %3, align 8, !dbg !1402
  br label %if.end, !dbg !1403

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %size.addr, align 8, !dbg !1404
  %5 = load i32, ptr %order, align 4, !dbg !1405
  %sh_prom = zext i32 %5 to i64, !dbg !1406
  %shl = shl i64 1, %sh_prom, !dbg !1406
  %add = add i64 %4, %shl, !dbg !1407
  %sub = sub i64 %add, 1, !dbg !1408
  %6 = load i32, ptr %order, align 4, !dbg !1409
  %sh_prom1 = zext i32 %6 to i64, !dbg !1410
  %shr = lshr i64 %sub, %sh_prom1, !dbg !1410
  store i64 %shr, ptr %nbits, align 8, !dbg !1411
  call void @rcu_read_lock() #19, !dbg !1412
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1413
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1378, metadata !DIExpression()), !dbg !1413
  br label %do.body, !dbg !1414

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1416

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1416

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !1414
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %7, i32 0, i32 1, !dbg !1414
  %next = getelementptr inbounds %struct.list_head, ptr %chunks, i32 0, i32 0, !dbg !1414
  %8 = load volatile ptr, ptr %next, align 8, !dbg !1414
  store ptr %8, ptr %tmp, align 8, !dbg !1416
  %9 = load ptr, ptr %tmp, align 8, !dbg !1414
  store ptr %9, ptr %__mptr, align 8, !dbg !1413
  %10 = load ptr, ptr %__mptr, align 8, !dbg !1413
  %add.ptr = getelementptr i8, ptr %10, i64 0, !dbg !1413
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1418
  %11 = load ptr, ptr %tmp2, align 8, !dbg !1413
  store ptr %11, ptr %chunk, align 8, !dbg !1418
  br label %for.cond, !dbg !1418

for.cond:                                         ; preds = %do.end63, %do.end
  %12 = load ptr, ptr %chunk, align 8, !dbg !1419
  %next_chunk = getelementptr inbounds %struct.gen_pool_chunk, ptr %12, i32 0, i32 0, !dbg !1419
  %13 = load ptr, ptr %pool.addr, align 8, !dbg !1419
  %chunks3 = getelementptr inbounds %struct.gen_pool, ptr %13, i32 0, i32 1, !dbg !1419
  %cmp = icmp ne ptr %next_chunk, %chunks3, !dbg !1419
  br i1 %cmp, label %for.body, label %for.end, !dbg !1418

for.body:                                         ; preds = %for.cond
  %14 = load i64, ptr %addr.addr, align 8, !dbg !1420
  %15 = load ptr, ptr %chunk, align 8, !dbg !1423
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %15, i32 0, i32 4, !dbg !1424
  %16 = load i64, ptr %start_addr, align 8, !dbg !1424
  %cmp4 = icmp uge i64 %14, %16, !dbg !1425
  br i1 %cmp4, label %land.lhs.true, label %if.end59, !dbg !1426

land.lhs.true:                                    ; preds = %for.body
  %17 = load i64, ptr %addr.addr, align 8, !dbg !1427
  %18 = load ptr, ptr %chunk, align 8, !dbg !1428
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %18, i32 0, i32 5, !dbg !1429
  %19 = load i64, ptr %end_addr, align 8, !dbg !1429
  %cmp5 = icmp ule i64 %17, %19, !dbg !1430
  br i1 %cmp5, label %if.then6, label %if.end59, !dbg !1431

if.then6:                                         ; preds = %land.lhs.true
  br label %do.body7, !dbg !1432

do.body7:                                         ; preds = %if.then6
  %20 = load i64, ptr %addr.addr, align 8, !dbg !1434
  %21 = load i64, ptr %size.addr, align 8, !dbg !1434
  %add8 = add i64 %20, %21, !dbg !1434
  %sub9 = sub i64 %add8, 1, !dbg !1434
  %22 = load ptr, ptr %chunk, align 8, !dbg !1434
  %end_addr10 = getelementptr inbounds %struct.gen_pool_chunk, ptr %22, i32 0, i32 5, !dbg !1434
  %23 = load i64, ptr %end_addr10, align 8, !dbg !1434
  %cmp11 = icmp ugt i64 %sub9, %23, !dbg !1434
  %lnot = xor i1 %cmp11, true, !dbg !1434
  %lnot12 = xor i1 %lnot, true, !dbg !1434
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !1434
  %conv = sext i32 %lnot.ext to i64, !dbg !1434
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1434
  %tobool13 = icmp ne i64 %expval, 0, !dbg !1434
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !1437

if.then14:                                        ; preds = %do.body7
  br label %do.body15, !dbg !1434

do.body15:                                        ; preds = %if.then14
  br label %do.body16, !dbg !1438

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !1440

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1440

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !1438

do.body19:                                        ; preds = %do.end18
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 505, i32 0, i64 12) #17, !dbg !1442, !srcloc !1444
  br label %do.cond20, !dbg !1442

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !1442

do.end21:                                         ; preds = %do.cond20
  unreachable, !dbg !1438

do.cond22:                                        ; No predecessors!
  br label %do.end23, !dbg !1438

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !1438

if.end24:                                         ; preds = %do.end23, %do.body7
  br label %do.cond25, !dbg !1437

do.cond25:                                        ; preds = %if.end24
  br label %do.end26, !dbg !1437

do.end26:                                         ; preds = %do.cond25
  %24 = load i64, ptr %addr.addr, align 8, !dbg !1445
  %25 = load ptr, ptr %chunk, align 8, !dbg !1446
  %start_addr27 = getelementptr inbounds %struct.gen_pool_chunk, ptr %25, i32 0, i32 4, !dbg !1447
  %26 = load i64, ptr %start_addr27, align 8, !dbg !1447
  %sub28 = sub i64 %24, %26, !dbg !1448
  %27 = load i32, ptr %order, align 4, !dbg !1449
  %sh_prom29 = zext i32 %27 to i64, !dbg !1450
  %shr30 = lshr i64 %sub28, %sh_prom29, !dbg !1450
  store i64 %shr30, ptr %start_bit, align 8, !dbg !1451
  %28 = load ptr, ptr %chunk, align 8, !dbg !1452
  %bits = getelementptr inbounds %struct.gen_pool_chunk, ptr %28, i32 0, i32 6, !dbg !1453
  %arraydecay = getelementptr inbounds [0 x i64], ptr %bits, i64 0, i64 0, !dbg !1452
  %29 = load i64, ptr %start_bit, align 8, !dbg !1454
  %30 = load i64, ptr %nbits, align 8, !dbg !1455
  %call = call i64 @bitmap_clear_ll(ptr noundef %arraydecay, i64 noundef %29, i64 noundef %30) #19, !dbg !1456
  store i64 %call, ptr %remain, align 8, !dbg !1457
  br label %do.body31, !dbg !1458

do.body31:                                        ; preds = %do.end26
  %31 = load i64, ptr %remain, align 8, !dbg !1459
  %tobool32 = icmp ne i64 %31, 0, !dbg !1459
  %lnot33 = xor i1 %tobool32, true, !dbg !1459
  %lnot35 = xor i1 %lnot33, true, !dbg !1459
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !1459
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !1459
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !1459
  %tobool39 = icmp ne i64 %expval38, 0, !dbg !1459
  br i1 %tobool39, label %if.then40, label %if.end50, !dbg !1462

if.then40:                                        ; preds = %do.body31
  br label %do.body41, !dbg !1459

do.body41:                                        ; preds = %if.then40
  br label %do.body42, !dbg !1463

do.body42:                                        ; preds = %do.body41
  br label %do.cond43, !dbg !1465

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !1465

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !1463

do.body45:                                        ; preds = %do.end44
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 508, i32 0, i64 12) #17, !dbg !1467, !srcloc !1469
  br label %do.cond46, !dbg !1467

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !1467

do.end47:                                         ; preds = %do.cond46
  unreachable, !dbg !1463

do.cond48:                                        ; No predecessors!
  br label %do.end49, !dbg !1463

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !1463

if.end50:                                         ; preds = %do.end49, %do.body31
  br label %do.cond51, !dbg !1462

do.cond51:                                        ; preds = %if.end50
  br label %do.end52, !dbg !1462

do.end52:                                         ; preds = %do.cond51
  %32 = load i64, ptr %nbits, align 8, !dbg !1470
  %33 = load i32, ptr %order, align 4, !dbg !1471
  %sh_prom53 = zext i32 %33 to i64, !dbg !1472
  %shl54 = shl i64 %32, %sh_prom53, !dbg !1472
  store i64 %shl54, ptr %size.addr, align 8, !dbg !1473
  %34 = load i64, ptr %size.addr, align 8, !dbg !1474
  %35 = load ptr, ptr %chunk, align 8, !dbg !1475
  %avail = getelementptr inbounds %struct.gen_pool_chunk, ptr %35, i32 0, i32 1, !dbg !1476
  call void @atomic_long_add(i64 noundef %34, ptr noundef %avail) #19, !dbg !1477
  %36 = load ptr, ptr %owner.addr, align 8, !dbg !1478
  %tobool55 = icmp ne ptr %36, null, !dbg !1478
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !1480

if.then56:                                        ; preds = %do.end52
  %37 = load ptr, ptr %chunk, align 8, !dbg !1481
  %owner57 = getelementptr inbounds %struct.gen_pool_chunk, ptr %37, i32 0, i32 3, !dbg !1482
  %38 = load ptr, ptr %owner57, align 8, !dbg !1482
  %39 = load ptr, ptr %owner.addr, align 8, !dbg !1483
  store ptr %38, ptr %39, align 8, !dbg !1484
  br label %if.end58, !dbg !1485

if.end58:                                         ; preds = %if.then56, %do.end52
  call void @rcu_read_unlock() #19, !dbg !1486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1487

if.end59:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !1488

for.inc:                                          ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr60) #17, !dbg !1489
  call void @llvm.dbg.declare(metadata ptr %__mptr60, metadata !1381, metadata !DIExpression()), !dbg !1489
  br label %do.body61, !dbg !1490

do.body61:                                        ; preds = %for.inc
  br label %do.cond62, !dbg !1492

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !1492

do.end63:                                         ; preds = %do.cond62
  %40 = load ptr, ptr %chunk, align 8, !dbg !1490
  %next_chunk65 = getelementptr inbounds %struct.gen_pool_chunk, ptr %40, i32 0, i32 0, !dbg !1490
  %next66 = getelementptr inbounds %struct.list_head, ptr %next_chunk65, i32 0, i32 0, !dbg !1490
  %41 = load volatile ptr, ptr %next66, align 8, !dbg !1490
  store ptr %41, ptr %tmp64, align 8, !dbg !1492
  %42 = load ptr, ptr %tmp64, align 8, !dbg !1490
  store ptr %42, ptr %__mptr60, align 8, !dbg !1489
  %43 = load ptr, ptr %__mptr60, align 8, !dbg !1489
  %add.ptr68 = getelementptr i8, ptr %43, i64 0, !dbg !1489
  store ptr %add.ptr68, ptr %tmp67, align 8, !dbg !1489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr60) #17, !dbg !1419
  %44 = load ptr, ptr %tmp67, align 8, !dbg !1489
  store ptr %44, ptr %chunk, align 8, !dbg !1419
  br label %for.cond, !dbg !1419, !llvm.loop !1494

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #19, !dbg !1496
  br label %do.body69, !dbg !1497

do.body69:                                        ; preds = %for.end
  br label %do.body70, !dbg !1498

do.body70:                                        ; preds = %do.body69
  br label %do.cond71, !dbg !1500

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !1500

do.end72:                                         ; preds = %do.cond71
  br label %do.body73, !dbg !1498

do.body73:                                        ; preds = %do.end72
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 518, i32 0, i64 12) #17, !dbg !1502, !srcloc !1504
  br label %do.cond74, !dbg !1502

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !1502

do.end75:                                         ; preds = %do.cond74
  unreachable, !dbg !1498

do.cond76:                                        ; No predecessors!
  br label %do.end77, !dbg !1498

do.end77:                                         ; preds = %do.cond76
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1505
  br label %cleanup, !dbg !1505

cleanup:                                          ; preds = %do.end77, %if.end58
  call void @llvm.lifetime.end.p0(i64 8, ptr %remain) #17, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbits) #17, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_bit) #17, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #17, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #17, !dbg !1505
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1505

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_add(i64 noundef %i, ptr noundef %v) #4 align 16 !dbg !1506 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1508, metadata !DIExpression()), !dbg !1510
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1509, metadata !DIExpression()), !dbg !1511
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1512
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #19, !dbg !1513
  %1 = load i64, ptr %i.addr, align 8, !dbg !1514
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1515
  call void @raw_atomic_long_add(i64 noundef %1, ptr noundef %2) #19, !dbg !1516
  ret void, !dbg !1517
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gen_pool_for_each_chunk(ptr noundef %pool, ptr noundef %func, ptr noundef %data) #0 align 16 !dbg !1518 {
entry:
  %pool.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1525, metadata !DIExpression()), !dbg !1535
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1526, metadata !DIExpression()), !dbg !1536
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1527, metadata !DIExpression()), !dbg !1537
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #17, !dbg !1538
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !1528, metadata !DIExpression()), !dbg !1539
  call void @rcu_read_lock() #19, !dbg !1540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1541
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1529, metadata !DIExpression()), !dbg !1541
  br label %do.body, !dbg !1542

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1544

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1544

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !1542
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1, !dbg !1542
  %next = getelementptr inbounds %struct.list_head, ptr %chunks, i32 0, i32 0, !dbg !1542
  %1 = load volatile ptr, ptr %next, align 8, !dbg !1542
  store ptr %1, ptr %tmp, align 8, !dbg !1544
  %2 = load ptr, ptr %tmp, align 8, !dbg !1542
  store ptr %2, ptr %__mptr, align 8, !dbg !1541
  %3 = load ptr, ptr %__mptr, align 8, !dbg !1541
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !1541
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !1541
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1546
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1541
  store ptr %4, ptr %chunk, align 8, !dbg !1546
  br label %for.cond, !dbg !1546

for.cond:                                         ; preds = %do.end6, %do.end
  %5 = load ptr, ptr %chunk, align 8, !dbg !1547
  %next_chunk = getelementptr inbounds %struct.gen_pool_chunk, ptr %5, i32 0, i32 0, !dbg !1547
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !1547
  %chunks2 = getelementptr inbounds %struct.gen_pool, ptr %6, i32 0, i32 1, !dbg !1547
  %cmp = icmp ne ptr %next_chunk, %chunks2, !dbg !1547
  br i1 %cmp, label %for.body, label %for.end, !dbg !1546

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %func.addr, align 8, !dbg !1548
  %8 = load ptr, ptr %pool.addr, align 8, !dbg !1549
  %9 = load ptr, ptr %chunk, align 8, !dbg !1550
  %10 = load ptr, ptr %data.addr, align 8, !dbg !1551
  call void %7(ptr noundef %8, ptr noundef %9, ptr noundef %10) #19, !dbg !1548
  br label %for.inc, !dbg !1548

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #17, !dbg !1552
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !1532, metadata !DIExpression()), !dbg !1552
  br label %do.body4, !dbg !1553

do.body4:                                         ; preds = %for.inc
  br label %do.cond5, !dbg !1555

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1555

do.end6:                                          ; preds = %do.cond5
  %11 = load ptr, ptr %chunk, align 8, !dbg !1553
  %next_chunk8 = getelementptr inbounds %struct.gen_pool_chunk, ptr %11, i32 0, i32 0, !dbg !1553
  %next9 = getelementptr inbounds %struct.list_head, ptr %next_chunk8, i32 0, i32 0, !dbg !1553
  %12 = load volatile ptr, ptr %next9, align 8, !dbg !1553
  store ptr %12, ptr %tmp7, align 8, !dbg !1555
  %13 = load ptr, ptr %tmp7, align 8, !dbg !1553
  store ptr %13, ptr %__mptr3, align 8, !dbg !1552
  %14 = load ptr, ptr %__mptr3, align 8, !dbg !1552
  %add.ptr11 = getelementptr i8, ptr %14, i64 0, !dbg !1552
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !1552
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #17, !dbg !1547
  %15 = load ptr, ptr %tmp10, align 8, !dbg !1552
  store ptr %15, ptr %chunk, align 8, !dbg !1547
  br label %for.cond, !dbg !1547, !llvm.loop !1557

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #19, !dbg !1559
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #17, !dbg !1560
  ret void, !dbg !1560
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @gen_pool_has_addr(ptr noundef %pool, i64 noundef %start, i64 noundef %size) #0 align 16 !dbg !1561 {
entry:
  %pool.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %found = alloca i8, align 1
  %end = alloca i64, align 8
  %chunk = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1567, metadata !DIExpression()), !dbg !1579
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1568, metadata !DIExpression()), !dbg !1580
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1569, metadata !DIExpression()), !dbg !1581
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #17, !dbg !1582
  call void @llvm.dbg.declare(metadata ptr %found, metadata !1570, metadata !DIExpression()), !dbg !1583
  store i8 0, ptr %found, align 1, !dbg !1583
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #17, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1571, metadata !DIExpression()), !dbg !1585
  %0 = load i64, ptr %start.addr, align 8, !dbg !1586
  %1 = load i64, ptr %size.addr, align 8, !dbg !1587
  %add = add i64 %0, %1, !dbg !1588
  %sub = sub i64 %add, 1, !dbg !1589
  store i64 %sub, ptr %end, align 8, !dbg !1585
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #17, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !1572, metadata !DIExpression()), !dbg !1591
  call void @rcu_read_lock() #19, !dbg !1592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1593
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1573, metadata !DIExpression()), !dbg !1593
  br label %do.body, !dbg !1594

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1596

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1596

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !1594
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %2, i32 0, i32 1, !dbg !1594
  %next = getelementptr inbounds %struct.list_head, ptr %chunks, i32 0, i32 0, !dbg !1594
  %3 = load volatile ptr, ptr %next, align 8, !dbg !1594
  store ptr %3, ptr %tmp, align 8, !dbg !1596
  %4 = load ptr, ptr %tmp, align 8, !dbg !1594
  store ptr %4, ptr %__mptr, align 8, !dbg !1593
  %5 = load ptr, ptr %__mptr, align 8, !dbg !1593
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !1593
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !1593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1598
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1593
  store ptr %6, ptr %chunk, align 8, !dbg !1598
  br label %for.cond, !dbg !1598

for.cond:                                         ; preds = %do.end12, %do.end
  %7 = load ptr, ptr %chunk, align 8, !dbg !1599
  %next_chunk = getelementptr inbounds %struct.gen_pool_chunk, ptr %7, i32 0, i32 0, !dbg !1599
  %8 = load ptr, ptr %pool.addr, align 8, !dbg !1599
  %chunks2 = getelementptr inbounds %struct.gen_pool, ptr %8, i32 0, i32 1, !dbg !1599
  %cmp = icmp ne ptr %next_chunk, %chunks2, !dbg !1599
  br i1 %cmp, label %for.body, label %for.end, !dbg !1598

for.body:                                         ; preds = %for.cond
  %9 = load i64, ptr %start.addr, align 8, !dbg !1600
  %10 = load ptr, ptr %chunk, align 8, !dbg !1603
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %10, i32 0, i32 4, !dbg !1604
  %11 = load i64, ptr %start_addr, align 8, !dbg !1604
  %cmp3 = icmp uge i64 %9, %11, !dbg !1605
  br i1 %cmp3, label %land.lhs.true, label %if.end8, !dbg !1606

land.lhs.true:                                    ; preds = %for.body
  %12 = load i64, ptr %start.addr, align 8, !dbg !1607
  %13 = load ptr, ptr %chunk, align 8, !dbg !1608
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %13, i32 0, i32 5, !dbg !1609
  %14 = load i64, ptr %end_addr, align 8, !dbg !1609
  %cmp4 = icmp ule i64 %12, %14, !dbg !1610
  br i1 %cmp4, label %if.then, label %if.end8, !dbg !1611

if.then:                                          ; preds = %land.lhs.true
  %15 = load i64, ptr %end, align 8, !dbg !1612
  %16 = load ptr, ptr %chunk, align 8, !dbg !1615
  %end_addr5 = getelementptr inbounds %struct.gen_pool_chunk, ptr %16, i32 0, i32 5, !dbg !1616
  %17 = load i64, ptr %end_addr5, align 8, !dbg !1616
  %cmp6 = icmp ule i64 %15, %17, !dbg !1617
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !1618

if.then7:                                         ; preds = %if.then
  store i8 1, ptr %found, align 1, !dbg !1619
  br label %for.end, !dbg !1621

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !1622

if.end8:                                          ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc, !dbg !1623

for.inc:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #17, !dbg !1624
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !1576, metadata !DIExpression()), !dbg !1624
  br label %do.body10, !dbg !1625

do.body10:                                        ; preds = %for.inc
  br label %do.cond11, !dbg !1627

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1627

do.end12:                                         ; preds = %do.cond11
  %18 = load ptr, ptr %chunk, align 8, !dbg !1625
  %next_chunk14 = getelementptr inbounds %struct.gen_pool_chunk, ptr %18, i32 0, i32 0, !dbg !1625
  %next15 = getelementptr inbounds %struct.list_head, ptr %next_chunk14, i32 0, i32 0, !dbg !1625
  %19 = load volatile ptr, ptr %next15, align 8, !dbg !1625
  store ptr %19, ptr %tmp13, align 8, !dbg !1627
  %20 = load ptr, ptr %tmp13, align 8, !dbg !1625
  store ptr %20, ptr %__mptr9, align 8, !dbg !1624
  %21 = load ptr, ptr %__mptr9, align 8, !dbg !1624
  %add.ptr17 = getelementptr i8, ptr %21, i64 0, !dbg !1624
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !1624
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #17, !dbg !1599
  %22 = load ptr, ptr %tmp16, align 8, !dbg !1624
  store ptr %22, ptr %chunk, align 8, !dbg !1599
  br label %for.cond, !dbg !1599, !llvm.loop !1629

for.end:                                          ; preds = %if.then7, %for.cond
  call void @rcu_read_unlock() #19, !dbg !1631
  %23 = load i8, ptr %found, align 1, !dbg !1632, !range !1633, !noundef !1634
  %tobool = trunc i8 %23 to i1, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #17, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #17, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #17, !dbg !1635
  ret i1 %tobool, !dbg !1636
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @gen_pool_avail(ptr noundef %pool) #0 align 16 !dbg !1637 {
entry:
  %pool.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %avail = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1641, metadata !DIExpression()), !dbg !1650
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #17, !dbg !1651
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !1642, metadata !DIExpression()), !dbg !1652
  call void @llvm.lifetime.start.p0(i64 8, ptr %avail) #17, !dbg !1653
  call void @llvm.dbg.declare(metadata ptr %avail, metadata !1643, metadata !DIExpression()), !dbg !1654
  store i64 0, ptr %avail, align 8, !dbg !1654
  call void @rcu_read_lock() #19, !dbg !1655
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1656
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1644, metadata !DIExpression()), !dbg !1656
  br label %do.body, !dbg !1657

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1659

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1659

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !1657
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1, !dbg !1657
  %next = getelementptr inbounds %struct.list_head, ptr %chunks, i32 0, i32 0, !dbg !1657
  %1 = load volatile ptr, ptr %next, align 8, !dbg !1657
  store ptr %1, ptr %tmp, align 8, !dbg !1659
  %2 = load ptr, ptr %tmp, align 8, !dbg !1657
  store ptr %2, ptr %__mptr, align 8, !dbg !1656
  %3 = load ptr, ptr %__mptr, align 8, !dbg !1656
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !1656
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1661
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1656
  store ptr %4, ptr %chunk, align 8, !dbg !1661
  br label %for.cond, !dbg !1661

for.cond:                                         ; preds = %do.end7, %do.end
  %5 = load ptr, ptr %chunk, align 8, !dbg !1662
  %next_chunk = getelementptr inbounds %struct.gen_pool_chunk, ptr %5, i32 0, i32 0, !dbg !1662
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !1662
  %chunks2 = getelementptr inbounds %struct.gen_pool, ptr %6, i32 0, i32 1, !dbg !1662
  %cmp = icmp ne ptr %next_chunk, %chunks2, !dbg !1662
  br i1 %cmp, label %for.body, label %for.end, !dbg !1661

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %chunk, align 8, !dbg !1663
  %avail3 = getelementptr inbounds %struct.gen_pool_chunk, ptr %7, i32 0, i32 1, !dbg !1664
  %call = call i64 @atomic_long_read(ptr noundef %avail3) #19, !dbg !1665
  %8 = load i64, ptr %avail, align 8, !dbg !1666
  %add = add i64 %8, %call, !dbg !1666
  store i64 %add, ptr %avail, align 8, !dbg !1666
  br label %for.inc, !dbg !1667

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #17, !dbg !1668
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !1647, metadata !DIExpression()), !dbg !1668
  br label %do.body5, !dbg !1669

do.body5:                                         ; preds = %for.inc
  br label %do.cond6, !dbg !1671

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1671

do.end7:                                          ; preds = %do.cond6
  %9 = load ptr, ptr %chunk, align 8, !dbg !1669
  %next_chunk9 = getelementptr inbounds %struct.gen_pool_chunk, ptr %9, i32 0, i32 0, !dbg !1669
  %next10 = getelementptr inbounds %struct.list_head, ptr %next_chunk9, i32 0, i32 0, !dbg !1669
  %10 = load volatile ptr, ptr %next10, align 8, !dbg !1669
  store ptr %10, ptr %tmp8, align 8, !dbg !1671
  %11 = load ptr, ptr %tmp8, align 8, !dbg !1669
  store ptr %11, ptr %__mptr4, align 8, !dbg !1668
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !1668
  %add.ptr12 = getelementptr i8, ptr %12, i64 0, !dbg !1668
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !1668
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #17, !dbg !1662
  %13 = load ptr, ptr %tmp11, align 8, !dbg !1668
  store ptr %13, ptr %chunk, align 8, !dbg !1662
  br label %for.cond, !dbg !1662, !llvm.loop !1673

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #19, !dbg !1675
  %14 = load i64, ptr %avail, align 8, !dbg !1676
  call void @llvm.lifetime.end.p0(i64 8, ptr %avail) #17, !dbg !1677
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #17, !dbg !1677
  ret i64 %14, !dbg !1678
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @gen_pool_size(ptr noundef %pool) #0 align 16 !dbg !1679 {
entry:
  %pool.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %size = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1681, metadata !DIExpression()), !dbg !1690
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #17, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !1682, metadata !DIExpression()), !dbg !1692
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1683, metadata !DIExpression()), !dbg !1694
  store i64 0, ptr %size, align 8, !dbg !1694
  call void @rcu_read_lock() #19, !dbg !1695
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1684, metadata !DIExpression()), !dbg !1696
  br label %do.body, !dbg !1697

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1699

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1699

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !1697
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1, !dbg !1697
  %next = getelementptr inbounds %struct.list_head, ptr %chunks, i32 0, i32 0, !dbg !1697
  %1 = load volatile ptr, ptr %next, align 8, !dbg !1697
  store ptr %1, ptr %tmp, align 8, !dbg !1699
  %2 = load ptr, ptr %tmp, align 8, !dbg !1697
  store ptr %2, ptr %__mptr, align 8, !dbg !1696
  %3 = load ptr, ptr %__mptr, align 8, !dbg !1696
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !1696
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1701
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1696
  store ptr %4, ptr %chunk, align 8, !dbg !1701
  br label %for.cond, !dbg !1701

for.cond:                                         ; preds = %do.end6, %do.end
  %5 = load ptr, ptr %chunk, align 8, !dbg !1702
  %next_chunk = getelementptr inbounds %struct.gen_pool_chunk, ptr %5, i32 0, i32 0, !dbg !1702
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !1702
  %chunks2 = getelementptr inbounds %struct.gen_pool, ptr %6, i32 0, i32 1, !dbg !1702
  %cmp = icmp ne ptr %next_chunk, %chunks2, !dbg !1702
  br i1 %cmp, label %for.body, label %for.end, !dbg !1701

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %chunk, align 8, !dbg !1703
  %call = call i64 @chunk_size(ptr noundef %7) #19, !dbg !1704
  %8 = load i64, ptr %size, align 8, !dbg !1705
  %add = add i64 %8, %call, !dbg !1705
  store i64 %add, ptr %size, align 8, !dbg !1705
  br label %for.inc, !dbg !1706

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #17, !dbg !1707
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !1687, metadata !DIExpression()), !dbg !1707
  br label %do.body4, !dbg !1708

do.body4:                                         ; preds = %for.inc
  br label %do.cond5, !dbg !1710

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1710

do.end6:                                          ; preds = %do.cond5
  %9 = load ptr, ptr %chunk, align 8, !dbg !1708
  %next_chunk8 = getelementptr inbounds %struct.gen_pool_chunk, ptr %9, i32 0, i32 0, !dbg !1708
  %next9 = getelementptr inbounds %struct.list_head, ptr %next_chunk8, i32 0, i32 0, !dbg !1708
  %10 = load volatile ptr, ptr %next9, align 8, !dbg !1708
  store ptr %10, ptr %tmp7, align 8, !dbg !1710
  %11 = load ptr, ptr %tmp7, align 8, !dbg !1708
  store ptr %11, ptr %__mptr3, align 8, !dbg !1707
  %12 = load ptr, ptr %__mptr3, align 8, !dbg !1707
  %add.ptr11 = getelementptr i8, ptr %12, i64 0, !dbg !1707
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #17, !dbg !1702
  %13 = load ptr, ptr %tmp10, align 8, !dbg !1707
  store ptr %13, ptr %chunk, align 8, !dbg !1702
  br label %for.cond, !dbg !1702, !llvm.loop !1712

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #19, !dbg !1714
  %14 = load i64, ptr %size, align 8, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #17, !dbg !1716
  ret i64 %14, !dbg !1717
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gen_pool_set_algo(ptr noundef %pool, ptr noundef %algo, ptr noundef %data) #0 align 16 !dbg !1718 {
entry:
  %pool.addr = alloca ptr, align 8
  %algo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1722, metadata !DIExpression()), !dbg !1725
  store ptr %algo, ptr %algo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algo.addr, metadata !1723, metadata !DIExpression()), !dbg !1726
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1724, metadata !DIExpression()), !dbg !1727
  call void @rcu_read_lock() #19, !dbg !1728
  %0 = load ptr, ptr %algo.addr, align 8, !dbg !1729
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !1730
  %algo1 = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 3, !dbg !1731
  store ptr %0, ptr %algo1, align 8, !dbg !1732
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !1733
  %algo2 = getelementptr inbounds %struct.gen_pool, ptr %2, i32 0, i32 3, !dbg !1735
  %3 = load ptr, ptr %algo2, align 8, !dbg !1735
  %tobool = icmp ne ptr %3, null, !dbg !1733
  br i1 %tobool, label %if.end, label %if.then, !dbg !1736

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !1737
  %algo3 = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 3, !dbg !1738
  store ptr @gen_pool_first_fit, ptr %algo3, align 8, !dbg !1739
  br label %if.end, !dbg !1737

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %data.addr, align 8, !dbg !1740
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !1741
  %data4 = getelementptr inbounds %struct.gen_pool, ptr %6, i32 0, i32 4, !dbg !1742
  store ptr %5, ptr %data4, align 8, !dbg !1743
  call void @rcu_read_unlock() #19, !dbg !1744
  ret void, !dbg !1745
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bitmap_find_next_zero_area(ptr noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, i64 noundef %align_mask) #6 align 16 !dbg !1746 {
entry:
  %map.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %nr.addr = alloca i32, align 4
  %align_mask.addr = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !1751, metadata !DIExpression()), !dbg !1756
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1752, metadata !DIExpression()), !dbg !1757
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1753, metadata !DIExpression()), !dbg !1758
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1754, metadata !DIExpression()), !dbg !1759
  store i64 %align_mask, ptr %align_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align_mask.addr, metadata !1755, metadata !DIExpression()), !dbg !1760
  %0 = load ptr, ptr %map.addr, align 8, !dbg !1761
  %1 = load i64, ptr %size.addr, align 8, !dbg !1762
  %2 = load i64, ptr %start.addr, align 8, !dbg !1763
  %3 = load i32, ptr %nr.addr, align 4, !dbg !1764
  %4 = load i64, ptr %align_mask.addr, align 8, !dbg !1765
  %call = call i64 @bitmap_find_next_zero_area_off(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef 0) #19, !dbg !1766
  ret i64 %call, !dbg !1767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1768 dso_local i64 @bitmap_find_next_zero_area_off(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @gen_pool_fixed_alloc(ptr noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, ptr noundef %data, ptr noundef %pool, i64 noundef %start_addr) #0 align 16 !dbg !1771 {
entry:
  %retval = alloca i64, align 8
  %map.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %nr.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %start_addr.addr = alloca i64, align 8
  %fixed_data = alloca ptr, align 8
  %order = alloca i32, align 4
  %offset_bit = alloca i64, align 8
  %start_bit = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !1773, metadata !DIExpression()), !dbg !1794
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1774, metadata !DIExpression()), !dbg !1795
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1775, metadata !DIExpression()), !dbg !1796
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1776, metadata !DIExpression()), !dbg !1797
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1777, metadata !DIExpression()), !dbg !1798
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1778, metadata !DIExpression()), !dbg !1799
  store i64 %start_addr, ptr %start_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_addr.addr, metadata !1779, metadata !DIExpression()), !dbg !1800
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixed_data) #17, !dbg !1801
  call void @llvm.dbg.declare(metadata ptr %fixed_data, metadata !1780, metadata !DIExpression()), !dbg !1802
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #17, !dbg !1803
  call void @llvm.dbg.declare(metadata ptr %order, metadata !1785, metadata !DIExpression()), !dbg !1804
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset_bit) #17, !dbg !1805
  call void @llvm.dbg.declare(metadata ptr %offset_bit, metadata !1786, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_bit) #17, !dbg !1807
  call void @llvm.dbg.declare(metadata ptr %start_bit, metadata !1787, metadata !DIExpression()), !dbg !1808
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1809
  store ptr %0, ptr %fixed_data, align 8, !dbg !1810
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !1811
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 2, !dbg !1812
  %2 = load i32, ptr %min_alloc_order, align 8, !dbg !1812
  store i32 %2, ptr %order, align 4, !dbg !1813
  %3 = load ptr, ptr %fixed_data, align 8, !dbg !1814
  %offset = getelementptr inbounds %struct.genpool_data_fixed, ptr %3, i32 0, i32 0, !dbg !1815
  %4 = load i64, ptr %offset, align 8, !dbg !1815
  %5 = load i32, ptr %order, align 4, !dbg !1816
  %sh_prom = zext i32 %5 to i64, !dbg !1817
  %shr = lshr i64 %4, %sh_prom, !dbg !1817
  store i64 %shr, ptr %offset_bit, align 8, !dbg !1818
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1819
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1788, metadata !DIExpression()), !dbg !1819
  %6 = load ptr, ptr %fixed_data, align 8, !dbg !1819
  %offset1 = getelementptr inbounds %struct.genpool_data_fixed, ptr %6, i32 0, i32 0, !dbg !1819
  %7 = load i64, ptr %offset1, align 8, !dbg !1819
  %8 = load i32, ptr %order, align 4, !dbg !1819
  %sh_prom2 = zext i32 %8 to i64, !dbg !1819
  %shl = shl i64 1, %sh_prom2, !dbg !1819
  %sub = sub i64 %shl, 1, !dbg !1819
  %and = and i64 %7, %sub, !dbg !1819
  %tobool = icmp ne i64 %and, 0, !dbg !1819
  %lnot = xor i1 %tobool, true, !dbg !1819
  %lnot3 = xor i1 %lnot, true, !dbg !1819
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1819
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1819
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !1820
  %tobool4 = icmp ne i32 %9, 0, !dbg !1820
  %lnot5 = xor i1 %tobool4, true, !dbg !1820
  %lnot7 = xor i1 %lnot5, true, !dbg !1820
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1820
  %conv = sext i32 %lnot.ext8 to i64, !dbg !1820
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1820
  %tobool9 = icmp ne i64 %expval, 0, !dbg !1820
  br i1 %tobool9, label %if.then, label %if.end, !dbg !1819

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1820

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !1821
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1791, metadata !DIExpression()), !dbg !1821
  store i32 2305, ptr %__flags, align 4, !dbg !1821
  br label %do.body10, !dbg !1821

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !1822

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !1822

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !1821

do.body11:                                        ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !1824
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 706, i32 %10, i64 12) #17, !dbg !1824, !srcloc !1826
  br label %do.cond12, !dbg !1824

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1824

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1821

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !1827

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1827

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !1820
  br label %do.cond17, !dbg !1821

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !1821

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !1821

if.end:                                           ; preds = %do.end18, %entry
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !1819
  %tobool19 = icmp ne i32 %11, 0, !dbg !1819
  %lnot20 = xor i1 %tobool19, true, !dbg !1819
  %lnot22 = xor i1 %lnot20, true, !dbg !1819
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !1819
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !1819
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !1819
  store i64 %expval25, ptr %tmp, align 8, !dbg !1820
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1829
  %12 = load i64, ptr %tmp, align 8, !dbg !1819
  %tobool26 = icmp ne i64 %12, 0, !dbg !1829
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1830

if.then27:                                        ; preds = %if.end
  %13 = load i64, ptr %size.addr, align 8, !dbg !1831
  store i64 %13, ptr %retval, align 8, !dbg !1832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1832

if.end28:                                         ; preds = %if.end
  %14 = load ptr, ptr %map.addr, align 8, !dbg !1833
  %15 = load i64, ptr %size.addr, align 8, !dbg !1834
  %16 = load i64, ptr %start.addr, align 8, !dbg !1835
  %17 = load i64, ptr %offset_bit, align 8, !dbg !1836
  %add = add i64 %16, %17, !dbg !1837
  %18 = load i32, ptr %nr.addr, align 4, !dbg !1838
  %call = call i64 @bitmap_find_next_zero_area(ptr noundef %14, i64 noundef %15, i64 noundef %add, i32 noundef %18, i64 noundef 0) #19, !dbg !1839
  store i64 %call, ptr %start_bit, align 8, !dbg !1840
  %19 = load i64, ptr %start_bit, align 8, !dbg !1841
  %20 = load i64, ptr %offset_bit, align 8, !dbg !1843
  %cmp = icmp ne i64 %19, %20, !dbg !1844
  br i1 %cmp, label %if.then30, label %if.end31, !dbg !1845

if.then30:                                        ; preds = %if.end28
  %21 = load i64, ptr %size.addr, align 8, !dbg !1846
  store i64 %21, ptr %start_bit, align 8, !dbg !1847
  br label %if.end31, !dbg !1848

if.end31:                                         ; preds = %if.then30, %if.end28
  %22 = load i64, ptr %start_bit, align 8, !dbg !1849
  store i64 %22, ptr %retval, align 8, !dbg !1850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1850

cleanup:                                          ; preds = %if.end31, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_bit) #17, !dbg !1851
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset_bit) #17, !dbg !1851
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #17, !dbg !1851
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixed_data) #17, !dbg !1851
  %23 = load i64, ptr %retval, align 8, !dbg !1851
  ret i64 %23, !dbg !1851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @gen_pool_first_fit_order_align(ptr noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, ptr noundef %data, ptr noundef %pool, i64 noundef %start_addr) #0 align 16 !dbg !1852 {
entry:
  %map.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %nr.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %start_addr.addr = alloca i64, align 8
  %align_mask = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !1854, metadata !DIExpression()), !dbg !1862
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1855, metadata !DIExpression()), !dbg !1863
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1856, metadata !DIExpression()), !dbg !1864
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1857, metadata !DIExpression()), !dbg !1865
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1858, metadata !DIExpression()), !dbg !1866
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1859, metadata !DIExpression()), !dbg !1867
  store i64 %start_addr, ptr %start_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_addr.addr, metadata !1860, metadata !DIExpression()), !dbg !1868
  call void @llvm.lifetime.start.p0(i64 8, ptr %align_mask) #17, !dbg !1869
  call void @llvm.dbg.declare(metadata ptr %align_mask, metadata !1861, metadata !DIExpression()), !dbg !1870
  %0 = load i32, ptr %nr.addr, align 4, !dbg !1871
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1871
  br i1 %1, label %cond.true, label %cond.false15, !dbg !1871

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %nr.addr, align 4, !dbg !1871
  %cmp = icmp eq i32 %2, 1, !dbg !1871
  br i1 %cmp, label %cond.true1, label %cond.false, !dbg !1871

cond.true1:                                       ; preds = %cond.true
  br label %cond.end13, !dbg !1871

cond.false:                                       ; preds = %cond.true
  %3 = load i32, ptr %nr.addr, align 4, !dbg !1871
  %sub = sub i32 %3, 1, !dbg !1871
  %4 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !1871
  br i1 %4, label %cond.true2, label %cond.false9, !dbg !1871

cond.true2:                                       ; preds = %cond.false
  %5 = load i32, ptr %nr.addr, align 4, !dbg !1871
  %sub3 = sub i32 %5, 1, !dbg !1871
  %cmp4 = icmp ult i32 %sub3, 2, !dbg !1871
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !1871

cond.true5:                                       ; preds = %cond.true2
  br label %cond.end, !dbg !1871

cond.false6:                                      ; preds = %cond.true2
  %6 = load i32, ptr %nr.addr, align 4, !dbg !1871
  %sub7 = sub i32 %6, 1, !dbg !1871
  %conv = zext i32 %sub7 to i64, !dbg !1871
  %7 = call i64 @llvm.ctlz.i64(i64 %conv, i1 true), !dbg !1871
  %cast = trunc i64 %7 to i32, !dbg !1871
  %sub8 = sub i32 63, %cast, !dbg !1871
  br label %cond.end, !dbg !1871

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i32 [ 0, %cond.true5 ], [ %sub8, %cond.false6 ], !dbg !1871
  br label %cond.end11, !dbg !1871

cond.false9:                                      ; preds = %cond.false
  %8 = load i32, ptr %nr.addr, align 4, !dbg !1871
  %sub10 = sub i32 %8, 1, !dbg !1871
  %call = call i32 @__ilog2_u32(i32 noundef %sub10) #21, !dbg !1871
  br label %cond.end11, !dbg !1871

cond.end11:                                       ; preds = %cond.false9, %cond.end
  %cond12 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false9 ], !dbg !1871
  %add = add i32 %cond12, 1, !dbg !1871
  %sh_prom = zext i32 %add to i64, !dbg !1871
  %shl = shl i64 1, %sh_prom, !dbg !1871
  br label %cond.end13, !dbg !1871

cond.end13:                                       ; preds = %cond.end11, %cond.true1
  %cond14 = phi i64 [ 1, %cond.true1 ], [ %shl, %cond.end11 ], !dbg !1871
  br label %cond.end18, !dbg !1871

cond.false15:                                     ; preds = %entry
  %9 = load i32, ptr %nr.addr, align 4, !dbg !1871
  %conv16 = zext i32 %9 to i64, !dbg !1871
  %call17 = call i64 @__roundup_pow_of_two(i64 noundef %conv16) #21, !dbg !1871
  br label %cond.end18, !dbg !1871

cond.end18:                                       ; preds = %cond.false15, %cond.end13
  %cond19 = phi i64 [ %cond14, %cond.end13 ], [ %call17, %cond.false15 ], !dbg !1871
  %sub20 = sub i64 %cond19, 1, !dbg !1872
  store i64 %sub20, ptr %align_mask, align 8, !dbg !1870
  %10 = load ptr, ptr %map.addr, align 8, !dbg !1873
  %11 = load i64, ptr %size.addr, align 8, !dbg !1874
  %12 = load i64, ptr %start.addr, align 8, !dbg !1875
  %13 = load i32, ptr %nr.addr, align 4, !dbg !1876
  %14 = load i64, ptr %align_mask, align 8, !dbg !1877
  %call21 = call i64 @bitmap_find_next_zero_area(ptr noundef %10, i64 noundef %11, i64 noundef %12, i32 noundef %13, i64 noundef %14) #19, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 8, ptr %align_mask) #17, !dbg !1879
  ret i64 %call21, !dbg !1880
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u32(i32 noundef %n) #12 align 16 !dbg !1881 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1888, metadata !DIExpression()), !dbg !1889
  %0 = load i32, ptr %n.addr, align 4, !dbg !1890
  %call = call i32 @fls(i32 noundef %0) #19, !dbg !1891
  %sub = sub i32 %call, 1, !dbg !1892
  ret i32 %sub, !dbg !1893
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__roundup_pow_of_two(i64 noundef %n) #13 align 16 !dbg !1894 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1898, metadata !DIExpression()), !dbg !1899
  %0 = load i64, ptr %n.addr, align 8, !dbg !1900
  %sub = sub i64 %0, 1, !dbg !1901
  %call = call i32 @fls_long(i64 noundef %sub) #19, !dbg !1902
  %sh_prom = zext i32 %call to i64, !dbg !1903
  %shl = shl i64 1, %sh_prom, !dbg !1903
  ret i64 %shl, !dbg !1904
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @gen_pool_best_fit(ptr noundef %map, i64 noundef %size, i64 noundef %start, i32 noundef %nr, ptr noundef %data, ptr noundef %pool, i64 noundef %start_addr) #0 align 16 !dbg !1905 {
entry:
  %retval = alloca i64, align 8
  %map.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %nr.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %start_addr.addr = alloca i64, align 8
  %start_bit = alloca i64, align 8
  %len = alloca i64, align 8
  %index = alloca i64, align 8
  %next_bit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !1907, metadata !DIExpression()), !dbg !1919
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1908, metadata !DIExpression()), !dbg !1920
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1909, metadata !DIExpression()), !dbg !1921
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1910, metadata !DIExpression()), !dbg !1922
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1911, metadata !DIExpression()), !dbg !1923
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1912, metadata !DIExpression()), !dbg !1924
  store i64 %start_addr, ptr %start_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_addr.addr, metadata !1913, metadata !DIExpression()), !dbg !1925
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_bit) #17, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %start_bit, metadata !1914, metadata !DIExpression()), !dbg !1927
  %0 = load i64, ptr %size.addr, align 8, !dbg !1928
  store i64 %0, ptr %start_bit, align 8, !dbg !1927
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #17, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1915, metadata !DIExpression()), !dbg !1930
  %1 = load i64, ptr %size.addr, align 8, !dbg !1931
  %add = add i64 %1, 1, !dbg !1932
  store i64 %add, ptr %len, align 8, !dbg !1930
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #17, !dbg !1933
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1916, metadata !DIExpression()), !dbg !1934
  %2 = load ptr, ptr %map.addr, align 8, !dbg !1935
  %3 = load i64, ptr %size.addr, align 8, !dbg !1936
  %4 = load i64, ptr %start.addr, align 8, !dbg !1937
  %5 = load i32, ptr %nr.addr, align 4, !dbg !1938
  %call = call i64 @bitmap_find_next_zero_area(ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i64 noundef 0) #19, !dbg !1939
  store i64 %call, ptr %index, align 8, !dbg !1940
  br label %while.cond, !dbg !1941

while.cond:                                       ; preds = %cleanup.cont, %entry
  %6 = load i64, ptr %index, align 8, !dbg !1942
  %7 = load i64, ptr %size.addr, align 8, !dbg !1943
  %cmp = icmp ult i64 %6, %7, !dbg !1944
  br i1 %cmp, label %while.body, label %while.end, !dbg !1941

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_bit) #17, !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %next_bit, metadata !1917, metadata !DIExpression()), !dbg !1946
  %8 = load ptr, ptr %map.addr, align 8, !dbg !1947
  %9 = load i64, ptr %size.addr, align 8, !dbg !1948
  %10 = load i64, ptr %index, align 8, !dbg !1949
  %11 = load i32, ptr %nr.addr, align 4, !dbg !1950
  %conv = zext i32 %11 to i64, !dbg !1950
  %add1 = add i64 %10, %conv, !dbg !1951
  %call2 = call i64 @find_next_bit(ptr noundef %8, i64 noundef %9, i64 noundef %add1) #19, !dbg !1952
  store i64 %call2, ptr %next_bit, align 8, !dbg !1946
  %12 = load i64, ptr %next_bit, align 8, !dbg !1953
  %13 = load i64, ptr %index, align 8, !dbg !1955
  %sub = sub i64 %12, %13, !dbg !1956
  %14 = load i64, ptr %len, align 8, !dbg !1957
  %cmp3 = icmp ult i64 %sub, %14, !dbg !1958
  br i1 %cmp3, label %if.then, label %if.end10, !dbg !1959

if.then:                                          ; preds = %while.body
  %15 = load i64, ptr %next_bit, align 8, !dbg !1960
  %16 = load i64, ptr %index, align 8, !dbg !1962
  %sub5 = sub i64 %15, %16, !dbg !1963
  store i64 %sub5, ptr %len, align 8, !dbg !1964
  %17 = load i64, ptr %index, align 8, !dbg !1965
  store i64 %17, ptr %start_bit, align 8, !dbg !1966
  %18 = load i64, ptr %len, align 8, !dbg !1967
  %19 = load i32, ptr %nr.addr, align 4, !dbg !1969
  %conv6 = zext i32 %19 to i64, !dbg !1969
  %cmp7 = icmp eq i64 %18, %conv6, !dbg !1970
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !1971

if.then9:                                         ; preds = %if.then
  %20 = load i64, ptr %start_bit, align 8, !dbg !1972
  store i64 %20, ptr %retval, align 8, !dbg !1973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1973

if.end:                                           ; preds = %if.then
  br label %if.end10, !dbg !1974

if.end10:                                         ; preds = %if.end, %while.body
  %21 = load ptr, ptr %map.addr, align 8, !dbg !1975
  %22 = load i64, ptr %size.addr, align 8, !dbg !1976
  %23 = load i64, ptr %next_bit, align 8, !dbg !1977
  %add11 = add i64 %23, 1, !dbg !1978
  %24 = load i32, ptr %nr.addr, align 4, !dbg !1979
  %call12 = call i64 @bitmap_find_next_zero_area(ptr noundef %21, i64 noundef %22, i64 noundef %add11, i32 noundef %24, i64 noundef 0) #19, !dbg !1980
  store i64 %call12, ptr %index, align 8, !dbg !1981
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1982
  br label %cleanup, !dbg !1982

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_bit) #17, !dbg !1982
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1941, !llvm.loop !1983

while.end:                                        ; preds = %while.cond
  %25 = load i64, ptr %start_bit, align 8, !dbg !1984
  store i64 %25, ptr %retval, align 8, !dbg !1985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13, !dbg !1985

cleanup13:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #17, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #17, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_bit) #17, !dbg !1986
  %26 = load i64, ptr %retval, align 8, !dbg !1986
  ret i64 %26, !dbg !1986
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !1987 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1991, metadata !DIExpression()), !dbg !1997
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1992, metadata !DIExpression()), !dbg !1998
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1993, metadata !DIExpression()), !dbg !1999
  %0 = load i64, ptr %size.addr, align 8, !dbg !2000
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2000
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !2000

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2000
  %cmp = icmp ule i64 %2, 64, !dbg !2000
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !2000

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2000
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2000
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !2001

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !2002
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1994, metadata !DIExpression()), !dbg !2003
  %4 = load i64, ptr %offset.addr, align 8, !dbg !2004
  %5 = load i64, ptr %size.addr, align 8, !dbg !2004
  %cmp3 = icmp uge i64 %4, %5, !dbg !2004
  %lnot = xor i1 %cmp3, true, !dbg !2004
  %lnot4 = xor i1 %lnot, true, !dbg !2004
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2004
  %conv = sext i32 %lnot.ext to i64, !dbg !2004
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2004
  %tobool = icmp ne i64 %expval, 0, !dbg !2004
  br i1 %tobool, label %if.then5, label %if.end, !dbg !2006

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2007
  store i64 %6, ptr %retval, align 8, !dbg !2008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2008

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2009
  %8 = load i64, ptr %7, align 8, !dbg !2010
  %9 = load i64, ptr %offset.addr, align 8, !dbg !2011
  %shl = shl i64 1, %9, !dbg !2011
  %sub = sub i64 -1, %shl, !dbg !2011
  %add = add i64 %sub, 1, !dbg !2011
  %10 = load i64, ptr %size.addr, align 8, !dbg !2011
  %sub6 = sub i64 %10, 1, !dbg !2011
  %sub7 = sub i64 63, %sub6, !dbg !2011
  %shr = lshr i64 -1, %sub7, !dbg !2011
  %and = and i64 %add, %shr, !dbg !2011
  %add8 = add i64 0, %and, !dbg !2011
  %and9 = and i64 %8, %add8, !dbg !2012
  store i64 %and9, ptr %val, align 8, !dbg !2013
  %11 = load i64, ptr %val, align 8, !dbg !2014
  %tobool10 = icmp ne i64 %11, 0, !dbg !2014
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !2014

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !2015
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2015
  br i1 %13, label %cond.true11, label %cond.false, !dbg !2015

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !2015
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !2015
  %cast = trunc i64 %15 to i32, !dbg !2015
  %conv12 = sext i32 %cast to i64, !dbg !2015
  br label %cond.end, !dbg !2015

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !2015
  %call = call i64 @variable__ffs(i64 noundef %16) #19, !dbg !2015
  br label %cond.end, !dbg !2015

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !2015
  br label %cond.end14, !dbg !2014

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !2016
  br label %cond.end14, !dbg !2014

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !2014
  store i64 %cond15, ptr %retval, align 8, !dbg !2017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2017

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !2018
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !2019
  %19 = load i64, ptr %size.addr, align 8, !dbg !2020
  %20 = load i64, ptr %offset.addr, align 8, !dbg !2021
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #19, !dbg !2022
  store i64 %call17, ptr %retval, align 8, !dbg !2023
  br label %return, !dbg !2023

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !2024
  ret i64 %21, !dbg !2024
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gen_pool_get(ptr noundef %dev, ptr noundef %name) #0 align 16 !dbg !2025 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3565, metadata !DIExpression()), !dbg !3568
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3566, metadata !DIExpression()), !dbg !3569
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !3570
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3567, metadata !DIExpression()), !dbg !3571
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3572
  %1 = load ptr, ptr %name.addr, align 8, !dbg !3573
  %call = call ptr @devres_find(ptr noundef %0, ptr noundef @devm_gen_pool_release, ptr noundef @devm_gen_pool_match, ptr noundef %1) #19, !dbg !3574
  store ptr %call, ptr %p, align 8, !dbg !3575
  %2 = load ptr, ptr %p, align 8, !dbg !3576
  %tobool = icmp ne ptr %2, null, !dbg !3576
  br i1 %tobool, label %if.end, label %if.then, !dbg !3578

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3579

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !dbg !3580
  %4 = load ptr, ptr %3, align 8, !dbg !3581
  store ptr %4, ptr %retval, align 8, !dbg !3582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3582

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !3583
  %5 = load ptr, ptr %retval, align 8, !dbg !3583
  ret ptr %5, !dbg !3583
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3584 dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_gen_pool_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !3595 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3597, metadata !DIExpression()), !dbg !3599
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3598, metadata !DIExpression()), !dbg !3600
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3601
  %1 = load ptr, ptr %0, align 8, !dbg !3602
  call void @gen_pool_destroy(ptr noundef %1) #19, !dbg !3603
  ret void, !dbg !3604
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devm_gen_pool_match(ptr noundef %dev, ptr noundef %res, ptr noundef %data) #0 align 16 !dbg !3605 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3607, metadata !DIExpression()), !dbg !3611
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3608, metadata !DIExpression()), !dbg !3612
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3609, metadata !DIExpression()), !dbg !3613
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !3614
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3610, metadata !DIExpression()), !dbg !3615
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3616
  store ptr %0, ptr %p, align 8, !dbg !3615
  %1 = load ptr, ptr %data.addr, align 8, !dbg !3617
  %tobool = icmp ne ptr %1, null, !dbg !3617
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3619

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %p, align 8, !dbg !3620
  %3 = load ptr, ptr %2, align 8, !dbg !3621
  %name = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 5, !dbg !3622
  %4 = load ptr, ptr %name, align 8, !dbg !3622
  %tobool1 = icmp ne ptr %4, null, !dbg !3623
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3624

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3625

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %data.addr, align 8, !dbg !3626
  %tobool2 = icmp ne ptr %5, null, !dbg !3626
  br i1 %tobool2, label %lor.lhs.false, label %if.then5, !dbg !3628

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %p, align 8, !dbg !3629
  %7 = load ptr, ptr %6, align 8, !dbg !3630
  %name3 = getelementptr inbounds %struct.gen_pool, ptr %7, i32 0, i32 5, !dbg !3631
  %8 = load ptr, ptr %name3, align 8, !dbg !3631
  %tobool4 = icmp ne ptr %8, null, !dbg !3632
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3633

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !3634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3634

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %p, align 8, !dbg !3635
  %10 = load ptr, ptr %9, align 8, !dbg !3636
  %name7 = getelementptr inbounds %struct.gen_pool, ptr %10, i32 0, i32 5, !dbg !3637
  %11 = load ptr, ptr %name7, align 8, !dbg !3637
  %12 = load ptr, ptr %data.addr, align 8, !dbg !3638
  %call = call i32 @strcmp(ptr noundef %11, ptr noundef %12) #19, !dbg !3639
  %tobool8 = icmp ne i32 %call, 0, !dbg !3640
  %lnot = xor i1 %tobool8, true, !dbg !3640
  %lnot.ext = zext i1 %lnot to i32, !dbg !3640
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !3641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3641

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !3642
  %13 = load i32, ptr %retval, align 4, !dbg !3642
  ret i32 %13, !dbg !3642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_gen_pool_create(ptr noundef %dev, i32 noundef %min_alloc_order, i32 noundef %nid, ptr noundef %name) #0 align 16 !dbg !3643 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %min_alloc_order.addr = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %pool = alloca ptr, align 8
  %pool_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3647, metadata !DIExpression()), !dbg !3656
  store i32 %min_alloc_order, ptr %min_alloc_order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_alloc_order.addr, metadata !3648, metadata !DIExpression()), !dbg !3657
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !3649, metadata !DIExpression()), !dbg !3658
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3650, metadata !DIExpression()), !dbg !3659
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #17, !dbg !3660
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !3651, metadata !DIExpression()), !dbg !3661
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #17, !dbg !3660
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !3652, metadata !DIExpression()), !dbg !3662
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool_name) #17, !dbg !3663
  call void @llvm.dbg.declare(metadata ptr %pool_name, metadata !3653, metadata !DIExpression()), !dbg !3664
  store ptr null, ptr %pool_name, align 8, !dbg !3664
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3665
  %1 = load ptr, ptr %name.addr, align 8, !dbg !3667
  %call = call ptr @gen_pool_get(ptr noundef %0, ptr noundef %1) #19, !dbg !3668
  %tobool = icmp ne ptr %call, null, !dbg !3668
  br i1 %tobool, label %if.then, label %if.end, !dbg !3669

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -22) #19, !dbg !3670
  store ptr %call1, ptr %retval, align 8, !dbg !3671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3671

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !3672
  %tobool2 = icmp ne ptr %2, null, !dbg !3672
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !3674

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8, !dbg !3675
  %call4 = call ptr @kstrdup_const(ptr noundef %3, i32 noundef 3264) #19, !dbg !3677
  store ptr %call4, ptr %pool_name, align 8, !dbg !3678
  %4 = load ptr, ptr %pool_name, align 8, !dbg !3679
  %tobool5 = icmp ne ptr %4, null, !dbg !3679
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !3681

if.then6:                                         ; preds = %if.then3
  %call7 = call ptr @ERR_PTR(i64 noundef -12) #19, !dbg !3682
  store ptr %call7, ptr %retval, align 8, !dbg !3683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3683

if.end8:                                          ; preds = %if.then3
  br label %if.end9, !dbg !3684

if.end9:                                          ; preds = %if.end8, %if.end
  %call10 = call noalias ptr @__devres_alloc_node(ptr noundef @devm_gen_pool_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.1) #19, !dbg !3685
  store ptr %call10, ptr %ptr, align 8, !dbg !3686
  %5 = load ptr, ptr %ptr, align 8, !dbg !3687
  %tobool11 = icmp ne ptr %5, null, !dbg !3687
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3689

if.then12:                                        ; preds = %if.end9
  br label %free_pool_name, !dbg !3690

if.end13:                                         ; preds = %if.end9
  %6 = load i32, ptr %min_alloc_order.addr, align 4, !dbg !3691
  %7 = load i32, ptr %nid.addr, align 4, !dbg !3692
  %call14 = call ptr @gen_pool_create(i32 noundef %6, i32 noundef %7) #19, !dbg !3693
  store ptr %call14, ptr %pool, align 8, !dbg !3694
  %8 = load ptr, ptr %pool, align 8, !dbg !3695
  %tobool15 = icmp ne ptr %8, null, !dbg !3695
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !3697

if.then16:                                        ; preds = %if.end13
  br label %free_devres, !dbg !3698

if.end17:                                         ; preds = %if.end13
  %9 = load ptr, ptr %pool, align 8, !dbg !3699
  %10 = load ptr, ptr %ptr, align 8, !dbg !3700
  store ptr %9, ptr %10, align 8, !dbg !3701
  %11 = load ptr, ptr %pool_name, align 8, !dbg !3702
  %12 = load ptr, ptr %pool, align 8, !dbg !3703
  %name18 = getelementptr inbounds %struct.gen_pool, ptr %12, i32 0, i32 5, !dbg !3704
  store ptr %11, ptr %name18, align 8, !dbg !3705
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !3706
  %14 = load ptr, ptr %ptr, align 8, !dbg !3707
  call void @devres_add(ptr noundef %13, ptr noundef %14) #19, !dbg !3708
  %15 = load ptr, ptr %pool, align 8, !dbg !3709
  store ptr %15, ptr %retval, align 8, !dbg !3710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3710

free_devres:                                      ; preds = %if.then16
  call void @llvm.dbg.label(metadata !3654), !dbg !3711
  %16 = load ptr, ptr %ptr, align 8, !dbg !3712
  call void @devres_free(ptr noundef %16) #19, !dbg !3713
  br label %free_pool_name, !dbg !3713

free_pool_name:                                   ; preds = %free_devres, %if.then12
  call void @llvm.dbg.label(metadata !3655), !dbg !3714
  %17 = load ptr, ptr %pool_name, align 8, !dbg !3715
  call void @kfree_const(ptr noundef %17) #19, !dbg !3716
  %call19 = call ptr @ERR_PTR(i64 noundef -12) #19, !dbg !3717
  store ptr %call19, ptr %retval, align 8, !dbg !3718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3718

cleanup:                                          ; preds = %free_pool_name, %if.end17, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool_name) #17, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #17, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #17, !dbg !3719
  %18 = load ptr, ptr %retval, align 8, !dbg !3719
  ret ptr %18, !dbg !3719
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !3720 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !3725, metadata !DIExpression()), !dbg !3726
  %0 = load i64, ptr %error.addr, align 8, !dbg !3727
  %1 = inttoptr i64 %0 to ptr, !dbg !3728
  ret ptr %1, !dbg !3729
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3730 dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3733 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3736 dso_local void @devres_add(ptr noundef, ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3737 dso_local void @devres_free(ptr noundef) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3738 dso_local noalias ptr @kmalloc_large_node(i64 noundef, i32 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !3739 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3743, metadata !DIExpression()), !dbg !3745
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3744, metadata !DIExpression()), !dbg !3746
  %0 = load i64, ptr %size.addr, align 8, !dbg !3747
  %tobool = icmp ne i64 %0, 0, !dbg !3747
  br i1 %tobool, label %if.end, label %if.then, !dbg !3749

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3750
  br label %return, !dbg !3750

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3751
  %cmp = icmp ule i64 %1, 8, !dbg !3753
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3754

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3755
  br label %return, !dbg !3755

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3756
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3758
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3759

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3760
  %cmp4 = icmp ule i64 %3, 96, !dbg !3761
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3762

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3763
  br label %return, !dbg !3763

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3764
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3766
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3767

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3768
  %cmp9 = icmp ule i64 %5, 192, !dbg !3769
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3770

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3771
  br label %return, !dbg !3771

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3772
  %cmp12 = icmp ule i64 %6, 8, !dbg !3774
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3775

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3776
  br label %return, !dbg !3776

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3777
  %cmp15 = icmp ule i64 %7, 16, !dbg !3779
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3780

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3781
  br label %return, !dbg !3781

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3782
  %cmp18 = icmp ule i64 %8, 32, !dbg !3784
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3785

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3786
  br label %return, !dbg !3786

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3787
  %cmp21 = icmp ule i64 %9, 64, !dbg !3789
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3790

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3791
  br label %return, !dbg !3791

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3792
  %cmp24 = icmp ule i64 %10, 128, !dbg !3794
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3795

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3796
  br label %return, !dbg !3796

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3797
  %cmp27 = icmp ule i64 %11, 256, !dbg !3799
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3800

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3801
  br label %return, !dbg !3801

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3802
  %cmp30 = icmp ule i64 %12, 512, !dbg !3804
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3805

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3806
  br label %return, !dbg !3806

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3807
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3809
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3810

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3811
  br label %return, !dbg !3811

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3812
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3814
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3815

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3816
  br label %return, !dbg !3816

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3817
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3819
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3820

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3821
  br label %return, !dbg !3821

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3822
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3824
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3825

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3826
  br label %return, !dbg !3826

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3827
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3829
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3830

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3831
  br label %return, !dbg !3831

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3832
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3834
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3835

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3836
  br label %return, !dbg !3836

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3837
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3839
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3840

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3841
  br label %return, !dbg !3841

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3842
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3844
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3845

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3846
  br label %return, !dbg !3846

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3847
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3849
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3850

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3851
  br label %return, !dbg !3851

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3852
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3854
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3855

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3856
  br label %return, !dbg !3856

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3857
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3859
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3860

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3861
  br label %return, !dbg !3861

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3862
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3864
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3865

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3866
  br label %return, !dbg !3866

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3867, !range !1633, !noundef !1634
  %tobool69 = trunc i8 %25 to i1, !dbg !3867
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3869

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3870

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #22, !dbg !3871, !srcloc !3874
  unreachable, !dbg !3871

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3875

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3876

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3877

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3879

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3877

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #17, !dbg !3881, !srcloc !3883
  br label %do.end75, !dbg !3881

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3877

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3884
  br label %return, !dbg !3884

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3885
  ret i32 %26, !dbg !3885
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare !dbg !3886 dso_local noalias ptr @kmalloc_node_trace(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !3892 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3896, metadata !DIExpression()), !dbg !3898
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3897, metadata !DIExpression()), !dbg !3899
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3900
  %and = and i32 %0, 17, !dbg !3900
  %cmp = icmp eq i32 %and, 0, !dbg !3900
  %lnot = xor i1 %cmp, true, !dbg !3900
  %lnot1 = xor i1 %lnot, true, !dbg !3900
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3900
  %conv = sext i32 %lnot.ext to i64, !dbg !3900
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3900
  %tobool = icmp ne i64 %expval, 0, !dbg !3900
  br i1 %tobool, label %if.then, label %if.end, !dbg !3902

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3903
  br label %return, !dbg !3903

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3904
  %and2 = and i32 %1, 1, !dbg !3906
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3906
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3907

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3908
  br label %return, !dbg !3908

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3909
  br label %return, !dbg !3909

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3911
  ret i32 %2, !dbg !3911
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3912 dso_local noalias ptr @__kmalloc_node(i64 noundef, i32 noundef, i32 noundef) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3913 dso_local void @__compiletime_assert_117() #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !3914 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3922, metadata !DIExpression()), !dbg !3924
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3923, metadata !DIExpression()), !dbg !3925
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3926
  %1 = load i64, ptr %size.addr, align 8, !dbg !3927
  %conv = trunc i64 %1 to i32, !dbg !3927
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !3928
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3929
  %3 = load i64, ptr %size.addr, align 8, !dbg !3929
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #19, !dbg !3929
  ret void, !dbg !3930
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !3931 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3933, metadata !DIExpression()), !dbg !3935
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3934, metadata !DIExpression()), !dbg !3936
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3937
  %1 = load i64, ptr %i.addr, align 8, !dbg !3938
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #19, !dbg !3939
  ret void, !dbg !3940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3941 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3946, metadata !DIExpression()), !dbg !3948
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3947, metadata !DIExpression()), !dbg !3949
  ret i1 true, !dbg !3950
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !3951 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3956, metadata !DIExpression()), !dbg !3959
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3957, metadata !DIExpression()), !dbg !3960
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3958, metadata !DIExpression()), !dbg !3961
  ret void, !dbg !3962
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !3963 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3969, metadata !DIExpression()), !dbg !3971
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3970, metadata !DIExpression()), !dbg !3972
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3973
  %1 = load i64, ptr %i.addr, align 8, !dbg !3974
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #19, !dbg !3975
  ret void, !dbg !3976
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #4 align 16 !dbg !3977 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3980, metadata !DIExpression()), !dbg !3982
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3981, metadata !DIExpression()), !dbg !3983
  br label %do.body, !dbg !3984

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !3985
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3985
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !3985
  store volatile i64 %0, ptr %counter, align 8, !dbg !3985
  br label %do.end, !dbg !3985

do.end:                                           ; preds = %do.body
  ret void, !dbg !3987
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3988 dso_local void @_raw_spin_lock(ptr noundef) #9 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !3992 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3996, metadata !DIExpression()), !dbg !4001
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3997, metadata !DIExpression()), !dbg !4002
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3998, metadata !DIExpression()), !dbg !4003
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4004
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4006
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4007
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !dbg !4008
  br i1 %call, label %if.end, label %if.then, !dbg !4009

if.then:                                          ; preds = %entry
  br label %return, !dbg !4010

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !4011
  %4 = load ptr, ptr %new.addr, align 8, !dbg !4012
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !4013
  store ptr %3, ptr %next1, align 8, !dbg !4014
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !4015
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4016
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !4017
  store ptr %5, ptr %prev2, align 8, !dbg !4018
  br label %do.body, !dbg !4019

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !4020
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !3999, metadata !DIExpression()), !dbg !4020
  %7 = load ptr, ptr %new.addr, align 8, !dbg !4020
  %8 = ptrtoint ptr %7 to i64, !dbg !4020
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !4020
  br i1 false, label %land.lhs.true, label %if.else, !dbg !4021

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !4021
  %cmp = icmp eq i64 %9, 0, !dbg !4021
  br i1 %cmp, label %if.then3, label %if.else, !dbg !4020

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !4021

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !4023

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !4025

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !4025

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !4023

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !4027
  %11 = inttoptr i64 %10 to ptr, !dbg !4027
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !4027
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !4027
  store volatile ptr %11, ptr %next7, align 8, !dbg !4027
  br label %do.cond8, !dbg !4027

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !4027

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !4023

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !4023

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !4023

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !4021

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !4029

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !4031

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4031

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !4029

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !4033

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !4035

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4035

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4033, !srcloc !4037
  br label %do.body20, !dbg !4033

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !4038

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !4040

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !4040

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !4038

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !4042
  %14 = inttoptr i64 %13 to ptr, !dbg !4042
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !4042
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !4042
  store volatile ptr %14, ptr %next25, align 8, !dbg !4042
  br label %do.cond26, !dbg !4042

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !4042

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !4038

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !4038

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !4033

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !4033

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !4029

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !4029

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !4019
  br label %do.end36, !dbg !4020

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !4044
  %17 = load ptr, ptr %next.addr, align 8, !dbg !4045
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !4046
  store ptr %16, ptr %prev37, align 8, !dbg !4047
  br label %return, !dbg !4048

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !4048
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !4049 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4053, metadata !DIExpression()), !dbg !4056
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4054, metadata !DIExpression()), !dbg !4057
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4055, metadata !DIExpression()), !dbg !4058
  ret i1 true, !dbg !4059
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4060 dso_local void @_raw_spin_unlock(ptr noundef) #9 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4061 dso_local void @__rcu_read_lock() #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4062 dso_local void @__rcu_read_unlock() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !4063 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4065, metadata !DIExpression()), !dbg !4066
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4067
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #19, !dbg !4069
  br i1 %call, label %if.end, label %if.then, !dbg !4070

if.then:                                          ; preds = %entry
  br label %return, !dbg !4071

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4072
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4073
  %2 = load ptr, ptr %prev, align 8, !dbg !4073
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4074
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4075
  %4 = load ptr, ptr %next, align 8, !dbg !4075
  call void @__list_del(ptr noundef %2, ptr noundef %4) #19, !dbg !4076
  br label %return, !dbg !4077

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !4078 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4082, metadata !DIExpression()), !dbg !4083
  ret i1 true, !dbg !4084
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !4085 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4087, metadata !DIExpression()), !dbg !4089
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4088, metadata !DIExpression()), !dbg !4090
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4091
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4092
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4093
  store ptr %0, ptr %prev1, align 8, !dbg !4094
  br label %do.body, !dbg !4095

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4096

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4098

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4096

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4100
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4100
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4100
  store volatile ptr %2, ptr %next4, align 8, !dbg !4100
  br label %do.end5, !dbg !4100

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4096

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4102
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !4103 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4106, metadata !DIExpression()), !dbg !4107
  %0 = load i64, ptr %word.addr, align 8, !dbg !4108
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #23, !dbg !4109, !srcloc !4110
  store i64 %1, ptr %word.addr, align 8, !dbg !4109
  %2 = load i64, ptr %word.addr, align 8, !dbg !4111
  ret i64 %2, !dbg !4112
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4113 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !4114 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4116, metadata !DIExpression()), !dbg !4118
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4117, metadata !DIExpression()), !dbg !4119
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4120
  %1 = load i64, ptr %size.addr, align 8, !dbg !4121
  %conv = trunc i64 %1 to i32, !dbg !4121
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #19, !dbg !4122
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4123
  %3 = load i64, ptr %size.addr, align 8, !dbg !4123
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #19, !dbg !4123
  ret void, !dbg !4124
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #4 align 16 !dbg !4125 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4127, metadata !DIExpression()), !dbg !4128
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4129
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #19, !dbg !4130
  ret i64 %call, !dbg !4131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !4132 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4134, metadata !DIExpression()), !dbg !4136
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4135, metadata !DIExpression()), !dbg !4137
  ret i1 true, !dbg !4138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #4 align 16 !dbg !4139 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4145, metadata !DIExpression()), !dbg !4146
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4147
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #19, !dbg !4148
  ret i64 %call, !dbg !4149
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #4 align 16 !dbg !4150 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4154
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4154
  %1 = load volatile i64, ptr %counter, align 8, !dbg !4154
  ret i64 %1, !dbg !4155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_bits_ll(ptr noundef %addr, i64 noundef %mask_to_set) #6 align 16 !dbg !4156 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %mask_to_set.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp6 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp14 = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4160, metadata !DIExpression()), !dbg !4172
  store i64 %mask_to_set, ptr %mask_to_set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask_to_set.addr, metadata !4161, metadata !DIExpression()), !dbg !4173
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !4174
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4162, metadata !DIExpression()), !dbg !4175
  br label %do.body, !dbg !4176

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4178

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4178

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4176
  %1 = load volatile i64, ptr %0, align 8, !dbg !4176
  store i64 %1, ptr %tmp, align 8, !dbg !4178
  %2 = load i64, ptr %tmp, align 8, !dbg !4176
  store i64 %2, ptr %val, align 8, !dbg !4175
  br label %do.body1, !dbg !4180

do.body1:                                         ; preds = %if.end13, %do.end
  %3 = load i64, ptr %val, align 8, !dbg !4181
  %4 = load i64, ptr %mask_to_set.addr, align 8, !dbg !4184
  %and = and i64 %3, %4, !dbg !4185
  %tobool = icmp ne i64 %and, 0, !dbg !4185
  br i1 %tobool, label %if.then, label %if.end, !dbg !4186

if.then:                                          ; preds = %do.body1
  store i32 -16, ptr %retval, align 4, !dbg !4187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4187

if.end:                                           ; preds = %do.body1
  call void @cpu_relax() #19, !dbg !4188
  br label %do.cond2, !dbg !4189

do.cond2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #17, !dbg !4190
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4163, metadata !DIExpression()), !dbg !4190
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4190
  store ptr %5, ptr %__ai_ptr, align 8, !dbg !4190
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #17, !dbg !4190
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !4165, metadata !DIExpression()), !dbg !4190
  store ptr %val, ptr %__ai_oldp, align 8, !dbg !4190
  br label %do.body3, !dbg !4190

do.body3:                                         ; preds = %do.cond2
  br label %do.cond4, !dbg !4191

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !4191

do.end5:                                          ; preds = %do.cond4
  %6 = load ptr, ptr %__ai_ptr, align 8, !dbg !4190
  call void @instrument_atomic_read_write(ptr noundef %6, i64 noundef 8) #19, !dbg !4190
  %7 = load ptr, ptr %__ai_oldp, align 8, !dbg !4190
  call void @instrument_read_write(ptr noundef %7, i64 noundef 8) #19, !dbg !4190
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !4193
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4166, metadata !DIExpression()), !dbg !4193
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !4193
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !4168, metadata !DIExpression()), !dbg !4193
  %8 = load ptr, ptr %__ai_oldp, align 8, !dbg !4193
  store ptr %8, ptr %_old, align 8, !dbg !4193
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #17, !dbg !4193
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !4169, metadata !DIExpression()), !dbg !4193
  %9 = load ptr, ptr %_old, align 8, !dbg !4193
  %10 = load i64, ptr %9, align 8, !dbg !4193
  store i64 %10, ptr %__old, align 8, !dbg !4193
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #17, !dbg !4193
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !4170, metadata !DIExpression()), !dbg !4193
  %11 = load i64, ptr %val, align 8, !dbg !4193
  %12 = load i64, ptr %mask_to_set.addr, align 8, !dbg !4193
  %or = or i64 %11, %12, !dbg !4193
  store i64 %or, ptr %__new, align 8, !dbg !4193
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !4193
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4171, metadata !DIExpression()), !dbg !4193
  %13 = load ptr, ptr %__ai_ptr, align 8, !dbg !4193
  store ptr %13, ptr %__ptr, align 8, !dbg !4193
  %14 = load ptr, ptr %__ptr, align 8, !dbg !4193
  %15 = load i64, ptr %__old, align 8, !dbg !4193
  %16 = load i64, ptr %__new, align 8, !dbg !4193
  %17 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %14, i64 %16, ptr elementtype(i64) %14, i64 %15) #17, !dbg !4193, !srcloc !4194
  %asmresult = extractvalue { i8, i64 } %17, 0, !dbg !4193
  %asmresult7 = extractvalue { i8, i64 } %17, 1, !dbg !4193
  %18 = icmp ult i8 %asmresult, 2, !dbg !4193
  call void @llvm.assume(i1 %18), !dbg !4193
  store i8 %asmresult, ptr %success, align 1, !dbg !4193
  store i64 %asmresult7, ptr %__old, align 8, !dbg !4193
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !4193
  %19 = load i8, ptr %success, align 1, !dbg !4195, !range !1633, !noundef !1634
  %tobool8 = trunc i8 %19 to i1, !dbg !4195
  %lnot = xor i1 %tobool8, true, !dbg !4195
  %lnot9 = xor i1 %lnot, true, !dbg !4195
  %lnot10 = xor i1 %lnot9, true, !dbg !4195
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4195
  %conv = sext i32 %lnot.ext to i64, !dbg !4195
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4195
  %tobool11 = icmp ne i64 %expval, 0, !dbg !4195
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4193

if.then12:                                        ; preds = %do.end5
  %20 = load i64, ptr %__old, align 8, !dbg !4195
  %21 = load ptr, ptr %_old, align 8, !dbg !4195
  store i64 %20, ptr %21, align 8, !dbg !4195
  br label %if.end13, !dbg !4195

if.end13:                                         ; preds = %if.then12, %do.end5
  %22 = load i8, ptr %success, align 1, !dbg !4193, !range !1633, !noundef !1634
  %tobool15 = trunc i8 %22 to i1, !dbg !4193
  %lnot16 = xor i1 %tobool15, true, !dbg !4193
  %lnot18 = xor i1 %lnot16, true, !dbg !4193
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4193
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4193
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 1), !dbg !4193
  store i64 %expval21, ptr %tmp14, align 8, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #17, !dbg !4190
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #17, !dbg !4190
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !4190
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !4190
  %23 = load i64, ptr %tmp14, align 8, !dbg !4193
  store i64 %23, ptr %tmp6, align 8, !dbg !4190
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #17, !dbg !4197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #17, !dbg !4197
  %24 = load i64, ptr %tmp6, align 8, !dbg !4190
  %tobool22 = icmp ne i64 %24, 0, !dbg !4198
  %lnot23 = xor i1 %tobool22, true, !dbg !4198
  br i1 %lnot23, label %do.body1, label %do.end25, !dbg !4189, !llvm.loop !4199

do.end25:                                         ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !4201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4201

cleanup:                                          ; preds = %do.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !4202
  %25 = load i32, ptr %retval, align 4, !dbg !4202
  ret i32 %25, !dbg !4202
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #4 align 16 !dbg !4203 {
entry:
  call void @rep_nop() #19, !dbg !4205
  ret void, !dbg !4206
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !4207 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4209, metadata !DIExpression()), !dbg !4211
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4210, metadata !DIExpression()), !dbg !4212
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4213
  %1 = load i64, ptr %size.addr, align 8, !dbg !4214
  %conv = trunc i64 %1 to i32, !dbg !4214
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !4215
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4216
  %3 = load i64, ptr %size.addr, align 8, !dbg !4216
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !4216
  ret void, !dbg !4217
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !4218 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4220, metadata !DIExpression()), !dbg !4222
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4221, metadata !DIExpression()), !dbg !4223
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4224
  %1 = load i64, ptr %size.addr, align 8, !dbg !4225
  %conv = trunc i64 %1 to i32, !dbg !4225
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !4226
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4227
  %3 = load i64, ptr %size.addr, align 8, !dbg !4227
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #19, !dbg !4227
  ret void, !dbg !4228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #4 align 16 !dbg !4229 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4230, !srcloc !4231
  ret void, !dbg !4232
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clear_bits_ll(ptr noundef %addr, i64 noundef %mask_to_clear) #6 align 16 !dbg !4233 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %mask_to_clear.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp6 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp14 = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4235, metadata !DIExpression()), !dbg !4247
  store i64 %mask_to_clear, ptr %mask_to_clear.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask_to_clear.addr, metadata !4236, metadata !DIExpression()), !dbg !4248
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !4249
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4237, metadata !DIExpression()), !dbg !4250
  br label %do.body, !dbg !4251

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4253

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4253

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4251
  %1 = load volatile i64, ptr %0, align 8, !dbg !4251
  store i64 %1, ptr %tmp, align 8, !dbg !4253
  %2 = load i64, ptr %tmp, align 8, !dbg !4251
  store i64 %2, ptr %val, align 8, !dbg !4250
  br label %do.body1, !dbg !4255

do.body1:                                         ; preds = %if.end13, %do.end
  %3 = load i64, ptr %val, align 8, !dbg !4256
  %4 = load i64, ptr %mask_to_clear.addr, align 8, !dbg !4259
  %and = and i64 %3, %4, !dbg !4260
  %5 = load i64, ptr %mask_to_clear.addr, align 8, !dbg !4261
  %cmp = icmp ne i64 %and, %5, !dbg !4262
  br i1 %cmp, label %if.then, label %if.end, !dbg !4263

if.then:                                          ; preds = %do.body1
  store i32 -16, ptr %retval, align 4, !dbg !4264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4264

if.end:                                           ; preds = %do.body1
  call void @cpu_relax() #19, !dbg !4265
  br label %do.cond2, !dbg !4266

do.cond2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #17, !dbg !4267
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4238, metadata !DIExpression()), !dbg !4267
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !4267
  store ptr %6, ptr %__ai_ptr, align 8, !dbg !4267
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #17, !dbg !4267
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !4240, metadata !DIExpression()), !dbg !4267
  store ptr %val, ptr %__ai_oldp, align 8, !dbg !4267
  br label %do.body3, !dbg !4267

do.body3:                                         ; preds = %do.cond2
  br label %do.cond4, !dbg !4268

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !4268

do.end5:                                          ; preds = %do.cond4
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !4267
  call void @instrument_atomic_read_write(ptr noundef %7, i64 noundef 8) #19, !dbg !4267
  %8 = load ptr, ptr %__ai_oldp, align 8, !dbg !4267
  call void @instrument_read_write(ptr noundef %8, i64 noundef 8) #19, !dbg !4267
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !4270
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4241, metadata !DIExpression()), !dbg !4270
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !4270
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !4243, metadata !DIExpression()), !dbg !4270
  %9 = load ptr, ptr %__ai_oldp, align 8, !dbg !4270
  store ptr %9, ptr %_old, align 8, !dbg !4270
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #17, !dbg !4270
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !4244, metadata !DIExpression()), !dbg !4270
  %10 = load ptr, ptr %_old, align 8, !dbg !4270
  %11 = load i64, ptr %10, align 8, !dbg !4270
  store i64 %11, ptr %__old, align 8, !dbg !4270
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #17, !dbg !4270
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !4245, metadata !DIExpression()), !dbg !4270
  %12 = load i64, ptr %val, align 8, !dbg !4270
  %13 = load i64, ptr %mask_to_clear.addr, align 8, !dbg !4270
  %not = xor i64 %13, -1, !dbg !4270
  %and7 = and i64 %12, %not, !dbg !4270
  store i64 %and7, ptr %__new, align 8, !dbg !4270
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !4270
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4246, metadata !DIExpression()), !dbg !4270
  %14 = load ptr, ptr %__ai_ptr, align 8, !dbg !4270
  store ptr %14, ptr %__ptr, align 8, !dbg !4270
  %15 = load ptr, ptr %__ptr, align 8, !dbg !4270
  %16 = load i64, ptr %__old, align 8, !dbg !4270
  %17 = load i64, ptr %__new, align 8, !dbg !4270
  %18 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %15, i64 %17, ptr elementtype(i64) %15, i64 %16) #17, !dbg !4270, !srcloc !4271
  %asmresult = extractvalue { i8, i64 } %18, 0, !dbg !4270
  %asmresult8 = extractvalue { i8, i64 } %18, 1, !dbg !4270
  %19 = icmp ult i8 %asmresult, 2, !dbg !4270
  call void @llvm.assume(i1 %19), !dbg !4270
  store i8 %asmresult, ptr %success, align 1, !dbg !4270
  store i64 %asmresult8, ptr %__old, align 8, !dbg !4270
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !4270
  %20 = load i8, ptr %success, align 1, !dbg !4272, !range !1633, !noundef !1634
  %tobool = trunc i8 %20 to i1, !dbg !4272
  %lnot = xor i1 %tobool, true, !dbg !4272
  %lnot9 = xor i1 %lnot, true, !dbg !4272
  %lnot10 = xor i1 %lnot9, true, !dbg !4272
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4272
  %conv = sext i32 %lnot.ext to i64, !dbg !4272
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4272
  %tobool11 = icmp ne i64 %expval, 0, !dbg !4272
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4270

if.then12:                                        ; preds = %do.end5
  %21 = load i64, ptr %__old, align 8, !dbg !4272
  %22 = load ptr, ptr %_old, align 8, !dbg !4272
  store i64 %21, ptr %22, align 8, !dbg !4272
  br label %if.end13, !dbg !4272

if.end13:                                         ; preds = %if.then12, %do.end5
  %23 = load i8, ptr %success, align 1, !dbg !4270, !range !1633, !noundef !1634
  %tobool15 = trunc i8 %23 to i1, !dbg !4270
  %lnot16 = xor i1 %tobool15, true, !dbg !4270
  %lnot18 = xor i1 %lnot16, true, !dbg !4270
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4270
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4270
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 1), !dbg !4270
  store i64 %expval21, ptr %tmp14, align 8, !dbg !4272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #17, !dbg !4267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #17, !dbg !4267
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !4267
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !4267
  %24 = load i64, ptr %tmp14, align 8, !dbg !4270
  store i64 %24, ptr %tmp6, align 8, !dbg !4267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #17, !dbg !4274
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #17, !dbg !4274
  %25 = load i64, ptr %tmp6, align 8, !dbg !4267
  %tobool22 = icmp ne i64 %25, 0, !dbg !4275
  %lnot23 = xor i1 %tobool22, true, !dbg !4275
  br i1 %lnot23, label %do.body1, label %do.end25, !dbg !4266, !llvm.loop !4276

do.end25:                                         ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !4278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4278

cleanup:                                          ; preds = %do.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !4279
  %26 = load i32, ptr %retval, align 4, !dbg !4279
  ret i32 %26, !dbg !4279
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_sub(i64 noundef %i, ptr noundef %v) #4 align 16 !dbg !4280 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4282, metadata !DIExpression()), !dbg !4284
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4283, metadata !DIExpression()), !dbg !4285
  %0 = load i64, ptr %i.addr, align 8, !dbg !4286
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4287
  call void @raw_atomic64_sub(i64 noundef %0, ptr noundef %1) #19, !dbg !4288
  ret void, !dbg !4289
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_sub(i64 noundef %i, ptr noundef %v) #4 align 16 !dbg !4290 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4294, metadata !DIExpression()), !dbg !4296
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4295, metadata !DIExpression()), !dbg !4297
  %0 = load i64, ptr %i.addr, align 8, !dbg !4298
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4299
  call void @arch_atomic64_sub(i64 noundef %0, ptr noundef %1) #19, !dbg !4300
  ret void, !dbg !4301
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_sub(i64 noundef %i, ptr noundef %v) #4 align 16 !dbg !4302 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4304, metadata !DIExpression()), !dbg !4306
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4305, metadata !DIExpression()), !dbg !4307
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4308
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4309
  %1 = load i64, ptr %i.addr, align 8, !dbg !4310
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4311
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !4312
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #17, !dbg !4313, !srcloc !4314
  ret void, !dbg !4315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_add(i64 noundef %i, ptr noundef %v) #4 align 16 !dbg !4316 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4318, metadata !DIExpression()), !dbg !4320
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4319, metadata !DIExpression()), !dbg !4321
  %0 = load i64, ptr %i.addr, align 8, !dbg !4322
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4323
  call void @raw_atomic64_add(i64 noundef %0, ptr noundef %1) #19, !dbg !4324
  ret void, !dbg !4325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_add(i64 noundef %i, ptr noundef %v) #4 align 16 !dbg !4326 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4328, metadata !DIExpression()), !dbg !4330
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4329, metadata !DIExpression()), !dbg !4331
  %0 = load i64, ptr %i.addr, align 8, !dbg !4332
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4333
  call void @arch_atomic64_add(i64 noundef %0, ptr noundef %1) #19, !dbg !4334
  ret void, !dbg !4335
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_add(i64 noundef %i, ptr noundef %v) #4 align 16 !dbg !4336 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4338, metadata !DIExpression()), !dbg !4340
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4339, metadata !DIExpression()), !dbg !4341
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4342
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4343
  %1 = load i64, ptr %i.addr, align 8, !dbg !4344
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4345
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !4346
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #17, !dbg !4347, !srcloc !4348
  ret void, !dbg !4349
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #4 align 16 !dbg !4350 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4354, metadata !DIExpression()), !dbg !4356
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #17, !dbg !4357
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4355, metadata !DIExpression()), !dbg !4358
  %0 = load i32, ptr %x.addr, align 4, !dbg !4359
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #23, !dbg !4360, !srcloc !4361
  store i32 %1, ptr %r, align 4, !dbg !4360
  %2 = load i32, ptr %r, align 4, !dbg !4362
  %add = add i32 %2, 1, !dbg !4363
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #17, !dbg !4364
  ret i32 %add, !dbg !4365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls_long(i64 noundef %l) #6 align 16 !dbg !4366 {
entry:
  %l.addr = alloca i64, align 8
  store i64 %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !4371, metadata !DIExpression()), !dbg !4372
  %0 = load i64, ptr %l.addr, align 8, !dbg !4373
  %call = call i32 @fls64(i64 noundef %0) #19, !dbg !4374
  ret i32 %call, !dbg !4375
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #4 align 16 !dbg !4376 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4380, metadata !DIExpression()), !dbg !4382
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #17, !dbg !4383
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !4381, metadata !DIExpression()), !dbg !4384
  store i32 -1, ptr %bitpos, align 4, !dbg !4384
  %0 = load i32, ptr %bitpos, align 4, !dbg !4385
  %1 = load i64, ptr %x.addr, align 8, !dbg !4386
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #23, !dbg !4385, !srcloc !4387
  store i32 %2, ptr %bitpos, align 4, !dbg !4385
  %3 = load i32, ptr %bitpos, align 4, !dbg !4388
  %add = add i32 %3, 1, !dbg !4389
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #17, !dbg !4390
  ret i32 %add, !dbg !4391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4392 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4393 dso_local i32 @strcmp(ptr noundef, ptr noundef) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(3) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone }
attributes #20 = { noredzone allocsize(3) }
attributes #21 = { noredzone nounwind willreturn memory(none) }
attributes #22 = { noredzone noreturn }
attributes #23 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!274, !275, !276, !277, !278, !279, !280, !281}
!llvm.ident = !{!282}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_create207", scope: !2, file: !3, line: 168, type: !102, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.genalloc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/genalloc\22 -D KBUILD_BASENAME=\22genalloc\22 -D KBUILD_MODNAME=\22genalloc\22 -D __KBUILD_MODNAME=kmod_genalloc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/genalloc.ll lib/genalloc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !212, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/genalloc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75ab6e141c63ab2c4eadfcb306a8dc27")
!4 = !{!5, !11, !17, !24, !30, !37, !42, !50, !58, !64, !73, !78, !83, !89}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !12, line: 26, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !18, line: 312, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !25, line: 45, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!28 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!29 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !31, line: 487, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!34 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!35 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!36 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !38, line: 65, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!41 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !43, line: 620, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!46 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!47 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!48 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!49 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !43, line: 597, baseType: !51, size: 32, elements: !52)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!54 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!55 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!56 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!57 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !59, line: 30, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!62 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!63 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !31, line: 547, baseType: !7, size: 32, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!67 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!68 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!69 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!70 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!71 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!72 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !31, line: 564, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!76 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!77 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !31, line: 577, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!81 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!82 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !31, line: 503, baseType: !7, size: 32, elements: !84)
!84 = !{!85, !86, !87, !88}
!85 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!86 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!87 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!88 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !90, line: 364, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!91 = !{!92, !93, !94, !95, !96, !97, !98}
!92 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!93 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!94 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!95 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!97 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!98 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!99 = !{!100, !102, !103, !111, !135, !141, !142, !144, !106, !145, !51, !146, !149, !152, !153, !155}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !101, line: 154, baseType: !7)
!101 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !101, line: 190, size: 128, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !101, line: 191, baseType: !106, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !107, file: !101, line: 191, baseType: !106, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool_chunk", file: !113, line: 72, size: 448, elements: !114)
!113 = !DIFile(filename: "./include/linux/genalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff988c2ef6ff17976c53a4600441678f")
!114 = !{!115, !116, !128, !133, !134, !136, !137}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_chunk", scope: !112, file: !113, line: 73, baseType: !107, size: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !112, file: !113, line: 74, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !118, line: 13, baseType: !119)
!118 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !101, line: 181, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 179, size: 64, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !120, file: !101, line: 180, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !124, line: 22, baseType: !125)
!124 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !126, line: 30, baseType: !127)
!126 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!127 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !112, file: !113, line: 75, baseType: !129, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !101, line: 159, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !124, line: 23, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !126, line: 31, baseType: !132)
!132 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !112, file: !113, line: 76, baseType: !102, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "start_addr", scope: !112, file: !113, line: 77, baseType: !135, size: 64, offset: 320)
!135 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "end_addr", scope: !112, file: !113, line: 78, baseType: !135, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !112, file: !113, line: 79, baseType: !138, offset: 448)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: -1)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !123)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !101, line: 42, baseType: !135)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !127)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !130)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !113, line: 58, size: 448, elements: !158)
!158 = !{!159, !200, !201, !202, !207, !208}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !157, file: !113, line: 59, baseType: !160, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !161, line: 29, baseType: !162)
!161 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !161, line: 17, size: 32, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !161, line: 18, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !161, line: 18, size: 32, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !165, file: !161, line: 19, baseType: !168, size: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !169, line: 14, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !168, file: !169, line: 15, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !173, line: 44, baseType: !174)
!173 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !173, line: 14, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !173, line: 15, baseType: !177, size: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !173, line: 15, size: 32, elements: !178)
!178 = !{!179, !184, !192}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !177, file: !173, line: 16, baseType: !180, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !101, line: 174, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 172, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !181, file: !101, line: 173, baseType: !51, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !173, line: 24, baseType: !185, size: 16)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !177, file: !173, line: 24, size: 16, elements: !186)
!186 = !{!187, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !185, file: !173, line: 25, baseType: !188, size: 8)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !124, line: 17, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !126, line: 21, baseType: !190)
!190 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !185, file: !173, line: 26, baseType: !188, size: 8, offset: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !173, line: 28, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !177, file: !173, line: 28, size: 32, elements: !194)
!194 = !{!195, !199}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !193, file: !173, line: 29, baseType: !196, size: 16)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !124, line: 19, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !126, line: 24, baseType: !198)
!198 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !193, file: !173, line: 30, baseType: !196, size: 16, offset: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !157, file: !113, line: 60, baseType: !107, size: 128, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "min_alloc_order", scope: !157, file: !113, line: 61, baseType: !51, size: 32, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !157, file: !113, line: 63, baseType: !203, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "genpool_algo_t", file: !113, line: 48, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!135, !152, !135, !135, !7, !102, !156, !135}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !157, file: !113, line: 64, baseType: !102, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !113, line: 66, baseType: !209, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!212 = !{!0, !213, !215, !217, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !267, !269}
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_add_owner208", scope: !2, file: !3, line: 208, type: !102, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_virt_to_phys211", scope: !2, file: !3, line: 233, type: !102, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 120, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 15)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_destroy212", scope: !2, file: !3, line: 262, type: !102, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_alloc_algo_owner215", scope: !2, file: !3, line: 326, type: !102, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_dma_alloc216", scope: !2, file: !3, line: 345, type: !102, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_dma_alloc_algo217", scope: !2, file: !3, line: 379, type: !102, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_dma_alloc_align218", scope: !2, file: !3, line: 403, type: !102, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_dma_zalloc219", scope: !2, file: !3, line: 423, type: !102, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_dma_zalloc_algo220", scope: !2, file: !3, line: 450, type: !102, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_dma_zalloc_align221", scope: !2, file: !3, line: 474, type: !102, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_free_owner224", scope: !2, file: !3, line: 520, type: !102, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_for_each_chunk227", scope: !2, file: !3, line: 542, type: !102, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_has_addr230", scope: !2, file: !3, line: 572, type: !102, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_avail233", scope: !2, file: !3, line: 591, type: !102, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_size236", scope: !2, file: !3, line: 610, type: !102, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_set_algo237", scope: !2, file: !3, line: 634, type: !102, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_first_fit238", scope: !2, file: !3, line: 653, type: !102, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_first_fit_align239", scope: !2, file: !3, line: 682, type: !102, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_fixed_alloc240", scope: !2, file: !3, line: 715, type: !102, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_first_fit_order_align241", scope: !2, file: !3, line: 738, type: !102, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_best_fit242", scope: !2, file: !3, line: 778, type: !102, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gen_pool_get243", scope: !2, file: !3, line: 816, type: !102, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 845, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 176, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 22)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_gen_pool_create244", scope: !2, file: !3, line: 866, type: !102, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !90, line: 480, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 168, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 21)
!274 = !{i32 7, !"Dwarf Version", i32 5}
!275 = !{i32 2, !"Debug Info Version", i32 3}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 8, !"cf-protection-branch", i32 1}
!278 = !{i32 4, !"function_return_thunk_extern", i32 1}
!279 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!280 = !{i32 1, !"Code Model", i32 2}
!281 = !{i32 1, !"override-stack-alignment", i32 8}
!282 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!283 = distinct !DISubprogram(name: "gen_pool_create", scope: !3, file: !3, line: 153, type: !284, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!284 = !DISubroutineType(types: !285)
!285 = !{!156, !51, !51}
!286 = !{!287, !288, !289}
!287 = !DILocalVariable(name: "min_alloc_order", arg: 1, scope: !283, file: !3, line: 153, type: !51)
!288 = !DILocalVariable(name: "nid", arg: 2, scope: !283, file: !3, line: 153, type: !51)
!289 = !DILocalVariable(name: "pool", scope: !283, file: !3, line: 155, type: !156)
!290 = !DILocation(line: 153, column: 38, scope: !283)
!291 = !DILocation(line: 153, column: 59, scope: !283)
!292 = !DILocation(line: 155, column: 2, scope: !283)
!293 = !DILocation(line: 155, column: 19, scope: !283)
!294 = !DILocation(line: 157, column: 59, scope: !283)
!295 = !DILocation(line: 157, column: 9, scope: !283)
!296 = !DILocation(line: 157, column: 7, scope: !283)
!297 = !DILocation(line: 158, column: 6, scope: !298)
!298 = distinct !DILexicalBlock(scope: !283, file: !3, line: 158, column: 6)
!299 = !DILocation(line: 158, column: 11, scope: !298)
!300 = !DILocation(line: 158, column: 6, scope: !283)
!301 = !DILocation(line: 159, column: 3, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !3, line: 158, column: 20)
!303 = !DILocation(line: 159, column: 3, scope: !304)
!304 = distinct !DILexicalBlock(scope: !302, file: !3, line: 159, column: 3)
!305 = !DILocation(line: 160, column: 19, scope: !302)
!306 = !DILocation(line: 160, column: 25, scope: !302)
!307 = !DILocation(line: 160, column: 3, scope: !302)
!308 = !DILocation(line: 161, column: 27, scope: !302)
!309 = !DILocation(line: 161, column: 3, scope: !302)
!310 = !DILocation(line: 161, column: 9, scope: !302)
!311 = !DILocation(line: 161, column: 25, scope: !302)
!312 = !DILocation(line: 162, column: 3, scope: !302)
!313 = !DILocation(line: 162, column: 9, scope: !302)
!314 = !DILocation(line: 162, column: 14, scope: !302)
!315 = !DILocation(line: 163, column: 3, scope: !302)
!316 = !DILocation(line: 163, column: 9, scope: !302)
!317 = !DILocation(line: 163, column: 14, scope: !302)
!318 = !DILocation(line: 164, column: 3, scope: !302)
!319 = !DILocation(line: 164, column: 9, scope: !302)
!320 = !DILocation(line: 164, column: 14, scope: !302)
!321 = !DILocation(line: 165, column: 2, scope: !302)
!322 = !DILocation(line: 166, column: 9, scope: !283)
!323 = !DILocation(line: 167, column: 1, scope: !283)
!324 = !DILocation(line: 166, column: 2, scope: !283)
!325 = distinct !DISubprogram(name: "kmalloc_node", scope: !90, file: !90, line: 607, type: !326, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !332)
!326 = !DISubroutineType(types: !327)
!327 = !{!102, !328, !100, !51}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 61, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !330, line: 72, baseType: !331)
!330 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !330, line: 16, baseType: !135)
!332 = !{!333, !334, !335, !336}
!333 = !DILocalVariable(name: "size", arg: 1, scope: !325, file: !90, line: 607, type: !328)
!334 = !DILocalVariable(name: "flags", arg: 2, scope: !325, file: !90, line: 607, type: !100)
!335 = !DILocalVariable(name: "node", arg: 3, scope: !325, file: !90, line: 607, type: !51)
!336 = !DILocalVariable(name: "index", scope: !337, file: !90, line: 610, type: !7)
!337 = distinct !DILexicalBlock(scope: !338, file: !90, line: 609, column: 42)
!338 = distinct !DILexicalBlock(scope: !325, file: !90, line: 609, column: 6)
!339 = !DILocation(line: 607, column: 66, scope: !325)
!340 = !DILocation(line: 607, column: 78, scope: !325)
!341 = !DILocation(line: 607, column: 89, scope: !325)
!342 = !DILocation(line: 609, column: 27, scope: !338)
!343 = !DILocation(line: 609, column: 6, scope: !338)
!344 = !DILocation(line: 609, column: 33, scope: !338)
!345 = !DILocation(line: 609, column: 36, scope: !338)
!346 = !DILocation(line: 609, column: 6, scope: !325)
!347 = !DILocation(line: 610, column: 3, scope: !337)
!348 = !DILocation(line: 610, column: 16, scope: !337)
!349 = !DILocation(line: 612, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !337, file: !90, line: 612, column: 7)
!351 = !DILocation(line: 612, column: 12, scope: !350)
!352 = !DILocation(line: 612, column: 7, scope: !337)
!353 = !DILocation(line: 613, column: 30, scope: !350)
!354 = !DILocation(line: 613, column: 36, scope: !350)
!355 = !DILocation(line: 613, column: 43, scope: !350)
!356 = !DILocation(line: 613, column: 11, scope: !350)
!357 = !DILocation(line: 613, column: 4, scope: !350)
!358 = !DILocation(line: 615, column: 11, scope: !337)
!359 = !DILocation(line: 615, column: 9, scope: !337)
!360 = !DILocation(line: 617, column: 33, scope: !337)
!361 = !DILocation(line: 617, column: 40, scope: !337)
!362 = !DILocation(line: 617, column: 20, scope: !337)
!363 = !DILocation(line: 617, column: 5, scope: !337)
!364 = !DILocation(line: 617, column: 51, scope: !337)
!365 = !DILocation(line: 618, column: 5, scope: !337)
!366 = !DILocation(line: 618, column: 12, scope: !337)
!367 = !DILocation(line: 618, column: 18, scope: !337)
!368 = !DILocation(line: 616, column: 10, scope: !337)
!369 = !DILocation(line: 616, column: 3, scope: !337)
!370 = !DILocation(line: 619, column: 2, scope: !338)
!371 = !DILocation(line: 620, column: 24, scope: !325)
!372 = !DILocation(line: 620, column: 30, scope: !325)
!373 = !DILocation(line: 620, column: 37, scope: !325)
!374 = !DILocation(line: 620, column: 9, scope: !325)
!375 = !DILocation(line: 620, column: 2, scope: !325)
!376 = !DILocation(line: 621, column: 1, scope: !325)
!377 = distinct !DISubprogram(name: "spinlock_check", scope: !378, file: !378, line: 324, type: !379, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!378 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !169, line: 23, baseType: !168)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!384 = !{!385}
!385 = !DILocalVariable(name: "lock", arg: 1, scope: !377, file: !378, line: 324, type: !383)
!386 = !DILocation(line: 324, column: 67, scope: !377)
!387 = !DILocation(line: 326, column: 10, scope: !377)
!388 = !DILocation(line: 326, column: 16, scope: !377)
!389 = !DILocation(line: 326, column: 2, scope: !377)
!390 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !391, file: !391, line: 35, type: !392, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !394)
!391 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!392 = !DISubroutineType(types: !393)
!393 = !{null, !106}
!394 = !{!395}
!395 = !DILocalVariable(name: "list", arg: 1, scope: !390, file: !391, line: 35, type: !106)
!396 = !DILocation(line: 35, column: 53, scope: !390)
!397 = !DILocation(line: 37, column: 2, scope: !390)
!398 = !DILocation(line: 37, column: 2, scope: !399)
!399 = distinct !DILexicalBlock(scope: !390, file: !391, line: 37, column: 2)
!400 = !DILocation(line: 37, column: 2, scope: !401)
!401 = distinct !DILexicalBlock(scope: !399, file: !391, line: 37, column: 2)
!402 = !DILocation(line: 37, column: 2, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !391, line: 37, column: 2)
!404 = !DILocation(line: 38, column: 2, scope: !390)
!405 = !DILocation(line: 38, column: 2, scope: !406)
!406 = distinct !DILexicalBlock(scope: !390, file: !391, line: 38, column: 2)
!407 = !DILocation(line: 38, column: 2, scope: !408)
!408 = distinct !DILexicalBlock(scope: !406, file: !391, line: 38, column: 2)
!409 = !DILocation(line: 38, column: 2, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !391, line: 38, column: 2)
!411 = !DILocation(line: 39, column: 1, scope: !390)
!412 = distinct !DISubprogram(name: "gen_pool_first_fit", scope: !3, file: !3, line: 647, type: !205, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420}
!414 = !DILocalVariable(name: "map", arg: 1, scope: !412, file: !3, line: 647, type: !152)
!415 = !DILocalVariable(name: "size", arg: 2, scope: !412, file: !3, line: 647, type: !135)
!416 = !DILocalVariable(name: "start", arg: 3, scope: !412, file: !3, line: 648, type: !135)
!417 = !DILocalVariable(name: "nr", arg: 4, scope: !412, file: !3, line: 648, type: !7)
!418 = !DILocalVariable(name: "data", arg: 5, scope: !412, file: !3, line: 648, type: !102)
!419 = !DILocalVariable(name: "pool", arg: 6, scope: !412, file: !3, line: 649, type: !156)
!420 = !DILocalVariable(name: "start_addr", arg: 7, scope: !412, file: !3, line: 649, type: !135)
!421 = !DILocation(line: 647, column: 49, scope: !412)
!422 = !DILocation(line: 647, column: 68, scope: !412)
!423 = !DILocation(line: 648, column: 17, scope: !412)
!424 = !DILocation(line: 648, column: 37, scope: !412)
!425 = !DILocation(line: 648, column: 47, scope: !412)
!426 = !DILocation(line: 649, column: 20, scope: !412)
!427 = !DILocation(line: 649, column: 40, scope: !412)
!428 = !DILocation(line: 651, column: 36, scope: !412)
!429 = !DILocation(line: 651, column: 41, scope: !412)
!430 = !DILocation(line: 651, column: 47, scope: !412)
!431 = !DILocation(line: 651, column: 54, scope: !412)
!432 = !DILocation(line: 651, column: 9, scope: !412)
!433 = !DILocation(line: 651, column: 2, scope: !412)
!434 = distinct !DISubprogram(name: "gen_pool_add_owner", scope: !3, file: !3, line: 184, type: !435, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!51, !156, !135, !129, !328, !51, !102}
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446}
!438 = !DILocalVariable(name: "pool", arg: 1, scope: !434, file: !3, line: 184, type: !156)
!439 = !DILocalVariable(name: "virt", arg: 2, scope: !434, file: !3, line: 184, type: !135)
!440 = !DILocalVariable(name: "phys", arg: 3, scope: !434, file: !3, line: 184, type: !129)
!441 = !DILocalVariable(name: "size", arg: 4, scope: !434, file: !3, line: 185, type: !328)
!442 = !DILocalVariable(name: "nid", arg: 5, scope: !434, file: !3, line: 185, type: !51)
!443 = !DILocalVariable(name: "owner", arg: 6, scope: !434, file: !3, line: 185, type: !102)
!444 = !DILocalVariable(name: "chunk", scope: !434, file: !3, line: 187, type: !111)
!445 = !DILocalVariable(name: "nbits", scope: !434, file: !3, line: 188, type: !135)
!446 = !DILocalVariable(name: "nbytes", scope: !434, file: !3, line: 189, type: !135)
!447 = !DILocation(line: 184, column: 41, scope: !434)
!448 = !DILocation(line: 184, column: 61, scope: !434)
!449 = !DILocation(line: 184, column: 79, scope: !434)
!450 = !DILocation(line: 185, column: 11, scope: !434)
!451 = !DILocation(line: 185, column: 21, scope: !434)
!452 = !DILocation(line: 185, column: 32, scope: !434)
!453 = !DILocation(line: 187, column: 2, scope: !434)
!454 = !DILocation(line: 187, column: 25, scope: !434)
!455 = !DILocation(line: 188, column: 2, scope: !434)
!456 = !DILocation(line: 188, column: 16, scope: !434)
!457 = !DILocation(line: 188, column: 24, scope: !434)
!458 = !DILocation(line: 188, column: 32, scope: !434)
!459 = !DILocation(line: 188, column: 38, scope: !434)
!460 = !DILocation(line: 188, column: 29, scope: !434)
!461 = !DILocation(line: 189, column: 2, scope: !434)
!462 = !DILocation(line: 189, column: 16, scope: !434)
!463 = !DILocation(line: 190, column: 5, scope: !434)
!464 = !DILocation(line: 190, column: 26, scope: !434)
!465 = !DILocation(line: 189, column: 55, scope: !434)
!466 = !DILocation(line: 192, column: 23, scope: !434)
!467 = !DILocation(line: 192, column: 31, scope: !434)
!468 = !DILocation(line: 192, column: 10, scope: !434)
!469 = !DILocation(line: 192, column: 8, scope: !434)
!470 = !DILocation(line: 193, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !434, file: !3, line: 193, column: 6)
!472 = !DILocation(line: 193, column: 6, scope: !434)
!473 = !DILocation(line: 194, column: 3, scope: !471)
!474 = !DILocation(line: 196, column: 21, scope: !434)
!475 = !DILocation(line: 196, column: 2, scope: !434)
!476 = !DILocation(line: 196, column: 9, scope: !434)
!477 = !DILocation(line: 196, column: 19, scope: !434)
!478 = !DILocation(line: 197, column: 22, scope: !434)
!479 = !DILocation(line: 197, column: 2, scope: !434)
!480 = !DILocation(line: 197, column: 9, scope: !434)
!481 = !DILocation(line: 197, column: 20, scope: !434)
!482 = !DILocation(line: 198, column: 20, scope: !434)
!483 = !DILocation(line: 198, column: 27, scope: !434)
!484 = !DILocation(line: 198, column: 25, scope: !434)
!485 = !DILocation(line: 198, column: 32, scope: !434)
!486 = !DILocation(line: 198, column: 2, scope: !434)
!487 = !DILocation(line: 198, column: 9, scope: !434)
!488 = !DILocation(line: 198, column: 18, scope: !434)
!489 = !DILocation(line: 199, column: 17, scope: !434)
!490 = !DILocation(line: 199, column: 2, scope: !434)
!491 = !DILocation(line: 199, column: 9, scope: !434)
!492 = !DILocation(line: 199, column: 15, scope: !434)
!493 = !DILocation(line: 200, column: 19, scope: !434)
!494 = !DILocation(line: 200, column: 26, scope: !434)
!495 = !DILocation(line: 200, column: 33, scope: !434)
!496 = !DILocation(line: 200, column: 2, scope: !434)
!497 = !DILocation(line: 202, column: 13, scope: !434)
!498 = !DILocation(line: 202, column: 19, scope: !434)
!499 = !DILocation(line: 202, column: 2, scope: !434)
!500 = !DILocation(line: 203, column: 16, scope: !434)
!501 = !DILocation(line: 203, column: 23, scope: !434)
!502 = !DILocation(line: 203, column: 36, scope: !434)
!503 = !DILocation(line: 203, column: 42, scope: !434)
!504 = !DILocation(line: 203, column: 2, scope: !434)
!505 = !DILocation(line: 204, column: 15, scope: !434)
!506 = !DILocation(line: 204, column: 21, scope: !434)
!507 = !DILocation(line: 204, column: 2, scope: !434)
!508 = !DILocation(line: 206, column: 2, scope: !434)
!509 = !DILocation(line: 207, column: 1, scope: !434)
!510 = !DISubprogram(name: "vzalloc_node", scope: !511, file: !511, line: 144, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!511 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!512 = !DISubroutineType(types: !513)
!513 = !{!102, !135, !51}
!514 = distinct !DISubprogram(name: "atomic_long_set", scope: !515, file: !515, line: 3193, type: !516, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!515 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518, !519}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!519 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!520 = !{!521, !522}
!521 = !DILocalVariable(name: "v", arg: 1, scope: !514, file: !515, line: 3193, type: !518)
!522 = !DILocalVariable(name: "i", arg: 2, scope: !514, file: !515, line: 3193, type: !519)
!523 = !DILocation(line: 3193, column: 32, scope: !514)
!524 = !DILocation(line: 3193, column: 40, scope: !514)
!525 = !DILocation(line: 3195, column: 26, scope: !514)
!526 = !DILocation(line: 3195, column: 2, scope: !514)
!527 = !DILocation(line: 3196, column: 22, scope: !514)
!528 = !DILocation(line: 3196, column: 25, scope: !514)
!529 = !DILocation(line: 3196, column: 2, scope: !514)
!530 = !DILocation(line: 3197, column: 1, scope: !514)
!531 = distinct !DISubprogram(name: "spin_lock", scope: !378, file: !378, line: 349, type: !532, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !383}
!534 = !{!535}
!535 = !DILocalVariable(name: "lock", arg: 1, scope: !531, file: !378, line: 349, type: !383)
!536 = !DILocation(line: 349, column: 51, scope: !531)
!537 = !DILocation(line: 351, column: 2, scope: !531)
!538 = !DILocation(line: 352, column: 1, scope: !531)
!539 = distinct !DISubprogram(name: "list_add_rcu", scope: !540, file: !540, line: 104, type: !541, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!540 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!541 = !DISubroutineType(types: !542)
!542 = !{null, !106, !106}
!543 = !{!544, !545}
!544 = !DILocalVariable(name: "new", arg: 1, scope: !539, file: !540, line: 104, type: !106)
!545 = !DILocalVariable(name: "head", arg: 2, scope: !539, file: !540, line: 104, type: !106)
!546 = !DILocation(line: 104, column: 51, scope: !539)
!547 = !DILocation(line: 104, column: 74, scope: !539)
!548 = !DILocation(line: 106, column: 17, scope: !539)
!549 = !DILocation(line: 106, column: 22, scope: !539)
!550 = !DILocation(line: 106, column: 28, scope: !539)
!551 = !DILocation(line: 106, column: 34, scope: !539)
!552 = !DILocation(line: 106, column: 2, scope: !539)
!553 = !DILocation(line: 107, column: 1, scope: !539)
!554 = distinct !DISubprogram(name: "spin_unlock", scope: !378, file: !378, line: 389, type: !532, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!555 = !{!556}
!556 = !DILocalVariable(name: "lock", arg: 1, scope: !554, file: !378, line: 389, type: !383)
!557 = !DILocation(line: 389, column: 53, scope: !554)
!558 = !DILocation(line: 391, column: 2, scope: !554)
!559 = !DILocation(line: 392, column: 1, scope: !554)
!560 = distinct !DISubprogram(name: "gen_pool_virt_to_phys", scope: !3, file: !3, line: 217, type: !561, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!561 = !DISubroutineType(types: !562)
!562 = !{!129, !156, !135}
!563 = !{!564, !565, !566, !567, !568, !571}
!564 = !DILocalVariable(name: "pool", arg: 1, scope: !560, file: !3, line: 217, type: !156)
!565 = !DILocalVariable(name: "addr", arg: 2, scope: !560, file: !3, line: 217, type: !135)
!566 = !DILocalVariable(name: "chunk", scope: !560, file: !3, line: 219, type: !111)
!567 = !DILocalVariable(name: "paddr", scope: !560, file: !3, line: 220, type: !129)
!568 = !DILocalVariable(name: "__mptr", scope: !569, file: !3, line: 223, type: !102)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 223, column: 2)
!570 = distinct !DILexicalBlock(scope: !560, file: !3, line: 223, column: 2)
!571 = !DILocalVariable(name: "__mptr", scope: !572, file: !3, line: 223, type: !102)
!572 = distinct !DILexicalBlock(scope: !573, file: !3, line: 223, column: 2)
!573 = distinct !DILexicalBlock(scope: !570, file: !3, line: 223, column: 2)
!574 = !DILocation(line: 217, column: 52, scope: !560)
!575 = !DILocation(line: 217, column: 72, scope: !560)
!576 = !DILocation(line: 219, column: 2, scope: !560)
!577 = !DILocation(line: 219, column: 25, scope: !560)
!578 = !DILocation(line: 220, column: 2, scope: !560)
!579 = !DILocation(line: 220, column: 14, scope: !560)
!580 = !DILocation(line: 222, column: 2, scope: !560)
!581 = !DILocation(line: 223, column: 2, scope: !569)
!582 = !DILocation(line: 223, column: 2, scope: !583)
!583 = distinct !DILexicalBlock(scope: !569, file: !3, line: 223, column: 2)
!584 = !DILocation(line: 223, column: 2, scope: !585)
!585 = distinct !DILexicalBlock(scope: !583, file: !3, line: 223, column: 2)
!586 = !DILocation(line: 223, column: 2, scope: !570)
!587 = !DILocation(line: 223, column: 2, scope: !573)
!588 = !DILocation(line: 224, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 224, column: 7)
!590 = distinct !DILexicalBlock(scope: !573, file: !3, line: 223, column: 60)
!591 = !DILocation(line: 224, column: 15, scope: !589)
!592 = !DILocation(line: 224, column: 22, scope: !589)
!593 = !DILocation(line: 224, column: 12, scope: !589)
!594 = !DILocation(line: 224, column: 33, scope: !589)
!595 = !DILocation(line: 224, column: 36, scope: !589)
!596 = !DILocation(line: 224, column: 44, scope: !589)
!597 = !DILocation(line: 224, column: 51, scope: !589)
!598 = !DILocation(line: 224, column: 41, scope: !589)
!599 = !DILocation(line: 224, column: 7, scope: !590)
!600 = !DILocation(line: 225, column: 12, scope: !601)
!601 = distinct !DILexicalBlock(scope: !589, file: !3, line: 224, column: 61)
!602 = !DILocation(line: 225, column: 19, scope: !601)
!603 = !DILocation(line: 225, column: 32, scope: !601)
!604 = !DILocation(line: 225, column: 39, scope: !601)
!605 = !DILocation(line: 225, column: 46, scope: !601)
!606 = !DILocation(line: 225, column: 37, scope: !601)
!607 = !DILocation(line: 225, column: 29, scope: !601)
!608 = !DILocation(line: 225, column: 10, scope: !601)
!609 = !DILocation(line: 226, column: 4, scope: !601)
!610 = !DILocation(line: 228, column: 2, scope: !590)
!611 = !DILocation(line: 223, column: 2, scope: !572)
!612 = !DILocation(line: 223, column: 2, scope: !613)
!613 = distinct !DILexicalBlock(scope: !572, file: !3, line: 223, column: 2)
!614 = !DILocation(line: 223, column: 2, scope: !615)
!615 = distinct !DILexicalBlock(scope: !613, file: !3, line: 223, column: 2)
!616 = distinct !{!616, !586, !617, !618, !619}
!617 = !DILocation(line: 228, column: 2, scope: !570)
!618 = !{!"llvm.loop.mustprogress"}
!619 = !{!"llvm.loop.unroll.disable"}
!620 = !DILocation(line: 229, column: 2, scope: !560)
!621 = !DILocation(line: 231, column: 9, scope: !560)
!622 = !DILocation(line: 232, column: 1, scope: !560)
!623 = !DILocation(line: 231, column: 2, scope: !560)
!624 = distinct !DISubprogram(name: "rcu_read_lock", scope: !625, file: !625, line: 782, type: !626, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!625 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!626 = !DISubroutineType(types: !627)
!627 = !{null}
!628 = !DILocation(line: 784, column: 2, scope: !624)
!629 = !DILocation(line: 786, column: 2, scope: !624)
!630 = !DILocation(line: 786, column: 2, scope: !631)
!631 = distinct !DILexicalBlock(scope: !624, file: !625, line: 786, column: 2)
!632 = !DILocation(line: 787, column: 2, scope: !624)
!633 = !DILocation(line: 787, column: 2, scope: !634)
!634 = distinct !DILexicalBlock(scope: !624, file: !625, line: 787, column: 2)
!635 = !DILocation(line: 789, column: 1, scope: !624)
!636 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !625, file: !625, line: 813, type: !626, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!637 = !DILocation(line: 815, column: 2, scope: !636)
!638 = !DILocation(line: 815, column: 2, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !625, line: 815, column: 2)
!640 = !DILocation(line: 818, column: 2, scope: !636)
!641 = !DILocation(line: 819, column: 2, scope: !636)
!642 = !DILocation(line: 819, column: 2, scope: !643)
!643 = distinct !DILexicalBlock(scope: !636, file: !625, line: 819, column: 2)
!644 = !DILocation(line: 820, column: 1, scope: !636)
!645 = distinct !DISubprogram(name: "gen_pool_destroy", scope: !3, file: !3, line: 242, type: !646, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !156}
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656}
!649 = !DILocalVariable(name: "pool", arg: 1, scope: !645, file: !3, line: 242, type: !156)
!650 = !DILocalVariable(name: "_chunk", scope: !645, file: !3, line: 244, type: !106)
!651 = !DILocalVariable(name: "_next_chunk", scope: !645, file: !3, line: 244, type: !106)
!652 = !DILocalVariable(name: "chunk", scope: !645, file: !3, line: 245, type: !111)
!653 = !DILocalVariable(name: "order", scope: !645, file: !3, line: 246, type: !51)
!654 = !DILocalVariable(name: "bit", scope: !645, file: !3, line: 247, type: !135)
!655 = !DILocalVariable(name: "end_bit", scope: !645, file: !3, line: 247, type: !135)
!656 = !DILocalVariable(name: "__mptr", scope: !657, file: !3, line: 250, type: !102)
!657 = distinct !DILexicalBlock(scope: !658, file: !3, line: 250, column: 11)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 249, column: 57)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 249, column: 2)
!660 = distinct !DILexicalBlock(scope: !645, file: !3, line: 249, column: 2)
!661 = !DILocation(line: 242, column: 40, scope: !645)
!662 = !DILocation(line: 244, column: 2, scope: !645)
!663 = !DILocation(line: 244, column: 20, scope: !645)
!664 = !DILocation(line: 244, column: 29, scope: !645)
!665 = !DILocation(line: 245, column: 2, scope: !645)
!666 = !DILocation(line: 245, column: 25, scope: !645)
!667 = !DILocation(line: 246, column: 2, scope: !645)
!668 = !DILocation(line: 246, column: 6, scope: !645)
!669 = !DILocation(line: 246, column: 14, scope: !645)
!670 = !DILocation(line: 246, column: 20, scope: !645)
!671 = !DILocation(line: 247, column: 2, scope: !645)
!672 = !DILocation(line: 247, column: 16, scope: !645)
!673 = !DILocation(line: 247, column: 21, scope: !645)
!674 = !DILocation(line: 249, column: 2, scope: !660)
!675 = !DILocation(line: 249, column: 2, scope: !659)
!676 = !DILocation(line: 250, column: 11, scope: !657)
!677 = !DILocation(line: 250, column: 11, scope: !658)
!678 = !DILocation(line: 250, column: 9, scope: !658)
!679 = !DILocation(line: 251, column: 13, scope: !658)
!680 = !DILocation(line: 251, column: 20, scope: !658)
!681 = !DILocation(line: 251, column: 3, scope: !658)
!682 = !DILocation(line: 253, column: 24, scope: !658)
!683 = !DILocation(line: 253, column: 13, scope: !658)
!684 = !DILocation(line: 253, column: 34, scope: !658)
!685 = !DILocation(line: 253, column: 31, scope: !658)
!686 = !DILocation(line: 253, column: 11, scope: !658)
!687 = !DILocation(line: 254, column: 24, scope: !658)
!688 = !DILocation(line: 254, column: 31, scope: !658)
!689 = !DILocation(line: 254, column: 37, scope: !658)
!690 = !DILocation(line: 254, column: 9, scope: !658)
!691 = !DILocation(line: 254, column: 7, scope: !658)
!692 = !DILocation(line: 255, column: 3, scope: !658)
!693 = !DILocation(line: 255, column: 3, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 255, column: 3)
!695 = distinct !DILexicalBlock(scope: !658, file: !3, line: 255, column: 3)
!696 = !DILocation(line: 255, column: 3, scope: !695)
!697 = !DILocation(line: 255, column: 3, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !3, line: 255, column: 3)
!699 = !DILocation(line: 255, column: 3, scope: !700)
!700 = distinct !DILexicalBlock(scope: !698, file: !3, line: 255, column: 3)
!701 = !DILocation(line: 255, column: 3, scope: !702)
!702 = distinct !DILexicalBlock(scope: !698, file: !3, line: 255, column: 3)
!703 = !{i64 2153033134, i64 2153033163, i64 2153033209, i64 2153033267, i64 2153033321, i64 2153033375, i64 2153033430, i64 2153033461}
!704 = !DILocation(line: 257, column: 9, scope: !658)
!705 = !DILocation(line: 257, column: 3, scope: !658)
!706 = !DILocation(line: 258, column: 2, scope: !658)
!707 = distinct !{!707, !674, !708, !618, !619}
!708 = !DILocation(line: 258, column: 2, scope: !660)
!709 = !DILocation(line: 259, column: 14, scope: !645)
!710 = !DILocation(line: 259, column: 20, scope: !645)
!711 = !DILocation(line: 259, column: 2, scope: !645)
!712 = !DILocation(line: 260, column: 8, scope: !645)
!713 = !DILocation(line: 260, column: 2, scope: !645)
!714 = !DILocation(line: 261, column: 1, scope: !645)
!715 = distinct !DISubprogram(name: "list_is_head", scope: !391, file: !391, line: 362, type: !716, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !720)
!716 = !DISubroutineType(types: !717)
!717 = !{!51, !718, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!720 = !{!721, !722}
!721 = !DILocalVariable(name: "list", arg: 1, scope: !715, file: !391, line: 362, type: !718)
!722 = !DILocalVariable(name: "head", arg: 2, scope: !715, file: !391, line: 362, type: !718)
!723 = !DILocation(line: 362, column: 56, scope: !715)
!724 = !DILocation(line: 362, column: 86, scope: !715)
!725 = !DILocation(line: 364, column: 9, scope: !715)
!726 = !DILocation(line: 364, column: 17, scope: !715)
!727 = !DILocation(line: 364, column: 14, scope: !715)
!728 = !DILocation(line: 364, column: 2, scope: !715)
!729 = distinct !DISubprogram(name: "list_del", scope: !391, file: !391, line: 227, type: !392, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !730)
!730 = !{!731}
!731 = !DILocalVariable(name: "entry", arg: 1, scope: !729, file: !391, line: 227, type: !106)
!732 = !DILocation(line: 227, column: 47, scope: !729)
!733 = !DILocation(line: 229, column: 19, scope: !729)
!734 = !DILocation(line: 229, column: 2, scope: !729)
!735 = !DILocation(line: 230, column: 2, scope: !729)
!736 = !DILocation(line: 230, column: 9, scope: !729)
!737 = !DILocation(line: 230, column: 14, scope: !729)
!738 = !DILocation(line: 231, column: 2, scope: !729)
!739 = !DILocation(line: 231, column: 9, scope: !729)
!740 = !DILocation(line: 231, column: 14, scope: !729)
!741 = !DILocation(line: 232, column: 1, scope: !729)
!742 = distinct !DISubprogram(name: "chunk_size", scope: !3, file: !3, line: 40, type: !743, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !747)
!743 = !DISubroutineType(types: !744)
!744 = !{!328, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!747 = !{!748}
!748 = !DILocalVariable(name: "chunk", arg: 1, scope: !742, file: !3, line: 40, type: !745)
!749 = !DILocation(line: 40, column: 62, scope: !742)
!750 = !DILocation(line: 42, column: 9, scope: !742)
!751 = !DILocation(line: 42, column: 16, scope: !742)
!752 = !DILocation(line: 42, column: 27, scope: !742)
!753 = !DILocation(line: 42, column: 34, scope: !742)
!754 = !DILocation(line: 42, column: 25, scope: !742)
!755 = !DILocation(line: 42, column: 45, scope: !742)
!756 = !DILocation(line: 42, column: 2, scope: !742)
!757 = distinct !DISubprogram(name: "find_first_bit", scope: !758, file: !758, line: 200, type: !759, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !763)
!758 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!759 = !DISubroutineType(types: !760)
!760 = !{!135, !761, !135}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!763 = !{!764, !765, !766}
!764 = !DILocalVariable(name: "addr", arg: 1, scope: !757, file: !758, line: 200, type: !761)
!765 = !DILocalVariable(name: "size", arg: 2, scope: !757, file: !758, line: 200, type: !135)
!766 = !DILocalVariable(name: "val", scope: !767, file: !758, line: 203, type: !135)
!767 = distinct !DILexicalBlock(scope: !768, file: !758, line: 202, column: 31)
!768 = distinct !DILexicalBlock(scope: !757, file: !758, line: 202, column: 6)
!769 = !DILocation(line: 200, column: 51, scope: !757)
!770 = !DILocation(line: 200, column: 71, scope: !757)
!771 = !DILocation(line: 202, column: 6, scope: !768)
!772 = !DILocation(line: 202, column: 6, scope: !757)
!773 = !DILocation(line: 203, column: 3, scope: !767)
!774 = !DILocation(line: 203, column: 17, scope: !767)
!775 = !DILocation(line: 203, column: 24, scope: !767)
!776 = !DILocation(line: 203, column: 23, scope: !767)
!777 = !DILocation(line: 203, column: 31, scope: !767)
!778 = !DILocation(line: 203, column: 29, scope: !767)
!779 = !DILocation(line: 205, column: 10, scope: !767)
!780 = !DILocation(line: 205, column: 16, scope: !767)
!781 = !DILocation(line: 205, column: 29, scope: !767)
!782 = !DILocation(line: 205, column: 3, scope: !767)
!783 = !DILocation(line: 206, column: 2, scope: !768)
!784 = !DILocation(line: 208, column: 25, scope: !757)
!785 = !DILocation(line: 208, column: 31, scope: !757)
!786 = !DILocation(line: 208, column: 9, scope: !757)
!787 = !DILocation(line: 208, column: 2, scope: !757)
!788 = !DILocation(line: 209, column: 1, scope: !757)
!789 = !DISubprogram(name: "vfree", scope: !511, file: !511, line: 161, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!794 = !DISubprogram(name: "kfree_const", scope: !795, file: !795, line: 214, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!795 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!796 = !DISubprogram(name: "kfree", scope: !90, file: !90, line: 227, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = distinct !DISubprogram(name: "gen_pool_alloc_algo_owner", scope: !3, file: !3, line: 277, type: !798, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !801)
!798 = !DISubroutineType(types: !799)
!799 = !{!135, !156, !328, !203, !102, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !817, !820}
!802 = !DILocalVariable(name: "pool", arg: 1, scope: !797, file: !3, line: 277, type: !156)
!803 = !DILocalVariable(name: "size", arg: 2, scope: !797, file: !3, line: 277, type: !328)
!804 = !DILocalVariable(name: "algo", arg: 3, scope: !797, file: !3, line: 278, type: !203)
!805 = !DILocalVariable(name: "data", arg: 4, scope: !797, file: !3, line: 278, type: !102)
!806 = !DILocalVariable(name: "owner", arg: 5, scope: !797, file: !3, line: 278, type: !800)
!807 = !DILocalVariable(name: "chunk", scope: !797, file: !3, line: 280, type: !111)
!808 = !DILocalVariable(name: "addr", scope: !797, file: !3, line: 281, type: !135)
!809 = !DILocalVariable(name: "order", scope: !797, file: !3, line: 282, type: !51)
!810 = !DILocalVariable(name: "nbits", scope: !797, file: !3, line: 283, type: !135)
!811 = !DILocalVariable(name: "start_bit", scope: !797, file: !3, line: 283, type: !135)
!812 = !DILocalVariable(name: "end_bit", scope: !797, file: !3, line: 283, type: !135)
!813 = !DILocalVariable(name: "remain", scope: !797, file: !3, line: 283, type: !135)
!814 = !DILocalVariable(name: "__mptr", scope: !815, file: !3, line: 297, type: !102)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 297, column: 2)
!816 = distinct !DILexicalBlock(scope: !797, file: !3, line: 297, column: 2)
!817 = !DILabel(scope: !818, name: "retry", file: !3, line: 303)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 297, column: 60)
!819 = distinct !DILexicalBlock(scope: !816, file: !3, line: 297, column: 2)
!820 = !DILocalVariable(name: "__mptr", scope: !821, file: !3, line: 297, type: !102)
!821 = distinct !DILexicalBlock(scope: !819, file: !3, line: 297, column: 2)
!822 = !DILocation(line: 277, column: 58, scope: !797)
!823 = !DILocation(line: 277, column: 71, scope: !797)
!824 = !DILocation(line: 278, column: 18, scope: !797)
!825 = !DILocation(line: 278, column: 30, scope: !797)
!826 = !DILocation(line: 278, column: 43, scope: !797)
!827 = !DILocation(line: 280, column: 2, scope: !797)
!828 = !DILocation(line: 280, column: 25, scope: !797)
!829 = !DILocation(line: 281, column: 2, scope: !797)
!830 = !DILocation(line: 281, column: 16, scope: !797)
!831 = !DILocation(line: 282, column: 2, scope: !797)
!832 = !DILocation(line: 282, column: 6, scope: !797)
!833 = !DILocation(line: 282, column: 14, scope: !797)
!834 = !DILocation(line: 282, column: 20, scope: !797)
!835 = !DILocation(line: 283, column: 2, scope: !797)
!836 = !DILocation(line: 283, column: 16, scope: !797)
!837 = !DILocation(line: 283, column: 23, scope: !797)
!838 = !DILocation(line: 283, column: 34, scope: !797)
!839 = !DILocation(line: 283, column: 43, scope: !797)
!840 = !DILocation(line: 289, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !797, file: !3, line: 289, column: 6)
!842 = !DILocation(line: 289, column: 6, scope: !797)
!843 = !DILocation(line: 290, column: 4, scope: !841)
!844 = !DILocation(line: 290, column: 10, scope: !841)
!845 = !DILocation(line: 290, column: 3, scope: !841)
!846 = !DILocation(line: 292, column: 6, scope: !847)
!847 = distinct !DILexicalBlock(scope: !797, file: !3, line: 292, column: 6)
!848 = !DILocation(line: 292, column: 11, scope: !847)
!849 = !DILocation(line: 292, column: 6, scope: !797)
!850 = !DILocation(line: 293, column: 3, scope: !847)
!851 = !DILocation(line: 295, column: 11, scope: !797)
!852 = !DILocation(line: 295, column: 26, scope: !797)
!853 = !DILocation(line: 295, column: 23, scope: !797)
!854 = !DILocation(line: 295, column: 16, scope: !797)
!855 = !DILocation(line: 295, column: 33, scope: !797)
!856 = !DILocation(line: 295, column: 41, scope: !797)
!857 = !DILocation(line: 295, column: 38, scope: !797)
!858 = !DILocation(line: 295, column: 8, scope: !797)
!859 = !DILocation(line: 296, column: 2, scope: !797)
!860 = !DILocation(line: 297, column: 2, scope: !815)
!861 = !DILocation(line: 297, column: 2, scope: !862)
!862 = distinct !DILexicalBlock(scope: !815, file: !3, line: 297, column: 2)
!863 = !DILocation(line: 297, column: 2, scope: !864)
!864 = distinct !DILexicalBlock(scope: !862, file: !3, line: 297, column: 2)
!865 = !DILocation(line: 297, column: 2, scope: !816)
!866 = !DILocation(line: 297, column: 2, scope: !819)
!867 = !DILocation(line: 298, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !818, file: !3, line: 298, column: 7)
!869 = !DILocation(line: 298, column: 32, scope: !868)
!870 = !DILocation(line: 298, column: 39, scope: !868)
!871 = !DILocation(line: 298, column: 14, scope: !868)
!872 = !DILocation(line: 298, column: 12, scope: !868)
!873 = !DILocation(line: 298, column: 7, scope: !818)
!874 = !DILocation(line: 299, column: 4, scope: !868)
!875 = !DILocation(line: 301, column: 13, scope: !818)
!876 = !DILocation(line: 302, column: 24, scope: !818)
!877 = !DILocation(line: 302, column: 13, scope: !818)
!878 = !DILocation(line: 302, column: 34, scope: !818)
!879 = !DILocation(line: 302, column: 31, scope: !818)
!880 = !DILocation(line: 302, column: 11, scope: !818)
!881 = !DILocation(line: 302, column: 3, scope: !818)
!882 = !DILocation(line: 303, column: 1, scope: !818)
!883 = !DILocation(line: 304, column: 15, scope: !818)
!884 = !DILocation(line: 304, column: 20, scope: !818)
!885 = !DILocation(line: 304, column: 27, scope: !818)
!886 = !DILocation(line: 304, column: 33, scope: !818)
!887 = !DILocation(line: 304, column: 42, scope: !818)
!888 = !DILocation(line: 305, column: 6, scope: !818)
!889 = !DILocation(line: 305, column: 13, scope: !818)
!890 = !DILocation(line: 305, column: 19, scope: !818)
!891 = !DILocation(line: 305, column: 25, scope: !818)
!892 = !DILocation(line: 305, column: 32, scope: !818)
!893 = !DILocation(line: 304, column: 13, scope: !818)
!894 = !DILocation(line: 306, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !818, file: !3, line: 306, column: 7)
!896 = !DILocation(line: 306, column: 20, scope: !895)
!897 = !DILocation(line: 306, column: 17, scope: !895)
!898 = !DILocation(line: 306, column: 7, scope: !818)
!899 = !DILocation(line: 307, column: 4, scope: !895)
!900 = !DILocation(line: 308, column: 26, scope: !818)
!901 = !DILocation(line: 308, column: 33, scope: !818)
!902 = !DILocation(line: 308, column: 39, scope: !818)
!903 = !DILocation(line: 308, column: 50, scope: !818)
!904 = !DILocation(line: 308, column: 12, scope: !818)
!905 = !DILocation(line: 308, column: 10, scope: !818)
!906 = !DILocation(line: 309, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !818, file: !3, line: 309, column: 7)
!908 = !DILocation(line: 309, column: 7, scope: !818)
!909 = !DILocation(line: 310, column: 29, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 309, column: 15)
!911 = !DILocation(line: 310, column: 36, scope: !910)
!912 = !DILocation(line: 310, column: 42, scope: !910)
!913 = !DILocation(line: 311, column: 8, scope: !910)
!914 = !DILocation(line: 311, column: 16, scope: !910)
!915 = !DILocation(line: 311, column: 14, scope: !910)
!916 = !DILocation(line: 310, column: 13, scope: !910)
!917 = !DILocation(line: 310, column: 11, scope: !910)
!918 = !DILocation(line: 312, column: 4, scope: !910)
!919 = !DILocation(line: 312, column: 4, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 312, column: 4)
!921 = distinct !DILexicalBlock(scope: !910, file: !3, line: 312, column: 4)
!922 = !DILocation(line: 312, column: 4, scope: !921)
!923 = !DILocation(line: 312, column: 4, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !3, line: 312, column: 4)
!925 = !DILocation(line: 312, column: 4, scope: !926)
!926 = distinct !DILexicalBlock(scope: !924, file: !3, line: 312, column: 4)
!927 = !DILocation(line: 312, column: 4, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !3, line: 312, column: 4)
!929 = !{i64 2153072203, i64 2153072232, i64 2153072278, i64 2153072336, i64 2153072390, i64 2153072444, i64 2153072499, i64 2153072530}
!930 = !DILocation(line: 313, column: 4, scope: !910)
!931 = !DILocation(line: 316, column: 10, scope: !818)
!932 = !DILocation(line: 316, column: 17, scope: !818)
!933 = !DILocation(line: 316, column: 46, scope: !818)
!934 = !DILocation(line: 316, column: 59, scope: !818)
!935 = !DILocation(line: 316, column: 56, scope: !818)
!936 = !DILocation(line: 316, column: 28, scope: !818)
!937 = !DILocation(line: 316, column: 8, scope: !818)
!938 = !DILocation(line: 317, column: 10, scope: !818)
!939 = !DILocation(line: 317, column: 19, scope: !818)
!940 = !DILocation(line: 317, column: 16, scope: !818)
!941 = !DILocation(line: 317, column: 8, scope: !818)
!942 = !DILocation(line: 318, column: 19, scope: !818)
!943 = !DILocation(line: 318, column: 26, scope: !818)
!944 = !DILocation(line: 318, column: 33, scope: !818)
!945 = !DILocation(line: 318, column: 3, scope: !818)
!946 = !DILocation(line: 319, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !818, file: !3, line: 319, column: 7)
!948 = !DILocation(line: 319, column: 7, scope: !818)
!949 = !DILocation(line: 320, column: 13, scope: !947)
!950 = !DILocation(line: 320, column: 20, scope: !947)
!951 = !DILocation(line: 320, column: 5, scope: !947)
!952 = !DILocation(line: 320, column: 11, scope: !947)
!953 = !DILocation(line: 320, column: 4, scope: !947)
!954 = !DILocation(line: 321, column: 3, scope: !818)
!955 = !DILocation(line: 297, column: 2, scope: !821)
!956 = !DILocation(line: 297, column: 2, scope: !957)
!957 = distinct !DILexicalBlock(scope: !821, file: !3, line: 297, column: 2)
!958 = !DILocation(line: 297, column: 2, scope: !959)
!959 = distinct !DILexicalBlock(scope: !957, file: !3, line: 297, column: 2)
!960 = distinct !{!960, !865, !961, !618, !619}
!961 = !DILocation(line: 322, column: 2, scope: !816)
!962 = !DILocation(line: 323, column: 2, scope: !797)
!963 = !DILocation(line: 324, column: 9, scope: !797)
!964 = !DILocation(line: 324, column: 2, scope: !797)
!965 = !DILocation(line: 325, column: 1, scope: !797)
!966 = distinct !DISubprogram(name: "atomic_long_read", scope: !515, file: !515, line: 3158, type: !967, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!967 = !DISubroutineType(types: !968)
!968 = !{!519, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!971 = !{!972}
!972 = !DILocalVariable(name: "v", arg: 1, scope: !966, file: !515, line: 3158, type: !969)
!973 = !DILocation(line: 3158, column: 39, scope: !966)
!974 = !DILocation(line: 3160, column: 25, scope: !966)
!975 = !DILocation(line: 3160, column: 2, scope: !966)
!976 = !DILocation(line: 3161, column: 30, scope: !966)
!977 = !DILocation(line: 3161, column: 9, scope: !966)
!978 = !DILocation(line: 3161, column: 2, scope: !966)
!979 = distinct !DISubprogram(name: "bitmap_set_ll", scope: !3, file: !3, line: 85, type: !980, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!135, !152, !135, !135}
!982 = !{!983, !984, !985, !986, !987, !988, !989}
!983 = !DILocalVariable(name: "map", arg: 1, scope: !979, file: !3, line: 85, type: !152)
!984 = !DILocalVariable(name: "start", arg: 2, scope: !979, file: !3, line: 85, type: !135)
!985 = !DILocalVariable(name: "nr", arg: 3, scope: !979, file: !3, line: 85, type: !135)
!986 = !DILocalVariable(name: "p", scope: !979, file: !3, line: 87, type: !152)
!987 = !DILocalVariable(name: "size", scope: !979, file: !3, line: 88, type: !762)
!988 = !DILocalVariable(name: "bits_to_set", scope: !979, file: !3, line: 89, type: !51)
!989 = !DILocalVariable(name: "mask_to_set", scope: !979, file: !3, line: 90, type: !135)
!990 = !DILocation(line: 85, column: 30, scope: !979)
!991 = !DILocation(line: 85, column: 49, scope: !979)
!992 = !DILocation(line: 85, column: 70, scope: !979)
!993 = !DILocation(line: 87, column: 2, scope: !979)
!994 = !DILocation(line: 87, column: 17, scope: !979)
!995 = !DILocation(line: 87, column: 21, scope: !979)
!996 = !DILocation(line: 87, column: 27, scope: !979)
!997 = !DILocation(line: 87, column: 25, scope: !979)
!998 = !DILocation(line: 88, column: 2, scope: !979)
!999 = !DILocation(line: 88, column: 22, scope: !979)
!1000 = !DILocation(line: 88, column: 29, scope: !979)
!1001 = !DILocation(line: 88, column: 37, scope: !979)
!1002 = !DILocation(line: 88, column: 35, scope: !979)
!1003 = !DILocation(line: 89, column: 2, scope: !979)
!1004 = !DILocation(line: 89, column: 6, scope: !979)
!1005 = !DILocation(line: 89, column: 37, scope: !979)
!1006 = !DILocation(line: 89, column: 43, scope: !979)
!1007 = !DILocation(line: 89, column: 34, scope: !979)
!1008 = !DILocation(line: 89, column: 20, scope: !979)
!1009 = !DILocation(line: 90, column: 2, scope: !979)
!1010 = !DILocation(line: 90, column: 16, scope: !979)
!1011 = !DILocation(line: 90, column: 30, scope: !979)
!1012 = !DILocation(line: 92, column: 2, scope: !979)
!1013 = !DILocation(line: 92, column: 9, scope: !979)
!1014 = !DILocation(line: 92, column: 15, scope: !979)
!1015 = !DILocation(line: 92, column: 12, scope: !979)
!1016 = !DILocation(line: 93, column: 19, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 93, column: 7)
!1018 = distinct !DILexicalBlock(scope: !979, file: !3, line: 92, column: 28)
!1019 = !DILocation(line: 93, column: 22, scope: !1017)
!1020 = !DILocation(line: 93, column: 7, scope: !1017)
!1021 = !DILocation(line: 93, column: 7, scope: !1018)
!1022 = !DILocation(line: 94, column: 11, scope: !1017)
!1023 = !DILocation(line: 94, column: 4, scope: !1017)
!1024 = !DILocation(line: 95, column: 9, scope: !1018)
!1025 = !DILocation(line: 95, column: 6, scope: !1018)
!1026 = !DILocation(line: 96, column: 15, scope: !1018)
!1027 = !DILocation(line: 97, column: 15, scope: !1018)
!1028 = !DILocation(line: 98, column: 4, scope: !1018)
!1029 = distinct !{!1029, !1012, !1030, !618, !619}
!1030 = !DILocation(line: 99, column: 2, scope: !979)
!1031 = !DILocation(line: 100, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !979, file: !3, line: 100, column: 6)
!1033 = !DILocation(line: 100, column: 6, scope: !979)
!1034 = !DILocation(line: 101, column: 18, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 100, column: 10)
!1036 = !DILocation(line: 101, column: 15, scope: !1035)
!1037 = !DILocation(line: 102, column: 19, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 102, column: 7)
!1039 = !DILocation(line: 102, column: 22, scope: !1038)
!1040 = !DILocation(line: 102, column: 7, scope: !1038)
!1041 = !DILocation(line: 102, column: 7, scope: !1035)
!1042 = !DILocation(line: 103, column: 11, scope: !1038)
!1043 = !DILocation(line: 103, column: 4, scope: !1038)
!1044 = !DILocation(line: 104, column: 2, scope: !1035)
!1045 = !DILocation(line: 106, column: 2, scope: !979)
!1046 = !DILocation(line: 107, column: 1, scope: !979)
!1047 = distinct !DISubprogram(name: "bitmap_clear_ll", scope: !3, file: !3, line: 121, type: !980, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1049 = !DILocalVariable(name: "map", arg: 1, scope: !1047, file: !3, line: 121, type: !152)
!1050 = !DILocalVariable(name: "start", arg: 2, scope: !1047, file: !3, line: 121, type: !135)
!1051 = !DILocalVariable(name: "nr", arg: 3, scope: !1047, file: !3, line: 121, type: !135)
!1052 = !DILocalVariable(name: "p", scope: !1047, file: !3, line: 123, type: !152)
!1053 = !DILocalVariable(name: "size", scope: !1047, file: !3, line: 124, type: !762)
!1054 = !DILocalVariable(name: "bits_to_clear", scope: !1047, file: !3, line: 125, type: !51)
!1055 = !DILocalVariable(name: "mask_to_clear", scope: !1047, file: !3, line: 126, type: !135)
!1056 = !DILocation(line: 121, column: 32, scope: !1047)
!1057 = !DILocation(line: 121, column: 51, scope: !1047)
!1058 = !DILocation(line: 121, column: 72, scope: !1047)
!1059 = !DILocation(line: 123, column: 2, scope: !1047)
!1060 = !DILocation(line: 123, column: 17, scope: !1047)
!1061 = !DILocation(line: 123, column: 21, scope: !1047)
!1062 = !DILocation(line: 123, column: 27, scope: !1047)
!1063 = !DILocation(line: 123, column: 25, scope: !1047)
!1064 = !DILocation(line: 124, column: 2, scope: !1047)
!1065 = !DILocation(line: 124, column: 22, scope: !1047)
!1066 = !DILocation(line: 124, column: 29, scope: !1047)
!1067 = !DILocation(line: 124, column: 37, scope: !1047)
!1068 = !DILocation(line: 124, column: 35, scope: !1047)
!1069 = !DILocation(line: 125, column: 2, scope: !1047)
!1070 = !DILocation(line: 125, column: 6, scope: !1047)
!1071 = !DILocation(line: 125, column: 39, scope: !1047)
!1072 = !DILocation(line: 125, column: 45, scope: !1047)
!1073 = !DILocation(line: 125, column: 36, scope: !1047)
!1074 = !DILocation(line: 125, column: 22, scope: !1047)
!1075 = !DILocation(line: 126, column: 2, scope: !1047)
!1076 = !DILocation(line: 126, column: 16, scope: !1047)
!1077 = !DILocation(line: 126, column: 32, scope: !1047)
!1078 = !DILocation(line: 128, column: 2, scope: !1047)
!1079 = !DILocation(line: 128, column: 9, scope: !1047)
!1080 = !DILocation(line: 128, column: 15, scope: !1047)
!1081 = !DILocation(line: 128, column: 12, scope: !1047)
!1082 = !DILocation(line: 129, column: 21, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 129, column: 7)
!1084 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 128, column: 30)
!1085 = !DILocation(line: 129, column: 24, scope: !1083)
!1086 = !DILocation(line: 129, column: 7, scope: !1083)
!1087 = !DILocation(line: 129, column: 7, scope: !1084)
!1088 = !DILocation(line: 130, column: 11, scope: !1083)
!1089 = !DILocation(line: 130, column: 4, scope: !1083)
!1090 = !DILocation(line: 131, column: 9, scope: !1084)
!1091 = !DILocation(line: 131, column: 6, scope: !1084)
!1092 = !DILocation(line: 132, column: 17, scope: !1084)
!1093 = !DILocation(line: 133, column: 17, scope: !1084)
!1094 = !DILocation(line: 134, column: 4, scope: !1084)
!1095 = distinct !{!1095, !1078, !1096, !618, !619}
!1096 = !DILocation(line: 135, column: 2, scope: !1047)
!1097 = !DILocation(line: 136, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 136, column: 6)
!1099 = !DILocation(line: 136, column: 6, scope: !1047)
!1100 = !DILocation(line: 137, column: 20, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 136, column: 10)
!1102 = !DILocation(line: 137, column: 17, scope: !1101)
!1103 = !DILocation(line: 138, column: 21, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 138, column: 7)
!1105 = !DILocation(line: 138, column: 24, scope: !1104)
!1106 = !DILocation(line: 138, column: 7, scope: !1104)
!1107 = !DILocation(line: 138, column: 7, scope: !1101)
!1108 = !DILocation(line: 139, column: 11, scope: !1104)
!1109 = !DILocation(line: 139, column: 4, scope: !1104)
!1110 = !DILocation(line: 140, column: 2, scope: !1101)
!1111 = !DILocation(line: 142, column: 2, scope: !1047)
!1112 = !DILocation(line: 143, column: 1, scope: !1047)
!1113 = distinct !DISubprogram(name: "atomic_long_sub", scope: !515, file: !515, line: 3396, type: !1114, scopeLine: 3397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !519, !518}
!1116 = !{!1117, !1118}
!1117 = !DILocalVariable(name: "i", arg: 1, scope: !1113, file: !515, line: 3396, type: !519)
!1118 = !DILocalVariable(name: "v", arg: 2, scope: !1113, file: !515, line: 3396, type: !518)
!1119 = !DILocation(line: 3396, column: 22, scope: !1113)
!1120 = !DILocation(line: 3396, column: 40, scope: !1113)
!1121 = !DILocation(line: 3398, column: 31, scope: !1113)
!1122 = !DILocation(line: 3398, column: 2, scope: !1113)
!1123 = !DILocation(line: 3399, column: 22, scope: !1113)
!1124 = !DILocation(line: 3399, column: 25, scope: !1113)
!1125 = !DILocation(line: 3399, column: 2, scope: !1113)
!1126 = !DILocation(line: 3400, column: 1, scope: !1113)
!1127 = distinct !DISubprogram(name: "gen_pool_dma_alloc", scope: !3, file: !3, line: 341, type: !1128, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1132)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!102, !156, !328, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !101, line: 149, baseType: !130)
!1132 = !{!1133, !1134, !1135}
!1133 = !DILocalVariable(name: "pool", arg: 1, scope: !1127, file: !3, line: 341, type: !156)
!1134 = !DILocalVariable(name: "size", arg: 2, scope: !1127, file: !3, line: 341, type: !328)
!1135 = !DILocalVariable(name: "dma", arg: 3, scope: !1127, file: !3, line: 341, type: !1130)
!1136 = !DILocation(line: 341, column: 43, scope: !1127)
!1137 = !DILocation(line: 341, column: 56, scope: !1127)
!1138 = !DILocation(line: 341, column: 74, scope: !1127)
!1139 = !DILocation(line: 343, column: 33, scope: !1127)
!1140 = !DILocation(line: 343, column: 39, scope: !1127)
!1141 = !DILocation(line: 343, column: 45, scope: !1127)
!1142 = !DILocation(line: 343, column: 50, scope: !1127)
!1143 = !DILocation(line: 343, column: 56, scope: !1127)
!1144 = !DILocation(line: 343, column: 62, scope: !1127)
!1145 = !DILocation(line: 343, column: 68, scope: !1127)
!1146 = !DILocation(line: 343, column: 9, scope: !1127)
!1147 = !DILocation(line: 343, column: 2, scope: !1127)
!1148 = distinct !DISubprogram(name: "gen_pool_dma_alloc_algo", scope: !3, file: !3, line: 362, type: !1149, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!102, !156, !328, !1130, !203, !102}
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157}
!1152 = !DILocalVariable(name: "pool", arg: 1, scope: !1148, file: !3, line: 362, type: !156)
!1153 = !DILocalVariable(name: "size", arg: 2, scope: !1148, file: !3, line: 362, type: !328)
!1154 = !DILocalVariable(name: "dma", arg: 3, scope: !1148, file: !3, line: 363, type: !1130)
!1155 = !DILocalVariable(name: "algo", arg: 4, scope: !1148, file: !3, line: 363, type: !203)
!1156 = !DILocalVariable(name: "data", arg: 5, scope: !1148, file: !3, line: 363, type: !102)
!1157 = !DILocalVariable(name: "vaddr", scope: !1148, file: !3, line: 365, type: !135)
!1158 = !DILocation(line: 362, column: 48, scope: !1148)
!1159 = !DILocation(line: 362, column: 61, scope: !1148)
!1160 = !DILocation(line: 363, column: 15, scope: !1148)
!1161 = !DILocation(line: 363, column: 35, scope: !1148)
!1162 = !DILocation(line: 363, column: 47, scope: !1148)
!1163 = !DILocation(line: 365, column: 2, scope: !1148)
!1164 = !DILocation(line: 365, column: 16, scope: !1148)
!1165 = !DILocation(line: 367, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 367, column: 6)
!1167 = !DILocation(line: 367, column: 6, scope: !1148)
!1168 = !DILocation(line: 368, column: 3, scope: !1166)
!1169 = !DILocation(line: 370, column: 30, scope: !1148)
!1170 = !DILocation(line: 370, column: 36, scope: !1148)
!1171 = !DILocation(line: 370, column: 42, scope: !1148)
!1172 = !DILocation(line: 370, column: 48, scope: !1148)
!1173 = !DILocation(line: 370, column: 10, scope: !1148)
!1174 = !DILocation(line: 370, column: 8, scope: !1148)
!1175 = !DILocation(line: 371, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 371, column: 6)
!1177 = !DILocation(line: 371, column: 6, scope: !1148)
!1178 = !DILocation(line: 372, column: 3, scope: !1176)
!1179 = !DILocation(line: 374, column: 6, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 374, column: 6)
!1181 = !DILocation(line: 374, column: 6, scope: !1148)
!1182 = !DILocation(line: 375, column: 32, scope: !1180)
!1183 = !DILocation(line: 375, column: 38, scope: !1180)
!1184 = !DILocation(line: 375, column: 10, scope: !1180)
!1185 = !DILocation(line: 375, column: 4, scope: !1180)
!1186 = !DILocation(line: 375, column: 8, scope: !1180)
!1187 = !DILocation(line: 375, column: 3, scope: !1180)
!1188 = !DILocation(line: 377, column: 17, scope: !1148)
!1189 = !DILocation(line: 377, column: 9, scope: !1148)
!1190 = !DILocation(line: 377, column: 2, scope: !1148)
!1191 = !DILocation(line: 378, column: 1, scope: !1148)
!1192 = distinct !DISubprogram(name: "gen_pool_alloc_algo", scope: !113, file: !113, line: 135, type: !1193, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!135, !156, !328, !203, !102}
!1195 = !{!1196, !1197, !1198, !1199}
!1196 = !DILocalVariable(name: "pool", arg: 1, scope: !1192, file: !113, line: 135, type: !156)
!1197 = !DILocalVariable(name: "size", arg: 2, scope: !1192, file: !113, line: 136, type: !328)
!1198 = !DILocalVariable(name: "algo", arg: 3, scope: !1192, file: !113, line: 136, type: !203)
!1199 = !DILocalVariable(name: "data", arg: 4, scope: !1192, file: !113, line: 136, type: !102)
!1200 = !DILocation(line: 135, column: 66, scope: !1192)
!1201 = !DILocation(line: 136, column: 10, scope: !1192)
!1202 = !DILocation(line: 136, column: 31, scope: !1192)
!1203 = !DILocation(line: 136, column: 43, scope: !1192)
!1204 = !DILocation(line: 138, column: 35, scope: !1192)
!1205 = !DILocation(line: 138, column: 41, scope: !1192)
!1206 = !DILocation(line: 138, column: 47, scope: !1192)
!1207 = !DILocation(line: 138, column: 53, scope: !1192)
!1208 = !DILocation(line: 138, column: 9, scope: !1192)
!1209 = !DILocation(line: 138, column: 2, scope: !1192)
!1210 = distinct !DISubprogram(name: "gen_pool_dma_alloc_align", scope: !3, file: !3, line: 395, type: !1211, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!102, !156, !328, !1130, !51}
!1213 = !{!1214, !1215, !1216, !1217, !1218}
!1214 = !DILocalVariable(name: "pool", arg: 1, scope: !1210, file: !3, line: 395, type: !156)
!1215 = !DILocalVariable(name: "size", arg: 2, scope: !1210, file: !3, line: 395, type: !328)
!1216 = !DILocalVariable(name: "dma", arg: 3, scope: !1210, file: !3, line: 396, type: !1130)
!1217 = !DILocalVariable(name: "align", arg: 4, scope: !1210, file: !3, line: 396, type: !51)
!1218 = !DILocalVariable(name: "data", scope: !1210, file: !3, line: 398, type: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genpool_data_align", file: !113, line: 85, size: 32, elements: !1220)
!1220 = !{!1221}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1219, file: !113, line: 86, baseType: !51, size: 32)
!1222 = !DILocation(line: 395, column: 49, scope: !1210)
!1223 = !DILocation(line: 395, column: 62, scope: !1210)
!1224 = !DILocation(line: 396, column: 15, scope: !1210)
!1225 = !DILocation(line: 396, column: 24, scope: !1210)
!1226 = !DILocation(line: 398, column: 2, scope: !1210)
!1227 = !DILocation(line: 398, column: 28, scope: !1210)
!1228 = !DILocation(line: 398, column: 35, scope: !1210)
!1229 = !DILocation(line: 398, column: 46, scope: !1210)
!1230 = !DILocation(line: 400, column: 33, scope: !1210)
!1231 = !DILocation(line: 400, column: 39, scope: !1210)
!1232 = !DILocation(line: 400, column: 45, scope: !1210)
!1233 = !DILocation(line: 400, column: 9, scope: !1210)
!1234 = !DILocation(line: 402, column: 1, scope: !1210)
!1235 = !DILocation(line: 400, column: 2, scope: !1210)
!1236 = distinct !DISubprogram(name: "gen_pool_first_fit_align", scope: !3, file: !3, line: 666, type: !205, scopeLine: 669, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1247, !1248, !1249}
!1238 = !DILocalVariable(name: "map", arg: 1, scope: !1236, file: !3, line: 666, type: !152)
!1239 = !DILocalVariable(name: "size", arg: 2, scope: !1236, file: !3, line: 666, type: !135)
!1240 = !DILocalVariable(name: "start", arg: 3, scope: !1236, file: !3, line: 667, type: !135)
!1241 = !DILocalVariable(name: "nr", arg: 4, scope: !1236, file: !3, line: 667, type: !7)
!1242 = !DILocalVariable(name: "data", arg: 5, scope: !1236, file: !3, line: 667, type: !102)
!1243 = !DILocalVariable(name: "pool", arg: 6, scope: !1236, file: !3, line: 668, type: !156)
!1244 = !DILocalVariable(name: "start_addr", arg: 7, scope: !1236, file: !3, line: 668, type: !135)
!1245 = !DILocalVariable(name: "alignment", scope: !1236, file: !3, line: 670, type: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1247 = !DILocalVariable(name: "align_mask", scope: !1236, file: !3, line: 671, type: !135)
!1248 = !DILocalVariable(name: "align_off", scope: !1236, file: !3, line: 671, type: !135)
!1249 = !DILocalVariable(name: "order", scope: !1236, file: !3, line: 672, type: !51)
!1250 = !DILocation(line: 666, column: 55, scope: !1236)
!1251 = !DILocation(line: 666, column: 74, scope: !1236)
!1252 = !DILocation(line: 667, column: 17, scope: !1236)
!1253 = !DILocation(line: 667, column: 37, scope: !1236)
!1254 = !DILocation(line: 667, column: 47, scope: !1236)
!1255 = !DILocation(line: 668, column: 20, scope: !1236)
!1256 = !DILocation(line: 668, column: 40, scope: !1236)
!1257 = !DILocation(line: 670, column: 2, scope: !1236)
!1258 = !DILocation(line: 670, column: 29, scope: !1236)
!1259 = !DILocation(line: 671, column: 2, scope: !1236)
!1260 = !DILocation(line: 671, column: 16, scope: !1236)
!1261 = !DILocation(line: 671, column: 28, scope: !1236)
!1262 = !DILocation(line: 672, column: 2, scope: !1236)
!1263 = !DILocation(line: 672, column: 6, scope: !1236)
!1264 = !DILocation(line: 674, column: 14, scope: !1236)
!1265 = !DILocation(line: 674, column: 12, scope: !1236)
!1266 = !DILocation(line: 675, column: 10, scope: !1236)
!1267 = !DILocation(line: 675, column: 16, scope: !1236)
!1268 = !DILocation(line: 675, column: 8, scope: !1236)
!1269 = !DILocation(line: 676, column: 17, scope: !1236)
!1270 = !DILocation(line: 676, column: 28, scope: !1236)
!1271 = !DILocation(line: 676, column: 44, scope: !1236)
!1272 = !DILocation(line: 676, column: 41, scope: !1236)
!1273 = !DILocation(line: 676, column: 34, scope: !1236)
!1274 = !DILocation(line: 676, column: 51, scope: !1236)
!1275 = !DILocation(line: 676, column: 59, scope: !1236)
!1276 = !DILocation(line: 676, column: 56, scope: !1236)
!1277 = !DILocation(line: 676, column: 66, scope: !1236)
!1278 = !DILocation(line: 676, column: 13, scope: !1236)
!1279 = !DILocation(line: 677, column: 15, scope: !1236)
!1280 = !DILocation(line: 677, column: 29, scope: !1236)
!1281 = !DILocation(line: 677, column: 40, scope: !1236)
!1282 = !DILocation(line: 677, column: 46, scope: !1236)
!1283 = !DILocation(line: 677, column: 28, scope: !1236)
!1284 = !DILocation(line: 677, column: 26, scope: !1236)
!1285 = !DILocation(line: 677, column: 55, scope: !1236)
!1286 = !DILocation(line: 677, column: 52, scope: !1236)
!1287 = !DILocation(line: 677, column: 12, scope: !1236)
!1288 = !DILocation(line: 679, column: 40, scope: !1236)
!1289 = !DILocation(line: 679, column: 45, scope: !1236)
!1290 = !DILocation(line: 679, column: 51, scope: !1236)
!1291 = !DILocation(line: 679, column: 58, scope: !1236)
!1292 = !DILocation(line: 680, column: 12, scope: !1236)
!1293 = !DILocation(line: 680, column: 24, scope: !1236)
!1294 = !DILocation(line: 679, column: 9, scope: !1236)
!1295 = !DILocation(line: 681, column: 1, scope: !1236)
!1296 = !DILocation(line: 679, column: 2, scope: !1236)
!1297 = distinct !DISubprogram(name: "gen_pool_dma_zalloc", scope: !3, file: !3, line: 419, type: !1128, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1298)
!1298 = !{!1299, !1300, !1301}
!1299 = !DILocalVariable(name: "pool", arg: 1, scope: !1297, file: !3, line: 419, type: !156)
!1300 = !DILocalVariable(name: "size", arg: 2, scope: !1297, file: !3, line: 419, type: !328)
!1301 = !DILocalVariable(name: "dma", arg: 3, scope: !1297, file: !3, line: 419, type: !1130)
!1302 = !DILocation(line: 419, column: 44, scope: !1297)
!1303 = !DILocation(line: 419, column: 57, scope: !1297)
!1304 = !DILocation(line: 419, column: 75, scope: !1297)
!1305 = !DILocation(line: 421, column: 34, scope: !1297)
!1306 = !DILocation(line: 421, column: 40, scope: !1297)
!1307 = !DILocation(line: 421, column: 46, scope: !1297)
!1308 = !DILocation(line: 421, column: 51, scope: !1297)
!1309 = !DILocation(line: 421, column: 57, scope: !1297)
!1310 = !DILocation(line: 421, column: 63, scope: !1297)
!1311 = !DILocation(line: 421, column: 69, scope: !1297)
!1312 = !DILocation(line: 421, column: 9, scope: !1297)
!1313 = !DILocation(line: 421, column: 2, scope: !1297)
!1314 = distinct !DISubprogram(name: "gen_pool_dma_zalloc_algo", scope: !3, file: !3, line: 440, type: !1149, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321}
!1316 = !DILocalVariable(name: "pool", arg: 1, scope: !1314, file: !3, line: 440, type: !156)
!1317 = !DILocalVariable(name: "size", arg: 2, scope: !1314, file: !3, line: 440, type: !328)
!1318 = !DILocalVariable(name: "dma", arg: 3, scope: !1314, file: !3, line: 441, type: !1130)
!1319 = !DILocalVariable(name: "algo", arg: 4, scope: !1314, file: !3, line: 441, type: !203)
!1320 = !DILocalVariable(name: "data", arg: 5, scope: !1314, file: !3, line: 441, type: !102)
!1321 = !DILocalVariable(name: "vaddr", scope: !1314, file: !3, line: 443, type: !102)
!1322 = !DILocation(line: 440, column: 49, scope: !1314)
!1323 = !DILocation(line: 440, column: 62, scope: !1314)
!1324 = !DILocation(line: 441, column: 15, scope: !1314)
!1325 = !DILocation(line: 441, column: 35, scope: !1314)
!1326 = !DILocation(line: 441, column: 47, scope: !1314)
!1327 = !DILocation(line: 443, column: 2, scope: !1314)
!1328 = !DILocation(line: 443, column: 8, scope: !1314)
!1329 = !DILocation(line: 443, column: 40, scope: !1314)
!1330 = !DILocation(line: 443, column: 46, scope: !1314)
!1331 = !DILocation(line: 443, column: 52, scope: !1314)
!1332 = !DILocation(line: 443, column: 57, scope: !1314)
!1333 = !DILocation(line: 443, column: 63, scope: !1314)
!1334 = !DILocation(line: 443, column: 16, scope: !1314)
!1335 = !DILocation(line: 445, column: 6, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 445, column: 6)
!1337 = !DILocation(line: 445, column: 6, scope: !1314)
!1338 = !DILocation(line: 446, column: 10, scope: !1336)
!1339 = !DILocation(line: 446, column: 20, scope: !1336)
!1340 = !DILocation(line: 446, column: 3, scope: !1336)
!1341 = !DILocation(line: 448, column: 9, scope: !1314)
!1342 = !DILocation(line: 449, column: 1, scope: !1314)
!1343 = !DILocation(line: 448, column: 2, scope: !1314)
!1344 = distinct !DISubprogram(name: "gen_pool_dma_zalloc_align", scope: !3, file: !3, line: 466, type: !1211, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350}
!1346 = !DILocalVariable(name: "pool", arg: 1, scope: !1344, file: !3, line: 466, type: !156)
!1347 = !DILocalVariable(name: "size", arg: 2, scope: !1344, file: !3, line: 466, type: !328)
!1348 = !DILocalVariable(name: "dma", arg: 3, scope: !1344, file: !3, line: 467, type: !1130)
!1349 = !DILocalVariable(name: "align", arg: 4, scope: !1344, file: !3, line: 467, type: !51)
!1350 = !DILocalVariable(name: "data", scope: !1344, file: !3, line: 469, type: !1219)
!1351 = !DILocation(line: 466, column: 50, scope: !1344)
!1352 = !DILocation(line: 466, column: 63, scope: !1344)
!1353 = !DILocation(line: 467, column: 15, scope: !1344)
!1354 = !DILocation(line: 467, column: 24, scope: !1344)
!1355 = !DILocation(line: 469, column: 2, scope: !1344)
!1356 = !DILocation(line: 469, column: 28, scope: !1344)
!1357 = !DILocation(line: 469, column: 35, scope: !1344)
!1358 = !DILocation(line: 469, column: 46, scope: !1344)
!1359 = !DILocation(line: 471, column: 34, scope: !1344)
!1360 = !DILocation(line: 471, column: 40, scope: !1344)
!1361 = !DILocation(line: 471, column: 46, scope: !1344)
!1362 = !DILocation(line: 471, column: 9, scope: !1344)
!1363 = !DILocation(line: 473, column: 1, scope: !1344)
!1364 = !DILocation(line: 471, column: 2, scope: !1344)
!1365 = distinct !DISubprogram(name: "gen_pool_free_owner", scope: !3, file: !3, line: 487, type: !1366, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !156, !135, !328, !800}
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1381}
!1369 = !DILocalVariable(name: "pool", arg: 1, scope: !1365, file: !3, line: 487, type: !156)
!1370 = !DILocalVariable(name: "addr", arg: 2, scope: !1365, file: !3, line: 487, type: !135)
!1371 = !DILocalVariable(name: "size", arg: 3, scope: !1365, file: !3, line: 487, type: !328)
!1372 = !DILocalVariable(name: "owner", arg: 4, scope: !1365, file: !3, line: 488, type: !800)
!1373 = !DILocalVariable(name: "chunk", scope: !1365, file: !3, line: 490, type: !111)
!1374 = !DILocalVariable(name: "order", scope: !1365, file: !3, line: 491, type: !51)
!1375 = !DILocalVariable(name: "start_bit", scope: !1365, file: !3, line: 492, type: !135)
!1376 = !DILocalVariable(name: "nbits", scope: !1365, file: !3, line: 492, type: !135)
!1377 = !DILocalVariable(name: "remain", scope: !1365, file: !3, line: 492, type: !135)
!1378 = !DILocalVariable(name: "__mptr", scope: !1379, file: !3, line: 503, type: !102)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 503, column: 2)
!1380 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 503, column: 2)
!1381 = !DILocalVariable(name: "__mptr", scope: !1382, file: !3, line: 503, type: !102)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 503, column: 2)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 503, column: 2)
!1384 = !DILocation(line: 487, column: 43, scope: !1365)
!1385 = !DILocation(line: 487, column: 63, scope: !1365)
!1386 = !DILocation(line: 487, column: 76, scope: !1365)
!1387 = !DILocation(line: 488, column: 10, scope: !1365)
!1388 = !DILocation(line: 490, column: 2, scope: !1365)
!1389 = !DILocation(line: 490, column: 25, scope: !1365)
!1390 = !DILocation(line: 491, column: 2, scope: !1365)
!1391 = !DILocation(line: 491, column: 6, scope: !1365)
!1392 = !DILocation(line: 491, column: 14, scope: !1365)
!1393 = !DILocation(line: 491, column: 20, scope: !1365)
!1394 = !DILocation(line: 492, column: 2, scope: !1365)
!1395 = !DILocation(line: 492, column: 16, scope: !1365)
!1396 = !DILocation(line: 492, column: 27, scope: !1365)
!1397 = !DILocation(line: 492, column: 34, scope: !1365)
!1398 = !DILocation(line: 498, column: 6, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 498, column: 6)
!1400 = !DILocation(line: 498, column: 6, scope: !1365)
!1401 = !DILocation(line: 499, column: 4, scope: !1399)
!1402 = !DILocation(line: 499, column: 10, scope: !1399)
!1403 = !DILocation(line: 499, column: 3, scope: !1399)
!1404 = !DILocation(line: 501, column: 11, scope: !1365)
!1405 = !DILocation(line: 501, column: 26, scope: !1365)
!1406 = !DILocation(line: 501, column: 23, scope: !1365)
!1407 = !DILocation(line: 501, column: 16, scope: !1365)
!1408 = !DILocation(line: 501, column: 33, scope: !1365)
!1409 = !DILocation(line: 501, column: 41, scope: !1365)
!1410 = !DILocation(line: 501, column: 38, scope: !1365)
!1411 = !DILocation(line: 501, column: 8, scope: !1365)
!1412 = !DILocation(line: 502, column: 2, scope: !1365)
!1413 = !DILocation(line: 503, column: 2, scope: !1379)
!1414 = !DILocation(line: 503, column: 2, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 503, column: 2)
!1416 = !DILocation(line: 503, column: 2, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 503, column: 2)
!1418 = !DILocation(line: 503, column: 2, scope: !1380)
!1419 = !DILocation(line: 503, column: 2, scope: !1383)
!1420 = !DILocation(line: 504, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 504, column: 7)
!1422 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 503, column: 60)
!1423 = !DILocation(line: 504, column: 15, scope: !1421)
!1424 = !DILocation(line: 504, column: 22, scope: !1421)
!1425 = !DILocation(line: 504, column: 12, scope: !1421)
!1426 = !DILocation(line: 504, column: 33, scope: !1421)
!1427 = !DILocation(line: 504, column: 36, scope: !1421)
!1428 = !DILocation(line: 504, column: 44, scope: !1421)
!1429 = !DILocation(line: 504, column: 51, scope: !1421)
!1430 = !DILocation(line: 504, column: 41, scope: !1421)
!1431 = !DILocation(line: 504, column: 7, scope: !1422)
!1432 = !DILocation(line: 505, column: 4, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 504, column: 61)
!1434 = !DILocation(line: 505, column: 4, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 505, column: 4)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 505, column: 4)
!1437 = !DILocation(line: 505, column: 4, scope: !1436)
!1438 = !DILocation(line: 505, column: 4, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 505, column: 4)
!1440 = !DILocation(line: 505, column: 4, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 505, column: 4)
!1442 = !DILocation(line: 505, column: 4, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 505, column: 4)
!1444 = !{i64 2153127147, i64 2153127176, i64 2153127222, i64 2153127280, i64 2153127334, i64 2153127388, i64 2153127443, i64 2153127474}
!1445 = !DILocation(line: 506, column: 17, scope: !1433)
!1446 = !DILocation(line: 506, column: 24, scope: !1433)
!1447 = !DILocation(line: 506, column: 31, scope: !1433)
!1448 = !DILocation(line: 506, column: 22, scope: !1433)
!1449 = !DILocation(line: 506, column: 46, scope: !1433)
!1450 = !DILocation(line: 506, column: 43, scope: !1433)
!1451 = !DILocation(line: 506, column: 14, scope: !1433)
!1452 = !DILocation(line: 507, column: 29, scope: !1433)
!1453 = !DILocation(line: 507, column: 36, scope: !1433)
!1454 = !DILocation(line: 507, column: 42, scope: !1433)
!1455 = !DILocation(line: 507, column: 53, scope: !1433)
!1456 = !DILocation(line: 507, column: 13, scope: !1433)
!1457 = !DILocation(line: 507, column: 11, scope: !1433)
!1458 = !DILocation(line: 508, column: 4, scope: !1433)
!1459 = !DILocation(line: 508, column: 4, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 508, column: 4)
!1461 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 508, column: 4)
!1462 = !DILocation(line: 508, column: 4, scope: !1461)
!1463 = !DILocation(line: 508, column: 4, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 508, column: 4)
!1465 = !DILocation(line: 508, column: 4, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 508, column: 4)
!1467 = !DILocation(line: 508, column: 4, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 508, column: 4)
!1469 = !{i64 2153128112, i64 2153128141, i64 2153128187, i64 2153128245, i64 2153128299, i64 2153128353, i64 2153128408, i64 2153128439}
!1470 = !DILocation(line: 509, column: 11, scope: !1433)
!1471 = !DILocation(line: 509, column: 20, scope: !1433)
!1472 = !DILocation(line: 509, column: 17, scope: !1433)
!1473 = !DILocation(line: 509, column: 9, scope: !1433)
!1474 = !DILocation(line: 510, column: 20, scope: !1433)
!1475 = !DILocation(line: 510, column: 27, scope: !1433)
!1476 = !DILocation(line: 510, column: 34, scope: !1433)
!1477 = !DILocation(line: 510, column: 4, scope: !1433)
!1478 = !DILocation(line: 511, column: 8, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 511, column: 8)
!1480 = !DILocation(line: 511, column: 8, scope: !1433)
!1481 = !DILocation(line: 512, column: 14, scope: !1479)
!1482 = !DILocation(line: 512, column: 21, scope: !1479)
!1483 = !DILocation(line: 512, column: 6, scope: !1479)
!1484 = !DILocation(line: 512, column: 12, scope: !1479)
!1485 = !DILocation(line: 512, column: 5, scope: !1479)
!1486 = !DILocation(line: 513, column: 4, scope: !1433)
!1487 = !DILocation(line: 514, column: 4, scope: !1433)
!1488 = !DILocation(line: 516, column: 2, scope: !1422)
!1489 = !DILocation(line: 503, column: 2, scope: !1382)
!1490 = !DILocation(line: 503, column: 2, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 503, column: 2)
!1492 = !DILocation(line: 503, column: 2, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 503, column: 2)
!1494 = distinct !{!1494, !1418, !1495, !618, !619}
!1495 = !DILocation(line: 516, column: 2, scope: !1380)
!1496 = !DILocation(line: 517, column: 2, scope: !1365)
!1497 = !DILocation(line: 518, column: 2, scope: !1365)
!1498 = !DILocation(line: 518, column: 2, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 518, column: 2)
!1500 = !DILocation(line: 518, column: 2, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 518, column: 2)
!1502 = !DILocation(line: 518, column: 2, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 518, column: 2)
!1504 = !{i64 2153128987, i64 2153129016, i64 2153129062, i64 2153129120, i64 2153129174, i64 2153129228, i64 2153129283, i64 2153129314}
!1505 = !DILocation(line: 519, column: 1, scope: !1365)
!1506 = distinct !DISubprogram(name: "atomic_long_add", scope: !515, file: !515, line: 3230, type: !1114, scopeLine: 3231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1507)
!1507 = !{!1508, !1509}
!1508 = !DILocalVariable(name: "i", arg: 1, scope: !1506, file: !515, line: 3230, type: !519)
!1509 = !DILocalVariable(name: "v", arg: 2, scope: !1506, file: !515, line: 3230, type: !518)
!1510 = !DILocation(line: 3230, column: 22, scope: !1506)
!1511 = !DILocation(line: 3230, column: 40, scope: !1506)
!1512 = !DILocation(line: 3232, column: 31, scope: !1506)
!1513 = !DILocation(line: 3232, column: 2, scope: !1506)
!1514 = !DILocation(line: 3233, column: 22, scope: !1506)
!1515 = !DILocation(line: 3233, column: 25, scope: !1506)
!1516 = !DILocation(line: 3233, column: 2, scope: !1506)
!1517 = !DILocation(line: 3234, column: 1, scope: !1506)
!1518 = distinct !DISubprogram(name: "gen_pool_for_each_chunk", scope: !3, file: !3, line: 531, type: !1519, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1524)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !156, !1521, !102}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !156, !111, !102}
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1532}
!1525 = !DILocalVariable(name: "pool", arg: 1, scope: !1518, file: !3, line: 531, type: !156)
!1526 = !DILocalVariable(name: "func", arg: 2, scope: !1518, file: !3, line: 532, type: !1521)
!1527 = !DILocalVariable(name: "data", arg: 3, scope: !1518, file: !3, line: 533, type: !102)
!1528 = !DILocalVariable(name: "chunk", scope: !1518, file: !3, line: 535, type: !111)
!1529 = !DILocalVariable(name: "__mptr", scope: !1530, file: !3, line: 538, type: !102)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 538, column: 2)
!1531 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 538, column: 2)
!1532 = !DILocalVariable(name: "__mptr", scope: !1533, file: !3, line: 538, type: !102)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 538, column: 2)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 538, column: 2)
!1535 = !DILocation(line: 531, column: 47, scope: !1518)
!1536 = !DILocation(line: 532, column: 9, scope: !1518)
!1537 = !DILocation(line: 533, column: 8, scope: !1518)
!1538 = !DILocation(line: 535, column: 2, scope: !1518)
!1539 = !DILocation(line: 535, column: 25, scope: !1518)
!1540 = !DILocation(line: 537, column: 2, scope: !1518)
!1541 = !DILocation(line: 538, column: 2, scope: !1530)
!1542 = !DILocation(line: 538, column: 2, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 538, column: 2)
!1544 = !DILocation(line: 538, column: 2, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 538, column: 2)
!1546 = !DILocation(line: 538, column: 2, scope: !1531)
!1547 = !DILocation(line: 538, column: 2, scope: !1534)
!1548 = !DILocation(line: 539, column: 3, scope: !1534)
!1549 = !DILocation(line: 539, column: 8, scope: !1534)
!1550 = !DILocation(line: 539, column: 14, scope: !1534)
!1551 = !DILocation(line: 539, column: 21, scope: !1534)
!1552 = !DILocation(line: 538, column: 2, scope: !1533)
!1553 = !DILocation(line: 538, column: 2, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 538, column: 2)
!1555 = !DILocation(line: 538, column: 2, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 538, column: 2)
!1557 = distinct !{!1557, !1546, !1558, !618, !619}
!1558 = !DILocation(line: 539, column: 25, scope: !1531)
!1559 = !DILocation(line: 540, column: 2, scope: !1518)
!1560 = !DILocation(line: 541, column: 1, scope: !1518)
!1561 = distinct !DISubprogram(name: "gen_pool_has_addr", scope: !3, file: !3, line: 553, type: !1562, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1566)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1564, !156, !135, !328}
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !101, line: 35, baseType: !1565)
!1565 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1576}
!1567 = !DILocalVariable(name: "pool", arg: 1, scope: !1561, file: !3, line: 553, type: !156)
!1568 = !DILocalVariable(name: "start", arg: 2, scope: !1561, file: !3, line: 553, type: !135)
!1569 = !DILocalVariable(name: "size", arg: 3, scope: !1561, file: !3, line: 554, type: !328)
!1570 = !DILocalVariable(name: "found", scope: !1561, file: !3, line: 556, type: !1564)
!1571 = !DILocalVariable(name: "end", scope: !1561, file: !3, line: 557, type: !135)
!1572 = !DILocalVariable(name: "chunk", scope: !1561, file: !3, line: 558, type: !111)
!1573 = !DILocalVariable(name: "__mptr", scope: !1574, file: !3, line: 561, type: !102)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 561, column: 2)
!1575 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 561, column: 2)
!1576 = !DILocalVariable(name: "__mptr", scope: !1577, file: !3, line: 561, type: !102)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 561, column: 2)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 561, column: 2)
!1579 = !DILocation(line: 553, column: 41, scope: !1561)
!1580 = !DILocation(line: 553, column: 61, scope: !1561)
!1581 = !DILocation(line: 554, column: 11, scope: !1561)
!1582 = !DILocation(line: 556, column: 2, scope: !1561)
!1583 = !DILocation(line: 556, column: 7, scope: !1561)
!1584 = !DILocation(line: 557, column: 2, scope: !1561)
!1585 = !DILocation(line: 557, column: 16, scope: !1561)
!1586 = !DILocation(line: 557, column: 22, scope: !1561)
!1587 = !DILocation(line: 557, column: 30, scope: !1561)
!1588 = !DILocation(line: 557, column: 28, scope: !1561)
!1589 = !DILocation(line: 557, column: 35, scope: !1561)
!1590 = !DILocation(line: 558, column: 2, scope: !1561)
!1591 = !DILocation(line: 558, column: 25, scope: !1561)
!1592 = !DILocation(line: 560, column: 2, scope: !1561)
!1593 = !DILocation(line: 561, column: 2, scope: !1574)
!1594 = !DILocation(line: 561, column: 2, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 561, column: 2)
!1596 = !DILocation(line: 561, column: 2, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 561, column: 2)
!1598 = !DILocation(line: 561, column: 2, scope: !1575)
!1599 = !DILocation(line: 561, column: 2, scope: !1578)
!1600 = !DILocation(line: 562, column: 7, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 562, column: 7)
!1602 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 561, column: 62)
!1603 = !DILocation(line: 562, column: 16, scope: !1601)
!1604 = !DILocation(line: 562, column: 23, scope: !1601)
!1605 = !DILocation(line: 562, column: 13, scope: !1601)
!1606 = !DILocation(line: 562, column: 34, scope: !1601)
!1607 = !DILocation(line: 562, column: 37, scope: !1601)
!1608 = !DILocation(line: 562, column: 46, scope: !1601)
!1609 = !DILocation(line: 562, column: 53, scope: !1601)
!1610 = !DILocation(line: 562, column: 43, scope: !1601)
!1611 = !DILocation(line: 562, column: 7, scope: !1602)
!1612 = !DILocation(line: 563, column: 8, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 563, column: 8)
!1614 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 562, column: 63)
!1615 = !DILocation(line: 563, column: 15, scope: !1613)
!1616 = !DILocation(line: 563, column: 22, scope: !1613)
!1617 = !DILocation(line: 563, column: 12, scope: !1613)
!1618 = !DILocation(line: 563, column: 8, scope: !1614)
!1619 = !DILocation(line: 564, column: 11, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 563, column: 32)
!1621 = !DILocation(line: 565, column: 5, scope: !1620)
!1622 = !DILocation(line: 567, column: 3, scope: !1614)
!1623 = !DILocation(line: 568, column: 2, scope: !1602)
!1624 = !DILocation(line: 561, column: 2, scope: !1577)
!1625 = !DILocation(line: 561, column: 2, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 561, column: 2)
!1627 = !DILocation(line: 561, column: 2, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 561, column: 2)
!1629 = distinct !{!1629, !1598, !1630, !618, !619}
!1630 = !DILocation(line: 568, column: 2, scope: !1575)
!1631 = !DILocation(line: 569, column: 2, scope: !1561)
!1632 = !DILocation(line: 570, column: 9, scope: !1561)
!1633 = !{i8 0, i8 2}
!1634 = !{}
!1635 = !DILocation(line: 571, column: 1, scope: !1561)
!1636 = !DILocation(line: 570, column: 2, scope: !1561)
!1637 = distinct !DISubprogram(name: "gen_pool_avail", scope: !3, file: !3, line: 580, type: !1638, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!328, !156}
!1640 = !{!1641, !1642, !1643, !1644, !1647}
!1641 = !DILocalVariable(name: "pool", arg: 1, scope: !1637, file: !3, line: 580, type: !156)
!1642 = !DILocalVariable(name: "chunk", scope: !1637, file: !3, line: 582, type: !111)
!1643 = !DILocalVariable(name: "avail", scope: !1637, file: !3, line: 583, type: !328)
!1644 = !DILocalVariable(name: "__mptr", scope: !1645, file: !3, line: 586, type: !102)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 586, column: 2)
!1646 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 586, column: 2)
!1647 = !DILocalVariable(name: "__mptr", scope: !1648, file: !3, line: 586, type: !102)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 586, column: 2)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 586, column: 2)
!1650 = !DILocation(line: 580, column: 40, scope: !1637)
!1651 = !DILocation(line: 582, column: 2, scope: !1637)
!1652 = !DILocation(line: 582, column: 25, scope: !1637)
!1653 = !DILocation(line: 583, column: 2, scope: !1637)
!1654 = !DILocation(line: 583, column: 9, scope: !1637)
!1655 = !DILocation(line: 585, column: 2, scope: !1637)
!1656 = !DILocation(line: 586, column: 2, scope: !1645)
!1657 = !DILocation(line: 586, column: 2, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 586, column: 2)
!1659 = !DILocation(line: 586, column: 2, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 586, column: 2)
!1661 = !DILocation(line: 586, column: 2, scope: !1646)
!1662 = !DILocation(line: 586, column: 2, scope: !1649)
!1663 = !DILocation(line: 587, column: 30, scope: !1649)
!1664 = !DILocation(line: 587, column: 37, scope: !1649)
!1665 = !DILocation(line: 587, column: 12, scope: !1649)
!1666 = !DILocation(line: 587, column: 9, scope: !1649)
!1667 = !DILocation(line: 587, column: 3, scope: !1649)
!1668 = !DILocation(line: 586, column: 2, scope: !1648)
!1669 = !DILocation(line: 586, column: 2, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 586, column: 2)
!1671 = !DILocation(line: 586, column: 2, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 586, column: 2)
!1673 = distinct !{!1673, !1661, !1674, !618, !619}
!1674 = !DILocation(line: 587, column: 42, scope: !1646)
!1675 = !DILocation(line: 588, column: 2, scope: !1637)
!1676 = !DILocation(line: 589, column: 9, scope: !1637)
!1677 = !DILocation(line: 590, column: 1, scope: !1637)
!1678 = !DILocation(line: 589, column: 2, scope: !1637)
!1679 = distinct !DISubprogram(name: "gen_pool_size", scope: !3, file: !3, line: 599, type: !1638, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1680)
!1680 = !{!1681, !1682, !1683, !1684, !1687}
!1681 = !DILocalVariable(name: "pool", arg: 1, scope: !1679, file: !3, line: 599, type: !156)
!1682 = !DILocalVariable(name: "chunk", scope: !1679, file: !3, line: 601, type: !111)
!1683 = !DILocalVariable(name: "size", scope: !1679, file: !3, line: 602, type: !328)
!1684 = !DILocalVariable(name: "__mptr", scope: !1685, file: !3, line: 605, type: !102)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 605, column: 2)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 605, column: 2)
!1687 = !DILocalVariable(name: "__mptr", scope: !1688, file: !3, line: 605, type: !102)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 605, column: 2)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 605, column: 2)
!1690 = !DILocation(line: 599, column: 39, scope: !1679)
!1691 = !DILocation(line: 601, column: 2, scope: !1679)
!1692 = !DILocation(line: 601, column: 25, scope: !1679)
!1693 = !DILocation(line: 602, column: 2, scope: !1679)
!1694 = !DILocation(line: 602, column: 9, scope: !1679)
!1695 = !DILocation(line: 604, column: 2, scope: !1679)
!1696 = !DILocation(line: 605, column: 2, scope: !1685)
!1697 = !DILocation(line: 605, column: 2, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 605, column: 2)
!1699 = !DILocation(line: 605, column: 2, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 605, column: 2)
!1701 = !DILocation(line: 605, column: 2, scope: !1686)
!1702 = !DILocation(line: 605, column: 2, scope: !1689)
!1703 = !DILocation(line: 606, column: 22, scope: !1689)
!1704 = !DILocation(line: 606, column: 11, scope: !1689)
!1705 = !DILocation(line: 606, column: 8, scope: !1689)
!1706 = !DILocation(line: 606, column: 3, scope: !1689)
!1707 = !DILocation(line: 605, column: 2, scope: !1688)
!1708 = !DILocation(line: 605, column: 2, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 605, column: 2)
!1710 = !DILocation(line: 605, column: 2, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 605, column: 2)
!1712 = distinct !{!1712, !1701, !1713, !618, !619}
!1713 = !DILocation(line: 606, column: 27, scope: !1686)
!1714 = !DILocation(line: 607, column: 2, scope: !1679)
!1715 = !DILocation(line: 608, column: 9, scope: !1679)
!1716 = !DILocation(line: 609, column: 1, scope: !1679)
!1717 = !DILocation(line: 608, column: 2, scope: !1679)
!1718 = distinct !DISubprogram(name: "gen_pool_set_algo", scope: !3, file: !3, line: 622, type: !1719, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1721)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !156, !203, !102}
!1721 = !{!1722, !1723, !1724}
!1722 = !DILocalVariable(name: "pool", arg: 1, scope: !1718, file: !3, line: 622, type: !156)
!1723 = !DILocalVariable(name: "algo", arg: 2, scope: !1718, file: !3, line: 622, type: !203)
!1724 = !DILocalVariable(name: "data", arg: 3, scope: !1718, file: !3, line: 622, type: !102)
!1725 = !DILocation(line: 622, column: 41, scope: !1718)
!1726 = !DILocation(line: 622, column: 62, scope: !1718)
!1727 = !DILocation(line: 622, column: 74, scope: !1718)
!1728 = !DILocation(line: 624, column: 2, scope: !1718)
!1729 = !DILocation(line: 626, column: 15, scope: !1718)
!1730 = !DILocation(line: 626, column: 2, scope: !1718)
!1731 = !DILocation(line: 626, column: 8, scope: !1718)
!1732 = !DILocation(line: 626, column: 13, scope: !1718)
!1733 = !DILocation(line: 627, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 627, column: 6)
!1735 = !DILocation(line: 627, column: 13, scope: !1734)
!1736 = !DILocation(line: 627, column: 6, scope: !1718)
!1737 = !DILocation(line: 628, column: 3, scope: !1734)
!1738 = !DILocation(line: 628, column: 9, scope: !1734)
!1739 = !DILocation(line: 628, column: 14, scope: !1734)
!1740 = !DILocation(line: 630, column: 15, scope: !1718)
!1741 = !DILocation(line: 630, column: 2, scope: !1718)
!1742 = !DILocation(line: 630, column: 8, scope: !1718)
!1743 = !DILocation(line: 630, column: 13, scope: !1718)
!1744 = !DILocation(line: 632, column: 2, scope: !1718)
!1745 = !DILocation(line: 633, column: 1, scope: !1718)
!1746 = distinct !DISubprogram(name: "bitmap_find_next_zero_area", scope: !1747, file: !1747, line: 197, type: !1748, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1750)
!1747 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!135, !152, !135, !135, !7, !135}
!1750 = !{!1751, !1752, !1753, !1754, !1755}
!1751 = !DILocalVariable(name: "map", arg: 1, scope: !1746, file: !1747, line: 197, type: !152)
!1752 = !DILocalVariable(name: "size", arg: 2, scope: !1746, file: !1747, line: 198, type: !135)
!1753 = !DILocalVariable(name: "start", arg: 3, scope: !1746, file: !1747, line: 199, type: !135)
!1754 = !DILocalVariable(name: "nr", arg: 4, scope: !1746, file: !1747, line: 200, type: !7)
!1755 = !DILocalVariable(name: "align_mask", arg: 5, scope: !1746, file: !1747, line: 201, type: !135)
!1756 = !DILocation(line: 197, column: 43, scope: !1746)
!1757 = !DILocation(line: 198, column: 21, scope: !1746)
!1758 = !DILocation(line: 199, column: 21, scope: !1746)
!1759 = !DILocation(line: 200, column: 20, scope: !1746)
!1760 = !DILocation(line: 201, column: 21, scope: !1746)
!1761 = !DILocation(line: 203, column: 40, scope: !1746)
!1762 = !DILocation(line: 203, column: 45, scope: !1746)
!1763 = !DILocation(line: 203, column: 51, scope: !1746)
!1764 = !DILocation(line: 203, column: 58, scope: !1746)
!1765 = !DILocation(line: 204, column: 12, scope: !1746)
!1766 = !DILocation(line: 203, column: 9, scope: !1746)
!1767 = !DILocation(line: 203, column: 2, scope: !1746)
!1768 = !DISubprogram(name: "bitmap_find_next_zero_area_off", scope: !1747, file: !1747, line: 177, type: !1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!135, !152, !135, !135, !7, !135, !135}
!1771 = distinct !DISubprogram(name: "gen_pool_fixed_alloc", scope: !3, file: !3, line: 694, type: !205, scopeLine: 697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1785, !1786, !1787, !1788, !1791}
!1773 = !DILocalVariable(name: "map", arg: 1, scope: !1771, file: !3, line: 694, type: !152)
!1774 = !DILocalVariable(name: "size", arg: 2, scope: !1771, file: !3, line: 694, type: !135)
!1775 = !DILocalVariable(name: "start", arg: 3, scope: !1771, file: !3, line: 695, type: !135)
!1776 = !DILocalVariable(name: "nr", arg: 4, scope: !1771, file: !3, line: 695, type: !7)
!1777 = !DILocalVariable(name: "data", arg: 5, scope: !1771, file: !3, line: 695, type: !102)
!1778 = !DILocalVariable(name: "pool", arg: 6, scope: !1771, file: !3, line: 696, type: !156)
!1779 = !DILocalVariable(name: "start_addr", arg: 7, scope: !1771, file: !3, line: 696, type: !135)
!1780 = !DILocalVariable(name: "fixed_data", scope: !1771, file: !3, line: 698, type: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genpool_data_fixed", file: !113, line: 92, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1782, file: !113, line: 93, baseType: !135, size: 64)
!1785 = !DILocalVariable(name: "order", scope: !1771, file: !3, line: 699, type: !51)
!1786 = !DILocalVariable(name: "offset_bit", scope: !1771, file: !3, line: 700, type: !135)
!1787 = !DILocalVariable(name: "start_bit", scope: !1771, file: !3, line: 701, type: !135)
!1788 = !DILocalVariable(name: "__ret_warn_on", scope: !1789, file: !3, line: 706, type: !51)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 706, column: 6)
!1790 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 706, column: 6)
!1791 = !DILocalVariable(name: "__flags", scope: !1792, file: !3, line: 706, type: !51)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 706, column: 6)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 706, column: 6)
!1794 = !DILocation(line: 694, column: 51, scope: !1771)
!1795 = !DILocation(line: 694, column: 70, scope: !1771)
!1796 = !DILocation(line: 695, column: 17, scope: !1771)
!1797 = !DILocation(line: 695, column: 37, scope: !1771)
!1798 = !DILocation(line: 695, column: 47, scope: !1771)
!1799 = !DILocation(line: 696, column: 20, scope: !1771)
!1800 = !DILocation(line: 696, column: 40, scope: !1771)
!1801 = !DILocation(line: 698, column: 2, scope: !1771)
!1802 = !DILocation(line: 698, column: 29, scope: !1771)
!1803 = !DILocation(line: 699, column: 2, scope: !1771)
!1804 = !DILocation(line: 699, column: 6, scope: !1771)
!1805 = !DILocation(line: 700, column: 2, scope: !1771)
!1806 = !DILocation(line: 700, column: 16, scope: !1771)
!1807 = !DILocation(line: 701, column: 2, scope: !1771)
!1808 = !DILocation(line: 701, column: 16, scope: !1771)
!1809 = !DILocation(line: 703, column: 15, scope: !1771)
!1810 = !DILocation(line: 703, column: 13, scope: !1771)
!1811 = !DILocation(line: 704, column: 10, scope: !1771)
!1812 = !DILocation(line: 704, column: 16, scope: !1771)
!1813 = !DILocation(line: 704, column: 8, scope: !1771)
!1814 = !DILocation(line: 705, column: 15, scope: !1771)
!1815 = !DILocation(line: 705, column: 27, scope: !1771)
!1816 = !DILocation(line: 705, column: 37, scope: !1771)
!1817 = !DILocation(line: 705, column: 34, scope: !1771)
!1818 = !DILocation(line: 705, column: 13, scope: !1771)
!1819 = !DILocation(line: 706, column: 6, scope: !1789)
!1820 = !DILocation(line: 706, column: 6, scope: !1793)
!1821 = !DILocation(line: 706, column: 6, scope: !1792)
!1822 = !DILocation(line: 706, column: 6, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 706, column: 6)
!1824 = !DILocation(line: 706, column: 6, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 706, column: 6)
!1826 = !{i64 2153298685, i64 2153298714, i64 2153298760, i64 2153298818, i64 2153298872, i64 2153298926, i64 2153298981, i64 2153299012, i64 2153299320, i64 2153299326, i64 2153299373, i64 2153299396, i64 2153299422}
!1827 = !DILocation(line: 706, column: 6, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 706, column: 6)
!1829 = !DILocation(line: 706, column: 6, scope: !1790)
!1830 = !DILocation(line: 706, column: 6, scope: !1771)
!1831 = !DILocation(line: 707, column: 10, scope: !1790)
!1832 = !DILocation(line: 707, column: 3, scope: !1790)
!1833 = !DILocation(line: 709, column: 41, scope: !1771)
!1834 = !DILocation(line: 709, column: 46, scope: !1771)
!1835 = !DILocation(line: 710, column: 4, scope: !1771)
!1836 = !DILocation(line: 710, column: 12, scope: !1771)
!1837 = !DILocation(line: 710, column: 10, scope: !1771)
!1838 = !DILocation(line: 710, column: 24, scope: !1771)
!1839 = !DILocation(line: 709, column: 14, scope: !1771)
!1840 = !DILocation(line: 709, column: 12, scope: !1771)
!1841 = !DILocation(line: 711, column: 6, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 711, column: 6)
!1843 = !DILocation(line: 711, column: 19, scope: !1842)
!1844 = !DILocation(line: 711, column: 16, scope: !1842)
!1845 = !DILocation(line: 711, column: 6, scope: !1771)
!1846 = !DILocation(line: 712, column: 15, scope: !1842)
!1847 = !DILocation(line: 712, column: 13, scope: !1842)
!1848 = !DILocation(line: 712, column: 3, scope: !1842)
!1849 = !DILocation(line: 713, column: 9, scope: !1771)
!1850 = !DILocation(line: 713, column: 2, scope: !1771)
!1851 = !DILocation(line: 714, column: 1, scope: !1771)
!1852 = distinct !DISubprogram(name: "gen_pool_first_fit_order_align", scope: !3, file: !3, line: 729, type: !205, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861}
!1854 = !DILocalVariable(name: "map", arg: 1, scope: !1852, file: !3, line: 729, type: !152)
!1855 = !DILocalVariable(name: "size", arg: 2, scope: !1852, file: !3, line: 730, type: !135)
!1856 = !DILocalVariable(name: "start", arg: 3, scope: !1852, file: !3, line: 730, type: !135)
!1857 = !DILocalVariable(name: "nr", arg: 4, scope: !1852, file: !3, line: 731, type: !7)
!1858 = !DILocalVariable(name: "data", arg: 5, scope: !1852, file: !3, line: 731, type: !102)
!1859 = !DILocalVariable(name: "pool", arg: 6, scope: !1852, file: !3, line: 731, type: !156)
!1860 = !DILocalVariable(name: "start_addr", arg: 7, scope: !1852, file: !3, line: 732, type: !135)
!1861 = !DILocalVariable(name: "align_mask", scope: !1852, file: !3, line: 734, type: !135)
!1862 = !DILocation(line: 729, column: 61, scope: !1852)
!1863 = !DILocation(line: 730, column: 17, scope: !1852)
!1864 = !DILocation(line: 730, column: 37, scope: !1852)
!1865 = !DILocation(line: 731, column: 16, scope: !1852)
!1866 = !DILocation(line: 731, column: 26, scope: !1852)
!1867 = !DILocation(line: 731, column: 49, scope: !1852)
!1868 = !DILocation(line: 732, column: 17, scope: !1852)
!1869 = !DILocation(line: 734, column: 2, scope: !1852)
!1870 = !DILocation(line: 734, column: 16, scope: !1852)
!1871 = !DILocation(line: 734, column: 29, scope: !1852)
!1872 = !DILocation(line: 734, column: 52, scope: !1852)
!1873 = !DILocation(line: 736, column: 36, scope: !1852)
!1874 = !DILocation(line: 736, column: 41, scope: !1852)
!1875 = !DILocation(line: 736, column: 47, scope: !1852)
!1876 = !DILocation(line: 736, column: 54, scope: !1852)
!1877 = !DILocation(line: 736, column: 58, scope: !1852)
!1878 = !DILocation(line: 736, column: 9, scope: !1852)
!1879 = !DILocation(line: 737, column: 1, scope: !1852)
!1880 = !DILocation(line: 736, column: 2, scope: !1852)
!1881 = distinct !DISubprogram(name: "__ilog2_u32", scope: !1882, file: !1882, line: 22, type: !1883, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1887)
!1882 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!51, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !124, line: 21, baseType: !1886)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !126, line: 27, baseType: !7)
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "n", arg: 1, scope: !1881, file: !1882, line: 22, type: !1885)
!1889 = !DILocation(line: 22, column: 21, scope: !1881)
!1890 = !DILocation(line: 24, column: 13, scope: !1881)
!1891 = !DILocation(line: 24, column: 9, scope: !1881)
!1892 = !DILocation(line: 24, column: 16, scope: !1881)
!1893 = !DILocation(line: 24, column: 2, scope: !1881)
!1894 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !1882, file: !1882, line: 55, type: !1895, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!135, !135}
!1897 = !{!1898}
!1898 = !DILocalVariable(name: "n", arg: 1, scope: !1894, file: !1882, line: 55, type: !135)
!1899 = !DILocation(line: 55, column: 50, scope: !1894)
!1900 = !DILocation(line: 57, column: 25, scope: !1894)
!1901 = !DILocation(line: 57, column: 27, scope: !1894)
!1902 = !DILocation(line: 57, column: 16, scope: !1894)
!1903 = !DILocation(line: 57, column: 13, scope: !1894)
!1904 = !DILocation(line: 57, column: 2, scope: !1894)
!1905 = distinct !DISubprogram(name: "gen_pool_best_fit", scope: !3, file: !3, line: 754, type: !205, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1906)
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917}
!1907 = !DILocalVariable(name: "map", arg: 1, scope: !1905, file: !3, line: 754, type: !152)
!1908 = !DILocalVariable(name: "size", arg: 2, scope: !1905, file: !3, line: 754, type: !135)
!1909 = !DILocalVariable(name: "start", arg: 3, scope: !1905, file: !3, line: 755, type: !135)
!1910 = !DILocalVariable(name: "nr", arg: 4, scope: !1905, file: !3, line: 755, type: !7)
!1911 = !DILocalVariable(name: "data", arg: 5, scope: !1905, file: !3, line: 755, type: !102)
!1912 = !DILocalVariable(name: "pool", arg: 6, scope: !1905, file: !3, line: 756, type: !156)
!1913 = !DILocalVariable(name: "start_addr", arg: 7, scope: !1905, file: !3, line: 756, type: !135)
!1914 = !DILocalVariable(name: "start_bit", scope: !1905, file: !3, line: 758, type: !135)
!1915 = !DILocalVariable(name: "len", scope: !1905, file: !3, line: 759, type: !135)
!1916 = !DILocalVariable(name: "index", scope: !1905, file: !3, line: 760, type: !135)
!1917 = !DILocalVariable(name: "next_bit", scope: !1918, file: !3, line: 765, type: !135)
!1918 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 764, column: 23)
!1919 = !DILocation(line: 754, column: 48, scope: !1905)
!1920 = !DILocation(line: 754, column: 67, scope: !1905)
!1921 = !DILocation(line: 755, column: 17, scope: !1905)
!1922 = !DILocation(line: 755, column: 37, scope: !1905)
!1923 = !DILocation(line: 755, column: 47, scope: !1905)
!1924 = !DILocation(line: 756, column: 20, scope: !1905)
!1925 = !DILocation(line: 756, column: 40, scope: !1905)
!1926 = !DILocation(line: 758, column: 2, scope: !1905)
!1927 = !DILocation(line: 758, column: 16, scope: !1905)
!1928 = !DILocation(line: 758, column: 28, scope: !1905)
!1929 = !DILocation(line: 759, column: 2, scope: !1905)
!1930 = !DILocation(line: 759, column: 16, scope: !1905)
!1931 = !DILocation(line: 759, column: 22, scope: !1905)
!1932 = !DILocation(line: 759, column: 27, scope: !1905)
!1933 = !DILocation(line: 760, column: 2, scope: !1905)
!1934 = !DILocation(line: 760, column: 16, scope: !1905)
!1935 = !DILocation(line: 762, column: 37, scope: !1905)
!1936 = !DILocation(line: 762, column: 42, scope: !1905)
!1937 = !DILocation(line: 762, column: 48, scope: !1905)
!1938 = !DILocation(line: 762, column: 55, scope: !1905)
!1939 = !DILocation(line: 762, column: 10, scope: !1905)
!1940 = !DILocation(line: 762, column: 8, scope: !1905)
!1941 = !DILocation(line: 764, column: 2, scope: !1905)
!1942 = !DILocation(line: 764, column: 9, scope: !1905)
!1943 = !DILocation(line: 764, column: 17, scope: !1905)
!1944 = !DILocation(line: 764, column: 15, scope: !1905)
!1945 = !DILocation(line: 765, column: 3, scope: !1918)
!1946 = !DILocation(line: 765, column: 17, scope: !1918)
!1947 = !DILocation(line: 765, column: 42, scope: !1918)
!1948 = !DILocation(line: 765, column: 47, scope: !1918)
!1949 = !DILocation(line: 765, column: 53, scope: !1918)
!1950 = !DILocation(line: 765, column: 61, scope: !1918)
!1951 = !DILocation(line: 765, column: 59, scope: !1918)
!1952 = !DILocation(line: 765, column: 28, scope: !1918)
!1953 = !DILocation(line: 766, column: 8, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 766, column: 7)
!1955 = !DILocation(line: 766, column: 19, scope: !1954)
!1956 = !DILocation(line: 766, column: 17, scope: !1954)
!1957 = !DILocation(line: 766, column: 28, scope: !1954)
!1958 = !DILocation(line: 766, column: 26, scope: !1954)
!1959 = !DILocation(line: 766, column: 7, scope: !1918)
!1960 = !DILocation(line: 767, column: 10, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 766, column: 33)
!1962 = !DILocation(line: 767, column: 21, scope: !1961)
!1963 = !DILocation(line: 767, column: 19, scope: !1961)
!1964 = !DILocation(line: 767, column: 8, scope: !1961)
!1965 = !DILocation(line: 768, column: 16, scope: !1961)
!1966 = !DILocation(line: 768, column: 14, scope: !1961)
!1967 = !DILocation(line: 769, column: 8, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 769, column: 8)
!1969 = !DILocation(line: 769, column: 15, scope: !1968)
!1970 = !DILocation(line: 769, column: 12, scope: !1968)
!1971 = !DILocation(line: 769, column: 8, scope: !1961)
!1972 = !DILocation(line: 770, column: 12, scope: !1968)
!1973 = !DILocation(line: 770, column: 5, scope: !1968)
!1974 = !DILocation(line: 771, column: 3, scope: !1961)
!1975 = !DILocation(line: 772, column: 38, scope: !1918)
!1976 = !DILocation(line: 772, column: 43, scope: !1918)
!1977 = !DILocation(line: 773, column: 10, scope: !1918)
!1978 = !DILocation(line: 773, column: 19, scope: !1918)
!1979 = !DILocation(line: 773, column: 24, scope: !1918)
!1980 = !DILocation(line: 772, column: 11, scope: !1918)
!1981 = !DILocation(line: 772, column: 9, scope: !1918)
!1982 = !DILocation(line: 774, column: 2, scope: !1905)
!1983 = distinct !{!1983, !1941, !1982, !618, !619}
!1984 = !DILocation(line: 776, column: 9, scope: !1905)
!1985 = !DILocation(line: 776, column: 2, scope: !1905)
!1986 = !DILocation(line: 777, column: 1, scope: !1905)
!1987 = distinct !DISubprogram(name: "find_next_bit", scope: !758, file: !758, line: 54, type: !1988, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!135, !761, !135, !135}
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DILocalVariable(name: "addr", arg: 1, scope: !1987, file: !758, line: 54, type: !761)
!1992 = !DILocalVariable(name: "size", arg: 2, scope: !1987, file: !758, line: 54, type: !135)
!1993 = !DILocalVariable(name: "offset", arg: 3, scope: !1987, file: !758, line: 55, type: !135)
!1994 = !DILocalVariable(name: "val", scope: !1995, file: !758, line: 58, type: !135)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !758, line: 57, column: 31)
!1996 = distinct !DILexicalBlock(scope: !1987, file: !758, line: 57, column: 6)
!1997 = !DILocation(line: 54, column: 50, scope: !1987)
!1998 = !DILocation(line: 54, column: 70, scope: !1987)
!1999 = !DILocation(line: 55, column: 22, scope: !1987)
!2000 = !DILocation(line: 57, column: 6, scope: !1996)
!2001 = !DILocation(line: 57, column: 6, scope: !1987)
!2002 = !DILocation(line: 58, column: 3, scope: !1995)
!2003 = !DILocation(line: 58, column: 17, scope: !1995)
!2004 = !DILocation(line: 60, column: 7, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1995, file: !758, line: 60, column: 7)
!2006 = !DILocation(line: 60, column: 7, scope: !1995)
!2007 = !DILocation(line: 61, column: 11, scope: !2005)
!2008 = !DILocation(line: 61, column: 4, scope: !2005)
!2009 = !DILocation(line: 63, column: 10, scope: !1995)
!2010 = !DILocation(line: 63, column: 9, scope: !1995)
!2011 = !DILocation(line: 63, column: 17, scope: !1995)
!2012 = !DILocation(line: 63, column: 15, scope: !1995)
!2013 = !DILocation(line: 63, column: 7, scope: !1995)
!2014 = !DILocation(line: 64, column: 10, scope: !1995)
!2015 = !DILocation(line: 64, column: 16, scope: !1995)
!2016 = !DILocation(line: 64, column: 29, scope: !1995)
!2017 = !DILocation(line: 64, column: 3, scope: !1995)
!2018 = !DILocation(line: 65, column: 2, scope: !1996)
!2019 = !DILocation(line: 67, column: 24, scope: !1987)
!2020 = !DILocation(line: 67, column: 30, scope: !1987)
!2021 = !DILocation(line: 67, column: 36, scope: !1987)
!2022 = !DILocation(line: 67, column: 9, scope: !1987)
!2023 = !DILocation(line: 67, column: 2, scope: !1987)
!2024 = !DILocation(line: 68, column: 1, scope: !1987)
!2025 = distinct !DISubprogram(name: "gen_pool_get", scope: !3, file: !3, line: 806, type: !2026, scopeLine: 807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3564)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!156, !2028, !209}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !31, line: 705, size: 5824, elements: !2030)
!2030 = !{!2031, !2621, !2622, !2625, !2626, !2679, !3147, !3148, !3149, !3150, !3151, !3158, !3328, !3341, !3351, !3355, !3357, !3358, !3359, !3363, !3370, !3371, !3374, !3377, !3503, !3504, !3505, !3508, !3509, !3510, !3511, !3541, !3542, !3543, !3546, !3549, !3558, !3559, !3560, !3561, !3562, !3563}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2029, file: !31, line: 706, baseType: !2032, size: 512)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2033, line: 64, size: 512, elements: !2034)
!2033 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!2034 = !{!2035, !2036, !2037, !2039, !2086, !2491, !2606, !2616, !2617, !2618, !2619, !2620}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2032, file: !2033, line: 65, baseType: !209, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2032, file: !2033, line: 66, baseType: !107, size: 128, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2032, file: !2033, line: 67, baseType: !2038, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2032, file: !2033, line: 68, baseType: !2040, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2033, line: 168, size: 768, elements: !2042)
!2042 = !{!2043, !2044, !2045, !2046}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2041, file: !2033, line: 169, baseType: !107, size: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2041, file: !2033, line: 170, baseType: !160, size: 32, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2041, file: !2033, line: 171, baseType: !2032, size: 512, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2041, file: !2033, line: 172, baseType: !2047, size: 64, offset: 704)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2033, line: 133, size: 192, elements: !2050)
!2050 = !{!2051, !2058, !2063}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2049, file: !2033, line: 134, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2053)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!51, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2032)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2049, file: !2033, line: 135, baseType: !2059, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2060)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!209, !2056}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2049, file: !2033, line: 136, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2065)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!51, !2056, !2068}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2033, line: 125, size: 20736, elements: !2070)
!2070 = !{!2071, !2076, !2080, !2081, !2085}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2069, file: !2033, line: 126, baseType: !2072, size: 192)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2073, size: 192, elements: !2074)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!2074 = !{!2075}
!2075 = !DISubrange(count: 3)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2069, file: !2033, line: 127, baseType: !2077, size: 4096, offset: 192)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2073, size: 4096, elements: !2078)
!2078 = !{!2079}
!2079 = !DISubrange(count: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2069, file: !2033, line: 128, baseType: !51, size: 32, offset: 4288)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2069, file: !2033, line: 129, baseType: !2082, size: 16384, offset: 4320)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 16384, elements: !2083)
!2083 = !{!2084}
!2084 = !DISubrange(count: 2048)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2069, file: !2033, line: 130, baseType: !51, size: 32, offset: 20704)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2032, file: !2033, line: 69, baseType: !2087, size: 64, offset: 320)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2033, line: 116, size: 384, elements: !2090)
!2090 = !{!2091, !2095, !2118, !2437, !2468, !2472}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2089, file: !2033, line: 117, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{null, !2038}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2089, file: !2033, line: 118, baseType: !2096, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2099, line: 254, size: 128, elements: !2100)
!2099 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!2100 = !{!2101, !2114}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2098, file: !2099, line: 255, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!2105, !2038, !2108, !2073}
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !101, line: 66, baseType: !2106)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !330, line: 73, baseType: !2107)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !330, line: 15, baseType: !519)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2099, line: 30, size: 128, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2109, file: !2099, line: 31, baseType: !209, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2109, file: !2099, line: 32, baseType: !2113, size: 16, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !101, line: 24, baseType: !198)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2098, file: !2099, line: 256, baseType: !2115, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!2105, !2038, !2108, !209, !328}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2089, file: !2033, line: 119, baseType: !2119, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2099, line: 84, size: 320, elements: !2123)
!2123 = !{!2124, !2125, !2129, !2433, !2435}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2122, file: !2099, line: 85, baseType: !209, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2122, file: !2099, line: 86, baseType: !2126, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!2113, !2038, !2108, !51}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2122, file: !2099, line: 88, baseType: !2130, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!2113, !2038, !2133, !51}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2099, line: 175, size: 512, elements: !2135)
!2135 = !{!2136, !2137, !2138, !2139, !2146, !2155, !2156}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2134, file: !2099, line: 176, baseType: !2109, size: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2134, file: !2099, line: 177, baseType: !328, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2134, file: !2099, line: 178, baseType: !102, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2134, file: !2099, line: 179, baseType: !2140, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !2145, line: 32, flags: DIFlagFwdDecl)
!2145 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2134, file: !2099, line: 180, baseType: !2147, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!2105, !2150, !2038, !2133, !2073, !2153, !328}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !2152, line: 537, flags: DIFlagFwdDecl)
!2152 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !101, line: 52, baseType: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !330, line: 88, baseType: !127)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2134, file: !2099, line: 182, baseType: !2147, size: 64, offset: 384)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2134, file: !2099, line: 184, baseType: !2157, size: 64, offset: 448)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!51, !2150, !2038, !2133, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !2145, line: 625, size: 1344, elements: !2162)
!2162 = !{!2163, !2180, !2384, !2390, !2397, !2398, !2403, !2404, !2416, !2417, !2420, !2424, !2425, !2426, !2427, !2428, !2431}
!2163 = !DIDerivedType(tag: DW_TAG_member, scope: !2161, file: !2145, line: 628, baseType: !2164, size: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2161, file: !2145, line: 628, size: 128, elements: !2165)
!2165 = !{!2166, !2171}
!2166 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !2145, line: 629, baseType: !2167, size: 128)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2164, file: !2145, line: 629, size: 128, elements: !2168)
!2168 = !{!2169, !2170}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2167, file: !2145, line: 631, baseType: !135, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2167, file: !2145, line: 632, baseType: !135, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2164, file: !2145, line: 635, baseType: !2172, size: 128, align: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !101, line: 232, size: 128, align: 64, elements: !2173)
!2173 = !{!2174, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2172, file: !101, line: 233, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2172, file: !101, line: 234, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !2175}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2161, file: !2145, line: 639, baseType: !2181, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !2145, line: 733, size: 10240, elements: !2183)
!2183 = !{!2184, !2383}
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !2145, line: 734, baseType: !2185, size: 10240)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2145, line: 734, size: 10240, elements: !2186)
!2186 = !{!2187, !2191, !2204, !2208, !2209, !2210, !2211, !2212, !2213, !2221, !2222, !2223, !2229, !2230, !2231, !2232, !2233, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2279, !2293, !2296, !2349, !2350, !2351, !2354, !2357, !2358, !2361, !2362, !2363, !2370, !2371}
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !2145, line: 739, baseType: !2188, size: 512, align: 512)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !2145, line: 739, size: 512, align: 512, elements: !2189)
!2189 = !{!2190}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2188, file: !2145, line: 747, baseType: !180, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2185, file: !2145, line: 750, baseType: !2192, size: 128, offset: 512)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2193, line: 218, size: 128, elements: !2194)
!2193 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2194 = !{!2195, !2202, !2203}
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !2193, line: 219, baseType: !2196, size: 32)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2192, file: !2193, line: 219, size: 32, elements: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2196, file: !2193, line: 220, baseType: !160, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2196, file: !2193, line: 221, baseType: !2200)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2193, line: 197, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2193, line: 197, elements: !1634)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2192, file: !2193, line: 223, baseType: !7, size: 32, offset: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2192, file: !2193, line: 224, baseType: !102, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2185, file: !2145, line: 752, baseType: !2205, size: 64, offset: 640)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!135, !2150, !135, !135, !135, !135}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2185, file: !2145, line: 756, baseType: !135, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2185, file: !2145, line: 757, baseType: !135, size: 64, offset: 768)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2185, file: !2145, line: 760, baseType: !135, size: 64, offset: 832)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2185, file: !2145, line: 761, baseType: !135, size: 64, offset: 896)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2185, file: !2145, line: 763, baseType: !135, size: 64, offset: 960)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2185, file: !2145, line: 764, baseType: !2214, size: 64, offset: 1024)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2152, line: 299, baseType: !2216)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2152, line: 299, size: 64, elements: !2217)
!2217 = !{!2218}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2216, file: !2152, line: 299, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2220, line: 18, baseType: !135)
!2220 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2185, file: !2145, line: 773, baseType: !180, size: 32, offset: 1088)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2185, file: !2145, line: 785, baseType: !180, size: 32, offset: 1120)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2185, file: !2145, line: 795, baseType: !2224, size: 64, offset: 1152)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !2145, line: 726, size: 128, elements: !2226)
!2226 = !{!2227, !2228}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2225, file: !2145, line: 727, baseType: !130, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2225, file: !2145, line: 728, baseType: !51, size: 32, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2185, file: !2145, line: 801, baseType: !135, size: 64, offset: 1216)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2185, file: !2145, line: 804, baseType: !117, size: 64, offset: 1280)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2185, file: !2145, line: 806, baseType: !51, size: 32, offset: 1344)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2185, file: !2145, line: 808, baseType: !160, size: 32, offset: 1376)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2185, file: !2145, line: 823, baseType: !2234, size: 320, offset: 1408)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !2235, line: 48, size: 320, elements: !2236)
!2235 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!2236 = !{!2237, !2238, !2239, !2244, !2245}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2234, file: !2235, line: 49, baseType: !117, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2234, file: !2235, line: 55, baseType: !117, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !2234, file: !2235, line: 57, baseType: !2240, size: 32, offset: 128)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !2241, line: 15, size: 32, elements: !2242)
!2241 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!2242 = !{!2243}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2240, file: !2241, line: 20, baseType: !180, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2234, file: !2235, line: 59, baseType: !382, size: 32, offset: 160)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2234, file: !2235, line: 60, baseType: !107, size: 128, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2185, file: !2145, line: 825, baseType: !107, size: 128, offset: 1728)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2185, file: !2145, line: 845, baseType: !51, size: 32, offset: 1856)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2185, file: !2145, line: 849, baseType: !135, size: 64, offset: 1920)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2185, file: !2145, line: 850, baseType: !135, size: 64, offset: 1984)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2185, file: !2145, line: 852, baseType: !135, size: 64, offset: 2048)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2185, file: !2145, line: 853, baseType: !135, size: 64, offset: 2112)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2185, file: !2145, line: 854, baseType: !119, size: 64, offset: 2176)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2185, file: !2145, line: 855, baseType: !135, size: 64, offset: 2240)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2185, file: !2145, line: 856, baseType: !135, size: 64, offset: 2304)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2185, file: !2145, line: 857, baseType: !135, size: 64, offset: 2368)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2185, file: !2145, line: 858, baseType: !135, size: 64, offset: 2432)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2185, file: !2145, line: 865, baseType: !2258, size: 32, offset: 2496)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !2259, line: 69, baseType: !2260)
!2259 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !2259, line: 64, size: 32, elements: !2261)
!2261 = !{!2262}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !2260, file: !2259, line: 65, baseType: !7, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2185, file: !2145, line: 867, baseType: !160, size: 32, offset: 2528)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2185, file: !2145, line: 869, baseType: !135, size: 64, offset: 2560)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2185, file: !2145, line: 869, baseType: !135, size: 64, offset: 2624)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2185, file: !2145, line: 869, baseType: !135, size: 64, offset: 2688)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2185, file: !2145, line: 869, baseType: !135, size: 64, offset: 2752)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2185, file: !2145, line: 870, baseType: !135, size: 64, offset: 2816)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2185, file: !2145, line: 870, baseType: !135, size: 64, offset: 2880)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2185, file: !2145, line: 870, baseType: !135, size: 64, offset: 2944)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2185, file: !2145, line: 871, baseType: !135, size: 64, offset: 3008)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2185, file: !2145, line: 871, baseType: !135, size: 64, offset: 3072)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2185, file: !2145, line: 871, baseType: !135, size: 64, offset: 3136)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2185, file: !2145, line: 871, baseType: !135, size: 64, offset: 3200)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2185, file: !2145, line: 873, baseType: !2276, size: 3328, offset: 3264)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 3328, elements: !2277)
!2277 = !{!2278}
!2278 = !DISubrange(count: 52)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2185, file: !2145, line: 875, baseType: !2280, size: 1280, offset: 6592)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2281, size: 1280, elements: !2291)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2282, line: 22, size: 320, elements: !2283)
!2282 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2283 = !{!2284, !2285, !2286, !2287}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2281, file: !2282, line: 23, baseType: !382, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2281, file: !2282, line: 24, baseType: !123, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2281, file: !2282, line: 26, baseType: !107, size: 128, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2281, file: !2282, line: 28, baseType: !2288, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !124, line: 20, baseType: !2290)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !126, line: 26, baseType: !51)
!2291 = !{!2292}
!2292 = !DISubrange(count: 4)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2185, file: !2145, line: 877, baseType: !2294, size: 64, offset: 7872)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !2145, line: 877, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2185, file: !2145, line: 880, baseType: !2297, size: 1088, offset: 7936)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2298, line: 72, baseType: !2299)
!2298 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2298, line: 23, size: 1088, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2304, !2305, !2308, !2309, !2317, !2318, !2343, !2344, !2345}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2299, file: !2298, line: 28, baseType: !130, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2299, file: !2298, line: 38, baseType: !119, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2299, file: !2298, line: 40, baseType: !135, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2299, file: !2298, line: 43, baseType: !2234, size: 320, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2299, file: !2298, line: 44, baseType: !2306, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2298, line: 44, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2299, file: !2298, line: 48, baseType: !135, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2299, file: !2298, line: 59, baseType: !2310, size: 256, offset: 640)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !2311, line: 66, size: 256, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!2312 = !{!2313, !2314, !2315, !2316}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2310, file: !2311, line: 67, baseType: !117, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2310, file: !2311, line: 68, baseType: !382, size: 32, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !2310, file: !2311, line: 70, baseType: !2240, size: 32, offset: 96)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2310, file: !2311, line: 72, baseType: !107, size: 128, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2299, file: !2298, line: 60, baseType: !102, size: 64, offset: 896)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2299, file: !2298, line: 61, baseType: !2319, size: 64, offset: 960)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2321)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2322, line: 13, size: 1216, elements: !2323)
!2322 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2321, file: !2322, line: 14, baseType: !102, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2321, file: !2322, line: 15, baseType: !135, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2321, file: !2322, line: 17, baseType: !135, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2321, file: !2322, line: 17, baseType: !135, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2321, file: !2322, line: 18, baseType: !135, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2321, file: !2322, line: 18, baseType: !135, size: 64, offset: 320)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2321, file: !2322, line: 19, baseType: !792, size: 64, offset: 384)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2321, file: !2322, line: 21, baseType: !519, size: 64, offset: 448)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2321, file: !2322, line: 23, baseType: !519, size: 64, offset: 512)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2321, file: !2322, line: 24, baseType: !519, size: 64, offset: 576)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2321, file: !2322, line: 25, baseType: !519, size: 64, offset: 640)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2321, file: !2322, line: 26, baseType: !519, size: 64, offset: 704)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2321, file: !2322, line: 27, baseType: !519, size: 64, offset: 768)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2321, file: !2322, line: 28, baseType: !519, size: 64, offset: 832)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2321, file: !2322, line: 29, baseType: !519, size: 64, offset: 896)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2321, file: !2322, line: 30, baseType: !519, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2321, file: !2322, line: 31, baseType: !519, size: 64, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2321, file: !2322, line: 32, baseType: !519, size: 64, offset: 1088)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2321, file: !2322, line: 33, baseType: !519, size: 64, offset: 1152)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2299, file: !2298, line: 63, baseType: !180, size: 32, offset: 1024)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2299, file: !2298, line: 69, baseType: !196, size: 16, offset: 1056)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2299, file: !2298, line: 70, baseType: !2346, size: 16, offset: 1072)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !124, line: 18, baseType: !2347)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !126, line: 23, baseType: !2348)
!2348 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2185, file: !2145, line: 882, baseType: !135, size: 64, offset: 9024)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2185, file: !2145, line: 885, baseType: !160, size: 32, offset: 9088)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2185, file: !2145, line: 886, baseType: !2352, size: 64, offset: 9152)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !2145, line: 732, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2185, file: !2145, line: 901, baseType: !2355, size: 64, offset: 9216)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2145, line: 901, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2185, file: !2145, line: 904, baseType: !2150, size: 64, offset: 9280)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2185, file: !2145, line: 906, baseType: !2359, size: 64, offset: 9344)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !2145, line: 906, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2185, file: !2145, line: 930, baseType: !180, size: 32, offset: 9408)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2185, file: !2145, line: 933, baseType: !180, size: 32, offset: 9440)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2185, file: !2145, line: 935, baseType: !2364, size: 64, offset: 9472)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2365, line: 103, size: 64, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!2366 = !{!2367}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2364, file: !2365, line: 104, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !2365, line: 101, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2185, file: !2145, line: 940, baseType: !117, size: 64, offset: 9536)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2185, file: !2145, line: 942, baseType: !2372, size: 256, offset: 9600)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2373, line: 98, size: 256, elements: !2374)
!2373 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2374 = !{!2375, !2376, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2372, file: !2373, line: 99, baseType: !117, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2372, file: !2373, line: 100, baseType: !107, size: 128, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2372, file: !2373, line: 101, baseType: !2378, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2373, line: 21, baseType: !2379)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2182, file: !2145, line: 986, baseType: !138, offset: 10240)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2161, file: !2145, line: 640, baseType: !2385, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2152, line: 297, baseType: !2386)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2152, line: 297, size: 64, elements: !2387)
!2387 = !{!2388}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2386, file: !2152, line: 297, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2220, line: 19, baseType: !135)
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2161, file: !2145, line: 646, baseType: !2391, size: 64, offset: 256)
!2391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2161, file: !2145, line: 646, size: 64, elements: !2392)
!2392 = !{!2393, !2396}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2391, file: !2145, line: 647, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !2145, line: 542, baseType: !135)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2391, file: !2145, line: 648, baseType: !2395, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2161, file: !2145, line: 666, baseType: !51, size: 32, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2161, file: !2145, line: 667, baseType: !2399, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !2145, line: 579, size: 320, elements: !2401)
!2401 = !{!2402}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2400, file: !2145, line: 580, baseType: !2234, size: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2161, file: !2145, line: 670, baseType: !1564, size: 8, offset: 448)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2161, file: !2145, line: 681, baseType: !2405, size: 256, offset: 512)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2145, line: 678, size: 256, elements: !2406)
!2406 = !{!2407, !2415}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2405, file: !2145, line: 679, baseType: !2408, size: 192, align: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !2409, line: 5, size: 192, align: 64, elements: !2410)
!2409 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!2410 = !{!2411, !2412, !2414}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !2408, file: !2409, line: 6, baseType: !135, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !2408, file: !2409, line: 7, baseType: !2413, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !2408, file: !2409, line: 8, baseType: !2413, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2405, file: !2145, line: 680, baseType: !135, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2161, file: !2145, line: 689, baseType: !107, size: 128, offset: 768)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2161, file: !2145, line: 691, baseType: !2418, size: 64, offset: 896)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !2145, line: 691, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2161, file: !2145, line: 694, baseType: !2421, size: 64, offset: 960)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2423)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2145, line: 694, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2161, file: !2145, line: 697, baseType: !135, size: 64, offset: 1024)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2161, file: !2145, line: 699, baseType: !2150, size: 64, offset: 1088)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2161, file: !2145, line: 700, baseType: !102, size: 64, offset: 1152)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2161, file: !2145, line: 711, baseType: !117, size: 64, offset: 1216)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2161, file: !2145, line: 717, baseType: !2429, size: 64, offset: 1280)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !2145, line: 717, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2161, file: !2145, line: 722, baseType: !2432, offset: 1344)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !2145, line: 570, elements: !1634)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2122, file: !2099, line: 90, baseType: !2434, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2122, file: !2099, line: 91, baseType: !2436, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2089, file: !2033, line: 120, baseType: !2438, size: 64, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!2441, !2056}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2443)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !12, line: 39, size: 384, elements: !2444)
!2444 = !{!2445, !2446, !2450, !2454, !2460, !2464}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2443, file: !12, line: 40, baseType: !11, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2443, file: !12, line: 41, baseType: !2447, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!1564}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2443, file: !12, line: 42, baseType: !2451, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!102}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2443, file: !12, line: 43, baseType: !2455, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!792, !2458}
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !12, line: 19, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2443, file: !12, line: 44, baseType: !2461, size: 64, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!792}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2443, file: !12, line: 45, baseType: !2465, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null, !102}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2089, file: !2033, line: 121, baseType: !2469, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!792, !2056}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2089, file: !2033, line: 122, baseType: !2473, size: 64, offset: 320)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2056, !2476, !2484}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !2478, line: 23, baseType: !2479)
!2478 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2478, line: 21, size: 32, elements: !2480)
!2480 = !{!2481}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2479, file: !2478, line: 22, baseType: !2482, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !101, line: 37, baseType: !2483)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !330, line: 49, baseType: !7)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !2478, line: 28, baseType: !2486)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2478, line: 26, size: 32, elements: !2487)
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2486, file: !2478, line: 27, baseType: !2489, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !101, line: 38, baseType: !2490)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !330, line: 50, baseType: !7)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2032, file: !2033, line: 70, baseType: !2492, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2494, line: 190, size: 1152, elements: !2495)
!2494 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2495 = !{!2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2598, !2599, !2600, !2601, !2602, !2605}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2493, file: !2494, line: 191, baseType: !180, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2493, file: !2494, line: 192, baseType: !180, size: 32, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2493, file: !2494, line: 202, baseType: !2492, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2493, file: !2494, line: 203, baseType: !209, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2493, file: !2494, line: 205, baseType: !2408, size: 192, align: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2493, file: !2494, line: 207, baseType: !792, size: 64, offset: 384)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2493, file: !2494, line: 208, baseType: !7, size: 32, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_member, scope: !2493, file: !2494, line: 209, baseType: !2504, size: 256, offset: 512)
!2504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2493, file: !2494, line: 209, size: 256, elements: !2505)
!2505 = !{!2506, !2518, !2522}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2504, file: !2494, line: 210, baseType: !2507, size: 256)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2494, line: 153, size: 256, elements: !2508)
!2508 = !{!2509, !2510, !2514, !2517}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2507, file: !2494, line: 154, baseType: !135, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2507, file: !2494, line: 156, baseType: !2511, size: 64, offset: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !2409, line: 12, size: 64, elements: !2512)
!2512 = !{!2513}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2511, file: !2409, line: 13, baseType: !2413, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2507, file: !2494, line: 162, baseType: !2515, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2494, line: 162, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2507, file: !2494, line: 167, baseType: !135, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2504, file: !2494, line: 211, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2494, line: 170, size: 64, elements: !2520)
!2520 = !{!2521}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2519, file: !2494, line: 171, baseType: !2492, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2504, file: !2494, line: 212, baseType: !2523, size: 256)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2494, line: 174, size: 256, elements: !2524)
!2524 = !{!2525, !2593, !2596, !2597}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2523, file: !2494, line: 175, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2494, line: 271, size: 768, elements: !2529)
!2529 = !{!2530, !2553, !2557, !2561, !2566, !2570, !2574, !2578, !2579, !2580, !2581, !2589}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2528, file: !2494, line: 276, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!51, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2494, line: 251, size: 1216, elements: !2536)
!2536 = !{!2537, !2538, !2539, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2535, file: !2494, line: 253, baseType: !2492, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2535, file: !2494, line: 254, baseType: !2150, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2535, file: !2494, line: 255, baseType: !2540, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2542, line: 66, flags: DIFlagFwdDecl)
!2542 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2535, file: !2494, line: 256, baseType: !102, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2535, file: !2494, line: 259, baseType: !2310, size: 256, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2535, file: !2494, line: 260, baseType: !2310, size: 256, offset: 512)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2535, file: !2494, line: 261, baseType: !51, size: 32, offset: 768)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2535, file: !2494, line: 262, baseType: !107, size: 128, offset: 832)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2535, file: !2494, line: 263, baseType: !2073, size: 64, offset: 960)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2535, file: !2494, line: 265, baseType: !328, size: 64, offset: 1024)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2535, file: !2494, line: 266, baseType: !1564, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2535, file: !2494, line: 267, baseType: !1564, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2535, file: !2494, line: 268, baseType: !2421, size: 64, offset: 1152)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2528, file: !2494, line: 277, baseType: !2554, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{null, !2534}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2528, file: !2494, line: 290, baseType: !2558, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!51, !2540, !102}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2528, file: !2494, line: 292, baseType: !2562, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!102, !2540, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2528, file: !2494, line: 293, baseType: !2567, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!102, !2540, !102, !2565}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2528, file: !2494, line: 294, baseType: !2571, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !2540, !102}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2528, file: !2494, line: 296, baseType: !2575, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!2105, !2534, !2073, !328, !2153}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2528, file: !2494, line: 306, baseType: !328, size: 64, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2528, file: !2494, line: 313, baseType: !1564, size: 8, offset: 512)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2528, file: !2494, line: 314, baseType: !2575, size: 64, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2528, file: !2494, line: 317, baseType: !2582, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!2585, !2534, !2587}
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2586, line: 59, baseType: !7)
!2586 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2494, line: 31, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2528, file: !2494, line: 320, baseType: !2590, size: 64, offset: 704)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!51, !2534, !2160}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2523, file: !2494, line: 176, baseType: !2594, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2494, line: 35, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2523, file: !2494, line: 177, baseType: !2153, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2523, file: !2494, line: 178, baseType: !2492, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2493, file: !2494, line: 215, baseType: !102, size: 64, offset: 768)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2493, file: !2494, line: 221, baseType: !130, size: 64, offset: 832)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2493, file: !2494, line: 223, baseType: !198, size: 16, offset: 896)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2493, file: !2494, line: 224, baseType: !2113, size: 16, offset: 912)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2493, file: !2494, line: 225, baseType: !2603, size: 64, offset: 960)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2494, line: 36, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2493, file: !2494, line: 227, baseType: !2172, size: 128, align: 64, offset: 1024)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2032, file: !2033, line: 71, baseType: !2607, size: 32, offset: 448)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2608, line: 19, size: 32, elements: !2609)
!2608 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2607, file: !2608, line: 20, baseType: !2611, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !2612, line: 113, baseType: !2613)
!2612 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !2612, line: 111, size: 32, elements: !2614)
!2614 = !{!2615}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2613, file: !2612, line: 112, baseType: !180, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2032, file: !2033, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2032, file: !2033, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2032, file: !2033, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2032, file: !2033, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2032, file: !2033, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2029, file: !31, line: 707, baseType: !2028, size: 64, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2029, file: !31, line: 709, baseType: !2623, size: 64, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !31, line: 37, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2029, file: !31, line: 711, baseType: !209, size: 64, offset: 640)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2029, file: !31, line: 712, baseType: !2627, size: 64, offset: 704)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2629)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !31, line: 89, size: 384, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2639, !2644, !2648}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2629, file: !31, line: 90, baseType: !209, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2629, file: !31, line: 91, baseType: !2119, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2629, file: !31, line: 92, baseType: !2634, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!51, !2637, !2068}
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2029)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2629, file: !31, line: 93, baseType: !2640, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!2073, !2637, !2643, !2476, !2484}
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2629, file: !31, line: 95, baseType: !2645, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !2028}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2629, file: !31, line: 97, baseType: !2649, size: 64, offset: 320)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2651)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !43, line: 286, size: 1472, elements: !2652)
!2652 = !{!2653, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2651, file: !43, line: 287, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!51, !2028}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2651, file: !43, line: 288, baseType: !2645, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2651, file: !43, line: 289, baseType: !2654, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2651, file: !43, line: 290, baseType: !2654, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2651, file: !43, line: 291, baseType: !2654, size: 64, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2651, file: !43, line: 292, baseType: !2654, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2651, file: !43, line: 293, baseType: !2654, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2651, file: !43, line: 294, baseType: !2654, size: 64, offset: 448)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2651, file: !43, line: 295, baseType: !2654, size: 64, offset: 512)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2651, file: !43, line: 296, baseType: !2654, size: 64, offset: 576)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2651, file: !43, line: 297, baseType: !2654, size: 64, offset: 640)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2651, file: !43, line: 298, baseType: !2654, size: 64, offset: 704)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2651, file: !43, line: 299, baseType: !2654, size: 64, offset: 768)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2651, file: !43, line: 300, baseType: !2654, size: 64, offset: 832)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2651, file: !43, line: 301, baseType: !2654, size: 64, offset: 896)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2651, file: !43, line: 302, baseType: !2654, size: 64, offset: 960)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2651, file: !43, line: 303, baseType: !2654, size: 64, offset: 1024)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2651, file: !43, line: 304, baseType: !2654, size: 64, offset: 1088)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2651, file: !43, line: 305, baseType: !2654, size: 64, offset: 1152)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2651, file: !43, line: 306, baseType: !2654, size: 64, offset: 1216)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2651, file: !43, line: 307, baseType: !2654, size: 64, offset: 1280)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2651, file: !43, line: 308, baseType: !2654, size: 64, offset: 1344)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2651, file: !43, line: 309, baseType: !2654, size: 64, offset: 1408)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2029, file: !31, line: 714, baseType: !2680, size: 64, offset: 768)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2682)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2683, line: 80, size: 1344, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2684 = !{!2685, !2686, !2687, !2688, !2689, !2690, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3146}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2682, file: !2683, line: 81, baseType: !209, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2682, file: !2683, line: 82, baseType: !209, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2682, file: !2683, line: 83, baseType: !2119, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2682, file: !2683, line: 84, baseType: !2119, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2682, file: !2683, line: 85, baseType: !2119, size: 64, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2682, file: !2683, line: 87, baseType: !2691, size: 64, offset: 320)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!51, !2028, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !25, line: 96, size: 1152, elements: !2696)
!2696 = !{!2697, !2698, !2699, !3077, !3078, !3079, !3080, !3096, !3109, !3110, !3111, !3112, !3113, !3121, !3122, !3123, !3124, !3125, !3126}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2695, file: !25, line: 97, baseType: !209, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2695, file: !25, line: 98, baseType: !2680, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2695, file: !25, line: 100, baseType: !2700, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !18, line: 402, size: 9216, align: 512, elements: !2702)
!2702 = !{!2703, !2704, !2705, !2709, !2730, !2756, !2757, !2758, !2759, !2763, !2766, !2767, !2768, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2836, !2840, !2860, !2878, !2879, !2880, !2881, !2890, !2913, !2914, !2917, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2931, !2932, !3038, !3046, !3047, !3048, !3050, !3054, !3055, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3072, !3073, !3074, !3076}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2701, file: !18, line: 403, baseType: !17, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2701, file: !18, line: 406, baseType: !107, size: 128, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2701, file: !18, line: 409, baseType: !2706, size: 448, offset: 192)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 448, elements: !2707)
!2707 = !{!2708}
!2708 = !DISubrange(count: 56)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2701, file: !18, line: 417, baseType: !2710, size: 768, offset: 640)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !18, line: 45, size: 768, elements: !2711)
!2711 = !{!2712, !2713, !2714, !2715, !2718}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2710, file: !18, line: 46, baseType: !2032, size: 512)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2710, file: !18, line: 47, baseType: !2700, size: 64, offset: 512)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2710, file: !18, line: 48, baseType: !2038, size: 64, offset: 576)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2710, file: !18, line: 49, baseType: !2716, size: 64, offset: 640)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !18, line: 49, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2710, file: !18, line: 50, baseType: !2719, size: 64, offset: 704)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2721, line: 26, size: 256, elements: !2722)
!2721 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2722 = !{!2723, !2724}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2720, file: !2721, line: 27, baseType: !7, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2720, file: !2721, line: 28, baseType: !2725, size: 192, offset: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2726, line: 43, size: 192, elements: !2727)
!2726 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2725, file: !2726, line: 44, baseType: !382, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2725, file: !2726, line: 45, baseType: !107, size: 128, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !2701, file: !18, line: 418, baseType: !2731, size: 64, offset: 1408)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !18, line: 53, size: 448, elements: !2733)
!2733 = !{!2734, !2735, !2740, !2744, !2748, !2752}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2732, file: !18, line: 54, baseType: !2109, size: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2732, file: !18, line: 55, baseType: !2736, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!2105, !2731, !2739, !2073}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2732, file: !18, line: 57, baseType: !2741, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!2105, !2731, !2739, !209, !328}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2732, file: !18, line: 59, baseType: !2745, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !2700, !209}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2732, file: !18, line: 60, baseType: !2749, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!51, !2700}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2732, file: !18, line: 61, baseType: !2753, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !2700}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2701, file: !18, line: 419, baseType: !209, size: 64, offset: 1472)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !2701, file: !18, line: 420, baseType: !209, size: 64, offset: 1536)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !2701, file: !18, line: 421, baseType: !2038, size: 64, offset: 1600)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !2701, file: !18, line: 424, baseType: !2760, size: 64, offset: 1664)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !18, line: 424, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !2701, file: !18, line: 425, baseType: !2764, size: 64, offset: 1728)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !2701, file: !18, line: 426, baseType: !7, size: 32, offset: 1792)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !2701, file: !18, line: 435, baseType: !2310, size: 256, offset: 1856)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !2701, file: !18, line: 437, baseType: !2769, size: 64, offset: 2112)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2771, line: 69, size: 320, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2772 = !{!2773, !2774, !2775, !2792, !2794, !2798, !2799}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2770, file: !2771, line: 70, baseType: !209, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2770, file: !2771, line: 71, baseType: !2700, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2770, file: !2771, line: 72, baseType: !2776, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2771, line: 47, size: 256, elements: !2779)
!2779 = !{!2780, !2781, !2787, !2791}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2778, file: !2771, line: 49, baseType: !7, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2778, file: !2771, line: 51, baseType: !2782, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!51, !209, !2785}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2770)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2778, file: !2771, line: 53, baseType: !2788, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!51, !2073, !2785}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2778, file: !2771, line: 55, baseType: !2465, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2770, file: !2771, line: 73, baseType: !2793, size: 16, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2770, file: !2771, line: 74, baseType: !2795, size: 8, offset: 208)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !124, line: 16, baseType: !2796)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !126, line: 20, baseType: !2797)
!2797 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2770, file: !2771, line: 75, baseType: !188, size: 8, offset: 216)
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !2770, file: !2771, line: 76, baseType: !2800, size: 64, offset: 256)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2770, file: !2771, line: 76, size: 64, elements: !2801)
!2801 = !{!2802, !2803, !2810}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2800, file: !2771, line: 77, baseType: !102, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2800, file: !2771, line: 78, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2771, line: 86, size: 128, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2806, file: !2771, line: 87, baseType: !7, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2806, file: !2771, line: 88, baseType: !2073, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2800, file: !2771, line: 79, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2813)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2771, line: 92, size: 256, elements: !2814)
!2814 = !{!2815, !2816, !2817, !2819, !2820}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2813, file: !2771, line: 94, baseType: !7, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2813, file: !2771, line: 95, baseType: !7, size: 32, offset: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2813, file: !2771, line: 96, baseType: !2818, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2813, file: !2771, line: 97, baseType: !2776, size: 64, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2813, file: !2771, line: 98, baseType: !102, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !2701, file: !18, line: 438, baseType: !7, size: 32, offset: 2176)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !2701, file: !18, line: 441, baseType: !7, size: 32, offset: 2208)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !2701, file: !18, line: 442, baseType: !2760, size: 64, offset: 2240)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !2701, file: !18, line: 443, baseType: !2764, size: 64, offset: 2304)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !2701, file: !18, line: 444, baseType: !1564, size: 8, offset: 2368)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !2701, file: !18, line: 451, baseType: !1564, size: 8, offset: 2376)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !2701, file: !18, line: 454, baseType: !7, size: 32, offset: 2400)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2701, file: !18, line: 455, baseType: !2829, size: 64, offset: 2432)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2831, line: 23, size: 96, elements: !2832)
!2831 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2832 = !{!2833, !2834, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2830, file: !2831, line: 24, baseType: !51, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2830, file: !2831, line: 24, baseType: !51, size: 32, offset: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2830, file: !2831, line: 24, baseType: !51, size: 32, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2701, file: !18, line: 458, baseType: !2837, size: 64, offset: 2496)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!51}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2701, file: !18, line: 460, baseType: !2841, size: 4032, align: 512, offset: 2560)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2842, size: 4032, elements: !2858)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !18, line: 362, size: 576, elements: !2843)
!2843 = !{!2844, !2845, !2846}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2842, file: !18, line: 363, baseType: !102, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2842, file: !18, line: 364, baseType: !7, size: 32, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2842, file: !18, line: 367, baseType: !2847, size: 448, offset: 128)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !18, line: 319, size: 448, elements: !2848)
!2848 = !{!2849, !2850}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2847, file: !18, line: 320, baseType: !2700, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2847, file: !18, line: 321, baseType: !2851, size: 384, offset: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2852, line: 40, size: 384, elements: !2853)
!2852 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2853 = !{!2854}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2851, file: !2852, line: 41, baseType: !2855, size: 384, align: 64)
!2855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2408, size: 384, align: 64, elements: !2856)
!2856 = !{!2857}
!2857 = !DISubrange(count: 2)
!2858 = !{!2859}
!2859 = !DISubrange(count: 7)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2701, file: !18, line: 463, baseType: !2861, size: 192, offset: 6592)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2862, line: 8, size: 192, elements: !2863)
!2862 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2863 = !{!2864, !2865, !2867}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2861, file: !2862, line: 10, baseType: !7, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2861, file: !2862, line: 11, baseType: !2866, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2861, file: !2862, line: 12, baseType: !2868, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2870, line: 59, size: 48, elements: !2871)
!2870 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2877}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2869, file: !2870, line: 60, baseType: !2346, size: 16)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2869, file: !2870, line: 61, baseType: !2346, size: 16, offset: 16)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2869, file: !2870, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2869, file: !2870, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2869, file: !2870, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2869, file: !2870, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !2701, file: !18, line: 465, baseType: !135, size: 64, offset: 6784)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !2701, file: !18, line: 469, baseType: !7, size: 32, offset: 6848)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !2701, file: !18, line: 470, baseType: !107, size: 128, offset: 6912)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !2701, file: !18, line: 471, baseType: !2882, size: 64, offset: 7040)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2884, line: 33, size: 96, elements: !2885)
!2884 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2883, file: !2884, line: 37, baseType: !51, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2883, file: !2884, line: 43, baseType: !51, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2883, file: !2884, line: 45, baseType: !198, size: 16, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2883, file: !2884, line: 47, baseType: !198, size: 16, offset: 80)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !2701, file: !18, line: 476, baseType: !2891, size: 64, offset: 7104)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !18, line: 378, size: 256, elements: !2893)
!2893 = !{!2894, !2910, !2911, !2912}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2892, file: !18, line: 379, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2897, line: 204, baseType: !2898)
!2897 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2897, line: 197, size: 192, elements: !2899)
!2899 = !{!2900, !2902, !2903, !2904, !2906, !2908}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2898, file: !2897, line: 198, baseType: !2901, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2897, line: 21, baseType: !1886)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2898, file: !2897, line: 199, baseType: !190, size: 8, offset: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2898, file: !2897, line: 200, baseType: !190, size: 8, offset: 40)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2898, file: !2897, line: 201, baseType: !2905, size: 16, offset: 48)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2897, line: 17, baseType: !197)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2898, file: !2897, line: 202, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2897, line: 16, baseType: !131)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2898, file: !2897, line: 203, baseType: !2909, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2897, line: 22, baseType: !131)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2892, file: !18, line: 380, baseType: !7, size: 32, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2892, file: !18, line: 381, baseType: !2073, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2892, file: !18, line: 382, baseType: !2073, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !2701, file: !18, line: 477, baseType: !2892, size: 256, offset: 7168)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !2701, file: !18, line: 480, baseType: !2915, size: 64, offset: 7424)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !18, line: 480, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !2701, file: !18, line: 483, baseType: !2918, size: 64, offset: 7488)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !18, line: 483, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2701, file: !18, line: 488, baseType: !2073, size: 64, offset: 7552)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !2701, file: !18, line: 492, baseType: !102, size: 64, offset: 7616)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !2701, file: !18, line: 493, baseType: !7, size: 32, offset: 7680)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !2701, file: !18, line: 495, baseType: !102, size: 64, offset: 7744)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !2701, file: !18, line: 496, baseType: !7, size: 32, offset: 7808)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !2701, file: !18, line: 499, baseType: !7, size: 32, offset: 7840)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !2701, file: !18, line: 500, baseType: !2927, size: 64, offset: 7872)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2929, line: 45, baseType: !2930)
!2929 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !2701, file: !18, line: 503, baseType: !7, size: 32, offset: 7936)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !2701, file: !18, line: 504, baseType: !2933, size: 64, offset: 8000)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2936, line: 96, size: 192, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2937 = !{!2938, !2939, !2999, !3002}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2935, file: !2936, line: 97, baseType: !7, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2935, file: !2936, line: 98, baseType: !2940, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2936, line: 24, size: 3072, elements: !2942)
!2942 = !{!2943, !2945, !2946, !2947, !2948, !2962, !2963, !2964, !2965, !2983, !2984, !2985, !2996, !2997, !2998}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2941, file: !2936, line: 26, baseType: !2944, size: 128)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, elements: !2856)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2941, file: !2936, line: 27, baseType: !2944, size: 128, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2941, file: !2936, line: 28, baseType: !51, size: 32, offset: 256)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2941, file: !2936, line: 31, baseType: !160, size: 32, align: 512, offset: 512)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2941, file: !2936, line: 32, baseType: !2949, size: 960, offset: 576)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2950, line: 206, size: 960, elements: !2951)
!2950 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2951 = !{!2952, !2953, !2956, !2958, !2959, !2961}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2949, file: !2950, line: 207, baseType: !2175, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2949, file: !2950, line: 208, baseType: !2954, size: 256, offset: 64)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2955, size: 256, elements: !2291)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2949, file: !2950, line: 209, baseType: !2957, size: 256, offset: 320)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !2291)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2949, file: !2950, line: 213, baseType: !519, size: 64, offset: 576)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2949, file: !2950, line: 215, baseType: !2960, size: 256, offset: 640)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 256, elements: !2291)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2949, file: !2950, line: 216, baseType: !188, size: 8, offset: 896)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2941, file: !2936, line: 33, baseType: !135, size: 64, offset: 1536)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2941, file: !2936, line: 34, baseType: !135, size: 64, offset: 1600)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2941, file: !2936, line: 35, baseType: !1564, size: 8, offset: 1664)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2941, file: !2936, line: 36, baseType: !2966, size: 320, offset: 1728)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2967, line: 11, size: 320, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2968 = !{!2969, !2976, !2977, !2982}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2966, file: !2967, line: 16, baseType: !2970, size: 128)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !101, line: 198, size: 128, elements: !2971)
!2971 = !{!2972, !2974}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2970, file: !101, line: 199, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2970, file: !101, line: 199, baseType: !2975, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2966, file: !2967, line: 17, baseType: !135, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2966, file: !2967, line: 18, baseType: !2978, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2966, file: !2967, line: 19, baseType: !1885, size: 32, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2941, file: !2936, line: 37, baseType: !2372, size: 256, offset: 2048)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2941, file: !2936, line: 38, baseType: !2172, size: 128, align: 64, offset: 2304)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2941, file: !2936, line: 39, baseType: !2986, size: 64, offset: 2432)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2936, line: 49, size: 768, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994, !2995}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2987, file: !2936, line: 50, baseType: !160, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2987, file: !2936, line: 51, baseType: !2957, size: 256, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2987, file: !2936, line: 53, baseType: !2957, size: 256, offset: 320)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2987, file: !2936, line: 54, baseType: !135, size: 64, offset: 576)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2987, file: !2936, line: 55, baseType: !2986, size: 64, offset: 640)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2987, file: !2936, line: 56, baseType: !51, size: 32, offset: 704)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2987, file: !2936, line: 57, baseType: !51, size: 32, offset: 736)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2941, file: !2936, line: 40, baseType: !135, size: 64, offset: 2496)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2941, file: !2936, line: 42, baseType: !51, size: 32, offset: 2560)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2941, file: !2936, line: 43, baseType: !2934, size: 64, offset: 2624)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2935, file: !2936, line: 99, baseType: !3000, offset: 128)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3001, line: 211, elements: !1634)
!3001 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2935, file: !2936, line: 100, baseType: !3003, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2936, line: 63, size: 3008, elements: !3005)
!3005 = !{!3006, !3007, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3037}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3004, file: !2936, line: 64, baseType: !2986, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3004, file: !2936, line: 65, baseType: !3008, size: 192, offset: 64)
!3008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2986, size: 192, elements: !2074)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3004, file: !2936, line: 67, baseType: !51, size: 32, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3004, file: !2936, line: 68, baseType: !2310, size: 256, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3004, file: !2936, line: 69, baseType: !160, size: 32, offset: 576)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3004, file: !2936, line: 70, baseType: !2310, size: 256, offset: 640)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3004, file: !2936, line: 71, baseType: !135, size: 64, offset: 896)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3004, file: !2936, line: 72, baseType: !135, size: 64, offset: 960)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3004, file: !2936, line: 73, baseType: !135, size: 64, offset: 1024)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3004, file: !2936, line: 74, baseType: !135, size: 64, offset: 1088)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3004, file: !2936, line: 75, baseType: !135, size: 64, offset: 1152)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3004, file: !2936, line: 76, baseType: !135, size: 64, offset: 1216)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3004, file: !2936, line: 77, baseType: !135, size: 64, offset: 1280)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3004, file: !2936, line: 78, baseType: !135, size: 64, offset: 1344)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3004, file: !2936, line: 79, baseType: !1564, size: 8, offset: 1408)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3004, file: !2936, line: 80, baseType: !135, size: 64, offset: 1472)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3004, file: !2936, line: 81, baseType: !2310, size: 256, offset: 1536)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3004, file: !2936, line: 82, baseType: !2720, size: 256, offset: 1792)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3004, file: !2936, line: 84, baseType: !180, size: 32, offset: 2048)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3004, file: !2936, line: 87, baseType: !135, size: 64, offset: 2112)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3004, file: !2936, line: 88, baseType: !135, size: 64, offset: 2176)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3004, file: !2936, line: 89, baseType: !3029, size: 704, offset: 2240)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2373, line: 111, size: 704, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3036}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3029, file: !2373, line: 112, baseType: !2372, size: 256)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3029, file: !2373, line: 113, baseType: !2966, size: 320, offset: 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3029, file: !2373, line: 116, baseType: !3034, size: 64, offset: 576)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2373, line: 18, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3029, file: !2373, line: 117, baseType: !51, size: 32, offset: 640)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3004, file: !2936, line: 90, baseType: !2934, size: 64, offset: 2944)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !2701, file: !18, line: 515, baseType: !3039, size: 64, offset: 8064)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3041, line: 117, size: 128, elements: !3042)
!3041 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3042 = !{!3043, !3044, !3045}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3040, file: !3041, line: 118, baseType: !2289, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3040, file: !3041, line: 119, baseType: !2289, size: 32, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3040, file: !3041, line: 120, baseType: !519, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !2701, file: !18, line: 516, baseType: !7, size: 32, offset: 8128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !2701, file: !18, line: 519, baseType: !7, size: 32, offset: 8160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !2701, file: !18, line: 520, baseType: !3049, size: 64, offset: 8192)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !2701, file: !18, line: 523, baseType: !3051, size: 64, offset: 8256)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !18, line: 523, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !2701, file: !18, line: 524, baseType: !7, size: 32, offset: 8320)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !2701, file: !18, line: 525, baseType: !3056, size: 64, offset: 8384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !18, line: 525, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !2701, file: !18, line: 526, baseType: !7, size: 32, offset: 8448)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !2701, file: !18, line: 533, baseType: !102, size: 64, offset: 8512)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !2701, file: !18, line: 534, baseType: !7, size: 32, offset: 8576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !2701, file: !18, line: 535, baseType: !152, size: 64, offset: 8640)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !2701, file: !18, line: 536, baseType: !7, size: 32, offset: 8704)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !2701, file: !18, line: 539, baseType: !51, size: 32, offset: 8736)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !2701, file: !18, line: 540, baseType: !3066, size: 64, offset: 8768)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3068, line: 32, size: 64, elements: !3069)
!3068 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3069 = !{!3070, !3071}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3067, file: !3068, line: 33, baseType: !2289, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3067, file: !3068, line: 34, baseType: !2289, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !2701, file: !18, line: 563, baseType: !107, size: 128, offset: 8832)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !2701, file: !18, line: 565, baseType: !107, size: 128, offset: 8960)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2701, file: !18, line: 568, baseType: !3075, size: 64, offset: 9088)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2701, file: !18, line: 570, baseType: !180, size: 32, offset: 9152)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2695, file: !25, line: 101, baseType: !209, size: 64, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2695, file: !25, line: 103, baseType: !1564, size: 8, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2695, file: !25, line: 104, baseType: !24, size: 32, offset: 288)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2695, file: !25, line: 106, baseType: !3081, size: 64, offset: 320)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3083)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3084, line: 282, size: 1600, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!3085 = !{!3086, !3090, !3091, !3095}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3083, file: !3084, line: 283, baseType: !3087, size: 256)
!3087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !3088)
!3088 = !{!3089}
!3089 = !DISubrange(count: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3083, file: !3084, line: 284, baseType: !3087, size: 256, offset: 256)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3083, file: !3084, line: 285, baseType: !3092, size: 1024, offset: 512)
!3092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 1024, elements: !3093)
!3093 = !{!3094}
!3094 = !DISubrange(count: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3083, file: !3084, line: 286, baseType: !792, size: 64, offset: 1536)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2695, file: !25, line: 107, baseType: !3097, size: 64, offset: 384)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3084, line: 217, size: 256, elements: !3100)
!3100 = !{!3101, !3105, !3107, !3108}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3099, file: !3084, line: 218, baseType: !3102, size: 128)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !3103)
!3103 = !{!3104}
!3104 = !DISubrange(count: 16)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3099, file: !3084, line: 219, baseType: !3106, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3084, line: 15, baseType: !135)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3099, file: !3084, line: 220, baseType: !1886, size: 32, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3099, file: !3084, line: 221, baseType: !1886, size: 32, offset: 224)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2695, file: !25, line: 109, baseType: !2654, size: 64, offset: 448)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2695, file: !25, line: 110, baseType: !2645, size: 64, offset: 512)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2695, file: !25, line: 111, baseType: !2654, size: 64, offset: 576)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2695, file: !25, line: 112, baseType: !2645, size: 64, offset: 640)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2695, file: !25, line: 113, baseType: !3114, size: 64, offset: 704)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!51, !2028, !3117}
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !43, line: 60, baseType: !3118)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !43, line: 58, size: 32, elements: !3119)
!3119 = !{!3120}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3118, file: !43, line: 59, baseType: !51, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2695, file: !25, line: 114, baseType: !2654, size: 64, offset: 768)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2695, file: !25, line: 115, baseType: !2119, size: 64, offset: 832)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2695, file: !25, line: 116, baseType: !2119, size: 64, offset: 896)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2695, file: !25, line: 118, baseType: !2649, size: 64, offset: 960)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2695, file: !25, line: 119, baseType: !2645, size: 64, offset: 1024)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2695, file: !25, line: 121, baseType: !3127, size: 64, offset: 1088)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !25, line: 121, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2682, file: !2683, line: 88, baseType: !2634, size: 64, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2682, file: !2683, line: 89, baseType: !2654, size: 64, offset: 448)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2682, file: !2683, line: 90, baseType: !2645, size: 64, offset: 512)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2682, file: !2683, line: 91, baseType: !2645, size: 64, offset: 576)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2682, file: !2683, line: 92, baseType: !2645, size: 64, offset: 640)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2682, file: !2683, line: 94, baseType: !2654, size: 64, offset: 704)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2682, file: !2683, line: 95, baseType: !2654, size: 64, offset: 768)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2682, file: !2683, line: 97, baseType: !3114, size: 64, offset: 832)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2682, file: !2683, line: 98, baseType: !2654, size: 64, offset: 896)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2682, file: !2683, line: 100, baseType: !2654, size: 64, offset: 960)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2682, file: !2683, line: 102, baseType: !2654, size: 64, offset: 1024)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2682, file: !2683, line: 103, baseType: !2645, size: 64, offset: 1088)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2682, file: !2683, line: 105, baseType: !2649, size: 64, offset: 1152)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2682, file: !2683, line: 107, baseType: !3143, size: 64, offset: 1216)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3145)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2683, line: 107, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2682, file: !2683, line: 109, baseType: !1564, size: 8, offset: 1280)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2029, file: !31, line: 715, baseType: !2694, size: 64, offset: 832)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2029, file: !31, line: 717, baseType: !102, size: 64, offset: 896)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2029, file: !31, line: 719, baseType: !102, size: 64, offset: 960)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2029, file: !31, line: 721, baseType: !2310, size: 256, offset: 1024)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2029, file: !31, line: 725, baseType: !3152, size: 448, offset: 1280)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !31, line: 517, size: 448, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3152, file: !31, line: 518, baseType: !107, size: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3152, file: !31, line: 519, baseType: !107, size: 128, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3152, file: !31, line: 520, baseType: !107, size: 128, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3152, file: !31, line: 521, baseType: !30, size: 32, offset: 384)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2029, file: !31, line: 726, baseType: !3159, size: 2496, offset: 1728)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !43, line: 663, size: 2496, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3205, !3206, !3207, !3208, !3209, !3210, !3281, !3282, !3283, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3321, !3325}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3159, file: !43, line: 664, baseType: !3117, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3159, file: !43, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3159, file: !43, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3159, file: !43, line: 667, baseType: !1564, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3159, file: !43, line: 668, baseType: !1564, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3159, file: !43, line: 669, baseType: !1564, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3159, file: !43, line: 670, baseType: !1564, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3159, file: !43, line: 671, baseType: !1564, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3159, file: !43, line: 672, baseType: !1564, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3159, file: !43, line: 673, baseType: !1564, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3159, file: !43, line: 674, baseType: !1564, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3159, file: !43, line: 675, baseType: !1885, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3159, file: !43, line: 676, baseType: !160, size: 32, offset: 96)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3159, file: !43, line: 678, baseType: !107, size: 128, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3159, file: !43, line: 679, baseType: !2720, size: 256, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3159, file: !43, line: 680, baseType: !3177, size: 64, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3179, line: 43, size: 1536, elements: !3180)
!3179 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3188, !3189, !3190, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3178, file: !3179, line: 44, baseType: !209, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3178, file: !3179, line: 45, baseType: !51, size: 32, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3178, file: !3179, line: 46, baseType: !107, size: 128, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3178, file: !3179, line: 47, baseType: !160, size: 32, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3178, file: !3179, line: 48, baseType: !3186, size: 64, offset: 320)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !43, line: 629, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3178, file: !3179, line: 49, baseType: !2966, size: 320, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3178, file: !3179, line: 50, baseType: !135, size: 64, offset: 704)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3178, file: !3179, line: 51, baseType: !3191, size: 64, offset: 768)
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3192, line: 29, baseType: !123)
!3192 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3178, file: !3179, line: 52, baseType: !3191, size: 64, offset: 832)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3178, file: !3179, line: 53, baseType: !3191, size: 64, offset: 896)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3178, file: !3179, line: 54, baseType: !3191, size: 64, offset: 960)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3178, file: !3179, line: 55, baseType: !3191, size: 64, offset: 1024)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3178, file: !3179, line: 56, baseType: !135, size: 64, offset: 1088)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3178, file: !3179, line: 57, baseType: !135, size: 64, offset: 1152)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3178, file: !3179, line: 58, baseType: !135, size: 64, offset: 1216)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3178, file: !3179, line: 59, baseType: !135, size: 64, offset: 1280)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3178, file: !3179, line: 60, baseType: !135, size: 64, offset: 1344)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3178, file: !3179, line: 61, baseType: !2028, size: 64, offset: 1408)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3178, file: !3179, line: 62, baseType: !1564, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3178, file: !3179, line: 63, baseType: !1564, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3159, file: !43, line: 681, baseType: !1564, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3159, file: !43, line: 682, baseType: !1564, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3159, file: !43, line: 683, baseType: !1564, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3159, file: !43, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3159, file: !43, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3159, file: !43, line: 690, baseType: !3211, size: 512, offset: 640)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !38, line: 118, size: 512, elements: !3212)
!3212 = !{!3213, !3219, !3220, !3225, !3277, !3278, !3279, !3280}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3211, file: !38, line: 119, baseType: !3214, size: 256)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3215, line: 9, size: 256, elements: !3216)
!3215 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3216 = !{!3217, !3218}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3214, file: !3215, line: 10, baseType: !2408, size: 192, align: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3214, file: !3215, line: 11, baseType: !3191, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3211, file: !38, line: 120, baseType: !3191, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3211, file: !38, line: 121, baseType: !3221, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!37, !3224}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3211, file: !38, line: 122, baseType: !3226, size: 64, offset: 384)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !38, line: 159, size: 512, align: 512, elements: !3228)
!3228 = !{!3229, !3254, !3255, !3258, !3263, !3264, !3272, !3276}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3227, file: !38, line: 160, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !38, line: 215, size: 4608, align: 512, elements: !3232)
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3231, file: !38, line: 216, baseType: !382, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3231, file: !38, line: 217, baseType: !7, size: 32, offset: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3231, file: !38, line: 218, baseType: !7, size: 32, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3231, file: !38, line: 219, baseType: !7, size: 32, offset: 96)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3231, file: !38, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3231, file: !38, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3231, file: !38, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3231, file: !38, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3231, file: !38, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3231, file: !38, line: 226, baseType: !7, size: 32, offset: 160)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3231, file: !38, line: 227, baseType: !198, size: 16, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3231, file: !38, line: 228, baseType: !198, size: 16, offset: 208)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3231, file: !38, line: 229, baseType: !7, size: 32, offset: 224)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3231, file: !38, line: 235, baseType: !3191, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3231, file: !38, line: 236, baseType: !3224, size: 64, offset: 320)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3231, file: !38, line: 237, baseType: !3191, size: 64, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3231, file: !38, line: 238, baseType: !3224, size: 64, offset: 448)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3231, file: !38, line: 239, baseType: !3251, size: 4096, align: 512, offset: 512)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3227, size: 4096, align: 512, elements: !3252)
!3252 = !{!3253}
!3253 = !DISubrange(count: 8)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3227, file: !38, line: 161, baseType: !7, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3227, file: !38, line: 162, baseType: !3256, size: 32, offset: 96)
!3256 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !101, line: 32, baseType: !3257)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !330, line: 96, baseType: !51)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3227, file: !38, line: 163, baseType: !3259, size: 32, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !2259, line: 274, baseType: !3260)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !2259, line: 274, size: 32, elements: !3261)
!3261 = !{!3262}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3260, file: !2259, line: 274, baseType: !2258, size: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3227, file: !38, line: 164, baseType: !3224, size: 64, offset: 192)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3227, file: !38, line: 165, baseType: !3265, size: 128, offset: 256)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3215, line: 14, size: 128, elements: !3266)
!3266 = !{!3267}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3265, file: !3215, line: 15, baseType: !3268, size: 128)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !2409, line: 26, size: 128, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3268, file: !2409, line: 27, baseType: !2511, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3268, file: !2409, line: 28, baseType: !2413, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3227, file: !38, line: 166, baseType: !3273, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!3191}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3227, file: !38, line: 167, baseType: !3191, size: 64, offset: 448)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3211, file: !38, line: 123, baseType: !188, size: 8, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3211, file: !38, line: 124, baseType: !188, size: 8, offset: 456)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3211, file: !38, line: 125, baseType: !188, size: 8, offset: 464)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3211, file: !38, line: 126, baseType: !188, size: 8, offset: 472)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3159, file: !43, line: 691, baseType: !130, size: 64, offset: 1152)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3159, file: !43, line: 692, baseType: !2372, size: 256, offset: 1216)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3159, file: !43, line: 693, baseType: !3284, size: 192, offset: 1472)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !3285, line: 41, baseType: !3286)
!3285 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !3285, line: 37, size: 192, elements: !3287)
!3287 = !{!3288, !3289}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3286, file: !3285, line: 38, baseType: !160, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3286, file: !3285, line: 39, baseType: !107, size: 128, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3159, file: !43, line: 694, baseType: !3186, size: 64, offset: 1664)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3159, file: !43, line: 695, baseType: !180, size: 32, offset: 1728)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3159, file: !43, line: 696, baseType: !180, size: 32, offset: 1760)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3159, file: !43, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3159, file: !43, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3159, file: !43, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3159, file: !43, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3159, file: !43, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3159, file: !43, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3159, file: !43, line: 703, baseType: !1564, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3159, file: !43, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3159, file: !43, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3159, file: !43, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3159, file: !43, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3159, file: !43, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3159, file: !43, line: 709, baseType: !7, size: 32, offset: 1824)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3159, file: !43, line: 710, baseType: !42, size: 32, offset: 1856)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3159, file: !43, line: 711, baseType: !50, size: 32, offset: 1888)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3159, file: !43, line: 712, baseType: !50, size: 32, offset: 1920)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3159, file: !43, line: 713, baseType: !51, size: 32, offset: 1952)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3159, file: !43, line: 714, baseType: !51, size: 32, offset: 1984)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3159, file: !43, line: 715, baseType: !130, size: 64, offset: 2048)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3159, file: !43, line: 716, baseType: !130, size: 64, offset: 2112)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3159, file: !43, line: 717, baseType: !130, size: 64, offset: 2176)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3159, file: !43, line: 718, baseType: !130, size: 64, offset: 2240)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3159, file: !43, line: 720, baseType: !3316, size: 64, offset: 2304)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !43, line: 632, size: 64, elements: !3318)
!3318 = !{!3319, !3320}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3317, file: !43, line: 633, baseType: !160, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3317, file: !43, line: 634, baseType: !7, size: 32, offset: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3159, file: !43, line: 721, baseType: !3322, size: 64, offset: 2368)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !2028, !2289}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3159, file: !43, line: 722, baseType: !3326, size: 64, offset: 2432)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !43, line: 722, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2029, file: !31, line: 727, baseType: !3329, size: 64, offset: 4224)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !43, line: 742, size: 1792, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3338, !3339, !3340}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3330, file: !43, line: 743, baseType: !2651, size: 1472)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3330, file: !43, line: 744, baseType: !2654, size: 64, offset: 1472)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3330, file: !43, line: 745, baseType: !3335, size: 64, offset: 1536)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !2028, !1564}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3330, file: !43, line: 746, baseType: !2654, size: 64, offset: 1600)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3330, file: !43, line: 747, baseType: !2645, size: 64, offset: 1664)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3330, file: !43, line: 748, baseType: !2645, size: 64, offset: 1728)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2029, file: !31, line: 736, baseType: !3342, size: 128, offset: 4288)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !31, line: 529, size: 128, elements: !3343)
!3343 = !{!3344, !3348}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3342, file: !31, line: 531, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3347, line: 13, flags: DIFlagFwdDecl)
!3347 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3342, file: !31, line: 532, baseType: !3349, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !31, line: 49, flags: DIFlagFwdDecl)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2029, file: !31, line: 738, baseType: !3352, size: 64, offset: 4416)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3354)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !31, line: 738, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2029, file: !31, line: 740, baseType: !3356, size: 64, offset: 4480)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2029, file: !31, line: 741, baseType: !130, size: 64, offset: 4544)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2029, file: !31, line: 746, baseType: !130, size: 64, offset: 4608)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2029, file: !31, line: 747, baseType: !3360, size: 64, offset: 4672)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !31, line: 747, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2029, file: !31, line: 749, baseType: !3364, size: 64, offset: 4736)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !31, line: 428, size: 128, elements: !3366)
!3366 = !{!3367, !3368, !3369}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3365, file: !31, line: 433, baseType: !7, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3365, file: !31, line: 434, baseType: !7, size: 32, offset: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3365, file: !31, line: 435, baseType: !135, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2029, file: !31, line: 751, baseType: !107, size: 128, offset: 4800)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2029, file: !31, line: 762, baseType: !3372, size: 64, offset: 4928)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !31, line: 762, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2029, file: !31, line: 770, baseType: !3375, offset: 4992)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3376, line: 5, elements: !1634)
!3376 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2029, file: !31, line: 772, baseType: !3378, size: 64, offset: 4992)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3380, line: 48, size: 1152, elements: !3381)
!3380 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!3381 = !{!3382, !3383, !3385, !3386, !3489, !3497, !3498, !3499, !3500, !3501, !3502}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3379, file: !3380, line: 49, baseType: !209, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3379, file: !3380, line: 50, baseType: !3384, size: 32, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3380, line: 25, baseType: !1885)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3379, file: !3380, line: 51, baseType: !209, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3379, file: !3380, line: 52, baseType: !3387, size: 512, offset: 192)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3388, line: 41, size: 512, elements: !3389)
!3388 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3389 = !{!3390, !3392, !3485, !3486, !3487, !3488}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3387, file: !3388, line: 42, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3387, file: !3388, line: 43, baseType: !3393, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3388, line: 125, size: 1408, elements: !3396)
!3396 = !{!3397, !3401, !3405, !3411, !3415, !3416, !3420, !3424, !3428, !3432, !3436, !3437, !3441, !3445, !3449, !3460, !3461, !3462, !3463, !3473, !3477, !3481}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3395, file: !3388, line: 126, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!3391, !3391}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3395, file: !3388, line: 127, baseType: !3402, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{null, !3391}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3395, file: !3388, line: 128, baseType: !3406, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!1564, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3387)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3395, file: !3388, line: 129, baseType: !3412, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!792, !3409, !2637}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3395, file: !3388, line: 131, baseType: !3406, size: 64, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3395, file: !3388, line: 133, baseType: !3417, size: 64, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!58, !3409}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3395, file: !3388, line: 134, baseType: !3421, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!1564, !3409, !209}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3395, file: !3388, line: 136, baseType: !3425, size: 64, offset: 448)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!51, !3409, !209, !7, !102, !328}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3395, file: !3388, line: 141, baseType: !3429, size: 64, offset: 512)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!51, !3409, !209, !3049, !328}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3395, file: !3388, line: 144, baseType: !3433, size: 64, offset: 576)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!209, !3409}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3395, file: !3388, line: 145, baseType: !3433, size: 64, offset: 640)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3395, file: !3388, line: 146, baseType: !3438, size: 64, offset: 704)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!3391, !3409}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3395, file: !3388, line: 148, baseType: !3442, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!3391, !3409, !3391}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3395, file: !3388, line: 151, baseType: !3446, size: 64, offset: 832)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!3391, !3409, !209}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3395, file: !3388, line: 153, baseType: !3450, size: 64, offset: 896)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!51, !3409, !209, !209, !7, !7, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3388, line: 94, size: 640, elements: !3455)
!3455 = !{!3456, !3457, !3458}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3454, file: !3388, line: 95, baseType: !3391, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3454, file: !3388, line: 96, baseType: !7, size: 32, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3454, file: !3388, line: 97, baseType: !3459, size: 512, offset: 128)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 512, elements: !3252)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3395, file: !3388, line: 158, baseType: !3442, size: 64, offset: 960)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3395, file: !3388, line: 161, baseType: !3438, size: 64, offset: 1024)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3395, file: !3388, line: 163, baseType: !3398, size: 64, offset: 1088)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3395, file: !3388, line: 164, baseType: !3464, size: 64, offset: 1152)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!51, !3409, !3467}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3388, line: 73, size: 128, elements: !3469)
!3469 = !{!3470, !3471, !3472}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3468, file: !3388, line: 74, baseType: !7, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3468, file: !3388, line: 75, baseType: !7, size: 32, offset: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3468, file: !3388, line: 76, baseType: !3409, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3395, file: !3388, line: 166, baseType: !3474, size: 64, offset: 1216)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!102, !3391, !51}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3395, file: !3388, line: 167, baseType: !3478, size: 64, offset: 1280)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!51, !3409, !7}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3395, file: !3388, line: 168, baseType: !3482, size: 64, offset: 1344)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!51, !3391}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3387, file: !3388, line: 44, baseType: !2028, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3387, file: !3388, line: 45, baseType: !107, size: 128, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3387, file: !3388, line: 46, baseType: !107, size: 128, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3387, file: !3388, line: 47, baseType: !188, size: 8, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3379, file: !3380, line: 54, baseType: !3490, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3380, line: 28, size: 256, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3491, file: !3380, line: 29, baseType: !2073, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3491, file: !3380, line: 30, baseType: !51, size: 32, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3491, file: !3380, line: 31, baseType: !102, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3491, file: !3380, line: 32, baseType: !3490, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3379, file: !3380, line: 55, baseType: !3490, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3379, file: !3380, line: 56, baseType: !3378, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3379, file: !3380, line: 57, baseType: !3378, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3379, file: !3380, line: 58, baseType: !3378, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3379, file: !3380, line: 62, baseType: !135, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3379, file: !3380, line: 63, baseType: !102, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2029, file: !31, line: 773, baseType: !3391, size: 64, offset: 5056)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2029, file: !31, line: 776, baseType: !51, size: 32, offset: 5120)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2029, file: !31, line: 778, baseType: !3506, size: 32, offset: 5152)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !101, line: 21, baseType: !3507)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !101, line: 18, baseType: !1885)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2029, file: !31, line: 779, baseType: !1885, size: 32, offset: 5184)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2029, file: !31, line: 781, baseType: !160, size: 32, offset: 5216)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2029, file: !31, line: 782, baseType: !107, size: 128, offset: 5248)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2029, file: !31, line: 784, baseType: !3512, size: 64, offset: 5376)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3515, line: 52, size: 768, elements: !3516)
!3515 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3525, !3529, !3530, !3531, !3532, !3536, !3540}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3514, file: !3515, line: 53, baseType: !209, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3514, file: !3515, line: 55, baseType: !2119, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3514, file: !3515, line: 56, baseType: !2119, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3514, file: !3515, line: 58, baseType: !2634, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3514, file: !3515, line: 59, baseType: !3522, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!2073, !2637, !2643}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3514, file: !3515, line: 61, baseType: !3526, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !3512}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3514, file: !3515, line: 62, baseType: !2645, size: 64, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3514, file: !3515, line: 64, baseType: !2654, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3514, file: !3515, line: 66, baseType: !2441, size: 64, offset: 512)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3514, file: !3515, line: 67, baseType: !3533, size: 64, offset: 576)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!792, !2637}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3514, file: !3515, line: 69, baseType: !3537, size: 64, offset: 640)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{null, !2637, !2476, !2484}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3514, file: !3515, line: 71, baseType: !2649, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2029, file: !31, line: 785, baseType: !2119, size: 64, offset: 5440)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2029, file: !31, line: 787, baseType: !2645, size: 64, offset: 5504)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2029, file: !31, line: 788, baseType: !3544, size: 64, offset: 5568)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !31, line: 46, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2029, file: !31, line: 789, baseType: !3547, size: 64, offset: 5632)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !31, line: 48, flags: DIFlagFwdDecl)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2029, file: !31, line: 791, baseType: !3550, size: 64, offset: 5696)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !31, line: 597, size: 128, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3551, file: !31, line: 598, baseType: !64, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3551, file: !31, line: 599, baseType: !73, size: 32, offset: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3551, file: !31, line: 600, baseType: !78, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3551, file: !31, line: 601, baseType: !1564, size: 8, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3551, file: !31, line: 602, baseType: !1564, size: 8, offset: 104)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2029, file: !31, line: 793, baseType: !83, size: 32, offset: 5760)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2029, file: !31, line: 795, baseType: !1564, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2029, file: !31, line: 796, baseType: !1564, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2029, file: !31, line: 797, baseType: !1564, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2029, file: !31, line: 798, baseType: !1564, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2029, file: !31, line: 799, baseType: !1564, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3564 = !{!3565, !3566, !3567}
!3565 = !DILocalVariable(name: "dev", arg: 1, scope: !2025, file: !3, line: 806, type: !2028)
!3566 = !DILocalVariable(name: "name", arg: 2, scope: !2025, file: !3, line: 806, type: !209)
!3567 = !DILocalVariable(name: "p", scope: !2025, file: !3, line: 808, type: !155)
!3568 = !DILocation(line: 806, column: 46, scope: !2025)
!3569 = !DILocation(line: 806, column: 63, scope: !2025)
!3570 = !DILocation(line: 808, column: 2, scope: !2025)
!3571 = !DILocation(line: 808, column: 20, scope: !2025)
!3572 = !DILocation(line: 810, column: 18, scope: !2025)
!3573 = !DILocation(line: 811, column: 12, scope: !2025)
!3574 = !DILocation(line: 810, column: 6, scope: !2025)
!3575 = !DILocation(line: 810, column: 4, scope: !2025)
!3576 = !DILocation(line: 812, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 812, column: 6)
!3578 = !DILocation(line: 812, column: 6, scope: !2025)
!3579 = !DILocation(line: 813, column: 3, scope: !3577)
!3580 = !DILocation(line: 814, column: 10, scope: !2025)
!3581 = !DILocation(line: 814, column: 9, scope: !2025)
!3582 = !DILocation(line: 814, column: 2, scope: !2025)
!3583 = !DILocation(line: 815, column: 1, scope: !2025)
!3584 = !DISubprogram(name: "devres_find", scope: !31, file: !31, line: 287, type: !3585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!102, !2028, !3587, !3591, !102}
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !31, line: 271, baseType: !3588)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !2028, !102}
!3591 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !31, line: 272, baseType: !3592)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!51, !2028, !102, !102}
!3595 = distinct !DISubprogram(name: "devm_gen_pool_release", scope: !3, file: !3, line: 780, type: !3589, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3596)
!3596 = !{!3597, !3598}
!3597 = !DILocalVariable(name: "dev", arg: 1, scope: !3595, file: !3, line: 780, type: !2028)
!3598 = !DILocalVariable(name: "res", arg: 2, scope: !3595, file: !3, line: 780, type: !102)
!3599 = !DILocation(line: 780, column: 50, scope: !3595)
!3600 = !DILocation(line: 780, column: 61, scope: !3595)
!3601 = !DILocation(line: 782, column: 40, scope: !3595)
!3602 = !DILocation(line: 782, column: 19, scope: !3595)
!3603 = !DILocation(line: 782, column: 2, scope: !3595)
!3604 = !DILocation(line: 783, column: 1, scope: !3595)
!3605 = distinct !DISubprogram(name: "devm_gen_pool_match", scope: !3, file: !3, line: 785, type: !3593, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3606)
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DILocalVariable(name: "dev", arg: 1, scope: !3605, file: !3, line: 785, type: !2028)
!3608 = !DILocalVariable(name: "res", arg: 2, scope: !3605, file: !3, line: 785, type: !102)
!3609 = !DILocalVariable(name: "data", arg: 3, scope: !3605, file: !3, line: 785, type: !102)
!3610 = !DILocalVariable(name: "p", scope: !3605, file: !3, line: 787, type: !155)
!3611 = !DILocation(line: 785, column: 47, scope: !3605)
!3612 = !DILocation(line: 785, column: 58, scope: !3605)
!3613 = !DILocation(line: 785, column: 69, scope: !3605)
!3614 = !DILocation(line: 787, column: 2, scope: !3605)
!3615 = !DILocation(line: 787, column: 20, scope: !3605)
!3616 = !DILocation(line: 787, column: 24, scope: !3605)
!3617 = !DILocation(line: 790, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 790, column: 6)
!3619 = !DILocation(line: 790, column: 12, scope: !3618)
!3620 = !DILocation(line: 790, column: 18, scope: !3618)
!3621 = !DILocation(line: 790, column: 17, scope: !3618)
!3622 = !DILocation(line: 790, column: 22, scope: !3618)
!3623 = !DILocation(line: 790, column: 16, scope: !3618)
!3624 = !DILocation(line: 790, column: 6, scope: !3605)
!3625 = !DILocation(line: 791, column: 3, scope: !3618)
!3626 = !DILocation(line: 793, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 793, column: 6)
!3628 = !DILocation(line: 793, column: 12, scope: !3627)
!3629 = !DILocation(line: 793, column: 18, scope: !3627)
!3630 = !DILocation(line: 793, column: 17, scope: !3627)
!3631 = !DILocation(line: 793, column: 22, scope: !3627)
!3632 = !DILocation(line: 793, column: 16, scope: !3627)
!3633 = !DILocation(line: 793, column: 6, scope: !3605)
!3634 = !DILocation(line: 794, column: 3, scope: !3627)
!3635 = !DILocation(line: 796, column: 19, scope: !3605)
!3636 = !DILocation(line: 796, column: 18, scope: !3605)
!3637 = !DILocation(line: 796, column: 23, scope: !3605)
!3638 = !DILocation(line: 796, column: 29, scope: !3605)
!3639 = !DILocation(line: 796, column: 10, scope: !3605)
!3640 = !DILocation(line: 796, column: 9, scope: !3605)
!3641 = !DILocation(line: 796, column: 2, scope: !3605)
!3642 = !DILocation(line: 797, column: 1, scope: !3605)
!3643 = distinct !DISubprogram(name: "devm_gen_pool_create", scope: !3, file: !3, line: 829, type: !3644, scopeLine: 831, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!156, !2028, !51, !51, !209}
!3646 = !{!3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655}
!3647 = !DILocalVariable(name: "dev", arg: 1, scope: !3643, file: !3, line: 829, type: !2028)
!3648 = !DILocalVariable(name: "min_alloc_order", arg: 2, scope: !3643, file: !3, line: 829, type: !51)
!3649 = !DILocalVariable(name: "nid", arg: 3, scope: !3643, file: !3, line: 830, type: !51)
!3650 = !DILocalVariable(name: "name", arg: 4, scope: !3643, file: !3, line: 830, type: !209)
!3651 = !DILocalVariable(name: "ptr", scope: !3643, file: !3, line: 832, type: !155)
!3652 = !DILocalVariable(name: "pool", scope: !3643, file: !3, line: 832, type: !156)
!3653 = !DILocalVariable(name: "pool_name", scope: !3643, file: !3, line: 833, type: !209)
!3654 = !DILabel(scope: !3643, name: "free_devres", file: !3, line: 859)
!3655 = !DILabel(scope: !3643, name: "free_pool_name", file: !3, line: 861)
!3656 = !DILocation(line: 829, column: 54, scope: !3643)
!3657 = !DILocation(line: 829, column: 63, scope: !3643)
!3658 = !DILocation(line: 830, column: 15, scope: !3643)
!3659 = !DILocation(line: 830, column: 32, scope: !3643)
!3660 = !DILocation(line: 832, column: 2, scope: !3643)
!3661 = !DILocation(line: 832, column: 20, scope: !3643)
!3662 = !DILocation(line: 832, column: 26, scope: !3643)
!3663 = !DILocation(line: 833, column: 2, scope: !3643)
!3664 = !DILocation(line: 833, column: 14, scope: !3643)
!3665 = !DILocation(line: 836, column: 19, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 836, column: 6)
!3667 = !DILocation(line: 836, column: 24, scope: !3666)
!3668 = !DILocation(line: 836, column: 6, scope: !3666)
!3669 = !DILocation(line: 836, column: 6, scope: !3643)
!3670 = !DILocation(line: 837, column: 10, scope: !3666)
!3671 = !DILocation(line: 837, column: 3, scope: !3666)
!3672 = !DILocation(line: 839, column: 6, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 839, column: 6)
!3674 = !DILocation(line: 839, column: 6, scope: !3643)
!3675 = !DILocation(line: 840, column: 29, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 839, column: 12)
!3677 = !DILocation(line: 840, column: 15, scope: !3676)
!3678 = !DILocation(line: 840, column: 13, scope: !3676)
!3679 = !DILocation(line: 841, column: 8, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 841, column: 7)
!3681 = !DILocation(line: 841, column: 7, scope: !3676)
!3682 = !DILocation(line: 842, column: 11, scope: !3680)
!3683 = !DILocation(line: 842, column: 4, scope: !3680)
!3684 = !DILocation(line: 843, column: 2, scope: !3676)
!3685 = !DILocation(line: 845, column: 8, scope: !3643)
!3686 = !DILocation(line: 845, column: 6, scope: !3643)
!3687 = !DILocation(line: 846, column: 7, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 846, column: 6)
!3689 = !DILocation(line: 846, column: 6, scope: !3643)
!3690 = !DILocation(line: 847, column: 3, scope: !3688)
!3691 = !DILocation(line: 849, column: 25, scope: !3643)
!3692 = !DILocation(line: 849, column: 42, scope: !3643)
!3693 = !DILocation(line: 849, column: 9, scope: !3643)
!3694 = !DILocation(line: 849, column: 7, scope: !3643)
!3695 = !DILocation(line: 850, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 850, column: 6)
!3697 = !DILocation(line: 850, column: 6, scope: !3643)
!3698 = !DILocation(line: 851, column: 3, scope: !3696)
!3699 = !DILocation(line: 853, column: 9, scope: !3643)
!3700 = !DILocation(line: 853, column: 3, scope: !3643)
!3701 = !DILocation(line: 853, column: 7, scope: !3643)
!3702 = !DILocation(line: 854, column: 15, scope: !3643)
!3703 = !DILocation(line: 854, column: 2, scope: !3643)
!3704 = !DILocation(line: 854, column: 8, scope: !3643)
!3705 = !DILocation(line: 854, column: 13, scope: !3643)
!3706 = !DILocation(line: 855, column: 13, scope: !3643)
!3707 = !DILocation(line: 855, column: 18, scope: !3643)
!3708 = !DILocation(line: 855, column: 2, scope: !3643)
!3709 = !DILocation(line: 857, column: 9, scope: !3643)
!3710 = !DILocation(line: 857, column: 2, scope: !3643)
!3711 = !DILocation(line: 859, column: 1, scope: !3643)
!3712 = !DILocation(line: 860, column: 14, scope: !3643)
!3713 = !DILocation(line: 860, column: 2, scope: !3643)
!3714 = !DILocation(line: 861, column: 1, scope: !3643)
!3715 = !DILocation(line: 862, column: 14, scope: !3643)
!3716 = !DILocation(line: 862, column: 2, scope: !3643)
!3717 = !DILocation(line: 864, column: 9, scope: !3643)
!3718 = !DILocation(line: 864, column: 2, scope: !3643)
!3719 = !DILocation(line: 865, column: 1, scope: !3643)
!3720 = distinct !DISubprogram(name: "ERR_PTR", scope: !3721, file: !3721, line: 39, type: !3722, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3724)
!3721 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!102, !519}
!3724 = !{!3725}
!3725 = !DILocalVariable(name: "error", arg: 1, scope: !3720, file: !3721, line: 39, type: !519)
!3726 = !DILocation(line: 39, column: 48, scope: !3720)
!3727 = !DILocation(line: 41, column: 18, scope: !3720)
!3728 = !DILocation(line: 41, column: 9, scope: !3720)
!3729 = !DILocation(line: 41, column: 2, scope: !3720)
!3730 = !DISubprogram(name: "kstrdup_const", scope: !795, file: !795, line: 217, type: !3731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!209, !209, !100}
!3733 = !DISubprogram(name: "__devres_alloc_node", scope: !31, file: !31, line: 274, type: !3734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!102, !3587, !328, !100, !51, !209}
!3736 = !DISubprogram(name: "devres_add", scope: !31, file: !31, line: 286, type: !3589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3737 = !DISubprogram(name: "devres_free", scope: !31, file: !31, line: 285, type: !2466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3738 = !DISubprogram(name: "kmalloc_large_node", scope: !90, file: !90, line: 534, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3739 = distinct !DISubprogram(name: "__kmalloc_index", scope: !90, file: !90, line: 444, type: !3740, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3742)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!7, !328, !1564}
!3742 = !{!3743, !3744}
!3743 = !DILocalVariable(name: "size", arg: 1, scope: !3739, file: !90, line: 444, type: !328)
!3744 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3739, file: !90, line: 445, type: !1564)
!3745 = !DILocation(line: 444, column: 60, scope: !3739)
!3746 = !DILocation(line: 445, column: 16, scope: !3739)
!3747 = !DILocation(line: 447, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 447, column: 6)
!3749 = !DILocation(line: 447, column: 6, scope: !3739)
!3750 = !DILocation(line: 448, column: 3, scope: !3748)
!3751 = !DILocation(line: 450, column: 6, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 450, column: 6)
!3753 = !DILocation(line: 450, column: 11, scope: !3752)
!3754 = !DILocation(line: 450, column: 6, scope: !3739)
!3755 = !DILocation(line: 451, column: 3, scope: !3752)
!3756 = !DILocation(line: 453, column: 32, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 453, column: 6)
!3758 = !DILocation(line: 453, column: 37, scope: !3757)
!3759 = !DILocation(line: 453, column: 42, scope: !3757)
!3760 = !DILocation(line: 453, column: 45, scope: !3757)
!3761 = !DILocation(line: 453, column: 50, scope: !3757)
!3762 = !DILocation(line: 453, column: 6, scope: !3739)
!3763 = !DILocation(line: 454, column: 3, scope: !3757)
!3764 = !DILocation(line: 455, column: 32, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 455, column: 6)
!3766 = !DILocation(line: 455, column: 37, scope: !3765)
!3767 = !DILocation(line: 455, column: 43, scope: !3765)
!3768 = !DILocation(line: 455, column: 46, scope: !3765)
!3769 = !DILocation(line: 455, column: 51, scope: !3765)
!3770 = !DILocation(line: 455, column: 6, scope: !3739)
!3771 = !DILocation(line: 456, column: 3, scope: !3765)
!3772 = !DILocation(line: 457, column: 6, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 457, column: 6)
!3774 = !DILocation(line: 457, column: 11, scope: !3773)
!3775 = !DILocation(line: 457, column: 6, scope: !3739)
!3776 = !DILocation(line: 457, column: 26, scope: !3773)
!3777 = !DILocation(line: 458, column: 6, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 458, column: 6)
!3779 = !DILocation(line: 458, column: 11, scope: !3778)
!3780 = !DILocation(line: 458, column: 6, scope: !3739)
!3781 = !DILocation(line: 458, column: 26, scope: !3778)
!3782 = !DILocation(line: 459, column: 6, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 459, column: 6)
!3784 = !DILocation(line: 459, column: 11, scope: !3783)
!3785 = !DILocation(line: 459, column: 6, scope: !3739)
!3786 = !DILocation(line: 459, column: 26, scope: !3783)
!3787 = !DILocation(line: 460, column: 6, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 460, column: 6)
!3789 = !DILocation(line: 460, column: 11, scope: !3788)
!3790 = !DILocation(line: 460, column: 6, scope: !3739)
!3791 = !DILocation(line: 460, column: 26, scope: !3788)
!3792 = !DILocation(line: 461, column: 6, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 461, column: 6)
!3794 = !DILocation(line: 461, column: 11, scope: !3793)
!3795 = !DILocation(line: 461, column: 6, scope: !3739)
!3796 = !DILocation(line: 461, column: 26, scope: !3793)
!3797 = !DILocation(line: 462, column: 6, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 462, column: 6)
!3799 = !DILocation(line: 462, column: 11, scope: !3798)
!3800 = !DILocation(line: 462, column: 6, scope: !3739)
!3801 = !DILocation(line: 462, column: 26, scope: !3798)
!3802 = !DILocation(line: 463, column: 6, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 463, column: 6)
!3804 = !DILocation(line: 463, column: 11, scope: !3803)
!3805 = !DILocation(line: 463, column: 6, scope: !3739)
!3806 = !DILocation(line: 463, column: 26, scope: !3803)
!3807 = !DILocation(line: 464, column: 6, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 464, column: 6)
!3809 = !DILocation(line: 464, column: 11, scope: !3808)
!3810 = !DILocation(line: 464, column: 6, scope: !3739)
!3811 = !DILocation(line: 464, column: 26, scope: !3808)
!3812 = !DILocation(line: 465, column: 6, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 465, column: 6)
!3814 = !DILocation(line: 465, column: 11, scope: !3813)
!3815 = !DILocation(line: 465, column: 6, scope: !3739)
!3816 = !DILocation(line: 465, column: 26, scope: !3813)
!3817 = !DILocation(line: 466, column: 6, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 466, column: 6)
!3819 = !DILocation(line: 466, column: 11, scope: !3818)
!3820 = !DILocation(line: 466, column: 6, scope: !3739)
!3821 = !DILocation(line: 466, column: 26, scope: !3818)
!3822 = !DILocation(line: 467, column: 6, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 467, column: 6)
!3824 = !DILocation(line: 467, column: 11, scope: !3823)
!3825 = !DILocation(line: 467, column: 6, scope: !3739)
!3826 = !DILocation(line: 467, column: 26, scope: !3823)
!3827 = !DILocation(line: 468, column: 6, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 468, column: 6)
!3829 = !DILocation(line: 468, column: 11, scope: !3828)
!3830 = !DILocation(line: 468, column: 6, scope: !3739)
!3831 = !DILocation(line: 468, column: 26, scope: !3828)
!3832 = !DILocation(line: 469, column: 6, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 469, column: 6)
!3834 = !DILocation(line: 469, column: 11, scope: !3833)
!3835 = !DILocation(line: 469, column: 6, scope: !3739)
!3836 = !DILocation(line: 469, column: 26, scope: !3833)
!3837 = !DILocation(line: 470, column: 6, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 470, column: 6)
!3839 = !DILocation(line: 470, column: 11, scope: !3838)
!3840 = !DILocation(line: 470, column: 6, scope: !3739)
!3841 = !DILocation(line: 470, column: 26, scope: !3838)
!3842 = !DILocation(line: 471, column: 6, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 471, column: 6)
!3844 = !DILocation(line: 471, column: 11, scope: !3843)
!3845 = !DILocation(line: 471, column: 6, scope: !3739)
!3846 = !DILocation(line: 471, column: 26, scope: !3843)
!3847 = !DILocation(line: 472, column: 6, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 472, column: 6)
!3849 = !DILocation(line: 472, column: 11, scope: !3848)
!3850 = !DILocation(line: 472, column: 6, scope: !3739)
!3851 = !DILocation(line: 472, column: 26, scope: !3848)
!3852 = !DILocation(line: 473, column: 6, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 473, column: 6)
!3854 = !DILocation(line: 473, column: 11, scope: !3853)
!3855 = !DILocation(line: 473, column: 6, scope: !3739)
!3856 = !DILocation(line: 473, column: 26, scope: !3853)
!3857 = !DILocation(line: 474, column: 6, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 474, column: 6)
!3859 = !DILocation(line: 474, column: 11, scope: !3858)
!3860 = !DILocation(line: 474, column: 6, scope: !3739)
!3861 = !DILocation(line: 474, column: 27, scope: !3858)
!3862 = !DILocation(line: 475, column: 6, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 475, column: 6)
!3864 = !DILocation(line: 475, column: 11, scope: !3863)
!3865 = !DILocation(line: 475, column: 6, scope: !3739)
!3866 = !DILocation(line: 475, column: 32, scope: !3863)
!3867 = !DILocation(line: 477, column: 50, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3739, file: !90, line: 477, column: 6)
!3869 = !DILocation(line: 477, column: 6, scope: !3739)
!3870 = !DILocation(line: 478, column: 3, scope: !3868)
!3871 = !DILocation(line: 478, column: 3, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !90, line: 478, column: 3)
!3873 = distinct !DILexicalBlock(scope: !3868, file: !90, line: 478, column: 3)
!3874 = !{i32 -2143536164}
!3875 = !DILocation(line: 478, column: 3, scope: !3873)
!3876 = !DILocation(line: 480, column: 3, scope: !3868)
!3877 = !DILocation(line: 480, column: 3, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3868, file: !90, line: 480, column: 3)
!3879 = !DILocation(line: 480, column: 3, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3878, file: !90, line: 480, column: 3)
!3881 = !DILocation(line: 480, column: 3, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3878, file: !90, line: 480, column: 3)
!3883 = !{i64 2151431335, i64 2151431364, i64 2151431410, i64 2151431468, i64 2151431522, i64 2151431576, i64 2151431631, i64 2151431662}
!3884 = !DILocation(line: 483, column: 2, scope: !3739)
!3885 = !DILocation(line: 484, column: 1, scope: !3739)
!3886 = !DISubprogram(name: "kmalloc_node_trace", scope: !90, file: !90, line: 528, type: !3887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!102, !3889, !100, !51, !328}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3891, line: 11, flags: DIFlagFwdDecl)
!3891 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3892 = distinct !DISubprogram(name: "kmalloc_type", scope: !90, file: !90, line: 401, type: !3893, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!89, !100, !135}
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "flags", arg: 1, scope: !3892, file: !90, line: 401, type: !100)
!3897 = !DILocalVariable(name: "caller", arg: 2, scope: !3892, file: !90, line: 401, type: !135)
!3898 = !DILocation(line: 401, column: 67, scope: !3892)
!3899 = !DILocation(line: 401, column: 88, scope: !3892)
!3900 = !DILocation(line: 407, column: 6, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3892, file: !90, line: 407, column: 6)
!3902 = !DILocation(line: 407, column: 6, scope: !3892)
!3903 = !DILocation(line: 413, column: 3, scope: !3901)
!3904 = !DILocation(line: 423, column: 38, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3892, file: !90, line: 423, column: 6)
!3906 = !DILocation(line: 423, column: 44, scope: !3905)
!3907 = !DILocation(line: 423, column: 6, scope: !3892)
!3908 = !DILocation(line: 424, column: 3, scope: !3905)
!3909 = !DILocation(line: 426, column: 3, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3892, file: !90, line: 425, column: 6)
!3911 = !DILocation(line: 429, column: 1, scope: !3892)
!3912 = !DISubprogram(name: "__kmalloc_node", scope: !90, file: !90, line: 520, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3913 = !DISubprogram(name: "__compiletime_assert_117", scope: !90, file: !90, line: 478, type: !626, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3914 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3915, file: !3915, line: 80, type: !3916, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3921)
!3915 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3916 = !DISubroutineType(types: !3917)
!3917 = !{null, !3918, !328}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3920)
!3920 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3921 = !{!3922, !3923}
!3922 = !DILocalVariable(name: "v", arg: 1, scope: !3914, file: !3915, line: 80, type: !3918)
!3923 = !DILocalVariable(name: "size", arg: 2, scope: !3914, file: !3915, line: 80, type: !328)
!3924 = !DILocation(line: 80, column: 74, scope: !3914)
!3925 = !DILocation(line: 80, column: 84, scope: !3914)
!3926 = !DILocation(line: 82, column: 20, scope: !3914)
!3927 = !DILocation(line: 82, column: 23, scope: !3914)
!3928 = !DILocation(line: 82, column: 2, scope: !3914)
!3929 = !DILocation(line: 83, column: 2, scope: !3914)
!3930 = !DILocation(line: 84, column: 1, scope: !3914)
!3931 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !118, file: !118, line: 76, type: !516, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3932)
!3932 = !{!3933, !3934}
!3933 = !DILocalVariable(name: "v", arg: 1, scope: !3931, file: !118, line: 76, type: !518)
!3934 = !DILocalVariable(name: "i", arg: 2, scope: !3931, file: !118, line: 76, type: !519)
!3935 = !DILocation(line: 76, column: 36, scope: !3931)
!3936 = !DILocation(line: 76, column: 44, scope: !3931)
!3937 = !DILocation(line: 79, column: 19, scope: !3931)
!3938 = !DILocation(line: 79, column: 22, scope: !3931)
!3939 = !DILocation(line: 79, column: 2, scope: !3931)
!3940 = !DILocation(line: 83, column: 1, scope: !3931)
!3941 = distinct !DISubprogram(name: "kasan_check_write", scope: !3942, file: !3942, line: 44, type: !3943, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3945)
!3942 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!1564, !3918, !7}
!3945 = !{!3946, !3947}
!3946 = !DILocalVariable(name: "p", arg: 1, scope: !3941, file: !3942, line: 44, type: !3918)
!3947 = !DILocalVariable(name: "size", arg: 2, scope: !3941, file: !3942, line: 44, type: !7)
!3948 = !DILocation(line: 44, column: 59, scope: !3941)
!3949 = !DILocation(line: 44, column: 75, scope: !3941)
!3950 = !DILocation(line: 46, column: 2, scope: !3941)
!3951 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3952, file: !3952, line: 229, type: !3953, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3955)
!3952 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !3918, !328, !51}
!3955 = !{!3956, !3957, !3958}
!3956 = !DILocalVariable(name: "ptr", arg: 1, scope: !3951, file: !3952, line: 229, type: !3918)
!3957 = !DILocalVariable(name: "size", arg: 2, scope: !3951, file: !3952, line: 229, type: !328)
!3958 = !DILocalVariable(name: "type", arg: 3, scope: !3951, file: !3952, line: 230, type: !51)
!3959 = !DILocation(line: 229, column: 60, scope: !3951)
!3960 = !DILocation(line: 229, column: 72, scope: !3951)
!3961 = !DILocation(line: 230, column: 15, scope: !3951)
!3962 = !DILocation(line: 230, column: 23, scope: !3951)
!3963 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !3964, file: !3964, line: 2600, type: !3965, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3968)
!3964 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !3967, !123}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!3968 = !{!3969, !3970}
!3969 = !DILocalVariable(name: "v", arg: 1, scope: !3963, file: !3964, line: 2600, type: !3967)
!3970 = !DILocalVariable(name: "i", arg: 2, scope: !3963, file: !3964, line: 2600, type: !123)
!3971 = !DILocation(line: 2600, column: 30, scope: !3963)
!3972 = !DILocation(line: 2600, column: 37, scope: !3963)
!3973 = !DILocation(line: 2602, column: 20, scope: !3963)
!3974 = !DILocation(line: 2602, column: 23, scope: !3963)
!3975 = !DILocation(line: 2602, column: 2, scope: !3963)
!3976 = !DILocation(line: 2603, column: 1, scope: !3963)
!3977 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !3978, file: !3978, line: 18, type: !3965, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3979)
!3978 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!3979 = !{!3980, !3981}
!3980 = !DILocalVariable(name: "v", arg: 1, scope: !3977, file: !3978, line: 18, type: !3967)
!3981 = !DILocalVariable(name: "i", arg: 2, scope: !3977, file: !3978, line: 18, type: !123)
!3982 = !DILocation(line: 18, column: 59, scope: !3977)
!3983 = !DILocation(line: 18, column: 66, scope: !3977)
!3984 = !DILocation(line: 20, column: 2, scope: !3977)
!3985 = !DILocation(line: 20, column: 2, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3977, file: !3978, line: 20, column: 2)
!3987 = !DILocation(line: 21, column: 1, scope: !3977)
!3988 = !DISubprogram(name: "_raw_spin_lock", scope: !3989, file: !3989, line: 22, type: !3990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3989 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !381}
!3992 = distinct !DISubprogram(name: "__list_add_rcu", scope: !540, file: !540, line: 76, type: !3993, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !106, !106, !106}
!3995 = !{!3996, !3997, !3998, !3999}
!3996 = !DILocalVariable(name: "new", arg: 1, scope: !3992, file: !540, line: 76, type: !106)
!3997 = !DILocalVariable(name: "prev", arg: 2, scope: !3992, file: !540, line: 77, type: !106)
!3998 = !DILocalVariable(name: "next", arg: 3, scope: !3992, file: !540, line: 77, type: !106)
!3999 = !DILocalVariable(name: "_r_a_p__v", scope: !4000, file: !540, line: 84, type: !144)
!4000 = distinct !DILexicalBlock(scope: !3992, file: !540, line: 84, column: 2)
!4001 = !DILocation(line: 76, column: 53, scope: !3992)
!4002 = !DILocation(line: 77, column: 21, scope: !3992)
!4003 = !DILocation(line: 77, column: 45, scope: !3992)
!4004 = !DILocation(line: 79, column: 24, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3992, file: !540, line: 79, column: 6)
!4006 = !DILocation(line: 79, column: 29, scope: !4005)
!4007 = !DILocation(line: 79, column: 35, scope: !4005)
!4008 = !DILocation(line: 79, column: 7, scope: !4005)
!4009 = !DILocation(line: 79, column: 6, scope: !3992)
!4010 = !DILocation(line: 80, column: 3, scope: !4005)
!4011 = !DILocation(line: 82, column: 14, scope: !3992)
!4012 = !DILocation(line: 82, column: 2, scope: !3992)
!4013 = !DILocation(line: 82, column: 7, scope: !3992)
!4014 = !DILocation(line: 82, column: 12, scope: !3992)
!4015 = !DILocation(line: 83, column: 14, scope: !3992)
!4016 = !DILocation(line: 83, column: 2, scope: !3992)
!4017 = !DILocation(line: 83, column: 7, scope: !3992)
!4018 = !DILocation(line: 83, column: 12, scope: !3992)
!4019 = !DILocation(line: 84, column: 2, scope: !3992)
!4020 = !DILocation(line: 84, column: 2, scope: !4000)
!4021 = !DILocation(line: 84, column: 2, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4000, file: !540, line: 84, column: 2)
!4023 = !DILocation(line: 84, column: 2, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4022, file: !540, line: 84, column: 2)
!4025 = !DILocation(line: 84, column: 2, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4024, file: !540, line: 84, column: 2)
!4027 = !DILocation(line: 84, column: 2, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4024, file: !540, line: 84, column: 2)
!4029 = !DILocation(line: 84, column: 2, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4022, file: !540, line: 84, column: 2)
!4031 = !DILocation(line: 84, column: 2, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4030, file: !540, line: 84, column: 2)
!4033 = !DILocation(line: 84, column: 2, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4030, file: !540, line: 84, column: 2)
!4035 = !DILocation(line: 84, column: 2, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4034, file: !540, line: 84, column: 2)
!4037 = !{i64 2151481654}
!4038 = !DILocation(line: 84, column: 2, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4034, file: !540, line: 84, column: 2)
!4040 = !DILocation(line: 84, column: 2, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4039, file: !540, line: 84, column: 2)
!4042 = !DILocation(line: 84, column: 2, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4039, file: !540, line: 84, column: 2)
!4044 = !DILocation(line: 85, column: 15, scope: !3992)
!4045 = !DILocation(line: 85, column: 2, scope: !3992)
!4046 = !DILocation(line: 85, column: 8, scope: !3992)
!4047 = !DILocation(line: 85, column: 13, scope: !3992)
!4048 = !DILocation(line: 86, column: 1, scope: !3992)
!4049 = distinct !DISubprogram(name: "__list_add_valid", scope: !391, file: !391, line: 128, type: !4050, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!1564, !106, !106, !106}
!4052 = !{!4053, !4054, !4055}
!4053 = !DILocalVariable(name: "new", arg: 1, scope: !4049, file: !391, line: 128, type: !106)
!4054 = !DILocalVariable(name: "prev", arg: 2, scope: !4049, file: !391, line: 129, type: !106)
!4055 = !DILocalVariable(name: "next", arg: 3, scope: !4049, file: !391, line: 130, type: !106)
!4056 = !DILocation(line: 128, column: 55, scope: !4049)
!4057 = !DILocation(line: 129, column: 23, scope: !4049)
!4058 = !DILocation(line: 130, column: 23, scope: !4049)
!4059 = !DILocation(line: 132, column: 2, scope: !4049)
!4060 = !DISubprogram(name: "_raw_spin_unlock", scope: !3989, file: !3989, line: 39, type: !3990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4061 = !DISubprogram(name: "__rcu_read_lock", scope: !625, file: !625, line: 74, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4062 = !DISubprogram(name: "__rcu_read_unlock", scope: !625, file: !625, line: 75, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4063 = distinct !DISubprogram(name: "__list_del_entry", scope: !391, file: !391, line: 213, type: !392, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4064)
!4064 = !{!4065}
!4065 = !DILocalVariable(name: "entry", arg: 1, scope: !4063, file: !391, line: 213, type: !106)
!4066 = !DILocation(line: 213, column: 55, scope: !4063)
!4067 = !DILocation(line: 215, column: 30, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4063, file: !391, line: 215, column: 6)
!4069 = !DILocation(line: 215, column: 7, scope: !4068)
!4070 = !DILocation(line: 215, column: 6, scope: !4063)
!4071 = !DILocation(line: 216, column: 3, scope: !4068)
!4072 = !DILocation(line: 218, column: 13, scope: !4063)
!4073 = !DILocation(line: 218, column: 20, scope: !4063)
!4074 = !DILocation(line: 218, column: 26, scope: !4063)
!4075 = !DILocation(line: 218, column: 33, scope: !4063)
!4076 = !DILocation(line: 218, column: 2, scope: !4063)
!4077 = !DILocation(line: 219, column: 1, scope: !4063)
!4078 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !391, file: !391, line: 134, type: !4079, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!1564, !106}
!4081 = !{!4082}
!4082 = !DILocalVariable(name: "entry", arg: 1, scope: !4078, file: !391, line: 134, type: !106)
!4083 = !DILocation(line: 134, column: 61, scope: !4078)
!4084 = !DILocation(line: 136, column: 2, scope: !4078)
!4085 = distinct !DISubprogram(name: "__list_del", scope: !391, file: !391, line: 193, type: !541, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4086)
!4086 = !{!4087, !4088}
!4087 = !DILocalVariable(name: "prev", arg: 1, scope: !4085, file: !391, line: 193, type: !106)
!4088 = !DILocalVariable(name: "next", arg: 2, scope: !4085, file: !391, line: 193, type: !106)
!4089 = !DILocation(line: 193, column: 50, scope: !4085)
!4090 = !DILocation(line: 193, column: 75, scope: !4085)
!4091 = !DILocation(line: 195, column: 15, scope: !4085)
!4092 = !DILocation(line: 195, column: 2, scope: !4085)
!4093 = !DILocation(line: 195, column: 8, scope: !4085)
!4094 = !DILocation(line: 195, column: 13, scope: !4085)
!4095 = !DILocation(line: 196, column: 2, scope: !4085)
!4096 = !DILocation(line: 196, column: 2, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4085, file: !391, line: 196, column: 2)
!4098 = !DILocation(line: 196, column: 2, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4097, file: !391, line: 196, column: 2)
!4100 = !DILocation(line: 196, column: 2, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4097, file: !391, line: 196, column: 2)
!4102 = !DILocation(line: 197, column: 1, scope: !4085)
!4103 = distinct !DISubprogram(name: "variable__ffs", scope: !4104, file: !4104, line: 250, type: !1895, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4105)
!4104 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4105 = !{!4106}
!4106 = !DILocalVariable(name: "word", arg: 1, scope: !4103, file: !4104, line: 250, type: !135)
!4107 = !DILocation(line: 250, column: 66, scope: !4103)
!4108 = !DILocation(line: 254, column: 11, scope: !4103)
!4109 = !DILocation(line: 252, column: 2, scope: !4103)
!4110 = !{i64 611322}
!4111 = !DILocation(line: 255, column: 9, scope: !4103)
!4112 = !DILocation(line: 255, column: 2, scope: !4103)
!4113 = !DISubprogram(name: "_find_first_bit", scope: !758, file: !758, line: 21, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4114 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3915, file: !3915, line: 66, type: !3916, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4115)
!4115 = !{!4116, !4117}
!4116 = !DILocalVariable(name: "v", arg: 1, scope: !4114, file: !3915, line: 66, type: !3918)
!4117 = !DILocalVariable(name: "size", arg: 2, scope: !4114, file: !3915, line: 66, type: !328)
!4118 = !DILocation(line: 66, column: 73, scope: !4114)
!4119 = !DILocation(line: 66, column: 83, scope: !4114)
!4120 = !DILocation(line: 68, column: 19, scope: !4114)
!4121 = !DILocation(line: 68, column: 22, scope: !4114)
!4122 = !DILocation(line: 68, column: 2, scope: !4114)
!4123 = !DILocation(line: 69, column: 2, scope: !4114)
!4124 = !DILocation(line: 70, column: 1, scope: !4114)
!4125 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !118, file: !118, line: 35, type: !967, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4126)
!4126 = !{!4127}
!4127 = !DILocalVariable(name: "v", arg: 1, scope: !4125, file: !118, line: 35, type: !969)
!4128 = !DILocation(line: 35, column: 43, scope: !4125)
!4129 = !DILocation(line: 38, column: 27, scope: !4125)
!4130 = !DILocation(line: 38, column: 9, scope: !4125)
!4131 = !DILocation(line: 38, column: 2, scope: !4125)
!4132 = distinct !DISubprogram(name: "kasan_check_read", scope: !3942, file: !3942, line: 40, type: !3943, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4133)
!4133 = !{!4134, !4135}
!4134 = !DILocalVariable(name: "p", arg: 1, scope: !4132, file: !3942, line: 40, type: !3918)
!4135 = !DILocalVariable(name: "size", arg: 2, scope: !4132, file: !3942, line: 40, type: !7)
!4136 = !DILocation(line: 40, column: 58, scope: !4132)
!4137 = !DILocation(line: 40, column: 74, scope: !4132)
!4138 = !DILocation(line: 42, column: 2, scope: !4132)
!4139 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !3964, file: !3964, line: 2554, type: !4140, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4144)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!123, !4142}
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!4144 = !{!4145}
!4145 = !DILocalVariable(name: "v", arg: 1, scope: !4139, file: !3964, line: 2554, type: !4142)
!4146 = !DILocation(line: 2554, column: 37, scope: !4139)
!4147 = !DILocation(line: 2556, column: 28, scope: !4139)
!4148 = !DILocation(line: 2556, column: 9, scope: !4139)
!4149 = !DILocation(line: 2556, column: 2, scope: !4139)
!4150 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !3978, file: !3978, line: 13, type: !4140, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4151)
!4151 = !{!4152}
!4152 = !DILocalVariable(name: "v", arg: 1, scope: !4150, file: !3978, line: 13, type: !4142)
!4153 = !DILocation(line: 13, column: 65, scope: !4150)
!4154 = !DILocation(line: 15, column: 9, scope: !4150)
!4155 = !DILocation(line: 15, column: 2, scope: !4150)
!4156 = distinct !DISubprogram(name: "set_bits_ll", scope: !3, file: !3, line: 46, type: !4157, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!51, !152, !135}
!4159 = !{!4160, !4161, !4162, !4163, !4165, !4166, !4168, !4169, !4170, !4171}
!4160 = !DILocalVariable(name: "addr", arg: 1, scope: !4156, file: !3, line: 46, type: !152)
!4161 = !DILocalVariable(name: "mask_to_set", arg: 2, scope: !4156, file: !3, line: 46, type: !135)
!4162 = !DILocalVariable(name: "val", scope: !4156, file: !3, line: 48, type: !135)
!4163 = !DILocalVariable(name: "__ai_ptr", scope: !4164, file: !3, line: 54, type: !152)
!4164 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 54, column: 12)
!4165 = !DILocalVariable(name: "__ai_oldp", scope: !4164, file: !3, line: 54, type: !152)
!4166 = !DILocalVariable(name: "success", scope: !4167, file: !3, line: 54, type: !1564)
!4167 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 54, column: 12)
!4168 = !DILocalVariable(name: "_old", scope: !4167, file: !3, line: 54, type: !152)
!4169 = !DILocalVariable(name: "__old", scope: !4167, file: !3, line: 54, type: !135)
!4170 = !DILocalVariable(name: "__new", scope: !4167, file: !3, line: 54, type: !135)
!4171 = !DILocalVariable(name: "__ptr", scope: !4167, file: !3, line: 54, type: !153)
!4172 = !DILocation(line: 46, column: 28, scope: !4156)
!4173 = !DILocation(line: 46, column: 48, scope: !4156)
!4174 = !DILocation(line: 48, column: 2, scope: !4156)
!4175 = !DILocation(line: 48, column: 16, scope: !4156)
!4176 = !DILocation(line: 48, column: 22, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 48, column: 22)
!4178 = !DILocation(line: 48, column: 22, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 48, column: 22)
!4180 = !DILocation(line: 50, column: 2, scope: !4156)
!4181 = !DILocation(line: 51, column: 7, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 51, column: 7)
!4183 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 50, column: 5)
!4184 = !DILocation(line: 51, column: 13, scope: !4182)
!4185 = !DILocation(line: 51, column: 11, scope: !4182)
!4186 = !DILocation(line: 51, column: 7, scope: !4183)
!4187 = !DILocation(line: 52, column: 4, scope: !4182)
!4188 = !DILocation(line: 53, column: 3, scope: !4183)
!4189 = !DILocation(line: 54, column: 2, scope: !4183)
!4190 = !DILocation(line: 54, column: 12, scope: !4164)
!4191 = !DILocation(line: 54, column: 12, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 54, column: 12)
!4193 = !DILocation(line: 54, column: 12, scope: !4167)
!4194 = !{i64 2152977560, i64 2152977599, i64 2152977620, i64 2152977657, i64 2152977680, i64 2152977689, i64 2152977890}
!4195 = !DILocation(line: 54, column: 12, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 54, column: 12)
!4197 = !DILocation(line: 54, column: 12, scope: !4156)
!4198 = !DILocation(line: 54, column: 11, scope: !4156)
!4199 = distinct !{!4199, !4180, !4200, !618, !619}
!4200 = !DILocation(line: 54, column: 54, scope: !4156)
!4201 = !DILocation(line: 56, column: 2, scope: !4156)
!4202 = !DILocation(line: 57, column: 1, scope: !4156)
!4203 = distinct !DISubprogram(name: "cpu_relax", scope: !4204, file: !4204, line: 16, type: !626, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4204 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!4205 = !DILocation(line: 18, column: 2, scope: !4203)
!4206 = !DILocation(line: 19, column: 1, scope: !4203)
!4207 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3915, file: !3915, line: 94, type: !3916, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4208)
!4208 = !{!4209, !4210}
!4209 = !DILocalVariable(name: "v", arg: 1, scope: !4207, file: !3915, line: 94, type: !3918)
!4210 = !DILocalVariable(name: "size", arg: 2, scope: !4207, file: !3915, line: 94, type: !328)
!4211 = !DILocation(line: 94, column: 79, scope: !4207)
!4212 = !DILocation(line: 94, column: 89, scope: !4207)
!4213 = !DILocation(line: 96, column: 20, scope: !4207)
!4214 = !DILocation(line: 96, column: 23, scope: !4207)
!4215 = !DILocation(line: 96, column: 2, scope: !4207)
!4216 = !DILocation(line: 97, column: 2, scope: !4207)
!4217 = !DILocation(line: 98, column: 1, scope: !4207)
!4218 = distinct !DISubprogram(name: "instrument_read_write", scope: !3915, file: !3915, line: 52, type: !3916, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4219)
!4219 = !{!4220, !4221}
!4220 = !DILocalVariable(name: "v", arg: 1, scope: !4218, file: !3915, line: 52, type: !3918)
!4221 = !DILocalVariable(name: "size", arg: 2, scope: !4218, file: !3915, line: 52, type: !328)
!4222 = !DILocation(line: 52, column: 72, scope: !4218)
!4223 = !DILocation(line: 52, column: 82, scope: !4218)
!4224 = !DILocation(line: 54, column: 20, scope: !4218)
!4225 = !DILocation(line: 54, column: 23, scope: !4218)
!4226 = !DILocation(line: 54, column: 2, scope: !4218)
!4227 = !DILocation(line: 55, column: 2, scope: !4218)
!4228 = !DILocation(line: 56, column: 1, scope: !4218)
!4229 = distinct !DISubprogram(name: "rep_nop", scope: !4204, file: !4204, line: 11, type: !626, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4230 = !DILocation(line: 13, column: 2, scope: !4229)
!4231 = !{i64 2047570}
!4232 = !DILocation(line: 14, column: 1, scope: !4229)
!4233 = distinct !DISubprogram(name: "clear_bits_ll", scope: !3, file: !3, line: 60, type: !4157, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4234)
!4234 = !{!4235, !4236, !4237, !4238, !4240, !4241, !4243, !4244, !4245, !4246}
!4235 = !DILocalVariable(name: "addr", arg: 1, scope: !4233, file: !3, line: 60, type: !152)
!4236 = !DILocalVariable(name: "mask_to_clear", arg: 2, scope: !4233, file: !3, line: 60, type: !135)
!4237 = !DILocalVariable(name: "val", scope: !4233, file: !3, line: 62, type: !135)
!4238 = !DILocalVariable(name: "__ai_ptr", scope: !4239, file: !3, line: 68, type: !152)
!4239 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 68, column: 12)
!4240 = !DILocalVariable(name: "__ai_oldp", scope: !4239, file: !3, line: 68, type: !152)
!4241 = !DILocalVariable(name: "success", scope: !4242, file: !3, line: 68, type: !1564)
!4242 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 68, column: 12)
!4243 = !DILocalVariable(name: "_old", scope: !4242, file: !3, line: 68, type: !152)
!4244 = !DILocalVariable(name: "__old", scope: !4242, file: !3, line: 68, type: !135)
!4245 = !DILocalVariable(name: "__new", scope: !4242, file: !3, line: 68, type: !135)
!4246 = !DILocalVariable(name: "__ptr", scope: !4242, file: !3, line: 68, type: !153)
!4247 = !DILocation(line: 60, column: 30, scope: !4233)
!4248 = !DILocation(line: 60, column: 50, scope: !4233)
!4249 = !DILocation(line: 62, column: 2, scope: !4233)
!4250 = !DILocation(line: 62, column: 16, scope: !4233)
!4251 = !DILocation(line: 62, column: 22, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 62, column: 22)
!4253 = !DILocation(line: 62, column: 22, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 62, column: 22)
!4255 = !DILocation(line: 64, column: 2, scope: !4233)
!4256 = !DILocation(line: 65, column: 8, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 65, column: 7)
!4258 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 64, column: 5)
!4259 = !DILocation(line: 65, column: 14, scope: !4257)
!4260 = !DILocation(line: 65, column: 12, scope: !4257)
!4261 = !DILocation(line: 65, column: 32, scope: !4257)
!4262 = !DILocation(line: 65, column: 29, scope: !4257)
!4263 = !DILocation(line: 65, column: 7, scope: !4258)
!4264 = !DILocation(line: 66, column: 4, scope: !4257)
!4265 = !DILocation(line: 67, column: 3, scope: !4258)
!4266 = !DILocation(line: 68, column: 2, scope: !4258)
!4267 = !DILocation(line: 68, column: 12, scope: !4239)
!4268 = !DILocation(line: 68, column: 12, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 68, column: 12)
!4270 = !DILocation(line: 68, column: 12, scope: !4242)
!4271 = !{i64 2152983936, i64 2152983975, i64 2152983996, i64 2152984033, i64 2152984056, i64 2152984065, i64 2152984266}
!4272 = !DILocation(line: 68, column: 12, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 68, column: 12)
!4274 = !DILocation(line: 68, column: 12, scope: !4233)
!4275 = !DILocation(line: 68, column: 11, scope: !4233)
!4276 = distinct !{!4276, !4255, !4277, !618, !619}
!4277 = !DILocation(line: 68, column: 57, scope: !4233)
!4278 = !DILocation(line: 70, column: 2, scope: !4233)
!4279 = !DILocation(line: 71, column: 1, scope: !4233)
!4280 = distinct !DISubprogram(name: "raw_atomic_long_sub", scope: !118, file: !118, line: 307, type: !1114, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4281)
!4281 = !{!4282, !4283}
!4282 = !DILocalVariable(name: "i", arg: 1, scope: !4280, file: !118, line: 307, type: !519)
!4283 = !DILocalVariable(name: "v", arg: 2, scope: !4280, file: !118, line: 307, type: !518)
!4284 = !DILocation(line: 307, column: 26, scope: !4280)
!4285 = !DILocation(line: 307, column: 44, scope: !4280)
!4286 = !DILocation(line: 310, column: 19, scope: !4280)
!4287 = !DILocation(line: 310, column: 22, scope: !4280)
!4288 = !DILocation(line: 310, column: 2, scope: !4280)
!4289 = !DILocation(line: 314, column: 1, scope: !4280)
!4290 = distinct !DISubprogram(name: "raw_atomic64_sub", scope: !3964, file: !3964, line: 2866, type: !4291, scopeLine: 2867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !123, !3967}
!4293 = !{!4294, !4295}
!4294 = !DILocalVariable(name: "i", arg: 1, scope: !4290, file: !3964, line: 2866, type: !123)
!4295 = !DILocalVariable(name: "v", arg: 2, scope: !4290, file: !3964, line: 2866, type: !3967)
!4296 = !DILocation(line: 2866, column: 22, scope: !4290)
!4297 = !DILocation(line: 2866, column: 37, scope: !4290)
!4298 = !DILocation(line: 2868, column: 20, scope: !4290)
!4299 = !DILocation(line: 2868, column: 23, scope: !4290)
!4300 = !DILocation(line: 2868, column: 2, scope: !4290)
!4301 = !DILocation(line: 2869, column: 1, scope: !4290)
!4302 = distinct !DISubprogram(name: "arch_atomic64_sub", scope: !3978, file: !3978, line: 30, type: !4291, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4303)
!4303 = !{!4304, !4305}
!4304 = !DILocalVariable(name: "i", arg: 1, scope: !4302, file: !3978, line: 30, type: !123)
!4305 = !DILocalVariable(name: "v", arg: 2, scope: !4302, file: !3978, line: 30, type: !3967)
!4306 = !DILocation(line: 30, column: 51, scope: !4302)
!4307 = !DILocation(line: 30, column: 66, scope: !4302)
!4308 = !DILocation(line: 33, column: 16, scope: !4302)
!4309 = !DILocation(line: 33, column: 19, scope: !4302)
!4310 = !DILocation(line: 34, column: 16, scope: !4302)
!4311 = !DILocation(line: 34, column: 25, scope: !4302)
!4312 = !DILocation(line: 34, column: 28, scope: !4302)
!4313 = !DILocation(line: 32, column: 2, scope: !4302)
!4314 = !{i64 2148973529, i64 2148973568, i64 2148973589, i64 2148973626, i64 2148973649, i64 2148973519}
!4315 = !DILocation(line: 35, column: 1, scope: !4302)
!4316 = distinct !DISubprogram(name: "raw_atomic_long_add", scope: !118, file: !118, line: 118, type: !1114, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4317)
!4317 = !{!4318, !4319}
!4318 = !DILocalVariable(name: "i", arg: 1, scope: !4316, file: !118, line: 118, type: !519)
!4319 = !DILocalVariable(name: "v", arg: 2, scope: !4316, file: !118, line: 118, type: !518)
!4320 = !DILocation(line: 118, column: 26, scope: !4316)
!4321 = !DILocation(line: 118, column: 44, scope: !4316)
!4322 = !DILocation(line: 121, column: 19, scope: !4316)
!4323 = !DILocation(line: 121, column: 22, scope: !4316)
!4324 = !DILocation(line: 121, column: 2, scope: !4316)
!4325 = !DILocation(line: 125, column: 1, scope: !4316)
!4326 = distinct !DISubprogram(name: "raw_atomic64_add", scope: !3964, file: !3964, line: 2643, type: !4291, scopeLine: 2644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4327)
!4327 = !{!4328, !4329}
!4328 = !DILocalVariable(name: "i", arg: 1, scope: !4326, file: !3964, line: 2643, type: !123)
!4329 = !DILocalVariable(name: "v", arg: 2, scope: !4326, file: !3964, line: 2643, type: !3967)
!4330 = !DILocation(line: 2643, column: 22, scope: !4326)
!4331 = !DILocation(line: 2643, column: 37, scope: !4326)
!4332 = !DILocation(line: 2645, column: 20, scope: !4326)
!4333 = !DILocation(line: 2645, column: 23, scope: !4326)
!4334 = !DILocation(line: 2645, column: 2, scope: !4326)
!4335 = !DILocation(line: 2646, column: 1, scope: !4326)
!4336 = distinct !DISubprogram(name: "arch_atomic64_add", scope: !3978, file: !3978, line: 23, type: !4291, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4337)
!4337 = !{!4338, !4339}
!4338 = !DILocalVariable(name: "i", arg: 1, scope: !4336, file: !3978, line: 23, type: !123)
!4339 = !DILocalVariable(name: "v", arg: 2, scope: !4336, file: !3978, line: 23, type: !3967)
!4340 = !DILocation(line: 23, column: 51, scope: !4336)
!4341 = !DILocation(line: 23, column: 66, scope: !4336)
!4342 = !DILocation(line: 26, column: 16, scope: !4336)
!4343 = !DILocation(line: 26, column: 19, scope: !4336)
!4344 = !DILocation(line: 27, column: 16, scope: !4336)
!4345 = !DILocation(line: 27, column: 25, scope: !4336)
!4346 = !DILocation(line: 27, column: 28, scope: !4336)
!4347 = !DILocation(line: 25, column: 2, scope: !4336)
!4348 = !{i64 2148973166, i64 2148973205, i64 2148973226, i64 2148973263, i64 2148973286, i64 2148973156}
!4349 = !DILocation(line: 28, column: 1, scope: !4336)
!4350 = distinct !DISubprogram(name: "fls", scope: !4104, file: !4104, line: 359, type: !4351, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!51, !7}
!4353 = !{!4354, !4355}
!4354 = !DILocalVariable(name: "x", arg: 1, scope: !4350, file: !4104, line: 359, type: !7)
!4355 = !DILocalVariable(name: "r", scope: !4350, file: !4104, line: 361, type: !51)
!4356 = !DILocation(line: 359, column: 45, scope: !4350)
!4357 = !DILocation(line: 361, column: 2, scope: !4350)
!4358 = !DILocation(line: 361, column: 6, scope: !4350)
!4359 = !DILocation(line: 375, column: 14, scope: !4350)
!4360 = !DILocation(line: 373, column: 2, scope: !4350)
!4361 = !{i64 614384}
!4362 = !DILocation(line: 386, column: 9, scope: !4350)
!4363 = !DILocation(line: 386, column: 11, scope: !4350)
!4364 = !DILocation(line: 387, column: 1, scope: !4350)
!4365 = !DILocation(line: 386, column: 2, scope: !4350)
!4366 = distinct !DISubprogram(name: "fls_long", scope: !4367, file: !4367, line: 204, type: !4368, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4370)
!4367 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!7, !135}
!4370 = !{!4371}
!4371 = !DILocalVariable(name: "l", arg: 1, scope: !4366, file: !4367, line: 204, type: !135)
!4372 = !DILocation(line: 204, column: 47, scope: !4366)
!4373 = !DILocation(line: 208, column: 15, scope: !4366)
!4374 = !DILocation(line: 208, column: 9, scope: !4366)
!4375 = !DILocation(line: 208, column: 2, scope: !4366)
!4376 = distinct !DISubprogram(name: "fls64", scope: !4104, file: !4104, line: 401, type: !4377, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4379)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!51, !131}
!4379 = !{!4380, !4381}
!4380 = !DILocalVariable(name: "x", arg: 1, scope: !4376, file: !4104, line: 401, type: !131)
!4381 = !DILocalVariable(name: "bitpos", scope: !4376, file: !4104, line: 403, type: !51)
!4382 = !DILocation(line: 401, column: 40, scope: !4376)
!4383 = !DILocation(line: 403, column: 2, scope: !4376)
!4384 = !DILocation(line: 403, column: 6, scope: !4376)
!4385 = !DILocation(line: 409, column: 2, scope: !4376)
!4386 = !DILocation(line: 411, column: 14, scope: !4376)
!4387 = !{i64 615350}
!4388 = !DILocation(line: 412, column: 9, scope: !4376)
!4389 = !DILocation(line: 412, column: 16, scope: !4376)
!4390 = !DILocation(line: 413, column: 1, scope: !4376)
!4391 = !DILocation(line: 412, column: 2, scope: !4376)
!4392 = !DISubprogram(name: "_find_next_bit", scope: !758, file: !758, line: 11, type: !1988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4393 = !DISubprogram(name: "strcmp", scope: !795, file: !795, line: 88, type: !4394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!51, !209, !209}
