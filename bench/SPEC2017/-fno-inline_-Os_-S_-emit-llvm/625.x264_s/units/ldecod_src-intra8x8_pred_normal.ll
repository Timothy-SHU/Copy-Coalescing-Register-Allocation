; ModuleID = 'ldecod_src/intra8x8_pred_normal.c'
source_filename = "ldecod_src/intra8x8_pred_normal.c"
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
define dso_local noundef i32 @intrapred8x8_normal(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = ashr i32 %2, 2
  %8 = add nsw i32 %6, %7
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %11 = ashr i32 %3, 2
  %12 = add nsw i32 %10, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 127
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !20
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 %21, ptr %22, align 4, !tbaa !21
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
  tail call fastcc void @intra8x8_dc_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

24:                                               ; preds = %4
  tail call fastcc void @intra8x8_vert_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

25:                                               ; preds = %4
  tail call fastcc void @intra8x8_hor_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

26:                                               ; preds = %4
  tail call fastcc void @intra8x8_diag_down_right_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

27:                                               ; preds = %4
  tail call fastcc void @intra8x8_diag_down_left_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

28:                                               ; preds = %4
  tail call fastcc void @intra8x8_vert_right_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

29:                                               ; preds = %4
  tail call fastcc void @intra8x8_vert_left_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

30:                                               ; preds = %4
  tail call fastcc void @intra8x8_hor_up_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %35

31:                                               ; preds = %4
  tail call fastcc void @intra8x8_hor_down_pred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
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
define internal fastcc void @intra8x8_dc_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %6) #9
  %34 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %35 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %36 = load i32, ptr %8, align 4, !tbaa !28
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %24
  %39 = icmp ne i32 %2, 8
  %40 = icmp ne i32 %3, 8
  %41 = or i1 %39, %40
  br label %42

42:                                               ; preds = %38, %24
  %43 = phi i1 [ false, %24 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  store i32 %44, ptr %8, align 4, !tbaa !28
  %45 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !30
  %47 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %46, i64 0, i32 30
  %48 = load i32, ptr %47, align 4, !tbaa !36
  %49 = icmp eq i32 %48, 0
  %50 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %49, label %99, label %51

51:                                               ; preds = %42
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %55 = load ptr, ptr %54, align 8, !tbaa !38
  %56 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !39
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !20
  %61 = sext i8 %60 to i32
  br label %62

62:                                               ; preds = %51, %53
  %63 = phi i32 [ %61, %53 ], [ 0, %51 ]
  %64 = load i32, ptr %7, align 4, !tbaa !28
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %68 = load ptr, ptr %67, align 8, !tbaa !38
  %69 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !39
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %68, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !20
  %74 = sext i8 %73 to i32
  br label %75

75:                                               ; preds = %62, %66
  %76 = phi i32 [ %74, %66 ], [ 0, %62 ]
  br i1 %43, label %77, label %86

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %79 = load ptr, ptr %78, align 8, !tbaa !38
  %80 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !39
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %79, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !20
  %85 = sext i8 %84 to i32
  br label %86

86:                                               ; preds = %75, %77
  %87 = phi i32 [ %85, %77 ], [ 0, %75 ]
  %88 = load i32, ptr %9, align 4, !tbaa !28
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %92 = load ptr, ptr %91, align 8, !tbaa !38
  %93 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !39
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %92, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !20
  %98 = sext i8 %97 to i32
  br label %102

99:                                               ; preds = %42
  %100 = load i32, ptr %7, align 4, !tbaa !28
  %101 = load i32, ptr %9, align 4, !tbaa !28
  br label %102

102:                                              ; preds = %90, %86, %99
  %103 = phi i32 [ %50, %99 ], [ %63, %86 ], [ %63, %90 ]
  %104 = phi i32 [ %101, %99 ], [ 0, %86 ], [ %98, %90 ]
  %105 = phi i32 [ %44, %99 ], [ %87, %86 ], [ %87, %90 ]
  %106 = phi i32 [ %100, %99 ], [ %76, %86 ], [ %76, %90 ]
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %110 = load i16, ptr %109, align 2, !tbaa !40
  %111 = sext i16 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %26, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !19
  %114 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %115 = load i16, ptr %114, align 4, !tbaa !41
  %116 = sext i16 %115 to i64
  %117 = getelementptr inbounds i16, ptr %113, i64 %116
  %118 = load i16, ptr %117, align 2, !tbaa !42
  %119 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %118, ptr %119, align 2, !tbaa !42
  %120 = getelementptr inbounds i16, ptr %117, i64 1
  %121 = load i16, ptr %120, align 2, !tbaa !42
  %122 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %121, ptr %122, align 4, !tbaa !42
  %123 = getelementptr inbounds i16, ptr %117, i64 2
  %124 = load i16, ptr %123, align 2, !tbaa !42
  %125 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %124, ptr %125, align 2, !tbaa !42
  %126 = getelementptr inbounds i16, ptr %117, i64 3
  %127 = load i16, ptr %126, align 2, !tbaa !42
  %128 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %127, ptr %128, align 8, !tbaa !42
  %129 = getelementptr inbounds i16, ptr %117, i64 4
  %130 = load i16, ptr %129, align 2, !tbaa !42
  %131 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %130, ptr %131, align 2, !tbaa !42
  %132 = getelementptr inbounds i16, ptr %117, i64 5
  %133 = load i16, ptr %132, align 2, !tbaa !42
  %134 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %133, ptr %134, align 4, !tbaa !42
  %135 = getelementptr inbounds i16, ptr %117, i64 6
  %136 = load i16, ptr %135, align 2, !tbaa !42
  %137 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %136, ptr %137, align 2, !tbaa !42
  %138 = getelementptr inbounds i16, ptr %117, i64 7
  %139 = load i16, ptr %138, align 2, !tbaa !42
  br label %150

140:                                              ; preds = %102
  %141 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %142 = load i32, ptr %141, align 4, !tbaa !43
  %143 = trunc i32 %142 to i16
  %144 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %143, ptr %144, align 2, !tbaa !42
  %145 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %143, ptr %145, align 4, !tbaa !42
  %146 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %143, ptr %146, align 2, !tbaa !42
  %147 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %148 = insertelement <4 x i16> poison, i16 %143, i64 0
  %149 = shufflevector <4 x i16> %148, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %149, ptr %147, align 2, !tbaa !42
  br label %150

150:                                              ; preds = %140, %108
  %151 = phi i16 [ %139, %108 ], [ %143, %140 ]
  %152 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %151, ptr %152, align 16
  %153 = icmp eq i32 %105, 0
  br i1 %153, label %187, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %156 = load i16, ptr %155, align 2, !tbaa !40
  %157 = sext i16 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %26, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !19
  %160 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %161 = load i16, ptr %160, align 4, !tbaa !41
  %162 = sext i16 %161 to i64
  %163 = getelementptr inbounds i16, ptr %159, i64 %162
  %164 = load i16, ptr %163, align 2, !tbaa !42
  %165 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %164, ptr %165, align 2, !tbaa !42
  %166 = getelementptr inbounds i16, ptr %163, i64 1
  %167 = load i16, ptr %166, align 2, !tbaa !42
  %168 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %167, ptr %168, align 4, !tbaa !42
  %169 = getelementptr inbounds i16, ptr %163, i64 2
  %170 = load i16, ptr %169, align 2, !tbaa !42
  %171 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %170, ptr %171, align 2, !tbaa !42
  %172 = getelementptr inbounds i16, ptr %163, i64 3
  %173 = load i16, ptr %172, align 2, !tbaa !42
  %174 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %173, ptr %174, align 8, !tbaa !42
  %175 = getelementptr inbounds i16, ptr %163, i64 4
  %176 = load i16, ptr %175, align 2, !tbaa !42
  %177 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %176, ptr %177, align 2, !tbaa !42
  %178 = getelementptr inbounds i16, ptr %163, i64 5
  %179 = load i16, ptr %178, align 2, !tbaa !42
  %180 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %179, ptr %180, align 4, !tbaa !42
  %181 = getelementptr inbounds i16, ptr %163, i64 6
  %182 = load i16, ptr %181, align 2, !tbaa !42
  %183 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %182, ptr %183, align 2, !tbaa !42
  %184 = getelementptr inbounds i16, ptr %163, i64 7
  %185 = load i16, ptr %184, align 2, !tbaa !42
  %186 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %185, ptr %186, align 16, !tbaa !42
  br label %191

187:                                              ; preds = %150
  %188 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %189 = insertelement <8 x i16> poison, i16 %151, i64 0
  %190 = shufflevector <8 x i16> %189, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %190, ptr %188, align 2, !tbaa !42
  br label %191

191:                                              ; preds = %187, %154
  %192 = icmp ne i32 %103, 0
  br i1 %192, label %193, label %239

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %195 = load i16, ptr %194, align 2, !tbaa !40
  %196 = sext i16 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %26, i64 %196
  %198 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %199 = load i16, ptr %198, align 4, !tbaa !41
  %200 = getelementptr inbounds ptr, ptr %197, i64 1
  %201 = load ptr, ptr %197, align 8, !tbaa !19
  %202 = sext i16 %199 to i64
  %203 = getelementptr inbounds i16, ptr %201, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !42
  %205 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %204, ptr %205, align 2, !tbaa !42
  %206 = getelementptr inbounds ptr, ptr %197, i64 2
  %207 = load ptr, ptr %200, align 8, !tbaa !19
  %208 = getelementptr inbounds i16, ptr %207, i64 %202
  %209 = load i16, ptr %208, align 2, !tbaa !42
  %210 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %209, ptr %210, align 4, !tbaa !42
  %211 = getelementptr inbounds ptr, ptr %197, i64 3
  %212 = load ptr, ptr %206, align 8, !tbaa !19
  %213 = getelementptr inbounds i16, ptr %212, i64 %202
  %214 = load i16, ptr %213, align 2, !tbaa !42
  %215 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %214, ptr %215, align 2, !tbaa !42
  %216 = getelementptr inbounds ptr, ptr %197, i64 4
  %217 = load ptr, ptr %211, align 8, !tbaa !19
  %218 = getelementptr inbounds i16, ptr %217, i64 %202
  %219 = load i16, ptr %218, align 2, !tbaa !42
  %220 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %219, ptr %220, align 8, !tbaa !42
  %221 = getelementptr inbounds ptr, ptr %197, i64 5
  %222 = load ptr, ptr %216, align 8, !tbaa !19
  %223 = getelementptr inbounds i16, ptr %222, i64 %202
  %224 = load i16, ptr %223, align 2, !tbaa !42
  %225 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %224, ptr %225, align 2, !tbaa !42
  %226 = getelementptr inbounds ptr, ptr %197, i64 6
  %227 = load ptr, ptr %221, align 8, !tbaa !19
  %228 = getelementptr inbounds i16, ptr %227, i64 %202
  %229 = load i16, ptr %228, align 2, !tbaa !42
  %230 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %229, ptr %230, align 4, !tbaa !42
  %231 = getelementptr inbounds ptr, ptr %197, i64 7
  %232 = load ptr, ptr %226, align 8, !tbaa !19
  %233 = getelementptr inbounds i16, ptr %232, i64 %202
  %234 = load i16, ptr %233, align 2, !tbaa !42
  %235 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %234, ptr %235, align 2, !tbaa !42
  %236 = load ptr, ptr %231, align 8, !tbaa !19
  %237 = getelementptr inbounds i16, ptr %236, i64 %202
  %238 = load i16, ptr %237, align 2, !tbaa !42
  br label %249

239:                                              ; preds = %191
  %240 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %241 = load i32, ptr %240, align 4, !tbaa !43
  %242 = trunc i32 %241 to i16
  %243 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %242, ptr %243, align 2, !tbaa !42
  %244 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %242, ptr %244, align 4, !tbaa !42
  %245 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %242, ptr %245, align 2, !tbaa !42
  %246 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %247 = insertelement <4 x i16> poison, i16 %242, i64 0
  %248 = shufflevector <4 x i16> %247, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %248, ptr %246, align 2, !tbaa !42
  br label %249

249:                                              ; preds = %239, %193
  %250 = phi i16 [ %238, %193 ], [ %242, %239 ]
  %251 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %250, ptr %251, align 16
  %252 = icmp eq i32 %104, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %255 = load i16, ptr %254, align 2, !tbaa !40
  %256 = sext i16 %255 to i64
  %257 = getelementptr inbounds ptr, ptr %26, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !19
  %259 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %260 = load i16, ptr %259, align 4, !tbaa !41
  %261 = sext i16 %260 to i64
  %262 = getelementptr inbounds i16, ptr %258, i64 %261
  %263 = load i16, ptr %262, align 2, !tbaa !42
  br label %268

264:                                              ; preds = %249
  %265 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %266 = load i32, ptr %265, align 4, !tbaa !43
  %267 = trunc i32 %266 to i16
  br label %268

268:                                              ; preds = %264, %253
  %269 = phi i16 [ %267, %264 ], [ %263, %253 ]
  store i16 %269, ptr %5, align 16, !tbaa !42
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %104, i32 noundef %106, i32 noundef %103) #7
  %270 = and i1 %192, %107
  br i1 %270, label %271, label %281

271:                                              ; preds = %268
  %272 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %273 = load <8 x i16>, ptr %272, align 2, !tbaa !42
  %274 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %275 = load <8 x i16>, ptr %274, align 2, !tbaa !42
  %276 = shufflevector <8 x i16> %273, <8 x i16> %275, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %277 = zext <16 x i16> %276 to <16 x i32>
  %278 = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %277)
  %279 = add i32 %278, 8
  %280 = lshr i32 %279, 4
  br label %303

281:                                              ; preds = %268
  %282 = icmp eq i32 %106, 0
  %283 = and i1 %192, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %281
  %285 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %286 = load <8 x i16>, ptr %285, align 2, !tbaa !42
  %287 = zext <8 x i16> %286 to <8 x i32>
  %288 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %287)
  %289 = add i32 %288, 4
  %290 = lshr i32 %289, 3
  br label %303

291:                                              ; preds = %281
  %292 = or i1 %192, %282
  br i1 %292, label %300, label %293

293:                                              ; preds = %291
  %294 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %295 = load <8 x i16>, ptr %294, align 2, !tbaa !42
  %296 = zext <8 x i16> %295 to <8 x i32>
  %297 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %296)
  %298 = add i32 %297, 4
  %299 = lshr i32 %298, 3
  br label %303

300:                                              ; preds = %291
  %301 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %302 = load i32, ptr %301, align 4, !tbaa !43
  br label %303

303:                                              ; preds = %284, %300, %293, %271
  %304 = phi i32 [ %280, %271 ], [ %290, %284 ], [ %302, %300 ], [ %299, %293 ]
  %305 = trunc i32 %304 to i16
  %306 = sext i32 %2 to i64
  %307 = sext i32 %35 to i64
  %308 = sext i32 %3 to i64
  %309 = add nsw i32 %3, 7
  %310 = sext i32 %309 to i64
  br label %311

311:                                              ; preds = %303, %320
  %312 = phi i64 [ %308, %303 ], [ %321, %320 ]
  %313 = getelementptr inbounds ptr, ptr %31, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !19
  br label %315

315:                                              ; preds = %311, %315
  %316 = phi i64 [ %306, %311 ], [ %318, %315 ]
  %317 = getelementptr inbounds i16, ptr %314, i64 %316
  store i16 %305, ptr %317, align 2, !tbaa !42
  %318 = add nsw i64 %316, 1
  %319 = icmp slt i64 %318, %307
  br i1 %319, label %315, label %320, !llvm.loop !44

320:                                              ; preds = %315
  %321 = add nsw i64 %312, 1
  %322 = icmp slt i64 %312, %310
  br i1 %322, label %311, label %323, !llvm.loop !46

323:                                              ; preds = %320
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_vert_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %6) #9
  %34 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %35 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %36 = load i32, ptr %8, align 4, !tbaa !28
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne i32 %2, 8
  %39 = icmp ne i32 %3, 8
  %40 = or i1 %38, %39
  %41 = and i1 %40, %37
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %8, align 4, !tbaa !28
  %43 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %44, i64 0, i32 30
  %46 = load i32, ptr %45, align 4, !tbaa !36
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %47, label %97, label %49

49:                                               ; preds = %24
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %49, %51
  %61 = phi i32 [ %59, %51 ], [ 0, %49 ]
  %62 = load i32, ptr %7, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !39
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %60, %64
  %74 = phi i32 [ %72, %64 ], [ 0, %60 ]
  br i1 %41, label %75, label %84

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %77 = load ptr, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !39
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !20
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %73, %75
  %85 = phi i32 [ %83, %75 ], [ 0, %73 ]
  %86 = load i32, ptr %9, align 4, !tbaa !28
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %90 = load ptr, ptr %89, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !39
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %90, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !20
  %96 = sext i8 %95 to i32
  br label %100

97:                                               ; preds = %24
  %98 = load i32, ptr %7, align 4, !tbaa !28
  %99 = load i32, ptr %9, align 4, !tbaa !28
  br label %100

100:                                              ; preds = %88, %84, %97
  %101 = phi i32 [ %48, %97 ], [ %61, %84 ], [ %61, %88 ]
  %102 = phi i32 [ %99, %97 ], [ 0, %84 ], [ %96, %88 ]
  %103 = phi i32 [ %42, %97 ], [ %85, %84 ], [ %85, %88 ]
  %104 = phi i32 [ %98, %97 ], [ %74, %84 ], [ %74, %88 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %108 = load i32, ptr %107, align 4, !tbaa !47
  %109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %108) #7
  %110 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %111 = load i32, ptr %110, align 4, !tbaa !43
  %112 = trunc i32 %111 to i16
  %113 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %112, ptr %113, align 16, !tbaa !42
  %114 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %112, ptr %114, align 2, !tbaa !42
  %115 = insertelement <4 x i16> poison, i16 %112, i64 0
  %116 = shufflevector <4 x i16> %115, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %136

117:                                              ; preds = %100
  %118 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %119 = load i16, ptr %118, align 2, !tbaa !40
  %120 = sext i16 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %26, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !19
  %123 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %124 = load i16, ptr %123, align 4, !tbaa !41
  %125 = sext i16 %124 to i64
  %126 = getelementptr inbounds i16, ptr %122, i64 %125
  %127 = getelementptr inbounds i16, ptr %126, i64 4
  %128 = load <4 x i16>, ptr %126, align 2, !tbaa !42
  %129 = getelementptr inbounds i16, ptr %126, i64 5
  %130 = load i16, ptr %127, align 2, !tbaa !42
  %131 = getelementptr inbounds i16, ptr %126, i64 6
  %132 = load i16, ptr %129, align 2, !tbaa !42
  %133 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %134 = load <2 x i16>, ptr %131, align 2, !tbaa !42
  store <2 x i16> %134, ptr %133, align 2, !tbaa !42
  %135 = extractelement <2 x i16> %134, i64 1
  br label %136

136:                                              ; preds = %106, %117
  %137 = phi i16 [ %112, %106 ], [ %135, %117 ]
  %138 = phi i16 [ %112, %106 ], [ %132, %117 ]
  %139 = phi i16 [ %112, %106 ], [ %130, %117 ]
  %140 = phi <4 x i16> [ %116, %106 ], [ %128, %117 ]
  %141 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %138, ptr %141, align 4
  %142 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %139, ptr %142, align 2
  %143 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store <4 x i16> %140, ptr %143, align 2
  %144 = icmp eq i32 %103, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %147 = load i16, ptr %146, align 2, !tbaa !40
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds ptr, ptr %26, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !19
  %151 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %152 = load i16, ptr %151, align 4, !tbaa !41
  %153 = sext i16 %152 to i64
  %154 = getelementptr inbounds i16, ptr %150, i64 %153
  %155 = getelementptr inbounds i16, ptr %154, i64 4
  %156 = load <4 x i16>, ptr %154, align 2, !tbaa !42
  %157 = getelementptr inbounds i16, ptr %154, i64 5
  %158 = load i16, ptr %155, align 2, !tbaa !42
  %159 = getelementptr inbounds i16, ptr %154, i64 6
  %160 = load i16, ptr %157, align 2, !tbaa !42
  %161 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  %162 = load <2 x i16>, ptr %159, align 2, !tbaa !42
  store <2 x i16> %162, ptr %161, align 2, !tbaa !42
  br label %168

163:                                              ; preds = %136
  %164 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %137, ptr %164, align 16, !tbaa !42
  %165 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %137, ptr %165, align 2, !tbaa !42
  %166 = insertelement <4 x i16> poison, i16 %137, i64 0
  %167 = shufflevector <4 x i16> %166, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %168

168:                                              ; preds = %163, %145
  %169 = phi i16 [ %137, %163 ], [ %160, %145 ]
  %170 = phi i16 [ %137, %163 ], [ %158, %145 ]
  %171 = phi <4 x i16> [ %167, %163 ], [ %156, %145 ]
  %172 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %169, ptr %172, align 4
  %173 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %170, ptr %173, align 2
  %174 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store <4 x i16> %171, ptr %174, align 2
  %175 = icmp eq i32 %102, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %178 = load i16, ptr %177, align 2, !tbaa !40
  %179 = sext i16 %178 to i64
  %180 = getelementptr inbounds ptr, ptr %26, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !19
  %182 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %183 = load i16, ptr %182, align 4, !tbaa !41
  %184 = sext i16 %183 to i64
  %185 = getelementptr inbounds i16, ptr %181, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !42
  br label %191

187:                                              ; preds = %168
  %188 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %189 = load i32, ptr %188, align 4, !tbaa !43
  %190 = trunc i32 %189 to i16
  br label %191

191:                                              ; preds = %187, %176
  %192 = phi i16 [ %190, %187 ], [ %186, %176 ]
  store i16 %192, ptr %5, align 16, !tbaa !42
  call fastcc void @LowPassForIntra8x8PredHor(ptr noundef nonnull %5, i32 noundef %102, i32 noundef %104, i32 noundef %101) #7
  %193 = sext i32 %2 to i64
  %194 = sext i32 %3 to i64
  %195 = add nsw i32 %3, 7
  %196 = sext i32 %195 to i64
  br label %197

197:                                              ; preds = %191, %197
  %198 = phi i64 [ %194, %191 ], [ %202, %197 ]
  %199 = getelementptr inbounds ptr, ptr %31, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !19
  %201 = getelementptr inbounds i16, ptr %200, i64 %193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %201, ptr noundef nonnull align 2 dereferenceable(16) %143, i64 16, i1 false)
  %202 = add nsw i64 %198, 1
  %203 = icmp slt i64 %198, %196
  br i1 %203, label %197, label %204, !llvm.loop !48

204:                                              ; preds = %197
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_hor_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %6) #9
  %34 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %35 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %36 = load i32, ptr %8, align 4, !tbaa !28
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne i32 %2, 8
  %39 = icmp ne i32 %3, 8
  %40 = or i1 %38, %39
  %41 = and i1 %40, %37
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %8, align 4, !tbaa !28
  %43 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %44, i64 0, i32 30
  %46 = load i32, ptr %45, align 4, !tbaa !36
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %47, label %86, label %49

49:                                               ; preds = %24
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %49, %51
  %61 = phi i32 [ %59, %51 ], [ 0, %49 ]
  %62 = load i32, ptr %7, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !39
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %60, %64
  %74 = phi i32 [ %72, %64 ], [ 0, %60 ]
  %75 = load i32, ptr %9, align 4, !tbaa !28
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %79 = load ptr, ptr %78, align 8, !tbaa !38
  %80 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !39
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %79, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !20
  %85 = sext i8 %84 to i32
  br label %89

86:                                               ; preds = %24
  %87 = load i32, ptr %7, align 4, !tbaa !28
  %88 = load i32, ptr %9, align 4, !tbaa !28
  br label %89

89:                                               ; preds = %77, %73, %86
  %90 = phi i32 [ %88, %86 ], [ %85, %77 ], [ 0, %73 ]
  %91 = phi i32 [ %48, %86 ], [ %61, %77 ], [ %61, %73 ]
  %92 = phi i32 [ %87, %86 ], [ %74, %77 ], [ %74, %73 ]
  %93 = icmp eq i32 %91, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %96 = load i32, ptr %95, align 4, !tbaa !47
  %97 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %96) #7
  %98 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %99 = load i32, ptr %98, align 4, !tbaa !43
  %100 = trunc i32 %99 to i16
  %101 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  %102 = insertelement <4 x i16> poison, i16 %100, i64 0
  %103 = shufflevector <4 x i16> %102, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %103, ptr %101, align 2, !tbaa !42
  br label %147

104:                                              ; preds = %89
  %105 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %106 = load i16, ptr %105, align 2, !tbaa !40
  %107 = sext i16 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %26, i64 %107
  %109 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %110 = load i16, ptr %109, align 4, !tbaa !41
  %111 = getelementptr inbounds ptr, ptr %108, i64 1
  %112 = load ptr, ptr %108, align 8, !tbaa !19
  %113 = sext i16 %110 to i64
  %114 = getelementptr inbounds i16, ptr %112, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !42
  %116 = getelementptr inbounds ptr, ptr %108, i64 2
  %117 = load ptr, ptr %111, align 8, !tbaa !19
  %118 = getelementptr inbounds i16, ptr %117, i64 %113
  %119 = load i16, ptr %118, align 2, !tbaa !42
  %120 = getelementptr inbounds ptr, ptr %108, i64 3
  %121 = load ptr, ptr %116, align 8, !tbaa !19
  %122 = getelementptr inbounds i16, ptr %121, i64 %113
  %123 = load i16, ptr %122, align 2, !tbaa !42
  %124 = getelementptr inbounds ptr, ptr %108, i64 4
  %125 = load ptr, ptr %120, align 8, !tbaa !19
  %126 = getelementptr inbounds i16, ptr %125, i64 %113
  %127 = load i16, ptr %126, align 2, !tbaa !42
  %128 = getelementptr inbounds ptr, ptr %108, i64 5
  %129 = load ptr, ptr %124, align 8, !tbaa !19
  %130 = getelementptr inbounds i16, ptr %129, i64 %113
  %131 = load i16, ptr %130, align 2, !tbaa !42
  %132 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %131, ptr %132, align 2, !tbaa !42
  %133 = getelementptr inbounds ptr, ptr %108, i64 6
  %134 = load ptr, ptr %128, align 8, !tbaa !19
  %135 = getelementptr inbounds i16, ptr %134, i64 %113
  %136 = load i16, ptr %135, align 2, !tbaa !42
  %137 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %136, ptr %137, align 4, !tbaa !42
  %138 = getelementptr inbounds ptr, ptr %108, i64 7
  %139 = load ptr, ptr %133, align 8, !tbaa !19
  %140 = getelementptr inbounds i16, ptr %139, i64 %113
  %141 = load i16, ptr %140, align 2, !tbaa !42
  %142 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %141, ptr %142, align 2, !tbaa !42
  %143 = load ptr, ptr %138, align 8, !tbaa !19
  %144 = getelementptr inbounds i16, ptr %143, i64 %113
  %145 = load i16, ptr %144, align 2, !tbaa !42
  %146 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %145, ptr %146, align 16, !tbaa !42
  br label %147

147:                                              ; preds = %94, %104
  %148 = phi i16 [ %100, %94 ], [ %127, %104 ]
  %149 = phi i16 [ %100, %94 ], [ %123, %104 ]
  %150 = phi i16 [ %100, %94 ], [ %119, %104 ]
  %151 = phi i16 [ %100, %94 ], [ %115, %104 ]
  %152 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %148, ptr %152, align 8
  %153 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %149, ptr %153, align 2
  %154 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %150, ptr %154, align 4
  %155 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %151, ptr %155, align 2
  %156 = icmp eq i32 %90, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %159 = load i16, ptr %158, align 2, !tbaa !40
  %160 = sext i16 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %26, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !19
  %163 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %164 = load i16, ptr %163, align 4, !tbaa !41
  %165 = sext i16 %164 to i64
  %166 = getelementptr inbounds i16, ptr %162, i64 %165
  %167 = load i16, ptr %166, align 2, !tbaa !42
  br label %172

168:                                              ; preds = %147
  %169 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %170 = load i32, ptr %169, align 4, !tbaa !43
  %171 = trunc i32 %170 to i16
  br label %172

172:                                              ; preds = %168, %157
  %173 = phi i16 [ %171, %168 ], [ %167, %157 ]
  store i16 %173, ptr %5, align 16, !tbaa !42
  call fastcc void @LowPassForIntra8x8PredVer(ptr noundef nonnull %5, i32 noundef %90, i32 noundef %92, i32 noundef %91) #7
  %174 = sext i32 %2 to i64
  %175 = sext i32 %3 to i64
  %176 = getelementptr ptr, ptr %31, i64 %175
  br label %177

177:                                              ; preds = %172, %177
  %178 = phi i64 [ 0, %172 ], [ %186, %177 ]
  %179 = getelementptr inbounds i16, ptr %155, i64 %178
  %180 = load i16, ptr %179, align 2, !tbaa !42
  %181 = getelementptr ptr, ptr %176, i64 %178
  %182 = load ptr, ptr %181, align 8, !tbaa !19
  %183 = getelementptr i16, ptr %182, i64 %174
  %184 = insertelement <8 x i16> poison, i16 %180, i64 0
  %185 = shufflevector <8 x i16> %184, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %185, ptr %183, align 2, !tbaa !42
  %186 = add nuw nsw i64 %178, 1
  %187 = icmp eq i64 %186, 8
  br i1 %187, label %188, label %177, !llvm.loop !49

188:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_diag_down_right_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %6) #9
  %34 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %35 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %36 = load i32, ptr %8, align 4, !tbaa !28
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne i32 %2, 8
  %39 = icmp ne i32 %3, 8
  %40 = or i1 %38, %39
  %41 = and i1 %40, %37
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %8, align 4, !tbaa !28
  %43 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %44, i64 0, i32 30
  %46 = load i32, ptr %45, align 4, !tbaa !36
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %47, label %103, label %49

49:                                               ; preds = %24
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %49, %51
  %61 = phi i32 [ %59, %51 ], [ 0, %49 ]
  %62 = load i32, ptr %7, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !39
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %60, %64
  %74 = phi i32 [ %72, %64 ], [ 0, %60 ]
  br i1 %41, label %75, label %84

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %77 = load ptr, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !39
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !20
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %73, %75
  %85 = phi i32 [ %83, %75 ], [ 0, %73 ]
  %86 = load i32, ptr %9, align 4, !tbaa !28
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = icmp eq i32 %74, 0
  %90 = icmp ne i32 %61, 0
  %91 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %92 = load i32, ptr %91, align 4, !tbaa !47
  %93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %92) #7
  br i1 %89, label %159, label %120

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %96 = load ptr, ptr %95, align 8, !tbaa !38
  %97 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !39
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !20
  %102 = sext i8 %101 to i32
  br label %106

103:                                              ; preds = %24
  %104 = load i32, ptr %7, align 4, !tbaa !28
  %105 = load i32, ptr %9, align 4, !tbaa !28
  br label %106

106:                                              ; preds = %94, %103
  %107 = phi i32 [ %42, %103 ], [ %85, %94 ]
  %108 = phi i32 [ %105, %103 ], [ %102, %94 ]
  %109 = phi i32 [ %48, %103 ], [ %61, %94 ]
  %110 = phi i32 [ %104, %103 ], [ %74, %94 ]
  %111 = icmp ne i32 %110, 0
  %112 = icmp ne i32 %109, 0
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp ne i32 %108, 0
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %120, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %118 = load i32, ptr %117, align 4, !tbaa !47
  %119 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %118) #7
  br i1 %111, label %120, label %159

120:                                              ; preds = %106, %88, %116
  %121 = phi i32 [ %107, %116 ], [ %85, %88 ], [ %107, %106 ]
  %122 = phi i32 [ %108, %116 ], [ 0, %88 ], [ %108, %106 ]
  %123 = phi i32 [ %109, %116 ], [ %61, %88 ], [ %109, %106 ]
  %124 = phi i32 [ %110, %116 ], [ %74, %88 ], [ %110, %106 ]
  %125 = phi i1 [ %112, %116 ], [ %90, %88 ], [ true, %106 ]
  %126 = phi i1 [ %114, %116 ], [ false, %88 ], [ true, %106 ]
  %127 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %128 = load i16, ptr %127, align 2, !tbaa !40
  %129 = sext i16 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %26, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !19
  %132 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %133 = load i16, ptr %132, align 4, !tbaa !41
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds i16, ptr %131, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !42
  %137 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %136, ptr %137, align 2, !tbaa !42
  %138 = getelementptr inbounds i16, ptr %135, i64 1
  %139 = load i16, ptr %138, align 2, !tbaa !42
  %140 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %139, ptr %140, align 4, !tbaa !42
  %141 = getelementptr inbounds i16, ptr %135, i64 2
  %142 = load i16, ptr %141, align 2, !tbaa !42
  %143 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %142, ptr %143, align 2, !tbaa !42
  %144 = getelementptr inbounds i16, ptr %135, i64 3
  %145 = load i16, ptr %144, align 2, !tbaa !42
  %146 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %145, ptr %146, align 8, !tbaa !42
  %147 = getelementptr inbounds i16, ptr %135, i64 4
  %148 = load i16, ptr %147, align 2, !tbaa !42
  %149 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %148, ptr %149, align 2, !tbaa !42
  %150 = getelementptr inbounds i16, ptr %135, i64 5
  %151 = load i16, ptr %150, align 2, !tbaa !42
  %152 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %151, ptr %152, align 4, !tbaa !42
  %153 = getelementptr inbounds i16, ptr %135, i64 6
  %154 = load i16, ptr %153, align 2, !tbaa !42
  %155 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %154, ptr %155, align 2, !tbaa !42
  %156 = getelementptr inbounds i16, ptr %135, i64 7
  %157 = load i16, ptr %156, align 2, !tbaa !42
  %158 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %157, ptr %158, align 16, !tbaa !42
  br label %171

159:                                              ; preds = %88, %116
  %160 = phi i32 [ %107, %116 ], [ %85, %88 ]
  %161 = phi i32 [ %108, %116 ], [ 0, %88 ]
  %162 = phi i32 [ %109, %116 ], [ %61, %88 ]
  %163 = phi i1 [ %112, %116 ], [ %90, %88 ]
  %164 = phi i1 [ %114, %116 ], [ false, %88 ]
  %165 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %166 = load i32, ptr %165, align 4, !tbaa !43
  %167 = trunc i32 %166 to i16
  %168 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %169 = insertelement <8 x i16> poison, i16 %167, i64 0
  %170 = shufflevector <8 x i16> %169, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %170, ptr %168, align 2, !tbaa !42
  br label %171

171:                                              ; preds = %159, %120
  %172 = phi i16 [ %167, %159 ], [ %157, %120 ]
  %173 = phi i32 [ %160, %159 ], [ %121, %120 ]
  %174 = phi i32 [ %161, %159 ], [ %122, %120 ]
  %175 = phi i32 [ %162, %159 ], [ %123, %120 ]
  %176 = phi i32 [ 0, %159 ], [ %124, %120 ]
  %177 = phi i1 [ %163, %159 ], [ %125, %120 ]
  %178 = phi i1 [ %164, %159 ], [ %126, %120 ]
  %179 = icmp eq i32 %173, 0
  br i1 %179, label %213, label %180

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %182 = load i16, ptr %181, align 2, !tbaa !40
  %183 = sext i16 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %26, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !19
  %186 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %187 = load i16, ptr %186, align 4, !tbaa !41
  %188 = sext i16 %187 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !42
  %191 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %190, ptr %191, align 2, !tbaa !42
  %192 = getelementptr inbounds i16, ptr %189, i64 1
  %193 = load i16, ptr %192, align 2, !tbaa !42
  %194 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %193, ptr %194, align 4, !tbaa !42
  %195 = getelementptr inbounds i16, ptr %189, i64 2
  %196 = load i16, ptr %195, align 2, !tbaa !42
  %197 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %196, ptr %197, align 2, !tbaa !42
  %198 = getelementptr inbounds i16, ptr %189, i64 3
  %199 = load i16, ptr %198, align 2, !tbaa !42
  %200 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %199, ptr %200, align 8, !tbaa !42
  %201 = getelementptr inbounds i16, ptr %189, i64 4
  %202 = load i16, ptr %201, align 2, !tbaa !42
  %203 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %202, ptr %203, align 2, !tbaa !42
  %204 = getelementptr inbounds i16, ptr %189, i64 5
  %205 = load i16, ptr %204, align 2, !tbaa !42
  %206 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %205, ptr %206, align 4, !tbaa !42
  %207 = getelementptr inbounds i16, ptr %189, i64 6
  %208 = load i16, ptr %207, align 2, !tbaa !42
  %209 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %208, ptr %209, align 2, !tbaa !42
  %210 = getelementptr inbounds i16, ptr %189, i64 7
  %211 = load i16, ptr %210, align 2, !tbaa !42
  %212 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %211, ptr %212, align 16, !tbaa !42
  br label %217

213:                                              ; preds = %171
  %214 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %215 = insertelement <8 x i16> poison, i16 %172, i64 0
  %216 = shufflevector <8 x i16> %215, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %216, ptr %214, align 2, !tbaa !42
  br label %217

217:                                              ; preds = %213, %180
  br i1 %177, label %218, label %264

218:                                              ; preds = %217
  %219 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %220 = load i16, ptr %219, align 2, !tbaa !40
  %221 = sext i16 %220 to i64
  %222 = getelementptr inbounds ptr, ptr %26, i64 %221
  %223 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %224 = load i16, ptr %223, align 4, !tbaa !41
  %225 = getelementptr inbounds ptr, ptr %222, i64 1
  %226 = load ptr, ptr %222, align 8, !tbaa !19
  %227 = sext i16 %224 to i64
  %228 = getelementptr inbounds i16, ptr %226, i64 %227
  %229 = load i16, ptr %228, align 2, !tbaa !42
  %230 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %229, ptr %230, align 2, !tbaa !42
  %231 = getelementptr inbounds ptr, ptr %222, i64 2
  %232 = load ptr, ptr %225, align 8, !tbaa !19
  %233 = getelementptr inbounds i16, ptr %232, i64 %227
  %234 = load i16, ptr %233, align 2, !tbaa !42
  %235 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %234, ptr %235, align 4, !tbaa !42
  %236 = getelementptr inbounds ptr, ptr %222, i64 3
  %237 = load ptr, ptr %231, align 8, !tbaa !19
  %238 = getelementptr inbounds i16, ptr %237, i64 %227
  %239 = load i16, ptr %238, align 2, !tbaa !42
  %240 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %239, ptr %240, align 2, !tbaa !42
  %241 = getelementptr inbounds ptr, ptr %222, i64 4
  %242 = load ptr, ptr %236, align 8, !tbaa !19
  %243 = getelementptr inbounds i16, ptr %242, i64 %227
  %244 = load i16, ptr %243, align 2, !tbaa !42
  %245 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %244, ptr %245, align 8, !tbaa !42
  %246 = getelementptr inbounds ptr, ptr %222, i64 5
  %247 = load ptr, ptr %241, align 8, !tbaa !19
  %248 = getelementptr inbounds i16, ptr %247, i64 %227
  %249 = load i16, ptr %248, align 2, !tbaa !42
  %250 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %249, ptr %250, align 2, !tbaa !42
  %251 = getelementptr inbounds ptr, ptr %222, i64 6
  %252 = load ptr, ptr %246, align 8, !tbaa !19
  %253 = getelementptr inbounds i16, ptr %252, i64 %227
  %254 = load i16, ptr %253, align 2, !tbaa !42
  %255 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %254, ptr %255, align 4, !tbaa !42
  %256 = getelementptr inbounds ptr, ptr %222, i64 7
  %257 = load ptr, ptr %251, align 8, !tbaa !19
  %258 = getelementptr inbounds i16, ptr %257, i64 %227
  %259 = load i16, ptr %258, align 2, !tbaa !42
  %260 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %259, ptr %260, align 2, !tbaa !42
  %261 = load ptr, ptr %256, align 8, !tbaa !19
  %262 = getelementptr inbounds i16, ptr %261, i64 %227
  %263 = load i16, ptr %262, align 2, !tbaa !42
  br label %274

264:                                              ; preds = %217
  %265 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %266 = load i32, ptr %265, align 4, !tbaa !43
  %267 = trunc i32 %266 to i16
  %268 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %267, ptr %268, align 2, !tbaa !42
  %269 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %267, ptr %269, align 4, !tbaa !42
  %270 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %267, ptr %270, align 2, !tbaa !42
  %271 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %272 = insertelement <4 x i16> poison, i16 %267, i64 0
  %273 = shufflevector <4 x i16> %272, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %273, ptr %271, align 2, !tbaa !42
  br label %274

274:                                              ; preds = %264, %218
  %275 = phi i16 [ %263, %218 ], [ %267, %264 ]
  %276 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %275, ptr %276, align 16
  br i1 %178, label %277, label %288

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %279 = load i16, ptr %278, align 2, !tbaa !40
  %280 = sext i16 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %26, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !19
  %283 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %284 = load i16, ptr %283, align 4, !tbaa !41
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds i16, ptr %282, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !42
  br label %292

288:                                              ; preds = %274
  %289 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %290 = load i32, ptr %289, align 4, !tbaa !43
  %291 = trunc i32 %290 to i16
  br label %292

292:                                              ; preds = %288, %277
  %293 = phi i16 [ %291, %288 ], [ %287, %277 ]
  store i16 %293, ptr %5, align 16, !tbaa !42
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %174, i32 noundef %176, i32 noundef %175) #7
  %294 = load i16, ptr %276, align 16, !tbaa !42
  %295 = zext i16 %294 to i32
  %296 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %297 = load i16, ptr %296, align 4, !tbaa !42
  %298 = zext i16 %297 to i32
  %299 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %300 = load i16, ptr %299, align 2, !tbaa !42
  %301 = zext i16 %300 to i32
  %302 = shl nuw nsw i32 %301, 1
  %303 = add nuw nsw i32 %298, 2
  %304 = add nuw nsw i32 %303, %295
  %305 = add nuw nsw i32 %304, %302
  %306 = lshr i32 %305, 2
  %307 = trunc i32 %306 to i16
  %308 = shl nuw nsw i32 %298, 1
  %309 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %310 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %311 = load <8 x i16>, ptr %310, align 2
  %312 = shufflevector <8 x i16> %311, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %313 = load i16, ptr %5, align 16, !tbaa !42
  %314 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %315 = load <4 x i16>, ptr %314, align 2
  %316 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %317 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %318 = load i16, ptr %317, align 2, !tbaa !42
  %319 = zext i16 %318 to i32
  %320 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  %321 = load i16, ptr %320, align 16, !tbaa !42
  %322 = zext i16 %321 to i32
  %323 = sext i32 %3 to i64
  %324 = getelementptr inbounds ptr, ptr %31, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !19
  %326 = sext i32 %2 to i64
  %327 = getelementptr inbounds i16, ptr %325, i64 %326
  %328 = getelementptr inbounds i8, ptr %327, i64 2
  %329 = getelementptr inbounds i8, ptr %327, i64 4
  %330 = getelementptr inbounds i8, ptr %327, i64 6
  %331 = getelementptr inbounds i8, ptr %327, i64 8
  %332 = load <4 x i16>, ptr %316, align 2, !tbaa !42
  %333 = zext <4 x i16> %332 to <4 x i32>
  %334 = shufflevector <4 x i32> %333, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %335 = insertelement <4 x i32> %334, i32 %319, i64 3
  %336 = shl nuw nsw <4 x i32> %335, <i32 1, i32 1, i32 1, i32 1>
  %337 = add nuw nsw <4 x i32> %333, <i32 2, i32 2, i32 2, i32 2>
  %338 = shufflevector <4 x i32> %335, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %339 = insertelement <4 x i32> %338, i32 %322, i64 3
  %340 = add nuw nsw <4 x i32> %337, %339
  %341 = add nuw nsw <4 x i32> %340, %336
  %342 = lshr <4 x i32> %341, <i32 2, i32 2, i32 2, i32 2>
  %343 = trunc <4 x i32> %342 to <4 x i16>
  %344 = getelementptr ptr, ptr %324, i64 1
  %345 = insertelement <4 x i16> %312, i16 %313, i64 1
  %346 = shufflevector <4 x i16> %345, <4 x i16> %315, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %347 = zext <4 x i16> %346 to <4 x i32>
  %348 = add nuw nsw <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = shufflevector <4 x i32> %333, <4 x i32> %347, <4 x i32> <i32 5, i32 6, i32 7, i32 0>
  %350 = shl nuw nsw <4 x i32> %349, <i32 1, i32 1, i32 1, i32 1>
  %351 = shufflevector <4 x i32> %333, <4 x i32> %347, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  %352 = add nuw nsw <4 x i32> %348, %351
  %353 = add nuw nsw <4 x i32> %352, %350
  %354 = lshr <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = trunc <4 x i32> %354 to <4 x i16>
  %356 = extractelement <4 x i16> %343, i64 0
  %357 = shufflevector <4 x i16> %343, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  %358 = extractelement <4 x i16> %343, i64 2
  %359 = getelementptr ptr, ptr %324, i64 2
  %360 = getelementptr ptr, ptr %324, i64 3
  %361 = getelementptr ptr, ptr %324, i64 4
  %362 = load <4 x i16>, ptr %309, align 4, !tbaa !42
  %363 = zext <4 x i16> %362 to <4 x i32>
  %364 = add nuw nsw <4 x i32> %363, <i32 2, i32 2, i32 2, i32 2>
  %365 = extractelement <4 x i32> %364, i64 3
  %366 = add nuw nsw i32 %365, %301
  %367 = add nuw nsw i32 %366, %308
  %368 = lshr i32 %367, 2
  %369 = trunc i32 %368 to i16
  %370 = extractelement <4 x i32> %363, i64 3
  %371 = shl nuw nsw i32 %370, 1
  %372 = extractelement <4 x i32> %363, i64 2
  %373 = add nuw nsw i32 %303, %372
  %374 = add nuw nsw i32 %373, %371
  %375 = lshr i32 %374, 2
  %376 = trunc i32 %375 to i16
  store <4 x i16> %343, ptr %331, align 2
  %377 = shufflevector <4 x i32> %347, <4 x i32> %363, <4 x i32> <i32 6, i32 5, i32 4, i32 0>
  %378 = shl nuw nsw <4 x i32> %377, <i32 1, i32 1, i32 1, i32 1>
  %379 = shufflevector <4 x i32> %347, <4 x i32> %363, <4 x i32> <i32 1, i32 0, i32 4, i32 5>
  %380 = add nuw nsw <4 x i32> %364, %379
  %381 = shufflevector <4 x i32> %380, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %382 = add nuw nsw <4 x i32> %381, %378
  %383 = lshr <4 x i32> %382, <i32 2, i32 2, i32 2, i32 2>
  %384 = trunc <4 x i32> %383 to <4 x i16>
  %385 = extractelement <4 x i16> %355, i64 0
  store i16 %385, ptr %327, align 2
  %386 = extractelement <4 x i16> %355, i64 1
  store i16 %386, ptr %328, align 2
  %387 = extractelement <4 x i16> %355, i64 2
  store i16 %387, ptr %329, align 2
  %388 = extractelement <4 x i16> %355, i64 3
  store i16 %388, ptr %330, align 2
  %389 = load ptr, ptr %344, align 8, !tbaa !19
  %390 = getelementptr inbounds i16, ptr %389, i64 %326
  %391 = extractelement <4 x i16> %384, i64 3
  store i16 %391, ptr %390, align 2
  %392 = getelementptr inbounds i8, ptr %390, i64 2
  store <4 x i16> %355, ptr %392, align 2
  %393 = getelementptr inbounds i8, ptr %390, i64 10
  store <2 x i16> %357, ptr %393, align 2
  %394 = getelementptr inbounds i8, ptr %390, i64 14
  store i16 %358, ptr %394, align 2
  %395 = load ptr, ptr %359, align 8, !tbaa !19
  %396 = getelementptr inbounds i16, ptr %395, i64 %326
  %397 = extractelement <4 x i16> %384, i64 2
  store i16 %397, ptr %396, align 2
  %398 = getelementptr inbounds i8, ptr %396, i64 2
  store i16 %391, ptr %398, align 2
  %399 = getelementptr inbounds i8, ptr %396, i64 4
  store <4 x i16> %355, ptr %399, align 2
  %400 = getelementptr inbounds i8, ptr %396, i64 12
  store <2 x i16> %357, ptr %400, align 2
  %401 = load ptr, ptr %360, align 8, !tbaa !19
  %402 = getelementptr inbounds i16, ptr %401, i64 %326
  %403 = extractelement <4 x i16> %384, i64 1
  store i16 %403, ptr %402, align 2
  %404 = getelementptr inbounds i8, ptr %402, i64 2
  store i16 %397, ptr %404, align 2
  %405 = getelementptr inbounds i8, ptr %402, i64 4
  store i16 %391, ptr %405, align 2
  %406 = getelementptr inbounds i8, ptr %402, i64 6
  store <4 x i16> %355, ptr %406, align 2
  %407 = getelementptr inbounds i8, ptr %402, i64 14
  store i16 %356, ptr %407, align 2
  %408 = load ptr, ptr %361, align 8, !tbaa !19
  %409 = getelementptr inbounds i16, ptr %408, i64 %326
  store <4 x i16> %384, ptr %409, align 2
  %410 = getelementptr inbounds i8, ptr %409, i64 8
  store <4 x i16> %355, ptr %410, align 2
  %411 = getelementptr ptr, ptr %324, i64 5
  %412 = load ptr, ptr %411, align 8, !tbaa !19
  %413 = getelementptr inbounds i16, ptr %412, i64 %326
  store i16 %376, ptr %413, align 2
  %414 = getelementptr inbounds i8, ptr %413, i64 2
  store <4 x i16> %384, ptr %414, align 2
  %415 = getelementptr inbounds i8, ptr %413, i64 10
  %416 = shufflevector <4 x i16> %355, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %416, ptr %415, align 2
  %417 = getelementptr inbounds i8, ptr %413, i64 14
  store i16 %387, ptr %417, align 2
  %418 = getelementptr ptr, ptr %324, i64 6
  %419 = load ptr, ptr %418, align 8, !tbaa !19
  %420 = getelementptr inbounds i16, ptr %419, i64 %326
  store i16 %369, ptr %420, align 2
  %421 = getelementptr inbounds i8, ptr %420, i64 2
  store i16 %376, ptr %421, align 2
  %422 = getelementptr inbounds i8, ptr %420, i64 4
  store <4 x i16> %384, ptr %422, align 2
  %423 = getelementptr inbounds i8, ptr %420, i64 12
  store <2 x i16> %416, ptr %423, align 2
  %424 = getelementptr ptr, ptr %324, i64 7
  %425 = load ptr, ptr %424, align 8, !tbaa !19
  %426 = getelementptr inbounds i16, ptr %425, i64 %326
  store i16 %307, ptr %426, align 2
  %427 = getelementptr inbounds i8, ptr %426, i64 2
  store i16 %369, ptr %427, align 2
  %428 = getelementptr inbounds i8, ptr %426, i64 4
  store i16 %376, ptr %428, align 2
  %429 = getelementptr inbounds i8, ptr %426, i64 6
  store <4 x i16> %384, ptr %429, align 2
  %430 = getelementptr inbounds i8, ptr %426, i64 14
  store i16 %385, ptr %430, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_diag_down_left_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %6) #9
  %34 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %35 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %36 = load i32, ptr %8, align 4, !tbaa !28
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne i32 %2, 8
  %39 = icmp ne i32 %3, 8
  %40 = or i1 %38, %39
  %41 = and i1 %40, %37
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %8, align 4, !tbaa !28
  %43 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %44, i64 0, i32 30
  %46 = load i32, ptr %45, align 4, !tbaa !36
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %47, label %97, label %49

49:                                               ; preds = %24
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %49, %51
  %61 = phi i32 [ %59, %51 ], [ 0, %49 ]
  %62 = load i32, ptr %7, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !39
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %60, %64
  %74 = phi i32 [ %72, %64 ], [ 0, %60 ]
  br i1 %41, label %75, label %84

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %77 = load ptr, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !39
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !20
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %73, %75
  %85 = phi i32 [ %83, %75 ], [ 0, %73 ]
  %86 = load i32, ptr %9, align 4, !tbaa !28
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %90 = load ptr, ptr %89, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !39
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %90, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !20
  %96 = sext i8 %95 to i32
  br label %100

97:                                               ; preds = %24
  %98 = load i32, ptr %7, align 4, !tbaa !28
  %99 = load i32, ptr %9, align 4, !tbaa !28
  br label %100

100:                                              ; preds = %88, %84, %97
  %101 = phi i32 [ %99, %97 ], [ %96, %88 ], [ 0, %84 ]
  %102 = phi i32 [ %42, %97 ], [ %85, %88 ], [ %85, %84 ]
  %103 = phi i32 [ %48, %97 ], [ %61, %88 ], [ %61, %84 ]
  %104 = phi i32 [ %98, %97 ], [ %74, %88 ], [ %74, %84 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %108 = load i32, ptr %107, align 4, !tbaa !47
  %109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %108) #7
  %110 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %111 = load i32, ptr %110, align 4, !tbaa !43
  %112 = trunc i32 %111 to i16
  %113 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %114 = insertelement <8 x i16> poison, i16 %112, i64 0
  %115 = shufflevector <8 x i16> %114, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %115, ptr %113, align 2, !tbaa !42
  br label %149

116:                                              ; preds = %100
  %117 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %118 = load i16, ptr %117, align 2, !tbaa !40
  %119 = sext i16 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %26, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !19
  %122 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %123 = load i16, ptr %122, align 4, !tbaa !41
  %124 = sext i16 %123 to i64
  %125 = getelementptr inbounds i16, ptr %121, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !42
  %127 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %126, ptr %127, align 2, !tbaa !42
  %128 = getelementptr inbounds i16, ptr %125, i64 1
  %129 = load i16, ptr %128, align 2, !tbaa !42
  %130 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %129, ptr %130, align 4, !tbaa !42
  %131 = getelementptr inbounds i16, ptr %125, i64 2
  %132 = load i16, ptr %131, align 2, !tbaa !42
  %133 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %132, ptr %133, align 2, !tbaa !42
  %134 = getelementptr inbounds i16, ptr %125, i64 3
  %135 = load i16, ptr %134, align 2, !tbaa !42
  %136 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %135, ptr %136, align 8, !tbaa !42
  %137 = getelementptr inbounds i16, ptr %125, i64 4
  %138 = load i16, ptr %137, align 2, !tbaa !42
  %139 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %138, ptr %139, align 2, !tbaa !42
  %140 = getelementptr inbounds i16, ptr %125, i64 5
  %141 = load i16, ptr %140, align 2, !tbaa !42
  %142 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %141, ptr %142, align 4, !tbaa !42
  %143 = getelementptr inbounds i16, ptr %125, i64 6
  %144 = load i16, ptr %143, align 2, !tbaa !42
  %145 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %144, ptr %145, align 2, !tbaa !42
  %146 = getelementptr inbounds i16, ptr %125, i64 7
  %147 = load i16, ptr %146, align 2, !tbaa !42
  %148 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %147, ptr %148, align 16, !tbaa !42
  br label %149

149:                                              ; preds = %106, %116
  %150 = phi i16 [ %112, %106 ], [ %147, %116 ]
  %151 = icmp eq i32 %102, 0
  br i1 %151, label %185, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %154 = load i16, ptr %153, align 2, !tbaa !40
  %155 = sext i16 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %26, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !19
  %158 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %159 = load i16, ptr %158, align 4, !tbaa !41
  %160 = sext i16 %159 to i64
  %161 = getelementptr inbounds i16, ptr %157, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !42
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %162, ptr %163, align 2, !tbaa !42
  %164 = getelementptr inbounds i16, ptr %161, i64 1
  %165 = load i16, ptr %164, align 2, !tbaa !42
  %166 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %165, ptr %166, align 4, !tbaa !42
  %167 = getelementptr inbounds i16, ptr %161, i64 2
  %168 = load i16, ptr %167, align 2, !tbaa !42
  %169 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %168, ptr %169, align 2, !tbaa !42
  %170 = getelementptr inbounds i16, ptr %161, i64 3
  %171 = load i16, ptr %170, align 2, !tbaa !42
  %172 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %171, ptr %172, align 8, !tbaa !42
  %173 = getelementptr inbounds i16, ptr %161, i64 4
  %174 = load i16, ptr %173, align 2, !tbaa !42
  %175 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %174, ptr %175, align 2, !tbaa !42
  %176 = getelementptr inbounds i16, ptr %161, i64 5
  %177 = load i16, ptr %176, align 2, !tbaa !42
  %178 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %177, ptr %178, align 4, !tbaa !42
  %179 = getelementptr inbounds i16, ptr %161, i64 6
  %180 = load i16, ptr %179, align 2, !tbaa !42
  %181 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %180, ptr %181, align 2, !tbaa !42
  %182 = getelementptr inbounds i16, ptr %161, i64 7
  %183 = load i16, ptr %182, align 2, !tbaa !42
  %184 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %183, ptr %184, align 16, !tbaa !42
  br label %189

185:                                              ; preds = %149
  %186 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %187 = insertelement <8 x i16> poison, i16 %150, i64 0
  %188 = shufflevector <8 x i16> %187, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %188, ptr %186, align 2, !tbaa !42
  br label %189

189:                                              ; preds = %185, %152
  %190 = icmp eq i32 %103, 0
  br i1 %190, label %238, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %193 = load i16, ptr %192, align 2, !tbaa !40
  %194 = sext i16 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %26, i64 %194
  %196 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %197 = load i16, ptr %196, align 4, !tbaa !41
  %198 = getelementptr inbounds ptr, ptr %195, i64 1
  %199 = load ptr, ptr %195, align 8, !tbaa !19
  %200 = sext i16 %197 to i64
  %201 = getelementptr inbounds i16, ptr %199, i64 %200
  %202 = load i16, ptr %201, align 2, !tbaa !42
  %203 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %202, ptr %203, align 2, !tbaa !42
  %204 = getelementptr inbounds ptr, ptr %195, i64 2
  %205 = load ptr, ptr %198, align 8, !tbaa !19
  %206 = getelementptr inbounds i16, ptr %205, i64 %200
  %207 = load i16, ptr %206, align 2, !tbaa !42
  %208 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %207, ptr %208, align 4, !tbaa !42
  %209 = getelementptr inbounds ptr, ptr %195, i64 3
  %210 = load ptr, ptr %204, align 8, !tbaa !19
  %211 = getelementptr inbounds i16, ptr %210, i64 %200
  %212 = load i16, ptr %211, align 2, !tbaa !42
  %213 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %212, ptr %213, align 2, !tbaa !42
  %214 = getelementptr inbounds ptr, ptr %195, i64 4
  %215 = load ptr, ptr %209, align 8, !tbaa !19
  %216 = getelementptr inbounds i16, ptr %215, i64 %200
  %217 = load i16, ptr %216, align 2, !tbaa !42
  %218 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %217, ptr %218, align 8, !tbaa !42
  %219 = getelementptr inbounds ptr, ptr %195, i64 5
  %220 = load ptr, ptr %214, align 8, !tbaa !19
  %221 = getelementptr inbounds i16, ptr %220, i64 %200
  %222 = load i16, ptr %221, align 2, !tbaa !42
  %223 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %222, ptr %223, align 2, !tbaa !42
  %224 = getelementptr inbounds ptr, ptr %195, i64 6
  %225 = load ptr, ptr %219, align 8, !tbaa !19
  %226 = getelementptr inbounds i16, ptr %225, i64 %200
  %227 = load i16, ptr %226, align 2, !tbaa !42
  %228 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %227, ptr %228, align 4, !tbaa !42
  %229 = getelementptr inbounds ptr, ptr %195, i64 7
  %230 = load ptr, ptr %224, align 8, !tbaa !19
  %231 = getelementptr inbounds i16, ptr %230, i64 %200
  %232 = load i16, ptr %231, align 2, !tbaa !42
  %233 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %232, ptr %233, align 2, !tbaa !42
  %234 = load ptr, ptr %229, align 8, !tbaa !19
  %235 = getelementptr inbounds i16, ptr %234, i64 %200
  %236 = load i16, ptr %235, align 2, !tbaa !42
  %237 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %236, ptr %237, align 16, !tbaa !42
  br label %245

238:                                              ; preds = %189
  %239 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %240 = load i32, ptr %239, align 4, !tbaa !43
  %241 = trunc i32 %240 to i16
  %242 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %243 = insertelement <8 x i16> poison, i16 %241, i64 0
  %244 = shufflevector <8 x i16> %243, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %244, ptr %242, align 2, !tbaa !42
  br label %245

245:                                              ; preds = %238, %191
  %246 = icmp eq i32 %101, 0
  br i1 %246, label %258, label %247

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %249 = load i16, ptr %248, align 2, !tbaa !40
  %250 = sext i16 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %26, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !19
  %253 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %254 = load i16, ptr %253, align 4, !tbaa !41
  %255 = sext i16 %254 to i64
  %256 = getelementptr inbounds i16, ptr %252, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !42
  br label %262

258:                                              ; preds = %245
  %259 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %260 = load i32, ptr %259, align 4, !tbaa !43
  %261 = trunc i32 %260 to i16
  br label %262

262:                                              ; preds = %258, %247
  %263 = phi i16 [ %261, %258 ], [ %257, %247 ]
  store i16 %263, ptr %5, align 16, !tbaa !42
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %101, i32 noundef %104, i32 noundef %103) #7
  %264 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %265 = load i16, ptr %264, align 2, !tbaa !42
  %266 = zext i16 %265 to i32
  %267 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %268 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %269 = load i16, ptr %268, align 4, !tbaa !42
  %270 = zext i16 %269 to i32
  %271 = shl nuw nsw i32 %270, 1
  %272 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  %273 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  %274 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  %275 = load i16, ptr %274, align 2, !tbaa !42
  %276 = zext i16 %275 to i32
  %277 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  %278 = load i16, ptr %277, align 16, !tbaa !42
  %279 = zext i16 %278 to i32
  %280 = shl nuw nsw i32 %276, 1
  %281 = mul nuw nsw i32 %279, 3
  %282 = add nuw nsw i32 %276, 2
  %283 = add nuw nsw i32 %282, %281
  %284 = lshr i32 %283, 2
  %285 = trunc i32 %284 to i16
  %286 = sext i32 %3 to i64
  %287 = getelementptr inbounds ptr, ptr %31, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !19
  %289 = sext i32 %2 to i64
  %290 = getelementptr inbounds i16, ptr %288, i64 %289
  %291 = getelementptr inbounds i8, ptr %290, i64 2
  %292 = getelementptr inbounds i8, ptr %290, i64 4
  %293 = getelementptr inbounds i8, ptr %290, i64 6
  %294 = getelementptr inbounds i8, ptr %290, i64 8
  %295 = getelementptr inbounds i8, ptr %290, i64 10
  %296 = getelementptr inbounds i8, ptr %290, i64 12
  %297 = getelementptr inbounds i8, ptr %290, i64 14
  %298 = getelementptr ptr, ptr %287, i64 1
  %299 = getelementptr ptr, ptr %287, i64 2
  %300 = load <8 x i16>, ptr %267, align 2, !tbaa !42
  %301 = zext <8 x i16> %300 to <8 x i32>
  %302 = add nuw nsw <8 x i32> %301, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %303 = extractelement <8 x i32> %302, i64 0
  %304 = add nuw nsw i32 %303, %266
  %305 = add nuw nsw i32 %304, %271
  %306 = lshr i32 %305, 2
  %307 = trunc i32 %306 to i16
  %308 = extractelement <8 x i32> %301, i64 0
  %309 = shl nuw nsw i32 %308, 1
  %310 = extractelement <8 x i32> %302, i64 1
  %311 = add nuw nsw i32 %310, %270
  %312 = add nuw nsw i32 %311, %309
  %313 = lshr i32 %312, 2
  %314 = trunc i32 %313 to i16
  %315 = shufflevector <8 x i32> %301, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %316 = getelementptr ptr, ptr %287, i64 3
  %317 = getelementptr ptr, ptr %287, i64 4
  %318 = load <2 x i16>, ptr %272, align 2, !tbaa !42
  %319 = zext <2 x i16> %318 to <2 x i32>
  %320 = load <2 x i16>, ptr %273, align 2, !tbaa !42
  %321 = zext <2 x i16> %320 to <2 x i32>
  %322 = shufflevector <2 x i32> %319, <2 x i32> %321, <2 x i32> <i32 1, i32 2>
  %323 = shl nuw nsw <2 x i32> %322, <i32 1, i32 1>
  %324 = add nuw nsw <2 x i32> %319, <i32 2, i32 2>
  %325 = add nuw nsw <2 x i32> %324, %321
  %326 = add nuw nsw <2 x i32> %325, %323
  %327 = lshr <2 x i32> %326, <i32 2, i32 2>
  %328 = trunc <2 x i32> %327 to <2 x i16>
  %329 = extractelement <2 x i32> %321, i64 1
  %330 = shl nuw nsw i32 %329, 1
  %331 = extractelement <2 x i32> %321, i64 0
  %332 = add nuw nsw i32 %331, 2
  %333 = add nuw nsw i32 %332, %276
  %334 = add nuw nsw i32 %333, %330
  %335 = lshr i32 %334, 2
  %336 = trunc i32 %335 to i16
  %337 = add nuw nsw i32 %329, 2
  %338 = add nuw nsw i32 %337, %279
  %339 = add nuw nsw i32 %338, %280
  %340 = lshr i32 %339, 2
  %341 = trunc i32 %340 to i16
  %342 = shufflevector <2 x i32> %319, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %343 = shufflevector <8 x i32> %315, <8 x i32> %342, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %344 = shl nuw nsw <8 x i32> %343, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %345 = shufflevector <8 x i32> %301, <8 x i32> %343, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 13, i32 14, i32 poison, i32 poison>
  %346 = shufflevector <8 x i32> %345, <8 x i32> %342, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %347 = add nuw nsw <8 x i32> %302, %346
  %348 = add nuw nsw <8 x i32> %347, %344
  %349 = lshr <8 x i32> %348, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %350 = trunc <8 x i32> %349 to <8 x i16>
  store i16 %307, ptr %290, align 2
  store i16 %314, ptr %291, align 2
  %351 = extractelement <8 x i16> %350, i64 0
  store i16 %351, ptr %292, align 2
  %352 = extractelement <8 x i16> %350, i64 1
  store i16 %352, ptr %293, align 2
  %353 = extractelement <8 x i16> %350, i64 2
  store i16 %353, ptr %294, align 2
  %354 = extractelement <8 x i16> %350, i64 3
  store i16 %354, ptr %295, align 2
  %355 = extractelement <8 x i16> %350, i64 4
  store i16 %355, ptr %296, align 2
  %356 = extractelement <8 x i16> %350, i64 5
  store i16 %356, ptr %297, align 2
  %357 = load ptr, ptr %298, align 8, !tbaa !19
  %358 = getelementptr inbounds i16, ptr %357, i64 %289
  store i16 %314, ptr %358, align 2
  %359 = getelementptr inbounds i8, ptr %358, i64 2
  store i16 %351, ptr %359, align 2
  %360 = getelementptr inbounds i8, ptr %358, i64 4
  store i16 %352, ptr %360, align 2
  %361 = getelementptr inbounds i8, ptr %358, i64 6
  store i16 %353, ptr %361, align 2
  %362 = getelementptr inbounds i8, ptr %358, i64 8
  store i16 %354, ptr %362, align 2
  %363 = getelementptr inbounds i8, ptr %358, i64 10
  store i16 %355, ptr %363, align 2
  %364 = getelementptr inbounds i8, ptr %358, i64 12
  store i16 %356, ptr %364, align 2
  %365 = getelementptr inbounds i8, ptr %358, i64 14
  %366 = extractelement <8 x i16> %350, i64 6
  store i16 %366, ptr %365, align 2
  %367 = load ptr, ptr %299, align 8, !tbaa !19
  %368 = getelementptr inbounds i16, ptr %367, i64 %289
  store <8 x i16> %350, ptr %368, align 2
  %369 = load ptr, ptr %316, align 8, !tbaa !19
  %370 = getelementptr inbounds i16, ptr %369, i64 %289
  store i16 %352, ptr %370, align 2
  %371 = getelementptr inbounds i8, ptr %370, i64 2
  store i16 %353, ptr %371, align 2
  %372 = getelementptr inbounds i8, ptr %370, i64 4
  store i16 %354, ptr %372, align 2
  %373 = getelementptr inbounds i8, ptr %370, i64 6
  store i16 %355, ptr %373, align 2
  %374 = getelementptr inbounds i8, ptr %370, i64 8
  store i16 %356, ptr %374, align 2
  %375 = getelementptr inbounds i8, ptr %370, i64 10
  store i16 %366, ptr %375, align 2
  %376 = getelementptr inbounds i8, ptr %370, i64 12
  %377 = extractelement <8 x i16> %350, i64 7
  store i16 %377, ptr %376, align 2
  %378 = getelementptr inbounds i8, ptr %370, i64 14
  %379 = extractelement <2 x i16> %328, i64 0
  store i16 %379, ptr %378, align 2
  %380 = load ptr, ptr %317, align 8, !tbaa !19
  %381 = getelementptr inbounds i16, ptr %380, i64 %289
  store i16 %353, ptr %381, align 2
  %382 = getelementptr inbounds i8, ptr %381, i64 2
  store i16 %354, ptr %382, align 2
  %383 = getelementptr inbounds i8, ptr %381, i64 4
  store i16 %355, ptr %383, align 2
  %384 = getelementptr inbounds i8, ptr %381, i64 6
  store i16 %356, ptr %384, align 2
  %385 = getelementptr inbounds i8, ptr %381, i64 8
  store i16 %366, ptr %385, align 2
  %386 = getelementptr inbounds i8, ptr %381, i64 10
  store i16 %377, ptr %386, align 2
  %387 = getelementptr inbounds i8, ptr %381, i64 12
  store <2 x i16> %328, ptr %387, align 2
  %388 = getelementptr ptr, ptr %287, i64 5
  %389 = load ptr, ptr %388, align 8, !tbaa !19
  %390 = getelementptr inbounds i16, ptr %389, i64 %289
  store i16 %354, ptr %390, align 2
  %391 = getelementptr inbounds i8, ptr %390, i64 2
  store i16 %355, ptr %391, align 2
  %392 = getelementptr inbounds i8, ptr %390, i64 4
  store i16 %356, ptr %392, align 2
  %393 = getelementptr inbounds i8, ptr %390, i64 6
  store i16 %366, ptr %393, align 2
  %394 = getelementptr inbounds i8, ptr %390, i64 8
  store i16 %377, ptr %394, align 2
  %395 = getelementptr inbounds i8, ptr %390, i64 10
  store <2 x i16> %328, ptr %395, align 2
  %396 = getelementptr inbounds i8, ptr %390, i64 14
  store i16 %336, ptr %396, align 2
  %397 = getelementptr ptr, ptr %287, i64 6
  %398 = load ptr, ptr %397, align 8, !tbaa !19
  %399 = getelementptr inbounds i16, ptr %398, i64 %289
  store i16 %355, ptr %399, align 2
  %400 = getelementptr inbounds i8, ptr %399, i64 2
  store i16 %356, ptr %400, align 2
  %401 = getelementptr inbounds i8, ptr %399, i64 4
  store i16 %366, ptr %401, align 2
  %402 = getelementptr inbounds i8, ptr %399, i64 6
  store i16 %377, ptr %402, align 2
  %403 = getelementptr inbounds i8, ptr %399, i64 8
  store <2 x i16> %328, ptr %403, align 2
  %404 = getelementptr inbounds i8, ptr %399, i64 12
  store i16 %336, ptr %404, align 2
  %405 = getelementptr inbounds i8, ptr %399, i64 14
  store i16 %341, ptr %405, align 2
  %406 = getelementptr ptr, ptr %287, i64 7
  %407 = load ptr, ptr %406, align 8, !tbaa !19
  %408 = getelementptr inbounds i16, ptr %407, i64 %289
  store i16 %356, ptr %408, align 2
  %409 = getelementptr inbounds i8, ptr %408, i64 2
  store i16 %366, ptr %409, align 2
  %410 = getelementptr inbounds i8, ptr %408, i64 4
  store i16 %377, ptr %410, align 2
  %411 = getelementptr inbounds i8, ptr %408, i64 6
  store <2 x i16> %328, ptr %411, align 2
  %412 = getelementptr inbounds i8, ptr %408, i64 10
  store i16 %336, ptr %412, align 2
  %413 = getelementptr inbounds i8, ptr %408, i64 12
  store i16 %341, ptr %413, align 2
  %414 = getelementptr inbounds i8, ptr %408, i64 14
  store i16 %285, ptr %414, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_vert_right_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %6) #9
  %34 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %35 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %36 = load i32, ptr %8, align 4, !tbaa !28
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne i32 %2, 8
  %39 = icmp ne i32 %3, 8
  %40 = or i1 %38, %39
  %41 = and i1 %40, %37
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %8, align 4, !tbaa !28
  %43 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %44, i64 0, i32 30
  %46 = load i32, ptr %45, align 4, !tbaa !36
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %47, label %103, label %49

49:                                               ; preds = %24
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %49, %51
  %61 = phi i32 [ %59, %51 ], [ 0, %49 ]
  %62 = load i32, ptr %7, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !39
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %60, %64
  %74 = phi i32 [ %72, %64 ], [ 0, %60 ]
  br i1 %41, label %75, label %84

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %77 = load ptr, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !39
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !20
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %73, %75
  %85 = phi i32 [ %83, %75 ], [ 0, %73 ]
  %86 = load i32, ptr %9, align 4, !tbaa !28
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = icmp eq i32 %74, 0
  %90 = icmp ne i32 %61, 0
  %91 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %92 = load i32, ptr %91, align 4, !tbaa !47
  %93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %92) #7
  br i1 %89, label %159, label %120

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %96 = load ptr, ptr %95, align 8, !tbaa !38
  %97 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !39
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !20
  %102 = sext i8 %101 to i32
  br label %106

103:                                              ; preds = %24
  %104 = load i32, ptr %7, align 4, !tbaa !28
  %105 = load i32, ptr %9, align 4, !tbaa !28
  br label %106

106:                                              ; preds = %94, %103
  %107 = phi i32 [ %42, %103 ], [ %85, %94 ]
  %108 = phi i32 [ %105, %103 ], [ %102, %94 ]
  %109 = phi i32 [ %48, %103 ], [ %61, %94 ]
  %110 = phi i32 [ %104, %103 ], [ %74, %94 ]
  %111 = icmp ne i32 %110, 0
  %112 = icmp ne i32 %109, 0
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp ne i32 %108, 0
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %120, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %118 = load i32, ptr %117, align 4, !tbaa !47
  %119 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %118) #7
  br i1 %111, label %120, label %159

120:                                              ; preds = %106, %88, %116
  %121 = phi i32 [ %107, %116 ], [ %85, %88 ], [ %107, %106 ]
  %122 = phi i32 [ %108, %116 ], [ 0, %88 ], [ %108, %106 ]
  %123 = phi i32 [ %109, %116 ], [ %61, %88 ], [ %109, %106 ]
  %124 = phi i32 [ %110, %116 ], [ %74, %88 ], [ %110, %106 ]
  %125 = phi i1 [ %112, %116 ], [ %90, %88 ], [ true, %106 ]
  %126 = phi i1 [ %114, %116 ], [ false, %88 ], [ true, %106 ]
  %127 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %128 = load i16, ptr %127, align 2, !tbaa !40
  %129 = sext i16 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %26, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !19
  %132 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %133 = load i16, ptr %132, align 4, !tbaa !41
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds i16, ptr %131, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !42
  %137 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %136, ptr %137, align 2, !tbaa !42
  %138 = getelementptr inbounds i16, ptr %135, i64 1
  %139 = load i16, ptr %138, align 2, !tbaa !42
  %140 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %139, ptr %140, align 4, !tbaa !42
  %141 = getelementptr inbounds i16, ptr %135, i64 2
  %142 = load i16, ptr %141, align 2, !tbaa !42
  %143 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %142, ptr %143, align 2, !tbaa !42
  %144 = getelementptr inbounds i16, ptr %135, i64 3
  %145 = load i16, ptr %144, align 2, !tbaa !42
  %146 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %145, ptr %146, align 8, !tbaa !42
  %147 = getelementptr inbounds i16, ptr %135, i64 4
  %148 = load i16, ptr %147, align 2, !tbaa !42
  %149 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %148, ptr %149, align 2, !tbaa !42
  %150 = getelementptr inbounds i16, ptr %135, i64 5
  %151 = load i16, ptr %150, align 2, !tbaa !42
  %152 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %151, ptr %152, align 4, !tbaa !42
  %153 = getelementptr inbounds i16, ptr %135, i64 6
  %154 = load i16, ptr %153, align 2, !tbaa !42
  %155 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %154, ptr %155, align 2, !tbaa !42
  %156 = getelementptr inbounds i16, ptr %135, i64 7
  %157 = load i16, ptr %156, align 2, !tbaa !42
  %158 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %157, ptr %158, align 16, !tbaa !42
  br label %171

159:                                              ; preds = %88, %116
  %160 = phi i32 [ %107, %116 ], [ %85, %88 ]
  %161 = phi i32 [ %108, %116 ], [ 0, %88 ]
  %162 = phi i32 [ %109, %116 ], [ %61, %88 ]
  %163 = phi i1 [ %112, %116 ], [ %90, %88 ]
  %164 = phi i1 [ %114, %116 ], [ false, %88 ]
  %165 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %166 = load i32, ptr %165, align 4, !tbaa !43
  %167 = trunc i32 %166 to i16
  %168 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %169 = insertelement <8 x i16> poison, i16 %167, i64 0
  %170 = shufflevector <8 x i16> %169, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %170, ptr %168, align 2, !tbaa !42
  br label %171

171:                                              ; preds = %159, %120
  %172 = phi i16 [ %167, %159 ], [ %157, %120 ]
  %173 = phi i32 [ %160, %159 ], [ %121, %120 ]
  %174 = phi i32 [ %161, %159 ], [ %122, %120 ]
  %175 = phi i32 [ %162, %159 ], [ %123, %120 ]
  %176 = phi i32 [ 0, %159 ], [ %124, %120 ]
  %177 = phi i1 [ %163, %159 ], [ %125, %120 ]
  %178 = phi i1 [ %164, %159 ], [ %126, %120 ]
  %179 = icmp eq i32 %173, 0
  br i1 %179, label %213, label %180

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %182 = load i16, ptr %181, align 2, !tbaa !40
  %183 = sext i16 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %26, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !19
  %186 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %187 = load i16, ptr %186, align 4, !tbaa !41
  %188 = sext i16 %187 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !42
  %191 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %190, ptr %191, align 2, !tbaa !42
  %192 = getelementptr inbounds i16, ptr %189, i64 1
  %193 = load i16, ptr %192, align 2, !tbaa !42
  %194 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %193, ptr %194, align 4, !tbaa !42
  %195 = getelementptr inbounds i16, ptr %189, i64 2
  %196 = load i16, ptr %195, align 2, !tbaa !42
  %197 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %196, ptr %197, align 2, !tbaa !42
  %198 = getelementptr inbounds i16, ptr %189, i64 3
  %199 = load i16, ptr %198, align 2, !tbaa !42
  %200 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %199, ptr %200, align 8, !tbaa !42
  %201 = getelementptr inbounds i16, ptr %189, i64 4
  %202 = load i16, ptr %201, align 2, !tbaa !42
  %203 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %202, ptr %203, align 2, !tbaa !42
  %204 = getelementptr inbounds i16, ptr %189, i64 5
  %205 = load i16, ptr %204, align 2, !tbaa !42
  %206 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %205, ptr %206, align 4, !tbaa !42
  %207 = getelementptr inbounds i16, ptr %189, i64 6
  %208 = load i16, ptr %207, align 2, !tbaa !42
  %209 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %208, ptr %209, align 2, !tbaa !42
  %210 = getelementptr inbounds i16, ptr %189, i64 7
  %211 = load i16, ptr %210, align 2, !tbaa !42
  %212 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %211, ptr %212, align 16, !tbaa !42
  br label %217

213:                                              ; preds = %171
  %214 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %215 = insertelement <8 x i16> poison, i16 %172, i64 0
  %216 = shufflevector <8 x i16> %215, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %216, ptr %214, align 2, !tbaa !42
  br label %217

217:                                              ; preds = %213, %180
  br i1 %177, label %218, label %264

218:                                              ; preds = %217
  %219 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %220 = load i16, ptr %219, align 2, !tbaa !40
  %221 = sext i16 %220 to i64
  %222 = getelementptr inbounds ptr, ptr %26, i64 %221
  %223 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %224 = load i16, ptr %223, align 4, !tbaa !41
  %225 = getelementptr inbounds ptr, ptr %222, i64 1
  %226 = load ptr, ptr %222, align 8, !tbaa !19
  %227 = sext i16 %224 to i64
  %228 = getelementptr inbounds i16, ptr %226, i64 %227
  %229 = load i16, ptr %228, align 2, !tbaa !42
  %230 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %229, ptr %230, align 2, !tbaa !42
  %231 = getelementptr inbounds ptr, ptr %222, i64 2
  %232 = load ptr, ptr %225, align 8, !tbaa !19
  %233 = getelementptr inbounds i16, ptr %232, i64 %227
  %234 = load i16, ptr %233, align 2, !tbaa !42
  %235 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %234, ptr %235, align 4, !tbaa !42
  %236 = getelementptr inbounds ptr, ptr %222, i64 3
  %237 = load ptr, ptr %231, align 8, !tbaa !19
  %238 = getelementptr inbounds i16, ptr %237, i64 %227
  %239 = load i16, ptr %238, align 2, !tbaa !42
  %240 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %239, ptr %240, align 2, !tbaa !42
  %241 = getelementptr inbounds ptr, ptr %222, i64 4
  %242 = load ptr, ptr %236, align 8, !tbaa !19
  %243 = getelementptr inbounds i16, ptr %242, i64 %227
  %244 = load i16, ptr %243, align 2, !tbaa !42
  %245 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %244, ptr %245, align 8, !tbaa !42
  %246 = getelementptr inbounds ptr, ptr %222, i64 5
  %247 = load ptr, ptr %241, align 8, !tbaa !19
  %248 = getelementptr inbounds i16, ptr %247, i64 %227
  %249 = load i16, ptr %248, align 2, !tbaa !42
  %250 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %249, ptr %250, align 2, !tbaa !42
  %251 = getelementptr inbounds ptr, ptr %222, i64 6
  %252 = load ptr, ptr %246, align 8, !tbaa !19
  %253 = getelementptr inbounds i16, ptr %252, i64 %227
  %254 = load i16, ptr %253, align 2, !tbaa !42
  %255 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %254, ptr %255, align 4, !tbaa !42
  %256 = getelementptr inbounds ptr, ptr %222, i64 7
  %257 = load ptr, ptr %251, align 8, !tbaa !19
  %258 = getelementptr inbounds i16, ptr %257, i64 %227
  %259 = load i16, ptr %258, align 2, !tbaa !42
  %260 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %259, ptr %260, align 2, !tbaa !42
  %261 = load ptr, ptr %256, align 8, !tbaa !19
  %262 = getelementptr inbounds i16, ptr %261, i64 %227
  %263 = load i16, ptr %262, align 2, !tbaa !42
  br label %274

264:                                              ; preds = %217
  %265 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %266 = load i32, ptr %265, align 4, !tbaa !43
  %267 = trunc i32 %266 to i16
  %268 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %267, ptr %268, align 2, !tbaa !42
  %269 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %267, ptr %269, align 4, !tbaa !42
  %270 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %267, ptr %270, align 2, !tbaa !42
  %271 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %272 = insertelement <4 x i16> poison, i16 %267, i64 0
  %273 = shufflevector <4 x i16> %272, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %273, ptr %271, align 2, !tbaa !42
  br label %274

274:                                              ; preds = %264, %218
  %275 = phi i16 [ %263, %218 ], [ %267, %264 ]
  %276 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %275, ptr %276, align 16
  br i1 %178, label %277, label %288

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %279 = load i16, ptr %278, align 2, !tbaa !40
  %280 = sext i16 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %26, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !19
  %283 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %284 = load i16, ptr %283, align 4, !tbaa !41
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds i16, ptr %282, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !42
  br label %292

288:                                              ; preds = %274
  %289 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %290 = load i32, ptr %289, align 4, !tbaa !43
  %291 = trunc i32 %290 to i16
  br label %292

292:                                              ; preds = %288, %277
  %293 = phi i16 [ %291, %288 ], [ %287, %277 ]
  store i16 %293, ptr %5, align 16, !tbaa !42
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %174, i32 noundef %176, i32 noundef %175) #7
  %294 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %295 = load i16, ptr %294, align 4, !tbaa !42
  %296 = zext i16 %295 to i32
  %297 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  %298 = load i16, ptr %297, align 8, !tbaa !42
  %299 = zext i16 %298 to i32
  %300 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  %301 = load i16, ptr %300, align 2, !tbaa !42
  %302 = zext i16 %301 to i32
  %303 = shl nuw nsw i32 %302, 1
  %304 = add nuw nsw i32 %299, 2
  %305 = add nuw nsw i32 %304, %296
  %306 = add nuw nsw i32 %305, %303
  %307 = lshr i32 %306, 2
  %308 = trunc i32 %307 to i16
  %309 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %310 = load i16, ptr %309, align 4, !tbaa !42
  %311 = zext i16 %310 to i32
  %312 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  %313 = load i16, ptr %312, align 2, !tbaa !42
  %314 = zext i16 %313 to i32
  %315 = shl nuw nsw i32 %314, 1
  %316 = add nuw nsw i32 %304, %311
  %317 = add nuw nsw i32 %316, %315
  %318 = lshr i32 %317, 2
  %319 = trunc i32 %318 to i16
  %320 = load i16, ptr %5, align 16, !tbaa !42
  %321 = zext i16 %320 to i32
  %322 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %323 = load i16, ptr %322, align 2, !tbaa !42
  %324 = zext i16 %323 to i32
  %325 = shl nuw nsw i32 %324, 1
  %326 = add nuw nsw i32 %311, 2
  %327 = add nuw nsw i32 %326, %321
  %328 = add nuw nsw i32 %327, %325
  %329 = lshr i32 %328, 2
  %330 = trunc i32 %329 to i16
  %331 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %332 = load i16, ptr %331, align 2, !tbaa !42
  %333 = zext i16 %332 to i32
  %334 = add nuw nsw i32 %333, 1
  %335 = add nuw nsw i32 %334, %321
  %336 = lshr i32 %335, 1
  %337 = trunc i32 %336 to i16
  %338 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %339 = load i16, ptr %338, align 4, !tbaa !42
  %340 = zext i16 %339 to i32
  %341 = add nuw nsw i32 %334, %340
  %342 = lshr i32 %341, 1
  %343 = trunc i32 %342 to i16
  %344 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %345 = load i16, ptr %344, align 2, !tbaa !42
  %346 = zext i16 %345 to i32
  %347 = add nuw nsw i32 %340, 1
  %348 = add nuw nsw i32 %347, %346
  %349 = lshr i32 %348, 1
  %350 = trunc i32 %349 to i16
  %351 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  %352 = load i16, ptr %351, align 8, !tbaa !42
  %353 = zext i16 %352 to i32
  %354 = add nuw nsw i32 %346, 1
  %355 = add nuw nsw i32 %354, %353
  %356 = lshr i32 %355, 1
  %357 = trunc i32 %356 to i16
  %358 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  %359 = load i16, ptr %358, align 2, !tbaa !42
  %360 = zext i16 %359 to i32
  %361 = add nuw nsw i32 %353, 1
  %362 = add nuw nsw i32 %361, %360
  %363 = lshr i32 %362, 1
  %364 = trunc i32 %363 to i16
  %365 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  %366 = load i16, ptr %365, align 4, !tbaa !42
  %367 = zext i16 %366 to i32
  %368 = add nuw nsw i32 %360, 1
  %369 = add nuw nsw i32 %368, %367
  %370 = lshr i32 %369, 1
  %371 = trunc i32 %370 to i16
  %372 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %373 = load i16, ptr %372, align 2, !tbaa !42
  %374 = zext i16 %373 to i32
  %375 = add nuw nsw i32 %367, 1
  %376 = add nuw nsw i32 %375, %374
  %377 = lshr i32 %376, 1
  %378 = trunc i32 %377 to i16
  %379 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  %380 = load i16, ptr %379, align 16, !tbaa !42
  %381 = zext i16 %380 to i32
  %382 = add nuw nsw i32 %374, 1
  %383 = add nuw nsw i32 %382, %381
  %384 = lshr i32 %383, 1
  %385 = trunc i32 %384 to i16
  %386 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %387 = load i16, ptr %386, align 2, !tbaa !42
  %388 = zext i16 %387 to i32
  %389 = shl nuw nsw i32 %296, 1
  %390 = add nuw nsw i32 %302, 2
  %391 = add nuw nsw i32 %390, %389
  %392 = add nuw nsw i32 %391, %388
  %393 = lshr i32 %392, 2
  %394 = trunc i32 %393 to i16
  %395 = shl nuw nsw i32 %299, 1
  %396 = add nuw nsw i32 %390, %395
  %397 = add nuw nsw i32 %396, %314
  %398 = lshr i32 %397, 2
  %399 = trunc i32 %398 to i16
  %400 = shl nuw nsw i32 %311, 1
  %401 = add nuw nsw i32 %314, 2
  %402 = add nuw nsw i32 %401, %400
  %403 = add nuw nsw i32 %402, %324
  %404 = lshr i32 %403, 2
  %405 = trunc i32 %404 to i16
  %406 = shl nuw nsw i32 %321, 1
  %407 = add nuw nsw i32 %324, 2
  %408 = add nuw nsw i32 %407, %406
  %409 = add nuw nsw i32 %408, %333
  %410 = lshr i32 %409, 2
  %411 = trunc i32 %410 to i16
  %412 = shl nuw nsw i32 %333, 1
  %413 = add nuw nsw i32 %321, 2
  %414 = add nuw nsw i32 %413, %340
  %415 = add nuw nsw i32 %414, %412
  %416 = lshr i32 %415, 2
  %417 = trunc i32 %416 to i16
  %418 = shl nuw nsw i32 %340, 1
  %419 = add nuw nsw i32 %333, 2
  %420 = add nuw nsw i32 %419, %346
  %421 = add nuw nsw i32 %420, %418
  %422 = lshr i32 %421, 2
  %423 = trunc i32 %422 to i16
  %424 = shl nuw nsw i32 %346, 1
  %425 = add nuw nsw i32 %340, 2
  %426 = add nuw nsw i32 %425, %353
  %427 = add nuw nsw i32 %426, %424
  %428 = lshr i32 %427, 2
  %429 = trunc i32 %428 to i16
  %430 = shl nuw nsw i32 %353, 1
  %431 = add nuw nsw i32 %346, 2
  %432 = add nuw nsw i32 %431, %360
  %433 = add nuw nsw i32 %432, %430
  %434 = lshr i32 %433, 2
  %435 = trunc i32 %434 to i16
  %436 = shl nuw nsw i32 %360, 1
  %437 = add nuw nsw i32 %353, 2
  %438 = add nuw nsw i32 %437, %367
  %439 = add nuw nsw i32 %438, %436
  %440 = lshr i32 %439, 2
  %441 = trunc i32 %440 to i16
  %442 = shl nuw nsw i32 %367, 1
  %443 = add nuw nsw i32 %360, 2
  %444 = add nuw nsw i32 %443, %374
  %445 = add nuw nsw i32 %444, %442
  %446 = lshr i32 %445, 2
  %447 = trunc i32 %446 to i16
  %448 = shl nuw nsw i32 %374, 1
  %449 = add nuw nsw i32 %367, 2
  %450 = add nuw nsw i32 %449, %381
  %451 = add nuw nsw i32 %450, %448
  %452 = lshr i32 %451, 2
  %453 = trunc i32 %452 to i16
  %454 = sext i32 %3 to i64
  %455 = getelementptr inbounds ptr, ptr %31, i64 %454
  %456 = load ptr, ptr %455, align 8, !tbaa !19
  %457 = sext i32 %2 to i64
  %458 = getelementptr inbounds i16, ptr %456, i64 %457
  store i16 %337, ptr %458, align 2
  %459 = getelementptr inbounds i8, ptr %458, i64 2
  store i16 %343, ptr %459, align 2
  %460 = getelementptr inbounds i8, ptr %458, i64 4
  store i16 %350, ptr %460, align 2
  %461 = getelementptr inbounds i8, ptr %458, i64 6
  store i16 %357, ptr %461, align 2
  %462 = getelementptr inbounds i8, ptr %458, i64 8
  store i16 %364, ptr %462, align 2
  %463 = getelementptr inbounds i8, ptr %458, i64 10
  store i16 %371, ptr %463, align 2
  %464 = getelementptr inbounds i8, ptr %458, i64 12
  store i16 %378, ptr %464, align 2
  %465 = getelementptr inbounds i8, ptr %458, i64 14
  store i16 %385, ptr %465, align 2
  %466 = getelementptr ptr, ptr %455, i64 1
  %467 = load ptr, ptr %466, align 8, !tbaa !19
  %468 = getelementptr inbounds i16, ptr %467, i64 %457
  store i16 %411, ptr %468, align 2
  %469 = getelementptr inbounds i8, ptr %468, i64 2
  store i16 %417, ptr %469, align 2
  %470 = getelementptr inbounds i8, ptr %468, i64 4
  store i16 %423, ptr %470, align 2
  %471 = getelementptr inbounds i8, ptr %468, i64 6
  store i16 %429, ptr %471, align 2
  %472 = getelementptr inbounds i8, ptr %468, i64 8
  store i16 %435, ptr %472, align 2
  %473 = getelementptr inbounds i8, ptr %468, i64 10
  store i16 %441, ptr %473, align 2
  %474 = getelementptr inbounds i8, ptr %468, i64 12
  store i16 %447, ptr %474, align 2
  %475 = getelementptr inbounds i8, ptr %468, i64 14
  store i16 %453, ptr %475, align 2
  %476 = getelementptr ptr, ptr %455, i64 2
  %477 = load ptr, ptr %476, align 8, !tbaa !19
  %478 = getelementptr inbounds i16, ptr %477, i64 %457
  store i16 %330, ptr %478, align 2
  %479 = getelementptr inbounds i8, ptr %478, i64 2
  store i16 %337, ptr %479, align 2
  %480 = getelementptr inbounds i8, ptr %478, i64 4
  store i16 %343, ptr %480, align 2
  %481 = getelementptr inbounds i8, ptr %478, i64 6
  store i16 %350, ptr %481, align 2
  %482 = getelementptr inbounds i8, ptr %478, i64 8
  store i16 %357, ptr %482, align 2
  %483 = getelementptr inbounds i8, ptr %478, i64 10
  store i16 %364, ptr %483, align 2
  %484 = getelementptr inbounds i8, ptr %478, i64 12
  store i16 %371, ptr %484, align 2
  %485 = getelementptr inbounds i8, ptr %478, i64 14
  store i16 %378, ptr %485, align 2
  %486 = getelementptr ptr, ptr %455, i64 3
  %487 = load ptr, ptr %486, align 8, !tbaa !19
  %488 = getelementptr inbounds i16, ptr %487, i64 %457
  store i16 %405, ptr %488, align 2
  %489 = getelementptr inbounds i8, ptr %488, i64 2
  store i16 %411, ptr %489, align 2
  %490 = getelementptr inbounds i8, ptr %488, i64 4
  store i16 %417, ptr %490, align 2
  %491 = getelementptr inbounds i8, ptr %488, i64 6
  store i16 %423, ptr %491, align 2
  %492 = getelementptr inbounds i8, ptr %488, i64 8
  store i16 %429, ptr %492, align 2
  %493 = getelementptr inbounds i8, ptr %488, i64 10
  store i16 %435, ptr %493, align 2
  %494 = getelementptr inbounds i8, ptr %488, i64 12
  store i16 %441, ptr %494, align 2
  %495 = getelementptr inbounds i8, ptr %488, i64 14
  store i16 %447, ptr %495, align 2
  %496 = getelementptr ptr, ptr %455, i64 4
  %497 = load ptr, ptr %496, align 8, !tbaa !19
  %498 = getelementptr inbounds i16, ptr %497, i64 %457
  store i16 %319, ptr %498, align 2
  %499 = getelementptr inbounds i8, ptr %498, i64 2
  store i16 %330, ptr %499, align 2
  %500 = getelementptr inbounds i8, ptr %498, i64 4
  store i16 %337, ptr %500, align 2
  %501 = getelementptr inbounds i8, ptr %498, i64 6
  store i16 %343, ptr %501, align 2
  %502 = getelementptr inbounds i8, ptr %498, i64 8
  store i16 %350, ptr %502, align 2
  %503 = getelementptr inbounds i8, ptr %498, i64 10
  store i16 %357, ptr %503, align 2
  %504 = getelementptr inbounds i8, ptr %498, i64 12
  store i16 %364, ptr %504, align 2
  %505 = getelementptr inbounds i8, ptr %498, i64 14
  store i16 %371, ptr %505, align 2
  %506 = getelementptr ptr, ptr %455, i64 5
  %507 = load ptr, ptr %506, align 8, !tbaa !19
  %508 = getelementptr inbounds i16, ptr %507, i64 %457
  store i16 %399, ptr %508, align 2
  %509 = getelementptr inbounds i8, ptr %508, i64 2
  store i16 %405, ptr %509, align 2
  %510 = getelementptr inbounds i8, ptr %508, i64 4
  store i16 %411, ptr %510, align 2
  %511 = getelementptr inbounds i8, ptr %508, i64 6
  store i16 %417, ptr %511, align 2
  %512 = getelementptr inbounds i8, ptr %508, i64 8
  store i16 %423, ptr %512, align 2
  %513 = getelementptr inbounds i8, ptr %508, i64 10
  store i16 %429, ptr %513, align 2
  %514 = getelementptr inbounds i8, ptr %508, i64 12
  store i16 %435, ptr %514, align 2
  %515 = getelementptr inbounds i8, ptr %508, i64 14
  store i16 %441, ptr %515, align 2
  %516 = getelementptr ptr, ptr %455, i64 6
  %517 = load ptr, ptr %516, align 8, !tbaa !19
  %518 = getelementptr inbounds i16, ptr %517, i64 %457
  store i16 %308, ptr %518, align 2
  %519 = getelementptr inbounds i8, ptr %518, i64 2
  store i16 %319, ptr %519, align 2
  %520 = getelementptr inbounds i8, ptr %518, i64 4
  store i16 %330, ptr %520, align 2
  %521 = getelementptr inbounds i8, ptr %518, i64 6
  store i16 %337, ptr %521, align 2
  %522 = getelementptr inbounds i8, ptr %518, i64 8
  store i16 %343, ptr %522, align 2
  %523 = getelementptr inbounds i8, ptr %518, i64 10
  store i16 %350, ptr %523, align 2
  %524 = getelementptr inbounds i8, ptr %518, i64 12
  store i16 %357, ptr %524, align 2
  %525 = getelementptr inbounds i8, ptr %518, i64 14
  store i16 %364, ptr %525, align 2
  %526 = getelementptr ptr, ptr %455, i64 7
  %527 = load ptr, ptr %526, align 8, !tbaa !19
  %528 = getelementptr inbounds i16, ptr %527, i64 %457
  store i16 %394, ptr %528, align 2
  %529 = getelementptr inbounds i8, ptr %528, i64 2
  store i16 %399, ptr %529, align 2
  %530 = getelementptr inbounds i8, ptr %528, i64 4
  store i16 %405, ptr %530, align 2
  %531 = getelementptr inbounds i8, ptr %528, i64 6
  store i16 %411, ptr %531, align 2
  %532 = getelementptr inbounds i8, ptr %528, i64 8
  store i16 %417, ptr %532, align 2
  %533 = getelementptr inbounds i8, ptr %528, i64 10
  store i16 %423, ptr %533, align 2
  %534 = getelementptr inbounds i8, ptr %528, i64 12
  store i16 %429, ptr %534, align 2
  %535 = getelementptr inbounds i8, ptr %528, i64 14
  store i16 %435, ptr %535, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_vert_left_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %6) #9
  %34 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %35 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %36 = load i32, ptr %8, align 4, !tbaa !28
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne i32 %2, 8
  %39 = icmp ne i32 %3, 8
  %40 = or i1 %38, %39
  %41 = and i1 %40, %37
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %8, align 4, !tbaa !28
  %43 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %44, i64 0, i32 30
  %46 = load i32, ptr %45, align 4, !tbaa !36
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %47, label %97, label %49

49:                                               ; preds = %24
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %49, %51
  %61 = phi i32 [ %59, %51 ], [ 0, %49 ]
  %62 = load i32, ptr %7, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !39
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %60, %64
  %74 = phi i32 [ %72, %64 ], [ 0, %60 ]
  br i1 %41, label %75, label %84

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %77 = load ptr, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !39
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !20
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %73, %75
  %85 = phi i32 [ %83, %75 ], [ 0, %73 ]
  %86 = load i32, ptr %9, align 4, !tbaa !28
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %90 = load ptr, ptr %89, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !39
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %90, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !20
  %96 = sext i8 %95 to i32
  br label %100

97:                                               ; preds = %24
  %98 = load i32, ptr %7, align 4, !tbaa !28
  %99 = load i32, ptr %9, align 4, !tbaa !28
  br label %100

100:                                              ; preds = %88, %84, %97
  %101 = phi i32 [ %99, %97 ], [ %96, %88 ], [ 0, %84 ]
  %102 = phi i32 [ %42, %97 ], [ %85, %88 ], [ %85, %84 ]
  %103 = phi i32 [ %48, %97 ], [ %61, %88 ], [ %61, %84 ]
  %104 = phi i32 [ %98, %97 ], [ %74, %88 ], [ %74, %84 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %108 = load i32, ptr %107, align 4, !tbaa !47
  %109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %108) #7
  %110 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %111 = load i32, ptr %110, align 4, !tbaa !43
  %112 = trunc i32 %111 to i16
  %113 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %114 = insertelement <8 x i16> poison, i16 %112, i64 0
  %115 = shufflevector <8 x i16> %114, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %115, ptr %113, align 2, !tbaa !42
  br label %149

116:                                              ; preds = %100
  %117 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %118 = load i16, ptr %117, align 2, !tbaa !40
  %119 = sext i16 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %26, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !19
  %122 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %123 = load i16, ptr %122, align 4, !tbaa !41
  %124 = sext i16 %123 to i64
  %125 = getelementptr inbounds i16, ptr %121, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !42
  %127 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %126, ptr %127, align 2, !tbaa !42
  %128 = getelementptr inbounds i16, ptr %125, i64 1
  %129 = load i16, ptr %128, align 2, !tbaa !42
  %130 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %129, ptr %130, align 4, !tbaa !42
  %131 = getelementptr inbounds i16, ptr %125, i64 2
  %132 = load i16, ptr %131, align 2, !tbaa !42
  %133 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %132, ptr %133, align 2, !tbaa !42
  %134 = getelementptr inbounds i16, ptr %125, i64 3
  %135 = load i16, ptr %134, align 2, !tbaa !42
  %136 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %135, ptr %136, align 8, !tbaa !42
  %137 = getelementptr inbounds i16, ptr %125, i64 4
  %138 = load i16, ptr %137, align 2, !tbaa !42
  %139 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %138, ptr %139, align 2, !tbaa !42
  %140 = getelementptr inbounds i16, ptr %125, i64 5
  %141 = load i16, ptr %140, align 2, !tbaa !42
  %142 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %141, ptr %142, align 4, !tbaa !42
  %143 = getelementptr inbounds i16, ptr %125, i64 6
  %144 = load i16, ptr %143, align 2, !tbaa !42
  %145 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %144, ptr %145, align 2, !tbaa !42
  %146 = getelementptr inbounds i16, ptr %125, i64 7
  %147 = load i16, ptr %146, align 2, !tbaa !42
  %148 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %147, ptr %148, align 16, !tbaa !42
  br label %149

149:                                              ; preds = %106, %116
  %150 = phi i16 [ %112, %106 ], [ %147, %116 ]
  %151 = icmp eq i32 %102, 0
  br i1 %151, label %185, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %154 = load i16, ptr %153, align 2, !tbaa !40
  %155 = sext i16 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %26, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !19
  %158 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %159 = load i16, ptr %158, align 4, !tbaa !41
  %160 = sext i16 %159 to i64
  %161 = getelementptr inbounds i16, ptr %157, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !42
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %162, ptr %163, align 2, !tbaa !42
  %164 = getelementptr inbounds i16, ptr %161, i64 1
  %165 = load i16, ptr %164, align 2, !tbaa !42
  %166 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %165, ptr %166, align 4, !tbaa !42
  %167 = getelementptr inbounds i16, ptr %161, i64 2
  %168 = load i16, ptr %167, align 2, !tbaa !42
  %169 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %168, ptr %169, align 2, !tbaa !42
  %170 = getelementptr inbounds i16, ptr %161, i64 3
  %171 = load i16, ptr %170, align 2, !tbaa !42
  %172 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %171, ptr %172, align 8, !tbaa !42
  %173 = getelementptr inbounds i16, ptr %161, i64 4
  %174 = load i16, ptr %173, align 2, !tbaa !42
  %175 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %174, ptr %175, align 2, !tbaa !42
  %176 = getelementptr inbounds i16, ptr %161, i64 5
  %177 = load i16, ptr %176, align 2, !tbaa !42
  %178 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %177, ptr %178, align 4, !tbaa !42
  %179 = getelementptr inbounds i16, ptr %161, i64 6
  %180 = load i16, ptr %179, align 2, !tbaa !42
  %181 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %180, ptr %181, align 2, !tbaa !42
  %182 = getelementptr inbounds i16, ptr %161, i64 7
  %183 = load i16, ptr %182, align 2, !tbaa !42
  %184 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %183, ptr %184, align 16, !tbaa !42
  br label %189

185:                                              ; preds = %149
  %186 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %187 = insertelement <8 x i16> poison, i16 %150, i64 0
  %188 = shufflevector <8 x i16> %187, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %188, ptr %186, align 2, !tbaa !42
  br label %189

189:                                              ; preds = %185, %152
  %190 = icmp eq i32 %103, 0
  br i1 %190, label %238, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %193 = load i16, ptr %192, align 2, !tbaa !40
  %194 = sext i16 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %26, i64 %194
  %196 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %197 = load i16, ptr %196, align 4, !tbaa !41
  %198 = getelementptr inbounds ptr, ptr %195, i64 1
  %199 = load ptr, ptr %195, align 8, !tbaa !19
  %200 = sext i16 %197 to i64
  %201 = getelementptr inbounds i16, ptr %199, i64 %200
  %202 = load i16, ptr %201, align 2, !tbaa !42
  %203 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %202, ptr %203, align 2, !tbaa !42
  %204 = getelementptr inbounds ptr, ptr %195, i64 2
  %205 = load ptr, ptr %198, align 8, !tbaa !19
  %206 = getelementptr inbounds i16, ptr %205, i64 %200
  %207 = load i16, ptr %206, align 2, !tbaa !42
  %208 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %207, ptr %208, align 4, !tbaa !42
  %209 = getelementptr inbounds ptr, ptr %195, i64 3
  %210 = load ptr, ptr %204, align 8, !tbaa !19
  %211 = getelementptr inbounds i16, ptr %210, i64 %200
  %212 = load i16, ptr %211, align 2, !tbaa !42
  %213 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %212, ptr %213, align 2, !tbaa !42
  %214 = getelementptr inbounds ptr, ptr %195, i64 4
  %215 = load ptr, ptr %209, align 8, !tbaa !19
  %216 = getelementptr inbounds i16, ptr %215, i64 %200
  %217 = load i16, ptr %216, align 2, !tbaa !42
  %218 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %217, ptr %218, align 8, !tbaa !42
  %219 = getelementptr inbounds ptr, ptr %195, i64 5
  %220 = load ptr, ptr %214, align 8, !tbaa !19
  %221 = getelementptr inbounds i16, ptr %220, i64 %200
  %222 = load i16, ptr %221, align 2, !tbaa !42
  %223 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %222, ptr %223, align 2, !tbaa !42
  %224 = getelementptr inbounds ptr, ptr %195, i64 6
  %225 = load ptr, ptr %219, align 8, !tbaa !19
  %226 = getelementptr inbounds i16, ptr %225, i64 %200
  %227 = load i16, ptr %226, align 2, !tbaa !42
  %228 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %227, ptr %228, align 4, !tbaa !42
  %229 = getelementptr inbounds ptr, ptr %195, i64 7
  %230 = load ptr, ptr %224, align 8, !tbaa !19
  %231 = getelementptr inbounds i16, ptr %230, i64 %200
  %232 = load i16, ptr %231, align 2, !tbaa !42
  %233 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %232, ptr %233, align 2, !tbaa !42
  %234 = load ptr, ptr %229, align 8, !tbaa !19
  %235 = getelementptr inbounds i16, ptr %234, i64 %200
  %236 = load i16, ptr %235, align 2, !tbaa !42
  %237 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %236, ptr %237, align 16, !tbaa !42
  br label %245

238:                                              ; preds = %189
  %239 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %240 = load i32, ptr %239, align 4, !tbaa !43
  %241 = trunc i32 %240 to i16
  %242 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %243 = insertelement <8 x i16> poison, i16 %241, i64 0
  %244 = shufflevector <8 x i16> %243, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %244, ptr %242, align 2, !tbaa !42
  br label %245

245:                                              ; preds = %238, %191
  %246 = icmp eq i32 %101, 0
  br i1 %246, label %258, label %247

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %249 = load i16, ptr %248, align 2, !tbaa !40
  %250 = sext i16 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %26, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !19
  %253 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %254 = load i16, ptr %253, align 4, !tbaa !41
  %255 = sext i16 %254 to i64
  %256 = getelementptr inbounds i16, ptr %252, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !42
  br label %262

258:                                              ; preds = %245
  %259 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %260 = load i32, ptr %259, align 4, !tbaa !43
  %261 = trunc i32 %260 to i16
  br label %262

262:                                              ; preds = %258, %247
  %263 = phi i16 [ %261, %258 ], [ %257, %247 ]
  store i16 %263, ptr %5, align 16, !tbaa !42
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %101, i32 noundef %104, i32 noundef %103) #7
  %264 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %265 = load i16, ptr %264, align 2, !tbaa !42
  %266 = zext i16 %265 to i32
  %267 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %268 = load i16, ptr %267, align 4, !tbaa !42
  %269 = zext i16 %268 to i32
  %270 = add nuw nsw i32 %269, 1
  %271 = add nuw nsw i32 %270, %266
  %272 = lshr i32 %271, 1
  %273 = trunc i32 %272 to i16
  %274 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %275 = load i16, ptr %274, align 2, !tbaa !42
  %276 = zext i16 %275 to i32
  %277 = add nuw nsw i32 %270, %276
  %278 = lshr i32 %277, 1
  %279 = trunc i32 %278 to i16
  %280 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  %281 = add nuw nsw i32 %276, 1
  %282 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  %283 = load i16, ptr %282, align 8, !tbaa !42
  %284 = zext i16 %283 to i32
  %285 = shl nuw nsw i32 %269, 1
  %286 = add nuw nsw i32 %276, 2
  %287 = add nuw nsw i32 %286, %266
  %288 = add nuw nsw i32 %287, %285
  %289 = lshr i32 %288, 2
  %290 = trunc i32 %289 to i16
  %291 = shl nuw nsw i32 %276, 1
  %292 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  %293 = load i16, ptr %292, align 2, !tbaa !42
  %294 = zext i16 %293 to i32
  %295 = sext i32 %3 to i64
  %296 = getelementptr inbounds ptr, ptr %31, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !19
  %298 = sext i32 %2 to i64
  %299 = getelementptr inbounds i16, ptr %297, i64 %298
  %300 = getelementptr inbounds i8, ptr %299, i64 2
  %301 = getelementptr inbounds i8, ptr %299, i64 4
  %302 = getelementptr inbounds i8, ptr %299, i64 6
  %303 = getelementptr inbounds i8, ptr %299, i64 8
  %304 = getelementptr inbounds i8, ptr %299, i64 10
  %305 = getelementptr inbounds i8, ptr %299, i64 12
  %306 = getelementptr inbounds i8, ptr %299, i64 14
  %307 = getelementptr ptr, ptr %296, i64 1
  %308 = getelementptr ptr, ptr %296, i64 2
  %309 = getelementptr ptr, ptr %296, i64 3
  %310 = getelementptr ptr, ptr %296, i64 4
  %311 = getelementptr ptr, ptr %296, i64 5
  %312 = getelementptr ptr, ptr %296, i64 6
  %313 = getelementptr ptr, ptr %296, i64 7
  %314 = load <8 x i16>, ptr %280, align 8, !tbaa !42
  %315 = zext <8 x i16> %314 to <8 x i32>
  %316 = extractelement <8 x i32> %315, i64 0
  %317 = add nuw nsw i32 %281, %316
  %318 = lshr i32 %317, 1
  %319 = trunc i32 %318 to i16
  %320 = add nuw nsw i32 %316, 1
  %321 = extractelement <8 x i32> %315, i64 1
  %322 = add nuw nsw i32 %320, %321
  %323 = lshr i32 %322, 1
  %324 = trunc i32 %323 to i16
  %325 = add nuw nsw i32 %321, 1
  %326 = extractelement <8 x i32> %315, i64 2
  %327 = add nuw nsw i32 %325, %326
  %328 = lshr i32 %327, 1
  %329 = trunc i32 %328 to i16
  %330 = add nuw nsw i32 %326, 1
  %331 = extractelement <8 x i32> %315, i64 3
  %332 = add nuw nsw i32 %330, %331
  %333 = lshr i32 %332, 1
  %334 = trunc i32 %333 to i16
  %335 = add nuw nsw i32 %331, 1
  %336 = extractelement <8 x i32> %315, i64 4
  %337 = add nuw nsw i32 %335, %336
  %338 = lshr i32 %337, 1
  %339 = trunc i32 %338 to i16
  %340 = add nuw nsw i32 %336, 1
  %341 = extractelement <8 x i32> %315, i64 5
  %342 = add nuw nsw i32 %340, %341
  %343 = lshr i32 %342, 1
  %344 = trunc i32 %343 to i16
  %345 = add nuw nsw i32 %341, 1
  %346 = extractelement <8 x i32> %315, i64 6
  %347 = add nuw nsw i32 %345, %346
  %348 = lshr i32 %347, 1
  %349 = trunc i32 %348 to i16
  %350 = add nuw nsw i32 %346, 1
  %351 = extractelement <8 x i32> %315, i64 7
  %352 = add nuw nsw i32 %350, %351
  %353 = lshr i32 %352, 1
  %354 = trunc i32 %353 to i16
  %355 = add nuw nsw i32 %351, 1
  %356 = add nuw nsw i32 %355, %284
  %357 = lshr i32 %356, 1
  %358 = trunc i32 %357 to i16
  %359 = add nuw nsw <8 x i32> %315, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %360 = extractelement <8 x i32> %359, i64 0
  %361 = add nuw nsw i32 %360, %269
  %362 = add nuw nsw i32 %361, %291
  %363 = lshr i32 %362, 2
  %364 = trunc i32 %363 to i16
  %365 = shl nuw nsw i32 %316, 1
  %366 = add nuw nsw i32 %286, %321
  %367 = add nuw nsw i32 %366, %365
  %368 = lshr i32 %367, 2
  %369 = trunc i32 %368 to i16
  %370 = shufflevector <8 x i32> %315, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %371 = insertelement <8 x i32> %370, i32 %284, i64 7
  %372 = shl nuw nsw <8 x i32> %371, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %373 = shufflevector <8 x i32> %315, <8 x i32> %371, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 13, i32 14, i32 15, i32 poison>
  %374 = insertelement <8 x i32> %373, i32 %294, i64 7
  %375 = add nuw nsw <8 x i32> %359, %374
  %376 = add nuw nsw <8 x i32> %375, %372
  %377 = lshr <8 x i32> %376, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %378 = trunc <8 x i32> %377 to <8 x i16>
  store i16 %273, ptr %299, align 2
  store i16 %279, ptr %300, align 2
  store i16 %319, ptr %301, align 2
  store i16 %324, ptr %302, align 2
  store i16 %329, ptr %303, align 2
  store i16 %334, ptr %304, align 2
  store i16 %339, ptr %305, align 2
  store i16 %344, ptr %306, align 2
  %379 = load ptr, ptr %307, align 8, !tbaa !19
  %380 = getelementptr inbounds i16, ptr %379, i64 %298
  store i16 %290, ptr %380, align 2
  %381 = getelementptr inbounds i8, ptr %380, i64 2
  store i16 %364, ptr %381, align 2
  %382 = getelementptr inbounds i8, ptr %380, i64 4
  store i16 %369, ptr %382, align 2
  %383 = getelementptr inbounds i8, ptr %380, i64 6
  %384 = extractelement <8 x i16> %378, i64 0
  store i16 %384, ptr %383, align 2
  %385 = getelementptr inbounds i8, ptr %380, i64 8
  %386 = extractelement <8 x i16> %378, i64 1
  store i16 %386, ptr %385, align 2
  %387 = getelementptr inbounds i8, ptr %380, i64 10
  %388 = extractelement <8 x i16> %378, i64 2
  store i16 %388, ptr %387, align 2
  %389 = getelementptr inbounds i8, ptr %380, i64 12
  %390 = extractelement <8 x i16> %378, i64 3
  store i16 %390, ptr %389, align 2
  %391 = getelementptr inbounds i8, ptr %380, i64 14
  %392 = extractelement <8 x i16> %378, i64 4
  store i16 %392, ptr %391, align 2
  %393 = load ptr, ptr %308, align 8, !tbaa !19
  %394 = getelementptr inbounds i16, ptr %393, i64 %298
  store i16 %279, ptr %394, align 2
  %395 = getelementptr inbounds i8, ptr %394, i64 2
  store i16 %319, ptr %395, align 2
  %396 = getelementptr inbounds i8, ptr %394, i64 4
  store i16 %324, ptr %396, align 2
  %397 = getelementptr inbounds i8, ptr %394, i64 6
  store i16 %329, ptr %397, align 2
  %398 = getelementptr inbounds i8, ptr %394, i64 8
  store i16 %334, ptr %398, align 2
  %399 = getelementptr inbounds i8, ptr %394, i64 10
  store i16 %339, ptr %399, align 2
  %400 = getelementptr inbounds i8, ptr %394, i64 12
  store i16 %344, ptr %400, align 2
  %401 = getelementptr inbounds i8, ptr %394, i64 14
  store i16 %349, ptr %401, align 2
  %402 = load ptr, ptr %309, align 8, !tbaa !19
  %403 = getelementptr inbounds i16, ptr %402, i64 %298
  store i16 %364, ptr %403, align 2
  %404 = getelementptr inbounds i8, ptr %403, i64 2
  store i16 %369, ptr %404, align 2
  %405 = getelementptr inbounds i8, ptr %403, i64 4
  store i16 %384, ptr %405, align 2
  %406 = getelementptr inbounds i8, ptr %403, i64 6
  store i16 %386, ptr %406, align 2
  %407 = getelementptr inbounds i8, ptr %403, i64 8
  store i16 %388, ptr %407, align 2
  %408 = getelementptr inbounds i8, ptr %403, i64 10
  store i16 %390, ptr %408, align 2
  %409 = getelementptr inbounds i8, ptr %403, i64 12
  store i16 %392, ptr %409, align 2
  %410 = getelementptr inbounds i8, ptr %403, i64 14
  %411 = extractelement <8 x i16> %378, i64 5
  store i16 %411, ptr %410, align 2
  %412 = load ptr, ptr %310, align 8, !tbaa !19
  %413 = getelementptr inbounds i16, ptr %412, i64 %298
  store i16 %319, ptr %413, align 2
  %414 = getelementptr inbounds i8, ptr %413, i64 2
  store i16 %324, ptr %414, align 2
  %415 = getelementptr inbounds i8, ptr %413, i64 4
  store i16 %329, ptr %415, align 2
  %416 = getelementptr inbounds i8, ptr %413, i64 6
  store i16 %334, ptr %416, align 2
  %417 = getelementptr inbounds i8, ptr %413, i64 8
  store i16 %339, ptr %417, align 2
  %418 = getelementptr inbounds i8, ptr %413, i64 10
  store i16 %344, ptr %418, align 2
  %419 = getelementptr inbounds i8, ptr %413, i64 12
  store i16 %349, ptr %419, align 2
  %420 = getelementptr inbounds i8, ptr %413, i64 14
  store i16 %354, ptr %420, align 2
  %421 = load ptr, ptr %311, align 8, !tbaa !19
  %422 = getelementptr inbounds i16, ptr %421, i64 %298
  store i16 %369, ptr %422, align 2
  %423 = getelementptr inbounds i8, ptr %422, i64 2
  store i16 %384, ptr %423, align 2
  %424 = getelementptr inbounds i8, ptr %422, i64 4
  store i16 %386, ptr %424, align 2
  %425 = getelementptr inbounds i8, ptr %422, i64 6
  store i16 %388, ptr %425, align 2
  %426 = getelementptr inbounds i8, ptr %422, i64 8
  store i16 %390, ptr %426, align 2
  %427 = getelementptr inbounds i8, ptr %422, i64 10
  store i16 %392, ptr %427, align 2
  %428 = getelementptr inbounds i8, ptr %422, i64 12
  store i16 %411, ptr %428, align 2
  %429 = getelementptr inbounds i8, ptr %422, i64 14
  %430 = extractelement <8 x i16> %378, i64 6
  store i16 %430, ptr %429, align 2
  %431 = load ptr, ptr %312, align 8, !tbaa !19
  %432 = getelementptr inbounds i16, ptr %431, i64 %298
  store i16 %324, ptr %432, align 2
  %433 = getelementptr inbounds i8, ptr %432, i64 2
  store i16 %329, ptr %433, align 2
  %434 = getelementptr inbounds i8, ptr %432, i64 4
  store i16 %334, ptr %434, align 2
  %435 = getelementptr inbounds i8, ptr %432, i64 6
  store i16 %339, ptr %435, align 2
  %436 = getelementptr inbounds i8, ptr %432, i64 8
  store i16 %344, ptr %436, align 2
  %437 = getelementptr inbounds i8, ptr %432, i64 10
  store i16 %349, ptr %437, align 2
  %438 = getelementptr inbounds i8, ptr %432, i64 12
  store i16 %354, ptr %438, align 2
  %439 = getelementptr inbounds i8, ptr %432, i64 14
  store i16 %358, ptr %439, align 2
  %440 = load ptr, ptr %313, align 8, !tbaa !19
  %441 = getelementptr inbounds i16, ptr %440, i64 %298
  store <8 x i16> %378, ptr %441, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_hor_up_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %6) #9
  %34 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %35 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %36 = load i32, ptr %8, align 4, !tbaa !28
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne i32 %2, 8
  %39 = icmp ne i32 %3, 8
  %40 = or i1 %38, %39
  %41 = and i1 %40, %37
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %8, align 4, !tbaa !28
  %43 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %44, i64 0, i32 30
  %46 = load i32, ptr %45, align 4, !tbaa !36
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %47, label %97, label %49

49:                                               ; preds = %24
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %49, %51
  %61 = phi i32 [ %59, %51 ], [ 0, %49 ]
  %62 = load i32, ptr %7, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !39
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %60, %64
  %74 = phi i32 [ %72, %64 ], [ 0, %60 ]
  br i1 %41, label %75, label %84

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %77 = load ptr, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !39
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !20
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %73, %75
  %85 = phi i32 [ %83, %75 ], [ 0, %73 ]
  %86 = load i32, ptr %9, align 4, !tbaa !28
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %90 = load ptr, ptr %89, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !39
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %90, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !20
  %96 = sext i8 %95 to i32
  br label %100

97:                                               ; preds = %24
  %98 = load i32, ptr %7, align 4, !tbaa !28
  %99 = load i32, ptr %9, align 4, !tbaa !28
  br label %100

100:                                              ; preds = %88, %84, %97
  %101 = phi i32 [ %42, %97 ], [ %85, %84 ], [ %85, %88 ]
  %102 = phi i32 [ %99, %97 ], [ 0, %84 ], [ %96, %88 ]
  %103 = phi i32 [ %48, %97 ], [ %61, %84 ], [ %61, %88 ]
  %104 = phi i32 [ %98, %97 ], [ %74, %84 ], [ %74, %88 ]
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %108 = load i32, ptr %107, align 4, !tbaa !47
  %109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %108) #7
  br label %110

110:                                              ; preds = %106, %100
  %111 = icmp eq i32 %104, 0
  br i1 %111, label %145, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %114 = load i16, ptr %113, align 2, !tbaa !40
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %26, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !19
  %118 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %119 = load i16, ptr %118, align 4, !tbaa !41
  %120 = sext i16 %119 to i64
  %121 = getelementptr inbounds i16, ptr %117, i64 %120
  %122 = load i16, ptr %121, align 2, !tbaa !42
  %123 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %122, ptr %123, align 2, !tbaa !42
  %124 = getelementptr inbounds i16, ptr %121, i64 1
  %125 = load i16, ptr %124, align 2, !tbaa !42
  %126 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %125, ptr %126, align 4, !tbaa !42
  %127 = getelementptr inbounds i16, ptr %121, i64 2
  %128 = load i16, ptr %127, align 2, !tbaa !42
  %129 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %128, ptr %129, align 2, !tbaa !42
  %130 = getelementptr inbounds i16, ptr %121, i64 3
  %131 = load i16, ptr %130, align 2, !tbaa !42
  %132 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %131, ptr %132, align 8, !tbaa !42
  %133 = getelementptr inbounds i16, ptr %121, i64 4
  %134 = load i16, ptr %133, align 2, !tbaa !42
  %135 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %134, ptr %135, align 2, !tbaa !42
  %136 = getelementptr inbounds i16, ptr %121, i64 5
  %137 = load i16, ptr %136, align 2, !tbaa !42
  %138 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %137, ptr %138, align 4, !tbaa !42
  %139 = getelementptr inbounds i16, ptr %121, i64 6
  %140 = load i16, ptr %139, align 2, !tbaa !42
  %141 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %140, ptr %141, align 2, !tbaa !42
  %142 = getelementptr inbounds i16, ptr %121, i64 7
  %143 = load i16, ptr %142, align 2, !tbaa !42
  %144 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %143, ptr %144, align 16, !tbaa !42
  br label %152

145:                                              ; preds = %110
  %146 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %147 = load i32, ptr %146, align 4, !tbaa !43
  %148 = trunc i32 %147 to i16
  %149 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %150 = insertelement <8 x i16> poison, i16 %148, i64 0
  %151 = shufflevector <8 x i16> %150, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %151, ptr %149, align 2, !tbaa !42
  br label %152

152:                                              ; preds = %145, %112
  %153 = phi i16 [ %148, %145 ], [ %143, %112 ]
  %154 = icmp eq i32 %101, 0
  br i1 %154, label %188, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %157 = load i16, ptr %156, align 2, !tbaa !40
  %158 = sext i16 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %26, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !19
  %161 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %162 = load i16, ptr %161, align 4, !tbaa !41
  %163 = sext i16 %162 to i64
  %164 = getelementptr inbounds i16, ptr %160, i64 %163
  %165 = load i16, ptr %164, align 2, !tbaa !42
  %166 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %165, ptr %166, align 2, !tbaa !42
  %167 = getelementptr inbounds i16, ptr %164, i64 1
  %168 = load i16, ptr %167, align 2, !tbaa !42
  %169 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %168, ptr %169, align 4, !tbaa !42
  %170 = getelementptr inbounds i16, ptr %164, i64 2
  %171 = load i16, ptr %170, align 2, !tbaa !42
  %172 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %171, ptr %172, align 2, !tbaa !42
  %173 = getelementptr inbounds i16, ptr %164, i64 3
  %174 = load i16, ptr %173, align 2, !tbaa !42
  %175 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %174, ptr %175, align 8, !tbaa !42
  %176 = getelementptr inbounds i16, ptr %164, i64 4
  %177 = load i16, ptr %176, align 2, !tbaa !42
  %178 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %177, ptr %178, align 2, !tbaa !42
  %179 = getelementptr inbounds i16, ptr %164, i64 5
  %180 = load i16, ptr %179, align 2, !tbaa !42
  %181 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %180, ptr %181, align 4, !tbaa !42
  %182 = getelementptr inbounds i16, ptr %164, i64 6
  %183 = load i16, ptr %182, align 2, !tbaa !42
  %184 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %183, ptr %184, align 2, !tbaa !42
  %185 = getelementptr inbounds i16, ptr %164, i64 7
  %186 = load i16, ptr %185, align 2, !tbaa !42
  %187 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %186, ptr %187, align 16, !tbaa !42
  br label %192

188:                                              ; preds = %152
  %189 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %190 = insertelement <8 x i16> poison, i16 %153, i64 0
  %191 = shufflevector <8 x i16> %190, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %191, ptr %189, align 2, !tbaa !42
  br label %192

192:                                              ; preds = %188, %155
  br i1 %105, label %240, label %193

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %195 = load i16, ptr %194, align 2, !tbaa !40
  %196 = sext i16 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %26, i64 %196
  %198 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %199 = load i16, ptr %198, align 4, !tbaa !41
  %200 = getelementptr inbounds ptr, ptr %197, i64 1
  %201 = load ptr, ptr %197, align 8, !tbaa !19
  %202 = sext i16 %199 to i64
  %203 = getelementptr inbounds i16, ptr %201, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !42
  %205 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %204, ptr %205, align 2, !tbaa !42
  %206 = getelementptr inbounds ptr, ptr %197, i64 2
  %207 = load ptr, ptr %200, align 8, !tbaa !19
  %208 = getelementptr inbounds i16, ptr %207, i64 %202
  %209 = load i16, ptr %208, align 2, !tbaa !42
  %210 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %209, ptr %210, align 4, !tbaa !42
  %211 = getelementptr inbounds ptr, ptr %197, i64 3
  %212 = load ptr, ptr %206, align 8, !tbaa !19
  %213 = getelementptr inbounds i16, ptr %212, i64 %202
  %214 = load i16, ptr %213, align 2, !tbaa !42
  %215 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %214, ptr %215, align 2, !tbaa !42
  %216 = getelementptr inbounds ptr, ptr %197, i64 4
  %217 = load ptr, ptr %211, align 8, !tbaa !19
  %218 = getelementptr inbounds i16, ptr %217, i64 %202
  %219 = load i16, ptr %218, align 2, !tbaa !42
  %220 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %219, ptr %220, align 8, !tbaa !42
  %221 = getelementptr inbounds ptr, ptr %197, i64 5
  %222 = load ptr, ptr %216, align 8, !tbaa !19
  %223 = getelementptr inbounds i16, ptr %222, i64 %202
  %224 = load i16, ptr %223, align 2, !tbaa !42
  %225 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %224, ptr %225, align 2, !tbaa !42
  %226 = getelementptr inbounds ptr, ptr %197, i64 6
  %227 = load ptr, ptr %221, align 8, !tbaa !19
  %228 = getelementptr inbounds i16, ptr %227, i64 %202
  %229 = load i16, ptr %228, align 2, !tbaa !42
  %230 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %229, ptr %230, align 4, !tbaa !42
  %231 = getelementptr inbounds ptr, ptr %197, i64 7
  %232 = load ptr, ptr %226, align 8, !tbaa !19
  %233 = getelementptr inbounds i16, ptr %232, i64 %202
  %234 = load i16, ptr %233, align 2, !tbaa !42
  %235 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %234, ptr %235, align 2, !tbaa !42
  %236 = load ptr, ptr %231, align 8, !tbaa !19
  %237 = getelementptr inbounds i16, ptr %236, i64 %202
  %238 = load i16, ptr %237, align 2, !tbaa !42
  %239 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %238, ptr %239, align 16, !tbaa !42
  br label %247

240:                                              ; preds = %192
  %241 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %242 = load i32, ptr %241, align 4, !tbaa !43
  %243 = trunc i32 %242 to i16
  %244 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %245 = insertelement <8 x i16> poison, i16 %243, i64 0
  %246 = shufflevector <8 x i16> %245, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %246, ptr %244, align 2, !tbaa !42
  br label %247

247:                                              ; preds = %240, %193
  %248 = icmp eq i32 %102, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %251 = load i16, ptr %250, align 2, !tbaa !40
  %252 = sext i16 %251 to i64
  %253 = getelementptr inbounds ptr, ptr %26, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !19
  %255 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %256 = load i16, ptr %255, align 4, !tbaa !41
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds i16, ptr %254, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !42
  br label %264

260:                                              ; preds = %247
  %261 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %262 = load i32, ptr %261, align 4, !tbaa !43
  %263 = trunc i32 %262 to i16
  br label %264

264:                                              ; preds = %260, %249
  %265 = phi i16 [ %263, %260 ], [ %259, %249 ]
  store i16 %265, ptr %5, align 16, !tbaa !42
  %266 = add nsw i32 %2, 7
  %267 = add nsw i32 %2, 6
  %268 = add nsw i32 %2, 5
  %269 = add nsw i32 %2, 4
  %270 = add nsw i32 %2, 3
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %102, i32 noundef %104, i32 noundef %103) #7
  %271 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %272 = load i16, ptr %271, align 2, !tbaa !42
  %273 = zext i16 %272 to i32
  %274 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %275 = load i16, ptr %274, align 4, !tbaa !42
  %276 = zext i16 %275 to i32
  %277 = add nuw nsw i32 %276, 1
  %278 = add nuw nsw i32 %277, %273
  %279 = lshr i32 %278, 1
  %280 = trunc i32 %279 to i16
  %281 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  %282 = load i16, ptr %281, align 2, !tbaa !42
  %283 = zext i16 %282 to i32
  %284 = shl nuw nsw i32 %276, 1
  %285 = add nuw nsw i32 %283, 2
  %286 = add nuw nsw i32 %285, %273
  %287 = add nuw nsw i32 %286, %284
  %288 = lshr i32 %287, 2
  %289 = trunc i32 %288 to i16
  %290 = add nuw nsw i32 %277, %283
  %291 = lshr i32 %290, 1
  %292 = trunc i32 %291 to i16
  %293 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  %294 = load i16, ptr %293, align 8, !tbaa !42
  %295 = zext i16 %294 to i32
  %296 = shl nuw nsw i32 %283, 1
  %297 = add nuw nsw i32 %295, 2
  %298 = add nuw nsw i32 %297, %276
  %299 = add nuw nsw i32 %298, %296
  %300 = lshr i32 %299, 2
  %301 = trunc i32 %300 to i16
  %302 = add nuw nsw i32 %283, 1
  %303 = add nuw nsw i32 %302, %295
  %304 = lshr i32 %303, 1
  %305 = trunc i32 %304 to i16
  %306 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  %307 = load i16, ptr %306, align 2, !tbaa !42
  %308 = zext i16 %307 to i32
  %309 = shl nuw nsw i32 %295, 1
  %310 = add nuw nsw i32 %285, %308
  %311 = add nuw nsw i32 %310, %309
  %312 = lshr i32 %311, 2
  %313 = trunc i32 %312 to i16
  %314 = add nuw nsw i32 %295, 1
  %315 = add nuw nsw i32 %314, %308
  %316 = lshr i32 %315, 1
  %317 = trunc i32 %316 to i16
  %318 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %319 = load i16, ptr %318, align 4, !tbaa !42
  %320 = zext i16 %319 to i32
  %321 = shl nuw nsw i32 %308, 1
  %322 = add nuw nsw i32 %297, %320
  %323 = add nuw nsw i32 %322, %321
  %324 = lshr i32 %323, 2
  %325 = trunc i32 %324 to i16
  %326 = add nuw nsw i32 %308, 1
  %327 = add nuw nsw i32 %326, %320
  %328 = lshr i32 %327, 1
  %329 = trunc i32 %328 to i16
  %330 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %331 = load i16, ptr %330, align 2, !tbaa !42
  %332 = zext i16 %331 to i32
  %333 = shl nuw nsw i32 %320, 1
  %334 = add nuw nsw i32 %308, 2
  %335 = add nuw nsw i32 %334, %332
  %336 = add nuw nsw i32 %335, %333
  %337 = lshr i32 %336, 2
  %338 = trunc i32 %337 to i16
  %339 = add nuw nsw i32 %320, 1
  %340 = add nuw nsw i32 %339, %332
  %341 = lshr i32 %340, 1
  %342 = trunc i32 %341 to i16
  %343 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  %344 = load i16, ptr %343, align 16, !tbaa !42
  %345 = zext i16 %344 to i32
  %346 = shl nuw nsw i32 %332, 1
  %347 = add nuw nsw i32 %320, 2
  %348 = add nuw nsw i32 %347, %345
  %349 = add nuw nsw i32 %348, %346
  %350 = lshr i32 %349, 2
  %351 = trunc i32 %350 to i16
  %352 = add nuw nsw i32 %332, 1
  %353 = add nuw nsw i32 %352, %345
  %354 = lshr i32 %353, 1
  %355 = trunc i32 %354 to i16
  %356 = mul nuw nsw i32 %345, 3
  %357 = add nuw nsw i32 %332, 2
  %358 = add nuw nsw i32 %357, %356
  %359 = lshr i32 %358, 2
  %360 = trunc i32 %359 to i16
  %361 = sext i32 %3 to i64
  %362 = getelementptr inbounds ptr, ptr %31, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !19
  %364 = sext i32 %2 to i64
  %365 = getelementptr inbounds i16, ptr %363, i64 %364
  store i16 %280, ptr %365, align 2
  %366 = getelementptr inbounds i8, ptr %365, i64 2
  store i16 %289, ptr %366, align 2
  %367 = getelementptr inbounds i8, ptr %365, i64 4
  store i16 %292, ptr %367, align 2
  %368 = getelementptr inbounds i8, ptr %365, i64 6
  store i16 %301, ptr %368, align 2
  %369 = getelementptr inbounds i8, ptr %365, i64 8
  store i16 %305, ptr %369, align 2
  %370 = getelementptr inbounds i8, ptr %365, i64 10
  store i16 %313, ptr %370, align 2
  %371 = getelementptr inbounds i8, ptr %365, i64 12
  store i16 %317, ptr %371, align 2
  %372 = getelementptr inbounds i8, ptr %365, i64 14
  store i16 %325, ptr %372, align 2
  %373 = getelementptr ptr, ptr %362, i64 1
  %374 = load ptr, ptr %373, align 8, !tbaa !19
  %375 = getelementptr inbounds i16, ptr %374, i64 %364
  store i16 %292, ptr %375, align 2
  %376 = getelementptr inbounds i8, ptr %375, i64 2
  store i16 %301, ptr %376, align 2
  %377 = getelementptr inbounds i8, ptr %375, i64 4
  store i16 %305, ptr %377, align 2
  %378 = getelementptr inbounds i8, ptr %375, i64 6
  store i16 %313, ptr %378, align 2
  %379 = getelementptr inbounds i8, ptr %375, i64 8
  store i16 %317, ptr %379, align 2
  %380 = getelementptr inbounds i8, ptr %375, i64 10
  store i16 %325, ptr %380, align 2
  %381 = getelementptr inbounds i8, ptr %375, i64 12
  store i16 %329, ptr %381, align 2
  %382 = getelementptr inbounds i8, ptr %375, i64 14
  store i16 %338, ptr %382, align 2
  %383 = getelementptr ptr, ptr %362, i64 2
  %384 = load ptr, ptr %383, align 8, !tbaa !19
  %385 = getelementptr inbounds i16, ptr %384, i64 %364
  store i16 %305, ptr %385, align 2
  %386 = getelementptr inbounds i8, ptr %385, i64 2
  store i16 %313, ptr %386, align 2
  %387 = getelementptr inbounds i8, ptr %385, i64 4
  store i16 %317, ptr %387, align 2
  %388 = getelementptr inbounds i8, ptr %385, i64 6
  store i16 %325, ptr %388, align 2
  %389 = getelementptr inbounds i8, ptr %385, i64 8
  store i16 %329, ptr %389, align 2
  %390 = getelementptr inbounds i8, ptr %385, i64 10
  store i16 %338, ptr %390, align 2
  %391 = getelementptr inbounds i8, ptr %385, i64 12
  store i16 %342, ptr %391, align 2
  %392 = getelementptr inbounds i8, ptr %385, i64 14
  store i16 %351, ptr %392, align 2
  %393 = getelementptr ptr, ptr %362, i64 3
  %394 = load ptr, ptr %393, align 8, !tbaa !19
  %395 = getelementptr inbounds i16, ptr %394, i64 %364
  store i16 %317, ptr %395, align 2
  %396 = getelementptr inbounds i8, ptr %395, i64 2
  store i16 %325, ptr %396, align 2
  %397 = getelementptr inbounds i8, ptr %395, i64 4
  store i16 %329, ptr %397, align 2
  %398 = getelementptr inbounds i8, ptr %395, i64 6
  store i16 %338, ptr %398, align 2
  %399 = getelementptr inbounds i8, ptr %395, i64 8
  store i16 %342, ptr %399, align 2
  %400 = getelementptr inbounds i8, ptr %395, i64 10
  store i16 %351, ptr %400, align 2
  %401 = getelementptr inbounds i8, ptr %395, i64 12
  store i16 %355, ptr %401, align 2
  %402 = getelementptr inbounds i8, ptr %395, i64 14
  store i16 %360, ptr %402, align 2
  %403 = getelementptr ptr, ptr %362, i64 4
  %404 = load ptr, ptr %403, align 8, !tbaa !19
  %405 = getelementptr inbounds i16, ptr %404, i64 %364
  store i16 %329, ptr %405, align 2
  %406 = getelementptr inbounds i8, ptr %405, i64 2
  store i16 %338, ptr %406, align 2
  %407 = getelementptr inbounds i8, ptr %405, i64 4
  store i16 %342, ptr %407, align 2
  %408 = getelementptr inbounds i8, ptr %405, i64 6
  store i16 %351, ptr %408, align 2
  %409 = getelementptr inbounds i8, ptr %405, i64 8
  store i16 %355, ptr %409, align 2
  %410 = getelementptr inbounds i8, ptr %405, i64 10
  store i16 %360, ptr %410, align 2
  %411 = getelementptr inbounds i8, ptr %405, i64 12
  store i16 %344, ptr %411, align 2
  %412 = getelementptr ptr, ptr %362, i64 5
  %413 = load ptr, ptr %412, align 8, !tbaa !19
  %414 = getelementptr inbounds i16, ptr %413, i64 %364
  store i16 %342, ptr %414, align 2
  %415 = getelementptr inbounds i8, ptr %414, i64 2
  store i16 %351, ptr %415, align 2
  %416 = getelementptr inbounds i8, ptr %414, i64 4
  store i16 %355, ptr %416, align 2
  %417 = getelementptr inbounds i8, ptr %414, i64 6
  store i16 %360, ptr %417, align 2
  %418 = getelementptr inbounds i8, ptr %414, i64 8
  store i16 %344, ptr %418, align 2
  %419 = getelementptr ptr, ptr %362, i64 6
  %420 = load ptr, ptr %419, align 8, !tbaa !19
  %421 = getelementptr inbounds i16, ptr %420, i64 %364
  store i16 %355, ptr %421, align 2
  %422 = getelementptr inbounds i8, ptr %421, i64 2
  store i16 %360, ptr %422, align 2
  %423 = getelementptr inbounds i8, ptr %421, i64 4
  store i16 %344, ptr %423, align 2
  %424 = load ptr, ptr %403, align 8, !tbaa !19
  %425 = sext i32 %266 to i64
  %426 = getelementptr inbounds i16, ptr %424, i64 %425
  store i16 %344, ptr %426, align 2, !tbaa !42
  %427 = load ptr, ptr %412, align 8, !tbaa !19
  %428 = getelementptr inbounds i16, ptr %427, i64 %425
  store i16 %344, ptr %428, align 2, !tbaa !42
  %429 = sext i32 %267 to i64
  %430 = getelementptr inbounds i16, ptr %427, i64 %429
  store i16 %344, ptr %430, align 2, !tbaa !42
  %431 = sext i32 %268 to i64
  %432 = getelementptr inbounds i16, ptr %427, i64 %431
  store i16 %344, ptr %432, align 2, !tbaa !42
  %433 = load ptr, ptr %419, align 8, !tbaa !19
  %434 = getelementptr inbounds i16, ptr %433, i64 %425
  store i16 %344, ptr %434, align 2, !tbaa !42
  %435 = getelementptr inbounds i16, ptr %433, i64 %429
  store i16 %344, ptr %435, align 2, !tbaa !42
  %436 = getelementptr inbounds i16, ptr %433, i64 %431
  store i16 %344, ptr %436, align 2, !tbaa !42
  %437 = sext i32 %269 to i64
  %438 = getelementptr inbounds i16, ptr %433, i64 %437
  store i16 %344, ptr %438, align 2, !tbaa !42
  %439 = sext i32 %270 to i64
  %440 = getelementptr inbounds i16, ptr %433, i64 %439
  store i16 %344, ptr %440, align 2, !tbaa !42
  %441 = getelementptr ptr, ptr %362, i64 7
  %442 = load ptr, ptr %441, align 8, !tbaa !19
  %443 = getelementptr inbounds i16, ptr %442, i64 %425
  store i16 %344, ptr %443, align 2, !tbaa !42
  %444 = getelementptr inbounds i16, ptr %442, i64 %429
  store i16 %344, ptr %444, align 2, !tbaa !42
  %445 = getelementptr inbounds i16, ptr %442, i64 %431
  store i16 %344, ptr %445, align 2, !tbaa !42
  %446 = getelementptr inbounds i16, ptr %442, i64 %437
  store i16 %344, ptr %446, align 2, !tbaa !42
  %447 = getelementptr inbounds i16, ptr %442, i64 %439
  store i16 %344, ptr %447, align 2, !tbaa !42
  %448 = getelementptr i16, ptr %442, i64 %364
  %449 = getelementptr i16, ptr %448, i64 2
  store i16 %344, ptr %449, align 2, !tbaa !42
  %450 = getelementptr i16, ptr %448, i64 1
  store i16 %344, ptr %450, align 2, !tbaa !42
  store i16 %344, ptr %448, align 2, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra8x8_hor_down_pred(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #8
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  br i1 %13, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = add i32 %1, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.storable_picture, ptr %15, i64 0, i32 32
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %27 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81
  %33 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %3, ptr noundef nonnull %32, ptr noundef nonnull %6) #9
  %34 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %7) #9
  %35 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %8) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %9) #9
  %36 = load i32, ptr %8, align 4, !tbaa !28
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne i32 %2, 8
  %39 = icmp ne i32 %3, 8
  %40 = or i1 %38, %39
  %41 = and i1 %40, %37
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %8, align 4, !tbaa !28
  %43 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %44, i64 0, i32 30
  %46 = load i32, ptr %45, align 4, !tbaa !36
  %47 = icmp eq i32 %46, 0
  %48 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %47, label %103, label %49

49:                                               ; preds = %24
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %49, %51
  %61 = phi i32 [ %59, %51 ], [ 0, %49 ]
  %62 = load i32, ptr %7, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !39
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %60, %64
  %74 = phi i32 [ %72, %64 ], [ 0, %60 ]
  br i1 %41, label %75, label %84

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %77 = load ptr, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !39
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !20
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %73, %75
  %85 = phi i32 [ %83, %75 ], [ 0, %73 ]
  %86 = load i32, ptr %9, align 4, !tbaa !28
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = icmp eq i32 %74, 0
  %90 = icmp ne i32 %61, 0
  %91 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %92 = load i32, ptr %91, align 4, !tbaa !47
  %93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %92) #7
  br i1 %89, label %159, label %120

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %96 = load ptr, ptr %95, align 8, !tbaa !38
  %97 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !39
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !20
  %102 = sext i8 %101 to i32
  br label %106

103:                                              ; preds = %24
  %104 = load i32, ptr %7, align 4, !tbaa !28
  %105 = load i32, ptr %9, align 4, !tbaa !28
  br label %106

106:                                              ; preds = %94, %103
  %107 = phi i32 [ %42, %103 ], [ %85, %94 ]
  %108 = phi i32 [ %105, %103 ], [ %102, %94 ]
  %109 = phi i32 [ %48, %103 ], [ %61, %94 ]
  %110 = phi i32 [ %104, %103 ], [ %74, %94 ]
  %111 = icmp ne i32 %110, 0
  %112 = icmp ne i32 %109, 0
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp ne i32 %108, 0
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %120, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 20
  %118 = load i32, ptr %117, align 4, !tbaa !47
  %119 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %118) #7
  br i1 %111, label %120, label %159

120:                                              ; preds = %106, %88, %116
  %121 = phi i32 [ %107, %116 ], [ %85, %88 ], [ %107, %106 ]
  %122 = phi i32 [ %108, %116 ], [ 0, %88 ], [ %108, %106 ]
  %123 = phi i32 [ %109, %116 ], [ %61, %88 ], [ %109, %106 ]
  %124 = phi i32 [ %110, %116 ], [ %74, %88 ], [ %110, %106 ]
  %125 = phi i1 [ %112, %116 ], [ %90, %88 ], [ true, %106 ]
  %126 = phi i1 [ %114, %116 ], [ false, %88 ], [ true, %106 ]
  %127 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %128 = load i16, ptr %127, align 2, !tbaa !40
  %129 = sext i16 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %26, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !19
  %132 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %133 = load i16, ptr %132, align 4, !tbaa !41
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds i16, ptr %131, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !42
  %137 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %136, ptr %137, align 2, !tbaa !42
  %138 = getelementptr inbounds i16, ptr %135, i64 1
  %139 = load i16, ptr %138, align 2, !tbaa !42
  %140 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %139, ptr %140, align 4, !tbaa !42
  %141 = getelementptr inbounds i16, ptr %135, i64 2
  %142 = load i16, ptr %141, align 2, !tbaa !42
  %143 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %142, ptr %143, align 2, !tbaa !42
  %144 = getelementptr inbounds i16, ptr %135, i64 3
  %145 = load i16, ptr %144, align 2, !tbaa !42
  %146 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %145, ptr %146, align 8, !tbaa !42
  %147 = getelementptr inbounds i16, ptr %135, i64 4
  %148 = load i16, ptr %147, align 2, !tbaa !42
  %149 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %148, ptr %149, align 2, !tbaa !42
  %150 = getelementptr inbounds i16, ptr %135, i64 5
  %151 = load i16, ptr %150, align 2, !tbaa !42
  %152 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %151, ptr %152, align 4, !tbaa !42
  %153 = getelementptr inbounds i16, ptr %135, i64 6
  %154 = load i16, ptr %153, align 2, !tbaa !42
  %155 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %154, ptr %155, align 2, !tbaa !42
  %156 = getelementptr inbounds i16, ptr %135, i64 7
  %157 = load i16, ptr %156, align 2, !tbaa !42
  %158 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %157, ptr %158, align 16, !tbaa !42
  br label %171

159:                                              ; preds = %88, %116
  %160 = phi i32 [ %107, %116 ], [ %85, %88 ]
  %161 = phi i32 [ %108, %116 ], [ 0, %88 ]
  %162 = phi i32 [ %109, %116 ], [ %61, %88 ]
  %163 = phi i1 [ %112, %116 ], [ %90, %88 ]
  %164 = phi i1 [ %114, %116 ], [ false, %88 ]
  %165 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %166 = load i32, ptr %165, align 4, !tbaa !43
  %167 = trunc i32 %166 to i16
  %168 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %169 = insertelement <8 x i16> poison, i16 %167, i64 0
  %170 = shufflevector <8 x i16> %169, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %170, ptr %168, align 2, !tbaa !42
  br label %171

171:                                              ; preds = %159, %120
  %172 = phi i16 [ %167, %159 ], [ %157, %120 ]
  %173 = phi i32 [ %160, %159 ], [ %121, %120 ]
  %174 = phi i32 [ %161, %159 ], [ %122, %120 ]
  %175 = phi i32 [ %162, %159 ], [ %123, %120 ]
  %176 = phi i32 [ 0, %159 ], [ %124, %120 ]
  %177 = phi i1 [ %163, %159 ], [ %125, %120 ]
  %178 = phi i1 [ %164, %159 ], [ %126, %120 ]
  %179 = icmp eq i32 %173, 0
  br i1 %179, label %213, label %180

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %182 = load i16, ptr %181, align 2, !tbaa !40
  %183 = sext i16 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %26, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !19
  %186 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %187 = load i16, ptr %186, align 4, !tbaa !41
  %188 = sext i16 %187 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !42
  %191 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %190, ptr %191, align 2, !tbaa !42
  %192 = getelementptr inbounds i16, ptr %189, i64 1
  %193 = load i16, ptr %192, align 2, !tbaa !42
  %194 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  store i16 %193, ptr %194, align 4, !tbaa !42
  %195 = getelementptr inbounds i16, ptr %189, i64 2
  %196 = load i16, ptr %195, align 2, !tbaa !42
  %197 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %196, ptr %197, align 2, !tbaa !42
  %198 = getelementptr inbounds i16, ptr %189, i64 3
  %199 = load i16, ptr %198, align 2, !tbaa !42
  %200 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %199, ptr %200, align 8, !tbaa !42
  %201 = getelementptr inbounds i16, ptr %189, i64 4
  %202 = load i16, ptr %201, align 2, !tbaa !42
  %203 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %202, ptr %203, align 2, !tbaa !42
  %204 = getelementptr inbounds i16, ptr %189, i64 5
  %205 = load i16, ptr %204, align 2, !tbaa !42
  %206 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %205, ptr %206, align 4, !tbaa !42
  %207 = getelementptr inbounds i16, ptr %189, i64 6
  %208 = load i16, ptr %207, align 2, !tbaa !42
  %209 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %208, ptr %209, align 2, !tbaa !42
  %210 = getelementptr inbounds i16, ptr %189, i64 7
  %211 = load i16, ptr %210, align 2, !tbaa !42
  %212 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %211, ptr %212, align 16, !tbaa !42
  br label %217

213:                                              ; preds = %171
  %214 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  %215 = insertelement <8 x i16> poison, i16 %172, i64 0
  %216 = shufflevector <8 x i16> %215, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %216, ptr %214, align 2, !tbaa !42
  br label %217

217:                                              ; preds = %213, %180
  br i1 %177, label %218, label %264

218:                                              ; preds = %217
  %219 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %220 = load i16, ptr %219, align 2, !tbaa !40
  %221 = sext i16 %220 to i64
  %222 = getelementptr inbounds ptr, ptr %26, i64 %221
  %223 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %224 = load i16, ptr %223, align 4, !tbaa !41
  %225 = getelementptr inbounds ptr, ptr %222, i64 1
  %226 = load ptr, ptr %222, align 8, !tbaa !19
  %227 = sext i16 %224 to i64
  %228 = getelementptr inbounds i16, ptr %226, i64 %227
  %229 = load i16, ptr %228, align 2, !tbaa !42
  %230 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %229, ptr %230, align 2, !tbaa !42
  %231 = getelementptr inbounds ptr, ptr %222, i64 2
  %232 = load ptr, ptr %225, align 8, !tbaa !19
  %233 = getelementptr inbounds i16, ptr %232, i64 %227
  %234 = load i16, ptr %233, align 2, !tbaa !42
  %235 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %234, ptr %235, align 4, !tbaa !42
  %236 = getelementptr inbounds ptr, ptr %222, i64 3
  %237 = load ptr, ptr %231, align 8, !tbaa !19
  %238 = getelementptr inbounds i16, ptr %237, i64 %227
  %239 = load i16, ptr %238, align 2, !tbaa !42
  %240 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %239, ptr %240, align 2, !tbaa !42
  %241 = getelementptr inbounds ptr, ptr %222, i64 4
  %242 = load ptr, ptr %236, align 8, !tbaa !19
  %243 = getelementptr inbounds i16, ptr %242, i64 %227
  %244 = load i16, ptr %243, align 2, !tbaa !42
  %245 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %244, ptr %245, align 8, !tbaa !42
  %246 = getelementptr inbounds ptr, ptr %222, i64 5
  %247 = load ptr, ptr %241, align 8, !tbaa !19
  %248 = getelementptr inbounds i16, ptr %247, i64 %227
  %249 = load i16, ptr %248, align 2, !tbaa !42
  %250 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %249, ptr %250, align 2, !tbaa !42
  %251 = getelementptr inbounds ptr, ptr %222, i64 6
  %252 = load ptr, ptr %246, align 8, !tbaa !19
  %253 = getelementptr inbounds i16, ptr %252, i64 %227
  %254 = load i16, ptr %253, align 2, !tbaa !42
  %255 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %254, ptr %255, align 4, !tbaa !42
  %256 = getelementptr inbounds ptr, ptr %222, i64 7
  %257 = load ptr, ptr %251, align 8, !tbaa !19
  %258 = getelementptr inbounds i16, ptr %257, i64 %227
  %259 = load i16, ptr %258, align 2, !tbaa !42
  %260 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %259, ptr %260, align 2, !tbaa !42
  %261 = load ptr, ptr %256, align 8, !tbaa !19
  %262 = getelementptr inbounds i16, ptr %261, i64 %227
  %263 = load i16, ptr %262, align 2, !tbaa !42
  br label %274

264:                                              ; preds = %217
  %265 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %266 = load i32, ptr %265, align 4, !tbaa !43
  %267 = trunc i32 %266 to i16
  %268 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %267, ptr %268, align 2, !tbaa !42
  %269 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %267, ptr %269, align 4, !tbaa !42
  %270 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %267, ptr %270, align 2, !tbaa !42
  %271 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %272 = insertelement <4 x i16> poison, i16 %267, i64 0
  %273 = shufflevector <4 x i16> %272, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %273, ptr %271, align 2, !tbaa !42
  br label %274

274:                                              ; preds = %264, %218
  %275 = phi i16 [ %263, %218 ], [ %267, %264 ]
  %276 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %275, ptr %276, align 16
  br i1 %178, label %277, label %288

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %279 = load i16, ptr %278, align 2, !tbaa !40
  %280 = sext i16 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %26, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !19
  %283 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %284 = load i16, ptr %283, align 4, !tbaa !41
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds i16, ptr %282, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !42
  br label %292

288:                                              ; preds = %274
  %289 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %29
  %290 = load i32, ptr %289, align 4, !tbaa !43
  %291 = trunc i32 %290 to i16
  br label %292

292:                                              ; preds = %288, %277
  %293 = phi i16 [ %291, %288 ], [ %287, %277 ]
  store i16 %293, ptr %5, align 16, !tbaa !42
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %174, i32 noundef %176, i32 noundef %175) #7
  %294 = load i16, ptr %276, align 16, !tbaa !42
  %295 = zext i16 %294 to i32
  %296 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %297 = load i16, ptr %296, align 2, !tbaa !42
  %298 = zext i16 %297 to i32
  %299 = add nuw nsw i32 %298, 1
  %300 = add nuw nsw i32 %299, %295
  %301 = lshr i32 %300, 1
  %302 = trunc i32 %301 to i16
  %303 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %304 = load i16, ptr %303, align 4, !tbaa !42
  %305 = zext i16 %304 to i32
  %306 = shl nuw nsw i32 %298, 1
  %307 = add nuw nsw i32 %305, 2
  %308 = add nuw nsw i32 %307, %295
  %309 = add nuw nsw i32 %308, %306
  %310 = lshr i32 %309, 2
  %311 = trunc i32 %310 to i16
  %312 = add nuw nsw i32 %299, %305
  %313 = lshr i32 %312, 1
  %314 = trunc i32 %313 to i16
  %315 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  %316 = load i16, ptr %315, align 2, !tbaa !42
  %317 = zext i16 %316 to i32
  %318 = shl nuw nsw i32 %305, 1
  %319 = add nuw nsw i32 %317, 2
  %320 = add nuw nsw i32 %319, %298
  %321 = add nuw nsw i32 %320, %318
  %322 = lshr i32 %321, 2
  %323 = trunc i32 %322 to i16
  %324 = add nuw nsw i32 %305, 1
  %325 = add nuw nsw i32 %324, %317
  %326 = lshr i32 %325, 1
  %327 = trunc i32 %326 to i16
  %328 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  %329 = load i16, ptr %328, align 8, !tbaa !42
  %330 = zext i16 %329 to i32
  %331 = shl nuw nsw i32 %317, 1
  %332 = add nuw nsw i32 %307, %330
  %333 = add nuw nsw i32 %332, %331
  %334 = lshr i32 %333, 2
  %335 = trunc i32 %334 to i16
  %336 = add nuw nsw i32 %317, 1
  %337 = add nuw nsw i32 %336, %330
  %338 = lshr i32 %337, 1
  %339 = trunc i32 %338 to i16
  %340 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  %341 = load i16, ptr %340, align 2, !tbaa !42
  %342 = zext i16 %341 to i32
  %343 = shl nuw nsw i32 %330, 1
  %344 = add nuw nsw i32 %319, %342
  %345 = add nuw nsw i32 %344, %343
  %346 = lshr i32 %345, 2
  %347 = trunc i32 %346 to i16
  %348 = add nuw nsw i32 %330, 1
  %349 = add nuw nsw i32 %348, %342
  %350 = lshr i32 %349, 1
  %351 = trunc i32 %350 to i16
  %352 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %353 = load i16, ptr %352, align 4, !tbaa !42
  %354 = zext i16 %353 to i32
  %355 = shl nuw nsw i32 %342, 1
  %356 = add nuw nsw i32 %330, 2
  %357 = add nuw nsw i32 %356, %354
  %358 = add nuw nsw i32 %357, %355
  %359 = lshr i32 %358, 2
  %360 = trunc i32 %359 to i16
  %361 = add nuw nsw i32 %342, 1
  %362 = add nuw nsw i32 %361, %354
  %363 = lshr i32 %362, 1
  %364 = trunc i32 %363 to i16
  %365 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %366 = load i16, ptr %365, align 2, !tbaa !42
  %367 = zext i16 %366 to i32
  %368 = shl nuw nsw i32 %354, 1
  %369 = add nuw nsw i32 %342, 2
  %370 = add nuw nsw i32 %369, %367
  %371 = add nuw nsw i32 %370, %368
  %372 = lshr i32 %371, 2
  %373 = trunc i32 %372 to i16
  %374 = add nuw nsw i32 %354, 1
  %375 = add nuw nsw i32 %374, %367
  %376 = lshr i32 %375, 1
  %377 = trunc i32 %376 to i16
  %378 = load i16, ptr %5, align 16, !tbaa !42
  %379 = zext i16 %378 to i32
  %380 = shl nuw nsw i32 %367, 1
  %381 = add nuw nsw i32 %354, 2
  %382 = add nuw nsw i32 %381, %379
  %383 = add nuw nsw i32 %382, %380
  %384 = lshr i32 %383, 2
  %385 = trunc i32 %384 to i16
  %386 = add nuw nsw i32 %367, 1
  %387 = add nuw nsw i32 %386, %379
  %388 = lshr i32 %387, 1
  %389 = trunc i32 %388 to i16
  %390 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %391 = load i16, ptr %390, align 2, !tbaa !42
  %392 = zext i16 %391 to i32
  %393 = shl nuw nsw i32 %379, 1
  %394 = add nuw nsw i32 %367, 2
  %395 = add nuw nsw i32 %394, %392
  %396 = add nuw nsw i32 %395, %393
  %397 = lshr i32 %396, 2
  %398 = trunc i32 %397 to i16
  %399 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %400 = shl nuw nsw i32 %392, 1
  %401 = add nuw nsw i32 %379, 2
  %402 = add nuw nsw i32 %392, 2
  %403 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  %404 = load i16, ptr %403, align 4, !tbaa !42
  %405 = zext i16 %404 to i32
  %406 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %407 = load i16, ptr %406, align 2, !tbaa !42
  %408 = zext i16 %407 to i32
  %409 = sext i32 %3 to i64
  %410 = getelementptr inbounds ptr, ptr %31, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !19
  %412 = sext i32 %2 to i64
  %413 = getelementptr inbounds i16, ptr %411, i64 %412
  %414 = getelementptr inbounds i8, ptr %413, i64 2
  %415 = getelementptr inbounds i8, ptr %413, i64 4
  %416 = getelementptr inbounds i8, ptr %413, i64 6
  %417 = getelementptr inbounds i8, ptr %413, i64 8
  %418 = load <4 x i16>, ptr %399, align 4, !tbaa !42
  %419 = zext <4 x i16> %418 to <4 x i32>
  %420 = extractelement <4 x i32> %419, i64 0
  %421 = add nuw nsw i32 %401, %420
  %422 = add nuw nsw i32 %421, %400
  %423 = lshr i32 %422, 2
  %424 = trunc i32 %423 to i16
  %425 = shl nuw nsw i32 %420, 1
  %426 = extractelement <4 x i32> %419, i64 1
  %427 = add nuw nsw i32 %402, %426
  %428 = add nuw nsw i32 %427, %425
  %429 = lshr i32 %428, 2
  %430 = trunc i32 %429 to i16
  %431 = shufflevector <4 x i32> %419, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %432 = insertelement <4 x i32> %431, i32 %405, i64 3
  %433 = shl nuw nsw <4 x i32> %432, <i32 1, i32 1, i32 1, i32 1>
  %434 = add nuw nsw <4 x i32> %419, <i32 2, i32 2, i32 2, i32 2>
  %435 = shufflevector <4 x i32> %432, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %436 = insertelement <4 x i32> %435, i32 %408, i64 3
  %437 = add nuw nsw <4 x i32> %434, %436
  %438 = add nuw nsw <4 x i32> %437, %433
  %439 = lshr <4 x i32> %438, <i32 2, i32 2, i32 2, i32 2>
  %440 = trunc <4 x i32> %439 to <4 x i16>
  store i16 %389, ptr %413, align 2
  store i16 %398, ptr %414, align 2
  store i16 %424, ptr %415, align 2
  store i16 %430, ptr %416, align 2
  store <4 x i16> %440, ptr %417, align 2
  %441 = getelementptr ptr, ptr %410, i64 1
  %442 = load ptr, ptr %441, align 8, !tbaa !19
  %443 = getelementptr inbounds i16, ptr %442, i64 %412
  store i16 %377, ptr %443, align 2
  %444 = getelementptr inbounds i8, ptr %443, i64 2
  store i16 %385, ptr %444, align 2
  %445 = getelementptr inbounds i8, ptr %443, i64 4
  store i16 %389, ptr %445, align 2
  %446 = getelementptr inbounds i8, ptr %443, i64 6
  store i16 %398, ptr %446, align 2
  %447 = getelementptr inbounds i8, ptr %443, i64 8
  store i16 %424, ptr %447, align 2
  %448 = getelementptr inbounds i8, ptr %443, i64 10
  store i16 %430, ptr %448, align 2
  %449 = getelementptr inbounds i8, ptr %443, i64 12
  %450 = shufflevector <4 x i16> %440, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %450, ptr %449, align 2
  %451 = getelementptr ptr, ptr %410, i64 2
  %452 = load ptr, ptr %451, align 8, !tbaa !19
  %453 = getelementptr inbounds i16, ptr %452, i64 %412
  store i16 %364, ptr %453, align 2
  %454 = getelementptr inbounds i8, ptr %453, i64 2
  store i16 %373, ptr %454, align 2
  %455 = getelementptr inbounds i8, ptr %453, i64 4
  store i16 %377, ptr %455, align 2
  %456 = getelementptr inbounds i8, ptr %453, i64 6
  store i16 %385, ptr %456, align 2
  %457 = getelementptr inbounds i8, ptr %453, i64 8
  store i16 %389, ptr %457, align 2
  %458 = getelementptr inbounds i8, ptr %453, i64 10
  store i16 %398, ptr %458, align 2
  %459 = getelementptr inbounds i8, ptr %453, i64 12
  store i16 %424, ptr %459, align 2
  %460 = getelementptr inbounds i8, ptr %453, i64 14
  store i16 %430, ptr %460, align 2
  %461 = getelementptr ptr, ptr %410, i64 3
  %462 = load ptr, ptr %461, align 8, !tbaa !19
  %463 = getelementptr inbounds i16, ptr %462, i64 %412
  store i16 %351, ptr %463, align 2
  %464 = getelementptr inbounds i8, ptr %463, i64 2
  store i16 %360, ptr %464, align 2
  %465 = getelementptr inbounds i8, ptr %463, i64 4
  store i16 %364, ptr %465, align 2
  %466 = getelementptr inbounds i8, ptr %463, i64 6
  store i16 %373, ptr %466, align 2
  %467 = getelementptr inbounds i8, ptr %463, i64 8
  store i16 %377, ptr %467, align 2
  %468 = getelementptr inbounds i8, ptr %463, i64 10
  store i16 %385, ptr %468, align 2
  %469 = getelementptr inbounds i8, ptr %463, i64 12
  store i16 %389, ptr %469, align 2
  %470 = getelementptr inbounds i8, ptr %463, i64 14
  store i16 %398, ptr %470, align 2
  %471 = getelementptr ptr, ptr %410, i64 4
  %472 = load ptr, ptr %471, align 8, !tbaa !19
  %473 = getelementptr inbounds i16, ptr %472, i64 %412
  store i16 %339, ptr %473, align 2
  %474 = getelementptr inbounds i8, ptr %473, i64 2
  store i16 %347, ptr %474, align 2
  %475 = getelementptr inbounds i8, ptr %473, i64 4
  store i16 %351, ptr %475, align 2
  %476 = getelementptr inbounds i8, ptr %473, i64 6
  store i16 %360, ptr %476, align 2
  %477 = getelementptr inbounds i8, ptr %473, i64 8
  store i16 %364, ptr %477, align 2
  %478 = getelementptr inbounds i8, ptr %473, i64 10
  store i16 %373, ptr %478, align 2
  %479 = getelementptr inbounds i8, ptr %473, i64 12
  store i16 %377, ptr %479, align 2
  %480 = getelementptr inbounds i8, ptr %473, i64 14
  store i16 %385, ptr %480, align 2
  %481 = getelementptr ptr, ptr %410, i64 5
  %482 = load ptr, ptr %481, align 8, !tbaa !19
  %483 = getelementptr inbounds i16, ptr %482, i64 %412
  store i16 %327, ptr %483, align 2
  %484 = getelementptr inbounds i8, ptr %483, i64 2
  store i16 %335, ptr %484, align 2
  %485 = getelementptr inbounds i8, ptr %483, i64 4
  store i16 %339, ptr %485, align 2
  %486 = getelementptr inbounds i8, ptr %483, i64 6
  store i16 %347, ptr %486, align 2
  %487 = getelementptr inbounds i8, ptr %483, i64 8
  store i16 %351, ptr %487, align 2
  %488 = getelementptr inbounds i8, ptr %483, i64 10
  store i16 %360, ptr %488, align 2
  %489 = getelementptr inbounds i8, ptr %483, i64 12
  store i16 %364, ptr %489, align 2
  %490 = getelementptr inbounds i8, ptr %483, i64 14
  store i16 %373, ptr %490, align 2
  %491 = getelementptr ptr, ptr %410, i64 6
  %492 = load ptr, ptr %491, align 8, !tbaa !19
  %493 = getelementptr inbounds i16, ptr %492, i64 %412
  store i16 %314, ptr %493, align 2
  %494 = getelementptr inbounds i8, ptr %493, i64 2
  store i16 %323, ptr %494, align 2
  %495 = getelementptr inbounds i8, ptr %493, i64 4
  store i16 %327, ptr %495, align 2
  %496 = getelementptr inbounds i8, ptr %493, i64 6
  store i16 %335, ptr %496, align 2
  %497 = getelementptr inbounds i8, ptr %493, i64 8
  store i16 %339, ptr %497, align 2
  %498 = getelementptr inbounds i8, ptr %493, i64 10
  store i16 %347, ptr %498, align 2
  %499 = getelementptr inbounds i8, ptr %493, i64 12
  store i16 %351, ptr %499, align 2
  %500 = getelementptr inbounds i8, ptr %493, i64 14
  store i16 %360, ptr %500, align 2
  %501 = getelementptr ptr, ptr %410, i64 7
  %502 = load ptr, ptr %501, align 8, !tbaa !19
  %503 = getelementptr inbounds i16, ptr %502, i64 %412
  store i16 %302, ptr %503, align 2
  %504 = getelementptr inbounds i8, ptr %503, i64 2
  store i16 %311, ptr %504, align 2
  %505 = getelementptr inbounds i8, ptr %503, i64 4
  store i16 %314, ptr %505, align 2
  %506 = getelementptr inbounds i8, ptr %503, i64 6
  store i16 %323, ptr %506, align 2
  %507 = getelementptr inbounds i8, ptr %503, i64 8
  store i16 %327, ptr %507, align 2
  %508 = getelementptr inbounds i8, ptr %503, i64 10
  store i16 %335, ptr %508, align 2
  %509 = getelementptr inbounds i8, ptr %503, i64 12
  store i16 %339, ptr %509, align 2
  %510 = getelementptr inbounds i8, ptr %503, i64 14
  store i16 %347, ptr %510, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @LowPassForIntra8x8Pred(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
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
  %13 = load i16, ptr %12, align 2, !tbaa !42
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %0, align 2, !tbaa !42
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = add nuw nsw i32 %17, %14
  %19 = getelementptr inbounds i16, ptr %0, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !42
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %18, %21
  br label %35

23:                                               ; preds = %7
  br i1 %8, label %24, label %32

24:                                               ; preds = %23
  %25 = load i16, ptr %0, align 2, !tbaa !42
  %26 = zext i16 %25 to i32
  %27 = mul nuw nsw i32 %26, 3
  %28 = getelementptr inbounds i16, ptr %0, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !42
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
  store i16 %41, ptr %5, align 16, !tbaa !42
  %42 = shl nuw nsw i32 %36, 1
  %43 = getelementptr inbounds i16, ptr %0, i64 2
  %44 = load i16, ptr %43, align 2, !tbaa !42
  %45 = zext i16 %44 to i32
  %46 = add nuw nsw i32 %37, 2
  %47 = add nuw nsw i32 %46, %42
  %48 = add nuw nsw i32 %47, %45
  br label %59

49:                                               ; preds = %33
  %50 = getelementptr inbounds i16, ptr %0, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !42
  %52 = zext i16 %51 to i32
  %53 = mul nuw nsw i32 %52, 3
  %54 = getelementptr inbounds i16, ptr %0, i64 2
  %55 = load i16, ptr %54, align 2, !tbaa !42
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
  store i16 %63, ptr %64, align 2, !tbaa !42
  %65 = getelementptr i16, ptr %0, i64 -1
  br label %66

66:                                               ; preds = %59, %66
  %67 = phi i16 [ %61, %59 ], [ %76, %66 ]
  %68 = phi i64 [ 2, %59 ], [ %74, %66 ]
  %69 = getelementptr i16, ptr %65, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !42
  %71 = zext i16 %70 to i32
  %72 = zext i16 %67 to i32
  %73 = shl nuw nsw i32 %72, 1
  %74 = add nuw nsw i64 %68, 1
  %75 = getelementptr inbounds i16, ptr %0, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !42
  %77 = zext i16 %76 to i32
  %78 = add nuw nsw i32 %71, 2
  %79 = add nuw nsw i32 %78, %73
  %80 = add nuw nsw i32 %79, %77
  %81 = lshr i32 %80, 2
  %82 = trunc i32 %81 to i16
  %83 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %68
  store i16 %82, ptr %83, align 2, !tbaa !42
  %84 = icmp eq i64 %74, 16
  br i1 %84, label %85, label %66, !llvm.loop !50

85:                                               ; preds = %66
  %86 = getelementptr inbounds i16, ptr %0, i64 16
  %87 = load i16, ptr %86, align 2, !tbaa !42
  %88 = zext i16 %87 to i32
  %89 = mul nuw nsw i32 %88, 3
  %90 = getelementptr inbounds i16, ptr %0, i64 15
  %91 = load i16, ptr %90, align 2, !tbaa !42
  %92 = zext i16 %91 to i32
  %93 = add nuw nsw i32 %92, 2
  %94 = add nuw nsw i32 %93, %89
  %95 = lshr i32 %94, 2
  %96 = trunc i32 %95 to i16
  %97 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %96, ptr %97, align 16, !tbaa !42
  %98 = icmp eq i32 %3, 0
  br i1 %98, label %179, label %112

99:                                               ; preds = %33
  %100 = icmp eq i32 %3, 0
  br i1 %100, label %179, label %129

101:                                              ; preds = %32
  %102 = load i16, ptr %0, align 2, !tbaa !42
  %103 = zext i16 %102 to i32
  %104 = mul nuw nsw i32 %103, 3
  %105 = getelementptr inbounds i16, ptr %0, i64 17
  %106 = load i16, ptr %105, align 2, !tbaa !42
  %107 = zext i16 %106 to i32
  %108 = add nuw nsw i32 %107, 2
  %109 = add nuw nsw i32 %108, %104
  %110 = lshr i32 %109, 2
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr %5, align 16, !tbaa !42
  br label %119

112:                                              ; preds = %85
  br i1 %6, label %129, label %113

113:                                              ; preds = %112
  %114 = load i16, ptr %0, align 2, !tbaa !42
  %115 = getelementptr inbounds i16, ptr %0, i64 17
  %116 = load i16, ptr %115, align 2, !tbaa !42
  %117 = zext i16 %114 to i32
  %118 = zext i16 %116 to i32
  br label %119

119:                                              ; preds = %113, %101
  %120 = phi i32 [ %118, %113 ], [ %107, %101 ]
  %121 = phi i32 [ %117, %113 ], [ %103, %101 ]
  %122 = shl nuw nsw i32 %120, 1
  %123 = getelementptr inbounds i16, ptr %0, i64 18
  %124 = load i16, ptr %123, align 2, !tbaa !42
  %125 = zext i16 %124 to i32
  %126 = add nuw nsw i32 %121, 2
  %127 = add nuw nsw i32 %126, %122
  %128 = add nuw nsw i32 %127, %125
  br label %139

129:                                              ; preds = %99, %112
  %130 = getelementptr inbounds i16, ptr %0, i64 17
  %131 = load i16, ptr %130, align 2, !tbaa !42
  %132 = zext i16 %131 to i32
  %133 = mul nuw nsw i32 %132, 3
  %134 = getelementptr inbounds i16, ptr %0, i64 18
  %135 = load i16, ptr %134, align 2, !tbaa !42
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
  store i16 %143, ptr %144, align 2, !tbaa !42
  %145 = getelementptr i16, ptr %0, i64 -1
  br label %146

146:                                              ; preds = %139, %146
  %147 = phi i16 [ %141, %139 ], [ %156, %146 ]
  %148 = phi i64 [ 18, %139 ], [ %154, %146 ]
  %149 = getelementptr i16, ptr %145, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !42
  %151 = zext i16 %150 to i32
  %152 = zext i16 %147 to i32
  %153 = shl nuw nsw i32 %152, 1
  %154 = add nuw nsw i64 %148, 1
  %155 = getelementptr inbounds i16, ptr %0, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !42
  %157 = zext i16 %156 to i32
  %158 = add nuw nsw i32 %151, 2
  %159 = add nuw nsw i32 %158, %153
  %160 = add nuw nsw i32 %159, %157
  %161 = lshr i32 %160, 2
  %162 = trunc i32 %161 to i16
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %148
  store i16 %162, ptr %163, align 2, !tbaa !42
  %164 = icmp eq i64 %154, 24
  br i1 %164, label %165, label %146, !llvm.loop !51

165:                                              ; preds = %146
  %166 = getelementptr inbounds i16, ptr %0, i64 23
  %167 = load i16, ptr %166, align 2, !tbaa !42
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds i16, ptr %0, i64 24
  %170 = load i16, ptr %169, align 2, !tbaa !42
  %171 = zext i16 %170 to i32
  %172 = shl nuw nsw i32 %171, 1
  %173 = add nuw nsw i32 %168, 2
  %174 = add nuw nsw i32 %173, %171
  %175 = add nuw nsw i32 %174, %172
  %176 = lshr i32 %175, 2
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %177, ptr %178, align 16, !tbaa !42
  br label %179

179:                                              ; preds = %32, %99, %165, %85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %0, ptr noundef nonnull align 16 dereferenceable(50) %5, i64 50, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @LowPassForIntra8x8PredHor(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
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
  %13 = load i16, ptr %12, align 2, !tbaa !42
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %0, align 2, !tbaa !42
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = add nuw nsw i32 %17, %14
  %19 = getelementptr inbounds i16, ptr %0, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !42
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %18, %21
  br label %46

23:                                               ; preds = %7
  br i1 %8, label %24, label %32

24:                                               ; preds = %23
  %25 = load i16, ptr %0, align 2, !tbaa !42
  %26 = zext i16 %25 to i32
  %27 = mul nuw nsw i32 %26, 3
  %28 = getelementptr inbounds i16, ptr %0, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !42
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %27, %30
  br label %46

32:                                               ; preds = %23
  br i1 %9, label %33, label %109

33:                                               ; preds = %32
  %34 = load i16, ptr %0, align 2, !tbaa !42
  %35 = zext i16 %34 to i32
  %36 = mul nuw nsw i32 %35, 3
  %37 = getelementptr inbounds i16, ptr %0, i64 17
  %38 = load i16, ptr %37, align 2, !tbaa !42
  %39 = zext i16 %38 to i32
  %40 = add nuw nsw i32 %39, 2
  %41 = add nuw nsw i32 %40, %36
  %42 = lshr i32 %41, 2
  %43 = trunc i32 %42 to i16
  store i16 %43, ptr %5, align 16, !tbaa !42
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
  store i16 %52, ptr %5, align 16, !tbaa !42
  %53 = shl nuw nsw i32 %47, 1
  %54 = getelementptr inbounds i16, ptr %0, i64 2
  %55 = load i16, ptr %54, align 2, !tbaa !42
  %56 = zext i16 %55 to i32
  %57 = add nuw nsw i32 %48, 2
  %58 = add nuw nsw i32 %57, %53
  %59 = add nuw nsw i32 %58, %56
  br label %70

60:                                               ; preds = %44
  %61 = getelementptr inbounds i16, ptr %0, i64 1
  %62 = load i16, ptr %61, align 2, !tbaa !42
  %63 = zext i16 %62 to i32
  %64 = mul nuw nsw i32 %63, 3
  %65 = getelementptr inbounds i16, ptr %0, i64 2
  %66 = load i16, ptr %65, align 2, !tbaa !42
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
  store i16 %74, ptr %75, align 2, !tbaa !42
  %76 = getelementptr i16, ptr %0, i64 -1
  br label %77

77:                                               ; preds = %70, %77
  %78 = phi i16 [ %72, %70 ], [ %87, %77 ]
  %79 = phi i64 [ 2, %70 ], [ %85, %77 ]
  %80 = getelementptr i16, ptr %76, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !42
  %82 = zext i16 %81 to i32
  %83 = zext i16 %78 to i32
  %84 = shl nuw nsw i32 %83, 1
  %85 = add nuw nsw i64 %79, 1
  %86 = getelementptr inbounds i16, ptr %0, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !42
  %88 = zext i16 %87 to i32
  %89 = add nuw nsw i32 %82, 2
  %90 = add nuw nsw i32 %89, %84
  %91 = add nuw nsw i32 %90, %88
  %92 = lshr i32 %91, 2
  %93 = trunc i32 %92 to i16
  %94 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %79
  store i16 %93, ptr %94, align 2, !tbaa !42
  %95 = icmp eq i64 %85, 16
  br i1 %95, label %96, label %77, !llvm.loop !52

96:                                               ; preds = %77
  %97 = getelementptr inbounds i16, ptr %0, i64 16
  %98 = load i16, ptr %97, align 2, !tbaa !42
  %99 = zext i16 %98 to i32
  %100 = mul nuw nsw i32 %99, 3
  %101 = getelementptr inbounds i16, ptr %0, i64 15
  %102 = load i16, ptr %101, align 2, !tbaa !42
  %103 = zext i16 %102 to i32
  %104 = add nuw nsw i32 %103, 2
  %105 = add nuw nsw i32 %104, %100
  %106 = lshr i32 %105, 2
  %107 = trunc i32 %106 to i16
  %108 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %107, ptr %108, align 16, !tbaa !42
  br label %109

109:                                              ; preds = %33, %32, %96, %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %0, ptr noundef nonnull align 16 dereferenceable(34) %5, i64 34, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @LowPassForIntra8x8PredVer(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
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
  %13 = load i16, ptr %12, align 2, !tbaa !42
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %0, align 2, !tbaa !42
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = getelementptr inbounds i16, ptr %0, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !42
  %20 = zext i16 %19 to i32
  %21 = add nuw nsw i32 %14, 2
  %22 = add nuw nsw i32 %21, %17
  %23 = add nuw nsw i32 %22, %20
  %24 = lshr i32 %23, 2
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %5, align 16, !tbaa !42
  br label %57

26:                                               ; preds = %7
  br i1 %8, label %41, label %27

27:                                               ; preds = %26
  br i1 %9, label %28, label %117

28:                                               ; preds = %27
  %29 = load i16, ptr %0, align 2, !tbaa !42
  %30 = zext i16 %29 to i32
  %31 = mul nuw nsw i32 %30, 3
  %32 = getelementptr inbounds i16, ptr %0, i64 17
  %33 = load i16, ptr %32, align 2, !tbaa !42
  %34 = zext i16 %33 to i32
  %35 = add nuw nsw i32 %34, 2
  %36 = add nuw nsw i32 %35, %31
  %37 = lshr i32 %36, 2
  %38 = trunc i32 %37 to i16
  store i16 %38, ptr %5, align 16, !tbaa !42
  br label %57

39:                                               ; preds = %4
  %40 = icmp eq i32 %3, 0
  br i1 %40, label %117, label %67

41:                                               ; preds = %26
  %42 = load i16, ptr %0, align 2, !tbaa !42
  %43 = zext i16 %42 to i32
  %44 = mul nuw nsw i32 %43, 3
  %45 = getelementptr inbounds i16, ptr %0, i64 1
  %46 = load i16, ptr %45, align 2, !tbaa !42
  %47 = zext i16 %46 to i32
  %48 = add nuw nsw i32 %47, 2
  %49 = add nuw nsw i32 %48, %44
  %50 = lshr i32 %49, 2
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %5, align 16, !tbaa !42
  %52 = icmp eq i32 %3, 0
  br i1 %52, label %117, label %53

53:                                               ; preds = %41
  %54 = getelementptr inbounds i16, ptr %0, i64 17
  %55 = load i16, ptr %54, align 2, !tbaa !42
  %56 = zext i16 %55 to i32
  br label %57

57:                                               ; preds = %53, %11, %28
  %58 = phi i32 [ %56, %53 ], [ %14, %11 ], [ %34, %28 ]
  %59 = phi i32 [ %43, %53 ], [ %16, %11 ], [ %30, %28 ]
  %60 = shl nuw nsw i32 %58, 1
  %61 = getelementptr inbounds i16, ptr %0, i64 18
  %62 = load i16, ptr %61, align 2, !tbaa !42
  %63 = zext i16 %62 to i32
  %64 = add nuw nsw i32 %59, 2
  %65 = add nuw nsw i32 %64, %60
  %66 = add nuw nsw i32 %65, %63
  br label %77

67:                                               ; preds = %39
  %68 = getelementptr inbounds i16, ptr %0, i64 17
  %69 = load i16, ptr %68, align 2, !tbaa !42
  %70 = zext i16 %69 to i32
  %71 = mul nuw nsw i32 %70, 3
  %72 = getelementptr inbounds i16, ptr %0, i64 18
  %73 = load i16, ptr %72, align 2, !tbaa !42
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
  store i16 %81, ptr %82, align 2, !tbaa !42
  %83 = getelementptr i16, ptr %0, i64 -1
  br label %84

84:                                               ; preds = %77, %84
  %85 = phi i16 [ %79, %77 ], [ %94, %84 ]
  %86 = phi i64 [ 18, %77 ], [ %92, %84 ]
  %87 = getelementptr i16, ptr %83, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !42
  %89 = zext i16 %88 to i32
  %90 = zext i16 %85 to i32
  %91 = shl nuw nsw i32 %90, 1
  %92 = add nuw nsw i64 %86, 1
  %93 = getelementptr inbounds i16, ptr %0, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !42
  %95 = zext i16 %94 to i32
  %96 = add nuw nsw i32 %89, 2
  %97 = add nuw nsw i32 %96, %91
  %98 = add nuw nsw i32 %97, %95
  %99 = lshr i32 %98, 2
  %100 = trunc i32 %99 to i16
  %101 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %86
  store i16 %100, ptr %101, align 2, !tbaa !42
  %102 = icmp eq i64 %92, 24
  br i1 %102, label %103, label %84, !llvm.loop !53

103:                                              ; preds = %84
  %104 = getelementptr inbounds i16, ptr %0, i64 23
  %105 = load i16, ptr %104, align 2, !tbaa !42
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds i16, ptr %0, i64 24
  %108 = load i16, ptr %107, align 2, !tbaa !42
  %109 = zext i16 %108 to i32
  %110 = shl nuw nsw i32 %109, 1
  %111 = add nuw nsw i32 %106, 2
  %112 = add nuw nsw i32 %111, %109
  %113 = add nuw nsw i32 %112, %110
  %114 = lshr i32 %113, 2
  %115 = trunc i32 %114 to i16
  %116 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %115, ptr %116, align 16, !tbaa !42
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 32}
!7 = !{!"macroblock", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !12, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !9, i64 80, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !13, i64 108, !9, i64 110, !9, i64 111, !13, i64 112, !13, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !9, i64 154, !11, i64 284, !9, i64 288, !9, i64 312, !9, i64 336, !11, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !9, i64 373, !9, i64 374, !13, i64 376, !13, i64 378, !13, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !9, i64 472}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 2}
!13 = !{!"short", !9, i64 0}
!14 = !{!7, !11, i64 36}
!15 = !{!7, !8, i64 0}
!16 = !{!17, !8, i64 13536}
!17 = !{!"slice", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !9, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !13, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !9, i64 136, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !9, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !8, i64 248, !9, i64 256, !9, i64 264, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !11, i64 1176, !11, i64 1180, !11, i64 1184, !18, i64 1188, !13, i64 1220, !13, i64 1222, !13, i64 1224, !11, i64 1228, !11, i64 1232, !11, i64 1236, !11, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !9, i64 1288, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !11, i64 13264, !11, i64 13268, !13, i64 13272, !13, i64 13274, !13, i64 13276, !13, i64 13278, !8, i64 13280, !8, i64 13288, !8, i64 13296, !13, i64 13304, !13, i64 13306, !11, i64 13308, !11, i64 13312, !8, i64 13320, !8, i64 13328, !11, i64 13336, !9, i64 13340, !8, i64 13408, !8, i64 13416, !8, i64 13424, !8, i64 13432, !8, i64 13440, !8, i64 13448, !8, i64 13456, !8, i64 13464, !8, i64 13472, !8, i64 13480, !8, i64 13488, !8, i64 13496, !11, i64 13504, !8, i64 13512, !8, i64 13520, !8, i64 13528, !8, i64 13536, !8, i64 13544, !9, i64 13552}
!18 = !{!"nalunitheadermvcext_tag", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!19 = !{!8, !8, i64 0}
!20 = !{!9, !9, i64 0}
!21 = !{!7, !9, i64 372}
!22 = !{!7, !8, i64 8}
!23 = !{!17, !8, i64 13520}
!24 = !{!25, !8, i64 136}
!25 = !{!"storable_picture", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !9, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !13, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !9, i64 160, !26, i64 184, !9, i64 192, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !9, i64 300, !11, i64 308, !8, i64 312, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !8, i64 336, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !8, i64 376, !11, i64 384, !11, i64 388, !9, i64 392, !9, i64 400}
!26 = !{!"pic_motion_params_old", !8, i64 0}
!27 = !{!17, !8, i64 1248}
!28 = !{!29, !11, i64 0}
!29 = !{!"pix_pos", !11, i64 0, !11, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!30 = !{!31, !8, i64 8}
!31 = !{!"video_par", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 132120, !8, i64 699416, !9, i64 699424, !11, i64 848672, !11, i64 848676, !11, i64 848680, !11, i64 848684, !8, i64 848688, !8, i64 848696, !8, i64 848704, !11, i64 848712, !11, i64 848716, !11, i64 848720, !11, i64 848724, !11, i64 848728, !8, i64 848736, !8, i64 848744, !9, i64 848752, !11, i64 848776, !11, i64 848780, !11, i64 848784, !11, i64 848788, !11, i64 848792, !8, i64 848800, !9, i64 848808, !8, i64 848832, !8, i64 848840, !9, i64 848848, !11, i64 848872, !11, i64 848876, !8, i64 848880, !8, i64 848888, !9, i64 848896, !11, i64 848920, !8, i64 848928, !8, i64 848936, !11, i64 848944, !11, i64 848948, !11, i64 848952, !11, i64 848956, !11, i64 848960, !11, i64 848964, !11, i64 848968, !11, i64 848972, !11, i64 848976, !11, i64 848980, !11, i64 848984, !11, i64 848988, !11, i64 848992, !11, i64 848996, !11, i64 849000, !11, i64 849004, !11, i64 849008, !11, i64 849012, !11, i64 849016, !11, i64 849020, !11, i64 849024, !11, i64 849028, !11, i64 849032, !11, i64 849036, !13, i64 849040, !13, i64 849042, !9, i64 849044, !11, i64 849052, !11, i64 849056, !9, i64 849060, !9, i64 849072, !11, i64 849084, !11, i64 849088, !11, i64 849092, !11, i64 849096, !11, i64 849100, !11, i64 849104, !11, i64 849108, !11, i64 849112, !11, i64 849116, !11, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !11, i64 849196, !11, i64 849200, !11, i64 849204, !11, i64 849208, !11, i64 849212, !11, i64 849216, !11, i64 849220, !11, i64 849224, !11, i64 849228, !11, i64 849232, !11, i64 849236, !11, i64 849240, !11, i64 849244, !11, i64 849248, !11, i64 849252, !11, i64 849256, !11, i64 849260, !11, i64 849264, !11, i64 849268, !11, i64 849272, !11, i64 849276, !11, i64 849280, !11, i64 849284, !8, i64 849288, !8, i64 849296, !32, i64 849304, !32, i64 849624, !32, i64 849944, !32, i64 850264, !32, i64 850584, !32, i64 850904, !32, i64 851224, !32, i64 851544, !11, i64 851864, !11, i64 851868, !11, i64 851872, !35, i64 851880, !11, i64 851888, !9, i64 851892, !11, i64 855988, !11, i64 855992, !11, i64 855996, !11, i64 856000, !11, i64 856004, !11, i64 856008, !11, i64 856012, !8, i64 856016, !8, i64 856024, !8, i64 856032, !8, i64 856040, !8, i64 856048, !9, i64 856056, !8, i64 856456, !9, i64 856464, !8, i64 856488, !8, i64 856496, !8, i64 856504, !11, i64 856512, !8, i64 856520, !9, i64 856528, !8, i64 856608, !8, i64 856616, !8, i64 856624, !8, i64 856632, !11, i64 856640, !11, i64 856644, !11, i64 856648, !8, i64 856656, !8, i64 856664, !9, i64 856672, !9, i64 856688, !8, i64 856704, !8, i64 856712, !11, i64 856720, !8, i64 856728, !8, i64 856736, !8, i64 856744, !8, i64 856752, !8, i64 856760, !8, i64 856768, !8, i64 856776, !8, i64 856784, !8, i64 856792, !8, i64 856800, !8, i64 856808, !8, i64 856816, !11, i64 856824, !8, i64 856832, !11, i64 856840, !11, i64 856844, !11, i64 856848, !11, i64 856852, !11, i64 856856, !11, i64 856860, !11, i64 856864, !8, i64 856872}
!32 = !{!"image_data", !33, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!33 = !{!"frame_format", !11, i64 0, !11, i64 4, !34, i64 8, !9, i64 16, !9, i64 28, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !11, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !11, i64 124, !11, i64 128}
!34 = !{!"double", !9, i64 0}
!35 = !{!"long", !9, i64 0}
!36 = !{!37, !11, i64 2204}
!37 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !9, i64 24, !9, i64 72, !9, i64 456, !9, i64 1992, !9, i64 2016, !11, i64 2040, !11, i64 2044, !11, i64 2048, !9, i64 2052, !9, i64 2084, !9, i64 2116, !11, i64 2148, !11, i64 2152, !11, i64 2156, !8, i64 2160, !11, i64 2168, !11, i64 2172, !11, i64 2176, !11, i64 2180, !11, i64 2184, !11, i64 2188, !11, i64 2192, !11, i64 2196, !11, i64 2200, !11, i64 2204, !11, i64 2208}
!38 = !{!17, !8, i64 13544}
!39 = !{!29, !11, i64 4}
!40 = !{!29, !13, i64 14}
!41 = !{!29, !13, i64 12}
!42 = !{!13, !13, i64 0}
!43 = !{!11, !11, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
!47 = !{!17, !11, i64 108}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = distinct !{!51, !45}
!52 = distinct !{!52, !45}
!53 = distinct !{!53, !45}
