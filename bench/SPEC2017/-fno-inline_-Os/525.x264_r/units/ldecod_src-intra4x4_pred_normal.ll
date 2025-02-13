; ModuleID = 'ldecod_src/intra4x4_pred_normal.c'
source_filename = "ldecod_src/intra4x4_pred_normal.c"
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
define dso_local noundef i32 @intra4x4_pred_normal(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !49
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 %16, ptr %17, align 4, !tbaa !50
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
  tail call fastcc void @intra4x4_dc_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

19:                                               ; preds = %6
  tail call fastcc void @intra4x4_vert_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

20:                                               ; preds = %6
  tail call fastcc void @intra4x4_hor_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

21:                                               ; preds = %6
  tail call fastcc void @intra4x4_diag_down_right_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

22:                                               ; preds = %6
  tail call fastcc void @intra4x4_diag_down_left_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

23:                                               ; preds = %6
  tail call fastcc void @intra4x4_vert_right_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

24:                                               ; preds = %6
  tail call fastcc void @intra4x4_vert_left_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

25:                                               ; preds = %6
  tail call fastcc void @intra4x4_hor_up_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  br label %30

26:                                               ; preds = %6
  tail call fastcc void @intra4x4_hor_down_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
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
define internal fastcc void @intra4x4_dc_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !51 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  br i1 %10, label %19, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 33
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = add i32 %1, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  br label %21

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 32
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi ptr [ %18, %13 ], [ %20, %19 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %24 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 77
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = zext i32 %1 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = add nsw i32 %2, -1
  %30 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %29, i32 noundef %3, ptr noundef nonnull %30, ptr noundef nonnull %5) #7
  %31 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %31, ptr noundef nonnull %30, ptr noundef nonnull %6) #7
  %32 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %33, i64 0, i32 30
  %35 = load i32, ptr %34, align 4, !tbaa !61
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr %5, align 4, !tbaa !63
  br i1 %36, label %62, label %38

38:                                               ; preds = %21
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %42 = load ptr, ptr %41, align 8, !tbaa !65
  %43 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !66
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !49
  %48 = sext i8 %47 to i32
  br label %49

49:                                               ; preds = %38, %40
  %50 = phi i32 [ %48, %40 ], [ 0, %38 ]
  %51 = load i32, ptr %6, align 4, !tbaa !63
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %55 = load ptr, ptr %54, align 8, !tbaa !65
  %56 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !66
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !49
  %61 = sext i8 %60 to i32
  br label %64

62:                                               ; preds = %21
  %63 = load i32, ptr %6, align 4, !tbaa !63
  br label %64

64:                                               ; preds = %53, %62
  %65 = phi i32 [ %63, %62 ], [ %61, %53 ]
  %66 = phi i32 [ %37, %62 ], [ %50, %53 ]
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %49, %64
  %69 = phi i32 [ %66, %64 ], [ %50, %49 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %129, label %85

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %73 = load i16, ptr %72, align 2, !tbaa !67
  %74 = sext i16 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %23, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !48
  %77 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %78 = load i16, ptr %77, align 4, !tbaa !68
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds i16, ptr %76, i64 %79
  %81 = load <4 x i16>, ptr %80, align 2, !tbaa !69
  %82 = zext <4 x i16> %81 to <4 x i32>
  %83 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %82)
  %84 = icmp eq i32 %66, 0
  br i1 %84, label %126, label %85

85:                                               ; preds = %71, %68
  %86 = phi i32 [ %83, %71 ], [ 0, %68 ]
  %87 = phi i1 [ false, %71 ], [ true, %68 ]
  %88 = phi i1 [ true, %71 ], [ false, %68 ]
  %89 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %90 = load i16, ptr %89, align 2, !tbaa !67
  %91 = sext i16 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %23, i64 %91
  %93 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %94 = load i16, ptr %93, align 4, !tbaa !68
  %95 = getelementptr inbounds ptr, ptr %92, i64 1
  %96 = load ptr, ptr %92, align 8, !tbaa !48
  %97 = sext i16 %94 to i64
  %98 = getelementptr inbounds i16, ptr %96, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !69
  %100 = zext i16 %99 to i32
  %101 = add nuw nsw i32 %86, %100
  %102 = getelementptr inbounds ptr, ptr %92, i64 2
  %103 = load ptr, ptr %95, align 8, !tbaa !48
  %104 = getelementptr inbounds i16, ptr %103, i64 %97
  %105 = load i16, ptr %104, align 2, !tbaa !69
  %106 = zext i16 %105 to i32
  %107 = add nuw nsw i32 %101, %106
  %108 = getelementptr inbounds ptr, ptr %92, i64 3
  %109 = load ptr, ptr %102, align 8, !tbaa !48
  %110 = getelementptr inbounds i16, ptr %109, i64 %97
  %111 = load i16, ptr %110, align 2, !tbaa !69
  %112 = zext i16 %111 to i32
  %113 = add nuw nsw i32 %107, %112
  %114 = load ptr, ptr %108, align 8, !tbaa !48
  %115 = getelementptr inbounds i16, ptr %114, i64 %97
  %116 = load i16, ptr %115, align 2, !tbaa !69
  %117 = zext i16 %116 to i32
  %118 = add nuw nsw i32 %113, %117
  br i1 %88, label %119, label %122

119:                                              ; preds = %85
  %120 = add nuw nsw i32 %118, 4
  %121 = lshr i32 %120, 3
  br label %132

122:                                              ; preds = %85
  br i1 %87, label %123, label %129

123:                                              ; preds = %122
  %124 = add nuw nsw i32 %118, 2
  %125 = lshr i32 %124, 2
  br label %132

126:                                              ; preds = %71
  %127 = add nuw nsw i32 %83, 2
  %128 = lshr i32 %127, 2
  br label %132

129:                                              ; preds = %68, %122
  %130 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 69, i64 %26
  %131 = load i32, ptr %130, align 4, !tbaa !70
  br label %132

132:                                              ; preds = %123, %129, %126, %119
  %133 = phi i32 [ %121, %119 ], [ %125, %123 ], [ %131, %129 ], [ %128, %126 ]
  %134 = trunc i32 %133 to i16
  %135 = sext i32 %2 to i64
  %136 = sext i32 %3 to i64
  %137 = add nsw i32 %3, 3
  %138 = sext i32 %137 to i64
  %139 = insertelement <4 x i16> poison, i16 %134, i64 0
  %140 = shufflevector <4 x i16> %139, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %141

141:                                              ; preds = %132, %141
  %142 = phi i64 [ %136, %132 ], [ %146, %141 ]
  %143 = getelementptr inbounds ptr, ptr %28, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !48
  %145 = getelementptr inbounds i16, ptr %144, i64 %135
  store <4 x i16> %140, ptr %145, align 2, !tbaa !69
  %146 = add nsw i64 %142, 1
  %147 = icmp slt i64 %142, %138
  br i1 %147, label %141, label %148, !llvm.loop !71

148:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_vert_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !73 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %9 = add nsw i32 %3, -1
  %10 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  %11 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %12, i64 0, i32 30
  %14 = load i32, ptr %13, align 4, !tbaa !61
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 4, !tbaa !63
  br i1 %15, label %28, label %17

17:                                               ; preds = %4
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 128
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !66
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !49
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %4, %19
  %29 = phi i32 [ %27, %19 ], [ %16, %4 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17, %28
  %32 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 20
  %33 = load i32, ptr %32, align 4, !tbaa !74
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %33) #5
  br label %82

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 77
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = zext i32 %1 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = icmp eq i32 %1, 0
  %42 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  br i1 %41, label %50, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 33
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  %47 = add i32 %1, -1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  br label %52

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 32
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi ptr [ %51, %50 ], [ %49, %44 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %56 = load i16, ptr %55, align 2, !tbaa !67
  %57 = sext i16 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %61 = load i16, ptr %60, align 4, !tbaa !68
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds i16, ptr %59, i64 %62
  %64 = sext i32 %3 to i64
  %65 = getelementptr inbounds ptr, ptr %40, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !48
  %67 = sext i32 %2 to i64
  %68 = getelementptr inbounds i16, ptr %66, i64 %67
  %69 = load i64, ptr %63, align 2
  store i64 %69, ptr %68, align 2
  %70 = getelementptr ptr, ptr %65, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = getelementptr inbounds i16, ptr %71, i64 %67
  %73 = load i64, ptr %63, align 2
  store i64 %73, ptr %72, align 2
  %74 = getelementptr ptr, ptr %65, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  %76 = getelementptr inbounds i16, ptr %75, i64 %67
  %77 = load i64, ptr %63, align 2
  store i64 %77, ptr %76, align 2
  %78 = getelementptr ptr, ptr %65, i64 3
  %79 = load ptr, ptr %78, align 8, !tbaa !48
  %80 = getelementptr inbounds i16, ptr %79, i64 %67
  %81 = load i64, ptr %63, align 2
  store i64 %81, ptr %80, align 2
  br label %82

82:                                               ; preds = %52, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_hor_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !75 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %9 = add nsw i32 %2, -1
  %10 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  %11 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %12, i64 0, i32 30
  %14 = load i32, ptr %13, align 4, !tbaa !61
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 4, !tbaa !63
  br i1 %15, label %28, label %17

17:                                               ; preds = %4
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !66
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !49
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %4, %19
  %29 = phi i32 [ %27, %19 ], [ %16, %4 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17, %28
  %32 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %33 = load i32, ptr %32, align 4, !tbaa !74
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %33) #5
  br label %79

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %37 = load i16, ptr %36, align 2, !tbaa !67
  %38 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %39 = load i16, ptr %38, align 4, !tbaa !68
  %40 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = zext i32 %1 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = sext i32 %3 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = icmp eq i32 %1, 0
  %48 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  br i1 %47, label %56, label %50

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 33
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  %53 = add i32 %1, -1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54
  br label %58

56:                                               ; preds = %35
  %57 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 32
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %55, %50 ], [ %57, %56 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = sext i16 %39 to i64
  %62 = sext i32 %2 to i64
  %63 = sext i16 %37 to i64
  br label %64

64:                                               ; preds = %58, %64
  %65 = phi i64 [ %63, %58 ], [ %69, %64 ]
  %66 = phi i64 [ 0, %58 ], [ %77, %64 ]
  %67 = getelementptr inbounds ptr, ptr %46, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  %69 = add nsw i64 %65, 1
  %70 = getelementptr inbounds ptr, ptr %60, i64 %65
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = getelementptr inbounds i16, ptr %71, i64 %61
  %73 = load i16, ptr %72, align 2, !tbaa !69
  %74 = getelementptr inbounds i16, ptr %68, i64 %62
  %75 = insertelement <4 x i16> poison, i16 %73, i64 0
  %76 = shufflevector <4 x i16> %75, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %76, ptr %74, align 2, !tbaa !69
  %77 = add nuw nsw i64 %66, 1
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %79, label %64, !llvm.loop !76

79:                                               ; preds = %64, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_diag_down_right_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !77 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %1, 0
  %12 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  br i1 %11, label %20, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 33
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = add i32 %1, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  br label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 32
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %19, %14 ], [ %21, %20 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %25 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = zext i32 %1 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = add nsw i32 %2, -1
  %31 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %3, ptr noundef nonnull %31, ptr noundef nonnull %5) #7
  %32 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %32, ptr noundef nonnull %31, ptr noundef nonnull %6) #7
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %32, ptr noundef nonnull %31, ptr noundef nonnull %7) #7
  %33 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %34, i64 0, i32 30
  %36 = load i32, ptr %35, align 4, !tbaa !61
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr %5, align 4, !tbaa !63
  br i1 %37, label %76, label %39

39:                                               ; preds = %22
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %43 = load ptr, ptr %42, align 8, !tbaa !65
  %44 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !66
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %43, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !49
  %49 = sext i8 %48 to i32
  br label %50

50:                                               ; preds = %39, %41
  %51 = phi i32 [ %49, %41 ], [ 0, %39 ]
  %52 = load i32, ptr %6, align 4, !tbaa !63
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !66
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %56, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !49
  %62 = sext i8 %61 to i32
  br label %63

63:                                               ; preds = %50, %54
  %64 = phi i32 [ %62, %54 ], [ 0, %50 ]
  %65 = load i32, ptr %7, align 4, !tbaa !63
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %69 = load ptr, ptr %68, align 8, !tbaa !65
  %70 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !66
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !49
  %75 = sext i8 %74 to i32
  br label %79

76:                                               ; preds = %22
  %77 = load i32, ptr %6, align 4, !tbaa !63
  %78 = load i32, ptr %7, align 4, !tbaa !63
  br label %79

79:                                               ; preds = %67, %76
  %80 = phi i32 [ %78, %76 ], [ %75, %67 ]
  %81 = phi i32 [ %38, %76 ], [ %51, %67 ]
  %82 = phi i32 [ %77, %76 ], [ %64, %67 ]
  %83 = icmp ne i32 %82, 0
  %84 = icmp ne i32 %81, 0
  %85 = select i1 %83, i1 %84, i1 false
  %86 = icmp ne i32 %80, 0
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %92, label %88

88:                                               ; preds = %63, %79
  %89 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %90 = load i32, ptr %89, align 4, !tbaa !74
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %90) #5
  br label %215

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %94 = load i16, ptr %93, align 2, !tbaa !67
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %24, i64 %95
  %97 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %98 = load i16, ptr %97, align 4, !tbaa !68
  %99 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %100 = load i16, ptr %99, align 2, !tbaa !67
  %101 = sext i16 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %24, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !48
  %104 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %105 = load i16, ptr %104, align 4, !tbaa !68
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds i16, ptr %103, i64 %106
  %108 = getelementptr inbounds i16, ptr %107, i64 1
  %109 = load i16, ptr %107, align 2, !tbaa !69
  %110 = getelementptr inbounds i16, ptr %107, i64 2
  %111 = load i16, ptr %108, align 2, !tbaa !69
  %112 = getelementptr inbounds i16, ptr %107, i64 3
  %113 = load i16, ptr %110, align 2, !tbaa !69
  %114 = load i16, ptr %112, align 2, !tbaa !69
  %115 = getelementptr inbounds ptr, ptr %96, i64 1
  %116 = load ptr, ptr %96, align 8, !tbaa !48
  %117 = sext i16 %98 to i64
  %118 = getelementptr inbounds i16, ptr %116, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !69
  %120 = getelementptr inbounds ptr, ptr %96, i64 2
  %121 = load ptr, ptr %115, align 8, !tbaa !48
  %122 = getelementptr inbounds i16, ptr %121, i64 %117
  %123 = load i16, ptr %122, align 2, !tbaa !69
  %124 = getelementptr inbounds ptr, ptr %96, i64 3
  %125 = load ptr, ptr %120, align 8, !tbaa !48
  %126 = getelementptr inbounds i16, ptr %125, i64 %117
  %127 = load i16, ptr %126, align 2, !tbaa !69
  %128 = load ptr, ptr %124, align 8, !tbaa !48
  %129 = getelementptr inbounds i16, ptr %128, i64 %117
  %130 = load i16, ptr %129, align 2, !tbaa !69
  %131 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %132 = load i16, ptr %131, align 2, !tbaa !67
  %133 = sext i16 %132 to i64
  %134 = getelementptr inbounds ptr, ptr %24, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !48
  %136 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %137 = load i16, ptr %136, align 4, !tbaa !68
  %138 = sext i16 %137 to i64
  %139 = getelementptr inbounds i16, ptr %135, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !69
  %141 = zext i16 %130 to i32
  %142 = zext i16 %127 to i32
  %143 = shl nuw nsw i32 %142, 1
  %144 = zext i16 %123 to i32
  %145 = add nuw nsw i32 %144, 2
  %146 = add nuw nsw i32 %145, %143
  %147 = add nuw nsw i32 %146, %141
  %148 = lshr i32 %147, 2
  %149 = trunc i32 %148 to i16
  %150 = shl nuw nsw i32 %144, 1
  %151 = zext i16 %119 to i32
  %152 = add nuw nsw i32 %151, 2
  %153 = add nuw nsw i32 %152, %150
  %154 = add nuw nsw i32 %153, %142
  %155 = lshr i32 %154, 2
  %156 = trunc i32 %155 to i16
  %157 = shl nuw nsw i32 %151, 1
  %158 = zext i16 %140 to i32
  %159 = add nuw nsw i32 %145, %157
  %160 = add nuw nsw i32 %159, %158
  %161 = lshr i32 %160, 2
  %162 = trunc i32 %161 to i16
  %163 = shl nuw nsw i32 %158, 1
  %164 = zext i16 %109 to i32
  %165 = add nuw nsw i32 %164, 2
  %166 = add nuw nsw i32 %165, %151
  %167 = add nuw nsw i32 %166, %163
  %168 = lshr i32 %167, 2
  %169 = trunc i32 %168 to i16
  %170 = shl nuw nsw i32 %164, 1
  %171 = zext i16 %111 to i32
  %172 = add nuw nsw i32 %171, 2
  %173 = add nuw nsw i32 %172, %170
  %174 = add nuw nsw i32 %173, %158
  %175 = lshr i32 %174, 2
  %176 = trunc i32 %175 to i16
  %177 = shl nuw nsw i32 %171, 1
  %178 = zext i16 %113 to i32
  %179 = add nuw nsw i32 %165, %177
  %180 = add nuw nsw i32 %179, %178
  %181 = lshr i32 %180, 2
  %182 = trunc i32 %181 to i16
  %183 = shl nuw nsw i32 %178, 1
  %184 = zext i16 %114 to i32
  %185 = add nuw nsw i32 %172, %183
  %186 = add nuw nsw i32 %185, %184
  %187 = lshr i32 %186, 2
  %188 = trunc i32 %187 to i16
  %189 = sext i32 %3 to i64
  %190 = getelementptr inbounds ptr, ptr %29, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !48
  %192 = sext i32 %2 to i64
  %193 = getelementptr inbounds i16, ptr %191, i64 %192
  store i16 %169, ptr %193, align 2
  %194 = getelementptr inbounds i8, ptr %193, i64 2
  store i16 %176, ptr %194, align 2
  %195 = getelementptr inbounds i8, ptr %193, i64 4
  store i16 %182, ptr %195, align 2
  %196 = getelementptr inbounds i8, ptr %193, i64 6
  store i16 %188, ptr %196, align 2
  %197 = getelementptr ptr, ptr %190, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !48
  %199 = getelementptr inbounds i16, ptr %198, i64 %192
  store i16 %162, ptr %199, align 2
  %200 = getelementptr inbounds i8, ptr %199, i64 2
  store i16 %169, ptr %200, align 2
  %201 = getelementptr inbounds i8, ptr %199, i64 4
  store i16 %176, ptr %201, align 2
  %202 = getelementptr inbounds i8, ptr %199, i64 6
  store i16 %182, ptr %202, align 2
  %203 = getelementptr ptr, ptr %190, i64 2
  %204 = load ptr, ptr %203, align 8, !tbaa !48
  %205 = getelementptr inbounds i16, ptr %204, i64 %192
  store i16 %156, ptr %205, align 2
  %206 = getelementptr inbounds i8, ptr %205, i64 2
  store i16 %162, ptr %206, align 2
  %207 = getelementptr inbounds i8, ptr %205, i64 4
  store i16 %169, ptr %207, align 2
  %208 = getelementptr inbounds i8, ptr %205, i64 6
  store i16 %176, ptr %208, align 2
  %209 = getelementptr ptr, ptr %190, i64 3
  %210 = load ptr, ptr %209, align 8, !tbaa !48
  %211 = getelementptr inbounds i16, ptr %210, i64 %192
  store i16 %149, ptr %211, align 2
  %212 = getelementptr inbounds i8, ptr %211, i64 2
  store i16 %156, ptr %212, align 2
  %213 = getelementptr inbounds i8, ptr %211, i64 4
  store i16 %162, ptr %213, align 2
  %214 = getelementptr inbounds i8, ptr %211, i64 6
  store i16 %169, ptr %214, align 2
  br label %215

215:                                              ; preds = %92, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_diag_down_left_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !78 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %10 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 160
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = add nsw i32 %3, -1
  %13 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 81
  call void %11(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %5) #7
  %14 = load ptr, ptr %10, align 8, !tbaa !79
  %15 = add nsw i32 %2, 4
  call void %14(ptr noundef nonnull %0, i32 noundef %15, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %6) #7
  %16 = load i32, ptr %6, align 4, !tbaa !63
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
  store i32 %25, ptr %6, align 4, !tbaa !63
  %26 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %27, i64 0, i32 30
  %29 = load i32, ptr %28, align 4, !tbaa !61
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr %5, align 4, !tbaa !63
  br i1 %30, label %55, label %32

32:                                               ; preds = %24
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !66
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !49
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %32, %34
  %44 = phi i32 [ %42, %34 ], [ 0, %32 ]
  %45 = icmp eq i32 %25, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !66
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !49
  %54 = sext i8 %53 to i32
  br label %55

55:                                               ; preds = %24, %46, %43
  %56 = phi i32 [ %54, %46 ], [ 0, %43 ], [ %25, %24 ]
  %57 = phi i32 [ %44, %46 ], [ %44, %43 ], [ %31, %24 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 20
  %61 = load i32, ptr %60, align 4, !tbaa !74
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %61) #5
  br label %194

63:                                               ; preds = %55
  %64 = icmp eq i32 %1, 0
  %65 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %66 = load ptr, ptr %65, align 8, !tbaa !53
  br i1 %64, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 33
  %69 = load ptr, ptr %68, align 8, !tbaa !56
  %70 = add i32 %1, -1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71
  br label %75

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 32
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi ptr [ %72, %67 ], [ %74, %73 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !48
  %78 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 77
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = zext i32 %1 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %84 = load i16, ptr %83, align 2, !tbaa !67
  %85 = sext i16 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %77, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %89 = load i16, ptr %88, align 4, !tbaa !68
  %90 = sext i16 %89 to i64
  %91 = getelementptr inbounds i16, ptr %87, i64 %90
  %92 = getelementptr inbounds i16, ptr %91, i64 1
  %93 = load i16, ptr %91, align 2, !tbaa !69
  %94 = getelementptr inbounds i16, ptr %91, i64 2
  %95 = load i16, ptr %92, align 2, !tbaa !69
  %96 = getelementptr inbounds i16, ptr %91, i64 3
  %97 = load i16, ptr %94, align 2, !tbaa !69
  %98 = load i16, ptr %96, align 2, !tbaa !69
  %99 = icmp eq i32 %56, 0
  br i1 %99, label %117, label %100

100:                                              ; preds = %75
  %101 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %102 = load i16, ptr %101, align 2, !tbaa !67
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %77, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !48
  %106 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %107 = load i16, ptr %106, align 4, !tbaa !68
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds i16, ptr %105, i64 %108
  %110 = getelementptr inbounds i16, ptr %109, i64 1
  %111 = load i16, ptr %109, align 2, !tbaa !69
  %112 = getelementptr inbounds i16, ptr %109, i64 2
  %113 = load i16, ptr %110, align 2, !tbaa !69
  %114 = getelementptr inbounds i16, ptr %109, i64 3
  %115 = load i16, ptr %112, align 2, !tbaa !69
  %116 = load i16, ptr %114, align 2, !tbaa !69
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
  %170 = load ptr, ptr %169, align 8, !tbaa !48
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
  %177 = load ptr, ptr %176, align 8, !tbaa !48
  %178 = getelementptr inbounds i16, ptr %177, i64 %171
  store i16 %137, ptr %178, align 2
  %179 = getelementptr inbounds i8, ptr %178, i64 2
  store i16 %143, ptr %179, align 2
  %180 = getelementptr inbounds i8, ptr %178, i64 4
  store i16 %149, ptr %180, align 2
  %181 = getelementptr inbounds i8, ptr %178, i64 6
  store i16 %156, ptr %181, align 2
  %182 = getelementptr ptr, ptr %169, i64 2
  %183 = load ptr, ptr %182, align 8, !tbaa !48
  %184 = getelementptr inbounds i16, ptr %183, i64 %171
  store i16 %143, ptr %184, align 2
  %185 = getelementptr inbounds i8, ptr %184, i64 2
  store i16 %149, ptr %185, align 2
  %186 = getelementptr inbounds i8, ptr %184, i64 4
  store i16 %156, ptr %186, align 2
  %187 = getelementptr inbounds i8, ptr %184, i64 6
  store i16 %163, ptr %187, align 2
  %188 = getelementptr ptr, ptr %169, i64 3
  %189 = load ptr, ptr %188, align 8, !tbaa !48
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
define internal fastcc void @intra4x4_vert_right_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !80 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %11 = add nsw i32 %2, -1
  %12 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %11, i32 noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %5) #7
  %13 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %13, ptr noundef nonnull %12, ptr noundef nonnull %6) #7
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %12, ptr noundef nonnull %7) #7
  %14 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %15, i64 0, i32 30
  %17 = load i32, ptr %16, align 4, !tbaa !61
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %5, align 4, !tbaa !63
  br i1 %18, label %57, label %20

20:                                               ; preds = %4
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !49
  %30 = sext i8 %29 to i32
  br label %31

31:                                               ; preds = %20, %22
  %32 = phi i32 [ %30, %22 ], [ 0, %20 ]
  %33 = load i32, ptr %6, align 4, !tbaa !63
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !66
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !49
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %31, %35
  %45 = phi i32 [ %43, %35 ], [ 0, %31 ]
  %46 = load i32, ptr %7, align 4, !tbaa !63
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  %51 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !66
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !49
  %56 = sext i8 %55 to i32
  br label %60

57:                                               ; preds = %4
  %58 = load i32, ptr %6, align 4, !tbaa !63
  %59 = load i32, ptr %7, align 4, !tbaa !63
  br label %60

60:                                               ; preds = %48, %57
  %61 = phi i32 [ %59, %57 ], [ %56, %48 ]
  %62 = phi i32 [ %19, %57 ], [ %32, %48 ]
  %63 = phi i32 [ %58, %57 ], [ %45, %48 ]
  %64 = icmp ne i32 %63, 0
  %65 = icmp ne i32 %62, 0
  %66 = select i1 %64, i1 %65, i1 false
  %67 = icmp ne i32 %61, 0
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %73, label %69

69:                                               ; preds = %44, %60
  %70 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %71 = load i32, ptr %70, align 4, !tbaa !74
  %72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %71) #5
  br label %73

73:                                               ; preds = %60, %69
  %74 = icmp eq i32 %1, 0
  %75 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %76 = load ptr, ptr %75, align 8, !tbaa !53
  br i1 %74, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.storable_picture, ptr %76, i64 0, i32 33
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  %80 = add i32 %1, -1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81
  br label %85

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.storable_picture, ptr %76, i64 0, i32 32
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi ptr [ %82, %77 ], [ %84, %83 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %89 = load ptr, ptr %88, align 8, !tbaa !59
  %90 = zext i32 %1 to i64
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %94 = load i16, ptr %93, align 2, !tbaa !67
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %87, i64 %95
  %97 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %98 = load i16, ptr %97, align 4, !tbaa !68
  %99 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %100 = load i16, ptr %99, align 2, !tbaa !67
  %101 = sext i16 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %87, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !48
  %104 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %105 = load i16, ptr %104, align 4, !tbaa !68
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds i16, ptr %103, i64 %106
  %108 = getelementptr inbounds i16, ptr %107, i64 1
  %109 = load i16, ptr %107, align 2, !tbaa !69
  %110 = getelementptr inbounds i16, ptr %107, i64 2
  %111 = load i16, ptr %108, align 2, !tbaa !69
  %112 = getelementptr inbounds i16, ptr %107, i64 3
  %113 = load i16, ptr %110, align 2, !tbaa !69
  %114 = load i16, ptr %112, align 2, !tbaa !69
  %115 = getelementptr inbounds ptr, ptr %96, i64 1
  %116 = load ptr, ptr %96, align 8, !tbaa !48
  %117 = sext i16 %98 to i64
  %118 = getelementptr inbounds i16, ptr %116, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !69
  %120 = getelementptr inbounds ptr, ptr %96, i64 2
  %121 = load ptr, ptr %115, align 8, !tbaa !48
  %122 = getelementptr inbounds i16, ptr %121, i64 %117
  %123 = load i16, ptr %122, align 2, !tbaa !69
  %124 = load ptr, ptr %120, align 8, !tbaa !48
  %125 = getelementptr inbounds i16, ptr %124, i64 %117
  %126 = load i16, ptr %125, align 2, !tbaa !69
  %127 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %128 = load i16, ptr %127, align 2, !tbaa !67
  %129 = sext i16 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %87, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !48
  %132 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %133 = load i16, ptr %132, align 4, !tbaa !68
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds i16, ptr %131, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !69
  %137 = zext i16 %136 to i32
  %138 = zext i16 %119 to i32
  %139 = shl nuw nsw i32 %138, 1
  %140 = zext i16 %123 to i32
  %141 = add nuw nsw i32 %137, 2
  %142 = add nuw nsw i32 %141, %139
  %143 = add nuw nsw i32 %142, %140
  %144 = lshr i32 %143, 2
  %145 = trunc i32 %144 to i16
  %146 = zext i16 %109 to i32
  %147 = add nuw nsw i32 %146, 1
  %148 = add nuw nsw i32 %147, %137
  %149 = lshr i32 %148, 1
  %150 = trunc i32 %149 to i16
  %151 = zext i16 %111 to i32
  %152 = add nuw nsw i32 %147, %151
  %153 = lshr i32 %152, 1
  %154 = trunc i32 %153 to i16
  %155 = zext i16 %113 to i32
  %156 = add nuw nsw i32 %151, 1
  %157 = add nuw nsw i32 %156, %155
  %158 = lshr i32 %157, 1
  %159 = trunc i32 %158 to i16
  %160 = zext i16 %114 to i32
  %161 = add nuw nsw i32 %155, 1
  %162 = add nuw nsw i32 %161, %160
  %163 = lshr i32 %162, 1
  %164 = trunc i32 %163 to i16
  %165 = shl nuw nsw i32 %140, 1
  %166 = zext i16 %126 to i32
  %167 = add nuw nsw i32 %138, 2
  %168 = add nuw nsw i32 %167, %165
  %169 = add nuw nsw i32 %168, %166
  %170 = lshr i32 %169, 2
  %171 = trunc i32 %170 to i16
  %172 = shl nuw nsw i32 %137, 1
  %173 = add nuw nsw i32 %146, 2
  %174 = add nuw nsw i32 %173, %138
  %175 = add nuw nsw i32 %174, %172
  %176 = lshr i32 %175, 2
  %177 = trunc i32 %176 to i16
  %178 = shl nuw nsw i32 %146, 1
  %179 = add nuw nsw i32 %151, 2
  %180 = add nuw nsw i32 %179, %178
  %181 = add nuw nsw i32 %180, %137
  %182 = lshr i32 %181, 2
  %183 = trunc i32 %182 to i16
  %184 = shl nuw nsw i32 %151, 1
  %185 = add nuw nsw i32 %173, %184
  %186 = add nuw nsw i32 %185, %155
  %187 = lshr i32 %186, 2
  %188 = trunc i32 %187 to i16
  %189 = shl nuw nsw i32 %155, 1
  %190 = add nuw nsw i32 %179, %189
  %191 = add nuw nsw i32 %190, %160
  %192 = lshr i32 %191, 2
  %193 = trunc i32 %192 to i16
  %194 = sext i32 %3 to i64
  %195 = getelementptr inbounds ptr, ptr %92, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !48
  %197 = sext i32 %2 to i64
  %198 = getelementptr inbounds i16, ptr %196, i64 %197
  store i16 %150, ptr %198, align 2
  %199 = getelementptr inbounds i8, ptr %198, i64 2
  store i16 %154, ptr %199, align 2
  %200 = getelementptr inbounds i8, ptr %198, i64 4
  store i16 %159, ptr %200, align 2
  %201 = getelementptr inbounds i8, ptr %198, i64 6
  store i16 %164, ptr %201, align 2
  %202 = getelementptr ptr, ptr %195, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !48
  %204 = getelementptr inbounds i16, ptr %203, i64 %197
  store i16 %177, ptr %204, align 2
  %205 = getelementptr inbounds i8, ptr %204, i64 2
  store i16 %183, ptr %205, align 2
  %206 = getelementptr inbounds i8, ptr %204, i64 4
  store i16 %188, ptr %206, align 2
  %207 = getelementptr inbounds i8, ptr %204, i64 6
  store i16 %193, ptr %207, align 2
  %208 = getelementptr ptr, ptr %195, i64 2
  %209 = load ptr, ptr %208, align 8, !tbaa !48
  %210 = getelementptr inbounds i16, ptr %209, i64 %197
  store i16 %145, ptr %210, align 2
  %211 = getelementptr inbounds i8, ptr %210, i64 2
  store i16 %150, ptr %211, align 2
  %212 = getelementptr inbounds i8, ptr %210, i64 4
  store i16 %154, ptr %212, align 2
  %213 = getelementptr inbounds i8, ptr %210, i64 6
  store i16 %159, ptr %213, align 2
  %214 = getelementptr ptr, ptr %195, i64 3
  %215 = load ptr, ptr %214, align 8, !tbaa !48
  %216 = getelementptr inbounds i16, ptr %215, i64 %197
  store i16 %171, ptr %216, align 2
  %217 = getelementptr inbounds i8, ptr %216, i64 2
  store i16 %177, ptr %217, align 2
  %218 = getelementptr inbounds i8, ptr %216, i64 4
  store i16 %183, ptr %218, align 2
  %219 = getelementptr inbounds i8, ptr %216, i64 6
  store i16 %188, ptr %219, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_vert_left_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !81 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %10 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 160
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = add nsw i32 %3, -1
  %13 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 81
  call void %11(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %5) #7
  %14 = load ptr, ptr %10, align 8, !tbaa !79
  %15 = add nsw i32 %2, 4
  call void %14(ptr noundef nonnull %0, i32 noundef %15, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %6) #7
  %16 = load i32, ptr %6, align 4, !tbaa !63
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
  store i32 %25, ptr %6, align 4, !tbaa !63
  %26 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %27, i64 0, i32 30
  %29 = load i32, ptr %28, align 4, !tbaa !61
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr %5, align 4, !tbaa !63
  br i1 %30, label %55, label %32

32:                                               ; preds = %24
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !66
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !49
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %32, %34
  %44 = phi i32 [ %42, %34 ], [ 0, %32 ]
  %45 = icmp eq i32 %25, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !66
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !49
  %54 = sext i8 %53 to i32
  br label %55

55:                                               ; preds = %24, %46, %43
  %56 = phi i32 [ %54, %46 ], [ 0, %43 ], [ %25, %24 ]
  %57 = phi i32 [ %44, %46 ], [ %44, %43 ], [ %31, %24 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 20
  %61 = load i32, ptr %60, align 4, !tbaa !74
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %61) #5
  br label %63

63:                                               ; preds = %59, %55
  %64 = icmp eq i32 %1, 0
  %65 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %66 = load ptr, ptr %65, align 8, !tbaa !53
  br i1 %64, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 33
  %69 = load ptr, ptr %68, align 8, !tbaa !56
  %70 = add i32 %1, -1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71
  br label %75

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 32
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi ptr [ %72, %67 ], [ %74, %73 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !48
  %78 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 77
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = zext i32 %1 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %84 = load i16, ptr %83, align 2, !tbaa !67
  %85 = sext i16 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %77, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %89 = load i16, ptr %88, align 4, !tbaa !68
  %90 = sext i16 %89 to i64
  %91 = getelementptr inbounds i16, ptr %87, i64 %90
  %92 = getelementptr inbounds i16, ptr %91, i64 1
  %93 = load i16, ptr %91, align 2, !tbaa !69
  %94 = getelementptr inbounds i16, ptr %91, i64 2
  %95 = load i16, ptr %92, align 2, !tbaa !69
  %96 = getelementptr inbounds i16, ptr %91, i64 3
  %97 = load i16, ptr %94, align 2, !tbaa !69
  %98 = load i16, ptr %96, align 2, !tbaa !69
  %99 = icmp eq i32 %56, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %75
  %101 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %102 = load i16, ptr %101, align 2, !tbaa !67
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %77, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !48
  %106 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %107 = load i16, ptr %106, align 4, !tbaa !68
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds i16, ptr %105, i64 %108
  %110 = getelementptr inbounds i16, ptr %109, i64 1
  %111 = load i16, ptr %109, align 2, !tbaa !69
  %112 = getelementptr inbounds i16, ptr %109, i64 2
  %113 = load i16, ptr %110, align 2, !tbaa !69
  %114 = load i16, ptr %112, align 2, !tbaa !69
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
  %175 = load ptr, ptr %174, align 8, !tbaa !48
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
  %182 = load ptr, ptr %181, align 8, !tbaa !48
  %183 = getelementptr inbounds i16, ptr %182, i64 %176
  store i16 %149, ptr %183, align 2
  %184 = getelementptr inbounds i8, ptr %183, i64 2
  store i16 %155, ptr %184, align 2
  %185 = getelementptr inbounds i8, ptr %183, i64 4
  store i16 %160, ptr %185, align 2
  %186 = getelementptr inbounds i8, ptr %183, i64 6
  store i16 %165, ptr %186, align 2
  %187 = getelementptr ptr, ptr %174, i64 2
  %188 = load ptr, ptr %187, align 8, !tbaa !48
  %189 = getelementptr inbounds i16, ptr %188, i64 %176
  store i16 %128, ptr %189, align 2
  %190 = getelementptr inbounds i8, ptr %189, i64 2
  store i16 %133, ptr %190, align 2
  %191 = getelementptr inbounds i8, ptr %189, i64 4
  store i16 %138, ptr %191, align 2
  %192 = getelementptr inbounds i8, ptr %189, i64 6
  store i16 %143, ptr %192, align 2
  %193 = getelementptr ptr, ptr %174, i64 3
  %194 = load ptr, ptr %193, align 8, !tbaa !48
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
define internal fastcc void @intra4x4_hor_up_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !82 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %9 = add nsw i32 %2, -1
  %10 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  %11 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %12, i64 0, i32 30
  %14 = load i32, ptr %13, align 4, !tbaa !61
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 4, !tbaa !63
  br i1 %15, label %28, label %17

17:                                               ; preds = %4
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 128
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !66
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !49
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %4, %19
  %29 = phi i32 [ %27, %19 ], [ %16, %4 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17, %28
  %32 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 20
  %33 = load i32, ptr %32, align 4, !tbaa !74
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %33) #5
  br label %134

35:                                               ; preds = %28
  %36 = icmp eq i32 %1, 0
  %37 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  br i1 %36, label %45, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 33
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = add i32 %1, -1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  br label %47

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 32
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %44, %39 ], [ %46, %45 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 77
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = zext i32 %1 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %56 = load i16, ptr %55, align 2, !tbaa !67
  %57 = sext i16 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %49, i64 %57
  %59 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %60 = load i16, ptr %59, align 4, !tbaa !68
  %61 = getelementptr inbounds ptr, ptr %58, i64 1
  %62 = load ptr, ptr %58, align 8, !tbaa !48
  %63 = sext i16 %60 to i64
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !69
  %66 = getelementptr inbounds ptr, ptr %58, i64 2
  %67 = load ptr, ptr %61, align 8, !tbaa !48
  %68 = getelementptr inbounds i16, ptr %67, i64 %63
  %69 = load i16, ptr %68, align 2, !tbaa !69
  %70 = getelementptr inbounds ptr, ptr %58, i64 3
  %71 = load ptr, ptr %66, align 8, !tbaa !48
  %72 = getelementptr inbounds i16, ptr %71, i64 %63
  %73 = load i16, ptr %72, align 2, !tbaa !69
  %74 = load ptr, ptr %70, align 8, !tbaa !48
  %75 = getelementptr inbounds i16, ptr %74, i64 %63
  %76 = load i16, ptr %75, align 2, !tbaa !69
  %77 = zext i16 %65 to i32
  %78 = zext i16 %69 to i32
  %79 = add nuw nsw i32 %78, 1
  %80 = add nuw nsw i32 %79, %77
  %81 = lshr i32 %80, 1
  %82 = trunc i32 %81 to i16
  %83 = shl nuw nsw i32 %78, 1
  %84 = zext i16 %73 to i32
  %85 = add nuw nsw i32 %84, 2
  %86 = add nuw nsw i32 %85, %77
  %87 = add nuw nsw i32 %86, %83
  %88 = lshr i32 %87, 2
  %89 = trunc i32 %88 to i16
  %90 = add nuw nsw i32 %79, %84
  %91 = lshr i32 %90, 1
  %92 = trunc i32 %91 to i16
  %93 = shl nuw nsw i32 %84, 1
  %94 = zext i16 %76 to i32
  %95 = add nuw nsw i32 %94, 2
  %96 = add nuw nsw i32 %95, %78
  %97 = add nuw nsw i32 %96, %93
  %98 = lshr i32 %97, 2
  %99 = trunc i32 %98 to i16
  %100 = add nuw nsw i32 %84, 1
  %101 = add nuw nsw i32 %100, %94
  %102 = lshr i32 %101, 1
  %103 = trunc i32 %102 to i16
  %104 = shl nuw nsw i32 %94, 1
  %105 = add nuw nsw i32 %85, %94
  %106 = add nuw nsw i32 %105, %104
  %107 = lshr i32 %106, 2
  %108 = trunc i32 %107 to i16
  %109 = sext i32 %3 to i64
  %110 = getelementptr inbounds ptr, ptr %54, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !48
  %112 = sext i32 %2 to i64
  %113 = getelementptr inbounds i16, ptr %111, i64 %112
  store i16 %82, ptr %113, align 2
  %114 = getelementptr inbounds i8, ptr %113, i64 2
  store i16 %89, ptr %114, align 2
  %115 = getelementptr inbounds i8, ptr %113, i64 4
  store i16 %92, ptr %115, align 2
  %116 = getelementptr inbounds i8, ptr %113, i64 6
  store i16 %99, ptr %116, align 2
  %117 = getelementptr ptr, ptr %110, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !48
  %119 = getelementptr inbounds i16, ptr %118, i64 %112
  store i16 %92, ptr %119, align 2
  %120 = getelementptr inbounds i8, ptr %119, i64 2
  store i16 %99, ptr %120, align 2
  %121 = getelementptr inbounds i8, ptr %119, i64 4
  store i16 %103, ptr %121, align 2
  %122 = getelementptr inbounds i8, ptr %119, i64 6
  store i16 %108, ptr %122, align 2
  %123 = getelementptr ptr, ptr %110, i64 2
  %124 = load ptr, ptr %123, align 8, !tbaa !48
  %125 = getelementptr inbounds i16, ptr %124, i64 %112
  store i16 %103, ptr %125, align 2
  %126 = getelementptr inbounds i8, ptr %125, i64 2
  store i16 %108, ptr %126, align 2
  %127 = getelementptr inbounds i8, ptr %125, i64 4
  store i16 %76, ptr %127, align 2
  %128 = getelementptr inbounds i8, ptr %125, i64 6
  store i16 %76, ptr %128, align 2
  %129 = getelementptr ptr, ptr %110, i64 3
  %130 = load ptr, ptr %129, align 8, !tbaa !48
  %131 = getelementptr inbounds i16, ptr %130, i64 %112
  %132 = insertelement <4 x i16> poison, i16 %76, i64 0
  %133 = shufflevector <4 x i16> %132, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %133, ptr %131, align 2
  br label %134

134:                                              ; preds = %47, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra4x4_hor_down_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !83 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %11 = add nsw i32 %2, -1
  %12 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %11, i32 noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %5) #7
  %13 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %13, ptr noundef nonnull %12, ptr noundef nonnull %6) #7
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %12, ptr noundef nonnull %7) #7
  %14 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %15, i64 0, i32 30
  %17 = load i32, ptr %16, align 4, !tbaa !61
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %5, align 4, !tbaa !63
  br i1 %18, label %57, label %20

20:                                               ; preds = %4
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !49
  %30 = sext i8 %29 to i32
  br label %31

31:                                               ; preds = %20, %22
  %32 = phi i32 [ %30, %22 ], [ 0, %20 ]
  %33 = load i32, ptr %6, align 4, !tbaa !63
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !66
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !49
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %31, %35
  %45 = phi i32 [ %43, %35 ], [ 0, %31 ]
  %46 = load i32, ptr %7, align 4, !tbaa !63
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  %51 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !66
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !49
  %56 = sext i8 %55 to i32
  br label %60

57:                                               ; preds = %4
  %58 = load i32, ptr %6, align 4, !tbaa !63
  %59 = load i32, ptr %7, align 4, !tbaa !63
  br label %60

60:                                               ; preds = %48, %57
  %61 = phi i32 [ %59, %57 ], [ %56, %48 ]
  %62 = phi i32 [ %19, %57 ], [ %32, %48 ]
  %63 = phi i32 [ %58, %57 ], [ %45, %48 ]
  %64 = icmp ne i32 %63, 0
  %65 = icmp ne i32 %62, 0
  %66 = select i1 %64, i1 %65, i1 false
  %67 = icmp ne i32 %61, 0
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %73, label %69

69:                                               ; preds = %44, %60
  %70 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %71 = load i32, ptr %70, align 4, !tbaa !74
  %72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %71) #5
  br label %222

73:                                               ; preds = %60
  %74 = icmp eq i32 %1, 0
  %75 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %76 = load ptr, ptr %75, align 8, !tbaa !53
  br i1 %74, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.storable_picture, ptr %76, i64 0, i32 33
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  %80 = add i32 %1, -1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81
  br label %85

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.storable_picture, ptr %76, i64 0, i32 32
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi ptr [ %82, %77 ], [ %84, %83 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %89 = load ptr, ptr %88, align 8, !tbaa !59
  %90 = zext i32 %1 to i64
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %94 = load i16, ptr %93, align 2, !tbaa !67
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %87, i64 %95
  %97 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %98 = load i16, ptr %97, align 4, !tbaa !68
  %99 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %100 = load i16, ptr %99, align 2, !tbaa !67
  %101 = sext i16 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %87, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !48
  %104 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %105 = load i16, ptr %104, align 4, !tbaa !68
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds i16, ptr %103, i64 %106
  %108 = getelementptr inbounds i16, ptr %107, i64 1
  %109 = load i16, ptr %107, align 2, !tbaa !69
  %110 = getelementptr inbounds i16, ptr %107, i64 2
  %111 = load i16, ptr %108, align 2, !tbaa !69
  %112 = load i16, ptr %110, align 2, !tbaa !69
  %113 = getelementptr inbounds ptr, ptr %96, i64 1
  %114 = load ptr, ptr %96, align 8, !tbaa !48
  %115 = sext i16 %98 to i64
  %116 = getelementptr inbounds i16, ptr %114, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !69
  %118 = getelementptr inbounds ptr, ptr %96, i64 2
  %119 = load ptr, ptr %113, align 8, !tbaa !48
  %120 = getelementptr inbounds i16, ptr %119, i64 %115
  %121 = load i16, ptr %120, align 2, !tbaa !69
  %122 = getelementptr inbounds ptr, ptr %96, i64 3
  %123 = load ptr, ptr %118, align 8, !tbaa !48
  %124 = getelementptr inbounds i16, ptr %123, i64 %115
  %125 = load i16, ptr %124, align 2, !tbaa !69
  %126 = load ptr, ptr %122, align 8, !tbaa !48
  %127 = getelementptr inbounds i16, ptr %126, i64 %115
  %128 = load i16, ptr %127, align 2, !tbaa !69
  %129 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %130 = load i16, ptr %129, align 2, !tbaa !67
  %131 = sext i16 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %87, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !48
  %134 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %135 = load i16, ptr %134, align 4, !tbaa !68
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds i16, ptr %133, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !69
  %139 = zext i16 %125 to i32
  %140 = zext i16 %128 to i32
  %141 = add nuw nsw i32 %139, 1
  %142 = add nuw nsw i32 %141, %140
  %143 = lshr i32 %142, 1
  %144 = trunc i32 %143 to i16
  %145 = zext i16 %121 to i32
  %146 = shl nuw nsw i32 %139, 1
  %147 = add nuw nsw i32 %145, 2
  %148 = add nuw nsw i32 %147, %146
  %149 = add nuw nsw i32 %148, %140
  %150 = lshr i32 %149, 2
  %151 = trunc i32 %150 to i16
  %152 = add nuw nsw i32 %145, 1
  %153 = add nuw nsw i32 %152, %139
  %154 = lshr i32 %153, 1
  %155 = trunc i32 %154 to i16
  %156 = zext i16 %117 to i32
  %157 = shl nuw nsw i32 %145, 1
  %158 = add nuw nsw i32 %156, 2
  %159 = add nuw nsw i32 %158, %157
  %160 = add nuw nsw i32 %159, %139
  %161 = lshr i32 %160, 2
  %162 = trunc i32 %161 to i16
  %163 = add nuw nsw i32 %156, 1
  %164 = add nuw nsw i32 %163, %145
  %165 = lshr i32 %164, 1
  %166 = trunc i32 %165 to i16
  %167 = zext i16 %138 to i32
  %168 = shl nuw nsw i32 %156, 1
  %169 = add nuw nsw i32 %147, %168
  %170 = add nuw nsw i32 %169, %167
  %171 = lshr i32 %170, 2
  %172 = trunc i32 %171 to i16
  %173 = add nuw nsw i32 %163, %167
  %174 = lshr i32 %173, 1
  %175 = trunc i32 %174 to i16
  %176 = shl nuw nsw i32 %167, 1
  %177 = zext i16 %109 to i32
  %178 = add nuw nsw i32 %177, 2
  %179 = add nuw nsw i32 %178, %156
  %180 = add nuw nsw i32 %179, %176
  %181 = lshr i32 %180, 2
  %182 = trunc i32 %181 to i16
  %183 = shl nuw nsw i32 %177, 1
  %184 = zext i16 %111 to i32
  %185 = add nuw nsw i32 %167, 2
  %186 = add nuw nsw i32 %185, %183
  %187 = add nuw nsw i32 %186, %184
  %188 = lshr i32 %187, 2
  %189 = trunc i32 %188 to i16
  %190 = shl nuw nsw i32 %184, 1
  %191 = zext i16 %112 to i32
  %192 = add nuw nsw i32 %178, %190
  %193 = add nuw nsw i32 %192, %191
  %194 = lshr i32 %193, 2
  %195 = trunc i32 %194 to i16
  %196 = sext i32 %3 to i64
  %197 = getelementptr inbounds ptr, ptr %92, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !48
  %199 = sext i32 %2 to i64
  %200 = getelementptr inbounds i16, ptr %198, i64 %199
  store i16 %175, ptr %200, align 2
  %201 = getelementptr inbounds i8, ptr %200, i64 2
  store i16 %182, ptr %201, align 2
  %202 = getelementptr inbounds i8, ptr %200, i64 4
  store i16 %189, ptr %202, align 2
  %203 = getelementptr inbounds i8, ptr %200, i64 6
  store i16 %195, ptr %203, align 2
  %204 = getelementptr ptr, ptr %197, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !48
  %206 = getelementptr inbounds i16, ptr %205, i64 %199
  store i16 %166, ptr %206, align 2
  %207 = getelementptr inbounds i8, ptr %206, i64 2
  store i16 %172, ptr %207, align 2
  %208 = getelementptr inbounds i8, ptr %206, i64 4
  store i16 %175, ptr %208, align 2
  %209 = getelementptr inbounds i8, ptr %206, i64 6
  store i16 %182, ptr %209, align 2
  %210 = getelementptr ptr, ptr %197, i64 2
  %211 = load ptr, ptr %210, align 8, !tbaa !48
  %212 = getelementptr inbounds i16, ptr %211, i64 %199
  store i16 %155, ptr %212, align 2
  %213 = getelementptr inbounds i8, ptr %212, i64 2
  store i16 %162, ptr %213, align 2
  %214 = getelementptr inbounds i8, ptr %212, i64 4
  store i16 %166, ptr %214, align 2
  %215 = getelementptr inbounds i8, ptr %212, i64 6
  store i16 %172, ptr %215, align 2
  %216 = getelementptr ptr, ptr %197, i64 3
  %217 = load ptr, ptr %216, align 8, !tbaa !48
  %218 = getelementptr inbounds i16, ptr %217, i64 %199
  store i16 %144, ptr %218, align 2
  %219 = getelementptr inbounds i8, ptr %218, i64 2
  store i16 %151, ptr %219, align 2
  %220 = getelementptr inbounds i8, ptr %218, i64 4
  store i16 %155, ptr %220, align 2
  %221 = getelementptr inbounds i8, ptr %218, i64 6
  store i16 %162, ptr %221, align 2
  br label %222

222:                                              ; preds = %85, %69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
!34 = !{!35, !36, i64 8}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!43, !36, i64 848800}
!43 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !44, i64 849304, !44, i64 849624, !44, i64 849944, !44, i64 850264, !44, i64 850584, !44, i64 850904, !44, i64 851224, !44, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !47, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!44 = !{!"image_data", !45, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!45 = !{!"frame_format", !39, i64 0, !39, i64 4, !46, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!46 = !{!"double", !37, i64 0}
!47 = !{!"long", !37, i64 0}
!48 = !{!36, !36, i64 0}
!49 = !{!37, !37, i64 0}
!50 = !{!35, !37, i64 372}
!51 = !{!"intra4x4_pred_normal.c:intra4x4_dc_pred"}
!52 = !{!35, !36, i64 0}
!53 = !{!54, !36, i64 13520}
!54 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !55, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!55 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!56 = !{!57, !36, i64 136}
!57 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !58, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!58 = !{!"pic_motion_params_old", !36, i64 0}
!59 = !{!54, !36, i64 1248}
!60 = !{!43, !36, i64 8}
!61 = !{!62, !39, i64 2204}
!62 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!63 = !{!64, !39, i64 0}
!64 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!65 = !{!54, !36, i64 13544}
!66 = !{!64, !39, i64 4}
!67 = !{!64, !41, i64 14}
!68 = !{!64, !41, i64 12}
!69 = !{!41, !41, i64 0}
!70 = !{!39, !39, i64 0}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"intra4x4_pred_normal.c:intra4x4_vert_pred"}
!74 = !{!54, !39, i64 108}
!75 = !{!"intra4x4_pred_normal.c:intra4x4_hor_pred"}
!76 = distinct !{!76, !72}
!77 = !{!"intra4x4_pred_normal.c:intra4x4_diag_down_right_pred"}
!78 = !{!"intra4x4_pred_normal.c:intra4x4_diag_down_left_pred"}
!79 = !{!43, !36, i64 856744}
!80 = !{!"intra4x4_pred_normal.c:intra4x4_vert_right_pred"}
!81 = !{!"intra4x4_pred_normal.c:intra4x4_vert_left_pred"}
!82 = !{!"intra4x4_pred_normal.c:intra4x4_hor_up_pred"}
!83 = !{!"intra4x4_pred_normal.c:intra4x4_hor_down_pred"}
