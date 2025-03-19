; ModuleID = 'lib/kfifo.c'
source_filename = "lib/kfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_in: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_in ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_out_peek: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_out_peek ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_out: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_out ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_to_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_to_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_dma_in_prepare: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_dma_in_prepare ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_dma_out_prepare: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_dma_out_prepare ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_max_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_max_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_len_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_len_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_in_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_in_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_out_peek_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_out_peek_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_out_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_out_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_skip_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_skip_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_from_user_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_from_user_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_to_user_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_to_user_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_dma_in_prepare_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_dma_in_prepare_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_dma_in_finish_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_dma_in_finish_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_dma_out_prepare_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_dma_out_prepare_r ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___kfifo_dma_out_finish_r: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __kfifo_dma_out_finish_r ; .previous"

%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.page = type { i64, %union.anon.13, %union.anon.22, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %union.anon.15, ptr, %union.anon.17, i64 }
%union.anon.15 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.17 = type { i64 }
%union.anon.22 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID___addressable___kfifo_alloc277 = internal global ptr @__kfifo_alloc, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable___kfifo_free278 = internal global ptr @__kfifo_free, section ".discard.addressable", align 8, !dbg !3411
@__UNIQUE_ID___addressable___kfifo_init279 = internal global ptr @__kfifo_init, section ".discard.addressable", align 8, !dbg !3413
@__UNIQUE_ID___addressable___kfifo_in282 = internal global ptr @__kfifo_in, section ".discard.addressable", align 8, !dbg !3415
@__UNIQUE_ID___addressable___kfifo_out_peek285 = internal global ptr @__kfifo_out_peek, section ".discard.addressable", align 8, !dbg !3417
@__UNIQUE_ID___addressable___kfifo_out286 = internal global ptr @__kfifo_out, section ".discard.addressable", align 8, !dbg !3419
@__UNIQUE_ID___addressable___kfifo_from_user289 = internal global ptr @__kfifo_from_user, section ".discard.addressable", align 8, !dbg !3421
@__UNIQUE_ID___addressable___kfifo_to_user292 = internal global ptr @__kfifo_to_user, section ".discard.addressable", align 8, !dbg !3423
@__UNIQUE_ID___addressable___kfifo_dma_in_prepare295 = internal global ptr @__kfifo_dma_in_prepare, section ".discard.addressable", align 8, !dbg !3425
@__UNIQUE_ID___addressable___kfifo_dma_out_prepare296 = internal global ptr @__kfifo_dma_out_prepare, section ".discard.addressable", align 8, !dbg !3427
@__UNIQUE_ID___addressable___kfifo_max_r297 = internal global ptr @__kfifo_max_r, section ".discard.addressable", align 8, !dbg !3429
@__UNIQUE_ID___addressable___kfifo_len_r298 = internal global ptr @__kfifo_len_r, section ".discard.addressable", align 8, !dbg !3431
@__UNIQUE_ID___addressable___kfifo_in_r299 = internal global ptr @__kfifo_in_r, section ".discard.addressable", align 8, !dbg !3433
@__UNIQUE_ID___addressable___kfifo_out_peek_r300 = internal global ptr @__kfifo_out_peek_r, section ".discard.addressable", align 8, !dbg !3435
@__UNIQUE_ID___addressable___kfifo_out_r301 = internal global ptr @__kfifo_out_r, section ".discard.addressable", align 8, !dbg !3437
@__UNIQUE_ID___addressable___kfifo_skip_r302 = internal global ptr @__kfifo_skip_r, section ".discard.addressable", align 8, !dbg !3439
@__UNIQUE_ID___addressable___kfifo_from_user_r303 = internal global ptr @__kfifo_from_user_r, section ".discard.addressable", align 8, !dbg !3441
@__UNIQUE_ID___addressable___kfifo_to_user_r304 = internal global ptr @__kfifo_to_user_r, section ".discard.addressable", align 8, !dbg !3443
@.str = private unnamed_addr constant [12 x i8] c"lib/kfifo.c\00", align 1, !dbg !3445
@__UNIQUE_ID___addressable___kfifo_dma_in_prepare_r305 = internal global ptr @__kfifo_dma_in_prepare_r, section ".discard.addressable", align 8, !dbg !3448
@__UNIQUE_ID___addressable___kfifo_dma_in_finish_r306 = internal global ptr @__kfifo_dma_in_finish_r, section ".discard.addressable", align 8, !dbg !3450
@__UNIQUE_ID___addressable___kfifo_dma_out_prepare_r307 = internal global ptr @__kfifo_dma_out_prepare_r, section ".discard.addressable", align 8, !dbg !3452
@__UNIQUE_ID___addressable___kfifo_dma_out_finish_r308 = internal global ptr @__kfifo_dma_out_finish_r, section ".discard.addressable", align 8, !dbg !3454
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3456
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !3461
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/scatterlist.h\00", align 1, !dbg !3467
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID___addressable___kfifo_alloc277, ptr @__UNIQUE_ID___addressable___kfifo_free278, ptr @__UNIQUE_ID___addressable___kfifo_init279, ptr @__UNIQUE_ID___addressable___kfifo_in282, ptr @__UNIQUE_ID___addressable___kfifo_out_peek285, ptr @__UNIQUE_ID___addressable___kfifo_out286, ptr @__UNIQUE_ID___addressable___kfifo_from_user289, ptr @__UNIQUE_ID___addressable___kfifo_to_user292, ptr @__UNIQUE_ID___addressable___kfifo_dma_in_prepare295, ptr @__UNIQUE_ID___addressable___kfifo_dma_out_prepare296, ptr @__UNIQUE_ID___addressable___kfifo_max_r297, ptr @__UNIQUE_ID___addressable___kfifo_len_r298, ptr @__UNIQUE_ID___addressable___kfifo_in_r299, ptr @__UNIQUE_ID___addressable___kfifo_out_peek_r300, ptr @__UNIQUE_ID___addressable___kfifo_out_r301, ptr @__UNIQUE_ID___addressable___kfifo_skip_r302, ptr @__UNIQUE_ID___addressable___kfifo_from_user_r303, ptr @__UNIQUE_ID___addressable___kfifo_to_user_r304, ptr @__UNIQUE_ID___addressable___kfifo_dma_in_prepare_r305, ptr @__UNIQUE_ID___addressable___kfifo_dma_in_finish_r306, ptr @__UNIQUE_ID___addressable___kfifo_dma_out_prepare_r307, ptr @__UNIQUE_ID___addressable___kfifo_dma_out_finish_r308], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_alloc(ptr noundef %fifo, i32 noundef %size, i64 noundef %esize, i32 noundef %gfp_mask) #0 align 16 !dbg !3479 {
entry:
  %retval = alloca i32, align 4
  %fifo.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %esize.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3492, metadata !DIExpression()), !dbg !3496
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3493, metadata !DIExpression()), !dbg !3497
  store i64 %esize, ptr %esize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %esize.addr, metadata !3494, metadata !DIExpression()), !dbg !3498
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !3495, metadata !DIExpression()), !dbg !3499
  %0 = load i32, ptr %size.addr, align 4, !dbg !3500
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3500
  br i1 %1, label %cond.true, label %cond.false15, !dbg !3500

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %size.addr, align 4, !dbg !3500
  %cmp = icmp eq i32 %2, 1, !dbg !3500
  br i1 %cmp, label %cond.true1, label %cond.false, !dbg !3500

cond.true1:                                       ; preds = %cond.true
  br label %cond.end13, !dbg !3500

cond.false:                                       ; preds = %cond.true
  %3 = load i32, ptr %size.addr, align 4, !dbg !3500
  %sub = sub i32 %3, 1, !dbg !3500
  %4 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !3500
  br i1 %4, label %cond.true2, label %cond.false9, !dbg !3500

cond.true2:                                       ; preds = %cond.false
  %5 = load i32, ptr %size.addr, align 4, !dbg !3500
  %sub3 = sub i32 %5, 1, !dbg !3500
  %cmp4 = icmp ult i32 %sub3, 2, !dbg !3500
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !3500

cond.true5:                                       ; preds = %cond.true2
  br label %cond.end, !dbg !3500

cond.false6:                                      ; preds = %cond.true2
  %6 = load i32, ptr %size.addr, align 4, !dbg !3500
  %sub7 = sub i32 %6, 1, !dbg !3500
  %conv = zext i32 %sub7 to i64, !dbg !3500
  %7 = call i64 @llvm.ctlz.i64(i64 %conv, i1 true), !dbg !3500
  %cast = trunc i64 %7 to i32, !dbg !3500
  %sub8 = sub i32 63, %cast, !dbg !3500
  br label %cond.end, !dbg !3500

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i32 [ 0, %cond.true5 ], [ %sub8, %cond.false6 ], !dbg !3500
  br label %cond.end11, !dbg !3500

cond.false9:                                      ; preds = %cond.false
  %8 = load i32, ptr %size.addr, align 4, !dbg !3500
  %sub10 = sub i32 %8, 1, !dbg !3500
  %call = call i32 @__ilog2_u32(i32 noundef %sub10) #18, !dbg !3500
  br label %cond.end11, !dbg !3500

cond.end11:                                       ; preds = %cond.false9, %cond.end
  %cond12 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false9 ], !dbg !3500
  %add = add i32 %cond12, 1, !dbg !3500
  %sh_prom = zext i32 %add to i64, !dbg !3500
  %shl = shl i64 1, %sh_prom, !dbg !3500
  br label %cond.end13, !dbg !3500

cond.end13:                                       ; preds = %cond.end11, %cond.true1
  %cond14 = phi i64 [ 1, %cond.true1 ], [ %shl, %cond.end11 ], !dbg !3500
  br label %cond.end18, !dbg !3500

cond.false15:                                     ; preds = %entry
  %9 = load i32, ptr %size.addr, align 4, !dbg !3500
  %conv16 = zext i32 %9 to i64, !dbg !3500
  %call17 = call i64 @__roundup_pow_of_two(i64 noundef %conv16) #18, !dbg !3500
  br label %cond.end18, !dbg !3500

cond.end18:                                       ; preds = %cond.false15, %cond.end13
  %cond19 = phi i64 [ %cond14, %cond.end13 ], [ %call17, %cond.false15 ], !dbg !3500
  %conv20 = trunc i64 %cond19 to i32, !dbg !3500
  store i32 %conv20, ptr %size.addr, align 4, !dbg !3501
  %10 = load ptr, ptr %fifo.addr, align 8, !dbg !3502
  %in = getelementptr inbounds %struct.__kfifo, ptr %10, i32 0, i32 0, !dbg !3503
  store i32 0, ptr %in, align 8, !dbg !3504
  %11 = load ptr, ptr %fifo.addr, align 8, !dbg !3505
  %out = getelementptr inbounds %struct.__kfifo, ptr %11, i32 0, i32 1, !dbg !3506
  store i32 0, ptr %out, align 4, !dbg !3507
  %12 = load i64, ptr %esize.addr, align 8, !dbg !3508
  %conv21 = trunc i64 %12 to i32, !dbg !3508
  %13 = load ptr, ptr %fifo.addr, align 8, !dbg !3509
  %esize22 = getelementptr inbounds %struct.__kfifo, ptr %13, i32 0, i32 3, !dbg !3510
  store i32 %conv21, ptr %esize22, align 4, !dbg !3511
  %14 = load i32, ptr %size.addr, align 4, !dbg !3512
  %cmp23 = icmp ult i32 %14, 2, !dbg !3514
  br i1 %cmp23, label %if.then, label %if.end, !dbg !3515

if.then:                                          ; preds = %cond.end18
  %15 = load ptr, ptr %fifo.addr, align 8, !dbg !3516
  %data = getelementptr inbounds %struct.__kfifo, ptr %15, i32 0, i32 4, !dbg !3518
  store ptr null, ptr %data, align 8, !dbg !3519
  %16 = load ptr, ptr %fifo.addr, align 8, !dbg !3520
  %mask = getelementptr inbounds %struct.__kfifo, ptr %16, i32 0, i32 2, !dbg !3521
  store i32 0, ptr %mask, align 8, !dbg !3522
  store i32 -22, ptr %retval, align 4, !dbg !3523
  br label %return, !dbg !3523

if.end:                                           ; preds = %cond.end18
  %17 = load i64, ptr %esize.addr, align 8, !dbg !3524
  %18 = load i32, ptr %size.addr, align 4, !dbg !3525
  %conv25 = zext i32 %18 to i64, !dbg !3525
  %19 = load i32, ptr %gfp_mask.addr, align 4, !dbg !3526
  %call26 = call noalias ptr @kmalloc_array(i64 noundef %17, i64 noundef %conv25, i32 noundef %19) #19, !dbg !3527
  %20 = load ptr, ptr %fifo.addr, align 8, !dbg !3528
  %data27 = getelementptr inbounds %struct.__kfifo, ptr %20, i32 0, i32 4, !dbg !3529
  store ptr %call26, ptr %data27, align 8, !dbg !3530
  %21 = load ptr, ptr %fifo.addr, align 8, !dbg !3531
  %data28 = getelementptr inbounds %struct.__kfifo, ptr %21, i32 0, i32 4, !dbg !3533
  %22 = load ptr, ptr %data28, align 8, !dbg !3533
  %tobool = icmp ne ptr %22, null, !dbg !3531
  br i1 %tobool, label %if.end31, label %if.then29, !dbg !3534

if.then29:                                        ; preds = %if.end
  %23 = load ptr, ptr %fifo.addr, align 8, !dbg !3535
  %mask30 = getelementptr inbounds %struct.__kfifo, ptr %23, i32 0, i32 2, !dbg !3537
  store i32 0, ptr %mask30, align 8, !dbg !3538
  store i32 -12, ptr %retval, align 4, !dbg !3539
  br label %return, !dbg !3539

if.end31:                                         ; preds = %if.end
  %24 = load i32, ptr %size.addr, align 4, !dbg !3540
  %sub32 = sub i32 %24, 1, !dbg !3541
  %25 = load ptr, ptr %fifo.addr, align 8, !dbg !3542
  %mask33 = getelementptr inbounds %struct.__kfifo, ptr %25, i32 0, i32 2, !dbg !3543
  store i32 %sub32, ptr %mask33, align 8, !dbg !3544
  store i32 0, ptr %retval, align 4, !dbg !3545
  br label %return, !dbg !3545

return:                                           ; preds = %if.end31, %if.then29, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3546
  ret i32 %26, !dbg !3546
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u32(i32 noundef %n) #3 align 16 !dbg !3547 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  %0 = load i32, ptr %n.addr, align 4, !dbg !3554
  %call = call i32 @fls(i32 noundef %0) #20, !dbg !3555
  %sub = sub i32 %call, 1, !dbg !3556
  ret i32 %sub, !dbg !3557
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__roundup_pow_of_two(i64 noundef %n) #4 align 16 !dbg !3558 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3562, metadata !DIExpression()), !dbg !3563
  %0 = load i64, ptr %n.addr, align 8, !dbg !3564
  %sub = sub i64 %0, 1, !dbg !3565
  %call = call i32 @fls_long(i64 noundef %sub) #20, !dbg !3566
  %sh_prom = zext i32 %call to i64, !dbg !3567
  %shl = shl i64 1, %sh_prom, !dbg !3567
  ret i64 %shl, !dbg !3568
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !3569 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3573, metadata !DIExpression()), !dbg !3577
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3574, metadata !DIExpression()), !dbg !3578
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3575, metadata !DIExpression()), !dbg !3579
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #21, !dbg !3580
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !3576, metadata !DIExpression()), !dbg !3581
  %0 = load i64, ptr %n.addr, align 8, !dbg !3582
  %1 = load i64, ptr %size.addr, align 8, !dbg !3582
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !3582
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !3582
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !3582
  store i64 %4, ptr %bytes, align 8, !dbg !3582
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #20, !dbg !3582
  %lnot = xor i1 %call, true, !dbg !3582
  %lnot1 = xor i1 %lnot, true, !dbg !3582
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3582
  %conv = sext i32 %lnot.ext to i64, !dbg !3582
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3582
  %tobool = icmp ne i64 %expval, 0, !dbg !3582
  br i1 %tobool, label %if.then, label %if.end, !dbg !3584

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3585

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !3586
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !3588
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !3589

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !3590
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3591
  br i1 %8, label %if.then2, label %if.end4, !dbg !3592

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !3593
  %10 = load i32, ptr %flags.addr, align 4, !dbg !3594
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #22, !dbg !3595
  store ptr %call3, ptr %retval, align 8, !dbg !3596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3596

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !3597
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3598
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #22, !dbg !3599
  store ptr %call5, ptr %retval, align 8, !dbg !3600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3600

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #21, !dbg !3601
  %13 = load ptr, ptr %retval, align 8, !dbg !3601
  ret ptr %13, !dbg !3601
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__kfifo_free(ptr noundef %fifo) #0 align 16 !dbg !3602 {
entry:
  %fifo.addr = alloca ptr, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3606, metadata !DIExpression()), !dbg !3607
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !3608
  %data = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4, !dbg !3609
  %1 = load ptr, ptr %data, align 8, !dbg !3609
  call void @kfree(ptr noundef %1) #20, !dbg !3610
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !3611
  %in = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 0, !dbg !3612
  store i32 0, ptr %in, align 8, !dbg !3613
  %3 = load ptr, ptr %fifo.addr, align 8, !dbg !3614
  %out = getelementptr inbounds %struct.__kfifo, ptr %3, i32 0, i32 1, !dbg !3615
  store i32 0, ptr %out, align 4, !dbg !3616
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !3617
  %esize = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 3, !dbg !3618
  store i32 0, ptr %esize, align 4, !dbg !3619
  %5 = load ptr, ptr %fifo.addr, align 8, !dbg !3620
  %data1 = getelementptr inbounds %struct.__kfifo, ptr %5, i32 0, i32 4, !dbg !3621
  store ptr null, ptr %data1, align 8, !dbg !3622
  %6 = load ptr, ptr %fifo.addr, align 8, !dbg !3623
  %mask = getelementptr inbounds %struct.__kfifo, ptr %6, i32 0, i32 2, !dbg !3624
  store i32 0, ptr %mask, align 8, !dbg !3625
  ret void, !dbg !3626
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3627 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_init(ptr noundef %fifo, ptr noundef %buffer, i32 noundef %size, i64 noundef %esize) #0 align 16 !dbg !3630 {
entry:
  %retval = alloca i32, align 4
  %fifo.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %esize.addr = alloca i64, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3634, metadata !DIExpression()), !dbg !3638
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3635, metadata !DIExpression()), !dbg !3639
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3636, metadata !DIExpression()), !dbg !3640
  store i64 %esize, ptr %esize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %esize.addr, metadata !3637, metadata !DIExpression()), !dbg !3641
  %0 = load i64, ptr %esize.addr, align 8, !dbg !3642
  %1 = load i32, ptr %size.addr, align 4, !dbg !3643
  %conv = zext i32 %1 to i64, !dbg !3643
  %div = udiv i64 %conv, %0, !dbg !3643
  %conv1 = trunc i64 %div to i32, !dbg !3643
  store i32 %conv1, ptr %size.addr, align 4, !dbg !3643
  %2 = load i32, ptr %size.addr, align 4, !dbg !3644
  %conv2 = zext i32 %2 to i64, !dbg !3644
  %call = call zeroext i1 @is_power_of_2(i64 noundef %conv2) #18, !dbg !3646
  br i1 %call, label %if.end, label %if.then, !dbg !3647

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %size.addr, align 4, !dbg !3648
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !3648
  br i1 %4, label %cond.true, label %cond.false11, !dbg !3648

cond.true:                                        ; preds = %if.then
  %5 = load i32, ptr %size.addr, align 4, !dbg !3648
  %6 = call i1 @llvm.is.constant.i32(i32 %5), !dbg !3648
  br i1 %6, label %cond.true3, label %cond.false7, !dbg !3648

cond.true3:                                       ; preds = %cond.true
  %7 = load i32, ptr %size.addr, align 4, !dbg !3648
  %cmp = icmp ult i32 %7, 2, !dbg !3648
  br i1 %cmp, label %cond.true5, label %cond.false, !dbg !3648

cond.true5:                                       ; preds = %cond.true3
  br label %cond.end, !dbg !3648

cond.false:                                       ; preds = %cond.true3
  %8 = load i32, ptr %size.addr, align 4, !dbg !3648
  %conv6 = zext i32 %8 to i64, !dbg !3648
  %9 = call i64 @llvm.ctlz.i64(i64 %conv6, i1 true), !dbg !3648
  %cast = trunc i64 %9 to i32, !dbg !3648
  %sub = sub i32 63, %cast, !dbg !3648
  br label %cond.end, !dbg !3648

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i32 [ 0, %cond.true5 ], [ %sub, %cond.false ], !dbg !3648
  br label %cond.end9, !dbg !3648

cond.false7:                                      ; preds = %cond.true
  %10 = load i32, ptr %size.addr, align 4, !dbg !3648
  %call8 = call i32 @__ilog2_u32(i32 noundef %10) #18, !dbg !3648
  br label %cond.end9, !dbg !3648

cond.end9:                                        ; preds = %cond.false7, %cond.end
  %cond10 = phi i32 [ %cond, %cond.end ], [ %call8, %cond.false7 ], !dbg !3648
  %sh_prom = zext i32 %cond10 to i64, !dbg !3648
  %shl = shl i64 1, %sh_prom, !dbg !3648
  br label %cond.end14, !dbg !3648

cond.false11:                                     ; preds = %if.then
  %11 = load i32, ptr %size.addr, align 4, !dbg !3648
  %conv12 = zext i32 %11 to i64, !dbg !3648
  %call13 = call i64 @__rounddown_pow_of_two(i64 noundef %conv12) #18, !dbg !3648
  br label %cond.end14, !dbg !3648

cond.end14:                                       ; preds = %cond.false11, %cond.end9
  %cond15 = phi i64 [ %shl, %cond.end9 ], [ %call13, %cond.false11 ], !dbg !3648
  %conv16 = trunc i64 %cond15 to i32, !dbg !3648
  store i32 %conv16, ptr %size.addr, align 4, !dbg !3649
  br label %if.end, !dbg !3650

if.end:                                           ; preds = %cond.end14, %entry
  %12 = load ptr, ptr %fifo.addr, align 8, !dbg !3651
  %in = getelementptr inbounds %struct.__kfifo, ptr %12, i32 0, i32 0, !dbg !3652
  store i32 0, ptr %in, align 8, !dbg !3653
  %13 = load ptr, ptr %fifo.addr, align 8, !dbg !3654
  %out = getelementptr inbounds %struct.__kfifo, ptr %13, i32 0, i32 1, !dbg !3655
  store i32 0, ptr %out, align 4, !dbg !3656
  %14 = load i64, ptr %esize.addr, align 8, !dbg !3657
  %conv17 = trunc i64 %14 to i32, !dbg !3657
  %15 = load ptr, ptr %fifo.addr, align 8, !dbg !3658
  %esize18 = getelementptr inbounds %struct.__kfifo, ptr %15, i32 0, i32 3, !dbg !3659
  store i32 %conv17, ptr %esize18, align 4, !dbg !3660
  %16 = load ptr, ptr %buffer.addr, align 8, !dbg !3661
  %17 = load ptr, ptr %fifo.addr, align 8, !dbg !3662
  %data = getelementptr inbounds %struct.__kfifo, ptr %17, i32 0, i32 4, !dbg !3663
  store ptr %16, ptr %data, align 8, !dbg !3664
  %18 = load i32, ptr %size.addr, align 4, !dbg !3665
  %cmp19 = icmp ult i32 %18, 2, !dbg !3667
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !3668

if.then21:                                        ; preds = %if.end
  %19 = load ptr, ptr %fifo.addr, align 8, !dbg !3669
  %mask = getelementptr inbounds %struct.__kfifo, ptr %19, i32 0, i32 2, !dbg !3671
  store i32 0, ptr %mask, align 8, !dbg !3672
  store i32 -22, ptr %retval, align 4, !dbg !3673
  br label %return, !dbg !3673

if.end22:                                         ; preds = %if.end
  %20 = load i32, ptr %size.addr, align 4, !dbg !3674
  %sub23 = sub i32 %20, 1, !dbg !3675
  %21 = load ptr, ptr %fifo.addr, align 8, !dbg !3676
  %mask24 = getelementptr inbounds %struct.__kfifo, ptr %21, i32 0, i32 2, !dbg !3677
  store i32 %sub23, ptr %mask24, align 8, !dbg !3678
  store i32 0, ptr %retval, align 4, !dbg !3679
  br label %return, !dbg !3679

return:                                           ; preds = %if.end22, %if.then21
  %22 = load i32, ptr %retval, align 4, !dbg !3680
  ret i32 %22, !dbg !3680
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #4 align 16 !dbg !3681 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3685, metadata !DIExpression()), !dbg !3686
  %0 = load i64, ptr %n.addr, align 8, !dbg !3687
  %cmp = icmp ne i64 %0, 0, !dbg !3688
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3689

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !3690
  %2 = load i64, ptr %n.addr, align 8, !dbg !3691
  %sub = sub i64 %2, 1, !dbg !3692
  %and = and i64 %1, %sub, !dbg !3693
  %cmp1 = icmp eq i64 %and, 0, !dbg !3694
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !3695
  ret i1 %3, !dbg !3696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__rounddown_pow_of_two(i64 noundef %n) #4 align 16 !dbg !3697 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3699, metadata !DIExpression()), !dbg !3700
  %0 = load i64, ptr %n.addr, align 8, !dbg !3701
  %call = call i32 @fls_long(i64 noundef %0) #20, !dbg !3702
  %sub = sub i32 %call, 1, !dbg !3703
  %sh_prom = zext i32 %sub to i64, !dbg !3704
  %shl = shl i64 1, %sh_prom, !dbg !3704
  ret i64 %shl, !dbg !3705
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_in(ptr noundef %fifo, ptr noundef %buf, i32 noundef %len) #0 align 16 !dbg !3706 {
entry:
  %fifo.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3710, metadata !DIExpression()), !dbg !3714
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3711, metadata !DIExpression()), !dbg !3715
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3712, metadata !DIExpression()), !dbg !3716
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !3717
  call void @llvm.dbg.declare(metadata ptr %l, metadata !3713, metadata !DIExpression()), !dbg !3718
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !3719
  %call = call i32 @kfifo_unused(ptr noundef %0) #20, !dbg !3720
  store i32 %call, ptr %l, align 4, !dbg !3721
  %1 = load i32, ptr %len.addr, align 4, !dbg !3722
  %2 = load i32, ptr %l, align 4, !dbg !3724
  %cmp = icmp ugt i32 %1, %2, !dbg !3725
  br i1 %cmp, label %if.then, label %if.end, !dbg !3726

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %l, align 4, !dbg !3727
  store i32 %3, ptr %len.addr, align 4, !dbg !3728
  br label %if.end, !dbg !3729

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !3730
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3731
  %6 = load i32, ptr %len.addr, align 4, !dbg !3732
  %7 = load ptr, ptr %fifo.addr, align 8, !dbg !3733
  %in = getelementptr inbounds %struct.__kfifo, ptr %7, i32 0, i32 0, !dbg !3734
  %8 = load i32, ptr %in, align 8, !dbg !3734
  call void @kfifo_copy_in(ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %8) #20, !dbg !3735
  %9 = load i32, ptr %len.addr, align 4, !dbg !3736
  %10 = load ptr, ptr %fifo.addr, align 8, !dbg !3737
  %in1 = getelementptr inbounds %struct.__kfifo, ptr %10, i32 0, i32 0, !dbg !3738
  %11 = load i32, ptr %in1, align 8, !dbg !3739
  %add = add i32 %11, %9, !dbg !3739
  store i32 %add, ptr %in1, align 8, !dbg !3739
  %12 = load i32, ptr %len.addr, align 4, !dbg !3740
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !3741
  ret i32 %12, !dbg !3742
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kfifo_unused(ptr noundef %fifo) #8 align 16 !dbg !3743 {
entry:
  %fifo.addr = alloca ptr, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3747, metadata !DIExpression()), !dbg !3748
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !3749
  %mask = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2, !dbg !3750
  %1 = load i32, ptr %mask, align 8, !dbg !3750
  %add = add i32 %1, 1, !dbg !3751
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !3752
  %in = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 0, !dbg !3753
  %3 = load i32, ptr %in, align 8, !dbg !3753
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !3754
  %out = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 1, !dbg !3755
  %5 = load i32, ptr %out, align 4, !dbg !3755
  %sub = sub i32 %3, %5, !dbg !3756
  %sub1 = sub i32 %add, %sub, !dbg !3757
  ret i32 %sub1, !dbg !3758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kfifo_copy_in(ptr noundef %fifo, ptr noundef %src, i32 noundef %len, i32 noundef %off) #0 align 16 !dbg !3759 {
entry:
  %fifo.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %off.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %esize = alloca i32, align 4
  %l = alloca i32, align 4
  %__UNIQUE_ID___x280 = alloca i32, align 4
  %__UNIQUE_ID___y281 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3763, metadata !DIExpression()), !dbg !3773
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3764, metadata !DIExpression()), !dbg !3774
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3765, metadata !DIExpression()), !dbg !3775
  store i32 %off, ptr %off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !3766, metadata !DIExpression()), !dbg !3776
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #21, !dbg !3777
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3767, metadata !DIExpression()), !dbg !3778
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !3779
  %mask = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2, !dbg !3780
  %1 = load i32, ptr %mask, align 8, !dbg !3780
  %add = add i32 %1, 1, !dbg !3781
  store i32 %add, ptr %size, align 4, !dbg !3778
  call void @llvm.lifetime.start.p0(i64 4, ptr %esize) #21, !dbg !3782
  call void @llvm.dbg.declare(metadata ptr %esize, metadata !3768, metadata !DIExpression()), !dbg !3783
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !3784
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 3, !dbg !3785
  %3 = load i32, ptr %esize1, align 4, !dbg !3785
  store i32 %3, ptr %esize, align 4, !dbg !3783
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !3786
  call void @llvm.dbg.declare(metadata ptr %l, metadata !3769, metadata !DIExpression()), !dbg !3787
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !3788
  %mask2 = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 2, !dbg !3789
  %5 = load i32, ptr %mask2, align 8, !dbg !3789
  %6 = load i32, ptr %off.addr, align 4, !dbg !3790
  %and = and i32 %6, %5, !dbg !3790
  store i32 %and, ptr %off.addr, align 4, !dbg !3790
  %7 = load i32, ptr %esize, align 4, !dbg !3791
  %cmp = icmp ne i32 %7, 1, !dbg !3793
  br i1 %cmp, label %if.then, label %if.end, !dbg !3794

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %esize, align 4, !dbg !3795
  %9 = load i32, ptr %off.addr, align 4, !dbg !3797
  %mul = mul i32 %9, %8, !dbg !3797
  store i32 %mul, ptr %off.addr, align 4, !dbg !3797
  %10 = load i32, ptr %esize, align 4, !dbg !3798
  %11 = load i32, ptr %size, align 4, !dbg !3799
  %mul3 = mul i32 %11, %10, !dbg !3799
  store i32 %mul3, ptr %size, align 4, !dbg !3799
  %12 = load i32, ptr %esize, align 4, !dbg !3800
  %13 = load i32, ptr %len.addr, align 4, !dbg !3801
  %mul4 = mul i32 %13, %12, !dbg !3801
  store i32 %mul4, ptr %len.addr, align 4, !dbg !3801
  br label %if.end, !dbg !3802

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x280) #21, !dbg !3803
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x280, metadata !3770, metadata !DIExpression()), !dbg !3803
  %14 = load i32, ptr %len.addr, align 4, !dbg !3803
  store i32 %14, ptr %__UNIQUE_ID___x280, align 4, !dbg !3803
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y281) #21, !dbg !3803
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y281, metadata !3772, metadata !DIExpression()), !dbg !3803
  %15 = load i32, ptr %size, align 4, !dbg !3803
  %16 = load i32, ptr %off.addr, align 4, !dbg !3803
  %sub = sub i32 %15, %16, !dbg !3803
  store i32 %sub, ptr %__UNIQUE_ID___y281, align 4, !dbg !3803
  %17 = load i32, ptr %__UNIQUE_ID___x280, align 4, !dbg !3803
  %18 = load i32, ptr %__UNIQUE_ID___y281, align 4, !dbg !3803
  %cmp5 = icmp ult i32 %17, %18, !dbg !3803
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !3803

cond.true:                                        ; preds = %if.end
  %19 = load i32, ptr %__UNIQUE_ID___x280, align 4, !dbg !3803
  br label %cond.end, !dbg !3803

cond.false:                                       ; preds = %if.end
  %20 = load i32, ptr %__UNIQUE_ID___y281, align 4, !dbg !3803
  br label %cond.end, !dbg !3803

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !3803
  store i32 %cond, ptr %tmp, align 4, !dbg !3803
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y281) #21, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x280) #21, !dbg !3804
  %21 = load i32, ptr %tmp, align 4, !dbg !3803
  store i32 %21, ptr %l, align 4, !dbg !3805
  %22 = load ptr, ptr %fifo.addr, align 8, !dbg !3806
  %data = getelementptr inbounds %struct.__kfifo, ptr %22, i32 0, i32 4, !dbg !3807
  %23 = load ptr, ptr %data, align 8, !dbg !3807
  %24 = load i32, ptr %off.addr, align 4, !dbg !3808
  %idx.ext = zext i32 %24 to i64, !dbg !3809
  %add.ptr = getelementptr i8, ptr %23, i64 %idx.ext, !dbg !3809
  %25 = load ptr, ptr %src.addr, align 8, !dbg !3810
  %26 = load i32, ptr %l, align 4, !dbg !3811
  %conv = zext i32 %26 to i64, !dbg !3811
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %25, i64 %conv, i1 false), !dbg !3812
  %27 = load ptr, ptr %fifo.addr, align 8, !dbg !3813
  %data6 = getelementptr inbounds %struct.__kfifo, ptr %27, i32 0, i32 4, !dbg !3814
  %28 = load ptr, ptr %data6, align 8, !dbg !3814
  %29 = load ptr, ptr %src.addr, align 8, !dbg !3815
  %30 = load i32, ptr %l, align 4, !dbg !3816
  %idx.ext7 = zext i32 %30 to i64, !dbg !3817
  %add.ptr8 = getelementptr i8, ptr %29, i64 %idx.ext7, !dbg !3817
  %31 = load i32, ptr %len.addr, align 4, !dbg !3818
  %32 = load i32, ptr %l, align 4, !dbg !3819
  %sub9 = sub i32 %31, %32, !dbg !3820
  %conv10 = zext i32 %sub9 to i64, !dbg !3818
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %add.ptr8, i64 %conv10, i1 false), !dbg !3821
  br label %do.body, !dbg !3822

do.body:                                          ; preds = %cond.end
  br label %do.body11, !dbg !3823

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !3825

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !3825

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !3823, !srcloc !3827
  br label %do.cond12, !dbg !3823

do.cond12:                                        ; preds = %do.end
  br label %do.end13, !dbg !3823

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !3828
  call void @llvm.lifetime.end.p0(i64 4, ptr %esize) #21, !dbg !3828
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #21, !dbg !3828
  ret void, !dbg !3828
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_out_peek(ptr noundef %fifo, ptr noundef %buf, i32 noundef %len) #0 align 16 !dbg !3829 {
entry:
  %fifo.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3833, metadata !DIExpression()), !dbg !3837
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3834, metadata !DIExpression()), !dbg !3838
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3835, metadata !DIExpression()), !dbg !3839
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !3840
  call void @llvm.dbg.declare(metadata ptr %l, metadata !3836, metadata !DIExpression()), !dbg !3841
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !3842
  %in = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 0, !dbg !3843
  %1 = load i32, ptr %in, align 8, !dbg !3843
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !3844
  %out = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 1, !dbg !3845
  %3 = load i32, ptr %out, align 4, !dbg !3845
  %sub = sub i32 %1, %3, !dbg !3846
  store i32 %sub, ptr %l, align 4, !dbg !3847
  %4 = load i32, ptr %len.addr, align 4, !dbg !3848
  %5 = load i32, ptr %l, align 4, !dbg !3850
  %cmp = icmp ugt i32 %4, %5, !dbg !3851
  br i1 %cmp, label %if.then, label %if.end, !dbg !3852

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %l, align 4, !dbg !3853
  store i32 %6, ptr %len.addr, align 4, !dbg !3854
  br label %if.end, !dbg !3855

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %fifo.addr, align 8, !dbg !3856
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !3857
  %9 = load i32, ptr %len.addr, align 4, !dbg !3858
  %10 = load ptr, ptr %fifo.addr, align 8, !dbg !3859
  %out1 = getelementptr inbounds %struct.__kfifo, ptr %10, i32 0, i32 1, !dbg !3860
  %11 = load i32, ptr %out1, align 4, !dbg !3860
  call void @kfifo_copy_out(ptr noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %11) #20, !dbg !3861
  %12 = load i32, ptr %len.addr, align 4, !dbg !3862
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !3863
  ret i32 %12, !dbg !3864
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kfifo_copy_out(ptr noundef %fifo, ptr noundef %dst, i32 noundef %len, i32 noundef %off) #0 align 16 !dbg !3865 {
entry:
  %fifo.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %off.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %esize = alloca i32, align 4
  %l = alloca i32, align 4
  %__UNIQUE_ID___x283 = alloca i32, align 4
  %__UNIQUE_ID___y284 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3869, metadata !DIExpression()), !dbg !3879
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3870, metadata !DIExpression()), !dbg !3880
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3871, metadata !DIExpression()), !dbg !3881
  store i32 %off, ptr %off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !3872, metadata !DIExpression()), !dbg !3882
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #21, !dbg !3883
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3873, metadata !DIExpression()), !dbg !3884
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !3885
  %mask = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2, !dbg !3886
  %1 = load i32, ptr %mask, align 8, !dbg !3886
  %add = add i32 %1, 1, !dbg !3887
  store i32 %add, ptr %size, align 4, !dbg !3884
  call void @llvm.lifetime.start.p0(i64 4, ptr %esize) #21, !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %esize, metadata !3874, metadata !DIExpression()), !dbg !3889
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !3890
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 3, !dbg !3891
  %3 = load i32, ptr %esize1, align 4, !dbg !3891
  store i32 %3, ptr %esize, align 4, !dbg !3889
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !3892
  call void @llvm.dbg.declare(metadata ptr %l, metadata !3875, metadata !DIExpression()), !dbg !3893
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !3894
  %mask2 = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 2, !dbg !3895
  %5 = load i32, ptr %mask2, align 8, !dbg !3895
  %6 = load i32, ptr %off.addr, align 4, !dbg !3896
  %and = and i32 %6, %5, !dbg !3896
  store i32 %and, ptr %off.addr, align 4, !dbg !3896
  %7 = load i32, ptr %esize, align 4, !dbg !3897
  %cmp = icmp ne i32 %7, 1, !dbg !3899
  br i1 %cmp, label %if.then, label %if.end, !dbg !3900

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %esize, align 4, !dbg !3901
  %9 = load i32, ptr %off.addr, align 4, !dbg !3903
  %mul = mul i32 %9, %8, !dbg !3903
  store i32 %mul, ptr %off.addr, align 4, !dbg !3903
  %10 = load i32, ptr %esize, align 4, !dbg !3904
  %11 = load i32, ptr %size, align 4, !dbg !3905
  %mul3 = mul i32 %11, %10, !dbg !3905
  store i32 %mul3, ptr %size, align 4, !dbg !3905
  %12 = load i32, ptr %esize, align 4, !dbg !3906
  %13 = load i32, ptr %len.addr, align 4, !dbg !3907
  %mul4 = mul i32 %13, %12, !dbg !3907
  store i32 %mul4, ptr %len.addr, align 4, !dbg !3907
  br label %if.end, !dbg !3908

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x283) #21, !dbg !3909
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x283, metadata !3876, metadata !DIExpression()), !dbg !3909
  %14 = load i32, ptr %len.addr, align 4, !dbg !3909
  store i32 %14, ptr %__UNIQUE_ID___x283, align 4, !dbg !3909
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y284) #21, !dbg !3909
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y284, metadata !3878, metadata !DIExpression()), !dbg !3909
  %15 = load i32, ptr %size, align 4, !dbg !3909
  %16 = load i32, ptr %off.addr, align 4, !dbg !3909
  %sub = sub i32 %15, %16, !dbg !3909
  store i32 %sub, ptr %__UNIQUE_ID___y284, align 4, !dbg !3909
  %17 = load i32, ptr %__UNIQUE_ID___x283, align 4, !dbg !3909
  %18 = load i32, ptr %__UNIQUE_ID___y284, align 4, !dbg !3909
  %cmp5 = icmp ult i32 %17, %18, !dbg !3909
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !3909

cond.true:                                        ; preds = %if.end
  %19 = load i32, ptr %__UNIQUE_ID___x283, align 4, !dbg !3909
  br label %cond.end, !dbg !3909

cond.false:                                       ; preds = %if.end
  %20 = load i32, ptr %__UNIQUE_ID___y284, align 4, !dbg !3909
  br label %cond.end, !dbg !3909

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !3909
  store i32 %cond, ptr %tmp, align 4, !dbg !3909
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y284) #21, !dbg !3910
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x283) #21, !dbg !3910
  %21 = load i32, ptr %tmp, align 4, !dbg !3909
  store i32 %21, ptr %l, align 4, !dbg !3911
  %22 = load ptr, ptr %dst.addr, align 8, !dbg !3912
  %23 = load ptr, ptr %fifo.addr, align 8, !dbg !3913
  %data = getelementptr inbounds %struct.__kfifo, ptr %23, i32 0, i32 4, !dbg !3914
  %24 = load ptr, ptr %data, align 8, !dbg !3914
  %25 = load i32, ptr %off.addr, align 4, !dbg !3915
  %idx.ext = zext i32 %25 to i64, !dbg !3916
  %add.ptr = getelementptr i8, ptr %24, i64 %idx.ext, !dbg !3916
  %26 = load i32, ptr %l, align 4, !dbg !3917
  %conv = zext i32 %26 to i64, !dbg !3917
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %add.ptr, i64 %conv, i1 false), !dbg !3918
  %27 = load ptr, ptr %dst.addr, align 8, !dbg !3919
  %28 = load i32, ptr %l, align 4, !dbg !3920
  %idx.ext6 = zext i32 %28 to i64, !dbg !3921
  %add.ptr7 = getelementptr i8, ptr %27, i64 %idx.ext6, !dbg !3921
  %29 = load ptr, ptr %fifo.addr, align 8, !dbg !3922
  %data8 = getelementptr inbounds %struct.__kfifo, ptr %29, i32 0, i32 4, !dbg !3923
  %30 = load ptr, ptr %data8, align 8, !dbg !3923
  %31 = load i32, ptr %len.addr, align 4, !dbg !3924
  %32 = load i32, ptr %l, align 4, !dbg !3925
  %sub9 = sub i32 %31, %32, !dbg !3926
  %conv10 = zext i32 %sub9 to i64, !dbg !3924
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr7, ptr align 1 %30, i64 %conv10, i1 false), !dbg !3927
  br label %do.body, !dbg !3928

do.body:                                          ; preds = %cond.end
  br label %do.body11, !dbg !3929

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !3931

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !3931

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !3929, !srcloc !3933
  br label %do.cond12, !dbg !3929

do.cond12:                                        ; preds = %do.end
  br label %do.end13, !dbg !3929

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !3934
  call void @llvm.lifetime.end.p0(i64 4, ptr %esize) #21, !dbg !3934
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #21, !dbg !3934
  ret void, !dbg !3934
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_out(ptr noundef %fifo, ptr noundef %buf, i32 noundef %len) #0 align 16 !dbg !3935 {
entry:
  %fifo.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3937, metadata !DIExpression()), !dbg !3940
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3938, metadata !DIExpression()), !dbg !3941
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3939, metadata !DIExpression()), !dbg !3942
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !3943
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !3944
  %2 = load i32, ptr %len.addr, align 4, !dbg !3945
  %call = call i32 @__kfifo_out_peek(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20, !dbg !3946
  store i32 %call, ptr %len.addr, align 4, !dbg !3947
  %3 = load i32, ptr %len.addr, align 4, !dbg !3948
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !3949
  %out = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 1, !dbg !3950
  %5 = load i32, ptr %out, align 4, !dbg !3951
  %add = add i32 %5, %3, !dbg !3951
  store i32 %add, ptr %out, align 4, !dbg !3951
  %6 = load i32, ptr %len.addr, align 4, !dbg !3952
  ret i32 %6, !dbg !3953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_from_user(ptr noundef %fifo, ptr noundef %from, i64 noundef %len, ptr noundef %copied) #0 align 16 !dbg !3954 {
entry:
  %fifo.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %copied.addr = alloca ptr, align 8
  %l = alloca i32, align 4
  %ret = alloca i64, align 8
  %esize = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !3958, metadata !DIExpression()), !dbg !3966
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !3959, metadata !DIExpression()), !dbg !3967
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3960, metadata !DIExpression()), !dbg !3968
  store ptr %copied, ptr %copied.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %copied.addr, metadata !3961, metadata !DIExpression()), !dbg !3969
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !3970
  call void @llvm.dbg.declare(metadata ptr %l, metadata !3962, metadata !DIExpression()), !dbg !3971
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #21, !dbg !3972
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3963, metadata !DIExpression()), !dbg !3973
  call void @llvm.lifetime.start.p0(i64 4, ptr %esize) #21, !dbg !3974
  call void @llvm.dbg.declare(metadata ptr %esize, metadata !3964, metadata !DIExpression()), !dbg !3975
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !3976
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3, !dbg !3977
  %1 = load i32, ptr %esize1, align 4, !dbg !3977
  store i32 %1, ptr %esize, align 4, !dbg !3975
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3965, metadata !DIExpression()), !dbg !3979
  %2 = load i32, ptr %esize, align 4, !dbg !3980
  %cmp = icmp ne i32 %2, 1, !dbg !3982
  br i1 %cmp, label %if.then, label %if.end, !dbg !3983

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %esize, align 4, !dbg !3984
  %conv = zext i32 %3 to i64, !dbg !3984
  %4 = load i64, ptr %len.addr, align 8, !dbg !3985
  %div = udiv i64 %4, %conv, !dbg !3985
  store i64 %div, ptr %len.addr, align 8, !dbg !3985
  br label %if.end, !dbg !3986

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %fifo.addr, align 8, !dbg !3987
  %call = call i32 @kfifo_unused(ptr noundef %5) #20, !dbg !3988
  store i32 %call, ptr %l, align 4, !dbg !3989
  %6 = load i64, ptr %len.addr, align 8, !dbg !3990
  %7 = load i32, ptr %l, align 4, !dbg !3992
  %conv2 = zext i32 %7 to i64, !dbg !3992
  %cmp3 = icmp ugt i64 %6, %conv2, !dbg !3993
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !3994

if.then5:                                         ; preds = %if.end
  %8 = load i32, ptr %l, align 4, !dbg !3995
  %conv6 = zext i32 %8 to i64, !dbg !3995
  store i64 %conv6, ptr %len.addr, align 8, !dbg !3996
  br label %if.end7, !dbg !3997

if.end7:                                          ; preds = %if.then5, %if.end
  %9 = load ptr, ptr %fifo.addr, align 8, !dbg !3998
  %10 = load ptr, ptr %from.addr, align 8, !dbg !3999
  %11 = load i64, ptr %len.addr, align 8, !dbg !4000
  %conv8 = trunc i64 %11 to i32, !dbg !4000
  %12 = load ptr, ptr %fifo.addr, align 8, !dbg !4001
  %in = getelementptr inbounds %struct.__kfifo, ptr %12, i32 0, i32 0, !dbg !4002
  %13 = load i32, ptr %in, align 8, !dbg !4002
  %14 = load ptr, ptr %copied.addr, align 8, !dbg !4003
  %call9 = call i64 @kfifo_copy_from_user(ptr noundef %9, ptr noundef %10, i32 noundef %conv8, i32 noundef %13, ptr noundef %14) #20, !dbg !4004
  store i64 %call9, ptr %ret, align 8, !dbg !4005
  %15 = load i64, ptr %ret, align 8, !dbg !4006
  %tobool = icmp ne i64 %15, 0, !dbg !4006
  %lnot = xor i1 %tobool, true, !dbg !4006
  %lnot10 = xor i1 %lnot, true, !dbg !4006
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4006
  %conv11 = sext i32 %lnot.ext to i64, !dbg !4006
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !4006
  %tobool12 = icmp ne i64 %expval, 0, !dbg !4006
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !4008

if.then13:                                        ; preds = %if.end7
  %16 = load i64, ptr %ret, align 8, !dbg !4009
  %17 = load i64, ptr %len.addr, align 8, !dbg !4011
  %sub = sub i64 %17, %16, !dbg !4011
  store i64 %sub, ptr %len.addr, align 8, !dbg !4011
  store i32 -14, ptr %err, align 4, !dbg !4012
  br label %if.end14, !dbg !4013

if.else:                                          ; preds = %if.end7
  store i32 0, ptr %err, align 4, !dbg !4014
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  %18 = load i64, ptr %len.addr, align 8, !dbg !4015
  %19 = load ptr, ptr %fifo.addr, align 8, !dbg !4016
  %in15 = getelementptr inbounds %struct.__kfifo, ptr %19, i32 0, i32 0, !dbg !4017
  %20 = load i32, ptr %in15, align 8, !dbg !4018
  %conv16 = zext i32 %20 to i64, !dbg !4018
  %add = add i64 %conv16, %18, !dbg !4018
  %conv17 = trunc i64 %add to i32, !dbg !4018
  store i32 %conv17, ptr %in15, align 8, !dbg !4018
  %21 = load i32, ptr %err, align 4, !dbg !4019
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !4020
  call void @llvm.lifetime.end.p0(i64 4, ptr %esize) #21, !dbg !4020
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #21, !dbg !4020
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !4020
  ret i32 %21, !dbg !4021
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kfifo_copy_from_user(ptr noundef %fifo, ptr noundef %from, i32 noundef %len, i32 noundef %off, ptr noundef %copied) #0 align 16 !dbg !4022 {
entry:
  %fifo.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %off.addr = alloca i32, align 4
  %copied.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  %esize = alloca i32, align 4
  %l = alloca i32, align 4
  %ret = alloca i64, align 8
  %__UNIQUE_ID___x287 = alloca i32, align 4
  %__UNIQUE_ID___y288 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4026, metadata !DIExpression()), !dbg !4038
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4027, metadata !DIExpression()), !dbg !4039
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4028, metadata !DIExpression()), !dbg !4040
  store i32 %off, ptr %off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !4029, metadata !DIExpression()), !dbg !4041
  store ptr %copied, ptr %copied.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %copied.addr, metadata !4030, metadata !DIExpression()), !dbg !4042
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #21, !dbg !4043
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4031, metadata !DIExpression()), !dbg !4044
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4045
  %mask = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2, !dbg !4046
  %1 = load i32, ptr %mask, align 8, !dbg !4046
  %add = add i32 %1, 1, !dbg !4047
  store i32 %add, ptr %size, align 4, !dbg !4044
  call void @llvm.lifetime.start.p0(i64 4, ptr %esize) #21, !dbg !4048
  call void @llvm.dbg.declare(metadata ptr %esize, metadata !4032, metadata !DIExpression()), !dbg !4049
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4050
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 3, !dbg !4051
  %3 = load i32, ptr %esize1, align 4, !dbg !4051
  store i32 %3, ptr %esize, align 4, !dbg !4049
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !4052
  call void @llvm.dbg.declare(metadata ptr %l, metadata !4033, metadata !DIExpression()), !dbg !4053
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #21, !dbg !4054
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4034, metadata !DIExpression()), !dbg !4055
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !4056
  %mask2 = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 2, !dbg !4057
  %5 = load i32, ptr %mask2, align 8, !dbg !4057
  %6 = load i32, ptr %off.addr, align 4, !dbg !4058
  %and = and i32 %6, %5, !dbg !4058
  store i32 %and, ptr %off.addr, align 4, !dbg !4058
  %7 = load i32, ptr %esize, align 4, !dbg !4059
  %cmp = icmp ne i32 %7, 1, !dbg !4061
  br i1 %cmp, label %if.then, label %if.end, !dbg !4062

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %esize, align 4, !dbg !4063
  %9 = load i32, ptr %off.addr, align 4, !dbg !4065
  %mul = mul i32 %9, %8, !dbg !4065
  store i32 %mul, ptr %off.addr, align 4, !dbg !4065
  %10 = load i32, ptr %esize, align 4, !dbg !4066
  %11 = load i32, ptr %size, align 4, !dbg !4067
  %mul3 = mul i32 %11, %10, !dbg !4067
  store i32 %mul3, ptr %size, align 4, !dbg !4067
  %12 = load i32, ptr %esize, align 4, !dbg !4068
  %13 = load i32, ptr %len.addr, align 4, !dbg !4069
  %mul4 = mul i32 %13, %12, !dbg !4069
  store i32 %mul4, ptr %len.addr, align 4, !dbg !4069
  br label %if.end, !dbg !4070

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x287) #21, !dbg !4071
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x287, metadata !4035, metadata !DIExpression()), !dbg !4071
  %14 = load i32, ptr %len.addr, align 4, !dbg !4071
  store i32 %14, ptr %__UNIQUE_ID___x287, align 4, !dbg !4071
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y288) #21, !dbg !4071
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y288, metadata !4037, metadata !DIExpression()), !dbg !4071
  %15 = load i32, ptr %size, align 4, !dbg !4071
  %16 = load i32, ptr %off.addr, align 4, !dbg !4071
  %sub = sub i32 %15, %16, !dbg !4071
  store i32 %sub, ptr %__UNIQUE_ID___y288, align 4, !dbg !4071
  %17 = load i32, ptr %__UNIQUE_ID___x287, align 4, !dbg !4071
  %18 = load i32, ptr %__UNIQUE_ID___y288, align 4, !dbg !4071
  %cmp5 = icmp ult i32 %17, %18, !dbg !4071
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !4071

cond.true:                                        ; preds = %if.end
  %19 = load i32, ptr %__UNIQUE_ID___x287, align 4, !dbg !4071
  br label %cond.end, !dbg !4071

cond.false:                                       ; preds = %if.end
  %20 = load i32, ptr %__UNIQUE_ID___y288, align 4, !dbg !4071
  br label %cond.end, !dbg !4071

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !4071
  store i32 %cond, ptr %tmp, align 4, !dbg !4071
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y288) #21, !dbg !4072
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x287) #21, !dbg !4072
  %21 = load i32, ptr %tmp, align 4, !dbg !4071
  store i32 %21, ptr %l, align 4, !dbg !4073
  %22 = load ptr, ptr %fifo.addr, align 8, !dbg !4074
  %data = getelementptr inbounds %struct.__kfifo, ptr %22, i32 0, i32 4, !dbg !4075
  %23 = load ptr, ptr %data, align 8, !dbg !4075
  %24 = load i32, ptr %off.addr, align 4, !dbg !4076
  %idx.ext = zext i32 %24 to i64, !dbg !4077
  %add.ptr = getelementptr i8, ptr %23, i64 %idx.ext, !dbg !4077
  %25 = load ptr, ptr %from.addr, align 8, !dbg !4078
  %26 = load i32, ptr %l, align 4, !dbg !4079
  %conv = zext i32 %26 to i64, !dbg !4079
  %call = call i64 @copy_from_user(ptr noundef %add.ptr, ptr noundef %25, i64 noundef %conv) #20, !dbg !4080
  store i64 %call, ptr %ret, align 8, !dbg !4081
  %27 = load i64, ptr %ret, align 8, !dbg !4082
  %tobool = icmp ne i64 %27, 0, !dbg !4082
  %lnot = xor i1 %tobool, true, !dbg !4082
  %lnot6 = xor i1 %lnot, true, !dbg !4082
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4082
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4082
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !4082
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4082
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !4084

if.then9:                                         ; preds = %cond.end
  %28 = load i64, ptr %ret, align 8, !dbg !4085
  %29 = load i32, ptr %len.addr, align 4, !dbg !4085
  %conv10 = zext i32 %29 to i64, !dbg !4085
  %add11 = add i64 %28, %conv10, !dbg !4085
  %30 = load i32, ptr %l, align 4, !dbg !4085
  %conv12 = zext i32 %30 to i64, !dbg !4085
  %sub13 = sub i64 %add11, %conv12, !dbg !4085
  %31 = load i32, ptr %esize, align 4, !dbg !4085
  %conv14 = zext i32 %31 to i64, !dbg !4085
  %add15 = add i64 %sub13, %conv14, !dbg !4085
  %sub16 = sub i64 %add15, 1, !dbg !4085
  %32 = load i32, ptr %esize, align 4, !dbg !4085
  %conv17 = zext i32 %32 to i64, !dbg !4085
  %div = udiv i64 %sub16, %conv17, !dbg !4085
  store i64 %div, ptr %ret, align 8, !dbg !4086
  br label %if.end39, !dbg !4087

if.else:                                          ; preds = %cond.end
  %33 = load ptr, ptr %fifo.addr, align 8, !dbg !4088
  %data18 = getelementptr inbounds %struct.__kfifo, ptr %33, i32 0, i32 4, !dbg !4090
  %34 = load ptr, ptr %data18, align 8, !dbg !4090
  %35 = load ptr, ptr %from.addr, align 8, !dbg !4091
  %36 = load i32, ptr %l, align 4, !dbg !4092
  %idx.ext19 = zext i32 %36 to i64, !dbg !4093
  %add.ptr20 = getelementptr i8, ptr %35, i64 %idx.ext19, !dbg !4093
  %37 = load i32, ptr %len.addr, align 4, !dbg !4094
  %38 = load i32, ptr %l, align 4, !dbg !4095
  %sub21 = sub i32 %37, %38, !dbg !4096
  %conv22 = zext i32 %sub21 to i64, !dbg !4094
  %call23 = call i64 @copy_from_user(ptr noundef %34, ptr noundef %add.ptr20, i64 noundef %conv22) #20, !dbg !4097
  store i64 %call23, ptr %ret, align 8, !dbg !4098
  %39 = load i64, ptr %ret, align 8, !dbg !4099
  %tobool24 = icmp ne i64 %39, 0, !dbg !4099
  %lnot25 = xor i1 %tobool24, true, !dbg !4099
  %lnot27 = xor i1 %lnot25, true, !dbg !4099
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4099
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4099
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !4099
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !4099
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !4101

if.then32:                                        ; preds = %if.else
  %40 = load i64, ptr %ret, align 8, !dbg !4102
  %41 = load i32, ptr %esize, align 4, !dbg !4102
  %conv33 = zext i32 %41 to i64, !dbg !4102
  %add34 = add i64 %40, %conv33, !dbg !4102
  %sub35 = sub i64 %add34, 1, !dbg !4102
  %42 = load i32, ptr %esize, align 4, !dbg !4102
  %conv36 = zext i32 %42 to i64, !dbg !4102
  %div37 = udiv i64 %sub35, %conv36, !dbg !4102
  store i64 %div37, ptr %ret, align 8, !dbg !4103
  br label %if.end38, !dbg !4104

if.end38:                                         ; preds = %if.then32, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then9
  br label %do.body, !dbg !4105

do.body:                                          ; preds = %if.end39
  br label %do.body40, !dbg !4106

do.body40:                                        ; preds = %do.body
  br label %do.cond, !dbg !4108

do.cond:                                          ; preds = %do.body40
  br label %do.end, !dbg !4108

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !4106, !srcloc !4110
  br label %do.cond41, !dbg !4106

do.cond41:                                        ; preds = %do.end
  br label %do.end42, !dbg !4106

do.end42:                                         ; preds = %do.cond41
  %43 = load i32, ptr %len.addr, align 4, !dbg !4111
  %conv43 = zext i32 %43 to i64, !dbg !4111
  %44 = load i64, ptr %ret, align 8, !dbg !4112
  %45 = load i32, ptr %esize, align 4, !dbg !4113
  %conv44 = zext i32 %45 to i64, !dbg !4113
  %mul45 = mul i64 %44, %conv44, !dbg !4114
  %sub46 = sub i64 %conv43, %mul45, !dbg !4115
  %conv47 = trunc i64 %sub46 to i32, !dbg !4111
  %46 = load ptr, ptr %copied.addr, align 8, !dbg !4116
  store i32 %conv47, ptr %46, align 4, !dbg !4117
  %47 = load i64, ptr %ret, align 8, !dbg !4118
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #21, !dbg !4119
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !4119
  call void @llvm.lifetime.end.p0(i64 4, ptr %esize) #21, !dbg !4119
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #21, !dbg !4119
  ret i64 %47, !dbg !4120
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_to_user(ptr noundef %fifo, ptr noundef %to, i64 noundef %len, ptr noundef %copied) #0 align 16 !dbg !4121 {
entry:
  %fifo.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %copied.addr = alloca ptr, align 8
  %l = alloca i32, align 4
  %ret = alloca i64, align 8
  %esize = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4125, metadata !DIExpression()), !dbg !4133
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4126, metadata !DIExpression()), !dbg !4134
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4127, metadata !DIExpression()), !dbg !4135
  store ptr %copied, ptr %copied.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %copied.addr, metadata !4128, metadata !DIExpression()), !dbg !4136
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !4137
  call void @llvm.dbg.declare(metadata ptr %l, metadata !4129, metadata !DIExpression()), !dbg !4138
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #21, !dbg !4139
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4130, metadata !DIExpression()), !dbg !4140
  call void @llvm.lifetime.start.p0(i64 4, ptr %esize) #21, !dbg !4141
  call void @llvm.dbg.declare(metadata ptr %esize, metadata !4131, metadata !DIExpression()), !dbg !4142
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4143
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3, !dbg !4144
  %1 = load i32, ptr %esize1, align 4, !dbg !4144
  store i32 %1, ptr %esize, align 4, !dbg !4142
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !4145
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4132, metadata !DIExpression()), !dbg !4146
  %2 = load i32, ptr %esize, align 4, !dbg !4147
  %cmp = icmp ne i32 %2, 1, !dbg !4149
  br i1 %cmp, label %if.then, label %if.end, !dbg !4150

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %esize, align 4, !dbg !4151
  %conv = zext i32 %3 to i64, !dbg !4151
  %4 = load i64, ptr %len.addr, align 8, !dbg !4152
  %div = udiv i64 %4, %conv, !dbg !4152
  store i64 %div, ptr %len.addr, align 8, !dbg !4152
  br label %if.end, !dbg !4153

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %fifo.addr, align 8, !dbg !4154
  %in = getelementptr inbounds %struct.__kfifo, ptr %5, i32 0, i32 0, !dbg !4155
  %6 = load i32, ptr %in, align 8, !dbg !4155
  %7 = load ptr, ptr %fifo.addr, align 8, !dbg !4156
  %out = getelementptr inbounds %struct.__kfifo, ptr %7, i32 0, i32 1, !dbg !4157
  %8 = load i32, ptr %out, align 4, !dbg !4157
  %sub = sub i32 %6, %8, !dbg !4158
  store i32 %sub, ptr %l, align 4, !dbg !4159
  %9 = load i64, ptr %len.addr, align 8, !dbg !4160
  %10 = load i32, ptr %l, align 4, !dbg !4162
  %conv2 = zext i32 %10 to i64, !dbg !4162
  %cmp3 = icmp ugt i64 %9, %conv2, !dbg !4163
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !4164

if.then5:                                         ; preds = %if.end
  %11 = load i32, ptr %l, align 4, !dbg !4165
  %conv6 = zext i32 %11 to i64, !dbg !4165
  store i64 %conv6, ptr %len.addr, align 8, !dbg !4166
  br label %if.end7, !dbg !4167

if.end7:                                          ; preds = %if.then5, %if.end
  %12 = load ptr, ptr %fifo.addr, align 8, !dbg !4168
  %13 = load ptr, ptr %to.addr, align 8, !dbg !4169
  %14 = load i64, ptr %len.addr, align 8, !dbg !4170
  %conv8 = trunc i64 %14 to i32, !dbg !4170
  %15 = load ptr, ptr %fifo.addr, align 8, !dbg !4171
  %out9 = getelementptr inbounds %struct.__kfifo, ptr %15, i32 0, i32 1, !dbg !4172
  %16 = load i32, ptr %out9, align 4, !dbg !4172
  %17 = load ptr, ptr %copied.addr, align 8, !dbg !4173
  %call = call i64 @kfifo_copy_to_user(ptr noundef %12, ptr noundef %13, i32 noundef %conv8, i32 noundef %16, ptr noundef %17) #20, !dbg !4174
  store i64 %call, ptr %ret, align 8, !dbg !4175
  %18 = load i64, ptr %ret, align 8, !dbg !4176
  %tobool = icmp ne i64 %18, 0, !dbg !4176
  %lnot = xor i1 %tobool, true, !dbg !4176
  %lnot10 = xor i1 %lnot, true, !dbg !4176
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4176
  %conv11 = sext i32 %lnot.ext to i64, !dbg !4176
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !4176
  %tobool12 = icmp ne i64 %expval, 0, !dbg !4176
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !4178

if.then13:                                        ; preds = %if.end7
  %19 = load i64, ptr %ret, align 8, !dbg !4179
  %20 = load i64, ptr %len.addr, align 8, !dbg !4181
  %sub14 = sub i64 %20, %19, !dbg !4181
  store i64 %sub14, ptr %len.addr, align 8, !dbg !4181
  store i32 -14, ptr %err, align 4, !dbg !4182
  br label %if.end15, !dbg !4183

if.else:                                          ; preds = %if.end7
  store i32 0, ptr %err, align 4, !dbg !4184
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %21 = load i64, ptr %len.addr, align 8, !dbg !4185
  %22 = load ptr, ptr %fifo.addr, align 8, !dbg !4186
  %out16 = getelementptr inbounds %struct.__kfifo, ptr %22, i32 0, i32 1, !dbg !4187
  %23 = load i32, ptr %out16, align 4, !dbg !4188
  %conv17 = zext i32 %23 to i64, !dbg !4188
  %add = add i64 %conv17, %21, !dbg !4188
  %conv18 = trunc i64 %add to i32, !dbg !4188
  store i32 %conv18, ptr %out16, align 4, !dbg !4188
  %24 = load i32, ptr %err, align 4, !dbg !4189
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !4190
  call void @llvm.lifetime.end.p0(i64 4, ptr %esize) #21, !dbg !4190
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #21, !dbg !4190
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !4190
  ret i32 %24, !dbg !4191
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kfifo_copy_to_user(ptr noundef %fifo, ptr noundef %to, i32 noundef %len, i32 noundef %off, ptr noundef %copied) #0 align 16 !dbg !4192 {
entry:
  %fifo.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %off.addr = alloca i32, align 4
  %copied.addr = alloca ptr, align 8
  %l = alloca i32, align 4
  %ret = alloca i64, align 8
  %size = alloca i32, align 4
  %esize = alloca i32, align 4
  %__UNIQUE_ID___x290 = alloca i32, align 4
  %__UNIQUE_ID___y291 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4196, metadata !DIExpression()), !dbg !4208
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4197, metadata !DIExpression()), !dbg !4209
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4198, metadata !DIExpression()), !dbg !4210
  store i32 %off, ptr %off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !4199, metadata !DIExpression()), !dbg !4211
  store ptr %copied, ptr %copied.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %copied.addr, metadata !4200, metadata !DIExpression()), !dbg !4212
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %l, metadata !4201, metadata !DIExpression()), !dbg !4214
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #21, !dbg !4215
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4202, metadata !DIExpression()), !dbg !4216
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #21, !dbg !4217
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4203, metadata !DIExpression()), !dbg !4218
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4219
  %mask = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2, !dbg !4220
  %1 = load i32, ptr %mask, align 8, !dbg !4220
  %add = add i32 %1, 1, !dbg !4221
  store i32 %add, ptr %size, align 4, !dbg !4218
  call void @llvm.lifetime.start.p0(i64 4, ptr %esize) #21, !dbg !4222
  call void @llvm.dbg.declare(metadata ptr %esize, metadata !4204, metadata !DIExpression()), !dbg !4223
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4224
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 3, !dbg !4225
  %3 = load i32, ptr %esize1, align 4, !dbg !4225
  store i32 %3, ptr %esize, align 4, !dbg !4223
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !4226
  %mask2 = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 2, !dbg !4227
  %5 = load i32, ptr %mask2, align 8, !dbg !4227
  %6 = load i32, ptr %off.addr, align 4, !dbg !4228
  %and = and i32 %6, %5, !dbg !4228
  store i32 %and, ptr %off.addr, align 4, !dbg !4228
  %7 = load i32, ptr %esize, align 4, !dbg !4229
  %cmp = icmp ne i32 %7, 1, !dbg !4231
  br i1 %cmp, label %if.then, label %if.end, !dbg !4232

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %esize, align 4, !dbg !4233
  %9 = load i32, ptr %off.addr, align 4, !dbg !4235
  %mul = mul i32 %9, %8, !dbg !4235
  store i32 %mul, ptr %off.addr, align 4, !dbg !4235
  %10 = load i32, ptr %esize, align 4, !dbg !4236
  %11 = load i32, ptr %size, align 4, !dbg !4237
  %mul3 = mul i32 %11, %10, !dbg !4237
  store i32 %mul3, ptr %size, align 4, !dbg !4237
  %12 = load i32, ptr %esize, align 4, !dbg !4238
  %13 = load i32, ptr %len.addr, align 4, !dbg !4239
  %mul4 = mul i32 %13, %12, !dbg !4239
  store i32 %mul4, ptr %len.addr, align 4, !dbg !4239
  br label %if.end, !dbg !4240

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x290) #21, !dbg !4241
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x290, metadata !4205, metadata !DIExpression()), !dbg !4241
  %14 = load i32, ptr %len.addr, align 4, !dbg !4241
  store i32 %14, ptr %__UNIQUE_ID___x290, align 4, !dbg !4241
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y291) #21, !dbg !4241
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y291, metadata !4207, metadata !DIExpression()), !dbg !4241
  %15 = load i32, ptr %size, align 4, !dbg !4241
  %16 = load i32, ptr %off.addr, align 4, !dbg !4241
  %sub = sub i32 %15, %16, !dbg !4241
  store i32 %sub, ptr %__UNIQUE_ID___y291, align 4, !dbg !4241
  %17 = load i32, ptr %__UNIQUE_ID___x290, align 4, !dbg !4241
  %18 = load i32, ptr %__UNIQUE_ID___y291, align 4, !dbg !4241
  %cmp5 = icmp ult i32 %17, %18, !dbg !4241
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !4241

cond.true:                                        ; preds = %if.end
  %19 = load i32, ptr %__UNIQUE_ID___x290, align 4, !dbg !4241
  br label %cond.end, !dbg !4241

cond.false:                                       ; preds = %if.end
  %20 = load i32, ptr %__UNIQUE_ID___y291, align 4, !dbg !4241
  br label %cond.end, !dbg !4241

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !4241
  store i32 %cond, ptr %tmp, align 4, !dbg !4241
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y291) #21, !dbg !4242
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x290) #21, !dbg !4242
  %21 = load i32, ptr %tmp, align 4, !dbg !4241
  store i32 %21, ptr %l, align 4, !dbg !4243
  %22 = load ptr, ptr %to.addr, align 8, !dbg !4244
  %23 = load ptr, ptr %fifo.addr, align 8, !dbg !4245
  %data = getelementptr inbounds %struct.__kfifo, ptr %23, i32 0, i32 4, !dbg !4246
  %24 = load ptr, ptr %data, align 8, !dbg !4246
  %25 = load i32, ptr %off.addr, align 4, !dbg !4247
  %idx.ext = zext i32 %25 to i64, !dbg !4248
  %add.ptr = getelementptr i8, ptr %24, i64 %idx.ext, !dbg !4248
  %26 = load i32, ptr %l, align 4, !dbg !4249
  %conv = zext i32 %26 to i64, !dbg !4249
  %call = call i64 @copy_to_user(ptr noundef %22, ptr noundef %add.ptr, i64 noundef %conv) #20, !dbg !4250
  store i64 %call, ptr %ret, align 8, !dbg !4251
  %27 = load i64, ptr %ret, align 8, !dbg !4252
  %tobool = icmp ne i64 %27, 0, !dbg !4252
  %lnot = xor i1 %tobool, true, !dbg !4252
  %lnot6 = xor i1 %lnot, true, !dbg !4252
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4252
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4252
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !4252
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4252
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !4254

if.then9:                                         ; preds = %cond.end
  %28 = load i64, ptr %ret, align 8, !dbg !4255
  %29 = load i32, ptr %len.addr, align 4, !dbg !4255
  %conv10 = zext i32 %29 to i64, !dbg !4255
  %add11 = add i64 %28, %conv10, !dbg !4255
  %30 = load i32, ptr %l, align 4, !dbg !4255
  %conv12 = zext i32 %30 to i64, !dbg !4255
  %sub13 = sub i64 %add11, %conv12, !dbg !4255
  %31 = load i32, ptr %esize, align 4, !dbg !4255
  %conv14 = zext i32 %31 to i64, !dbg !4255
  %add15 = add i64 %sub13, %conv14, !dbg !4255
  %sub16 = sub i64 %add15, 1, !dbg !4255
  %32 = load i32, ptr %esize, align 4, !dbg !4255
  %conv17 = zext i32 %32 to i64, !dbg !4255
  %div = udiv i64 %sub16, %conv17, !dbg !4255
  store i64 %div, ptr %ret, align 8, !dbg !4256
  br label %if.end39, !dbg !4257

if.else:                                          ; preds = %cond.end
  %33 = load ptr, ptr %to.addr, align 8, !dbg !4258
  %34 = load i32, ptr %l, align 4, !dbg !4260
  %idx.ext18 = zext i32 %34 to i64, !dbg !4261
  %add.ptr19 = getelementptr i8, ptr %33, i64 %idx.ext18, !dbg !4261
  %35 = load ptr, ptr %fifo.addr, align 8, !dbg !4262
  %data20 = getelementptr inbounds %struct.__kfifo, ptr %35, i32 0, i32 4, !dbg !4263
  %36 = load ptr, ptr %data20, align 8, !dbg !4263
  %37 = load i32, ptr %len.addr, align 4, !dbg !4264
  %38 = load i32, ptr %l, align 4, !dbg !4265
  %sub21 = sub i32 %37, %38, !dbg !4266
  %conv22 = zext i32 %sub21 to i64, !dbg !4264
  %call23 = call i64 @copy_to_user(ptr noundef %add.ptr19, ptr noundef %36, i64 noundef %conv22) #20, !dbg !4267
  store i64 %call23, ptr %ret, align 8, !dbg !4268
  %39 = load i64, ptr %ret, align 8, !dbg !4269
  %tobool24 = icmp ne i64 %39, 0, !dbg !4269
  %lnot25 = xor i1 %tobool24, true, !dbg !4269
  %lnot27 = xor i1 %lnot25, true, !dbg !4269
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4269
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4269
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !4269
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !4269
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !4271

if.then32:                                        ; preds = %if.else
  %40 = load i64, ptr %ret, align 8, !dbg !4272
  %41 = load i32, ptr %esize, align 4, !dbg !4272
  %conv33 = zext i32 %41 to i64, !dbg !4272
  %add34 = add i64 %40, %conv33, !dbg !4272
  %sub35 = sub i64 %add34, 1, !dbg !4272
  %42 = load i32, ptr %esize, align 4, !dbg !4272
  %conv36 = zext i32 %42 to i64, !dbg !4272
  %div37 = udiv i64 %sub35, %conv36, !dbg !4272
  store i64 %div37, ptr %ret, align 8, !dbg !4273
  br label %if.end38, !dbg !4274

if.end38:                                         ; preds = %if.then32, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then9
  br label %do.body, !dbg !4275

do.body:                                          ; preds = %if.end39
  br label %do.body40, !dbg !4276

do.body40:                                        ; preds = %do.body
  br label %do.cond, !dbg !4278

do.cond:                                          ; preds = %do.body40
  br label %do.end, !dbg !4278

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !4276, !srcloc !4280
  br label %do.cond41, !dbg !4276

do.cond41:                                        ; preds = %do.end
  br label %do.end42, !dbg !4276

do.end42:                                         ; preds = %do.cond41
  %43 = load i32, ptr %len.addr, align 4, !dbg !4281
  %conv43 = zext i32 %43 to i64, !dbg !4281
  %44 = load i64, ptr %ret, align 8, !dbg !4282
  %45 = load i32, ptr %esize, align 4, !dbg !4283
  %conv44 = zext i32 %45 to i64, !dbg !4283
  %mul45 = mul i64 %44, %conv44, !dbg !4284
  %sub46 = sub i64 %conv43, %mul45, !dbg !4285
  %conv47 = trunc i64 %sub46 to i32, !dbg !4281
  %46 = load ptr, ptr %copied.addr, align 8, !dbg !4286
  store i32 %conv47, ptr %46, align 4, !dbg !4287
  %47 = load i64, ptr %ret, align 8, !dbg !4288
  call void @llvm.lifetime.end.p0(i64 4, ptr %esize) #21, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #21, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #21, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !4289
  ret i64 %47, !dbg !4290
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_dma_in_prepare(ptr noundef %fifo, ptr noundef %sgl, i32 noundef %nents, i32 noundef %len) #0 align 16 !dbg !4291 {
entry:
  %fifo.addr = alloca ptr, align 8
  %sgl.addr = alloca ptr, align 8
  %nents.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4304, metadata !DIExpression()), !dbg !4309
  store ptr %sgl, ptr %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgl.addr, metadata !4305, metadata !DIExpression()), !dbg !4310
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !4306, metadata !DIExpression()), !dbg !4311
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4307, metadata !DIExpression()), !dbg !4312
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !4313
  call void @llvm.dbg.declare(metadata ptr %l, metadata !4308, metadata !DIExpression()), !dbg !4314
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4315
  %call = call i32 @kfifo_unused(ptr noundef %0) #20, !dbg !4316
  store i32 %call, ptr %l, align 4, !dbg !4317
  %1 = load i32, ptr %len.addr, align 4, !dbg !4318
  %2 = load i32, ptr %l, align 4, !dbg !4320
  %cmp = icmp ugt i32 %1, %2, !dbg !4321
  br i1 %cmp, label %if.then, label %if.end, !dbg !4322

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %l, align 4, !dbg !4323
  store i32 %3, ptr %len.addr, align 4, !dbg !4324
  br label %if.end, !dbg !4325

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !4326
  %5 = load ptr, ptr %sgl.addr, align 8, !dbg !4327
  %6 = load i32, ptr %nents.addr, align 4, !dbg !4328
  %7 = load i32, ptr %len.addr, align 4, !dbg !4329
  %8 = load ptr, ptr %fifo.addr, align 8, !dbg !4330
  %in = getelementptr inbounds %struct.__kfifo, ptr %8, i32 0, i32 0, !dbg !4331
  %9 = load i32, ptr %in, align 8, !dbg !4331
  %call1 = call i32 @setup_sgl(ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %9) #20, !dbg !4332
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !4333
  ret i32 %call1, !dbg !4334
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @setup_sgl(ptr noundef %fifo, ptr noundef %sgl, i32 noundef %nents, i32 noundef %len, i32 noundef %off) #0 align 16 !dbg !4335 {
entry:
  %fifo.addr = alloca ptr, align 8
  %sgl.addr = alloca ptr, align 8
  %nents.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %off.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %esize = alloca i32, align 4
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  %__UNIQUE_ID___x293 = alloca i32, align 4
  %__UNIQUE_ID___y294 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4339, metadata !DIExpression()), !dbg !4351
  store ptr %sgl, ptr %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgl.addr, metadata !4340, metadata !DIExpression()), !dbg !4352
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !4341, metadata !DIExpression()), !dbg !4353
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4342, metadata !DIExpression()), !dbg !4354
  store i32 %off, ptr %off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !4343, metadata !DIExpression()), !dbg !4355
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #21, !dbg !4356
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4344, metadata !DIExpression()), !dbg !4357
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4358
  %mask = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2, !dbg !4359
  %1 = load i32, ptr %mask, align 8, !dbg !4359
  %add = add i32 %1, 1, !dbg !4360
  store i32 %add, ptr %size, align 4, !dbg !4357
  call void @llvm.lifetime.start.p0(i64 4, ptr %esize) #21, !dbg !4361
  call void @llvm.dbg.declare(metadata ptr %esize, metadata !4345, metadata !DIExpression()), !dbg !4362
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4363
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 3, !dbg !4364
  %3 = load i32, ptr %esize1, align 4, !dbg !4364
  store i32 %3, ptr %esize, align 4, !dbg !4362
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !4365
  call void @llvm.dbg.declare(metadata ptr %l, metadata !4346, metadata !DIExpression()), !dbg !4366
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #21, !dbg !4367
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4347, metadata !DIExpression()), !dbg !4368
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !4369
  %mask2 = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 2, !dbg !4370
  %5 = load i32, ptr %mask2, align 8, !dbg !4370
  %6 = load i32, ptr %off.addr, align 4, !dbg !4371
  %and = and i32 %6, %5, !dbg !4371
  store i32 %and, ptr %off.addr, align 4, !dbg !4371
  %7 = load i32, ptr %esize, align 4, !dbg !4372
  %cmp = icmp ne i32 %7, 1, !dbg !4374
  br i1 %cmp, label %if.then, label %if.end, !dbg !4375

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %esize, align 4, !dbg !4376
  %9 = load i32, ptr %off.addr, align 4, !dbg !4378
  %mul = mul i32 %9, %8, !dbg !4378
  store i32 %mul, ptr %off.addr, align 4, !dbg !4378
  %10 = load i32, ptr %esize, align 4, !dbg !4379
  %11 = load i32, ptr %size, align 4, !dbg !4380
  %mul3 = mul i32 %11, %10, !dbg !4380
  store i32 %mul3, ptr %size, align 4, !dbg !4380
  %12 = load i32, ptr %esize, align 4, !dbg !4381
  %13 = load i32, ptr %len.addr, align 4, !dbg !4382
  %mul4 = mul i32 %13, %12, !dbg !4382
  store i32 %mul4, ptr %len.addr, align 4, !dbg !4382
  br label %if.end, !dbg !4383

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x293) #21, !dbg !4384
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x293, metadata !4348, metadata !DIExpression()), !dbg !4384
  %14 = load i32, ptr %len.addr, align 4, !dbg !4384
  store i32 %14, ptr %__UNIQUE_ID___x293, align 4, !dbg !4384
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y294) #21, !dbg !4384
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y294, metadata !4350, metadata !DIExpression()), !dbg !4384
  %15 = load i32, ptr %size, align 4, !dbg !4384
  %16 = load i32, ptr %off.addr, align 4, !dbg !4384
  %sub = sub i32 %15, %16, !dbg !4384
  store i32 %sub, ptr %__UNIQUE_ID___y294, align 4, !dbg !4384
  %17 = load i32, ptr %__UNIQUE_ID___x293, align 4, !dbg !4384
  %18 = load i32, ptr %__UNIQUE_ID___y294, align 4, !dbg !4384
  %cmp5 = icmp ult i32 %17, %18, !dbg !4384
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !4384

cond.true:                                        ; preds = %if.end
  %19 = load i32, ptr %__UNIQUE_ID___x293, align 4, !dbg !4384
  br label %cond.end, !dbg !4384

cond.false:                                       ; preds = %if.end
  %20 = load i32, ptr %__UNIQUE_ID___y294, align 4, !dbg !4384
  br label %cond.end, !dbg !4384

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !4384
  store i32 %cond, ptr %tmp, align 4, !dbg !4384
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y294) #21, !dbg !4385
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x293) #21, !dbg !4385
  %21 = load i32, ptr %tmp, align 4, !dbg !4384
  store i32 %21, ptr %l, align 4, !dbg !4386
  %22 = load ptr, ptr %sgl.addr, align 8, !dbg !4387
  %23 = load ptr, ptr %fifo.addr, align 8, !dbg !4388
  %data = getelementptr inbounds %struct.__kfifo, ptr %23, i32 0, i32 4, !dbg !4389
  %24 = load ptr, ptr %data, align 8, !dbg !4389
  %25 = load i32, ptr %off.addr, align 4, !dbg !4390
  %idx.ext = zext i32 %25 to i64, !dbg !4391
  %add.ptr = getelementptr i8, ptr %24, i64 %idx.ext, !dbg !4391
  %26 = load i32, ptr %nents.addr, align 4, !dbg !4392
  %27 = load i32, ptr %l, align 4, !dbg !4393
  %call = call i32 @setup_sgl_buf(ptr noundef %22, ptr noundef %add.ptr, i32 noundef %26, i32 noundef %27) #20, !dbg !4394
  store i32 %call, ptr %n, align 4, !dbg !4395
  %28 = load ptr, ptr %sgl.addr, align 8, !dbg !4396
  %29 = load i32, ptr %n, align 4, !dbg !4397
  %idx.ext6 = zext i32 %29 to i64, !dbg !4398
  %add.ptr7 = getelementptr %struct.scatterlist, ptr %28, i64 %idx.ext6, !dbg !4398
  %30 = load ptr, ptr %fifo.addr, align 8, !dbg !4399
  %data8 = getelementptr inbounds %struct.__kfifo, ptr %30, i32 0, i32 4, !dbg !4400
  %31 = load ptr, ptr %data8, align 8, !dbg !4400
  %32 = load i32, ptr %nents.addr, align 4, !dbg !4401
  %33 = load i32, ptr %n, align 4, !dbg !4402
  %sub9 = sub i32 %32, %33, !dbg !4403
  %34 = load i32, ptr %len.addr, align 4, !dbg !4404
  %35 = load i32, ptr %l, align 4, !dbg !4405
  %sub10 = sub i32 %34, %35, !dbg !4406
  %call11 = call i32 @setup_sgl_buf(ptr noundef %add.ptr7, ptr noundef %31, i32 noundef %sub9, i32 noundef %sub10) #20, !dbg !4407
  %36 = load i32, ptr %n, align 4, !dbg !4408
  %add12 = add i32 %36, %call11, !dbg !4408
  store i32 %add12, ptr %n, align 4, !dbg !4408
  %37 = load i32, ptr %n, align 4, !dbg !4409
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #21, !dbg !4410
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !4410
  call void @llvm.lifetime.end.p0(i64 4, ptr %esize) #21, !dbg !4410
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #21, !dbg !4410
  ret i32 %37, !dbg !4411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_dma_out_prepare(ptr noundef %fifo, ptr noundef %sgl, i32 noundef %nents, i32 noundef %len) #0 align 16 !dbg !4412 {
entry:
  %fifo.addr = alloca ptr, align 8
  %sgl.addr = alloca ptr, align 8
  %nents.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4414, metadata !DIExpression()), !dbg !4419
  store ptr %sgl, ptr %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgl.addr, metadata !4415, metadata !DIExpression()), !dbg !4420
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !4416, metadata !DIExpression()), !dbg !4421
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4417, metadata !DIExpression()), !dbg !4422
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %l, metadata !4418, metadata !DIExpression()), !dbg !4424
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4425
  %in = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 0, !dbg !4426
  %1 = load i32, ptr %in, align 8, !dbg !4426
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4427
  %out = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 1, !dbg !4428
  %3 = load i32, ptr %out, align 4, !dbg !4428
  %sub = sub i32 %1, %3, !dbg !4429
  store i32 %sub, ptr %l, align 4, !dbg !4430
  %4 = load i32, ptr %len.addr, align 4, !dbg !4431
  %5 = load i32, ptr %l, align 4, !dbg !4433
  %cmp = icmp ugt i32 %4, %5, !dbg !4434
  br i1 %cmp, label %if.then, label %if.end, !dbg !4435

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %l, align 4, !dbg !4436
  store i32 %6, ptr %len.addr, align 4, !dbg !4437
  br label %if.end, !dbg !4438

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %fifo.addr, align 8, !dbg !4439
  %8 = load ptr, ptr %sgl.addr, align 8, !dbg !4440
  %9 = load i32, ptr %nents.addr, align 4, !dbg !4441
  %10 = load i32, ptr %len.addr, align 4, !dbg !4442
  %11 = load ptr, ptr %fifo.addr, align 8, !dbg !4443
  %out1 = getelementptr inbounds %struct.__kfifo, ptr %11, i32 0, i32 1, !dbg !4444
  %12 = load i32, ptr %out1, align 4, !dbg !4444
  %call = call i32 @setup_sgl(ptr noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %12) #20, !dbg !4445
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !4446
  ret i32 %call, !dbg !4447
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_max_r(i32 noundef %len, i64 noundef %recsize) #0 align 16 !dbg !4448 {
entry:
  %retval = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %recsize.addr = alloca i64, align 8
  %max = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4452, metadata !DIExpression()), !dbg !4455
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4453, metadata !DIExpression()), !dbg !4456
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #21, !dbg !4457
  call void @llvm.dbg.declare(metadata ptr %max, metadata !4454, metadata !DIExpression()), !dbg !4458
  %0 = load i64, ptr %recsize.addr, align 8, !dbg !4459
  %shl = shl i64 %0, 3, !dbg !4460
  %sh_prom = trunc i64 %shl to i32, !dbg !4461
  %shl1 = shl i32 1, %sh_prom, !dbg !4461
  %sub = sub i32 %shl1, 1, !dbg !4462
  store i32 %sub, ptr %max, align 4, !dbg !4458
  %1 = load i32, ptr %len.addr, align 4, !dbg !4463
  %2 = load i32, ptr %max, align 4, !dbg !4465
  %cmp = icmp ugt i32 %1, %2, !dbg !4466
  br i1 %cmp, label %if.then, label %if.end, !dbg !4467

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %max, align 4, !dbg !4468
  store i32 %3, ptr %retval, align 4, !dbg !4469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4469

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %len.addr, align 4, !dbg !4470
  store i32 %4, ptr %retval, align 4, !dbg !4471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4471

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #21, !dbg !4472
  %5 = load i32, ptr %retval, align 4, !dbg !4472
  ret i32 %5, !dbg !4472
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_len_r(ptr noundef %fifo, i64 noundef %recsize) #0 align 16 !dbg !4473 {
entry:
  %fifo.addr = alloca ptr, align 8
  %recsize.addr = alloca i64, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4477, metadata !DIExpression()), !dbg !4479
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4478, metadata !DIExpression()), !dbg !4480
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4481
  %1 = load i64, ptr %recsize.addr, align 8, !dbg !4482
  %call = call i32 @__kfifo_peek_n(ptr noundef %0, i64 noundef %1) #20, !dbg !4483
  ret i32 %call, !dbg !4484
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kfifo_peek_n(ptr noundef %fifo, i64 noundef %recsize) #0 align 16 !dbg !4485 {
entry:
  %fifo.addr = alloca ptr, align 8
  %recsize.addr = alloca i64, align 8
  %l = alloca i32, align 4
  %mask = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4487, metadata !DIExpression()), !dbg !4493
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4488, metadata !DIExpression()), !dbg !4494
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !4495
  call void @llvm.dbg.declare(metadata ptr %l, metadata !4489, metadata !DIExpression()), !dbg !4496
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #21, !dbg !4497
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4490, metadata !DIExpression()), !dbg !4498
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4499
  %mask1 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2, !dbg !4500
  %1 = load i32, ptr %mask1, align 8, !dbg !4500
  store i32 %1, ptr %mask, align 4, !dbg !4498
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #21, !dbg !4501
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4491, metadata !DIExpression()), !dbg !4502
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4503
  %data2 = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 4, !dbg !4504
  %3 = load ptr, ptr %data2, align 8, !dbg !4504
  store ptr %3, ptr %data, align 8, !dbg !4502
  %4 = load ptr, ptr %data, align 8, !dbg !4505
  %5 = load ptr, ptr %fifo.addr, align 8, !dbg !4505
  %out = getelementptr inbounds %struct.__kfifo, ptr %5, i32 0, i32 1, !dbg !4505
  %6 = load i32, ptr %out, align 4, !dbg !4505
  %7 = load i32, ptr %mask, align 4, !dbg !4505
  %and = and i32 %6, %7, !dbg !4505
  %idxprom = zext i32 %and to i64, !dbg !4505
  %arrayidx = getelementptr i8, ptr %4, i64 %idxprom, !dbg !4505
  %8 = load i8, ptr %arrayidx, align 1, !dbg !4505
  %conv = zext i8 %8 to i32, !dbg !4505
  store i32 %conv, ptr %l, align 4, !dbg !4506
  %9 = load i64, ptr %recsize.addr, align 8, !dbg !4507
  %dec = add i64 %9, -1, !dbg !4507
  store i64 %dec, ptr %recsize.addr, align 8, !dbg !4507
  %tobool = icmp ne i64 %dec, 0, !dbg !4507
  br i1 %tobool, label %if.then, label %if.end, !dbg !4509

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %data, align 8, !dbg !4510
  %11 = load ptr, ptr %fifo.addr, align 8, !dbg !4510
  %out3 = getelementptr inbounds %struct.__kfifo, ptr %11, i32 0, i32 1, !dbg !4510
  %12 = load i32, ptr %out3, align 4, !dbg !4510
  %add = add i32 %12, 1, !dbg !4510
  %13 = load i32, ptr %mask, align 4, !dbg !4510
  %and4 = and i32 %add, %13, !dbg !4510
  %idxprom5 = zext i32 %and4 to i64, !dbg !4510
  %arrayidx6 = getelementptr i8, ptr %10, i64 %idxprom5, !dbg !4510
  %14 = load i8, ptr %arrayidx6, align 1, !dbg !4510
  %conv7 = zext i8 %14 to i32, !dbg !4510
  %shl = shl i32 %conv7, 8, !dbg !4511
  %15 = load i32, ptr %l, align 4, !dbg !4512
  %or = or i32 %15, %shl, !dbg !4512
  store i32 %or, ptr %l, align 4, !dbg !4512
  br label %if.end, !dbg !4513

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, ptr %l, align 4, !dbg !4514
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #21, !dbg !4515
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #21, !dbg !4515
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !4515
  ret i32 %16, !dbg !4516
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_in_r(ptr noundef %fifo, ptr noundef %buf, i32 noundef %len, i64 noundef %recsize) #0 align 16 !dbg !4517 {
entry:
  %retval = alloca i32, align 4
  %fifo.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %recsize.addr = alloca i64, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4521, metadata !DIExpression()), !dbg !4525
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4522, metadata !DIExpression()), !dbg !4526
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4523, metadata !DIExpression()), !dbg !4527
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4524, metadata !DIExpression()), !dbg !4528
  %0 = load i32, ptr %len.addr, align 4, !dbg !4529
  %conv = zext i32 %0 to i64, !dbg !4529
  %1 = load i64, ptr %recsize.addr, align 8, !dbg !4531
  %add = add i64 %conv, %1, !dbg !4532
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4533
  %call = call i32 @kfifo_unused(ptr noundef %2) #20, !dbg !4534
  %conv1 = zext i32 %call to i64, !dbg !4534
  %cmp = icmp ugt i64 %add, %conv1, !dbg !4535
  br i1 %cmp, label %if.then, label %if.end, !dbg !4536

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4537
  br label %return, !dbg !4537

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fifo.addr, align 8, !dbg !4538
  %4 = load i32, ptr %len.addr, align 4, !dbg !4539
  %5 = load i64, ptr %recsize.addr, align 8, !dbg !4540
  call void @__kfifo_poke_n(ptr noundef %3, i32 noundef %4, i64 noundef %5) #20, !dbg !4541
  %6 = load ptr, ptr %fifo.addr, align 8, !dbg !4542
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !4543
  %8 = load i32, ptr %len.addr, align 4, !dbg !4544
  %9 = load ptr, ptr %fifo.addr, align 8, !dbg !4545
  %in = getelementptr inbounds %struct.__kfifo, ptr %9, i32 0, i32 0, !dbg !4546
  %10 = load i32, ptr %in, align 8, !dbg !4546
  %conv3 = zext i32 %10 to i64, !dbg !4545
  %11 = load i64, ptr %recsize.addr, align 8, !dbg !4547
  %add4 = add i64 %conv3, %11, !dbg !4548
  %conv5 = trunc i64 %add4 to i32, !dbg !4545
  call void @kfifo_copy_in(ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %conv5) #20, !dbg !4549
  %12 = load i32, ptr %len.addr, align 4, !dbg !4550
  %conv6 = zext i32 %12 to i64, !dbg !4550
  %13 = load i64, ptr %recsize.addr, align 8, !dbg !4551
  %add7 = add i64 %conv6, %13, !dbg !4552
  %14 = load ptr, ptr %fifo.addr, align 8, !dbg !4553
  %in8 = getelementptr inbounds %struct.__kfifo, ptr %14, i32 0, i32 0, !dbg !4554
  %15 = load i32, ptr %in8, align 8, !dbg !4555
  %conv9 = zext i32 %15 to i64, !dbg !4555
  %add10 = add i64 %conv9, %add7, !dbg !4555
  %conv11 = trunc i64 %add10 to i32, !dbg !4555
  store i32 %conv11, ptr %in8, align 8, !dbg !4555
  %16 = load i32, ptr %len.addr, align 4, !dbg !4556
  store i32 %16, ptr %retval, align 4, !dbg !4557
  br label %return, !dbg !4557

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, ptr %retval, align 4, !dbg !4558
  ret i32 %17, !dbg !4558
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kfifo_poke_n(ptr noundef %fifo, i32 noundef %n, i64 noundef %recsize) #0 align 16 !dbg !4559 {
entry:
  %fifo.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %recsize.addr = alloca i64, align 8
  %mask = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4563, metadata !DIExpression()), !dbg !4568
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4564, metadata !DIExpression()), !dbg !4569
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4565, metadata !DIExpression()), !dbg !4570
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #21, !dbg !4571
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4566, metadata !DIExpression()), !dbg !4572
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4573
  %mask1 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2, !dbg !4574
  %1 = load i32, ptr %mask1, align 8, !dbg !4574
  store i32 %1, ptr %mask, align 4, !dbg !4572
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #21, !dbg !4575
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4567, metadata !DIExpression()), !dbg !4576
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4577
  %data2 = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 4, !dbg !4578
  %3 = load ptr, ptr %data2, align 8, !dbg !4578
  store ptr %3, ptr %data, align 8, !dbg !4576
  %4 = load i32, ptr %n.addr, align 4, !dbg !4579
  %conv = trunc i32 %4 to i8, !dbg !4579
  %5 = load ptr, ptr %data, align 8, !dbg !4579
  %6 = load ptr, ptr %fifo.addr, align 8, !dbg !4579
  %in = getelementptr inbounds %struct.__kfifo, ptr %6, i32 0, i32 0, !dbg !4579
  %7 = load i32, ptr %in, align 8, !dbg !4579
  %8 = load i32, ptr %mask, align 4, !dbg !4579
  %and = and i32 %7, %8, !dbg !4579
  %idxprom = zext i32 %and to i64, !dbg !4579
  %arrayidx = getelementptr i8, ptr %5, i64 %idxprom, !dbg !4579
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4579
  %9 = load i64, ptr %recsize.addr, align 8, !dbg !4580
  %cmp = icmp ugt i64 %9, 1, !dbg !4582
  br i1 %cmp, label %if.then, label %if.end, !dbg !4583

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %n.addr, align 4, !dbg !4584
  %shr = lshr i32 %10, 8, !dbg !4584
  %conv4 = trunc i32 %shr to i8, !dbg !4584
  %11 = load ptr, ptr %data, align 8, !dbg !4584
  %12 = load ptr, ptr %fifo.addr, align 8, !dbg !4584
  %in5 = getelementptr inbounds %struct.__kfifo, ptr %12, i32 0, i32 0, !dbg !4584
  %13 = load i32, ptr %in5, align 8, !dbg !4584
  %add = add i32 %13, 1, !dbg !4584
  %14 = load i32, ptr %mask, align 4, !dbg !4584
  %and6 = and i32 %add, %14, !dbg !4584
  %idxprom7 = zext i32 %and6 to i64, !dbg !4584
  %arrayidx8 = getelementptr i8, ptr %11, i64 %idxprom7, !dbg !4584
  store i8 %conv4, ptr %arrayidx8, align 1, !dbg !4584
  br label %if.end, !dbg !4584

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #21, !dbg !4585
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #21, !dbg !4585
  ret void, !dbg !4585
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_out_peek_r(ptr noundef %fifo, ptr noundef %buf, i32 noundef %len, i64 noundef %recsize) #0 align 16 !dbg !4586 {
entry:
  %retval = alloca i32, align 4
  %fifo.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %recsize.addr = alloca i64, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4590, metadata !DIExpression()), !dbg !4595
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4591, metadata !DIExpression()), !dbg !4596
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4592, metadata !DIExpression()), !dbg !4597
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4593, metadata !DIExpression()), !dbg !4598
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #21, !dbg !4599
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4594, metadata !DIExpression()), !dbg !4600
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4601
  %in = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 0, !dbg !4603
  %1 = load i32, ptr %in, align 8, !dbg !4603
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4604
  %out = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 1, !dbg !4605
  %3 = load i32, ptr %out, align 4, !dbg !4605
  %cmp = icmp eq i32 %1, %3, !dbg !4606
  br i1 %cmp, label %if.then, label %if.end, !dbg !4607

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4608

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !4609
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !4610
  %6 = load i32, ptr %len.addr, align 4, !dbg !4611
  %7 = load i64, ptr %recsize.addr, align 8, !dbg !4612
  %call = call i32 @kfifo_out_copy_r(ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7, ptr noundef %n) #20, !dbg !4613
  store i32 %call, ptr %retval, align 4, !dbg !4614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4614

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #21, !dbg !4615
  %8 = load i32, ptr %retval, align 4, !dbg !4615
  ret i32 %8, !dbg !4615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kfifo_out_copy_r(ptr noundef %fifo, ptr noundef %buf, i32 noundef %len, i64 noundef %recsize, ptr noundef %n) #0 align 16 !dbg !4616 {
entry:
  %fifo.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %recsize.addr = alloca i64, align 8
  %n.addr = alloca ptr, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4620, metadata !DIExpression()), !dbg !4625
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4621, metadata !DIExpression()), !dbg !4626
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4622, metadata !DIExpression()), !dbg !4627
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4623, metadata !DIExpression()), !dbg !4628
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4624, metadata !DIExpression()), !dbg !4629
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4630
  %1 = load i64, ptr %recsize.addr, align 8, !dbg !4631
  %call = call i32 @__kfifo_peek_n(ptr noundef %0, i64 noundef %1) #20, !dbg !4632
  %2 = load ptr, ptr %n.addr, align 8, !dbg !4633
  store i32 %call, ptr %2, align 4, !dbg !4634
  %3 = load i32, ptr %len.addr, align 4, !dbg !4635
  %4 = load ptr, ptr %n.addr, align 8, !dbg !4637
  %5 = load i32, ptr %4, align 4, !dbg !4638
  %cmp = icmp ugt i32 %3, %5, !dbg !4639
  br i1 %cmp, label %if.then, label %if.end, !dbg !4640

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %n.addr, align 8, !dbg !4641
  %7 = load i32, ptr %6, align 4, !dbg !4642
  store i32 %7, ptr %len.addr, align 4, !dbg !4643
  br label %if.end, !dbg !4644

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %fifo.addr, align 8, !dbg !4645
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !4646
  %10 = load i32, ptr %len.addr, align 4, !dbg !4647
  %11 = load ptr, ptr %fifo.addr, align 8, !dbg !4648
  %out = getelementptr inbounds %struct.__kfifo, ptr %11, i32 0, i32 1, !dbg !4649
  %12 = load i32, ptr %out, align 4, !dbg !4649
  %conv = zext i32 %12 to i64, !dbg !4648
  %13 = load i64, ptr %recsize.addr, align 8, !dbg !4650
  %add = add i64 %conv, %13, !dbg !4651
  %conv1 = trunc i64 %add to i32, !dbg !4648
  call void @kfifo_copy_out(ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %conv1) #20, !dbg !4652
  %14 = load i32, ptr %len.addr, align 4, !dbg !4653
  ret i32 %14, !dbg !4654
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_out_r(ptr noundef %fifo, ptr noundef %buf, i32 noundef %len, i64 noundef %recsize) #0 align 16 !dbg !4655 {
entry:
  %retval = alloca i32, align 4
  %fifo.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %recsize.addr = alloca i64, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4657, metadata !DIExpression()), !dbg !4662
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4658, metadata !DIExpression()), !dbg !4663
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4659, metadata !DIExpression()), !dbg !4664
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4660, metadata !DIExpression()), !dbg !4665
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #21, !dbg !4666
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4661, metadata !DIExpression()), !dbg !4667
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4668
  %in = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 0, !dbg !4670
  %1 = load i32, ptr %in, align 8, !dbg !4670
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4671
  %out = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 1, !dbg !4672
  %3 = load i32, ptr %out, align 4, !dbg !4672
  %cmp = icmp eq i32 %1, %3, !dbg !4673
  br i1 %cmp, label %if.then, label %if.end, !dbg !4674

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4675

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !4676
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !4677
  %6 = load i32, ptr %len.addr, align 4, !dbg !4678
  %7 = load i64, ptr %recsize.addr, align 8, !dbg !4679
  %call = call i32 @kfifo_out_copy_r(ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7, ptr noundef %n) #20, !dbg !4680
  store i32 %call, ptr %len.addr, align 4, !dbg !4681
  %8 = load i32, ptr %n, align 4, !dbg !4682
  %conv = zext i32 %8 to i64, !dbg !4682
  %9 = load i64, ptr %recsize.addr, align 8, !dbg !4683
  %add = add i64 %conv, %9, !dbg !4684
  %10 = load ptr, ptr %fifo.addr, align 8, !dbg !4685
  %out1 = getelementptr inbounds %struct.__kfifo, ptr %10, i32 0, i32 1, !dbg !4686
  %11 = load i32, ptr %out1, align 4, !dbg !4687
  %conv2 = zext i32 %11 to i64, !dbg !4687
  %add3 = add i64 %conv2, %add, !dbg !4687
  %conv4 = trunc i64 %add3 to i32, !dbg !4687
  store i32 %conv4, ptr %out1, align 4, !dbg !4687
  %12 = load i32, ptr %len.addr, align 4, !dbg !4688
  store i32 %12, ptr %retval, align 4, !dbg !4689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4689

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #21, !dbg !4690
  %13 = load i32, ptr %retval, align 4, !dbg !4690
  ret i32 %13, !dbg !4690
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__kfifo_skip_r(ptr noundef %fifo, i64 noundef %recsize) #0 align 16 !dbg !4691 {
entry:
  %fifo.addr = alloca ptr, align 8
  %recsize.addr = alloca i64, align 8
  %n = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4695, metadata !DIExpression()), !dbg !4698
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4696, metadata !DIExpression()), !dbg !4699
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #21, !dbg !4700
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4697, metadata !DIExpression()), !dbg !4701
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4702
  %1 = load i64, ptr %recsize.addr, align 8, !dbg !4703
  %call = call i32 @__kfifo_peek_n(ptr noundef %0, i64 noundef %1) #20, !dbg !4704
  store i32 %call, ptr %n, align 4, !dbg !4705
  %2 = load i32, ptr %n, align 4, !dbg !4706
  %conv = zext i32 %2 to i64, !dbg !4706
  %3 = load i64, ptr %recsize.addr, align 8, !dbg !4707
  %add = add i64 %conv, %3, !dbg !4708
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !4709
  %out = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 1, !dbg !4710
  %5 = load i32, ptr %out, align 4, !dbg !4711
  %conv1 = zext i32 %5 to i64, !dbg !4711
  %add2 = add i64 %conv1, %add, !dbg !4711
  %conv3 = trunc i64 %add2 to i32, !dbg !4711
  store i32 %conv3, ptr %out, align 4, !dbg !4711
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #21, !dbg !4712
  ret void, !dbg !4712
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_from_user_r(ptr noundef %fifo, ptr noundef %from, i64 noundef %len, ptr noundef %copied, i64 noundef %recsize) #0 align 16 !dbg !4713 {
entry:
  %retval = alloca i32, align 4
  %fifo.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %copied.addr = alloca ptr, align 8
  %recsize.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4717, metadata !DIExpression()), !dbg !4723
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4718, metadata !DIExpression()), !dbg !4724
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4719, metadata !DIExpression()), !dbg !4725
  store ptr %copied, ptr %copied.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %copied.addr, metadata !4720, metadata !DIExpression()), !dbg !4726
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4721, metadata !DIExpression()), !dbg !4727
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #21, !dbg !4728
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4722, metadata !DIExpression()), !dbg !4729
  %0 = load i64, ptr %len.addr, align 8, !dbg !4730
  %conv = trunc i64 %0 to i32, !dbg !4730
  %1 = load i64, ptr %recsize.addr, align 8, !dbg !4731
  %call = call i32 @__kfifo_max_r(i32 noundef %conv, i64 noundef %1) #20, !dbg !4732
  %conv1 = zext i32 %call to i64, !dbg !4732
  store i64 %conv1, ptr %len.addr, align 8, !dbg !4733
  %2 = load i64, ptr %len.addr, align 8, !dbg !4734
  %3 = load i64, ptr %recsize.addr, align 8, !dbg !4736
  %add = add i64 %2, %3, !dbg !4737
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !4738
  %call2 = call i32 @kfifo_unused(ptr noundef %4) #20, !dbg !4739
  %conv3 = zext i32 %call2 to i64, !dbg !4739
  %cmp = icmp ugt i64 %add, %conv3, !dbg !4740
  br i1 %cmp, label %if.then, label %if.end, !dbg !4741

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %copied.addr, align 8, !dbg !4742
  store i32 0, ptr %5, align 4, !dbg !4744
  store i32 0, ptr %retval, align 4, !dbg !4745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4745

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %fifo.addr, align 8, !dbg !4746
  %7 = load i64, ptr %len.addr, align 8, !dbg !4747
  %conv5 = trunc i64 %7 to i32, !dbg !4747
  %8 = load i64, ptr %recsize.addr, align 8, !dbg !4748
  call void @__kfifo_poke_n(ptr noundef %6, i32 noundef %conv5, i64 noundef %8) #20, !dbg !4749
  %9 = load ptr, ptr %fifo.addr, align 8, !dbg !4750
  %10 = load ptr, ptr %from.addr, align 8, !dbg !4751
  %11 = load i64, ptr %len.addr, align 8, !dbg !4752
  %conv6 = trunc i64 %11 to i32, !dbg !4752
  %12 = load ptr, ptr %fifo.addr, align 8, !dbg !4753
  %in = getelementptr inbounds %struct.__kfifo, ptr %12, i32 0, i32 0, !dbg !4754
  %13 = load i32, ptr %in, align 8, !dbg !4754
  %conv7 = zext i32 %13 to i64, !dbg !4753
  %14 = load i64, ptr %recsize.addr, align 8, !dbg !4755
  %add8 = add i64 %conv7, %14, !dbg !4756
  %conv9 = trunc i64 %add8 to i32, !dbg !4753
  %15 = load ptr, ptr %copied.addr, align 8, !dbg !4757
  %call10 = call i64 @kfifo_copy_from_user(ptr noundef %9, ptr noundef %10, i32 noundef %conv6, i32 noundef %conv9, ptr noundef %15) #20, !dbg !4758
  store i64 %call10, ptr %ret, align 8, !dbg !4759
  %16 = load i64, ptr %ret, align 8, !dbg !4760
  %tobool = icmp ne i64 %16, 0, !dbg !4760
  %lnot = xor i1 %tobool, true, !dbg !4760
  %lnot11 = xor i1 %lnot, true, !dbg !4760
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !4760
  %conv12 = sext i32 %lnot.ext to i64, !dbg !4760
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !4760
  %tobool13 = icmp ne i64 %expval, 0, !dbg !4760
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4762

if.then14:                                        ; preds = %if.end
  %17 = load ptr, ptr %copied.addr, align 8, !dbg !4763
  store i32 0, ptr %17, align 4, !dbg !4765
  store i32 -14, ptr %retval, align 4, !dbg !4766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4766

if.end15:                                         ; preds = %if.end
  %18 = load i64, ptr %len.addr, align 8, !dbg !4767
  %19 = load i64, ptr %recsize.addr, align 8, !dbg !4768
  %add16 = add i64 %18, %19, !dbg !4769
  %20 = load ptr, ptr %fifo.addr, align 8, !dbg !4770
  %in17 = getelementptr inbounds %struct.__kfifo, ptr %20, i32 0, i32 0, !dbg !4771
  %21 = load i32, ptr %in17, align 8, !dbg !4772
  %conv18 = zext i32 %21 to i64, !dbg !4772
  %add19 = add i64 %conv18, %add16, !dbg !4772
  %conv20 = trunc i64 %add19 to i32, !dbg !4772
  store i32 %conv20, ptr %in17, align 8, !dbg !4772
  store i32 0, ptr %retval, align 4, !dbg !4773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4773

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #21, !dbg !4774
  %22 = load i32, ptr %retval, align 4, !dbg !4774
  ret i32 %22, !dbg !4774
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_to_user_r(ptr noundef %fifo, ptr noundef %to, i64 noundef %len, ptr noundef %copied, i64 noundef %recsize) #0 align 16 !dbg !4775 {
entry:
  %retval = alloca i32, align 4
  %fifo.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %copied.addr = alloca ptr, align 8
  %recsize.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4779, metadata !DIExpression()), !dbg !4786
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4780, metadata !DIExpression()), !dbg !4787
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4781, metadata !DIExpression()), !dbg !4788
  store ptr %copied, ptr %copied.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %copied.addr, metadata !4782, metadata !DIExpression()), !dbg !4789
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4783, metadata !DIExpression()), !dbg !4790
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #21, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4784, metadata !DIExpression()), !dbg !4792
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #21, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4785, metadata !DIExpression()), !dbg !4794
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4795
  %in = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 0, !dbg !4797
  %1 = load i32, ptr %in, align 8, !dbg !4797
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4798
  %out = getelementptr inbounds %struct.__kfifo, ptr %2, i32 0, i32 1, !dbg !4799
  %3 = load i32, ptr %out, align 4, !dbg !4799
  %cmp = icmp eq i32 %1, %3, !dbg !4800
  br i1 %cmp, label %if.then, label %if.end, !dbg !4801

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %copied.addr, align 8, !dbg !4802
  store i32 0, ptr %4, align 4, !dbg !4804
  store i32 0, ptr %retval, align 4, !dbg !4805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4805

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %fifo.addr, align 8, !dbg !4806
  %6 = load i64, ptr %recsize.addr, align 8, !dbg !4807
  %call = call i32 @__kfifo_peek_n(ptr noundef %5, i64 noundef %6) #20, !dbg !4808
  store i32 %call, ptr %n, align 4, !dbg !4809
  %7 = load i64, ptr %len.addr, align 8, !dbg !4810
  %8 = load i32, ptr %n, align 4, !dbg !4812
  %conv = zext i32 %8 to i64, !dbg !4812
  %cmp1 = icmp ugt i64 %7, %conv, !dbg !4813
  br i1 %cmp1, label %if.then3, label %if.end5, !dbg !4814

if.then3:                                         ; preds = %if.end
  %9 = load i32, ptr %n, align 4, !dbg !4815
  %conv4 = zext i32 %9 to i64, !dbg !4815
  store i64 %conv4, ptr %len.addr, align 8, !dbg !4816
  br label %if.end5, !dbg !4817

if.end5:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %fifo.addr, align 8, !dbg !4818
  %11 = load ptr, ptr %to.addr, align 8, !dbg !4819
  %12 = load i64, ptr %len.addr, align 8, !dbg !4820
  %conv6 = trunc i64 %12 to i32, !dbg !4820
  %13 = load ptr, ptr %fifo.addr, align 8, !dbg !4821
  %out7 = getelementptr inbounds %struct.__kfifo, ptr %13, i32 0, i32 1, !dbg !4822
  %14 = load i32, ptr %out7, align 4, !dbg !4822
  %conv8 = zext i32 %14 to i64, !dbg !4821
  %15 = load i64, ptr %recsize.addr, align 8, !dbg !4823
  %add = add i64 %conv8, %15, !dbg !4824
  %conv9 = trunc i64 %add to i32, !dbg !4821
  %16 = load ptr, ptr %copied.addr, align 8, !dbg !4825
  %call10 = call i64 @kfifo_copy_to_user(ptr noundef %10, ptr noundef %11, i32 noundef %conv6, i32 noundef %conv9, ptr noundef %16) #20, !dbg !4826
  store i64 %call10, ptr %ret, align 8, !dbg !4827
  %17 = load i64, ptr %ret, align 8, !dbg !4828
  %tobool = icmp ne i64 %17, 0, !dbg !4828
  %lnot = xor i1 %tobool, true, !dbg !4828
  %lnot11 = xor i1 %lnot, true, !dbg !4828
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !4828
  %conv12 = sext i32 %lnot.ext to i64, !dbg !4828
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !4828
  %tobool13 = icmp ne i64 %expval, 0, !dbg !4828
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4830

if.then14:                                        ; preds = %if.end5
  %18 = load ptr, ptr %copied.addr, align 8, !dbg !4831
  store i32 0, ptr %18, align 4, !dbg !4833
  store i32 -14, ptr %retval, align 4, !dbg !4834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4834

if.end15:                                         ; preds = %if.end5
  %19 = load i32, ptr %n, align 4, !dbg !4835
  %conv16 = zext i32 %19 to i64, !dbg !4835
  %20 = load i64, ptr %recsize.addr, align 8, !dbg !4836
  %add17 = add i64 %conv16, %20, !dbg !4837
  %21 = load ptr, ptr %fifo.addr, align 8, !dbg !4838
  %out18 = getelementptr inbounds %struct.__kfifo, ptr %21, i32 0, i32 1, !dbg !4839
  %22 = load i32, ptr %out18, align 4, !dbg !4840
  %conv19 = zext i32 %22 to i64, !dbg !4840
  %add20 = add i64 %conv19, %add17, !dbg !4840
  %conv21 = trunc i64 %add20 to i32, !dbg !4840
  store i32 %conv21, ptr %out18, align 4, !dbg !4840
  store i32 0, ptr %retval, align 4, !dbg !4841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4841

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #21, !dbg !4842
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #21, !dbg !4842
  %23 = load i32, ptr %retval, align 4, !dbg !4842
  ret i32 %23, !dbg !4842
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_dma_in_prepare_r(ptr noundef %fifo, ptr noundef %sgl, i32 noundef %nents, i32 noundef %len, i64 noundef %recsize) #0 align 16 !dbg !4843 {
entry:
  %retval = alloca i32, align 4
  %fifo.addr = alloca ptr, align 8
  %sgl.addr = alloca ptr, align 8
  %nents.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %recsize.addr = alloca i64, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4847, metadata !DIExpression()), !dbg !4852
  store ptr %sgl, ptr %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgl.addr, metadata !4848, metadata !DIExpression()), !dbg !4853
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !4849, metadata !DIExpression()), !dbg !4854
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4850, metadata !DIExpression()), !dbg !4855
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4851, metadata !DIExpression()), !dbg !4856
  br label %do.body, !dbg !4857

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %nents.addr, align 4, !dbg !4858
  %tobool = icmp ne i32 %0, 0, !dbg !4858
  %lnot = xor i1 %tobool, true, !dbg !4858
  %lnot1 = xor i1 %lnot, true, !dbg !4858
  %lnot2 = xor i1 %lnot1, true, !dbg !4858
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4858
  %conv = sext i32 %lnot.ext to i64, !dbg !4858
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4858
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4858
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4861

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4858

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4862

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !4864

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !4862

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 551, i32 0, i64 12) #21, !dbg !4866, !srcloc !4868
  br label %do.end7, !dbg !4866

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !4862

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !4862

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4861

do.end9:                                          ; preds = %if.end
  %1 = load i32, ptr %len.addr, align 4, !dbg !4869
  %2 = load i64, ptr %recsize.addr, align 8, !dbg !4870
  %call = call i32 @__kfifo_max_r(i32 noundef %1, i64 noundef %2) #20, !dbg !4871
  store i32 %call, ptr %len.addr, align 4, !dbg !4872
  %3 = load i32, ptr %len.addr, align 4, !dbg !4873
  %conv10 = zext i32 %3 to i64, !dbg !4873
  %4 = load i64, ptr %recsize.addr, align 8, !dbg !4875
  %add = add i64 %conv10, %4, !dbg !4876
  %5 = load ptr, ptr %fifo.addr, align 8, !dbg !4877
  %call11 = call i32 @kfifo_unused(ptr noundef %5) #20, !dbg !4878
  %conv12 = zext i32 %call11 to i64, !dbg !4878
  %cmp = icmp ugt i64 %add, %conv12, !dbg !4879
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !4880

if.then14:                                        ; preds = %do.end9
  store i32 0, ptr %retval, align 4, !dbg !4881
  br label %return, !dbg !4881

if.end15:                                         ; preds = %do.end9
  %6 = load ptr, ptr %fifo.addr, align 8, !dbg !4882
  %7 = load ptr, ptr %sgl.addr, align 8, !dbg !4883
  %8 = load i32, ptr %nents.addr, align 4, !dbg !4884
  %9 = load i32, ptr %len.addr, align 4, !dbg !4885
  %10 = load ptr, ptr %fifo.addr, align 8, !dbg !4886
  %in = getelementptr inbounds %struct.__kfifo, ptr %10, i32 0, i32 0, !dbg !4887
  %11 = load i32, ptr %in, align 8, !dbg !4887
  %conv16 = zext i32 %11 to i64, !dbg !4886
  %12 = load i64, ptr %recsize.addr, align 8, !dbg !4888
  %add17 = add i64 %conv16, %12, !dbg !4889
  %conv18 = trunc i64 %add17 to i32, !dbg !4886
  %call19 = call i32 @setup_sgl(ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %conv18) #20, !dbg !4890
  store i32 %call19, ptr %retval, align 4, !dbg !4891
  br label %return, !dbg !4891

return:                                           ; preds = %if.end15, %if.then14
  %13 = load i32, ptr %retval, align 4, !dbg !4892
  ret i32 %13, !dbg !4892
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__kfifo_dma_in_finish_r(ptr noundef %fifo, i32 noundef %len, i64 noundef %recsize) #0 align 16 !dbg !4893 {
entry:
  %fifo.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %recsize.addr = alloca i64, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4895, metadata !DIExpression()), !dbg !4898
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4896, metadata !DIExpression()), !dbg !4899
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4897, metadata !DIExpression()), !dbg !4900
  %0 = load i32, ptr %len.addr, align 4, !dbg !4901
  %1 = load i64, ptr %recsize.addr, align 8, !dbg !4902
  %call = call i32 @__kfifo_max_r(i32 noundef %0, i64 noundef %1) #20, !dbg !4903
  store i32 %call, ptr %len.addr, align 4, !dbg !4904
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !4905
  %3 = load i32, ptr %len.addr, align 4, !dbg !4906
  %4 = load i64, ptr %recsize.addr, align 8, !dbg !4907
  call void @__kfifo_poke_n(ptr noundef %2, i32 noundef %3, i64 noundef %4) #20, !dbg !4908
  %5 = load i32, ptr %len.addr, align 4, !dbg !4909
  %conv = zext i32 %5 to i64, !dbg !4909
  %6 = load i64, ptr %recsize.addr, align 8, !dbg !4910
  %add = add i64 %conv, %6, !dbg !4911
  %7 = load ptr, ptr %fifo.addr, align 8, !dbg !4912
  %in = getelementptr inbounds %struct.__kfifo, ptr %7, i32 0, i32 0, !dbg !4913
  %8 = load i32, ptr %in, align 8, !dbg !4914
  %conv1 = zext i32 %8 to i64, !dbg !4914
  %add2 = add i64 %conv1, %add, !dbg !4914
  %conv3 = trunc i64 %add2 to i32, !dbg !4914
  store i32 %conv3, ptr %in, align 8, !dbg !4914
  ret void, !dbg !4915
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__kfifo_dma_out_prepare_r(ptr noundef %fifo, ptr noundef %sgl, i32 noundef %nents, i32 noundef %len, i64 noundef %recsize) #0 align 16 !dbg !4916 {
entry:
  %retval = alloca i32, align 4
  %fifo.addr = alloca ptr, align 8
  %sgl.addr = alloca ptr, align 8
  %nents.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %recsize.addr = alloca i64, align 8
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4918, metadata !DIExpression()), !dbg !4923
  store ptr %sgl, ptr %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgl.addr, metadata !4919, metadata !DIExpression()), !dbg !4924
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !4920, metadata !DIExpression()), !dbg !4925
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4921, metadata !DIExpression()), !dbg !4926
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4922, metadata !DIExpression()), !dbg !4927
  br label %do.body, !dbg !4928

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %nents.addr, align 4, !dbg !4929
  %tobool = icmp ne i32 %0, 0, !dbg !4929
  %lnot = xor i1 %tobool, true, !dbg !4929
  %lnot1 = xor i1 %lnot, true, !dbg !4929
  %lnot2 = xor i1 %lnot1, true, !dbg !4929
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4929
  %conv = sext i32 %lnot.ext to i64, !dbg !4929
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4929
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4929
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4932

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4929

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4933

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !4935

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !4933

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 574, i32 0, i64 12) #21, !dbg !4937, !srcloc !4939
  br label %do.end7, !dbg !4937

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !4933

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !4933

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4932

do.end9:                                          ; preds = %if.end
  %1 = load i32, ptr %len.addr, align 4, !dbg !4940
  %2 = load i64, ptr %recsize.addr, align 8, !dbg !4941
  %call = call i32 @__kfifo_max_r(i32 noundef %1, i64 noundef %2) #20, !dbg !4942
  store i32 %call, ptr %len.addr, align 4, !dbg !4943
  %3 = load i32, ptr %len.addr, align 4, !dbg !4944
  %conv10 = zext i32 %3 to i64, !dbg !4944
  %4 = load i64, ptr %recsize.addr, align 8, !dbg !4946
  %add = add i64 %conv10, %4, !dbg !4947
  %5 = load ptr, ptr %fifo.addr, align 8, !dbg !4948
  %in = getelementptr inbounds %struct.__kfifo, ptr %5, i32 0, i32 0, !dbg !4949
  %6 = load i32, ptr %in, align 8, !dbg !4949
  %7 = load ptr, ptr %fifo.addr, align 8, !dbg !4950
  %out = getelementptr inbounds %struct.__kfifo, ptr %7, i32 0, i32 1, !dbg !4951
  %8 = load i32, ptr %out, align 4, !dbg !4951
  %sub = sub i32 %6, %8, !dbg !4952
  %conv11 = zext i32 %sub to i64, !dbg !4948
  %cmp = icmp ugt i64 %add, %conv11, !dbg !4953
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !4954

if.then13:                                        ; preds = %do.end9
  store i32 0, ptr %retval, align 4, !dbg !4955
  br label %return, !dbg !4955

if.end14:                                         ; preds = %do.end9
  %9 = load ptr, ptr %fifo.addr, align 8, !dbg !4956
  %10 = load ptr, ptr %sgl.addr, align 8, !dbg !4957
  %11 = load i32, ptr %nents.addr, align 4, !dbg !4958
  %12 = load i32, ptr %len.addr, align 4, !dbg !4959
  %13 = load ptr, ptr %fifo.addr, align 8, !dbg !4960
  %out15 = getelementptr inbounds %struct.__kfifo, ptr %13, i32 0, i32 1, !dbg !4961
  %14 = load i32, ptr %out15, align 4, !dbg !4961
  %conv16 = zext i32 %14 to i64, !dbg !4960
  %15 = load i64, ptr %recsize.addr, align 8, !dbg !4962
  %add17 = add i64 %conv16, %15, !dbg !4963
  %conv18 = trunc i64 %add17 to i32, !dbg !4960
  %call19 = call i32 @setup_sgl(ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %conv18) #20, !dbg !4964
  store i32 %call19, ptr %retval, align 4, !dbg !4965
  br label %return, !dbg !4965

return:                                           ; preds = %if.end14, %if.then13
  %16 = load i32, ptr %retval, align 4, !dbg !4966
  ret i32 %16, !dbg !4966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__kfifo_dma_out_finish_r(ptr noundef %fifo, i64 noundef %recsize) #0 align 16 !dbg !4967 {
entry:
  %fifo.addr = alloca ptr, align 8
  %recsize.addr = alloca i64, align 8
  %len = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !4969, metadata !DIExpression()), !dbg !4972
  store i64 %recsize, ptr %recsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %recsize.addr, metadata !4970, metadata !DIExpression()), !dbg !4973
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #21, !dbg !4974
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4971, metadata !DIExpression()), !dbg !4975
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !4976
  %1 = load i64, ptr %recsize.addr, align 8, !dbg !4977
  %call = call i32 @__kfifo_peek_n(ptr noundef %0, i64 noundef %1) #20, !dbg !4978
  store i32 %call, ptr %len, align 4, !dbg !4979
  %2 = load i32, ptr %len, align 4, !dbg !4980
  %conv = zext i32 %2 to i64, !dbg !4980
  %3 = load i64, ptr %recsize.addr, align 8, !dbg !4981
  %add = add i64 %conv, %3, !dbg !4982
  %4 = load ptr, ptr %fifo.addr, align 8, !dbg !4983
  %out = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 1, !dbg !4984
  %5 = load i32, ptr %out, align 4, !dbg !4985
  %conv1 = zext i32 %5 to i64, !dbg !4985
  %add2 = add i64 %conv1, %add, !dbg !4985
  %conv3 = trunc i64 %add2 to i32, !dbg !4985
  store i32 %conv3, ptr %out, align 4, !dbg !4985
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #21, !dbg !4986
  ret void, !dbg !4986
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #10 align 16 !dbg !4987 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4992, metadata !DIExpression()), !dbg !4994
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #21, !dbg !4995
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4993, metadata !DIExpression()), !dbg !4996
  %0 = load i32, ptr %x.addr, align 4, !dbg !4997
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #23, !dbg !4998, !srcloc !4999
  store i32 %1, ptr %r, align 4, !dbg !4998
  %2 = load i32, ptr %r, align 4, !dbg !5000
  %add = add i32 %2, 1, !dbg !5001
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #21, !dbg !5002
  ret i32 %add, !dbg !5003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls_long(i64 noundef %l) #8 align 16 !dbg !5004 {
entry:
  %l.addr = alloca i64, align 8
  store i64 %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  %0 = load i64, ptr %l.addr, align 8, !dbg !5011
  %call = call i32 @fls64(i64 noundef %0) #20, !dbg !5012
  ret i32 %call, !dbg !5013
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #10 align 16 !dbg !5014 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5018, metadata !DIExpression()), !dbg !5020
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #21, !dbg !5021
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !5019, metadata !DIExpression()), !dbg !5022
  store i32 -1, ptr %bitpos, align 4, !dbg !5022
  %0 = load i32, ptr %bitpos, align 4, !dbg !5023
  %1 = load i64, ptr %x.addr, align 8, !dbg !5024
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #23, !dbg !5023, !srcloc !5025
  store i32 %2, ptr %bitpos, align 4, !dbg !5023
  %3 = load i32, ptr %bitpos, align 4, !dbg !5026
  %add = add i32 %3, 1, !dbg !5027
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #21, !dbg !5028
  ret i32 %add, !dbg !5029
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #8 align 16 !dbg !5030 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5037, !range !5038, !noundef !380
  %tobool = trunc i8 %0 to i1, !dbg !5037
  %lnot = xor i1 %tobool, true, !dbg !5037
  %lnot1 = xor i1 %lnot, true, !dbg !5037
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5037
  %conv = sext i32 %lnot.ext to i64, !dbg !5037
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5037
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5037
  ret i1 %tobool2, !dbg !5039
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5040 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5044, metadata !DIExpression()), !dbg !5049
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5045, metadata !DIExpression()), !dbg !5050
  %0 = load i64, ptr %size.addr, align 8, !dbg !5051
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5052
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5053

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5054
  %tobool = icmp ne i64 %2, 0, !dbg !5054
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5055

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #21, !dbg !5056
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5046, metadata !DIExpression()), !dbg !5057
  %3 = load i64, ptr %size.addr, align 8, !dbg !5058
  %cmp = icmp ugt i64 %3, 8192, !dbg !5060
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5061

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5062
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5063
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !5064
  store ptr %call, ptr %retval, align 8, !dbg !5065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5065

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5066
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !5066
  store i32 %call2, ptr %index, align 4, !dbg !5067
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5068
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5069
  %9 = ptrtoint ptr %8 to i64, !dbg !5069
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !5070
  %idxprom = zext i32 %call3 to i64, !dbg !5071
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5071
  %10 = load i32, ptr %index, align 4, !dbg !5072
  %idxprom4 = zext i32 %10 to i64, !dbg !5071
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5071
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5071
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5073
  %13 = load i64, ptr %size.addr, align 8, !dbg !5074
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !5075
  store ptr %call6, ptr %retval, align 8, !dbg !5076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5076

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #21, !dbg !5077
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5078
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5079
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !5080
  store ptr %call8, ptr %retval, align 8, !dbg !5081
  br label %return, !dbg !5081

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5082
  ret ptr %16, !dbg !5082
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5083 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5084 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !5085 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5089, metadata !DIExpression()), !dbg !5091
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5090, metadata !DIExpression()), !dbg !5092
  %0 = load i64, ptr %size.addr, align 8, !dbg !5093
  %tobool = icmp ne i64 %0, 0, !dbg !5093
  br i1 %tobool, label %if.end, label %if.then, !dbg !5095

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5096
  br label %return, !dbg !5096

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5097
  %cmp = icmp ule i64 %1, 8, !dbg !5099
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5100

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5101
  br label %return, !dbg !5101

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5102
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5104
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5105

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5106
  %cmp4 = icmp ule i64 %3, 96, !dbg !5107
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5108

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5109
  br label %return, !dbg !5109

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5110
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5112
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5113

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5114
  %cmp9 = icmp ule i64 %5, 192, !dbg !5115
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5116

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5117
  br label %return, !dbg !5117

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5118
  %cmp12 = icmp ule i64 %6, 8, !dbg !5120
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5121

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5122
  br label %return, !dbg !5122

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5123
  %cmp15 = icmp ule i64 %7, 16, !dbg !5125
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5126

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5127
  br label %return, !dbg !5127

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5128
  %cmp18 = icmp ule i64 %8, 32, !dbg !5130
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5131

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5132
  br label %return, !dbg !5132

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5133
  %cmp21 = icmp ule i64 %9, 64, !dbg !5135
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5136

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5137
  br label %return, !dbg !5137

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5138
  %cmp24 = icmp ule i64 %10, 128, !dbg !5140
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5141

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5142
  br label %return, !dbg !5142

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5143
  %cmp27 = icmp ule i64 %11, 256, !dbg !5145
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5146

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5147
  br label %return, !dbg !5147

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5148
  %cmp30 = icmp ule i64 %12, 512, !dbg !5150
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5151

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5152
  br label %return, !dbg !5152

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5153
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5155
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5156

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5157
  br label %return, !dbg !5157

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5158
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5160
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5161

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5162
  br label %return, !dbg !5162

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5163
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5165
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5166

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5167
  br label %return, !dbg !5167

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5168
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5170
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5171

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5172
  br label %return, !dbg !5172

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5173
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5175
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5176

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5177
  br label %return, !dbg !5177

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5178
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5180
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5181

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5182
  br label %return, !dbg !5182

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5183
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5185
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5186

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5187
  br label %return, !dbg !5187

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5188
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5190
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5191

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5192
  br label %return, !dbg !5192

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5193
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5195
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5196

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5197
  br label %return, !dbg !5197

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5198
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5200
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5201

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5202
  br label %return, !dbg !5202

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5203
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5205
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5206

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5207
  br label %return, !dbg !5207

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5208
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5210
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5211

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5212
  br label %return, !dbg !5212

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5213, !range !5038, !noundef !380
  %tobool69 = trunc i8 %25 to i1, !dbg !5213
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5215

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5216

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #25, !dbg !5217, !srcloc !5220
  unreachable, !dbg !5217

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5221

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5222

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5223

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5225

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5223

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #21, !dbg !5227, !srcloc !5229
  br label %do.end75, !dbg !5227

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5223

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5230
  br label %return, !dbg !5230

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5231
  ret i32 %26, !dbg !5231
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5232 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !5238 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5242, metadata !DIExpression()), !dbg !5244
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5243, metadata !DIExpression()), !dbg !5245
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5246
  %and = and i32 %0, 17, !dbg !5246
  %cmp = icmp eq i32 %and, 0, !dbg !5246
  %lnot = xor i1 %cmp, true, !dbg !5246
  %lnot1 = xor i1 %lnot, true, !dbg !5246
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5246
  %conv = sext i32 %lnot.ext to i64, !dbg !5246
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5246
  %tobool = icmp ne i64 %expval, 0, !dbg !5246
  br i1 %tobool, label %if.then, label %if.end, !dbg !5248

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5249
  br label %return, !dbg !5249

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5250
  %and2 = and i32 %1, 1, !dbg !5252
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5252
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5253

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5254
  br label %return, !dbg !5254

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5255
  br label %return, !dbg !5255

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5257
  ret i32 %2, !dbg !5257
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5258 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #10 align 16 !dbg !5259 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5264, metadata !DIExpression()), !dbg !5267
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5265, metadata !DIExpression()), !dbg !5268
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5266, metadata !DIExpression()), !dbg !5269
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5270
  %1 = load i64, ptr %n.addr, align 8, !dbg !5272
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #20, !dbg !5273
  br i1 %call, label %if.then, label %if.end, !dbg !5274

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5275
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5276
  %4 = load i64, ptr %n.addr, align 8, !dbg !5277
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #20, !dbg !5278
  store i64 %call1, ptr %n.addr, align 8, !dbg !5279
  br label %if.end, !dbg !5280

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5281
  ret i64 %5, !dbg !5282
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #10 align 16 !dbg !5283 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5287, metadata !DIExpression()), !dbg !5297
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5288, metadata !DIExpression()), !dbg !5298
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5289, metadata !DIExpression()), !dbg !5299
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #21, !dbg !5300
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5290, metadata !DIExpression()), !dbg !5301
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5302
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5303
  %conv = trunc i64 %1 to i32, !dbg !5303
  store i32 %conv, ptr %sz, align 4, !dbg !5301
  %2 = load i32, ptr %sz, align 4, !dbg !5304
  %cmp = icmp sge i32 %2, 0, !dbg !5304
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5304

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5304
  %conv2 = sext i32 %3 to i64, !dbg !5304
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5304
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5304
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5306
  %lnot = xor i1 %5, true, !dbg !5304
  %lnot5 = xor i1 %lnot, true, !dbg !5304
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5304
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5304
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5304
  %tobool = icmp ne i64 %expval, 0, !dbg !5304
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5307

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5308
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5311
  br i1 %7, label %if.else, label %if.then7, !dbg !5312

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5313
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5314
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #20, !dbg !5315
  br label %if.end11, !dbg !5315

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5316, !range !5038, !noundef !380
  %tobool8 = trunc i8 %10 to i1, !dbg !5316
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5318

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #20, !dbg !5319, !srcloc !5320
  br label %if.end, !dbg !5319

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #20, !dbg !5321, !srcloc !5322
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5323

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5291, metadata !DIExpression()), !dbg !5324
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5324
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5324
  %lnot15 = xor i1 %cmp13, true, !dbg !5324
  %lnot17 = xor i1 %lnot15, true, !dbg !5324
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5324
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5324
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5325
  %tobool19 = icmp ne i32 %12, 0, !dbg !5325
  %lnot20 = xor i1 %tobool19, true, !dbg !5325
  %lnot22 = xor i1 %lnot20, true, !dbg !5325
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5325
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5325
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5325
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5325
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5324

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5325

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5294, metadata !DIExpression()), !dbg !5326
  store i32 2307, ptr %__flags, align 4, !dbg !5326
  br label %do.body28, !dbg !5326

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5327

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5327

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5326

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5329
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 249, i32 %13, i64 12) #21, !dbg !5329, !srcloc !5331
  br label %do.cond30, !dbg !5329

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5329

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5326

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5332

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5332

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !5325
  br label %do.cond35, !dbg !5326

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5326

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5326

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5324
  %tobool38 = icmp ne i32 %14, 0, !dbg !5324
  %lnot39 = xor i1 %tobool38, true, !dbg !5324
  %lnot41 = xor i1 %lnot39, true, !dbg !5324
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5324
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5324
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5324
  store i64 %expval44, ptr %tmp, align 8, !dbg !5325
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !5334
  %15 = load i64, ptr %tmp, align 8, !dbg !5324
  %tobool45 = icmp ne i64 %15, 0, !dbg !5334
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5335

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5336

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5337
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5338
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5339, !range !5038, !noundef !380
  %tobool48 = trunc i8 %18 to i1, !dbg !5339
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #20, !dbg !5340
  store i1 true, ptr %retval, align 1, !dbg !5341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5341

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #21, !dbg !5342
  %19 = load i1, ptr %retval, align 1, !dbg !5342
  ret i1 %19, !dbg !5342
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5343 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #8 align 16 !dbg !5344 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5348, metadata !DIExpression()), !dbg !5350
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5349, metadata !DIExpression()), !dbg !5351
  %0 = load i32, ptr %size.addr, align 4, !dbg !5352
  %1 = load i64, ptr %count.addr, align 8, !dbg !5354
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #20, !dbg !5355
  ret void, !dbg !5356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5357 dso_local void @__bad_copy_from() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5358 dso_local void @__bad_copy_to() #17

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #8 align 16 !dbg !5359 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5363, metadata !DIExpression()), !dbg !5366
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5364, metadata !DIExpression()), !dbg !5367
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5365, metadata !DIExpression()), !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5370 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #10 align 16 !dbg !5371 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5373, metadata !DIExpression()), !dbg !5376
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5374, metadata !DIExpression()), !dbg !5377
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5375, metadata !DIExpression()), !dbg !5378
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5379
  %1 = load i64, ptr %n.addr, align 8, !dbg !5381
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #20, !dbg !5382
  br i1 %call, label %if.then, label %if.end, !dbg !5383

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5384
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5385
  %4 = load i64, ptr %n.addr, align 8, !dbg !5386
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #20, !dbg !5387
  store i64 %call1, ptr %n.addr, align 8, !dbg !5388
  br label %if.end, !dbg !5389

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5390
  ret i64 %5, !dbg !5391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5392 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @setup_sgl_buf(ptr noundef %sgl, ptr noundef %buf, i32 noundef %nents, i32 noundef %len) #0 align 16 !dbg !5393 {
entry:
  %retval = alloca i32, align 4
  %sgl.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nents.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %off = alloca i32, align 4
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %npage = alloca ptr, align 8
  store ptr %sgl, ptr %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgl.addr, metadata !5397, metadata !DIExpression()), !dbg !5407
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5398, metadata !DIExpression()), !dbg !5408
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !5399, metadata !DIExpression()), !dbg !5409
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5400, metadata !DIExpression()), !dbg !5410
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #21, !dbg !5411
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5401, metadata !DIExpression()), !dbg !5412
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #21, !dbg !5413
  call void @llvm.dbg.declare(metadata ptr %l, metadata !5402, metadata !DIExpression()), !dbg !5414
  call void @llvm.lifetime.start.p0(i64 4, ptr %off) #21, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %off, metadata !5403, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #21, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5404, metadata !DIExpression()), !dbg !5418
  %0 = load i32, ptr %nents.addr, align 4, !dbg !5419
  %tobool = icmp ne i32 %0, 0, !dbg !5419
  br i1 %tobool, label %if.end, label %if.then, !dbg !5421

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !5422

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %len.addr, align 4, !dbg !5423
  %tobool1 = icmp ne i32 %1, 0, !dbg !5423
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5425

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !5426

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %n, align 4, !dbg !5427
  %2 = load i64, ptr @vmemmap_base, align 8, !dbg !5428
  %3 = inttoptr i64 %2 to ptr, !dbg !5428
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5428
  %5 = ptrtoint ptr %4 to i64, !dbg !5428
  %call = call i64 @__phys_addr_nodebug(i64 noundef %5) #20, !dbg !5428
  %shr = lshr i64 %call, 12, !dbg !5428
  %add.ptr = getelementptr %struct.page, ptr %3, i64 %shr, !dbg !5428
  store ptr %add.ptr, ptr %page, align 8, !dbg !5429
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5430
  %7 = ptrtoint ptr %6 to i64, !dbg !5430
  %and = and i64 %7, 4095, !dbg !5430
  %conv = trunc i64 %and to i32, !dbg !5430
  store i32 %conv, ptr %off, align 4, !dbg !5431
  store i32 0, ptr %l, align 4, !dbg !5432
  br label %while.cond, !dbg !5433

while.cond:                                       ; preds = %cleanup.cont, %if.end3
  %8 = load i32, ptr %len.addr, align 4, !dbg !5434
  %conv4 = zext i32 %8 to i64, !dbg !5434
  %9 = load i32, ptr %l, align 4, !dbg !5435
  %conv5 = zext i32 %9 to i64, !dbg !5435
  %add = add i64 %conv5, 4096, !dbg !5436
  %10 = load i32, ptr %off, align 4, !dbg !5437
  %conv6 = zext i32 %10 to i64, !dbg !5437
  %sub = sub i64 %add, %conv6, !dbg !5438
  %cmp = icmp uge i64 %conv4, %sub, !dbg !5439
  br i1 %cmp, label %while.body, label %while.end, !dbg !5433

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %npage) #21, !dbg !5440
  call void @llvm.dbg.declare(metadata ptr %npage, metadata !5405, metadata !DIExpression()), !dbg !5441
  %11 = load i32, ptr %l, align 4, !dbg !5442
  %conv8 = zext i32 %11 to i64, !dbg !5442
  %add9 = add i64 %conv8, 4096, !dbg !5442
  %conv10 = trunc i64 %add9 to i32, !dbg !5442
  store i32 %conv10, ptr %l, align 4, !dbg !5442
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !5443
  %add.ptr11 = getelementptr i8, ptr %12, i64 4096, !dbg !5443
  store ptr %add.ptr11, ptr %buf.addr, align 8, !dbg !5443
  %13 = load i64, ptr @vmemmap_base, align 8, !dbg !5444
  %14 = inttoptr i64 %13 to ptr, !dbg !5444
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !5444
  %16 = ptrtoint ptr %15 to i64, !dbg !5444
  %call12 = call i64 @__phys_addr_nodebug(i64 noundef %16) #20, !dbg !5444
  %shr13 = lshr i64 %call12, 12, !dbg !5444
  %add.ptr14 = getelementptr %struct.page, ptr %14, i64 %shr13, !dbg !5444
  store ptr %add.ptr14, ptr %npage, align 8, !dbg !5445
  %17 = load ptr, ptr %page, align 8, !dbg !5446
  %18 = load i64, ptr @vmemmap_base, align 8, !dbg !5446
  %19 = inttoptr i64 %18 to ptr, !dbg !5446
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64, !dbg !5446
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i64, !dbg !5446
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5446
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5446
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5446
  %20 = load ptr, ptr %npage, align 8, !dbg !5448
  %21 = load i64, ptr @vmemmap_base, align 8, !dbg !5448
  %22 = inttoptr i64 %21 to ptr, !dbg !5448
  %sub.ptr.lhs.cast15 = ptrtoint ptr %20 to i64, !dbg !5448
  %sub.ptr.rhs.cast16 = ptrtoint ptr %22 to i64, !dbg !5448
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16, !dbg !5448
  %sub.ptr.div18 = sdiv exact i64 %sub.ptr.sub17, 64, !dbg !5448
  %shl19 = shl i64 %sub.ptr.div18, 12, !dbg !5448
  %23 = load i32, ptr %l, align 4, !dbg !5449
  %conv20 = zext i32 %23 to i64, !dbg !5449
  %sub21 = sub i64 %shl19, %conv20, !dbg !5450
  %cmp22 = icmp ne i64 %shl, %sub21, !dbg !5451
  br i1 %cmp22, label %if.then24, label %if.end35, !dbg !5452

if.then24:                                        ; preds = %while.body
  %24 = load ptr, ptr %sgl.addr, align 8, !dbg !5453
  %25 = load ptr, ptr %page, align 8, !dbg !5455
  %26 = load i32, ptr %l, align 4, !dbg !5456
  %27 = load i32, ptr %off, align 4, !dbg !5457
  %sub25 = sub i32 %26, %27, !dbg !5458
  %28 = load i32, ptr %off, align 4, !dbg !5459
  call void @sg_set_page(ptr noundef %24, ptr noundef %25, i32 noundef %sub25, i32 noundef %28) #20, !dbg !5460
  %29 = load ptr, ptr %sgl.addr, align 8, !dbg !5461
  %call26 = call ptr @sg_next(ptr noundef %29) #20, !dbg !5462
  store ptr %call26, ptr %sgl.addr, align 8, !dbg !5463
  %30 = load i32, ptr %n, align 4, !dbg !5464
  %inc = add i32 %30, 1, !dbg !5464
  store i32 %inc, ptr %n, align 4, !dbg !5464
  %31 = load i32, ptr %nents.addr, align 4, !dbg !5466
  %cmp27 = icmp eq i32 %inc, %31, !dbg !5467
  br i1 %cmp27, label %if.then31, label %lor.lhs.false, !dbg !5468

lor.lhs.false:                                    ; preds = %if.then24
  %32 = load ptr, ptr %sgl.addr, align 8, !dbg !5469
  %cmp29 = icmp eq ptr %32, null, !dbg !5470
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !5471

if.then31:                                        ; preds = %lor.lhs.false, %if.then24
  %33 = load i32, ptr %n, align 4, !dbg !5472
  store i32 %33, ptr %retval, align 4, !dbg !5473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5473

if.end32:                                         ; preds = %lor.lhs.false
  %34 = load ptr, ptr %npage, align 8, !dbg !5474
  store ptr %34, ptr %page, align 8, !dbg !5475
  %35 = load i32, ptr %l, align 4, !dbg !5476
  %36 = load i32, ptr %off, align 4, !dbg !5477
  %sub33 = sub i32 %35, %36, !dbg !5478
  %37 = load i32, ptr %len.addr, align 4, !dbg !5479
  %sub34 = sub i32 %37, %sub33, !dbg !5479
  store i32 %sub34, ptr %len.addr, align 4, !dbg !5479
  store i32 0, ptr %off, align 4, !dbg !5480
  store i32 0, ptr %l, align 4, !dbg !5481
  br label %if.end35, !dbg !5482

if.end35:                                         ; preds = %if.end32, %while.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5483
  br label %cleanup, !dbg !5483

cleanup:                                          ; preds = %if.end35, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %npage) #21, !dbg !5483
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5433, !llvm.loop !5484

while.end:                                        ; preds = %while.cond
  %38 = load ptr, ptr %sgl.addr, align 8, !dbg !5487
  %39 = load ptr, ptr %page, align 8, !dbg !5488
  %40 = load i32, ptr %len.addr, align 4, !dbg !5489
  %41 = load i32, ptr %off, align 4, !dbg !5490
  call void @sg_set_page(ptr noundef %38, ptr noundef %39, i32 noundef %40, i32 noundef %41) #20, !dbg !5491
  %42 = load i32, ptr %n, align 4, !dbg !5492
  %add36 = add i32 %42, 1, !dbg !5493
  store i32 %add36, ptr %retval, align 4, !dbg !5494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !5494

cleanup37:                                        ; preds = %while.end, %cleanup, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #21, !dbg !5495
  call void @llvm.lifetime.end.p0(i64 4, ptr %off) #21, !dbg !5495
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #21, !dbg !5495
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #21, !dbg !5495
  %43 = load i32, ptr %retval, align 4, !dbg !5495
  ret i32 %43, !dbg !5495
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #10 align 16 !dbg !5496 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5499, metadata !DIExpression()), !dbg !5501
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #21, !dbg !5502
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5500, metadata !DIExpression()), !dbg !5503
  %0 = load i64, ptr %x.addr, align 8, !dbg !5504
  %sub = sub i64 %0, -2147483648, !dbg !5505
  store i64 %sub, ptr %y, align 8, !dbg !5503
  %1 = load i64, ptr %y, align 8, !dbg !5506
  %2 = load i64, ptr %x.addr, align 8, !dbg !5507
  %3 = load i64, ptr %y, align 8, !dbg !5508
  %cmp = icmp ugt i64 %2, %3, !dbg !5509
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5510

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !5511
  br label %cond.end, !dbg !5510

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !5512
  %sub1 = sub i64 -2147483648, %5, !dbg !5513
  br label %cond.end, !dbg !5510

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5510
  %add = add i64 %1, %cond, !dbg !5514
  store i64 %add, ptr %x.addr, align 8, !dbg !5515
  %6 = load i64, ptr %x.addr, align 8, !dbg !5516
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #21, !dbg !5517
  ret i64 %6, !dbg !5518
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_set_page(ptr noundef %sg, ptr noundef %page, i32 noundef %len, i32 noundef %offset) #8 align 16 !dbg !5519 {
entry:
  %sg.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !5523, metadata !DIExpression()), !dbg !5527
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5524, metadata !DIExpression()), !dbg !5528
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5525, metadata !DIExpression()), !dbg !5529
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5526, metadata !DIExpression()), !dbg !5530
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !5531
  %1 = load ptr, ptr %page.addr, align 8, !dbg !5532
  call void @sg_assign_page(ptr noundef %0, ptr noundef %1) #20, !dbg !5533
  %2 = load i32, ptr %offset.addr, align 4, !dbg !5534
  %3 = load ptr, ptr %sg.addr, align 8, !dbg !5535
  %offset1 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 1, !dbg !5536
  store i32 %2, ptr %offset1, align 8, !dbg !5537
  %4 = load i32, ptr %len.addr, align 4, !dbg !5538
  %5 = load ptr, ptr %sg.addr, align 8, !dbg !5539
  %length = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 2, !dbg !5540
  store i32 %4, ptr %length, align 4, !dbg !5541
  ret void, !dbg !5542
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5543 dso_local ptr @sg_next(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_assign_page(ptr noundef %sg, ptr noundef %page) #8 align 16 !dbg !5546 {
entry:
  %sg.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %page_link = alloca i64, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !5550, metadata !DIExpression()), !dbg !5553
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5551, metadata !DIExpression()), !dbg !5554
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_link) #21, !dbg !5555
  call void @llvm.dbg.declare(metadata ptr %page_link, metadata !5552, metadata !DIExpression()), !dbg !5556
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !5557
  %page_link1 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !5558
  %1 = load i64, ptr %page_link1, align 8, !dbg !5558
  %and = and i64 %1, 3, !dbg !5559
  store i64 %and, ptr %page_link, align 8, !dbg !5556
  br label %do.body, !dbg !5560

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !5561
  %3 = ptrtoint ptr %2 to i64, !dbg !5561
  %and2 = and i64 %3, 3, !dbg !5561
  %tobool = icmp ne i64 %and2, 0, !dbg !5561
  %lnot = xor i1 %tobool, true, !dbg !5561
  %lnot3 = xor i1 %lnot, true, !dbg !5561
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5561
  %conv = sext i32 %lnot.ext to i64, !dbg !5561
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5561
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5561
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5564

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5561

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5565

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !5567

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5567

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5565

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 115, i32 0, i64 12) #21, !dbg !5569, !srcloc !5571
  br label %do.cond8, !dbg !5569

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5569

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !5565

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !5565

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !5565

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !5564

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !5564

do.end13:                                         ; preds = %do.cond12
  %4 = load i64, ptr %page_link, align 8, !dbg !5572
  %5 = load ptr, ptr %page.addr, align 8, !dbg !5573
  %6 = ptrtoint ptr %5 to i64, !dbg !5574
  %or = or i64 %4, %6, !dbg !5575
  %7 = load ptr, ptr %sg.addr, align 8, !dbg !5576
  %page_link14 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 0, !dbg !5577
  store i64 %or, ptr %page_link14, align 8, !dbg !5578
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_link) #21, !dbg !5579
  ret void, !dbg !5579
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone nounwind willreturn memory(none) }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { noredzone }
attributes #21 = { nounwind }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { nounwind memory(read) }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477}
!llvm.ident = !{!3478}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_alloc277", scope: !2, file: !3, line: 53, type: !90, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.kfifo.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/kfifo\22 -D KBUILD_BASENAME=\22kfifo\22 -D KBUILD_MODNAME=\22kfifo\22 -D __KBUILD_MODNAME=kmod_kfifo -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/kfifo.ll lib/kfifo.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !89, globals: !3410, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/kfifo.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a712594b6fa5ddcf7db3024507de16f0")
!4 = !{!5, !11, !21, !26, !32, !37, !45, !61, !67, !74, !81}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !22, line: 2052, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!25 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !38, line: 9, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!41 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!42 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!43 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!44 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !46, line: 1325, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!48 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!49 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!50 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!51 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!52 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!53 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!54 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!55 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!56 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!57 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!58 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!59 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!60 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
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
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !82, line: 68, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!83 = !{!84, !85, !86, !87, !88}
!84 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!85 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!86 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!87 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!88 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!89 = !{!90, !91, !92, !94, !95, !3409, !210}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !93, line: 154, baseType: !7)
!93 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!94 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !46, line: 74, size: 512, align: 128, elements: !97)
!97 = !{!98, !99, !3403, !3408}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !46, line: 75, baseType: !91, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !46, line: 83, baseType: !100, size: 320, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !96, file: !46, line: 83, size: 320, elements: !101)
!101 = !{!102, !3309, !3323, !3327, !3402}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !46, line: 84, baseType: !103, size: 320)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !46, line: 84, size: 320, elements: !104)
!104 = !{!105, !121, !3303, !3308}
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !46, line: 90, baseType: !106, size: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !46, line: 90, size: 128, elements: !107)
!107 = !{!108, !114, !119, !120}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !106, file: !46, line: 91, baseType: !109, size: 128)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !93, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !93, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !93, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !46, line: 94, baseType: !115, size: 128)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !46, line: 94, size: 128, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !115, file: !46, line: 96, baseType: !90, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !115, file: !46, line: 98, baseType: !7, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !106, file: !46, line: 102, baseType: !109, size: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !106, file: !46, line: 103, baseType: !109, size: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !103, file: !46, line: 106, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !22, line: 472, size: 1536, align: 64, elements: !124)
!124 = !{!125, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3297, !3298, !3299, !3300, !3301, !3302}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !123, file: !22, line: 473, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !22, line: 641, size: 4800, elements: !128)
!128 = !{!129, !132, !133, !142, !143, !150, !151, !154, !155, !3076, !3077, !3078, !3079, !3080, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3120, !3123, !3124, !3125, !3134, !3135, !3136, !3137}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !127, file: !22, line: 642, baseType: !130, size: 16)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !93, line: 24, baseType: !131)
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !127, file: !22, line: 643, baseType: !131, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !127, file: !22, line: 644, baseType: !134, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !135, line: 23, baseType: !136)
!135 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 21, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !136, file: !135, line: 22, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !93, line: 37, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !141, line: 49, baseType: !7)
!141 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !127, file: !22, line: 645, baseType: !109, size: 128, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !127, file: !22, line: 646, baseType: !144, size: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !135, line: 28, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 26, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !145, file: !135, line: 27, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !93, line: 38, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !141, line: 50, baseType: !7)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !127, file: !22, line: 647, baseType: !7, size: 32, offset: 224)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !127, file: !22, line: 650, baseType: !152, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !22, line: 607, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !127, file: !22, line: 651, baseType: !152, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !127, file: !22, line: 654, baseType: !156, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !22, line: 1966, size: 2048, align: 512, elements: !159)
!159 = !{!160, !2901, !2914, !2918, !2922, !2926, !2930, !2934, !2938, !2942, !2946, !2947, !2951, !2955, !2992, !3021, !3025, !3031, !3035, !3039, !3043, !3047, !3051, !3057, !3061}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !158, file: !22, line: 1967, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !126, !164, !7}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !166, line: 82, size: 1536, elements: !167)
!166 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!167 = !{!168, !169, !179, !187, !188, !211, !212, !216, !267, !2884, !2885, !2886, !2887, !2893, !2894, !2895}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !165, file: !166, line: 84, baseType: !7, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !165, file: !166, line: 85, baseType: !170, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !171, line: 275, baseType: !172)
!171 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !171, line: 275, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !172, file: !171, line: 275, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !171, line: 69, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !171, line: 64, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !176, file: !171, line: 65, baseType: !7, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !165, file: !166, line: 86, baseType: !180, size: 128, offset: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !181, line: 38, size: 128, elements: !182)
!181 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !181, line: 39, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !180, file: !181, line: 39, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !165, file: !166, line: 87, baseType: !164, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !165, file: !166, line: 88, baseType: !189, size: 128, offset: 256)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !166, line: 49, size: 128, elements: !190)
!190 = !{!191, !207}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !166, line: 50, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !166, line: 50, size: 64, elements: !193)
!193 = !{!194, !203}
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !166, line: 51, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !166, line: 51, size: 64, elements: !196)
!196 = !{!197, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !195, file: !166, line: 52, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !199, line: 21, baseType: !200)
!199 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !201, line: 27, baseType: !7)
!201 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!202 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !195, file: !166, line: 52, baseType: !198, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !192, file: !166, line: 54, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !199, line: 23, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !201, line: 31, baseType: !206)
!206 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !166, line: 56, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !165, file: !166, line: 89, baseType: !126, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !165, file: !166, line: 91, baseType: !213, size: 256, offset: 448)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !165, file: !166, line: 94, baseType: !217, size: 64, offset: 704)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !218, line: 25, size: 64, elements: !219)
!218 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !218, line: 26, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !218, line: 26, size: 64, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !221, file: !218, line: 28, baseType: !205, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !218, line: 30, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !218, line: 30, size: 64, elements: !226)
!226 = !{!227, !266}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !225, file: !218, line: 31, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !229, line: 29, baseType: !230)
!229 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !229, line: 17, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !229, line: 18, baseType: !233, size: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !229, line: 18, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !233, file: !229, line: 19, baseType: !236, size: 32)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !237, line: 14, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !236, file: !237, line: 15, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !241, line: 44, baseType: !242)
!241 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !241, line: 14, size: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !241, line: 15, baseType: !245, size: 32)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !241, line: 15, size: 32, elements: !246)
!246 = !{!247, !252, !259}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !245, file: !241, line: 16, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !93, line: 174, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 172, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !249, file: !93, line: 173, baseType: !94, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !241, line: 24, baseType: !253, size: 16)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !241, line: 24, size: 16, elements: !254)
!254 = !{!255, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !253, file: !241, line: 25, baseType: !256, size: 8)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !199, line: 17, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !201, line: 21, baseType: !210)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !253, file: !241, line: 26, baseType: !256, size: 8, offset: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !241, line: 28, baseType: !260, size: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !241, line: 28, size: 32, elements: !261)
!261 = !{!262, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !260, file: !241, line: 29, baseType: !263, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !199, line: 19, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !201, line: 24, baseType: !131)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !260, file: !241, line: 30, baseType: !263, size: 16, offset: 16)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !225, file: !218, line: 32, baseType: !94, size: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !165, file: !166, line: 95, baseType: !268, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !166, line: 128, size: 1024, align: 512, elements: !271)
!271 = !{!272, !276, !277, !284, !293, !297, !301, !305, !306, !310, !315, !2874, !2878}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !270, file: !166, line: 129, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!94, !164, !7}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !270, file: !166, line: 130, baseType: !273, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !270, file: !166, line: 131, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!94, !281, !283}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !270, file: !166, line: 132, baseType: !285, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!94, !281, !7, !288, !291}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !270, file: !166, line: 134, baseType: !294, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!94, !281}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !270, file: !166, line: 135, baseType: !298, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!94, !164}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !270, file: !166, line: 136, baseType: !302, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !164}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !270, file: !166, line: 137, baseType: !302, size: 64, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !270, file: !166, line: 138, baseType: !307, size: 64, offset: 512)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !164, !126}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !270, file: !166, line: 139, baseType: !311, size: 64, offset: 576)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !164, !314, !94}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !270, file: !166, line: 140, baseType: !316, size: 64, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!319, !2873}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !321, line: 70, size: 256, elements: !322)
!321 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!322 = !{!323, !324, !2869, !2870}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !320, file: !321, line: 71, baseType: !164, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !320, file: !321, line: 72, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !22, line: 1190, size: 10752, elements: !327)
!327 = !{!328, !329, !332, !333, !334, !338, !391, !558, !598, !688, !692, !693, !694, !695, !696, !705, !706, !707, !708, !713, !717, !718, !721, !724, !727, !730, !731, !732, !773, !2800, !2801, !2802, !2803, !2804, !2805, !2808, !2810, !2817, !2818, !2819, !2820, !2821, !2836, !2837, !2838, !2839, !2840, !2843, !2844, !2845, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !326, file: !22, line: 1191, baseType: !109, size: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !326, file: !22, line: 1192, baseType: !330, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !93, line: 21, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !93, line: 18, baseType: !198)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !326, file: !22, line: 1193, baseType: !210, size: 8, offset: 160)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !326, file: !22, line: 1194, baseType: !91, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !326, file: !22, line: 1195, baseType: !335, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !93, line: 52, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !141, line: 88, baseType: !337)
!337 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !326, file: !22, line: 1196, baseType: !339, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !22, line: 2366, size: 576, elements: !341)
!341 = !{!342, !343, !344, !350, !354, !358, !362, !366, !367, !377, !381, !382, !383, !387, !388, !389, !390}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !340, file: !22, line: 2367, baseType: !288, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !340, file: !22, line: 2368, baseType: !94, size: 32, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !340, file: !22, line: 2376, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!94, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !321, line: 21, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !340, file: !22, line: 2377, baseType: !351, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !22, line: 75, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !340, file: !22, line: 2378, baseType: !355, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!164, !339, !94, !288, !90}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !340, file: !22, line: 2380, baseType: !359, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !325}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !340, file: !22, line: 2381, baseType: !363, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !365, line: 103, flags: DIFlagFwdDecl)
!365 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !22, line: 2382, baseType: !339, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !340, file: !22, line: 2383, baseType: !368, size: 64, offset: 512)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !93, line: 194, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !368, file: !93, line: 195, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !93, line: 198, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !93, line: 199, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !372, file: !93, line: 199, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !340, file: !22, line: 2385, baseType: !378, offset: 576)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !379, line: 206, elements: !380)
!379 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!380 = !{}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !340, file: !22, line: 2386, baseType: !378, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !340, file: !22, line: 2387, baseType: !378, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !340, file: !22, line: 2388, baseType: !384, offset: 576)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 3)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !340, file: !22, line: 2390, baseType: !378, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !340, file: !22, line: 2391, baseType: !378, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !340, file: !22, line: 2392, baseType: !378, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !340, file: !22, line: 2393, baseType: !378, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !326, file: !22, line: 1197, baseType: !392, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !22, line: 2057, size: 1664, elements: !395)
!395 = !{!396, !400, !404, !405, !409, !415, !419, !420, !421, !425, !429, !433, !434, !435, !441, !446, !447, !454, !455, !456, !457, !468, !472, !541, !556, !557}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !394, file: !22, line: 2058, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!126, !325}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !394, file: !22, line: 2059, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !126}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !394, file: !22, line: 2060, baseType: !401, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !394, file: !22, line: 2062, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !126, !94}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !394, file: !22, line: 2063, baseType: !410, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!94, !126, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !22, line: 309, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !394, file: !22, line: 2064, baseType: !416, size: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!94, !126}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !394, file: !22, line: 2065, baseType: !401, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !394, file: !22, line: 2066, baseType: !359, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !394, file: !22, line: 2067, baseType: !422, size: 64, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!94, !325, !94}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !394, file: !22, line: 2068, baseType: !426, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!94, !325, !21}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !394, file: !22, line: 2069, baseType: !430, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!94, !325}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !394, file: !22, line: 2070, baseType: !426, size: 64, offset: 704)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !394, file: !22, line: 2071, baseType: !430, size: 64, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !394, file: !22, line: 2072, baseType: !436, size: 64, offset: 832)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!94, !164, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !22, line: 62, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !394, file: !22, line: 2073, baseType: !442, size: 64, offset: 896)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!94, !325, !445, !314}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !394, file: !22, line: 2074, baseType: !359, size: 64, offset: 960)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !394, file: !22, line: 2076, baseType: !448, size: 64, offset: 1024)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!94, !451, !164}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !453, line: 66, flags: DIFlagFwdDecl)
!453 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!454 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !394, file: !22, line: 2077, baseType: !448, size: 64, offset: 1088)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !394, file: !22, line: 2078, baseType: !448, size: 64, offset: 1152)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !394, file: !22, line: 2079, baseType: !448, size: 64, offset: 1216)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !394, file: !22, line: 2081, baseType: !458, size: 64, offset: 1280)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !325, !94, !314, !465, !335}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !93, line: 66, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !141, line: 73, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !141, line: 15, baseType: !464)
!464 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 61, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !141, line: 72, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !141, line: 16, baseType: !91)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !394, file: !22, line: 2082, baseType: !469, size: 64, offset: 1344)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!461, !325, !94, !288, !465, !335}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !394, file: !22, line: 2083, baseType: !473, size: 64, offset: 1408)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !126}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !505, !506, !507, !508, !524, !525, !526}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !478, file: !27, line: 297, baseType: !372, size: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !478, file: !27, line: 298, baseType: !109, size: 128, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !478, file: !27, line: 299, baseType: !109, size: 128, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !478, file: !27, line: 300, baseType: !109, size: 128, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !478, file: !27, line: 301, baseType: !485, size: 256, offset: 512)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !486, line: 66, size: 256, elements: !487)
!486 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!487 = !{!488, !497, !499, !504}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !485, file: !486, line: 67, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !490, line: 13, baseType: !491)
!490 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !93, line: 181, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 179, size: 64, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !492, file: !93, line: 180, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !199, line: 22, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !201, line: 30, baseType: !337)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !485, file: !486, line: 68, baseType: !498, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !237, line: 23, baseType: !236)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !485, file: !486, line: 70, baseType: !500, size: 32, offset: 96)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !501, line: 15, size: 32, elements: !502)
!501 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !500, file: !501, line: 20, baseType: !248, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !485, file: !486, line: 72, baseType: !109, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !478, file: !27, line: 302, baseType: !228, size: 32, offset: 768)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !478, file: !27, line: 303, baseType: !248, size: 32, offset: 800)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !478, file: !27, line: 304, baseType: !325, size: 64, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !478, file: !27, line: 305, baseType: !509, size: 64, offset: 896)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !510)
!510 = !{!511, !523}
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !27, line: 69, baseType: !512, size: 32)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !27, line: 69, size: 32, elements: !513)
!513 = !{!514, !515, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !512, file: !27, line: 70, baseType: !134, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !512, file: !27, line: 71, baseType: !144, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !512, file: !27, line: 72, baseType: !517, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !518, line: 24, baseType: !519)
!518 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 22, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !519, file: !518, line: 23, baseType: !522, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !518, line: 20, baseType: !140)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !509, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !478, file: !27, line: 306, baseType: !335, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !478, file: !27, line: 307, baseType: !91, size: 64, offset: 1024)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !478, file: !27, line: 308, baseType: !527, size: 576, offset: 1088)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !528)
!528 = !{!529, !531, !532, !533, !534, !535, !536, !537, !540}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !527, file: !27, line: 206, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !337)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !527, file: !27, line: 207, baseType: !530, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !527, file: !27, line: 208, baseType: !530, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !527, file: !27, line: 209, baseType: !530, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !527, file: !27, line: 210, baseType: !530, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !527, file: !27, line: 211, baseType: !530, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !527, file: !27, line: 212, baseType: !530, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !527, file: !27, line: 213, baseType: !538, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !539, line: 8, baseType: !496)
!539 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !527, file: !27, line: 214, baseType: !538, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !394, file: !22, line: 2085, baseType: !542, size: 64, offset: 1472)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!464, !325, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !547, line: 15, size: 256, elements: !548)
!547 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!548 = !{!549, !550, !551, !552, !553}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !546, file: !547, line: 16, baseType: !92, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !546, file: !547, line: 19, baseType: !94, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !546, file: !547, line: 26, baseType: !91, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !546, file: !547, line: 33, baseType: !91, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !546, file: !547, line: 36, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !46, line: 33, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !394, file: !22, line: 2087, baseType: !542, size: 64, offset: 1536)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !394, file: !22, line: 2089, baseType: !359, size: 64, offset: 1600)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !326, file: !22, line: 1198, baseType: !559, size: 64, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !562)
!562 = !{!563, !567, !571, !575, !576, !577, !578, !579, !584, !589, !593}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !561, file: !27, line: 325, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!94, !477}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !561, file: !27, line: 326, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!477, !325, !94}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !561, file: !27, line: 327, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !477}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !561, file: !27, line: 328, baseType: !564, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !561, file: !27, line: 329, baseType: !564, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !561, file: !27, line: 330, baseType: !564, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !561, file: !27, line: 331, baseType: !422, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !561, file: !27, line: 334, baseType: !580, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!583, !126}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !561, file: !27, line: 335, baseType: !585, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!94, !126, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !561, file: !27, line: 337, baseType: !590, size: 64, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!94, !126, !583}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !561, file: !27, line: 339, baseType: !594, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!94, !325, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !326, file: !22, line: 1199, baseType: !599, size: 64, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !602)
!602 = !{!603, !614, !615, !619, !620, !621, !636, !659, !663, !664, !687}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !601, file: !27, line: 431, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!94, !325, !94, !94, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !610, line: 8, size: 128, elements: !611)
!610 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !609, file: !610, line: 9, baseType: !319, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !609, file: !610, line: 10, baseType: !164, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !601, file: !27, line: 432, baseType: !422, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !601, file: !27, line: 433, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!94, !325, !7}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !601, file: !27, line: 434, baseType: !616, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !601, file: !27, line: 435, baseType: !422, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !601, file: !27, line: 436, baseType: !622, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!94, !325, !94, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !626, file: !27, line: 418, baseType: !94, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !626, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !626, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !626, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !626, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !626, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !626, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !626, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !601, file: !27, line: 437, baseType: !637, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!94, !325, !509, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !641, file: !27, line: 346, baseType: !94, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !641, file: !27, line: 347, baseType: !204, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !641, file: !27, line: 348, baseType: !204, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !641, file: !27, line: 349, baseType: !204, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !641, file: !27, line: 350, baseType: !204, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !641, file: !27, line: 351, baseType: !204, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !641, file: !27, line: 352, baseType: !204, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !641, file: !27, line: 353, baseType: !495, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !641, file: !27, line: 355, baseType: !495, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !641, file: !27, line: 356, baseType: !94, size: 32, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !641, file: !27, line: 357, baseType: !94, size: 32, offset: 608)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !641, file: !27, line: 358, baseType: !204, size: 64, offset: 640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !641, file: !27, line: 359, baseType: !204, size: 64, offset: 704)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !641, file: !27, line: 360, baseType: !204, size: 64, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !641, file: !27, line: 361, baseType: !495, size: 64, offset: 832)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !641, file: !27, line: 362, baseType: !94, size: 32, offset: 896)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !601, file: !27, line: 438, baseType: !660, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!94, !325, !597, !640}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !601, file: !27, line: 440, baseType: !637, size: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !601, file: !27, line: 441, baseType: !665, size: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!94, !325, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !669, file: !27, line: 412, baseType: !7, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !669, file: !27, line: 413, baseType: !673, size: 1344, offset: 64)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 1344, elements: !385)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !686}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !27, line: 398, baseType: !7, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !674, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !674, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !674, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !674, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !674, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !674, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !674, file: !27, line: 406, baseType: !206, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !674, file: !27, line: 407, baseType: !685, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !93, line: 132, baseType: !204)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !674, file: !27, line: 408, baseType: !685, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !601, file: !27, line: 442, baseType: !616, size: 64, offset: 640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !326, file: !22, line: 1200, baseType: !689, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !22, line: 54, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !326, file: !22, line: 1201, baseType: !91, size: 64, offset: 640)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !326, file: !22, line: 1202, baseType: !91, size: 64, offset: 704)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !326, file: !22, line: 1203, baseType: !91, size: 64, offset: 768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !326, file: !22, line: 1204, baseType: !164, size: 64, offset: 832)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !326, file: !22, line: 1205, baseType: !697, size: 320, offset: 896)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !698, line: 48, size: 320, elements: !699)
!698 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!699 = !{!700, !701, !702, !703, !704}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !697, file: !698, line: 49, baseType: !489, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !697, file: !698, line: 55, baseType: !489, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !697, file: !698, line: 57, baseType: !500, size: 32, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !697, file: !698, line: 59, baseType: !498, size: 32, offset: 160)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !697, file: !698, line: 60, baseType: !109, size: 128, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !326, file: !22, line: 1206, baseType: !94, size: 32, offset: 1216)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !326, file: !22, line: 1207, baseType: !248, size: 32, offset: 1248)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !326, file: !22, line: 1209, baseType: !90, size: 64, offset: 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !326, file: !22, line: 1211, baseType: !709, size: 64, offset: 1344)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !22, line: 1211, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !326, file: !22, line: 1223, baseType: !714, size: 64, offset: 1408)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !181, line: 34, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !714, file: !181, line: 35, baseType: !184, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !326, file: !22, line: 1224, baseType: !109, size: 128, offset: 1472)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !326, file: !22, line: 1225, baseType: !719, size: 64, offset: 1600)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !22, line: 1225, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !326, file: !22, line: 1226, baseType: !722, size: 64, offset: 1664)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !22, line: 1226, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !326, file: !22, line: 1227, baseType: !725, size: 64, offset: 1728)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !22, line: 50, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !326, file: !22, line: 1228, baseType: !728, size: 64, offset: 1792)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !22, line: 1228, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !326, file: !22, line: 1229, baseType: !372, size: 128, offset: 1856)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !326, file: !22, line: 1230, baseType: !7, size: 32, offset: 1984)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !326, file: !22, line: 1231, baseType: !733, size: 2496, offset: 2048)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !734)
!734 = !{!735, !736, !737, !739, !771}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !27, line: 522, baseType: !7, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !733, file: !27, line: 523, baseType: !697, size: 320, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !733, file: !27, line: 524, baseType: !738, size: 192, offset: 384)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 192, elements: !385)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !733, file: !27, line: 525, baseType: !740, size: 1728, offset: 576)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 1728, elements: !385)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !742)
!742 = !{!743, !763, !764, !765, !766, !767, !768, !769, !770}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !741, file: !27, line: 223, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !746)
!746 = !{!747, !748, !761, !762}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !745, file: !27, line: 446, baseType: !94, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !745, file: !27, line: 447, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !751, file: !27, line: 313, baseType: !422, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !751, file: !27, line: 314, baseType: !422, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !751, file: !27, line: 315, baseType: !422, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !751, file: !27, line: 316, baseType: !422, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !751, file: !27, line: 317, baseType: !564, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !751, file: !27, line: 318, baseType: !564, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !751, file: !27, line: 319, baseType: !564, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !751, file: !27, line: 320, baseType: !594, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !745, file: !27, line: 448, baseType: !363, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !745, file: !27, line: 449, baseType: !744, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !741, file: !27, line: 224, baseType: !94, size: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !741, file: !27, line: 226, baseType: !109, size: 128, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !741, file: !27, line: 227, baseType: !91, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !741, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !741, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !741, file: !27, line: 230, baseType: !530, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !741, file: !27, line: 231, baseType: !530, size: 64, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !741, file: !27, line: 232, baseType: !90, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !733, file: !27, line: 526, baseType: !772, size: 192, offset: 2304)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 192, elements: !385)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !326, file: !22, line: 1233, baseType: !774, size: 2368, offset: 4544)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !22, line: 1184, size: 2368, elements: !775)
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !774, file: !22, line: 1185, baseType: !131, size: 16)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !774, file: !22, line: 1186, baseType: !131, size: 16, offset: 16)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !774, file: !22, line: 1187, baseType: !779, size: 2304, offset: 64)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 2304, elements: !385)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !781, line: 12, size: 768, elements: !782)
!781 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!782 = !{!783, !805, !807, !2798, !2799}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !780, file: !781, line: 13, baseType: !784, size: 384)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !785, line: 17, size: 384, elements: !786)
!785 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!786 = !{!787, !788, !789, !796}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !784, file: !785, line: 18, baseType: !94, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !784, file: !785, line: 19, baseType: !94, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !784, file: !785, line: 20, baseType: !790, size: 192, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !791, line: 41, baseType: !792)
!791 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !791, line: 37, size: 192, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !792, file: !791, line: 38, baseType: !228, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !792, file: !791, line: 39, baseType: !109, size: 128, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !784, file: !785, line: 22, baseType: !797, size: 128, align: 64, offset: 256)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !93, line: 232, size: 128, align: 64, elements: !798)
!798 = !{!799, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !797, file: !93, line: 233, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !797, file: !93, line: 234, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !800}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !780, file: !781, line: 14, baseType: !806, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !780, file: !781, line: 15, baseType: !808, size: 64, offset: 448)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !809, line: 16, size: 64, elements: !810)
!809 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !808, file: !809, line: 17, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !453, line: 746, size: 58368, elements: !814)
!814 = !{!815, !823, !824, !825, !831, !832, !833, !834, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !912, !923, !1018, !1022, !1025, !1056, !1057, !1058, !1059, !1070, !1072, !1073, !1074, !1075, !1076, !1077, !1088, !1089, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1106, !1107, !1114, !1115, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1942, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1957, !1958, !1959, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !2001, !2007, !2008, !2009, !2010, !2011, !2015, !2018, !2025, !2030, !2033, !2036, !2039, !2042, !2182, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2224, !2225, !2226, !2235, !2243, !2244, !2245, !2246, !2247, !2252, !2253, !2254, !2257, !2258, !2261, !2264, !2267, !2275, !2278, !2279, !2365, !2366, !2367, !2368, !2369, !2375, !2376, !2377, !2378, !2381, !2382, !2385, !2388, !2389, !2392, !2393, !2394, !2397, !2398, !2399, !2400, !2401, !2402, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2434, !2435, !2441, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2453, !2525, !2527, !2528, !2529, !2530, !2531, !2543, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2575, !2576, !2577}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !813, file: !453, line: 752, baseType: !816, size: 192)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !817, line: 56, size: 192, elements: !818)
!817 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!818 = !{!819, !820, !821, !822}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !817, line: 57, baseType: !91, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !816, file: !817, line: 58, baseType: !91, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !816, file: !817, line: 59, baseType: !198, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !816, file: !817, line: 61, baseType: !198, size: 32, offset: 160)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !813, file: !453, line: 754, baseType: !7, size: 32, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !813, file: !453, line: 767, baseType: !90, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !813, file: !453, line: 768, baseType: !826, size: 32, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !827, line: 113, baseType: !828)
!827 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !827, line: 111, size: 32, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !828, file: !827, line: 112, baseType: !248, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !453, line: 770, baseType: !7, size: 32, offset: 352)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !813, file: !453, line: 771, baseType: !7, size: 32, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !813, file: !453, line: 774, baseType: !94, size: 32, offset: 416)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !813, file: !453, line: 775, baseType: !835, size: 128, offset: 448)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !836, line: 58, size: 128, elements: !837)
!836 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!837 = !{!838, !844, !849, !850}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !835, file: !836, line: 59, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !840, line: 60, size: 64, elements: !841)
!840 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !839, file: !840, line: 61, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !836, line: 60, baseType: !845, size: 32, offset: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !836, line: 60, size: 32, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !845, file: !836, line: 61, baseType: !7, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !845, file: !836, line: 62, baseType: !248, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !835, file: !836, line: 65, baseType: !263, size: 16, offset: 96)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !835, file: !836, line: 65, baseType: !263, size: 16, offset: 112)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !813, file: !453, line: 776, baseType: !7, size: 32, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !813, file: !453, line: 777, baseType: !91, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !813, file: !453, line: 778, baseType: !812, size: 64, offset: 704)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !813, file: !453, line: 787, baseType: !94, size: 32, offset: 768)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !813, file: !453, line: 788, baseType: !94, size: 32, offset: 800)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !813, file: !453, line: 790, baseType: !94, size: 32, offset: 832)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !813, file: !453, line: 792, baseType: !94, size: 32, offset: 864)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !813, file: !453, line: 793, baseType: !94, size: 32, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !813, file: !453, line: 794, baseType: !94, size: 32, offset: 928)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !813, file: !453, line: 795, baseType: !7, size: 32, offset: 960)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !813, file: !453, line: 797, baseType: !862, size: 2048, offset: 1024)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !453, line: 551, size: 2048, elements: !863)
!863 = !{!864, !869, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !891, !894, !895, !896}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !862, file: !453, line: 553, baseType: !865, size: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !453, line: 411, size: 128, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !865, file: !453, line: 412, baseType: !91, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !865, file: !453, line: 413, baseType: !198, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !862, file: !453, line: 554, baseType: !870, size: 192, align: 64, offset: 128)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !871, line: 5, size: 192, align: 64, elements: !872)
!871 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!872 = !{!873, !874, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !870, file: !871, line: 6, baseType: !91, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !870, file: !871, line: 7, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !870, file: !871, line: 8, baseType: !875, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !862, file: !453, line: 555, baseType: !204, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !862, file: !453, line: 556, baseType: !204, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !862, file: !453, line: 558, baseType: !109, size: 128, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !862, file: !453, line: 559, baseType: !7, size: 32, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !862, file: !453, line: 561, baseType: !204, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !862, file: !453, line: 562, baseType: !204, size: 64, offset: 704)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !862, file: !453, line: 563, baseType: !204, size: 64, offset: 768)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !862, file: !453, line: 564, baseType: !204, size: 64, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !862, file: !453, line: 565, baseType: !495, size: 64, offset: 896)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !862, file: !453, line: 566, baseType: !204, size: 64, offset: 960)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !862, file: !453, line: 568, baseType: !204, size: 64, offset: 1024)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !862, file: !453, line: 571, baseType: !94, size: 32, offset: 1088)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !862, file: !453, line: 572, baseType: !890, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !862, file: !453, line: 574, baseType: !892, size: 64, offset: 1216)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !453, line: 49, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !862, file: !453, line: 576, baseType: !892, size: 64, offset: 1280)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !862, file: !453, line: 578, baseType: !91, size: 64, offset: 1344)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !862, file: !453, line: 588, baseType: !897, size: 512, align: 512, offset: 1536)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !453, line: 497, size: 512, align: 512, elements: !898)
!898 = !{!899, !900, !901, !902, !903, !904, !905, !906, !907}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !897, file: !453, line: 498, baseType: !204, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !897, file: !453, line: 499, baseType: !204, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !897, file: !453, line: 500, baseType: !204, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !897, file: !453, line: 501, baseType: !198, size: 32, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !897, file: !453, line: 502, baseType: !198, size: 32, offset: 224)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !897, file: !453, line: 503, baseType: !91, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !897, file: !453, line: 504, baseType: !91, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !897, file: !453, line: 505, baseType: !91, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !897, file: !453, line: 506, baseType: !908, size: 64, align: 64, offset: 448)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !453, line: 445, size: 64, align: 64, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !908, file: !453, line: 446, baseType: !7, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !908, file: !453, line: 447, baseType: !7, size: 32, offset: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !813, file: !453, line: 798, baseType: !913, size: 384, offset: 3072)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !453, line: 592, size: 384, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !921}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !913, file: !453, line: 593, baseType: !109, size: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !913, file: !453, line: 594, baseType: !91, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !913, file: !453, line: 595, baseType: !91, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !913, file: !453, line: 596, baseType: !7, size: 32, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !913, file: !453, line: 597, baseType: !131, size: 16, offset: 288)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !913, file: !453, line: 598, baseType: !131, size: 16, offset: 304)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !913, file: !453, line: 600, baseType: !922, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !813, file: !453, line: 799, baseType: !924, size: 1792, offset: 3456)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !453, line: 610, size: 1792, elements: !925)
!925 = !{!926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !1015, !1016}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !924, file: !453, line: 611, baseType: !870, size: 192, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !924, file: !453, line: 618, baseType: !204, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !924, file: !453, line: 619, baseType: !204, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !924, file: !453, line: 620, baseType: !204, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !924, file: !453, line: 621, baseType: !204, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !924, file: !453, line: 622, baseType: !204, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !924, file: !453, line: 629, baseType: !495, size: 64, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !924, file: !453, line: 630, baseType: !204, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !453, line: 631, baseType: !7, size: 32, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !924, file: !453, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !924, file: !453, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !924, file: !453, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !924, file: !453, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !924, file: !453, line: 662, baseType: !940, size: 512, offset: 704)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !941)
!941 = !{!942, !950, !951, !956, !1011, !1012, !1013, !1014}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !940, file: !33, line: 119, baseType: !943, size: 256)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !944, line: 9, size: 256, elements: !945)
!944 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !943, file: !944, line: 10, baseType: !870, size: 192, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !943, file: !944, line: 11, baseType: !948, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !949, line: 29, baseType: !495)
!949 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !940, file: !33, line: 120, baseType: !948, size: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !940, file: !33, line: 121, baseType: !952, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!32, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !940, file: !33, line: 122, baseType: !957, size: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !959)
!959 = !{!960, !985, !986, !989, !994, !995, !1006, !1010}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !958, file: !33, line: 160, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !963)
!963 = !{!964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !962, file: !33, line: 216, baseType: !498, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !962, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !962, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !962, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !962, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !962, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !962, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !962, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !962, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !962, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !962, file: !33, line: 227, baseType: !131, size: 16, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !962, file: !33, line: 228, baseType: !131, size: 16, offset: 208)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !962, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !962, file: !33, line: 235, baseType: !948, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !962, file: !33, line: 236, baseType: !955, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !962, file: !33, line: 237, baseType: !948, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !962, file: !33, line: 238, baseType: !955, size: 64, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !962, file: !33, line: 239, baseType: !982, size: 4096, align: 512, offset: 512)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !958, size: 4096, align: 512, elements: !983)
!983 = !{!984}
!984 = !DISubrange(count: 8)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !958, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !958, file: !33, line: 162, baseType: !987, size: 32, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !93, line: 32, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !141, line: 96, baseType: !94)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !958, file: !33, line: 163, baseType: !990, size: 32, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !171, line: 274, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !171, line: 274, size: 32, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !991, file: !171, line: 274, baseType: !175, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !958, file: !33, line: 164, baseType: !955, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !958, file: !33, line: 165, baseType: !996, size: 128, offset: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !944, line: 14, size: 128, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !996, file: !944, line: 15, baseType: !999, size: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !871, line: 26, size: 128, elements: !1000)
!1000 = !{!1001, !1005}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !999, file: !871, line: 27, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !871, line: 12, size: 64, elements: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1002, file: !871, line: 13, baseType: !875, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !999, file: !871, line: 28, baseType: !875, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !958, file: !33, line: 166, baseType: !1007, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!948}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !958, file: !33, line: 167, baseType: !948, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !940, file: !33, line: 123, baseType: !256, size: 8, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !940, file: !33, line: 124, baseType: !256, size: 8, offset: 456)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !940, file: !33, line: 125, baseType: !256, size: 8, offset: 464)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !940, file: !33, line: 126, baseType: !256, size: 8, offset: 472)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !924, file: !453, line: 671, baseType: !940, size: 512, offset: 1216)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !924, file: !453, line: 679, baseType: !1017, size: 64, offset: 1728)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !813, file: !453, line: 800, baseType: !1019, size: 64, offset: 5248)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !453, line: 800, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !813, file: !453, line: 809, baseType: !1023, size: 64, offset: 5312)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !453, line: 70, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !813, file: !453, line: 825, baseType: !1026, size: 2048, align: 512, offset: 5632)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !453, line: 509, size: 2048, align: 512, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1026, file: !453, line: 511, baseType: !204, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1026, file: !453, line: 512, baseType: !204, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1026, file: !453, line: 513, baseType: !204, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1026, file: !453, line: 514, baseType: !204, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1026, file: !453, line: 515, baseType: !204, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1026, file: !453, line: 516, baseType: !204, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1026, file: !453, line: 518, baseType: !204, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1026, file: !453, line: 519, baseType: !204, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1026, file: !453, line: 520, baseType: !495, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1026, file: !453, line: 522, baseType: !204, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1026, file: !453, line: 523, baseType: !204, size: 64, offset: 640)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1026, file: !453, line: 524, baseType: !495, size: 64, offset: 704)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1026, file: !453, line: 526, baseType: !495, size: 64, offset: 768)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1026, file: !453, line: 527, baseType: !204, size: 64, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1026, file: !453, line: 529, baseType: !204, size: 64, offset: 896)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1026, file: !453, line: 530, baseType: !204, size: 64, offset: 960)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1026, file: !453, line: 531, baseType: !204, size: 64, offset: 1024)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1026, file: !453, line: 532, baseType: !204, size: 64, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1026, file: !453, line: 533, baseType: !204, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1026, file: !453, line: 535, baseType: !204, size: 64, offset: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1026, file: !453, line: 536, baseType: !204, size: 64, offset: 1280)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1026, file: !453, line: 537, baseType: !204, size: 64, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1026, file: !453, line: 538, baseType: !204, size: 64, offset: 1408)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1026, file: !453, line: 539, baseType: !204, size: 64, offset: 1472)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1026, file: !453, line: 540, baseType: !204, size: 64, offset: 1536)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1026, file: !453, line: 541, baseType: !204, size: 64, offset: 1600)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1026, file: !453, line: 542, baseType: !204, size: 64, offset: 1664)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1026, file: !453, line: 543, baseType: !204, size: 64, offset: 1728)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !813, file: !453, line: 833, baseType: !7, size: 32, offset: 7680)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !813, file: !453, line: 836, baseType: !7, size: 32, offset: 7712)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !813, file: !453, line: 837, baseType: !94, size: 32, offset: 7744)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !813, file: !453, line: 838, baseType: !1060, size: 64, offset: 7808)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1063, line: 19, baseType: !1064)
!1063 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1063, line: 19, size: 64, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1064, file: !1063, line: 19, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !1068)
!1068 = !{!1069}
!1069 = !DISubrange(count: 1)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !813, file: !453, line: 839, baseType: !1071, size: 64, offset: 7872)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !813, file: !453, line: 840, baseType: !1062, size: 64, offset: 7936)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !813, file: !453, line: 841, baseType: !90, size: 64, offset: 8000)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !813, file: !453, line: 843, baseType: !131, size: 16, offset: 8064)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !813, file: !453, line: 845, baseType: !131, size: 16, offset: 8080)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !813, file: !453, line: 848, baseType: !94, size: 32, offset: 8096)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !813, file: !453, line: 849, baseType: !1078, size: 32, offset: 8128)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !453, line: 718, size: 32, elements: !1079)
!1079 = !{!1080, !1087}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1078, file: !453, line: 724, baseType: !1081, size: 32)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !453, line: 719, size: 32, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1081, file: !453, line: 720, baseType: !256, size: 8)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1081, file: !453, line: 721, baseType: !256, size: 8, offset: 8)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1081, file: !453, line: 722, baseType: !256, size: 8, offset: 16)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1081, file: !453, line: 723, baseType: !256, size: 8, offset: 24)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1078, file: !453, line: 725, baseType: !198, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !813, file: !453, line: 850, baseType: !109, size: 128, offset: 8192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !813, file: !453, line: 851, baseType: !1090, size: 64, offset: 8320)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !453, line: 60, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !813, file: !453, line: 855, baseType: !91, size: 64, offset: 8384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !813, file: !453, line: 856, baseType: !256, size: 8, offset: 8448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !813, file: !453, line: 857, baseType: !256, size: 8, offset: 8456)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !813, file: !453, line: 858, baseType: !94, size: 32, offset: 8480)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !813, file: !453, line: 859, baseType: !109, size: 128, offset: 8512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !813, file: !453, line: 860, baseType: !94, size: 32, offset: 8640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !813, file: !453, line: 861, baseType: !109, size: 128, offset: 8704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !813, file: !453, line: 873, baseType: !1100, size: 256, offset: 8832)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !453, line: 376, size: 256, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1100, file: !453, line: 381, baseType: !91, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1100, file: !453, line: 384, baseType: !206, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1100, file: !453, line: 389, baseType: !206, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1100, file: !453, line: 392, baseType: !206, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !813, file: !453, line: 875, baseType: !109, size: 128, offset: 9088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !813, file: !453, line: 877, baseType: !1108, size: 320, offset: 9216)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1109, line: 86, size: 320, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1110 = !{!1111, !1112, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1108, file: !1109, line: 87, baseType: !94, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1108, file: !1109, line: 88, baseType: !109, size: 128, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1108, file: !1109, line: 89, baseType: !109, size: 128, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !813, file: !453, line: 878, baseType: !870, size: 192, align: 64, offset: 9536)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !813, file: !453, line: 881, baseType: !1116, size: 64, offset: 9728)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !46, line: 733, size: 10240, elements: !1118)
!1118 = !{!1119, !1861}
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !46, line: 734, baseType: !1120, size: 10240)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1117, file: !46, line: 734, size: 10240, elements: !1121)
!1121 = !{!1122, !1126, !1139, !1748, !1749, !1750, !1751, !1752, !1753, !1760, !1761, !1762, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1801, !1803, !1806, !1830, !1831, !1832, !1835, !1836, !1837, !1840, !1841, !1842, !1848, !1849}
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !46, line: 739, baseType: !1123, size: 512, align: 512)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !46, line: 739, size: 512, align: 512, elements: !1124)
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1123, file: !46, line: 747, baseType: !248, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1120, file: !46, line: 750, baseType: !1127, size: 128, offset: 512)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1128, line: 218, size: 128, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1129 = !{!1130, !1137, !1138}
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !1128, line: 219, baseType: !1131, size: 32)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !1128, line: 219, size: 32, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1131, file: !1128, line: 220, baseType: !228, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1131, file: !1128, line: 221, baseType: !1135)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1128, line: 197, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1128, line: 197, elements: !380)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1127, file: !1128, line: 223, baseType: !7, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1127, file: !1128, line: 224, baseType: !90, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1120, file: !46, line: 752, baseType: !1140, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!91, !1143, !91, !91, !91, !91}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !22, line: 994, size: 1856, align: 64, elements: !1145)
!1145 = !{!1146, !1152, !1153, !1155, !1156, !1157, !1158, !1159, !1211, !1406, !1415, !1416, !1417, !1738, !1739, !1740, !1741, !1743, !1744, !1747}
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !22, line: 995, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !22, line: 995, size: 128, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1147, file: !22, line: 996, baseType: !839, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1147, file: !22, line: 997, baseType: !797, size: 128, align: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1147, file: !22, line: 998, baseType: !7, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1144, file: !22, line: 1005, baseType: !228, size: 32, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1144, file: !22, line: 1006, baseType: !1154, size: 32, offset: 160)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !93, line: 156, baseType: !7)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1144, file: !22, line: 1007, baseType: !489, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1144, file: !22, line: 1008, baseType: !485, size: 256, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1144, file: !22, line: 1009, baseType: !335, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1144, file: !22, line: 1010, baseType: !7, size: 32, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1144, file: !22, line: 1011, baseType: !1160, size: 256, offset: 640)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !22, line: 948, size: 256, elements: !1161)
!1161 = !{!1162, !1183, !1207, !1208, !1209, !1210}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1160, file: !22, line: 949, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1164, line: 34, baseType: !1165)
!1164 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1164, line: 25, size: 64, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1165, file: !1164, line: 26, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1169, line: 27, baseType: !1170)
!1169 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1169, line: 13, size: 64, elements: !1171)
!1171 = !{!1172, !1182}
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1169, line: 14, baseType: !1173, size: 32)
!1173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1170, file: !1169, line: 14, size: 32, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1173, file: !1169, line: 15, baseType: !248, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1169, line: 16, baseType: !1177, size: 32)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1173, file: !1169, line: 16, size: 32, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1177, file: !1169, line: 18, baseType: !256, size: 8)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1177, file: !1169, line: 19, baseType: !1181, size: 24, offset: 8)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 24, elements: !385)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1170, file: !1169, line: 26, baseType: !240, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1160, file: !22, line: 950, baseType: !1184, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !38, line: 59, size: 768, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1194, !1195, !1196, !1197}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1185, file: !38, line: 61, baseType: !826, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1185, file: !38, line: 62, baseType: !7, size: 32, offset: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1185, file: !38, line: 63, baseType: !228, size: 32, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1185, file: !38, line: 65, baseType: !1191, size: 256, offset: 128)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 4)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1185, file: !38, line: 66, baseType: !368, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1185, file: !38, line: 68, baseType: !790, size: 192, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1185, file: !38, line: 69, baseType: !797, size: 128, align: 64, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1185, file: !38, line: 70, baseType: !1198, offset: 768)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, elements: !1205)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !38, line: 54, size: 128, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1199, file: !38, line: 55, baseType: !94, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1199, file: !38, line: 56, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !38, line: 56, flags: DIFlagFwdDecl)
!1205 = !{!1206}
!1206 = !DISubrange(count: -1)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1160, file: !22, line: 951, baseType: !37, size: 32, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1160, file: !22, line: 952, baseType: !134, size: 32, offset: 160)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1160, file: !22, line: 952, baseType: !134, size: 32, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1160, file: !22, line: 953, baseType: !94, size: 32, offset: 224)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1144, file: !22, line: 1012, baseType: !1212, size: 64, offset: 896)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1215, line: 110, size: 1472, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1233, !1234, !1235, !1236, !1237, !1238, !1351, !1352, !1353, !1354, !1355, !1386, !1389, !1393, !1401}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1214, file: !1215, line: 111, baseType: !489, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1214, file: !1215, line: 112, baseType: !134, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1214, file: !1215, line: 113, baseType: !144, size: 32, offset: 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1214, file: !1215, line: 114, baseType: !134, size: 32, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1214, file: !1215, line: 115, baseType: !144, size: 32, offset: 160)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1214, file: !1215, line: 116, baseType: !134, size: 32, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1214, file: !1215, line: 117, baseType: !144, size: 32, offset: 224)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1214, file: !1215, line: 118, baseType: !134, size: 32, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1214, file: !1215, line: 119, baseType: !144, size: 32, offset: 288)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1214, file: !1215, line: 120, baseType: !7, size: 32, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1214, file: !1215, line: 121, baseType: !1228, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1229, line: 24, baseType: !1230)
!1229 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1229, line: 24, size: 64, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1230, file: !1229, line: 24, baseType: !204, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1214, file: !1215, line: 122, baseType: !1228, size: 64, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1214, file: !1215, line: 123, baseType: !1228, size: 64, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1214, file: !1215, line: 124, baseType: !1228, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1214, file: !1215, line: 125, baseType: !1228, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1214, file: !1215, line: 127, baseType: !210, size: 8, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1214, file: !1215, line: 129, baseType: !1239, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1241, line: 195, size: 1728, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1242 = !{!1243, !1244, !1249, !1254, !1255, !1258, !1259, !1264, !1265, !1266, !1267, !1270, !1271, !1272, !1274, !1275, !1315, !1336}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1240, file: !1241, line: 196, baseType: !826, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1240, file: !1241, line: 197, baseType: !1245, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1241, line: 28, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !93, line: 104, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !199, line: 20, baseType: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !201, line: 26, baseType: !94)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !1241, line: 198, baseType: !1250, size: 192, offset: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !1241, line: 198, size: 192, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1250, file: !1241, line: 199, baseType: !109, size: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1250, file: !1241, line: 200, baseType: !870, size: 192, align: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1240, file: !1241, line: 205, baseType: !697, size: 320, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1240, file: !1241, line: 206, baseType: !1256, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1241, line: 206, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1240, file: !1241, line: 207, baseType: !90, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !1241, line: 208, baseType: !1260, size: 64, offset: 704)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !1241, line: 208, size: 64, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1260, file: !1241, line: 209, baseType: !538, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1260, file: !1241, line: 210, baseType: !538, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1240, file: !1241, line: 212, baseType: !538, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1240, file: !1241, line: 213, baseType: !134, size: 32, offset: 832)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1240, file: !1241, line: 214, baseType: !144, size: 32, offset: 864)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1240, file: !1241, line: 215, baseType: !1268, size: 32, offset: 896)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1241, line: 31, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !93, line: 110, baseType: !198)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1240, file: !1241, line: 216, baseType: !131, size: 16, offset: 928)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1240, file: !1241, line: 217, baseType: !131, size: 16, offset: 944)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1240, file: !1241, line: 221, baseType: !1273, size: 16, offset: 960)
!1273 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1240, file: !1241, line: 228, baseType: !91, size: 64, offset: 1024)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !1241, line: 245, baseType: !1276, size: 320, offset: 1088)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !1241, line: 245, size: 320, elements: !1277)
!1277 = !{!1278, !1307}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1276, file: !1241, line: 246, baseType: !1279, size: 320)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1241, line: 114, size: 320, elements: !1280)
!1280 = !{!1281, !1282, !1294, !1297, !1306}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1279, file: !1241, line: 116, baseType: !91, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !1241, line: 117, baseType: !1283, size: 64, offset: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1279, file: !1241, line: 117, size: 64, elements: !1284)
!1284 = !{!1285, !1293}
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !1241, line: 118, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1283, file: !1241, line: 118, size: 64, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1286, file: !1241, line: 120, baseType: !263, size: 16)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1286, file: !1241, line: 121, baseType: !1290, size: 48, offset: 16)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 48, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 6)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1283, file: !1241, line: 127, baseType: !91, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1279, file: !1241, line: 129, baseType: !1295, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1241, line: 102, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1279, file: !1241, line: 130, baseType: !1298, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1241, line: 108, size: 192, elements: !1300)
!1300 = !{!1301, !1302, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1299, file: !1241, line: 109, baseType: !797, size: 128, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1299, file: !1241, line: 110, baseType: !826, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1299, file: !1241, line: 111, baseType: !1304, size: 8, offset: 160)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !93, line: 35, baseType: !1305)
!1305 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1279, file: !1241, line: 131, baseType: !288, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !1241, line: 247, baseType: !1308, size: 320)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1276, file: !1241, line: 247, size: 320, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1308, file: !1241, line: 248, baseType: !91, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1308, file: !1241, line: 249, baseType: !91, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1308, file: !1241, line: 250, baseType: !1295, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1308, file: !1241, line: 251, baseType: !1298, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1308, file: !1241, line: 252, baseType: !314, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !1241, line: 260, baseType: !1316, size: 256, offset: 1408)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !1241, line: 260, size: 256, elements: !1317)
!1317 = !{!1318, !1324}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1316, file: !1241, line: 261, baseType: !1319, size: 256)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1241, line: 134, size: 256, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1319, file: !1241, line: 135, baseType: !90, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1319, file: !1241, line: 136, baseType: !1323, size: 256)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !1192)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1241, line: 262, baseType: !1325, size: 256)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !1241, line: 262, size: 256, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1325, file: !1241, line: 264, baseType: !109, size: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1325, file: !1241, line: 265, baseType: !1329, size: 128, offset: 128)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1330, line: 22, size: 128, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1331 = !{!1332, !1335}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1329, file: !1330, line: 23, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1330, line: 23, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1329, file: !1330, line: 24, baseType: !91, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1240, file: !1241, line: 280, baseType: !1337, size: 64, offset: 1664)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1241, line: 176, size: 192, elements: !1339)
!1339 = !{!1340, !1349, !1350}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1338, file: !1241, line: 177, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1241, line: 171, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!94, !1239, !1345, !1347, !1239}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1338, file: !1241, line: 178, baseType: !1239, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1338, file: !1241, line: 179, baseType: !1295, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1214, file: !1215, line: 130, baseType: !1239, size: 64, offset: 832)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1214, file: !1215, line: 131, baseType: !1239, size: 64, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1214, file: !1215, line: 132, baseType: !1239, size: 64, offset: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1214, file: !1215, line: 135, baseType: !90, size: 64, offset: 1024)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1214, file: !1215, line: 137, baseType: !1356, size: 64, offset: 1088)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1358, line: 14, size: 1088, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1359 = !{!1360, !1361, !1370, !1371, !1372, !1373, !1374, !1375}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1357, file: !1358, line: 15, baseType: !826, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1357, file: !1358, line: 17, baseType: !1362, size: 320, offset: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1363, line: 22, size: 320, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1364 = !{!1365, !1366, !1367, !1368}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1362, file: !1363, line: 23, baseType: !498, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1362, file: !1363, line: 24, baseType: !495, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1362, file: !1363, line: 26, baseType: !109, size: 128, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1362, file: !1363, line: 28, baseType: !1369, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1357, file: !1358, line: 19, baseType: !91, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1357, file: !1358, line: 20, baseType: !489, size: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1357, file: !1358, line: 23, baseType: !372, size: 128, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1357, file: !1358, line: 24, baseType: !134, size: 32, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1357, file: !1358, line: 29, baseType: !489, size: 64, offset: 704)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1357, file: !1358, line: 36, baseType: !1376, size: 320, offset: 768)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1377, line: 15, size: 320, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1376, file: !1377, line: 16, baseType: !498, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1376, file: !1377, line: 18, baseType: !94, size: 32, offset: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1376, file: !1377, line: 19, baseType: !94, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1376, file: !1377, line: 20, baseType: !94, size: 32, offset: 96)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1376, file: !1377, line: 21, baseType: !94, size: 32, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1376, file: !1377, line: 22, baseType: !91, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1376, file: !1377, line: 23, baseType: !91, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1214, file: !1215, line: 138, baseType: !1387, size: 64, offset: 1152)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !46, line: 901, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1214, file: !1215, line: 139, baseType: !1390, size: 64, offset: 1216)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1392, line: 16, flags: DIFlagFwdDecl)
!1392 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1214, file: !1215, line: 140, baseType: !1394, size: 64, offset: 1280)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1215, line: 25, size: 64, elements: !1396)
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1395, file: !1215, line: 26, baseType: !248, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1395, file: !1215, line: 27, baseType: !94, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1395, file: !1215, line: 28, baseType: !1400, offset: 64)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, elements: !1205)
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1215, line: 142, baseType: !1402, size: 128, offset: 1344)
!1402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1215, line: 142, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1402, file: !1215, line: 143, baseType: !94, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1402, file: !1215, line: 144, baseType: !797, size: 128, align: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1144, file: !22, line: 1013, baseType: !1407, size: 256, offset: 960)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !22, line: 970, size: 256, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1407, file: !22, line: 971, baseType: !91, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1407, file: !22, line: 972, baseType: !7, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1407, file: !22, line: 973, baseType: !7, size: 32, offset: 96)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1407, file: !22, line: 974, baseType: !7, size: 32, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1407, file: !22, line: 975, baseType: !7, size: 32, offset: 160)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1407, file: !22, line: 976, baseType: !335, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1144, file: !22, line: 1014, baseType: !609, size: 128, offset: 1216)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1144, file: !22, line: 1015, baseType: !126, size: 64, offset: 1344)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1144, file: !22, line: 1016, baseType: !1418, size: 64, offset: 1408)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !22, line: 1914, size: 2112, elements: !1421)
!1421 = !{!1422, !1423, !1427, !1432, !1436, !1464, !1465, !1471, !1484, !1492, !1496, !1497, !1660, !1661, !1665, !1670, !1671, !1675, !1679, !1685, !1686, !1690, !1691, !1697, !1701, !1705, !1711, !1715, !1719, !1723, !1727, !1728, !1734}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1420, file: !22, line: 1915, baseType: !363, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1420, file: !22, line: 1916, baseType: !1424, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!335, !1143, !335, !94}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1420, file: !22, line: 1917, baseType: !1428, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!461, !1143, !314, !465, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1420, file: !22, line: 1918, baseType: !1433, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!461, !1143, !288, !465, !1431}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1420, file: !22, line: 1919, baseType: !1437, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!461, !1440, !1462}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !22, line: 373, size: 384, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1449, !1450, !1451, !1452}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1441, file: !22, line: 374, baseType: !1143, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1441, file: !22, line: 375, baseType: !335, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1441, file: !22, line: 376, baseType: !1446, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1440, !464}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1441, file: !22, line: 377, baseType: !90, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1441, file: !22, line: 378, baseType: !94, size: 32, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1441, file: !22, line: 379, baseType: !263, size: 16, offset: 288)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !22, line: 380, baseType: !1453, size: 64, offset: 320)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !22, line: 380, size: 64, elements: !1454)
!1454 = !{!1455, !1458}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1453, file: !22, line: 386, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !22, line: 386, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1453, file: !22, line: 395, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!461, !90}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !22, line: 69, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1420, file: !22, line: 1920, baseType: !1437, size: 64, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1420, file: !22, line: 1921, baseType: !1466, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!94, !1440, !1469, !7}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !22, line: 53, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1420, file: !22, line: 1923, baseType: !1472, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!94, !1143, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !22, line: 1858, size: 128, elements: !1477)
!1477 = !{!1478, !1483}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1476, file: !22, line: 1859, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !22, line: 1855, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1304, !1475, !288, !94, !335, !204, !7}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1476, file: !22, line: 1860, baseType: !335, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1420, file: !22, line: 1924, baseType: !1485, size: 64, offset: 512)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1488, !1143, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1489, line: 59, baseType: !7)
!1489 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !22, line: 61, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1420, file: !22, line: 1925, baseType: !1493, size: 64, offset: 576)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!464, !1143, !7, !91}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1420, file: !22, line: 1926, baseType: !1493, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1420, file: !22, line: 1927, baseType: !1498, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!94, !1143, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !46, line: 625, size: 1344, elements: !1503)
!1503 = !{!1504, !1513, !1514, !1522, !1529, !1530, !1535, !1536, !1541, !1542, !1545, !1653, !1654, !1655, !1656, !1657, !1658}
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1502, file: !46, line: 628, baseType: !1505, size: 128)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1502, file: !46, line: 628, size: 128, elements: !1506)
!1506 = !{!1507, !1512}
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1505, file: !46, line: 629, baseType: !1508, size: 128)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1505, file: !46, line: 629, size: 128, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1508, file: !46, line: 631, baseType: !91, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1508, file: !46, line: 632, baseType: !91, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1505, file: !46, line: 635, baseType: !797, size: 128, align: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1502, file: !46, line: 639, baseType: !1116, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1502, file: !46, line: 640, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1516, line: 297, baseType: !1517)
!1516 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1516, line: 297, size: 64, elements: !1518)
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1517, file: !1516, line: 297, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1521, line: 19, baseType: !91)
!1521 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1502, file: !46, line: 646, baseType: !1523, size: 64, offset: 256)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1502, file: !46, line: 646, size: 64, elements: !1524)
!1524 = !{!1525, !1528}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1523, file: !46, line: 647, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !46, line: 542, baseType: !91)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1523, file: !46, line: 648, baseType: !1527, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1502, file: !46, line: 666, baseType: !94, size: 32, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1502, file: !46, line: 667, baseType: !1531, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !46, line: 579, size: 320, elements: !1533)
!1533 = !{!1534}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !46, line: 580, baseType: !697, size: 320)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1502, file: !46, line: 670, baseType: !1304, size: 8, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1502, file: !46, line: 681, baseType: !1537, size: 256, offset: 512)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1502, file: !46, line: 678, size: 256, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1537, file: !46, line: 679, baseType: !870, size: 192, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1537, file: !46, line: 680, baseType: !91, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1502, file: !46, line: 689, baseType: !109, size: 128, offset: 768)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1502, file: !46, line: 691, baseType: !1543, size: 64, offset: 896)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !46, line: 691, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1502, file: !46, line: 694, baseType: !1546, size: 64, offset: 960)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1549, line: 563, size: 1024, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1550 = !{!1551, !1555, !1556, !1560, !1564, !1568, !1617, !1621, !1625, !1629, !1630, !1631, !1635, !1639, !1645, !1649}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1548, file: !1549, line: 564, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !1501}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1548, file: !1549, line: 569, baseType: !1552, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1548, file: !1549, line: 571, baseType: !1557, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!94, !1501, !91}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1548, file: !1549, line: 572, baseType: !1561, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!94, !1501}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1548, file: !1549, line: 578, baseType: !1565, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!94, !1501, !91, !91, !91}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1548, file: !1549, line: 580, baseType: !1569, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !46, line: 1184, baseType: !7)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1549, line: 512, size: 896, elements: !1575)
!1575 = !{!1576, !1584, !1585, !1592, !1599, !1609, !1610, !1611, !1613, !1615}
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1549, line: 513, baseType: !1577, size: 320)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1574, file: !1549, line: 513, size: 320, elements: !1578)
!1578 = !{!1579, !1580, !1581, !1582, !1583}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1577, file: !1549, line: 514, baseType: !1501, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1577, file: !1549, line: 515, baseType: !92, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1577, file: !1549, line: 516, baseType: !91, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1577, file: !1549, line: 517, baseType: !91, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1577, file: !1549, line: 518, baseType: !91, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1574, file: !1549, line: 520, baseType: !45, size: 32, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1574, file: !1549, line: 522, baseType: !1586, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1521, line: 22, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1521, line: 22, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1588, file: !1521, line: 22, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1521, line: 15, baseType: !91)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1574, file: !1549, line: 524, baseType: !1593, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1516, line: 372, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1516, line: 372, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1595, file: !1516, line: 372, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1521, line: 16, baseType: !91)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1549, line: 527, baseType: !1600, size: 64, offset: 512)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !1549, line: 527, size: 64, elements: !1601)
!1601 = !{!1602, !1608}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1600, file: !1549, line: 528, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1521, line: 21, baseType: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1521, line: 21, size: 64, elements: !1605)
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1604, file: !1521, line: 21, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1521, line: 14, baseType: !91)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1600, file: !1549, line: 529, baseType: !1587, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1574, file: !1549, line: 534, baseType: !95, size: 64, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1574, file: !1549, line: 535, baseType: !95, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1574, file: !1549, line: 541, baseType: !1612, size: 64, offset: 704)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1574, file: !1549, line: 545, baseType: !1614, size: 64, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1574, file: !1549, line: 549, baseType: !1616, size: 64, offset: 832)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1516, line: 520, baseType: !95)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1548, file: !1549, line: 581, baseType: !1618, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!1572, !1573, !7}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1548, file: !1549, line: 582, baseType: !1622, size: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!1572, !1573, !91, !91}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1548, file: !1549, line: 584, baseType: !1626, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!91, !1501}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1548, file: !1549, line: 588, baseType: !1569, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1548, file: !1549, line: 591, baseType: !1569, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1548, file: !1549, line: 597, baseType: !1632, size: 64, offset: 704)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!94, !1501, !91, !90, !94, !94}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1548, file: !1549, line: 603, baseType: !1636, size: 64, offset: 768)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!288, !1501}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1548, file: !1549, line: 613, baseType: !1640, size: 64, offset: 832)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!94, !1501, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !46, line: 717, flags: DIFlagFwdDecl)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1548, file: !1549, line: 625, baseType: !1646, size: 64, offset: 896)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!1643, !1501, !91}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1548, file: !1549, line: 633, baseType: !1650, size: 64, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!95, !1501, !91}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1502, file: !46, line: 697, baseType: !91, size: 64, offset: 1024)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1502, file: !46, line: 699, baseType: !1143, size: 64, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1502, file: !46, line: 700, baseType: !90, size: 64, offset: 1152)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1502, file: !46, line: 711, baseType: !489, size: 64, offset: 1216)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1502, file: !46, line: 717, baseType: !1643, size: 64, offset: 1280)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1502, file: !46, line: 722, baseType: !1659, offset: 1344)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !46, line: 570, elements: !380)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1420, file: !22, line: 1928, baseType: !91, size: 64, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1420, file: !22, line: 1929, baseType: !1662, size: 64, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!94, !126, !1143}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1420, file: !22, line: 1930, baseType: !1666, size: 64, offset: 896)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!94, !1143, !1669}
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !22, line: 1061, baseType: !90)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1420, file: !22, line: 1931, baseType: !1662, size: 64, offset: 960)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1420, file: !22, line: 1932, baseType: !1672, size: 64, offset: 1024)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!94, !1143, !335, !335, !94}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1420, file: !22, line: 1933, baseType: !1676, size: 64, offset: 1088)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!94, !94, !1143, !94}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1420, file: !22, line: 1934, baseType: !1680, size: 64, offset: 1152)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!94, !1143, !94, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !22, line: 1063, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1420, file: !22, line: 1935, baseType: !1140, size: 64, offset: 1216)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1420, file: !22, line: 1936, baseType: !1687, size: 64, offset: 1280)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!94, !94}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1420, file: !22, line: 1937, baseType: !1680, size: 64, offset: 1344)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1420, file: !22, line: 1938, baseType: !1692, size: 64, offset: 1408)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!461, !1695, !1143, !1431, !465, !7}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !453, line: 59, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1420, file: !22, line: 1939, baseType: !1698, size: 64, offset: 1472)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!461, !1143, !1431, !1695, !465, !7}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1420, file: !22, line: 1940, baseType: !1702, size: 64, offset: 1536)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1143}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1420, file: !22, line: 1941, baseType: !1706, size: 64, offset: 1600)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!94, !1143, !94, !1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1420, file: !22, line: 1942, baseType: !1712, size: 64, offset: 1664)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!464, !1143, !94, !335, !335}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1420, file: !22, line: 1944, baseType: !1716, size: 64, offset: 1728)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !451, !1143}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1420, file: !22, line: 1948, baseType: !1720, size: 64, offset: 1792)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!461, !1143, !335, !1143, !335, !465, !7}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1420, file: !22, line: 1950, baseType: !1724, size: 64, offset: 1856)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!335, !1143, !335, !1143, !335, !335, !7}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1420, file: !22, line: 1953, baseType: !1672, size: 64, offset: 1920)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1420, file: !22, line: 1954, baseType: !1729, size: 64, offset: 1984)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!94, !1732, !7}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !22, line: 1911, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1420, file: !22, line: 1955, baseType: !1735, size: 64, offset: 2048)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!94, !1732, !1469, !7}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1144, file: !22, line: 1018, baseType: !204, size: 64, offset: 1472)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1144, file: !22, line: 1020, baseType: !90, size: 64, offset: 1536)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1144, file: !22, line: 1023, baseType: !90, size: 64, offset: 1600)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1144, file: !22, line: 1027, baseType: !1742, size: 64, offset: 1664)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1144, file: !22, line: 1029, baseType: !122, size: 64, offset: 1728)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1144, file: !22, line: 1030, baseType: !1745, size: 32, offset: 1792)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1746, line: 8, baseType: !198)
!1746 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1144, file: !22, line: 1031, baseType: !1745, size: 32, offset: 1824)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1120, file: !46, line: 756, baseType: !91, size: 64, offset: 704)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1120, file: !46, line: 757, baseType: !91, size: 64, offset: 768)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1120, file: !46, line: 760, baseType: !91, size: 64, offset: 832)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1120, file: !46, line: 761, baseType: !91, size: 64, offset: 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1120, file: !46, line: 763, baseType: !91, size: 64, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1120, file: !46, line: 764, baseType: !1754, size: 64, offset: 1024)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1516, line: 299, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1516, line: 299, size: 64, elements: !1757)
!1757 = !{!1758}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1756, file: !1516, line: 299, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1521, line: 18, baseType: !91)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1120, file: !46, line: 773, baseType: !248, size: 32, offset: 1088)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1120, file: !46, line: 785, baseType: !248, size: 32, offset: 1120)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1120, file: !46, line: 795, baseType: !1763, size: 64, offset: 1152)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !46, line: 726, size: 128, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1764, file: !46, line: 727, baseType: !204, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1764, file: !46, line: 728, baseType: !94, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1120, file: !46, line: 801, baseType: !91, size: 64, offset: 1216)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1120, file: !46, line: 804, baseType: !489, size: 64, offset: 1280)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1120, file: !46, line: 806, baseType: !94, size: 32, offset: 1344)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1120, file: !46, line: 808, baseType: !228, size: 32, offset: 1376)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1120, file: !46, line: 823, baseType: !697, size: 320, offset: 1408)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1120, file: !46, line: 825, baseType: !109, size: 128, offset: 1728)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1120, file: !46, line: 845, baseType: !94, size: 32, offset: 1856)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1120, file: !46, line: 849, baseType: !91, size: 64, offset: 1920)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1120, file: !46, line: 850, baseType: !91, size: 64, offset: 1984)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1120, file: !46, line: 852, baseType: !91, size: 64, offset: 2048)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1120, file: !46, line: 853, baseType: !91, size: 64, offset: 2112)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1120, file: !46, line: 854, baseType: !491, size: 64, offset: 2176)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1120, file: !46, line: 855, baseType: !91, size: 64, offset: 2240)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1120, file: !46, line: 856, baseType: !91, size: 64, offset: 2304)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1120, file: !46, line: 857, baseType: !91, size: 64, offset: 2368)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1120, file: !46, line: 858, baseType: !91, size: 64, offset: 2432)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1120, file: !46, line: 865, baseType: !175, size: 32, offset: 2496)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1120, file: !46, line: 867, baseType: !228, size: 32, offset: 2528)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1120, file: !46, line: 869, baseType: !91, size: 64, offset: 2560)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1120, file: !46, line: 869, baseType: !91, size: 64, offset: 2624)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1120, file: !46, line: 869, baseType: !91, size: 64, offset: 2688)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1120, file: !46, line: 869, baseType: !91, size: 64, offset: 2752)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1120, file: !46, line: 870, baseType: !91, size: 64, offset: 2816)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1120, file: !46, line: 870, baseType: !91, size: 64, offset: 2880)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1120, file: !46, line: 870, baseType: !91, size: 64, offset: 2944)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1120, file: !46, line: 871, baseType: !91, size: 64, offset: 3008)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1120, file: !46, line: 871, baseType: !91, size: 64, offset: 3072)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1120, file: !46, line: 871, baseType: !91, size: 64, offset: 3136)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1120, file: !46, line: 871, baseType: !91, size: 64, offset: 3200)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1120, file: !46, line: 873, baseType: !1798, size: 3328, offset: 3264)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 3328, elements: !1799)
!1799 = !{!1800}
!1800 = !DISubrange(count: 52)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1120, file: !46, line: 875, baseType: !1802, size: 1280, offset: 6592)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1362, size: 1280, elements: !1192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1120, file: !46, line: 877, baseType: !1804, size: 64, offset: 7872)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !46, line: 877, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1120, file: !46, line: 880, baseType: !1807, size: 1088, offset: 7936)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1808, line: 72, baseType: !1809)
!1808 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1808, line: 23, size: 1088, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1818, !1819, !1820, !1821, !1825, !1826, !1827}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1809, file: !1808, line: 28, baseType: !204, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1809, file: !1808, line: 38, baseType: !491, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1809, file: !1808, line: 40, baseType: !91, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1809, file: !1808, line: 43, baseType: !697, size: 320, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1809, file: !1808, line: 44, baseType: !1816, size: 64, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1808, line: 44, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1808, line: 48, baseType: !91, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1809, file: !1808, line: 59, baseType: !485, size: 256, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1809, file: !1808, line: 60, baseType: !90, size: 64, offset: 896)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1809, file: !1808, line: 61, baseType: !1822, size: 64, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1808, line: 61, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1809, file: !1808, line: 63, baseType: !248, size: 32, offset: 1024)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1809, file: !1808, line: 69, baseType: !263, size: 16, offset: 1056)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1809, file: !1808, line: 70, baseType: !1828, size: 16, offset: 1072)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !199, line: 18, baseType: !1829)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !201, line: 23, baseType: !1273)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !46, line: 882, baseType: !91, size: 64, offset: 9024)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1120, file: !46, line: 885, baseType: !228, size: 32, offset: 9088)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1120, file: !46, line: 886, baseType: !1833, size: 64, offset: 9152)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !46, line: 732, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1120, file: !46, line: 901, baseType: !1387, size: 64, offset: 9216)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1120, file: !46, line: 904, baseType: !1143, size: 64, offset: 9280)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1120, file: !46, line: 906, baseType: !1838, size: 64, offset: 9344)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !46, line: 906, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1120, file: !46, line: 930, baseType: !248, size: 32, offset: 9408)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1120, file: !46, line: 933, baseType: !248, size: 32, offset: 9440)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1120, file: !46, line: 935, baseType: !1843, size: 64, offset: 9472)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1844)
!1844 = !{!1845}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1843, file: !68, line: 104, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1120, file: !46, line: 940, baseType: !489, size: 64, offset: 9536)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1120, file: !46, line: 942, baseType: !1850, size: 256, offset: 9600)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1851, line: 98, size: 256, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1852 = !{!1853, !1854, !1855}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1850, file: !1851, line: 99, baseType: !489, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1850, file: !1851, line: 100, baseType: !109, size: 128, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1850, file: !1851, line: 101, baseType: !1856, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1851, line: 21, baseType: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1117, file: !46, line: 986, baseType: !1862, offset: 10240)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, elements: !1205)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !813, file: !453, line: 882, baseType: !1116, size: 64, offset: 9792)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !813, file: !453, line: 884, baseType: !94, size: 32, offset: 9856)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !813, file: !453, line: 885, baseType: !94, size: 32, offset: 9888)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !813, file: !453, line: 886, baseType: !94, size: 32, offset: 9920)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !813, file: !453, line: 888, baseType: !94, size: 32, offset: 9952)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !813, file: !453, line: 890, baseType: !91, size: 64, offset: 9984)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !813, file: !453, line: 893, baseType: !7, size: 32, offset: 10048)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !813, file: !453, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !813, file: !453, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !813, file: !453, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !813, file: !453, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !813, file: !453, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !813, file: !453, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !813, file: !453, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !813, file: !453, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !813, file: !453, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !813, file: !453, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !813, file: !453, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !813, file: !453, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !813, file: !453, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !813, file: !453, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !813, file: !453, line: 969, baseType: !91, size: 64, offset: 10176)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !813, file: !453, line: 971, baseType: !1886, size: 448, offset: 10240)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !1887)
!1887 = !{!1888, !1889, !1894}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1886, file: !62, line: 26, baseType: !91, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1886, file: !62, line: 27, baseType: !1890, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!464, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !62, line: 28, baseType: !1895, size: 320, offset: 128)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !62, line: 28, size: 320, elements: !1896)
!1896 = !{!1897, !1907, !1932}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1895, file: !62, line: 37, baseType: !1898, size: 320)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !62, line: 30, size: 320, elements: !1899)
!1899 = !{!1900, !1902, !1903, !1904, !1905, !1906}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1898, file: !62, line: 31, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1898, file: !62, line: 32, baseType: !198, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1898, file: !62, line: 33, baseType: !198, size: 32, offset: 96)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1898, file: !62, line: 34, baseType: !198, size: 32, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1898, file: !62, line: 35, baseType: !204, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1898, file: !62, line: 36, baseType: !1901, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1895, file: !62, line: 47, baseType: !1908, size: 192)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !62, line: 39, size: 192, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1931}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1908, file: !62, line: 40, baseType: !987, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1908, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !62, line: 42, baseType: !1913, size: 64, offset: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !62, line: 42, size: 64, elements: !1914)
!1914 = !{!1915, !1923}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1913, file: !62, line: 43, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1918, line: 7, size: 128, elements: !1919)
!1918 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1919 = !{!1920, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1917, file: !1918, line: 8, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !141, line: 93, baseType: !337)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1917, file: !1918, line: 9, baseType: !337, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1913, file: !62, line: 44, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1926, line: 7, size: 64, elements: !1927)
!1926 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1927 = !{!1928, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1925, file: !1926, line: 8, baseType: !1929, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1926, line: 5, baseType: !1247)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1925, file: !1926, line: 9, baseType: !1247, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1908, file: !62, line: 46, baseType: !204, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1895, file: !62, line: 55, baseType: !1933, size: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !62, line: 49, size: 256, elements: !1934)
!1934 = !{!1935, !1938, !1939, !1940, !1941}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1933, file: !62, line: 50, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1933, file: !62, line: 51, baseType: !94, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1933, file: !62, line: 52, baseType: !94, size: 32, offset: 96)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1933, file: !62, line: 53, baseType: !91, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1933, file: !62, line: 54, baseType: !91, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !813, file: !453, line: 973, baseType: !1943, size: 32, offset: 10688)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !93, line: 27, baseType: !1944)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !141, line: 28, baseType: !94)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !813, file: !453, line: 974, baseType: !1943, size: 32, offset: 10720)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !813, file: !453, line: 978, baseType: !91, size: 64, offset: 10752)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !813, file: !453, line: 987, baseType: !812, size: 64, offset: 10816)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !813, file: !453, line: 990, baseType: !812, size: 64, offset: 10880)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !813, file: !453, line: 995, baseType: !109, size: 128, offset: 10944)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !813, file: !453, line: 996, baseType: !109, size: 128, offset: 11072)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !813, file: !453, line: 997, baseType: !812, size: 64, offset: 11200)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !813, file: !453, line: 1005, baseType: !109, size: 128, offset: 11264)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !813, file: !453, line: 1006, baseType: !109, size: 128, offset: 11392)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !813, file: !453, line: 1009, baseType: !1184, size: 64, offset: 11520)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !813, file: !453, line: 1010, baseType: !1956, size: 512, offset: 11584)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 512, elements: !1192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !813, file: !453, line: 1011, baseType: !109, size: 128, offset: 12096)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !813, file: !453, line: 1012, baseType: !109, size: 128, offset: 12224)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !813, file: !453, line: 1014, baseType: !1960, size: 64, offset: 12352)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1962, line: 26, size: 256, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1961, file: !1962, line: 27, baseType: !7, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1961, file: !1962, line: 28, baseType: !1966, size: 192, offset: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1967, line: 43, size: 192, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1966, file: !1967, line: 44, baseType: !498, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1966, file: !1967, line: 45, baseType: !109, size: 128, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !813, file: !453, line: 1017, baseType: !445, size: 64, offset: 12416)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !813, file: !453, line: 1020, baseType: !445, size: 64, offset: 12480)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !813, file: !453, line: 1023, baseType: !90, size: 64, offset: 12544)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !813, file: !453, line: 1025, baseType: !204, size: 64, offset: 12608)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !813, file: !453, line: 1026, baseType: !204, size: 64, offset: 12672)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !813, file: !453, line: 1031, baseType: !204, size: 64, offset: 12736)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !813, file: !453, line: 1032, baseType: !1978, size: 192, offset: 12800)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !453, line: 324, size: 192, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1978, file: !453, line: 326, baseType: !204, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1978, file: !453, line: 327, baseType: !204, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1978, file: !453, line: 328, baseType: !498, size: 32, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !813, file: !453, line: 1041, baseType: !91, size: 64, offset: 12992)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !813, file: !453, line: 1042, baseType: !91, size: 64, offset: 13056)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !813, file: !453, line: 1045, baseType: !204, size: 64, offset: 13120)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !813, file: !453, line: 1048, baseType: !204, size: 64, offset: 13184)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !813, file: !453, line: 1051, baseType: !91, size: 64, offset: 13248)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !813, file: !453, line: 1052, baseType: !91, size: 64, offset: 13312)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !813, file: !453, line: 1055, baseType: !1990, size: 640, offset: 13376)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1991, line: 132, size: 640, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1992 = !{!1993, !1999, !2000}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1990, file: !1991, line: 133, baseType: !1994, size: 576)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1995, size: 576, elements: !385)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1991, line: 117, size: 192, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1995, file: !1991, line: 118, baseType: !204, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1995, file: !1991, line: 119, baseType: !996, size: 128, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1990, file: !1991, line: 134, baseType: !7, size: 32, offset: 576)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1990, file: !1991, line: 135, baseType: !7, size: 32, offset: 608)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !813, file: !453, line: 1058, baseType: !2002, size: 448, offset: 14016)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1991, line: 144, size: 448, elements: !2003)
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2002, file: !1991, line: 145, baseType: !797, size: 128, align: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2002, file: !1991, line: 146, baseType: !485, size: 256, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2002, file: !1991, line: 147, baseType: !7, size: 32, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !813, file: !453, line: 1064, baseType: !1212, size: 64, offset: 14464)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !813, file: !453, line: 1067, baseType: !1212, size: 64, offset: 14528)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !813, file: !453, line: 1070, baseType: !1212, size: 64, offset: 14592)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !813, file: !453, line: 1074, baseType: !1239, size: 64, offset: 14656)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !813, file: !453, line: 1084, baseType: !2012, size: 128, offset: 14720)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 128, elements: !2013)
!2013 = !{!2014}
!2014 = !DISubrange(count: 16)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !813, file: !453, line: 1086, baseType: !2016, size: 64, offset: 14848)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !453, line: 55, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !813, file: !453, line: 1089, baseType: !2019, size: 64, offset: 14912)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2020, line: 12, size: 64, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2021 = !{!2022}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2019, file: !2020, line: 13, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2020, line: 8, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !813, file: !453, line: 1090, baseType: !2026, size: 128, offset: 14976)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2027, line: 13, size: 128, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2028 = !{!2029}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2026, file: !2027, line: 14, baseType: !109, size: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !813, file: !453, line: 1097, baseType: !2031, size: 64, offset: 15104)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !453, line: 50, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !813, file: !453, line: 1100, baseType: !2034, size: 64, offset: 15168)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !453, line: 1100, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !813, file: !453, line: 1103, baseType: !2037, size: 64, offset: 15232)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !453, line: 53, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !813, file: !453, line: 1107, baseType: !2040, size: 64, offset: 15296)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !453, line: 56, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !813, file: !453, line: 1110, baseType: !2043, size: 64, offset: 15360)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2045, line: 93, size: 8768, elements: !2046)
!2045 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2046 = !{!2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2096, !2105, !2106, !2108, !2109, !2110, !2113, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2151, !2152, !2159, !2169, !2172, !2173, !2176, !2177, !2178, !2179, !2180, !2181}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2044, file: !2045, line: 94, baseType: !826, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2044, file: !2045, line: 95, baseType: !248, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2044, file: !2045, line: 96, baseType: !94, size: 32, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2044, file: !2045, line: 97, baseType: !94, size: 32, offset: 96)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2044, file: !2045, line: 98, baseType: !109, size: 128, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2044, file: !2045, line: 100, baseType: !790, size: 192, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2044, file: !2045, line: 103, baseType: !812, size: 64, offset: 448)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2044, file: !2045, line: 106, baseType: !2055, size: 192, offset: 512)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1392, line: 32, size: 192, elements: !2056)
!2056 = !{!2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2055, file: !1392, line: 33, baseType: !109, size: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2055, file: !1392, line: 34, baseType: !2059, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2060, line: 25, baseType: !2061)
!2060 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2060, line: 23, size: 64, elements: !2062)
!2062 = !{!2063}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2061, file: !2060, line: 24, baseType: !1067, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2044, file: !2045, line: 109, baseType: !368, size: 64, offset: 704)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2044, file: !2045, line: 112, baseType: !94, size: 32, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2044, file: !2045, line: 114, baseType: !94, size: 32, offset: 800)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2044, file: !2045, line: 115, baseType: !812, size: 64, offset: 832)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2044, file: !2045, line: 118, baseType: !94, size: 32, offset: 896)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2044, file: !2045, line: 119, baseType: !7, size: 32, offset: 928)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2044, file: !2045, line: 121, baseType: !2071, size: 64, offset: 960)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2045, line: 80, size: 448, elements: !2073)
!2073 = !{!2074, !2075, !2081}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2072, file: !2045, line: 81, baseType: !248, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2072, file: !2045, line: 82, baseType: !2076, size: 128, offset: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2045, line: 75, size: 128, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2076, file: !2045, line: 76, baseType: !812, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2076, file: !2045, line: 77, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2072, file: !2045, line: 83, baseType: !1961, size: 256, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2044, file: !2045, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2044, file: !2045, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2044, file: !2045, line: 138, baseType: !7, size: 32, offset: 1056)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2044, file: !2045, line: 139, baseType: !109, size: 128, offset: 1088)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2044, file: !2045, line: 142, baseType: !940, size: 512, offset: 1216)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2044, file: !2045, line: 143, baseType: !948, size: 64, offset: 1728)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2044, file: !2045, line: 150, baseType: !2089, size: 256, offset: 1792)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2090, size: 256, elements: !2094)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2045, line: 38, size: 128, elements: !2091)
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2090, file: !2045, line: 39, baseType: !204, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2090, file: !2045, line: 40, baseType: !204, size: 64, offset: 64)
!2094 = !{!2095}
!2095 = !DISubrange(count: 2)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2044, file: !2045, line: 156, baseType: !2097, size: 192, offset: 2048)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2045, line: 66, size: 192, elements: !2098)
!2098 = !{!2099}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2097, file: !2045, line: 67, baseType: !2100, size: 192)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2045, line: 47, size: 192, elements: !2101)
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2100, file: !2045, line: 48, baseType: !491, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2100, file: !2045, line: 49, baseType: !491, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2100, file: !2045, line: 50, baseType: !491, size: 64, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2044, file: !2045, line: 160, baseType: !1990, size: 640, offset: 2240)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2044, file: !2045, line: 163, baseType: !2107, size: 256, offset: 2880)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 256, elements: !1192)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2044, file: !2045, line: 169, baseType: !1184, size: 64, offset: 3136)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2044, file: !2045, line: 172, baseType: !94, size: 32, offset: 3200)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2044, file: !2045, line: 174, baseType: !2111, size: 64, offset: 3264)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2045, line: 174, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2044, file: !2045, line: 185, baseType: !2114, size: 64, offset: 3328)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !171, line: 860, baseType: !2115)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 853, size: 64, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2115, file: !171, line: 858, baseType: !170, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2115, file: !171, line: 859, baseType: !228, size: 32, offset: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2044, file: !2045, line: 186, baseType: !204, size: 64, offset: 3392)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2044, file: !2045, line: 186, baseType: !204, size: 64, offset: 3456)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2044, file: !2045, line: 186, baseType: !204, size: 64, offset: 3520)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2044, file: !2045, line: 186, baseType: !204, size: 64, offset: 3584)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2044, file: !2045, line: 187, baseType: !204, size: 64, offset: 3648)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2044, file: !2045, line: 188, baseType: !204, size: 64, offset: 3712)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2044, file: !2045, line: 189, baseType: !1978, size: 192, offset: 3776)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2044, file: !2045, line: 190, baseType: !91, size: 64, offset: 3968)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2044, file: !2045, line: 190, baseType: !91, size: 64, offset: 4032)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2044, file: !2045, line: 190, baseType: !91, size: 64, offset: 4096)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2044, file: !2045, line: 190, baseType: !91, size: 64, offset: 4160)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2044, file: !2045, line: 191, baseType: !91, size: 64, offset: 4224)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2044, file: !2045, line: 191, baseType: !91, size: 64, offset: 4288)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2044, file: !2045, line: 191, baseType: !91, size: 64, offset: 4352)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2044, file: !2045, line: 191, baseType: !91, size: 64, offset: 4416)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2044, file: !2045, line: 192, baseType: !91, size: 64, offset: 4480)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2044, file: !2045, line: 192, baseType: !91, size: 64, offset: 4544)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2044, file: !2045, line: 192, baseType: !91, size: 64, offset: 4608)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2044, file: !2045, line: 192, baseType: !91, size: 64, offset: 4672)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2044, file: !2045, line: 193, baseType: !91, size: 64, offset: 4736)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2044, file: !2045, line: 193, baseType: !91, size: 64, offset: 4800)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2044, file: !2045, line: 194, baseType: !2141, size: 448, offset: 4864)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2142, line: 12, size: 448, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2141, file: !2142, line: 15, baseType: !204, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2141, file: !2142, line: 17, baseType: !204, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2141, file: !2142, line: 19, baseType: !204, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2141, file: !2142, line: 21, baseType: !204, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2141, file: !2142, line: 29, baseType: !204, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2141, file: !2142, line: 35, baseType: !204, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2141, file: !2142, line: 44, baseType: !204, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2044, file: !2045, line: 202, baseType: !206, size: 64, offset: 5312)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2044, file: !2045, line: 213, baseType: !2153, size: 2048, offset: 5376)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2154, size: 2048, elements: !2013)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2155, line: 43, size: 128, elements: !2156)
!2155 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2156 = !{!2157, !2158}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2154, file: !2155, line: 44, baseType: !467, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2154, file: !2155, line: 45, baseType: !467, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2044, file: !2045, line: 216, baseType: !2160, size: 448, offset: 7424)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2045, line: 30, size: 448, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2160, file: !2045, line: 31, baseType: !94, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2160, file: !2045, line: 32, baseType: !464, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2160, file: !2045, line: 33, baseType: !91, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2160, file: !2045, line: 34, baseType: !204, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2160, file: !2045, line: 34, baseType: !204, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2160, file: !2045, line: 35, baseType: !91, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2160, file: !2045, line: 35, baseType: !91, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2044, file: !2045, line: 219, baseType: !2170, size: 64, offset: 7872)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2045, line: 219, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2044, file: !2045, line: 222, baseType: !7, size: 32, offset: 7936)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2044, file: !2045, line: 223, baseType: !2174, size: 64, offset: 8000)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2045, line: 223, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2044, file: !2045, line: 230, baseType: !1304, size: 8, offset: 8064)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2044, file: !2045, line: 231, baseType: !1273, size: 16, offset: 8080)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2044, file: !2045, line: 232, baseType: !1273, size: 16, offset: 8096)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2044, file: !2045, line: 234, baseType: !1116, size: 64, offset: 8128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2044, file: !2045, line: 237, baseType: !485, size: 256, offset: 8192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2044, file: !2045, line: 243, baseType: !697, size: 320, offset: 8448)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !813, file: !453, line: 1111, baseType: !2183, size: 64, offset: 15424)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2045, line: 20, size: 16640, elements: !2185)
!2185 = !{!2186, !2187, !2188, !2189}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2184, file: !2045, line: 21, baseType: !228, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2184, file: !2045, line: 22, baseType: !826, size: 32, offset: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2184, file: !2045, line: 23, baseType: !790, size: 192, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2184, file: !2045, line: 24, baseType: !2190, size: 16384, offset: 256)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2191, size: 16384, elements: !2211)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1392, line: 51, size: 256, elements: !2192)
!2192 = !{!2193}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2191, file: !1392, line: 52, baseType: !2194, size: 256)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1392, line: 37, size: 256, elements: !2195)
!2195 = !{!2196, !2203, !2204, !2210}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2194, file: !1392, line: 39, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2198, line: 83, baseType: !2199)
!2198 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2198, line: 82, baseType: !2201)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !94}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2194, file: !1392, line: 40, baseType: !91, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2194, file: !1392, line: 46, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2198, line: 86, baseType: !2206)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2198, line: 85, baseType: !2208)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2194, file: !1392, line: 48, baseType: !2059, size: 64, offset: 192)
!2211 = !{!2212}
!2212 = !DISubrange(count: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !813, file: !453, line: 1112, baseType: !2059, size: 64, offset: 15488)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !813, file: !453, line: 1113, baseType: !2059, size: 64, offset: 15552)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !813, file: !453, line: 1115, baseType: !2059, size: 64, offset: 15616)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !813, file: !453, line: 1116, baseType: !2055, size: 192, offset: 15680)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !813, file: !453, line: 1117, baseType: !91, size: 64, offset: 15872)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !813, file: !453, line: 1118, baseType: !465, size: 64, offset: 15936)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !813, file: !453, line: 1119, baseType: !7, size: 32, offset: 16000)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !813, file: !453, line: 1121, baseType: !800, size: 64, offset: 16064)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !813, file: !453, line: 1125, baseType: !2222, size: 64, offset: 16128)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !453, line: 43, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !813, file: !453, line: 1127, baseType: !134, size: 32, offset: 16192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !813, file: !453, line: 1128, baseType: !7, size: 32, offset: 16224)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !813, file: !453, line: 1130, baseType: !2227, size: 128, offset: 16256)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2228, line: 37, size: 128, elements: !2229)
!2228 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2227, file: !2228, line: 38, baseType: !94, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2227, file: !2228, line: 39, baseType: !248, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2227, file: !2228, line: 40, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2228, line: 24, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !813, file: !453, line: 1131, baseType: !2236, size: 256, offset: 16384)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2237, line: 12, size: 256, elements: !2238)
!2237 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2238 = !{!2239, !2240, !2241, !2242}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2236, file: !2237, line: 13, baseType: !314, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2236, file: !2237, line: 14, baseType: !91, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2236, file: !2237, line: 15, baseType: !91, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2236, file: !2237, line: 16, baseType: !1304, size: 8, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !813, file: !453, line: 1134, baseType: !204, size: 64, offset: 16640)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !813, file: !453, line: 1135, baseType: !204, size: 64, offset: 16704)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !813, file: !453, line: 1138, baseType: !228, size: 32, offset: 16768)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !813, file: !453, line: 1141, baseType: !498, size: 32, offset: 16800)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !813, file: !453, line: 1143, baseType: !2248, size: 64, offset: 16832)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !453, line: 735, size: 64, elements: !2249)
!2249 = !{!2250}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2248, file: !453, line: 736, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !813, file: !453, line: 1147, baseType: !999, size: 128, offset: 16896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !813, file: !453, line: 1149, baseType: !812, size: 64, offset: 17024)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !813, file: !453, line: 1151, baseType: !2255, size: 64, offset: 17088)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !453, line: 1151, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !813, file: !453, line: 1188, baseType: !90, size: 64, offset: 17152)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !813, file: !453, line: 1191, baseType: !2259, size: 64, offset: 17216)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !453, line: 44, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !813, file: !453, line: 1194, baseType: !2262, size: 64, offset: 17280)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !453, line: 45, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !813, file: !453, line: 1197, baseType: !2265, size: 64, offset: 17344)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !453, line: 61, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !813, file: !453, line: 1199, baseType: !2268, size: 64, offset: 17408)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2270, line: 99, size: 128, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2269, file: !2270, line: 100, baseType: !489, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2269, file: !2270, line: 101, baseType: !248, size: 32, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2269, file: !2270, line: 103, baseType: !131, size: 16, offset: 96)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !813, file: !453, line: 1202, baseType: !2276, size: 64, offset: 17472)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !453, line: 48, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !813, file: !453, line: 1205, baseType: !91, size: 64, offset: 17536)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !813, file: !453, line: 1206, baseType: !2280, size: 64, offset: 17600)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1392, line: 14, baseType: !2282)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1392, line: 12, size: 384, elements: !2283)
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !2282, file: !1392, line: 13, baseType: !2285, size: 384)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2282, file: !1392, line: 13, size: 384, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2290}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2285, file: !1392, line: 13, baseType: !94, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2285, file: !1392, line: 13, baseType: !94, size: 32, offset: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2285, file: !1392, line: 13, baseType: !94, size: 32, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2285, file: !1392, line: 13, baseType: !2291, size: 256, offset: 128)
!2291 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2292, line: 37, size: 256, elements: !2293)
!2292 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2293 = !{!2294, !2299, !2312, !2318, !2327, !2354, !2359}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2291, file: !2292, line: 42, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !2292, line: 39, size: 64, elements: !2296)
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2295, file: !2292, line: 40, baseType: !1944, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2295, file: !2292, line: 41, baseType: !140, size: 32, offset: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2291, file: !2292, line: 50, baseType: !2300, size: 192)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !2292, line: 45, size: 192, elements: !2301)
!2301 = !{!2302, !2304, !2305, !2311}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2300, file: !2292, line: 46, baseType: !2303, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !141, line: 95, baseType: !94)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2300, file: !2292, line: 47, baseType: !94, size: 32, offset: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2300, file: !2292, line: 48, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2292, line: 11, baseType: !2307)
!2307 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2292, line: 8, size: 64, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2307, file: !2292, line: 9, baseType: !94, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2307, file: !2292, line: 10, baseType: !90, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2300, file: !2292, line: 49, baseType: !94, size: 32, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2291, file: !2292, line: 57, baseType: !2313, size: 128)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !2292, line: 53, size: 128, elements: !2314)
!2314 = !{!2315, !2316, !2317}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2313, file: !2292, line: 54, baseType: !1944, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2313, file: !2292, line: 55, baseType: !140, size: 32, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2313, file: !2292, line: 56, baseType: !2306, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2291, file: !2292, line: 66, baseType: !2319, size: 256)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !2292, line: 60, size: 256, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2326}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2319, file: !2292, line: 61, baseType: !1944, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2319, file: !2292, line: 62, baseType: !140, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2319, file: !2292, line: 63, baseType: !94, size: 32, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2319, file: !2292, line: 64, baseType: !2325, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !141, line: 94, baseType: !463)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2319, file: !2292, line: 65, baseType: !2325, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2291, file: !2292, line: 105, baseType: !2328, size: 256)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !2292, line: 69, size: 256, elements: !2329)
!2329 = !{!2330, !2331}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2328, file: !2292, line: 70, baseType: !90, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, scope: !2328, file: !2292, line: 79, baseType: !2332, size: 192, offset: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2328, file: !2292, line: 79, size: 192, elements: !2333)
!2333 = !{!2334, !2335, !2336, !2343, !2348}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2332, file: !2292, line: 81, baseType: !94, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2332, file: !2292, line: 86, baseType: !1273, size: 16)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2332, file: !2292, line: 92, baseType: !2337, size: 192)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2292, line: 88, size: 192, elements: !2338)
!2338 = !{!2339, !2341, !2342}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2337, file: !2292, line: 89, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 64, elements: !983)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2337, file: !2292, line: 90, baseType: !90, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2337, file: !2292, line: 91, baseType: !90, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2332, file: !2292, line: 97, baseType: !2344, size: 96)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2292, line: 94, size: 96, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2344, file: !2292, line: 95, baseType: !2340, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2344, file: !2292, line: 96, baseType: !200, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2332, file: !2292, line: 103, baseType: !2349, size: 128)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2292, line: 99, size: 128, elements: !2350)
!2350 = !{!2351, !2352, !2353}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2349, file: !2292, line: 100, baseType: !91, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2349, file: !2292, line: 101, baseType: !200, size: 32, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2349, file: !2292, line: 102, baseType: !200, size: 32, offset: 96)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2291, file: !2292, line: 111, baseType: !2355, size: 128)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !2292, line: 108, size: 128, elements: !2356)
!2356 = !{!2357, !2358}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2355, file: !2292, line: 109, baseType: !464, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2355, file: !2292, line: 110, baseType: !94, size: 32, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2291, file: !2292, line: 118, baseType: !2360, size: 128)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !2292, line: 114, size: 128, elements: !2361)
!2361 = !{!2362, !2363, !2364}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2360, file: !2292, line: 115, baseType: !90, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2360, file: !2292, line: 116, baseType: !94, size: 32, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2360, file: !2292, line: 117, baseType: !7, size: 32, offset: 96)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !813, file: !453, line: 1208, baseType: !2141, size: 448, offset: 17664)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !813, file: !453, line: 1215, baseType: !204, size: 64, offset: 18112)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !813, file: !453, line: 1217, baseType: !204, size: 64, offset: 18176)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !813, file: !453, line: 1219, baseType: !204, size: 64, offset: 18240)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !813, file: !453, line: 1223, baseType: !2370, size: 64, offset: 18304)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2371, line: 99, baseType: !2372)
!2371 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2371, line: 99, size: 64, elements: !2373)
!2373 = !{!2374}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2372, file: !2371, line: 99, baseType: !1067, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !813, file: !453, line: 1225, baseType: !170, size: 32, offset: 18368)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !813, file: !453, line: 1226, baseType: !94, size: 32, offset: 18400)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !813, file: !453, line: 1227, baseType: !94, size: 32, offset: 18432)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !813, file: !453, line: 1231, baseType: !2379, size: 64, offset: 18496)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !453, line: 1231, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !813, file: !453, line: 1233, baseType: !109, size: 128, offset: 18560)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !813, file: !453, line: 1240, baseType: !2383, size: 64, offset: 18688)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !453, line: 62, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !813, file: !453, line: 1242, baseType: !2386, size: 64, offset: 18752)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !453, line: 1242, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !813, file: !453, line: 1244, baseType: !109, size: 128, offset: 18816)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !813, file: !453, line: 1245, baseType: !2390, size: 64, offset: 18944)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !453, line: 51, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !813, file: !453, line: 1246, baseType: !485, size: 256, offset: 19008)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !813, file: !453, line: 1247, baseType: !7, size: 32, offset: 19264)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !813, file: !453, line: 1250, baseType: !2395, size: 64, offset: 19328)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !453, line: 57, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !813, file: !453, line: 1251, baseType: !485, size: 256, offset: 19392)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !813, file: !453, line: 1252, baseType: !109, size: 128, offset: 19648)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !813, file: !453, line: 1259, baseType: !1643, size: 64, offset: 19776)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !813, file: !453, line: 1260, baseType: !1273, size: 16, offset: 19840)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !813, file: !453, line: 1261, baseType: !1273, size: 16, offset: 19856)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !813, file: !453, line: 1314, baseType: !2403, size: 64, offset: 19904)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2405, line: 62, size: 256, align: 256, elements: !2406)
!2405 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2404, file: !2405, line: 75, baseType: !200, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2404, file: !2405, line: 90, baseType: !200, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2404, file: !2405, line: 112, baseType: !205, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2404, file: !2405, line: 132, baseType: !200, size: 32, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2404, file: !2405, line: 140, baseType: !200, size: 32, offset: 160)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2404, file: !2405, line: 149, baseType: !200, size: 32, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2404, file: !2405, line: 154, baseType: !2414, offset: 224)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, elements: !1205)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !813, file: !453, line: 1315, baseType: !198, size: 32, offset: 19968)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !813, file: !453, line: 1316, baseType: !198, size: 32, offset: 20000)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !813, file: !453, line: 1321, baseType: !91, size: 64, offset: 20032)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !813, file: !453, line: 1325, baseType: !94, size: 32, offset: 20096)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !813, file: !453, line: 1326, baseType: !94, size: 32, offset: 20128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !813, file: !453, line: 1327, baseType: !94, size: 32, offset: 20160)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !813, file: !453, line: 1328, baseType: !94, size: 32, offset: 20192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !813, file: !453, line: 1329, baseType: !797, size: 128, align: 64, offset: 20224)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !813, file: !453, line: 1332, baseType: !2424, size: 128, offset: 20352)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2425, line: 51, size: 128, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2426 = !{!2427, !2432, !2433}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2424, file: !2425, line: 60, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2429, line: 7, size: 64, elements: !2430)
!2429 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2428, file: !2429, line: 12, baseType: !1064, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2424, file: !2425, line: 63, baseType: !1304, size: 8, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2424, file: !2425, line: 70, baseType: !1304, size: 8, offset: 72)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !813, file: !453, line: 1335, baseType: !1695, size: 64, offset: 20480)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !813, file: !453, line: 1337, baseType: !2436, size: 128, offset: 20544)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2425, line: 39, size: 128, elements: !2437)
!2437 = !{!2438, !2439, !2440}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2436, file: !2425, line: 40, baseType: !95, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2436, file: !2425, line: 42, baseType: !200, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2436, file: !2425, line: 43, baseType: !200, size: 32, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !813, file: !453, line: 1340, baseType: !2442, size: 64, offset: 20672)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !453, line: 69, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !813, file: !453, line: 1351, baseType: !94, size: 32, offset: 20736)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !813, file: !453, line: 1352, baseType: !94, size: 32, offset: 20768)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !813, file: !453, line: 1354, baseType: !91, size: 64, offset: 20800)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !813, file: !453, line: 1364, baseType: !204, size: 64, offset: 20864)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !813, file: !453, line: 1365, baseType: !204, size: 64, offset: 20928)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !813, file: !453, line: 1412, baseType: !91, size: 64, offset: 20992)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !813, file: !453, line: 1453, baseType: !2451, size: 64, offset: 21056)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !453, line: 1453, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !813, file: !453, line: 1457, baseType: !2454, size: 64, offset: 21120)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2456)
!2456 = !{!2457, !2458, !2477, !2480, !2481, !2514, !2524}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2455, file: !68, line: 62, baseType: !67, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !2455, file: !68, line: 64, baseType: !2459, size: 192, offset: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2455, file: !68, line: 64, size: 192, elements: !2460)
!2460 = !{!2461, !2472}
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2459, file: !68, line: 65, baseType: !2462, size: 192)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2459, file: !68, line: 65, size: 192, elements: !2463)
!2463 = !{!2464, !2471}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2462, file: !68, line: 66, baseType: !2465, size: 128)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2466, line: 50, size: 128, elements: !2467)
!2466 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2467 = !{!2468, !2469, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2465, file: !2466, line: 52, baseType: !91, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2465, file: !2466, line: 54, baseType: !7, size: 32, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2465, file: !2466, line: 55, baseType: !7, size: 32, offset: 96)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2462, file: !68, line: 67, baseType: !91, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !2459, file: !68, line: 70, baseType: !2473, size: 192)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2459, file: !68, line: 70, size: 192, elements: !2474)
!2474 = !{!2475, !2476}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2473, file: !68, line: 71, baseType: !797, size: 128, align: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2473, file: !68, line: 72, baseType: !91, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2455, file: !68, line: 76, baseType: !2478, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2455, file: !68, line: 77, baseType: !91, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2455, file: !68, line: 79, baseType: !2482, size: 64, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2466, line: 25, size: 256, elements: !2484)
!2484 = !{!2485, !2491, !2495}
!2485 = !DIDerivedType(tag: DW_TAG_member, scope: !2483, file: !2466, line: 26, baseType: !2486, size: 128)
!2486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2483, file: !2466, line: 26, size: 128, elements: !2487)
!2487 = !{!2488, !2490}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2486, file: !2466, line: 27, baseType: !2489, size: 128)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !2013)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2486, file: !2466, line: 28, baseType: !2489, size: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2483, file: !2466, line: 31, baseType: !2492, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2494)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2466, line: 23, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !2483, file: !2466, line: 33, baseType: !2496, size: 64, offset: 192)
!2496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2483, file: !2466, line: 33, size: 64, elements: !2497)
!2497 = !{!2498, !2504, !2509}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2496, file: !2466, line: 38, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2496, file: !2466, line: 34, size: 64, elements: !2500)
!2500 = !{!2501, !2502, !2503}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2499, file: !2466, line: 35, baseType: !1247, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2499, file: !2466, line: 36, baseType: !256, size: 8, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2499, file: !2466, line: 37, baseType: !256, size: 8, offset: 40)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2496, file: !2466, line: 42, baseType: !2505, size: 16)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2496, file: !2466, line: 39, size: 16, elements: !2506)
!2506 = !{!2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2505, file: !2466, line: 40, baseType: !256, size: 8)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2505, file: !2466, line: 41, baseType: !256, size: 8, offset: 8)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2496, file: !2466, line: 46, baseType: !2510, size: 16)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2496, file: !2466, line: 43, size: 16, elements: !2511)
!2511 = !{!2512, !2513}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2510, file: !2466, line: 44, baseType: !256, size: 8)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2510, file: !2466, line: 45, baseType: !256, size: 8, offset: 8)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2455, file: !68, line: 81, baseType: !2515, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2516, file: !68, line: 86, baseType: !2478, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2516, file: !68, line: 87, baseType: !91, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2516, file: !68, line: 88, baseType: !91, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2516, file: !68, line: 89, baseType: !91, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2516, file: !68, line: 90, baseType: !1304, size: 8, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2516, file: !68, line: 92, baseType: !2515, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2455, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !813, file: !453, line: 1463, baseType: !2526, offset: 21184)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !453, line: 739, elements: !380)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !813, file: !453, line: 1470, baseType: !797, size: 128, align: 64, offset: 21184)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !813, file: !453, line: 1471, baseType: !826, size: 32, offset: 21312)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !813, file: !453, line: 1472, baseType: !94, size: 32, offset: 21344)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !813, file: !453, line: 1474, baseType: !812, size: 64, offset: 21376)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !813, file: !453, line: 1475, baseType: !2532, size: 320, offset: 21440)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2533, line: 11, size: 320, elements: !2534)
!2533 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2534 = !{!2535, !2536, !2537, !2542}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2532, file: !2533, line: 16, baseType: !372, size: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2532, file: !2533, line: 17, baseType: !91, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2532, file: !2533, line: 18, baseType: !2538, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2532, file: !2533, line: 19, baseType: !198, size: 32, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !813, file: !453, line: 1478, baseType: !2544, size: 64, offset: 21760)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2546, line: 49, size: 512, elements: !2547)
!2546 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2554, !2555, !2556, !2558}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2545, file: !2546, line: 50, baseType: !2544, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2545, file: !2546, line: 51, baseType: !90, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2545, file: !2546, line: 52, baseType: !91, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2545, file: !2546, line: 53, baseType: !91, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2545, file: !2546, line: 54, baseType: !2553, size: 64, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2545, file: !2546, line: 56, baseType: !7, size: 32, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2545, file: !2546, line: 58, baseType: !7, size: 32, offset: 352)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2545, file: !2546, line: 59, baseType: !2557, size: 64, offset: 384)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !93, line: 159, baseType: !204)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2545, file: !2546, line: 60, baseType: !2559, size: 64, offset: 448)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !813, file: !453, line: 1482, baseType: !826, size: 32, offset: 21824)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !813, file: !453, line: 1489, baseType: !90, size: 64, offset: 21888)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !813, file: !453, line: 1504, baseType: !90, size: 64, offset: 21952)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !813, file: !453, line: 1505, baseType: !205, size: 64, offset: 22016)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !813, file: !453, line: 1506, baseType: !204, size: 64, offset: 22080)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !813, file: !453, line: 1507, baseType: !205, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !813, file: !453, line: 1508, baseType: !205, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !813, file: !453, line: 1509, baseType: !205, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !813, file: !453, line: 1510, baseType: !797, size: 128, align: 64, offset: 22208)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !813, file: !453, line: 1511, baseType: !94, size: 32, offset: 22336)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !813, file: !453, line: 1515, baseType: !2572, size: 64, offset: 22400)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !840, line: 56, size: 64, elements: !2573)
!2573 = !{!2574}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2572, file: !840, line: 57, baseType: !843, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !813, file: !453, line: 1518, baseType: !2572, size: 64, offset: 22464)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !813, file: !453, line: 1528, baseType: !797, size: 128, align: 64, offset: 22528)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !813, file: !453, line: 1552, baseType: !2578, size: 35328, offset: 23040)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2579, line: 430, size: 35328, elements: !2580)
!2579 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2580 = !{!2581, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2610, !2611, !2612, !2613, !2614, !2615, !2618, !2619, !2620, !2621}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2578, file: !2579, line: 432, baseType: !2582, size: 192)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2583, size: 192, elements: !385)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2584, line: 16, size: 64, elements: !2585)
!2584 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2583, file: !2584, line: 17, baseType: !263, size: 16)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2583, file: !2584, line: 18, baseType: !263, size: 16, offset: 16)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2583, file: !2584, line: 19, baseType: !263, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2583, file: !2584, line: 19, baseType: !263, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2583, file: !2584, line: 19, baseType: !263, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2583, file: !2584, line: 19, baseType: !263, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2583, file: !2584, line: 19, baseType: !263, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2583, file: !2584, line: 20, baseType: !263, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2583, file: !2584, line: 20, baseType: !263, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2583, file: !2584, line: 20, baseType: !263, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2583, file: !2584, line: 20, baseType: !263, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2583, file: !2584, line: 20, baseType: !263, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2583, file: !2584, line: 20, baseType: !263, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2578, file: !2579, line: 436, baseType: !91, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2578, file: !2579, line: 440, baseType: !131, size: 16, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2578, file: !2579, line: 441, baseType: !131, size: 16, offset: 272)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2578, file: !2579, line: 442, baseType: !131, size: 16, offset: 288)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2578, file: !2579, line: 443, baseType: !131, size: 16, offset: 304)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2578, file: !2579, line: 447, baseType: !91, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2578, file: !2579, line: 448, baseType: !91, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2578, file: !2579, line: 459, baseType: !2607, size: 256, offset: 448)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 256, elements: !1192)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2579, line: 428, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2578, file: !2579, line: 461, baseType: !91, size: 64, offset: 704)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2578, file: !2579, line: 463, baseType: !91, size: 64, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2578, file: !2579, line: 465, baseType: !91, size: 64, offset: 832)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2578, file: !2579, line: 466, baseType: !91, size: 64, offset: 896)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2578, file: !2579, line: 467, baseType: !91, size: 64, offset: 960)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2578, file: !2579, line: 473, baseType: !2616, size: 64, offset: 1024)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2579, line: 10, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2578, file: !2579, line: 480, baseType: !91, size: 64, offset: 1088)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2578, file: !2579, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2578, file: !2579, line: 491, baseType: !198, size: 32, offset: 1184)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2578, file: !2579, line: 501, baseType: !2622, size: 33792, offset: 1536)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2623, line: 448, size: 33792, elements: !2624)
!2623 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2624 = !{!2625, !2626, !2627, !2789, !2790, !2796, !2797}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2622, file: !2623, line: 461, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2622, file: !2623, line: 468, baseType: !91, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2622, file: !2623, line: 476, baseType: !2628, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2623, line: 356, size: 33280, align: 512, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2629, file: !2623, line: 358, baseType: !7, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2629, file: !2623, line: 361, baseType: !7, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2629, file: !2623, line: 364, baseType: !204, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2629, file: !2623, line: 367, baseType: !204, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2629, file: !2623, line: 370, baseType: !204, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2629, file: !2623, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2629, file: !2623, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2629, file: !2623, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2629, file: !2623, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2629, file: !2623, line: 397, baseType: !2641, size: 32768, offset: 512)
!2641 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2623, line: 348, size: 32768, elements: !2642)
!2642 = !{!2643, !2658, !2695, !2772, !2785}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2641, file: !2623, line: 349, baseType: !2644, size: 896)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2623, line: 12, size: 896, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2657}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2644, file: !2623, line: 13, baseType: !198, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2644, file: !2623, line: 14, baseType: !198, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2644, file: !2623, line: 15, baseType: !198, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2644, file: !2623, line: 16, baseType: !198, size: 32, offset: 96)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2644, file: !2623, line: 17, baseType: !198, size: 32, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2644, file: !2623, line: 18, baseType: !198, size: 32, offset: 160)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2644, file: !2623, line: 19, baseType: !198, size: 32, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2644, file: !2623, line: 22, baseType: !2654, size: 640, offset: 224)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 640, elements: !2655)
!2655 = !{!2656}
!2656 = !DISubrange(count: 20)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2644, file: !2623, line: 25, baseType: !198, size: 32, offset: 864)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2641, file: !2623, line: 350, baseType: !2659, size: 4096, align: 128)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2623, line: 34, size: 4096, align: 128, elements: !2660)
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2680, !2681, !2682, !2684, !2686, !2690}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2659, file: !2623, line: 35, baseType: !263, size: 16)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2659, file: !2623, line: 36, baseType: !263, size: 16, offset: 16)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2659, file: !2623, line: 37, baseType: !263, size: 16, offset: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2659, file: !2623, line: 38, baseType: !263, size: 16, offset: 48)
!2665 = !DIDerivedType(tag: DW_TAG_member, scope: !2659, file: !2623, line: 39, baseType: !2666, size: 128, offset: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2659, file: !2623, line: 39, size: 128, elements: !2667)
!2667 = !{!2668, !2673}
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2666, file: !2623, line: 40, baseType: !2669, size: 128)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !2623, line: 40, size: 128, elements: !2670)
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2669, file: !2623, line: 41, baseType: !204, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2669, file: !2623, line: 42, baseType: !204, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, scope: !2666, file: !2623, line: 44, baseType: !2674, size: 128)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !2623, line: 44, size: 128, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2679}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2674, file: !2623, line: 45, baseType: !198, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2674, file: !2623, line: 46, baseType: !198, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2674, file: !2623, line: 47, baseType: !198, size: 32, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2674, file: !2623, line: 48, baseType: !198, size: 32, offset: 96)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2659, file: !2623, line: 51, baseType: !198, size: 32, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2659, file: !2623, line: 52, baseType: !198, size: 32, offset: 224)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2659, file: !2623, line: 55, baseType: !2683, size: 1024, offset: 256)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 1024, elements: !214)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2659, file: !2623, line: 58, baseType: !2685, size: 2048, offset: 1280)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 2048, elements: !2211)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2659, file: !2623, line: 60, baseType: !2687, size: 384, offset: 3328)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 384, elements: !2688)
!2688 = !{!2689}
!2689 = !DISubrange(count: 12)
!2690 = !DIDerivedType(tag: DW_TAG_member, scope: !2659, file: !2623, line: 62, baseType: !2691, size: 384, offset: 3712)
!2691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2659, file: !2623, line: 62, size: 384, elements: !2692)
!2692 = !{!2693, !2694}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2691, file: !2623, line: 63, baseType: !2687, size: 384)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2691, file: !2623, line: 64, baseType: !2687, size: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2641, file: !2623, line: 351, baseType: !2696, size: 1088)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2623, line: 79, size: 1088, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2771}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2696, file: !2623, line: 80, baseType: !198, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2696, file: !2623, line: 81, baseType: !198, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2696, file: !2623, line: 82, baseType: !198, size: 32, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2696, file: !2623, line: 83, baseType: !198, size: 32, offset: 96)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2696, file: !2623, line: 84, baseType: !198, size: 32, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2696, file: !2623, line: 85, baseType: !198, size: 32, offset: 160)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2696, file: !2623, line: 86, baseType: !198, size: 32, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2696, file: !2623, line: 88, baseType: !2654, size: 640, offset: 224)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2696, file: !2623, line: 89, baseType: !256, size: 8, offset: 864)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2696, file: !2623, line: 90, baseType: !256, size: 8, offset: 872)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2696, file: !2623, line: 91, baseType: !256, size: 8, offset: 880)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2696, file: !2623, line: 92, baseType: !256, size: 8, offset: 888)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2696, file: !2623, line: 93, baseType: !256, size: 8, offset: 896)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2696, file: !2623, line: 94, baseType: !256, size: 8, offset: 904)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2696, file: !2623, line: 95, baseType: !2713, size: 64, offset: 960)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2715, line: 11, size: 128, elements: !2716)
!2715 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2716 = !{!2717, !2718}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2714, file: !2715, line: 12, baseType: !464, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2714, file: !2715, line: 13, baseType: !2719, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2721, line: 103, size: 1344, elements: !2722)
!2721 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2722 = !{!2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2751, !2752, !2753}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2720, file: !2721, line: 109, baseType: !91, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2720, file: !2721, line: 110, baseType: !91, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2720, file: !2721, line: 111, baseType: !91, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2720, file: !2721, line: 112, baseType: !91, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2720, file: !2721, line: 113, baseType: !91, size: 64, offset: 256)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2720, file: !2721, line: 114, baseType: !91, size: 64, offset: 320)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2720, file: !2721, line: 117, baseType: !91, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2720, file: !2721, line: 118, baseType: !91, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2720, file: !2721, line: 119, baseType: !91, size: 64, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2720, file: !2721, line: 120, baseType: !91, size: 64, offset: 576)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2720, file: !2721, line: 121, baseType: !91, size: 64, offset: 640)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2720, file: !2721, line: 122, baseType: !91, size: 64, offset: 704)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2720, file: !2721, line: 123, baseType: !91, size: 64, offset: 768)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2720, file: !2721, line: 124, baseType: !91, size: 64, offset: 832)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2720, file: !2721, line: 125, baseType: !91, size: 64, offset: 896)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2720, file: !2721, line: 139, baseType: !91, size: 64, offset: 960)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2720, file: !2721, line: 142, baseType: !91, size: 64, offset: 1024)
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2720, file: !2721, line: 144, baseType: !2741, size: 64, offset: 1088)
!2741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2720, file: !2721, line: 144, size: 64, elements: !2742)
!2742 = !{!2743, !2744, !2745}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2741, file: !2721, line: 146, baseType: !263, size: 16)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2741, file: !2721, line: 148, baseType: !204, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2741, file: !2721, line: 150, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2721, line: 59, size: 64, elements: !2747)
!2747 = !{!2748, !2749, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2746, file: !2721, line: 61, baseType: !204, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2746, file: !2721, line: 63, baseType: !204, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2746, file: !2721, line: 65, baseType: !204, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2720, file: !2721, line: 153, baseType: !91, size: 64, offset: 1152)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2720, file: !2721, line: 154, baseType: !91, size: 64, offset: 1216)
!2753 = !DIDerivedType(tag: DW_TAG_member, scope: !2720, file: !2721, line: 156, baseType: !2754, size: 64, offset: 1280)
!2754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2720, file: !2721, line: 156, size: 64, elements: !2755)
!2755 = !{!2756, !2757, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2754, file: !2721, line: 158, baseType: !263, size: 16)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2754, file: !2721, line: 160, baseType: !204, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2754, file: !2721, line: 162, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2721, line: 69, size: 64, elements: !2760)
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2759, file: !2721, line: 71, baseType: !204, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2759, file: !2721, line: 73, baseType: !204, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2759, file: !2721, line: 75, baseType: !204, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2759, file: !2721, line: 77, baseType: !204, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2759, file: !2721, line: 80, baseType: !204, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2759, file: !2721, line: 83, baseType: !204, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2759, file: !2721, line: 86, baseType: !204, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2759, file: !2721, line: 88, baseType: !204, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2759, file: !2721, line: 93, baseType: !204, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2759, file: !2721, line: 100, baseType: !204, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2696, file: !2623, line: 96, baseType: !198, size: 32, offset: 1024)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2641, file: !2623, line: 352, baseType: !2773, size: 4608, align: 512)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2623, line: 333, size: 4608, align: 512, elements: !2774)
!2774 = !{!2775, !2776, !2783}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2773, file: !2623, line: 334, baseType: !2659, size: 4096, align: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2773, file: !2623, line: 335, baseType: !2777, size: 512, offset: 4096)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2623, line: 312, size: 512, elements: !2778)
!2778 = !{!2779, !2780, !2781}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2777, file: !2623, line: 313, baseType: !204, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2777, file: !2623, line: 314, baseType: !204, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2777, file: !2623, line: 315, baseType: !2782, size: 384, offset: 128)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 384, elements: !1291)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2773, file: !2623, line: 336, baseType: !2784, offset: 4608)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, elements: !1205)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2641, file: !2623, line: 353, baseType: !2786, size: 32768)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 32768, elements: !2787)
!2787 = !{!2788}
!2788 = !DISubrange(count: 4096)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2622, file: !2623, line: 484, baseType: !2628, size: 64, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2622, file: !2623, line: 491, baseType: !2791, size: 128, offset: 256)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2623, line: 404, size: 128, elements: !2792)
!2792 = !{!2793, !2794, !2795}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2791, file: !2623, line: 424, baseType: !204, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2791, file: !2623, line: 432, baseType: !7, size: 32, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2791, file: !2623, line: 440, baseType: !7, size: 32, offset: 96)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2622, file: !2623, line: 498, baseType: !2791, size: 128, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2622, file: !2623, line: 508, baseType: !2629, size: 33280, align: 512, offset: 512)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !780, file: !781, line: 16, baseType: !790, size: 192, offset: 512)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !780, file: !781, line: 17, baseType: !248, size: 32, offset: 704)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !326, file: !22, line: 1240, baseType: !90, size: 64, offset: 6912)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !326, file: !22, line: 1243, baseType: !198, size: 32, offset: 6976)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !326, file: !22, line: 1245, baseType: !538, size: 64, offset: 7040)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !326, file: !22, line: 1246, baseType: !538, size: 64, offset: 7104)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !326, file: !22, line: 1248, baseType: !200, size: 32, offset: 7168)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !326, file: !22, line: 1249, baseType: !2806, size: 64, offset: 7232)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !22, line: 634, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !326, file: !22, line: 1252, baseType: !2809, size: 256, offset: 7296)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 256, elements: !214)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !326, file: !22, line: 1253, baseType: !2811, size: 128, offset: 7552)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2812, line: 21, baseType: !2813)
!2812 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2812, line: 19, size: 128, elements: !2814)
!2814 = !{!2815}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2813, file: !2812, line: 20, baseType: !2816, size: 128)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 128, elements: !2013)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !326, file: !22, line: 1255, baseType: !7, size: 32, offset: 7680)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !326, file: !22, line: 1261, baseType: !485, size: 256, offset: 7744)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !326, file: !22, line: 1267, baseType: !288, size: 64, offset: 8000)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !326, file: !22, line: 1269, baseType: !268, size: 64, offset: 8064)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !326, file: !22, line: 1271, baseType: !2822, size: 448, offset: 8128)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !547, line: 63, size: 448, elements: !2823)
!2823 = !{!2824, !2829, !2830, !2831, !2832, !2833, !2834}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2822, file: !547, line: 64, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!91, !2828, !545}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2822, file: !547, line: 66, baseType: !2825, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2822, file: !547, line: 69, baseType: !464, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2822, file: !547, line: 70, baseType: !94, size: 32, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2822, file: !547, line: 71, baseType: !7, size: 32, offset: 224)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2822, file: !547, line: 74, baseType: !109, size: 128, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2822, file: !547, line: 85, baseType: !2835, size: 64, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !326, file: !22, line: 1274, baseType: !489, size: 64, offset: 8576)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !326, file: !22, line: 1280, baseType: !489, size: 64, offset: 8640)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !326, file: !22, line: 1283, baseType: !94, size: 32, offset: 8704)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !326, file: !22, line: 1286, baseType: !1745, size: 32, offset: 8736)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !326, file: !22, line: 1289, baseType: !2841, size: 64, offset: 8768)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1851, line: 18, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !326, file: !22, line: 1290, baseType: !368, size: 64, offset: 8832)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !326, file: !22, line: 1297, baseType: !1387, size: 64, offset: 8896)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !326, file: !22, line: 1304, baseType: !2846, size: 64, offset: 8960)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2847, line: 49, size: 64, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2846, file: !2847, line: 50, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2847, line: 41, size: 512, align: 512, elements: !2852)
!2852 = !{!2853, !2854, !2859}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2851, file: !2847, line: 43, baseType: !228, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2851, file: !2847, line: 45, baseType: !2855, size: 192, offset: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2847, line: 29, size: 192, elements: !2856)
!2856 = !{!2857, !2858}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2855, file: !2847, line: 30, baseType: !109, size: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2855, file: !2847, line: 32, baseType: !464, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2851, file: !2847, line: 46, baseType: !464, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !326, file: !22, line: 1305, baseType: !2846, size: 64, offset: 9024)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !326, file: !22, line: 1306, baseType: !797, size: 128, align: 64, offset: 9088)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !326, file: !22, line: 1307, baseType: !1850, size: 256, offset: 9216)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !326, file: !22, line: 1309, baseType: !485, size: 256, offset: 9472)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !326, file: !22, line: 1314, baseType: !94, size: 32, offset: 9728)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !326, file: !22, line: 1317, baseType: !228, size: 32, align: 512, offset: 10240)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !326, file: !22, line: 1318, baseType: !109, size: 128, offset: 10304)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !326, file: !22, line: 1320, baseType: !228, size: 32, offset: 10432)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !326, file: !22, line: 1321, baseType: !109, size: 128, offset: 10496)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !320, file: !321, line: 73, baseType: !94, size: 32, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !320, file: !321, line: 74, baseType: !2871, size: 64, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1229, line: 42, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !270, file: !166, line: 141, baseType: !2875, size: 64, offset: 704)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!94, !607, !1304}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !270, file: !166, line: 142, baseType: !2879, size: 64, offset: 768)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!164, !164, !2882}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !165, file: !166, line: 96, baseType: !325, size: 64, offset: 832)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !165, file: !166, line: 97, baseType: !91, size: 64, offset: 896)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !165, file: !166, line: 98, baseType: !90, size: 64, offset: 960)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !165, file: !166, line: 100, baseType: !2888, size: 128, offset: 1024)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !165, file: !166, line: 100, size: 128, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2888, file: !166, line: 101, baseType: !109, size: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2888, file: !166, line: 102, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !165, file: !166, line: 104, baseType: !109, size: 128, offset: 1152)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !165, file: !166, line: 105, baseType: !109, size: 128, offset: 1280)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !165, file: !166, line: 113, baseType: !2896, size: 128, offset: 1408)
!2896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !165, file: !166, line: 109, size: 128, elements: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2896, file: !166, line: 110, baseType: !372, size: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2896, file: !166, line: 111, baseType: !180, size: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2896, file: !166, line: 112, baseType: !797, size: 128, align: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !158, file: !22, line: 1968, baseType: !2902, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!288, !164, !126, !2905}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2907, line: 10, size: 128, elements: !2908)
!2907 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!2908 = !{!2909, !2913}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2906, file: !2907, line: 11, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{null, !90}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2906, file: !2907, line: 12, baseType: !90, size: 64, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !158, file: !22, line: 1969, baseType: !2915, size: 64, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!94, !2871, !126, !94}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !158, file: !22, line: 1970, baseType: !2919, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!152, !126, !94, !1304}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !158, file: !22, line: 1972, baseType: !2923, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!94, !164, !314, !94}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !158, file: !22, line: 1974, baseType: !2927, size: 64, offset: 320)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!94, !2871, !126, !164, !130, !1304}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !158, file: !22, line: 1976, baseType: !2931, size: 64, offset: 384)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!94, !164, !126, !164}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !158, file: !22, line: 1977, baseType: !2935, size: 64, offset: 448)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!94, !126, !164}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !158, file: !22, line: 1978, baseType: !2939, size: 64, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!94, !2871, !126, !164, !288}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !158, file: !22, line: 1980, baseType: !2943, size: 64, offset: 576)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!94, !2871, !126, !164, !130}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !158, file: !22, line: 1982, baseType: !2935, size: 64, offset: 640)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !158, file: !22, line: 1983, baseType: !2948, size: 64, offset: 704)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!94, !2871, !126, !164, !130, !330}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !158, file: !22, line: 1985, baseType: !2952, size: 64, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!94, !2871, !126, !164, !126, !164, !7}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !158, file: !22, line: 1987, baseType: !2956, size: 64, offset: 832)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!94, !2871, !164, !2959}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !22, line: 226, size: 640, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2974, !2983, !2984, !2989, !2990, !2991}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2960, file: !22, line: 227, baseType: !7, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2960, file: !22, line: 228, baseType: !130, size: 16, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, scope: !2960, file: !22, line: 241, baseType: !2965, size: 32, offset: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2960, file: !22, line: 241, size: 32, elements: !2966)
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2965, file: !22, line: 242, baseType: !134, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !2965, file: !22, line: 243, baseType: !2969, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !2970, line: 16, baseType: !2971)
!2970 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2970, line: 14, size: 32, elements: !2972)
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2971, file: !2970, line: 15, baseType: !139, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, scope: !2960, file: !22, line: 245, baseType: !2975, size: 32, offset: 96)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2960, file: !22, line: 245, size: 32, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2975, file: !22, line: 246, baseType: !144, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !2975, file: !22, line: 247, baseType: !2979, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !2970, line: 20, baseType: !2980)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2970, line: 18, size: 32, elements: !2981)
!2981 = !{!2982}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2980, file: !2970, line: 19, baseType: !148, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2960, file: !22, line: 249, baseType: !335, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2960, file: !22, line: 250, baseType: !2985, size: 128, offset: 192)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !539, line: 13, size: 128, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2985, file: !539, line: 14, baseType: !538, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2985, file: !539, line: 15, baseType: !464, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2960, file: !22, line: 251, baseType: !2985, size: 128, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2960, file: !22, line: 252, baseType: !2985, size: 128, offset: 448)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2960, file: !22, line: 259, baseType: !1143, size: 64, offset: 576)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !158, file: !22, line: 1988, baseType: !2993, size: 64, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!94, !2871, !607, !2996, !198, !7}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2998, line: 22, size: 1280, elements: !2999)
!2998 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!2999 = !{!3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2997, file: !2998, line: 23, baseType: !198, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2997, file: !2998, line: 24, baseType: !130, size: 16, offset: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2997, file: !2998, line: 25, baseType: !7, size: 32, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2997, file: !2998, line: 26, baseType: !1269, size: 32, offset: 96)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2997, file: !2998, line: 27, baseType: !204, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2997, file: !2998, line: 28, baseType: !204, size: 64, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2997, file: !2998, line: 41, baseType: !204, size: 64, offset: 256)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2997, file: !2998, line: 42, baseType: !330, size: 32, offset: 320)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2997, file: !2998, line: 43, baseType: !330, size: 32, offset: 352)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2997, file: !2998, line: 44, baseType: !134, size: 32, offset: 384)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2997, file: !2998, line: 45, baseType: !144, size: 32, offset: 416)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2997, file: !2998, line: 46, baseType: !335, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2997, file: !2998, line: 47, baseType: !2985, size: 128, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2997, file: !2998, line: 48, baseType: !2985, size: 128, offset: 640)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2997, file: !2998, line: 49, baseType: !2985, size: 128, offset: 768)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2997, file: !2998, line: 50, baseType: !2985, size: 128, offset: 896)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2997, file: !2998, line: 51, baseType: !204, size: 64, offset: 1024)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2997, file: !2998, line: 52, baseType: !204, size: 64, offset: 1088)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !2997, file: !2998, line: 53, baseType: !198, size: 32, offset: 1152)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !2997, file: !2998, line: 54, baseType: !198, size: 32, offset: 1184)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !2997, file: !2998, line: 55, baseType: !204, size: 64, offset: 1216)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !158, file: !22, line: 1990, baseType: !3022, size: 64, offset: 960)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!461, !164, !314, !465}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !158, file: !22, line: 1991, baseType: !3026, size: 64, offset: 1024)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!94, !126, !3029, !204, !204}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !22, line: 55, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !158, file: !22, line: 1993, baseType: !3032, size: 64, offset: 1088)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!94, !126, !94}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !158, file: !22, line: 1994, baseType: !3036, size: 64, offset: 1152)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!94, !126, !164, !1143, !7, !130}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !158, file: !22, line: 1997, baseType: !3040, size: 64, offset: 1216)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!94, !2871, !126, !1143, !130}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !158, file: !22, line: 1999, baseType: !3044, size: 64, offset: 1280)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!152, !2871, !164, !94}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !158, file: !22, line: 2001, baseType: !3048, size: 64, offset: 1344)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!94, !2871, !164, !152, !94}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !158, file: !22, line: 2003, baseType: !3052, size: 64, offset: 1408)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!94, !2871, !164, !3055}
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !22, line: 76, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !158, file: !22, line: 2005, baseType: !3058, size: 64, offset: 1472)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!94, !164, !3055}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !158, file: !22, line: 2006, baseType: !3062, size: 64, offset: 1536)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!3065, !126}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !22, line: 3192, size: 192, elements: !3067)
!3067 = !{!3068, !3075}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3066, file: !22, line: 3193, baseType: !3069, size: 128)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3070, line: 296, size: 128, elements: !3071)
!3070 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3071 = !{!3072, !3073, !3074}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3069, file: !3070, line: 297, baseType: !228, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3069, file: !3070, line: 299, baseType: !92, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3069, file: !3070, line: 300, baseType: !90, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3066, file: !22, line: 3194, baseType: !198, size: 32, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !127, file: !22, line: 655, baseType: !325, size: 64, offset: 448)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !127, file: !22, line: 656, baseType: !122, size: 64, offset: 512)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !127, file: !22, line: 659, baseType: !90, size: 64, offset: 576)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !127, file: !22, line: 663, baseType: !91, size: 64, offset: 640)
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !127, file: !22, line: 671, baseType: !3081, size: 32, offset: 704)
!3081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !22, line: 671, size: 32, elements: !3082)
!3082 = !{!3083, !3085}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3081, file: !22, line: 672, baseType: !3084, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3081, file: !22, line: 673, baseType: !7, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !127, file: !22, line: 675, baseType: !330, size: 32, offset: 736)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !127, file: !22, line: 676, baseType: !335, size: 64, offset: 768)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !127, file: !22, line: 677, baseType: !2985, size: 128, offset: 832)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !127, file: !22, line: 678, baseType: !2985, size: 128, offset: 960)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !127, file: !22, line: 679, baseType: !2985, size: 128, offset: 1088)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !127, file: !22, line: 680, baseType: !228, size: 32, offset: 1216)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !127, file: !22, line: 681, baseType: !131, size: 16, offset: 1248)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !127, file: !22, line: 682, baseType: !256, size: 8, offset: 1264)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !127, file: !22, line: 683, baseType: !256, size: 8, offset: 1272)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !127, file: !22, line: 684, baseType: !685, size: 64, offset: 1280)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !127, file: !22, line: 691, baseType: !91, size: 64, offset: 1344)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !127, file: !22, line: 692, baseType: !697, size: 320, offset: 1408)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !127, file: !22, line: 694, baseType: !91, size: 64, offset: 1728)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !127, file: !22, line: 695, baseType: !91, size: 64, offset: 1792)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !127, file: !22, line: 697, baseType: !372, size: 128, offset: 1856)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !127, file: !22, line: 698, baseType: !109, size: 128, offset: 1984)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !127, file: !22, line: 707, baseType: !109, size: 128, offset: 2112)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !127, file: !22, line: 708, baseType: !109, size: 128, offset: 2240)
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !127, file: !22, line: 709, baseType: !3105, size: 128, offset: 2368)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !22, line: 709, size: 128, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3105, file: !22, line: 710, baseType: !368, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3105, file: !22, line: 711, baseType: !797, size: 128, align: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !127, file: !22, line: 713, baseType: !491, size: 64, offset: 2496)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !127, file: !22, line: 714, baseType: !491, size: 64, offset: 2560)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !127, file: !22, line: 715, baseType: !248, size: 32, offset: 2624)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !127, file: !22, line: 716, baseType: !248, size: 32, offset: 2656)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !127, file: !22, line: 717, baseType: !248, size: 32, offset: 2688)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !127, file: !22, line: 719, baseType: !248, size: 32, offset: 2720)
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !127, file: !22, line: 721, baseType: !3116, size: 64, offset: 2752)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !22, line: 721, size: 64, elements: !3117)
!3117 = !{!3118, !3119}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3116, file: !22, line: 722, baseType: !1418, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3116, file: !22, line: 723, baseType: !401, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !127, file: !22, line: 725, baseType: !3121, size: 64, offset: 2816)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !22, line: 725, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !127, file: !22, line: 726, baseType: !123, size: 1536, align: 64, offset: 2880)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !127, file: !22, line: 727, baseType: !109, size: 128, offset: 4416)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !127, file: !22, line: 728, baseType: !3126, size: 64, offset: 4544)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !22, line: 728, size: 64, elements: !3127)
!3127 = !{!3128, !3129, !3132, !3133}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3126, file: !22, line: 729, baseType: !1695, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3126, file: !22, line: 730, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !22, line: 730, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3126, file: !22, line: 731, baseType: !314, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3126, file: !22, line: 732, baseType: !7, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !127, file: !22, line: 735, baseType: !200, size: 32, offset: 4608)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !127, file: !22, line: 738, baseType: !200, size: 32, offset: 4640)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !127, file: !22, line: 739, baseType: !2806, size: 64, offset: 4672)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !127, file: !22, line: 750, baseType: !90, size: 64, offset: 4736)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !123, file: !22, line: 474, baseType: !3069, size: 128, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !123, file: !22, line: 475, baseType: !697, size: 320, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !123, file: !22, line: 476, baseType: !92, size: 32, offset: 512)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !123, file: !22, line: 477, baseType: !248, size: 32, offset: 544)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !123, file: !22, line: 482, baseType: !999, size: 128, offset: 576)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !123, file: !22, line: 483, baseType: !91, size: 64, offset: 704)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !123, file: !22, line: 484, baseType: !91, size: 64, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !123, file: !22, line: 485, baseType: !3146, size: 64, offset: 832)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3148)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !22, line: 404, size: 1280, elements: !3149)
!3149 = !{!3150, !3154, !3224, !3228, !3232, !3238, !3242, !3246, !3251, !3255, !3259, !3263, !3264, !3268, !3272, !3276, !3281, !3285, !3292, !3293}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3148, file: !22, line: 405, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!94, !95, !413}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3148, file: !22, line: 406, baseType: !3155, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!94, !1143, !3158}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !46, line: 293, size: 1536, elements: !3160)
!3160 = !{!3161, !3191, !3205}
!3161 = !DIDerivedType(tag: DW_TAG_member, scope: !3159, file: !46, line: 295, baseType: !3162, size: 512)
!3162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3159, file: !46, line: 295, size: 512, elements: !3163)
!3163 = !{!3164, !3190}
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3162, file: !46, line: 296, baseType: !3165, size: 448)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !46, line: 296, size: 448, elements: !3166)
!3166 = !{!3167, !3168, !3177, !3178, !3179, !3188, !3189}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3165, file: !46, line: 298, baseType: !91, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !46, line: 299, baseType: !3169, size: 128, offset: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !46, line: 299, size: 128, elements: !3170)
!3170 = !{!3171, !3172}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3169, file: !46, line: 300, baseType: !109, size: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !3169, file: !46, line: 302, baseType: !3173, size: 128)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3169, file: !46, line: 302, size: 128, elements: !3174)
!3174 = !{!3175, !3176}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3173, file: !46, line: 303, baseType: !90, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3173, file: !46, line: 305, baseType: !7, size: 32, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3165, file: !46, line: 310, baseType: !122, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3165, file: !46, line: 311, baseType: !91, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !46, line: 312, baseType: !3180, size: 64, offset: 320)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !46, line: 312, size: 64, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3180, file: !46, line: 313, baseType: !90, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3180, file: !46, line: 314, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !46, line: 257, baseType: !3185)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 255, size: 64, elements: !3186)
!3186 = !{!3187}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3185, file: !46, line: 256, baseType: !91, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3165, file: !46, line: 316, baseType: !248, size: 32, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3165, file: !46, line: 317, baseType: !248, size: 32, offset: 416)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3162, file: !46, line: 323, baseType: !96, size: 512, align: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3159, file: !46, line: 325, baseType: !3192, size: 512, offset: 512)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3159, file: !46, line: 325, size: 512, elements: !3193)
!3193 = !{!3194, !3204}
!3194 = !DIDerivedType(tag: DW_TAG_member, scope: !3192, file: !46, line: 326, baseType: !3195, size: 320)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3192, file: !46, line: 326, size: 320, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3203}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3195, file: !46, line: 327, baseType: !91, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3195, file: !46, line: 328, baseType: !91, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3195, file: !46, line: 329, baseType: !91, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3195, file: !46, line: 331, baseType: !248, size: 32, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3195, file: !46, line: 332, baseType: !248, size: 32, offset: 224)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3195, file: !46, line: 333, baseType: !248, size: 32, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3195, file: !46, line: 335, baseType: !7, size: 32, offset: 288)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3192, file: !46, line: 339, baseType: !96, size: 512, align: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3159, file: !46, line: 341, baseType: !3206, size: 512, offset: 1024)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3159, file: !46, line: 341, size: 512, elements: !3207)
!3207 = !{!3208, !3217, !3223}
!3208 = !DIDerivedType(tag: DW_TAG_member, scope: !3206, file: !46, line: 342, baseType: !3209, size: 384)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3206, file: !46, line: 342, size: 384, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3209, file: !46, line: 343, baseType: !91, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3209, file: !46, line: 344, baseType: !91, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3209, file: !46, line: 346, baseType: !90, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3209, file: !46, line: 347, baseType: !90, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3209, file: !46, line: 348, baseType: !90, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3209, file: !46, line: 349, baseType: !90, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3206, file: !46, line: 352, baseType: !3218, size: 256)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3206, file: !46, line: 352, size: 256, elements: !3219)
!3219 = !{!3220, !3221, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3218, file: !46, line: 353, baseType: !91, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3218, file: !46, line: 354, baseType: !91, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3218, file: !46, line: 356, baseType: !109, size: 128, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3206, file: !46, line: 359, baseType: !96, size: 512, align: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3148, file: !22, line: 409, baseType: !3225, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!94, !122, !413}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3148, file: !22, line: 412, baseType: !3229, size: 64, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!1304, !122, !3158}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3148, file: !22, line: 414, baseType: !3233, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !22, line: 310, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3148, file: !22, line: 416, baseType: !3239, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!94, !1143, !122, !335, !7, !2553, !1710}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3148, file: !22, line: 419, baseType: !3243, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!94, !1143, !122, !335, !7, !7, !95, !90}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3148, file: !22, line: 424, baseType: !3247, size: 64, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!3250, !122, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !93, line: 131, baseType: !204)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3148, file: !22, line: 425, baseType: !3252, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !3158, !465, !465}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3148, file: !22, line: 426, baseType: !3256, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!1304, !3158, !92}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3148, file: !22, line: 427, baseType: !3260, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !3158}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3148, file: !22, line: 428, baseType: !1437, size: 64, offset: 704)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3148, file: !22, line: 433, baseType: !3265, size: 64, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!94, !122, !3158, !3158, !74}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3148, file: !22, line: 435, baseType: !3269, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!94, !3158}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3148, file: !22, line: 436, baseType: !3273, size: 64, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!1304, !3158, !465, !465}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3148, file: !22, line: 438, baseType: !3277, size: 64, offset: 960)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3158, !3280, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3148, file: !22, line: 439, baseType: !3282, size: 64, offset: 1024)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!94, !122, !95}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3148, file: !22, line: 442, baseType: !3286, size: 64, offset: 1088)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!94, !3289, !1143, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !22, line: 66, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3148, file: !22, line: 444, baseType: !1702, size: 64, offset: 1152)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3148, file: !22, line: 445, baseType: !3294, size: 64, offset: 1216)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!94, !1440, !1462}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !22, line: 486, baseType: !91, size: 64, offset: 896)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !123, file: !22, line: 487, baseType: !697, size: 320, offset: 960)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !123, file: !22, line: 488, baseType: !1745, size: 32, offset: 1280)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !123, file: !22, line: 489, baseType: !228, size: 32, offset: 1312)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !123, file: !22, line: 490, baseType: !109, size: 128, offset: 1344)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !123, file: !22, line: 491, baseType: !90, size: 64, offset: 1472)
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !46, line: 107, baseType: !3304, size: 64, offset: 192)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !46, line: 107, size: 64, elements: !3305)
!3305 = !{!3306, !3307}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3304, file: !46, line: 108, baseType: !91, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3304, file: !46, line: 109, baseType: !91, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !103, file: !46, line: 117, baseType: !91, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !46, line: 119, baseType: !3310, size: 320)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !46, line: 119, size: 320, elements: !3311)
!3311 = !{!3312, !3313, !3316, !3317, !3318}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3310, file: !46, line: 124, baseType: !91, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3310, file: !46, line: 125, baseType: !3314, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !46, line: 125, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3310, file: !46, line: 126, baseType: !91, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3310, file: !46, line: 127, baseType: !91, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, scope: !3310, file: !46, line: 128, baseType: !3319, size: 64, offset: 256)
!3319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3310, file: !46, line: 128, size: 64, elements: !3320)
!3320 = !{!3321, !3322}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3319, file: !46, line: 133, baseType: !91, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3319, file: !46, line: 138, baseType: !489, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !46, line: 141, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !46, line: 141, size: 64, elements: !3325)
!3325 = !{!3326}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3324, file: !46, line: 142, baseType: !91, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !46, line: 144, baseType: !3328, size: 128)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !46, line: 144, size: 128, elements: !3329)
!3329 = !{!3330, !3401}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3328, file: !46, line: 146, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !82, line: 126, size: 1216, elements: !3333)
!3333 = !{!3334, !3344, !3365, !3366, !3367, !3368, !3369, !3383, !3384, !3385}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3332, file: !82, line: 127, baseType: !3335, size: 384)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !82, line: 21, size: 384, elements: !3336)
!3336 = !{!3337, !3338, !3340, !3341, !3342, !3343}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3335, file: !82, line: 22, baseType: !91, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3335, file: !82, line: 23, baseType: !3339, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3335, file: !82, line: 24, baseType: !3339, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3335, file: !82, line: 25, baseType: !91, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3335, file: !82, line: 26, baseType: !91, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3335, file: !82, line: 27, baseType: !91, size: 64, offset: 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3332, file: !82, line: 128, baseType: !3345, size: 128, offset: 384)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3346, line: 105, size: 128, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3347 = !{!3348, !3349}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3345, file: !3346, line: 110, baseType: !91, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3345, file: !3346, line: 118, baseType: !3350, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3346, line: 95, size: 448, elements: !3352)
!3352 = !{!3353, !3354, !3360, !3361, !3362, !3363, !3364}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3351, file: !3346, line: 96, baseType: !489, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3351, file: !3346, line: 97, baseType: !3355, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3346, line: 60, baseType: !3357)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{null, !3359}
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3351, file: !3346, line: 98, baseType: !3355, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3351, file: !3346, line: 99, baseType: !1304, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3351, file: !3346, line: 100, baseType: !1304, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3351, file: !3346, line: 101, baseType: !797, size: 128, align: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3351, file: !3346, line: 102, baseType: !3359, size: 64, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3332, file: !82, line: 129, baseType: !1961, size: 256, offset: 512)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3332, file: !82, line: 130, baseType: !81, size: 32, offset: 768)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3332, file: !82, line: 131, baseType: !7, size: 32, offset: 800)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3332, file: !82, line: 132, baseType: !91, size: 64, offset: 832)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3332, file: !82, line: 133, baseType: !3370, size: 64, offset: 896)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3372)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !82, line: 77, size: 192, elements: !3373)
!3373 = !{!3374, !3378, !3379}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3372, file: !82, line: 83, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{null, !95}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3372, file: !82, line: 89, baseType: !1569, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3372, file: !82, line: 100, baseType: !3380, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!94, !3331, !91, !91, !94}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3332, file: !82, line: 134, baseType: !90, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3332, file: !82, line: 135, baseType: !94, size: 32, offset: 1024)
!3385 = !DIDerivedType(tag: DW_TAG_member, scope: !3332, file: !82, line: 136, baseType: !3386, size: 128, offset: 1088)
!3386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3332, file: !82, line: 136, size: 128, elements: !3387)
!3387 = !{!3388, !3394}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3386, file: !82, line: 137, baseType: !3389, size: 128)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3390, line: 6, size: 128, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3389, file: !3390, line: 7, baseType: !204, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3389, file: !3390, line: 8, baseType: !204, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !82, line: 138, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3386, file: !82, line: 138, elements: !3396)
!3396 = !{!3397, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3395, file: !82, line: 138, baseType: !3398)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3395, file: !82, line: 138, elements: !380)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3395, file: !82, line: 138, baseType: !3400)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3389, elements: !1205)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3328, file: !46, line: 147, baseType: !90, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !100, file: !46, line: 161, baseType: !797, size: 128, align: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !46, line: 164, baseType: !3404, size: 32, offset: 384)
!3404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !96, file: !46, line: 164, size: 32, elements: !3405)
!3405 = !{!3406, !3407}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3404, file: !46, line: 169, baseType: !248, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3404, file: !46, line: 177, baseType: !7, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !96, file: !46, line: 181, baseType: !248, size: 32, offset: 416)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !93, line: 149, baseType: !204)
!3410 = !{!0, !3411, !3413, !3415, !3417, !3419, !3421, !3423, !3425, !3427, !3429, !3431, !3433, !3435, !3437, !3439, !3441, !3443, !3445, !3448, !3450, !3452, !3454, !3456, !3461, !3467}
!3411 = !DIGlobalVariableExpression(var: !3412, expr: !DIExpression())
!3412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_free278", scope: !2, file: !3, line: 64, type: !90, isLocal: true, isDefinition: true)
!3413 = !DIGlobalVariableExpression(var: !3414, expr: !DIExpression())
!3414 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_init279", scope: !2, file: !3, line: 87, type: !90, isLocal: true, isDefinition: true)
!3415 = !DIGlobalVariableExpression(var: !3416, expr: !DIExpression())
!3416 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_in282", scope: !2, file: !3, line: 126, type: !90, isLocal: true, isDefinition: true)
!3417 = !DIGlobalVariableExpression(var: !3418, expr: !DIExpression())
!3418 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_out_peek285", scope: !2, file: !3, line: 164, type: !90, isLocal: true, isDefinition: true)
!3419 = !DIGlobalVariableExpression(var: !3420, expr: !DIExpression())
!3420 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_out286", scope: !2, file: !3, line: 173, type: !90, isLocal: true, isDefinition: true)
!3421 = !DIGlobalVariableExpression(var: !3422, expr: !DIExpression())
!3422 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_from_user289", scope: !2, file: !3, line: 234, type: !90, isLocal: true, isDefinition: true)
!3423 = !DIGlobalVariableExpression(var: !3424, expr: !DIExpression())
!3424 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_to_user292", scope: !2, file: !3, line: 293, type: !90, isLocal: true, isDefinition: true)
!3425 = !DIGlobalVariableExpression(var: !3426, expr: !DIExpression())
!3426 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_dma_in_prepare295", scope: !2, file: !3, line: 367, type: !90, isLocal: true, isDefinition: true)
!3427 = !DIGlobalVariableExpression(var: !3428, expr: !DIExpression())
!3428 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_dma_out_prepare296", scope: !2, file: !3, line: 380, type: !90, isLocal: true, isDefinition: true)
!3429 = !DIGlobalVariableExpression(var: !3430, expr: !DIExpression())
!3430 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_max_r297", scope: !2, file: !3, line: 390, type: !90, isLocal: true, isDefinition: true)
!3431 = !DIGlobalVariableExpression(var: !3432, expr: !DIExpression())
!3432 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_len_r298", scope: !2, file: !3, line: 436, type: !90, isLocal: true, isDefinition: true)
!3433 = !DIGlobalVariableExpression(var: !3434, expr: !DIExpression())
!3434 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_in_r299", scope: !2, file: !3, line: 450, type: !90, isLocal: true, isDefinition: true)
!3435 = !DIGlobalVariableExpression(var: !3436, expr: !DIExpression())
!3436 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_out_peek_r300", scope: !2, file: !3, line: 474, type: !90, isLocal: true, isDefinition: true)
!3437 = !DIGlobalVariableExpression(var: !3438, expr: !DIExpression())
!3438 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_out_r301", scope: !2, file: !3, line: 488, type: !90, isLocal: true, isDefinition: true)
!3439 = !DIGlobalVariableExpression(var: !3440, expr: !DIExpression())
!3440 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_skip_r302", scope: !2, file: !3, line: 497, type: !90, isLocal: true, isDefinition: true)
!3441 = !DIGlobalVariableExpression(var: !3442, expr: !DIExpression())
!3442 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_from_user_r303", scope: !2, file: !3, line: 521, type: !90, isLocal: true, isDefinition: true)
!3443 = !DIGlobalVariableExpression(var: !3444, expr: !DIExpression())
!3444 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_to_user_r304", scope: !2, file: !3, line: 546, type: !90, isLocal: true, isDefinition: true)
!3445 = !DIGlobalVariableExpression(var: !3446, expr: !DIExpression())
!3446 = distinct !DIGlobalVariable(scope: null, file: !3, line: 551, type: !3447, isLocal: true, isDefinition: true)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 96, elements: !2688)
!3448 = !DIGlobalVariableExpression(var: !3449, expr: !DIExpression())
!3449 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_dma_in_prepare_r305", scope: !2, file: !3, line: 560, type: !90, isLocal: true, isDefinition: true)
!3450 = !DIGlobalVariableExpression(var: !3451, expr: !DIExpression())
!3451 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_dma_in_finish_r306", scope: !2, file: !3, line: 569, type: !90, isLocal: true, isDefinition: true)
!3452 = !DIGlobalVariableExpression(var: !3453, expr: !DIExpression())
!3453 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_dma_out_prepare_r307", scope: !2, file: !3, line: 583, type: !90, isLocal: true, isDefinition: true)
!3454 = !DIGlobalVariableExpression(var: !3455, expr: !DIExpression())
!3455 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___kfifo_dma_out_finish_r308", scope: !2, file: !3, line: 592, type: !90, isLocal: true, isDefinition: true)
!3456 = !DIGlobalVariableExpression(var: !3457, expr: !DIExpression())
!3457 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !3458, isLocal: true, isDefinition: true)
!3458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 168, elements: !3459)
!3459 = !{!3460}
!3460 = !DISubrange(count: 21)
!3461 = !DIGlobalVariableExpression(var: !3462, expr: !DIExpression())
!3462 = distinct !DIGlobalVariable(scope: null, file: !3463, line: 249, type: !3464, isLocal: true, isDefinition: true)
!3463 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 224, elements: !3465)
!3465 = !{!3466}
!3466 = !DISubrange(count: 28)
!3467 = !DIGlobalVariableExpression(var: !3468, expr: !DIExpression())
!3468 = distinct !DIGlobalVariable(scope: null, file: !3469, line: 115, type: !3464, isLocal: true, isDefinition: true)
!3469 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!3470 = !{i32 7, !"Dwarf Version", i32 5}
!3471 = !{i32 2, !"Debug Info Version", i32 3}
!3472 = !{i32 1, !"wchar_size", i32 2}
!3473 = !{i32 8, !"cf-protection-branch", i32 1}
!3474 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3475 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3476 = !{i32 1, !"Code Model", i32 2}
!3477 = !{i32 1, !"override-stack-alignment", i32 8}
!3478 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3479 = distinct !DISubprogram(name: "__kfifo_alloc", scope: !3, file: !3, line: 24, type: !3480, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3491)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!94, !3482, !7, !465, !92}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !3484, line: 44, size: 192, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!3485 = !{!3486, !3487, !3488, !3489, !3490}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !3483, file: !3484, line: 45, baseType: !7, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !3483, file: !3484, line: 46, baseType: !7, size: 32, offset: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3483, file: !3484, line: 47, baseType: !7, size: 32, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !3483, file: !3484, line: 48, baseType: !7, size: 32, offset: 96)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3483, file: !3484, line: 49, baseType: !90, size: 64, offset: 128)
!3491 = !{!3492, !3493, !3494, !3495}
!3492 = !DILocalVariable(name: "fifo", arg: 1, scope: !3479, file: !3, line: 24, type: !3482)
!3493 = !DILocalVariable(name: "size", arg: 2, scope: !3479, file: !3, line: 24, type: !7)
!3494 = !DILocalVariable(name: "esize", arg: 3, scope: !3479, file: !3, line: 25, type: !465)
!3495 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !3479, file: !3, line: 25, type: !92)
!3496 = !DILocation(line: 24, column: 35, scope: !3479)
!3497 = !DILocation(line: 24, column: 54, scope: !3479)
!3498 = !DILocation(line: 25, column: 10, scope: !3479)
!3499 = !DILocation(line: 25, column: 23, scope: !3479)
!3500 = !DILocation(line: 31, column: 9, scope: !3479)
!3501 = !DILocation(line: 31, column: 7, scope: !3479)
!3502 = !DILocation(line: 33, column: 2, scope: !3479)
!3503 = !DILocation(line: 33, column: 8, scope: !3479)
!3504 = !DILocation(line: 33, column: 11, scope: !3479)
!3505 = !DILocation(line: 34, column: 2, scope: !3479)
!3506 = !DILocation(line: 34, column: 8, scope: !3479)
!3507 = !DILocation(line: 34, column: 12, scope: !3479)
!3508 = !DILocation(line: 35, column: 16, scope: !3479)
!3509 = !DILocation(line: 35, column: 2, scope: !3479)
!3510 = !DILocation(line: 35, column: 8, scope: !3479)
!3511 = !DILocation(line: 35, column: 14, scope: !3479)
!3512 = !DILocation(line: 37, column: 6, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 37, column: 6)
!3514 = !DILocation(line: 37, column: 11, scope: !3513)
!3515 = !DILocation(line: 37, column: 6, scope: !3479)
!3516 = !DILocation(line: 38, column: 3, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 37, column: 16)
!3518 = !DILocation(line: 38, column: 9, scope: !3517)
!3519 = !DILocation(line: 38, column: 14, scope: !3517)
!3520 = !DILocation(line: 39, column: 3, scope: !3517)
!3521 = !DILocation(line: 39, column: 9, scope: !3517)
!3522 = !DILocation(line: 39, column: 14, scope: !3517)
!3523 = !DILocation(line: 40, column: 3, scope: !3517)
!3524 = !DILocation(line: 43, column: 29, scope: !3479)
!3525 = !DILocation(line: 43, column: 36, scope: !3479)
!3526 = !DILocation(line: 43, column: 42, scope: !3479)
!3527 = !DILocation(line: 43, column: 15, scope: !3479)
!3528 = !DILocation(line: 43, column: 2, scope: !3479)
!3529 = !DILocation(line: 43, column: 8, scope: !3479)
!3530 = !DILocation(line: 43, column: 13, scope: !3479)
!3531 = !DILocation(line: 45, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 45, column: 6)
!3533 = !DILocation(line: 45, column: 13, scope: !3532)
!3534 = !DILocation(line: 45, column: 6, scope: !3479)
!3535 = !DILocation(line: 46, column: 3, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 45, column: 19)
!3537 = !DILocation(line: 46, column: 9, scope: !3536)
!3538 = !DILocation(line: 46, column: 14, scope: !3536)
!3539 = !DILocation(line: 47, column: 3, scope: !3536)
!3540 = !DILocation(line: 49, column: 15, scope: !3479)
!3541 = !DILocation(line: 49, column: 20, scope: !3479)
!3542 = !DILocation(line: 49, column: 2, scope: !3479)
!3543 = !DILocation(line: 49, column: 8, scope: !3479)
!3544 = !DILocation(line: 49, column: 13, scope: !3479)
!3545 = !DILocation(line: 51, column: 2, scope: !3479)
!3546 = !DILocation(line: 52, column: 1, scope: !3479)
!3547 = distinct !DISubprogram(name: "__ilog2_u32", scope: !3548, file: !3548, line: 22, type: !3549, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3551)
!3548 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!94, !198}
!3551 = !{!3552}
!3552 = !DILocalVariable(name: "n", arg: 1, scope: !3547, file: !3548, line: 22, type: !198)
!3553 = !DILocation(line: 22, column: 21, scope: !3547)
!3554 = !DILocation(line: 24, column: 13, scope: !3547)
!3555 = !DILocation(line: 24, column: 9, scope: !3547)
!3556 = !DILocation(line: 24, column: 16, scope: !3547)
!3557 = !DILocation(line: 24, column: 2, scope: !3547)
!3558 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !3548, file: !3548, line: 55, type: !3559, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!91, !91}
!3561 = !{!3562}
!3562 = !DILocalVariable(name: "n", arg: 1, scope: !3558, file: !3548, line: 55, type: !91)
!3563 = !DILocation(line: 55, column: 50, scope: !3558)
!3564 = !DILocation(line: 57, column: 25, scope: !3558)
!3565 = !DILocation(line: 57, column: 27, scope: !3558)
!3566 = !DILocation(line: 57, column: 16, scope: !3558)
!3567 = !DILocation(line: 57, column: 13, scope: !3558)
!3568 = !DILocation(line: 57, column: 2, scope: !3558)
!3569 = distinct !DISubprogram(name: "kmalloc_array", scope: !12, file: !12, line: 629, type: !3570, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3572)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!90, !465, !465, !92}
!3572 = !{!3573, !3574, !3575, !3576}
!3573 = !DILocalVariable(name: "n", arg: 1, scope: !3569, file: !12, line: 629, type: !465)
!3574 = !DILocalVariable(name: "size", arg: 2, scope: !3569, file: !12, line: 629, type: !465)
!3575 = !DILocalVariable(name: "flags", arg: 3, scope: !3569, file: !12, line: 629, type: !92)
!3576 = !DILocalVariable(name: "bytes", scope: !3569, file: !12, line: 631, type: !465)
!3577 = !DILocation(line: 629, column: 61, scope: !3569)
!3578 = !DILocation(line: 629, column: 71, scope: !3569)
!3579 = !DILocation(line: 629, column: 83, scope: !3569)
!3580 = !DILocation(line: 631, column: 2, scope: !3569)
!3581 = !DILocation(line: 631, column: 9, scope: !3569)
!3582 = !DILocation(line: 633, column: 6, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3569, file: !12, line: 633, column: 6)
!3584 = !DILocation(line: 633, column: 6, scope: !3569)
!3585 = !DILocation(line: 634, column: 3, scope: !3583)
!3586 = !DILocation(line: 635, column: 27, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3569, file: !12, line: 635, column: 6)
!3588 = !DILocation(line: 635, column: 6, scope: !3587)
!3589 = !DILocation(line: 635, column: 30, scope: !3587)
!3590 = !DILocation(line: 635, column: 54, scope: !3587)
!3591 = !DILocation(line: 635, column: 33, scope: !3587)
!3592 = !DILocation(line: 635, column: 6, scope: !3569)
!3593 = !DILocation(line: 636, column: 18, scope: !3587)
!3594 = !DILocation(line: 636, column: 25, scope: !3587)
!3595 = !DILocation(line: 636, column: 10, scope: !3587)
!3596 = !DILocation(line: 636, column: 3, scope: !3587)
!3597 = !DILocation(line: 637, column: 19, scope: !3569)
!3598 = !DILocation(line: 637, column: 26, scope: !3569)
!3599 = !DILocation(line: 637, column: 9, scope: !3569)
!3600 = !DILocation(line: 637, column: 2, scope: !3569)
!3601 = !DILocation(line: 638, column: 1, scope: !3569)
!3602 = distinct !DISubprogram(name: "__kfifo_free", scope: !3, file: !3, line: 55, type: !3603, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !3482}
!3605 = !{!3606}
!3606 = !DILocalVariable(name: "fifo", arg: 1, scope: !3602, file: !3, line: 55, type: !3482)
!3607 = !DILocation(line: 55, column: 35, scope: !3602)
!3608 = !DILocation(line: 57, column: 8, scope: !3602)
!3609 = !DILocation(line: 57, column: 14, scope: !3602)
!3610 = !DILocation(line: 57, column: 2, scope: !3602)
!3611 = !DILocation(line: 58, column: 2, scope: !3602)
!3612 = !DILocation(line: 58, column: 8, scope: !3602)
!3613 = !DILocation(line: 58, column: 11, scope: !3602)
!3614 = !DILocation(line: 59, column: 2, scope: !3602)
!3615 = !DILocation(line: 59, column: 8, scope: !3602)
!3616 = !DILocation(line: 59, column: 12, scope: !3602)
!3617 = !DILocation(line: 60, column: 2, scope: !3602)
!3618 = !DILocation(line: 60, column: 8, scope: !3602)
!3619 = !DILocation(line: 60, column: 14, scope: !3602)
!3620 = !DILocation(line: 61, column: 2, scope: !3602)
!3621 = !DILocation(line: 61, column: 8, scope: !3602)
!3622 = !DILocation(line: 61, column: 13, scope: !3602)
!3623 = !DILocation(line: 62, column: 2, scope: !3602)
!3624 = !DILocation(line: 62, column: 8, scope: !3602)
!3625 = !DILocation(line: 62, column: 13, scope: !3602)
!3626 = !DILocation(line: 63, column: 1, scope: !3602)
!3627 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !3628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !2559}
!3630 = distinct !DISubprogram(name: "__kfifo_init", scope: !3, file: !3, line: 66, type: !3631, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3633)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!94, !3482, !90, !7, !465}
!3633 = !{!3634, !3635, !3636, !3637}
!3634 = !DILocalVariable(name: "fifo", arg: 1, scope: !3630, file: !3, line: 66, type: !3482)
!3635 = !DILocalVariable(name: "buffer", arg: 2, scope: !3630, file: !3, line: 66, type: !90)
!3636 = !DILocalVariable(name: "size", arg: 3, scope: !3630, file: !3, line: 67, type: !7)
!3637 = !DILocalVariable(name: "esize", arg: 4, scope: !3630, file: !3, line: 67, type: !465)
!3638 = !DILocation(line: 66, column: 34, scope: !3630)
!3639 = !DILocation(line: 66, column: 46, scope: !3630)
!3640 = !DILocation(line: 67, column: 16, scope: !3630)
!3641 = !DILocation(line: 67, column: 29, scope: !3630)
!3642 = !DILocation(line: 69, column: 10, scope: !3630)
!3643 = !DILocation(line: 69, column: 7, scope: !3630)
!3644 = !DILocation(line: 71, column: 21, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 71, column: 6)
!3646 = !DILocation(line: 71, column: 7, scope: !3645)
!3647 = !DILocation(line: 71, column: 6, scope: !3630)
!3648 = !DILocation(line: 72, column: 10, scope: !3645)
!3649 = !DILocation(line: 72, column: 8, scope: !3645)
!3650 = !DILocation(line: 72, column: 3, scope: !3645)
!3651 = !DILocation(line: 74, column: 2, scope: !3630)
!3652 = !DILocation(line: 74, column: 8, scope: !3630)
!3653 = !DILocation(line: 74, column: 11, scope: !3630)
!3654 = !DILocation(line: 75, column: 2, scope: !3630)
!3655 = !DILocation(line: 75, column: 8, scope: !3630)
!3656 = !DILocation(line: 75, column: 12, scope: !3630)
!3657 = !DILocation(line: 76, column: 16, scope: !3630)
!3658 = !DILocation(line: 76, column: 2, scope: !3630)
!3659 = !DILocation(line: 76, column: 8, scope: !3630)
!3660 = !DILocation(line: 76, column: 14, scope: !3630)
!3661 = !DILocation(line: 77, column: 15, scope: !3630)
!3662 = !DILocation(line: 77, column: 2, scope: !3630)
!3663 = !DILocation(line: 77, column: 8, scope: !3630)
!3664 = !DILocation(line: 77, column: 13, scope: !3630)
!3665 = !DILocation(line: 79, column: 6, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 79, column: 6)
!3667 = !DILocation(line: 79, column: 11, scope: !3666)
!3668 = !DILocation(line: 79, column: 6, scope: !3630)
!3669 = !DILocation(line: 80, column: 3, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 79, column: 16)
!3671 = !DILocation(line: 80, column: 9, scope: !3670)
!3672 = !DILocation(line: 80, column: 14, scope: !3670)
!3673 = !DILocation(line: 81, column: 3, scope: !3670)
!3674 = !DILocation(line: 83, column: 15, scope: !3630)
!3675 = !DILocation(line: 83, column: 20, scope: !3630)
!3676 = !DILocation(line: 83, column: 2, scope: !3630)
!3677 = !DILocation(line: 83, column: 8, scope: !3630)
!3678 = !DILocation(line: 83, column: 13, scope: !3630)
!3679 = !DILocation(line: 85, column: 2, scope: !3630)
!3680 = !DILocation(line: 86, column: 1, scope: !3630)
!3681 = distinct !DISubprogram(name: "is_power_of_2", scope: !3548, file: !3548, line: 45, type: !3682, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!1304, !91}
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "n", arg: 1, scope: !3681, file: !3548, line: 45, type: !91)
!3686 = !DILocation(line: 45, column: 34, scope: !3681)
!3687 = !DILocation(line: 47, column: 10, scope: !3681)
!3688 = !DILocation(line: 47, column: 12, scope: !3681)
!3689 = !DILocation(line: 47, column: 17, scope: !3681)
!3690 = !DILocation(line: 47, column: 22, scope: !3681)
!3691 = !DILocation(line: 47, column: 27, scope: !3681)
!3692 = !DILocation(line: 47, column: 29, scope: !3681)
!3693 = !DILocation(line: 47, column: 24, scope: !3681)
!3694 = !DILocation(line: 47, column: 35, scope: !3681)
!3695 = !DILocation(line: 0, scope: !3681)
!3696 = !DILocation(line: 47, column: 2, scope: !3681)
!3697 = distinct !DISubprogram(name: "__rounddown_pow_of_two", scope: !3548, file: !3548, line: 65, type: !3559, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3698)
!3698 = !{!3699}
!3699 = !DILocalVariable(name: "n", arg: 1, scope: !3697, file: !3548, line: 65, type: !91)
!3700 = !DILocation(line: 65, column: 52, scope: !3697)
!3701 = !DILocation(line: 67, column: 26, scope: !3697)
!3702 = !DILocation(line: 67, column: 17, scope: !3697)
!3703 = !DILocation(line: 67, column: 29, scope: !3697)
!3704 = !DILocation(line: 67, column: 13, scope: !3697)
!3705 = !DILocation(line: 67, column: 2, scope: !3697)
!3706 = distinct !DISubprogram(name: "__kfifo_in", scope: !3, file: !3, line: 113, type: !3707, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!7, !3482, !2559, !7}
!3709 = !{!3710, !3711, !3712, !3713}
!3710 = !DILocalVariable(name: "fifo", arg: 1, scope: !3706, file: !3, line: 113, type: !3482)
!3711 = !DILocalVariable(name: "buf", arg: 2, scope: !3706, file: !3, line: 114, type: !2559)
!3712 = !DILocalVariable(name: "len", arg: 3, scope: !3706, file: !3, line: 114, type: !7)
!3713 = !DILocalVariable(name: "l", scope: !3706, file: !3, line: 116, type: !7)
!3714 = !DILocation(line: 113, column: 41, scope: !3706)
!3715 = !DILocation(line: 114, column: 15, scope: !3706)
!3716 = !DILocation(line: 114, column: 33, scope: !3706)
!3717 = !DILocation(line: 116, column: 2, scope: !3706)
!3718 = !DILocation(line: 116, column: 15, scope: !3706)
!3719 = !DILocation(line: 118, column: 19, scope: !3706)
!3720 = !DILocation(line: 118, column: 6, scope: !3706)
!3721 = !DILocation(line: 118, column: 4, scope: !3706)
!3722 = !DILocation(line: 119, column: 6, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 119, column: 6)
!3724 = !DILocation(line: 119, column: 12, scope: !3723)
!3725 = !DILocation(line: 119, column: 10, scope: !3723)
!3726 = !DILocation(line: 119, column: 6, scope: !3706)
!3727 = !DILocation(line: 120, column: 9, scope: !3723)
!3728 = !DILocation(line: 120, column: 7, scope: !3723)
!3729 = !DILocation(line: 120, column: 3, scope: !3723)
!3730 = !DILocation(line: 122, column: 16, scope: !3706)
!3731 = !DILocation(line: 122, column: 22, scope: !3706)
!3732 = !DILocation(line: 122, column: 27, scope: !3706)
!3733 = !DILocation(line: 122, column: 32, scope: !3706)
!3734 = !DILocation(line: 122, column: 38, scope: !3706)
!3735 = !DILocation(line: 122, column: 2, scope: !3706)
!3736 = !DILocation(line: 123, column: 14, scope: !3706)
!3737 = !DILocation(line: 123, column: 2, scope: !3706)
!3738 = !DILocation(line: 123, column: 8, scope: !3706)
!3739 = !DILocation(line: 123, column: 11, scope: !3706)
!3740 = !DILocation(line: 124, column: 9, scope: !3706)
!3741 = !DILocation(line: 125, column: 1, scope: !3706)
!3742 = !DILocation(line: 124, column: 2, scope: !3706)
!3743 = distinct !DISubprogram(name: "kfifo_unused", scope: !3, file: !3, line: 19, type: !3744, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!7, !3482}
!3746 = !{!3747}
!3747 = !DILocalVariable(name: "fifo", arg: 1, scope: !3743, file: !3, line: 19, type: !3482)
!3748 = !DILocation(line: 19, column: 57, scope: !3743)
!3749 = !DILocation(line: 21, column: 10, scope: !3743)
!3750 = !DILocation(line: 21, column: 16, scope: !3743)
!3751 = !DILocation(line: 21, column: 21, scope: !3743)
!3752 = !DILocation(line: 21, column: 29, scope: !3743)
!3753 = !DILocation(line: 21, column: 35, scope: !3743)
!3754 = !DILocation(line: 21, column: 40, scope: !3743)
!3755 = !DILocation(line: 21, column: 46, scope: !3743)
!3756 = !DILocation(line: 21, column: 38, scope: !3743)
!3757 = !DILocation(line: 21, column: 26, scope: !3743)
!3758 = !DILocation(line: 21, column: 2, scope: !3743)
!3759 = distinct !DISubprogram(name: "kfifo_copy_in", scope: !3, file: !3, line: 89, type: !3760, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3482, !2559, !7, !7}
!3762 = !{!3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3772}
!3763 = !DILocalVariable(name: "fifo", arg: 1, scope: !3759, file: !3, line: 89, type: !3482)
!3764 = !DILocalVariable(name: "src", arg: 2, scope: !3759, file: !3, line: 89, type: !2559)
!3765 = !DILocalVariable(name: "len", arg: 3, scope: !3759, file: !3, line: 90, type: !7)
!3766 = !DILocalVariable(name: "off", arg: 4, scope: !3759, file: !3, line: 90, type: !7)
!3767 = !DILocalVariable(name: "size", scope: !3759, file: !3, line: 92, type: !7)
!3768 = !DILocalVariable(name: "esize", scope: !3759, file: !3, line: 93, type: !7)
!3769 = !DILocalVariable(name: "l", scope: !3759, file: !3, line: 94, type: !7)
!3770 = !DILocalVariable(name: "__UNIQUE_ID___x280", scope: !3771, file: !3, line: 102, type: !7)
!3771 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 102, column: 6)
!3772 = !DILocalVariable(name: "__UNIQUE_ID___y281", scope: !3771, file: !3, line: 102, type: !7)
!3773 = !DILocation(line: 89, column: 43, scope: !3759)
!3774 = !DILocation(line: 89, column: 61, scope: !3759)
!3775 = !DILocation(line: 90, column: 16, scope: !3759)
!3776 = !DILocation(line: 90, column: 34, scope: !3759)
!3777 = !DILocation(line: 92, column: 2, scope: !3759)
!3778 = !DILocation(line: 92, column: 15, scope: !3759)
!3779 = !DILocation(line: 92, column: 22, scope: !3759)
!3780 = !DILocation(line: 92, column: 28, scope: !3759)
!3781 = !DILocation(line: 92, column: 33, scope: !3759)
!3782 = !DILocation(line: 93, column: 2, scope: !3759)
!3783 = !DILocation(line: 93, column: 15, scope: !3759)
!3784 = !DILocation(line: 93, column: 23, scope: !3759)
!3785 = !DILocation(line: 93, column: 29, scope: !3759)
!3786 = !DILocation(line: 94, column: 2, scope: !3759)
!3787 = !DILocation(line: 94, column: 15, scope: !3759)
!3788 = !DILocation(line: 96, column: 9, scope: !3759)
!3789 = !DILocation(line: 96, column: 15, scope: !3759)
!3790 = !DILocation(line: 96, column: 6, scope: !3759)
!3791 = !DILocation(line: 97, column: 6, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 97, column: 6)
!3793 = !DILocation(line: 97, column: 12, scope: !3792)
!3794 = !DILocation(line: 97, column: 6, scope: !3759)
!3795 = !DILocation(line: 98, column: 10, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3792, file: !3, line: 97, column: 18)
!3797 = !DILocation(line: 98, column: 7, scope: !3796)
!3798 = !DILocation(line: 99, column: 11, scope: !3796)
!3799 = !DILocation(line: 99, column: 8, scope: !3796)
!3800 = !DILocation(line: 100, column: 10, scope: !3796)
!3801 = !DILocation(line: 100, column: 7, scope: !3796)
!3802 = !DILocation(line: 101, column: 2, scope: !3796)
!3803 = !DILocation(line: 102, column: 6, scope: !3771)
!3804 = !DILocation(line: 102, column: 6, scope: !3759)
!3805 = !DILocation(line: 102, column: 4, scope: !3759)
!3806 = !DILocation(line: 104, column: 9, scope: !3759)
!3807 = !DILocation(line: 104, column: 15, scope: !3759)
!3808 = !DILocation(line: 104, column: 22, scope: !3759)
!3809 = !DILocation(line: 104, column: 20, scope: !3759)
!3810 = !DILocation(line: 104, column: 27, scope: !3759)
!3811 = !DILocation(line: 104, column: 32, scope: !3759)
!3812 = !DILocation(line: 104, column: 2, scope: !3759)
!3813 = !DILocation(line: 105, column: 9, scope: !3759)
!3814 = !DILocation(line: 105, column: 15, scope: !3759)
!3815 = !DILocation(line: 105, column: 21, scope: !3759)
!3816 = !DILocation(line: 105, column: 27, scope: !3759)
!3817 = !DILocation(line: 105, column: 25, scope: !3759)
!3818 = !DILocation(line: 105, column: 30, scope: !3759)
!3819 = !DILocation(line: 105, column: 36, scope: !3759)
!3820 = !DILocation(line: 105, column: 34, scope: !3759)
!3821 = !DILocation(line: 105, column: 2, scope: !3759)
!3822 = !DILocation(line: 110, column: 2, scope: !3759)
!3823 = !DILocation(line: 110, column: 2, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 110, column: 2)
!3825 = !DILocation(line: 110, column: 2, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 110, column: 2)
!3827 = !{i64 2154065550}
!3828 = !DILocation(line: 111, column: 1, scope: !3759)
!3829 = distinct !DISubprogram(name: "__kfifo_out_peek", scope: !3, file: !3, line: 152, type: !3830, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!7, !3482, !90, !7}
!3832 = !{!3833, !3834, !3835, !3836}
!3833 = !DILocalVariable(name: "fifo", arg: 1, scope: !3829, file: !3, line: 152, type: !3482)
!3834 = !DILocalVariable(name: "buf", arg: 2, scope: !3829, file: !3, line: 153, type: !90)
!3835 = !DILocalVariable(name: "len", arg: 3, scope: !3829, file: !3, line: 153, type: !7)
!3836 = !DILocalVariable(name: "l", scope: !3829, file: !3, line: 155, type: !7)
!3837 = !DILocation(line: 152, column: 47, scope: !3829)
!3838 = !DILocation(line: 153, column: 9, scope: !3829)
!3839 = !DILocation(line: 153, column: 27, scope: !3829)
!3840 = !DILocation(line: 155, column: 2, scope: !3829)
!3841 = !DILocation(line: 155, column: 15, scope: !3829)
!3842 = !DILocation(line: 157, column: 6, scope: !3829)
!3843 = !DILocation(line: 157, column: 12, scope: !3829)
!3844 = !DILocation(line: 157, column: 17, scope: !3829)
!3845 = !DILocation(line: 157, column: 23, scope: !3829)
!3846 = !DILocation(line: 157, column: 15, scope: !3829)
!3847 = !DILocation(line: 157, column: 4, scope: !3829)
!3848 = !DILocation(line: 158, column: 6, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 158, column: 6)
!3850 = !DILocation(line: 158, column: 12, scope: !3849)
!3851 = !DILocation(line: 158, column: 10, scope: !3849)
!3852 = !DILocation(line: 158, column: 6, scope: !3829)
!3853 = !DILocation(line: 159, column: 9, scope: !3849)
!3854 = !DILocation(line: 159, column: 7, scope: !3849)
!3855 = !DILocation(line: 159, column: 3, scope: !3849)
!3856 = !DILocation(line: 161, column: 17, scope: !3829)
!3857 = !DILocation(line: 161, column: 23, scope: !3829)
!3858 = !DILocation(line: 161, column: 28, scope: !3829)
!3859 = !DILocation(line: 161, column: 33, scope: !3829)
!3860 = !DILocation(line: 161, column: 39, scope: !3829)
!3861 = !DILocation(line: 161, column: 2, scope: !3829)
!3862 = !DILocation(line: 162, column: 9, scope: !3829)
!3863 = !DILocation(line: 163, column: 1, scope: !3829)
!3864 = !DILocation(line: 162, column: 2, scope: !3829)
!3865 = distinct !DISubprogram(name: "kfifo_copy_out", scope: !3, file: !3, line: 128, type: !3866, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3482, !90, !7, !7}
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3878}
!3869 = !DILocalVariable(name: "fifo", arg: 1, scope: !3865, file: !3, line: 128, type: !3482)
!3870 = !DILocalVariable(name: "dst", arg: 2, scope: !3865, file: !3, line: 128, type: !90)
!3871 = !DILocalVariable(name: "len", arg: 3, scope: !3865, file: !3, line: 129, type: !7)
!3872 = !DILocalVariable(name: "off", arg: 4, scope: !3865, file: !3, line: 129, type: !7)
!3873 = !DILocalVariable(name: "size", scope: !3865, file: !3, line: 131, type: !7)
!3874 = !DILocalVariable(name: "esize", scope: !3865, file: !3, line: 132, type: !7)
!3875 = !DILocalVariable(name: "l", scope: !3865, file: !3, line: 133, type: !7)
!3876 = !DILocalVariable(name: "__UNIQUE_ID___x283", scope: !3877, file: !3, line: 141, type: !7)
!3877 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 141, column: 6)
!3878 = !DILocalVariable(name: "__UNIQUE_ID___y284", scope: !3877, file: !3, line: 141, type: !7)
!3879 = !DILocation(line: 128, column: 44, scope: !3865)
!3880 = !DILocation(line: 128, column: 56, scope: !3865)
!3881 = !DILocation(line: 129, column: 16, scope: !3865)
!3882 = !DILocation(line: 129, column: 34, scope: !3865)
!3883 = !DILocation(line: 131, column: 2, scope: !3865)
!3884 = !DILocation(line: 131, column: 15, scope: !3865)
!3885 = !DILocation(line: 131, column: 22, scope: !3865)
!3886 = !DILocation(line: 131, column: 28, scope: !3865)
!3887 = !DILocation(line: 131, column: 33, scope: !3865)
!3888 = !DILocation(line: 132, column: 2, scope: !3865)
!3889 = !DILocation(line: 132, column: 15, scope: !3865)
!3890 = !DILocation(line: 132, column: 23, scope: !3865)
!3891 = !DILocation(line: 132, column: 29, scope: !3865)
!3892 = !DILocation(line: 133, column: 2, scope: !3865)
!3893 = !DILocation(line: 133, column: 15, scope: !3865)
!3894 = !DILocation(line: 135, column: 9, scope: !3865)
!3895 = !DILocation(line: 135, column: 15, scope: !3865)
!3896 = !DILocation(line: 135, column: 6, scope: !3865)
!3897 = !DILocation(line: 136, column: 6, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 136, column: 6)
!3899 = !DILocation(line: 136, column: 12, scope: !3898)
!3900 = !DILocation(line: 136, column: 6, scope: !3865)
!3901 = !DILocation(line: 137, column: 10, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 136, column: 18)
!3903 = !DILocation(line: 137, column: 7, scope: !3902)
!3904 = !DILocation(line: 138, column: 11, scope: !3902)
!3905 = !DILocation(line: 138, column: 8, scope: !3902)
!3906 = !DILocation(line: 139, column: 10, scope: !3902)
!3907 = !DILocation(line: 139, column: 7, scope: !3902)
!3908 = !DILocation(line: 140, column: 2, scope: !3902)
!3909 = !DILocation(line: 141, column: 6, scope: !3877)
!3910 = !DILocation(line: 141, column: 6, scope: !3865)
!3911 = !DILocation(line: 141, column: 4, scope: !3865)
!3912 = !DILocation(line: 143, column: 9, scope: !3865)
!3913 = !DILocation(line: 143, column: 14, scope: !3865)
!3914 = !DILocation(line: 143, column: 20, scope: !3865)
!3915 = !DILocation(line: 143, column: 27, scope: !3865)
!3916 = !DILocation(line: 143, column: 25, scope: !3865)
!3917 = !DILocation(line: 143, column: 32, scope: !3865)
!3918 = !DILocation(line: 143, column: 2, scope: !3865)
!3919 = !DILocation(line: 144, column: 9, scope: !3865)
!3920 = !DILocation(line: 144, column: 15, scope: !3865)
!3921 = !DILocation(line: 144, column: 13, scope: !3865)
!3922 = !DILocation(line: 144, column: 18, scope: !3865)
!3923 = !DILocation(line: 144, column: 24, scope: !3865)
!3924 = !DILocation(line: 144, column: 30, scope: !3865)
!3925 = !DILocation(line: 144, column: 36, scope: !3865)
!3926 = !DILocation(line: 144, column: 34, scope: !3865)
!3927 = !DILocation(line: 144, column: 2, scope: !3865)
!3928 = !DILocation(line: 149, column: 2, scope: !3865)
!3929 = !DILocation(line: 149, column: 2, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 149, column: 2)
!3931 = !DILocation(line: 149, column: 2, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 149, column: 2)
!3933 = !{i64 2154074986}
!3934 = !DILocation(line: 150, column: 1, scope: !3865)
!3935 = distinct !DISubprogram(name: "__kfifo_out", scope: !3, file: !3, line: 166, type: !3830, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3936)
!3936 = !{!3937, !3938, !3939}
!3937 = !DILocalVariable(name: "fifo", arg: 1, scope: !3935, file: !3, line: 166, type: !3482)
!3938 = !DILocalVariable(name: "buf", arg: 2, scope: !3935, file: !3, line: 167, type: !90)
!3939 = !DILocalVariable(name: "len", arg: 3, scope: !3935, file: !3, line: 167, type: !7)
!3940 = !DILocation(line: 166, column: 42, scope: !3935)
!3941 = !DILocation(line: 167, column: 9, scope: !3935)
!3942 = !DILocation(line: 167, column: 27, scope: !3935)
!3943 = !DILocation(line: 169, column: 25, scope: !3935)
!3944 = !DILocation(line: 169, column: 31, scope: !3935)
!3945 = !DILocation(line: 169, column: 36, scope: !3935)
!3946 = !DILocation(line: 169, column: 8, scope: !3935)
!3947 = !DILocation(line: 169, column: 6, scope: !3935)
!3948 = !DILocation(line: 170, column: 15, scope: !3935)
!3949 = !DILocation(line: 170, column: 2, scope: !3935)
!3950 = !DILocation(line: 170, column: 8, scope: !3935)
!3951 = !DILocation(line: 170, column: 12, scope: !3935)
!3952 = !DILocation(line: 171, column: 9, scope: !3935)
!3953 = !DILocation(line: 171, column: 2, scope: !3935)
!3954 = distinct !DISubprogram(name: "__kfifo_from_user", scope: !3, file: !3, line: 210, type: !3955, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3957)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!94, !3482, !2559, !91, !806}
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965}
!3958 = !DILocalVariable(name: "fifo", arg: 1, scope: !3954, file: !3, line: 210, type: !3482)
!3959 = !DILocalVariable(name: "from", arg: 2, scope: !3954, file: !3, line: 210, type: !2559)
!3960 = !DILocalVariable(name: "len", arg: 3, scope: !3954, file: !3, line: 211, type: !91)
!3961 = !DILocalVariable(name: "copied", arg: 4, scope: !3954, file: !3, line: 211, type: !806)
!3962 = !DILocalVariable(name: "l", scope: !3954, file: !3, line: 213, type: !7)
!3963 = !DILocalVariable(name: "ret", scope: !3954, file: !3, line: 214, type: !91)
!3964 = !DILocalVariable(name: "esize", scope: !3954, file: !3, line: 215, type: !7)
!3965 = !DILocalVariable(name: "err", scope: !3954, file: !3, line: 216, type: !94)
!3966 = !DILocation(line: 210, column: 39, scope: !3954)
!3967 = !DILocation(line: 210, column: 64, scope: !3954)
!3968 = !DILocation(line: 211, column: 17, scope: !3954)
!3969 = !DILocation(line: 211, column: 36, scope: !3954)
!3970 = !DILocation(line: 213, column: 2, scope: !3954)
!3971 = !DILocation(line: 213, column: 15, scope: !3954)
!3972 = !DILocation(line: 214, column: 2, scope: !3954)
!3973 = !DILocation(line: 214, column: 16, scope: !3954)
!3974 = !DILocation(line: 215, column: 2, scope: !3954)
!3975 = !DILocation(line: 215, column: 15, scope: !3954)
!3976 = !DILocation(line: 215, column: 23, scope: !3954)
!3977 = !DILocation(line: 215, column: 29, scope: !3954)
!3978 = !DILocation(line: 216, column: 2, scope: !3954)
!3979 = !DILocation(line: 216, column: 6, scope: !3954)
!3980 = !DILocation(line: 218, column: 6, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 218, column: 6)
!3982 = !DILocation(line: 218, column: 12, scope: !3981)
!3983 = !DILocation(line: 218, column: 6, scope: !3954)
!3984 = !DILocation(line: 219, column: 10, scope: !3981)
!3985 = !DILocation(line: 219, column: 7, scope: !3981)
!3986 = !DILocation(line: 219, column: 3, scope: !3981)
!3987 = !DILocation(line: 221, column: 19, scope: !3954)
!3988 = !DILocation(line: 221, column: 6, scope: !3954)
!3989 = !DILocation(line: 221, column: 4, scope: !3954)
!3990 = !DILocation(line: 222, column: 6, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 222, column: 6)
!3992 = !DILocation(line: 222, column: 12, scope: !3991)
!3993 = !DILocation(line: 222, column: 10, scope: !3991)
!3994 = !DILocation(line: 222, column: 6, scope: !3954)
!3995 = !DILocation(line: 223, column: 9, scope: !3991)
!3996 = !DILocation(line: 223, column: 7, scope: !3991)
!3997 = !DILocation(line: 223, column: 3, scope: !3991)
!3998 = !DILocation(line: 225, column: 29, scope: !3954)
!3999 = !DILocation(line: 225, column: 35, scope: !3954)
!4000 = !DILocation(line: 225, column: 41, scope: !3954)
!4001 = !DILocation(line: 225, column: 46, scope: !3954)
!4002 = !DILocation(line: 225, column: 52, scope: !3954)
!4003 = !DILocation(line: 225, column: 56, scope: !3954)
!4004 = !DILocation(line: 225, column: 8, scope: !3954)
!4005 = !DILocation(line: 225, column: 6, scope: !3954)
!4006 = !DILocation(line: 226, column: 6, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 226, column: 6)
!4008 = !DILocation(line: 226, column: 6, scope: !3954)
!4009 = !DILocation(line: 227, column: 10, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 226, column: 21)
!4011 = !DILocation(line: 227, column: 7, scope: !4010)
!4012 = !DILocation(line: 228, column: 7, scope: !4010)
!4013 = !DILocation(line: 229, column: 2, scope: !4010)
!4014 = !DILocation(line: 230, column: 7, scope: !4007)
!4015 = !DILocation(line: 231, column: 14, scope: !3954)
!4016 = !DILocation(line: 231, column: 2, scope: !3954)
!4017 = !DILocation(line: 231, column: 8, scope: !3954)
!4018 = !DILocation(line: 231, column: 11, scope: !3954)
!4019 = !DILocation(line: 232, column: 9, scope: !3954)
!4020 = !DILocation(line: 233, column: 1, scope: !3954)
!4021 = !DILocation(line: 232, column: 2, scope: !3954)
!4022 = distinct !DISubprogram(name: "kfifo_copy_from_user", scope: !3, file: !3, line: 175, type: !4023, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4025)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!91, !3482, !2559, !7, !7, !806}
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4037}
!4026 = !DILocalVariable(name: "fifo", arg: 1, scope: !4022, file: !3, line: 175, type: !3482)
!4027 = !DILocalVariable(name: "from", arg: 2, scope: !4022, file: !3, line: 176, type: !2559)
!4028 = !DILocalVariable(name: "len", arg: 3, scope: !4022, file: !3, line: 176, type: !7)
!4029 = !DILocalVariable(name: "off", arg: 4, scope: !4022, file: !3, line: 176, type: !7)
!4030 = !DILocalVariable(name: "copied", arg: 5, scope: !4022, file: !3, line: 177, type: !806)
!4031 = !DILocalVariable(name: "size", scope: !4022, file: !3, line: 179, type: !7)
!4032 = !DILocalVariable(name: "esize", scope: !4022, file: !3, line: 180, type: !7)
!4033 = !DILocalVariable(name: "l", scope: !4022, file: !3, line: 181, type: !7)
!4034 = !DILocalVariable(name: "ret", scope: !4022, file: !3, line: 182, type: !91)
!4035 = !DILocalVariable(name: "__UNIQUE_ID___x287", scope: !4036, file: !3, line: 190, type: !7)
!4036 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 190, column: 6)
!4037 = !DILocalVariable(name: "__UNIQUE_ID___y288", scope: !4036, file: !3, line: 190, type: !7)
!4038 = !DILocation(line: 175, column: 59, scope: !4022)
!4039 = !DILocation(line: 176, column: 21, scope: !4022)
!4040 = !DILocation(line: 176, column: 40, scope: !4022)
!4041 = !DILocation(line: 176, column: 58, scope: !4022)
!4042 = !DILocation(line: 177, column: 16, scope: !4022)
!4043 = !DILocation(line: 179, column: 2, scope: !4022)
!4044 = !DILocation(line: 179, column: 15, scope: !4022)
!4045 = !DILocation(line: 179, column: 22, scope: !4022)
!4046 = !DILocation(line: 179, column: 28, scope: !4022)
!4047 = !DILocation(line: 179, column: 33, scope: !4022)
!4048 = !DILocation(line: 180, column: 2, scope: !4022)
!4049 = !DILocation(line: 180, column: 15, scope: !4022)
!4050 = !DILocation(line: 180, column: 23, scope: !4022)
!4051 = !DILocation(line: 180, column: 29, scope: !4022)
!4052 = !DILocation(line: 181, column: 2, scope: !4022)
!4053 = !DILocation(line: 181, column: 15, scope: !4022)
!4054 = !DILocation(line: 182, column: 2, scope: !4022)
!4055 = !DILocation(line: 182, column: 16, scope: !4022)
!4056 = !DILocation(line: 184, column: 9, scope: !4022)
!4057 = !DILocation(line: 184, column: 15, scope: !4022)
!4058 = !DILocation(line: 184, column: 6, scope: !4022)
!4059 = !DILocation(line: 185, column: 6, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 185, column: 6)
!4061 = !DILocation(line: 185, column: 12, scope: !4060)
!4062 = !DILocation(line: 185, column: 6, scope: !4022)
!4063 = !DILocation(line: 186, column: 10, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 185, column: 18)
!4065 = !DILocation(line: 186, column: 7, scope: !4064)
!4066 = !DILocation(line: 187, column: 11, scope: !4064)
!4067 = !DILocation(line: 187, column: 8, scope: !4064)
!4068 = !DILocation(line: 188, column: 10, scope: !4064)
!4069 = !DILocation(line: 188, column: 7, scope: !4064)
!4070 = !DILocation(line: 189, column: 2, scope: !4064)
!4071 = !DILocation(line: 190, column: 6, scope: !4036)
!4072 = !DILocation(line: 190, column: 6, scope: !4022)
!4073 = !DILocation(line: 190, column: 4, scope: !4022)
!4074 = !DILocation(line: 192, column: 23, scope: !4022)
!4075 = !DILocation(line: 192, column: 29, scope: !4022)
!4076 = !DILocation(line: 192, column: 36, scope: !4022)
!4077 = !DILocation(line: 192, column: 34, scope: !4022)
!4078 = !DILocation(line: 192, column: 41, scope: !4022)
!4079 = !DILocation(line: 192, column: 47, scope: !4022)
!4080 = !DILocation(line: 192, column: 8, scope: !4022)
!4081 = !DILocation(line: 192, column: 6, scope: !4022)
!4082 = !DILocation(line: 193, column: 6, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 193, column: 6)
!4084 = !DILocation(line: 193, column: 6, scope: !4022)
!4085 = !DILocation(line: 194, column: 9, scope: !4083)
!4086 = !DILocation(line: 194, column: 7, scope: !4083)
!4087 = !DILocation(line: 194, column: 3, scope: !4083)
!4088 = !DILocation(line: 196, column: 24, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 195, column: 7)
!4090 = !DILocation(line: 196, column: 30, scope: !4089)
!4091 = !DILocation(line: 196, column: 36, scope: !4089)
!4092 = !DILocation(line: 196, column: 43, scope: !4089)
!4093 = !DILocation(line: 196, column: 41, scope: !4089)
!4094 = !DILocation(line: 196, column: 46, scope: !4089)
!4095 = !DILocation(line: 196, column: 52, scope: !4089)
!4096 = !DILocation(line: 196, column: 50, scope: !4089)
!4097 = !DILocation(line: 196, column: 9, scope: !4089)
!4098 = !DILocation(line: 196, column: 7, scope: !4089)
!4099 = !DILocation(line: 197, column: 7, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 197, column: 7)
!4101 = !DILocation(line: 197, column: 7, scope: !4089)
!4102 = !DILocation(line: 198, column: 10, scope: !4100)
!4103 = !DILocation(line: 198, column: 8, scope: !4100)
!4104 = !DILocation(line: 198, column: 4, scope: !4100)
!4105 = !DILocation(line: 204, column: 2, scope: !4022)
!4106 = !DILocation(line: 204, column: 2, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 204, column: 2)
!4108 = !DILocation(line: 204, column: 2, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 204, column: 2)
!4110 = !{i64 2154090474}
!4111 = !DILocation(line: 205, column: 12, scope: !4022)
!4112 = !DILocation(line: 205, column: 18, scope: !4022)
!4113 = !DILocation(line: 205, column: 24, scope: !4022)
!4114 = !DILocation(line: 205, column: 22, scope: !4022)
!4115 = !DILocation(line: 205, column: 16, scope: !4022)
!4116 = !DILocation(line: 205, column: 3, scope: !4022)
!4117 = !DILocation(line: 205, column: 10, scope: !4022)
!4118 = !DILocation(line: 207, column: 9, scope: !4022)
!4119 = !DILocation(line: 208, column: 1, scope: !4022)
!4120 = !DILocation(line: 207, column: 2, scope: !4022)
!4121 = distinct !DISubprogram(name: "__kfifo_to_user", scope: !3, file: !3, line: 270, type: !4122, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4124)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!94, !3482, !90, !91, !806}
!4124 = !{!4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132}
!4125 = !DILocalVariable(name: "fifo", arg: 1, scope: !4121, file: !3, line: 270, type: !3482)
!4126 = !DILocalVariable(name: "to", arg: 2, scope: !4121, file: !3, line: 270, type: !90)
!4127 = !DILocalVariable(name: "len", arg: 3, scope: !4121, file: !3, line: 271, type: !91)
!4128 = !DILocalVariable(name: "copied", arg: 4, scope: !4121, file: !3, line: 271, type: !806)
!4129 = !DILocalVariable(name: "l", scope: !4121, file: !3, line: 273, type: !7)
!4130 = !DILocalVariable(name: "ret", scope: !4121, file: !3, line: 274, type: !91)
!4131 = !DILocalVariable(name: "esize", scope: !4121, file: !3, line: 275, type: !7)
!4132 = !DILocalVariable(name: "err", scope: !4121, file: !3, line: 276, type: !94)
!4133 = !DILocation(line: 270, column: 37, scope: !4121)
!4134 = !DILocation(line: 270, column: 56, scope: !4121)
!4135 = !DILocation(line: 271, column: 17, scope: !4121)
!4136 = !DILocation(line: 271, column: 36, scope: !4121)
!4137 = !DILocation(line: 273, column: 2, scope: !4121)
!4138 = !DILocation(line: 273, column: 15, scope: !4121)
!4139 = !DILocation(line: 274, column: 2, scope: !4121)
!4140 = !DILocation(line: 274, column: 16, scope: !4121)
!4141 = !DILocation(line: 275, column: 2, scope: !4121)
!4142 = !DILocation(line: 275, column: 15, scope: !4121)
!4143 = !DILocation(line: 275, column: 23, scope: !4121)
!4144 = !DILocation(line: 275, column: 29, scope: !4121)
!4145 = !DILocation(line: 276, column: 2, scope: !4121)
!4146 = !DILocation(line: 276, column: 6, scope: !4121)
!4147 = !DILocation(line: 278, column: 6, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4121, file: !3, line: 278, column: 6)
!4149 = !DILocation(line: 278, column: 12, scope: !4148)
!4150 = !DILocation(line: 278, column: 6, scope: !4121)
!4151 = !DILocation(line: 279, column: 10, scope: !4148)
!4152 = !DILocation(line: 279, column: 7, scope: !4148)
!4153 = !DILocation(line: 279, column: 3, scope: !4148)
!4154 = !DILocation(line: 281, column: 6, scope: !4121)
!4155 = !DILocation(line: 281, column: 12, scope: !4121)
!4156 = !DILocation(line: 281, column: 17, scope: !4121)
!4157 = !DILocation(line: 281, column: 23, scope: !4121)
!4158 = !DILocation(line: 281, column: 15, scope: !4121)
!4159 = !DILocation(line: 281, column: 4, scope: !4121)
!4160 = !DILocation(line: 282, column: 6, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4121, file: !3, line: 282, column: 6)
!4162 = !DILocation(line: 282, column: 12, scope: !4161)
!4163 = !DILocation(line: 282, column: 10, scope: !4161)
!4164 = !DILocation(line: 282, column: 6, scope: !4121)
!4165 = !DILocation(line: 283, column: 9, scope: !4161)
!4166 = !DILocation(line: 283, column: 7, scope: !4161)
!4167 = !DILocation(line: 283, column: 3, scope: !4161)
!4168 = !DILocation(line: 284, column: 27, scope: !4121)
!4169 = !DILocation(line: 284, column: 33, scope: !4121)
!4170 = !DILocation(line: 284, column: 37, scope: !4121)
!4171 = !DILocation(line: 284, column: 42, scope: !4121)
!4172 = !DILocation(line: 284, column: 48, scope: !4121)
!4173 = !DILocation(line: 284, column: 53, scope: !4121)
!4174 = !DILocation(line: 284, column: 8, scope: !4121)
!4175 = !DILocation(line: 284, column: 6, scope: !4121)
!4176 = !DILocation(line: 285, column: 6, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4121, file: !3, line: 285, column: 6)
!4178 = !DILocation(line: 285, column: 6, scope: !4121)
!4179 = !DILocation(line: 286, column: 10, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 285, column: 21)
!4181 = !DILocation(line: 286, column: 7, scope: !4180)
!4182 = !DILocation(line: 287, column: 7, scope: !4180)
!4183 = !DILocation(line: 288, column: 2, scope: !4180)
!4184 = !DILocation(line: 289, column: 7, scope: !4177)
!4185 = !DILocation(line: 290, column: 15, scope: !4121)
!4186 = !DILocation(line: 290, column: 2, scope: !4121)
!4187 = !DILocation(line: 290, column: 8, scope: !4121)
!4188 = !DILocation(line: 290, column: 12, scope: !4121)
!4189 = !DILocation(line: 291, column: 9, scope: !4121)
!4190 = !DILocation(line: 292, column: 1, scope: !4121)
!4191 = !DILocation(line: 291, column: 2, scope: !4121)
!4192 = distinct !DISubprogram(name: "kfifo_copy_to_user", scope: !3, file: !3, line: 236, type: !4193, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4195)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!91, !3482, !90, !7, !7, !806}
!4195 = !{!4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4207}
!4196 = !DILocalVariable(name: "fifo", arg: 1, scope: !4192, file: !3, line: 236, type: !3482)
!4197 = !DILocalVariable(name: "to", arg: 2, scope: !4192, file: !3, line: 236, type: !90)
!4198 = !DILocalVariable(name: "len", arg: 3, scope: !4192, file: !3, line: 237, type: !7)
!4199 = !DILocalVariable(name: "off", arg: 4, scope: !4192, file: !3, line: 237, type: !7)
!4200 = !DILocalVariable(name: "copied", arg: 5, scope: !4192, file: !3, line: 237, type: !806)
!4201 = !DILocalVariable(name: "l", scope: !4192, file: !3, line: 239, type: !7)
!4202 = !DILocalVariable(name: "ret", scope: !4192, file: !3, line: 240, type: !91)
!4203 = !DILocalVariable(name: "size", scope: !4192, file: !3, line: 241, type: !7)
!4204 = !DILocalVariable(name: "esize", scope: !4192, file: !3, line: 242, type: !7)
!4205 = !DILocalVariable(name: "__UNIQUE_ID___x290", scope: !4206, file: !3, line: 250, type: !7)
!4206 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 250, column: 6)
!4207 = !DILocalVariable(name: "__UNIQUE_ID___y291", scope: !4206, file: !3, line: 250, type: !7)
!4208 = !DILocation(line: 236, column: 57, scope: !4192)
!4209 = !DILocation(line: 236, column: 76, scope: !4192)
!4210 = !DILocation(line: 237, column: 16, scope: !4192)
!4211 = !DILocation(line: 237, column: 34, scope: !4192)
!4212 = !DILocation(line: 237, column: 53, scope: !4192)
!4213 = !DILocation(line: 239, column: 2, scope: !4192)
!4214 = !DILocation(line: 239, column: 15, scope: !4192)
!4215 = !DILocation(line: 240, column: 2, scope: !4192)
!4216 = !DILocation(line: 240, column: 16, scope: !4192)
!4217 = !DILocation(line: 241, column: 2, scope: !4192)
!4218 = !DILocation(line: 241, column: 15, scope: !4192)
!4219 = !DILocation(line: 241, column: 22, scope: !4192)
!4220 = !DILocation(line: 241, column: 28, scope: !4192)
!4221 = !DILocation(line: 241, column: 33, scope: !4192)
!4222 = !DILocation(line: 242, column: 2, scope: !4192)
!4223 = !DILocation(line: 242, column: 15, scope: !4192)
!4224 = !DILocation(line: 242, column: 23, scope: !4192)
!4225 = !DILocation(line: 242, column: 29, scope: !4192)
!4226 = !DILocation(line: 244, column: 9, scope: !4192)
!4227 = !DILocation(line: 244, column: 15, scope: !4192)
!4228 = !DILocation(line: 244, column: 6, scope: !4192)
!4229 = !DILocation(line: 245, column: 6, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 245, column: 6)
!4231 = !DILocation(line: 245, column: 12, scope: !4230)
!4232 = !DILocation(line: 245, column: 6, scope: !4192)
!4233 = !DILocation(line: 246, column: 10, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 245, column: 18)
!4235 = !DILocation(line: 246, column: 7, scope: !4234)
!4236 = !DILocation(line: 247, column: 11, scope: !4234)
!4237 = !DILocation(line: 247, column: 8, scope: !4234)
!4238 = !DILocation(line: 248, column: 10, scope: !4234)
!4239 = !DILocation(line: 248, column: 7, scope: !4234)
!4240 = !DILocation(line: 249, column: 2, scope: !4234)
!4241 = !DILocation(line: 250, column: 6, scope: !4206)
!4242 = !DILocation(line: 250, column: 6, scope: !4192)
!4243 = !DILocation(line: 250, column: 4, scope: !4192)
!4244 = !DILocation(line: 252, column: 21, scope: !4192)
!4245 = !DILocation(line: 252, column: 25, scope: !4192)
!4246 = !DILocation(line: 252, column: 31, scope: !4192)
!4247 = !DILocation(line: 252, column: 38, scope: !4192)
!4248 = !DILocation(line: 252, column: 36, scope: !4192)
!4249 = !DILocation(line: 252, column: 43, scope: !4192)
!4250 = !DILocation(line: 252, column: 8, scope: !4192)
!4251 = !DILocation(line: 252, column: 6, scope: !4192)
!4252 = !DILocation(line: 253, column: 6, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 253, column: 6)
!4254 = !DILocation(line: 253, column: 6, scope: !4192)
!4255 = !DILocation(line: 254, column: 9, scope: !4253)
!4256 = !DILocation(line: 254, column: 7, scope: !4253)
!4257 = !DILocation(line: 254, column: 3, scope: !4253)
!4258 = !DILocation(line: 256, column: 22, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 255, column: 7)
!4260 = !DILocation(line: 256, column: 27, scope: !4259)
!4261 = !DILocation(line: 256, column: 25, scope: !4259)
!4262 = !DILocation(line: 256, column: 30, scope: !4259)
!4263 = !DILocation(line: 256, column: 36, scope: !4259)
!4264 = !DILocation(line: 256, column: 42, scope: !4259)
!4265 = !DILocation(line: 256, column: 48, scope: !4259)
!4266 = !DILocation(line: 256, column: 46, scope: !4259)
!4267 = !DILocation(line: 256, column: 9, scope: !4259)
!4268 = !DILocation(line: 256, column: 7, scope: !4259)
!4269 = !DILocation(line: 257, column: 7, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 257, column: 7)
!4271 = !DILocation(line: 257, column: 7, scope: !4259)
!4272 = !DILocation(line: 258, column: 10, scope: !4270)
!4273 = !DILocation(line: 258, column: 8, scope: !4270)
!4274 = !DILocation(line: 258, column: 4, scope: !4270)
!4275 = !DILocation(line: 264, column: 2, scope: !4192)
!4276 = !DILocation(line: 264, column: 2, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 264, column: 2)
!4278 = !DILocation(line: 264, column: 2, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 264, column: 2)
!4280 = !{i64 2154100367}
!4281 = !DILocation(line: 265, column: 12, scope: !4192)
!4282 = !DILocation(line: 265, column: 18, scope: !4192)
!4283 = !DILocation(line: 265, column: 24, scope: !4192)
!4284 = !DILocation(line: 265, column: 22, scope: !4192)
!4285 = !DILocation(line: 265, column: 16, scope: !4192)
!4286 = !DILocation(line: 265, column: 3, scope: !4192)
!4287 = !DILocation(line: 265, column: 10, scope: !4192)
!4288 = !DILocation(line: 267, column: 9, scope: !4192)
!4289 = !DILocation(line: 268, column: 1, scope: !4192)
!4290 = !DILocation(line: 267, column: 2, scope: !4192)
!4291 = distinct !DISubprogram(name: "__kfifo_dma_in_prepare", scope: !3, file: !3, line: 356, type: !4292, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4303)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!7, !3482, !4294, !94, !7}
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !3469, line: 11, size: 256, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4295, file: !3469, line: 12, baseType: !91, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4295, file: !3469, line: 13, baseType: !7, size: 32, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4295, file: !3469, line: 14, baseType: !7, size: 32, offset: 96)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4295, file: !3469, line: 15, baseType: !3409, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4295, file: !3469, line: 17, baseType: !7, size: 32, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4295, file: !3469, line: 20, baseType: !7, size: 32, offset: 224)
!4303 = !{!4304, !4305, !4306, !4307, !4308}
!4304 = !DILocalVariable(name: "fifo", arg: 1, scope: !4291, file: !3, line: 356, type: !3482)
!4305 = !DILocalVariable(name: "sgl", arg: 2, scope: !4291, file: !3, line: 357, type: !4294)
!4306 = !DILocalVariable(name: "nents", arg: 3, scope: !4291, file: !3, line: 357, type: !94)
!4307 = !DILocalVariable(name: "len", arg: 4, scope: !4291, file: !3, line: 357, type: !7)
!4308 = !DILocalVariable(name: "l", scope: !4291, file: !3, line: 359, type: !7)
!4309 = !DILocation(line: 356, column: 53, scope: !4291)
!4310 = !DILocation(line: 357, column: 23, scope: !4291)
!4311 = !DILocation(line: 357, column: 32, scope: !4291)
!4312 = !DILocation(line: 357, column: 52, scope: !4291)
!4313 = !DILocation(line: 359, column: 2, scope: !4291)
!4314 = !DILocation(line: 359, column: 15, scope: !4291)
!4315 = !DILocation(line: 361, column: 19, scope: !4291)
!4316 = !DILocation(line: 361, column: 6, scope: !4291)
!4317 = !DILocation(line: 361, column: 4, scope: !4291)
!4318 = !DILocation(line: 362, column: 6, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 362, column: 6)
!4320 = !DILocation(line: 362, column: 12, scope: !4319)
!4321 = !DILocation(line: 362, column: 10, scope: !4319)
!4322 = !DILocation(line: 362, column: 6, scope: !4291)
!4323 = !DILocation(line: 363, column: 9, scope: !4319)
!4324 = !DILocation(line: 363, column: 7, scope: !4319)
!4325 = !DILocation(line: 363, column: 3, scope: !4319)
!4326 = !DILocation(line: 365, column: 19, scope: !4291)
!4327 = !DILocation(line: 365, column: 25, scope: !4291)
!4328 = !DILocation(line: 365, column: 30, scope: !4291)
!4329 = !DILocation(line: 365, column: 37, scope: !4291)
!4330 = !DILocation(line: 365, column: 42, scope: !4291)
!4331 = !DILocation(line: 365, column: 48, scope: !4291)
!4332 = !DILocation(line: 365, column: 9, scope: !4291)
!4333 = !DILocation(line: 366, column: 1, scope: !4291)
!4334 = !DILocation(line: 365, column: 2, scope: !4291)
!4335 = distinct !DISubprogram(name: "setup_sgl", scope: !3, file: !3, line: 334, type: !4336, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!7, !3482, !4294, !94, !7, !7}
!4338 = !{!4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4350}
!4339 = !DILocalVariable(name: "fifo", arg: 1, scope: !4335, file: !3, line: 334, type: !3482)
!4340 = !DILocalVariable(name: "sgl", arg: 2, scope: !4335, file: !3, line: 334, type: !4294)
!4341 = !DILocalVariable(name: "nents", arg: 3, scope: !4335, file: !3, line: 335, type: !94)
!4342 = !DILocalVariable(name: "len", arg: 4, scope: !4335, file: !3, line: 335, type: !7)
!4343 = !DILocalVariable(name: "off", arg: 5, scope: !4335, file: !3, line: 335, type: !7)
!4344 = !DILocalVariable(name: "size", scope: !4335, file: !3, line: 337, type: !7)
!4345 = !DILocalVariable(name: "esize", scope: !4335, file: !3, line: 338, type: !7)
!4346 = !DILocalVariable(name: "l", scope: !4335, file: !3, line: 339, type: !7)
!4347 = !DILocalVariable(name: "n", scope: !4335, file: !3, line: 340, type: !7)
!4348 = !DILocalVariable(name: "__UNIQUE_ID___x293", scope: !4349, file: !3, line: 348, type: !7)
!4349 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 348, column: 6)
!4350 = !DILocalVariable(name: "__UNIQUE_ID___y294", scope: !4349, file: !3, line: 348, type: !7)
!4351 = !DILocation(line: 334, column: 47, scope: !4335)
!4352 = !DILocation(line: 334, column: 73, scope: !4335)
!4353 = !DILocation(line: 335, column: 7, scope: !4335)
!4354 = !DILocation(line: 335, column: 27, scope: !4335)
!4355 = !DILocation(line: 335, column: 45, scope: !4335)
!4356 = !DILocation(line: 337, column: 2, scope: !4335)
!4357 = !DILocation(line: 337, column: 15, scope: !4335)
!4358 = !DILocation(line: 337, column: 22, scope: !4335)
!4359 = !DILocation(line: 337, column: 28, scope: !4335)
!4360 = !DILocation(line: 337, column: 33, scope: !4335)
!4361 = !DILocation(line: 338, column: 2, scope: !4335)
!4362 = !DILocation(line: 338, column: 15, scope: !4335)
!4363 = !DILocation(line: 338, column: 23, scope: !4335)
!4364 = !DILocation(line: 338, column: 29, scope: !4335)
!4365 = !DILocation(line: 339, column: 2, scope: !4335)
!4366 = !DILocation(line: 339, column: 15, scope: !4335)
!4367 = !DILocation(line: 340, column: 2, scope: !4335)
!4368 = !DILocation(line: 340, column: 15, scope: !4335)
!4369 = !DILocation(line: 342, column: 9, scope: !4335)
!4370 = !DILocation(line: 342, column: 15, scope: !4335)
!4371 = !DILocation(line: 342, column: 6, scope: !4335)
!4372 = !DILocation(line: 343, column: 6, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 343, column: 6)
!4374 = !DILocation(line: 343, column: 12, scope: !4373)
!4375 = !DILocation(line: 343, column: 6, scope: !4335)
!4376 = !DILocation(line: 344, column: 10, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 343, column: 18)
!4378 = !DILocation(line: 344, column: 7, scope: !4377)
!4379 = !DILocation(line: 345, column: 11, scope: !4377)
!4380 = !DILocation(line: 345, column: 8, scope: !4377)
!4381 = !DILocation(line: 346, column: 10, scope: !4377)
!4382 = !DILocation(line: 346, column: 7, scope: !4377)
!4383 = !DILocation(line: 347, column: 2, scope: !4377)
!4384 = !DILocation(line: 348, column: 6, scope: !4349)
!4385 = !DILocation(line: 348, column: 6, scope: !4335)
!4386 = !DILocation(line: 348, column: 4, scope: !4335)
!4387 = !DILocation(line: 350, column: 20, scope: !4335)
!4388 = !DILocation(line: 350, column: 25, scope: !4335)
!4389 = !DILocation(line: 350, column: 31, scope: !4335)
!4390 = !DILocation(line: 350, column: 38, scope: !4335)
!4391 = !DILocation(line: 350, column: 36, scope: !4335)
!4392 = !DILocation(line: 350, column: 43, scope: !4335)
!4393 = !DILocation(line: 350, column: 50, scope: !4335)
!4394 = !DILocation(line: 350, column: 6, scope: !4335)
!4395 = !DILocation(line: 350, column: 4, scope: !4335)
!4396 = !DILocation(line: 351, column: 21, scope: !4335)
!4397 = !DILocation(line: 351, column: 27, scope: !4335)
!4398 = !DILocation(line: 351, column: 25, scope: !4335)
!4399 = !DILocation(line: 351, column: 30, scope: !4335)
!4400 = !DILocation(line: 351, column: 36, scope: !4335)
!4401 = !DILocation(line: 351, column: 42, scope: !4335)
!4402 = !DILocation(line: 351, column: 50, scope: !4335)
!4403 = !DILocation(line: 351, column: 48, scope: !4335)
!4404 = !DILocation(line: 351, column: 53, scope: !4335)
!4405 = !DILocation(line: 351, column: 59, scope: !4335)
!4406 = !DILocation(line: 351, column: 57, scope: !4335)
!4407 = !DILocation(line: 351, column: 7, scope: !4335)
!4408 = !DILocation(line: 351, column: 4, scope: !4335)
!4409 = !DILocation(line: 353, column: 9, scope: !4335)
!4410 = !DILocation(line: 354, column: 1, scope: !4335)
!4411 = !DILocation(line: 353, column: 2, scope: !4335)
!4412 = distinct !DISubprogram(name: "__kfifo_dma_out_prepare", scope: !3, file: !3, line: 369, type: !4292, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4418}
!4414 = !DILocalVariable(name: "fifo", arg: 1, scope: !4412, file: !3, line: 369, type: !3482)
!4415 = !DILocalVariable(name: "sgl", arg: 2, scope: !4412, file: !3, line: 370, type: !4294)
!4416 = !DILocalVariable(name: "nents", arg: 3, scope: !4412, file: !3, line: 370, type: !94)
!4417 = !DILocalVariable(name: "len", arg: 4, scope: !4412, file: !3, line: 370, type: !7)
!4418 = !DILocalVariable(name: "l", scope: !4412, file: !3, line: 372, type: !7)
!4419 = !DILocation(line: 369, column: 54, scope: !4412)
!4420 = !DILocation(line: 370, column: 23, scope: !4412)
!4421 = !DILocation(line: 370, column: 32, scope: !4412)
!4422 = !DILocation(line: 370, column: 52, scope: !4412)
!4423 = !DILocation(line: 372, column: 2, scope: !4412)
!4424 = !DILocation(line: 372, column: 15, scope: !4412)
!4425 = !DILocation(line: 374, column: 6, scope: !4412)
!4426 = !DILocation(line: 374, column: 12, scope: !4412)
!4427 = !DILocation(line: 374, column: 17, scope: !4412)
!4428 = !DILocation(line: 374, column: 23, scope: !4412)
!4429 = !DILocation(line: 374, column: 15, scope: !4412)
!4430 = !DILocation(line: 374, column: 4, scope: !4412)
!4431 = !DILocation(line: 375, column: 6, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 375, column: 6)
!4433 = !DILocation(line: 375, column: 12, scope: !4432)
!4434 = !DILocation(line: 375, column: 10, scope: !4432)
!4435 = !DILocation(line: 375, column: 6, scope: !4412)
!4436 = !DILocation(line: 376, column: 9, scope: !4432)
!4437 = !DILocation(line: 376, column: 7, scope: !4432)
!4438 = !DILocation(line: 376, column: 3, scope: !4432)
!4439 = !DILocation(line: 378, column: 19, scope: !4412)
!4440 = !DILocation(line: 378, column: 25, scope: !4412)
!4441 = !DILocation(line: 378, column: 30, scope: !4412)
!4442 = !DILocation(line: 378, column: 37, scope: !4412)
!4443 = !DILocation(line: 378, column: 42, scope: !4412)
!4444 = !DILocation(line: 378, column: 48, scope: !4412)
!4445 = !DILocation(line: 378, column: 9, scope: !4412)
!4446 = !DILocation(line: 379, column: 1, scope: !4412)
!4447 = !DILocation(line: 378, column: 2, scope: !4412)
!4448 = distinct !DISubprogram(name: "__kfifo_max_r", scope: !3, file: !3, line: 382, type: !4449, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4451)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!7, !7, !465}
!4451 = !{!4452, !4453, !4454}
!4452 = !DILocalVariable(name: "len", arg: 1, scope: !4448, file: !3, line: 382, type: !7)
!4453 = !DILocalVariable(name: "recsize", arg: 2, scope: !4448, file: !3, line: 382, type: !465)
!4454 = !DILocalVariable(name: "max", scope: !4448, file: !3, line: 384, type: !7)
!4455 = !DILocation(line: 382, column: 41, scope: !4448)
!4456 = !DILocation(line: 382, column: 53, scope: !4448)
!4457 = !DILocation(line: 384, column: 2, scope: !4448)
!4458 = !DILocation(line: 384, column: 15, scope: !4448)
!4459 = !DILocation(line: 384, column: 28, scope: !4448)
!4460 = !DILocation(line: 384, column: 36, scope: !4448)
!4461 = !DILocation(line: 384, column: 24, scope: !4448)
!4462 = !DILocation(line: 384, column: 43, scope: !4448)
!4463 = !DILocation(line: 386, column: 6, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 386, column: 6)
!4465 = !DILocation(line: 386, column: 12, scope: !4464)
!4466 = !DILocation(line: 386, column: 10, scope: !4464)
!4467 = !DILocation(line: 386, column: 6, scope: !4448)
!4468 = !DILocation(line: 387, column: 10, scope: !4464)
!4469 = !DILocation(line: 387, column: 3, scope: !4464)
!4470 = !DILocation(line: 388, column: 9, scope: !4448)
!4471 = !DILocation(line: 388, column: 2, scope: !4448)
!4472 = !DILocation(line: 389, column: 1, scope: !4448)
!4473 = distinct !DISubprogram(name: "__kfifo_len_r", scope: !3, file: !3, line: 432, type: !4474, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!7, !3482, !465}
!4476 = !{!4477, !4478}
!4477 = !DILocalVariable(name: "fifo", arg: 1, scope: !4473, file: !3, line: 432, type: !3482)
!4478 = !DILocalVariable(name: "recsize", arg: 2, scope: !4473, file: !3, line: 432, type: !465)
!4479 = !DILocation(line: 432, column: 44, scope: !4473)
!4480 = !DILocation(line: 432, column: 57, scope: !4473)
!4481 = !DILocation(line: 434, column: 24, scope: !4473)
!4482 = !DILocation(line: 434, column: 30, scope: !4473)
!4483 = !DILocation(line: 434, column: 9, scope: !4473)
!4484 = !DILocation(line: 434, column: 2, scope: !4473)
!4485 = distinct !DISubprogram(name: "__kfifo_peek_n", scope: !3, file: !3, line: 398, type: !4474, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4486)
!4486 = !{!4487, !4488, !4489, !4490, !4491}
!4487 = !DILocalVariable(name: "fifo", arg: 1, scope: !4485, file: !3, line: 398, type: !3482)
!4488 = !DILocalVariable(name: "recsize", arg: 2, scope: !4485, file: !3, line: 398, type: !465)
!4489 = !DILocalVariable(name: "l", scope: !4485, file: !3, line: 400, type: !7)
!4490 = !DILocalVariable(name: "mask", scope: !4485, file: !3, line: 401, type: !7)
!4491 = !DILocalVariable(name: "data", scope: !4485, file: !3, line: 402, type: !4492)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!4493 = !DILocation(line: 398, column: 52, scope: !4485)
!4494 = !DILocation(line: 398, column: 65, scope: !4485)
!4495 = !DILocation(line: 400, column: 2, scope: !4485)
!4496 = !DILocation(line: 400, column: 15, scope: !4485)
!4497 = !DILocation(line: 401, column: 2, scope: !4485)
!4498 = !DILocation(line: 401, column: 15, scope: !4485)
!4499 = !DILocation(line: 401, column: 22, scope: !4485)
!4500 = !DILocation(line: 401, column: 28, scope: !4485)
!4501 = !DILocation(line: 402, column: 2, scope: !4485)
!4502 = !DILocation(line: 402, column: 17, scope: !4485)
!4503 = !DILocation(line: 402, column: 24, scope: !4485)
!4504 = !DILocation(line: 402, column: 30, scope: !4485)
!4505 = !DILocation(line: 404, column: 6, scope: !4485)
!4506 = !DILocation(line: 404, column: 4, scope: !4485)
!4507 = !DILocation(line: 406, column: 6, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 406, column: 6)
!4509 = !DILocation(line: 406, column: 6, scope: !4485)
!4510 = !DILocation(line: 407, column: 8, scope: !4508)
!4511 = !DILocation(line: 407, column: 48, scope: !4508)
!4512 = !DILocation(line: 407, column: 5, scope: !4508)
!4513 = !DILocation(line: 407, column: 3, scope: !4508)
!4514 = !DILocation(line: 409, column: 9, scope: !4485)
!4515 = !DILocation(line: 410, column: 1, scope: !4485)
!4516 = !DILocation(line: 409, column: 2, scope: !4485)
!4517 = distinct !DISubprogram(name: "__kfifo_in_r", scope: !3, file: !3, line: 438, type: !4518, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4520)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!7, !3482, !2559, !7, !465}
!4520 = !{!4521, !4522, !4523, !4524}
!4521 = !DILocalVariable(name: "fifo", arg: 1, scope: !4517, file: !3, line: 438, type: !3482)
!4522 = !DILocalVariable(name: "buf", arg: 2, scope: !4517, file: !3, line: 438, type: !2559)
!4523 = !DILocalVariable(name: "len", arg: 3, scope: !4517, file: !3, line: 439, type: !7)
!4524 = !DILocalVariable(name: "recsize", arg: 4, scope: !4517, file: !3, line: 439, type: !465)
!4525 = !DILocation(line: 438, column: 43, scope: !4517)
!4526 = !DILocation(line: 438, column: 61, scope: !4517)
!4527 = !DILocation(line: 439, column: 16, scope: !4517)
!4528 = !DILocation(line: 439, column: 28, scope: !4517)
!4529 = !DILocation(line: 441, column: 6, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 441, column: 6)
!4531 = !DILocation(line: 441, column: 12, scope: !4530)
!4532 = !DILocation(line: 441, column: 10, scope: !4530)
!4533 = !DILocation(line: 441, column: 35, scope: !4530)
!4534 = !DILocation(line: 441, column: 22, scope: !4530)
!4535 = !DILocation(line: 441, column: 20, scope: !4530)
!4536 = !DILocation(line: 441, column: 6, scope: !4517)
!4537 = !DILocation(line: 442, column: 3, scope: !4530)
!4538 = !DILocation(line: 444, column: 17, scope: !4517)
!4539 = !DILocation(line: 444, column: 23, scope: !4517)
!4540 = !DILocation(line: 444, column: 28, scope: !4517)
!4541 = !DILocation(line: 444, column: 2, scope: !4517)
!4542 = !DILocation(line: 446, column: 16, scope: !4517)
!4543 = !DILocation(line: 446, column: 22, scope: !4517)
!4544 = !DILocation(line: 446, column: 27, scope: !4517)
!4545 = !DILocation(line: 446, column: 32, scope: !4517)
!4546 = !DILocation(line: 446, column: 38, scope: !4517)
!4547 = !DILocation(line: 446, column: 43, scope: !4517)
!4548 = !DILocation(line: 446, column: 41, scope: !4517)
!4549 = !DILocation(line: 446, column: 2, scope: !4517)
!4550 = !DILocation(line: 447, column: 14, scope: !4517)
!4551 = !DILocation(line: 447, column: 20, scope: !4517)
!4552 = !DILocation(line: 447, column: 18, scope: !4517)
!4553 = !DILocation(line: 447, column: 2, scope: !4517)
!4554 = !DILocation(line: 447, column: 8, scope: !4517)
!4555 = !DILocation(line: 447, column: 11, scope: !4517)
!4556 = !DILocation(line: 448, column: 9, scope: !4517)
!4557 = !DILocation(line: 448, column: 2, scope: !4517)
!4558 = !DILocation(line: 449, column: 1, scope: !4517)
!4559 = distinct !DISubprogram(name: "__kfifo_poke_n", scope: !3, file: !3, line: 421, type: !4560, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4562)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{null, !3482, !7, !465}
!4562 = !{!4563, !4564, !4565, !4566, !4567}
!4563 = !DILocalVariable(name: "fifo", arg: 1, scope: !4559, file: !3, line: 421, type: !3482)
!4564 = !DILocalVariable(name: "n", arg: 2, scope: !4559, file: !3, line: 421, type: !7)
!4565 = !DILocalVariable(name: "recsize", arg: 3, scope: !4559, file: !3, line: 421, type: !465)
!4566 = !DILocalVariable(name: "mask", scope: !4559, file: !3, line: 423, type: !7)
!4567 = !DILocalVariable(name: "data", scope: !4559, file: !3, line: 424, type: !4492)
!4568 = !DILocation(line: 421, column: 44, scope: !4559)
!4569 = !DILocation(line: 421, column: 63, scope: !4559)
!4570 = !DILocation(line: 421, column: 73, scope: !4559)
!4571 = !DILocation(line: 423, column: 2, scope: !4559)
!4572 = !DILocation(line: 423, column: 15, scope: !4559)
!4573 = !DILocation(line: 423, column: 22, scope: !4559)
!4574 = !DILocation(line: 423, column: 28, scope: !4559)
!4575 = !DILocation(line: 424, column: 2, scope: !4559)
!4576 = !DILocation(line: 424, column: 17, scope: !4559)
!4577 = !DILocation(line: 424, column: 24, scope: !4559)
!4578 = !DILocation(line: 424, column: 30, scope: !4559)
!4579 = !DILocation(line: 426, column: 2, scope: !4559)
!4580 = !DILocation(line: 428, column: 6, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 428, column: 6)
!4582 = !DILocation(line: 428, column: 14, scope: !4581)
!4583 = !DILocation(line: 428, column: 6, scope: !4559)
!4584 = !DILocation(line: 429, column: 3, scope: !4581)
!4585 = !DILocation(line: 430, column: 1, scope: !4559)
!4586 = distinct !DISubprogram(name: "__kfifo_out_peek_r", scope: !3, file: !3, line: 464, type: !4587, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4589)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!7, !3482, !90, !7, !465}
!4589 = !{!4590, !4591, !4592, !4593, !4594}
!4590 = !DILocalVariable(name: "fifo", arg: 1, scope: !4586, file: !3, line: 464, type: !3482)
!4591 = !DILocalVariable(name: "buf", arg: 2, scope: !4586, file: !3, line: 464, type: !90)
!4592 = !DILocalVariable(name: "len", arg: 3, scope: !4586, file: !3, line: 465, type: !7)
!4593 = !DILocalVariable(name: "recsize", arg: 4, scope: !4586, file: !3, line: 465, type: !465)
!4594 = !DILocalVariable(name: "n", scope: !4586, file: !3, line: 467, type: !7)
!4595 = !DILocation(line: 464, column: 49, scope: !4586)
!4596 = !DILocation(line: 464, column: 61, scope: !4586)
!4597 = !DILocation(line: 465, column: 16, scope: !4586)
!4598 = !DILocation(line: 465, column: 28, scope: !4586)
!4599 = !DILocation(line: 467, column: 2, scope: !4586)
!4600 = !DILocation(line: 467, column: 15, scope: !4586)
!4601 = !DILocation(line: 469, column: 6, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 469, column: 6)
!4603 = !DILocation(line: 469, column: 12, scope: !4602)
!4604 = !DILocation(line: 469, column: 18, scope: !4602)
!4605 = !DILocation(line: 469, column: 24, scope: !4602)
!4606 = !DILocation(line: 469, column: 15, scope: !4602)
!4607 = !DILocation(line: 469, column: 6, scope: !4586)
!4608 = !DILocation(line: 470, column: 3, scope: !4602)
!4609 = !DILocation(line: 472, column: 26, scope: !4586)
!4610 = !DILocation(line: 472, column: 32, scope: !4586)
!4611 = !DILocation(line: 472, column: 37, scope: !4586)
!4612 = !DILocation(line: 472, column: 42, scope: !4586)
!4613 = !DILocation(line: 472, column: 9, scope: !4586)
!4614 = !DILocation(line: 472, column: 2, scope: !4586)
!4615 = !DILocation(line: 473, column: 1, scope: !4586)
!4616 = distinct !DISubprogram(name: "kfifo_out_copy_r", scope: !3, file: !3, line: 452, type: !4617, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4619)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!7, !3482, !90, !7, !465, !806}
!4619 = !{!4620, !4621, !4622, !4623, !4624}
!4620 = !DILocalVariable(name: "fifo", arg: 1, scope: !4616, file: !3, line: 452, type: !3482)
!4621 = !DILocalVariable(name: "buf", arg: 2, scope: !4616, file: !3, line: 453, type: !90)
!4622 = !DILocalVariable(name: "len", arg: 3, scope: !4616, file: !3, line: 453, type: !7)
!4623 = !DILocalVariable(name: "recsize", arg: 4, scope: !4616, file: !3, line: 453, type: !465)
!4624 = !DILocalVariable(name: "n", arg: 5, scope: !4616, file: !3, line: 453, type: !806)
!4625 = !DILocation(line: 452, column: 54, scope: !4616)
!4626 = !DILocation(line: 453, column: 8, scope: !4616)
!4627 = !DILocation(line: 453, column: 26, scope: !4616)
!4628 = !DILocation(line: 453, column: 38, scope: !4616)
!4629 = !DILocation(line: 453, column: 61, scope: !4616)
!4630 = !DILocation(line: 455, column: 22, scope: !4616)
!4631 = !DILocation(line: 455, column: 28, scope: !4616)
!4632 = !DILocation(line: 455, column: 7, scope: !4616)
!4633 = !DILocation(line: 455, column: 3, scope: !4616)
!4634 = !DILocation(line: 455, column: 5, scope: !4616)
!4635 = !DILocation(line: 457, column: 6, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 457, column: 6)
!4637 = !DILocation(line: 457, column: 13, scope: !4636)
!4638 = !DILocation(line: 457, column: 12, scope: !4636)
!4639 = !DILocation(line: 457, column: 10, scope: !4636)
!4640 = !DILocation(line: 457, column: 6, scope: !4616)
!4641 = !DILocation(line: 458, column: 10, scope: !4636)
!4642 = !DILocation(line: 458, column: 9, scope: !4636)
!4643 = !DILocation(line: 458, column: 7, scope: !4636)
!4644 = !DILocation(line: 458, column: 3, scope: !4636)
!4645 = !DILocation(line: 460, column: 17, scope: !4616)
!4646 = !DILocation(line: 460, column: 23, scope: !4616)
!4647 = !DILocation(line: 460, column: 28, scope: !4616)
!4648 = !DILocation(line: 460, column: 33, scope: !4616)
!4649 = !DILocation(line: 460, column: 39, scope: !4616)
!4650 = !DILocation(line: 460, column: 45, scope: !4616)
!4651 = !DILocation(line: 460, column: 43, scope: !4616)
!4652 = !DILocation(line: 460, column: 2, scope: !4616)
!4653 = !DILocation(line: 461, column: 9, scope: !4616)
!4654 = !DILocation(line: 461, column: 2, scope: !4616)
!4655 = distinct !DISubprogram(name: "__kfifo_out_r", scope: !3, file: !3, line: 476, type: !4587, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4656)
!4656 = !{!4657, !4658, !4659, !4660, !4661}
!4657 = !DILocalVariable(name: "fifo", arg: 1, scope: !4655, file: !3, line: 476, type: !3482)
!4658 = !DILocalVariable(name: "buf", arg: 2, scope: !4655, file: !3, line: 476, type: !90)
!4659 = !DILocalVariable(name: "len", arg: 3, scope: !4655, file: !3, line: 477, type: !7)
!4660 = !DILocalVariable(name: "recsize", arg: 4, scope: !4655, file: !3, line: 477, type: !465)
!4661 = !DILocalVariable(name: "n", scope: !4655, file: !3, line: 479, type: !7)
!4662 = !DILocation(line: 476, column: 44, scope: !4655)
!4663 = !DILocation(line: 476, column: 56, scope: !4655)
!4664 = !DILocation(line: 477, column: 16, scope: !4655)
!4665 = !DILocation(line: 477, column: 28, scope: !4655)
!4666 = !DILocation(line: 479, column: 2, scope: !4655)
!4667 = !DILocation(line: 479, column: 15, scope: !4655)
!4668 = !DILocation(line: 481, column: 6, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 481, column: 6)
!4670 = !DILocation(line: 481, column: 12, scope: !4669)
!4671 = !DILocation(line: 481, column: 18, scope: !4669)
!4672 = !DILocation(line: 481, column: 24, scope: !4669)
!4673 = !DILocation(line: 481, column: 15, scope: !4669)
!4674 = !DILocation(line: 481, column: 6, scope: !4655)
!4675 = !DILocation(line: 482, column: 3, scope: !4669)
!4676 = !DILocation(line: 484, column: 25, scope: !4655)
!4677 = !DILocation(line: 484, column: 31, scope: !4655)
!4678 = !DILocation(line: 484, column: 36, scope: !4655)
!4679 = !DILocation(line: 484, column: 41, scope: !4655)
!4680 = !DILocation(line: 484, column: 8, scope: !4655)
!4681 = !DILocation(line: 484, column: 6, scope: !4655)
!4682 = !DILocation(line: 485, column: 15, scope: !4655)
!4683 = !DILocation(line: 485, column: 19, scope: !4655)
!4684 = !DILocation(line: 485, column: 17, scope: !4655)
!4685 = !DILocation(line: 485, column: 2, scope: !4655)
!4686 = !DILocation(line: 485, column: 8, scope: !4655)
!4687 = !DILocation(line: 485, column: 12, scope: !4655)
!4688 = !DILocation(line: 486, column: 9, scope: !4655)
!4689 = !DILocation(line: 486, column: 2, scope: !4655)
!4690 = !DILocation(line: 487, column: 1, scope: !4655)
!4691 = distinct !DISubprogram(name: "__kfifo_skip_r", scope: !3, file: !3, line: 490, type: !4692, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4694)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{null, !3482, !465}
!4694 = !{!4695, !4696, !4697}
!4695 = !DILocalVariable(name: "fifo", arg: 1, scope: !4691, file: !3, line: 490, type: !3482)
!4696 = !DILocalVariable(name: "recsize", arg: 2, scope: !4691, file: !3, line: 490, type: !465)
!4697 = !DILocalVariable(name: "n", scope: !4691, file: !3, line: 492, type: !7)
!4698 = !DILocation(line: 490, column: 37, scope: !4691)
!4699 = !DILocation(line: 490, column: 50, scope: !4691)
!4700 = !DILocation(line: 492, column: 2, scope: !4691)
!4701 = !DILocation(line: 492, column: 15, scope: !4691)
!4702 = !DILocation(line: 494, column: 21, scope: !4691)
!4703 = !DILocation(line: 494, column: 27, scope: !4691)
!4704 = !DILocation(line: 494, column: 6, scope: !4691)
!4705 = !DILocation(line: 494, column: 4, scope: !4691)
!4706 = !DILocation(line: 495, column: 15, scope: !4691)
!4707 = !DILocation(line: 495, column: 19, scope: !4691)
!4708 = !DILocation(line: 495, column: 17, scope: !4691)
!4709 = !DILocation(line: 495, column: 2, scope: !4691)
!4710 = !DILocation(line: 495, column: 8, scope: !4691)
!4711 = !DILocation(line: 495, column: 12, scope: !4691)
!4712 = !DILocation(line: 496, column: 1, scope: !4691)
!4713 = distinct !DISubprogram(name: "__kfifo_from_user_r", scope: !3, file: !3, line: 499, type: !4714, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4716)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!94, !3482, !2559, !91, !806, !465}
!4716 = !{!4717, !4718, !4719, !4720, !4721, !4722}
!4717 = !DILocalVariable(name: "fifo", arg: 1, scope: !4713, file: !3, line: 499, type: !3482)
!4718 = !DILocalVariable(name: "from", arg: 2, scope: !4713, file: !3, line: 499, type: !2559)
!4719 = !DILocalVariable(name: "len", arg: 3, scope: !4713, file: !3, line: 500, type: !91)
!4720 = !DILocalVariable(name: "copied", arg: 4, scope: !4713, file: !3, line: 500, type: !806)
!4721 = !DILocalVariable(name: "recsize", arg: 5, scope: !4713, file: !3, line: 500, type: !465)
!4722 = !DILocalVariable(name: "ret", scope: !4713, file: !3, line: 502, type: !91)
!4723 = !DILocation(line: 499, column: 41, scope: !4713)
!4724 = !DILocation(line: 499, column: 66, scope: !4713)
!4725 = !DILocation(line: 500, column: 16, scope: !4713)
!4726 = !DILocation(line: 500, column: 35, scope: !4713)
!4727 = !DILocation(line: 500, column: 50, scope: !4713)
!4728 = !DILocation(line: 502, column: 2, scope: !4713)
!4729 = !DILocation(line: 502, column: 16, scope: !4713)
!4730 = !DILocation(line: 504, column: 22, scope: !4713)
!4731 = !DILocation(line: 504, column: 27, scope: !4713)
!4732 = !DILocation(line: 504, column: 8, scope: !4713)
!4733 = !DILocation(line: 504, column: 6, scope: !4713)
!4734 = !DILocation(line: 506, column: 6, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 506, column: 6)
!4736 = !DILocation(line: 506, column: 12, scope: !4735)
!4737 = !DILocation(line: 506, column: 10, scope: !4735)
!4738 = !DILocation(line: 506, column: 35, scope: !4735)
!4739 = !DILocation(line: 506, column: 22, scope: !4735)
!4740 = !DILocation(line: 506, column: 20, scope: !4735)
!4741 = !DILocation(line: 506, column: 6, scope: !4713)
!4742 = !DILocation(line: 507, column: 4, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 506, column: 42)
!4744 = !DILocation(line: 507, column: 11, scope: !4743)
!4745 = !DILocation(line: 508, column: 3, scope: !4743)
!4746 = !DILocation(line: 511, column: 17, scope: !4713)
!4747 = !DILocation(line: 511, column: 23, scope: !4713)
!4748 = !DILocation(line: 511, column: 28, scope: !4713)
!4749 = !DILocation(line: 511, column: 2, scope: !4713)
!4750 = !DILocation(line: 513, column: 29, scope: !4713)
!4751 = !DILocation(line: 513, column: 35, scope: !4713)
!4752 = !DILocation(line: 513, column: 41, scope: !4713)
!4753 = !DILocation(line: 513, column: 46, scope: !4713)
!4754 = !DILocation(line: 513, column: 52, scope: !4713)
!4755 = !DILocation(line: 513, column: 57, scope: !4713)
!4756 = !DILocation(line: 513, column: 55, scope: !4713)
!4757 = !DILocation(line: 513, column: 66, scope: !4713)
!4758 = !DILocation(line: 513, column: 8, scope: !4713)
!4759 = !DILocation(line: 513, column: 6, scope: !4713)
!4760 = !DILocation(line: 514, column: 6, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 514, column: 6)
!4762 = !DILocation(line: 514, column: 6, scope: !4713)
!4763 = !DILocation(line: 515, column: 4, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 514, column: 21)
!4765 = !DILocation(line: 515, column: 11, scope: !4764)
!4766 = !DILocation(line: 516, column: 3, scope: !4764)
!4767 = !DILocation(line: 518, column: 14, scope: !4713)
!4768 = !DILocation(line: 518, column: 20, scope: !4713)
!4769 = !DILocation(line: 518, column: 18, scope: !4713)
!4770 = !DILocation(line: 518, column: 2, scope: !4713)
!4771 = !DILocation(line: 518, column: 8, scope: !4713)
!4772 = !DILocation(line: 518, column: 11, scope: !4713)
!4773 = !DILocation(line: 519, column: 2, scope: !4713)
!4774 = !DILocation(line: 520, column: 1, scope: !4713)
!4775 = distinct !DISubprogram(name: "__kfifo_to_user_r", scope: !3, file: !3, line: 523, type: !4776, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4778)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!94, !3482, !90, !91, !806, !465}
!4778 = !{!4779, !4780, !4781, !4782, !4783, !4784, !4785}
!4779 = !DILocalVariable(name: "fifo", arg: 1, scope: !4775, file: !3, line: 523, type: !3482)
!4780 = !DILocalVariable(name: "to", arg: 2, scope: !4775, file: !3, line: 523, type: !90)
!4781 = !DILocalVariable(name: "len", arg: 3, scope: !4775, file: !3, line: 524, type: !91)
!4782 = !DILocalVariable(name: "copied", arg: 4, scope: !4775, file: !3, line: 524, type: !806)
!4783 = !DILocalVariable(name: "recsize", arg: 5, scope: !4775, file: !3, line: 524, type: !465)
!4784 = !DILocalVariable(name: "ret", scope: !4775, file: !3, line: 526, type: !91)
!4785 = !DILocalVariable(name: "n", scope: !4775, file: !3, line: 527, type: !7)
!4786 = !DILocation(line: 523, column: 39, scope: !4775)
!4787 = !DILocation(line: 523, column: 58, scope: !4775)
!4788 = !DILocation(line: 524, column: 16, scope: !4775)
!4789 = !DILocation(line: 524, column: 35, scope: !4775)
!4790 = !DILocation(line: 524, column: 50, scope: !4775)
!4791 = !DILocation(line: 526, column: 2, scope: !4775)
!4792 = !DILocation(line: 526, column: 16, scope: !4775)
!4793 = !DILocation(line: 527, column: 2, scope: !4775)
!4794 = !DILocation(line: 527, column: 15, scope: !4775)
!4795 = !DILocation(line: 529, column: 6, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 529, column: 6)
!4797 = !DILocation(line: 529, column: 12, scope: !4796)
!4798 = !DILocation(line: 529, column: 18, scope: !4796)
!4799 = !DILocation(line: 529, column: 24, scope: !4796)
!4800 = !DILocation(line: 529, column: 15, scope: !4796)
!4801 = !DILocation(line: 529, column: 6, scope: !4775)
!4802 = !DILocation(line: 530, column: 4, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 529, column: 29)
!4804 = !DILocation(line: 530, column: 11, scope: !4803)
!4805 = !DILocation(line: 531, column: 3, scope: !4803)
!4806 = !DILocation(line: 534, column: 21, scope: !4775)
!4807 = !DILocation(line: 534, column: 27, scope: !4775)
!4808 = !DILocation(line: 534, column: 6, scope: !4775)
!4809 = !DILocation(line: 534, column: 4, scope: !4775)
!4810 = !DILocation(line: 535, column: 6, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 535, column: 6)
!4812 = !DILocation(line: 535, column: 12, scope: !4811)
!4813 = !DILocation(line: 535, column: 10, scope: !4811)
!4814 = !DILocation(line: 535, column: 6, scope: !4775)
!4815 = !DILocation(line: 536, column: 9, scope: !4811)
!4816 = !DILocation(line: 536, column: 7, scope: !4811)
!4817 = !DILocation(line: 536, column: 3, scope: !4811)
!4818 = !DILocation(line: 538, column: 27, scope: !4775)
!4819 = !DILocation(line: 538, column: 33, scope: !4775)
!4820 = !DILocation(line: 538, column: 37, scope: !4775)
!4821 = !DILocation(line: 538, column: 42, scope: !4775)
!4822 = !DILocation(line: 538, column: 48, scope: !4775)
!4823 = !DILocation(line: 538, column: 54, scope: !4775)
!4824 = !DILocation(line: 538, column: 52, scope: !4775)
!4825 = !DILocation(line: 538, column: 63, scope: !4775)
!4826 = !DILocation(line: 538, column: 8, scope: !4775)
!4827 = !DILocation(line: 538, column: 6, scope: !4775)
!4828 = !DILocation(line: 539, column: 6, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 539, column: 6)
!4830 = !DILocation(line: 539, column: 6, scope: !4775)
!4831 = !DILocation(line: 540, column: 4, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 539, column: 21)
!4833 = !DILocation(line: 540, column: 11, scope: !4832)
!4834 = !DILocation(line: 541, column: 3, scope: !4832)
!4835 = !DILocation(line: 543, column: 15, scope: !4775)
!4836 = !DILocation(line: 543, column: 19, scope: !4775)
!4837 = !DILocation(line: 543, column: 17, scope: !4775)
!4838 = !DILocation(line: 543, column: 2, scope: !4775)
!4839 = !DILocation(line: 543, column: 8, scope: !4775)
!4840 = !DILocation(line: 543, column: 12, scope: !4775)
!4841 = !DILocation(line: 544, column: 2, scope: !4775)
!4842 = !DILocation(line: 545, column: 1, scope: !4775)
!4843 = distinct !DISubprogram(name: "__kfifo_dma_in_prepare_r", scope: !3, file: !3, line: 548, type: !4844, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4846)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!7, !3482, !4294, !94, !7, !465}
!4846 = !{!4847, !4848, !4849, !4850, !4851}
!4847 = !DILocalVariable(name: "fifo", arg: 1, scope: !4843, file: !3, line: 548, type: !3482)
!4848 = !DILocalVariable(name: "sgl", arg: 2, scope: !4843, file: !3, line: 549, type: !4294)
!4849 = !DILocalVariable(name: "nents", arg: 3, scope: !4843, file: !3, line: 549, type: !94)
!4850 = !DILocalVariable(name: "len", arg: 4, scope: !4843, file: !3, line: 549, type: !7)
!4851 = !DILocalVariable(name: "recsize", arg: 5, scope: !4843, file: !3, line: 549, type: !465)
!4852 = !DILocation(line: 548, column: 55, scope: !4843)
!4853 = !DILocation(line: 549, column: 22, scope: !4843)
!4854 = !DILocation(line: 549, column: 31, scope: !4843)
!4855 = !DILocation(line: 549, column: 51, scope: !4843)
!4856 = !DILocation(line: 549, column: 63, scope: !4843)
!4857 = !DILocation(line: 551, column: 2, scope: !4843)
!4858 = !DILocation(line: 551, column: 2, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 551, column: 2)
!4860 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 551, column: 2)
!4861 = !DILocation(line: 551, column: 2, scope: !4860)
!4862 = !DILocation(line: 551, column: 2, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 551, column: 2)
!4864 = !DILocation(line: 551, column: 2, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 551, column: 2)
!4866 = !DILocation(line: 551, column: 2, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 551, column: 2)
!4868 = !{i64 2154133311, i64 2154133340, i64 2154133386, i64 2154133444, i64 2154133498, i64 2154133552, i64 2154133607, i64 2154133638}
!4869 = !DILocation(line: 553, column: 22, scope: !4843)
!4870 = !DILocation(line: 553, column: 27, scope: !4843)
!4871 = !DILocation(line: 553, column: 8, scope: !4843)
!4872 = !DILocation(line: 553, column: 6, scope: !4843)
!4873 = !DILocation(line: 555, column: 6, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 555, column: 6)
!4875 = !DILocation(line: 555, column: 12, scope: !4874)
!4876 = !DILocation(line: 555, column: 10, scope: !4874)
!4877 = !DILocation(line: 555, column: 35, scope: !4874)
!4878 = !DILocation(line: 555, column: 22, scope: !4874)
!4879 = !DILocation(line: 555, column: 20, scope: !4874)
!4880 = !DILocation(line: 555, column: 6, scope: !4843)
!4881 = !DILocation(line: 556, column: 3, scope: !4874)
!4882 = !DILocation(line: 558, column: 19, scope: !4843)
!4883 = !DILocation(line: 558, column: 25, scope: !4843)
!4884 = !DILocation(line: 558, column: 30, scope: !4843)
!4885 = !DILocation(line: 558, column: 37, scope: !4843)
!4886 = !DILocation(line: 558, column: 42, scope: !4843)
!4887 = !DILocation(line: 558, column: 48, scope: !4843)
!4888 = !DILocation(line: 558, column: 53, scope: !4843)
!4889 = !DILocation(line: 558, column: 51, scope: !4843)
!4890 = !DILocation(line: 558, column: 9, scope: !4843)
!4891 = !DILocation(line: 558, column: 2, scope: !4843)
!4892 = !DILocation(line: 559, column: 1, scope: !4843)
!4893 = distinct !DISubprogram(name: "__kfifo_dma_in_finish_r", scope: !3, file: !3, line: 562, type: !4560, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4894)
!4894 = !{!4895, !4896, !4897}
!4895 = !DILocalVariable(name: "fifo", arg: 1, scope: !4893, file: !3, line: 562, type: !3482)
!4896 = !DILocalVariable(name: "len", arg: 2, scope: !4893, file: !3, line: 563, type: !7)
!4897 = !DILocalVariable(name: "recsize", arg: 3, scope: !4893, file: !3, line: 563, type: !465)
!4898 = !DILocation(line: 562, column: 46, scope: !4893)
!4899 = !DILocation(line: 563, column: 15, scope: !4893)
!4900 = !DILocation(line: 563, column: 27, scope: !4893)
!4901 = !DILocation(line: 565, column: 22, scope: !4893)
!4902 = !DILocation(line: 565, column: 27, scope: !4893)
!4903 = !DILocation(line: 565, column: 8, scope: !4893)
!4904 = !DILocation(line: 565, column: 6, scope: !4893)
!4905 = !DILocation(line: 566, column: 17, scope: !4893)
!4906 = !DILocation(line: 566, column: 23, scope: !4893)
!4907 = !DILocation(line: 566, column: 28, scope: !4893)
!4908 = !DILocation(line: 566, column: 2, scope: !4893)
!4909 = !DILocation(line: 567, column: 14, scope: !4893)
!4910 = !DILocation(line: 567, column: 20, scope: !4893)
!4911 = !DILocation(line: 567, column: 18, scope: !4893)
!4912 = !DILocation(line: 567, column: 2, scope: !4893)
!4913 = !DILocation(line: 567, column: 8, scope: !4893)
!4914 = !DILocation(line: 567, column: 11, scope: !4893)
!4915 = !DILocation(line: 568, column: 1, scope: !4893)
!4916 = distinct !DISubprogram(name: "__kfifo_dma_out_prepare_r", scope: !3, file: !3, line: 571, type: !4844, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4917)
!4917 = !{!4918, !4919, !4920, !4921, !4922}
!4918 = !DILocalVariable(name: "fifo", arg: 1, scope: !4916, file: !3, line: 571, type: !3482)
!4919 = !DILocalVariable(name: "sgl", arg: 2, scope: !4916, file: !3, line: 572, type: !4294)
!4920 = !DILocalVariable(name: "nents", arg: 3, scope: !4916, file: !3, line: 572, type: !94)
!4921 = !DILocalVariable(name: "len", arg: 4, scope: !4916, file: !3, line: 572, type: !7)
!4922 = !DILocalVariable(name: "recsize", arg: 5, scope: !4916, file: !3, line: 572, type: !465)
!4923 = !DILocation(line: 571, column: 56, scope: !4916)
!4924 = !DILocation(line: 572, column: 22, scope: !4916)
!4925 = !DILocation(line: 572, column: 31, scope: !4916)
!4926 = !DILocation(line: 572, column: 51, scope: !4916)
!4927 = !DILocation(line: 572, column: 63, scope: !4916)
!4928 = !DILocation(line: 574, column: 2, scope: !4916)
!4929 = !DILocation(line: 574, column: 2, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 574, column: 2)
!4931 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 574, column: 2)
!4932 = !DILocation(line: 574, column: 2, scope: !4931)
!4933 = !DILocation(line: 574, column: 2, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 574, column: 2)
!4935 = !DILocation(line: 574, column: 2, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 574, column: 2)
!4937 = !DILocation(line: 574, column: 2, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 574, column: 2)
!4939 = !{i64 2154138176, i64 2154138205, i64 2154138251, i64 2154138309, i64 2154138363, i64 2154138417, i64 2154138472, i64 2154138503}
!4940 = !DILocation(line: 576, column: 22, scope: !4916)
!4941 = !DILocation(line: 576, column: 27, scope: !4916)
!4942 = !DILocation(line: 576, column: 8, scope: !4916)
!4943 = !DILocation(line: 576, column: 6, scope: !4916)
!4944 = !DILocation(line: 578, column: 6, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 578, column: 6)
!4946 = !DILocation(line: 578, column: 12, scope: !4945)
!4947 = !DILocation(line: 578, column: 10, scope: !4945)
!4948 = !DILocation(line: 578, column: 22, scope: !4945)
!4949 = !DILocation(line: 578, column: 28, scope: !4945)
!4950 = !DILocation(line: 578, column: 33, scope: !4945)
!4951 = !DILocation(line: 578, column: 39, scope: !4945)
!4952 = !DILocation(line: 578, column: 31, scope: !4945)
!4953 = !DILocation(line: 578, column: 20, scope: !4945)
!4954 = !DILocation(line: 578, column: 6, scope: !4916)
!4955 = !DILocation(line: 579, column: 3, scope: !4945)
!4956 = !DILocation(line: 581, column: 19, scope: !4916)
!4957 = !DILocation(line: 581, column: 25, scope: !4916)
!4958 = !DILocation(line: 581, column: 30, scope: !4916)
!4959 = !DILocation(line: 581, column: 37, scope: !4916)
!4960 = !DILocation(line: 581, column: 42, scope: !4916)
!4961 = !DILocation(line: 581, column: 48, scope: !4916)
!4962 = !DILocation(line: 581, column: 54, scope: !4916)
!4963 = !DILocation(line: 581, column: 52, scope: !4916)
!4964 = !DILocation(line: 581, column: 9, scope: !4916)
!4965 = !DILocation(line: 581, column: 2, scope: !4916)
!4966 = !DILocation(line: 582, column: 1, scope: !4916)
!4967 = distinct !DISubprogram(name: "__kfifo_dma_out_finish_r", scope: !3, file: !3, line: 585, type: !4692, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4968)
!4968 = !{!4969, !4970, !4971}
!4969 = !DILocalVariable(name: "fifo", arg: 1, scope: !4967, file: !3, line: 585, type: !3482)
!4970 = !DILocalVariable(name: "recsize", arg: 2, scope: !4967, file: !3, line: 585, type: !465)
!4971 = !DILocalVariable(name: "len", scope: !4967, file: !3, line: 587, type: !7)
!4972 = !DILocation(line: 585, column: 47, scope: !4967)
!4973 = !DILocation(line: 585, column: 60, scope: !4967)
!4974 = !DILocation(line: 587, column: 2, scope: !4967)
!4975 = !DILocation(line: 587, column: 15, scope: !4967)
!4976 = !DILocation(line: 589, column: 23, scope: !4967)
!4977 = !DILocation(line: 589, column: 29, scope: !4967)
!4978 = !DILocation(line: 589, column: 8, scope: !4967)
!4979 = !DILocation(line: 589, column: 6, scope: !4967)
!4980 = !DILocation(line: 590, column: 15, scope: !4967)
!4981 = !DILocation(line: 590, column: 21, scope: !4967)
!4982 = !DILocation(line: 590, column: 19, scope: !4967)
!4983 = !DILocation(line: 590, column: 2, scope: !4967)
!4984 = !DILocation(line: 590, column: 8, scope: !4967)
!4985 = !DILocation(line: 590, column: 12, scope: !4967)
!4986 = !DILocation(line: 591, column: 1, scope: !4967)
!4987 = distinct !DISubprogram(name: "fls", scope: !4988, file: !4988, line: 359, type: !4989, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4991)
!4988 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!94, !7}
!4991 = !{!4992, !4993}
!4992 = !DILocalVariable(name: "x", arg: 1, scope: !4987, file: !4988, line: 359, type: !7)
!4993 = !DILocalVariable(name: "r", scope: !4987, file: !4988, line: 361, type: !94)
!4994 = !DILocation(line: 359, column: 45, scope: !4987)
!4995 = !DILocation(line: 361, column: 2, scope: !4987)
!4996 = !DILocation(line: 361, column: 6, scope: !4987)
!4997 = !DILocation(line: 375, column: 14, scope: !4987)
!4998 = !DILocation(line: 373, column: 2, scope: !4987)
!4999 = !{i64 308426}
!5000 = !DILocation(line: 386, column: 9, scope: !4987)
!5001 = !DILocation(line: 386, column: 11, scope: !4987)
!5002 = !DILocation(line: 387, column: 1, scope: !4987)
!5003 = !DILocation(line: 386, column: 2, scope: !4987)
!5004 = distinct !DISubprogram(name: "fls_long", scope: !5005, file: !5005, line: 204, type: !5006, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5008)
!5005 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!7, !91}
!5008 = !{!5009}
!5009 = !DILocalVariable(name: "l", arg: 1, scope: !5004, file: !5005, line: 204, type: !91)
!5010 = !DILocation(line: 204, column: 47, scope: !5004)
!5011 = !DILocation(line: 208, column: 15, scope: !5004)
!5012 = !DILocation(line: 208, column: 9, scope: !5004)
!5013 = !DILocation(line: 208, column: 2, scope: !5004)
!5014 = distinct !DISubprogram(name: "fls64", scope: !4988, file: !4988, line: 401, type: !5015, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5017)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!94, !205}
!5017 = !{!5018, !5019}
!5018 = !DILocalVariable(name: "x", arg: 1, scope: !5014, file: !4988, line: 401, type: !205)
!5019 = !DILocalVariable(name: "bitpos", scope: !5014, file: !4988, line: 403, type: !94)
!5020 = !DILocation(line: 401, column: 40, scope: !5014)
!5021 = !DILocation(line: 403, column: 2, scope: !5014)
!5022 = !DILocation(line: 403, column: 6, scope: !5014)
!5023 = !DILocation(line: 409, column: 2, scope: !5014)
!5024 = !DILocation(line: 411, column: 14, scope: !5014)
!5025 = !{i64 309392}
!5026 = !DILocation(line: 412, column: 9, scope: !5014)
!5027 = !DILocation(line: 412, column: 16, scope: !5014)
!5028 = !DILocation(line: 413, column: 1, scope: !5014)
!5029 = !DILocation(line: 412, column: 2, scope: !5014)
!5030 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5031, file: !5031, line: 51, type: !5032, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5034)
!5031 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!1304, !1304}
!5034 = !{!5035}
!5035 = !DILocalVariable(name: "overflow", arg: 1, scope: !5030, file: !5031, line: 51, type: !1304)
!5036 = !DILocation(line: 51, column: 60, scope: !5030)
!5037 = !DILocation(line: 53, column: 9, scope: !5030)
!5038 = !{i8 0, i8 2}
!5039 = !DILocation(line: 53, column: 2, scope: !5030)
!5040 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !5041, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5043)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!90, !465, !92}
!5043 = !{!5044, !5045, !5046}
!5044 = !DILocalVariable(name: "size", arg: 1, scope: !5040, file: !12, line: 591, type: !465)
!5045 = !DILocalVariable(name: "flags", arg: 2, scope: !5040, file: !12, line: 591, type: !92)
!5046 = !DILocalVariable(name: "index", scope: !5047, file: !12, line: 594, type: !7)
!5047 = distinct !DILexicalBlock(scope: !5048, file: !12, line: 593, column: 42)
!5048 = distinct !DILexicalBlock(scope: !5040, file: !12, line: 593, column: 6)
!5049 = !DILocation(line: 591, column: 61, scope: !5040)
!5050 = !DILocation(line: 591, column: 73, scope: !5040)
!5051 = !DILocation(line: 593, column: 27, scope: !5048)
!5052 = !DILocation(line: 593, column: 6, scope: !5048)
!5053 = !DILocation(line: 593, column: 33, scope: !5048)
!5054 = !DILocation(line: 593, column: 36, scope: !5048)
!5055 = !DILocation(line: 593, column: 6, scope: !5040)
!5056 = !DILocation(line: 594, column: 3, scope: !5047)
!5057 = !DILocation(line: 594, column: 16, scope: !5047)
!5058 = !DILocation(line: 596, column: 7, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5047, file: !12, line: 596, column: 7)
!5060 = !DILocation(line: 596, column: 12, scope: !5059)
!5061 = !DILocation(line: 596, column: 7, scope: !5047)
!5062 = !DILocation(line: 597, column: 25, scope: !5059)
!5063 = !DILocation(line: 597, column: 31, scope: !5059)
!5064 = !DILocation(line: 597, column: 11, scope: !5059)
!5065 = !DILocation(line: 597, column: 4, scope: !5059)
!5066 = !DILocation(line: 599, column: 11, scope: !5047)
!5067 = !DILocation(line: 599, column: 9, scope: !5047)
!5068 = !DILocation(line: 601, column: 33, scope: !5047)
!5069 = !DILocation(line: 601, column: 40, scope: !5047)
!5070 = !DILocation(line: 601, column: 20, scope: !5047)
!5071 = !DILocation(line: 601, column: 5, scope: !5047)
!5072 = !DILocation(line: 601, column: 51, scope: !5047)
!5073 = !DILocation(line: 602, column: 5, scope: !5047)
!5074 = !DILocation(line: 602, column: 12, scope: !5047)
!5075 = !DILocation(line: 600, column: 10, scope: !5047)
!5076 = !DILocation(line: 600, column: 3, scope: !5047)
!5077 = !DILocation(line: 603, column: 2, scope: !5048)
!5078 = !DILocation(line: 604, column: 19, scope: !5040)
!5079 = !DILocation(line: 604, column: 25, scope: !5040)
!5080 = !DILocation(line: 604, column: 9, scope: !5040)
!5081 = !DILocation(line: 604, column: 2, scope: !5040)
!5082 = !DILocation(line: 605, column: 1, scope: !5040)
!5083 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !5041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5084 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !5041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5085 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !5086, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5088)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!7, !465, !1304}
!5088 = !{!5089, !5090}
!5089 = !DILocalVariable(name: "size", arg: 1, scope: !5085, file: !12, line: 444, type: !465)
!5090 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5085, file: !12, line: 445, type: !1304)
!5091 = !DILocation(line: 444, column: 60, scope: !5085)
!5092 = !DILocation(line: 445, column: 16, scope: !5085)
!5093 = !DILocation(line: 447, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 447, column: 6)
!5095 = !DILocation(line: 447, column: 6, scope: !5085)
!5096 = !DILocation(line: 448, column: 3, scope: !5094)
!5097 = !DILocation(line: 450, column: 6, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 450, column: 6)
!5099 = !DILocation(line: 450, column: 11, scope: !5098)
!5100 = !DILocation(line: 450, column: 6, scope: !5085)
!5101 = !DILocation(line: 451, column: 3, scope: !5098)
!5102 = !DILocation(line: 453, column: 32, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 453, column: 6)
!5104 = !DILocation(line: 453, column: 37, scope: !5103)
!5105 = !DILocation(line: 453, column: 42, scope: !5103)
!5106 = !DILocation(line: 453, column: 45, scope: !5103)
!5107 = !DILocation(line: 453, column: 50, scope: !5103)
!5108 = !DILocation(line: 453, column: 6, scope: !5085)
!5109 = !DILocation(line: 454, column: 3, scope: !5103)
!5110 = !DILocation(line: 455, column: 32, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 455, column: 6)
!5112 = !DILocation(line: 455, column: 37, scope: !5111)
!5113 = !DILocation(line: 455, column: 43, scope: !5111)
!5114 = !DILocation(line: 455, column: 46, scope: !5111)
!5115 = !DILocation(line: 455, column: 51, scope: !5111)
!5116 = !DILocation(line: 455, column: 6, scope: !5085)
!5117 = !DILocation(line: 456, column: 3, scope: !5111)
!5118 = !DILocation(line: 457, column: 6, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 457, column: 6)
!5120 = !DILocation(line: 457, column: 11, scope: !5119)
!5121 = !DILocation(line: 457, column: 6, scope: !5085)
!5122 = !DILocation(line: 457, column: 26, scope: !5119)
!5123 = !DILocation(line: 458, column: 6, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 458, column: 6)
!5125 = !DILocation(line: 458, column: 11, scope: !5124)
!5126 = !DILocation(line: 458, column: 6, scope: !5085)
!5127 = !DILocation(line: 458, column: 26, scope: !5124)
!5128 = !DILocation(line: 459, column: 6, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 459, column: 6)
!5130 = !DILocation(line: 459, column: 11, scope: !5129)
!5131 = !DILocation(line: 459, column: 6, scope: !5085)
!5132 = !DILocation(line: 459, column: 26, scope: !5129)
!5133 = !DILocation(line: 460, column: 6, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 460, column: 6)
!5135 = !DILocation(line: 460, column: 11, scope: !5134)
!5136 = !DILocation(line: 460, column: 6, scope: !5085)
!5137 = !DILocation(line: 460, column: 26, scope: !5134)
!5138 = !DILocation(line: 461, column: 6, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 461, column: 6)
!5140 = !DILocation(line: 461, column: 11, scope: !5139)
!5141 = !DILocation(line: 461, column: 6, scope: !5085)
!5142 = !DILocation(line: 461, column: 26, scope: !5139)
!5143 = !DILocation(line: 462, column: 6, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 462, column: 6)
!5145 = !DILocation(line: 462, column: 11, scope: !5144)
!5146 = !DILocation(line: 462, column: 6, scope: !5085)
!5147 = !DILocation(line: 462, column: 26, scope: !5144)
!5148 = !DILocation(line: 463, column: 6, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 463, column: 6)
!5150 = !DILocation(line: 463, column: 11, scope: !5149)
!5151 = !DILocation(line: 463, column: 6, scope: !5085)
!5152 = !DILocation(line: 463, column: 26, scope: !5149)
!5153 = !DILocation(line: 464, column: 6, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 464, column: 6)
!5155 = !DILocation(line: 464, column: 11, scope: !5154)
!5156 = !DILocation(line: 464, column: 6, scope: !5085)
!5157 = !DILocation(line: 464, column: 26, scope: !5154)
!5158 = !DILocation(line: 465, column: 6, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 465, column: 6)
!5160 = !DILocation(line: 465, column: 11, scope: !5159)
!5161 = !DILocation(line: 465, column: 6, scope: !5085)
!5162 = !DILocation(line: 465, column: 26, scope: !5159)
!5163 = !DILocation(line: 466, column: 6, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 466, column: 6)
!5165 = !DILocation(line: 466, column: 11, scope: !5164)
!5166 = !DILocation(line: 466, column: 6, scope: !5085)
!5167 = !DILocation(line: 466, column: 26, scope: !5164)
!5168 = !DILocation(line: 467, column: 6, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 467, column: 6)
!5170 = !DILocation(line: 467, column: 11, scope: !5169)
!5171 = !DILocation(line: 467, column: 6, scope: !5085)
!5172 = !DILocation(line: 467, column: 26, scope: !5169)
!5173 = !DILocation(line: 468, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 468, column: 6)
!5175 = !DILocation(line: 468, column: 11, scope: !5174)
!5176 = !DILocation(line: 468, column: 6, scope: !5085)
!5177 = !DILocation(line: 468, column: 26, scope: !5174)
!5178 = !DILocation(line: 469, column: 6, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 469, column: 6)
!5180 = !DILocation(line: 469, column: 11, scope: !5179)
!5181 = !DILocation(line: 469, column: 6, scope: !5085)
!5182 = !DILocation(line: 469, column: 26, scope: !5179)
!5183 = !DILocation(line: 470, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 470, column: 6)
!5185 = !DILocation(line: 470, column: 11, scope: !5184)
!5186 = !DILocation(line: 470, column: 6, scope: !5085)
!5187 = !DILocation(line: 470, column: 26, scope: !5184)
!5188 = !DILocation(line: 471, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 471, column: 6)
!5190 = !DILocation(line: 471, column: 11, scope: !5189)
!5191 = !DILocation(line: 471, column: 6, scope: !5085)
!5192 = !DILocation(line: 471, column: 26, scope: !5189)
!5193 = !DILocation(line: 472, column: 6, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 472, column: 6)
!5195 = !DILocation(line: 472, column: 11, scope: !5194)
!5196 = !DILocation(line: 472, column: 6, scope: !5085)
!5197 = !DILocation(line: 472, column: 26, scope: !5194)
!5198 = !DILocation(line: 473, column: 6, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 473, column: 6)
!5200 = !DILocation(line: 473, column: 11, scope: !5199)
!5201 = !DILocation(line: 473, column: 6, scope: !5085)
!5202 = !DILocation(line: 473, column: 26, scope: !5199)
!5203 = !DILocation(line: 474, column: 6, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 474, column: 6)
!5205 = !DILocation(line: 474, column: 11, scope: !5204)
!5206 = !DILocation(line: 474, column: 6, scope: !5085)
!5207 = !DILocation(line: 474, column: 27, scope: !5204)
!5208 = !DILocation(line: 475, column: 6, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 475, column: 6)
!5210 = !DILocation(line: 475, column: 11, scope: !5209)
!5211 = !DILocation(line: 475, column: 6, scope: !5085)
!5212 = !DILocation(line: 475, column: 32, scope: !5209)
!5213 = !DILocation(line: 477, column: 50, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5085, file: !12, line: 477, column: 6)
!5215 = !DILocation(line: 477, column: 6, scope: !5085)
!5216 = !DILocation(line: 478, column: 3, scope: !5214)
!5217 = !DILocation(line: 478, column: 3, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5219, file: !12, line: 478, column: 3)
!5219 = distinct !DILexicalBlock(scope: !5214, file: !12, line: 478, column: 3)
!5220 = !{i32 -2143550880}
!5221 = !DILocation(line: 478, column: 3, scope: !5219)
!5222 = !DILocation(line: 480, column: 3, scope: !5214)
!5223 = !DILocation(line: 480, column: 3, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5214, file: !12, line: 480, column: 3)
!5225 = !DILocation(line: 480, column: 3, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5224, file: !12, line: 480, column: 3)
!5227 = !DILocation(line: 480, column: 3, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5224, file: !12, line: 480, column: 3)
!5229 = !{i64 2151416619, i64 2151416648, i64 2151416694, i64 2151416752, i64 2151416806, i64 2151416860, i64 2151416915, i64 2151416946}
!5230 = !DILocation(line: 483, column: 2, scope: !5085)
!5231 = !DILocation(line: 484, column: 1, scope: !5085)
!5232 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !5233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!90, !5235, !92, !465}
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5237, line: 11, flags: DIFlagFwdDecl)
!5237 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5238 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !5239, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!11, !92, !91}
!5241 = !{!5242, !5243}
!5242 = !DILocalVariable(name: "flags", arg: 1, scope: !5238, file: !12, line: 401, type: !92)
!5243 = !DILocalVariable(name: "caller", arg: 2, scope: !5238, file: !12, line: 401, type: !91)
!5244 = !DILocation(line: 401, column: 67, scope: !5238)
!5245 = !DILocation(line: 401, column: 88, scope: !5238)
!5246 = !DILocation(line: 407, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5238, file: !12, line: 407, column: 6)
!5248 = !DILocation(line: 407, column: 6, scope: !5238)
!5249 = !DILocation(line: 413, column: 3, scope: !5247)
!5250 = !DILocation(line: 423, column: 38, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5238, file: !12, line: 423, column: 6)
!5252 = !DILocation(line: 423, column: 44, scope: !5251)
!5253 = !DILocation(line: 423, column: 6, scope: !5238)
!5254 = !DILocation(line: 424, column: 3, scope: !5251)
!5255 = !DILocation(line: 426, column: 3, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5238, file: !12, line: 425, column: 6)
!5257 = !DILocation(line: 429, column: 1, scope: !5238)
!5258 = !DISubprogram(name: "__compiletime_assert_117", scope: !12, file: !12, line: 478, type: !2208, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5259 = distinct !DISubprogram(name: "copy_from_user", scope: !5260, file: !5260, line: 180, type: !5261, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5263)
!5260 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!91, !90, !2559, !91}
!5263 = !{!5264, !5265, !5266}
!5264 = !DILocalVariable(name: "to", arg: 1, scope: !5259, file: !5260, line: 180, type: !90)
!5265 = !DILocalVariable(name: "from", arg: 2, scope: !5259, file: !5260, line: 180, type: !2559)
!5266 = !DILocalVariable(name: "n", arg: 3, scope: !5259, file: !5260, line: 180, type: !91)
!5267 = !DILocation(line: 180, column: 22, scope: !5259)
!5268 = !DILocation(line: 180, column: 45, scope: !5259)
!5269 = !DILocation(line: 180, column: 65, scope: !5259)
!5270 = !DILocation(line: 182, column: 22, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5259, file: !5260, line: 182, column: 6)
!5272 = !DILocation(line: 182, column: 26, scope: !5271)
!5273 = !DILocation(line: 182, column: 6, scope: !5271)
!5274 = !DILocation(line: 182, column: 6, scope: !5259)
!5275 = !DILocation(line: 183, column: 23, scope: !5271)
!5276 = !DILocation(line: 183, column: 27, scope: !5271)
!5277 = !DILocation(line: 183, column: 33, scope: !5271)
!5278 = !DILocation(line: 183, column: 7, scope: !5271)
!5279 = !DILocation(line: 183, column: 5, scope: !5271)
!5280 = !DILocation(line: 183, column: 3, scope: !5271)
!5281 = !DILocation(line: 184, column: 9, scope: !5259)
!5282 = !DILocation(line: 184, column: 2, scope: !5259)
!5283 = distinct !DISubprogram(name: "check_copy_size", scope: !3463, file: !3463, line: 237, type: !5284, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5286)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!1304, !2559, !465, !1304}
!5286 = !{!5287, !5288, !5289, !5290, !5291, !5294}
!5287 = !DILocalVariable(name: "addr", arg: 1, scope: !5283, file: !3463, line: 237, type: !2559)
!5288 = !DILocalVariable(name: "bytes", arg: 2, scope: !5283, file: !3463, line: 237, type: !465)
!5289 = !DILocalVariable(name: "is_source", arg: 3, scope: !5283, file: !3463, line: 237, type: !1304)
!5290 = !DILocalVariable(name: "sz", scope: !5283, file: !3463, line: 239, type: !94)
!5291 = !DILocalVariable(name: "__ret_warn_on", scope: !5292, file: !3463, line: 249, type: !94)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !3463, line: 249, column: 6)
!5293 = distinct !DILexicalBlock(scope: !5283, file: !3463, line: 249, column: 6)
!5294 = !DILocalVariable(name: "__flags", scope: !5295, file: !3463, line: 249, type: !94)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !3463, line: 249, column: 6)
!5296 = distinct !DILexicalBlock(scope: !5292, file: !3463, line: 249, column: 6)
!5297 = !DILocation(line: 237, column: 29, scope: !5283)
!5298 = !DILocation(line: 237, column: 42, scope: !5283)
!5299 = !DILocation(line: 237, column: 54, scope: !5283)
!5300 = !DILocation(line: 239, column: 2, scope: !5283)
!5301 = !DILocation(line: 239, column: 6, scope: !5283)
!5302 = !DILocation(line: 239, column: 33, scope: !5283)
!5303 = !DILocation(line: 239, column: 11, scope: !5283)
!5304 = !DILocation(line: 240, column: 6, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5283, file: !3463, line: 240, column: 6)
!5306 = !DILocation(line: 0, scope: !5305)
!5307 = !DILocation(line: 240, column: 6, scope: !5283)
!5308 = !DILocation(line: 241, column: 29, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5310, file: !3463, line: 241, column: 7)
!5310 = distinct !DILexicalBlock(scope: !5305, file: !3463, line: 240, column: 39)
!5311 = !DILocation(line: 241, column: 8, scope: !5309)
!5312 = !DILocation(line: 241, column: 7, scope: !5310)
!5313 = !DILocation(line: 242, column: 18, scope: !5309)
!5314 = !DILocation(line: 242, column: 22, scope: !5309)
!5315 = !DILocation(line: 242, column: 4, scope: !5309)
!5316 = !DILocation(line: 243, column: 12, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5309, file: !3463, line: 243, column: 12)
!5318 = !DILocation(line: 243, column: 12, scope: !5309)
!5319 = !DILocation(line: 244, column: 4, scope: !5317)
!5320 = !{i32 915467}
!5321 = !DILocation(line: 246, column: 4, scope: !5317)
!5322 = !{i32 915496}
!5323 = !DILocation(line: 247, column: 3, scope: !5310)
!5324 = !DILocation(line: 249, column: 6, scope: !5292)
!5325 = !DILocation(line: 249, column: 6, scope: !5296)
!5326 = !DILocation(line: 249, column: 6, scope: !5295)
!5327 = !DILocation(line: 249, column: 6, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5295, file: !3463, line: 249, column: 6)
!5329 = !DILocation(line: 249, column: 6, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5295, file: !3463, line: 249, column: 6)
!5331 = !{i64 2149552497, i64 2149552526, i64 2149552572, i64 2149552630, i64 2149552684, i64 2149552738, i64 2149552793, i64 2149552824, i64 2149553132, i64 2149553138, i64 2149553185, i64 2149553208, i64 2149553234}
!5332 = !DILocation(line: 249, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5295, file: !3463, line: 249, column: 6)
!5334 = !DILocation(line: 249, column: 6, scope: !5293)
!5335 = !DILocation(line: 249, column: 6, scope: !5283)
!5336 = !DILocation(line: 250, column: 3, scope: !5293)
!5337 = !DILocation(line: 251, column: 20, scope: !5283)
!5338 = !DILocation(line: 251, column: 26, scope: !5283)
!5339 = !DILocation(line: 251, column: 33, scope: !5283)
!5340 = !DILocation(line: 251, column: 2, scope: !5283)
!5341 = !DILocation(line: 252, column: 2, scope: !5283)
!5342 = !DILocation(line: 253, column: 1, scope: !5283)
!5343 = !DISubprogram(name: "_copy_from_user", scope: !5260, file: !5260, line: 158, type: !5261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5344 = distinct !DISubprogram(name: "copy_overflow", scope: !3463, file: !3463, line: 230, type: !5345, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5347)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{null, !94, !91}
!5347 = !{!5348, !5349}
!5348 = !DILocalVariable(name: "size", arg: 1, scope: !5344, file: !3463, line: 230, type: !94)
!5349 = !DILocalVariable(name: "count", arg: 2, scope: !5344, file: !3463, line: 230, type: !91)
!5350 = !DILocation(line: 230, column: 38, scope: !5344)
!5351 = !DILocation(line: 230, column: 58, scope: !5344)
!5352 = !DILocation(line: 233, column: 19, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5344, file: !3463, line: 232, column: 6)
!5354 = !DILocation(line: 233, column: 25, scope: !5353)
!5355 = !DILocation(line: 233, column: 3, scope: !5353)
!5356 = !DILocation(line: 234, column: 1, scope: !5344)
!5357 = !DISubprogram(name: "__bad_copy_from", scope: !3463, file: !3463, line: 224, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5358 = !DISubprogram(name: "__bad_copy_to", scope: !3463, file: !3463, line: 226, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5359 = distinct !DISubprogram(name: "check_object_size", scope: !3463, file: !3463, line: 218, type: !5360, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5362)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{null, !2559, !91, !1304}
!5362 = !{!5363, !5364, !5365}
!5363 = !DILocalVariable(name: "ptr", arg: 1, scope: !5359, file: !3463, line: 218, type: !2559)
!5364 = !DILocalVariable(name: "n", arg: 2, scope: !5359, file: !3463, line: 218, type: !91)
!5365 = !DILocalVariable(name: "to_user", arg: 3, scope: !5359, file: !3463, line: 219, type: !1304)
!5366 = !DILocation(line: 218, column: 50, scope: !5359)
!5367 = !DILocation(line: 218, column: 69, scope: !5359)
!5368 = !DILocation(line: 219, column: 15, scope: !5359)
!5369 = !DILocation(line: 220, column: 3, scope: !5359)
!5370 = !DISubprogram(name: "__copy_overflow", scope: !3463, file: !3463, line: 228, type: !5345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5371 = distinct !DISubprogram(name: "copy_to_user", scope: !5260, file: !5260, line: 188, type: !5261, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5372)
!5372 = !{!5373, !5374, !5375}
!5373 = !DILocalVariable(name: "to", arg: 1, scope: !5371, file: !5260, line: 188, type: !90)
!5374 = !DILocalVariable(name: "from", arg: 2, scope: !5371, file: !5260, line: 188, type: !2559)
!5375 = !DILocalVariable(name: "n", arg: 3, scope: !5371, file: !5260, line: 188, type: !91)
!5376 = !DILocation(line: 188, column: 27, scope: !5371)
!5377 = !DILocation(line: 188, column: 43, scope: !5371)
!5378 = !DILocation(line: 188, column: 63, scope: !5371)
!5379 = !DILocation(line: 190, column: 22, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5371, file: !5260, line: 190, column: 6)
!5381 = !DILocation(line: 190, column: 28, scope: !5380)
!5382 = !DILocation(line: 190, column: 6, scope: !5380)
!5383 = !DILocation(line: 190, column: 6, scope: !5371)
!5384 = !DILocation(line: 191, column: 21, scope: !5380)
!5385 = !DILocation(line: 191, column: 25, scope: !5380)
!5386 = !DILocation(line: 191, column: 31, scope: !5380)
!5387 = !DILocation(line: 191, column: 7, scope: !5380)
!5388 = !DILocation(line: 191, column: 5, scope: !5380)
!5389 = !DILocation(line: 191, column: 3, scope: !5380)
!5390 = !DILocation(line: 192, column: 9, scope: !5371)
!5391 = !DILocation(line: 192, column: 2, scope: !5371)
!5392 = !DISubprogram(name: "_copy_to_user", scope: !5260, file: !5260, line: 176, type: !5261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5393 = distinct !DISubprogram(name: "setup_sgl_buf", scope: !3, file: !3, line: 295, type: !5394, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5396)
!5394 = !DISubroutineType(types: !5395)
!5395 = !{!94, !4294, !90, !94, !7}
!5396 = !{!5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405}
!5397 = !DILocalVariable(name: "sgl", arg: 1, scope: !5393, file: !3, line: 295, type: !4294)
!5398 = !DILocalVariable(name: "buf", arg: 2, scope: !5393, file: !3, line: 295, type: !90)
!5399 = !DILocalVariable(name: "nents", arg: 3, scope: !5393, file: !3, line: 296, type: !94)
!5400 = !DILocalVariable(name: "len", arg: 4, scope: !5393, file: !3, line: 296, type: !7)
!5401 = !DILocalVariable(name: "n", scope: !5393, file: !3, line: 298, type: !94)
!5402 = !DILocalVariable(name: "l", scope: !5393, file: !3, line: 299, type: !7)
!5403 = !DILocalVariable(name: "off", scope: !5393, file: !3, line: 300, type: !7)
!5404 = !DILocalVariable(name: "page", scope: !5393, file: !3, line: 301, type: !95)
!5405 = !DILocalVariable(name: "npage", scope: !5406, file: !3, line: 315, type: !95)
!5406 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 314, column: 37)
!5407 = !DILocation(line: 295, column: 46, scope: !5393)
!5408 = !DILocation(line: 295, column: 57, scope: !5393)
!5409 = !DILocation(line: 296, column: 7, scope: !5393)
!5410 = !DILocation(line: 296, column: 27, scope: !5393)
!5411 = !DILocation(line: 298, column: 2, scope: !5393)
!5412 = !DILocation(line: 298, column: 6, scope: !5393)
!5413 = !DILocation(line: 299, column: 2, scope: !5393)
!5414 = !DILocation(line: 299, column: 15, scope: !5393)
!5415 = !DILocation(line: 300, column: 2, scope: !5393)
!5416 = !DILocation(line: 300, column: 15, scope: !5393)
!5417 = !DILocation(line: 301, column: 2, scope: !5393)
!5418 = !DILocation(line: 301, column: 15, scope: !5393)
!5419 = !DILocation(line: 303, column: 7, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 303, column: 6)
!5421 = !DILocation(line: 303, column: 6, scope: !5393)
!5422 = !DILocation(line: 304, column: 3, scope: !5420)
!5423 = !DILocation(line: 306, column: 7, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 306, column: 6)
!5425 = !DILocation(line: 306, column: 6, scope: !5393)
!5426 = !DILocation(line: 307, column: 3, scope: !5424)
!5427 = !DILocation(line: 309, column: 4, scope: !5393)
!5428 = !DILocation(line: 310, column: 9, scope: !5393)
!5429 = !DILocation(line: 310, column: 7, scope: !5393)
!5430 = !DILocation(line: 311, column: 8, scope: !5393)
!5431 = !DILocation(line: 311, column: 6, scope: !5393)
!5432 = !DILocation(line: 312, column: 4, scope: !5393)
!5433 = !DILocation(line: 314, column: 2, scope: !5393)
!5434 = !DILocation(line: 314, column: 9, scope: !5393)
!5435 = !DILocation(line: 314, column: 16, scope: !5393)
!5436 = !DILocation(line: 314, column: 18, scope: !5393)
!5437 = !DILocation(line: 314, column: 32, scope: !5393)
!5438 = !DILocation(line: 314, column: 30, scope: !5393)
!5439 = !DILocation(line: 314, column: 13, scope: !5393)
!5440 = !DILocation(line: 315, column: 3, scope: !5406)
!5441 = !DILocation(line: 315, column: 16, scope: !5406)
!5442 = !DILocation(line: 317, column: 5, scope: !5406)
!5443 = !DILocation(line: 318, column: 7, scope: !5406)
!5444 = !DILocation(line: 319, column: 11, scope: !5406)
!5445 = !DILocation(line: 319, column: 9, scope: !5406)
!5446 = !DILocation(line: 320, column: 7, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 320, column: 7)
!5448 = !DILocation(line: 320, column: 29, scope: !5447)
!5449 = !DILocation(line: 320, column: 51, scope: !5447)
!5450 = !DILocation(line: 320, column: 49, scope: !5447)
!5451 = !DILocation(line: 320, column: 26, scope: !5447)
!5452 = !DILocation(line: 320, column: 7, scope: !5406)
!5453 = !DILocation(line: 321, column: 16, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 320, column: 54)
!5455 = !DILocation(line: 321, column: 21, scope: !5454)
!5456 = !DILocation(line: 321, column: 27, scope: !5454)
!5457 = !DILocation(line: 321, column: 31, scope: !5454)
!5458 = !DILocation(line: 321, column: 29, scope: !5454)
!5459 = !DILocation(line: 321, column: 36, scope: !5454)
!5460 = !DILocation(line: 321, column: 4, scope: !5454)
!5461 = !DILocation(line: 322, column: 18, scope: !5454)
!5462 = !DILocation(line: 322, column: 10, scope: !5454)
!5463 = !DILocation(line: 322, column: 8, scope: !5454)
!5464 = !DILocation(line: 323, column: 8, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 323, column: 8)
!5466 = !DILocation(line: 323, column: 15, scope: !5465)
!5467 = !DILocation(line: 323, column: 12, scope: !5465)
!5468 = !DILocation(line: 323, column: 21, scope: !5465)
!5469 = !DILocation(line: 323, column: 24, scope: !5465)
!5470 = !DILocation(line: 323, column: 28, scope: !5465)
!5471 = !DILocation(line: 323, column: 8, scope: !5454)
!5472 = !DILocation(line: 324, column: 12, scope: !5465)
!5473 = !DILocation(line: 324, column: 5, scope: !5465)
!5474 = !DILocation(line: 325, column: 11, scope: !5454)
!5475 = !DILocation(line: 325, column: 9, scope: !5454)
!5476 = !DILocation(line: 326, column: 11, scope: !5454)
!5477 = !DILocation(line: 326, column: 15, scope: !5454)
!5478 = !DILocation(line: 326, column: 13, scope: !5454)
!5479 = !DILocation(line: 326, column: 8, scope: !5454)
!5480 = !DILocation(line: 327, column: 12, scope: !5454)
!5481 = !DILocation(line: 327, column: 6, scope: !5454)
!5482 = !DILocation(line: 328, column: 3, scope: !5454)
!5483 = !DILocation(line: 329, column: 2, scope: !5393)
!5484 = distinct !{!5484, !5433, !5483, !5485, !5486}
!5485 = !{!"llvm.loop.mustprogress"}
!5486 = !{!"llvm.loop.unroll.disable"}
!5487 = !DILocation(line: 330, column: 14, scope: !5393)
!5488 = !DILocation(line: 330, column: 19, scope: !5393)
!5489 = !DILocation(line: 330, column: 25, scope: !5393)
!5490 = !DILocation(line: 330, column: 30, scope: !5393)
!5491 = !DILocation(line: 330, column: 2, scope: !5393)
!5492 = !DILocation(line: 331, column: 9, scope: !5393)
!5493 = !DILocation(line: 331, column: 11, scope: !5393)
!5494 = !DILocation(line: 331, column: 2, scope: !5393)
!5495 = !DILocation(line: 332, column: 1, scope: !5393)
!5496 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5497, file: !5497, line: 22, type: !3559, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5498)
!5497 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!5498 = !{!5499, !5500}
!5499 = !DILocalVariable(name: "x", arg: 1, scope: !5496, file: !5497, line: 22, type: !91)
!5500 = !DILocalVariable(name: "y", scope: !5496, file: !5497, line: 24, type: !91)
!5501 = !DILocation(line: 22, column: 72, scope: !5496)
!5502 = !DILocation(line: 24, column: 2, scope: !5496)
!5503 = !DILocation(line: 24, column: 16, scope: !5496)
!5504 = !DILocation(line: 24, column: 20, scope: !5496)
!5505 = !DILocation(line: 24, column: 22, scope: !5496)
!5506 = !DILocation(line: 27, column: 6, scope: !5496)
!5507 = !DILocation(line: 27, column: 12, scope: !5496)
!5508 = !DILocation(line: 27, column: 16, scope: !5496)
!5509 = !DILocation(line: 27, column: 14, scope: !5496)
!5510 = !DILocation(line: 27, column: 11, scope: !5496)
!5511 = !DILocation(line: 27, column: 21, scope: !5496)
!5512 = !DILocation(line: 27, column: 55, scope: !5496)
!5513 = !DILocation(line: 27, column: 53, scope: !5496)
!5514 = !DILocation(line: 27, column: 8, scope: !5496)
!5515 = !DILocation(line: 27, column: 4, scope: !5496)
!5516 = !DILocation(line: 29, column: 9, scope: !5496)
!5517 = !DILocation(line: 30, column: 1, scope: !5496)
!5518 = !DILocation(line: 29, column: 2, scope: !5496)
!5519 = distinct !DISubprogram(name: "sg_set_page", scope: !3469, file: !3469, line: 136, type: !5520, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5522)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{null, !4294, !95, !7, !7}
!5522 = !{!5523, !5524, !5525, !5526}
!5523 = !DILocalVariable(name: "sg", arg: 1, scope: !5519, file: !3469, line: 136, type: !4294)
!5524 = !DILocalVariable(name: "page", arg: 2, scope: !5519, file: !3469, line: 136, type: !95)
!5525 = !DILocalVariable(name: "len", arg: 3, scope: !5519, file: !3469, line: 137, type: !7)
!5526 = !DILocalVariable(name: "offset", arg: 4, scope: !5519, file: !3469, line: 137, type: !7)
!5527 = !DILocation(line: 136, column: 52, scope: !5519)
!5528 = !DILocation(line: 136, column: 69, scope: !5519)
!5529 = !DILocation(line: 137, column: 24, scope: !5519)
!5530 = !DILocation(line: 137, column: 42, scope: !5519)
!5531 = !DILocation(line: 139, column: 17, scope: !5519)
!5532 = !DILocation(line: 139, column: 21, scope: !5519)
!5533 = !DILocation(line: 139, column: 2, scope: !5519)
!5534 = !DILocation(line: 140, column: 15, scope: !5519)
!5535 = !DILocation(line: 140, column: 2, scope: !5519)
!5536 = !DILocation(line: 140, column: 6, scope: !5519)
!5537 = !DILocation(line: 140, column: 13, scope: !5519)
!5538 = !DILocation(line: 141, column: 15, scope: !5519)
!5539 = !DILocation(line: 141, column: 2, scope: !5519)
!5540 = !DILocation(line: 141, column: 6, scope: !5519)
!5541 = !DILocation(line: 141, column: 13, scope: !5519)
!5542 = !DILocation(line: 142, column: 1, scope: !5519)
!5543 = !DISubprogram(name: "sg_next", scope: !3469, file: !3469, line: 421, type: !5544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5544 = !DISubroutineType(types: !5545)
!5545 = !{!4294, !4294}
!5546 = distinct !DISubprogram(name: "sg_assign_page", scope: !3469, file: !3469, line: 107, type: !5547, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5549)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{null, !4294, !95}
!5549 = !{!5550, !5551, !5552}
!5550 = !DILocalVariable(name: "sg", arg: 1, scope: !5546, file: !3469, line: 107, type: !4294)
!5551 = !DILocalVariable(name: "page", arg: 2, scope: !5546, file: !3469, line: 107, type: !95)
!5552 = !DILocalVariable(name: "page_link", scope: !5546, file: !3469, line: 109, type: !91)
!5553 = !DILocation(line: 107, column: 55, scope: !5546)
!5554 = !DILocation(line: 107, column: 72, scope: !5546)
!5555 = !DILocation(line: 109, column: 2, scope: !5546)
!5556 = !DILocation(line: 109, column: 16, scope: !5546)
!5557 = !DILocation(line: 109, column: 28, scope: !5546)
!5558 = !DILocation(line: 109, column: 32, scope: !5546)
!5559 = !DILocation(line: 109, column: 42, scope: !5546)
!5560 = !DILocation(line: 115, column: 2, scope: !5546)
!5561 = !DILocation(line: 115, column: 2, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5563, file: !3469, line: 115, column: 2)
!5563 = distinct !DILexicalBlock(scope: !5546, file: !3469, line: 115, column: 2)
!5564 = !DILocation(line: 115, column: 2, scope: !5563)
!5565 = !DILocation(line: 115, column: 2, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5562, file: !3469, line: 115, column: 2)
!5567 = !DILocation(line: 115, column: 2, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5566, file: !3469, line: 115, column: 2)
!5569 = !DILocation(line: 115, column: 2, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5566, file: !3469, line: 115, column: 2)
!5571 = !{i64 2154042717, i64 2154042746, i64 2154042792, i64 2154042850, i64 2154042904, i64 2154042958, i64 2154043013, i64 2154043044}
!5572 = !DILocation(line: 119, column: 18, scope: !5546)
!5573 = !DILocation(line: 119, column: 46, scope: !5546)
!5574 = !DILocation(line: 119, column: 30, scope: !5546)
!5575 = !DILocation(line: 119, column: 28, scope: !5546)
!5576 = !DILocation(line: 119, column: 2, scope: !5546)
!5577 = !DILocation(line: 119, column: 6, scope: !5546)
!5578 = !DILocation(line: 119, column: 16, scope: !5546)
!5579 = !DILocation(line: 120, column: 1, scope: !5546)
