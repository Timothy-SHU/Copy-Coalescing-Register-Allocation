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
@dequant_coef = internal constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16]], [4 x [4 x i32]] [[4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18]], [4 x [4 x i32]] [[4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20]], [4 x [4 x i32]] [[4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23]], [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], [4 x [4 x i32]] [[4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29]]], align 16
@dequant_coef8 = internal constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 16
@switch.table.assign_quant_params.2 = private unnamed_addr constant [5 x ptr] [ptr @quant8_intra_default, ptr @quant8_inter_default, ptr @quant8_intra_default, ptr @quant8_inter_default, ptr @quant8_intra_default], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_qp_process(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 67
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 68
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = tail call fastcc i32 @imax(i32 noundef %3, i32 noundef %5) #8
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 132
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = add nsw i32 %6, 52
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #9
  store ptr %14, ptr %7, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
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
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #9
  store ptr %25, ptr %18, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %28

28:                                               ; preds = %21, %27, %17
  %29 = icmp sgt i32 %6, -52
  br i1 %29, label %30, label %46

30:                                               ; preds = %28
  %31 = load ptr, ptr %7, align 8, !tbaa !46
  %32 = load ptr, ptr %18, align 8, !tbaa !47
  %33 = add i32 %6, 51
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  %35 = add nuw i32 %34, 1
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %30, %37
  %38 = phi i64 [ 0, %30 ], [ %44, %37 ]
  %39 = trunc i64 %38 to i32
  %40 = udiv i32 %39, 6
  %41 = getelementptr inbounds i32, ptr %31, i64 %38
  store i32 %40, ptr %41, align 4, !tbaa !48
  %42 = urem i32 %39, 6
  %43 = getelementptr inbounds i32, ptr %32, i64 %38
  store i32 %42, ptr %43, align 4, !tbaa !48
  %44 = add nuw nsw i64 %38, 1
  %45 = icmp eq i64 %44, %36
  br i1 %45, label %46, label %37, !llvm.loop !49

46:                                               ; preds = %37, %28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !51 {
  %3 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_qp_matrices(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 132
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #10
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 133
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #10
  store ptr null, ptr %7, align 8, !tbaa !47
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @assign_quant_params(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !58
  br i1 %8, label %11, label %25

11:                                               ; preds = %1
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !62
  %16 = icmp eq i32 %15, 3
  %17 = select i1 %16, i32 12, i32 8
  br label %31

18:                                               ; preds = %11, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %11 ]
  %20 = icmp ult i64 %19, 6
  %21 = select i1 %20, ptr @quant_org, ptr @quant8_org
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %19
  store ptr %21, ptr %22, align 8, !tbaa !63
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, 12
  br i1 %24, label %144, label %18, !llvm.loop !64

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !62
  %28 = icmp eq i32 %27, 3
  %29 = select i1 %28, i32 12, i32 8
  %30 = icmp eq i32 %10, 0
  br i1 %30, label %86, label %31

31:                                               ; preds = %13, %25
  %32 = phi i32 [ %17, %13 ], [ %29, %25 ]
  %33 = zext nneg i32 %32 to i64
  br label %34

34:                                               ; preds = %31, %80
  %35 = phi i64 [ 0, %31 ], [ %83, %80 ]
  %36 = icmp ult i64 %35, 6
  %37 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 11, i64 %35
  %38 = load i32, ptr %37, align 4, !tbaa !48
  %39 = icmp eq i32 %38, 0
  br i1 %36, label %40, label %57

40:                                               ; preds = %34
  br i1 %39, label %41, label %48

41:                                               ; preds = %40
  %42 = trunc i64 %35 to i32
  switch i32 %42, label %44 [
    i32 0, label %80
    i32 3, label %43
  ]

43:                                               ; preds = %41
  br label %80

44:                                               ; preds = %41
  %45 = add nsw i64 %35, -1
  %46 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !63
  br label %80

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 14, i64 %35
  %50 = load i32, ptr %49, align 4, !tbaa !48
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = icmp ult i64 %35, 3
  %54 = select i1 %53, ptr @quant_intra_default, ptr @quant_inter_default
  br label %80

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 12, i64 %35
  br label %80

57:                                               ; preds = %34
  br i1 %39, label %58, label %65

58:                                               ; preds = %57
  %59 = trunc i64 %35 to i32
  switch i32 %59, label %61 [
    i32 6, label %80
    i32 7, label %60
  ]

60:                                               ; preds = %58
  br label %80

61:                                               ; preds = %58
  %62 = add nsw i64 %35, -2
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !63
  br label %80

65:                                               ; preds = %57
  %66 = add nsw i64 %35, -6
  %67 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 15, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !48
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = trunc i64 %35 to i32
  %72 = add i32 %71, -6
  %73 = icmp ult i32 %72, 5
  br i1 %73, label %76, label %80

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 13, i64 %66
  br label %80

76:                                               ; preds = %70
  %77 = zext nneg i32 %72 to i64
  %78 = getelementptr inbounds [5 x ptr], ptr @switch.table.assign_quant_params.2, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8
  br label %80

80:                                               ; preds = %76, %70, %58, %41, %52, %55, %44, %43, %74, %61, %60
  %81 = phi ptr [ %54, %52 ], [ %56, %55 ], [ %47, %44 ], [ @quant_inter_default, %43 ], [ %75, %74 ], [ %64, %61 ], [ @quant8_inter_default, %60 ], [ @quant_intra_default, %41 ], [ @quant8_intra_default, %58 ], [ @quant8_inter_default, %70 ], [ %79, %76 ]
  %82 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %35
  store ptr %81, ptr %82, align 8, !tbaa !63
  %83 = add nuw nsw i64 %35, 1
  %84 = icmp eq i64 %83, %33
  br i1 %84, label %85, label %34, !llvm.loop !65

85:                                               ; preds = %80
  br i1 %8, label %144, label %86

86:                                               ; preds = %25, %85
  %87 = phi i32 [ %32, %85 ], [ %29, %25 ]
  %88 = phi i1 [ false, %85 ], [ true, %25 ]
  %89 = zext nneg i32 %87 to i64
  br label %90

90:                                               ; preds = %86, %141
  %91 = phi i64 [ 0, %86 ], [ %142, %141 ]
  %92 = icmp ult i64 %91, 6
  %93 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 6, i64 %91
  %94 = load i32, ptr %93, align 4, !tbaa !48
  %95 = icmp eq i32 %94, 0
  br i1 %92, label %96, label %114

96:                                               ; preds = %90
  br i1 %95, label %97, label %105

97:                                               ; preds = %96
  %98 = trunc i64 %91 to i32
  switch i32 %98, label %101 [
    i32 0, label %99
    i32 3, label %100
  ]

99:                                               ; preds = %97
  br i1 %88, label %138, label %141

100:                                              ; preds = %97
  br i1 %88, label %138, label %141

101:                                              ; preds = %97
  %102 = add nsw i64 %91, -1
  %103 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  br label %138

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 9, i64 %91
  %107 = load i32, ptr %106, align 4, !tbaa !48
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = icmp ult i64 %91, 3
  %111 = select i1 %110, ptr @quant_intra_default, ptr @quant_inter_default
  br label %138

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 7, i64 %91
  br label %138

114:                                              ; preds = %90
  br i1 %95, label %115, label %123

115:                                              ; preds = %114
  %116 = trunc i64 %91 to i32
  switch i32 %116, label %119 [
    i32 6, label %117
    i32 7, label %118
  ]

117:                                              ; preds = %115
  br i1 %88, label %138, label %141

118:                                              ; preds = %115
  br i1 %88, label %138, label %141

119:                                              ; preds = %115
  %120 = add nsw i64 %91, -2
  %121 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !63
  br label %138

123:                                              ; preds = %114
  %124 = add nsw i64 %91, -6
  %125 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 10, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !48
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = trunc i64 %91 to i32
  %130 = add i32 %129, -6
  %131 = icmp ult i32 %130, 5
  br i1 %131, label %134, label %138

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 8, i64 %124
  br label %138

134:                                              ; preds = %128
  %135 = zext nneg i32 %130 to i64
  %136 = getelementptr inbounds [5 x ptr], ptr @switch.table.assign_quant_params.2, i64 0, i64 %135
  %137 = load ptr, ptr %136, align 8
  br label %138

138:                                              ; preds = %134, %128, %118, %117, %100, %99, %119, %132, %101, %112, %109
  %139 = phi ptr [ %111, %109 ], [ %113, %112 ], [ %104, %101 ], [ %133, %132 ], [ %122, %119 ], [ @quant_intra_default, %99 ], [ @quant_inter_default, %100 ], [ @quant8_intra_default, %117 ], [ @quant8_inter_default, %118 ], [ @quant8_inter_default, %128 ], [ %137, %134 ]
  %140 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 %91
  store ptr %139, ptr %140, align 8, !tbaa !63
  br label %141

141:                                              ; preds = %138, %99, %100, %117, %118
  %142 = add nuw nsw i64 %91, 1
  %143 = icmp eq i64 %142, %89
  br i1 %143, label %144, label %90, !llvm.loop !66

144:                                              ; preds = %141, %18, %85
  tail call void @CalculateQuant4x4Param(ptr noundef %0) #8
  %145 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 4
  %146 = load i32, ptr %145, align 8, !tbaa !67
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  tail call void @CalculateQuant8x8Param(ptr noundef %0) #8
  br label %149

149:                                              ; preds = %148, %144
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CalculateQuant4x4Param(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 88
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 88, i64 1
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 88, i64 2
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 89
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 89, i64 1
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 89, i64 2
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 1
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 2
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 3
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 4
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 5
  br label %14

14:                                               ; preds = %1, %14
  %15 = phi ptr [ %7, %1 ], [ %33, %14 ]
  %16 = phi ptr [ %6, %1 ], [ %31, %14 ]
  %17 = phi ptr [ %5, %1 ], [ %29, %14 ]
  %18 = phi ptr [ %4, %1 ], [ %27, %14 ]
  %19 = phi ptr [ %3, %1 ], [ %25, %14 ]
  %20 = phi ptr [ %2, %1 ], [ %23, %14 ]
  %21 = phi ptr [ @dequant_coef, %1 ], [ %34, %14 ]
  %22 = phi i32 [ 0, %1 ], [ %36, %14 ]
  %23 = getelementptr inbounds [4 x [4 x i32]], ptr %20, i64 1
  %24 = load ptr, ptr %8, align 8, !tbaa !63
  tail call fastcc void @set_dequant4x4(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef %24) #8
  %25 = getelementptr inbounds [4 x [4 x i32]], ptr %19, i64 1
  %26 = load ptr, ptr %9, align 8, !tbaa !63
  tail call fastcc void @set_dequant4x4(ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef %26) #8
  %27 = getelementptr inbounds [4 x [4 x i32]], ptr %18, i64 1
  %28 = load ptr, ptr %10, align 8, !tbaa !63
  tail call fastcc void @set_dequant4x4(ptr noundef nonnull %18, ptr noundef nonnull %21, ptr noundef %28) #8
  %29 = getelementptr inbounds [4 x [4 x i32]], ptr %17, i64 1
  %30 = load ptr, ptr %11, align 8, !tbaa !63
  tail call fastcc void @set_dequant4x4(ptr noundef nonnull %17, ptr noundef nonnull %21, ptr noundef %30) #8
  %31 = getelementptr inbounds [4 x [4 x i32]], ptr %16, i64 1
  %32 = load ptr, ptr %12, align 8, !tbaa !63
  tail call fastcc void @set_dequant4x4(ptr noundef nonnull %16, ptr noundef nonnull %21, ptr noundef %32) #8
  %33 = getelementptr inbounds [4 x [4 x i32]], ptr %15, i64 1
  %34 = getelementptr inbounds [4 x [4 x i32]], ptr %21, i64 1
  %35 = load ptr, ptr %13, align 8, !tbaa !63
  tail call fastcc void @set_dequant4x4(ptr noundef nonnull %15, ptr noundef nonnull %21, ptr noundef %35) #8
  %36 = add nuw nsw i32 %22, 1
  %37 = icmp eq i32 %36, 6
  br i1 %37, label %38, label %14, !llvm.loop !68

38:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CalculateQuant8x8Param(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 90
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 90, i64 1
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 91
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 91, i64 1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 6
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 7
  br label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %4, %1 ], [ %15, %8 ]
  %10 = phi ptr [ %2, %1 ], [ %13, %8 ]
  %11 = phi ptr [ @dequant_coef8, %1 ], [ %16, %8 ]
  %12 = phi i32 [ 0, %1 ], [ %18, %8 ]
  %13 = getelementptr inbounds [8 x [8 x i32]], ptr %10, i64 1
  %14 = load ptr, ptr %6, align 8, !tbaa !63
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %14) #8
  %15 = getelementptr inbounds [8 x [8 x i32]], ptr %9, i64 1
  %16 = getelementptr inbounds [8 x [8 x i32]], ptr %11, i64 1
  %17 = load ptr, ptr %7, align 8, !tbaa !63
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef %17) #8
  %18 = add nuw nsw i32 %12, 1
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %8, !llvm.loop !69

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !62
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 91, i64 2
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 90, i64 2
  %29 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 8
  %30 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 9
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 10
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 92, i64 11
  br label %33

33:                                               ; preds = %26, %33
  %34 = phi ptr [ %27, %26 ], [ %46, %33 ]
  %35 = phi ptr [ %5, %26 ], [ %42, %33 ]
  %36 = phi ptr [ %28, %26 ], [ %44, %33 ]
  %37 = phi ptr [ %3, %26 ], [ %40, %33 ]
  %38 = phi ptr [ @dequant_coef8, %26 ], [ %47, %33 ]
  %39 = phi i32 [ 0, %26 ], [ %49, %33 ]
  %40 = getelementptr inbounds [8 x [8 x i32]], ptr %37, i64 1
  %41 = load ptr, ptr %29, align 8, !tbaa !63
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef %41) #8
  %42 = getelementptr inbounds [8 x [8 x i32]], ptr %35, i64 1
  %43 = load ptr, ptr %30, align 8, !tbaa !63
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %35, ptr noundef nonnull %38, ptr noundef %43) #8
  %44 = getelementptr inbounds [8 x [8 x i32]], ptr %36, i64 1
  %45 = load ptr, ptr %31, align 8, !tbaa !63
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %36, ptr noundef nonnull %38, ptr noundef %45) #8
  %46 = getelementptr inbounds [8 x [8 x i32]], ptr %34, i64 1
  %47 = getelementptr inbounds [8 x [8 x i32]], ptr %38, i64 1
  %48 = load ptr, ptr %32, align 8, !tbaa !63
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %34, ptr noundef nonnull %38, ptr noundef %48) #8
  %49 = add nuw nsw i32 %39, 1
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %33, !llvm.loop !70

51:                                               ; preds = %33, %20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_dequant4x4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !71 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i32 [ 0, %3 ], [ %33, %4 ]
  %6 = phi ptr [ %2, %3 ], [ %28, %4 ]
  %7 = phi ptr [ %1, %3 ], [ %25, %4 ]
  %8 = phi ptr [ %0, %3 ], [ %31, %4 ]
  %9 = load i32, ptr %7, align 4, !tbaa !48
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  %11 = load i32, ptr %6, align 4, !tbaa !48
  %12 = mul nsw i32 %11, %9
  store i32 %12, ptr %8, align 4, !tbaa !48
  %13 = getelementptr inbounds i32, ptr %7, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !48
  %15 = getelementptr inbounds i32, ptr %6, i64 2
  %16 = load i32, ptr %10, align 4, !tbaa !48
  %17 = mul nsw i32 %16, %14
  %18 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %17, ptr %18, align 4, !tbaa !48
  %19 = getelementptr inbounds i32, ptr %7, i64 2
  %20 = load i32, ptr %19, align 4, !tbaa !48
  %21 = getelementptr inbounds i32, ptr %6, i64 3
  %22 = load i32, ptr %15, align 4, !tbaa !48
  %23 = mul nsw i32 %22, %20
  %24 = getelementptr inbounds i32, ptr %8, i64 2
  store i32 %23, ptr %24, align 4, !tbaa !48
  %25 = getelementptr inbounds [4 x i32], ptr %7, i64 1
  %26 = getelementptr inbounds i32, ptr %7, i64 3
  %27 = load i32, ptr %26, align 4, !tbaa !48
  %28 = getelementptr inbounds i32, ptr %6, i64 4
  %29 = load i32, ptr %21, align 4, !tbaa !48
  %30 = mul nsw i32 %29, %27
  %31 = getelementptr inbounds [4 x i32], ptr %8, i64 1
  %32 = getelementptr inbounds i32, ptr %8, i64 3
  store i32 %30, ptr %32, align 4, !tbaa !48
  %33 = add nuw nsw i32 %5, 1
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %4, !llvm.loop !72

35:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_dequant8x8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !73 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i32 [ 0, %3 ], [ %57, %4 ]
  %6 = phi ptr [ %2, %3 ], [ %52, %4 ]
  %7 = phi ptr [ %1, %3 ], [ %49, %4 ]
  %8 = phi ptr [ %0, %3 ], [ %55, %4 ]
  %9 = load i32, ptr %7, align 4, !tbaa !48
  %10 = getelementptr inbounds i32, ptr %6, i64 1
  %11 = load i32, ptr %6, align 4, !tbaa !48
  %12 = mul nsw i32 %11, %9
  store i32 %12, ptr %8, align 4, !tbaa !48
  %13 = getelementptr inbounds i32, ptr %7, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !48
  %15 = getelementptr inbounds i32, ptr %6, i64 2
  %16 = load i32, ptr %10, align 4, !tbaa !48
  %17 = mul nsw i32 %16, %14
  %18 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %17, ptr %18, align 4, !tbaa !48
  %19 = getelementptr inbounds i32, ptr %7, i64 2
  %20 = load i32, ptr %19, align 4, !tbaa !48
  %21 = getelementptr inbounds i32, ptr %6, i64 3
  %22 = load i32, ptr %15, align 4, !tbaa !48
  %23 = mul nsw i32 %22, %20
  %24 = getelementptr inbounds i32, ptr %8, i64 2
  store i32 %23, ptr %24, align 4, !tbaa !48
  %25 = getelementptr inbounds i32, ptr %7, i64 3
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = getelementptr inbounds i32, ptr %6, i64 4
  %28 = load i32, ptr %21, align 4, !tbaa !48
  %29 = mul nsw i32 %28, %26
  %30 = getelementptr inbounds i32, ptr %8, i64 3
  store i32 %29, ptr %30, align 4, !tbaa !48
  %31 = getelementptr inbounds i32, ptr %7, i64 4
  %32 = load i32, ptr %31, align 4, !tbaa !48
  %33 = getelementptr inbounds i32, ptr %6, i64 5
  %34 = load i32, ptr %27, align 4, !tbaa !48
  %35 = mul nsw i32 %34, %32
  %36 = getelementptr inbounds i32, ptr %8, i64 4
  store i32 %35, ptr %36, align 4, !tbaa !48
  %37 = getelementptr inbounds i32, ptr %7, i64 5
  %38 = load i32, ptr %37, align 4, !tbaa !48
  %39 = getelementptr inbounds i32, ptr %6, i64 6
  %40 = load i32, ptr %33, align 4, !tbaa !48
  %41 = mul nsw i32 %40, %38
  %42 = getelementptr inbounds i32, ptr %8, i64 5
  store i32 %41, ptr %42, align 4, !tbaa !48
  %43 = getelementptr inbounds i32, ptr %7, i64 6
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = getelementptr inbounds i32, ptr %6, i64 7
  %46 = load i32, ptr %39, align 4, !tbaa !48
  %47 = mul nsw i32 %46, %44
  %48 = getelementptr inbounds i32, ptr %8, i64 6
  store i32 %47, ptr %48, align 4, !tbaa !48
  %49 = getelementptr inbounds [8 x i32], ptr %7, i64 1
  %50 = getelementptr inbounds i32, ptr %7, i64 7
  %51 = load i32, ptr %50, align 4, !tbaa !48
  %52 = getelementptr inbounds i32, ptr %6, i64 8
  %53 = load i32, ptr %45, align 4, !tbaa !48
  %54 = mul nsw i32 %53, %51
  %55 = getelementptr inbounds [8 x i32], ptr %8, i64 1
  %56 = getelementptr inbounds i32, ptr %8, i64 7
  store i32 %54, ptr %56, align 4, !tbaa !48
  %57 = add nuw nsw i32 %5, 1
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %4, !llvm.loop !74

59:                                               ; preds = %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize allocsize(0) }
attributes #10 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"quant.c:imax"}
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
!62 = !{!59, !39, i64 36}
!63 = !{!36, !36, i64 0}
!64 = distinct !{!64, !50}
!65 = distinct !{!65, !50}
!66 = distinct !{!66, !50}
!67 = !{!57, !39, i64 16}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !50}
!71 = !{!"quant.c:set_dequant4x4"}
!72 = distinct !{!72, !50}
!73 = !{!"quant.c:set_dequant8x8"}
!74 = distinct !{!74, !50}
