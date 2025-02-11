; ModuleID = 'ldecod_src/intra4x4_pred_mbaff.c'
source_filename = "ldecod_src/intra4x4_pred_mbaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }

@.str = private unnamed_addr constant [46 x i8] c"Error: illegal intra_4x4 prediction mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"warning: Intra_4x4_Vertical prediction mode not allowed at mb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"warning: Intra_4x4_Horizontal prediction mode not allowed at mb %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"warning: Intra_4x4_Diagonal_Down_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"warning: Intra_4x4_Diagonal_Down_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"warning: Intra_4x4_Vertical_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Horizontal_Up prediction mode not allowed at mb %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"warning: Intra_4x4_Horizontal_Down prediction mode not allowed at mb %d\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @intra4x4_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !21
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 %16, ptr %17, align 4, !tbaa !22
  switch i8 %16, label %27 [
    i8 2, label %18
    i8 0, label %19
    i8 1, label %20
    i8 4, label %21
    i8 3, label %22
    i8 5, label %23
    i8 7, label %24
    i8 8, label %25
    i8 6, label %26
  ]

18:                                               ; preds = %6
  tail call fastcc void @intra4x4_dc_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

19:                                               ; preds = %6
  tail call fastcc void @intra4x4_vert_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

20:                                               ; preds = %6
  tail call fastcc void @intra4x4_hor_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

21:                                               ; preds = %6
  tail call fastcc void @intra4x4_diag_down_right_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

22:                                               ; preds = %6
  tail call fastcc void @intra4x4_diag_down_left_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

23:                                               ; preds = %6
  tail call fastcc void @intra4x4_vert_right_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

24:                                               ; preds = %6
  tail call fastcc void @intra4x4_vert_left_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

25:                                               ; preds = %6
  tail call fastcc void @intra4x4_hor_up_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

26:                                               ; preds = %6
  tail call fastcc void @intra4x4_hor_down_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

27:                                               ; preds = %6
  %28 = zext i8 %16 to i32
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %28) #5
  br label %30

30:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18
  %31 = phi i32 [ 1, %27 ], [ 0, %26 ], [ 0, %25 ], [ 0, %24 ], [ 0, %23 ], [ 0, %22 ], [ 0, %21 ], [ 0, %20 ], [ 0, %19 ], [ 0, %18 ]
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_dc_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x %struct.pix_pos], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  br i1 %10, label %19, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 33
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  %16 = add i32 %1, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  br label %21

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 32
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi ptr [ %18, %13 ], [ %20, %19 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %24 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 77
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = zext i32 %1 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 160
  %30 = add nsw i32 %2, -1
  %31 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 81
  %32 = sext i32 %3 to i64
  br label %33

33:                                               ; preds = %21, %33
  %34 = phi i64 [ 0, %21 ], [ %39, %33 ]
  %35 = load ptr, ptr %29, align 8, !tbaa !31
  %36 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %34
  %37 = trunc i64 %34 to i32
  %38 = add i32 %37, %3
  call void %35(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %38, ptr noundef nonnull %31, ptr noundef nonnull %36) #7
  %39 = add nuw nsw i64 %34, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %33, !llvm.loop !32

41:                                               ; preds = %33
  %42 = load ptr, ptr %29, align 8, !tbaa !31
  %43 = add nsw i32 %3, -1
  call void %42(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %43, ptr noundef nonnull %31, ptr noundef nonnull %6) #7
  %44 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %45, i64 0, i32 30
  %47 = load i32, ptr %46, align 4, !tbaa !35
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  br label %51

51:                                               ; preds = %49, %65
  %52 = phi i64 [ 0, %49 ], [ %68, %65 ]
  %53 = phi i32 [ 1, %49 ], [ %67, %65 ]
  %54 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %52
  %55 = load i32, ptr %54, align 16, !tbaa !37
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %50, align 8, !tbaa !39
  %59 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %52, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !40
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !21
  %64 = sext i8 %63 to i32
  br label %65

65:                                               ; preds = %51, %57
  %66 = phi i32 [ %64, %57 ], [ 0, %51 ]
  %67 = and i32 %66, %53
  %68 = add nuw nsw i64 %52, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %51, !llvm.loop !41

70:                                               ; preds = %65
  %71 = load i32, ptr %6, align 4, !tbaa !37
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %50, align 8, !tbaa !39
  %75 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !40
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %74, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !21
  %80 = sext i8 %79 to i32
  br label %84

81:                                               ; preds = %41
  %82 = load i32, ptr %5, align 16, !tbaa !37
  %83 = load i32, ptr %6, align 4, !tbaa !37
  br label %84

84:                                               ; preds = %73, %81
  %85 = phi i32 [ %83, %81 ], [ %80, %73 ]
  %86 = phi i32 [ %82, %81 ], [ %67, %73 ]
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %70, %84
  %89 = phi i32 [ %86, %84 ], [ %67, %70 ]
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %167, label %105

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %93 = load i16, ptr %92, align 2, !tbaa !42
  %94 = sext i16 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %23, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !20
  %97 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %98 = load i16, ptr %97, align 4, !tbaa !43
  %99 = sext i16 %98 to i64
  %100 = getelementptr inbounds i16, ptr %96, i64 %99
  %101 = load <4 x i16>, ptr %100, align 2, !tbaa !44
  %102 = zext <4 x i16> %101 to <4 x i32>
  %103 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %102)
  %104 = icmp eq i32 %86, 0
  br i1 %104, label %164, label %105

105:                                              ; preds = %91, %88
  %106 = phi i32 [ %103, %91 ], [ 0, %88 ]
  %107 = phi i1 [ false, %91 ], [ true, %88 ]
  %108 = phi i1 [ true, %91 ], [ false, %88 ]
  %109 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %110 = load i16, ptr %109, align 2, !tbaa !42
  %111 = sext i16 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %23, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !20
  %114 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %115 = load i16, ptr %114, align 4, !tbaa !43
  %116 = sext i16 %115 to i64
  %117 = getelementptr inbounds i16, ptr %113, i64 %116
  %118 = load i16, ptr %117, align 2, !tbaa !44
  %119 = zext i16 %118 to i32
  %120 = add nuw nsw i32 %106, %119
  %121 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 5
  %122 = load i16, ptr %121, align 2, !tbaa !42
  %123 = sext i16 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %23, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !20
  %126 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 4
  %127 = load i16, ptr %126, align 4, !tbaa !43
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds i16, ptr %125, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !44
  %131 = zext i16 %130 to i32
  %132 = add nuw nsw i32 %120, %131
  %133 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 5
  %134 = load i16, ptr %133, align 2, !tbaa !42
  %135 = sext i16 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %23, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !20
  %138 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 4
  %139 = load i16, ptr %138, align 4, !tbaa !43
  %140 = sext i16 %139 to i64
  %141 = getelementptr inbounds i16, ptr %137, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !44
  %143 = zext i16 %142 to i32
  %144 = add nuw nsw i32 %132, %143
  %145 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 3, i32 5
  %146 = load i16, ptr %145, align 2, !tbaa !42
  %147 = sext i16 %146 to i64
  %148 = getelementptr inbounds ptr, ptr %23, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !20
  %150 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 3, i32 4
  %151 = load i16, ptr %150, align 4, !tbaa !43
  %152 = sext i16 %151 to i64
  %153 = getelementptr inbounds i16, ptr %149, i64 %152
  %154 = load i16, ptr %153, align 2, !tbaa !44
  %155 = zext i16 %154 to i32
  %156 = add nuw nsw i32 %144, %155
  br i1 %108, label %157, label %160

157:                                              ; preds = %105
  %158 = add nuw nsw i32 %156, 4
  %159 = lshr i32 %158, 3
  br label %170

160:                                              ; preds = %105
  br i1 %107, label %161, label %167

161:                                              ; preds = %160
  %162 = add nuw nsw i32 %156, 2
  %163 = lshr i32 %162, 2
  br label %170

164:                                              ; preds = %91
  %165 = add nuw nsw i32 %103, 2
  %166 = lshr i32 %165, 2
  br label %170

167:                                              ; preds = %88, %160
  %168 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 69, i64 %26
  %169 = load i32, ptr %168, align 4, !tbaa !45
  br label %170

170:                                              ; preds = %161, %167, %164, %157
  %171 = phi i32 [ %159, %157 ], [ %163, %161 ], [ %169, %167 ], [ %166, %164 ]
  %172 = trunc i32 %171 to i16
  %173 = sext i32 %2 to i64
  %174 = add nsw i32 %3, 3
  %175 = sext i32 %174 to i64
  %176 = insertelement <4 x i16> poison, i16 %172, i64 0
  %177 = shufflevector <4 x i16> %176, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %178

178:                                              ; preds = %170, %178
  %179 = phi i64 [ %32, %170 ], [ %183, %178 ]
  %180 = getelementptr inbounds ptr, ptr %28, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !20
  %182 = getelementptr inbounds i16, ptr %181, i64 %173
  store <4 x i16> %177, ptr %182, align 2, !tbaa !44
  %183 = add nsw i64 %179, 1
  %184 = icmp slt i64 %179, %175
  br i1 %184, label %178, label %185, !llvm.loop !46

185:                                              ; preds = %178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_vert_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %9 = add nsw i32 %3, -1
  %10 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  %11 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %12, i64 0, i32 30
  %14 = load i32, ptr %13, align 4, !tbaa !35
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 4, !tbaa !37
  br i1 %15, label %28, label %17

17:                                               ; preds = %4
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 128
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !21
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %4, %19
  %29 = phi i32 [ %27, %19 ], [ %16, %4 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17, %28
  %32 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 20
  %33 = load i32, ptr %32, align 4, !tbaa !47
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %33) #5
  br label %82

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 77
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  %38 = zext i32 %1 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  %41 = icmp eq i32 %1, 0
  %42 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %43 = load ptr, ptr %42, align 8, !tbaa !24
  br i1 %41, label %50, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 33
  %46 = load ptr, ptr %45, align 8, !tbaa !27
  %47 = add i32 %1, -1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  br label %52

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 32
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi ptr [ %51, %50 ], [ %49, %44 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !20
  %55 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %56 = load i16, ptr %55, align 2, !tbaa !42
  %57 = sext i16 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !20
  %60 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %61 = load i16, ptr %60, align 4, !tbaa !43
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds i16, ptr %59, i64 %62
  %64 = sext i32 %3 to i64
  %65 = getelementptr inbounds ptr, ptr %40, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !20
  %67 = sext i32 %2 to i64
  %68 = getelementptr inbounds i16, ptr %66, i64 %67
  %69 = load i64, ptr %63, align 2
  store i64 %69, ptr %68, align 2
  %70 = getelementptr ptr, ptr %65, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !20
  %72 = getelementptr inbounds i16, ptr %71, i64 %67
  %73 = load i64, ptr %63, align 2
  store i64 %73, ptr %72, align 2
  %74 = getelementptr ptr, ptr %65, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !20
  %76 = getelementptr inbounds i16, ptr %75, i64 %67
  %77 = load i64, ptr %63, align 2
  store i64 %77, ptr %76, align 2
  %78 = getelementptr ptr, ptr %65, i64 3
  %79 = load ptr, ptr %78, align 8, !tbaa !20
  %80 = getelementptr inbounds i16, ptr %79, i64 %67
  %81 = load i64, ptr %63, align 2
  store i64 %81, ptr %80, align 2
  br label %82

82:                                               ; preds = %52, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_hor_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x %struct.pix_pos], align 16
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr %0, align 8, !tbaa !23
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  br i1 %9, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.storable_picture, ptr %11, i64 0, i32 33
  %14 = load ptr, ptr %13, align 8, !tbaa !27
  %15 = add i32 %1, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  br label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.storable_picture, ptr %11, i64 0, i32 32
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %23 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %24 = load ptr, ptr %23, align 8, !tbaa !30
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 160
  %29 = add nsw i32 %2, -1
  %30 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  %31 = sext i32 %3 to i64
  br label %32

32:                                               ; preds = %20, %32
  %33 = phi i64 [ 0, %20 ], [ %38, %32 ]
  %34 = load ptr, ptr %28, align 8, !tbaa !31
  %35 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %33
  %36 = trunc i64 %33 to i32
  %37 = add i32 %36, %3
  call void %34(ptr noundef nonnull %0, i32 noundef %29, i32 noundef %37, ptr noundef nonnull %30, ptr noundef nonnull %35) #7
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %32, !llvm.loop !48

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %42, i64 0, i32 30
  %44 = load i32, ptr %43, align 4, !tbaa !35
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  br label %48

48:                                               ; preds = %46, %62
  %49 = phi i64 [ 0, %46 ], [ %65, %62 ]
  %50 = phi i32 [ 1, %46 ], [ %64, %62 ]
  %51 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %49
  %52 = load i32, ptr %51, align 16, !tbaa !37
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %47, align 8, !tbaa !39
  %56 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %49, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !40
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !21
  %61 = sext i8 %60 to i32
  br label %62

62:                                               ; preds = %48, %54
  %63 = phi i32 [ %61, %54 ], [ 0, %48 ]
  %64 = and i32 %63, %50
  %65 = add nuw nsw i64 %49, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %69, label %48, !llvm.loop !49

67:                                               ; preds = %40
  %68 = load i32, ptr %5, align 16, !tbaa !37
  br label %69

69:                                               ; preds = %62, %67
  %70 = phi i32 [ %68, %67 ], [ %64, %62 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %74 = load i32, ptr %73, align 4, !tbaa !47
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %74) #5
  br label %76

76:                                               ; preds = %72, %69
  %77 = sext i32 %2 to i64
  %78 = getelementptr ptr, ptr %27, i64 %31
  %79 = add nsw i32 %2, 3
  %80 = sext i32 %79 to i64
  br label %81

81:                                               ; preds = %76, %100
  %82 = phi i64 [ 0, %76 ], [ %101, %100 ]
  %83 = getelementptr ptr, ptr %78, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !20
  %85 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %82, i32 5
  %86 = load i16, ptr %85, align 2, !tbaa !42
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %22, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !20
  %90 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %82, i32 4
  %91 = load i16, ptr %90, align 4, !tbaa !43
  %92 = sext i16 %91 to i64
  %93 = getelementptr inbounds i16, ptr %89, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !44
  br label %95

95:                                               ; preds = %81, %95
  %96 = phi i64 [ %77, %81 ], [ %98, %95 ]
  %97 = getelementptr inbounds i16, ptr %84, i64 %96
  store i16 %94, ptr %97, align 2, !tbaa !44
  %98 = add nsw i64 %96, 1
  %99 = icmp slt i64 %96, %80
  br i1 %99, label %95, label %100, !llvm.loop !50

100:                                              ; preds = %95
  %101 = add nuw nsw i64 %82, 1
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %81, !llvm.loop !51

103:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_diag_down_right_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x %struct.pix_pos], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq i32 %1, 0
  %12 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  br i1 %11, label %20, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 33
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = add i32 %1, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  br label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 32
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %19, %14 ], [ %21, %20 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %25 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  %27 = zext i32 %1 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 160
  %31 = add nsw i32 %2, -1
  %32 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81
  %33 = sext i32 %3 to i64
  br label %34

34:                                               ; preds = %22, %34
  %35 = phi i64 [ 0, %22 ], [ %40, %34 ]
  %36 = load ptr, ptr %30, align 8, !tbaa !31
  %37 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %35
  %38 = trunc i64 %35 to i32
  %39 = add i32 %38, %3
  call void %36(ptr noundef nonnull %0, i32 noundef %31, i32 noundef %39, ptr noundef nonnull %32, ptr noundef nonnull %37) #7
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %42, label %34, !llvm.loop !52

42:                                               ; preds = %34
  %43 = load ptr, ptr %30, align 8, !tbaa !31
  %44 = add nsw i32 %3, -1
  call void %43(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %44, ptr noundef nonnull %32, ptr noundef nonnull %6) #7
  %45 = load ptr, ptr %30, align 8, !tbaa !31
  call void %45(ptr noundef nonnull %0, i32 noundef %31, i32 noundef %44, ptr noundef nonnull %32, ptr noundef nonnull %7) #7
  %46 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %47, i64 0, i32 30
  %49 = load i32, ptr %48, align 4, !tbaa !35
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %95, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  br label %53

53:                                               ; preds = %51, %67
  %54 = phi i64 [ 0, %51 ], [ %70, %67 ]
  %55 = phi i32 [ 1, %51 ], [ %69, %67 ]
  %56 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %54
  %57 = load i32, ptr %56, align 16, !tbaa !37
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %52, align 8, !tbaa !39
  %61 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %54, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !40
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %60, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !21
  %66 = sext i8 %65 to i32
  br label %67

67:                                               ; preds = %53, %59
  %68 = phi i32 [ %66, %59 ], [ 0, %53 ]
  %69 = and i32 %68, %55
  %70 = add nuw nsw i64 %54, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %53, !llvm.loop !53

72:                                               ; preds = %67
  %73 = load i32, ptr %6, align 4, !tbaa !37
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %52, align 8, !tbaa !39
  %77 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !40
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %76, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !21
  %82 = sext i8 %81 to i32
  br label %83

83:                                               ; preds = %72, %75
  %84 = phi i32 [ %82, %75 ], [ 0, %72 ]
  %85 = load i32, ptr %7, align 4, !tbaa !37
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %52, align 8, !tbaa !39
  %89 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !40
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %88, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !21
  %94 = sext i8 %93 to i32
  br label %99

95:                                               ; preds = %42
  %96 = load i32, ptr %5, align 16, !tbaa !37
  %97 = load i32, ptr %6, align 4, !tbaa !37
  %98 = load i32, ptr %7, align 4, !tbaa !37
  br label %99

99:                                               ; preds = %87, %95
  %100 = phi i32 [ %98, %95 ], [ %94, %87 ]
  %101 = phi i32 [ %96, %95 ], [ %69, %87 ]
  %102 = phi i32 [ %97, %95 ], [ %84, %87 ]
  %103 = icmp ne i32 %102, 0
  %104 = icmp ne i32 %101, 0
  %105 = select i1 %103, i1 %104, i1 false
  %106 = icmp ne i32 %100, 0
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %112, label %108

108:                                              ; preds = %83, %99
  %109 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %110 = load i32, ptr %109, align 4, !tbaa !47
  %111 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %110) #5
  br label %252

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %114 = load i16, ptr %113, align 2, !tbaa !42
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %24, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !20
  %118 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %119 = load i16, ptr %118, align 4, !tbaa !43
  %120 = sext i16 %119 to i64
  %121 = getelementptr inbounds i16, ptr %117, i64 %120
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = load i16, ptr %121, align 2, !tbaa !44
  %124 = getelementptr inbounds i16, ptr %121, i64 2
  %125 = load i16, ptr %122, align 2, !tbaa !44
  %126 = getelementptr inbounds i16, ptr %121, i64 3
  %127 = load i16, ptr %124, align 2, !tbaa !44
  %128 = load i16, ptr %126, align 2, !tbaa !44
  %129 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %130 = load i16, ptr %129, align 2, !tbaa !42
  %131 = sext i16 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %24, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !20
  %134 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %135 = load i16, ptr %134, align 4, !tbaa !43
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds i16, ptr %133, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !44
  %139 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 5
  %140 = load i16, ptr %139, align 2, !tbaa !42
  %141 = sext i16 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %24, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !20
  %144 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 4
  %145 = load i16, ptr %144, align 4, !tbaa !43
  %146 = sext i16 %145 to i64
  %147 = getelementptr inbounds i16, ptr %143, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !44
  %149 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 5
  %150 = load i16, ptr %149, align 2, !tbaa !42
  %151 = sext i16 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %24, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !20
  %154 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 4
  %155 = load i16, ptr %154, align 4, !tbaa !43
  %156 = sext i16 %155 to i64
  %157 = getelementptr inbounds i16, ptr %153, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !44
  %159 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 3, i32 5
  %160 = load i16, ptr %159, align 2, !tbaa !42
  %161 = sext i16 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %24, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !20
  %164 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 3, i32 4
  %165 = load i16, ptr %164, align 4, !tbaa !43
  %166 = sext i16 %165 to i64
  %167 = getelementptr inbounds i16, ptr %163, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !44
  %169 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %170 = load i16, ptr %169, align 2, !tbaa !42
  %171 = sext i16 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %24, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !20
  %174 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %175 = load i16, ptr %174, align 4, !tbaa !43
  %176 = sext i16 %175 to i64
  %177 = getelementptr inbounds i16, ptr %173, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !44
  %179 = zext i16 %168 to i32
  %180 = zext i16 %158 to i32
  %181 = shl nuw nsw i32 %180, 1
  %182 = zext i16 %148 to i32
  %183 = add nuw nsw i32 %182, 2
  %184 = add nuw nsw i32 %183, %181
  %185 = add nuw nsw i32 %184, %179
  %186 = lshr i32 %185, 2
  %187 = trunc i32 %186 to i16
  %188 = shl nuw nsw i32 %182, 1
  %189 = zext i16 %138 to i32
  %190 = add nuw nsw i32 %189, 2
  %191 = add nuw nsw i32 %190, %188
  %192 = add nuw nsw i32 %191, %180
  %193 = lshr i32 %192, 2
  %194 = trunc i32 %193 to i16
  %195 = shl nuw nsw i32 %189, 1
  %196 = zext i16 %178 to i32
  %197 = add nuw nsw i32 %183, %195
  %198 = add nuw nsw i32 %197, %196
  %199 = lshr i32 %198, 2
  %200 = trunc i32 %199 to i16
  %201 = shl nuw nsw i32 %196, 1
  %202 = zext i16 %123 to i32
  %203 = add nuw nsw i32 %202, 2
  %204 = add nuw nsw i32 %203, %189
  %205 = add nuw nsw i32 %204, %201
  %206 = lshr i32 %205, 2
  %207 = trunc i32 %206 to i16
  %208 = shl nuw nsw i32 %202, 1
  %209 = zext i16 %125 to i32
  %210 = add nuw nsw i32 %209, 2
  %211 = add nuw nsw i32 %210, %208
  %212 = add nuw nsw i32 %211, %196
  %213 = lshr i32 %212, 2
  %214 = trunc i32 %213 to i16
  %215 = shl nuw nsw i32 %209, 1
  %216 = zext i16 %127 to i32
  %217 = add nuw nsw i32 %203, %215
  %218 = add nuw nsw i32 %217, %216
  %219 = lshr i32 %218, 2
  %220 = trunc i32 %219 to i16
  %221 = shl nuw nsw i32 %216, 1
  %222 = zext i16 %128 to i32
  %223 = add nuw nsw i32 %210, %221
  %224 = add nuw nsw i32 %223, %222
  %225 = lshr i32 %224, 2
  %226 = trunc i32 %225 to i16
  %227 = getelementptr inbounds ptr, ptr %29, i64 %33
  %228 = load ptr, ptr %227, align 8, !tbaa !20
  %229 = sext i32 %2 to i64
  %230 = getelementptr inbounds i16, ptr %228, i64 %229
  store i16 %207, ptr %230, align 2
  %231 = getelementptr inbounds i8, ptr %230, i64 2
  store i16 %214, ptr %231, align 2
  %232 = getelementptr inbounds i8, ptr %230, i64 4
  store i16 %220, ptr %232, align 2
  %233 = getelementptr inbounds i8, ptr %230, i64 6
  store i16 %226, ptr %233, align 2
  %234 = getelementptr ptr, ptr %227, i64 1
  %235 = load ptr, ptr %234, align 8, !tbaa !20
  %236 = getelementptr inbounds i16, ptr %235, i64 %229
  store i16 %200, ptr %236, align 2
  %237 = getelementptr inbounds i8, ptr %236, i64 2
  store i16 %207, ptr %237, align 2
  %238 = getelementptr inbounds i8, ptr %236, i64 4
  store i16 %214, ptr %238, align 2
  %239 = getelementptr inbounds i8, ptr %236, i64 6
  store i16 %220, ptr %239, align 2
  %240 = getelementptr ptr, ptr %227, i64 2
  %241 = load ptr, ptr %240, align 8, !tbaa !20
  %242 = getelementptr inbounds i16, ptr %241, i64 %229
  store i16 %194, ptr %242, align 2
  %243 = getelementptr inbounds i8, ptr %242, i64 2
  store i16 %200, ptr %243, align 2
  %244 = getelementptr inbounds i8, ptr %242, i64 4
  store i16 %207, ptr %244, align 2
  %245 = getelementptr inbounds i8, ptr %242, i64 6
  store i16 %214, ptr %245, align 2
  %246 = getelementptr ptr, ptr %227, i64 3
  %247 = load ptr, ptr %246, align 8, !tbaa !20
  %248 = getelementptr inbounds i16, ptr %247, i64 %229
  store i16 %187, ptr %248, align 2
  %249 = getelementptr inbounds i8, ptr %248, i64 2
  store i16 %194, ptr %249, align 2
  %250 = getelementptr inbounds i8, ptr %248, i64 4
  store i16 %200, ptr %250, align 2
  %251 = getelementptr inbounds i8, ptr %248, i64 6
  store i16 %207, ptr %251, align 2
  br label %252

252:                                              ; preds = %112, %108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_diag_down_left_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %10 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 160
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = add nsw i32 %3, -1
  %13 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 81
  call void %11(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %5) #7
  %14 = load ptr, ptr %10, align 8, !tbaa !31
  %15 = add nsw i32 %2, 4
  call void %14(ptr noundef nonnull %0, i32 noundef %15, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %6) #7
  %16 = load i32, ptr %6, align 4, !tbaa !37
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = icmp ne i32 %2, 4
  %20 = and i32 %3, -9
  %21 = icmp ne i32 %20, 4
  %22 = or i1 %19, %21
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i32 [ 0, %4 ], [ %23, %18 ]
  store i32 %25, ptr %6, align 4, !tbaa !37
  %26 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %27, i64 0, i32 30
  %29 = load i32, ptr %28, align 4, !tbaa !35
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr %5, align 4, !tbaa !37
  br i1 %30, label %55, label %32

32:                                               ; preds = %24
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !40
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !21
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %32, %34
  %44 = phi i32 [ %42, %34 ], [ 0, %32 ]
  %45 = icmp eq i32 %25, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %48 = load ptr, ptr %47, align 8, !tbaa !39
  %49 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !40
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !21
  %54 = sext i8 %53 to i32
  br label %55

55:                                               ; preds = %24, %46, %43
  %56 = phi i32 [ %54, %46 ], [ 0, %43 ], [ %25, %24 ]
  %57 = phi i32 [ %44, %46 ], [ %44, %43 ], [ %31, %24 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 20
  %61 = load i32, ptr %60, align 4, !tbaa !47
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %61) #5
  br label %194

63:                                               ; preds = %55
  %64 = icmp eq i32 %1, 0
  %65 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %66 = load ptr, ptr %65, align 8, !tbaa !24
  br i1 %64, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 33
  %69 = load ptr, ptr %68, align 8, !tbaa !27
  %70 = add i32 %1, -1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71
  br label %75

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 32
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi ptr [ %72, %67 ], [ %74, %73 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !20
  %78 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 77
  %79 = load ptr, ptr %78, align 8, !tbaa !30
  %80 = zext i32 %1 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !20
  %83 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %84 = load i16, ptr %83, align 2, !tbaa !42
  %85 = sext i16 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %77, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !20
  %88 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %89 = load i16, ptr %88, align 4, !tbaa !43
  %90 = sext i16 %89 to i64
  %91 = getelementptr inbounds i16, ptr %87, i64 %90
  %92 = getelementptr inbounds i16, ptr %91, i64 1
  %93 = load i16, ptr %91, align 2, !tbaa !44
  %94 = getelementptr inbounds i16, ptr %91, i64 2
  %95 = load i16, ptr %92, align 2, !tbaa !44
  %96 = getelementptr inbounds i16, ptr %91, i64 3
  %97 = load i16, ptr %94, align 2, !tbaa !44
  %98 = load i16, ptr %96, align 2, !tbaa !44
  %99 = icmp eq i32 %56, 0
  br i1 %99, label %117, label %100

100:                                              ; preds = %75
  %101 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %102 = load i16, ptr %101, align 2, !tbaa !42
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %77, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !20
  %106 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %107 = load i16, ptr %106, align 4, !tbaa !43
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds i16, ptr %105, i64 %108
  %110 = getelementptr inbounds i16, ptr %109, i64 1
  %111 = load i16, ptr %109, align 2, !tbaa !44
  %112 = getelementptr inbounds i16, ptr %109, i64 2
  %113 = load i16, ptr %110, align 2, !tbaa !44
  %114 = getelementptr inbounds i16, ptr %109, i64 3
  %115 = load i16, ptr %112, align 2, !tbaa !44
  %116 = load i16, ptr %114, align 2, !tbaa !44
  br label %117

117:                                              ; preds = %75, %100
  %118 = phi i16 [ %116, %100 ], [ %98, %75 ]
  %119 = phi i16 [ %115, %100 ], [ %98, %75 ]
  %120 = phi i16 [ %113, %100 ], [ %98, %75 ]
  %121 = phi i16 [ %111, %100 ], [ %98, %75 ]
  %122 = zext i16 %93 to i32
  %123 = zext i16 %97 to i32
  %124 = zext i16 %95 to i32
  %125 = shl nuw nsw i32 %124, 1
  %126 = add nuw nsw i32 %123, 2
  %127 = add nuw nsw i32 %126, %122
  %128 = add nuw nsw i32 %127, %125
  %129 = lshr i32 %128, 2
  %130 = trunc i32 %129 to i16
  %131 = zext i16 %98 to i32
  %132 = shl nuw nsw i32 %123, 1
  %133 = add nuw nsw i32 %131, 2
  %134 = add nuw nsw i32 %133, %124
  %135 = add nuw nsw i32 %134, %132
  %136 = lshr i32 %135, 2
  %137 = trunc i32 %136 to i16
  %138 = zext i16 %121 to i32
  %139 = shl nuw nsw i32 %131, 1
  %140 = add nuw nsw i32 %126, %139
  %141 = add nuw nsw i32 %140, %138
  %142 = lshr i32 %141, 2
  %143 = trunc i32 %142 to i16
  %144 = zext i16 %120 to i32
  %145 = shl nuw nsw i32 %138, 1
  %146 = add nuw nsw i32 %133, %144
  %147 = add nuw nsw i32 %146, %145
  %148 = lshr i32 %147, 2
  %149 = trunc i32 %148 to i16
  %150 = zext i16 %119 to i32
  %151 = shl nuw nsw i32 %144, 1
  %152 = add nuw nsw i32 %150, 2
  %153 = add nuw nsw i32 %152, %138
  %154 = add nuw nsw i32 %153, %151
  %155 = lshr i32 %154, 2
  %156 = trunc i32 %155 to i16
  %157 = zext i16 %118 to i32
  %158 = shl nuw nsw i32 %150, 1
  %159 = add nuw nsw i32 %144, 2
  %160 = add nuw nsw i32 %159, %157
  %161 = add nuw nsw i32 %160, %158
  %162 = lshr i32 %161, 2
  %163 = trunc i32 %162 to i16
  %164 = mul nuw nsw i32 %157, 3
  %165 = add nuw nsw i32 %152, %164
  %166 = lshr i32 %165, 2
  %167 = trunc i32 %166 to i16
  %168 = sext i32 %3 to i64
  %169 = getelementptr inbounds ptr, ptr %82, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !20
  %171 = sext i32 %2 to i64
  %172 = getelementptr inbounds i16, ptr %170, i64 %171
  store i16 %130, ptr %172, align 2
  %173 = getelementptr inbounds i8, ptr %172, i64 2
  store i16 %137, ptr %173, align 2
  %174 = getelementptr inbounds i8, ptr %172, i64 4
  store i16 %143, ptr %174, align 2
  %175 = getelementptr inbounds i8, ptr %172, i64 6
  store i16 %149, ptr %175, align 2
  %176 = getelementptr ptr, ptr %169, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !20
  %178 = getelementptr inbounds i16, ptr %177, i64 %171
  store i16 %137, ptr %178, align 2
  %179 = getelementptr inbounds i8, ptr %178, i64 2
  store i16 %143, ptr %179, align 2
  %180 = getelementptr inbounds i8, ptr %178, i64 4
  store i16 %149, ptr %180, align 2
  %181 = getelementptr inbounds i8, ptr %178, i64 6
  store i16 %156, ptr %181, align 2
  %182 = getelementptr ptr, ptr %169, i64 2
  %183 = load ptr, ptr %182, align 8, !tbaa !20
  %184 = getelementptr inbounds i16, ptr %183, i64 %171
  store i16 %143, ptr %184, align 2
  %185 = getelementptr inbounds i8, ptr %184, i64 2
  store i16 %149, ptr %185, align 2
  %186 = getelementptr inbounds i8, ptr %184, i64 4
  store i16 %156, ptr %186, align 2
  %187 = getelementptr inbounds i8, ptr %184, i64 6
  store i16 %163, ptr %187, align 2
  %188 = getelementptr ptr, ptr %169, i64 3
  %189 = load ptr, ptr %188, align 8, !tbaa !20
  %190 = getelementptr inbounds i16, ptr %189, i64 %171
  store i16 %149, ptr %190, align 2
  %191 = getelementptr inbounds i8, ptr %190, i64 2
  store i16 %156, ptr %191, align 2
  %192 = getelementptr inbounds i8, ptr %190, i64 4
  store i16 %163, ptr %192, align 2
  %193 = getelementptr inbounds i8, ptr %190, i64 6
  store i16 %167, ptr %193, align 2
  br label %194

194:                                              ; preds = %117, %59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_vert_right_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x %struct.pix_pos], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq i32 %1, 0
  %12 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  br i1 %11, label %20, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 33
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = add i32 %1, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  br label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 32
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %19, %14 ], [ %21, %20 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %25 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  %27 = zext i32 %1 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 160
  %31 = add nsw i32 %2, -1
  %32 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81
  br label %33

33:                                               ; preds = %22, %33
  %34 = phi i64 [ 0, %22 ], [ %39, %33 ]
  %35 = load ptr, ptr %30, align 8, !tbaa !31
  %36 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %34
  %37 = trunc i64 %34 to i32
  %38 = add i32 %37, %3
  call void %35(ptr noundef nonnull %0, i32 noundef %31, i32 noundef %38, ptr noundef nonnull %32, ptr noundef nonnull %36) #7
  %39 = add nuw nsw i64 %34, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %33, !llvm.loop !54

41:                                               ; preds = %33
  %42 = load ptr, ptr %30, align 8, !tbaa !31
  %43 = add nsw i32 %3, -1
  call void %42(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %6) #7
  %44 = load ptr, ptr %30, align 8, !tbaa !31
  call void %44(ptr noundef nonnull %0, i32 noundef %31, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %7) #7
  %45 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %46, i64 0, i32 30
  %48 = load i32, ptr %47, align 4, !tbaa !35
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %94, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  br label %52

52:                                               ; preds = %50, %66
  %53 = phi i64 [ 0, %50 ], [ %69, %66 ]
  %54 = phi i32 [ 1, %50 ], [ %68, %66 ]
  %55 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %53
  %56 = load i32, ptr %55, align 16, !tbaa !37
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %51, align 8, !tbaa !39
  %60 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %53, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !40
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %59, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !21
  %65 = sext i8 %64 to i32
  br label %66

66:                                               ; preds = %52, %58
  %67 = phi i32 [ %65, %58 ], [ 0, %52 ]
  %68 = and i32 %67, %54
  %69 = add nuw nsw i64 %53, 1
  %70 = icmp eq i64 %69, 4
  br i1 %70, label %71, label %52, !llvm.loop !55

71:                                               ; preds = %66
  %72 = load i32, ptr %6, align 4, !tbaa !37
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %51, align 8, !tbaa !39
  %76 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !40
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %75, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !21
  %81 = sext i8 %80 to i32
  br label %82

82:                                               ; preds = %71, %74
  %83 = phi i32 [ %81, %74 ], [ 0, %71 ]
  %84 = load i32, ptr %7, align 4, !tbaa !37
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %107, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %51, align 8, !tbaa !39
  %88 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !40
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %87, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !21
  %93 = sext i8 %92 to i32
  br label %98

94:                                               ; preds = %41
  %95 = load i32, ptr %5, align 16, !tbaa !37
  %96 = load i32, ptr %6, align 4, !tbaa !37
  %97 = load i32, ptr %7, align 4, !tbaa !37
  br label %98

98:                                               ; preds = %86, %94
  %99 = phi i32 [ %97, %94 ], [ %93, %86 ]
  %100 = phi i32 [ %95, %94 ], [ %68, %86 ]
  %101 = phi i32 [ %96, %94 ], [ %83, %86 ]
  %102 = icmp ne i32 %101, 0
  %103 = icmp ne i32 %100, 0
  %104 = select i1 %102, i1 %103, i1 false
  %105 = icmp ne i32 %99, 0
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %111, label %107

107:                                              ; preds = %82, %98
  %108 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %109 = load i32, ptr %108, align 4, !tbaa !47
  %110 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %109) #5
  br label %111

111:                                              ; preds = %98, %107
  %112 = sext i32 %3 to i64
  %113 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %114 = load i16, ptr %113, align 2, !tbaa !42
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %24, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !20
  %118 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %119 = load i16, ptr %118, align 4, !tbaa !43
  %120 = sext i16 %119 to i64
  %121 = getelementptr inbounds i16, ptr %117, i64 %120
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = load i16, ptr %121, align 2, !tbaa !44
  %124 = getelementptr inbounds i16, ptr %121, i64 2
  %125 = load i16, ptr %122, align 2, !tbaa !44
  %126 = getelementptr inbounds i16, ptr %121, i64 3
  %127 = load i16, ptr %124, align 2, !tbaa !44
  %128 = load i16, ptr %126, align 2, !tbaa !44
  %129 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %130 = load i16, ptr %129, align 2, !tbaa !42
  %131 = sext i16 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %24, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !20
  %134 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %135 = load i16, ptr %134, align 4, !tbaa !43
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds i16, ptr %133, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !44
  %139 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 5
  %140 = load i16, ptr %139, align 2, !tbaa !42
  %141 = sext i16 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %24, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !20
  %144 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 4
  %145 = load i16, ptr %144, align 4, !tbaa !43
  %146 = sext i16 %145 to i64
  %147 = getelementptr inbounds i16, ptr %143, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !44
  %149 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 5
  %150 = load i16, ptr %149, align 2, !tbaa !42
  %151 = sext i16 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %24, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !20
  %154 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 4
  %155 = load i16, ptr %154, align 4, !tbaa !43
  %156 = sext i16 %155 to i64
  %157 = getelementptr inbounds i16, ptr %153, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !44
  %159 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %160 = load i16, ptr %159, align 2, !tbaa !42
  %161 = sext i16 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %24, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !20
  %164 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %165 = load i16, ptr %164, align 4, !tbaa !43
  %166 = sext i16 %165 to i64
  %167 = getelementptr inbounds i16, ptr %163, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !44
  %169 = zext i16 %168 to i32
  %170 = zext i16 %138 to i32
  %171 = shl nuw nsw i32 %170, 1
  %172 = zext i16 %148 to i32
  %173 = add nuw nsw i32 %169, 2
  %174 = add nuw nsw i32 %173, %171
  %175 = add nuw nsw i32 %174, %172
  %176 = lshr i32 %175, 2
  %177 = trunc i32 %176 to i16
  %178 = zext i16 %123 to i32
  %179 = add nuw nsw i32 %178, 1
  %180 = add nuw nsw i32 %179, %169
  %181 = lshr i32 %180, 1
  %182 = trunc i32 %181 to i16
  %183 = zext i16 %125 to i32
  %184 = add nuw nsw i32 %179, %183
  %185 = lshr i32 %184, 1
  %186 = trunc i32 %185 to i16
  %187 = zext i16 %127 to i32
  %188 = add nuw nsw i32 %183, 1
  %189 = add nuw nsw i32 %188, %187
  %190 = lshr i32 %189, 1
  %191 = trunc i32 %190 to i16
  %192 = zext i16 %128 to i32
  %193 = add nuw nsw i32 %187, 1
  %194 = add nuw nsw i32 %193, %192
  %195 = lshr i32 %194, 1
  %196 = trunc i32 %195 to i16
  %197 = shl nuw nsw i32 %172, 1
  %198 = zext i16 %158 to i32
  %199 = add nuw nsw i32 %170, 2
  %200 = add nuw nsw i32 %199, %197
  %201 = add nuw nsw i32 %200, %198
  %202 = lshr i32 %201, 2
  %203 = trunc i32 %202 to i16
  %204 = shl nuw nsw i32 %169, 1
  %205 = add nuw nsw i32 %178, 2
  %206 = add nuw nsw i32 %205, %170
  %207 = add nuw nsw i32 %206, %204
  %208 = lshr i32 %207, 2
  %209 = trunc i32 %208 to i16
  %210 = shl nuw nsw i32 %178, 1
  %211 = add nuw nsw i32 %183, 2
  %212 = add nuw nsw i32 %211, %210
  %213 = add nuw nsw i32 %212, %169
  %214 = lshr i32 %213, 2
  %215 = trunc i32 %214 to i16
  %216 = shl nuw nsw i32 %183, 1
  %217 = add nuw nsw i32 %205, %216
  %218 = add nuw nsw i32 %217, %187
  %219 = lshr i32 %218, 2
  %220 = trunc i32 %219 to i16
  %221 = shl nuw nsw i32 %187, 1
  %222 = add nuw nsw i32 %211, %221
  %223 = add nuw nsw i32 %222, %192
  %224 = lshr i32 %223, 2
  %225 = trunc i32 %224 to i16
  %226 = getelementptr inbounds ptr, ptr %29, i64 %112
  %227 = load ptr, ptr %226, align 8, !tbaa !20
  %228 = sext i32 %2 to i64
  %229 = getelementptr inbounds i16, ptr %227, i64 %228
  store i16 %182, ptr %229, align 2
  %230 = getelementptr inbounds i8, ptr %229, i64 2
  store i16 %186, ptr %230, align 2
  %231 = getelementptr inbounds i8, ptr %229, i64 4
  store i16 %191, ptr %231, align 2
  %232 = getelementptr inbounds i8, ptr %229, i64 6
  store i16 %196, ptr %232, align 2
  %233 = getelementptr ptr, ptr %226, i64 1
  %234 = load ptr, ptr %233, align 8, !tbaa !20
  %235 = getelementptr inbounds i16, ptr %234, i64 %228
  store i16 %209, ptr %235, align 2
  %236 = getelementptr inbounds i8, ptr %235, i64 2
  store i16 %215, ptr %236, align 2
  %237 = getelementptr inbounds i8, ptr %235, i64 4
  store i16 %220, ptr %237, align 2
  %238 = getelementptr inbounds i8, ptr %235, i64 6
  store i16 %225, ptr %238, align 2
  %239 = getelementptr ptr, ptr %226, i64 2
  %240 = load ptr, ptr %239, align 8, !tbaa !20
  %241 = getelementptr inbounds i16, ptr %240, i64 %228
  store i16 %177, ptr %241, align 2
  %242 = getelementptr inbounds i8, ptr %241, i64 2
  store i16 %182, ptr %242, align 2
  %243 = getelementptr inbounds i8, ptr %241, i64 4
  store i16 %186, ptr %243, align 2
  %244 = getelementptr inbounds i8, ptr %241, i64 6
  store i16 %191, ptr %244, align 2
  %245 = getelementptr ptr, ptr %226, i64 3
  %246 = load ptr, ptr %245, align 8, !tbaa !20
  %247 = getelementptr inbounds i16, ptr %246, i64 %228
  store i16 %203, ptr %247, align 2
  %248 = getelementptr inbounds i8, ptr %247, i64 2
  store i16 %209, ptr %248, align 2
  %249 = getelementptr inbounds i8, ptr %247, i64 4
  store i16 %215, ptr %249, align 2
  %250 = getelementptr inbounds i8, ptr %247, i64 6
  store i16 %220, ptr %250, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_vert_left_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %10 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 160
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = add nsw i32 %3, -1
  %13 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 81
  call void %11(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %5) #7
  %14 = load ptr, ptr %10, align 8, !tbaa !31
  %15 = add nsw i32 %2, 4
  call void %14(ptr noundef nonnull %0, i32 noundef %15, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %6) #7
  %16 = load i32, ptr %6, align 4, !tbaa !37
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = icmp ne i32 %2, 4
  %20 = and i32 %3, -9
  %21 = icmp ne i32 %20, 4
  %22 = or i1 %19, %21
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i32 [ 0, %4 ], [ %23, %18 ]
  store i32 %25, ptr %6, align 4, !tbaa !37
  %26 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %27, i64 0, i32 30
  %29 = load i32, ptr %28, align 4, !tbaa !35
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr %5, align 4, !tbaa !37
  br i1 %30, label %55, label %32

32:                                               ; preds = %24
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !40
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !21
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %32, %34
  %44 = phi i32 [ %42, %34 ], [ 0, %32 ]
  %45 = icmp eq i32 %25, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %48 = load ptr, ptr %47, align 8, !tbaa !39
  %49 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !40
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !21
  %54 = sext i8 %53 to i32
  br label %55

55:                                               ; preds = %24, %46, %43
  %56 = phi i32 [ %54, %46 ], [ 0, %43 ], [ %25, %24 ]
  %57 = phi i32 [ %44, %46 ], [ %44, %43 ], [ %31, %24 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 20
  %61 = load i32, ptr %60, align 4, !tbaa !47
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %61) #5
  br label %63

63:                                               ; preds = %59, %55
  %64 = icmp eq i32 %1, 0
  %65 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %66 = load ptr, ptr %65, align 8, !tbaa !24
  br i1 %64, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 33
  %69 = load ptr, ptr %68, align 8, !tbaa !27
  %70 = add i32 %1, -1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71
  br label %75

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 32
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi ptr [ %72, %67 ], [ %74, %73 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !20
  %78 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 77
  %79 = load ptr, ptr %78, align 8, !tbaa !30
  %80 = zext i32 %1 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !20
  %83 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %84 = load i16, ptr %83, align 2, !tbaa !42
  %85 = sext i16 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %77, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !20
  %88 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %89 = load i16, ptr %88, align 4, !tbaa !43
  %90 = sext i16 %89 to i64
  %91 = getelementptr inbounds i16, ptr %87, i64 %90
  %92 = getelementptr inbounds i16, ptr %91, i64 1
  %93 = load i16, ptr %91, align 2, !tbaa !44
  %94 = getelementptr inbounds i16, ptr %91, i64 2
  %95 = load i16, ptr %92, align 2, !tbaa !44
  %96 = getelementptr inbounds i16, ptr %91, i64 3
  %97 = load i16, ptr %94, align 2, !tbaa !44
  %98 = load i16, ptr %96, align 2, !tbaa !44
  %99 = icmp eq i32 %56, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %75
  %101 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %102 = load i16, ptr %101, align 2, !tbaa !42
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %77, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !20
  %106 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %107 = load i16, ptr %106, align 4, !tbaa !43
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds i16, ptr %105, i64 %108
  %110 = getelementptr inbounds i16, ptr %109, i64 1
  %111 = load i16, ptr %109, align 2, !tbaa !44
  %112 = getelementptr inbounds i16, ptr %109, i64 2
  %113 = load i16, ptr %110, align 2, !tbaa !44
  %114 = load i16, ptr %112, align 2, !tbaa !44
  br label %115

115:                                              ; preds = %75, %100
  %116 = phi i16 [ %111, %100 ], [ %98, %75 ]
  %117 = phi i16 [ %113, %100 ], [ %98, %75 ]
  %118 = phi i16 [ %114, %100 ], [ %98, %75 ]
  %119 = zext i16 %93 to i32
  %120 = zext i16 %95 to i32
  %121 = add nuw nsw i32 %120, 1
  %122 = add nuw nsw i32 %121, %119
  %123 = lshr i32 %122, 1
  %124 = trunc i32 %123 to i16
  %125 = zext i16 %97 to i32
  %126 = add nuw nsw i32 %121, %125
  %127 = lshr i32 %126, 1
  %128 = trunc i32 %127 to i16
  %129 = zext i16 %98 to i32
  %130 = add nuw nsw i32 %125, 1
  %131 = add nuw nsw i32 %130, %129
  %132 = lshr i32 %131, 1
  %133 = trunc i32 %132 to i16
  %134 = zext i16 %116 to i32
  %135 = add nuw nsw i32 %129, 1
  %136 = add nuw nsw i32 %135, %134
  %137 = lshr i32 %136, 1
  %138 = trunc i32 %137 to i16
  %139 = zext i16 %117 to i32
  %140 = add nuw nsw i32 %134, 1
  %141 = add nuw nsw i32 %140, %139
  %142 = lshr i32 %141, 1
  %143 = trunc i32 %142 to i16
  %144 = shl nuw nsw i32 %120, 1
  %145 = add nuw nsw i32 %125, 2
  %146 = add nuw nsw i32 %145, %119
  %147 = add nuw nsw i32 %146, %144
  %148 = lshr i32 %147, 2
  %149 = trunc i32 %148 to i16
  %150 = shl nuw nsw i32 %125, 1
  %151 = add nuw nsw i32 %129, 2
  %152 = add nuw nsw i32 %151, %120
  %153 = add nuw nsw i32 %152, %150
  %154 = lshr i32 %153, 2
  %155 = trunc i32 %154 to i16
  %156 = shl nuw nsw i32 %129, 1
  %157 = add nuw nsw i32 %145, %156
  %158 = add nuw nsw i32 %157, %134
  %159 = lshr i32 %158, 2
  %160 = trunc i32 %159 to i16
  %161 = shl nuw nsw i32 %134, 1
  %162 = add nuw nsw i32 %151, %161
  %163 = add nuw nsw i32 %162, %139
  %164 = lshr i32 %163, 2
  %165 = trunc i32 %164 to i16
  %166 = shl nuw nsw i32 %139, 1
  %167 = zext i16 %118 to i32
  %168 = add nuw nsw i32 %134, 2
  %169 = add nuw nsw i32 %168, %166
  %170 = add nuw nsw i32 %169, %167
  %171 = lshr i32 %170, 2
  %172 = trunc i32 %171 to i16
  %173 = sext i32 %3 to i64
  %174 = getelementptr inbounds ptr, ptr %82, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !20
  %176 = sext i32 %2 to i64
  %177 = getelementptr inbounds i16, ptr %175, i64 %176
  store i16 %124, ptr %177, align 2
  %178 = getelementptr inbounds i8, ptr %177, i64 2
  store i16 %128, ptr %178, align 2
  %179 = getelementptr inbounds i8, ptr %177, i64 4
  store i16 %133, ptr %179, align 2
  %180 = getelementptr inbounds i8, ptr %177, i64 6
  store i16 %138, ptr %180, align 2
  %181 = getelementptr ptr, ptr %174, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !20
  %183 = getelementptr inbounds i16, ptr %182, i64 %176
  store i16 %149, ptr %183, align 2
  %184 = getelementptr inbounds i8, ptr %183, i64 2
  store i16 %155, ptr %184, align 2
  %185 = getelementptr inbounds i8, ptr %183, i64 4
  store i16 %160, ptr %185, align 2
  %186 = getelementptr inbounds i8, ptr %183, i64 6
  store i16 %165, ptr %186, align 2
  %187 = getelementptr ptr, ptr %174, i64 2
  %188 = load ptr, ptr %187, align 8, !tbaa !20
  %189 = getelementptr inbounds i16, ptr %188, i64 %176
  store i16 %128, ptr %189, align 2
  %190 = getelementptr inbounds i8, ptr %189, i64 2
  store i16 %133, ptr %190, align 2
  %191 = getelementptr inbounds i8, ptr %189, i64 4
  store i16 %138, ptr %191, align 2
  %192 = getelementptr inbounds i8, ptr %189, i64 6
  store i16 %143, ptr %192, align 2
  %193 = getelementptr ptr, ptr %174, i64 3
  %194 = load ptr, ptr %193, align 8, !tbaa !20
  %195 = getelementptr inbounds i16, ptr %194, i64 %176
  store i16 %155, ptr %195, align 2
  %196 = getelementptr inbounds i8, ptr %195, i64 2
  store i16 %160, ptr %196, align 2
  %197 = getelementptr inbounds i8, ptr %195, i64 4
  store i16 %165, ptr %197, align 2
  %198 = getelementptr inbounds i8, ptr %195, i64 6
  store i16 %172, ptr %198, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_hor_up_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x %struct.pix_pos], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  br i1 %9, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.storable_picture, ptr %11, i64 0, i32 33
  %14 = load ptr, ptr %13, align 8, !tbaa !27
  %15 = add i32 %1, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  br label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.storable_picture, ptr %11, i64 0, i32 32
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %23 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 77
  %24 = load ptr, ptr %23, align 8, !tbaa !30
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 160
  %29 = add nsw i32 %2, -1
  %30 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  %31 = sext i32 %3 to i64
  br label %32

32:                                               ; preds = %20, %32
  %33 = phi i64 [ 0, %20 ], [ %38, %32 ]
  %34 = load ptr, ptr %28, align 8, !tbaa !31
  %35 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %33
  %36 = trunc i64 %33 to i32
  %37 = add i32 %36, %3
  call void %34(ptr noundef nonnull %0, i32 noundef %29, i32 noundef %37, ptr noundef nonnull %30, ptr noundef nonnull %35) #7
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %32, !llvm.loop !56

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %42, i64 0, i32 30
  %44 = load i32, ptr %43, align 4, !tbaa !35
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 128
  br label %48

48:                                               ; preds = %46, %62
  %49 = phi i64 [ 0, %46 ], [ %65, %62 ]
  %50 = phi i32 [ 1, %46 ], [ %64, %62 ]
  %51 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %49
  %52 = load i32, ptr %51, align 16, !tbaa !37
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %47, align 8, !tbaa !39
  %56 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %49, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !40
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !21
  %61 = sext i8 %60 to i32
  br label %62

62:                                               ; preds = %48, %54
  %63 = phi i32 [ %61, %54 ], [ 0, %48 ]
  %64 = and i32 %63, %50
  %65 = add nuw nsw i64 %49, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %69, label %48, !llvm.loop !57

67:                                               ; preds = %40
  %68 = load i32, ptr %5, align 16, !tbaa !37
  br label %69

69:                                               ; preds = %62, %67
  %70 = phi i32 [ %68, %67 ], [ %64, %62 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 20
  %74 = load i32, ptr %73, align 4, !tbaa !47
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %74) #5
  br label %173

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %78 = load i16, ptr %77, align 2, !tbaa !42
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %22, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !20
  %82 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %83 = load i16, ptr %82, align 4, !tbaa !43
  %84 = sext i16 %83 to i64
  %85 = getelementptr inbounds i16, ptr %81, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !44
  %87 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 5
  %88 = load i16, ptr %87, align 2, !tbaa !42
  %89 = sext i16 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %22, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !20
  %92 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 4
  %93 = load i16, ptr %92, align 4, !tbaa !43
  %94 = sext i16 %93 to i64
  %95 = getelementptr inbounds i16, ptr %91, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !44
  %97 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 5
  %98 = load i16, ptr %97, align 2, !tbaa !42
  %99 = sext i16 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %22, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !20
  %102 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 4
  %103 = load i16, ptr %102, align 4, !tbaa !43
  %104 = sext i16 %103 to i64
  %105 = getelementptr inbounds i16, ptr %101, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !44
  %107 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 3, i32 5
  %108 = load i16, ptr %107, align 2, !tbaa !42
  %109 = sext i16 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %22, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !20
  %112 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 3, i32 4
  %113 = load i16, ptr %112, align 4, !tbaa !43
  %114 = sext i16 %113 to i64
  %115 = getelementptr inbounds i16, ptr %111, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !44
  %117 = zext i16 %86 to i32
  %118 = zext i16 %96 to i32
  %119 = add nuw nsw i32 %118, 1
  %120 = add nuw nsw i32 %119, %117
  %121 = lshr i32 %120, 1
  %122 = trunc i32 %121 to i16
  %123 = shl nuw nsw i32 %118, 1
  %124 = zext i16 %106 to i32
  %125 = add nuw nsw i32 %124, 2
  %126 = add nuw nsw i32 %125, %117
  %127 = add nuw nsw i32 %126, %123
  %128 = lshr i32 %127, 2
  %129 = trunc i32 %128 to i16
  %130 = add nuw nsw i32 %119, %124
  %131 = lshr i32 %130, 1
  %132 = trunc i32 %131 to i16
  %133 = shl nuw nsw i32 %124, 1
  %134 = zext i16 %116 to i32
  %135 = add nuw nsw i32 %134, 2
  %136 = add nuw nsw i32 %135, %118
  %137 = add nuw nsw i32 %136, %133
  %138 = lshr i32 %137, 2
  %139 = trunc i32 %138 to i16
  %140 = add nuw nsw i32 %124, 1
  %141 = add nuw nsw i32 %140, %134
  %142 = lshr i32 %141, 1
  %143 = trunc i32 %142 to i16
  %144 = shl nuw nsw i32 %134, 1
  %145 = add nuw nsw i32 %125, %134
  %146 = add nuw nsw i32 %145, %144
  %147 = lshr i32 %146, 2
  %148 = trunc i32 %147 to i16
  %149 = getelementptr inbounds ptr, ptr %27, i64 %31
  %150 = load ptr, ptr %149, align 8, !tbaa !20
  %151 = sext i32 %2 to i64
  %152 = getelementptr inbounds i16, ptr %150, i64 %151
  store i16 %122, ptr %152, align 2
  %153 = getelementptr inbounds i8, ptr %152, i64 2
  store i16 %129, ptr %153, align 2
  %154 = getelementptr inbounds i8, ptr %152, i64 4
  store i16 %132, ptr %154, align 2
  %155 = getelementptr inbounds i8, ptr %152, i64 6
  store i16 %139, ptr %155, align 2
  %156 = getelementptr ptr, ptr %149, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !20
  %158 = getelementptr inbounds i16, ptr %157, i64 %151
  store i16 %132, ptr %158, align 2
  %159 = getelementptr inbounds i8, ptr %158, i64 2
  store i16 %139, ptr %159, align 2
  %160 = getelementptr inbounds i8, ptr %158, i64 4
  store i16 %143, ptr %160, align 2
  %161 = getelementptr inbounds i8, ptr %158, i64 6
  store i16 %148, ptr %161, align 2
  %162 = getelementptr ptr, ptr %149, i64 2
  %163 = load ptr, ptr %162, align 8, !tbaa !20
  %164 = getelementptr inbounds i16, ptr %163, i64 %151
  store i16 %143, ptr %164, align 2
  %165 = getelementptr inbounds i8, ptr %164, i64 2
  store i16 %148, ptr %165, align 2
  %166 = getelementptr inbounds i8, ptr %164, i64 4
  store i16 %116, ptr %166, align 2
  %167 = getelementptr inbounds i8, ptr %164, i64 6
  store i16 %116, ptr %167, align 2
  %168 = getelementptr ptr, ptr %149, i64 3
  %169 = load ptr, ptr %168, align 8, !tbaa !20
  %170 = getelementptr inbounds i16, ptr %169, i64 %151
  %171 = insertelement <4 x i16> poison, i16 %116, i64 0
  %172 = shufflevector <4 x i16> %171, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %172, ptr %170, align 2
  br label %173

173:                                              ; preds = %76, %72
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_hor_down_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x %struct.pix_pos], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq i32 %1, 0
  %12 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  br i1 %11, label %20, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 33
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = add i32 %1, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  br label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 32
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %19, %14 ], [ %21, %20 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %25 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  %27 = zext i32 %1 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 160
  %31 = add nsw i32 %2, -1
  %32 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81
  %33 = sext i32 %3 to i64
  br label %34

34:                                               ; preds = %22, %34
  %35 = phi i64 [ 0, %22 ], [ %40, %34 ]
  %36 = load ptr, ptr %30, align 8, !tbaa !31
  %37 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %35
  %38 = trunc i64 %35 to i32
  %39 = add i32 %38, %3
  call void %36(ptr noundef nonnull %0, i32 noundef %31, i32 noundef %39, ptr noundef nonnull %32, ptr noundef nonnull %37) #7
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %42, label %34, !llvm.loop !58

42:                                               ; preds = %34
  %43 = load ptr, ptr %30, align 8, !tbaa !31
  %44 = add nsw i32 %3, -1
  call void %43(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %44, ptr noundef nonnull %32, ptr noundef nonnull %6) #7
  %45 = load ptr, ptr %30, align 8, !tbaa !31
  call void %45(ptr noundef nonnull %0, i32 noundef %31, i32 noundef %44, ptr noundef nonnull %32, ptr noundef nonnull %7) #7
  %46 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %47, i64 0, i32 30
  %49 = load i32, ptr %48, align 4, !tbaa !35
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %95, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  br label %53

53:                                               ; preds = %51, %67
  %54 = phi i64 [ 0, %51 ], [ %70, %67 ]
  %55 = phi i32 [ 1, %51 ], [ %69, %67 ]
  %56 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %54
  %57 = load i32, ptr %56, align 16, !tbaa !37
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %52, align 8, !tbaa !39
  %61 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 %54, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !40
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %60, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !21
  %66 = sext i8 %65 to i32
  br label %67

67:                                               ; preds = %53, %59
  %68 = phi i32 [ %66, %59 ], [ 0, %53 ]
  %69 = and i32 %68, %55
  %70 = add nuw nsw i64 %54, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %53, !llvm.loop !59

72:                                               ; preds = %67
  %73 = load i32, ptr %6, align 4, !tbaa !37
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %52, align 8, !tbaa !39
  %77 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !40
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %76, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !21
  %82 = sext i8 %81 to i32
  br label %83

83:                                               ; preds = %72, %75
  %84 = phi i32 [ %82, %75 ], [ 0, %72 ]
  %85 = load i32, ptr %7, align 4, !tbaa !37
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %52, align 8, !tbaa !39
  %89 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !40
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %88, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !21
  %94 = sext i8 %93 to i32
  br label %99

95:                                               ; preds = %42
  %96 = load i32, ptr %5, align 16, !tbaa !37
  %97 = load i32, ptr %6, align 4, !tbaa !37
  %98 = load i32, ptr %7, align 4, !tbaa !37
  br label %99

99:                                               ; preds = %87, %95
  %100 = phi i32 [ %98, %95 ], [ %94, %87 ]
  %101 = phi i32 [ %96, %95 ], [ %69, %87 ]
  %102 = phi i32 [ %97, %95 ], [ %84, %87 ]
  %103 = icmp ne i32 %102, 0
  %104 = icmp ne i32 %101, 0
  %105 = select i1 %103, i1 %104, i1 false
  %106 = icmp ne i32 %100, 0
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %112, label %108

108:                                              ; preds = %83, %99
  %109 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %110 = load i32, ptr %109, align 4, !tbaa !47
  %111 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %110) #5
  br label %259

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %114 = load i16, ptr %113, align 2, !tbaa !42
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %24, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !20
  %118 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %119 = load i16, ptr %118, align 4, !tbaa !43
  %120 = sext i16 %119 to i64
  %121 = getelementptr inbounds i16, ptr %117, i64 %120
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = load i16, ptr %121, align 2, !tbaa !44
  %124 = getelementptr inbounds i16, ptr %121, i64 2
  %125 = load i16, ptr %122, align 2, !tbaa !44
  %126 = load i16, ptr %124, align 2, !tbaa !44
  %127 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %128 = load i16, ptr %127, align 2, !tbaa !42
  %129 = sext i16 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %24, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !20
  %132 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %133 = load i16, ptr %132, align 4, !tbaa !43
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds i16, ptr %131, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !44
  %137 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 5
  %138 = load i16, ptr %137, align 2, !tbaa !42
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %24, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !20
  %142 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 1, i32 4
  %143 = load i16, ptr %142, align 4, !tbaa !43
  %144 = sext i16 %143 to i64
  %145 = getelementptr inbounds i16, ptr %141, i64 %144
  %146 = load i16, ptr %145, align 2, !tbaa !44
  %147 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 5
  %148 = load i16, ptr %147, align 2, !tbaa !42
  %149 = sext i16 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %24, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !20
  %152 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 2, i32 4
  %153 = load i16, ptr %152, align 4, !tbaa !43
  %154 = sext i16 %153 to i64
  %155 = getelementptr inbounds i16, ptr %151, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !44
  %157 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 3, i32 5
  %158 = load i16, ptr %157, align 2, !tbaa !42
  %159 = sext i16 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %24, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !20
  %162 = getelementptr inbounds [4 x %struct.pix_pos], ptr %5, i64 0, i64 3, i32 4
  %163 = load i16, ptr %162, align 4, !tbaa !43
  %164 = sext i16 %163 to i64
  %165 = getelementptr inbounds i16, ptr %161, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !44
  %167 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %168 = load i16, ptr %167, align 2, !tbaa !42
  %169 = sext i16 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %24, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !20
  %172 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %173 = load i16, ptr %172, align 4, !tbaa !43
  %174 = sext i16 %173 to i64
  %175 = getelementptr inbounds i16, ptr %171, i64 %174
  %176 = load i16, ptr %175, align 2, !tbaa !44
  %177 = zext i16 %156 to i32
  %178 = zext i16 %166 to i32
  %179 = add nuw nsw i32 %177, 1
  %180 = add nuw nsw i32 %179, %178
  %181 = lshr i32 %180, 1
  %182 = trunc i32 %181 to i16
  %183 = zext i16 %146 to i32
  %184 = shl nuw nsw i32 %177, 1
  %185 = add nuw nsw i32 %183, 2
  %186 = add nuw nsw i32 %185, %184
  %187 = add nuw nsw i32 %186, %178
  %188 = lshr i32 %187, 2
  %189 = trunc i32 %188 to i16
  %190 = add nuw nsw i32 %183, 1
  %191 = add nuw nsw i32 %190, %177
  %192 = lshr i32 %191, 1
  %193 = trunc i32 %192 to i16
  %194 = zext i16 %136 to i32
  %195 = shl nuw nsw i32 %183, 1
  %196 = add nuw nsw i32 %194, 2
  %197 = add nuw nsw i32 %196, %195
  %198 = add nuw nsw i32 %197, %177
  %199 = lshr i32 %198, 2
  %200 = trunc i32 %199 to i16
  %201 = add nuw nsw i32 %194, 1
  %202 = add nuw nsw i32 %201, %183
  %203 = lshr i32 %202, 1
  %204 = trunc i32 %203 to i16
  %205 = zext i16 %176 to i32
  %206 = shl nuw nsw i32 %194, 1
  %207 = add nuw nsw i32 %185, %206
  %208 = add nuw nsw i32 %207, %205
  %209 = lshr i32 %208, 2
  %210 = trunc i32 %209 to i16
  %211 = add nuw nsw i32 %201, %205
  %212 = lshr i32 %211, 1
  %213 = trunc i32 %212 to i16
  %214 = shl nuw nsw i32 %205, 1
  %215 = zext i16 %123 to i32
  %216 = add nuw nsw i32 %215, 2
  %217 = add nuw nsw i32 %216, %194
  %218 = add nuw nsw i32 %217, %214
  %219 = lshr i32 %218, 2
  %220 = trunc i32 %219 to i16
  %221 = shl nuw nsw i32 %215, 1
  %222 = zext i16 %125 to i32
  %223 = add nuw nsw i32 %205, 2
  %224 = add nuw nsw i32 %223, %221
  %225 = add nuw nsw i32 %224, %222
  %226 = lshr i32 %225, 2
  %227 = trunc i32 %226 to i16
  %228 = shl nuw nsw i32 %222, 1
  %229 = zext i16 %126 to i32
  %230 = add nuw nsw i32 %216, %228
  %231 = add nuw nsw i32 %230, %229
  %232 = lshr i32 %231, 2
  %233 = trunc i32 %232 to i16
  %234 = getelementptr inbounds ptr, ptr %29, i64 %33
  %235 = load ptr, ptr %234, align 8, !tbaa !20
  %236 = sext i32 %2 to i64
  %237 = getelementptr inbounds i16, ptr %235, i64 %236
  store i16 %213, ptr %237, align 2
  %238 = getelementptr inbounds i8, ptr %237, i64 2
  store i16 %220, ptr %238, align 2
  %239 = getelementptr inbounds i8, ptr %237, i64 4
  store i16 %227, ptr %239, align 2
  %240 = getelementptr inbounds i8, ptr %237, i64 6
  store i16 %233, ptr %240, align 2
  %241 = getelementptr ptr, ptr %234, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !20
  %243 = getelementptr inbounds i16, ptr %242, i64 %236
  store i16 %204, ptr %243, align 2
  %244 = getelementptr inbounds i8, ptr %243, i64 2
  store i16 %210, ptr %244, align 2
  %245 = getelementptr inbounds i8, ptr %243, i64 4
  store i16 %213, ptr %245, align 2
  %246 = getelementptr inbounds i8, ptr %243, i64 6
  store i16 %220, ptr %246, align 2
  %247 = getelementptr ptr, ptr %234, i64 2
  %248 = load ptr, ptr %247, align 8, !tbaa !20
  %249 = getelementptr inbounds i16, ptr %248, i64 %236
  store i16 %193, ptr %249, align 2
  %250 = getelementptr inbounds i8, ptr %249, i64 2
  store i16 %200, ptr %250, align 2
  %251 = getelementptr inbounds i8, ptr %249, i64 4
  store i16 %204, ptr %251, align 2
  %252 = getelementptr inbounds i8, ptr %249, i64 6
  store i16 %210, ptr %252, align 2
  %253 = getelementptr ptr, ptr %234, i64 3
  %254 = load ptr, ptr %253, align 8, !tbaa !20
  %255 = getelementptr inbounds i16, ptr %254, i64 %236
  store i16 %182, ptr %255, align 2
  %256 = getelementptr inbounds i8, ptr %255, i64 2
  store i16 %189, ptr %256, align 2
  %257 = getelementptr inbounds i8, ptr %255, i64 4
  store i16 %193, ptr %257, align 2
  %258 = getelementptr inbounds i8, ptr %255, i64 6
  store i16 %200, ptr %258, align 2
  br label %259

259:                                              ; preds = %112, %108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { optsize }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"macroblock", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !12, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !9, i64 80, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !13, i64 108, !9, i64 110, !9, i64 111, !13, i64 112, !13, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !9, i64 154, !11, i64 284, !9, i64 288, !9, i64 312, !9, i64 336, !11, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !9, i64 373, !9, i64 374, !13, i64 376, !13, i64 378, !13, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !9, i64 472}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 2}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 848800}
!15 = !{!"video_par", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 132120, !8, i64 699416, !9, i64 699424, !11, i64 848672, !11, i64 848676, !11, i64 848680, !11, i64 848684, !8, i64 848688, !8, i64 848696, !8, i64 848704, !11, i64 848712, !11, i64 848716, !11, i64 848720, !11, i64 848724, !11, i64 848728, !8, i64 848736, !8, i64 848744, !9, i64 848752, !11, i64 848776, !11, i64 848780, !11, i64 848784, !11, i64 848788, !11, i64 848792, !8, i64 848800, !9, i64 848808, !8, i64 848832, !8, i64 848840, !9, i64 848848, !11, i64 848872, !11, i64 848876, !8, i64 848880, !8, i64 848888, !9, i64 848896, !11, i64 848920, !8, i64 848928, !8, i64 848936, !11, i64 848944, !11, i64 848948, !11, i64 848952, !11, i64 848956, !11, i64 848960, !11, i64 848964, !11, i64 848968, !11, i64 848972, !11, i64 848976, !11, i64 848980, !11, i64 848984, !11, i64 848988, !11, i64 848992, !11, i64 848996, !11, i64 849000, !11, i64 849004, !11, i64 849008, !11, i64 849012, !11, i64 849016, !11, i64 849020, !11, i64 849024, !11, i64 849028, !11, i64 849032, !11, i64 849036, !13, i64 849040, !13, i64 849042, !9, i64 849044, !11, i64 849052, !11, i64 849056, !9, i64 849060, !9, i64 849072, !11, i64 849084, !11, i64 849088, !11, i64 849092, !11, i64 849096, !11, i64 849100, !11, i64 849104, !11, i64 849108, !11, i64 849112, !11, i64 849116, !11, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !11, i64 849196, !11, i64 849200, !11, i64 849204, !11, i64 849208, !11, i64 849212, !11, i64 849216, !11, i64 849220, !11, i64 849224, !11, i64 849228, !11, i64 849232, !11, i64 849236, !11, i64 849240, !11, i64 849244, !11, i64 849248, !11, i64 849252, !11, i64 849256, !11, i64 849260, !11, i64 849264, !11, i64 849268, !11, i64 849272, !11, i64 849276, !11, i64 849280, !11, i64 849284, !8, i64 849288, !8, i64 849296, !16, i64 849304, !16, i64 849624, !16, i64 849944, !16, i64 850264, !16, i64 850584, !16, i64 850904, !16, i64 851224, !16, i64 851544, !11, i64 851864, !11, i64 851868, !11, i64 851872, !19, i64 851880, !11, i64 851888, !9, i64 851892, !11, i64 855988, !11, i64 855992, !11, i64 855996, !11, i64 856000, !11, i64 856004, !11, i64 856008, !11, i64 856012, !8, i64 856016, !8, i64 856024, !8, i64 856032, !8, i64 856040, !8, i64 856048, !9, i64 856056, !8, i64 856456, !9, i64 856464, !8, i64 856488, !8, i64 856496, !8, i64 856504, !11, i64 856512, !8, i64 856520, !9, i64 856528, !8, i64 856608, !8, i64 856616, !8, i64 856624, !8, i64 856632, !11, i64 856640, !11, i64 856644, !11, i64 856648, !8, i64 856656, !8, i64 856664, !9, i64 856672, !9, i64 856688, !8, i64 856704, !8, i64 856712, !11, i64 856720, !8, i64 856728, !8, i64 856736, !8, i64 856744, !8, i64 856752, !8, i64 856760, !8, i64 856768, !8, i64 856776, !8, i64 856784, !8, i64 856792, !8, i64 856800, !8, i64 856808, !8, i64 856816, !11, i64 856824, !8, i64 856832, !11, i64 856840, !11, i64 856844, !11, i64 856848, !11, i64 856852, !11, i64 856856, !11, i64 856860, !11, i64 856864, !8, i64 856872}
!16 = !{!"image_data", !17, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!17 = !{!"frame_format", !11, i64 0, !11, i64 4, !18, i64 8, !9, i64 16, !9, i64 28, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !11, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !11, i64 124, !11, i64 128}
!18 = !{!"double", !9, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!7, !9, i64 372}
!23 = !{!7, !8, i64 0}
!24 = !{!25, !8, i64 13520}
!25 = !{!"slice", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !9, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !13, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !9, i64 136, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !9, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !8, i64 248, !9, i64 256, !9, i64 264, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !11, i64 1176, !11, i64 1180, !11, i64 1184, !26, i64 1188, !13, i64 1220, !13, i64 1222, !13, i64 1224, !11, i64 1228, !11, i64 1232, !11, i64 1236, !11, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !9, i64 1288, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !11, i64 13264, !11, i64 13268, !13, i64 13272, !13, i64 13274, !13, i64 13276, !13, i64 13278, !8, i64 13280, !8, i64 13288, !8, i64 13296, !13, i64 13304, !13, i64 13306, !11, i64 13308, !11, i64 13312, !8, i64 13320, !8, i64 13328, !11, i64 13336, !9, i64 13340, !8, i64 13408, !8, i64 13416, !8, i64 13424, !8, i64 13432, !8, i64 13440, !8, i64 13448, !8, i64 13456, !8, i64 13464, !8, i64 13472, !8, i64 13480, !8, i64 13488, !8, i64 13496, !11, i64 13504, !8, i64 13512, !8, i64 13520, !8, i64 13528, !8, i64 13536, !8, i64 13544, !9, i64 13552}
!26 = !{!"nalunitheadermvcext_tag", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!27 = !{!28, !8, i64 136}
!28 = !{!"storable_picture", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !9, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !13, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !9, i64 160, !29, i64 184, !9, i64 192, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !9, i64 300, !11, i64 308, !8, i64 312, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !8, i64 336, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !8, i64 376, !11, i64 384, !11, i64 388, !9, i64 392, !9, i64 400}
!29 = !{!"pic_motion_params_old", !8, i64 0}
!30 = !{!25, !8, i64 1248}
!31 = !{!15, !8, i64 856744}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!15, !8, i64 8}
!35 = !{!36, !11, i64 2204}
!36 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !9, i64 24, !9, i64 72, !9, i64 456, !9, i64 1992, !9, i64 2016, !11, i64 2040, !11, i64 2044, !11, i64 2048, !9, i64 2052, !9, i64 2084, !9, i64 2116, !11, i64 2148, !11, i64 2152, !11, i64 2156, !8, i64 2160, !11, i64 2168, !11, i64 2172, !11, i64 2176, !11, i64 2180, !11, i64 2184, !11, i64 2188, !11, i64 2192, !11, i64 2196, !11, i64 2200, !11, i64 2204, !11, i64 2208}
!37 = !{!38, !11, i64 0}
!38 = !{!"pix_pos", !11, i64 0, !11, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!39 = !{!25, !8, i64 13544}
!40 = !{!38, !11, i64 4}
!41 = distinct !{!41, !33}
!42 = !{!38, !13, i64 14}
!43 = !{!38, !13, i64 12}
!44 = !{!13, !13, i64 0}
!45 = !{!11, !11, i64 0}
!46 = distinct !{!46, !33}
!47 = !{!25, !11, i64 108}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = distinct !{!56, !33}
!57 = distinct !{!57, !33}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !33}
