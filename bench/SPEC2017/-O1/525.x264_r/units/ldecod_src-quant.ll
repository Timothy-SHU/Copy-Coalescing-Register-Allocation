; ModuleID = 'ldecod_src/quant.c'
source_filename = "ldecod_src/quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@quant_intra_default = dso_local global [16 x i32] [i32 6, i32 13, i32 20, i32 28, i32 13, i32 20, i32 28, i32 32, i32 20, i32 28, i32 32, i32 37, i32 28, i32 32, i32 37, i32 42], align 16
@quant_inter_default = dso_local global [16 x i32] [i32 10, i32 14, i32 20, i32 24, i32 14, i32 20, i32 24, i32 27, i32 20, i32 24, i32 27, i32 30, i32 24, i32 27, i32 30, i32 34], align 16
@quant8_intra_default = dso_local global [64 x i32] [i32 6, i32 10, i32 13, i32 16, i32 18, i32 23, i32 25, i32 27, i32 10, i32 11, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 13, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 40, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 40, i32 42], align 16
@quant8_inter_default = dso_local global [64 x i32] [i32 9, i32 13, i32 15, i32 17, i32 19, i32 21, i32 22, i32 24, i32 13, i32 13, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 15, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 33, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 33, i32 35], align 16
@quant_org = dso_local global [16 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 16
@quant8_org = dso_local global [64 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 16
@.str = private unnamed_addr constant [38 x i8] c"init_qp_process: p_Vid->qp_per_matrix\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"init_qp_process: p_Vid->qp_rem_matrix\00", align 1
@dequant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16]], [4 x [4 x i32]] [[4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18]], [4 x [4 x i32]] [[4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20]], [4 x [4 x i32]] [[4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23]], [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], [4 x [4 x i32]] [[4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29]]], align 16
@dequant_coef8 = internal unnamed_addr constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 16
@switch.table.assign_quant_params.2 = private unnamed_addr constant [5 x ptr] [ptr @quant8_intra_default, ptr @quant8_inter_default, ptr @quant8_intra_default, ptr @quant8_inter_default, ptr @quant8_intra_default], align 8

; Function Attrs: nounwind uwtable
define dso_local void @init_qp_process(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 67
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 68
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = tail call i32 @llvm.smax.i32(i32 %3, i32 %5)
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 132
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = add nsw i32 %6, 52
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #7
  store ptr %14, ptr %7, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #8
  br label %17

17:                                               ; preds = %10, %16, %1
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 133
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = add nsw i32 %6, 52
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #7
  store ptr %25, ptr %18, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #8
  br label %28

28:                                               ; preds = %21, %27, %17
  %29 = icmp sgt i32 %6, -52
  br i1 %29, label %30, label %47

30:                                               ; preds = %28
  %31 = load ptr, ptr %7, align 8, !tbaa !46
  %32 = load ptr, ptr %18, align 8, !tbaa !47
  %33 = add i32 %6, 51
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  %35 = add nuw i32 %34, 1
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %30, %37
  %38 = phi i64 [ 0, %30 ], [ %45, %37 ]
  %39 = trunc i64 %38 to i32
  %40 = udiv i32 %39, 6
  %41 = getelementptr inbounds i32, ptr %31, i64 %38
  store i32 %40, ptr %41, align 4, !tbaa !48
  %42 = trunc i64 %38 to i32
  %43 = urem i32 %42, 6
  %44 = getelementptr inbounds i32, ptr %32, i64 %38
  store i32 %43, ptr %44, align 4, !tbaa !48
  %45 = add nuw nsw i64 %38, 1
  %46 = icmp eq i64 %45, %36
  br i1 %46, label %47, label %37, !llvm.loop !49

47:                                               ; preds = %37, %28
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_qp_matrices(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 132
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #8
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 133
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #8
  store ptr null, ptr %7, align 8, !tbaa !47
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @assign_quant_params(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !58
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %9 ]
  %15 = icmp ult i64 %14, 6
  %16 = select i1 %15, ptr @quant_org, ptr @quant8_org
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %14
  store ptr %16, ptr %17, align 8, !tbaa !62
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, 12
  br i1 %19, label %138, label %13, !llvm.loop !63

20:                                               ; preds = %9, %1
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !64
  %23 = icmp eq i32 %22, 3
  %24 = select i1 %23, i32 12, i32 8
  %25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 10
  %26 = load i32, ptr %25, align 4, !tbaa !58
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %81, label %28

28:                                               ; preds = %20
  %29 = zext nneg i32 %24 to i64
  br label %30

30:                                               ; preds = %28, %76
  %31 = phi i64 [ 0, %28 ], [ %79, %76 ]
  %32 = icmp ult i64 %31, 6
  %33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 11, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !48
  %35 = icmp eq i32 %34, 0
  br i1 %32, label %36, label %53

36:                                               ; preds = %30
  br i1 %35, label %37, label %44

37:                                               ; preds = %36
  %38 = trunc i64 %31 to i32
  switch i32 %38, label %40 [
    i32 0, label %76
    i32 3, label %39
  ]

39:                                               ; preds = %37
  br label %76

40:                                               ; preds = %37
  %41 = add nsw i64 %31, -1
  %42 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  br label %76

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 14, i64 %31
  %46 = load i32, ptr %45, align 4, !tbaa !48
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = icmp ult i64 %31, 3
  %50 = select i1 %49, ptr @quant_intra_default, ptr @quant_inter_default
  br label %76

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 12, i64 %31
  br label %76

53:                                               ; preds = %30
  br i1 %35, label %54, label %61

54:                                               ; preds = %53
  %55 = trunc i64 %31 to i32
  switch i32 %55, label %57 [
    i32 6, label %76
    i32 7, label %56
  ]

56:                                               ; preds = %54
  br label %76

57:                                               ; preds = %54
  %58 = add nsw i64 %31, -2
  %59 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  br label %76

61:                                               ; preds = %53
  %62 = add nsw i64 %31, -6
  %63 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 15, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !48
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = trunc i64 %31 to i32
  %68 = add i32 %67, -6
  %69 = icmp ult i32 %68, 5
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = zext nneg i32 %68 to i64
  %72 = getelementptr inbounds [5 x ptr], ptr @switch.table.assign_quant_params.2, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8
  br label %76

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 13, i64 %62
  br label %76

76:                                               ; preds = %70, %66, %54, %37, %48, %51, %40, %39, %74, %57, %56
  %77 = phi ptr [ %50, %48 ], [ %52, %51 ], [ %43, %40 ], [ @quant_inter_default, %39 ], [ %75, %74 ], [ %60, %57 ], [ @quant8_inter_default, %56 ], [ @quant_intra_default, %37 ], [ @quant8_intra_default, %54 ], [ %73, %70 ], [ @quant8_inter_default, %66 ]
  %78 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %31
  store ptr %77, ptr %78, align 8, !tbaa !62
  %79 = add nuw nsw i64 %31, 1
  %80 = icmp eq i64 %79, %29
  br i1 %80, label %81, label %30, !llvm.loop !65

81:                                               ; preds = %76, %20
  br i1 %8, label %138, label %82

82:                                               ; preds = %81
  %83 = zext nneg i32 %24 to i64
  br label %84

84:                                               ; preds = %82, %135
  %85 = phi i64 [ 0, %82 ], [ %136, %135 ]
  %86 = icmp ult i64 %85, 6
  %87 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 6, i64 %85
  %88 = load i32, ptr %87, align 4, !tbaa !48
  %89 = icmp eq i32 %88, 0
  br i1 %86, label %90, label %108

90:                                               ; preds = %84
  br i1 %89, label %91, label %99

91:                                               ; preds = %90
  %92 = trunc i64 %85 to i32
  switch i32 %92, label %95 [
    i32 0, label %93
    i32 3, label %94
  ]

93:                                               ; preds = %91
  br i1 %27, label %132, label %135

94:                                               ; preds = %91
  br i1 %27, label %132, label %135

95:                                               ; preds = %91
  %96 = add nsw i64 %85, -1
  %97 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !62
  br label %132

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 9, i64 %85
  %101 = load i32, ptr %100, align 4, !tbaa !48
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = icmp ult i64 %85, 3
  %105 = select i1 %104, ptr @quant_intra_default, ptr @quant_inter_default
  br label %132

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 7, i64 %85
  br label %132

108:                                              ; preds = %84
  br i1 %89, label %109, label %117

109:                                              ; preds = %108
  %110 = trunc i64 %85 to i32
  switch i32 %110, label %113 [
    i32 6, label %111
    i32 7, label %112
  ]

111:                                              ; preds = %109
  br i1 %27, label %132, label %135

112:                                              ; preds = %109
  br i1 %27, label %132, label %135

113:                                              ; preds = %109
  %114 = add nsw i64 %85, -2
  %115 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !62
  br label %132

117:                                              ; preds = %108
  %118 = add nsw i64 %85, -6
  %119 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 10, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !48
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %117
  %123 = trunc i64 %85 to i32
  %124 = add i32 %123, -6
  %125 = icmp ult i32 %124, 5
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = zext nneg i32 %124 to i64
  %128 = getelementptr inbounds [5 x ptr], ptr @switch.table.assign_quant_params.2, i64 0, i64 %127
  %129 = load ptr, ptr %128, align 8
  br label %132

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 8, i64 %118
  br label %132

132:                                              ; preds = %126, %122, %112, %111, %94, %93, %113, %130, %95, %106, %103
  %133 = phi ptr [ %105, %103 ], [ %107, %106 ], [ %98, %95 ], [ %131, %130 ], [ %116, %113 ], [ @quant_intra_default, %93 ], [ @quant_inter_default, %94 ], [ @quant8_intra_default, %111 ], [ @quant8_inter_default, %112 ], [ %129, %126 ], [ @quant8_inter_default, %122 ]
  %134 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %85
  store ptr %133, ptr %134, align 8, !tbaa !62
  br label %135

135:                                              ; preds = %132, %93, %94, %111, %112
  %136 = add nuw nsw i64 %85, 1
  %137 = icmp eq i64 %136, %83
  br i1 %137, label %138, label %84, !llvm.loop !66

138:                                              ; preds = %135, %13, %81
  tail call void @CalculateQuant4x4Param(ptr noundef %0)
  %139 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 4
  %140 = load i32, ptr %139, align 8, !tbaa !67
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  tail call void @CalculateQuant8x8Param(ptr noundef %0)
  br label %143

143:                                              ; preds = %142, %138
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CalculateQuant4x4Param(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 88
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 88, i64 1
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 88, i64 2
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 89
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 89, i64 1
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 89, i64 2
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 3
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 4
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  br label %20

20:                                               ; preds = %1, %225
  %21 = phi ptr [ %7, %1 ], [ %193, %225 ]
  %22 = phi ptr [ %6, %1 ], [ %226, %225 ]
  %23 = phi ptr [ %5, %1 ], [ %160, %225 ]
  %24 = phi ptr [ %4, %1 ], [ %127, %225 ]
  %25 = phi ptr [ %3, %1 ], [ %94, %225 ]
  %26 = phi ptr [ %2, %1 ], [ %61, %225 ]
  %27 = phi ptr [ @dequant_coef, %1 ], [ %227, %225 ]
  %28 = phi i32 [ 0, %1 ], [ %228, %225 ]
  br label %29

29:                                               ; preds = %20, %29
  %30 = phi i32 [ 0, %20 ], [ %58, %29 ]
  %31 = phi ptr [ %9, %20 ], [ %53, %29 ]
  %32 = phi ptr [ %27, %20 ], [ %50, %29 ]
  %33 = phi ptr [ %26, %20 ], [ %56, %29 ]
  %34 = load i32, ptr %32, align 4, !tbaa !48
  %35 = getelementptr inbounds i32, ptr %31, i64 1
  %36 = load i32, ptr %31, align 4, !tbaa !48
  %37 = mul nsw i32 %36, %34
  store i32 %37, ptr %33, align 4, !tbaa !48
  %38 = getelementptr inbounds i32, ptr %32, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !48
  %40 = getelementptr inbounds i32, ptr %31, i64 2
  %41 = load i32, ptr %35, align 4, !tbaa !48
  %42 = mul nsw i32 %41, %39
  %43 = getelementptr inbounds i32, ptr %33, i64 1
  store i32 %42, ptr %43, align 4, !tbaa !48
  %44 = getelementptr inbounds i32, ptr %32, i64 2
  %45 = load i32, ptr %44, align 4, !tbaa !48
  %46 = getelementptr inbounds i32, ptr %31, i64 3
  %47 = load i32, ptr %40, align 4, !tbaa !48
  %48 = mul nsw i32 %47, %45
  %49 = getelementptr inbounds i32, ptr %33, i64 2
  store i32 %48, ptr %49, align 4, !tbaa !48
  %50 = getelementptr inbounds [4 x i32], ptr %32, i64 1
  %51 = getelementptr inbounds i32, ptr %32, i64 3
  %52 = load i32, ptr %51, align 4, !tbaa !48
  %53 = getelementptr inbounds i32, ptr %31, i64 4
  %54 = load i32, ptr %46, align 4, !tbaa !48
  %55 = mul nsw i32 %54, %52
  %56 = getelementptr inbounds [4 x i32], ptr %33, i64 1
  %57 = getelementptr inbounds i32, ptr %33, i64 3
  store i32 %55, ptr %57, align 4, !tbaa !48
  %58 = add nuw nsw i32 %30, 1
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %29, !llvm.loop !68

60:                                               ; preds = %29
  %61 = getelementptr inbounds [4 x [4 x i32]], ptr %26, i64 1
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i32 [ 0, %60 ], [ %91, %62 ]
  %64 = phi ptr [ %11, %60 ], [ %86, %62 ]
  %65 = phi ptr [ %27, %60 ], [ %83, %62 ]
  %66 = phi ptr [ %25, %60 ], [ %89, %62 ]
  %67 = load i32, ptr %65, align 4, !tbaa !48
  %68 = getelementptr inbounds i32, ptr %64, i64 1
  %69 = load i32, ptr %64, align 4, !tbaa !48
  %70 = mul nsw i32 %69, %67
  store i32 %70, ptr %66, align 4, !tbaa !48
  %71 = getelementptr inbounds i32, ptr %65, i64 1
  %72 = load i32, ptr %71, align 4, !tbaa !48
  %73 = getelementptr inbounds i32, ptr %64, i64 2
  %74 = load i32, ptr %68, align 4, !tbaa !48
  %75 = mul nsw i32 %74, %72
  %76 = getelementptr inbounds i32, ptr %66, i64 1
  store i32 %75, ptr %76, align 4, !tbaa !48
  %77 = getelementptr inbounds i32, ptr %65, i64 2
  %78 = load i32, ptr %77, align 4, !tbaa !48
  %79 = getelementptr inbounds i32, ptr %64, i64 3
  %80 = load i32, ptr %73, align 4, !tbaa !48
  %81 = mul nsw i32 %80, %78
  %82 = getelementptr inbounds i32, ptr %66, i64 2
  store i32 %81, ptr %82, align 4, !tbaa !48
  %83 = getelementptr inbounds [4 x i32], ptr %65, i64 1
  %84 = getelementptr inbounds i32, ptr %65, i64 3
  %85 = load i32, ptr %84, align 4, !tbaa !48
  %86 = getelementptr inbounds i32, ptr %64, i64 4
  %87 = load i32, ptr %79, align 4, !tbaa !48
  %88 = mul nsw i32 %87, %85
  %89 = getelementptr inbounds [4 x i32], ptr %66, i64 1
  %90 = getelementptr inbounds i32, ptr %66, i64 3
  store i32 %88, ptr %90, align 4, !tbaa !48
  %91 = add nuw nsw i32 %63, 1
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %62, !llvm.loop !68

93:                                               ; preds = %62
  %94 = getelementptr inbounds [4 x [4 x i32]], ptr %25, i64 1
  br label %95

95:                                               ; preds = %93, %95
  %96 = phi i32 [ 0, %93 ], [ %124, %95 ]
  %97 = phi ptr [ %13, %93 ], [ %119, %95 ]
  %98 = phi ptr [ %27, %93 ], [ %116, %95 ]
  %99 = phi ptr [ %24, %93 ], [ %122, %95 ]
  %100 = load i32, ptr %98, align 4, !tbaa !48
  %101 = getelementptr inbounds i32, ptr %97, i64 1
  %102 = load i32, ptr %97, align 4, !tbaa !48
  %103 = mul nsw i32 %102, %100
  store i32 %103, ptr %99, align 4, !tbaa !48
  %104 = getelementptr inbounds i32, ptr %98, i64 1
  %105 = load i32, ptr %104, align 4, !tbaa !48
  %106 = getelementptr inbounds i32, ptr %97, i64 2
  %107 = load i32, ptr %101, align 4, !tbaa !48
  %108 = mul nsw i32 %107, %105
  %109 = getelementptr inbounds i32, ptr %99, i64 1
  store i32 %108, ptr %109, align 4, !tbaa !48
  %110 = getelementptr inbounds i32, ptr %98, i64 2
  %111 = load i32, ptr %110, align 4, !tbaa !48
  %112 = getelementptr inbounds i32, ptr %97, i64 3
  %113 = load i32, ptr %106, align 4, !tbaa !48
  %114 = mul nsw i32 %113, %111
  %115 = getelementptr inbounds i32, ptr %99, i64 2
  store i32 %114, ptr %115, align 4, !tbaa !48
  %116 = getelementptr inbounds [4 x i32], ptr %98, i64 1
  %117 = getelementptr inbounds i32, ptr %98, i64 3
  %118 = load i32, ptr %117, align 4, !tbaa !48
  %119 = getelementptr inbounds i32, ptr %97, i64 4
  %120 = load i32, ptr %112, align 4, !tbaa !48
  %121 = mul nsw i32 %120, %118
  %122 = getelementptr inbounds [4 x i32], ptr %99, i64 1
  %123 = getelementptr inbounds i32, ptr %99, i64 3
  store i32 %121, ptr %123, align 4, !tbaa !48
  %124 = add nuw nsw i32 %96, 1
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %95, !llvm.loop !68

126:                                              ; preds = %95
  %127 = getelementptr inbounds [4 x [4 x i32]], ptr %24, i64 1
  br label %128

128:                                              ; preds = %126, %128
  %129 = phi i32 [ 0, %126 ], [ %157, %128 ]
  %130 = phi ptr [ %15, %126 ], [ %152, %128 ]
  %131 = phi ptr [ %27, %126 ], [ %149, %128 ]
  %132 = phi ptr [ %23, %126 ], [ %155, %128 ]
  %133 = load i32, ptr %131, align 4, !tbaa !48
  %134 = getelementptr inbounds i32, ptr %130, i64 1
  %135 = load i32, ptr %130, align 4, !tbaa !48
  %136 = mul nsw i32 %135, %133
  store i32 %136, ptr %132, align 4, !tbaa !48
  %137 = getelementptr inbounds i32, ptr %131, i64 1
  %138 = load i32, ptr %137, align 4, !tbaa !48
  %139 = getelementptr inbounds i32, ptr %130, i64 2
  %140 = load i32, ptr %134, align 4, !tbaa !48
  %141 = mul nsw i32 %140, %138
  %142 = getelementptr inbounds i32, ptr %132, i64 1
  store i32 %141, ptr %142, align 4, !tbaa !48
  %143 = getelementptr inbounds i32, ptr %131, i64 2
  %144 = load i32, ptr %143, align 4, !tbaa !48
  %145 = getelementptr inbounds i32, ptr %130, i64 3
  %146 = load i32, ptr %139, align 4, !tbaa !48
  %147 = mul nsw i32 %146, %144
  %148 = getelementptr inbounds i32, ptr %132, i64 2
  store i32 %147, ptr %148, align 4, !tbaa !48
  %149 = getelementptr inbounds [4 x i32], ptr %131, i64 1
  %150 = getelementptr inbounds i32, ptr %131, i64 3
  %151 = load i32, ptr %150, align 4, !tbaa !48
  %152 = getelementptr inbounds i32, ptr %130, i64 4
  %153 = load i32, ptr %145, align 4, !tbaa !48
  %154 = mul nsw i32 %153, %151
  %155 = getelementptr inbounds [4 x i32], ptr %132, i64 1
  %156 = getelementptr inbounds i32, ptr %132, i64 3
  store i32 %154, ptr %156, align 4, !tbaa !48
  %157 = add nuw nsw i32 %129, 1
  %158 = icmp eq i32 %157, 4
  br i1 %158, label %159, label %128, !llvm.loop !68

159:                                              ; preds = %128
  %160 = getelementptr inbounds [4 x [4 x i32]], ptr %23, i64 1
  br label %161

161:                                              ; preds = %159, %161
  %162 = phi i32 [ 0, %159 ], [ %190, %161 ]
  %163 = phi ptr [ %17, %159 ], [ %185, %161 ]
  %164 = phi ptr [ %27, %159 ], [ %182, %161 ]
  %165 = phi ptr [ %22, %159 ], [ %188, %161 ]
  %166 = load i32, ptr %164, align 4, !tbaa !48
  %167 = getelementptr inbounds i32, ptr %163, i64 1
  %168 = load i32, ptr %163, align 4, !tbaa !48
  %169 = mul nsw i32 %168, %166
  store i32 %169, ptr %165, align 4, !tbaa !48
  %170 = getelementptr inbounds i32, ptr %164, i64 1
  %171 = load i32, ptr %170, align 4, !tbaa !48
  %172 = getelementptr inbounds i32, ptr %163, i64 2
  %173 = load i32, ptr %167, align 4, !tbaa !48
  %174 = mul nsw i32 %173, %171
  %175 = getelementptr inbounds i32, ptr %165, i64 1
  store i32 %174, ptr %175, align 4, !tbaa !48
  %176 = getelementptr inbounds i32, ptr %164, i64 2
  %177 = load i32, ptr %176, align 4, !tbaa !48
  %178 = getelementptr inbounds i32, ptr %163, i64 3
  %179 = load i32, ptr %172, align 4, !tbaa !48
  %180 = mul nsw i32 %179, %177
  %181 = getelementptr inbounds i32, ptr %165, i64 2
  store i32 %180, ptr %181, align 4, !tbaa !48
  %182 = getelementptr inbounds [4 x i32], ptr %164, i64 1
  %183 = getelementptr inbounds i32, ptr %164, i64 3
  %184 = load i32, ptr %183, align 4, !tbaa !48
  %185 = getelementptr inbounds i32, ptr %163, i64 4
  %186 = load i32, ptr %178, align 4, !tbaa !48
  %187 = mul nsw i32 %186, %184
  %188 = getelementptr inbounds [4 x i32], ptr %165, i64 1
  %189 = getelementptr inbounds i32, ptr %165, i64 3
  store i32 %187, ptr %189, align 4, !tbaa !48
  %190 = add nuw nsw i32 %162, 1
  %191 = icmp eq i32 %190, 4
  br i1 %191, label %192, label %161, !llvm.loop !68

192:                                              ; preds = %161
  %193 = getelementptr inbounds [4 x [4 x i32]], ptr %21, i64 1
  br label %194

194:                                              ; preds = %192, %194
  %195 = phi i32 [ 0, %192 ], [ %223, %194 ]
  %196 = phi ptr [ %19, %192 ], [ %218, %194 ]
  %197 = phi ptr [ %27, %192 ], [ %215, %194 ]
  %198 = phi ptr [ %21, %192 ], [ %221, %194 ]
  %199 = load i32, ptr %197, align 4, !tbaa !48
  %200 = getelementptr inbounds i32, ptr %196, i64 1
  %201 = load i32, ptr %196, align 4, !tbaa !48
  %202 = mul nsw i32 %201, %199
  store i32 %202, ptr %198, align 4, !tbaa !48
  %203 = getelementptr inbounds i32, ptr %197, i64 1
  %204 = load i32, ptr %203, align 4, !tbaa !48
  %205 = getelementptr inbounds i32, ptr %196, i64 2
  %206 = load i32, ptr %200, align 4, !tbaa !48
  %207 = mul nsw i32 %206, %204
  %208 = getelementptr inbounds i32, ptr %198, i64 1
  store i32 %207, ptr %208, align 4, !tbaa !48
  %209 = getelementptr inbounds i32, ptr %197, i64 2
  %210 = load i32, ptr %209, align 4, !tbaa !48
  %211 = getelementptr inbounds i32, ptr %196, i64 3
  %212 = load i32, ptr %205, align 4, !tbaa !48
  %213 = mul nsw i32 %212, %210
  %214 = getelementptr inbounds i32, ptr %198, i64 2
  store i32 %213, ptr %214, align 4, !tbaa !48
  %215 = getelementptr inbounds [4 x i32], ptr %197, i64 1
  %216 = getelementptr inbounds i32, ptr %197, i64 3
  %217 = load i32, ptr %216, align 4, !tbaa !48
  %218 = getelementptr inbounds i32, ptr %196, i64 4
  %219 = load i32, ptr %211, align 4, !tbaa !48
  %220 = mul nsw i32 %219, %217
  %221 = getelementptr inbounds [4 x i32], ptr %198, i64 1
  %222 = getelementptr inbounds i32, ptr %198, i64 3
  store i32 %220, ptr %222, align 4, !tbaa !48
  %223 = add nuw nsw i32 %195, 1
  %224 = icmp eq i32 %223, 4
  br i1 %224, label %225, label %194, !llvm.loop !68

225:                                              ; preds = %194
  %226 = getelementptr inbounds [4 x [4 x i32]], ptr %22, i64 1
  %227 = getelementptr inbounds [4 x [4 x i32]], ptr %27, i64 1
  %228 = add nuw nsw i32 %28, 1
  %229 = icmp eq i32 %228, 6
  br i1 %229, label %230, label %20, !llvm.loop !69

230:                                              ; preds = %225
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CalculateQuant8x8Param(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 90
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 90, i64 1
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 91
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 91, i64 1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 6
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 7
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  br label %10

10:                                               ; preds = %1, %127
  %11 = phi ptr [ %4, %1 ], [ %71, %127 ]
  %12 = phi ptr [ %2, %1 ], [ %128, %127 ]
  %13 = phi ptr [ @dequant_coef8, %1 ], [ %129, %127 ]
  %14 = phi i32 [ 0, %1 ], [ %130, %127 ]
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi i32 [ 0, %10 ], [ %68, %15 ]
  %17 = phi ptr [ %7, %10 ], [ %63, %15 ]
  %18 = phi ptr [ %13, %10 ], [ %60, %15 ]
  %19 = phi ptr [ %12, %10 ], [ %66, %15 ]
  %20 = load i32, ptr %18, align 4, !tbaa !48
  %21 = getelementptr inbounds i32, ptr %17, i64 1
  %22 = load i32, ptr %17, align 4, !tbaa !48
  %23 = mul nsw i32 %22, %20
  store i32 %23, ptr %19, align 4, !tbaa !48
  %24 = getelementptr inbounds i32, ptr %18, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = getelementptr inbounds i32, ptr %17, i64 2
  %27 = load i32, ptr %21, align 4, !tbaa !48
  %28 = mul nsw i32 %27, %25
  %29 = getelementptr inbounds i32, ptr %19, i64 1
  store i32 %28, ptr %29, align 4, !tbaa !48
  %30 = getelementptr inbounds i32, ptr %18, i64 2
  %31 = load i32, ptr %30, align 4, !tbaa !48
  %32 = getelementptr inbounds i32, ptr %17, i64 3
  %33 = load i32, ptr %26, align 4, !tbaa !48
  %34 = mul nsw i32 %33, %31
  %35 = getelementptr inbounds i32, ptr %19, i64 2
  store i32 %34, ptr %35, align 4, !tbaa !48
  %36 = getelementptr inbounds i32, ptr %18, i64 3
  %37 = load i32, ptr %36, align 4, !tbaa !48
  %38 = getelementptr inbounds i32, ptr %17, i64 4
  %39 = load i32, ptr %32, align 4, !tbaa !48
  %40 = mul nsw i32 %39, %37
  %41 = getelementptr inbounds i32, ptr %19, i64 3
  store i32 %40, ptr %41, align 4, !tbaa !48
  %42 = getelementptr inbounds i32, ptr %18, i64 4
  %43 = load i32, ptr %42, align 4, !tbaa !48
  %44 = getelementptr inbounds i32, ptr %17, i64 5
  %45 = load i32, ptr %38, align 4, !tbaa !48
  %46 = mul nsw i32 %45, %43
  %47 = getelementptr inbounds i32, ptr %19, i64 4
  store i32 %46, ptr %47, align 4, !tbaa !48
  %48 = getelementptr inbounds i32, ptr %18, i64 5
  %49 = load i32, ptr %48, align 4, !tbaa !48
  %50 = getelementptr inbounds i32, ptr %17, i64 6
  %51 = load i32, ptr %44, align 4, !tbaa !48
  %52 = mul nsw i32 %51, %49
  %53 = getelementptr inbounds i32, ptr %19, i64 5
  store i32 %52, ptr %53, align 4, !tbaa !48
  %54 = getelementptr inbounds i32, ptr %18, i64 6
  %55 = load i32, ptr %54, align 4, !tbaa !48
  %56 = getelementptr inbounds i32, ptr %17, i64 7
  %57 = load i32, ptr %50, align 4, !tbaa !48
  %58 = mul nsw i32 %57, %55
  %59 = getelementptr inbounds i32, ptr %19, i64 6
  store i32 %58, ptr %59, align 4, !tbaa !48
  %60 = getelementptr inbounds [8 x i32], ptr %18, i64 1
  %61 = getelementptr inbounds i32, ptr %18, i64 7
  %62 = load i32, ptr %61, align 4, !tbaa !48
  %63 = getelementptr inbounds i32, ptr %17, i64 8
  %64 = load i32, ptr %56, align 4, !tbaa !48
  %65 = mul nsw i32 %64, %62
  %66 = getelementptr inbounds [8 x i32], ptr %19, i64 1
  %67 = getelementptr inbounds i32, ptr %19, i64 7
  store i32 %65, ptr %67, align 4, !tbaa !48
  %68 = add nuw nsw i32 %16, 1
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %15, !llvm.loop !70

70:                                               ; preds = %15
  %71 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 1
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi i32 [ 0, %70 ], [ %125, %72 ]
  %74 = phi ptr [ %9, %70 ], [ %120, %72 ]
  %75 = phi ptr [ %13, %70 ], [ %117, %72 ]
  %76 = phi ptr [ %11, %70 ], [ %123, %72 ]
  %77 = load i32, ptr %75, align 4, !tbaa !48
  %78 = getelementptr inbounds i32, ptr %74, i64 1
  %79 = load i32, ptr %74, align 4, !tbaa !48
  %80 = mul nsw i32 %79, %77
  store i32 %80, ptr %76, align 4, !tbaa !48
  %81 = getelementptr inbounds i32, ptr %75, i64 1
  %82 = load i32, ptr %81, align 4, !tbaa !48
  %83 = getelementptr inbounds i32, ptr %74, i64 2
  %84 = load i32, ptr %78, align 4, !tbaa !48
  %85 = mul nsw i32 %84, %82
  %86 = getelementptr inbounds i32, ptr %76, i64 1
  store i32 %85, ptr %86, align 4, !tbaa !48
  %87 = getelementptr inbounds i32, ptr %75, i64 2
  %88 = load i32, ptr %87, align 4, !tbaa !48
  %89 = getelementptr inbounds i32, ptr %74, i64 3
  %90 = load i32, ptr %83, align 4, !tbaa !48
  %91 = mul nsw i32 %90, %88
  %92 = getelementptr inbounds i32, ptr %76, i64 2
  store i32 %91, ptr %92, align 4, !tbaa !48
  %93 = getelementptr inbounds i32, ptr %75, i64 3
  %94 = load i32, ptr %93, align 4, !tbaa !48
  %95 = getelementptr inbounds i32, ptr %74, i64 4
  %96 = load i32, ptr %89, align 4, !tbaa !48
  %97 = mul nsw i32 %96, %94
  %98 = getelementptr inbounds i32, ptr %76, i64 3
  store i32 %97, ptr %98, align 4, !tbaa !48
  %99 = getelementptr inbounds i32, ptr %75, i64 4
  %100 = load i32, ptr %99, align 4, !tbaa !48
  %101 = getelementptr inbounds i32, ptr %74, i64 5
  %102 = load i32, ptr %95, align 4, !tbaa !48
  %103 = mul nsw i32 %102, %100
  %104 = getelementptr inbounds i32, ptr %76, i64 4
  store i32 %103, ptr %104, align 4, !tbaa !48
  %105 = getelementptr inbounds i32, ptr %75, i64 5
  %106 = load i32, ptr %105, align 4, !tbaa !48
  %107 = getelementptr inbounds i32, ptr %74, i64 6
  %108 = load i32, ptr %101, align 4, !tbaa !48
  %109 = mul nsw i32 %108, %106
  %110 = getelementptr inbounds i32, ptr %76, i64 5
  store i32 %109, ptr %110, align 4, !tbaa !48
  %111 = getelementptr inbounds i32, ptr %75, i64 6
  %112 = load i32, ptr %111, align 4, !tbaa !48
  %113 = getelementptr inbounds i32, ptr %74, i64 7
  %114 = load i32, ptr %107, align 4, !tbaa !48
  %115 = mul nsw i32 %114, %112
  %116 = getelementptr inbounds i32, ptr %76, i64 6
  store i32 %115, ptr %116, align 4, !tbaa !48
  %117 = getelementptr inbounds [8 x i32], ptr %75, i64 1
  %118 = getelementptr inbounds i32, ptr %75, i64 7
  %119 = load i32, ptr %118, align 4, !tbaa !48
  %120 = getelementptr inbounds i32, ptr %74, i64 8
  %121 = load i32, ptr %113, align 4, !tbaa !48
  %122 = mul nsw i32 %121, %119
  %123 = getelementptr inbounds [8 x i32], ptr %76, i64 1
  %124 = getelementptr inbounds i32, ptr %76, i64 7
  store i32 %122, ptr %124, align 4, !tbaa !48
  %125 = add nuw nsw i32 %73, 1
  %126 = icmp eq i32 %125, 8
  br i1 %126, label %127, label %72, !llvm.loop !70

127:                                              ; preds = %72
  %128 = getelementptr inbounds [8 x [8 x i32]], ptr %12, i64 1
  %129 = getelementptr inbounds [8 x [8 x i32]], ptr %13, i64 1
  %130 = add nuw nsw i32 %14, 1
  %131 = icmp eq i32 %130, 6
  br i1 %131, label %132, label %10, !llvm.loop !71

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !52
  %135 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %134, i64 0, i32 9
  %136 = load i32, ptr %135, align 4, !tbaa !64
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %387

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 91, i64 2
  %140 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 90, i64 2
  %141 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 8
  %142 = load ptr, ptr %141, align 8, !tbaa !62
  %143 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 9
  %144 = load ptr, ptr %143, align 8, !tbaa !62
  %145 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 10
  %146 = load ptr, ptr %145, align 8, !tbaa !62
  %147 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 11
  %148 = load ptr, ptr %147, align 8, !tbaa !62
  br label %149

149:                                              ; preds = %138, %382
  %150 = phi ptr [ %139, %138 ], [ %326, %382 ]
  %151 = phi ptr [ %5, %138 ], [ %269, %382 ]
  %152 = phi ptr [ %140, %138 ], [ %383, %382 ]
  %153 = phi ptr [ %3, %138 ], [ %212, %382 ]
  %154 = phi ptr [ @dequant_coef8, %138 ], [ %384, %382 ]
  %155 = phi i32 [ 0, %138 ], [ %385, %382 ]
  br label %156

156:                                              ; preds = %156, %149
  %157 = phi i32 [ 0, %149 ], [ %209, %156 ]
  %158 = phi ptr [ %142, %149 ], [ %204, %156 ]
  %159 = phi ptr [ %154, %149 ], [ %201, %156 ]
  %160 = phi ptr [ %153, %149 ], [ %207, %156 ]
  %161 = load i32, ptr %159, align 4, !tbaa !48
  %162 = getelementptr inbounds i32, ptr %158, i64 1
  %163 = load i32, ptr %158, align 4, !tbaa !48
  %164 = mul nsw i32 %163, %161
  store i32 %164, ptr %160, align 4, !tbaa !48
  %165 = getelementptr inbounds i32, ptr %159, i64 1
  %166 = load i32, ptr %165, align 4, !tbaa !48
  %167 = getelementptr inbounds i32, ptr %158, i64 2
  %168 = load i32, ptr %162, align 4, !tbaa !48
  %169 = mul nsw i32 %168, %166
  %170 = getelementptr inbounds i32, ptr %160, i64 1
  store i32 %169, ptr %170, align 4, !tbaa !48
  %171 = getelementptr inbounds i32, ptr %159, i64 2
  %172 = load i32, ptr %171, align 4, !tbaa !48
  %173 = getelementptr inbounds i32, ptr %158, i64 3
  %174 = load i32, ptr %167, align 4, !tbaa !48
  %175 = mul nsw i32 %174, %172
  %176 = getelementptr inbounds i32, ptr %160, i64 2
  store i32 %175, ptr %176, align 4, !tbaa !48
  %177 = getelementptr inbounds i32, ptr %159, i64 3
  %178 = load i32, ptr %177, align 4, !tbaa !48
  %179 = getelementptr inbounds i32, ptr %158, i64 4
  %180 = load i32, ptr %173, align 4, !tbaa !48
  %181 = mul nsw i32 %180, %178
  %182 = getelementptr inbounds i32, ptr %160, i64 3
  store i32 %181, ptr %182, align 4, !tbaa !48
  %183 = getelementptr inbounds i32, ptr %159, i64 4
  %184 = load i32, ptr %183, align 4, !tbaa !48
  %185 = getelementptr inbounds i32, ptr %158, i64 5
  %186 = load i32, ptr %179, align 4, !tbaa !48
  %187 = mul nsw i32 %186, %184
  %188 = getelementptr inbounds i32, ptr %160, i64 4
  store i32 %187, ptr %188, align 4, !tbaa !48
  %189 = getelementptr inbounds i32, ptr %159, i64 5
  %190 = load i32, ptr %189, align 4, !tbaa !48
  %191 = getelementptr inbounds i32, ptr %158, i64 6
  %192 = load i32, ptr %185, align 4, !tbaa !48
  %193 = mul nsw i32 %192, %190
  %194 = getelementptr inbounds i32, ptr %160, i64 5
  store i32 %193, ptr %194, align 4, !tbaa !48
  %195 = getelementptr inbounds i32, ptr %159, i64 6
  %196 = load i32, ptr %195, align 4, !tbaa !48
  %197 = getelementptr inbounds i32, ptr %158, i64 7
  %198 = load i32, ptr %191, align 4, !tbaa !48
  %199 = mul nsw i32 %198, %196
  %200 = getelementptr inbounds i32, ptr %160, i64 6
  store i32 %199, ptr %200, align 4, !tbaa !48
  %201 = getelementptr inbounds [8 x i32], ptr %159, i64 1
  %202 = getelementptr inbounds i32, ptr %159, i64 7
  %203 = load i32, ptr %202, align 4, !tbaa !48
  %204 = getelementptr inbounds i32, ptr %158, i64 8
  %205 = load i32, ptr %197, align 4, !tbaa !48
  %206 = mul nsw i32 %205, %203
  %207 = getelementptr inbounds [8 x i32], ptr %160, i64 1
  %208 = getelementptr inbounds i32, ptr %160, i64 7
  store i32 %206, ptr %208, align 4, !tbaa !48
  %209 = add nuw nsw i32 %157, 1
  %210 = icmp eq i32 %209, 8
  br i1 %210, label %211, label %156, !llvm.loop !70

211:                                              ; preds = %156
  %212 = getelementptr inbounds [8 x [8 x i32]], ptr %153, i64 1
  br label %213

213:                                              ; preds = %213, %211
  %214 = phi i32 [ 0, %211 ], [ %266, %213 ]
  %215 = phi ptr [ %144, %211 ], [ %261, %213 ]
  %216 = phi ptr [ %154, %211 ], [ %258, %213 ]
  %217 = phi ptr [ %151, %211 ], [ %264, %213 ]
  %218 = load i32, ptr %216, align 4, !tbaa !48
  %219 = getelementptr inbounds i32, ptr %215, i64 1
  %220 = load i32, ptr %215, align 4, !tbaa !48
  %221 = mul nsw i32 %220, %218
  store i32 %221, ptr %217, align 4, !tbaa !48
  %222 = getelementptr inbounds i32, ptr %216, i64 1
  %223 = load i32, ptr %222, align 4, !tbaa !48
  %224 = getelementptr inbounds i32, ptr %215, i64 2
  %225 = load i32, ptr %219, align 4, !tbaa !48
  %226 = mul nsw i32 %225, %223
  %227 = getelementptr inbounds i32, ptr %217, i64 1
  store i32 %226, ptr %227, align 4, !tbaa !48
  %228 = getelementptr inbounds i32, ptr %216, i64 2
  %229 = load i32, ptr %228, align 4, !tbaa !48
  %230 = getelementptr inbounds i32, ptr %215, i64 3
  %231 = load i32, ptr %224, align 4, !tbaa !48
  %232 = mul nsw i32 %231, %229
  %233 = getelementptr inbounds i32, ptr %217, i64 2
  store i32 %232, ptr %233, align 4, !tbaa !48
  %234 = getelementptr inbounds i32, ptr %216, i64 3
  %235 = load i32, ptr %234, align 4, !tbaa !48
  %236 = getelementptr inbounds i32, ptr %215, i64 4
  %237 = load i32, ptr %230, align 4, !tbaa !48
  %238 = mul nsw i32 %237, %235
  %239 = getelementptr inbounds i32, ptr %217, i64 3
  store i32 %238, ptr %239, align 4, !tbaa !48
  %240 = getelementptr inbounds i32, ptr %216, i64 4
  %241 = load i32, ptr %240, align 4, !tbaa !48
  %242 = getelementptr inbounds i32, ptr %215, i64 5
  %243 = load i32, ptr %236, align 4, !tbaa !48
  %244 = mul nsw i32 %243, %241
  %245 = getelementptr inbounds i32, ptr %217, i64 4
  store i32 %244, ptr %245, align 4, !tbaa !48
  %246 = getelementptr inbounds i32, ptr %216, i64 5
  %247 = load i32, ptr %246, align 4, !tbaa !48
  %248 = getelementptr inbounds i32, ptr %215, i64 6
  %249 = load i32, ptr %242, align 4, !tbaa !48
  %250 = mul nsw i32 %249, %247
  %251 = getelementptr inbounds i32, ptr %217, i64 5
  store i32 %250, ptr %251, align 4, !tbaa !48
  %252 = getelementptr inbounds i32, ptr %216, i64 6
  %253 = load i32, ptr %252, align 4, !tbaa !48
  %254 = getelementptr inbounds i32, ptr %215, i64 7
  %255 = load i32, ptr %248, align 4, !tbaa !48
  %256 = mul nsw i32 %255, %253
  %257 = getelementptr inbounds i32, ptr %217, i64 6
  store i32 %256, ptr %257, align 4, !tbaa !48
  %258 = getelementptr inbounds [8 x i32], ptr %216, i64 1
  %259 = getelementptr inbounds i32, ptr %216, i64 7
  %260 = load i32, ptr %259, align 4, !tbaa !48
  %261 = getelementptr inbounds i32, ptr %215, i64 8
  %262 = load i32, ptr %254, align 4, !tbaa !48
  %263 = mul nsw i32 %262, %260
  %264 = getelementptr inbounds [8 x i32], ptr %217, i64 1
  %265 = getelementptr inbounds i32, ptr %217, i64 7
  store i32 %263, ptr %265, align 4, !tbaa !48
  %266 = add nuw nsw i32 %214, 1
  %267 = icmp eq i32 %266, 8
  br i1 %267, label %268, label %213, !llvm.loop !70

268:                                              ; preds = %213
  %269 = getelementptr inbounds [8 x [8 x i32]], ptr %151, i64 1
  br label %270

270:                                              ; preds = %270, %268
  %271 = phi i32 [ 0, %268 ], [ %323, %270 ]
  %272 = phi ptr [ %146, %268 ], [ %318, %270 ]
  %273 = phi ptr [ %154, %268 ], [ %315, %270 ]
  %274 = phi ptr [ %152, %268 ], [ %321, %270 ]
  %275 = load i32, ptr %273, align 4, !tbaa !48
  %276 = getelementptr inbounds i32, ptr %272, i64 1
  %277 = load i32, ptr %272, align 4, !tbaa !48
  %278 = mul nsw i32 %277, %275
  store i32 %278, ptr %274, align 4, !tbaa !48
  %279 = getelementptr inbounds i32, ptr %273, i64 1
  %280 = load i32, ptr %279, align 4, !tbaa !48
  %281 = getelementptr inbounds i32, ptr %272, i64 2
  %282 = load i32, ptr %276, align 4, !tbaa !48
  %283 = mul nsw i32 %282, %280
  %284 = getelementptr inbounds i32, ptr %274, i64 1
  store i32 %283, ptr %284, align 4, !tbaa !48
  %285 = getelementptr inbounds i32, ptr %273, i64 2
  %286 = load i32, ptr %285, align 4, !tbaa !48
  %287 = getelementptr inbounds i32, ptr %272, i64 3
  %288 = load i32, ptr %281, align 4, !tbaa !48
  %289 = mul nsw i32 %288, %286
  %290 = getelementptr inbounds i32, ptr %274, i64 2
  store i32 %289, ptr %290, align 4, !tbaa !48
  %291 = getelementptr inbounds i32, ptr %273, i64 3
  %292 = load i32, ptr %291, align 4, !tbaa !48
  %293 = getelementptr inbounds i32, ptr %272, i64 4
  %294 = load i32, ptr %287, align 4, !tbaa !48
  %295 = mul nsw i32 %294, %292
  %296 = getelementptr inbounds i32, ptr %274, i64 3
  store i32 %295, ptr %296, align 4, !tbaa !48
  %297 = getelementptr inbounds i32, ptr %273, i64 4
  %298 = load i32, ptr %297, align 4, !tbaa !48
  %299 = getelementptr inbounds i32, ptr %272, i64 5
  %300 = load i32, ptr %293, align 4, !tbaa !48
  %301 = mul nsw i32 %300, %298
  %302 = getelementptr inbounds i32, ptr %274, i64 4
  store i32 %301, ptr %302, align 4, !tbaa !48
  %303 = getelementptr inbounds i32, ptr %273, i64 5
  %304 = load i32, ptr %303, align 4, !tbaa !48
  %305 = getelementptr inbounds i32, ptr %272, i64 6
  %306 = load i32, ptr %299, align 4, !tbaa !48
  %307 = mul nsw i32 %306, %304
  %308 = getelementptr inbounds i32, ptr %274, i64 5
  store i32 %307, ptr %308, align 4, !tbaa !48
  %309 = getelementptr inbounds i32, ptr %273, i64 6
  %310 = load i32, ptr %309, align 4, !tbaa !48
  %311 = getelementptr inbounds i32, ptr %272, i64 7
  %312 = load i32, ptr %305, align 4, !tbaa !48
  %313 = mul nsw i32 %312, %310
  %314 = getelementptr inbounds i32, ptr %274, i64 6
  store i32 %313, ptr %314, align 4, !tbaa !48
  %315 = getelementptr inbounds [8 x i32], ptr %273, i64 1
  %316 = getelementptr inbounds i32, ptr %273, i64 7
  %317 = load i32, ptr %316, align 4, !tbaa !48
  %318 = getelementptr inbounds i32, ptr %272, i64 8
  %319 = load i32, ptr %311, align 4, !tbaa !48
  %320 = mul nsw i32 %319, %317
  %321 = getelementptr inbounds [8 x i32], ptr %274, i64 1
  %322 = getelementptr inbounds i32, ptr %274, i64 7
  store i32 %320, ptr %322, align 4, !tbaa !48
  %323 = add nuw nsw i32 %271, 1
  %324 = icmp eq i32 %323, 8
  br i1 %324, label %325, label %270, !llvm.loop !70

325:                                              ; preds = %270
  %326 = getelementptr inbounds [8 x [8 x i32]], ptr %150, i64 1
  br label %327

327:                                              ; preds = %327, %325
  %328 = phi i32 [ 0, %325 ], [ %380, %327 ]
  %329 = phi ptr [ %148, %325 ], [ %375, %327 ]
  %330 = phi ptr [ %154, %325 ], [ %372, %327 ]
  %331 = phi ptr [ %150, %325 ], [ %378, %327 ]
  %332 = load i32, ptr %330, align 4, !tbaa !48
  %333 = getelementptr inbounds i32, ptr %329, i64 1
  %334 = load i32, ptr %329, align 4, !tbaa !48
  %335 = mul nsw i32 %334, %332
  store i32 %335, ptr %331, align 4, !tbaa !48
  %336 = getelementptr inbounds i32, ptr %330, i64 1
  %337 = load i32, ptr %336, align 4, !tbaa !48
  %338 = getelementptr inbounds i32, ptr %329, i64 2
  %339 = load i32, ptr %333, align 4, !tbaa !48
  %340 = mul nsw i32 %339, %337
  %341 = getelementptr inbounds i32, ptr %331, i64 1
  store i32 %340, ptr %341, align 4, !tbaa !48
  %342 = getelementptr inbounds i32, ptr %330, i64 2
  %343 = load i32, ptr %342, align 4, !tbaa !48
  %344 = getelementptr inbounds i32, ptr %329, i64 3
  %345 = load i32, ptr %338, align 4, !tbaa !48
  %346 = mul nsw i32 %345, %343
  %347 = getelementptr inbounds i32, ptr %331, i64 2
  store i32 %346, ptr %347, align 4, !tbaa !48
  %348 = getelementptr inbounds i32, ptr %330, i64 3
  %349 = load i32, ptr %348, align 4, !tbaa !48
  %350 = getelementptr inbounds i32, ptr %329, i64 4
  %351 = load i32, ptr %344, align 4, !tbaa !48
  %352 = mul nsw i32 %351, %349
  %353 = getelementptr inbounds i32, ptr %331, i64 3
  store i32 %352, ptr %353, align 4, !tbaa !48
  %354 = getelementptr inbounds i32, ptr %330, i64 4
  %355 = load i32, ptr %354, align 4, !tbaa !48
  %356 = getelementptr inbounds i32, ptr %329, i64 5
  %357 = load i32, ptr %350, align 4, !tbaa !48
  %358 = mul nsw i32 %357, %355
  %359 = getelementptr inbounds i32, ptr %331, i64 4
  store i32 %358, ptr %359, align 4, !tbaa !48
  %360 = getelementptr inbounds i32, ptr %330, i64 5
  %361 = load i32, ptr %360, align 4, !tbaa !48
  %362 = getelementptr inbounds i32, ptr %329, i64 6
  %363 = load i32, ptr %356, align 4, !tbaa !48
  %364 = mul nsw i32 %363, %361
  %365 = getelementptr inbounds i32, ptr %331, i64 5
  store i32 %364, ptr %365, align 4, !tbaa !48
  %366 = getelementptr inbounds i32, ptr %330, i64 6
  %367 = load i32, ptr %366, align 4, !tbaa !48
  %368 = getelementptr inbounds i32, ptr %329, i64 7
  %369 = load i32, ptr %362, align 4, !tbaa !48
  %370 = mul nsw i32 %369, %367
  %371 = getelementptr inbounds i32, ptr %331, i64 6
  store i32 %370, ptr %371, align 4, !tbaa !48
  %372 = getelementptr inbounds [8 x i32], ptr %330, i64 1
  %373 = getelementptr inbounds i32, ptr %330, i64 7
  %374 = load i32, ptr %373, align 4, !tbaa !48
  %375 = getelementptr inbounds i32, ptr %329, i64 8
  %376 = load i32, ptr %368, align 4, !tbaa !48
  %377 = mul nsw i32 %376, %374
  %378 = getelementptr inbounds [8 x i32], ptr %331, i64 1
  %379 = getelementptr inbounds i32, ptr %331, i64 7
  store i32 %377, ptr %379, align 4, !tbaa !48
  %380 = add nuw nsw i32 %328, 1
  %381 = icmp eq i32 %380, 8
  br i1 %381, label %382, label %327, !llvm.loop !70

382:                                              ; preds = %327
  %383 = getelementptr inbounds [8 x [8 x i32]], ptr %152, i64 1
  %384 = getelementptr inbounds [8 x [8 x i32]], ptr %154, i64 1
  %385 = add nuw nsw i32 %155, 1
  %386 = icmp eq i32 %385, 6
  br i1 %386, label %387, label %149, !llvm.loop !72

387:                                              ; preds = %382, %132
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 849052}
!35 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !41, i64 849304, !41, i64 849624, !41, i64 849944, !41, i64 850264, !41, i64 850584, !41, i64 850904, !41, i64 851224, !41, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !44, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"image_data", !42, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!42 = !{!"frame_format", !39, i64 0, !39, i64 4, !43, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!43 = !{!"double", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!35, !39, i64 849056}
!46 = !{!35, !36, i64 856032}
!47 = !{!35, !36, i64 856040}
!48 = !{!39, !39, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53, !36, i64 24}
!53 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !40, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !54, i64 1188, !40, i64 1220, !40, i64 1222, !40, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !40, i64 13272, !40, i64 13274, !40, i64 13276, !40, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !40, i64 13304, !40, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!54 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!55 = !{!53, !36, i64 16}
!56 = !{!57, !39, i64 20}
!57 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!58 = !{!59, !39, i64 40}
!59 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !39, i64 2060, !39, i64 2064, !39, i64 2068, !39, i64 2072, !39, i64 2076, !39, i64 2080, !39, i64 2084, !39, i64 2088, !39, i64 2092, !37, i64 2096, !39, i64 3120, !39, i64 3124, !39, i64 3128, !39, i64 3132, !39, i64 3136, !39, i64 3140, !39, i64 3144, !39, i64 3148, !39, i64 3152, !39, i64 3156, !39, i64 3160, !39, i64 3164, !39, i64 3168, !60, i64 3172, !39, i64 4120, !39, i64 4124}
!60 = !{!"", !39, i64 0, !39, i64 4, !40, i64 8, !40, i64 10, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !61, i64 80, !39, i64 492, !61, i64 496, !39, i64 908, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944}
!61 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408}
!62 = !{!36, !36, i64 0}
!63 = distinct !{!63, !50, !51}
!64 = !{!59, !39, i64 36}
!65 = distinct !{!65, !50, !51}
!66 = distinct !{!66, !50, !51}
!67 = !{!57, !39, i64 16}
!68 = distinct !{!68, !50, !51}
!69 = distinct !{!69, !50, !51}
!70 = distinct !{!70, !50, !51}
!71 = distinct !{!71, !50, !51}
!72 = distinct !{!72, !50, !51}
