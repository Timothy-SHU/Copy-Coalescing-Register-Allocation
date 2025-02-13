; ModuleID = 'ldecod_src/intra8x8_pred_mbaff.c'
source_filename = "ldecod_src/intra8x8_pred_mbaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Error: illegal intra_8x8 prediction mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"warning: Intra_8x8_Vertical prediction mode not allowed at mb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"warning: Intra_8x8_Horizontal prediction mode not allowed at mb %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"warning: Intra_8x8_Diagonal_Down_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"warning: Intra_8x8_Diagonal_Down_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"warning: Intra_8x8_Vertical_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"warning: Intra_8x8_Horizontal_Up prediction mode not allowed at mb %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"warning: Intra_8x8_Horizontal_Down prediction mode not allowed at mb %d\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @intrapred8x8_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !35
  %7 = ashr i32 %2, 2
  %8 = add nsw i32 %6, %7
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = ashr i32 %3, 2
  %12 = add nsw i32 %10, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 127
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !49
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 %21, ptr %22, align 4, !tbaa !50
  switch i8 %21, label %32 [
    i8 2, label %23
    i8 0, label %24
    i8 1, label %25
    i8 4, label %26
    i8 3, label %27
    i8 5, label %28
    i8 7, label %29
    i8 8, label %30
    i8 6, label %31
  ]

23:                                               ; preds = %4
  tail call fastcc void @intra8x8_dc_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

24:                                               ; preds = %4
  tail call fastcc void @intra8x8_vert_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

25:                                               ; preds = %4
  tail call fastcc void @intra8x8_hor_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

26:                                               ; preds = %4
  tail call fastcc void @intra8x8_diag_down_right_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

27:                                               ; preds = %4
  tail call fastcc void @intra8x8_diag_down_left_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

28:                                               ; preds = %4
  tail call fastcc void @intra8x8_vert_right_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

29:                                               ; preds = %4
  tail call fastcc void @intra8x8_vert_left_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

30:                                               ; preds = %4
  tail call fastcc void @intra8x8_hor_up_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

31:                                               ; preds = %4
  tail call fastcc void @intra8x8_hor_down_pred_mbaff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

32:                                               ; preds = %4
  %33 = zext i8 %21 to i32
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %33) #7
  br label %35

35:                                               ; preds = %32, %31, %30, %29, %28, %27, %26, %25, %24, %23
  %36 = phi i32 [ 1, %32 ], [ 0, %31 ], [ 0, %30 ], [ 0, %29 ], [ 0, %28 ], [ 0, %27 ], [ 0, %26 ], [ 0, %25 ], [ 0, %24 ], [ 0, %23 ]
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_dc_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !51 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  %34 = sext i32 %3 to i64
  br label %35

35:                                               ; preds = %24, %35
  %36 = phi i64 [ 0, %24 ], [ %40, %35 ]
  %37 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %36
  %38 = trunc i64 %36 to i32
  %39 = add i32 %38, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %39, ptr noundef nonnull %32, ptr noundef nonnull %37) #9
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, 8
  br i1 %41, label %42, label %35, !llvm.loop !58

42:                                               ; preds = %35
  %43 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %44 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %44, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %45 = load i32, ptr %8, align 4, !tbaa !60
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = icmp ne i32 %2, 8
  %49 = icmp ne i32 %3, 8
  %50 = or i1 %48, %49
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi i1 [ false, %42 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  store i32 %53, ptr %8, align 4, !tbaa !60
  %54 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !62
  %56 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %55, i64 0, i32 30
  %57 = load i32, ptr %56, align 4, !tbaa !68
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %113, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  br label %61

61:                                               ; preds = %59, %75
  %62 = phi i64 [ 0, %59 ], [ %78, %75 ]
  %63 = phi i32 [ 1, %59 ], [ %77, %75 ]
  %64 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %62
  %65 = load i32, ptr %64, align 16, !tbaa !60
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %60, align 8, !tbaa !70
  %69 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %62, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !71
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %68, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !49
  %74 = sext i8 %73 to i32
  br label %75

75:                                               ; preds = %61, %67
  %76 = phi i32 [ %74, %67 ], [ 0, %61 ]
  %77 = and i32 %76, %63
  %78 = add nuw nsw i64 %62, 1
  %79 = icmp eq i64 %78, 8
  br i1 %79, label %80, label %61, !llvm.loop !72

80:                                               ; preds = %75
  %81 = load i32, ptr %7, align 4, !tbaa !60
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %60, align 8, !tbaa !70
  %85 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !71
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %84, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !49
  %90 = sext i8 %89 to i32
  br label %91

91:                                               ; preds = %80, %83
  %92 = phi i32 [ %90, %83 ], [ 0, %80 ]
  br i1 %52, label %93, label %101

93:                                               ; preds = %91
  %94 = load ptr, ptr %60, align 8, !tbaa !70
  %95 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !71
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %94, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !49
  %100 = sext i8 %99 to i32
  br label %101

101:                                              ; preds = %91, %93
  %102 = phi i32 [ %100, %93 ], [ 0, %91 ]
  %103 = load i32, ptr %9, align 4, !tbaa !60
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %60, align 8, !tbaa !70
  %107 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !71
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %106, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !49
  %112 = sext i8 %111 to i32
  br label %117

113:                                              ; preds = %51
  %114 = load i32, ptr %6, align 16, !tbaa !60
  %115 = load i32, ptr %7, align 4, !tbaa !60
  %116 = load i32, ptr %9, align 4, !tbaa !60
  br label %117

117:                                              ; preds = %105, %101, %113
  %118 = phi i32 [ %115, %113 ], [ %92, %101 ], [ %92, %105 ]
  %119 = phi i32 [ %114, %113 ], [ %77, %101 ], [ %77, %105 ]
  %120 = phi i32 [ %116, %113 ], [ 0, %101 ], [ %112, %105 ]
  %121 = phi i32 [ %53, %113 ], [ %102, %101 ], [ %102, %105 ]
  %122 = icmp ne i32 %118, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %125 = load i16, ptr %124, align 2, !tbaa !73
  %126 = sext i16 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %26, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !48
  %129 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %130 = load i16, ptr %129, align 4, !tbaa !74
  %131 = sext i16 %130 to i64
  %132 = getelementptr inbounds i16, ptr %128, i64 %131
  %133 = load i16, ptr %132, align 2, !tbaa !75
  %134 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %133, ptr %134, align 2, !tbaa !75
  %135 = getelementptr inbounds i16, ptr %132, i64 1
  %136 = load i16, ptr %135, align 2, !tbaa !75
  %137 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %136, ptr %137, align 4, !tbaa !75
  %138 = getelementptr inbounds i16, ptr %132, i64 2
  %139 = load i16, ptr %138, align 2, !tbaa !75
  %140 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %139, ptr %140, align 2, !tbaa !75
  %141 = getelementptr inbounds i16, ptr %132, i64 3
  %142 = load i16, ptr %141, align 2, !tbaa !75
  %143 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %142, ptr %143, align 8, !tbaa !75
  %144 = getelementptr inbounds i16, ptr %132, i64 4
  %145 = load i16, ptr %144, align 2, !tbaa !75
  %146 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %145, ptr %146, align 2, !tbaa !75
  %147 = getelementptr inbounds i16, ptr %132, i64 5
  %148 = load i16, ptr %147, align 2, !tbaa !75
  %149 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %148, ptr %149, align 4, !tbaa !75
  %150 = getelementptr inbounds i16, ptr %132, i64 6
  %151 = load i16, ptr %150, align 2, !tbaa !75
  %152 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %151, ptr %152, align 2, !tbaa !75
  %153 = getelementptr inbounds i16, ptr %132, i64 7
  %154 = load i16, ptr %153, align 2, !tbaa !75
  br label %165

155:                                              ; preds = %117
  %156 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %157 = load i32, ptr %156, align 4, !tbaa !76
  %158 = trunc i32 %157 to i16
  %159 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %158, ptr %159, align 2, !tbaa !75
  %160 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %158, ptr %160, align 4, !tbaa !75
  %161 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %158, ptr %161, align 2, !tbaa !75
  %162 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %163 = insertelement <4 x i16> poison, i16 %158, i64 0
  %164 = shufflevector <4 x i16> %163, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %164, ptr %162, align 2, !tbaa !75
  br label %165

165:                                              ; preds = %155, %123
  %166 = phi i16 [ %154, %123 ], [ %158, %155 ]
  %167 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %166, ptr %167, align 16
  %168 = icmp eq i32 %121, 0
  br i1 %168, label %202, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %171 = load i16, ptr %170, align 2, !tbaa !73
  %172 = sext i16 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %26, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !48
  %175 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %176 = load i16, ptr %175, align 4, !tbaa !74
  %177 = sext i16 %176 to i64
  %178 = getelementptr inbounds i16, ptr %174, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !75
  %180 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %179, ptr %180, align 2, !tbaa !75
  %181 = getelementptr inbounds i16, ptr %178, i64 1
  %182 = load i16, ptr %181, align 2, !tbaa !75
  %183 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %182, ptr %183, align 4, !tbaa !75
  %184 = getelementptr inbounds i16, ptr %178, i64 2
  %185 = load i16, ptr %184, align 2, !tbaa !75
  %186 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %185, ptr %186, align 2, !tbaa !75
  %187 = getelementptr inbounds i16, ptr %178, i64 3
  %188 = load i16, ptr %187, align 2, !tbaa !75
  %189 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %188, ptr %189, align 8, !tbaa !75
  %190 = getelementptr inbounds i16, ptr %178, i64 4
  %191 = load i16, ptr %190, align 2, !tbaa !75
  %192 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %191, ptr %192, align 2, !tbaa !75
  %193 = getelementptr inbounds i16, ptr %178, i64 5
  %194 = load i16, ptr %193, align 2, !tbaa !75
  %195 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %194, ptr %195, align 4, !tbaa !75
  %196 = getelementptr inbounds i16, ptr %178, i64 6
  %197 = load i16, ptr %196, align 2, !tbaa !75
  %198 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %197, ptr %198, align 2, !tbaa !75
  %199 = getelementptr inbounds i16, ptr %178, i64 7
  %200 = load i16, ptr %199, align 2, !tbaa !75
  %201 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %200, ptr %201, align 16, !tbaa !75
  br label %206

202:                                              ; preds = %165
  %203 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %204 = insertelement <8 x i16> poison, i16 %166, i64 0
  %205 = shufflevector <8 x i16> %204, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %205, ptr %203, align 2, !tbaa !75
  br label %206

206:                                              ; preds = %202, %169
  %207 = icmp ne i32 %119, 0
  br i1 %207, label %208, label %296

208:                                              ; preds = %206
  %209 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %210 = load i16, ptr %209, align 2, !tbaa !73
  %211 = sext i16 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %26, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !48
  %214 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %215 = load i16, ptr %214, align 4, !tbaa !74
  %216 = sext i16 %215 to i64
  %217 = getelementptr inbounds i16, ptr %213, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !75
  %219 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %218, ptr %219, align 2, !tbaa !75
  %220 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 5
  %221 = load i16, ptr %220, align 2, !tbaa !73
  %222 = sext i16 %221 to i64
  %223 = getelementptr inbounds ptr, ptr %26, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !48
  %225 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 4
  %226 = load i16, ptr %225, align 4, !tbaa !74
  %227 = sext i16 %226 to i64
  %228 = getelementptr inbounds i16, ptr %224, i64 %227
  %229 = load i16, ptr %228, align 2, !tbaa !75
  %230 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %229, ptr %230, align 4, !tbaa !75
  %231 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 5
  %232 = load i16, ptr %231, align 2, !tbaa !73
  %233 = sext i16 %232 to i64
  %234 = getelementptr inbounds ptr, ptr %26, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !48
  %236 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 4
  %237 = load i16, ptr %236, align 4, !tbaa !74
  %238 = sext i16 %237 to i64
  %239 = getelementptr inbounds i16, ptr %235, i64 %238
  %240 = load i16, ptr %239, align 2, !tbaa !75
  %241 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %240, ptr %241, align 2, !tbaa !75
  %242 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 5
  %243 = load i16, ptr %242, align 2, !tbaa !73
  %244 = sext i16 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %26, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !48
  %247 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 4
  %248 = load i16, ptr %247, align 4, !tbaa !74
  %249 = sext i16 %248 to i64
  %250 = getelementptr inbounds i16, ptr %246, i64 %249
  %251 = load i16, ptr %250, align 2, !tbaa !75
  %252 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %251, ptr %252, align 8, !tbaa !75
  %253 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 5
  %254 = load i16, ptr %253, align 2, !tbaa !73
  %255 = sext i16 %254 to i64
  %256 = getelementptr inbounds ptr, ptr %26, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !48
  %258 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 4
  %259 = load i16, ptr %258, align 4, !tbaa !74
  %260 = sext i16 %259 to i64
  %261 = getelementptr inbounds i16, ptr %257, i64 %260
  %262 = load i16, ptr %261, align 2, !tbaa !75
  %263 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %262, ptr %263, align 2, !tbaa !75
  %264 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 5
  %265 = load i16, ptr %264, align 2, !tbaa !73
  %266 = sext i16 %265 to i64
  %267 = getelementptr inbounds ptr, ptr %26, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !48
  %269 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 4
  %270 = load i16, ptr %269, align 4, !tbaa !74
  %271 = sext i16 %270 to i64
  %272 = getelementptr inbounds i16, ptr %268, i64 %271
  %273 = load i16, ptr %272, align 2, !tbaa !75
  %274 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %273, ptr %274, align 4, !tbaa !75
  %275 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 5
  %276 = load i16, ptr %275, align 2, !tbaa !73
  %277 = sext i16 %276 to i64
  %278 = getelementptr inbounds ptr, ptr %26, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !48
  %280 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 4
  %281 = load i16, ptr %280, align 4, !tbaa !74
  %282 = sext i16 %281 to i64
  %283 = getelementptr inbounds i16, ptr %279, i64 %282
  %284 = load i16, ptr %283, align 2, !tbaa !75
  %285 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %284, ptr %285, align 2, !tbaa !75
  %286 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 5
  %287 = load i16, ptr %286, align 2, !tbaa !73
  %288 = sext i16 %287 to i64
  %289 = getelementptr inbounds ptr, ptr %26, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !48
  %291 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 4
  %292 = load i16, ptr %291, align 4, !tbaa !74
  %293 = sext i16 %292 to i64
  %294 = getelementptr inbounds i16, ptr %290, i64 %293
  %295 = load i16, ptr %294, align 2, !tbaa !75
  br label %306

296:                                              ; preds = %206
  %297 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %298 = load i32, ptr %297, align 4, !tbaa !76
  %299 = trunc i32 %298 to i16
  %300 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %299, ptr %300, align 2, !tbaa !75
  %301 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %299, ptr %301, align 4, !tbaa !75
  %302 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %299, ptr %302, align 2, !tbaa !75
  %303 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %304 = insertelement <4 x i16> poison, i16 %299, i64 0
  %305 = shufflevector <4 x i16> %304, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %305, ptr %303, align 2, !tbaa !75
  br label %306

306:                                              ; preds = %296, %208
  %307 = phi i16 [ %295, %208 ], [ %299, %296 ]
  %308 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %307, ptr %308, align 16
  %309 = icmp eq i32 %120, 0
  br i1 %309, label %321, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %312 = load i16, ptr %311, align 2, !tbaa !73
  %313 = sext i16 %312 to i64
  %314 = getelementptr inbounds ptr, ptr %26, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !48
  %316 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %317 = load i16, ptr %316, align 4, !tbaa !74
  %318 = sext i16 %317 to i64
  %319 = getelementptr inbounds i16, ptr %315, i64 %318
  %320 = load i16, ptr %319, align 2, !tbaa !75
  br label %325

321:                                              ; preds = %306
  %322 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %323 = load i32, ptr %322, align 4, !tbaa !76
  %324 = trunc i32 %323 to i16
  br label %325

325:                                              ; preds = %321, %310
  %326 = phi i16 [ %324, %321 ], [ %320, %310 ]
  store i16 %326, ptr %5, align 16, !tbaa !75
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %120, i32 noundef %118, i32 noundef %119) #7
  %327 = and i1 %122, %207
  br i1 %327, label %328, label %338

328:                                              ; preds = %325
  %329 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %330 = load <8 x i16>, ptr %329, align 2, !tbaa !75
  %331 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %332 = load <8 x i16>, ptr %331, align 2, !tbaa !75
  %333 = shufflevector <8 x i16> %330, <8 x i16> %332, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %334 = zext <16 x i16> %333 to <16 x i32>
  %335 = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %334)
  %336 = add i32 %335, 8
  %337 = lshr i32 %336, 4
  br label %360

338:                                              ; preds = %325
  %339 = icmp eq i32 %118, 0
  %340 = and i1 %339, %207
  br i1 %340, label %341, label %348

341:                                              ; preds = %338
  %342 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %343 = load <8 x i16>, ptr %342, align 2, !tbaa !75
  %344 = zext <8 x i16> %343 to <8 x i32>
  %345 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %344)
  %346 = add i32 %345, 4
  %347 = lshr i32 %346, 3
  br label %360

348:                                              ; preds = %338
  %349 = or i1 %339, %207
  br i1 %349, label %357, label %350

350:                                              ; preds = %348
  %351 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %352 = load <8 x i16>, ptr %351, align 2, !tbaa !75
  %353 = zext <8 x i16> %352 to <8 x i32>
  %354 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %353)
  %355 = add i32 %354, 4
  %356 = lshr i32 %355, 3
  br label %360

357:                                              ; preds = %348
  %358 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %359 = load i32, ptr %358, align 4, !tbaa !76
  br label %360

360:                                              ; preds = %341, %357, %350, %328
  %361 = phi i32 [ %337, %328 ], [ %347, %341 ], [ %359, %357 ], [ %356, %350 ]
  %362 = trunc i32 %361 to i16
  %363 = sext i32 %2 to i64
  %364 = sext i32 %44 to i64
  %365 = add nsw i32 %3, 7
  %366 = sext i32 %365 to i64
  br label %367

367:                                              ; preds = %360, %376
  %368 = phi i64 [ %34, %360 ], [ %377, %376 ]
  %369 = getelementptr inbounds ptr, ptr %31, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !48
  br label %371

371:                                              ; preds = %367, %371
  %372 = phi i64 [ %363, %367 ], [ %374, %371 ]
  %373 = getelementptr inbounds i16, ptr %370, i64 %372
  store i16 %362, ptr %373, align 2, !tbaa !75
  %374 = add nsw i64 %372, 1
  %375 = icmp slt i64 %374, %364
  br i1 %375, label %371, label %376, !llvm.loop !77

376:                                              ; preds = %371
  %377 = add nsw i64 %368, 1
  %378 = icmp slt i64 %368, %366
  br i1 %378, label %367, label %379, !llvm.loop !78

379:                                              ; preds = %376
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_vert_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !79 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  %34 = sext i32 %3 to i64
  br label %35

35:                                               ; preds = %24, %35
  %36 = phi i64 [ 0, %24 ], [ %40, %35 ]
  %37 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %36
  %38 = trunc i64 %36 to i32
  %39 = add i32 %38, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %39, ptr noundef nonnull %32, ptr noundef nonnull %37) #9
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, 8
  br i1 %41, label %42, label %35, !llvm.loop !80

42:                                               ; preds = %35
  %43 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %44 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %44, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %45 = load i32, ptr %8, align 4, !tbaa !60
  %46 = icmp ne i32 %45, 0
  %47 = icmp ne i32 %2, 8
  %48 = icmp ne i32 %3, 8
  %49 = or i1 %47, %48
  %50 = and i1 %49, %46
  %51 = zext i1 %50 to i32
  store i32 %51, ptr %8, align 4, !tbaa !60
  %52 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  %54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %53, i64 0, i32 30
  %55 = load i32, ptr %54, align 4, !tbaa !68
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %111, label %57

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  br label %59

59:                                               ; preds = %57, %73
  %60 = phi i64 [ 0, %57 ], [ %76, %73 ]
  %61 = phi i32 [ 1, %57 ], [ %75, %73 ]
  %62 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %60
  %63 = load i32, ptr %62, align 16, !tbaa !60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %58, align 8, !tbaa !70
  %67 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %60, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !71
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !49
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %59, %65
  %74 = phi i32 [ %72, %65 ], [ 0, %59 ]
  %75 = and i32 %74, %61
  %76 = add nuw nsw i64 %60, 1
  %77 = icmp eq i64 %76, 8
  br i1 %77, label %78, label %59, !llvm.loop !81

78:                                               ; preds = %73
  %79 = load i32, ptr %7, align 4, !tbaa !60
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %58, align 8, !tbaa !70
  %83 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !71
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %82, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !49
  %88 = sext i8 %87 to i32
  br label %89

89:                                               ; preds = %78, %81
  %90 = phi i32 [ %88, %81 ], [ 0, %78 ]
  br i1 %50, label %91, label %99

91:                                               ; preds = %89
  %92 = load ptr, ptr %58, align 8, !tbaa !70
  %93 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !71
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %92, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !49
  %98 = sext i8 %97 to i32
  br label %99

99:                                               ; preds = %89, %91
  %100 = phi i32 [ %98, %91 ], [ 0, %89 ]
  %101 = load i32, ptr %9, align 4, !tbaa !60
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %58, align 8, !tbaa !70
  %105 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !71
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %104, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !49
  %110 = sext i8 %109 to i32
  br label %115

111:                                              ; preds = %42
  %112 = load i32, ptr %6, align 16, !tbaa !60
  %113 = load i32, ptr %7, align 4, !tbaa !60
  %114 = load i32, ptr %9, align 4, !tbaa !60
  br label %115

115:                                              ; preds = %103, %99, %111
  %116 = phi i32 [ %112, %111 ], [ %75, %99 ], [ %75, %103 ]
  %117 = phi i32 [ %114, %111 ], [ 0, %99 ], [ %110, %103 ]
  %118 = phi i32 [ %51, %111 ], [ %100, %99 ], [ %100, %103 ]
  %119 = phi i32 [ %113, %111 ], [ %90, %99 ], [ %90, %103 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %123 = load i32, ptr %122, align 4, !tbaa !82
  %124 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %123) #7
  %125 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %126 = load i32, ptr %125, align 4, !tbaa !76
  %127 = trunc i32 %126 to i16
  %128 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %127, ptr %128, align 16, !tbaa !75
  %129 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %127, ptr %129, align 2, !tbaa !75
  %130 = insertelement <4 x i16> poison, i16 %127, i64 0
  %131 = shufflevector <4 x i16> %130, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %151

132:                                              ; preds = %115
  %133 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %134 = load i16, ptr %133, align 2, !tbaa !73
  %135 = sext i16 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %26, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !48
  %138 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %139 = load i16, ptr %138, align 4, !tbaa !74
  %140 = sext i16 %139 to i64
  %141 = getelementptr inbounds i16, ptr %137, i64 %140
  %142 = getelementptr inbounds i16, ptr %141, i64 4
  %143 = load <4 x i16>, ptr %141, align 2, !tbaa !75
  %144 = getelementptr inbounds i16, ptr %141, i64 5
  %145 = load i16, ptr %142, align 2, !tbaa !75
  %146 = getelementptr inbounds i16, ptr %141, i64 6
  %147 = load i16, ptr %144, align 2, !tbaa !75
  %148 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %149 = load <2 x i16>, ptr %146, align 2, !tbaa !75
  store <2 x i16> %149, ptr %148, align 2, !tbaa !75
  %150 = extractelement <2 x i16> %149, i64 1
  br label %151

151:                                              ; preds = %121, %132
  %152 = phi i16 [ %127, %121 ], [ %150, %132 ]
  %153 = phi i16 [ %127, %121 ], [ %147, %132 ]
  %154 = phi i16 [ %127, %121 ], [ %145, %132 ]
  %155 = phi <4 x i16> [ %131, %121 ], [ %143, %132 ]
  %156 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %153, ptr %156, align 4
  %157 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %154, ptr %157, align 2
  %158 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store <4 x i16> %155, ptr %158, align 2
  %159 = icmp eq i32 %118, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %151
  %161 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %162 = load i16, ptr %161, align 2, !tbaa !73
  %163 = sext i16 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %26, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !48
  %166 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %167 = load i16, ptr %166, align 4, !tbaa !74
  %168 = sext i16 %167 to i64
  %169 = getelementptr inbounds i16, ptr %165, i64 %168
  %170 = getelementptr inbounds i16, ptr %169, i64 4
  %171 = load <4 x i16>, ptr %169, align 2, !tbaa !75
  %172 = getelementptr inbounds i16, ptr %169, i64 5
  %173 = load i16, ptr %170, align 2, !tbaa !75
  %174 = getelementptr inbounds i16, ptr %169, i64 6
  %175 = load i16, ptr %172, align 2, !tbaa !75
  %176 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  %177 = load <2 x i16>, ptr %174, align 2, !tbaa !75
  store <2 x i16> %177, ptr %176, align 2, !tbaa !75
  br label %183

178:                                              ; preds = %151
  %179 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %152, ptr %179, align 16, !tbaa !75
  %180 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %152, ptr %180, align 2, !tbaa !75
  %181 = insertelement <4 x i16> poison, i16 %152, i64 0
  %182 = shufflevector <4 x i16> %181, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %183

183:                                              ; preds = %178, %160
  %184 = phi i16 [ %152, %178 ], [ %175, %160 ]
  %185 = phi i16 [ %152, %178 ], [ %173, %160 ]
  %186 = phi <4 x i16> [ %182, %178 ], [ %171, %160 ]
  %187 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %184, ptr %187, align 4
  %188 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %185, ptr %188, align 2
  %189 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store <4 x i16> %186, ptr %189, align 2
  %190 = icmp eq i32 %117, 0
  br i1 %190, label %202, label %191

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %193 = load i16, ptr %192, align 2, !tbaa !73
  %194 = sext i16 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %26, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !48
  %197 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %198 = load i16, ptr %197, align 4, !tbaa !74
  %199 = sext i16 %198 to i64
  %200 = getelementptr inbounds i16, ptr %196, i64 %199
  %201 = load i16, ptr %200, align 2, !tbaa !75
  br label %206

202:                                              ; preds = %183
  %203 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %204 = load i32, ptr %203, align 4, !tbaa !76
  %205 = trunc i32 %204 to i16
  br label %206

206:                                              ; preds = %202, %191
  %207 = phi i16 [ %205, %202 ], [ %201, %191 ]
  store i16 %207, ptr %5, align 16, !tbaa !75
  call fastcc void @LowPassForIntra8x8PredHor(ptr noundef nonnull %5, i32 noundef %117, i32 noundef %119, i32 noundef %116) #7
  %208 = sext i32 %2 to i64
  %209 = add nsw i32 %3, 7
  %210 = sext i32 %209 to i64
  br label %211

211:                                              ; preds = %206, %211
  %212 = phi i64 [ %34, %206 ], [ %216, %211 ]
  %213 = getelementptr inbounds ptr, ptr %31, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !48
  %215 = getelementptr inbounds i16, ptr %214, i64 %208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %215, ptr noundef nonnull align 2 dereferenceable(16) %158, i64 16, i1 false)
  %216 = add nsw i64 %212, 1
  %217 = icmp slt i64 %212, %210
  br i1 %217, label %211, label %218, !llvm.loop !83

218:                                              ; preds = %211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_hor_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !84 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  %34 = sext i32 %3 to i64
  br label %35

35:                                               ; preds = %24, %35
  %36 = phi i64 [ 0, %24 ], [ %40, %35 ]
  %37 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %36
  %38 = trunc i64 %36 to i32
  %39 = add i32 %38, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %39, ptr noundef nonnull %32, ptr noundef nonnull %37) #9
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, 8
  br i1 %41, label %42, label %35, !llvm.loop !85

42:                                               ; preds = %35
  %43 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %44 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %44, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %43, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %45 = load i32, ptr %8, align 4, !tbaa !60
  %46 = icmp ne i32 %45, 0
  %47 = icmp ne i32 %2, 8
  %48 = icmp ne i32 %3, 8
  %49 = or i1 %47, %48
  %50 = and i1 %49, %46
  %51 = zext i1 %50 to i32
  store i32 %51, ptr %8, align 4, !tbaa !60
  %52 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  %54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %53, i64 0, i32 30
  %55 = load i32, ptr %54, align 4, !tbaa !68
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %101, label %57

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  br label %59

59:                                               ; preds = %57, %73
  %60 = phi i64 [ 0, %57 ], [ %76, %73 ]
  %61 = phi i32 [ 1, %57 ], [ %75, %73 ]
  %62 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %60
  %63 = load i32, ptr %62, align 16, !tbaa !60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %58, align 8, !tbaa !70
  %67 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %60, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !71
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !49
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %59, %65
  %74 = phi i32 [ %72, %65 ], [ 0, %59 ]
  %75 = and i32 %74, %61
  %76 = add nuw nsw i64 %60, 1
  %77 = icmp eq i64 %76, 8
  br i1 %77, label %78, label %59, !llvm.loop !86

78:                                               ; preds = %73
  %79 = load i32, ptr %7, align 4, !tbaa !60
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %58, align 8, !tbaa !70
  %83 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !71
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %82, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !49
  %88 = sext i8 %87 to i32
  br label %89

89:                                               ; preds = %78, %81
  %90 = phi i32 [ %88, %81 ], [ 0, %78 ]
  %91 = load i32, ptr %9, align 4, !tbaa !60
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %58, align 8, !tbaa !70
  %95 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !71
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %94, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !49
  %100 = sext i8 %99 to i32
  br label %105

101:                                              ; preds = %42
  %102 = load i32, ptr %6, align 16, !tbaa !60
  %103 = load i32, ptr %7, align 4, !tbaa !60
  %104 = load i32, ptr %9, align 4, !tbaa !60
  br label %105

105:                                              ; preds = %93, %89, %101
  %106 = phi i32 [ %104, %101 ], [ %100, %93 ], [ 0, %89 ]
  %107 = phi i32 [ %102, %101 ], [ %75, %93 ], [ %75, %89 ]
  %108 = phi i32 [ %103, %101 ], [ %90, %93 ], [ %90, %89 ]
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %112 = load i32, ptr %111, align 4, !tbaa !82
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %112) #7
  %114 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %115 = load i32, ptr %114, align 4, !tbaa !76
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %116, ptr %117, align 16, !tbaa !75
  %118 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %116, ptr %118, align 2, !tbaa !75
  %119 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  %120 = insertelement <4 x i16> poison, i16 %116, i64 0
  %121 = shufflevector <4 x i16> %120, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %121, ptr %119, align 2, !tbaa !75
  br label %209

122:                                              ; preds = %105
  %123 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %124 = load i16, ptr %123, align 2, !tbaa !73
  %125 = sext i16 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %26, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !48
  %128 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %129 = load i16, ptr %128, align 4, !tbaa !74
  %130 = sext i16 %129 to i64
  %131 = getelementptr inbounds i16, ptr %127, i64 %130
  %132 = load i16, ptr %131, align 2, !tbaa !75
  %133 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 5
  %134 = load i16, ptr %133, align 2, !tbaa !73
  %135 = sext i16 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %26, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !48
  %138 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 4
  %139 = load i16, ptr %138, align 4, !tbaa !74
  %140 = sext i16 %139 to i64
  %141 = getelementptr inbounds i16, ptr %137, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !75
  %143 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 5
  %144 = load i16, ptr %143, align 2, !tbaa !73
  %145 = sext i16 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %26, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !48
  %148 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 4
  %149 = load i16, ptr %148, align 4, !tbaa !74
  %150 = sext i16 %149 to i64
  %151 = getelementptr inbounds i16, ptr %147, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !75
  %153 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %152, ptr %153, align 2, !tbaa !75
  %154 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 5
  %155 = load i16, ptr %154, align 2, !tbaa !73
  %156 = sext i16 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %26, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !48
  %159 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 4
  %160 = load i16, ptr %159, align 4, !tbaa !74
  %161 = sext i16 %160 to i64
  %162 = getelementptr inbounds i16, ptr %158, i64 %161
  %163 = load i16, ptr %162, align 2, !tbaa !75
  %164 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %163, ptr %164, align 8, !tbaa !75
  %165 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 5
  %166 = load i16, ptr %165, align 2, !tbaa !73
  %167 = sext i16 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %26, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !48
  %170 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 4
  %171 = load i16, ptr %170, align 4, !tbaa !74
  %172 = sext i16 %171 to i64
  %173 = getelementptr inbounds i16, ptr %169, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !75
  %175 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %174, ptr %175, align 2, !tbaa !75
  %176 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 5
  %177 = load i16, ptr %176, align 2, !tbaa !73
  %178 = sext i16 %177 to i64
  %179 = getelementptr inbounds ptr, ptr %26, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !48
  %181 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 4
  %182 = load i16, ptr %181, align 4, !tbaa !74
  %183 = sext i16 %182 to i64
  %184 = getelementptr inbounds i16, ptr %180, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !75
  %186 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %185, ptr %186, align 4, !tbaa !75
  %187 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 5
  %188 = load i16, ptr %187, align 2, !tbaa !73
  %189 = sext i16 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %26, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !48
  %192 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 4
  %193 = load i16, ptr %192, align 4, !tbaa !74
  %194 = sext i16 %193 to i64
  %195 = getelementptr inbounds i16, ptr %191, i64 %194
  %196 = load i16, ptr %195, align 2, !tbaa !75
  %197 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %196, ptr %197, align 2, !tbaa !75
  %198 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 5
  %199 = load i16, ptr %198, align 2, !tbaa !73
  %200 = sext i16 %199 to i64
  %201 = getelementptr inbounds ptr, ptr %26, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !48
  %203 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 4
  %204 = load i16, ptr %203, align 4, !tbaa !74
  %205 = sext i16 %204 to i64
  %206 = getelementptr inbounds i16, ptr %202, i64 %205
  %207 = load i16, ptr %206, align 2, !tbaa !75
  %208 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %207, ptr %208, align 16, !tbaa !75
  br label %209

209:                                              ; preds = %110, %122
  %210 = phi i16 [ %116, %110 ], [ %142, %122 ]
  %211 = phi i16 [ %116, %110 ], [ %132, %122 ]
  %212 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %210, ptr %212, align 4
  %213 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %211, ptr %213, align 2
  %214 = icmp eq i32 %106, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %217 = load i16, ptr %216, align 2, !tbaa !73
  %218 = sext i16 %217 to i64
  %219 = getelementptr inbounds ptr, ptr %26, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !48
  %221 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %222 = load i16, ptr %221, align 4, !tbaa !74
  %223 = sext i16 %222 to i64
  %224 = getelementptr inbounds i16, ptr %220, i64 %223
  %225 = load i16, ptr %224, align 2, !tbaa !75
  br label %230

226:                                              ; preds = %209
  %227 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %228 = load i32, ptr %227, align 4, !tbaa !76
  %229 = trunc i32 %228 to i16
  br label %230

230:                                              ; preds = %226, %215
  %231 = phi i16 [ %229, %226 ], [ %225, %215 ]
  store i16 %231, ptr %5, align 16, !tbaa !75
  call fastcc void @LowPassForIntra8x8PredVer(ptr noundef nonnull %5, i32 noundef %106, i32 noundef %108, i32 noundef %107) #7
  %232 = sext i32 %2 to i64
  %233 = getelementptr ptr, ptr %31, i64 %34
  br label %234

234:                                              ; preds = %230, %234
  %235 = phi i64 [ 0, %230 ], [ %243, %234 ]
  %236 = getelementptr inbounds i16, ptr %213, i64 %235
  %237 = load i16, ptr %236, align 2, !tbaa !75
  %238 = getelementptr ptr, ptr %233, i64 %235
  %239 = load ptr, ptr %238, align 8, !tbaa !48
  %240 = getelementptr i16, ptr %239, i64 %232
  %241 = insertelement <8 x i16> poison, i16 %237, i64 0
  %242 = shufflevector <8 x i16> %241, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %242, ptr %240, align 2, !tbaa !75
  %243 = add nuw nsw i64 %235, 1
  %244 = icmp eq i64 %243, 8
  br i1 %244, label %245, label %234, !llvm.loop !87

245:                                              ; preds = %234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_diag_down_right_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !88 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  br label %34

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %35
  %37 = trunc i64 %35 to i32
  %38 = add i32 %37, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %38, ptr noundef nonnull %32, ptr noundef nonnull %36) #9
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, 8
  br i1 %40, label %41, label %34, !llvm.loop !89

41:                                               ; preds = %34
  %42 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %43 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %43, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %44 = load i32, ptr %8, align 4, !tbaa !60
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %2, 8
  %47 = icmp ne i32 %3, 8
  %48 = or i1 %46, %47
  %49 = and i1 %48, %45
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %8, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %52, i64 0, i32 30
  %54 = load i32, ptr %53, align 4, !tbaa !68
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %116, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  br label %58

58:                                               ; preds = %56, %72
  %59 = phi i64 [ 0, %56 ], [ %75, %72 ]
  %60 = phi i32 [ 1, %56 ], [ %74, %72 ]
  %61 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59
  %62 = load i32, ptr %61, align 16, !tbaa !60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %57, align 8, !tbaa !70
  %66 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !71
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %65, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !49
  %71 = sext i8 %70 to i32
  br label %72

72:                                               ; preds = %58, %64
  %73 = phi i32 [ %71, %64 ], [ 0, %58 ]
  %74 = and i32 %73, %60
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %58, !llvm.loop !90

77:                                               ; preds = %72
  %78 = load i32, ptr %7, align 4, !tbaa !60
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %57, align 8, !tbaa !70
  %82 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !71
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !49
  %87 = sext i8 %86 to i32
  br label %88

88:                                               ; preds = %77, %80
  %89 = phi i32 [ %87, %80 ], [ 0, %77 ]
  br i1 %49, label %90, label %98

90:                                               ; preds = %88
  %91 = load ptr, ptr %57, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !71
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !49
  %97 = sext i8 %96 to i32
  br label %98

98:                                               ; preds = %88, %90
  %99 = phi i32 [ %97, %90 ], [ 0, %88 ]
  %100 = load i32, ptr %9, align 4, !tbaa !60
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = icmp eq i32 %89, 0
  %104 = icmp ne i32 %74, 0
  %105 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %106 = load i32, ptr %105, align 4, !tbaa !82
  %107 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %106) #7
  br i1 %103, label %173, label %134

108:                                              ; preds = %98
  %109 = load ptr, ptr %57, align 8, !tbaa !70
  %110 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !71
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %109, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !49
  %115 = sext i8 %114 to i32
  br label %120

116:                                              ; preds = %41
  %117 = load i32, ptr %6, align 16, !tbaa !60
  %118 = load i32, ptr %7, align 4, !tbaa !60
  %119 = load i32, ptr %9, align 4, !tbaa !60
  br label %120

120:                                              ; preds = %108, %116
  %121 = phi i32 [ %118, %116 ], [ %89, %108 ]
  %122 = phi i32 [ %117, %116 ], [ %74, %108 ]
  %123 = phi i32 [ %119, %116 ], [ %115, %108 ]
  %124 = phi i32 [ %50, %116 ], [ %99, %108 ]
  %125 = icmp ne i32 %121, 0
  %126 = icmp ne i32 %122, 0
  %127 = select i1 %125, i1 %126, i1 false
  %128 = icmp ne i32 %123, 0
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %134, label %130

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %132 = load i32, ptr %131, align 4, !tbaa !82
  %133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %132) #7
  br i1 %125, label %134, label %173

134:                                              ; preds = %120, %102, %130
  %135 = phi i32 [ %121, %130 ], [ %89, %102 ], [ %121, %120 ]
  %136 = phi i32 [ %122, %130 ], [ %74, %102 ], [ %122, %120 ]
  %137 = phi i32 [ %123, %130 ], [ 0, %102 ], [ %123, %120 ]
  %138 = phi i32 [ %124, %130 ], [ %99, %102 ], [ %124, %120 ]
  %139 = phi i1 [ %126, %130 ], [ %104, %102 ], [ true, %120 ]
  %140 = phi i1 [ %128, %130 ], [ false, %102 ], [ true, %120 ]
  %141 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %142 = load i16, ptr %141, align 2, !tbaa !73
  %143 = sext i16 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %26, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !48
  %146 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %147 = load i16, ptr %146, align 4, !tbaa !74
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds i16, ptr %145, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !75
  %151 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %150, ptr %151, align 2, !tbaa !75
  %152 = getelementptr inbounds i16, ptr %149, i64 1
  %153 = load i16, ptr %152, align 2, !tbaa !75
  %154 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %153, ptr %154, align 4, !tbaa !75
  %155 = getelementptr inbounds i16, ptr %149, i64 2
  %156 = load i16, ptr %155, align 2, !tbaa !75
  %157 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %156, ptr %157, align 2, !tbaa !75
  %158 = getelementptr inbounds i16, ptr %149, i64 3
  %159 = load i16, ptr %158, align 2, !tbaa !75
  %160 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %159, ptr %160, align 8, !tbaa !75
  %161 = getelementptr inbounds i16, ptr %149, i64 4
  %162 = load i16, ptr %161, align 2, !tbaa !75
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %162, ptr %163, align 2, !tbaa !75
  %164 = getelementptr inbounds i16, ptr %149, i64 5
  %165 = load i16, ptr %164, align 2, !tbaa !75
  %166 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %165, ptr %166, align 4, !tbaa !75
  %167 = getelementptr inbounds i16, ptr %149, i64 6
  %168 = load i16, ptr %167, align 2, !tbaa !75
  %169 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %168, ptr %169, align 2, !tbaa !75
  %170 = getelementptr inbounds i16, ptr %149, i64 7
  %171 = load i16, ptr %170, align 2, !tbaa !75
  %172 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %171, ptr %172, align 16, !tbaa !75
  br label %185

173:                                              ; preds = %102, %130
  %174 = phi i32 [ %122, %130 ], [ %74, %102 ]
  %175 = phi i32 [ %123, %130 ], [ 0, %102 ]
  %176 = phi i32 [ %124, %130 ], [ %99, %102 ]
  %177 = phi i1 [ %126, %130 ], [ %104, %102 ]
  %178 = phi i1 [ %128, %130 ], [ false, %102 ]
  %179 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %180 = load i32, ptr %179, align 4, !tbaa !76
  %181 = trunc i32 %180 to i16
  %182 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %183 = insertelement <8 x i16> poison, i16 %181, i64 0
  %184 = shufflevector <8 x i16> %183, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %184, ptr %182, align 2, !tbaa !75
  br label %185

185:                                              ; preds = %173, %134
  %186 = phi i16 [ %181, %173 ], [ %171, %134 ]
  %187 = phi i32 [ 0, %173 ], [ %135, %134 ]
  %188 = phi i32 [ %174, %173 ], [ %136, %134 ]
  %189 = phi i32 [ %175, %173 ], [ %137, %134 ]
  %190 = phi i32 [ %176, %173 ], [ %138, %134 ]
  %191 = phi i1 [ %177, %173 ], [ %139, %134 ]
  %192 = phi i1 [ %178, %173 ], [ %140, %134 ]
  %193 = icmp eq i32 %190, 0
  br i1 %193, label %227, label %194

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %196 = load i16, ptr %195, align 2, !tbaa !73
  %197 = sext i16 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %26, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !48
  %200 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %201 = load i16, ptr %200, align 4, !tbaa !74
  %202 = sext i16 %201 to i64
  %203 = getelementptr inbounds i16, ptr %199, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !75
  %205 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %204, ptr %205, align 2, !tbaa !75
  %206 = getelementptr inbounds i16, ptr %203, i64 1
  %207 = load i16, ptr %206, align 2, !tbaa !75
  %208 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %207, ptr %208, align 4, !tbaa !75
  %209 = getelementptr inbounds i16, ptr %203, i64 2
  %210 = load i16, ptr %209, align 2, !tbaa !75
  %211 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %210, ptr %211, align 2, !tbaa !75
  %212 = getelementptr inbounds i16, ptr %203, i64 3
  %213 = load i16, ptr %212, align 2, !tbaa !75
  %214 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %213, ptr %214, align 8, !tbaa !75
  %215 = getelementptr inbounds i16, ptr %203, i64 4
  %216 = load i16, ptr %215, align 2, !tbaa !75
  %217 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %216, ptr %217, align 2, !tbaa !75
  %218 = getelementptr inbounds i16, ptr %203, i64 5
  %219 = load i16, ptr %218, align 2, !tbaa !75
  %220 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %219, ptr %220, align 4, !tbaa !75
  %221 = getelementptr inbounds i16, ptr %203, i64 6
  %222 = load i16, ptr %221, align 2, !tbaa !75
  %223 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %222, ptr %223, align 2, !tbaa !75
  %224 = getelementptr inbounds i16, ptr %203, i64 7
  %225 = load i16, ptr %224, align 2, !tbaa !75
  %226 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %225, ptr %226, align 16, !tbaa !75
  br label %231

227:                                              ; preds = %185
  %228 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %229 = insertelement <8 x i16> poison, i16 %186, i64 0
  %230 = shufflevector <8 x i16> %229, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %230, ptr %228, align 2, !tbaa !75
  br label %231

231:                                              ; preds = %227, %194
  br i1 %191, label %232, label %320

232:                                              ; preds = %231
  %233 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %234 = load i16, ptr %233, align 2, !tbaa !73
  %235 = sext i16 %234 to i64
  %236 = getelementptr inbounds ptr, ptr %26, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !48
  %238 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %239 = load i16, ptr %238, align 4, !tbaa !74
  %240 = sext i16 %239 to i64
  %241 = getelementptr inbounds i16, ptr %237, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !75
  %243 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %242, ptr %243, align 2, !tbaa !75
  %244 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 5
  %245 = load i16, ptr %244, align 2, !tbaa !73
  %246 = sext i16 %245 to i64
  %247 = getelementptr inbounds ptr, ptr %26, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !48
  %249 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 4
  %250 = load i16, ptr %249, align 4, !tbaa !74
  %251 = sext i16 %250 to i64
  %252 = getelementptr inbounds i16, ptr %248, i64 %251
  %253 = load i16, ptr %252, align 2, !tbaa !75
  %254 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %253, ptr %254, align 4, !tbaa !75
  %255 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 5
  %256 = load i16, ptr %255, align 2, !tbaa !73
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds ptr, ptr %26, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !48
  %260 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 4
  %261 = load i16, ptr %260, align 4, !tbaa !74
  %262 = sext i16 %261 to i64
  %263 = getelementptr inbounds i16, ptr %259, i64 %262
  %264 = load i16, ptr %263, align 2, !tbaa !75
  %265 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %264, ptr %265, align 2, !tbaa !75
  %266 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 5
  %267 = load i16, ptr %266, align 2, !tbaa !73
  %268 = sext i16 %267 to i64
  %269 = getelementptr inbounds ptr, ptr %26, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !48
  %271 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 4
  %272 = load i16, ptr %271, align 4, !tbaa !74
  %273 = sext i16 %272 to i64
  %274 = getelementptr inbounds i16, ptr %270, i64 %273
  %275 = load i16, ptr %274, align 2, !tbaa !75
  %276 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %275, ptr %276, align 8, !tbaa !75
  %277 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 5
  %278 = load i16, ptr %277, align 2, !tbaa !73
  %279 = sext i16 %278 to i64
  %280 = getelementptr inbounds ptr, ptr %26, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !48
  %282 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 4
  %283 = load i16, ptr %282, align 4, !tbaa !74
  %284 = sext i16 %283 to i64
  %285 = getelementptr inbounds i16, ptr %281, i64 %284
  %286 = load i16, ptr %285, align 2, !tbaa !75
  %287 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %286, ptr %287, align 2, !tbaa !75
  %288 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 5
  %289 = load i16, ptr %288, align 2, !tbaa !73
  %290 = sext i16 %289 to i64
  %291 = getelementptr inbounds ptr, ptr %26, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !48
  %293 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 4
  %294 = load i16, ptr %293, align 4, !tbaa !74
  %295 = sext i16 %294 to i64
  %296 = getelementptr inbounds i16, ptr %292, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !75
  %298 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %297, ptr %298, align 4, !tbaa !75
  %299 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 5
  %300 = load i16, ptr %299, align 2, !tbaa !73
  %301 = sext i16 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %26, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !48
  %304 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 4
  %305 = load i16, ptr %304, align 4, !tbaa !74
  %306 = sext i16 %305 to i64
  %307 = getelementptr inbounds i16, ptr %303, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !75
  %309 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %308, ptr %309, align 2, !tbaa !75
  %310 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 5
  %311 = load i16, ptr %310, align 2, !tbaa !73
  %312 = sext i16 %311 to i64
  %313 = getelementptr inbounds ptr, ptr %26, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !48
  %315 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 4
  %316 = load i16, ptr %315, align 4, !tbaa !74
  %317 = sext i16 %316 to i64
  %318 = getelementptr inbounds i16, ptr %314, i64 %317
  %319 = load i16, ptr %318, align 2, !tbaa !75
  br label %330

320:                                              ; preds = %231
  %321 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %322 = load i32, ptr %321, align 4, !tbaa !76
  %323 = trunc i32 %322 to i16
  %324 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %323, ptr %324, align 2, !tbaa !75
  %325 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %323, ptr %325, align 4, !tbaa !75
  %326 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %323, ptr %326, align 2, !tbaa !75
  %327 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %328 = insertelement <4 x i16> poison, i16 %323, i64 0
  %329 = shufflevector <4 x i16> %328, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %329, ptr %327, align 2, !tbaa !75
  br label %330

330:                                              ; preds = %320, %232
  %331 = phi i16 [ %319, %232 ], [ %323, %320 ]
  %332 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %331, ptr %332, align 16
  br i1 %192, label %333, label %344

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %335 = load i16, ptr %334, align 2, !tbaa !73
  %336 = sext i16 %335 to i64
  %337 = getelementptr inbounds ptr, ptr %26, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !48
  %339 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %340 = load i16, ptr %339, align 4, !tbaa !74
  %341 = sext i16 %340 to i64
  %342 = getelementptr inbounds i16, ptr %338, i64 %341
  %343 = load i16, ptr %342, align 2, !tbaa !75
  br label %348

344:                                              ; preds = %330
  %345 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %346 = load i32, ptr %345, align 4, !tbaa !76
  %347 = trunc i32 %346 to i16
  br label %348

348:                                              ; preds = %344, %333
  %349 = phi i16 [ %347, %344 ], [ %343, %333 ]
  %350 = sext i32 %3 to i64
  store i16 %349, ptr %5, align 16, !tbaa !75
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %189, i32 noundef %187, i32 noundef %188) #7
  %351 = load i16, ptr %332, align 16, !tbaa !75
  %352 = zext i16 %351 to i32
  %353 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %354 = load i16, ptr %353, align 4, !tbaa !75
  %355 = zext i16 %354 to i32
  %356 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %357 = load i16, ptr %356, align 2, !tbaa !75
  %358 = zext i16 %357 to i32
  %359 = shl nuw nsw i32 %358, 1
  %360 = add nuw nsw i32 %355, 2
  %361 = add nuw nsw i32 %360, %352
  %362 = add nuw nsw i32 %361, %359
  %363 = lshr i32 %362, 2
  %364 = trunc i32 %363 to i16
  %365 = shl nuw nsw i32 %355, 1
  %366 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %367 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %368 = load <8 x i16>, ptr %367, align 2
  %369 = shufflevector <8 x i16> %368, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %370 = load i16, ptr %5, align 16, !tbaa !75
  %371 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %372 = load <4 x i16>, ptr %371, align 2
  %373 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %374 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %375 = load i16, ptr %374, align 2, !tbaa !75
  %376 = zext i16 %375 to i32
  %377 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  %378 = load i16, ptr %377, align 16, !tbaa !75
  %379 = zext i16 %378 to i32
  %380 = getelementptr inbounds ptr, ptr %31, i64 %350
  %381 = load ptr, ptr %380, align 8, !tbaa !48
  %382 = sext i32 %2 to i64
  %383 = getelementptr inbounds i16, ptr %381, i64 %382
  %384 = getelementptr inbounds i8, ptr %383, i64 2
  %385 = getelementptr inbounds i8, ptr %383, i64 4
  %386 = getelementptr inbounds i8, ptr %383, i64 6
  %387 = getelementptr inbounds i8, ptr %383, i64 8
  %388 = load <4 x i16>, ptr %373, align 2, !tbaa !75
  %389 = zext <4 x i16> %388 to <4 x i32>
  %390 = shufflevector <4 x i32> %389, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %391 = insertelement <4 x i32> %390, i32 %376, i64 3
  %392 = shl nuw nsw <4 x i32> %391, <i32 1, i32 1, i32 1, i32 1>
  %393 = add nuw nsw <4 x i32> %389, <i32 2, i32 2, i32 2, i32 2>
  %394 = shufflevector <4 x i32> %391, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %395 = insertelement <4 x i32> %394, i32 %379, i64 3
  %396 = add nuw nsw <4 x i32> %393, %395
  %397 = add nuw nsw <4 x i32> %396, %392
  %398 = lshr <4 x i32> %397, <i32 2, i32 2, i32 2, i32 2>
  %399 = trunc <4 x i32> %398 to <4 x i16>
  %400 = getelementptr ptr, ptr %380, i64 1
  %401 = insertelement <4 x i16> %369, i16 %370, i64 1
  %402 = shufflevector <4 x i16> %401, <4 x i16> %372, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %403 = zext <4 x i16> %402 to <4 x i32>
  %404 = add nuw nsw <4 x i32> %403, <i32 2, i32 2, i32 2, i32 2>
  %405 = shufflevector <4 x i32> %389, <4 x i32> %403, <4 x i32> <i32 5, i32 6, i32 7, i32 0>
  %406 = shl nuw nsw <4 x i32> %405, <i32 1, i32 1, i32 1, i32 1>
  %407 = shufflevector <4 x i32> %389, <4 x i32> %403, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  %408 = add nuw nsw <4 x i32> %404, %407
  %409 = add nuw nsw <4 x i32> %408, %406
  %410 = lshr <4 x i32> %409, <i32 2, i32 2, i32 2, i32 2>
  %411 = trunc <4 x i32> %410 to <4 x i16>
  %412 = extractelement <4 x i16> %399, i64 0
  %413 = shufflevector <4 x i16> %399, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  %414 = extractelement <4 x i16> %399, i64 2
  %415 = getelementptr ptr, ptr %380, i64 2
  %416 = getelementptr ptr, ptr %380, i64 3
  %417 = getelementptr ptr, ptr %380, i64 4
  %418 = load <4 x i16>, ptr %366, align 4, !tbaa !75
  %419 = zext <4 x i16> %418 to <4 x i32>
  %420 = add nuw nsw <4 x i32> %419, <i32 2, i32 2, i32 2, i32 2>
  %421 = extractelement <4 x i32> %420, i64 3
  %422 = add nuw nsw i32 %421, %358
  %423 = add nuw nsw i32 %422, %365
  %424 = lshr i32 %423, 2
  %425 = trunc i32 %424 to i16
  %426 = extractelement <4 x i32> %419, i64 3
  %427 = shl nuw nsw i32 %426, 1
  %428 = extractelement <4 x i32> %419, i64 2
  %429 = add nuw nsw i32 %360, %428
  %430 = add nuw nsw i32 %429, %427
  %431 = lshr i32 %430, 2
  %432 = trunc i32 %431 to i16
  store <4 x i16> %399, ptr %387, align 2
  %433 = shufflevector <4 x i32> %403, <4 x i32> %419, <4 x i32> <i32 6, i32 5, i32 4, i32 0>
  %434 = shl nuw nsw <4 x i32> %433, <i32 1, i32 1, i32 1, i32 1>
  %435 = shufflevector <4 x i32> %403, <4 x i32> %419, <4 x i32> <i32 1, i32 0, i32 4, i32 5>
  %436 = add nuw nsw <4 x i32> %420, %435
  %437 = shufflevector <4 x i32> %436, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %438 = add nuw nsw <4 x i32> %437, %434
  %439 = lshr <4 x i32> %438, <i32 2, i32 2, i32 2, i32 2>
  %440 = trunc <4 x i32> %439 to <4 x i16>
  %441 = extractelement <4 x i16> %411, i64 0
  store i16 %441, ptr %383, align 2
  %442 = extractelement <4 x i16> %411, i64 1
  store i16 %442, ptr %384, align 2
  %443 = extractelement <4 x i16> %411, i64 2
  store i16 %443, ptr %385, align 2
  %444 = extractelement <4 x i16> %411, i64 3
  store i16 %444, ptr %386, align 2
  %445 = load ptr, ptr %400, align 8, !tbaa !48
  %446 = getelementptr inbounds i16, ptr %445, i64 %382
  %447 = extractelement <4 x i16> %440, i64 3
  store i16 %447, ptr %446, align 2
  %448 = getelementptr inbounds i8, ptr %446, i64 2
  store <4 x i16> %411, ptr %448, align 2
  %449 = getelementptr inbounds i8, ptr %446, i64 10
  store <2 x i16> %413, ptr %449, align 2
  %450 = getelementptr inbounds i8, ptr %446, i64 14
  store i16 %414, ptr %450, align 2
  %451 = load ptr, ptr %415, align 8, !tbaa !48
  %452 = getelementptr inbounds i16, ptr %451, i64 %382
  %453 = extractelement <4 x i16> %440, i64 2
  store i16 %453, ptr %452, align 2
  %454 = getelementptr inbounds i8, ptr %452, i64 2
  store i16 %447, ptr %454, align 2
  %455 = getelementptr inbounds i8, ptr %452, i64 4
  store <4 x i16> %411, ptr %455, align 2
  %456 = getelementptr inbounds i8, ptr %452, i64 12
  store <2 x i16> %413, ptr %456, align 2
  %457 = load ptr, ptr %416, align 8, !tbaa !48
  %458 = getelementptr inbounds i16, ptr %457, i64 %382
  %459 = extractelement <4 x i16> %440, i64 1
  store i16 %459, ptr %458, align 2
  %460 = getelementptr inbounds i8, ptr %458, i64 2
  store i16 %453, ptr %460, align 2
  %461 = getelementptr inbounds i8, ptr %458, i64 4
  store i16 %447, ptr %461, align 2
  %462 = getelementptr inbounds i8, ptr %458, i64 6
  store <4 x i16> %411, ptr %462, align 2
  %463 = getelementptr inbounds i8, ptr %458, i64 14
  store i16 %412, ptr %463, align 2
  %464 = load ptr, ptr %417, align 8, !tbaa !48
  %465 = getelementptr inbounds i16, ptr %464, i64 %382
  store <4 x i16> %440, ptr %465, align 2
  %466 = getelementptr inbounds i8, ptr %465, i64 8
  store <4 x i16> %411, ptr %466, align 2
  %467 = getelementptr ptr, ptr %380, i64 5
  %468 = load ptr, ptr %467, align 8, !tbaa !48
  %469 = getelementptr inbounds i16, ptr %468, i64 %382
  store i16 %432, ptr %469, align 2
  %470 = getelementptr inbounds i8, ptr %469, i64 2
  store <4 x i16> %440, ptr %470, align 2
  %471 = getelementptr inbounds i8, ptr %469, i64 10
  %472 = shufflevector <4 x i16> %411, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %472, ptr %471, align 2
  %473 = getelementptr inbounds i8, ptr %469, i64 14
  store i16 %443, ptr %473, align 2
  %474 = getelementptr ptr, ptr %380, i64 6
  %475 = load ptr, ptr %474, align 8, !tbaa !48
  %476 = getelementptr inbounds i16, ptr %475, i64 %382
  store i16 %425, ptr %476, align 2
  %477 = getelementptr inbounds i8, ptr %476, i64 2
  store i16 %432, ptr %477, align 2
  %478 = getelementptr inbounds i8, ptr %476, i64 4
  store <4 x i16> %440, ptr %478, align 2
  %479 = getelementptr inbounds i8, ptr %476, i64 12
  store <2 x i16> %472, ptr %479, align 2
  %480 = getelementptr ptr, ptr %380, i64 7
  %481 = load ptr, ptr %480, align 8, !tbaa !48
  %482 = getelementptr inbounds i16, ptr %481, i64 %382
  store i16 %364, ptr %482, align 2
  %483 = getelementptr inbounds i8, ptr %482, i64 2
  store i16 %425, ptr %483, align 2
  %484 = getelementptr inbounds i8, ptr %482, i64 4
  store i16 %432, ptr %484, align 2
  %485 = getelementptr inbounds i8, ptr %482, i64 6
  store <4 x i16> %440, ptr %485, align 2
  %486 = getelementptr inbounds i8, ptr %482, i64 14
  store i16 %441, ptr %486, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_diag_down_left_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !91 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  br label %34

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %35
  %37 = trunc i64 %35 to i32
  %38 = add i32 %37, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %38, ptr noundef nonnull %32, ptr noundef nonnull %36) #9
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, 8
  br i1 %40, label %41, label %34, !llvm.loop !92

41:                                               ; preds = %34
  %42 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %43 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %43, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %44 = load i32, ptr %8, align 4, !tbaa !60
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %2, 8
  %47 = icmp ne i32 %3, 8
  %48 = or i1 %46, %47
  %49 = and i1 %48, %45
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %8, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %52, i64 0, i32 30
  %54 = load i32, ptr %53, align 4, !tbaa !68
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %110, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  br label %58

58:                                               ; preds = %56, %72
  %59 = phi i64 [ 0, %56 ], [ %75, %72 ]
  %60 = phi i32 [ 1, %56 ], [ %74, %72 ]
  %61 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59
  %62 = load i32, ptr %61, align 16, !tbaa !60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %57, align 8, !tbaa !70
  %66 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !71
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %65, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !49
  %71 = sext i8 %70 to i32
  br label %72

72:                                               ; preds = %58, %64
  %73 = phi i32 [ %71, %64 ], [ 0, %58 ]
  %74 = and i32 %73, %60
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %58, !llvm.loop !93

77:                                               ; preds = %72
  %78 = load i32, ptr %7, align 4, !tbaa !60
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %57, align 8, !tbaa !70
  %82 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !71
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !49
  %87 = sext i8 %86 to i32
  br label %88

88:                                               ; preds = %77, %80
  %89 = phi i32 [ %87, %80 ], [ 0, %77 ]
  br i1 %49, label %90, label %98

90:                                               ; preds = %88
  %91 = load ptr, ptr %57, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !71
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !49
  %97 = sext i8 %96 to i32
  br label %98

98:                                               ; preds = %88, %90
  %99 = phi i32 [ %97, %90 ], [ 0, %88 ]
  %100 = load i32, ptr %9, align 4, !tbaa !60
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %57, align 8, !tbaa !70
  %104 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !71
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %103, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !49
  %109 = sext i8 %108 to i32
  br label %114

110:                                              ; preds = %41
  %111 = load i32, ptr %6, align 16, !tbaa !60
  %112 = load i32, ptr %7, align 4, !tbaa !60
  %113 = load i32, ptr %9, align 4, !tbaa !60
  br label %114

114:                                              ; preds = %102, %98, %110
  %115 = phi i32 [ %112, %110 ], [ %89, %98 ], [ %89, %102 ]
  %116 = phi i32 [ %111, %110 ], [ %74, %98 ], [ %74, %102 ]
  %117 = phi i32 [ %113, %110 ], [ 0, %98 ], [ %109, %102 ]
  %118 = phi i32 [ %50, %110 ], [ %99, %98 ], [ %99, %102 ]
  %119 = icmp eq i32 %115, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %122 = load i32, ptr %121, align 4, !tbaa !82
  %123 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %122) #7
  %124 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %125 = load i32, ptr %124, align 4, !tbaa !76
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %128 = insertelement <8 x i16> poison, i16 %126, i64 0
  %129 = shufflevector <8 x i16> %128, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %129, ptr %127, align 2, !tbaa !75
  br label %163

130:                                              ; preds = %114
  %131 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %132 = load i16, ptr %131, align 2, !tbaa !73
  %133 = sext i16 %132 to i64
  %134 = getelementptr inbounds ptr, ptr %26, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !48
  %136 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %137 = load i16, ptr %136, align 4, !tbaa !74
  %138 = sext i16 %137 to i64
  %139 = getelementptr inbounds i16, ptr %135, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !75
  %141 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %140, ptr %141, align 2, !tbaa !75
  %142 = getelementptr inbounds i16, ptr %139, i64 1
  %143 = load i16, ptr %142, align 2, !tbaa !75
  %144 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %143, ptr %144, align 4, !tbaa !75
  %145 = getelementptr inbounds i16, ptr %139, i64 2
  %146 = load i16, ptr %145, align 2, !tbaa !75
  %147 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %146, ptr %147, align 2, !tbaa !75
  %148 = getelementptr inbounds i16, ptr %139, i64 3
  %149 = load i16, ptr %148, align 2, !tbaa !75
  %150 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %149, ptr %150, align 8, !tbaa !75
  %151 = getelementptr inbounds i16, ptr %139, i64 4
  %152 = load i16, ptr %151, align 2, !tbaa !75
  %153 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %152, ptr %153, align 2, !tbaa !75
  %154 = getelementptr inbounds i16, ptr %139, i64 5
  %155 = load i16, ptr %154, align 2, !tbaa !75
  %156 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %155, ptr %156, align 4, !tbaa !75
  %157 = getelementptr inbounds i16, ptr %139, i64 6
  %158 = load i16, ptr %157, align 2, !tbaa !75
  %159 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %158, ptr %159, align 2, !tbaa !75
  %160 = getelementptr inbounds i16, ptr %139, i64 7
  %161 = load i16, ptr %160, align 2, !tbaa !75
  %162 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %161, ptr %162, align 16, !tbaa !75
  br label %163

163:                                              ; preds = %120, %130
  %164 = phi i16 [ %126, %120 ], [ %161, %130 ]
  %165 = icmp eq i32 %118, 0
  br i1 %165, label %199, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %168 = load i16, ptr %167, align 2, !tbaa !73
  %169 = sext i16 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %26, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !48
  %172 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %173 = load i16, ptr %172, align 4, !tbaa !74
  %174 = sext i16 %173 to i64
  %175 = getelementptr inbounds i16, ptr %171, i64 %174
  %176 = load i16, ptr %175, align 2, !tbaa !75
  %177 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %176, ptr %177, align 2, !tbaa !75
  %178 = getelementptr inbounds i16, ptr %175, i64 1
  %179 = load i16, ptr %178, align 2, !tbaa !75
  %180 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %179, ptr %180, align 4, !tbaa !75
  %181 = getelementptr inbounds i16, ptr %175, i64 2
  %182 = load i16, ptr %181, align 2, !tbaa !75
  %183 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %182, ptr %183, align 2, !tbaa !75
  %184 = getelementptr inbounds i16, ptr %175, i64 3
  %185 = load i16, ptr %184, align 2, !tbaa !75
  %186 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %185, ptr %186, align 8, !tbaa !75
  %187 = getelementptr inbounds i16, ptr %175, i64 4
  %188 = load i16, ptr %187, align 2, !tbaa !75
  %189 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %188, ptr %189, align 2, !tbaa !75
  %190 = getelementptr inbounds i16, ptr %175, i64 5
  %191 = load i16, ptr %190, align 2, !tbaa !75
  %192 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %191, ptr %192, align 4, !tbaa !75
  %193 = getelementptr inbounds i16, ptr %175, i64 6
  %194 = load i16, ptr %193, align 2, !tbaa !75
  %195 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %194, ptr %195, align 2, !tbaa !75
  %196 = getelementptr inbounds i16, ptr %175, i64 7
  %197 = load i16, ptr %196, align 2, !tbaa !75
  %198 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %197, ptr %198, align 16, !tbaa !75
  br label %203

199:                                              ; preds = %163
  %200 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %201 = insertelement <8 x i16> poison, i16 %164, i64 0
  %202 = shufflevector <8 x i16> %201, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %202, ptr %200, align 2, !tbaa !75
  br label %203

203:                                              ; preds = %199, %166
  %204 = icmp eq i32 %116, 0
  br i1 %204, label %294, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %207 = load i16, ptr %206, align 2, !tbaa !73
  %208 = sext i16 %207 to i64
  %209 = getelementptr inbounds ptr, ptr %26, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !48
  %211 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %212 = load i16, ptr %211, align 4, !tbaa !74
  %213 = sext i16 %212 to i64
  %214 = getelementptr inbounds i16, ptr %210, i64 %213
  %215 = load i16, ptr %214, align 2, !tbaa !75
  %216 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %215, ptr %216, align 2, !tbaa !75
  %217 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 5
  %218 = load i16, ptr %217, align 2, !tbaa !73
  %219 = sext i16 %218 to i64
  %220 = getelementptr inbounds ptr, ptr %26, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !48
  %222 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 4
  %223 = load i16, ptr %222, align 4, !tbaa !74
  %224 = sext i16 %223 to i64
  %225 = getelementptr inbounds i16, ptr %221, i64 %224
  %226 = load i16, ptr %225, align 2, !tbaa !75
  %227 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %226, ptr %227, align 4, !tbaa !75
  %228 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 5
  %229 = load i16, ptr %228, align 2, !tbaa !73
  %230 = sext i16 %229 to i64
  %231 = getelementptr inbounds ptr, ptr %26, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !48
  %233 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 4
  %234 = load i16, ptr %233, align 4, !tbaa !74
  %235 = sext i16 %234 to i64
  %236 = getelementptr inbounds i16, ptr %232, i64 %235
  %237 = load i16, ptr %236, align 2, !tbaa !75
  %238 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %237, ptr %238, align 2, !tbaa !75
  %239 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 5
  %240 = load i16, ptr %239, align 2, !tbaa !73
  %241 = sext i16 %240 to i64
  %242 = getelementptr inbounds ptr, ptr %26, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !48
  %244 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 4
  %245 = load i16, ptr %244, align 4, !tbaa !74
  %246 = sext i16 %245 to i64
  %247 = getelementptr inbounds i16, ptr %243, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !75
  %249 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %248, ptr %249, align 8, !tbaa !75
  %250 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 5
  %251 = load i16, ptr %250, align 2, !tbaa !73
  %252 = sext i16 %251 to i64
  %253 = getelementptr inbounds ptr, ptr %26, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !48
  %255 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 4
  %256 = load i16, ptr %255, align 4, !tbaa !74
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds i16, ptr %254, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !75
  %260 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %259, ptr %260, align 2, !tbaa !75
  %261 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 5
  %262 = load i16, ptr %261, align 2, !tbaa !73
  %263 = sext i16 %262 to i64
  %264 = getelementptr inbounds ptr, ptr %26, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !48
  %266 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 4
  %267 = load i16, ptr %266, align 4, !tbaa !74
  %268 = sext i16 %267 to i64
  %269 = getelementptr inbounds i16, ptr %265, i64 %268
  %270 = load i16, ptr %269, align 2, !tbaa !75
  %271 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %270, ptr %271, align 4, !tbaa !75
  %272 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 5
  %273 = load i16, ptr %272, align 2, !tbaa !73
  %274 = sext i16 %273 to i64
  %275 = getelementptr inbounds ptr, ptr %26, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !48
  %277 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 4
  %278 = load i16, ptr %277, align 4, !tbaa !74
  %279 = sext i16 %278 to i64
  %280 = getelementptr inbounds i16, ptr %276, i64 %279
  %281 = load i16, ptr %280, align 2, !tbaa !75
  %282 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %281, ptr %282, align 2, !tbaa !75
  %283 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 5
  %284 = load i16, ptr %283, align 2, !tbaa !73
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds ptr, ptr %26, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !48
  %288 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 4
  %289 = load i16, ptr %288, align 4, !tbaa !74
  %290 = sext i16 %289 to i64
  %291 = getelementptr inbounds i16, ptr %287, i64 %290
  %292 = load i16, ptr %291, align 2, !tbaa !75
  %293 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %292, ptr %293, align 16, !tbaa !75
  br label %301

294:                                              ; preds = %203
  %295 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %296 = load i32, ptr %295, align 4, !tbaa !76
  %297 = trunc i32 %296 to i16
  %298 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %299 = insertelement <8 x i16> poison, i16 %297, i64 0
  %300 = shufflevector <8 x i16> %299, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %300, ptr %298, align 2, !tbaa !75
  br label %301

301:                                              ; preds = %294, %205
  %302 = icmp eq i32 %117, 0
  br i1 %302, label %314, label %303

303:                                              ; preds = %301
  %304 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %305 = load i16, ptr %304, align 2, !tbaa !73
  %306 = sext i16 %305 to i64
  %307 = getelementptr inbounds ptr, ptr %26, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !48
  %309 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %310 = load i16, ptr %309, align 4, !tbaa !74
  %311 = sext i16 %310 to i64
  %312 = getelementptr inbounds i16, ptr %308, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !75
  br label %318

314:                                              ; preds = %301
  %315 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %316 = load i32, ptr %315, align 4, !tbaa !76
  %317 = trunc i32 %316 to i16
  br label %318

318:                                              ; preds = %314, %303
  %319 = phi i16 [ %317, %314 ], [ %313, %303 ]
  %320 = sext i32 %3 to i64
  store i16 %319, ptr %5, align 16, !tbaa !75
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %117, i32 noundef %115, i32 noundef %116) #7
  %321 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %322 = load i16, ptr %321, align 2, !tbaa !75
  %323 = zext i16 %322 to i32
  %324 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %325 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %326 = load i16, ptr %325, align 4, !tbaa !75
  %327 = zext i16 %326 to i32
  %328 = shl nuw nsw i32 %327, 1
  %329 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  %330 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  %331 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  %332 = load i16, ptr %331, align 2, !tbaa !75
  %333 = zext i16 %332 to i32
  %334 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  %335 = load i16, ptr %334, align 16, !tbaa !75
  %336 = zext i16 %335 to i32
  %337 = shl nuw nsw i32 %333, 1
  %338 = mul nuw nsw i32 %336, 3
  %339 = add nuw nsw i32 %333, 2
  %340 = add nuw nsw i32 %339, %338
  %341 = lshr i32 %340, 2
  %342 = trunc i32 %341 to i16
  %343 = getelementptr inbounds ptr, ptr %31, i64 %320
  %344 = load ptr, ptr %343, align 8, !tbaa !48
  %345 = sext i32 %2 to i64
  %346 = getelementptr inbounds i16, ptr %344, i64 %345
  %347 = getelementptr inbounds i8, ptr %346, i64 2
  %348 = getelementptr inbounds i8, ptr %346, i64 4
  %349 = getelementptr inbounds i8, ptr %346, i64 6
  %350 = getelementptr inbounds i8, ptr %346, i64 8
  %351 = getelementptr inbounds i8, ptr %346, i64 10
  %352 = getelementptr inbounds i8, ptr %346, i64 12
  %353 = getelementptr inbounds i8, ptr %346, i64 14
  %354 = getelementptr ptr, ptr %343, i64 1
  %355 = getelementptr ptr, ptr %343, i64 2
  %356 = load <8 x i16>, ptr %324, align 2, !tbaa !75
  %357 = zext <8 x i16> %356 to <8 x i32>
  %358 = add nuw nsw <8 x i32> %357, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %359 = extractelement <8 x i32> %358, i64 0
  %360 = add nuw nsw i32 %359, %323
  %361 = add nuw nsw i32 %360, %328
  %362 = lshr i32 %361, 2
  %363 = trunc i32 %362 to i16
  %364 = extractelement <8 x i32> %357, i64 0
  %365 = shl nuw nsw i32 %364, 1
  %366 = extractelement <8 x i32> %358, i64 1
  %367 = add nuw nsw i32 %366, %327
  %368 = add nuw nsw i32 %367, %365
  %369 = lshr i32 %368, 2
  %370 = trunc i32 %369 to i16
  %371 = shufflevector <8 x i32> %357, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %372 = getelementptr ptr, ptr %343, i64 3
  %373 = getelementptr ptr, ptr %343, i64 4
  %374 = load <2 x i16>, ptr %329, align 2, !tbaa !75
  %375 = zext <2 x i16> %374 to <2 x i32>
  %376 = load <2 x i16>, ptr %330, align 2, !tbaa !75
  %377 = zext <2 x i16> %376 to <2 x i32>
  %378 = shufflevector <2 x i32> %375, <2 x i32> %377, <2 x i32> <i32 1, i32 2>
  %379 = shl nuw nsw <2 x i32> %378, <i32 1, i32 1>
  %380 = add nuw nsw <2 x i32> %375, <i32 2, i32 2>
  %381 = add nuw nsw <2 x i32> %380, %377
  %382 = add nuw nsw <2 x i32> %381, %379
  %383 = lshr <2 x i32> %382, <i32 2, i32 2>
  %384 = trunc <2 x i32> %383 to <2 x i16>
  %385 = extractelement <2 x i32> %377, i64 1
  %386 = shl nuw nsw i32 %385, 1
  %387 = extractelement <2 x i32> %377, i64 0
  %388 = add nuw nsw i32 %387, 2
  %389 = add nuw nsw i32 %388, %333
  %390 = add nuw nsw i32 %389, %386
  %391 = lshr i32 %390, 2
  %392 = trunc i32 %391 to i16
  %393 = add nuw nsw i32 %385, 2
  %394 = add nuw nsw i32 %393, %336
  %395 = add nuw nsw i32 %394, %337
  %396 = lshr i32 %395, 2
  %397 = trunc i32 %396 to i16
  %398 = shufflevector <2 x i32> %375, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %399 = shufflevector <8 x i32> %371, <8 x i32> %398, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %400 = shl nuw nsw <8 x i32> %399, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %401 = shufflevector <8 x i32> %357, <8 x i32> %399, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 13, i32 14, i32 poison, i32 poison>
  %402 = shufflevector <8 x i32> %401, <8 x i32> %398, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %403 = add nuw nsw <8 x i32> %358, %402
  %404 = add nuw nsw <8 x i32> %403, %400
  %405 = lshr <8 x i32> %404, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %406 = trunc <8 x i32> %405 to <8 x i16>
  store i16 %363, ptr %346, align 2
  store i16 %370, ptr %347, align 2
  %407 = extractelement <8 x i16> %406, i64 0
  store i16 %407, ptr %348, align 2
  %408 = extractelement <8 x i16> %406, i64 1
  store i16 %408, ptr %349, align 2
  %409 = extractelement <8 x i16> %406, i64 2
  store i16 %409, ptr %350, align 2
  %410 = extractelement <8 x i16> %406, i64 3
  store i16 %410, ptr %351, align 2
  %411 = extractelement <8 x i16> %406, i64 4
  store i16 %411, ptr %352, align 2
  %412 = extractelement <8 x i16> %406, i64 5
  store i16 %412, ptr %353, align 2
  %413 = load ptr, ptr %354, align 8, !tbaa !48
  %414 = getelementptr inbounds i16, ptr %413, i64 %345
  store i16 %370, ptr %414, align 2
  %415 = getelementptr inbounds i8, ptr %414, i64 2
  store i16 %407, ptr %415, align 2
  %416 = getelementptr inbounds i8, ptr %414, i64 4
  store i16 %408, ptr %416, align 2
  %417 = getelementptr inbounds i8, ptr %414, i64 6
  store i16 %409, ptr %417, align 2
  %418 = getelementptr inbounds i8, ptr %414, i64 8
  store i16 %410, ptr %418, align 2
  %419 = getelementptr inbounds i8, ptr %414, i64 10
  store i16 %411, ptr %419, align 2
  %420 = getelementptr inbounds i8, ptr %414, i64 12
  store i16 %412, ptr %420, align 2
  %421 = getelementptr inbounds i8, ptr %414, i64 14
  %422 = extractelement <8 x i16> %406, i64 6
  store i16 %422, ptr %421, align 2
  %423 = load ptr, ptr %355, align 8, !tbaa !48
  %424 = getelementptr inbounds i16, ptr %423, i64 %345
  store <8 x i16> %406, ptr %424, align 2
  %425 = load ptr, ptr %372, align 8, !tbaa !48
  %426 = getelementptr inbounds i16, ptr %425, i64 %345
  store i16 %408, ptr %426, align 2
  %427 = getelementptr inbounds i8, ptr %426, i64 2
  store i16 %409, ptr %427, align 2
  %428 = getelementptr inbounds i8, ptr %426, i64 4
  store i16 %410, ptr %428, align 2
  %429 = getelementptr inbounds i8, ptr %426, i64 6
  store i16 %411, ptr %429, align 2
  %430 = getelementptr inbounds i8, ptr %426, i64 8
  store i16 %412, ptr %430, align 2
  %431 = getelementptr inbounds i8, ptr %426, i64 10
  store i16 %422, ptr %431, align 2
  %432 = getelementptr inbounds i8, ptr %426, i64 12
  %433 = extractelement <8 x i16> %406, i64 7
  store i16 %433, ptr %432, align 2
  %434 = getelementptr inbounds i8, ptr %426, i64 14
  %435 = extractelement <2 x i16> %384, i64 0
  store i16 %435, ptr %434, align 2
  %436 = load ptr, ptr %373, align 8, !tbaa !48
  %437 = getelementptr inbounds i16, ptr %436, i64 %345
  store i16 %409, ptr %437, align 2
  %438 = getelementptr inbounds i8, ptr %437, i64 2
  store i16 %410, ptr %438, align 2
  %439 = getelementptr inbounds i8, ptr %437, i64 4
  store i16 %411, ptr %439, align 2
  %440 = getelementptr inbounds i8, ptr %437, i64 6
  store i16 %412, ptr %440, align 2
  %441 = getelementptr inbounds i8, ptr %437, i64 8
  store i16 %422, ptr %441, align 2
  %442 = getelementptr inbounds i8, ptr %437, i64 10
  store i16 %433, ptr %442, align 2
  %443 = getelementptr inbounds i8, ptr %437, i64 12
  store <2 x i16> %384, ptr %443, align 2
  %444 = getelementptr ptr, ptr %343, i64 5
  %445 = load ptr, ptr %444, align 8, !tbaa !48
  %446 = getelementptr inbounds i16, ptr %445, i64 %345
  store i16 %410, ptr %446, align 2
  %447 = getelementptr inbounds i8, ptr %446, i64 2
  store i16 %411, ptr %447, align 2
  %448 = getelementptr inbounds i8, ptr %446, i64 4
  store i16 %412, ptr %448, align 2
  %449 = getelementptr inbounds i8, ptr %446, i64 6
  store i16 %422, ptr %449, align 2
  %450 = getelementptr inbounds i8, ptr %446, i64 8
  store i16 %433, ptr %450, align 2
  %451 = getelementptr inbounds i8, ptr %446, i64 10
  store <2 x i16> %384, ptr %451, align 2
  %452 = getelementptr inbounds i8, ptr %446, i64 14
  store i16 %392, ptr %452, align 2
  %453 = getelementptr ptr, ptr %343, i64 6
  %454 = load ptr, ptr %453, align 8, !tbaa !48
  %455 = getelementptr inbounds i16, ptr %454, i64 %345
  store i16 %411, ptr %455, align 2
  %456 = getelementptr inbounds i8, ptr %455, i64 2
  store i16 %412, ptr %456, align 2
  %457 = getelementptr inbounds i8, ptr %455, i64 4
  store i16 %422, ptr %457, align 2
  %458 = getelementptr inbounds i8, ptr %455, i64 6
  store i16 %433, ptr %458, align 2
  %459 = getelementptr inbounds i8, ptr %455, i64 8
  store <2 x i16> %384, ptr %459, align 2
  %460 = getelementptr inbounds i8, ptr %455, i64 12
  store i16 %392, ptr %460, align 2
  %461 = getelementptr inbounds i8, ptr %455, i64 14
  store i16 %397, ptr %461, align 2
  %462 = getelementptr ptr, ptr %343, i64 7
  %463 = load ptr, ptr %462, align 8, !tbaa !48
  %464 = getelementptr inbounds i16, ptr %463, i64 %345
  store i16 %412, ptr %464, align 2
  %465 = getelementptr inbounds i8, ptr %464, i64 2
  store i16 %422, ptr %465, align 2
  %466 = getelementptr inbounds i8, ptr %464, i64 4
  store i16 %433, ptr %466, align 2
  %467 = getelementptr inbounds i8, ptr %464, i64 6
  store <2 x i16> %384, ptr %467, align 2
  %468 = getelementptr inbounds i8, ptr %464, i64 10
  store i16 %392, ptr %468, align 2
  %469 = getelementptr inbounds i8, ptr %464, i64 12
  store i16 %397, ptr %469, align 2
  %470 = getelementptr inbounds i8, ptr %464, i64 14
  store i16 %342, ptr %470, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_vert_right_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !94 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  br label %34

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %35
  %37 = trunc i64 %35 to i32
  %38 = add i32 %37, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %38, ptr noundef nonnull %32, ptr noundef nonnull %36) #9
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, 8
  br i1 %40, label %41, label %34, !llvm.loop !95

41:                                               ; preds = %34
  %42 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %43 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %43, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %44 = load i32, ptr %8, align 4, !tbaa !60
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %2, 8
  %47 = icmp ne i32 %3, 8
  %48 = or i1 %46, %47
  %49 = and i1 %48, %45
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %8, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %52, i64 0, i32 30
  %54 = load i32, ptr %53, align 4, !tbaa !68
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %116, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  br label %58

58:                                               ; preds = %56, %72
  %59 = phi i64 [ 0, %56 ], [ %75, %72 ]
  %60 = phi i32 [ 1, %56 ], [ %74, %72 ]
  %61 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59
  %62 = load i32, ptr %61, align 16, !tbaa !60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %57, align 8, !tbaa !70
  %66 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !71
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %65, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !49
  %71 = sext i8 %70 to i32
  br label %72

72:                                               ; preds = %58, %64
  %73 = phi i32 [ %71, %64 ], [ 0, %58 ]
  %74 = and i32 %73, %60
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %58, !llvm.loop !96

77:                                               ; preds = %72
  %78 = load i32, ptr %7, align 4, !tbaa !60
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %57, align 8, !tbaa !70
  %82 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !71
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !49
  %87 = sext i8 %86 to i32
  br label %88

88:                                               ; preds = %77, %80
  %89 = phi i32 [ %87, %80 ], [ 0, %77 ]
  br i1 %49, label %90, label %98

90:                                               ; preds = %88
  %91 = load ptr, ptr %57, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !71
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !49
  %97 = sext i8 %96 to i32
  br label %98

98:                                               ; preds = %88, %90
  %99 = phi i32 [ %97, %90 ], [ 0, %88 ]
  %100 = load i32, ptr %9, align 4, !tbaa !60
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = icmp eq i32 %89, 0
  %104 = icmp ne i32 %74, 0
  %105 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %106 = load i32, ptr %105, align 4, !tbaa !82
  %107 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %106) #7
  br i1 %103, label %173, label %134

108:                                              ; preds = %98
  %109 = load ptr, ptr %57, align 8, !tbaa !70
  %110 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !71
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %109, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !49
  %115 = sext i8 %114 to i32
  br label %120

116:                                              ; preds = %41
  %117 = load i32, ptr %6, align 16, !tbaa !60
  %118 = load i32, ptr %7, align 4, !tbaa !60
  %119 = load i32, ptr %9, align 4, !tbaa !60
  br label %120

120:                                              ; preds = %108, %116
  %121 = phi i32 [ %118, %116 ], [ %89, %108 ]
  %122 = phi i32 [ %117, %116 ], [ %74, %108 ]
  %123 = phi i32 [ %119, %116 ], [ %115, %108 ]
  %124 = phi i32 [ %50, %116 ], [ %99, %108 ]
  %125 = icmp ne i32 %121, 0
  %126 = icmp ne i32 %122, 0
  %127 = select i1 %125, i1 %126, i1 false
  %128 = icmp ne i32 %123, 0
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %134, label %130

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %132 = load i32, ptr %131, align 4, !tbaa !82
  %133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %132) #7
  br i1 %125, label %134, label %173

134:                                              ; preds = %120, %102, %130
  %135 = phi i32 [ %121, %130 ], [ %89, %102 ], [ %121, %120 ]
  %136 = phi i32 [ %122, %130 ], [ %74, %102 ], [ %122, %120 ]
  %137 = phi i32 [ %123, %130 ], [ 0, %102 ], [ %123, %120 ]
  %138 = phi i32 [ %124, %130 ], [ %99, %102 ], [ %124, %120 ]
  %139 = phi i1 [ %126, %130 ], [ %104, %102 ], [ true, %120 ]
  %140 = phi i1 [ %128, %130 ], [ false, %102 ], [ true, %120 ]
  %141 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %142 = load i16, ptr %141, align 2, !tbaa !73
  %143 = sext i16 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %26, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !48
  %146 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %147 = load i16, ptr %146, align 4, !tbaa !74
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds i16, ptr %145, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !75
  %151 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %150, ptr %151, align 2, !tbaa !75
  %152 = getelementptr inbounds i16, ptr %149, i64 1
  %153 = load i16, ptr %152, align 2, !tbaa !75
  %154 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %153, ptr %154, align 4, !tbaa !75
  %155 = getelementptr inbounds i16, ptr %149, i64 2
  %156 = load i16, ptr %155, align 2, !tbaa !75
  %157 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %156, ptr %157, align 2, !tbaa !75
  %158 = getelementptr inbounds i16, ptr %149, i64 3
  %159 = load i16, ptr %158, align 2, !tbaa !75
  %160 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %159, ptr %160, align 8, !tbaa !75
  %161 = getelementptr inbounds i16, ptr %149, i64 4
  %162 = load i16, ptr %161, align 2, !tbaa !75
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %162, ptr %163, align 2, !tbaa !75
  %164 = getelementptr inbounds i16, ptr %149, i64 5
  %165 = load i16, ptr %164, align 2, !tbaa !75
  %166 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %165, ptr %166, align 4, !tbaa !75
  %167 = getelementptr inbounds i16, ptr %149, i64 6
  %168 = load i16, ptr %167, align 2, !tbaa !75
  %169 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %168, ptr %169, align 2, !tbaa !75
  %170 = getelementptr inbounds i16, ptr %149, i64 7
  %171 = load i16, ptr %170, align 2, !tbaa !75
  %172 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %171, ptr %172, align 16, !tbaa !75
  br label %185

173:                                              ; preds = %102, %130
  %174 = phi i32 [ %122, %130 ], [ %74, %102 ]
  %175 = phi i32 [ %123, %130 ], [ 0, %102 ]
  %176 = phi i32 [ %124, %130 ], [ %99, %102 ]
  %177 = phi i1 [ %126, %130 ], [ %104, %102 ]
  %178 = phi i1 [ %128, %130 ], [ false, %102 ]
  %179 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %180 = load i32, ptr %179, align 4, !tbaa !76
  %181 = trunc i32 %180 to i16
  %182 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %183 = insertelement <8 x i16> poison, i16 %181, i64 0
  %184 = shufflevector <8 x i16> %183, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %184, ptr %182, align 2, !tbaa !75
  br label %185

185:                                              ; preds = %173, %134
  %186 = phi i16 [ %181, %173 ], [ %171, %134 ]
  %187 = phi i32 [ 0, %173 ], [ %135, %134 ]
  %188 = phi i32 [ %174, %173 ], [ %136, %134 ]
  %189 = phi i32 [ %175, %173 ], [ %137, %134 ]
  %190 = phi i32 [ %176, %173 ], [ %138, %134 ]
  %191 = phi i1 [ %177, %173 ], [ %139, %134 ]
  %192 = phi i1 [ %178, %173 ], [ %140, %134 ]
  %193 = icmp eq i32 %190, 0
  br i1 %193, label %227, label %194

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %196 = load i16, ptr %195, align 2, !tbaa !73
  %197 = sext i16 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %26, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !48
  %200 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %201 = load i16, ptr %200, align 4, !tbaa !74
  %202 = sext i16 %201 to i64
  %203 = getelementptr inbounds i16, ptr %199, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !75
  %205 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %204, ptr %205, align 2, !tbaa !75
  %206 = getelementptr inbounds i16, ptr %203, i64 1
  %207 = load i16, ptr %206, align 2, !tbaa !75
  %208 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %207, ptr %208, align 4, !tbaa !75
  %209 = getelementptr inbounds i16, ptr %203, i64 2
  %210 = load i16, ptr %209, align 2, !tbaa !75
  %211 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %210, ptr %211, align 2, !tbaa !75
  %212 = getelementptr inbounds i16, ptr %203, i64 3
  %213 = load i16, ptr %212, align 2, !tbaa !75
  %214 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %213, ptr %214, align 8, !tbaa !75
  %215 = getelementptr inbounds i16, ptr %203, i64 4
  %216 = load i16, ptr %215, align 2, !tbaa !75
  %217 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %216, ptr %217, align 2, !tbaa !75
  %218 = getelementptr inbounds i16, ptr %203, i64 5
  %219 = load i16, ptr %218, align 2, !tbaa !75
  %220 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %219, ptr %220, align 4, !tbaa !75
  %221 = getelementptr inbounds i16, ptr %203, i64 6
  %222 = load i16, ptr %221, align 2, !tbaa !75
  %223 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %222, ptr %223, align 2, !tbaa !75
  %224 = getelementptr inbounds i16, ptr %203, i64 7
  %225 = load i16, ptr %224, align 2, !tbaa !75
  %226 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %225, ptr %226, align 16, !tbaa !75
  br label %231

227:                                              ; preds = %185
  %228 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %229 = insertelement <8 x i16> poison, i16 %186, i64 0
  %230 = shufflevector <8 x i16> %229, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %230, ptr %228, align 2, !tbaa !75
  br label %231

231:                                              ; preds = %227, %194
  br i1 %191, label %232, label %320

232:                                              ; preds = %231
  %233 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %234 = load i16, ptr %233, align 2, !tbaa !73
  %235 = sext i16 %234 to i64
  %236 = getelementptr inbounds ptr, ptr %26, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !48
  %238 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %239 = load i16, ptr %238, align 4, !tbaa !74
  %240 = sext i16 %239 to i64
  %241 = getelementptr inbounds i16, ptr %237, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !75
  %243 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %242, ptr %243, align 2, !tbaa !75
  %244 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 5
  %245 = load i16, ptr %244, align 2, !tbaa !73
  %246 = sext i16 %245 to i64
  %247 = getelementptr inbounds ptr, ptr %26, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !48
  %249 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 4
  %250 = load i16, ptr %249, align 4, !tbaa !74
  %251 = sext i16 %250 to i64
  %252 = getelementptr inbounds i16, ptr %248, i64 %251
  %253 = load i16, ptr %252, align 2, !tbaa !75
  %254 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %253, ptr %254, align 4, !tbaa !75
  %255 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 5
  %256 = load i16, ptr %255, align 2, !tbaa !73
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds ptr, ptr %26, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !48
  %260 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 4
  %261 = load i16, ptr %260, align 4, !tbaa !74
  %262 = sext i16 %261 to i64
  %263 = getelementptr inbounds i16, ptr %259, i64 %262
  %264 = load i16, ptr %263, align 2, !tbaa !75
  %265 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %264, ptr %265, align 2, !tbaa !75
  %266 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 5
  %267 = load i16, ptr %266, align 2, !tbaa !73
  %268 = sext i16 %267 to i64
  %269 = getelementptr inbounds ptr, ptr %26, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !48
  %271 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 4
  %272 = load i16, ptr %271, align 4, !tbaa !74
  %273 = sext i16 %272 to i64
  %274 = getelementptr inbounds i16, ptr %270, i64 %273
  %275 = load i16, ptr %274, align 2, !tbaa !75
  %276 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %275, ptr %276, align 8, !tbaa !75
  %277 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 5
  %278 = load i16, ptr %277, align 2, !tbaa !73
  %279 = sext i16 %278 to i64
  %280 = getelementptr inbounds ptr, ptr %26, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !48
  %282 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 4
  %283 = load i16, ptr %282, align 4, !tbaa !74
  %284 = sext i16 %283 to i64
  %285 = getelementptr inbounds i16, ptr %281, i64 %284
  %286 = load i16, ptr %285, align 2, !tbaa !75
  %287 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %286, ptr %287, align 2, !tbaa !75
  %288 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 5
  %289 = load i16, ptr %288, align 2, !tbaa !73
  %290 = sext i16 %289 to i64
  %291 = getelementptr inbounds ptr, ptr %26, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !48
  %293 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 4
  %294 = load i16, ptr %293, align 4, !tbaa !74
  %295 = sext i16 %294 to i64
  %296 = getelementptr inbounds i16, ptr %292, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !75
  %298 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %297, ptr %298, align 4, !tbaa !75
  %299 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 5
  %300 = load i16, ptr %299, align 2, !tbaa !73
  %301 = sext i16 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %26, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !48
  %304 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 4
  %305 = load i16, ptr %304, align 4, !tbaa !74
  %306 = sext i16 %305 to i64
  %307 = getelementptr inbounds i16, ptr %303, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !75
  %309 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %308, ptr %309, align 2, !tbaa !75
  %310 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 5
  %311 = load i16, ptr %310, align 2, !tbaa !73
  %312 = sext i16 %311 to i64
  %313 = getelementptr inbounds ptr, ptr %26, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !48
  %315 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 4
  %316 = load i16, ptr %315, align 4, !tbaa !74
  %317 = sext i16 %316 to i64
  %318 = getelementptr inbounds i16, ptr %314, i64 %317
  %319 = load i16, ptr %318, align 2, !tbaa !75
  br label %330

320:                                              ; preds = %231
  %321 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %322 = load i32, ptr %321, align 4, !tbaa !76
  %323 = trunc i32 %322 to i16
  %324 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %323, ptr %324, align 2, !tbaa !75
  %325 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %323, ptr %325, align 4, !tbaa !75
  %326 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %323, ptr %326, align 2, !tbaa !75
  %327 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %328 = insertelement <4 x i16> poison, i16 %323, i64 0
  %329 = shufflevector <4 x i16> %328, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %329, ptr %327, align 2, !tbaa !75
  br label %330

330:                                              ; preds = %320, %232
  %331 = phi i16 [ %319, %232 ], [ %323, %320 ]
  %332 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %331, ptr %332, align 16
  br i1 %192, label %333, label %344

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %335 = load i16, ptr %334, align 2, !tbaa !73
  %336 = sext i16 %335 to i64
  %337 = getelementptr inbounds ptr, ptr %26, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !48
  %339 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %340 = load i16, ptr %339, align 4, !tbaa !74
  %341 = sext i16 %340 to i64
  %342 = getelementptr inbounds i16, ptr %338, i64 %341
  %343 = load i16, ptr %342, align 2, !tbaa !75
  br label %348

344:                                              ; preds = %330
  %345 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %346 = load i32, ptr %345, align 4, !tbaa !76
  %347 = trunc i32 %346 to i16
  br label %348

348:                                              ; preds = %344, %333
  %349 = phi i16 [ %347, %344 ], [ %343, %333 ]
  %350 = sext i32 %3 to i64
  store i16 %349, ptr %5, align 16, !tbaa !75
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %189, i32 noundef %187, i32 noundef %188) #7
  %351 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %352 = load i16, ptr %351, align 4, !tbaa !75
  %353 = zext i16 %352 to i32
  %354 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  %355 = load i16, ptr %354, align 8, !tbaa !75
  %356 = zext i16 %355 to i32
  %357 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  %358 = load i16, ptr %357, align 2, !tbaa !75
  %359 = zext i16 %358 to i32
  %360 = shl nuw nsw i32 %359, 1
  %361 = add nuw nsw i32 %356, 2
  %362 = add nuw nsw i32 %361, %353
  %363 = add nuw nsw i32 %362, %360
  %364 = lshr i32 %363, 2
  %365 = trunc i32 %364 to i16
  %366 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %367 = load i16, ptr %366, align 4, !tbaa !75
  %368 = zext i16 %367 to i32
  %369 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  %370 = load i16, ptr %369, align 2, !tbaa !75
  %371 = zext i16 %370 to i32
  %372 = shl nuw nsw i32 %371, 1
  %373 = add nuw nsw i32 %361, %368
  %374 = add nuw nsw i32 %373, %372
  %375 = lshr i32 %374, 2
  %376 = trunc i32 %375 to i16
  %377 = load i16, ptr %5, align 16, !tbaa !75
  %378 = zext i16 %377 to i32
  %379 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %380 = load i16, ptr %379, align 2, !tbaa !75
  %381 = zext i16 %380 to i32
  %382 = shl nuw nsw i32 %381, 1
  %383 = add nuw nsw i32 %368, 2
  %384 = add nuw nsw i32 %383, %378
  %385 = add nuw nsw i32 %384, %382
  %386 = lshr i32 %385, 2
  %387 = trunc i32 %386 to i16
  %388 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %389 = load i16, ptr %388, align 2, !tbaa !75
  %390 = zext i16 %389 to i32
  %391 = add nuw nsw i32 %390, 1
  %392 = add nuw nsw i32 %391, %378
  %393 = lshr i32 %392, 1
  %394 = trunc i32 %393 to i16
  %395 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %396 = load i16, ptr %395, align 4, !tbaa !75
  %397 = zext i16 %396 to i32
  %398 = add nuw nsw i32 %391, %397
  %399 = lshr i32 %398, 1
  %400 = trunc i32 %399 to i16
  %401 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %402 = load i16, ptr %401, align 2, !tbaa !75
  %403 = zext i16 %402 to i32
  %404 = add nuw nsw i32 %397, 1
  %405 = add nuw nsw i32 %404, %403
  %406 = lshr i32 %405, 1
  %407 = trunc i32 %406 to i16
  %408 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  %409 = load i16, ptr %408, align 8, !tbaa !75
  %410 = zext i16 %409 to i32
  %411 = add nuw nsw i32 %403, 1
  %412 = add nuw nsw i32 %411, %410
  %413 = lshr i32 %412, 1
  %414 = trunc i32 %413 to i16
  %415 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  %416 = load i16, ptr %415, align 2, !tbaa !75
  %417 = zext i16 %416 to i32
  %418 = add nuw nsw i32 %410, 1
  %419 = add nuw nsw i32 %418, %417
  %420 = lshr i32 %419, 1
  %421 = trunc i32 %420 to i16
  %422 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  %423 = load i16, ptr %422, align 4, !tbaa !75
  %424 = zext i16 %423 to i32
  %425 = add nuw nsw i32 %417, 1
  %426 = add nuw nsw i32 %425, %424
  %427 = lshr i32 %426, 1
  %428 = trunc i32 %427 to i16
  %429 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %430 = load i16, ptr %429, align 2, !tbaa !75
  %431 = zext i16 %430 to i32
  %432 = add nuw nsw i32 %424, 1
  %433 = add nuw nsw i32 %432, %431
  %434 = lshr i32 %433, 1
  %435 = trunc i32 %434 to i16
  %436 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  %437 = load i16, ptr %436, align 16, !tbaa !75
  %438 = zext i16 %437 to i32
  %439 = add nuw nsw i32 %431, 1
  %440 = add nuw nsw i32 %439, %438
  %441 = lshr i32 %440, 1
  %442 = trunc i32 %441 to i16
  %443 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %444 = load i16, ptr %443, align 2, !tbaa !75
  %445 = zext i16 %444 to i32
  %446 = shl nuw nsw i32 %353, 1
  %447 = add nuw nsw i32 %359, 2
  %448 = add nuw nsw i32 %447, %446
  %449 = add nuw nsw i32 %448, %445
  %450 = lshr i32 %449, 2
  %451 = trunc i32 %450 to i16
  %452 = shl nuw nsw i32 %356, 1
  %453 = add nuw nsw i32 %447, %452
  %454 = add nuw nsw i32 %453, %371
  %455 = lshr i32 %454, 2
  %456 = trunc i32 %455 to i16
  %457 = shl nuw nsw i32 %368, 1
  %458 = add nuw nsw i32 %371, 2
  %459 = add nuw nsw i32 %458, %457
  %460 = add nuw nsw i32 %459, %381
  %461 = lshr i32 %460, 2
  %462 = trunc i32 %461 to i16
  %463 = shl nuw nsw i32 %378, 1
  %464 = add nuw nsw i32 %381, 2
  %465 = add nuw nsw i32 %464, %463
  %466 = add nuw nsw i32 %465, %390
  %467 = lshr i32 %466, 2
  %468 = trunc i32 %467 to i16
  %469 = shl nuw nsw i32 %390, 1
  %470 = add nuw nsw i32 %378, 2
  %471 = add nuw nsw i32 %470, %397
  %472 = add nuw nsw i32 %471, %469
  %473 = lshr i32 %472, 2
  %474 = trunc i32 %473 to i16
  %475 = shl nuw nsw i32 %397, 1
  %476 = add nuw nsw i32 %390, 2
  %477 = add nuw nsw i32 %476, %403
  %478 = add nuw nsw i32 %477, %475
  %479 = lshr i32 %478, 2
  %480 = trunc i32 %479 to i16
  %481 = shl nuw nsw i32 %403, 1
  %482 = add nuw nsw i32 %397, 2
  %483 = add nuw nsw i32 %482, %410
  %484 = add nuw nsw i32 %483, %481
  %485 = lshr i32 %484, 2
  %486 = trunc i32 %485 to i16
  %487 = shl nuw nsw i32 %410, 1
  %488 = add nuw nsw i32 %403, 2
  %489 = add nuw nsw i32 %488, %417
  %490 = add nuw nsw i32 %489, %487
  %491 = lshr i32 %490, 2
  %492 = trunc i32 %491 to i16
  %493 = shl nuw nsw i32 %417, 1
  %494 = add nuw nsw i32 %410, 2
  %495 = add nuw nsw i32 %494, %424
  %496 = add nuw nsw i32 %495, %493
  %497 = lshr i32 %496, 2
  %498 = trunc i32 %497 to i16
  %499 = shl nuw nsw i32 %424, 1
  %500 = add nuw nsw i32 %417, 2
  %501 = add nuw nsw i32 %500, %431
  %502 = add nuw nsw i32 %501, %499
  %503 = lshr i32 %502, 2
  %504 = trunc i32 %503 to i16
  %505 = shl nuw nsw i32 %431, 1
  %506 = add nuw nsw i32 %424, 2
  %507 = add nuw nsw i32 %506, %438
  %508 = add nuw nsw i32 %507, %505
  %509 = lshr i32 %508, 2
  %510 = trunc i32 %509 to i16
  %511 = getelementptr inbounds ptr, ptr %31, i64 %350
  %512 = load ptr, ptr %511, align 8, !tbaa !48
  %513 = sext i32 %2 to i64
  %514 = getelementptr inbounds i16, ptr %512, i64 %513
  store i16 %394, ptr %514, align 2
  %515 = getelementptr inbounds i8, ptr %514, i64 2
  store i16 %400, ptr %515, align 2
  %516 = getelementptr inbounds i8, ptr %514, i64 4
  store i16 %407, ptr %516, align 2
  %517 = getelementptr inbounds i8, ptr %514, i64 6
  store i16 %414, ptr %517, align 2
  %518 = getelementptr inbounds i8, ptr %514, i64 8
  store i16 %421, ptr %518, align 2
  %519 = getelementptr inbounds i8, ptr %514, i64 10
  store i16 %428, ptr %519, align 2
  %520 = getelementptr inbounds i8, ptr %514, i64 12
  store i16 %435, ptr %520, align 2
  %521 = getelementptr inbounds i8, ptr %514, i64 14
  store i16 %442, ptr %521, align 2
  %522 = getelementptr ptr, ptr %511, i64 1
  %523 = load ptr, ptr %522, align 8, !tbaa !48
  %524 = getelementptr inbounds i16, ptr %523, i64 %513
  store i16 %468, ptr %524, align 2
  %525 = getelementptr inbounds i8, ptr %524, i64 2
  store i16 %474, ptr %525, align 2
  %526 = getelementptr inbounds i8, ptr %524, i64 4
  store i16 %480, ptr %526, align 2
  %527 = getelementptr inbounds i8, ptr %524, i64 6
  store i16 %486, ptr %527, align 2
  %528 = getelementptr inbounds i8, ptr %524, i64 8
  store i16 %492, ptr %528, align 2
  %529 = getelementptr inbounds i8, ptr %524, i64 10
  store i16 %498, ptr %529, align 2
  %530 = getelementptr inbounds i8, ptr %524, i64 12
  store i16 %504, ptr %530, align 2
  %531 = getelementptr inbounds i8, ptr %524, i64 14
  store i16 %510, ptr %531, align 2
  %532 = getelementptr ptr, ptr %511, i64 2
  %533 = load ptr, ptr %532, align 8, !tbaa !48
  %534 = getelementptr inbounds i16, ptr %533, i64 %513
  store i16 %387, ptr %534, align 2
  %535 = getelementptr inbounds i8, ptr %534, i64 2
  store i16 %394, ptr %535, align 2
  %536 = getelementptr inbounds i8, ptr %534, i64 4
  store i16 %400, ptr %536, align 2
  %537 = getelementptr inbounds i8, ptr %534, i64 6
  store i16 %407, ptr %537, align 2
  %538 = getelementptr inbounds i8, ptr %534, i64 8
  store i16 %414, ptr %538, align 2
  %539 = getelementptr inbounds i8, ptr %534, i64 10
  store i16 %421, ptr %539, align 2
  %540 = getelementptr inbounds i8, ptr %534, i64 12
  store i16 %428, ptr %540, align 2
  %541 = getelementptr inbounds i8, ptr %534, i64 14
  store i16 %435, ptr %541, align 2
  %542 = getelementptr ptr, ptr %511, i64 3
  %543 = load ptr, ptr %542, align 8, !tbaa !48
  %544 = getelementptr inbounds i16, ptr %543, i64 %513
  store i16 %462, ptr %544, align 2
  %545 = getelementptr inbounds i8, ptr %544, i64 2
  store i16 %468, ptr %545, align 2
  %546 = getelementptr inbounds i8, ptr %544, i64 4
  store i16 %474, ptr %546, align 2
  %547 = getelementptr inbounds i8, ptr %544, i64 6
  store i16 %480, ptr %547, align 2
  %548 = getelementptr inbounds i8, ptr %544, i64 8
  store i16 %486, ptr %548, align 2
  %549 = getelementptr inbounds i8, ptr %544, i64 10
  store i16 %492, ptr %549, align 2
  %550 = getelementptr inbounds i8, ptr %544, i64 12
  store i16 %498, ptr %550, align 2
  %551 = getelementptr inbounds i8, ptr %544, i64 14
  store i16 %504, ptr %551, align 2
  %552 = getelementptr ptr, ptr %511, i64 4
  %553 = load ptr, ptr %552, align 8, !tbaa !48
  %554 = getelementptr inbounds i16, ptr %553, i64 %513
  store i16 %376, ptr %554, align 2
  %555 = getelementptr inbounds i8, ptr %554, i64 2
  store i16 %387, ptr %555, align 2
  %556 = getelementptr inbounds i8, ptr %554, i64 4
  store i16 %394, ptr %556, align 2
  %557 = getelementptr inbounds i8, ptr %554, i64 6
  store i16 %400, ptr %557, align 2
  %558 = getelementptr inbounds i8, ptr %554, i64 8
  store i16 %407, ptr %558, align 2
  %559 = getelementptr inbounds i8, ptr %554, i64 10
  store i16 %414, ptr %559, align 2
  %560 = getelementptr inbounds i8, ptr %554, i64 12
  store i16 %421, ptr %560, align 2
  %561 = getelementptr inbounds i8, ptr %554, i64 14
  store i16 %428, ptr %561, align 2
  %562 = getelementptr ptr, ptr %511, i64 5
  %563 = load ptr, ptr %562, align 8, !tbaa !48
  %564 = getelementptr inbounds i16, ptr %563, i64 %513
  store i16 %456, ptr %564, align 2
  %565 = getelementptr inbounds i8, ptr %564, i64 2
  store i16 %462, ptr %565, align 2
  %566 = getelementptr inbounds i8, ptr %564, i64 4
  store i16 %468, ptr %566, align 2
  %567 = getelementptr inbounds i8, ptr %564, i64 6
  store i16 %474, ptr %567, align 2
  %568 = getelementptr inbounds i8, ptr %564, i64 8
  store i16 %480, ptr %568, align 2
  %569 = getelementptr inbounds i8, ptr %564, i64 10
  store i16 %486, ptr %569, align 2
  %570 = getelementptr inbounds i8, ptr %564, i64 12
  store i16 %492, ptr %570, align 2
  %571 = getelementptr inbounds i8, ptr %564, i64 14
  store i16 %498, ptr %571, align 2
  %572 = getelementptr ptr, ptr %511, i64 6
  %573 = load ptr, ptr %572, align 8, !tbaa !48
  %574 = getelementptr inbounds i16, ptr %573, i64 %513
  store i16 %365, ptr %574, align 2
  %575 = getelementptr inbounds i8, ptr %574, i64 2
  store i16 %376, ptr %575, align 2
  %576 = getelementptr inbounds i8, ptr %574, i64 4
  store i16 %387, ptr %576, align 2
  %577 = getelementptr inbounds i8, ptr %574, i64 6
  store i16 %394, ptr %577, align 2
  %578 = getelementptr inbounds i8, ptr %574, i64 8
  store i16 %400, ptr %578, align 2
  %579 = getelementptr inbounds i8, ptr %574, i64 10
  store i16 %407, ptr %579, align 2
  %580 = getelementptr inbounds i8, ptr %574, i64 12
  store i16 %414, ptr %580, align 2
  %581 = getelementptr inbounds i8, ptr %574, i64 14
  store i16 %421, ptr %581, align 2
  %582 = getelementptr ptr, ptr %511, i64 7
  %583 = load ptr, ptr %582, align 8, !tbaa !48
  %584 = getelementptr inbounds i16, ptr %583, i64 %513
  store i16 %451, ptr %584, align 2
  %585 = getelementptr inbounds i8, ptr %584, i64 2
  store i16 %456, ptr %585, align 2
  %586 = getelementptr inbounds i8, ptr %584, i64 4
  store i16 %462, ptr %586, align 2
  %587 = getelementptr inbounds i8, ptr %584, i64 6
  store i16 %468, ptr %587, align 2
  %588 = getelementptr inbounds i8, ptr %584, i64 8
  store i16 %474, ptr %588, align 2
  %589 = getelementptr inbounds i8, ptr %584, i64 10
  store i16 %480, ptr %589, align 2
  %590 = getelementptr inbounds i8, ptr %584, i64 12
  store i16 %486, ptr %590, align 2
  %591 = getelementptr inbounds i8, ptr %584, i64 14
  store i16 %492, ptr %591, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_vert_left_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !97 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  br label %34

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %35
  %37 = trunc i64 %35 to i32
  %38 = add i32 %37, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %38, ptr noundef nonnull %32, ptr noundef nonnull %36) #9
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, 8
  br i1 %40, label %41, label %34, !llvm.loop !98

41:                                               ; preds = %34
  %42 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %43 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %43, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %44 = load i32, ptr %8, align 4, !tbaa !60
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %2, 8
  %47 = icmp ne i32 %3, 8
  %48 = or i1 %46, %47
  %49 = and i1 %48, %45
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %8, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %52, i64 0, i32 30
  %54 = load i32, ptr %53, align 4, !tbaa !68
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %110, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  br label %58

58:                                               ; preds = %56, %72
  %59 = phi i64 [ 0, %56 ], [ %75, %72 ]
  %60 = phi i32 [ 1, %56 ], [ %74, %72 ]
  %61 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59
  %62 = load i32, ptr %61, align 16, !tbaa !60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %57, align 8, !tbaa !70
  %66 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !71
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %65, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !49
  %71 = sext i8 %70 to i32
  br label %72

72:                                               ; preds = %58, %64
  %73 = phi i32 [ %71, %64 ], [ 0, %58 ]
  %74 = and i32 %73, %60
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %58, !llvm.loop !99

77:                                               ; preds = %72
  %78 = load i32, ptr %7, align 4, !tbaa !60
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %57, align 8, !tbaa !70
  %82 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !71
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !49
  %87 = sext i8 %86 to i32
  br label %88

88:                                               ; preds = %77, %80
  %89 = phi i32 [ %87, %80 ], [ 0, %77 ]
  br i1 %49, label %90, label %98

90:                                               ; preds = %88
  %91 = load ptr, ptr %57, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !71
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !49
  %97 = sext i8 %96 to i32
  br label %98

98:                                               ; preds = %88, %90
  %99 = phi i32 [ %97, %90 ], [ 0, %88 ]
  %100 = load i32, ptr %9, align 4, !tbaa !60
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %57, align 8, !tbaa !70
  %104 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !71
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %103, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !49
  %109 = sext i8 %108 to i32
  br label %114

110:                                              ; preds = %41
  %111 = load i32, ptr %6, align 16, !tbaa !60
  %112 = load i32, ptr %7, align 4, !tbaa !60
  %113 = load i32, ptr %9, align 4, !tbaa !60
  br label %114

114:                                              ; preds = %102, %98, %110
  %115 = phi i32 [ %112, %110 ], [ %89, %98 ], [ %89, %102 ]
  %116 = phi i32 [ %111, %110 ], [ %74, %98 ], [ %74, %102 ]
  %117 = phi i32 [ %113, %110 ], [ 0, %98 ], [ %109, %102 ]
  %118 = phi i32 [ %50, %110 ], [ %99, %98 ], [ %99, %102 ]
  %119 = icmp eq i32 %115, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %122 = load i32, ptr %121, align 4, !tbaa !82
  %123 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %122) #7
  %124 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %125 = load i32, ptr %124, align 4, !tbaa !76
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %128 = insertelement <8 x i16> poison, i16 %126, i64 0
  %129 = shufflevector <8 x i16> %128, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %129, ptr %127, align 2, !tbaa !75
  br label %163

130:                                              ; preds = %114
  %131 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %132 = load i16, ptr %131, align 2, !tbaa !73
  %133 = sext i16 %132 to i64
  %134 = getelementptr inbounds ptr, ptr %26, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !48
  %136 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %137 = load i16, ptr %136, align 4, !tbaa !74
  %138 = sext i16 %137 to i64
  %139 = getelementptr inbounds i16, ptr %135, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !75
  %141 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %140, ptr %141, align 2, !tbaa !75
  %142 = getelementptr inbounds i16, ptr %139, i64 1
  %143 = load i16, ptr %142, align 2, !tbaa !75
  %144 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %143, ptr %144, align 4, !tbaa !75
  %145 = getelementptr inbounds i16, ptr %139, i64 2
  %146 = load i16, ptr %145, align 2, !tbaa !75
  %147 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %146, ptr %147, align 2, !tbaa !75
  %148 = getelementptr inbounds i16, ptr %139, i64 3
  %149 = load i16, ptr %148, align 2, !tbaa !75
  %150 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %149, ptr %150, align 8, !tbaa !75
  %151 = getelementptr inbounds i16, ptr %139, i64 4
  %152 = load i16, ptr %151, align 2, !tbaa !75
  %153 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %152, ptr %153, align 2, !tbaa !75
  %154 = getelementptr inbounds i16, ptr %139, i64 5
  %155 = load i16, ptr %154, align 2, !tbaa !75
  %156 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %155, ptr %156, align 4, !tbaa !75
  %157 = getelementptr inbounds i16, ptr %139, i64 6
  %158 = load i16, ptr %157, align 2, !tbaa !75
  %159 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %158, ptr %159, align 2, !tbaa !75
  %160 = getelementptr inbounds i16, ptr %139, i64 7
  %161 = load i16, ptr %160, align 2, !tbaa !75
  %162 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %161, ptr %162, align 16, !tbaa !75
  br label %163

163:                                              ; preds = %120, %130
  %164 = phi i16 [ %126, %120 ], [ %161, %130 ]
  %165 = icmp eq i32 %118, 0
  br i1 %165, label %199, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %168 = load i16, ptr %167, align 2, !tbaa !73
  %169 = sext i16 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %26, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !48
  %172 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %173 = load i16, ptr %172, align 4, !tbaa !74
  %174 = sext i16 %173 to i64
  %175 = getelementptr inbounds i16, ptr %171, i64 %174
  %176 = load i16, ptr %175, align 2, !tbaa !75
  %177 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %176, ptr %177, align 2, !tbaa !75
  %178 = getelementptr inbounds i16, ptr %175, i64 1
  %179 = load i16, ptr %178, align 2, !tbaa !75
  %180 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %179, ptr %180, align 4, !tbaa !75
  %181 = getelementptr inbounds i16, ptr %175, i64 2
  %182 = load i16, ptr %181, align 2, !tbaa !75
  %183 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %182, ptr %183, align 2, !tbaa !75
  %184 = getelementptr inbounds i16, ptr %175, i64 3
  %185 = load i16, ptr %184, align 2, !tbaa !75
  %186 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %185, ptr %186, align 8, !tbaa !75
  %187 = getelementptr inbounds i16, ptr %175, i64 4
  %188 = load i16, ptr %187, align 2, !tbaa !75
  %189 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %188, ptr %189, align 2, !tbaa !75
  %190 = getelementptr inbounds i16, ptr %175, i64 5
  %191 = load i16, ptr %190, align 2, !tbaa !75
  %192 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %191, ptr %192, align 4, !tbaa !75
  %193 = getelementptr inbounds i16, ptr %175, i64 6
  %194 = load i16, ptr %193, align 2, !tbaa !75
  %195 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %194, ptr %195, align 2, !tbaa !75
  %196 = getelementptr inbounds i16, ptr %175, i64 7
  %197 = load i16, ptr %196, align 2, !tbaa !75
  %198 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %197, ptr %198, align 16, !tbaa !75
  br label %203

199:                                              ; preds = %163
  %200 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %201 = insertelement <8 x i16> poison, i16 %164, i64 0
  %202 = shufflevector <8 x i16> %201, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %202, ptr %200, align 2, !tbaa !75
  br label %203

203:                                              ; preds = %199, %166
  %204 = icmp eq i32 %116, 0
  br i1 %204, label %294, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %207 = load i16, ptr %206, align 2, !tbaa !73
  %208 = sext i16 %207 to i64
  %209 = getelementptr inbounds ptr, ptr %26, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !48
  %211 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %212 = load i16, ptr %211, align 4, !tbaa !74
  %213 = sext i16 %212 to i64
  %214 = getelementptr inbounds i16, ptr %210, i64 %213
  %215 = load i16, ptr %214, align 2, !tbaa !75
  %216 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %215, ptr %216, align 2, !tbaa !75
  %217 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 5
  %218 = load i16, ptr %217, align 2, !tbaa !73
  %219 = sext i16 %218 to i64
  %220 = getelementptr inbounds ptr, ptr %26, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !48
  %222 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 4
  %223 = load i16, ptr %222, align 4, !tbaa !74
  %224 = sext i16 %223 to i64
  %225 = getelementptr inbounds i16, ptr %221, i64 %224
  %226 = load i16, ptr %225, align 2, !tbaa !75
  %227 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %226, ptr %227, align 4, !tbaa !75
  %228 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 5
  %229 = load i16, ptr %228, align 2, !tbaa !73
  %230 = sext i16 %229 to i64
  %231 = getelementptr inbounds ptr, ptr %26, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !48
  %233 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 4
  %234 = load i16, ptr %233, align 4, !tbaa !74
  %235 = sext i16 %234 to i64
  %236 = getelementptr inbounds i16, ptr %232, i64 %235
  %237 = load i16, ptr %236, align 2, !tbaa !75
  %238 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %237, ptr %238, align 2, !tbaa !75
  %239 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 5
  %240 = load i16, ptr %239, align 2, !tbaa !73
  %241 = sext i16 %240 to i64
  %242 = getelementptr inbounds ptr, ptr %26, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !48
  %244 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 4
  %245 = load i16, ptr %244, align 4, !tbaa !74
  %246 = sext i16 %245 to i64
  %247 = getelementptr inbounds i16, ptr %243, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !75
  %249 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %248, ptr %249, align 8, !tbaa !75
  %250 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 5
  %251 = load i16, ptr %250, align 2, !tbaa !73
  %252 = sext i16 %251 to i64
  %253 = getelementptr inbounds ptr, ptr %26, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !48
  %255 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 4
  %256 = load i16, ptr %255, align 4, !tbaa !74
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds i16, ptr %254, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !75
  %260 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %259, ptr %260, align 2, !tbaa !75
  %261 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 5
  %262 = load i16, ptr %261, align 2, !tbaa !73
  %263 = sext i16 %262 to i64
  %264 = getelementptr inbounds ptr, ptr %26, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !48
  %266 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 4
  %267 = load i16, ptr %266, align 4, !tbaa !74
  %268 = sext i16 %267 to i64
  %269 = getelementptr inbounds i16, ptr %265, i64 %268
  %270 = load i16, ptr %269, align 2, !tbaa !75
  %271 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %270, ptr %271, align 4, !tbaa !75
  %272 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 5
  %273 = load i16, ptr %272, align 2, !tbaa !73
  %274 = sext i16 %273 to i64
  %275 = getelementptr inbounds ptr, ptr %26, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !48
  %277 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 4
  %278 = load i16, ptr %277, align 4, !tbaa !74
  %279 = sext i16 %278 to i64
  %280 = getelementptr inbounds i16, ptr %276, i64 %279
  %281 = load i16, ptr %280, align 2, !tbaa !75
  %282 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %281, ptr %282, align 2, !tbaa !75
  %283 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 5
  %284 = load i16, ptr %283, align 2, !tbaa !73
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds ptr, ptr %26, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !48
  %288 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 4
  %289 = load i16, ptr %288, align 4, !tbaa !74
  %290 = sext i16 %289 to i64
  %291 = getelementptr inbounds i16, ptr %287, i64 %290
  %292 = load i16, ptr %291, align 2, !tbaa !75
  %293 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %292, ptr %293, align 16, !tbaa !75
  br label %301

294:                                              ; preds = %203
  %295 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %296 = load i32, ptr %295, align 4, !tbaa !76
  %297 = trunc i32 %296 to i16
  %298 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %299 = insertelement <8 x i16> poison, i16 %297, i64 0
  %300 = shufflevector <8 x i16> %299, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %300, ptr %298, align 2, !tbaa !75
  br label %301

301:                                              ; preds = %294, %205
  %302 = icmp eq i32 %117, 0
  br i1 %302, label %314, label %303

303:                                              ; preds = %301
  %304 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %305 = load i16, ptr %304, align 2, !tbaa !73
  %306 = sext i16 %305 to i64
  %307 = getelementptr inbounds ptr, ptr %26, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !48
  %309 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %310 = load i16, ptr %309, align 4, !tbaa !74
  %311 = sext i16 %310 to i64
  %312 = getelementptr inbounds i16, ptr %308, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !75
  br label %318

314:                                              ; preds = %301
  %315 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %316 = load i32, ptr %315, align 4, !tbaa !76
  %317 = trunc i32 %316 to i16
  br label %318

318:                                              ; preds = %314, %303
  %319 = phi i16 [ %317, %314 ], [ %313, %303 ]
  %320 = sext i32 %3 to i64
  store i16 %319, ptr %5, align 16, !tbaa !75
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %117, i32 noundef %115, i32 noundef %116) #7
  %321 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %322 = load i16, ptr %321, align 2, !tbaa !75
  %323 = zext i16 %322 to i32
  %324 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %325 = load i16, ptr %324, align 4, !tbaa !75
  %326 = zext i16 %325 to i32
  %327 = add nuw nsw i32 %326, 1
  %328 = add nuw nsw i32 %327, %323
  %329 = lshr i32 %328, 1
  %330 = trunc i32 %329 to i16
  %331 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %332 = load i16, ptr %331, align 2, !tbaa !75
  %333 = zext i16 %332 to i32
  %334 = add nuw nsw i32 %327, %333
  %335 = lshr i32 %334, 1
  %336 = trunc i32 %335 to i16
  %337 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  %338 = add nuw nsw i32 %333, 1
  %339 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  %340 = load i16, ptr %339, align 8, !tbaa !75
  %341 = zext i16 %340 to i32
  %342 = shl nuw nsw i32 %326, 1
  %343 = add nuw nsw i32 %333, 2
  %344 = add nuw nsw i32 %343, %323
  %345 = add nuw nsw i32 %344, %342
  %346 = lshr i32 %345, 2
  %347 = trunc i32 %346 to i16
  %348 = shl nuw nsw i32 %333, 1
  %349 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  %350 = load i16, ptr %349, align 2, !tbaa !75
  %351 = zext i16 %350 to i32
  %352 = getelementptr inbounds ptr, ptr %31, i64 %320
  %353 = load ptr, ptr %352, align 8, !tbaa !48
  %354 = sext i32 %2 to i64
  %355 = getelementptr inbounds i16, ptr %353, i64 %354
  %356 = getelementptr inbounds i8, ptr %355, i64 2
  %357 = getelementptr inbounds i8, ptr %355, i64 4
  %358 = getelementptr inbounds i8, ptr %355, i64 6
  %359 = getelementptr inbounds i8, ptr %355, i64 8
  %360 = getelementptr inbounds i8, ptr %355, i64 10
  %361 = getelementptr inbounds i8, ptr %355, i64 12
  %362 = getelementptr inbounds i8, ptr %355, i64 14
  %363 = getelementptr ptr, ptr %352, i64 1
  %364 = getelementptr ptr, ptr %352, i64 2
  %365 = getelementptr ptr, ptr %352, i64 3
  %366 = getelementptr ptr, ptr %352, i64 4
  %367 = getelementptr ptr, ptr %352, i64 5
  %368 = getelementptr ptr, ptr %352, i64 6
  %369 = getelementptr ptr, ptr %352, i64 7
  %370 = load <8 x i16>, ptr %337, align 8, !tbaa !75
  %371 = zext <8 x i16> %370 to <8 x i32>
  %372 = extractelement <8 x i32> %371, i64 0
  %373 = add nuw nsw i32 %338, %372
  %374 = lshr i32 %373, 1
  %375 = trunc i32 %374 to i16
  %376 = add nuw nsw i32 %372, 1
  %377 = extractelement <8 x i32> %371, i64 1
  %378 = add nuw nsw i32 %376, %377
  %379 = lshr i32 %378, 1
  %380 = trunc i32 %379 to i16
  %381 = add nuw nsw i32 %377, 1
  %382 = extractelement <8 x i32> %371, i64 2
  %383 = add nuw nsw i32 %381, %382
  %384 = lshr i32 %383, 1
  %385 = trunc i32 %384 to i16
  %386 = add nuw nsw i32 %382, 1
  %387 = extractelement <8 x i32> %371, i64 3
  %388 = add nuw nsw i32 %386, %387
  %389 = lshr i32 %388, 1
  %390 = trunc i32 %389 to i16
  %391 = add nuw nsw i32 %387, 1
  %392 = extractelement <8 x i32> %371, i64 4
  %393 = add nuw nsw i32 %391, %392
  %394 = lshr i32 %393, 1
  %395 = trunc i32 %394 to i16
  %396 = add nuw nsw i32 %392, 1
  %397 = extractelement <8 x i32> %371, i64 5
  %398 = add nuw nsw i32 %396, %397
  %399 = lshr i32 %398, 1
  %400 = trunc i32 %399 to i16
  %401 = add nuw nsw i32 %397, 1
  %402 = extractelement <8 x i32> %371, i64 6
  %403 = add nuw nsw i32 %401, %402
  %404 = lshr i32 %403, 1
  %405 = trunc i32 %404 to i16
  %406 = add nuw nsw i32 %402, 1
  %407 = extractelement <8 x i32> %371, i64 7
  %408 = add nuw nsw i32 %406, %407
  %409 = lshr i32 %408, 1
  %410 = trunc i32 %409 to i16
  %411 = add nuw nsw i32 %407, 1
  %412 = add nuw nsw i32 %411, %341
  %413 = lshr i32 %412, 1
  %414 = trunc i32 %413 to i16
  %415 = add nuw nsw <8 x i32> %371, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %416 = extractelement <8 x i32> %415, i64 0
  %417 = add nuw nsw i32 %416, %326
  %418 = add nuw nsw i32 %417, %348
  %419 = lshr i32 %418, 2
  %420 = trunc i32 %419 to i16
  %421 = shl nuw nsw i32 %372, 1
  %422 = add nuw nsw i32 %343, %377
  %423 = add nuw nsw i32 %422, %421
  %424 = lshr i32 %423, 2
  %425 = trunc i32 %424 to i16
  %426 = shufflevector <8 x i32> %371, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %427 = insertelement <8 x i32> %426, i32 %341, i64 7
  %428 = shl nuw nsw <8 x i32> %427, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %429 = shufflevector <8 x i32> %371, <8 x i32> %427, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 13, i32 14, i32 15, i32 poison>
  %430 = insertelement <8 x i32> %429, i32 %351, i64 7
  %431 = add nuw nsw <8 x i32> %415, %430
  %432 = add nuw nsw <8 x i32> %431, %428
  %433 = lshr <8 x i32> %432, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %434 = trunc <8 x i32> %433 to <8 x i16>
  store i16 %330, ptr %355, align 2
  store i16 %336, ptr %356, align 2
  store i16 %375, ptr %357, align 2
  store i16 %380, ptr %358, align 2
  store i16 %385, ptr %359, align 2
  store i16 %390, ptr %360, align 2
  store i16 %395, ptr %361, align 2
  store i16 %400, ptr %362, align 2
  %435 = load ptr, ptr %363, align 8, !tbaa !48
  %436 = getelementptr inbounds i16, ptr %435, i64 %354
  store i16 %347, ptr %436, align 2
  %437 = getelementptr inbounds i8, ptr %436, i64 2
  store i16 %420, ptr %437, align 2
  %438 = getelementptr inbounds i8, ptr %436, i64 4
  store i16 %425, ptr %438, align 2
  %439 = getelementptr inbounds i8, ptr %436, i64 6
  %440 = extractelement <8 x i16> %434, i64 0
  store i16 %440, ptr %439, align 2
  %441 = getelementptr inbounds i8, ptr %436, i64 8
  %442 = extractelement <8 x i16> %434, i64 1
  store i16 %442, ptr %441, align 2
  %443 = getelementptr inbounds i8, ptr %436, i64 10
  %444 = extractelement <8 x i16> %434, i64 2
  store i16 %444, ptr %443, align 2
  %445 = getelementptr inbounds i8, ptr %436, i64 12
  %446 = extractelement <8 x i16> %434, i64 3
  store i16 %446, ptr %445, align 2
  %447 = getelementptr inbounds i8, ptr %436, i64 14
  %448 = extractelement <8 x i16> %434, i64 4
  store i16 %448, ptr %447, align 2
  %449 = load ptr, ptr %364, align 8, !tbaa !48
  %450 = getelementptr inbounds i16, ptr %449, i64 %354
  store i16 %336, ptr %450, align 2
  %451 = getelementptr inbounds i8, ptr %450, i64 2
  store i16 %375, ptr %451, align 2
  %452 = getelementptr inbounds i8, ptr %450, i64 4
  store i16 %380, ptr %452, align 2
  %453 = getelementptr inbounds i8, ptr %450, i64 6
  store i16 %385, ptr %453, align 2
  %454 = getelementptr inbounds i8, ptr %450, i64 8
  store i16 %390, ptr %454, align 2
  %455 = getelementptr inbounds i8, ptr %450, i64 10
  store i16 %395, ptr %455, align 2
  %456 = getelementptr inbounds i8, ptr %450, i64 12
  store i16 %400, ptr %456, align 2
  %457 = getelementptr inbounds i8, ptr %450, i64 14
  store i16 %405, ptr %457, align 2
  %458 = load ptr, ptr %365, align 8, !tbaa !48
  %459 = getelementptr inbounds i16, ptr %458, i64 %354
  store i16 %420, ptr %459, align 2
  %460 = getelementptr inbounds i8, ptr %459, i64 2
  store i16 %425, ptr %460, align 2
  %461 = getelementptr inbounds i8, ptr %459, i64 4
  store i16 %440, ptr %461, align 2
  %462 = getelementptr inbounds i8, ptr %459, i64 6
  store i16 %442, ptr %462, align 2
  %463 = getelementptr inbounds i8, ptr %459, i64 8
  store i16 %444, ptr %463, align 2
  %464 = getelementptr inbounds i8, ptr %459, i64 10
  store i16 %446, ptr %464, align 2
  %465 = getelementptr inbounds i8, ptr %459, i64 12
  store i16 %448, ptr %465, align 2
  %466 = getelementptr inbounds i8, ptr %459, i64 14
  %467 = extractelement <8 x i16> %434, i64 5
  store i16 %467, ptr %466, align 2
  %468 = load ptr, ptr %366, align 8, !tbaa !48
  %469 = getelementptr inbounds i16, ptr %468, i64 %354
  store i16 %375, ptr %469, align 2
  %470 = getelementptr inbounds i8, ptr %469, i64 2
  store i16 %380, ptr %470, align 2
  %471 = getelementptr inbounds i8, ptr %469, i64 4
  store i16 %385, ptr %471, align 2
  %472 = getelementptr inbounds i8, ptr %469, i64 6
  store i16 %390, ptr %472, align 2
  %473 = getelementptr inbounds i8, ptr %469, i64 8
  store i16 %395, ptr %473, align 2
  %474 = getelementptr inbounds i8, ptr %469, i64 10
  store i16 %400, ptr %474, align 2
  %475 = getelementptr inbounds i8, ptr %469, i64 12
  store i16 %405, ptr %475, align 2
  %476 = getelementptr inbounds i8, ptr %469, i64 14
  store i16 %410, ptr %476, align 2
  %477 = load ptr, ptr %367, align 8, !tbaa !48
  %478 = getelementptr inbounds i16, ptr %477, i64 %354
  store i16 %425, ptr %478, align 2
  %479 = getelementptr inbounds i8, ptr %478, i64 2
  store i16 %440, ptr %479, align 2
  %480 = getelementptr inbounds i8, ptr %478, i64 4
  store i16 %442, ptr %480, align 2
  %481 = getelementptr inbounds i8, ptr %478, i64 6
  store i16 %444, ptr %481, align 2
  %482 = getelementptr inbounds i8, ptr %478, i64 8
  store i16 %446, ptr %482, align 2
  %483 = getelementptr inbounds i8, ptr %478, i64 10
  store i16 %448, ptr %483, align 2
  %484 = getelementptr inbounds i8, ptr %478, i64 12
  store i16 %467, ptr %484, align 2
  %485 = getelementptr inbounds i8, ptr %478, i64 14
  %486 = extractelement <8 x i16> %434, i64 6
  store i16 %486, ptr %485, align 2
  %487 = load ptr, ptr %368, align 8, !tbaa !48
  %488 = getelementptr inbounds i16, ptr %487, i64 %354
  store i16 %380, ptr %488, align 2
  %489 = getelementptr inbounds i8, ptr %488, i64 2
  store i16 %385, ptr %489, align 2
  %490 = getelementptr inbounds i8, ptr %488, i64 4
  store i16 %390, ptr %490, align 2
  %491 = getelementptr inbounds i8, ptr %488, i64 6
  store i16 %395, ptr %491, align 2
  %492 = getelementptr inbounds i8, ptr %488, i64 8
  store i16 %400, ptr %492, align 2
  %493 = getelementptr inbounds i8, ptr %488, i64 10
  store i16 %405, ptr %493, align 2
  %494 = getelementptr inbounds i8, ptr %488, i64 12
  store i16 %410, ptr %494, align 2
  %495 = getelementptr inbounds i8, ptr %488, i64 14
  store i16 %414, ptr %495, align 2
  %496 = load ptr, ptr %369, align 8, !tbaa !48
  %497 = getelementptr inbounds i16, ptr %496, i64 %354
  store <8 x i16> %434, ptr %497, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_hor_up_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !100 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  br label %34

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %35
  %37 = trunc i64 %35 to i32
  %38 = add i32 %37, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %38, ptr noundef nonnull %32, ptr noundef nonnull %36) #9
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, 8
  br i1 %40, label %41, label %34, !llvm.loop !101

41:                                               ; preds = %34
  %42 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %43 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %43, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %44 = load i32, ptr %8, align 4, !tbaa !60
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %2, 8
  %47 = icmp ne i32 %3, 8
  %48 = or i1 %46, %47
  %49 = and i1 %48, %45
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %8, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %52, i64 0, i32 30
  %54 = load i32, ptr %53, align 4, !tbaa !68
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %110, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  br label %58

58:                                               ; preds = %56, %72
  %59 = phi i64 [ 0, %56 ], [ %75, %72 ]
  %60 = phi i32 [ 1, %56 ], [ %74, %72 ]
  %61 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59
  %62 = load i32, ptr %61, align 16, !tbaa !60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %57, align 8, !tbaa !70
  %66 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !71
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %65, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !49
  %71 = sext i8 %70 to i32
  br label %72

72:                                               ; preds = %58, %64
  %73 = phi i32 [ %71, %64 ], [ 0, %58 ]
  %74 = and i32 %73, %60
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %58, !llvm.loop !102

77:                                               ; preds = %72
  %78 = load i32, ptr %7, align 4, !tbaa !60
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %57, align 8, !tbaa !70
  %82 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !71
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !49
  %87 = sext i8 %86 to i32
  br label %88

88:                                               ; preds = %77, %80
  %89 = phi i32 [ %87, %80 ], [ 0, %77 ]
  br i1 %49, label %90, label %98

90:                                               ; preds = %88
  %91 = load ptr, ptr %57, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !71
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !49
  %97 = sext i8 %96 to i32
  br label %98

98:                                               ; preds = %88, %90
  %99 = phi i32 [ %97, %90 ], [ 0, %88 ]
  %100 = load i32, ptr %9, align 4, !tbaa !60
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %57, align 8, !tbaa !70
  %104 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !71
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %103, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !49
  %109 = sext i8 %108 to i32
  br label %114

110:                                              ; preds = %41
  %111 = load i32, ptr %6, align 16, !tbaa !60
  %112 = load i32, ptr %7, align 4, !tbaa !60
  %113 = load i32, ptr %9, align 4, !tbaa !60
  br label %114

114:                                              ; preds = %102, %98, %110
  %115 = phi i32 [ %50, %110 ], [ %99, %98 ], [ %99, %102 ]
  %116 = phi i32 [ %113, %110 ], [ 0, %98 ], [ %109, %102 ]
  %117 = phi i32 [ %111, %110 ], [ %74, %98 ], [ %74, %102 ]
  %118 = phi i32 [ %112, %110 ], [ %89, %98 ], [ %89, %102 ]
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %122 = load i32, ptr %121, align 4, !tbaa !82
  %123 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %122) #7
  br label %124

124:                                              ; preds = %120, %114
  %125 = icmp eq i32 %118, 0
  br i1 %125, label %159, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %128 = load i16, ptr %127, align 2, !tbaa !73
  %129 = sext i16 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %26, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !48
  %132 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %133 = load i16, ptr %132, align 4, !tbaa !74
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds i16, ptr %131, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !75
  %137 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %136, ptr %137, align 2, !tbaa !75
  %138 = getelementptr inbounds i16, ptr %135, i64 1
  %139 = load i16, ptr %138, align 2, !tbaa !75
  %140 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %139, ptr %140, align 4, !tbaa !75
  %141 = getelementptr inbounds i16, ptr %135, i64 2
  %142 = load i16, ptr %141, align 2, !tbaa !75
  %143 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %142, ptr %143, align 2, !tbaa !75
  %144 = getelementptr inbounds i16, ptr %135, i64 3
  %145 = load i16, ptr %144, align 2, !tbaa !75
  %146 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %145, ptr %146, align 8, !tbaa !75
  %147 = getelementptr inbounds i16, ptr %135, i64 4
  %148 = load i16, ptr %147, align 2, !tbaa !75
  %149 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %148, ptr %149, align 2, !tbaa !75
  %150 = getelementptr inbounds i16, ptr %135, i64 5
  %151 = load i16, ptr %150, align 2, !tbaa !75
  %152 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %151, ptr %152, align 4, !tbaa !75
  %153 = getelementptr inbounds i16, ptr %135, i64 6
  %154 = load i16, ptr %153, align 2, !tbaa !75
  %155 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %154, ptr %155, align 2, !tbaa !75
  %156 = getelementptr inbounds i16, ptr %135, i64 7
  %157 = load i16, ptr %156, align 2, !tbaa !75
  %158 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %157, ptr %158, align 16, !tbaa !75
  br label %166

159:                                              ; preds = %124
  %160 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %161 = load i32, ptr %160, align 4, !tbaa !76
  %162 = trunc i32 %161 to i16
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %164 = insertelement <8 x i16> poison, i16 %162, i64 0
  %165 = shufflevector <8 x i16> %164, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %165, ptr %163, align 2, !tbaa !75
  br label %166

166:                                              ; preds = %159, %126
  %167 = phi i16 [ %162, %159 ], [ %157, %126 ]
  %168 = icmp eq i32 %115, 0
  br i1 %168, label %202, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %171 = load i16, ptr %170, align 2, !tbaa !73
  %172 = sext i16 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %26, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !48
  %175 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %176 = load i16, ptr %175, align 4, !tbaa !74
  %177 = sext i16 %176 to i64
  %178 = getelementptr inbounds i16, ptr %174, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !75
  %180 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %179, ptr %180, align 2, !tbaa !75
  %181 = getelementptr inbounds i16, ptr %178, i64 1
  %182 = load i16, ptr %181, align 2, !tbaa !75
  %183 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %182, ptr %183, align 4, !tbaa !75
  %184 = getelementptr inbounds i16, ptr %178, i64 2
  %185 = load i16, ptr %184, align 2, !tbaa !75
  %186 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %185, ptr %186, align 2, !tbaa !75
  %187 = getelementptr inbounds i16, ptr %178, i64 3
  %188 = load i16, ptr %187, align 2, !tbaa !75
  %189 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %188, ptr %189, align 8, !tbaa !75
  %190 = getelementptr inbounds i16, ptr %178, i64 4
  %191 = load i16, ptr %190, align 2, !tbaa !75
  %192 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %191, ptr %192, align 2, !tbaa !75
  %193 = getelementptr inbounds i16, ptr %178, i64 5
  %194 = load i16, ptr %193, align 2, !tbaa !75
  %195 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %194, ptr %195, align 4, !tbaa !75
  %196 = getelementptr inbounds i16, ptr %178, i64 6
  %197 = load i16, ptr %196, align 2, !tbaa !75
  %198 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %197, ptr %198, align 2, !tbaa !75
  %199 = getelementptr inbounds i16, ptr %178, i64 7
  %200 = load i16, ptr %199, align 2, !tbaa !75
  %201 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %200, ptr %201, align 16, !tbaa !75
  br label %206

202:                                              ; preds = %166
  %203 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %204 = insertelement <8 x i16> poison, i16 %167, i64 0
  %205 = shufflevector <8 x i16> %204, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %205, ptr %203, align 2, !tbaa !75
  br label %206

206:                                              ; preds = %202, %169
  br i1 %119, label %296, label %207

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %209 = load i16, ptr %208, align 2, !tbaa !73
  %210 = sext i16 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %26, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !48
  %213 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %214 = load i16, ptr %213, align 4, !tbaa !74
  %215 = sext i16 %214 to i64
  %216 = getelementptr inbounds i16, ptr %212, i64 %215
  %217 = load i16, ptr %216, align 2, !tbaa !75
  %218 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %217, ptr %218, align 2, !tbaa !75
  %219 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 5
  %220 = load i16, ptr %219, align 2, !tbaa !73
  %221 = sext i16 %220 to i64
  %222 = getelementptr inbounds ptr, ptr %26, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !48
  %224 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 4
  %225 = load i16, ptr %224, align 4, !tbaa !74
  %226 = sext i16 %225 to i64
  %227 = getelementptr inbounds i16, ptr %223, i64 %226
  %228 = load i16, ptr %227, align 2, !tbaa !75
  %229 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %228, ptr %229, align 4, !tbaa !75
  %230 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 5
  %231 = load i16, ptr %230, align 2, !tbaa !73
  %232 = sext i16 %231 to i64
  %233 = getelementptr inbounds ptr, ptr %26, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !48
  %235 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 4
  %236 = load i16, ptr %235, align 4, !tbaa !74
  %237 = sext i16 %236 to i64
  %238 = getelementptr inbounds i16, ptr %234, i64 %237
  %239 = load i16, ptr %238, align 2, !tbaa !75
  %240 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %239, ptr %240, align 2, !tbaa !75
  %241 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 5
  %242 = load i16, ptr %241, align 2, !tbaa !73
  %243 = sext i16 %242 to i64
  %244 = getelementptr inbounds ptr, ptr %26, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !48
  %246 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 4
  %247 = load i16, ptr %246, align 4, !tbaa !74
  %248 = sext i16 %247 to i64
  %249 = getelementptr inbounds i16, ptr %245, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !75
  %251 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %250, ptr %251, align 8, !tbaa !75
  %252 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 5
  %253 = load i16, ptr %252, align 2, !tbaa !73
  %254 = sext i16 %253 to i64
  %255 = getelementptr inbounds ptr, ptr %26, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !48
  %257 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 4
  %258 = load i16, ptr %257, align 4, !tbaa !74
  %259 = sext i16 %258 to i64
  %260 = getelementptr inbounds i16, ptr %256, i64 %259
  %261 = load i16, ptr %260, align 2, !tbaa !75
  %262 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %261, ptr %262, align 2, !tbaa !75
  %263 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 5
  %264 = load i16, ptr %263, align 2, !tbaa !73
  %265 = sext i16 %264 to i64
  %266 = getelementptr inbounds ptr, ptr %26, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !48
  %268 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 4
  %269 = load i16, ptr %268, align 4, !tbaa !74
  %270 = sext i16 %269 to i64
  %271 = getelementptr inbounds i16, ptr %267, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !75
  %273 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %272, ptr %273, align 4, !tbaa !75
  %274 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 5
  %275 = load i16, ptr %274, align 2, !tbaa !73
  %276 = sext i16 %275 to i64
  %277 = getelementptr inbounds ptr, ptr %26, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !48
  %279 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 4
  %280 = load i16, ptr %279, align 4, !tbaa !74
  %281 = sext i16 %280 to i64
  %282 = getelementptr inbounds i16, ptr %278, i64 %281
  %283 = load i16, ptr %282, align 2, !tbaa !75
  %284 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %283, ptr %284, align 2, !tbaa !75
  %285 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 5
  %286 = load i16, ptr %285, align 2, !tbaa !73
  %287 = sext i16 %286 to i64
  %288 = getelementptr inbounds ptr, ptr %26, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !48
  %290 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 4
  %291 = load i16, ptr %290, align 4, !tbaa !74
  %292 = sext i16 %291 to i64
  %293 = getelementptr inbounds i16, ptr %289, i64 %292
  %294 = load i16, ptr %293, align 2, !tbaa !75
  %295 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %294, ptr %295, align 16, !tbaa !75
  br label %303

296:                                              ; preds = %206
  %297 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %298 = load i32, ptr %297, align 4, !tbaa !76
  %299 = trunc i32 %298 to i16
  %300 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %301 = insertelement <8 x i16> poison, i16 %299, i64 0
  %302 = shufflevector <8 x i16> %301, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %302, ptr %300, align 2, !tbaa !75
  br label %303

303:                                              ; preds = %296, %207
  %304 = icmp eq i32 %116, 0
  br i1 %304, label %316, label %305

305:                                              ; preds = %303
  %306 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %307 = load i16, ptr %306, align 2, !tbaa !73
  %308 = sext i16 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %26, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !48
  %311 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %312 = load i16, ptr %311, align 4, !tbaa !74
  %313 = sext i16 %312 to i64
  %314 = getelementptr inbounds i16, ptr %310, i64 %313
  %315 = load i16, ptr %314, align 2, !tbaa !75
  br label %320

316:                                              ; preds = %303
  %317 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %318 = load i32, ptr %317, align 4, !tbaa !76
  %319 = trunc i32 %318 to i16
  br label %320

320:                                              ; preds = %316, %305
  %321 = phi i16 [ %319, %316 ], [ %315, %305 ]
  %322 = sext i32 %3 to i64
  store i16 %321, ptr %5, align 16, !tbaa !75
  %323 = add nsw i32 %2, 7
  %324 = add nsw i32 %2, 6
  %325 = add nsw i32 %2, 5
  %326 = add nsw i32 %2, 4
  %327 = add nsw i32 %2, 3
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %116, i32 noundef %118, i32 noundef %117) #7
  %328 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %329 = load i16, ptr %328, align 2, !tbaa !75
  %330 = zext i16 %329 to i32
  %331 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %332 = load i16, ptr %331, align 4, !tbaa !75
  %333 = zext i16 %332 to i32
  %334 = add nuw nsw i32 %333, 1
  %335 = add nuw nsw i32 %334, %330
  %336 = lshr i32 %335, 1
  %337 = trunc i32 %336 to i16
  %338 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  %339 = load i16, ptr %338, align 2, !tbaa !75
  %340 = zext i16 %339 to i32
  %341 = shl nuw nsw i32 %333, 1
  %342 = add nuw nsw i32 %340, 2
  %343 = add nuw nsw i32 %342, %330
  %344 = add nuw nsw i32 %343, %341
  %345 = lshr i32 %344, 2
  %346 = trunc i32 %345 to i16
  %347 = add nuw nsw i32 %334, %340
  %348 = lshr i32 %347, 1
  %349 = trunc i32 %348 to i16
  %350 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  %351 = load i16, ptr %350, align 8, !tbaa !75
  %352 = zext i16 %351 to i32
  %353 = shl nuw nsw i32 %340, 1
  %354 = add nuw nsw i32 %352, 2
  %355 = add nuw nsw i32 %354, %333
  %356 = add nuw nsw i32 %355, %353
  %357 = lshr i32 %356, 2
  %358 = trunc i32 %357 to i16
  %359 = add nuw nsw i32 %340, 1
  %360 = add nuw nsw i32 %359, %352
  %361 = lshr i32 %360, 1
  %362 = trunc i32 %361 to i16
  %363 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  %364 = load i16, ptr %363, align 2, !tbaa !75
  %365 = zext i16 %364 to i32
  %366 = shl nuw nsw i32 %352, 1
  %367 = add nuw nsw i32 %342, %365
  %368 = add nuw nsw i32 %367, %366
  %369 = lshr i32 %368, 2
  %370 = trunc i32 %369 to i16
  %371 = add nuw nsw i32 %352, 1
  %372 = add nuw nsw i32 %371, %365
  %373 = lshr i32 %372, 1
  %374 = trunc i32 %373 to i16
  %375 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %376 = load i16, ptr %375, align 4, !tbaa !75
  %377 = zext i16 %376 to i32
  %378 = shl nuw nsw i32 %365, 1
  %379 = add nuw nsw i32 %354, %377
  %380 = add nuw nsw i32 %379, %378
  %381 = lshr i32 %380, 2
  %382 = trunc i32 %381 to i16
  %383 = add nuw nsw i32 %365, 1
  %384 = add nuw nsw i32 %383, %377
  %385 = lshr i32 %384, 1
  %386 = trunc i32 %385 to i16
  %387 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %388 = load i16, ptr %387, align 2, !tbaa !75
  %389 = zext i16 %388 to i32
  %390 = shl nuw nsw i32 %377, 1
  %391 = add nuw nsw i32 %365, 2
  %392 = add nuw nsw i32 %391, %389
  %393 = add nuw nsw i32 %392, %390
  %394 = lshr i32 %393, 2
  %395 = trunc i32 %394 to i16
  %396 = add nuw nsw i32 %377, 1
  %397 = add nuw nsw i32 %396, %389
  %398 = lshr i32 %397, 1
  %399 = trunc i32 %398 to i16
  %400 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  %401 = load i16, ptr %400, align 16, !tbaa !75
  %402 = zext i16 %401 to i32
  %403 = shl nuw nsw i32 %389, 1
  %404 = add nuw nsw i32 %377, 2
  %405 = add nuw nsw i32 %404, %402
  %406 = add nuw nsw i32 %405, %403
  %407 = lshr i32 %406, 2
  %408 = trunc i32 %407 to i16
  %409 = add nuw nsw i32 %389, 1
  %410 = add nuw nsw i32 %409, %402
  %411 = lshr i32 %410, 1
  %412 = trunc i32 %411 to i16
  %413 = mul nuw nsw i32 %402, 3
  %414 = add nuw nsw i32 %389, 2
  %415 = add nuw nsw i32 %414, %413
  %416 = lshr i32 %415, 2
  %417 = trunc i32 %416 to i16
  %418 = getelementptr inbounds ptr, ptr %31, i64 %322
  %419 = load ptr, ptr %418, align 8, !tbaa !48
  %420 = sext i32 %2 to i64
  %421 = getelementptr inbounds i16, ptr %419, i64 %420
  store i16 %337, ptr %421, align 2
  %422 = getelementptr inbounds i8, ptr %421, i64 2
  store i16 %346, ptr %422, align 2
  %423 = getelementptr inbounds i8, ptr %421, i64 4
  store i16 %349, ptr %423, align 2
  %424 = getelementptr inbounds i8, ptr %421, i64 6
  store i16 %358, ptr %424, align 2
  %425 = getelementptr inbounds i8, ptr %421, i64 8
  store i16 %362, ptr %425, align 2
  %426 = getelementptr inbounds i8, ptr %421, i64 10
  store i16 %370, ptr %426, align 2
  %427 = getelementptr inbounds i8, ptr %421, i64 12
  store i16 %374, ptr %427, align 2
  %428 = getelementptr inbounds i8, ptr %421, i64 14
  store i16 %382, ptr %428, align 2
  %429 = getelementptr ptr, ptr %418, i64 1
  %430 = load ptr, ptr %429, align 8, !tbaa !48
  %431 = getelementptr inbounds i16, ptr %430, i64 %420
  store i16 %349, ptr %431, align 2
  %432 = getelementptr inbounds i8, ptr %431, i64 2
  store i16 %358, ptr %432, align 2
  %433 = getelementptr inbounds i8, ptr %431, i64 4
  store i16 %362, ptr %433, align 2
  %434 = getelementptr inbounds i8, ptr %431, i64 6
  store i16 %370, ptr %434, align 2
  %435 = getelementptr inbounds i8, ptr %431, i64 8
  store i16 %374, ptr %435, align 2
  %436 = getelementptr inbounds i8, ptr %431, i64 10
  store i16 %382, ptr %436, align 2
  %437 = getelementptr inbounds i8, ptr %431, i64 12
  store i16 %386, ptr %437, align 2
  %438 = getelementptr inbounds i8, ptr %431, i64 14
  store i16 %395, ptr %438, align 2
  %439 = getelementptr ptr, ptr %418, i64 2
  %440 = load ptr, ptr %439, align 8, !tbaa !48
  %441 = getelementptr inbounds i16, ptr %440, i64 %420
  store i16 %362, ptr %441, align 2
  %442 = getelementptr inbounds i8, ptr %441, i64 2
  store i16 %370, ptr %442, align 2
  %443 = getelementptr inbounds i8, ptr %441, i64 4
  store i16 %374, ptr %443, align 2
  %444 = getelementptr inbounds i8, ptr %441, i64 6
  store i16 %382, ptr %444, align 2
  %445 = getelementptr inbounds i8, ptr %441, i64 8
  store i16 %386, ptr %445, align 2
  %446 = getelementptr inbounds i8, ptr %441, i64 10
  store i16 %395, ptr %446, align 2
  %447 = getelementptr inbounds i8, ptr %441, i64 12
  store i16 %399, ptr %447, align 2
  %448 = getelementptr inbounds i8, ptr %441, i64 14
  store i16 %408, ptr %448, align 2
  %449 = getelementptr ptr, ptr %418, i64 3
  %450 = load ptr, ptr %449, align 8, !tbaa !48
  %451 = getelementptr inbounds i16, ptr %450, i64 %420
  store i16 %374, ptr %451, align 2
  %452 = getelementptr inbounds i8, ptr %451, i64 2
  store i16 %382, ptr %452, align 2
  %453 = getelementptr inbounds i8, ptr %451, i64 4
  store i16 %386, ptr %453, align 2
  %454 = getelementptr inbounds i8, ptr %451, i64 6
  store i16 %395, ptr %454, align 2
  %455 = getelementptr inbounds i8, ptr %451, i64 8
  store i16 %399, ptr %455, align 2
  %456 = getelementptr inbounds i8, ptr %451, i64 10
  store i16 %408, ptr %456, align 2
  %457 = getelementptr inbounds i8, ptr %451, i64 12
  store i16 %412, ptr %457, align 2
  %458 = getelementptr inbounds i8, ptr %451, i64 14
  store i16 %417, ptr %458, align 2
  %459 = getelementptr ptr, ptr %418, i64 4
  %460 = load ptr, ptr %459, align 8, !tbaa !48
  %461 = getelementptr inbounds i16, ptr %460, i64 %420
  store i16 %386, ptr %461, align 2
  %462 = getelementptr inbounds i8, ptr %461, i64 2
  store i16 %395, ptr %462, align 2
  %463 = getelementptr inbounds i8, ptr %461, i64 4
  store i16 %399, ptr %463, align 2
  %464 = getelementptr inbounds i8, ptr %461, i64 6
  store i16 %408, ptr %464, align 2
  %465 = getelementptr inbounds i8, ptr %461, i64 8
  store i16 %412, ptr %465, align 2
  %466 = getelementptr inbounds i8, ptr %461, i64 10
  store i16 %417, ptr %466, align 2
  %467 = getelementptr inbounds i8, ptr %461, i64 12
  store i16 %401, ptr %467, align 2
  %468 = getelementptr ptr, ptr %418, i64 5
  %469 = load ptr, ptr %468, align 8, !tbaa !48
  %470 = getelementptr inbounds i16, ptr %469, i64 %420
  store i16 %399, ptr %470, align 2
  %471 = getelementptr inbounds i8, ptr %470, i64 2
  store i16 %408, ptr %471, align 2
  %472 = getelementptr inbounds i8, ptr %470, i64 4
  store i16 %412, ptr %472, align 2
  %473 = getelementptr inbounds i8, ptr %470, i64 6
  store i16 %417, ptr %473, align 2
  %474 = getelementptr inbounds i8, ptr %470, i64 8
  store i16 %401, ptr %474, align 2
  %475 = getelementptr ptr, ptr %418, i64 6
  %476 = load ptr, ptr %475, align 8, !tbaa !48
  %477 = getelementptr inbounds i16, ptr %476, i64 %420
  store i16 %412, ptr %477, align 2
  %478 = getelementptr inbounds i8, ptr %477, i64 2
  store i16 %417, ptr %478, align 2
  %479 = getelementptr inbounds i8, ptr %477, i64 4
  store i16 %401, ptr %479, align 2
  %480 = load ptr, ptr %459, align 8, !tbaa !48
  %481 = sext i32 %323 to i64
  %482 = getelementptr inbounds i16, ptr %480, i64 %481
  store i16 %401, ptr %482, align 2, !tbaa !75
  %483 = load ptr, ptr %468, align 8, !tbaa !48
  %484 = getelementptr inbounds i16, ptr %483, i64 %481
  store i16 %401, ptr %484, align 2, !tbaa !75
  %485 = sext i32 %324 to i64
  %486 = getelementptr inbounds i16, ptr %483, i64 %485
  store i16 %401, ptr %486, align 2, !tbaa !75
  %487 = sext i32 %325 to i64
  %488 = getelementptr inbounds i16, ptr %483, i64 %487
  store i16 %401, ptr %488, align 2, !tbaa !75
  %489 = load ptr, ptr %475, align 8, !tbaa !48
  %490 = getelementptr inbounds i16, ptr %489, i64 %481
  store i16 %401, ptr %490, align 2, !tbaa !75
  %491 = getelementptr inbounds i16, ptr %489, i64 %485
  store i16 %401, ptr %491, align 2, !tbaa !75
  %492 = getelementptr inbounds i16, ptr %489, i64 %487
  store i16 %401, ptr %492, align 2, !tbaa !75
  %493 = sext i32 %326 to i64
  %494 = getelementptr inbounds i16, ptr %489, i64 %493
  store i16 %401, ptr %494, align 2, !tbaa !75
  %495 = sext i32 %327 to i64
  %496 = getelementptr inbounds i16, ptr %489, i64 %495
  store i16 %401, ptr %496, align 2, !tbaa !75
  %497 = getelementptr ptr, ptr %418, i64 7
  %498 = load ptr, ptr %497, align 8, !tbaa !48
  %499 = getelementptr inbounds i16, ptr %498, i64 %481
  store i16 %401, ptr %499, align 2, !tbaa !75
  %500 = getelementptr inbounds i16, ptr %498, i64 %485
  store i16 %401, ptr %500, align 2, !tbaa !75
  %501 = getelementptr inbounds i16, ptr %498, i64 %487
  store i16 %401, ptr %501, align 2, !tbaa !75
  %502 = getelementptr inbounds i16, ptr %498, i64 %493
  store i16 %401, ptr %502, align 2, !tbaa !75
  %503 = getelementptr inbounds i16, ptr %498, i64 %495
  store i16 %401, ptr %503, align 2, !tbaa !75
  %504 = getelementptr i16, ptr %498, i64 %420
  %505 = getelementptr i16, ptr %504, i64 2
  store i16 %401, ptr %505, align 2, !tbaa !75
  %506 = getelementptr i16, ptr %504, i64 1
  store i16 %401, ptr %506, align 2, !tbaa !75
  store i16 %401, ptr %504, align 2, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_hor_down_pred_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !103 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca [8 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  br label %34

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %35
  %37 = trunc i64 %35 to i32
  %38 = add i32 %37, %3
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %38, ptr noundef nonnull %32, ptr noundef nonnull %36) #9
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, 8
  br i1 %40, label %41, label %34, !llvm.loop !104

41:                                               ; preds = %34
  %42 = add nsw i32 %3, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %43 = add nsw i32 %2, 8
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %43, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %44 = load i32, ptr %8, align 4, !tbaa !60
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %2, 8
  %47 = icmp ne i32 %3, 8
  %48 = or i1 %46, %47
  %49 = and i1 %48, %45
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %8, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %52, i64 0, i32 30
  %54 = load i32, ptr %53, align 4, !tbaa !68
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %116, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  br label %58

58:                                               ; preds = %56, %72
  %59 = phi i64 [ 0, %56 ], [ %75, %72 ]
  %60 = phi i32 [ 1, %56 ], [ %74, %72 ]
  %61 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59
  %62 = load i32, ptr %61, align 16, !tbaa !60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %57, align 8, !tbaa !70
  %66 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 %59, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !71
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %65, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !49
  %71 = sext i8 %70 to i32
  br label %72

72:                                               ; preds = %58, %64
  %73 = phi i32 [ %71, %64 ], [ 0, %58 ]
  %74 = and i32 %73, %60
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %58, !llvm.loop !105

77:                                               ; preds = %72
  %78 = load i32, ptr %7, align 4, !tbaa !60
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %57, align 8, !tbaa !70
  %82 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !71
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !49
  %87 = sext i8 %86 to i32
  br label %88

88:                                               ; preds = %77, %80
  %89 = phi i32 [ %87, %80 ], [ 0, %77 ]
  br i1 %49, label %90, label %98

90:                                               ; preds = %88
  %91 = load ptr, ptr %57, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !71
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !49
  %97 = sext i8 %96 to i32
  br label %98

98:                                               ; preds = %88, %90
  %99 = phi i32 [ %97, %90 ], [ 0, %88 ]
  %100 = load i32, ptr %9, align 4, !tbaa !60
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = icmp eq i32 %89, 0
  %104 = icmp ne i32 %74, 0
  %105 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %106 = load i32, ptr %105, align 4, !tbaa !82
  %107 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %106) #7
  br i1 %103, label %173, label %134

108:                                              ; preds = %98
  %109 = load ptr, ptr %57, align 8, !tbaa !70
  %110 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !71
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %109, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !49
  %115 = sext i8 %114 to i32
  br label %120

116:                                              ; preds = %41
  %117 = load i32, ptr %6, align 16, !tbaa !60
  %118 = load i32, ptr %7, align 4, !tbaa !60
  %119 = load i32, ptr %9, align 4, !tbaa !60
  br label %120

120:                                              ; preds = %108, %116
  %121 = phi i32 [ %50, %116 ], [ %99, %108 ]
  %122 = phi i32 [ %119, %116 ], [ %115, %108 ]
  %123 = phi i32 [ %117, %116 ], [ %74, %108 ]
  %124 = phi i32 [ %118, %116 ], [ %89, %108 ]
  %125 = icmp ne i32 %124, 0
  %126 = icmp ne i32 %123, 0
  %127 = select i1 %125, i1 %126, i1 false
  %128 = icmp ne i32 %122, 0
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %134, label %130

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %132 = load i32, ptr %131, align 4, !tbaa !82
  %133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %132) #7
  br i1 %125, label %134, label %173

134:                                              ; preds = %120, %102, %130
  %135 = phi i32 [ %121, %130 ], [ %99, %102 ], [ %121, %120 ]
  %136 = phi i32 [ %122, %130 ], [ 0, %102 ], [ %122, %120 ]
  %137 = phi i32 [ %123, %130 ], [ %74, %102 ], [ %123, %120 ]
  %138 = phi i32 [ %124, %130 ], [ %89, %102 ], [ %124, %120 ]
  %139 = phi i1 [ %126, %130 ], [ %104, %102 ], [ true, %120 ]
  %140 = phi i1 [ %128, %130 ], [ false, %102 ], [ true, %120 ]
  %141 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %142 = load i16, ptr %141, align 2, !tbaa !73
  %143 = sext i16 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %26, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !48
  %146 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %147 = load i16, ptr %146, align 4, !tbaa !74
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds i16, ptr %145, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !75
  %151 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %150, ptr %151, align 2, !tbaa !75
  %152 = getelementptr inbounds i16, ptr %149, i64 1
  %153 = load i16, ptr %152, align 2, !tbaa !75
  %154 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %153, ptr %154, align 4, !tbaa !75
  %155 = getelementptr inbounds i16, ptr %149, i64 2
  %156 = load i16, ptr %155, align 2, !tbaa !75
  %157 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %156, ptr %157, align 2, !tbaa !75
  %158 = getelementptr inbounds i16, ptr %149, i64 3
  %159 = load i16, ptr %158, align 2, !tbaa !75
  %160 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %159, ptr %160, align 8, !tbaa !75
  %161 = getelementptr inbounds i16, ptr %149, i64 4
  %162 = load i16, ptr %161, align 2, !tbaa !75
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %162, ptr %163, align 2, !tbaa !75
  %164 = getelementptr inbounds i16, ptr %149, i64 5
  %165 = load i16, ptr %164, align 2, !tbaa !75
  %166 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %165, ptr %166, align 4, !tbaa !75
  %167 = getelementptr inbounds i16, ptr %149, i64 6
  %168 = load i16, ptr %167, align 2, !tbaa !75
  %169 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %168, ptr %169, align 2, !tbaa !75
  %170 = getelementptr inbounds i16, ptr %149, i64 7
  %171 = load i16, ptr %170, align 2, !tbaa !75
  %172 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %171, ptr %172, align 16, !tbaa !75
  br label %185

173:                                              ; preds = %102, %130
  %174 = phi i32 [ %121, %130 ], [ %99, %102 ]
  %175 = phi i32 [ %122, %130 ], [ 0, %102 ]
  %176 = phi i32 [ %123, %130 ], [ %74, %102 ]
  %177 = phi i1 [ %126, %130 ], [ %104, %102 ]
  %178 = phi i1 [ %128, %130 ], [ false, %102 ]
  %179 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %180 = load i32, ptr %179, align 4, !tbaa !76
  %181 = trunc i32 %180 to i16
  %182 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %183 = insertelement <8 x i16> poison, i16 %181, i64 0
  %184 = shufflevector <8 x i16> %183, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %184, ptr %182, align 2, !tbaa !75
  br label %185

185:                                              ; preds = %173, %134
  %186 = phi i16 [ %181, %173 ], [ %171, %134 ]
  %187 = phi i32 [ %174, %173 ], [ %135, %134 ]
  %188 = phi i32 [ %175, %173 ], [ %136, %134 ]
  %189 = phi i32 [ %176, %173 ], [ %137, %134 ]
  %190 = phi i32 [ 0, %173 ], [ %138, %134 ]
  %191 = phi i1 [ %177, %173 ], [ %139, %134 ]
  %192 = phi i1 [ %178, %173 ], [ %140, %134 ]
  %193 = icmp eq i32 %187, 0
  br i1 %193, label %227, label %194

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %196 = load i16, ptr %195, align 2, !tbaa !73
  %197 = sext i16 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %26, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !48
  %200 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %201 = load i16, ptr %200, align 4, !tbaa !74
  %202 = sext i16 %201 to i64
  %203 = getelementptr inbounds i16, ptr %199, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !75
  %205 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %204, ptr %205, align 2, !tbaa !75
  %206 = getelementptr inbounds i16, ptr %203, i64 1
  %207 = load i16, ptr %206, align 2, !tbaa !75
  %208 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %207, ptr %208, align 4, !tbaa !75
  %209 = getelementptr inbounds i16, ptr %203, i64 2
  %210 = load i16, ptr %209, align 2, !tbaa !75
  %211 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %210, ptr %211, align 2, !tbaa !75
  %212 = getelementptr inbounds i16, ptr %203, i64 3
  %213 = load i16, ptr %212, align 2, !tbaa !75
  %214 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %213, ptr %214, align 8, !tbaa !75
  %215 = getelementptr inbounds i16, ptr %203, i64 4
  %216 = load i16, ptr %215, align 2, !tbaa !75
  %217 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %216, ptr %217, align 2, !tbaa !75
  %218 = getelementptr inbounds i16, ptr %203, i64 5
  %219 = load i16, ptr %218, align 2, !tbaa !75
  %220 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %219, ptr %220, align 4, !tbaa !75
  %221 = getelementptr inbounds i16, ptr %203, i64 6
  %222 = load i16, ptr %221, align 2, !tbaa !75
  %223 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %222, ptr %223, align 2, !tbaa !75
  %224 = getelementptr inbounds i16, ptr %203, i64 7
  %225 = load i16, ptr %224, align 2, !tbaa !75
  %226 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %225, ptr %226, align 16, !tbaa !75
  br label %231

227:                                              ; preds = %185
  %228 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %229 = insertelement <8 x i16> poison, i16 %186, i64 0
  %230 = shufflevector <8 x i16> %229, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %230, ptr %228, align 2, !tbaa !75
  br label %231

231:                                              ; preds = %227, %194
  br i1 %191, label %232, label %320

232:                                              ; preds = %231
  %233 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %234 = load i16, ptr %233, align 2, !tbaa !73
  %235 = sext i16 %234 to i64
  %236 = getelementptr inbounds ptr, ptr %26, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !48
  %238 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %239 = load i16, ptr %238, align 4, !tbaa !74
  %240 = sext i16 %239 to i64
  %241 = getelementptr inbounds i16, ptr %237, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !75
  %243 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %242, ptr %243, align 2, !tbaa !75
  %244 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 5
  %245 = load i16, ptr %244, align 2, !tbaa !73
  %246 = sext i16 %245 to i64
  %247 = getelementptr inbounds ptr, ptr %26, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !48
  %249 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 1, i32 4
  %250 = load i16, ptr %249, align 4, !tbaa !74
  %251 = sext i16 %250 to i64
  %252 = getelementptr inbounds i16, ptr %248, i64 %251
  %253 = load i16, ptr %252, align 2, !tbaa !75
  %254 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %253, ptr %254, align 4, !tbaa !75
  %255 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 5
  %256 = load i16, ptr %255, align 2, !tbaa !73
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds ptr, ptr %26, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !48
  %260 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 2, i32 4
  %261 = load i16, ptr %260, align 4, !tbaa !74
  %262 = sext i16 %261 to i64
  %263 = getelementptr inbounds i16, ptr %259, i64 %262
  %264 = load i16, ptr %263, align 2, !tbaa !75
  %265 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %264, ptr %265, align 2, !tbaa !75
  %266 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 5
  %267 = load i16, ptr %266, align 2, !tbaa !73
  %268 = sext i16 %267 to i64
  %269 = getelementptr inbounds ptr, ptr %26, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !48
  %271 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 3, i32 4
  %272 = load i16, ptr %271, align 4, !tbaa !74
  %273 = sext i16 %272 to i64
  %274 = getelementptr inbounds i16, ptr %270, i64 %273
  %275 = load i16, ptr %274, align 2, !tbaa !75
  %276 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %275, ptr %276, align 8, !tbaa !75
  %277 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 5
  %278 = load i16, ptr %277, align 2, !tbaa !73
  %279 = sext i16 %278 to i64
  %280 = getelementptr inbounds ptr, ptr %26, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !48
  %282 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 4, i32 4
  %283 = load i16, ptr %282, align 4, !tbaa !74
  %284 = sext i16 %283 to i64
  %285 = getelementptr inbounds i16, ptr %281, i64 %284
  %286 = load i16, ptr %285, align 2, !tbaa !75
  %287 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %286, ptr %287, align 2, !tbaa !75
  %288 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 5
  %289 = load i16, ptr %288, align 2, !tbaa !73
  %290 = sext i16 %289 to i64
  %291 = getelementptr inbounds ptr, ptr %26, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !48
  %293 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 5, i32 4
  %294 = load i16, ptr %293, align 4, !tbaa !74
  %295 = sext i16 %294 to i64
  %296 = getelementptr inbounds i16, ptr %292, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !75
  %298 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %297, ptr %298, align 4, !tbaa !75
  %299 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 5
  %300 = load i16, ptr %299, align 2, !tbaa !73
  %301 = sext i16 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %26, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !48
  %304 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 6, i32 4
  %305 = load i16, ptr %304, align 4, !tbaa !74
  %306 = sext i16 %305 to i64
  %307 = getelementptr inbounds i16, ptr %303, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !75
  %309 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %308, ptr %309, align 2, !tbaa !75
  %310 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 5
  %311 = load i16, ptr %310, align 2, !tbaa !73
  %312 = sext i16 %311 to i64
  %313 = getelementptr inbounds ptr, ptr %26, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !48
  %315 = getelementptr inbounds [8 x %struct.pix_pos], ptr %6, i64 0, i64 7, i32 4
  %316 = load i16, ptr %315, align 4, !tbaa !74
  %317 = sext i16 %316 to i64
  %318 = getelementptr inbounds i16, ptr %314, i64 %317
  %319 = load i16, ptr %318, align 2, !tbaa !75
  br label %330

320:                                              ; preds = %231
  %321 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %322 = load i32, ptr %321, align 4, !tbaa !76
  %323 = trunc i32 %322 to i16
  %324 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %323, ptr %324, align 2, !tbaa !75
  %325 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %323, ptr %325, align 4, !tbaa !75
  %326 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %323, ptr %326, align 2, !tbaa !75
  %327 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %328 = insertelement <4 x i16> poison, i16 %323, i64 0
  %329 = shufflevector <4 x i16> %328, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %329, ptr %327, align 2, !tbaa !75
  br label %330

330:                                              ; preds = %320, %232
  %331 = phi i16 [ %319, %232 ], [ %323, %320 ]
  %332 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %331, ptr %332, align 16
  br i1 %192, label %333, label %344

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %335 = load i16, ptr %334, align 2, !tbaa !73
  %336 = sext i16 %335 to i64
  %337 = getelementptr inbounds ptr, ptr %26, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !48
  %339 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %340 = load i16, ptr %339, align 4, !tbaa !74
  %341 = sext i16 %340 to i64
  %342 = getelementptr inbounds i16, ptr %338, i64 %341
  %343 = load i16, ptr %342, align 2, !tbaa !75
  br label %348

344:                                              ; preds = %330
  %345 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %346 = load i32, ptr %345, align 4, !tbaa !76
  %347 = trunc i32 %346 to i16
  br label %348

348:                                              ; preds = %344, %333
  %349 = phi i16 [ %347, %344 ], [ %343, %333 ]
  %350 = sext i32 %3 to i64
  store i16 %349, ptr %5, align 16, !tbaa !75
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %188, i32 noundef %190, i32 noundef %189) #7
  %351 = load i16, ptr %332, align 16, !tbaa !75
  %352 = zext i16 %351 to i32
  %353 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %354 = load i16, ptr %353, align 2, !tbaa !75
  %355 = zext i16 %354 to i32
  %356 = add nuw nsw i32 %355, 1
  %357 = add nuw nsw i32 %356, %352
  %358 = lshr i32 %357, 1
  %359 = trunc i32 %358 to i16
  %360 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %361 = load i16, ptr %360, align 4, !tbaa !75
  %362 = zext i16 %361 to i32
  %363 = shl nuw nsw i32 %355, 1
  %364 = add nuw nsw i32 %362, 2
  %365 = add nuw nsw i32 %364, %352
  %366 = add nuw nsw i32 %365, %363
  %367 = lshr i32 %366, 2
  %368 = trunc i32 %367 to i16
  %369 = add nuw nsw i32 %356, %362
  %370 = lshr i32 %369, 1
  %371 = trunc i32 %370 to i16
  %372 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  %373 = load i16, ptr %372, align 2, !tbaa !75
  %374 = zext i16 %373 to i32
  %375 = shl nuw nsw i32 %362, 1
  %376 = add nuw nsw i32 %374, 2
  %377 = add nuw nsw i32 %376, %355
  %378 = add nuw nsw i32 %377, %375
  %379 = lshr i32 %378, 2
  %380 = trunc i32 %379 to i16
  %381 = add nuw nsw i32 %362, 1
  %382 = add nuw nsw i32 %381, %374
  %383 = lshr i32 %382, 1
  %384 = trunc i32 %383 to i16
  %385 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  %386 = load i16, ptr %385, align 8, !tbaa !75
  %387 = zext i16 %386 to i32
  %388 = shl nuw nsw i32 %374, 1
  %389 = add nuw nsw i32 %364, %387
  %390 = add nuw nsw i32 %389, %388
  %391 = lshr i32 %390, 2
  %392 = trunc i32 %391 to i16
  %393 = add nuw nsw i32 %374, 1
  %394 = add nuw nsw i32 %393, %387
  %395 = lshr i32 %394, 1
  %396 = trunc i32 %395 to i16
  %397 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  %398 = load i16, ptr %397, align 2, !tbaa !75
  %399 = zext i16 %398 to i32
  %400 = shl nuw nsw i32 %387, 1
  %401 = add nuw nsw i32 %376, %399
  %402 = add nuw nsw i32 %401, %400
  %403 = lshr i32 %402, 2
  %404 = trunc i32 %403 to i16
  %405 = add nuw nsw i32 %387, 1
  %406 = add nuw nsw i32 %405, %399
  %407 = lshr i32 %406, 1
  %408 = trunc i32 %407 to i16
  %409 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %410 = load i16, ptr %409, align 4, !tbaa !75
  %411 = zext i16 %410 to i32
  %412 = shl nuw nsw i32 %399, 1
  %413 = add nuw nsw i32 %387, 2
  %414 = add nuw nsw i32 %413, %411
  %415 = add nuw nsw i32 %414, %412
  %416 = lshr i32 %415, 2
  %417 = trunc i32 %416 to i16
  %418 = add nuw nsw i32 %399, 1
  %419 = add nuw nsw i32 %418, %411
  %420 = lshr i32 %419, 1
  %421 = trunc i32 %420 to i16
  %422 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %423 = load i16, ptr %422, align 2, !tbaa !75
  %424 = zext i16 %423 to i32
  %425 = shl nuw nsw i32 %411, 1
  %426 = add nuw nsw i32 %399, 2
  %427 = add nuw nsw i32 %426, %424
  %428 = add nuw nsw i32 %427, %425
  %429 = lshr i32 %428, 2
  %430 = trunc i32 %429 to i16
  %431 = add nuw nsw i32 %411, 1
  %432 = add nuw nsw i32 %431, %424
  %433 = lshr i32 %432, 1
  %434 = trunc i32 %433 to i16
  %435 = load i16, ptr %5, align 16, !tbaa !75
  %436 = zext i16 %435 to i32
  %437 = shl nuw nsw i32 %424, 1
  %438 = add nuw nsw i32 %411, 2
  %439 = add nuw nsw i32 %438, %436
  %440 = add nuw nsw i32 %439, %437
  %441 = lshr i32 %440, 2
  %442 = trunc i32 %441 to i16
  %443 = add nuw nsw i32 %424, 1
  %444 = add nuw nsw i32 %443, %436
  %445 = lshr i32 %444, 1
  %446 = trunc i32 %445 to i16
  %447 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %448 = load i16, ptr %447, align 2, !tbaa !75
  %449 = zext i16 %448 to i32
  %450 = shl nuw nsw i32 %436, 1
  %451 = add nuw nsw i32 %424, 2
  %452 = add nuw nsw i32 %451, %449
  %453 = add nuw nsw i32 %452, %450
  %454 = lshr i32 %453, 2
  %455 = trunc i32 %454 to i16
  %456 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %457 = shl nuw nsw i32 %449, 1
  %458 = add nuw nsw i32 %436, 2
  %459 = add nuw nsw i32 %449, 2
  %460 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  %461 = load i16, ptr %460, align 4, !tbaa !75
  %462 = zext i16 %461 to i32
  %463 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %464 = load i16, ptr %463, align 2, !tbaa !75
  %465 = zext i16 %464 to i32
  %466 = getelementptr inbounds ptr, ptr %31, i64 %350
  %467 = load ptr, ptr %466, align 8, !tbaa !48
  %468 = sext i32 %2 to i64
  %469 = getelementptr inbounds i16, ptr %467, i64 %468
  %470 = getelementptr inbounds i8, ptr %469, i64 2
  %471 = getelementptr inbounds i8, ptr %469, i64 4
  %472 = getelementptr inbounds i8, ptr %469, i64 6
  %473 = getelementptr inbounds i8, ptr %469, i64 8
  %474 = load <4 x i16>, ptr %456, align 4, !tbaa !75
  %475 = zext <4 x i16> %474 to <4 x i32>
  %476 = extractelement <4 x i32> %475, i64 0
  %477 = add nuw nsw i32 %458, %476
  %478 = add nuw nsw i32 %477, %457
  %479 = lshr i32 %478, 2
  %480 = trunc i32 %479 to i16
  %481 = shl nuw nsw i32 %476, 1
  %482 = extractelement <4 x i32> %475, i64 1
  %483 = add nuw nsw i32 %459, %482
  %484 = add nuw nsw i32 %483, %481
  %485 = lshr i32 %484, 2
  %486 = trunc i32 %485 to i16
  %487 = shufflevector <4 x i32> %475, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %488 = insertelement <4 x i32> %487, i32 %462, i64 3
  %489 = shl nuw nsw <4 x i32> %488, <i32 1, i32 1, i32 1, i32 1>
  %490 = add nuw nsw <4 x i32> %475, <i32 2, i32 2, i32 2, i32 2>
  %491 = shufflevector <4 x i32> %488, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %492 = insertelement <4 x i32> %491, i32 %465, i64 3
  %493 = add nuw nsw <4 x i32> %490, %492
  %494 = add nuw nsw <4 x i32> %493, %489
  %495 = lshr <4 x i32> %494, <i32 2, i32 2, i32 2, i32 2>
  %496 = trunc <4 x i32> %495 to <4 x i16>
  store i16 %446, ptr %469, align 2
  store i16 %455, ptr %470, align 2
  store i16 %480, ptr %471, align 2
  store i16 %486, ptr %472, align 2
  store <4 x i16> %496, ptr %473, align 2
  %497 = getelementptr ptr, ptr %466, i64 1
  %498 = load ptr, ptr %497, align 8, !tbaa !48
  %499 = getelementptr inbounds i16, ptr %498, i64 %468
  store i16 %434, ptr %499, align 2
  %500 = getelementptr inbounds i8, ptr %499, i64 2
  store i16 %442, ptr %500, align 2
  %501 = getelementptr inbounds i8, ptr %499, i64 4
  store i16 %446, ptr %501, align 2
  %502 = getelementptr inbounds i8, ptr %499, i64 6
  store i16 %455, ptr %502, align 2
  %503 = getelementptr inbounds i8, ptr %499, i64 8
  store i16 %480, ptr %503, align 2
  %504 = getelementptr inbounds i8, ptr %499, i64 10
  store i16 %486, ptr %504, align 2
  %505 = getelementptr inbounds i8, ptr %499, i64 12
  %506 = shufflevector <4 x i16> %496, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %506, ptr %505, align 2
  %507 = getelementptr ptr, ptr %466, i64 2
  %508 = load ptr, ptr %507, align 8, !tbaa !48
  %509 = getelementptr inbounds i16, ptr %508, i64 %468
  store i16 %421, ptr %509, align 2
  %510 = getelementptr inbounds i8, ptr %509, i64 2
  store i16 %430, ptr %510, align 2
  %511 = getelementptr inbounds i8, ptr %509, i64 4
  store i16 %434, ptr %511, align 2
  %512 = getelementptr inbounds i8, ptr %509, i64 6
  store i16 %442, ptr %512, align 2
  %513 = getelementptr inbounds i8, ptr %509, i64 8
  store i16 %446, ptr %513, align 2
  %514 = getelementptr inbounds i8, ptr %509, i64 10
  store i16 %455, ptr %514, align 2
  %515 = getelementptr inbounds i8, ptr %509, i64 12
  store i16 %480, ptr %515, align 2
  %516 = getelementptr inbounds i8, ptr %509, i64 14
  store i16 %486, ptr %516, align 2
  %517 = getelementptr ptr, ptr %466, i64 3
  %518 = load ptr, ptr %517, align 8, !tbaa !48
  %519 = getelementptr inbounds i16, ptr %518, i64 %468
  store i16 %408, ptr %519, align 2
  %520 = getelementptr inbounds i8, ptr %519, i64 2
  store i16 %417, ptr %520, align 2
  %521 = getelementptr inbounds i8, ptr %519, i64 4
  store i16 %421, ptr %521, align 2
  %522 = getelementptr inbounds i8, ptr %519, i64 6
  store i16 %430, ptr %522, align 2
  %523 = getelementptr inbounds i8, ptr %519, i64 8
  store i16 %434, ptr %523, align 2
  %524 = getelementptr inbounds i8, ptr %519, i64 10
  store i16 %442, ptr %524, align 2
  %525 = getelementptr inbounds i8, ptr %519, i64 12
  store i16 %446, ptr %525, align 2
  %526 = getelementptr inbounds i8, ptr %519, i64 14
  store i16 %455, ptr %526, align 2
  %527 = getelementptr ptr, ptr %466, i64 4
  %528 = load ptr, ptr %527, align 8, !tbaa !48
  %529 = getelementptr inbounds i16, ptr %528, i64 %468
  store i16 %396, ptr %529, align 2
  %530 = getelementptr inbounds i8, ptr %529, i64 2
  store i16 %404, ptr %530, align 2
  %531 = getelementptr inbounds i8, ptr %529, i64 4
  store i16 %408, ptr %531, align 2
  %532 = getelementptr inbounds i8, ptr %529, i64 6
  store i16 %417, ptr %532, align 2
  %533 = getelementptr inbounds i8, ptr %529, i64 8
  store i16 %421, ptr %533, align 2
  %534 = getelementptr inbounds i8, ptr %529, i64 10
  store i16 %430, ptr %534, align 2
  %535 = getelementptr inbounds i8, ptr %529, i64 12
  store i16 %434, ptr %535, align 2
  %536 = getelementptr inbounds i8, ptr %529, i64 14
  store i16 %442, ptr %536, align 2
  %537 = getelementptr ptr, ptr %466, i64 5
  %538 = load ptr, ptr %537, align 8, !tbaa !48
  %539 = getelementptr inbounds i16, ptr %538, i64 %468
  store i16 %384, ptr %539, align 2
  %540 = getelementptr inbounds i8, ptr %539, i64 2
  store i16 %392, ptr %540, align 2
  %541 = getelementptr inbounds i8, ptr %539, i64 4
  store i16 %396, ptr %541, align 2
  %542 = getelementptr inbounds i8, ptr %539, i64 6
  store i16 %404, ptr %542, align 2
  %543 = getelementptr inbounds i8, ptr %539, i64 8
  store i16 %408, ptr %543, align 2
  %544 = getelementptr inbounds i8, ptr %539, i64 10
  store i16 %417, ptr %544, align 2
  %545 = getelementptr inbounds i8, ptr %539, i64 12
  store i16 %421, ptr %545, align 2
  %546 = getelementptr inbounds i8, ptr %539, i64 14
  store i16 %430, ptr %546, align 2
  %547 = getelementptr ptr, ptr %466, i64 6
  %548 = load ptr, ptr %547, align 8, !tbaa !48
  %549 = getelementptr inbounds i16, ptr %548, i64 %468
  store i16 %371, ptr %549, align 2
  %550 = getelementptr inbounds i8, ptr %549, i64 2
  store i16 %380, ptr %550, align 2
  %551 = getelementptr inbounds i8, ptr %549, i64 4
  store i16 %384, ptr %551, align 2
  %552 = getelementptr inbounds i8, ptr %549, i64 6
  store i16 %392, ptr %552, align 2
  %553 = getelementptr inbounds i8, ptr %549, i64 8
  store i16 %396, ptr %553, align 2
  %554 = getelementptr inbounds i8, ptr %549, i64 10
  store i16 %404, ptr %554, align 2
  %555 = getelementptr inbounds i8, ptr %549, i64 12
  store i16 %408, ptr %555, align 2
  %556 = getelementptr inbounds i8, ptr %549, i64 14
  store i16 %417, ptr %556, align 2
  %557 = getelementptr ptr, ptr %466, i64 7
  %558 = load ptr, ptr %557, align 8, !tbaa !48
  %559 = getelementptr inbounds i16, ptr %558, i64 %468
  store i16 %359, ptr %559, align 2
  %560 = getelementptr inbounds i8, ptr %559, i64 2
  store i16 %368, ptr %560, align 2
  %561 = getelementptr inbounds i8, ptr %559, i64 4
  store i16 %371, ptr %561, align 2
  %562 = getelementptr inbounds i8, ptr %559, i64 6
  store i16 %380, ptr %562, align 2
  %563 = getelementptr inbounds i8, ptr %559, i64 8
  store i16 %384, ptr %563, align 2
  %564 = getelementptr inbounds i8, ptr %559, i64 10
  store i16 %392, ptr %564, align 2
  %565 = getelementptr inbounds i8, ptr %559, i64 12
  store i16 %396, ptr %565, align 2
  %566 = getelementptr inbounds i8, ptr %559, i64 14
  store i16 %404, ptr %566, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @LowPassForIntra8x8Pred(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !106 {
  %5 = alloca [25 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %5, ptr noundef nonnull align 2 dereferenceable(50) %0, i64 50, i1 false)
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = icmp ne i32 %2, 0
  %9 = icmp ne i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = getelementptr inbounds i16, ptr %0, i64 17
  %13 = load i16, ptr %12, align 2, !tbaa !75
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %0, align 2, !tbaa !75
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = add nuw nsw i32 %17, %14
  %19 = getelementptr inbounds i16, ptr %0, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !75
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %18, %21
  br label %35

23:                                               ; preds = %7
  br i1 %8, label %24, label %32

24:                                               ; preds = %23
  %25 = load i16, ptr %0, align 2, !tbaa !75
  %26 = zext i16 %25 to i32
  %27 = mul nuw nsw i32 %26, 3
  %28 = getelementptr inbounds i16, ptr %0, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !75
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %27, %30
  br label %35

32:                                               ; preds = %23
  br i1 %9, label %101, label %179

33:                                               ; preds = %4
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %99, label %49

35:                                               ; preds = %24, %11
  %36 = phi i32 [ %30, %24 ], [ %21, %11 ]
  %37 = phi i32 [ %26, %24 ], [ %16, %11 ]
  %38 = phi i32 [ %31, %24 ], [ %22, %11 ]
  %39 = add nuw nsw i32 %38, 2
  %40 = lshr i32 %39, 2
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr %5, align 16, !tbaa !75
  %42 = shl nuw nsw i32 %36, 1
  %43 = getelementptr inbounds i16, ptr %0, i64 2
  %44 = load i16, ptr %43, align 2, !tbaa !75
  %45 = zext i16 %44 to i32
  %46 = add nuw nsw i32 %37, 2
  %47 = add nuw nsw i32 %46, %42
  %48 = add nuw nsw i32 %47, %45
  br label %59

49:                                               ; preds = %33
  %50 = getelementptr inbounds i16, ptr %0, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !75
  %52 = zext i16 %51 to i32
  %53 = mul nuw nsw i32 %52, 3
  %54 = getelementptr inbounds i16, ptr %0, i64 2
  %55 = load i16, ptr %54, align 2, !tbaa !75
  %56 = zext i16 %55 to i32
  %57 = add nuw nsw i32 %56, 2
  %58 = add nuw nsw i32 %57, %53
  br label %59

59:                                               ; preds = %49, %35
  %60 = phi i32 [ %58, %49 ], [ %48, %35 ]
  %61 = phi i16 [ %55, %49 ], [ %44, %35 ]
  %62 = lshr i32 %60, 2
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %63, ptr %64, align 2, !tbaa !75
  %65 = getelementptr i16, ptr %0, i64 -1
  br label %66

66:                                               ; preds = %59, %66
  %67 = phi i16 [ %61, %59 ], [ %76, %66 ]
  %68 = phi i64 [ 2, %59 ], [ %74, %66 ]
  %69 = getelementptr i16, ptr %65, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !75
  %71 = zext i16 %70 to i32
  %72 = zext i16 %67 to i32
  %73 = shl nuw nsw i32 %72, 1
  %74 = add nuw nsw i64 %68, 1
  %75 = getelementptr inbounds i16, ptr %0, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !75
  %77 = zext i16 %76 to i32
  %78 = add nuw nsw i32 %71, 2
  %79 = add nuw nsw i32 %78, %73
  %80 = add nuw nsw i32 %79, %77
  %81 = lshr i32 %80, 2
  %82 = trunc i32 %81 to i16
  %83 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %68
  store i16 %82, ptr %83, align 2, !tbaa !75
  %84 = icmp eq i64 %74, 16
  br i1 %84, label %85, label %66, !llvm.loop !107

85:                                               ; preds = %66
  %86 = getelementptr inbounds i16, ptr %0, i64 16
  %87 = load i16, ptr %86, align 2, !tbaa !75
  %88 = zext i16 %87 to i32
  %89 = mul nuw nsw i32 %88, 3
  %90 = getelementptr inbounds i16, ptr %0, i64 15
  %91 = load i16, ptr %90, align 2, !tbaa !75
  %92 = zext i16 %91 to i32
  %93 = add nuw nsw i32 %92, 2
  %94 = add nuw nsw i32 %93, %89
  %95 = lshr i32 %94, 2
  %96 = trunc i32 %95 to i16
  %97 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %96, ptr %97, align 16, !tbaa !75
  %98 = icmp eq i32 %3, 0
  br i1 %98, label %179, label %112

99:                                               ; preds = %33
  %100 = icmp eq i32 %3, 0
  br i1 %100, label %179, label %129

101:                                              ; preds = %32
  %102 = load i16, ptr %0, align 2, !tbaa !75
  %103 = zext i16 %102 to i32
  %104 = mul nuw nsw i32 %103, 3
  %105 = getelementptr inbounds i16, ptr %0, i64 17
  %106 = load i16, ptr %105, align 2, !tbaa !75
  %107 = zext i16 %106 to i32
  %108 = add nuw nsw i32 %107, 2
  %109 = add nuw nsw i32 %108, %104
  %110 = lshr i32 %109, 2
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr %5, align 16, !tbaa !75
  br label %119

112:                                              ; preds = %85
  br i1 %6, label %129, label %113

113:                                              ; preds = %112
  %114 = load i16, ptr %0, align 2, !tbaa !75
  %115 = getelementptr inbounds i16, ptr %0, i64 17
  %116 = load i16, ptr %115, align 2, !tbaa !75
  %117 = zext i16 %114 to i32
  %118 = zext i16 %116 to i32
  br label %119

119:                                              ; preds = %113, %101
  %120 = phi i32 [ %118, %113 ], [ %107, %101 ]
  %121 = phi i32 [ %117, %113 ], [ %103, %101 ]
  %122 = shl nuw nsw i32 %120, 1
  %123 = getelementptr inbounds i16, ptr %0, i64 18
  %124 = load i16, ptr %123, align 2, !tbaa !75
  %125 = zext i16 %124 to i32
  %126 = add nuw nsw i32 %121, 2
  %127 = add nuw nsw i32 %126, %122
  %128 = add nuw nsw i32 %127, %125
  br label %139

129:                                              ; preds = %99, %112
  %130 = getelementptr inbounds i16, ptr %0, i64 17
  %131 = load i16, ptr %130, align 2, !tbaa !75
  %132 = zext i16 %131 to i32
  %133 = mul nuw nsw i32 %132, 3
  %134 = getelementptr inbounds i16, ptr %0, i64 18
  %135 = load i16, ptr %134, align 2, !tbaa !75
  %136 = zext i16 %135 to i32
  %137 = add nuw nsw i32 %136, 2
  %138 = add nuw nsw i32 %137, %133
  br label %139

139:                                              ; preds = %129, %119
  %140 = phi i32 [ %138, %129 ], [ %128, %119 ]
  %141 = phi i16 [ %135, %129 ], [ %124, %119 ]
  %142 = lshr i32 %140, 2
  %143 = trunc i32 %142 to i16
  %144 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %143, ptr %144, align 2, !tbaa !75
  %145 = getelementptr i16, ptr %0, i64 -1
  br label %146

146:                                              ; preds = %139, %146
  %147 = phi i16 [ %141, %139 ], [ %156, %146 ]
  %148 = phi i64 [ 18, %139 ], [ %154, %146 ]
  %149 = getelementptr i16, ptr %145, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !75
  %151 = zext i16 %150 to i32
  %152 = zext i16 %147 to i32
  %153 = shl nuw nsw i32 %152, 1
  %154 = add nuw nsw i64 %148, 1
  %155 = getelementptr inbounds i16, ptr %0, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !75
  %157 = zext i16 %156 to i32
  %158 = add nuw nsw i32 %151, 2
  %159 = add nuw nsw i32 %158, %153
  %160 = add nuw nsw i32 %159, %157
  %161 = lshr i32 %160, 2
  %162 = trunc i32 %161 to i16
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %148
  store i16 %162, ptr %163, align 2, !tbaa !75
  %164 = icmp eq i64 %154, 24
  br i1 %164, label %165, label %146, !llvm.loop !108

165:                                              ; preds = %146
  %166 = getelementptr inbounds i16, ptr %0, i64 23
  %167 = load i16, ptr %166, align 2, !tbaa !75
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds i16, ptr %0, i64 24
  %170 = load i16, ptr %169, align 2, !tbaa !75
  %171 = zext i16 %170 to i32
  %172 = shl nuw nsw i32 %171, 1
  %173 = add nuw nsw i32 %168, 2
  %174 = add nuw nsw i32 %173, %171
  %175 = add nuw nsw i32 %174, %172
  %176 = lshr i32 %175, 2
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %177, ptr %178, align 16, !tbaa !75
  br label %179

179:                                              ; preds = %32, %99, %165, %85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %0, ptr noundef nonnull align 16 dereferenceable(50) %5, i64 50, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @LowPassForIntra8x8PredHor(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !109 {
  %5 = alloca [25 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %5, ptr noundef nonnull align 2 dereferenceable(50) %0, i64 50, i1 false)
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %4
  %8 = icmp ne i32 %2, 0
  %9 = icmp ne i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = getelementptr inbounds i16, ptr %0, i64 17
  %13 = load i16, ptr %12, align 2, !tbaa !75
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %0, align 2, !tbaa !75
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = add nuw nsw i32 %17, %14
  %19 = getelementptr inbounds i16, ptr %0, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !75
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %18, %21
  br label %46

23:                                               ; preds = %7
  br i1 %8, label %24, label %32

24:                                               ; preds = %23
  %25 = load i16, ptr %0, align 2, !tbaa !75
  %26 = zext i16 %25 to i32
  %27 = mul nuw nsw i32 %26, 3
  %28 = getelementptr inbounds i16, ptr %0, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !75
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %27, %30
  br label %46

32:                                               ; preds = %23
  br i1 %9, label %33, label %109

33:                                               ; preds = %32
  %34 = load i16, ptr %0, align 2, !tbaa !75
  %35 = zext i16 %34 to i32
  %36 = mul nuw nsw i32 %35, 3
  %37 = getelementptr inbounds i16, ptr %0, i64 17
  %38 = load i16, ptr %37, align 2, !tbaa !75
  %39 = zext i16 %38 to i32
  %40 = add nuw nsw i32 %39, 2
  %41 = add nuw nsw i32 %40, %36
  %42 = lshr i32 %41, 2
  %43 = trunc i32 %42 to i16
  store i16 %43, ptr %5, align 16, !tbaa !75
  br label %109

44:                                               ; preds = %4
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %109, label %60

46:                                               ; preds = %24, %11
  %47 = phi i32 [ %30, %24 ], [ %21, %11 ]
  %48 = phi i32 [ %26, %24 ], [ %16, %11 ]
  %49 = phi i32 [ %31, %24 ], [ %22, %11 ]
  %50 = add nuw nsw i32 %49, 2
  %51 = lshr i32 %50, 2
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr %5, align 16, !tbaa !75
  %53 = shl nuw nsw i32 %47, 1
  %54 = getelementptr inbounds i16, ptr %0, i64 2
  %55 = load i16, ptr %54, align 2, !tbaa !75
  %56 = zext i16 %55 to i32
  %57 = add nuw nsw i32 %48, 2
  %58 = add nuw nsw i32 %57, %53
  %59 = add nuw nsw i32 %58, %56
  br label %70

60:                                               ; preds = %44
  %61 = getelementptr inbounds i16, ptr %0, i64 1
  %62 = load i16, ptr %61, align 2, !tbaa !75
  %63 = zext i16 %62 to i32
  %64 = mul nuw nsw i32 %63, 3
  %65 = getelementptr inbounds i16, ptr %0, i64 2
  %66 = load i16, ptr %65, align 2, !tbaa !75
  %67 = zext i16 %66 to i32
  %68 = add nuw nsw i32 %67, 2
  %69 = add nuw nsw i32 %68, %64
  br label %70

70:                                               ; preds = %60, %46
  %71 = phi i32 [ %69, %60 ], [ %59, %46 ]
  %72 = phi i16 [ %66, %60 ], [ %55, %46 ]
  %73 = lshr i32 %71, 2
  %74 = trunc i32 %73 to i16
  %75 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %74, ptr %75, align 2, !tbaa !75
  %76 = getelementptr i16, ptr %0, i64 -1
  br label %77

77:                                               ; preds = %70, %77
  %78 = phi i16 [ %72, %70 ], [ %87, %77 ]
  %79 = phi i64 [ 2, %70 ], [ %85, %77 ]
  %80 = getelementptr i16, ptr %76, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !75
  %82 = zext i16 %81 to i32
  %83 = zext i16 %78 to i32
  %84 = shl nuw nsw i32 %83, 1
  %85 = add nuw nsw i64 %79, 1
  %86 = getelementptr inbounds i16, ptr %0, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !75
  %88 = zext i16 %87 to i32
  %89 = add nuw nsw i32 %82, 2
  %90 = add nuw nsw i32 %89, %84
  %91 = add nuw nsw i32 %90, %88
  %92 = lshr i32 %91, 2
  %93 = trunc i32 %92 to i16
  %94 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %79
  store i16 %93, ptr %94, align 2, !tbaa !75
  %95 = icmp eq i64 %85, 16
  br i1 %95, label %96, label %77, !llvm.loop !110

96:                                               ; preds = %77
  %97 = getelementptr inbounds i16, ptr %0, i64 16
  %98 = load i16, ptr %97, align 2, !tbaa !75
  %99 = zext i16 %98 to i32
  %100 = mul nuw nsw i32 %99, 3
  %101 = getelementptr inbounds i16, ptr %0, i64 15
  %102 = load i16, ptr %101, align 2, !tbaa !75
  %103 = zext i16 %102 to i32
  %104 = add nuw nsw i32 %103, 2
  %105 = add nuw nsw i32 %104, %100
  %106 = lshr i32 %105, 2
  %107 = trunc i32 %106 to i16
  %108 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %107, ptr %108, align 16, !tbaa !75
  br label %109

109:                                              ; preds = %33, %32, %96, %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %0, ptr noundef nonnull align 16 dereferenceable(34) %5, i64 34, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @LowPassForIntra8x8PredVer(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !111 {
  %5 = alloca [25 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %5, ptr noundef nonnull align 2 dereferenceable(50) %0, i64 50, i1 false)
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = icmp ne i32 %2, 0
  %9 = icmp ne i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds i16, ptr %0, i64 17
  %13 = load i16, ptr %12, align 2, !tbaa !75
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %0, align 2, !tbaa !75
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = getelementptr inbounds i16, ptr %0, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !75
  %20 = zext i16 %19 to i32
  %21 = add nuw nsw i32 %14, 2
  %22 = add nuw nsw i32 %21, %17
  %23 = add nuw nsw i32 %22, %20
  %24 = lshr i32 %23, 2
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %5, align 16, !tbaa !75
  br label %57

26:                                               ; preds = %7
  br i1 %8, label %41, label %27

27:                                               ; preds = %26
  br i1 %9, label %28, label %117

28:                                               ; preds = %27
  %29 = load i16, ptr %0, align 2, !tbaa !75
  %30 = zext i16 %29 to i32
  %31 = mul nuw nsw i32 %30, 3
  %32 = getelementptr inbounds i16, ptr %0, i64 17
  %33 = load i16, ptr %32, align 2, !tbaa !75
  %34 = zext i16 %33 to i32
  %35 = add nuw nsw i32 %34, 2
  %36 = add nuw nsw i32 %35, %31
  %37 = lshr i32 %36, 2
  %38 = trunc i32 %37 to i16
  store i16 %38, ptr %5, align 16, !tbaa !75
  br label %57

39:                                               ; preds = %4
  %40 = icmp eq i32 %3, 0
  br i1 %40, label %117, label %67

41:                                               ; preds = %26
  %42 = load i16, ptr %0, align 2, !tbaa !75
  %43 = zext i16 %42 to i32
  %44 = mul nuw nsw i32 %43, 3
  %45 = getelementptr inbounds i16, ptr %0, i64 1
  %46 = load i16, ptr %45, align 2, !tbaa !75
  %47 = zext i16 %46 to i32
  %48 = add nuw nsw i32 %47, 2
  %49 = add nuw nsw i32 %48, %44
  %50 = lshr i32 %49, 2
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %5, align 16, !tbaa !75
  %52 = icmp eq i32 %3, 0
  br i1 %52, label %117, label %53

53:                                               ; preds = %41
  %54 = getelementptr inbounds i16, ptr %0, i64 17
  %55 = load i16, ptr %54, align 2, !tbaa !75
  %56 = zext i16 %55 to i32
  br label %57

57:                                               ; preds = %53, %11, %28
  %58 = phi i32 [ %56, %53 ], [ %14, %11 ], [ %34, %28 ]
  %59 = phi i32 [ %43, %53 ], [ %16, %11 ], [ %30, %28 ]
  %60 = shl nuw nsw i32 %58, 1
  %61 = getelementptr inbounds i16, ptr %0, i64 18
  %62 = load i16, ptr %61, align 2, !tbaa !75
  %63 = zext i16 %62 to i32
  %64 = add nuw nsw i32 %59, 2
  %65 = add nuw nsw i32 %64, %60
  %66 = add nuw nsw i32 %65, %63
  br label %77

67:                                               ; preds = %39
  %68 = getelementptr inbounds i16, ptr %0, i64 17
  %69 = load i16, ptr %68, align 2, !tbaa !75
  %70 = zext i16 %69 to i32
  %71 = mul nuw nsw i32 %70, 3
  %72 = getelementptr inbounds i16, ptr %0, i64 18
  %73 = load i16, ptr %72, align 2, !tbaa !75
  %74 = zext i16 %73 to i32
  %75 = add nuw nsw i32 %74, 2
  %76 = add nuw nsw i32 %75, %71
  br label %77

77:                                               ; preds = %67, %57
  %78 = phi i32 [ %76, %67 ], [ %66, %57 ]
  %79 = phi i16 [ %73, %67 ], [ %62, %57 ]
  %80 = lshr i32 %78, 2
  %81 = trunc i32 %80 to i16
  %82 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %81, ptr %82, align 2, !tbaa !75
  %83 = getelementptr i16, ptr %0, i64 -1
  br label %84

84:                                               ; preds = %77, %84
  %85 = phi i16 [ %79, %77 ], [ %94, %84 ]
  %86 = phi i64 [ 18, %77 ], [ %92, %84 ]
  %87 = getelementptr i16, ptr %83, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !75
  %89 = zext i16 %88 to i32
  %90 = zext i16 %85 to i32
  %91 = shl nuw nsw i32 %90, 1
  %92 = add nuw nsw i64 %86, 1
  %93 = getelementptr inbounds i16, ptr %0, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !75
  %95 = zext i16 %94 to i32
  %96 = add nuw nsw i32 %89, 2
  %97 = add nuw nsw i32 %96, %91
  %98 = add nuw nsw i32 %97, %95
  %99 = lshr i32 %98, 2
  %100 = trunc i32 %99 to i16
  %101 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %86
  store i16 %100, ptr %101, align 2, !tbaa !75
  %102 = icmp eq i64 %92, 24
  br i1 %102, label %103, label %84, !llvm.loop !112

103:                                              ; preds = %84
  %104 = getelementptr inbounds i16, ptr %0, i64 23
  %105 = load i16, ptr %104, align 2, !tbaa !75
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds i16, ptr %0, i64 24
  %108 = load i16, ptr %107, align 2, !tbaa !75
  %109 = zext i16 %108 to i32
  %110 = shl nuw nsw i32 %109, 1
  %111 = add nuw nsw i32 %106, 2
  %112 = add nuw nsw i32 %111, %109
  %113 = add nuw nsw i32 %112, %110
  %114 = lshr i32 %113, 2
  %115 = trunc i32 %114 to i16
  %116 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %115, ptr %116, align 16, !tbaa !75
  br label %117

117:                                              ; preds = %27, %41, %103, %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %0, ptr noundef nonnull align 16 dereferenceable(50) %5, i64 50, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !40, i64 32}
!36 = !{!"macroblock", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !41, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !38, i64 72, !38, i64 80, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !42, i64 108, !38, i64 110, !38, i64 111, !42, i64 112, !42, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !38, i64 154, !40, i64 284, !38, i64 288, !38, i64 312, !38, i64 336, !40, i64 360, !38, i64 364, !38, i64 368, !38, i64 372, !38, i64 373, !38, i64 374, !42, i64 376, !42, i64 378, !42, i64 380, !40, i64 384, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !37, i64 432, !37, i64 440, !37, i64 448, !37, i64 456, !37, i64 464, !38, i64 472}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"", !42, i64 0, !42, i64 2}
!42 = !{!"short", !38, i64 0}
!43 = !{!36, !40, i64 36}
!44 = !{!36, !37, i64 0}
!45 = !{!46, !37, i64 13536}
!46 = !{!"slice", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !37, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !38, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !42, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !38, i64 136, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !38, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !37, i64 248, !38, i64 256, !38, i64 264, !37, i64 312, !37, i64 320, !37, i64 328, !38, i64 336, !38, i64 1104, !38, i64 1112, !38, i64 1128, !38, i64 1144, !38, i64 1160, !40, i64 1176, !40, i64 1180, !40, i64 1184, !47, i64 1188, !42, i64 1220, !42, i64 1222, !42, i64 1224, !40, i64 1228, !40, i64 1232, !40, i64 1236, !40, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !38, i64 1288, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !38, i64 1392, !38, i64 2544, !38, i64 3696, !38, i64 8304, !38, i64 12912, !38, i64 13008, !40, i64 13264, !40, i64 13268, !42, i64 13272, !42, i64 13274, !42, i64 13276, !42, i64 13278, !37, i64 13280, !37, i64 13288, !37, i64 13296, !42, i64 13304, !42, i64 13306, !40, i64 13308, !40, i64 13312, !37, i64 13320, !37, i64 13328, !40, i64 13336, !38, i64 13340, !37, i64 13408, !37, i64 13416, !37, i64 13424, !37, i64 13432, !37, i64 13440, !37, i64 13448, !37, i64 13456, !37, i64 13464, !37, i64 13472, !37, i64 13480, !37, i64 13488, !37, i64 13496, !40, i64 13504, !37, i64 13512, !37, i64 13520, !37, i64 13528, !37, i64 13536, !37, i64 13544, !38, i64 13552}
!47 = !{!"nalunitheadermvcext_tag", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!48 = !{!37, !37, i64 0}
!49 = !{!38, !38, i64 0}
!50 = !{!36, !38, i64 372}
!51 = !{!"intra8x8_pred_mbaff.c:intra8x8_dc_pred_mbaff"}
!52 = !{!36, !37, i64 8}
!53 = !{!46, !37, i64 13520}
!54 = !{!55, !37, i64 136}
!55 = !{!"storable_picture", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !38, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !42, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !38, i64 160, !56, i64 184, !38, i64 192, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !38, i64 300, !40, i64 308, !37, i64 312, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !37, i64 336, !40, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !37, i64 376, !40, i64 384, !40, i64 388, !38, i64 392, !38, i64 400}
!56 = !{!"pic_motion_params_old", !37, i64 0}
!57 = !{!46, !37, i64 1248}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!61, !40, i64 0}
!61 = !{!"pix_pos", !40, i64 0, !40, i64 4, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14}
!62 = !{!63, !37, i64 8}
!63 = !{!"video_par", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 132120, !37, i64 699416, !38, i64 699424, !40, i64 848672, !40, i64 848676, !40, i64 848680, !40, i64 848684, !37, i64 848688, !37, i64 848696, !37, i64 848704, !40, i64 848712, !40, i64 848716, !40, i64 848720, !40, i64 848724, !40, i64 848728, !37, i64 848736, !37, i64 848744, !38, i64 848752, !40, i64 848776, !40, i64 848780, !40, i64 848784, !40, i64 848788, !40, i64 848792, !37, i64 848800, !38, i64 848808, !37, i64 848832, !37, i64 848840, !38, i64 848848, !40, i64 848872, !40, i64 848876, !37, i64 848880, !37, i64 848888, !38, i64 848896, !40, i64 848920, !37, i64 848928, !37, i64 848936, !40, i64 848944, !40, i64 848948, !40, i64 848952, !40, i64 848956, !40, i64 848960, !40, i64 848964, !40, i64 848968, !40, i64 848972, !40, i64 848976, !40, i64 848980, !40, i64 848984, !40, i64 848988, !40, i64 848992, !40, i64 848996, !40, i64 849000, !40, i64 849004, !40, i64 849008, !40, i64 849012, !40, i64 849016, !40, i64 849020, !40, i64 849024, !40, i64 849028, !40, i64 849032, !40, i64 849036, !42, i64 849040, !42, i64 849042, !38, i64 849044, !40, i64 849052, !40, i64 849056, !38, i64 849060, !38, i64 849072, !40, i64 849084, !40, i64 849088, !40, i64 849092, !40, i64 849096, !40, i64 849100, !40, i64 849104, !40, i64 849108, !40, i64 849112, !40, i64 849116, !40, i64 849120, !38, i64 849124, !38, i64 849148, !38, i64 849172, !40, i64 849196, !40, i64 849200, !40, i64 849204, !40, i64 849208, !40, i64 849212, !40, i64 849216, !40, i64 849220, !40, i64 849224, !40, i64 849228, !40, i64 849232, !40, i64 849236, !40, i64 849240, !40, i64 849244, !40, i64 849248, !40, i64 849252, !40, i64 849256, !40, i64 849260, !40, i64 849264, !40, i64 849268, !40, i64 849272, !40, i64 849276, !40, i64 849280, !40, i64 849284, !37, i64 849288, !37, i64 849296, !64, i64 849304, !64, i64 849624, !64, i64 849944, !64, i64 850264, !64, i64 850584, !64, i64 850904, !64, i64 851224, !64, i64 851544, !40, i64 851864, !40, i64 851868, !40, i64 851872, !67, i64 851880, !40, i64 851888, !38, i64 851892, !40, i64 855988, !40, i64 855992, !40, i64 855996, !40, i64 856000, !40, i64 856004, !40, i64 856008, !40, i64 856012, !37, i64 856016, !37, i64 856024, !37, i64 856032, !37, i64 856040, !37, i64 856048, !38, i64 856056, !37, i64 856456, !38, i64 856464, !37, i64 856488, !37, i64 856496, !37, i64 856504, !40, i64 856512, !37, i64 856520, !38, i64 856528, !37, i64 856608, !37, i64 856616, !37, i64 856624, !37, i64 856632, !40, i64 856640, !40, i64 856644, !40, i64 856648, !37, i64 856656, !37, i64 856664, !38, i64 856672, !38, i64 856688, !37, i64 856704, !37, i64 856712, !40, i64 856720, !37, i64 856728, !37, i64 856736, !37, i64 856744, !37, i64 856752, !37, i64 856760, !37, i64 856768, !37, i64 856776, !37, i64 856784, !37, i64 856792, !37, i64 856800, !37, i64 856808, !37, i64 856816, !40, i64 856824, !37, i64 856832, !40, i64 856840, !40, i64 856844, !40, i64 856848, !40, i64 856852, !40, i64 856856, !40, i64 856860, !40, i64 856864, !37, i64 856872}
!64 = !{!"image_data", !65, i64 0, !38, i64 136, !38, i64 160, !38, i64 184, !38, i64 208, !38, i64 232, !38, i64 256, !38, i64 280, !38, i64 292, !38, i64 304}
!65 = !{!"frame_format", !40, i64 0, !40, i64 4, !66, i64 8, !38, i64 16, !38, i64 28, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !38, i64 72, !40, i64 84, !38, i64 88, !38, i64 100, !38, i64 112, !40, i64 124, !40, i64 128}
!66 = !{!"double", !38, i64 0}
!67 = !{!"long", !38, i64 0}
!68 = !{!69, !40, i64 2204}
!69 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !38, i64 24, !38, i64 72, !38, i64 456, !38, i64 1992, !38, i64 2016, !40, i64 2040, !40, i64 2044, !40, i64 2048, !38, i64 2052, !38, i64 2084, !38, i64 2116, !40, i64 2148, !40, i64 2152, !40, i64 2156, !37, i64 2160, !40, i64 2168, !40, i64 2172, !40, i64 2176, !40, i64 2180, !40, i64 2184, !40, i64 2188, !40, i64 2192, !40, i64 2196, !40, i64 2200, !40, i64 2204, !40, i64 2208}
!70 = !{!46, !37, i64 13544}
!71 = !{!61, !40, i64 4}
!72 = distinct !{!72, !59}
!73 = !{!61, !42, i64 14}
!74 = !{!61, !42, i64 12}
!75 = !{!42, !42, i64 0}
!76 = !{!40, !40, i64 0}
!77 = distinct !{!77, !59}
!78 = distinct !{!78, !59}
!79 = !{!"intra8x8_pred_mbaff.c:intra8x8_vert_pred_mbaff"}
!80 = distinct !{!80, !59}
!81 = distinct !{!81, !59}
!82 = !{!46, !40, i64 108}
!83 = distinct !{!83, !59}
!84 = !{!"intra8x8_pred_mbaff.c:intra8x8_hor_pred_mbaff"}
!85 = distinct !{!85, !59}
!86 = distinct !{!86, !59}
!87 = distinct !{!87, !59}
!88 = !{!"intra8x8_pred_mbaff.c:intra8x8_diag_down_right_pred_mbaff"}
!89 = distinct !{!89, !59}
!90 = distinct !{!90, !59}
!91 = !{!"intra8x8_pred_mbaff.c:intra8x8_diag_down_left_pred_mbaff"}
!92 = distinct !{!92, !59}
!93 = distinct !{!93, !59}
!94 = !{!"intra8x8_pred_mbaff.c:intra8x8_vert_right_pred_mbaff"}
!95 = distinct !{!95, !59}
!96 = distinct !{!96, !59}
!97 = !{!"intra8x8_pred_mbaff.c:intra8x8_vert_left_pred_mbaff"}
!98 = distinct !{!98, !59}
!99 = distinct !{!99, !59}
!100 = !{!"intra8x8_pred_mbaff.c:intra8x8_hor_up_pred_mbaff"}
!101 = distinct !{!101, !59}
!102 = distinct !{!102, !59}
!103 = !{!"intra8x8_pred_mbaff.c:intra8x8_hor_down_pred_mbaff"}
!104 = distinct !{!104, !59}
!105 = distinct !{!105, !59}
!106 = !{!"intra8x8_pred_mbaff.c:LowPassForIntra8x8Pred"}
!107 = distinct !{!107, !59}
!108 = distinct !{!108, !59}
!109 = !{!"intra8x8_pred_mbaff.c:LowPassForIntra8x8PredHor"}
!110 = distinct !{!110, !59}
!111 = !{!"intra8x8_pred_mbaff.c:LowPassForIntra8x8PredVer"}
!112 = distinct !{!112, !59}
