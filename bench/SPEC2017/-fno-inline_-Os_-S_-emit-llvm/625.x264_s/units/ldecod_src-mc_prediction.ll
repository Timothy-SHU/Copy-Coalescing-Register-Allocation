; ModuleID = 'ldecod_src/mc_prediction.c'
source_filename = "ldecod_src/mc_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
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
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [105 x i8] c"WARNING! Horizontal motion vector %d is out of allowed range {-8192, 8191} in picture %d, macroblock %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"WARNING! Vertical motion vector %d is out of allowed range {%d, %d} in picture %d, macroblock %d\0A\00", align 1
@str.3 = private unnamed_addr constant [62 x i8] c"list[ref_frame] is equal to 'no reference picture' before RAP\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @allocate_pred_mem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 83
  %3 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %2, i32 noundef 16, i32 noundef 16) #12
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 84
  %5 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %4, i32 noundef 16, i32 noundef 16) #12
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 86
  %8 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %7, i32 noundef 16, i32 noundef 16) #12
  %9 = add nsw i32 %6, %8
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 87
  %11 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %10, i32 noundef 16, i32 noundef 16) #12
  %12 = add nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 85
  %14 = tail call i32 @get_mem2Dint(ptr noundef nonnull %13, i32 noundef 21, i32 noundef 21) #12
  %15 = add nsw i32 %12, %14
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_pred_mem(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 85
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @free_mem2Dint(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 83
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  tail call void @free_mem2Dpel(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 84
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  tail call void @free_mem2Dpel(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 86
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  tail call void @free_mem2Dpel(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 87
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  tail call void @free_mem2Dpel(ptr noundef %11) #12
  ret void
}

; Function Attrs: optsize
declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @get_block_luma(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9, i32 noundef %10, i16 noundef zeroext %11, ptr nocapture noundef readonly %12) local_unnamed_addr #3 {
  %14 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 72
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %19 = load ptr, ptr %5, align 8, !tbaa !21
  %20 = trunc i16 %11 to i8
  %21 = mul nsw i32 %4, %3
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %19, i8 %20, i64 %23, i1 false)
  br label %105

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.macroblock, ptr %12, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 105
  %28 = load i32, ptr %27, align 8, !tbaa !25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %12, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.slice, ptr %31, i64 0, i32 46
  %33 = load i32, ptr %32, align 8, !tbaa !32
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 33
  %37 = load ptr, ptr %36, align 8, !tbaa !33
  %38 = zext nneg i32 %33 to i64
  %39 = getelementptr ptr, ptr %37, i64 %38
  %40 = getelementptr ptr, ptr %39, i64 -1
  br label %43

41:                                               ; preds = %30, %24
  %42 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 71
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %40, %35 ], [ %42, %41 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !21
  %46 = and i32 %1, 3
  %47 = and i32 %2, 3
  %48 = ashr i32 %1, 2
  %49 = ashr i32 %2, 2
  %50 = add nsw i32 %7, 2
  %51 = tail call fastcc i32 @iClip3(i32 noundef -18, i32 noundef %50, i32 noundef %48) #13
  %52 = add nsw i32 %8, 2
  %53 = tail call fastcc i32 @iClip3(i32 noundef -10, i32 noundef %52, i32 noundef %49) #13
  %54 = or i32 %2, %1
  %55 = and i32 %54, 3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %43
  %58 = load ptr, ptr %5, align 8, !tbaa !21
  %59 = sext i32 %53 to i64
  %60 = getelementptr inbounds ptr, ptr %45, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !21
  %62 = sext i32 %51 to i64
  %63 = getelementptr inbounds i16, ptr %61, i64 %62
  %64 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 67
  %65 = load i32, ptr %64, align 4, !tbaa !34
  tail call fastcc void @get_block_00(ptr noundef %58, ptr noundef %63, i32 noundef %65, i32 noundef %4) #13
  br label %105

66:                                               ; preds = %43
  %67 = icmp eq i32 %47, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  %69 = sext i32 %53 to i64
  %70 = getelementptr inbounds ptr, ptr %45, i64 %69
  switch i32 %46, label %73 [
    i32 1, label %71
    i32 2, label %72
  ]

71:                                               ; preds = %68
  tail call fastcc void @get_luma_10(ptr noundef %5, ptr noundef %70, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %10) #13
  br label %105

72:                                               ; preds = %68
  tail call fastcc void @get_luma_20(ptr noundef %5, ptr noundef %70, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %10) #13
  br label %105

73:                                               ; preds = %68
  tail call fastcc void @get_luma_30(ptr noundef %5, ptr noundef %70, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %10) #13
  br label %105

74:                                               ; preds = %66
  switch i32 %46, label %87 [
    i32 0, label %75
    i32 2, label %81
  ]

75:                                               ; preds = %74
  %76 = sext i32 %53 to i64
  %77 = getelementptr inbounds ptr, ptr %45, i64 %76
  switch i32 %47, label %80 [
    i32 1, label %78
    i32 2, label %79
  ]

78:                                               ; preds = %75
  tail call fastcc void @get_luma_01(ptr noundef %5, ptr noundef %77, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %6, i32 noundef %10) #13
  br label %105

79:                                               ; preds = %75
  tail call fastcc void @get_luma_02(ptr noundef %5, ptr noundef %77, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %6, i32 noundef %10) #13
  br label %105

80:                                               ; preds = %75
  tail call fastcc void @get_luma_03(ptr noundef %5, ptr noundef %77, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %6, i32 noundef %10) #13
  br label %105

81:                                               ; preds = %74
  %82 = sext i32 %53 to i64
  %83 = getelementptr inbounds ptr, ptr %45, i64 %82
  switch i32 %47, label %86 [
    i32 1, label %84
    i32 2, label %85
  ]

84:                                               ; preds = %81
  tail call fastcc void @get_luma_21(ptr noundef %5, ptr noundef %83, ptr noundef %9, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %10) #13
  br label %105

85:                                               ; preds = %81
  tail call fastcc void @get_luma_22(ptr noundef %5, ptr noundef %83, ptr noundef %9, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %10) #13
  br label %105

86:                                               ; preds = %81
  tail call fastcc void @get_luma_23(ptr noundef %5, ptr noundef %83, ptr noundef %9, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %10) #13
  br label %105

87:                                               ; preds = %74
  %88 = icmp eq i32 %47, 2
  %89 = icmp eq i32 %46, 1
  br i1 %88, label %90, label %95

90:                                               ; preds = %87
  %91 = sext i32 %53 to i64
  %92 = getelementptr inbounds ptr, ptr %45, i64 %91
  br i1 %89, label %93, label %94

93:                                               ; preds = %90
  tail call fastcc void @get_luma_12(ptr noundef %5, ptr noundef %92, ptr noundef %9, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %6, i32 noundef %10) #13
  br label %105

94:                                               ; preds = %90
  tail call fastcc void @get_luma_32(ptr noundef %5, ptr noundef %92, ptr noundef %9, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %6, i32 noundef %10) #13
  br label %105

95:                                               ; preds = %87
  %96 = icmp eq i32 %47, 1
  %97 = sext i32 %53 to i64
  %98 = getelementptr inbounds ptr, ptr %45, i64 %97
  br i1 %89, label %99, label %102

99:                                               ; preds = %95
  br i1 %96, label %100, label %101

100:                                              ; preds = %99
  tail call fastcc void @get_luma_11(ptr noundef %5, ptr noundef %98, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %6, i32 noundef %10) #13
  br label %105

101:                                              ; preds = %99
  tail call fastcc void @get_luma_13(ptr noundef %5, ptr noundef %98, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %6, i32 noundef %10) #13
  br label %105

102:                                              ; preds = %95
  br i1 %96, label %103, label %104

103:                                              ; preds = %102
  tail call fastcc void @get_luma_31(ptr noundef %5, ptr noundef %98, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %6, i32 noundef %10) #13
  br label %105

104:                                              ; preds = %102
  tail call fastcc void @get_luma_33(ptr noundef %5, ptr noundef %98, i32 noundef %4, i32 noundef %3, i32 noundef %51, i32 noundef %6, i32 noundef %10) #13
  br label %105

105:                                              ; preds = %57, %79, %80, %78, %94, %93, %103, %104, %100, %101, %84, %86, %85, %71, %73, %72, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = tail call fastcc i32 @imax(i32 noundef %2, i32 noundef %0) #13
  %5 = tail call fastcc i32 @imin(i32 noundef %4, i32 noundef %1) #13
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_block_00(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = phi ptr [ %0, %6 ], [ %14, %8 ]
  %11 = phi ptr [ %1, %6 ], [ %15, %8 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %10, ptr noundef nonnull align 2 dereferenceable(32) %11, i64 32, i1 false)
  %12 = getelementptr inbounds i16, ptr %10, i64 16
  %13 = getelementptr inbounds i16, ptr %11, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %12, ptr noundef nonnull align 2 dereferenceable(32) %13, i64 32, i1 false)
  %14 = getelementptr inbounds i16, ptr %10, i64 32
  %15 = getelementptr inbounds i16, ptr %13, i64 %7
  %16 = add nuw nsw i32 %9, 2
  %17 = icmp slt i32 %16, %3
  br i1 %17, label %8, label %18, !llvm.loop !35

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_10(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 {
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %73

8:                                                ; preds = %6
  %9 = sext i32 %4 to i64
  %10 = icmp sgt i32 %3, 0
  %11 = zext nneg i32 %2 to i64
  br label %12

12:                                               ; preds = %8, %70
  %13 = phi i64 [ 0, %8 ], [ %71, %70 ]
  br i1 %10, label %14, label %70

14:                                               ; preds = %12
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds ptr, ptr %1, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = getelementptr i16, ptr %18, i64 %9
  %20 = getelementptr inbounds i16, ptr %19, i64 3
  %21 = getelementptr inbounds i16, ptr %19, i64 2
  %22 = getelementptr i16, ptr %19, i64 -1
  %23 = getelementptr i16, ptr %19, i64 -2
  br label %24

24:                                               ; preds = %14, %24
  %25 = phi ptr [ %33, %24 ], [ %23, %14 ]
  %26 = phi i32 [ %68, %24 ], [ 0, %14 ]
  %27 = phi ptr [ %32, %24 ], [ %19, %14 ]
  %28 = phi ptr [ %67, %24 ], [ %16, %14 ]
  %29 = phi ptr [ %36, %24 ], [ %20, %14 ]
  %30 = phi ptr [ %42, %24 ], [ %21, %14 ]
  %31 = phi ptr [ %39, %24 ], [ %22, %14 ]
  %32 = getelementptr i16, ptr %27, i64 1
  %33 = getelementptr inbounds i16, ptr %25, i64 1
  %34 = load i16, ptr %25, align 2, !tbaa !37
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds i16, ptr %29, i64 1
  %37 = load i16, ptr %29, align 2, !tbaa !37
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds i16, ptr %31, i64 1
  %40 = load i16, ptr %31, align 2, !tbaa !37
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i16, ptr %30, i64 1
  %43 = load i16, ptr %30, align 2, !tbaa !37
  %44 = zext i16 %43 to i32
  %45 = add nuw nsw i32 %44, %41
  %46 = mul nsw i32 %45, -5
  %47 = load i16, ptr %27, align 2, !tbaa !37
  %48 = zext i16 %47 to i32
  %49 = load i16, ptr %32, align 2, !tbaa !37
  %50 = zext i16 %49 to i32
  %51 = add nuw nsw i32 %50, %48
  %52 = mul nuw nsw i32 %51, 20
  %53 = add nuw nsw i32 %35, 16
  %54 = add nuw nsw i32 %53, %38
  %55 = add nsw i32 %54, %46
  %56 = add nsw i32 %55, %52
  %57 = ashr i32 %56, 5
  %58 = tail call fastcc i32 @iClip1(i32 noundef %5, i32 noundef %57) #13
  %59 = trunc i32 %58 to i16
  store i16 %59, ptr %28, align 2, !tbaa !37
  %60 = and i32 %58, 65535
  %61 = load i16, ptr %27, align 2, !tbaa !37
  %62 = zext i16 %61 to i32
  %63 = add nuw nsw i32 %60, 1
  %64 = add nuw nsw i32 %63, %62
  %65 = lshr i32 %64, 1
  %66 = trunc i32 %65 to i16
  store i16 %66, ptr %28, align 2, !tbaa !37
  %67 = getelementptr inbounds i16, ptr %28, i64 1
  %68 = add nuw nsw i32 %26, 1
  %69 = icmp eq i32 %68, %3
  br i1 %69, label %70, label %24, !llvm.loop !38

70:                                               ; preds = %24, %12
  %71 = add nuw nsw i64 %13, 1
  %72 = icmp eq i64 %71, %11
  br i1 %72, label %73, label %12, !llvm.loop !39

73:                                               ; preds = %70, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_20(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 {
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %66

8:                                                ; preds = %6
  %9 = sext i32 %4 to i64
  %10 = icmp sgt i32 %3, 0
  %11 = zext nneg i32 %2 to i64
  br label %12

12:                                               ; preds = %8, %63
  %13 = phi i64 [ 0, %8 ], [ %64, %63 ]
  br i1 %10, label %14, label %63

14:                                               ; preds = %12
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds ptr, ptr %1, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = getelementptr i16, ptr %18, i64 %9
  %20 = getelementptr inbounds i16, ptr %19, i64 3
  %21 = getelementptr inbounds i16, ptr %19, i64 2
  %22 = getelementptr i16, ptr %19, i64 -1
  %23 = getelementptr i16, ptr %19, i64 -2
  br label %24

24:                                               ; preds = %14, %24
  %25 = phi ptr [ %33, %24 ], [ %23, %14 ]
  %26 = phi i32 [ %61, %24 ], [ 0, %14 ]
  %27 = phi ptr [ %60, %24 ], [ %16, %14 ]
  %28 = phi ptr [ %36, %24 ], [ %20, %14 ]
  %29 = phi ptr [ %42, %24 ], [ %21, %14 ]
  %30 = phi ptr [ %32, %24 ], [ %19, %14 ]
  %31 = phi ptr [ %39, %24 ], [ %22, %14 ]
  %32 = getelementptr i16, ptr %30, i64 1
  %33 = getelementptr inbounds i16, ptr %25, i64 1
  %34 = load i16, ptr %25, align 2, !tbaa !37
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds i16, ptr %28, i64 1
  %37 = load i16, ptr %28, align 2, !tbaa !37
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds i16, ptr %31, i64 1
  %40 = load i16, ptr %31, align 2, !tbaa !37
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i16, ptr %29, i64 1
  %43 = load i16, ptr %29, align 2, !tbaa !37
  %44 = zext i16 %43 to i32
  %45 = add nuw nsw i32 %44, %41
  %46 = mul nsw i32 %45, -5
  %47 = load i16, ptr %30, align 2, !tbaa !37
  %48 = zext i16 %47 to i32
  %49 = load i16, ptr %32, align 2, !tbaa !37
  %50 = zext i16 %49 to i32
  %51 = add nuw nsw i32 %50, %48
  %52 = mul nuw nsw i32 %51, 20
  %53 = add nuw nsw i32 %35, 16
  %54 = add nuw nsw i32 %53, %38
  %55 = add nsw i32 %54, %46
  %56 = add nsw i32 %55, %52
  %57 = ashr i32 %56, 5
  %58 = tail call fastcc i32 @iClip1(i32 noundef %5, i32 noundef %57) #13
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds i16, ptr %27, i64 1
  store i16 %59, ptr %27, align 2, !tbaa !37
  %61 = add nuw nsw i32 %26, 1
  %62 = icmp eq i32 %61, %3
  br i1 %62, label %63, label %24, !llvm.loop !40

63:                                               ; preds = %24, %12
  %64 = add nuw nsw i64 %13, 1
  %65 = icmp eq i64 %64, %11
  br i1 %65, label %66, label %12, !llvm.loop !41

66:                                               ; preds = %63, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_30(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 {
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %73

8:                                                ; preds = %6
  %9 = sext i32 %4 to i64
  %10 = icmp sgt i32 %3, 0
  %11 = zext nneg i32 %2 to i64
  br label %12

12:                                               ; preds = %8, %70
  %13 = phi i64 [ 0, %8 ], [ %71, %70 ]
  br i1 %10, label %14, label %70

14:                                               ; preds = %12
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds ptr, ptr %1, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = getelementptr i16, ptr %18, i64 %9
  %20 = getelementptr inbounds i16, ptr %19, i64 3
  %21 = getelementptr inbounds i16, ptr %19, i64 2
  %22 = getelementptr i16, ptr %19, i64 -1
  %23 = getelementptr i16, ptr %19, i64 -2
  br label %24

24:                                               ; preds = %14, %24
  %25 = phi ptr [ %33, %24 ], [ %23, %14 ]
  %26 = phi i32 [ %68, %24 ], [ 0, %14 ]
  %27 = phi ptr [ %32, %24 ], [ %19, %14 ]
  %28 = phi ptr [ %67, %24 ], [ %16, %14 ]
  %29 = phi ptr [ %36, %24 ], [ %20, %14 ]
  %30 = phi ptr [ %42, %24 ], [ %21, %14 ]
  %31 = phi ptr [ %39, %24 ], [ %22, %14 ]
  %32 = getelementptr i16, ptr %27, i64 1
  %33 = getelementptr inbounds i16, ptr %25, i64 1
  %34 = load i16, ptr %25, align 2, !tbaa !37
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds i16, ptr %29, i64 1
  %37 = load i16, ptr %29, align 2, !tbaa !37
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds i16, ptr %31, i64 1
  %40 = load i16, ptr %31, align 2, !tbaa !37
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i16, ptr %30, i64 1
  %43 = load i16, ptr %30, align 2, !tbaa !37
  %44 = zext i16 %43 to i32
  %45 = add nuw nsw i32 %44, %41
  %46 = mul nsw i32 %45, -5
  %47 = load i16, ptr %27, align 2, !tbaa !37
  %48 = zext i16 %47 to i32
  %49 = load i16, ptr %32, align 2, !tbaa !37
  %50 = zext i16 %49 to i32
  %51 = add nuw nsw i32 %50, %48
  %52 = mul nuw nsw i32 %51, 20
  %53 = add nuw nsw i32 %35, 16
  %54 = add nuw nsw i32 %53, %38
  %55 = add nsw i32 %54, %46
  %56 = add nsw i32 %55, %52
  %57 = ashr i32 %56, 5
  %58 = tail call fastcc i32 @iClip1(i32 noundef %5, i32 noundef %57) #13
  %59 = trunc i32 %58 to i16
  store i16 %59, ptr %28, align 2, !tbaa !37
  %60 = and i32 %58, 65535
  %61 = load i16, ptr %32, align 2, !tbaa !37
  %62 = zext i16 %61 to i32
  %63 = add nuw nsw i32 %60, 1
  %64 = add nuw nsw i32 %63, %62
  %65 = lshr i32 %64, 1
  %66 = trunc i32 %65 to i16
  store i16 %66, ptr %28, align 2, !tbaa !37
  %67 = getelementptr inbounds i16, ptr %28, i64 1
  %68 = add nuw nsw i32 %26, 1
  %69 = icmp eq i32 %68, %3
  br i1 %69, label %70, label %24, !llvm.loop !42

70:                                               ; preds = %24, %12
  %71 = add nuw nsw i64 %13, 1
  %72 = icmp eq i64 %71, %11
  br i1 %72, label %73, label %12, !llvm.loop !43

73:                                               ; preds = %70, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_01(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = sext i32 %4 to i64
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %88

10:                                               ; preds = %7
  %11 = getelementptr inbounds ptr, ptr %1, i64 -2
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = getelementptr inbounds i16, ptr %12, i64 %8
  %14 = sext i32 %5 to i64
  %15 = icmp sgt i32 %3, 0
  %16 = sext i32 %3 to i64
  %17 = sub nsw i64 0, %16
  %18 = zext nneg i32 %2 to i64
  br label %19

19:                                               ; preds = %10, %84
  %20 = phi i64 [ 0, %10 ], [ %23, %84 ]
  %21 = phi ptr [ %13, %10 ], [ %86, %84 ]
  %22 = getelementptr inbounds i16, ptr %21, i64 %14
  %23 = add nuw nsw i64 %20, 1
  br i1 %15, label %24, label %84

24:                                               ; preds = %19
  %25 = getelementptr inbounds ptr, ptr %1, i64 %20
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = getelementptr inbounds i16, ptr %26, i64 %8
  %28 = getelementptr inbounds ptr, ptr %0, i64 %20
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = getelementptr inbounds i16, ptr %22, i64 %14
  %31 = getelementptr inbounds i16, ptr %30, i64 %14
  %32 = getelementptr inbounds i16, ptr %31, i64 %14
  %33 = getelementptr inbounds i16, ptr %32, i64 %14
  br label %34

34:                                               ; preds = %24, %34
  %35 = phi ptr [ %44, %34 ], [ %21, %24 ]
  %36 = phi i32 [ %82, %34 ], [ 0, %24 ]
  %37 = phi ptr [ %74, %34 ], [ %27, %24 ]
  %38 = phi ptr [ %81, %34 ], [ %29, %24 ]
  %39 = phi ptr [ %47, %34 ], [ %33, %24 ]
  %40 = phi ptr [ %53, %34 ], [ %32, %24 ]
  %41 = phi ptr [ %61, %34 ], [ %31, %24 ]
  %42 = phi ptr [ %58, %34 ], [ %30, %24 ]
  %43 = phi ptr [ %50, %34 ], [ %22, %24 ]
  %44 = getelementptr inbounds i16, ptr %35, i64 1
  %45 = load i16, ptr %35, align 2, !tbaa !37
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds i16, ptr %39, i64 1
  %48 = load i16, ptr %39, align 2, !tbaa !37
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds i16, ptr %43, i64 1
  %51 = load i16, ptr %43, align 2, !tbaa !37
  %52 = zext i16 %51 to i32
  %53 = getelementptr inbounds i16, ptr %40, i64 1
  %54 = load i16, ptr %40, align 2, !tbaa !37
  %55 = zext i16 %54 to i32
  %56 = add nuw nsw i32 %55, %52
  %57 = mul nsw i32 %56, -5
  %58 = getelementptr inbounds i16, ptr %42, i64 1
  %59 = load i16, ptr %42, align 2, !tbaa !37
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds i16, ptr %41, i64 1
  %62 = load i16, ptr %41, align 2, !tbaa !37
  %63 = zext i16 %62 to i32
  %64 = add nuw nsw i32 %63, %60
  %65 = mul nuw nsw i32 %64, 20
  %66 = add nuw nsw i32 %46, 16
  %67 = add nuw nsw i32 %66, %49
  %68 = add nsw i32 %67, %57
  %69 = add nsw i32 %68, %65
  %70 = ashr i32 %69, 5
  %71 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %70) #13
  %72 = trunc i32 %71 to i16
  store i16 %72, ptr %38, align 2, !tbaa !37
  %73 = and i32 %71, 65535
  %74 = getelementptr inbounds i16, ptr %37, i64 1
  %75 = load i16, ptr %37, align 2, !tbaa !37
  %76 = zext i16 %75 to i32
  %77 = add nuw nsw i32 %73, 1
  %78 = add nuw nsw i32 %77, %76
  %79 = lshr i32 %78, 1
  %80 = trunc i32 %79 to i16
  store i16 %80, ptr %38, align 2, !tbaa !37
  %81 = getelementptr inbounds i16, ptr %38, i64 1
  %82 = add nuw nsw i32 %36, 1
  %83 = icmp eq i32 %82, %3
  br i1 %83, label %84, label %34, !llvm.loop !44

84:                                               ; preds = %34, %19
  %85 = phi ptr [ %22, %19 ], [ %50, %34 ]
  %86 = getelementptr inbounds i16, ptr %85, i64 %17
  %87 = icmp eq i64 %23, %18
  br i1 %87, label %88, label %19, !llvm.loop !45

88:                                               ; preds = %84, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_02(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %76

9:                                                ; preds = %7
  %10 = getelementptr inbounds ptr, ptr %1, i64 -2
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = sext i32 %5 to i64
  %15 = icmp sgt i32 %3, 0
  %16 = sext i32 %3 to i64
  %17 = sub nsw i64 0, %16
  %18 = zext nneg i32 %2 to i64
  br label %19

19:                                               ; preds = %9, %71
  %20 = phi i64 [ 0, %9 ], [ %74, %71 ]
  %21 = phi ptr [ %13, %9 ], [ %73, %71 ]
  %22 = getelementptr inbounds i16, ptr %21, i64 %14
  br i1 %15, label %23, label %71

23:                                               ; preds = %19
  %24 = getelementptr inbounds ptr, ptr %0, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = getelementptr inbounds i16, ptr %22, i64 %14
  %27 = getelementptr inbounds i16, ptr %26, i64 %14
  %28 = getelementptr inbounds i16, ptr %27, i64 %14
  %29 = getelementptr inbounds i16, ptr %28, i64 %14
  br label %30

30:                                               ; preds = %23, %30
  %31 = phi ptr [ %39, %30 ], [ %21, %23 ]
  %32 = phi i32 [ %69, %30 ], [ 0, %23 ]
  %33 = phi ptr [ %68, %30 ], [ %25, %23 ]
  %34 = phi ptr [ %42, %30 ], [ %29, %23 ]
  %35 = phi ptr [ %48, %30 ], [ %28, %23 ]
  %36 = phi ptr [ %56, %30 ], [ %27, %23 ]
  %37 = phi ptr [ %53, %30 ], [ %26, %23 ]
  %38 = phi ptr [ %45, %30 ], [ %22, %23 ]
  %39 = getelementptr inbounds i16, ptr %31, i64 1
  %40 = load i16, ptr %31, align 2, !tbaa !37
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i16, ptr %34, i64 1
  %43 = load i16, ptr %34, align 2, !tbaa !37
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds i16, ptr %38, i64 1
  %46 = load i16, ptr %38, align 2, !tbaa !37
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds i16, ptr %35, i64 1
  %49 = load i16, ptr %35, align 2, !tbaa !37
  %50 = zext i16 %49 to i32
  %51 = add nuw nsw i32 %50, %47
  %52 = mul nsw i32 %51, -5
  %53 = getelementptr inbounds i16, ptr %37, i64 1
  %54 = load i16, ptr %37, align 2, !tbaa !37
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds i16, ptr %36, i64 1
  %57 = load i16, ptr %36, align 2, !tbaa !37
  %58 = zext i16 %57 to i32
  %59 = add nuw nsw i32 %58, %55
  %60 = mul nuw nsw i32 %59, 20
  %61 = add nuw nsw i32 %41, 16
  %62 = add nuw nsw i32 %61, %44
  %63 = add nsw i32 %62, %52
  %64 = add nsw i32 %63, %60
  %65 = ashr i32 %64, 5
  %66 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %65) #13
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds i16, ptr %33, i64 1
  store i16 %67, ptr %33, align 2, !tbaa !37
  %69 = add nuw nsw i32 %32, 1
  %70 = icmp eq i32 %69, %3
  br i1 %70, label %71, label %30, !llvm.loop !46

71:                                               ; preds = %30, %19
  %72 = phi ptr [ %22, %19 ], [ %45, %30 ]
  %73 = getelementptr inbounds i16, ptr %72, i64 %17
  %74 = add nuw nsw i64 %20, 1
  %75 = icmp eq i64 %74, %18
  br i1 %75, label %76, label %19, !llvm.loop !47

76:                                               ; preds = %71, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_03(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = sext i32 %4 to i64
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %90

10:                                               ; preds = %7
  %11 = getelementptr inbounds ptr, ptr %1, i64 -2
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = getelementptr inbounds i16, ptr %12, i64 %8
  %14 = sext i32 %5 to i64
  %15 = icmp sgt i32 %3, 0
  %16 = sext i32 %3 to i64
  %17 = sub nsw i64 0, %16
  %18 = zext nneg i32 %2 to i64
  br label %19

19:                                               ; preds = %10, %85
  %20 = phi i64 [ 0, %10 ], [ %88, %85 ]
  %21 = phi i64 [ 1, %10 ], [ %24, %85 ]
  %22 = phi ptr [ %13, %10 ], [ %87, %85 ]
  %23 = getelementptr inbounds i16, ptr %22, i64 %14
  %24 = add nuw nsw i64 %21, 1
  br i1 %15, label %25, label %85

25:                                               ; preds = %19
  %26 = getelementptr inbounds ptr, ptr %1, i64 %21
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = getelementptr inbounds i16, ptr %27, i64 %8
  %29 = getelementptr inbounds ptr, ptr %0, i64 %20
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = getelementptr inbounds i16, ptr %23, i64 %14
  %32 = getelementptr inbounds i16, ptr %31, i64 %14
  %33 = getelementptr inbounds i16, ptr %32, i64 %14
  %34 = getelementptr inbounds i16, ptr %33, i64 %14
  br label %35

35:                                               ; preds = %25, %35
  %36 = phi ptr [ %45, %35 ], [ %22, %25 ]
  %37 = phi i32 [ %83, %35 ], [ 0, %25 ]
  %38 = phi ptr [ %75, %35 ], [ %28, %25 ]
  %39 = phi ptr [ %82, %35 ], [ %30, %25 ]
  %40 = phi ptr [ %48, %35 ], [ %34, %25 ]
  %41 = phi ptr [ %54, %35 ], [ %33, %25 ]
  %42 = phi ptr [ %62, %35 ], [ %32, %25 ]
  %43 = phi ptr [ %59, %35 ], [ %31, %25 ]
  %44 = phi ptr [ %51, %35 ], [ %23, %25 ]
  %45 = getelementptr inbounds i16, ptr %36, i64 1
  %46 = load i16, ptr %36, align 2, !tbaa !37
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds i16, ptr %40, i64 1
  %49 = load i16, ptr %40, align 2, !tbaa !37
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds i16, ptr %44, i64 1
  %52 = load i16, ptr %44, align 2, !tbaa !37
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds i16, ptr %41, i64 1
  %55 = load i16, ptr %41, align 2, !tbaa !37
  %56 = zext i16 %55 to i32
  %57 = add nuw nsw i32 %56, %53
  %58 = mul nsw i32 %57, -5
  %59 = getelementptr inbounds i16, ptr %43, i64 1
  %60 = load i16, ptr %43, align 2, !tbaa !37
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds i16, ptr %42, i64 1
  %63 = load i16, ptr %42, align 2, !tbaa !37
  %64 = zext i16 %63 to i32
  %65 = add nuw nsw i32 %64, %61
  %66 = mul nuw nsw i32 %65, 20
  %67 = add nuw nsw i32 %47, 16
  %68 = add nuw nsw i32 %67, %50
  %69 = add nsw i32 %68, %58
  %70 = add nsw i32 %69, %66
  %71 = ashr i32 %70, 5
  %72 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %71) #13
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %39, align 2, !tbaa !37
  %74 = and i32 %72, 65535
  %75 = getelementptr inbounds i16, ptr %38, i64 1
  %76 = load i16, ptr %38, align 2, !tbaa !37
  %77 = zext i16 %76 to i32
  %78 = add nuw nsw i32 %74, 1
  %79 = add nuw nsw i32 %78, %77
  %80 = lshr i32 %79, 1
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr %39, align 2, !tbaa !37
  %82 = getelementptr inbounds i16, ptr %39, i64 1
  %83 = add nuw nsw i32 %37, 1
  %84 = icmp eq i32 %83, %3
  br i1 %84, label %85, label %35, !llvm.loop !48

85:                                               ; preds = %35, %19
  %86 = phi ptr [ %23, %19 ], [ %51, %35 ]
  %87 = getelementptr inbounds i16, ptr %86, i64 %17
  %88 = add nuw nsw i64 %20, 1
  %89 = icmp eq i64 %88, %18
  br i1 %89, label %90, label %19, !llvm.loop !49

90:                                               ; preds = %85, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_21(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = icmp sgt i32 %3, -5
  br i1 %8, label %9, label %144

9:                                                ; preds = %7
  %10 = sext i32 %5 to i64
  %11 = icmp sgt i32 %4, 0
  %12 = add i32 %3, 4
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %14 = add nuw i32 %13, 1
  %15 = zext i32 %14 to i64
  br label %22

16:                                               ; preds = %72
  %17 = icmp sgt i32 %3, 0
  br i1 %17, label %18, label %144

18:                                               ; preds = %16
  %19 = icmp sgt i32 %4, 0
  %20 = zext nneg i32 %3 to i64
  %21 = load ptr, ptr %2, align 8, !tbaa !21
  br label %77

22:                                               ; preds = %9, %72
  %23 = phi i64 [ 0, %9 ], [ %73, %72 ]
  %24 = phi i64 [ -2, %9 ], [ %25, %72 ]
  %25 = add nsw i64 %24, 1
  br i1 %11, label %26, label %72

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %2, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = getelementptr inbounds ptr, ptr %1, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = getelementptr i16, ptr %30, i64 %10
  %32 = getelementptr inbounds i16, ptr %31, i64 3
  %33 = getelementptr inbounds i16, ptr %31, i64 2
  %34 = getelementptr i16, ptr %31, i64 -1
  %35 = getelementptr i16, ptr %31, i64 -2
  %36 = load i16, ptr %31, align 2, !tbaa !37
  br label %37

37:                                               ; preds = %26, %37
  %38 = phi i16 [ %64, %37 ], [ %36, %26 ]
  %39 = phi i32 [ %70, %37 ], [ 0, %26 ]
  %40 = phi ptr [ %50, %37 ], [ %32, %26 ]
  %41 = phi ptr [ %57, %37 ], [ %33, %26 ]
  %42 = phi ptr [ %46, %37 ], [ %31, %26 ]
  %43 = phi ptr [ %54, %37 ], [ %34, %26 ]
  %44 = phi ptr [ %47, %37 ], [ %35, %26 ]
  %45 = phi ptr [ %69, %37 ], [ %28, %26 ]
  %46 = getelementptr i16, ptr %42, i64 1
  %47 = getelementptr inbounds i16, ptr %44, i64 1
  %48 = load i16, ptr %44, align 2, !tbaa !37
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds i16, ptr %40, i64 1
  %51 = load i16, ptr %40, align 2, !tbaa !37
  %52 = zext i16 %51 to i32
  %53 = add nuw nsw i32 %52, %49
  %54 = getelementptr inbounds i16, ptr %43, i64 1
  %55 = load i16, ptr %43, align 2, !tbaa !37
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds i16, ptr %41, i64 1
  %58 = load i16, ptr %41, align 2, !tbaa !37
  %59 = zext i16 %58 to i32
  %60 = add nuw nsw i32 %59, %56
  %61 = mul nsw i32 %60, -5
  %62 = add nsw i32 %53, %61
  %63 = zext i16 %38 to i32
  %64 = load i16, ptr %46, align 2, !tbaa !37
  %65 = zext i16 %64 to i32
  %66 = add nuw nsw i32 %65, %63
  %67 = mul nuw nsw i32 %66, 20
  %68 = add nsw i32 %62, %67
  %69 = getelementptr inbounds i32, ptr %45, i64 1
  store i32 %68, ptr %45, align 4, !tbaa !50
  %70 = add nuw nsw i32 %39, 1
  %71 = icmp eq i32 %70, %4
  br i1 %71, label %72, label %37, !llvm.loop !51

72:                                               ; preds = %37, %22
  %73 = add nuw nsw i64 %23, 1
  %74 = icmp eq i64 %73, %15
  br i1 %74, label %16, label %22, !llvm.loop !52

75:                                               ; preds = %99, %77
  %76 = icmp eq i64 %82, %20
  br i1 %76, label %144, label %77, !llvm.loop !53

77:                                               ; preds = %18, %75
  %78 = phi ptr [ %21, %18 ], [ %84, %75 ]
  %79 = phi i64 [ 0, %18 ], [ %82, %75 ]
  %80 = phi i64 [ 2, %18 ], [ %81, %75 ]
  %81 = add nuw nsw i64 %80, 1
  %82 = add nuw nsw i64 %79, 1
  %83 = getelementptr inbounds ptr, ptr %2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !21
  br i1 %19, label %85, label %75

85:                                               ; preds = %77
  %86 = getelementptr inbounds ptr, ptr %0, i64 %79
  %87 = load ptr, ptr %86, align 8, !tbaa !21
  %88 = getelementptr inbounds ptr, ptr %2, i64 %79
  %89 = getelementptr ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8, !tbaa !21
  %91 = getelementptr ptr, ptr %88, i64 4
  %92 = load ptr, ptr %91, align 8, !tbaa !21
  %93 = getelementptr ptr, ptr %88, i64 3
  %94 = load ptr, ptr %93, align 8, !tbaa !21
  %95 = getelementptr ptr, ptr %88, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !21
  %97 = getelementptr inbounds ptr, ptr %2, i64 %80
  %98 = load ptr, ptr %97, align 8, !tbaa !21
  br label %99

99:                                               ; preds = %85, %99
  %100 = phi i32 [ %142, %99 ], [ 0, %85 ]
  %101 = phi ptr [ %141, %99 ], [ %87, %85 ]
  %102 = phi ptr [ %111, %99 ], [ %90, %85 ]
  %103 = phi ptr [ %115, %99 ], [ %92, %85 ]
  %104 = phi ptr [ %121, %99 ], [ %94, %85 ]
  %105 = phi ptr [ %119, %99 ], [ %96, %85 ]
  %106 = phi ptr [ %113, %99 ], [ %84, %85 ]
  %107 = phi ptr [ %109, %99 ], [ %78, %85 ]
  %108 = phi ptr [ %132, %99 ], [ %98, %85 ]
  %109 = getelementptr inbounds i32, ptr %107, i64 1
  %110 = load i32, ptr %107, align 4, !tbaa !50
  %111 = getelementptr inbounds i32, ptr %102, i64 1
  %112 = load i32, ptr %102, align 4, !tbaa !50
  %113 = getelementptr inbounds i32, ptr %106, i64 1
  %114 = load i32, ptr %106, align 4, !tbaa !50
  %115 = getelementptr inbounds i32, ptr %103, i64 1
  %116 = load i32, ptr %103, align 4, !tbaa !50
  %117 = add nsw i32 %116, %114
  %118 = mul i32 %117, -5
  %119 = getelementptr inbounds i32, ptr %105, i64 1
  %120 = load i32, ptr %105, align 4, !tbaa !50
  %121 = getelementptr inbounds i32, ptr %104, i64 1
  %122 = load i32, ptr %104, align 4, !tbaa !50
  %123 = add nsw i32 %122, %120
  %124 = mul nsw i32 %123, 20
  %125 = add i32 %110, 512
  %126 = add i32 %125, %112
  %127 = add i32 %126, %118
  %128 = add i32 %127, %124
  %129 = ashr i32 %128, 10
  %130 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %129) #13
  %131 = and i32 %130, 65535
  %132 = getelementptr inbounds i32, ptr %108, i64 1
  %133 = load i32, ptr %108, align 4, !tbaa !50
  %134 = add nsw i32 %133, 16
  %135 = ashr i32 %134, 5
  %136 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %135) #13
  %137 = add nuw nsw i32 %131, 1
  %138 = add i32 %137, %136
  %139 = lshr i32 %138, 1
  %140 = trunc i32 %139 to i16
  store i16 %140, ptr %101, align 2, !tbaa !37
  %141 = getelementptr inbounds i16, ptr %101, i64 1
  %142 = add nuw nsw i32 %100, 1
  %143 = icmp eq i32 %142, %4
  br i1 %143, label %75, label %99, !llvm.loop !54

144:                                              ; preds = %75, %7, %16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_22(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = icmp sgt i32 %3, -5
  br i1 %8, label %9, label %130

9:                                                ; preds = %7
  %10 = sext i32 %5 to i64
  %11 = icmp sgt i32 %4, 0
  %12 = add i32 %3, 4
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %14 = add nuw i32 %13, 1
  %15 = zext i32 %14 to i64
  br label %22

16:                                               ; preds = %72
  %17 = icmp sgt i32 %3, 0
  br i1 %17, label %18, label %130

18:                                               ; preds = %16
  %19 = icmp sgt i32 %4, 0
  %20 = zext nneg i32 %3 to i64
  %21 = load ptr, ptr %2, align 8, !tbaa !21
  br label %77

22:                                               ; preds = %9, %72
  %23 = phi i64 [ 0, %9 ], [ %73, %72 ]
  %24 = phi i64 [ -2, %9 ], [ %25, %72 ]
  %25 = add nsw i64 %24, 1
  br i1 %11, label %26, label %72

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %2, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = getelementptr inbounds ptr, ptr %1, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = getelementptr i16, ptr %30, i64 %10
  %32 = getelementptr inbounds i16, ptr %31, i64 3
  %33 = getelementptr inbounds i16, ptr %31, i64 2
  %34 = getelementptr i16, ptr %31, i64 -1
  %35 = getelementptr i16, ptr %31, i64 -2
  %36 = load i16, ptr %31, align 2, !tbaa !37
  br label %37

37:                                               ; preds = %26, %37
  %38 = phi i16 [ %64, %37 ], [ %36, %26 ]
  %39 = phi i32 [ %70, %37 ], [ 0, %26 ]
  %40 = phi ptr [ %50, %37 ], [ %32, %26 ]
  %41 = phi ptr [ %57, %37 ], [ %33, %26 ]
  %42 = phi ptr [ %46, %37 ], [ %31, %26 ]
  %43 = phi ptr [ %54, %37 ], [ %34, %26 ]
  %44 = phi ptr [ %47, %37 ], [ %35, %26 ]
  %45 = phi ptr [ %69, %37 ], [ %28, %26 ]
  %46 = getelementptr i16, ptr %42, i64 1
  %47 = getelementptr inbounds i16, ptr %44, i64 1
  %48 = load i16, ptr %44, align 2, !tbaa !37
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds i16, ptr %40, i64 1
  %51 = load i16, ptr %40, align 2, !tbaa !37
  %52 = zext i16 %51 to i32
  %53 = add nuw nsw i32 %52, %49
  %54 = getelementptr inbounds i16, ptr %43, i64 1
  %55 = load i16, ptr %43, align 2, !tbaa !37
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds i16, ptr %41, i64 1
  %58 = load i16, ptr %41, align 2, !tbaa !37
  %59 = zext i16 %58 to i32
  %60 = add nuw nsw i32 %59, %56
  %61 = mul nsw i32 %60, -5
  %62 = add nsw i32 %53, %61
  %63 = zext i16 %38 to i32
  %64 = load i16, ptr %46, align 2, !tbaa !37
  %65 = zext i16 %64 to i32
  %66 = add nuw nsw i32 %65, %63
  %67 = mul nuw nsw i32 %66, 20
  %68 = add nsw i32 %62, %67
  %69 = getelementptr inbounds i32, ptr %45, i64 1
  store i32 %68, ptr %45, align 4, !tbaa !50
  %70 = add nuw nsw i32 %39, 1
  %71 = icmp eq i32 %70, %4
  br i1 %71, label %72, label %37, !llvm.loop !55

72:                                               ; preds = %37, %22
  %73 = add nuw nsw i64 %23, 1
  %74 = icmp eq i64 %73, %15
  br i1 %74, label %16, label %22, !llvm.loop !56

75:                                               ; preds = %95, %77
  %76 = icmp eq i64 %80, %20
  br i1 %76, label %130, label %77, !llvm.loop !57

77:                                               ; preds = %18, %75
  %78 = phi ptr [ %21, %18 ], [ %82, %75 ]
  %79 = phi i64 [ 0, %18 ], [ %80, %75 ]
  %80 = add nuw nsw i64 %79, 1
  %81 = getelementptr inbounds ptr, ptr %2, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !21
  br i1 %19, label %83, label %75

83:                                               ; preds = %77
  %84 = getelementptr inbounds ptr, ptr %0, i64 %79
  %85 = load ptr, ptr %84, align 8, !tbaa !21
  %86 = getelementptr inbounds ptr, ptr %2, i64 %79
  %87 = getelementptr ptr, ptr %86, i64 5
  %88 = load ptr, ptr %87, align 8, !tbaa !21
  %89 = getelementptr ptr, ptr %86, i64 4
  %90 = load ptr, ptr %89, align 8, !tbaa !21
  %91 = getelementptr ptr, ptr %86, i64 3
  %92 = load ptr, ptr %91, align 8, !tbaa !21
  %93 = getelementptr ptr, ptr %86, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !21
  br label %95

95:                                               ; preds = %83, %95
  %96 = phi i32 [ %128, %95 ], [ 0, %83 ]
  %97 = phi ptr [ %127, %95 ], [ %85, %83 ]
  %98 = phi ptr [ %106, %95 ], [ %88, %83 ]
  %99 = phi ptr [ %110, %95 ], [ %90, %83 ]
  %100 = phi ptr [ %116, %95 ], [ %92, %83 ]
  %101 = phi ptr [ %114, %95 ], [ %94, %83 ]
  %102 = phi ptr [ %108, %95 ], [ %82, %83 ]
  %103 = phi ptr [ %104, %95 ], [ %78, %83 ]
  %104 = getelementptr inbounds i32, ptr %103, i64 1
  %105 = load i32, ptr %103, align 4, !tbaa !50
  %106 = getelementptr inbounds i32, ptr %98, i64 1
  %107 = load i32, ptr %98, align 4, !tbaa !50
  %108 = getelementptr inbounds i32, ptr %102, i64 1
  %109 = load i32, ptr %102, align 4, !tbaa !50
  %110 = getelementptr inbounds i32, ptr %99, i64 1
  %111 = load i32, ptr %99, align 4, !tbaa !50
  %112 = add nsw i32 %111, %109
  %113 = mul i32 %112, -5
  %114 = getelementptr inbounds i32, ptr %101, i64 1
  %115 = load i32, ptr %101, align 4, !tbaa !50
  %116 = getelementptr inbounds i32, ptr %100, i64 1
  %117 = load i32, ptr %100, align 4, !tbaa !50
  %118 = add nsw i32 %117, %115
  %119 = mul nsw i32 %118, 20
  %120 = add i32 %105, 512
  %121 = add i32 %120, %107
  %122 = add i32 %121, %113
  %123 = add i32 %122, %119
  %124 = ashr i32 %123, 10
  %125 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %124) #13
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds i16, ptr %97, i64 1
  store i16 %126, ptr %97, align 2, !tbaa !37
  %128 = add nuw nsw i32 %96, 1
  %129 = icmp eq i32 %128, %4
  br i1 %129, label %75, label %95, !llvm.loop !58

130:                                              ; preds = %75, %7, %16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_23(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = icmp sgt i32 %3, -5
  br i1 %8, label %9, label %144

9:                                                ; preds = %7
  %10 = sext i32 %5 to i64
  %11 = icmp sgt i32 %4, 0
  %12 = add i32 %3, 4
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %14 = add nuw i32 %13, 1
  %15 = zext i32 %14 to i64
  br label %22

16:                                               ; preds = %72
  %17 = icmp sgt i32 %3, 0
  br i1 %17, label %18, label %144

18:                                               ; preds = %16
  %19 = icmp sgt i32 %4, 0
  %20 = zext nneg i32 %3 to i64
  %21 = load ptr, ptr %2, align 8, !tbaa !21
  br label %77

22:                                               ; preds = %9, %72
  %23 = phi i64 [ 0, %9 ], [ %73, %72 ]
  %24 = phi i64 [ -2, %9 ], [ %25, %72 ]
  %25 = add nsw i64 %24, 1
  br i1 %11, label %26, label %72

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %2, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = getelementptr inbounds ptr, ptr %1, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = getelementptr i16, ptr %30, i64 %10
  %32 = getelementptr inbounds i16, ptr %31, i64 3
  %33 = getelementptr inbounds i16, ptr %31, i64 2
  %34 = getelementptr i16, ptr %31, i64 -1
  %35 = getelementptr i16, ptr %31, i64 -2
  %36 = load i16, ptr %31, align 2, !tbaa !37
  br label %37

37:                                               ; preds = %26, %37
  %38 = phi i16 [ %64, %37 ], [ %36, %26 ]
  %39 = phi i32 [ %70, %37 ], [ 0, %26 ]
  %40 = phi ptr [ %50, %37 ], [ %32, %26 ]
  %41 = phi ptr [ %57, %37 ], [ %33, %26 ]
  %42 = phi ptr [ %46, %37 ], [ %31, %26 ]
  %43 = phi ptr [ %54, %37 ], [ %34, %26 ]
  %44 = phi ptr [ %47, %37 ], [ %35, %26 ]
  %45 = phi ptr [ %69, %37 ], [ %28, %26 ]
  %46 = getelementptr i16, ptr %42, i64 1
  %47 = getelementptr inbounds i16, ptr %44, i64 1
  %48 = load i16, ptr %44, align 2, !tbaa !37
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds i16, ptr %40, i64 1
  %51 = load i16, ptr %40, align 2, !tbaa !37
  %52 = zext i16 %51 to i32
  %53 = add nuw nsw i32 %52, %49
  %54 = getelementptr inbounds i16, ptr %43, i64 1
  %55 = load i16, ptr %43, align 2, !tbaa !37
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds i16, ptr %41, i64 1
  %58 = load i16, ptr %41, align 2, !tbaa !37
  %59 = zext i16 %58 to i32
  %60 = add nuw nsw i32 %59, %56
  %61 = mul nsw i32 %60, -5
  %62 = add nsw i32 %53, %61
  %63 = zext i16 %38 to i32
  %64 = load i16, ptr %46, align 2, !tbaa !37
  %65 = zext i16 %64 to i32
  %66 = add nuw nsw i32 %65, %63
  %67 = mul nuw nsw i32 %66, 20
  %68 = add nsw i32 %62, %67
  %69 = getelementptr inbounds i32, ptr %45, i64 1
  store i32 %68, ptr %45, align 4, !tbaa !50
  %70 = add nuw nsw i32 %39, 1
  %71 = icmp eq i32 %70, %4
  br i1 %71, label %72, label %37, !llvm.loop !59

72:                                               ; preds = %37, %22
  %73 = add nuw nsw i64 %23, 1
  %74 = icmp eq i64 %73, %15
  br i1 %74, label %16, label %22, !llvm.loop !60

75:                                               ; preds = %99, %77
  %76 = icmp eq i64 %82, %20
  br i1 %76, label %144, label %77, !llvm.loop !61

77:                                               ; preds = %18, %75
  %78 = phi ptr [ %21, %18 ], [ %84, %75 ]
  %79 = phi i64 [ 0, %18 ], [ %82, %75 ]
  %80 = phi i64 [ 3, %18 ], [ %81, %75 ]
  %81 = add nuw nsw i64 %80, 1
  %82 = add nuw nsw i64 %79, 1
  %83 = getelementptr inbounds ptr, ptr %2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !21
  br i1 %19, label %85, label %75

85:                                               ; preds = %77
  %86 = getelementptr inbounds ptr, ptr %0, i64 %79
  %87 = load ptr, ptr %86, align 8, !tbaa !21
  %88 = getelementptr inbounds ptr, ptr %2, i64 %79
  %89 = getelementptr ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8, !tbaa !21
  %91 = getelementptr ptr, ptr %88, i64 4
  %92 = load ptr, ptr %91, align 8, !tbaa !21
  %93 = getelementptr ptr, ptr %88, i64 3
  %94 = load ptr, ptr %93, align 8, !tbaa !21
  %95 = getelementptr ptr, ptr %88, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !21
  %97 = getelementptr inbounds ptr, ptr %2, i64 %80
  %98 = load ptr, ptr %97, align 8, !tbaa !21
  br label %99

99:                                               ; preds = %85, %99
  %100 = phi i32 [ %142, %99 ], [ 0, %85 ]
  %101 = phi ptr [ %141, %99 ], [ %87, %85 ]
  %102 = phi ptr [ %111, %99 ], [ %90, %85 ]
  %103 = phi ptr [ %115, %99 ], [ %92, %85 ]
  %104 = phi ptr [ %121, %99 ], [ %94, %85 ]
  %105 = phi ptr [ %119, %99 ], [ %96, %85 ]
  %106 = phi ptr [ %113, %99 ], [ %84, %85 ]
  %107 = phi ptr [ %109, %99 ], [ %78, %85 ]
  %108 = phi ptr [ %132, %99 ], [ %98, %85 ]
  %109 = getelementptr inbounds i32, ptr %107, i64 1
  %110 = load i32, ptr %107, align 4, !tbaa !50
  %111 = getelementptr inbounds i32, ptr %102, i64 1
  %112 = load i32, ptr %102, align 4, !tbaa !50
  %113 = getelementptr inbounds i32, ptr %106, i64 1
  %114 = load i32, ptr %106, align 4, !tbaa !50
  %115 = getelementptr inbounds i32, ptr %103, i64 1
  %116 = load i32, ptr %103, align 4, !tbaa !50
  %117 = add nsw i32 %116, %114
  %118 = mul i32 %117, -5
  %119 = getelementptr inbounds i32, ptr %105, i64 1
  %120 = load i32, ptr %105, align 4, !tbaa !50
  %121 = getelementptr inbounds i32, ptr %104, i64 1
  %122 = load i32, ptr %104, align 4, !tbaa !50
  %123 = add nsw i32 %122, %120
  %124 = mul nsw i32 %123, 20
  %125 = add i32 %110, 512
  %126 = add i32 %125, %112
  %127 = add i32 %126, %118
  %128 = add i32 %127, %124
  %129 = ashr i32 %128, 10
  %130 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %129) #13
  %131 = and i32 %130, 65535
  %132 = getelementptr inbounds i32, ptr %108, i64 1
  %133 = load i32, ptr %108, align 4, !tbaa !50
  %134 = add nsw i32 %133, 16
  %135 = ashr i32 %134, 5
  %136 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %135) #13
  %137 = add nuw nsw i32 %131, 1
  %138 = add i32 %137, %136
  %139 = lshr i32 %138, 1
  %140 = trunc i32 %139 to i16
  store i16 %140, ptr %101, align 2, !tbaa !37
  %141 = getelementptr inbounds i16, ptr %101, i64 1
  %142 = add nuw nsw i32 %100, 1
  %143 = icmp eq i32 %142, %4
  br i1 %143, label %75, label %99, !llvm.loop !62

144:                                              ; preds = %75, %7, %16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_12(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #6 {
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %135

10:                                               ; preds = %8
  %11 = getelementptr inbounds ptr, ptr %1, i64 -2
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = sext i32 %5 to i64
  %14 = getelementptr i16, ptr %12, i64 %13
  %15 = getelementptr i16, ptr %14, i64 -2
  %16 = sext i32 %6 to i64
  %17 = icmp sgt i32 %4, -5
  %18 = sub nsw i32 -5, %4
  %19 = sext i32 %18 to i64
  %20 = add i32 %4, 4
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  %22 = zext nneg i32 %3 to i64
  br label %27

23:                                               ; preds = %75
  br i1 %9, label %24, label %135

24:                                               ; preds = %23
  %25 = icmp sgt i32 %4, 0
  %26 = zext nneg i32 %3 to i64
  br label %80

27:                                               ; preds = %10, %75
  %28 = phi i64 [ 0, %10 ], [ %78, %75 ]
  %29 = phi ptr [ %15, %10 ], [ %77, %75 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 %16
  br i1 %17, label %31, label %75

31:                                               ; preds = %27
  %32 = getelementptr inbounds ptr, ptr %2, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = getelementptr inbounds i16, ptr %30, i64 %16
  %35 = getelementptr inbounds i16, ptr %34, i64 %16
  %36 = getelementptr inbounds i16, ptr %35, i64 %16
  %37 = getelementptr inbounds i16, ptr %36, i64 %16
  br label %38

38:                                               ; preds = %31, %38
  %39 = phi i32 [ %73, %38 ], [ 0, %31 ]
  %40 = phi ptr [ %50, %38 ], [ %37, %31 ]
  %41 = phi ptr [ %57, %38 ], [ %36, %31 ]
  %42 = phi ptr [ %66, %38 ], [ %35, %31 ]
  %43 = phi ptr [ %63, %38 ], [ %34, %31 ]
  %44 = phi ptr [ %54, %38 ], [ %30, %31 ]
  %45 = phi ptr [ %47, %38 ], [ %29, %31 ]
  %46 = phi ptr [ %72, %38 ], [ %33, %31 ]
  %47 = getelementptr inbounds i16, ptr %45, i64 1
  %48 = load i16, ptr %45, align 2, !tbaa !37
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds i16, ptr %40, i64 1
  %51 = load i16, ptr %40, align 2, !tbaa !37
  %52 = zext i16 %51 to i32
  %53 = add nuw nsw i32 %52, %49
  %54 = getelementptr inbounds i16, ptr %44, i64 1
  %55 = load i16, ptr %44, align 2, !tbaa !37
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds i16, ptr %41, i64 1
  %58 = load i16, ptr %41, align 2, !tbaa !37
  %59 = zext i16 %58 to i32
  %60 = add nuw nsw i32 %59, %56
  %61 = mul nsw i32 %60, -5
  %62 = add nsw i32 %53, %61
  %63 = getelementptr inbounds i16, ptr %43, i64 1
  %64 = load i16, ptr %43, align 2, !tbaa !37
  %65 = zext i16 %64 to i32
  %66 = getelementptr inbounds i16, ptr %42, i64 1
  %67 = load i16, ptr %42, align 2, !tbaa !37
  %68 = zext i16 %67 to i32
  %69 = add nuw nsw i32 %68, %65
  %70 = mul nuw nsw i32 %69, 20
  %71 = add nsw i32 %62, %70
  %72 = getelementptr inbounds i32, ptr %46, i64 1
  store i32 %71, ptr %46, align 4, !tbaa !50
  %73 = add nuw i32 %39, 1
  %74 = icmp eq i32 %39, %21
  br i1 %74, label %75, label %38, !llvm.loop !63

75:                                               ; preds = %38, %27
  %76 = phi ptr [ %30, %27 ], [ %54, %38 ]
  %77 = getelementptr inbounds i16, ptr %76, i64 %19
  %78 = add nuw nsw i64 %28, 1
  %79 = icmp eq i64 %78, %22
  br i1 %79, label %23, label %27, !llvm.loop !64

80:                                               ; preds = %24, %132
  %81 = phi i64 [ 0, %24 ], [ %133, %132 ]
  br i1 %25, label %82, label %132

82:                                               ; preds = %80
  %83 = getelementptr inbounds ptr, ptr %2, i64 %81
  %84 = load ptr, ptr %83, align 8, !tbaa !21
  %85 = getelementptr inbounds i32, ptr %84, i64 5
  %86 = getelementptr inbounds i32, ptr %84, i64 4
  %87 = getelementptr inbounds i32, ptr %84, i64 3
  %88 = getelementptr inbounds ptr, ptr %0, i64 %81
  %89 = load ptr, ptr %88, align 8, !tbaa !21
  %90 = getelementptr inbounds i32, ptr %84, i64 2
  %91 = load i32, ptr %84, align 4, !tbaa !50
  br label %92

92:                                               ; preds = %82, %92
  %93 = phi i32 [ %104, %92 ], [ %91, %82 ]
  %94 = phi i32 [ %130, %92 ], [ 0, %82 ]
  %95 = phi ptr [ %129, %92 ], [ %89, %82 ]
  %96 = phi ptr [ %102, %92 ], [ %85, %82 ]
  %97 = phi ptr [ %105, %92 ], [ %86, %82 ]
  %98 = phi ptr [ %111, %92 ], [ %87, %82 ]
  %99 = phi ptr [ %109, %92 ], [ %90, %82 ]
  %100 = phi ptr [ %101, %92 ], [ %84, %82 ]
  %101 = getelementptr i32, ptr %100, i64 1
  %102 = getelementptr inbounds i32, ptr %96, i64 1
  %103 = load i32, ptr %96, align 4, !tbaa !50
  %104 = load i32, ptr %101, align 4, !tbaa !50
  %105 = getelementptr inbounds i32, ptr %97, i64 1
  %106 = load i32, ptr %97, align 4, !tbaa !50
  %107 = add nsw i32 %106, %104
  %108 = mul i32 %107, -5
  %109 = getelementptr i32, ptr %99, i64 1
  %110 = load i32, ptr %99, align 4, !tbaa !50
  %111 = getelementptr inbounds i32, ptr %98, i64 1
  %112 = load i32, ptr %98, align 4, !tbaa !50
  %113 = add nsw i32 %112, %110
  %114 = mul nsw i32 %113, 20
  %115 = add i32 %93, 512
  %116 = add i32 %115, %103
  %117 = add i32 %116, %108
  %118 = add i32 %117, %114
  %119 = ashr i32 %118, 10
  %120 = tail call fastcc i32 @iClip1(i32 noundef %7, i32 noundef %119) #13
  %121 = and i32 %120, 65535
  %122 = add nsw i32 %110, 16
  %123 = ashr i32 %122, 5
  %124 = tail call fastcc i32 @iClip1(i32 noundef %7, i32 noundef %123) #13
  %125 = add nuw nsw i32 %121, 1
  %126 = add i32 %125, %124
  %127 = lshr i32 %126, 1
  %128 = trunc i32 %127 to i16
  store i16 %128, ptr %95, align 2, !tbaa !37
  %129 = getelementptr inbounds i16, ptr %95, i64 1
  %130 = add nuw nsw i32 %94, 1
  %131 = icmp eq i32 %130, %4
  br i1 %131, label %132, label %92, !llvm.loop !65

132:                                              ; preds = %92, %80
  %133 = add nuw nsw i64 %81, 1
  %134 = icmp eq i64 %133, %26
  br i1 %134, label %135, label %80, !llvm.loop !66

135:                                              ; preds = %132, %8, %23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #6 {
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %135

10:                                               ; preds = %8
  %11 = getelementptr inbounds ptr, ptr %1, i64 -2
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = sext i32 %5 to i64
  %14 = getelementptr i16, ptr %12, i64 %13
  %15 = getelementptr i16, ptr %14, i64 -2
  %16 = sext i32 %6 to i64
  %17 = icmp sgt i32 %4, -5
  %18 = sub nsw i32 -5, %4
  %19 = sext i32 %18 to i64
  %20 = add i32 %4, 4
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  %22 = zext nneg i32 %3 to i64
  br label %27

23:                                               ; preds = %75
  br i1 %9, label %24, label %135

24:                                               ; preds = %23
  %25 = icmp sgt i32 %4, 0
  %26 = zext nneg i32 %3 to i64
  br label %80

27:                                               ; preds = %10, %75
  %28 = phi i64 [ 0, %10 ], [ %78, %75 ]
  %29 = phi ptr [ %15, %10 ], [ %77, %75 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 %16
  br i1 %17, label %31, label %75

31:                                               ; preds = %27
  %32 = getelementptr inbounds ptr, ptr %2, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = getelementptr inbounds i16, ptr %30, i64 %16
  %35 = getelementptr inbounds i16, ptr %34, i64 %16
  %36 = getelementptr inbounds i16, ptr %35, i64 %16
  %37 = getelementptr inbounds i16, ptr %36, i64 %16
  br label %38

38:                                               ; preds = %31, %38
  %39 = phi i32 [ %73, %38 ], [ 0, %31 ]
  %40 = phi ptr [ %50, %38 ], [ %37, %31 ]
  %41 = phi ptr [ %57, %38 ], [ %36, %31 ]
  %42 = phi ptr [ %66, %38 ], [ %35, %31 ]
  %43 = phi ptr [ %63, %38 ], [ %34, %31 ]
  %44 = phi ptr [ %54, %38 ], [ %30, %31 ]
  %45 = phi ptr [ %47, %38 ], [ %29, %31 ]
  %46 = phi ptr [ %72, %38 ], [ %33, %31 ]
  %47 = getelementptr inbounds i16, ptr %45, i64 1
  %48 = load i16, ptr %45, align 2, !tbaa !37
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds i16, ptr %40, i64 1
  %51 = load i16, ptr %40, align 2, !tbaa !37
  %52 = zext i16 %51 to i32
  %53 = add nuw nsw i32 %52, %49
  %54 = getelementptr inbounds i16, ptr %44, i64 1
  %55 = load i16, ptr %44, align 2, !tbaa !37
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds i16, ptr %41, i64 1
  %58 = load i16, ptr %41, align 2, !tbaa !37
  %59 = zext i16 %58 to i32
  %60 = add nuw nsw i32 %59, %56
  %61 = mul nsw i32 %60, -5
  %62 = add nsw i32 %53, %61
  %63 = getelementptr inbounds i16, ptr %43, i64 1
  %64 = load i16, ptr %43, align 2, !tbaa !37
  %65 = zext i16 %64 to i32
  %66 = getelementptr inbounds i16, ptr %42, i64 1
  %67 = load i16, ptr %42, align 2, !tbaa !37
  %68 = zext i16 %67 to i32
  %69 = add nuw nsw i32 %68, %65
  %70 = mul nuw nsw i32 %69, 20
  %71 = add nsw i32 %62, %70
  %72 = getelementptr inbounds i32, ptr %46, i64 1
  store i32 %71, ptr %46, align 4, !tbaa !50
  %73 = add nuw i32 %39, 1
  %74 = icmp eq i32 %39, %21
  br i1 %74, label %75, label %38, !llvm.loop !67

75:                                               ; preds = %38, %27
  %76 = phi ptr [ %30, %27 ], [ %54, %38 ]
  %77 = getelementptr inbounds i16, ptr %76, i64 %19
  %78 = add nuw nsw i64 %28, 1
  %79 = icmp eq i64 %78, %22
  br i1 %79, label %23, label %27, !llvm.loop !68

80:                                               ; preds = %24, %132
  %81 = phi i64 [ 0, %24 ], [ %133, %132 ]
  br i1 %25, label %82, label %132

82:                                               ; preds = %80
  %83 = getelementptr inbounds ptr, ptr %2, i64 %81
  %84 = load ptr, ptr %83, align 8, !tbaa !21
  %85 = getelementptr inbounds i32, ptr %84, i64 5
  %86 = getelementptr inbounds i32, ptr %84, i64 4
  %87 = getelementptr inbounds i32, ptr %84, i64 2
  %88 = getelementptr inbounds ptr, ptr %0, i64 %81
  %89 = load ptr, ptr %88, align 8, !tbaa !21
  %90 = getelementptr inbounds i32, ptr %84, i64 3
  %91 = load i32, ptr %84, align 4, !tbaa !50
  br label %92

92:                                               ; preds = %82, %92
  %93 = phi i32 [ %104, %92 ], [ %91, %82 ]
  %94 = phi i32 [ %130, %92 ], [ 0, %82 ]
  %95 = phi ptr [ %129, %92 ], [ %89, %82 ]
  %96 = phi ptr [ %102, %92 ], [ %85, %82 ]
  %97 = phi ptr [ %105, %92 ], [ %86, %82 ]
  %98 = phi ptr [ %111, %92 ], [ %90, %82 ]
  %99 = phi ptr [ %109, %92 ], [ %87, %82 ]
  %100 = phi ptr [ %101, %92 ], [ %84, %82 ]
  %101 = getelementptr i32, ptr %100, i64 1
  %102 = getelementptr inbounds i32, ptr %96, i64 1
  %103 = load i32, ptr %96, align 4, !tbaa !50
  %104 = load i32, ptr %101, align 4, !tbaa !50
  %105 = getelementptr inbounds i32, ptr %97, i64 1
  %106 = load i32, ptr %97, align 4, !tbaa !50
  %107 = add nsw i32 %106, %104
  %108 = mul i32 %107, -5
  %109 = getelementptr inbounds i32, ptr %99, i64 1
  %110 = load i32, ptr %99, align 4, !tbaa !50
  %111 = getelementptr i32, ptr %98, i64 1
  %112 = load i32, ptr %98, align 4, !tbaa !50
  %113 = add nsw i32 %112, %110
  %114 = mul nsw i32 %113, 20
  %115 = add i32 %93, 512
  %116 = add i32 %115, %103
  %117 = add i32 %116, %108
  %118 = add i32 %117, %114
  %119 = ashr i32 %118, 10
  %120 = tail call fastcc i32 @iClip1(i32 noundef %7, i32 noundef %119) #13
  %121 = and i32 %120, 65535
  %122 = add nsw i32 %112, 16
  %123 = ashr i32 %122, 5
  %124 = tail call fastcc i32 @iClip1(i32 noundef %7, i32 noundef %123) #13
  %125 = add nuw nsw i32 %121, 1
  %126 = add i32 %125, %124
  %127 = lshr i32 %126, 1
  %128 = trunc i32 %127 to i16
  store i16 %128, ptr %95, align 2, !tbaa !37
  %129 = getelementptr inbounds i16, ptr %95, i64 1
  %130 = add nuw nsw i32 %94, 1
  %131 = icmp eq i32 %130, %4
  br i1 %131, label %132, label %92, !llvm.loop !69

132:                                              ; preds = %92, %80
  %133 = add nuw nsw i64 %81, 1
  %134 = icmp eq i64 %133, %26
  br i1 %134, label %135, label %80, !llvm.loop !70

135:                                              ; preds = %132, %8, %23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_11(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %140

9:                                                ; preds = %7
  %10 = sext i32 %4 to i64
  %11 = icmp sgt i32 %3, 0
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %9, %65
  %14 = phi i64 [ 0, %9 ], [ %15, %65 ]
  %15 = add nuw nsw i64 %14, 1
  br i1 %11, label %16, label %65

16:                                               ; preds = %13
  %17 = getelementptr inbounds ptr, ptr %0, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = getelementptr inbounds ptr, ptr %1, i64 %14
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = getelementptr i16, ptr %20, i64 %10
  %22 = getelementptr inbounds i16, ptr %21, i64 3
  %23 = getelementptr inbounds i16, ptr %21, i64 2
  %24 = getelementptr i16, ptr %21, i64 -1
  %25 = getelementptr i16, ptr %21, i64 -2
  br label %26

26:                                               ; preds = %16, %26
  %27 = phi ptr [ %62, %26 ], [ %18, %16 ]
  %28 = phi ptr [ %38, %26 ], [ %22, %16 ]
  %29 = phi ptr [ %44, %26 ], [ %23, %16 ]
  %30 = phi ptr [ %34, %26 ], [ %21, %16 ]
  %31 = phi ptr [ %41, %26 ], [ %24, %16 ]
  %32 = phi ptr [ %35, %26 ], [ %25, %16 ]
  %33 = phi i32 [ %63, %26 ], [ 0, %16 ]
  %34 = getelementptr i16, ptr %30, i64 1
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = load i16, ptr %32, align 2, !tbaa !37
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds i16, ptr %28, i64 1
  %39 = load i16, ptr %28, align 2, !tbaa !37
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds i16, ptr %31, i64 1
  %42 = load i16, ptr %31, align 2, !tbaa !37
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds i16, ptr %29, i64 1
  %45 = load i16, ptr %29, align 2, !tbaa !37
  %46 = zext i16 %45 to i32
  %47 = add nuw nsw i32 %46, %43
  %48 = mul nsw i32 %47, -5
  %49 = load i16, ptr %30, align 2, !tbaa !37
  %50 = zext i16 %49 to i32
  %51 = load i16, ptr %34, align 2, !tbaa !37
  %52 = zext i16 %51 to i32
  %53 = add nuw nsw i32 %52, %50
  %54 = mul nuw nsw i32 %53, 20
  %55 = add nuw nsw i32 %37, 16
  %56 = add nuw nsw i32 %55, %40
  %57 = add nsw i32 %56, %48
  %58 = add nsw i32 %57, %54
  %59 = ashr i32 %58, 5
  %60 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %59) #13
  %61 = trunc i32 %60 to i16
  %62 = getelementptr inbounds i16, ptr %27, i64 1
  store i16 %61, ptr %27, align 2, !tbaa !37
  %63 = add nuw nsw i32 %33, 1
  %64 = icmp eq i32 %63, %3
  br i1 %64, label %65, label %26, !llvm.loop !71

65:                                               ; preds = %26, %13
  %66 = icmp eq i64 %15, %12
  br i1 %66, label %67, label %13, !llvm.loop !72

67:                                               ; preds = %65
  br i1 %8, label %68, label %140

68:                                               ; preds = %67
  %69 = getelementptr inbounds ptr, ptr %1, i64 -2
  %70 = load ptr, ptr %69, align 8, !tbaa !21
  %71 = sext i32 %4 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71
  %73 = sext i32 %5 to i64
  %74 = icmp sgt i32 %3, 0
  %75 = sext i32 %3 to i64
  %76 = sub nsw i64 0, %75
  %77 = zext nneg i32 %2 to i64
  br label %78

78:                                               ; preds = %68, %135
  %79 = phi i64 [ 0, %68 ], [ %138, %135 ]
  %80 = phi ptr [ %72, %68 ], [ %137, %135 ]
  %81 = getelementptr inbounds i16, ptr %80, i64 %73
  br i1 %74, label %82, label %135

82:                                               ; preds = %78
  %83 = getelementptr inbounds ptr, ptr %0, i64 %79
  %84 = load ptr, ptr %83, align 8, !tbaa !21
  %85 = getelementptr inbounds i16, ptr %81, i64 %73
  %86 = getelementptr inbounds i16, ptr %85, i64 %73
  %87 = getelementptr inbounds i16, ptr %86, i64 %73
  %88 = getelementptr inbounds i16, ptr %87, i64 %73
  br label %89

89:                                               ; preds = %82, %89
  %90 = phi ptr [ %132, %89 ], [ %84, %82 ]
  %91 = phi ptr [ %101, %89 ], [ %88, %82 ]
  %92 = phi ptr [ %107, %89 ], [ %87, %82 ]
  %93 = phi ptr [ %115, %89 ], [ %86, %82 ]
  %94 = phi ptr [ %112, %89 ], [ %85, %82 ]
  %95 = phi ptr [ %104, %89 ], [ %81, %82 ]
  %96 = phi ptr [ %98, %89 ], [ %80, %82 ]
  %97 = phi i32 [ %133, %89 ], [ 0, %82 ]
  %98 = getelementptr inbounds i16, ptr %96, i64 1
  %99 = load i16, ptr %96, align 2, !tbaa !37
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds i16, ptr %91, i64 1
  %102 = load i16, ptr %91, align 2, !tbaa !37
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds i16, ptr %95, i64 1
  %105 = load i16, ptr %95, align 2, !tbaa !37
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds i16, ptr %92, i64 1
  %108 = load i16, ptr %92, align 2, !tbaa !37
  %109 = zext i16 %108 to i32
  %110 = add nuw nsw i32 %109, %106
  %111 = mul nsw i32 %110, -5
  %112 = getelementptr inbounds i16, ptr %94, i64 1
  %113 = load i16, ptr %94, align 2, !tbaa !37
  %114 = zext i16 %113 to i32
  %115 = getelementptr inbounds i16, ptr %93, i64 1
  %116 = load i16, ptr %93, align 2, !tbaa !37
  %117 = zext i16 %116 to i32
  %118 = add nuw nsw i32 %117, %114
  %119 = mul nuw nsw i32 %118, 20
  %120 = load i16, ptr %90, align 2, !tbaa !37
  %121 = zext i16 %120 to i32
  %122 = add nuw nsw i32 %100, 16
  %123 = add nuw nsw i32 %122, %103
  %124 = add nsw i32 %123, %111
  %125 = add nsw i32 %124, %119
  %126 = ashr i32 %125, 5
  %127 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %126) #13
  %128 = add nuw nsw i32 %121, 1
  %129 = add i32 %128, %127
  %130 = lshr i32 %129, 1
  %131 = trunc i32 %130 to i16
  store i16 %131, ptr %90, align 2, !tbaa !37
  %132 = getelementptr inbounds i16, ptr %90, i64 1
  %133 = add nuw nsw i32 %97, 1
  %134 = icmp eq i32 %133, %3
  br i1 %134, label %135, label %89, !llvm.loop !73

135:                                              ; preds = %89, %78
  %136 = phi ptr [ %81, %78 ], [ %104, %89 ]
  %137 = getelementptr inbounds i16, ptr %136, i64 %76
  %138 = add nuw nsw i64 %79, 1
  %139 = icmp eq i64 %138, %77
  br i1 %139, label %140, label %78, !llvm.loop !74

140:                                              ; preds = %135, %7, %67
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_13(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %142

9:                                                ; preds = %7
  %10 = sext i32 %4 to i64
  %11 = icmp sgt i32 %3, 0
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %9, %66
  %14 = phi i64 [ 0, %9 ], [ %67, %66 ]
  %15 = phi i64 [ 1, %9 ], [ %16, %66 ]
  %16 = add nuw nsw i64 %15, 1
  br i1 %11, label %17, label %66

17:                                               ; preds = %13
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = getelementptr inbounds ptr, ptr %1, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = getelementptr i16, ptr %21, i64 %10
  %23 = getelementptr inbounds i16, ptr %22, i64 3
  %24 = getelementptr inbounds i16, ptr %22, i64 2
  %25 = getelementptr i16, ptr %22, i64 -1
  %26 = getelementptr i16, ptr %22, i64 -2
  br label %27

27:                                               ; preds = %17, %27
  %28 = phi ptr [ %63, %27 ], [ %19, %17 ]
  %29 = phi ptr [ %39, %27 ], [ %23, %17 ]
  %30 = phi ptr [ %45, %27 ], [ %24, %17 ]
  %31 = phi ptr [ %35, %27 ], [ %22, %17 ]
  %32 = phi ptr [ %42, %27 ], [ %25, %17 ]
  %33 = phi ptr [ %36, %27 ], [ %26, %17 ]
  %34 = phi i32 [ %64, %27 ], [ 0, %17 ]
  %35 = getelementptr i16, ptr %31, i64 1
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  %37 = load i16, ptr %33, align 2, !tbaa !37
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds i16, ptr %29, i64 1
  %40 = load i16, ptr %29, align 2, !tbaa !37
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i16, ptr %32, i64 1
  %43 = load i16, ptr %32, align 2, !tbaa !37
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds i16, ptr %30, i64 1
  %46 = load i16, ptr %30, align 2, !tbaa !37
  %47 = zext i16 %46 to i32
  %48 = add nuw nsw i32 %47, %44
  %49 = mul nsw i32 %48, -5
  %50 = load i16, ptr %31, align 2, !tbaa !37
  %51 = zext i16 %50 to i32
  %52 = load i16, ptr %35, align 2, !tbaa !37
  %53 = zext i16 %52 to i32
  %54 = add nuw nsw i32 %53, %51
  %55 = mul nuw nsw i32 %54, 20
  %56 = add nuw nsw i32 %38, 16
  %57 = add nuw nsw i32 %56, %41
  %58 = add nsw i32 %57, %49
  %59 = add nsw i32 %58, %55
  %60 = ashr i32 %59, 5
  %61 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %60) #13
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds i16, ptr %28, i64 1
  store i16 %62, ptr %28, align 2, !tbaa !37
  %64 = add nuw nsw i32 %34, 1
  %65 = icmp eq i32 %64, %3
  br i1 %65, label %66, label %27, !llvm.loop !75

66:                                               ; preds = %27, %13
  %67 = add nuw nsw i64 %14, 1
  %68 = icmp eq i64 %67, %12
  br i1 %68, label %69, label %13, !llvm.loop !76

69:                                               ; preds = %66
  br i1 %8, label %70, label %142

70:                                               ; preds = %69
  %71 = getelementptr inbounds ptr, ptr %1, i64 -2
  %72 = load ptr, ptr %71, align 8, !tbaa !21
  %73 = sext i32 %4 to i64
  %74 = getelementptr inbounds i16, ptr %72, i64 %73
  %75 = sext i32 %5 to i64
  %76 = icmp sgt i32 %3, 0
  %77 = sext i32 %3 to i64
  %78 = sub nsw i64 0, %77
  %79 = zext nneg i32 %2 to i64
  br label %80

80:                                               ; preds = %70, %137
  %81 = phi i64 [ 0, %70 ], [ %140, %137 ]
  %82 = phi ptr [ %74, %70 ], [ %139, %137 ]
  %83 = getelementptr inbounds i16, ptr %82, i64 %75
  br i1 %76, label %84, label %137

84:                                               ; preds = %80
  %85 = getelementptr inbounds ptr, ptr %0, i64 %81
  %86 = load ptr, ptr %85, align 8, !tbaa !21
  %87 = getelementptr inbounds i16, ptr %83, i64 %75
  %88 = getelementptr inbounds i16, ptr %87, i64 %75
  %89 = getelementptr inbounds i16, ptr %88, i64 %75
  %90 = getelementptr inbounds i16, ptr %89, i64 %75
  br label %91

91:                                               ; preds = %84, %91
  %92 = phi ptr [ %134, %91 ], [ %86, %84 ]
  %93 = phi ptr [ %103, %91 ], [ %90, %84 ]
  %94 = phi ptr [ %109, %91 ], [ %89, %84 ]
  %95 = phi ptr [ %117, %91 ], [ %88, %84 ]
  %96 = phi ptr [ %114, %91 ], [ %87, %84 ]
  %97 = phi ptr [ %106, %91 ], [ %83, %84 ]
  %98 = phi ptr [ %100, %91 ], [ %82, %84 ]
  %99 = phi i32 [ %135, %91 ], [ 0, %84 ]
  %100 = getelementptr inbounds i16, ptr %98, i64 1
  %101 = load i16, ptr %98, align 2, !tbaa !37
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds i16, ptr %93, i64 1
  %104 = load i16, ptr %93, align 2, !tbaa !37
  %105 = zext i16 %104 to i32
  %106 = getelementptr inbounds i16, ptr %97, i64 1
  %107 = load i16, ptr %97, align 2, !tbaa !37
  %108 = zext i16 %107 to i32
  %109 = getelementptr inbounds i16, ptr %94, i64 1
  %110 = load i16, ptr %94, align 2, !tbaa !37
  %111 = zext i16 %110 to i32
  %112 = add nuw nsw i32 %111, %108
  %113 = mul nsw i32 %112, -5
  %114 = getelementptr inbounds i16, ptr %96, i64 1
  %115 = load i16, ptr %96, align 2, !tbaa !37
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds i16, ptr %95, i64 1
  %118 = load i16, ptr %95, align 2, !tbaa !37
  %119 = zext i16 %118 to i32
  %120 = add nuw nsw i32 %119, %116
  %121 = mul nuw nsw i32 %120, 20
  %122 = load i16, ptr %92, align 2, !tbaa !37
  %123 = zext i16 %122 to i32
  %124 = add nuw nsw i32 %102, 16
  %125 = add nuw nsw i32 %124, %105
  %126 = add nsw i32 %125, %113
  %127 = add nsw i32 %126, %121
  %128 = ashr i32 %127, 5
  %129 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %128) #13
  %130 = add nuw nsw i32 %123, 1
  %131 = add i32 %130, %129
  %132 = lshr i32 %131, 1
  %133 = trunc i32 %132 to i16
  store i16 %133, ptr %92, align 2, !tbaa !37
  %134 = getelementptr inbounds i16, ptr %92, i64 1
  %135 = add nuw nsw i32 %99, 1
  %136 = icmp eq i32 %135, %3
  br i1 %136, label %137, label %91, !llvm.loop !77

137:                                              ; preds = %91, %80
  %138 = phi ptr [ %83, %80 ], [ %106, %91 ]
  %139 = getelementptr inbounds i16, ptr %138, i64 %78
  %140 = add nuw nsw i64 %81, 1
  %141 = icmp eq i64 %140, %79
  br i1 %141, label %142, label %80, !llvm.loop !78

142:                                              ; preds = %137, %7, %69
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_31(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %141

9:                                                ; preds = %7
  %10 = sext i32 %4 to i64
  %11 = icmp sgt i32 %3, 0
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %9, %65
  %14 = phi i64 [ 0, %9 ], [ %15, %65 ]
  %15 = add nuw nsw i64 %14, 1
  br i1 %11, label %16, label %65

16:                                               ; preds = %13
  %17 = getelementptr inbounds ptr, ptr %0, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = getelementptr inbounds ptr, ptr %1, i64 %14
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = getelementptr i16, ptr %20, i64 %10
  %22 = getelementptr inbounds i16, ptr %21, i64 3
  %23 = getelementptr inbounds i16, ptr %21, i64 2
  %24 = getelementptr i16, ptr %21, i64 -1
  %25 = getelementptr i16, ptr %21, i64 -2
  br label %26

26:                                               ; preds = %16, %26
  %27 = phi ptr [ %62, %26 ], [ %18, %16 ]
  %28 = phi ptr [ %38, %26 ], [ %22, %16 ]
  %29 = phi ptr [ %44, %26 ], [ %23, %16 ]
  %30 = phi ptr [ %34, %26 ], [ %21, %16 ]
  %31 = phi ptr [ %41, %26 ], [ %24, %16 ]
  %32 = phi ptr [ %35, %26 ], [ %25, %16 ]
  %33 = phi i32 [ %63, %26 ], [ 0, %16 ]
  %34 = getelementptr i16, ptr %30, i64 1
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = load i16, ptr %32, align 2, !tbaa !37
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds i16, ptr %28, i64 1
  %39 = load i16, ptr %28, align 2, !tbaa !37
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds i16, ptr %31, i64 1
  %42 = load i16, ptr %31, align 2, !tbaa !37
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds i16, ptr %29, i64 1
  %45 = load i16, ptr %29, align 2, !tbaa !37
  %46 = zext i16 %45 to i32
  %47 = add nuw nsw i32 %46, %43
  %48 = mul nsw i32 %47, -5
  %49 = load i16, ptr %30, align 2, !tbaa !37
  %50 = zext i16 %49 to i32
  %51 = load i16, ptr %34, align 2, !tbaa !37
  %52 = zext i16 %51 to i32
  %53 = add nuw nsw i32 %52, %50
  %54 = mul nuw nsw i32 %53, 20
  %55 = add nuw nsw i32 %37, 16
  %56 = add nuw nsw i32 %55, %40
  %57 = add nsw i32 %56, %48
  %58 = add nsw i32 %57, %54
  %59 = ashr i32 %58, 5
  %60 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %59) #13
  %61 = trunc i32 %60 to i16
  %62 = getelementptr inbounds i16, ptr %27, i64 1
  store i16 %61, ptr %27, align 2, !tbaa !37
  %63 = add nuw nsw i32 %33, 1
  %64 = icmp eq i32 %63, %3
  br i1 %64, label %65, label %26, !llvm.loop !79

65:                                               ; preds = %26, %13
  %66 = icmp eq i64 %15, %12
  br i1 %66, label %67, label %13, !llvm.loop !80

67:                                               ; preds = %65
  br i1 %8, label %68, label %141

68:                                               ; preds = %67
  %69 = getelementptr inbounds ptr, ptr %1, i64 -2
  %70 = load ptr, ptr %69, align 8, !tbaa !21
  %71 = sext i32 %4 to i64
  %72 = getelementptr i16, ptr %70, i64 %71
  %73 = getelementptr i16, ptr %72, i64 1
  %74 = sext i32 %5 to i64
  %75 = icmp sgt i32 %3, 0
  %76 = sext i32 %3 to i64
  %77 = sub nsw i64 0, %76
  %78 = zext nneg i32 %2 to i64
  br label %79

79:                                               ; preds = %68, %136
  %80 = phi i64 [ 0, %68 ], [ %139, %136 ]
  %81 = phi ptr [ %73, %68 ], [ %138, %136 ]
  %82 = getelementptr inbounds i16, ptr %81, i64 %74
  br i1 %75, label %83, label %136

83:                                               ; preds = %79
  %84 = getelementptr inbounds ptr, ptr %0, i64 %80
  %85 = load ptr, ptr %84, align 8, !tbaa !21
  %86 = getelementptr inbounds i16, ptr %82, i64 %74
  %87 = getelementptr inbounds i16, ptr %86, i64 %74
  %88 = getelementptr inbounds i16, ptr %87, i64 %74
  %89 = getelementptr inbounds i16, ptr %88, i64 %74
  br label %90

90:                                               ; preds = %83, %90
  %91 = phi ptr [ %133, %90 ], [ %85, %83 ]
  %92 = phi ptr [ %102, %90 ], [ %89, %83 ]
  %93 = phi ptr [ %108, %90 ], [ %88, %83 ]
  %94 = phi ptr [ %116, %90 ], [ %87, %83 ]
  %95 = phi ptr [ %113, %90 ], [ %86, %83 ]
  %96 = phi ptr [ %105, %90 ], [ %82, %83 ]
  %97 = phi ptr [ %99, %90 ], [ %81, %83 ]
  %98 = phi i32 [ %134, %90 ], [ 0, %83 ]
  %99 = getelementptr inbounds i16, ptr %97, i64 1
  %100 = load i16, ptr %97, align 2, !tbaa !37
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds i16, ptr %92, i64 1
  %103 = load i16, ptr %92, align 2, !tbaa !37
  %104 = zext i16 %103 to i32
  %105 = getelementptr inbounds i16, ptr %96, i64 1
  %106 = load i16, ptr %96, align 2, !tbaa !37
  %107 = zext i16 %106 to i32
  %108 = getelementptr inbounds i16, ptr %93, i64 1
  %109 = load i16, ptr %93, align 2, !tbaa !37
  %110 = zext i16 %109 to i32
  %111 = add nuw nsw i32 %110, %107
  %112 = mul nsw i32 %111, -5
  %113 = getelementptr inbounds i16, ptr %95, i64 1
  %114 = load i16, ptr %95, align 2, !tbaa !37
  %115 = zext i16 %114 to i32
  %116 = getelementptr inbounds i16, ptr %94, i64 1
  %117 = load i16, ptr %94, align 2, !tbaa !37
  %118 = zext i16 %117 to i32
  %119 = add nuw nsw i32 %118, %115
  %120 = mul nuw nsw i32 %119, 20
  %121 = load i16, ptr %91, align 2, !tbaa !37
  %122 = zext i16 %121 to i32
  %123 = add nuw nsw i32 %101, 16
  %124 = add nuw nsw i32 %123, %104
  %125 = add nsw i32 %124, %112
  %126 = add nsw i32 %125, %120
  %127 = ashr i32 %126, 5
  %128 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %127) #13
  %129 = add nuw nsw i32 %122, 1
  %130 = add i32 %129, %128
  %131 = lshr i32 %130, 1
  %132 = trunc i32 %131 to i16
  store i16 %132, ptr %91, align 2, !tbaa !37
  %133 = getelementptr inbounds i16, ptr %91, i64 1
  %134 = add nuw nsw i32 %98, 1
  %135 = icmp eq i32 %134, %3
  br i1 %135, label %136, label %90, !llvm.loop !81

136:                                              ; preds = %90, %79
  %137 = phi ptr [ %82, %79 ], [ %105, %90 ]
  %138 = getelementptr inbounds i16, ptr %137, i64 %77
  %139 = add nuw nsw i64 %80, 1
  %140 = icmp eq i64 %139, %78
  br i1 %140, label %141, label %79, !llvm.loop !82

141:                                              ; preds = %136, %7, %67
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_33(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %143

9:                                                ; preds = %7
  %10 = sext i32 %4 to i64
  %11 = icmp sgt i32 %3, 0
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %9, %66
  %14 = phi i64 [ 0, %9 ], [ %67, %66 ]
  %15 = phi i64 [ 1, %9 ], [ %16, %66 ]
  %16 = add nuw nsw i64 %15, 1
  br i1 %11, label %17, label %66

17:                                               ; preds = %13
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = getelementptr inbounds ptr, ptr %1, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = getelementptr i16, ptr %21, i64 %10
  %23 = getelementptr inbounds i16, ptr %22, i64 3
  %24 = getelementptr inbounds i16, ptr %22, i64 2
  %25 = getelementptr i16, ptr %22, i64 -1
  %26 = getelementptr i16, ptr %22, i64 -2
  br label %27

27:                                               ; preds = %17, %27
  %28 = phi ptr [ %63, %27 ], [ %19, %17 ]
  %29 = phi ptr [ %39, %27 ], [ %23, %17 ]
  %30 = phi ptr [ %45, %27 ], [ %24, %17 ]
  %31 = phi ptr [ %35, %27 ], [ %22, %17 ]
  %32 = phi ptr [ %42, %27 ], [ %25, %17 ]
  %33 = phi ptr [ %36, %27 ], [ %26, %17 ]
  %34 = phi i32 [ %64, %27 ], [ 0, %17 ]
  %35 = getelementptr i16, ptr %31, i64 1
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  %37 = load i16, ptr %33, align 2, !tbaa !37
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds i16, ptr %29, i64 1
  %40 = load i16, ptr %29, align 2, !tbaa !37
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i16, ptr %32, i64 1
  %43 = load i16, ptr %32, align 2, !tbaa !37
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds i16, ptr %30, i64 1
  %46 = load i16, ptr %30, align 2, !tbaa !37
  %47 = zext i16 %46 to i32
  %48 = add nuw nsw i32 %47, %44
  %49 = mul nsw i32 %48, -5
  %50 = load i16, ptr %31, align 2, !tbaa !37
  %51 = zext i16 %50 to i32
  %52 = load i16, ptr %35, align 2, !tbaa !37
  %53 = zext i16 %52 to i32
  %54 = add nuw nsw i32 %53, %51
  %55 = mul nuw nsw i32 %54, 20
  %56 = add nuw nsw i32 %38, 16
  %57 = add nuw nsw i32 %56, %41
  %58 = add nsw i32 %57, %49
  %59 = add nsw i32 %58, %55
  %60 = ashr i32 %59, 5
  %61 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %60) #13
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds i16, ptr %28, i64 1
  store i16 %62, ptr %28, align 2, !tbaa !37
  %64 = add nuw nsw i32 %34, 1
  %65 = icmp eq i32 %64, %3
  br i1 %65, label %66, label %27, !llvm.loop !83

66:                                               ; preds = %27, %13
  %67 = add nuw nsw i64 %14, 1
  %68 = icmp eq i64 %67, %12
  br i1 %68, label %69, label %13, !llvm.loop !84

69:                                               ; preds = %66
  br i1 %8, label %70, label %143

70:                                               ; preds = %69
  %71 = getelementptr inbounds ptr, ptr %1, i64 -2
  %72 = load ptr, ptr %71, align 8, !tbaa !21
  %73 = sext i32 %4 to i64
  %74 = getelementptr i16, ptr %72, i64 %73
  %75 = getelementptr i16, ptr %74, i64 1
  %76 = sext i32 %5 to i64
  %77 = icmp sgt i32 %3, 0
  %78 = sext i32 %3 to i64
  %79 = sub nsw i64 0, %78
  %80 = zext nneg i32 %2 to i64
  br label %81

81:                                               ; preds = %70, %138
  %82 = phi i64 [ 0, %70 ], [ %141, %138 ]
  %83 = phi ptr [ %75, %70 ], [ %140, %138 ]
  %84 = getelementptr inbounds i16, ptr %83, i64 %76
  br i1 %77, label %85, label %138

85:                                               ; preds = %81
  %86 = getelementptr inbounds ptr, ptr %0, i64 %82
  %87 = load ptr, ptr %86, align 8, !tbaa !21
  %88 = getelementptr inbounds i16, ptr %84, i64 %76
  %89 = getelementptr inbounds i16, ptr %88, i64 %76
  %90 = getelementptr inbounds i16, ptr %89, i64 %76
  %91 = getelementptr inbounds i16, ptr %90, i64 %76
  br label %92

92:                                               ; preds = %85, %92
  %93 = phi ptr [ %135, %92 ], [ %87, %85 ]
  %94 = phi ptr [ %104, %92 ], [ %91, %85 ]
  %95 = phi ptr [ %110, %92 ], [ %90, %85 ]
  %96 = phi ptr [ %118, %92 ], [ %89, %85 ]
  %97 = phi ptr [ %115, %92 ], [ %88, %85 ]
  %98 = phi ptr [ %107, %92 ], [ %84, %85 ]
  %99 = phi ptr [ %101, %92 ], [ %83, %85 ]
  %100 = phi i32 [ %136, %92 ], [ 0, %85 ]
  %101 = getelementptr inbounds i16, ptr %99, i64 1
  %102 = load i16, ptr %99, align 2, !tbaa !37
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds i16, ptr %94, i64 1
  %105 = load i16, ptr %94, align 2, !tbaa !37
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds i16, ptr %98, i64 1
  %108 = load i16, ptr %98, align 2, !tbaa !37
  %109 = zext i16 %108 to i32
  %110 = getelementptr inbounds i16, ptr %95, i64 1
  %111 = load i16, ptr %95, align 2, !tbaa !37
  %112 = zext i16 %111 to i32
  %113 = add nuw nsw i32 %112, %109
  %114 = mul nsw i32 %113, -5
  %115 = getelementptr inbounds i16, ptr %97, i64 1
  %116 = load i16, ptr %97, align 2, !tbaa !37
  %117 = zext i16 %116 to i32
  %118 = getelementptr inbounds i16, ptr %96, i64 1
  %119 = load i16, ptr %96, align 2, !tbaa !37
  %120 = zext i16 %119 to i32
  %121 = add nuw nsw i32 %120, %117
  %122 = mul nuw nsw i32 %121, 20
  %123 = load i16, ptr %93, align 2, !tbaa !37
  %124 = zext i16 %123 to i32
  %125 = add nuw nsw i32 %103, 16
  %126 = add nuw nsw i32 %125, %106
  %127 = add nsw i32 %126, %114
  %128 = add nsw i32 %127, %122
  %129 = ashr i32 %128, 5
  %130 = tail call fastcc i32 @iClip1(i32 noundef %6, i32 noundef %129) #13
  %131 = add nuw nsw i32 %124, 1
  %132 = add i32 %131, %130
  %133 = lshr i32 %132, 1
  %134 = trunc i32 %133 to i16
  store i16 %134, ptr %93, align 2, !tbaa !37
  %135 = getelementptr inbounds i16, ptr %93, i64 1
  %136 = add nuw nsw i32 %100, 1
  %137 = icmp eq i32 %136, %3
  br i1 %137, label %138, label %92, !llvm.loop !85

138:                                              ; preds = %92, %81
  %139 = phi ptr [ %84, %81 ], [ %107, %92 ]
  %140 = getelementptr inbounds i16, ptr %139, i64 %79
  %141 = add nuw nsw i64 %82, 1
  %142 = icmp eq i64 %141, %80
  br i1 %142, label %143, label %81, !llvm.loop !86

143:                                              ; preds = %138, %7, %69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1, i32 noundef 0) #13
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @intra_cr_decoding(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = load ptr, ptr %0, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 119
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  tail call void %9(ptr noundef nonnull %0) #12
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 56
  %12 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 33
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 40
  %14 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %15 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %16 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 80
  %17 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 79
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %20 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 75
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %23 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %25 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  br label %26

26:                                               ; preds = %2, %174
  %27 = phi i1 [ true, %2 ], [ false, %174 ]
  %28 = phi i64 [ 0, %2 ], [ 1, %174 ]
  %29 = load i32, ptr %10, align 4, !tbaa !89
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @itrans4x4, ptr @itrans4x4_ls
  store ptr %31, ptr %11, align 8, !tbaa !90
  %32 = load ptr, ptr %12, align 8, !tbaa !33
  %33 = getelementptr inbounds ptr, ptr %32, i64 %28
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  br i1 %30, label %80, label %35

35:                                               ; preds = %26
  %36 = load i8, ptr %13, align 1, !tbaa !91
  %37 = add i8 %36, -1
  %38 = icmp ult i8 %37, 2
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %14, align 8, !tbaa !92
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = add nuw nsw i64 %28, 1
  %44 = load i32, ptr %15, align 4, !tbaa !93
  br label %47

45:                                               ; preds = %35
  %46 = trunc i64 %28 to i32
  tail call void @Inv_Residual_trans_Chroma(ptr noundef nonnull %0, i32 noundef %46) #12
  br label %80

47:                                               ; preds = %42, %74
  %48 = phi i32 [ %40, %42 ], [ %75, %74 ]
  %49 = phi i32 [ %44, %42 ], [ %76, %74 ]
  %50 = phi i64 [ 0, %42 ], [ %77, %74 ]
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = load ptr, ptr %16, align 8, !tbaa !94
  %54 = getelementptr inbounds ptr, ptr %53, i64 %43
  %55 = load ptr, ptr %54, align 8, !tbaa !21
  %56 = getelementptr inbounds ptr, ptr %55, i64 %50
  %57 = load ptr, ptr %56, align 8, !tbaa !21
  %58 = load ptr, ptr %17, align 8, !tbaa !95
  %59 = getelementptr inbounds ptr, ptr %58, i64 %43
  %60 = load ptr, ptr %59, align 8, !tbaa !21
  %61 = getelementptr inbounds ptr, ptr %60, i64 %50
  %62 = load ptr, ptr %61, align 8, !tbaa !21
  br label %63

63:                                               ; preds = %52, %63
  %64 = phi i64 [ 0, %52 ], [ %68, %63 ]
  %65 = getelementptr inbounds i32, ptr %57, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !50
  %67 = getelementptr inbounds i32, ptr %62, i64 %64
  store i32 %66, ptr %67, align 4, !tbaa !50
  %68 = add nuw nsw i64 %64, 1
  %69 = load i32, ptr %15, align 4, !tbaa !93
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %63, label %72, !llvm.loop !96

72:                                               ; preds = %63
  %73 = load i32, ptr %14, align 8, !tbaa !92
  br label %74

74:                                               ; preds = %72, %47
  %75 = phi i32 [ %73, %72 ], [ %48, %47 ]
  %76 = phi i32 [ %69, %72 ], [ %49, %47 ]
  %77 = add nuw nsw i64 %50, 1
  %78 = sext i32 %75 to i64
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %47, label %80, !llvm.loop !97

80:                                               ; preds = %74, %39, %45, %26
  %81 = load i16, ptr %18, align 8, !tbaa !98
  %82 = icmp eq i16 %81, 12
  br i1 %82, label %122, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %19, align 4, !tbaa !99
  %85 = icmp ult i32 %84, 16
  %86 = load i32, ptr %20, align 4, !tbaa !100
  %87 = icmp sgt i32 %86, 0
  br i1 %85, label %92, label %88

88:                                               ; preds = %83
  br i1 %87, label %89, label %174

89:                                               ; preds = %88
  %90 = add nuw nsw i64 %28, 1
  %91 = trunc i64 %90 to i32
  br label %93

92:                                               ; preds = %83
  br i1 %87, label %145, label %174

93:                                               ; preds = %89, %117
  %94 = phi i64 [ 0, %89 ], [ %118, %117 ]
  br label %95

95:                                               ; preds = %93, %95
  %96 = phi i64 [ 0, %93 ], [ %115, %95 ]
  %97 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %21, i64 %94, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !101
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %21, i64 %94, i64 %96
  %101 = load i8, ptr %100, align 1, !tbaa !101
  %102 = zext i8 %101 to i32
  %103 = load ptr, ptr %11, align 8, !tbaa !90
  tail call void %103(ptr noundef nonnull %0, i32 noundef %91, i32 noundef %102, i32 noundef %99) #12
  %104 = load i32, ptr %22, align 8, !tbaa !102
  %105 = add nsw i32 %104, %99
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %34, i64 %106
  %108 = load ptr, ptr %23, align 8, !tbaa !103
  %109 = getelementptr inbounds ptr, ptr %108, i64 %90
  %110 = load ptr, ptr %109, align 8, !tbaa !21
  %111 = zext i8 %98 to i64
  %112 = getelementptr inbounds ptr, ptr %110, i64 %111
  %113 = load i32, ptr %24, align 4, !tbaa !104
  %114 = add nsw i32 %113, %102
  tail call void @copy_image_data_4x4(ptr noundef %107, ptr noundef %112, i32 noundef %114, i32 noundef %102) #12
  %115 = add nuw nsw i64 %96, 1
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %95, !llvm.loop !105

117:                                              ; preds = %95
  %118 = add nuw nsw i64 %94, 1
  %119 = load i32, ptr %20, align 4, !tbaa !100
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %93, label %174, !llvm.loop !106

122:                                              ; preds = %80
  %123 = trunc i64 %28 to i32
  tail call void @itrans_sp_cr(ptr noundef nonnull %0, i32 noundef %123) #12
  %124 = add nuw nsw i64 %28, 1
  %125 = trunc i64 %124 to i32
  br label %126

126:                                              ; preds = %122, %144
  %127 = phi i1 [ true, %122 ], [ false, %144 ]
  %128 = phi i64 [ 0, %122 ], [ 4, %144 ]
  %129 = trunc i64 %128 to i32
  br label %130

130:                                              ; preds = %126, %130
  %131 = phi i1 [ true, %126 ], [ false, %130 ]
  %132 = phi i32 [ 0, %126 ], [ 4, %130 ]
  %133 = load ptr, ptr %11, align 8, !tbaa !90
  tail call void %133(ptr noundef nonnull %0, i32 noundef %125, i32 noundef %132, i32 noundef %129) #12
  %134 = load i32, ptr %22, align 8, !tbaa !102
  %135 = add nsw i32 %134, %129
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %34, i64 %136
  %138 = load ptr, ptr %23, align 8, !tbaa !103
  %139 = getelementptr inbounds ptr, ptr %138, i64 %124
  %140 = load ptr, ptr %139, align 8, !tbaa !21
  %141 = getelementptr inbounds ptr, ptr %140, i64 %128
  %142 = load i32, ptr %24, align 4, !tbaa !104
  %143 = add nsw i32 %142, %132
  tail call void @copy_image_data_4x4(ptr noundef %137, ptr noundef %141, i32 noundef %143, i32 noundef %132) #12
  br i1 %131, label %130, label %144, !llvm.loop !107

144:                                              ; preds = %130
  br i1 %127, label %126, label %174, !llvm.loop !108

145:                                              ; preds = %92, %169
  %146 = phi i64 [ %170, %169 ], [ 0, %92 ]
  br label %147

147:                                              ; preds = %145, %147
  %148 = phi i64 [ 0, %145 ], [ %167, %147 ]
  %149 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %21, i64 %146, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !101
  %151 = zext i8 %150 to i32
  %152 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %21, i64 %146, i64 %148
  %153 = load i8, ptr %152, align 1, !tbaa !101
  %154 = zext i8 %153 to i32
  %155 = load i32, ptr %22, align 8, !tbaa !102
  %156 = add nsw i32 %155, %151
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %34, i64 %157
  %159 = load ptr, ptr %25, align 8, !tbaa !109
  %160 = getelementptr ptr, ptr %159, i64 %28
  %161 = getelementptr ptr, ptr %160, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !21
  %163 = zext i8 %150 to i64
  %164 = getelementptr inbounds ptr, ptr %162, i64 %163
  %165 = load i32, ptr %24, align 4, !tbaa !104
  %166 = add nsw i32 %165, %154
  tail call void @copy_image_data_4x4(ptr noundef %158, ptr noundef %164, i32 noundef %166, i32 noundef %154) #12
  %167 = add nuw nsw i64 %148, 1
  %168 = icmp eq i64 %167, 4
  br i1 %168, label %169, label %147, !llvm.loop !110

169:                                              ; preds = %147
  %170 = add nuw nsw i64 %146, 1
  %171 = load i32, ptr %20, align 4, !tbaa !100
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %170, %172
  br i1 %173, label %145, label %174, !llvm.loop !111

174:                                              ; preds = %117, %169, %144, %88, %92
  br i1 %27, label %26, label %175, !llvm.loop !112

175:                                              ; preds = %174
  ret void
}

; Function Attrs: optsize
declare void @itrans4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare void @itrans4x4_ls(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare void @Inv_Residual_trans_Chroma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_image_data_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @itrans_sp_cr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @prepare_direct_params(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [4 x %struct.pix_pos], align 16
  %14 = load ptr, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #14
  %15 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #14
  call void @get_neighbors(ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef 0, i32 noundef 0, i32 noundef 16) #12
  %17 = getelementptr inbounds %struct.slice, ptr %14, i64 0, i32 25
  %18 = load i32, ptr %17, align 8, !tbaa !114
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  call fastcc void @set_direct_references(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef %16) #13
  %21 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 1
  call fastcc void @set_direct_references(ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef %16) #13
  %22 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 2
  call fastcc void @set_direct_references(ptr noundef nonnull %22, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef %16) #13
  br label %35

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %27 = load i32, ptr %26, align 8, !tbaa !115
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.video_par, ptr %25, i64 0, i32 35
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 1
  %32 = getelementptr inbounds [4 x %struct.pix_pos], ptr %13, i64 0, i64 2
  br i1 %28, label %34, label %33

33:                                               ; preds = %23
  call fastcc void @set_direct_references_mb_field(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef %16, ptr noundef %30) #13
  call fastcc void @set_direct_references_mb_field(ptr noundef nonnull %31, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef %16, ptr noundef %30) #13
  call fastcc void @set_direct_references_mb_field(ptr noundef nonnull %32, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef %16, ptr noundef %30) #13
  br label %35

34:                                               ; preds = %23
  call fastcc void @set_direct_references_mb_frame(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef %16, ptr noundef %30) #13
  call fastcc void @set_direct_references_mb_frame(ptr noundef nonnull %31, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef %16, ptr noundef %30) #13
  call fastcc void @set_direct_references_mb_frame(ptr noundef nonnull %32, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef %16, ptr noundef %30) #13
  br label %35

35:                                               ; preds = %33, %34, %20
  %36 = load i8, ptr %7, align 1, !tbaa !101
  %37 = zext i8 %36 to i32
  %38 = load i8, ptr %8, align 1, !tbaa !101
  %39 = zext i8 %38 to i32
  %40 = call fastcc i32 @imin(i32 noundef %37, i32 noundef %39) #13
  %41 = load i8, ptr %9, align 1, !tbaa !101
  %42 = zext i8 %41 to i32
  %43 = call fastcc i32 @imin(i32 noundef %40, i32 noundef %42) #13
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %4, align 1, !tbaa !101
  %45 = load i8, ptr %10, align 1, !tbaa !101
  %46 = zext i8 %45 to i32
  %47 = load i8, ptr %11, align 1, !tbaa !101
  %48 = zext i8 %47 to i32
  %49 = call fastcc i32 @imin(i32 noundef %46, i32 noundef %48) #13
  %50 = load i8, ptr %12, align 1, !tbaa !101
  %51 = zext i8 %50 to i32
  %52 = call fastcc i32 @imin(i32 noundef %49, i32 noundef %51) #13
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %5, align 1, !tbaa !101
  %54 = load i8, ptr %4, align 1, !tbaa !101
  %55 = icmp sgt i8 %54, -1
  br i1 %55, label %56, label %61

56:                                               ; preds = %35
  %57 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 58
  %58 = load ptr, ptr %57, align 8, !tbaa !117
  %59 = zext nneg i8 %54 to i16
  call void %58(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %2, i16 noundef signext %59, ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #12
  %60 = load i8, ptr %5, align 1, !tbaa !101
  br label %61

61:                                               ; preds = %56, %35
  %62 = phi i8 [ %60, %56 ], [ %53, %35 ]
  %63 = icmp sgt i8 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 58
  %66 = load ptr, ptr %65, align 8, !tbaa !117
  %67 = zext nneg i8 %62 to i16
  call void %66(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %3, i16 noundef signext %67, ptr noundef %16, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #12
  br label %68

68:                                               ; preds = %64, %61
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  ret void
}

; Function Attrs: optsize
declare void @get_neighbors(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_direct_references(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) unnamed_addr #8 {
  %5 = load i32, ptr %0, align 4, !tbaa !118
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.pix_pos, ptr %0, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !120
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.pix_pos, ptr %0, i64 0, i32 4
  %14 = load i16, ptr %13, align 4, !tbaa !121
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds %struct.pic_motion_params, ptr %12, i64 %15, i32 2
  %17 = load i8, ptr %16, align 1, !tbaa !101
  store i8 %17, ptr %1, align 1, !tbaa !101
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !101
  br label %21

20:                                               ; preds = %4
  store i8 -1, ptr %1, align 1, !tbaa !101
  br label %21

21:                                               ; preds = %20, %7
  %22 = phi i8 [ -1, %20 ], [ %19, %7 ]
  store i8 %22, ptr %2, align 1, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_direct_references_mb_field(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #8 {
  %6 = load i32, ptr %0, align 4, !tbaa !118
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pix_pos, ptr %0, i64 0, i32 5
  %10 = load i16, ptr %9, align 2, !tbaa !120
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %3, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.pix_pos, ptr %0, i64 0, i32 4
  %15 = load i16, ptr %14, align 4, !tbaa !121
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %16, i32 2
  %18 = getelementptr inbounds %struct.pix_pos, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !122
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %20, i32 45
  %22 = load i32, ptr %21, align 8, !tbaa !115
  %23 = icmp eq i32 %22, 0
  %24 = load i8, ptr %17, align 1, !tbaa !101
  br i1 %23, label %28, label %25

25:                                               ; preds = %8
  store i8 %24, ptr %1, align 1, !tbaa !101
  %26 = getelementptr inbounds i8, ptr %17, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !101
  br label %38

28:                                               ; preds = %8
  %29 = icmp sgt i8 %24, -1
  %30 = zext i1 %29 to i8
  %31 = shl nuw i8 %24, %30
  store i8 %31, ptr %1, align 1, !tbaa !101
  %32 = getelementptr inbounds i8, ptr %17, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !101
  %34 = icmp sgt i8 %33, -1
  %35 = zext i1 %34 to i8
  %36 = shl nuw i8 %33, %35
  br label %38

37:                                               ; preds = %5
  store i8 -1, ptr %1, align 1, !tbaa !101
  br label %38

38:                                               ; preds = %25, %28, %37
  %39 = phi i8 [ -1, %37 ], [ %36, %28 ], [ %27, %25 ]
  store i8 %39, ptr %2, align 1, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_direct_references_mb_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #8 {
  %6 = load i32, ptr %0, align 4, !tbaa !118
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pix_pos, ptr %0, i64 0, i32 5
  %10 = load i16, ptr %9, align 2, !tbaa !120
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %3, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.pix_pos, ptr %0, i64 0, i32 4
  %15 = load i16, ptr %14, align 4, !tbaa !121
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %16, i32 2
  %18 = getelementptr inbounds %struct.pix_pos, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !122
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %20, i32 45
  %22 = load i32, ptr %21, align 8, !tbaa !115
  %23 = icmp eq i32 %22, 0
  %24 = load i8, ptr %17, align 1, !tbaa !101
  br i1 %23, label %30, label %25

25:                                               ; preds = %8
  %26 = ashr i8 %24, 1
  store i8 %26, ptr %1, align 1, !tbaa !101
  %27 = getelementptr inbounds i8, ptr %17, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !101
  %29 = ashr i8 %28, 1
  br label %34

30:                                               ; preds = %8
  store i8 %24, ptr %1, align 1, !tbaa !101
  %31 = getelementptr inbounds i8, ptr %17, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !101
  br label %34

33:                                               ; preds = %5
  store i8 -1, ptr %1, align 1, !tbaa !101
  br label %34

34:                                               ; preds = %25, %30, %33
  %35 = phi i8 [ -1, %33 ], [ %32, %30 ], [ %29, %25 ]
  store i8 %35, ptr %2, align 1, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @perform_mc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr %0, align 8, !tbaa !31
  %10 = icmp eq i32 %3, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 96
  %13 = load i16, ptr %12, align 8, !tbaa !123
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call fastcc void @perform_mc_single_wp(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13
  br label %23

16:                                               ; preds = %11
  tail call fastcc void @perform_mc_single(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13
  br label %23

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 97
  %19 = load i16, ptr %18, align 2, !tbaa !124
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call fastcc void @perform_mc_bi_wp(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13
  br label %23

22:                                               ; preds = %17
  tail call fastcc void @perform_mc_bi(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13
  br label %23

23:                                               ; preds = %21, %22, %15, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @perform_mc_single_wp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = load ptr, ptr %0, align 8, !tbaa !31
  %12 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !125
  %14 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 83
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 84
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !126
  %20 = add nsw i32 %19, %4
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !127
  %23 = add nsw i32 %22, %5
  %24 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 33
  %25 = load i32, ptr %24, align 4, !tbaa !128
  %26 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %27 = load i32, ptr %26, align 4, !tbaa !129
  %28 = shl i32 %4, 2
  %29 = shl i32 %5, 2
  %30 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  %32 = sext i32 %23 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  %35 = sext i32 %20 to i64
  %36 = sext i32 %3 to i64
  %37 = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %35, i32 2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !101
  %39 = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %35, i32 1, i64 %36
  %40 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %41 = load i16, ptr %40, align 2, !tbaa !130
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %42, %3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 56, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !21
  %47 = sext i8 %38 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !21
  %50 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 20
  %51 = load i32, ptr %50, align 8, !tbaa !131
  %52 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %53 = load i32, ptr %52, align 8, !tbaa !115
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %8
  %56 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 17
  %57 = load i32, ptr %56, align 4, !tbaa !132
  %58 = ashr i32 %57, 1
  %59 = add nsw i32 %58, -1
  br label %63

60:                                               ; preds = %8
  %61 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 21
  %62 = load i32, ptr %61, align 4, !tbaa !133
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i32 [ %59, %55 ], [ %62, %60 ]
  %65 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 67
  %66 = load i32, ptr %65, align 4, !tbaa !34
  %67 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 85
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = zext i32 %1 to i64
  %70 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 70, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !50
  %72 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 69, i64 %69
  %73 = load i32, ptr %72, align 4, !tbaa !50
  %74 = trunc i32 %73 to i16
  tail call fastcc void @check_motion_vector_range(ptr noundef nonnull %39, ptr noundef nonnull %11) #13
  %75 = shl nsw i32 %20, 4
  %76 = load i16, ptr %39, align 2, !tbaa !134
  %77 = sext i16 %76 to i32
  %78 = add nsw i32 %75, %77
  %79 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !135
  %81 = add nsw i32 %80, %5
  %82 = shl nsw i32 %81, 4
  %83 = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %35, i32 1, i64 %36, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !136
  %85 = sext i16 %84 to i32
  %86 = add nsw i32 %82, %85
  %87 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 173
  %88 = load i32, ptr %87, align 4, !tbaa !137
  %89 = add nsw i32 %88, -4
  %90 = icmp slt i32 %89, %7
  br i1 %90, label %91, label %98

91:                                               ; preds = %63
  %92 = tail call i32 @CheckVertMV(ptr noundef nonnull %0, i32 noundef %86, i32 noundef %7) #12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  tail call void @get_block_luma(ptr noundef %49, i32 noundef %78, i32 noundef %86, i32 noundef %6, i32 noundef 8, ptr noundef %15, i32 noundef %66, i32 noundef %51, i32 noundef %64, ptr noundef %68, i32 noundef %71, i16 noundef zeroext %74, ptr noundef nonnull %0) #13
  %95 = add nsw i32 %86, 32
  %96 = add nsw i32 %7, -8
  %97 = getelementptr inbounds ptr, ptr %15, i64 8
  tail call void @get_block_luma(ptr noundef %49, i32 noundef %78, i32 noundef %95, i32 noundef %6, i32 noundef %96, ptr noundef nonnull %97, i32 noundef %66, i32 noundef %51, i32 noundef %64, ptr noundef %68, i32 noundef %71, i16 noundef zeroext %74, ptr noundef nonnull %0) #13
  br label %99

98:                                               ; preds = %91, %63
  tail call void @get_block_luma(ptr noundef %49, i32 noundef %78, i32 noundef %86, i32 noundef %6, i32 noundef %7, ptr noundef %15, i32 noundef %66, i32 noundef %51, i32 noundef %64, ptr noundef %68, i32 noundef %71, i16 noundef zeroext %74, ptr noundef nonnull %0) #13
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, ptr %52, align 8, !tbaa !115
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !138
  %105 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %104, i64 0, i32 23
  %106 = load i32, ptr %105, align 8, !tbaa !139
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  switch i32 %25, label %109 [
    i32 3, label %115
    i32 0, label %115
  ]

109:                                              ; preds = %108, %102
  %110 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %104, i64 0, i32 24
  %111 = load i32, ptr %110, align 4, !tbaa !141
  %112 = icmp eq i32 %111, 1
  %113 = icmp eq i32 %25, 1
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %115, label %118

115:                                              ; preds = %108, %108, %109
  %116 = ashr i8 %38, 1
  %117 = sext i8 %116 to i64
  br label %118

118:                                              ; preds = %115, %109, %99
  %119 = phi i64 [ %117, %115 ], [ %47, %109 ], [ %47, %99 ]
  %120 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 100
  %121 = load ptr, ptr %120, align 8, !tbaa !142
  %122 = getelementptr inbounds ptr, ptr %121, i64 %36
  %123 = load ptr, ptr %122, align 8, !tbaa !21
  %124 = getelementptr inbounds ptr, ptr %123, i64 %119
  %125 = load ptr, ptr %124, align 8, !tbaa !21
  %126 = load i32, ptr %125, align 4, !tbaa !50
  %127 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 101
  %128 = load ptr, ptr %127, align 8, !tbaa !143
  %129 = getelementptr inbounds ptr, ptr %128, i64 %36
  %130 = load ptr, ptr %129, align 8, !tbaa !21
  %131 = getelementptr inbounds ptr, ptr %130, i64 %119
  %132 = load ptr, ptr %131, align 8, !tbaa !21
  %133 = load i32, ptr %132, align 4, !tbaa !50
  %134 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 77
  %135 = load ptr, ptr %134, align 8, !tbaa !109
  %136 = getelementptr inbounds ptr, ptr %135, i64 %69
  %137 = load ptr, ptr %136, align 8, !tbaa !21
  %138 = sext i32 %29 to i64
  %139 = getelementptr inbounds ptr, ptr %137, i64 %138
  %140 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 98
  %141 = load i16, ptr %140, align 4, !tbaa !144
  %142 = zext i16 %141 to i32
  tail call fastcc void @weighted_mc_prediction(ptr noundef %139, i32 noundef %7, i32 noundef %6, i32 noundef %28, ptr noundef %15, i32 noundef %126, i32 noundef %133, i32 noundef %142, i32 noundef %71) #13
  switch i32 %27, label %143 [
    i32 3, label %229
    i32 0, label %229
  ]

143:                                              ; preds = %118
  %144 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %13, i64 0, i32 9
  %145 = load i32, ptr %144, align 4, !tbaa !145
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 129, i64 %44, i64 %47
  %149 = load i8, ptr %148, align 1, !tbaa !101
  %150 = sext i8 %149 to i32
  br label %151

151:                                              ; preds = %143, %147
  %152 = phi i32 [ %150, %147 ], [ 0, %143 ]
  %153 = add nsw i32 %152, %86
  %154 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 88
  %155 = load i32, ptr %154, align 4, !tbaa !149
  %156 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 84
  %157 = load i32, ptr %156, align 4, !tbaa !150
  %158 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 85
  %159 = load i32, ptr %158, align 8, !tbaa !151
  %160 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 86
  %161 = load i32, ptr %160, align 4, !tbaa !152
  %162 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 87
  %163 = load i32, ptr %162, align 8, !tbaa !153
  %164 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 22
  %165 = load i32, ptr %164, align 8, !tbaa !154
  %166 = load i32, ptr %52, align 8, !tbaa !115
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %151
  %169 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 19
  %170 = load i32, ptr %169, align 4, !tbaa !155
  %171 = ashr i32 %170, 1
  %172 = add nsw i32 %171, -1
  br label %176

173:                                              ; preds = %151
  %174 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 23
  %175 = load i32, ptr %174, align 4, !tbaa !156
  br label %176

176:                                              ; preds = %173, %168
  %177 = phi i32 [ %172, %168 ], [ %175, %173 ]
  %178 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 99
  %179 = load i16, ptr %178, align 2, !tbaa !157
  %180 = zext i16 %179 to i32
  %181 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 77
  %182 = load i32, ptr %181, align 4, !tbaa !93
  %183 = icmp ne i32 %182, 16
  %184 = zext i1 %183 to i32
  %185 = ashr i32 %6, %184
  %186 = ashr exact i32 %28, %184
  %187 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 78
  %188 = load i32, ptr %187, align 8, !tbaa !92
  %189 = icmp ne i32 %188, 16
  %190 = zext i1 %189 to i32
  %191 = ashr i32 %7, %190
  %192 = ashr exact i32 %29, %190
  %193 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 69, i64 1
  %194 = load i32, ptr %193, align 4, !tbaa !50
  %195 = trunc i32 %194 to i16
  %196 = load ptr, ptr %120, align 8, !tbaa !142
  %197 = getelementptr inbounds ptr, ptr %196, i64 %36
  %198 = load ptr, ptr %197, align 8, !tbaa !21
  %199 = getelementptr inbounds ptr, ptr %198, i64 %119
  %200 = load ptr, ptr %199, align 8, !tbaa !21
  %201 = load ptr, ptr %127, align 8, !tbaa !143
  %202 = getelementptr inbounds ptr, ptr %201, i64 %36
  %203 = load ptr, ptr %202, align 8, !tbaa !21
  %204 = getelementptr inbounds ptr, ptr %203, i64 %119
  %205 = load ptr, ptr %204, align 8, !tbaa !21
  %206 = load ptr, ptr %15, align 8, !tbaa !21
  %207 = load ptr, ptr %17, align 8, !tbaa !21
  tail call fastcc void @get_block_chroma(ptr noundef %49, i32 noundef %78, i32 noundef %153, i32 noundef %157, i32 noundef %159, i32 noundef %165, i32 noundef %177, i32 noundef %185, i32 noundef %191, i32 noundef %161, i32 noundef %163, ptr noundef %206, ptr noundef %207, i32 noundef %155, i16 noundef zeroext %195, ptr noundef nonnull %10) #13
  %208 = load ptr, ptr %134, align 8, !tbaa !109
  %209 = getelementptr inbounds ptr, ptr %208, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !21
  %211 = sext i32 %192 to i64
  %212 = getelementptr inbounds ptr, ptr %210, i64 %211
  %213 = getelementptr inbounds i32, ptr %200, i64 1
  %214 = load i32, ptr %213, align 4, !tbaa !50
  %215 = getelementptr inbounds i32, ptr %205, i64 1
  %216 = load i32, ptr %215, align 4, !tbaa !50
  %217 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 70, i64 1
  %218 = load i32, ptr %217, align 4, !tbaa !50
  tail call fastcc void @weighted_mc_prediction(ptr noundef %212, i32 noundef %191, i32 noundef %185, i32 noundef %186, ptr noundef nonnull %15, i32 noundef %214, i32 noundef %216, i32 noundef %180, i32 noundef %218) #13
  %219 = load ptr, ptr %134, align 8, !tbaa !109
  %220 = getelementptr inbounds ptr, ptr %219, i64 2
  %221 = load ptr, ptr %220, align 8, !tbaa !21
  %222 = getelementptr inbounds ptr, ptr %221, i64 %211
  %223 = getelementptr inbounds i32, ptr %200, i64 2
  %224 = load i32, ptr %223, align 4, !tbaa !50
  %225 = getelementptr inbounds i32, ptr %205, i64 2
  %226 = load i32, ptr %225, align 4, !tbaa !50
  %227 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 70, i64 2
  %228 = load i32, ptr %227, align 8, !tbaa !50
  tail call fastcc void @weighted_mc_prediction(ptr noundef %222, i32 noundef %191, i32 noundef %185, i32 noundef %186, ptr noundef nonnull %17, i32 noundef %224, i32 noundef %226, i32 noundef %180, i32 noundef %228) #13
  br label %229

229:                                              ; preds = %118, %118, %176
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @perform_mc_single(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = load ptr, ptr %0, align 8, !tbaa !31
  %12 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !125
  %14 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 83
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 84
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !126
  %20 = add nsw i32 %19, %4
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !127
  %23 = add nsw i32 %22, %5
  %24 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %25 = load i32, ptr %24, align 4, !tbaa !129
  %26 = shl i32 %4, 2
  %27 = shl i32 %5, 2
  %28 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = sext i32 %23 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = sext i32 %20 to i64
  %34 = sext i32 %3 to i64
  %35 = getelementptr inbounds %struct.pic_motion_params, ptr %32, i64 %33, i32 1, i64 %34
  %36 = getelementptr inbounds %struct.pic_motion_params, ptr %32, i64 %33, i32 2, i64 %34
  %37 = load i8, ptr %36, align 1, !tbaa !101
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %39 = load i16, ptr %38, align 2, !tbaa !130
  %40 = sext i16 %39 to i32
  %41 = add nsw i32 %40, %3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 56, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = sext i8 %37 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  %48 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 20
  %49 = load i32, ptr %48, align 8, !tbaa !131
  %50 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %51 = load i32, ptr %50, align 8, !tbaa !115
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %8
  %54 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 17
  %55 = load i32, ptr %54, align 4, !tbaa !132
  %56 = ashr i32 %55, 1
  %57 = add nsw i32 %56, -1
  br label %61

58:                                               ; preds = %8
  %59 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 21
  %60 = load i32, ptr %59, align 4, !tbaa !133
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i32 [ %57, %53 ], [ %60, %58 ]
  %63 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 67
  %64 = load i32, ptr %63, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 85
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = zext i32 %1 to i64
  %68 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 70, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !50
  %70 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 69, i64 %67
  %71 = load i32, ptr %70, align 4, !tbaa !50
  %72 = trunc i32 %71 to i16
  tail call fastcc void @check_motion_vector_range(ptr noundef nonnull %35, ptr noundef nonnull %11) #13
  %73 = shl nsw i32 %20, 4
  %74 = load i16, ptr %35, align 2, !tbaa !134
  %75 = sext i16 %74 to i32
  %76 = add nsw i32 %73, %75
  %77 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !135
  %79 = add nsw i32 %78, %5
  %80 = shl nsw i32 %79, 4
  %81 = getelementptr inbounds %struct.pic_motion_params, ptr %32, i64 %33, i32 1, i64 %34, i32 1
  %82 = load i16, ptr %81, align 2, !tbaa !136
  %83 = sext i16 %82 to i32
  %84 = add nsw i32 %80, %83
  %85 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 173
  %86 = load i32, ptr %85, align 4, !tbaa !137
  %87 = add nsw i32 %86, -4
  %88 = icmp slt i32 %87, %7
  br i1 %88, label %89, label %96

89:                                               ; preds = %61
  %90 = tail call i32 @CheckVertMV(ptr noundef nonnull %0, i32 noundef %84, i32 noundef %7) #12
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  tail call void @get_block_luma(ptr noundef %47, i32 noundef %76, i32 noundef %84, i32 noundef %6, i32 noundef 8, ptr noundef %15, i32 noundef %64, i32 noundef %49, i32 noundef %62, ptr noundef %66, i32 noundef %69, i16 noundef zeroext %72, ptr noundef nonnull %0) #13
  %93 = add nsw i32 %84, 32
  %94 = add nsw i32 %7, -8
  %95 = getelementptr inbounds ptr, ptr %15, i64 8
  tail call void @get_block_luma(ptr noundef %47, i32 noundef %76, i32 noundef %93, i32 noundef %6, i32 noundef %94, ptr noundef nonnull %95, i32 noundef %64, i32 noundef %49, i32 noundef %62, ptr noundef %66, i32 noundef %69, i16 noundef zeroext %72, ptr noundef nonnull %0) #13
  br label %97

96:                                               ; preds = %89, %61
  tail call void @get_block_luma(ptr noundef %47, i32 noundef %76, i32 noundef %84, i32 noundef %6, i32 noundef %7, ptr noundef %15, i32 noundef %64, i32 noundef %49, i32 noundef %62, ptr noundef %66, i32 noundef %69, i16 noundef zeroext %72, ptr noundef nonnull %0) #13
  br label %97

97:                                               ; preds = %96, %92
  %98 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 77
  %99 = load ptr, ptr %98, align 8, !tbaa !109
  %100 = getelementptr inbounds ptr, ptr %99, i64 %67
  %101 = load ptr, ptr %100, align 8, !tbaa !21
  %102 = sext i32 %27 to i64
  %103 = getelementptr inbounds ptr, ptr %101, i64 %102
  tail call fastcc void @mc_prediction(ptr noundef %103, i32 noundef %7, i32 noundef %6, i32 noundef %26, ptr noundef %15) #13
  switch i32 %25, label %104 [
    i32 3, label %165
    i32 0, label %165
  ]

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %13, i64 0, i32 9
  %106 = load i32, ptr %105, align 4, !tbaa !145
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 129, i64 %42, i64 %45
  %110 = load i8, ptr %109, align 1, !tbaa !101
  %111 = sext i8 %110 to i32
  br label %112

112:                                              ; preds = %104, %108
  %113 = phi i32 [ %111, %108 ], [ 0, %104 ]
  %114 = add nsw i32 %113, %84
  %115 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 88
  %116 = load i32, ptr %115, align 4, !tbaa !149
  %117 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 84
  %118 = load i32, ptr %117, align 4, !tbaa !150
  %119 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 85
  %120 = load i32, ptr %119, align 8, !tbaa !151
  %121 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 86
  %122 = load i32, ptr %121, align 4, !tbaa !152
  %123 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 87
  %124 = load i32, ptr %123, align 8, !tbaa !153
  %125 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 22
  %126 = load i32, ptr %125, align 8, !tbaa !154
  %127 = load i32, ptr %50, align 8, !tbaa !115
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %112
  %130 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 19
  %131 = load i32, ptr %130, align 4, !tbaa !155
  %132 = ashr i32 %131, 1
  %133 = add nsw i32 %132, -1
  br label %137

134:                                              ; preds = %112
  %135 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 23
  %136 = load i32, ptr %135, align 4, !tbaa !156
  br label %137

137:                                              ; preds = %134, %129
  %138 = phi i32 [ %133, %129 ], [ %136, %134 ]
  %139 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 77
  %140 = load i32, ptr %139, align 4, !tbaa !93
  %141 = icmp ne i32 %140, 16
  %142 = zext i1 %141 to i32
  %143 = ashr i32 %6, %142
  %144 = ashr exact i32 %26, %142
  %145 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 78
  %146 = load i32, ptr %145, align 8, !tbaa !92
  %147 = icmp ne i32 %146, 16
  %148 = zext i1 %147 to i32
  %149 = ashr i32 %7, %148
  %150 = ashr exact i32 %27, %148
  %151 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 69, i64 1
  %152 = load i32, ptr %151, align 4, !tbaa !50
  %153 = trunc i32 %152 to i16
  %154 = load ptr, ptr %15, align 8, !tbaa !21
  %155 = load ptr, ptr %17, align 8, !tbaa !21
  tail call fastcc void @get_block_chroma(ptr noundef %47, i32 noundef %76, i32 noundef %114, i32 noundef %118, i32 noundef %120, i32 noundef %126, i32 noundef %138, i32 noundef %143, i32 noundef %149, i32 noundef %122, i32 noundef %124, ptr noundef %154, ptr noundef %155, i32 noundef %116, i16 noundef zeroext %153, ptr noundef nonnull %10) #13
  %156 = load ptr, ptr %98, align 8, !tbaa !109
  %157 = getelementptr inbounds ptr, ptr %156, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !21
  %159 = sext i32 %150 to i64
  %160 = getelementptr inbounds ptr, ptr %158, i64 %159
  tail call fastcc void @mc_prediction(ptr noundef %160, i32 noundef %149, i32 noundef %143, i32 noundef %144, ptr noundef nonnull %15) #13
  %161 = load ptr, ptr %98, align 8, !tbaa !109
  %162 = getelementptr inbounds ptr, ptr %161, i64 2
  %163 = load ptr, ptr %162, align 8, !tbaa !21
  %164 = getelementptr inbounds ptr, ptr %163, i64 %159
  tail call fastcc void @mc_prediction(ptr noundef %164, i32 noundef %149, i32 noundef %143, i32 noundef %144, ptr noundef nonnull %17) #13
  br label %165

165:                                              ; preds = %97, %97, %137
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @perform_mc_bi_wp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #3 {
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = load ptr, ptr %0, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %12, i64 0, i32 24
  %14 = load i32, ptr %13, align 4, !tbaa !141
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !135
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !126
  %19 = add nsw i32 %18, %3
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !127
  %22 = add nsw i32 %21, %4
  %23 = shl i32 %3, 2
  %24 = shl i32 %4, 2
  %25 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %26 = load i32, ptr %25, align 4, !tbaa !129
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %28 = load i16, ptr %27, align 2, !tbaa !130
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  %35 = sext i32 %19 to i64
  %36 = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %35, i32 1
  %37 = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %35, i32 1, i64 1
  %38 = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %35, i32 2
  %39 = load i8, ptr %38, align 8, !tbaa !101
  %40 = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %35, i32 2, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !101
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %43 = load i32, ptr %42, align 8, !tbaa !115
  %44 = icmp ne i32 %43, 0
  %45 = icmp eq i32 %14, 1
  %46 = select i1 %44, i1 %45, i1 false
  %47 = sext i8 %39 to i32
  %48 = zext i1 %46 to i32
  %49 = ashr i32 %47, %48
  %50 = sext i8 %41 to i32
  %51 = ashr i32 %50, %48
  %52 = icmp eq i32 %14, 2
  %53 = select i1 %52, i32 %29, i32 0
  %54 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 102
  %55 = load ptr, ptr %54, align 8, !tbaa !158
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !21
  %59 = sext i32 %49 to i64
  %60 = getelementptr inbounds ptr, ptr %58, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !21
  %62 = sext i32 %51 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !21
  %65 = add nsw i32 %53, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %55, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !21
  %69 = getelementptr inbounds ptr, ptr %68, i64 %59
  %70 = load ptr, ptr %69, align 8, !tbaa !21
  %71 = getelementptr inbounds ptr, ptr %70, i64 %62
  %72 = load ptr, ptr %71, align 8, !tbaa !21
  %73 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 101
  %74 = load ptr, ptr %73, align 8, !tbaa !143
  %75 = getelementptr inbounds ptr, ptr %74, i64 %56
  %76 = load ptr, ptr %75, align 8, !tbaa !21
  %77 = getelementptr inbounds ptr, ptr %76, i64 %59
  %78 = load ptr, ptr %77, align 8, !tbaa !21
  %79 = getelementptr inbounds ptr, ptr %74, i64 %66
  %80 = load ptr, ptr %79, align 8, !tbaa !21
  %81 = getelementptr inbounds ptr, ptr %80, i64 %62
  %82 = load ptr, ptr %81, align 8, !tbaa !21
  br i1 %44, label %83, label %88

83:                                               ; preds = %7
  %84 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 17
  %85 = load i32, ptr %84, align 4, !tbaa !132
  %86 = ashr i32 %85, 1
  %87 = add nsw i32 %86, -1
  br label %91

88:                                               ; preds = %7
  %89 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 21
  %90 = load i32, ptr %89, align 4, !tbaa !133
  br label %91

91:                                               ; preds = %88, %83
  %92 = phi i32 [ %87, %83 ], [ %90, %88 ]
  %93 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 173
  %94 = load i32, ptr %93, align 4, !tbaa !137
  %95 = sub i32 %92, %6
  %96 = add i32 %95, -2
  %97 = add i32 %96, %94
  %98 = sub nsw i32 2, %94
  %99 = add nsw i32 %94, -4
  %100 = icmp slt i32 %99, %6
  %101 = sext i16 %28 to i64
  %102 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 56, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !21
  %104 = sext i8 %39 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !21
  %107 = add nsw i32 %29, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 56, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !21
  %111 = sext i8 %41 to i64
  %112 = getelementptr inbounds ptr, ptr %110, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !21
  %114 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 83
  %115 = load ptr, ptr %114, align 8, !tbaa !14
  %116 = load ptr, ptr %115, align 8, !tbaa !21
  %117 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 84
  %118 = load ptr, ptr %117, align 8, !tbaa !15
  %119 = load ptr, ptr %118, align 8, !tbaa !21
  %120 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 86
  %121 = load ptr, ptr %120, align 8, !tbaa !16
  %122 = load ptr, ptr %121, align 8, !tbaa !21
  %123 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 87
  %124 = load ptr, ptr %123, align 8, !tbaa !17
  %125 = load ptr, ptr %124, align 8, !tbaa !21
  %126 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 20
  %127 = load i32, ptr %126, align 8, !tbaa !131
  %128 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 67
  %129 = load i32, ptr %128, align 4, !tbaa !34
  %130 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 85
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = zext i32 %1 to i64
  %133 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 70, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !50
  %135 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 69, i64 %132
  %136 = load i32, ptr %135, align 4, !tbaa !50
  %137 = trunc i32 %136 to i16
  tail call fastcc void @check_motion_vector_range(ptr noundef nonnull %36, ptr noundef nonnull %10) #13
  tail call fastcc void @check_motion_vector_range(ptr noundef nonnull %37, ptr noundef nonnull %10) #13
  %138 = shl nsw i32 %19, 4
  %139 = load i16, ptr %36, align 2, !tbaa !134
  %140 = sext i16 %139 to i32
  %141 = add nsw i32 %138, %140
  %142 = load i16, ptr %37, align 2, !tbaa !134
  %143 = sext i16 %142 to i32
  %144 = add nsw i32 %138, %143
  %145 = add nsw i32 %16, %4
  %146 = shl nsw i32 %145, 4
  %147 = getelementptr inbounds %struct.MotionVector, ptr %36, i64 0, i32 1
  %148 = load i16, ptr %147, align 2, !tbaa !136
  %149 = sext i16 %148 to i32
  %150 = add nsw i32 %146, %149
  %151 = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %35, i32 1, i64 1, i32 1
  %152 = load i16, ptr %151, align 2, !tbaa !136
  %153 = sext i16 %152 to i32
  %154 = add nsw i32 %146, %153
  br i1 %100, label %155, label %163

155:                                              ; preds = %91
  %156 = tail call fastcc i32 @check_vert_mv(i32 noundef %98, i32 noundef %150, i32 noundef %97) #13, !range !159
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  tail call void @get_block_luma(ptr noundef %106, i32 noundef %141, i32 noundef %150, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %115, i32 noundef %129, i32 noundef %127, i32 noundef %92, ptr noundef %131, i32 noundef %134, i16 noundef zeroext %137, ptr noundef nonnull %0) #13
  br label %164

159:                                              ; preds = %155
  tail call void @get_block_luma(ptr noundef %106, i32 noundef %141, i32 noundef %150, i32 noundef %5, i32 noundef 8, ptr noundef nonnull %115, i32 noundef %129, i32 noundef %127, i32 noundef %92, ptr noundef %131, i32 noundef %134, i16 noundef zeroext %137, ptr noundef nonnull %0) #13
  %160 = add nsw i32 %150, 32
  %161 = add nsw i32 %6, -8
  %162 = getelementptr inbounds ptr, ptr %115, i64 8
  tail call void @get_block_luma(ptr noundef %106, i32 noundef %141, i32 noundef %160, i32 noundef %5, i32 noundef %161, ptr noundef nonnull %162, i32 noundef %129, i32 noundef %127, i32 noundef %92, ptr noundef %131, i32 noundef %134, i16 noundef zeroext %137, ptr noundef nonnull %0) #13
  br label %164

163:                                              ; preds = %91
  tail call void @get_block_luma(ptr noundef %106, i32 noundef %141, i32 noundef %150, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %115, i32 noundef %129, i32 noundef %127, i32 noundef %92, ptr noundef %131, i32 noundef %134, i16 noundef zeroext %137, ptr noundef nonnull %0) #13
  br label %171

164:                                              ; preds = %158, %159
  %165 = tail call fastcc i32 @check_vert_mv(i32 noundef %98, i32 noundef %154, i32 noundef %97) #13, !range !159
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  tail call void @get_block_luma(ptr noundef %113, i32 noundef %144, i32 noundef %154, i32 noundef %5, i32 noundef 8, ptr noundef nonnull %118, i32 noundef %129, i32 noundef %127, i32 noundef %92, ptr noundef %131, i32 noundef %134, i16 noundef zeroext %137, ptr noundef nonnull %0) #13
  %168 = add nsw i32 %154, 32
  %169 = add nsw i32 %6, -8
  %170 = getelementptr inbounds ptr, ptr %118, i64 8
  tail call void @get_block_luma(ptr noundef %113, i32 noundef %144, i32 noundef %168, i32 noundef %5, i32 noundef %169, ptr noundef nonnull %170, i32 noundef %129, i32 noundef %127, i32 noundef %92, ptr noundef %131, i32 noundef %134, i16 noundef zeroext %137, ptr noundef nonnull %0) #13
  br label %172

171:                                              ; preds = %163, %164
  tail call void @get_block_luma(ptr noundef %113, i32 noundef %144, i32 noundef %154, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %118, i32 noundef %129, i32 noundef %127, i32 noundef %92, ptr noundef %131, i32 noundef %134, i16 noundef zeroext %137, ptr noundef nonnull %0) #13
  br label %172

172:                                              ; preds = %171, %167
  %173 = load i32, ptr %78, align 4, !tbaa !50
  %174 = load i32, ptr %82, align 4, !tbaa !50
  %175 = add i32 %173, 1
  %176 = add i32 %175, %174
  %177 = ashr i32 %176, 1
  %178 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %179 = load ptr, ptr %178, align 8, !tbaa !109
  %180 = getelementptr inbounds ptr, ptr %179, i64 %132
  %181 = load ptr, ptr %180, align 8, !tbaa !21
  %182 = sext i32 %24 to i64
  %183 = getelementptr inbounds ptr, ptr %181, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !21
  %185 = sext i32 %23 to i64
  %186 = getelementptr inbounds i16, ptr %184, i64 %185
  %187 = load i32, ptr %64, align 4, !tbaa !50
  %188 = load i32, ptr %72, align 4, !tbaa !50
  %189 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 98
  %190 = load i16, ptr %189, align 4, !tbaa !144
  %191 = zext i16 %190 to i32
  %192 = add nuw nsw i32 %191, 1
  tail call fastcc void @weighted_bi_prediction(ptr noundef %186, ptr noundef %116, ptr noundef %119, i32 noundef %6, i32 noundef %5, i32 noundef %187, i32 noundef %188, i32 noundef %177, i32 noundef %192, i32 noundef %134) #13
  switch i32 %26, label %193 [
    i32 3, label %290
    i32 0, label %290
  ]

193:                                              ; preds = %172
  %194 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 22
  %195 = load i32, ptr %194, align 8, !tbaa !154
  %196 = load i32, ptr %42, align 8, !tbaa !115
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 19
  %200 = load i32, ptr %199, align 4, !tbaa !155
  %201 = ashr i32 %200, 1
  %202 = add nsw i32 %201, -1
  br label %206

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 23
  %205 = load i32, ptr %204, align 4, !tbaa !156
  br label %206

206:                                              ; preds = %203, %198
  %207 = phi i32 [ %202, %198 ], [ %205, %203 ]
  %208 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 86
  %209 = load i32, ptr %208, align 4, !tbaa !152
  %210 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 87
  %211 = load i32, ptr %210, align 8, !tbaa !153
  %212 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 84
  %213 = load i32, ptr %212, align 4, !tbaa !150
  %214 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 85
  %215 = load i32, ptr %214, align 8, !tbaa !151
  %216 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 88
  %217 = load i32, ptr %216, align 4, !tbaa !149
  %218 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 99
  %219 = load i16, ptr %218, align 2, !tbaa !157
  %220 = zext i16 %219 to i32
  %221 = add nuw nsw i32 %220, 1
  %222 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 77
  %223 = load i32, ptr %222, align 4, !tbaa !93
  %224 = icmp ne i32 %223, 16
  %225 = zext i1 %224 to i32
  %226 = ashr i32 %5, %225
  %227 = ashr exact i32 %23, %225
  %228 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 78
  %229 = load i32, ptr %228, align 8, !tbaa !92
  %230 = icmp ne i32 %229, 16
  %231 = zext i1 %230 to i32
  %232 = ashr i32 %6, %231
  %233 = ashr exact i32 %24, %231
  %234 = icmp eq i32 %26, 1
  br i1 %234, label %235, label %244

235:                                              ; preds = %206
  %236 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 129, i64 %101, i64 %104
  %237 = load i8, ptr %236, align 1, !tbaa !101
  %238 = sext i8 %237 to i32
  %239 = add nsw i32 %150, %238
  %240 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 129, i64 %108, i64 %111
  %241 = load i8, ptr %240, align 1, !tbaa !101
  %242 = sext i8 %241 to i32
  %243 = add nsw i32 %154, %242
  br label %244

244:                                              ; preds = %206, %235
  %245 = phi i32 [ %239, %235 ], [ %150, %206 ]
  %246 = phi i32 [ %243, %235 ], [ %154, %206 ]
  %247 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 69, i64 1
  %248 = load i32, ptr %247, align 4, !tbaa !50
  %249 = trunc i32 %248 to i16
  %250 = getelementptr inbounds i32, ptr %78, i64 1
  %251 = load i32, ptr %250, align 4, !tbaa !50
  %252 = getelementptr inbounds i32, ptr %82, i64 1
  %253 = load i32, ptr %252, align 4, !tbaa !50
  %254 = add i32 %251, 1
  %255 = add i32 %254, %253
  %256 = ashr i32 %255, 1
  tail call fastcc void @get_block_chroma(ptr noundef %106, i32 noundef %141, i32 noundef %245, i32 noundef %213, i32 noundef %215, i32 noundef %195, i32 noundef %207, i32 noundef %226, i32 noundef %232, i32 noundef %209, i32 noundef %211, ptr noundef %116, ptr noundef %122, i32 noundef %217, i16 noundef zeroext %249, ptr noundef nonnull %9) #13
  tail call fastcc void @get_block_chroma(ptr noundef %113, i32 noundef %144, i32 noundef %246, i32 noundef %213, i32 noundef %215, i32 noundef %195, i32 noundef %207, i32 noundef %226, i32 noundef %232, i32 noundef %209, i32 noundef %211, ptr noundef %119, ptr noundef %125, i32 noundef %217, i16 noundef zeroext %249, ptr noundef nonnull %9) #13
  %257 = load ptr, ptr %178, align 8, !tbaa !109
  %258 = getelementptr inbounds ptr, ptr %257, i64 1
  %259 = load ptr, ptr %258, align 8, !tbaa !21
  %260 = sext i32 %233 to i64
  %261 = getelementptr inbounds ptr, ptr %259, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !21
  %263 = sext i32 %227 to i64
  %264 = getelementptr inbounds i16, ptr %262, i64 %263
  %265 = getelementptr inbounds i32, ptr %64, i64 1
  %266 = load i32, ptr %265, align 4, !tbaa !50
  %267 = getelementptr inbounds i32, ptr %72, i64 1
  %268 = load i32, ptr %267, align 4, !tbaa !50
  %269 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 70, i64 1
  %270 = load i32, ptr %269, align 4, !tbaa !50
  tail call fastcc void @weighted_bi_prediction(ptr noundef %264, ptr noundef %116, ptr noundef %119, i32 noundef %232, i32 noundef %226, i32 noundef %266, i32 noundef %268, i32 noundef %256, i32 noundef %221, i32 noundef %270) #13
  %271 = getelementptr inbounds i32, ptr %78, i64 2
  %272 = load i32, ptr %271, align 4, !tbaa !50
  %273 = getelementptr inbounds i32, ptr %82, i64 2
  %274 = load i32, ptr %273, align 4, !tbaa !50
  %275 = add i32 %272, 1
  %276 = add i32 %275, %274
  %277 = ashr i32 %276, 1
  %278 = load ptr, ptr %178, align 8, !tbaa !109
  %279 = getelementptr inbounds ptr, ptr %278, i64 2
  %280 = load ptr, ptr %279, align 8, !tbaa !21
  %281 = getelementptr inbounds ptr, ptr %280, i64 %260
  %282 = load ptr, ptr %281, align 8, !tbaa !21
  %283 = getelementptr inbounds i16, ptr %282, i64 %263
  %284 = getelementptr inbounds i32, ptr %64, i64 2
  %285 = load i32, ptr %284, align 4, !tbaa !50
  %286 = getelementptr inbounds i32, ptr %72, i64 2
  %287 = load i32, ptr %286, align 4, !tbaa !50
  %288 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 70, i64 2
  %289 = load i32, ptr %288, align 8, !tbaa !50
  tail call fastcc void @weighted_bi_prediction(ptr noundef %283, ptr noundef %122, ptr noundef %125, i32 noundef %232, i32 noundef %226, i32 noundef %285, i32 noundef %287, i32 noundef %277, i32 noundef %221, i32 noundef %289) #13
  br label %290

290:                                              ; preds = %172, %172, %244
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @perform_mc_bi(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #3 {
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = load ptr, ptr %0, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !135
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !126
  %15 = add nsw i32 %14, %3
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !127
  %18 = add nsw i32 %17, %4
  %19 = shl i32 %3, 2
  %20 = shl i32 %4, 2
  %21 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %22 = load i32, ptr %21, align 4, !tbaa !129
  %23 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = sext i32 %18 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = sext i32 %15 to i64
  %29 = getelementptr inbounds %struct.pic_motion_params, ptr %27, i64 %28, i32 1
  %30 = getelementptr inbounds %struct.pic_motion_params, ptr %27, i64 %28, i32 1, i64 1
  %31 = getelementptr inbounds %struct.pic_motion_params, ptr %27, i64 %28, i32 2
  %32 = load i8, ptr %31, align 8, !tbaa !101
  %33 = getelementptr inbounds %struct.pic_motion_params, ptr %27, i64 %28, i32 2, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !101
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %36 = load i16, ptr %35, align 2, !tbaa !130
  %37 = sext i16 %36 to i64
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %39 = load i32, ptr %38, align 8, !tbaa !115
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %7
  %42 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 17
  %43 = load i32, ptr %42, align 4, !tbaa !132
  %44 = ashr i32 %43, 1
  %45 = add nsw i32 %44, -1
  br label %49

46:                                               ; preds = %7
  %47 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 21
  %48 = load i32, ptr %47, align 4, !tbaa !133
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi i32 [ %45, %41 ], [ %48, %46 ]
  %51 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 173
  %52 = load i32, ptr %51, align 4, !tbaa !137
  %53 = sub i32 %50, %6
  %54 = add i32 %53, -2
  %55 = add i32 %54, %52
  %56 = sub nsw i32 2, %52
  %57 = add nsw i32 %52, -4
  %58 = icmp slt i32 %57, %6
  %59 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 56, i64 %37
  %60 = load ptr, ptr %59, align 8, !tbaa !21
  %61 = sext i8 %32 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !21
  %64 = add nsw i64 %37, 1
  %65 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 56, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !21
  %67 = sext i8 %34 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !21
  %70 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 83
  %71 = load ptr, ptr %70, align 8, !tbaa !14
  %72 = load ptr, ptr %71, align 8, !tbaa !21
  %73 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 84
  %74 = load ptr, ptr %73, align 8, !tbaa !15
  %75 = load ptr, ptr %74, align 8, !tbaa !21
  %76 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 86
  %77 = load ptr, ptr %76, align 8, !tbaa !16
  %78 = load ptr, ptr %77, align 8, !tbaa !21
  %79 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 87
  %80 = load ptr, ptr %79, align 8, !tbaa !17
  %81 = load ptr, ptr %80, align 8, !tbaa !21
  %82 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 20
  %83 = load i32, ptr %82, align 8, !tbaa !131
  %84 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 67
  %85 = load i32, ptr %84, align 4, !tbaa !34
  %86 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 85
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = zext i32 %1 to i64
  %89 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 70, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !50
  %91 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 69, i64 %88
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = trunc i32 %92 to i16
  tail call fastcc void @check_motion_vector_range(ptr noundef nonnull %29, ptr noundef %10) #13
  tail call fastcc void @check_motion_vector_range(ptr noundef nonnull %30, ptr noundef %10) #13
  %94 = shl nsw i32 %15, 4
  %95 = load i16, ptr %29, align 2, !tbaa !134
  %96 = sext i16 %95 to i32
  %97 = add nsw i32 %94, %96
  %98 = load i16, ptr %30, align 2, !tbaa !134
  %99 = sext i16 %98 to i32
  %100 = add nsw i32 %94, %99
  %101 = add nsw i32 %12, %4
  %102 = shl nsw i32 %101, 4
  %103 = getelementptr inbounds %struct.MotionVector, ptr %29, i64 0, i32 1
  %104 = load i16, ptr %103, align 2, !tbaa !136
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %102, %105
  %107 = getelementptr inbounds %struct.pic_motion_params, ptr %27, i64 %28, i32 1, i64 1, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !136
  %109 = sext i16 %108 to i32
  %110 = add nsw i32 %102, %109
  br i1 %58, label %111, label %119

111:                                              ; preds = %49
  %112 = tail call fastcc i32 @check_vert_mv(i32 noundef %56, i32 noundef %106, i32 noundef %55) #13, !range !159
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  tail call void @get_block_luma(ptr noundef %63, i32 noundef %97, i32 noundef %106, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %71, i32 noundef %85, i32 noundef %83, i32 noundef %50, ptr noundef %87, i32 noundef %90, i16 noundef zeroext %93, ptr noundef nonnull %0) #13
  br label %120

115:                                              ; preds = %111
  tail call void @get_block_luma(ptr noundef %63, i32 noundef %97, i32 noundef %106, i32 noundef %5, i32 noundef 8, ptr noundef nonnull %71, i32 noundef %85, i32 noundef %83, i32 noundef %50, ptr noundef %87, i32 noundef %90, i16 noundef zeroext %93, ptr noundef nonnull %0) #13
  %116 = add nsw i32 %106, 32
  %117 = add nsw i32 %6, -8
  %118 = getelementptr inbounds ptr, ptr %71, i64 8
  tail call void @get_block_luma(ptr noundef %63, i32 noundef %97, i32 noundef %116, i32 noundef %5, i32 noundef %117, ptr noundef nonnull %118, i32 noundef %85, i32 noundef %83, i32 noundef %50, ptr noundef %87, i32 noundef %90, i16 noundef zeroext %93, ptr noundef nonnull %0) #13
  br label %120

119:                                              ; preds = %49
  tail call void @get_block_luma(ptr noundef %63, i32 noundef %97, i32 noundef %106, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %71, i32 noundef %85, i32 noundef %83, i32 noundef %50, ptr noundef %87, i32 noundef %90, i16 noundef zeroext %93, ptr noundef nonnull %0) #13
  br label %127

120:                                              ; preds = %114, %115
  %121 = tail call fastcc i32 @check_vert_mv(i32 noundef %56, i32 noundef %110, i32 noundef %55) #13, !range !159
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  tail call void @get_block_luma(ptr noundef %69, i32 noundef %100, i32 noundef %110, i32 noundef %5, i32 noundef 8, ptr noundef nonnull %74, i32 noundef %85, i32 noundef %83, i32 noundef %50, ptr noundef %87, i32 noundef %90, i16 noundef zeroext %93, ptr noundef nonnull %0) #13
  %124 = add nsw i32 %110, 32
  %125 = add nsw i32 %6, -8
  %126 = getelementptr inbounds ptr, ptr %74, i64 8
  tail call void @get_block_luma(ptr noundef %69, i32 noundef %100, i32 noundef %124, i32 noundef %5, i32 noundef %125, ptr noundef nonnull %126, i32 noundef %85, i32 noundef %83, i32 noundef %50, ptr noundef %87, i32 noundef %90, i16 noundef zeroext %93, ptr noundef nonnull %0) #13
  br label %128

127:                                              ; preds = %119, %120
  tail call void @get_block_luma(ptr noundef %69, i32 noundef %100, i32 noundef %110, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %74, i32 noundef %85, i32 noundef %83, i32 noundef %50, ptr noundef %87, i32 noundef %90, i16 noundef zeroext %93, ptr noundef nonnull %0) #13
  br label %128

128:                                              ; preds = %127, %123
  %129 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %130 = load ptr, ptr %129, align 8, !tbaa !109
  %131 = getelementptr inbounds ptr, ptr %130, i64 %88
  %132 = load ptr, ptr %131, align 8, !tbaa !21
  %133 = sext i32 %20 to i64
  %134 = getelementptr inbounds ptr, ptr %132, i64 %133
  tail call fastcc void @bi_prediction(ptr noundef %134, ptr noundef nonnull %71, ptr noundef nonnull %74, i32 noundef %6, i32 noundef %5, i32 noundef %19) #13
  switch i32 %22, label %135 [
    i32 3, label %201
    i32 0, label %201
  ]

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !160
  %138 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %137, i64 0, i32 9
  %139 = load i32, ptr %138, align 4, !tbaa !145
  %140 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 22
  %141 = load i32, ptr %140, align 8, !tbaa !154
  %142 = load i32, ptr %38, align 8, !tbaa !115
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 19
  %146 = load i32, ptr %145, align 4, !tbaa !155
  %147 = ashr i32 %146, 1
  %148 = add nsw i32 %147, -1
  br label %152

149:                                              ; preds = %135
  %150 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 23
  %151 = load i32, ptr %150, align 4, !tbaa !156
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i32 [ %148, %144 ], [ %151, %149 ]
  %154 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 86
  %155 = load i32, ptr %154, align 4, !tbaa !152
  %156 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 87
  %157 = load i32, ptr %156, align 8, !tbaa !153
  %158 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 84
  %159 = load i32, ptr %158, align 4, !tbaa !150
  %160 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 85
  %161 = load i32, ptr %160, align 8, !tbaa !151
  %162 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 88
  %163 = load i32, ptr %162, align 4, !tbaa !149
  %164 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 77
  %165 = load i32, ptr %164, align 4, !tbaa !93
  %166 = icmp ne i32 %165, 16
  %167 = zext i1 %166 to i32
  %168 = ashr i32 %5, %167
  %169 = ashr exact i32 %19, %167
  %170 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 78
  %171 = load i32, ptr %170, align 8, !tbaa !92
  %172 = icmp ne i32 %171, 16
  %173 = zext i1 %172 to i32
  %174 = ashr i32 %6, %173
  %175 = ashr exact i32 %20, %173
  %176 = icmp eq i32 %139, 1
  br i1 %176, label %177, label %186

177:                                              ; preds = %152
  %178 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 129, i64 %37, i64 %61
  %179 = load i8, ptr %178, align 1, !tbaa !101
  %180 = sext i8 %179 to i32
  %181 = add nsw i32 %106, %180
  %182 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 129, i64 %64, i64 %67
  %183 = load i8, ptr %182, align 1, !tbaa !101
  %184 = sext i8 %183 to i32
  %185 = add nsw i32 %110, %184
  br label %186

186:                                              ; preds = %152, %177
  %187 = phi i32 [ %185, %177 ], [ %110, %152 ]
  %188 = phi i32 [ %181, %177 ], [ %106, %152 ]
  %189 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 69, i64 1
  %190 = load i32, ptr %189, align 4, !tbaa !50
  %191 = trunc i32 %190 to i16
  tail call fastcc void @get_block_chroma(ptr noundef %63, i32 noundef %97, i32 noundef %188, i32 noundef %159, i32 noundef %161, i32 noundef %141, i32 noundef %153, i32 noundef %168, i32 noundef %174, i32 noundef %155, i32 noundef %157, ptr noundef %72, ptr noundef %78, i32 noundef %163, i16 noundef zeroext %191, ptr noundef nonnull %9) #13
  tail call fastcc void @get_block_chroma(ptr noundef %69, i32 noundef %100, i32 noundef %187, i32 noundef %159, i32 noundef %161, i32 noundef %141, i32 noundef %153, i32 noundef %168, i32 noundef %174, i32 noundef %155, i32 noundef %157, ptr noundef %75, ptr noundef %81, i32 noundef %163, i16 noundef zeroext %191, ptr noundef nonnull %9) #13
  %192 = load ptr, ptr %129, align 8, !tbaa !109
  %193 = getelementptr inbounds ptr, ptr %192, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !21
  %195 = sext i32 %175 to i64
  %196 = getelementptr inbounds ptr, ptr %194, i64 %195
  tail call fastcc void @bi_prediction(ptr noundef %196, ptr noundef nonnull %71, ptr noundef nonnull %74, i32 noundef %174, i32 noundef %168, i32 noundef %169) #13
  %197 = load ptr, ptr %129, align 8, !tbaa !109
  %198 = getelementptr inbounds ptr, ptr %197, i64 2
  %199 = load ptr, ptr %198, align 8, !tbaa !21
  %200 = getelementptr inbounds ptr, ptr %199, i64 %195
  tail call fastcc void @bi_prediction(ptr noundef %200, ptr noundef nonnull %77, ptr noundef nonnull %80, i32 noundef %174, i32 noundef %168, i32 noundef %169) #13
  br label %201

201:                                              ; preds = %128, %128, %186
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @check_motion_vector_range(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load i16, ptr %0, align 2, !tbaa !134
  %4 = add i16 %3, -8192
  %5 = icmp ult i16 %4, -16384
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !21
  %8 = sext i16 %3 to i32
  %9 = load ptr, ptr %1, align 8, !tbaa !161
  %10 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !162
  %12 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 20
  %13 = load i32, ptr %12, align 4, !tbaa !163
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %8, i32 noundef %11, i32 noundef %13) #15
  br label %15

15:                                               ; preds = %2, %6
  %16 = getelementptr inbounds %struct.MotionVector, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !136
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 109
  %20 = load i32, ptr %19, align 8, !tbaa !164
  %21 = icmp sle i32 %20, %18
  %22 = sub nsw i32 0, %20
  %23 = icmp slt i32 %18, %22
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load ptr, ptr @stderr, align 8, !tbaa !21
  %27 = add nsw i32 %20, -1
  %28 = load ptr, ptr %1, align 8, !tbaa !161
  %29 = getelementptr inbounds %struct.video_par, ptr %28, i64 0, i32 14
  %30 = load i32, ptr %29, align 8, !tbaa !162
  %31 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 20
  %32 = load i32, ptr %31, align 4, !tbaa !163
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef %18, i32 noundef %22, i32 noundef %27, i32 noundef %30, i32 noundef %32) #15
  br label %34

34:                                               ; preds = %15, %25
  ret void
}

; Function Attrs: optsize
declare i32 @CheckVertMV(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @weighted_mc_prediction(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #6 {
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %9
  %12 = icmp sgt i32 %2, 0
  %13 = sext i32 %3 to i64
  %14 = zext nneg i32 %1 to i64
  %15 = zext nneg i32 %2 to i64
  br label %16

16:                                               ; preds = %11, %37
  %17 = phi i64 [ 0, %11 ], [ %38, %37 ]
  br i1 %12, label %18, label %37

18:                                               ; preds = %16
  %19 = getelementptr inbounds ptr, ptr %4, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = getelementptr inbounds ptr, ptr %0, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  %23 = getelementptr i16, ptr %22, i64 %13
  br label %24

24:                                               ; preds = %18, %24
  %25 = phi i64 [ 0, %18 ], [ %35, %24 ]
  %26 = getelementptr inbounds i16, ptr %20, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !37
  %28 = zext i16 %27 to i32
  %29 = mul nsw i32 %28, %5
  %30 = tail call fastcc i32 @rshift_rnd(i32 noundef %29, i32 noundef %7) #13
  %31 = add nsw i32 %30, %6
  %32 = tail call fastcc i32 @iClip3(i32 noundef 0, i32 noundef %8, i32 noundef %31) #13
  %33 = trunc i32 %32 to i16
  %34 = getelementptr i16, ptr %23, i64 %25
  store i16 %33, ptr %34, align 2, !tbaa !37
  %35 = add nuw nsw i64 %25, 1
  %36 = icmp eq i64 %35, %15
  br i1 %36, label %37, label %24, !llvm.loop !165

37:                                               ; preds = %24, %16
  %38 = add nuw nsw i64 %17, 1
  %39 = icmp eq i64 %38, %14
  br i1 %39, label %40, label %16, !llvm.loop !166

40:                                               ; preds = %37, %9
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @get_block_chroma(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, i32 noundef %13, i16 noundef zeroext %14, ptr nocapture noundef readonly %15) unnamed_addr #3 {
  %17 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 68
  %18 = load i32, ptr %17, align 8, !tbaa !167
  %19 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 72
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %24 = trunc i16 %14 to i8
  %25 = mul nsw i32 %8, %7
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %11, i8 %24, i64 %27, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 2 %12, i8 %24, i64 %27, i1 false)
  br label %84

28:                                               ; preds = %16
  %29 = and i32 %3, %1
  %30 = and i32 %4, %2
  %31 = ashr i32 %1, %9
  %32 = ashr i32 %2, %10
  %33 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 174
  %34 = load i32, ptr %33, align 8, !tbaa !168
  %35 = sub nsw i32 0, %34
  %36 = tail call fastcc i32 @iClip3(i32 noundef %35, i32 noundef %5, i32 noundef %31) #13
  %37 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 175
  %38 = load i32, ptr %37, align 4, !tbaa !169
  %39 = sub nsw i32 0, %38
  %40 = tail call fastcc i32 @iClip3(i32 noundef %39, i32 noundef %6, i32 noundef %32) #13
  %41 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 33
  %42 = load ptr, ptr %41, align 8, !tbaa !33
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  %44 = sext i32 %40 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !21
  %47 = sext i32 %36 to i64
  %48 = getelementptr inbounds i16, ptr %46, i64 %47
  %49 = getelementptr inbounds ptr, ptr %42, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !21
  %51 = getelementptr inbounds ptr, ptr %50, i64 %44
  %52 = load ptr, ptr %51, align 8, !tbaa !21
  %53 = getelementptr inbounds i16, ptr %52, i64 %47
  %54 = shl i32 %29, 16
  %55 = shl i32 %30, 16
  %56 = icmp eq i32 %55, 0
  %57 = or i32 %55, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %28
  tail call fastcc void @get_block_00(ptr noundef %11, ptr noundef %48, i32 noundef %18, i32 noundef %8) #13
  tail call fastcc void @get_block_00(ptr noundef %12, ptr noundef %53, i32 noundef %18, i32 noundef %8) #13
  br label %84

60:                                               ; preds = %28
  %61 = icmp eq i32 %54, 0
  %62 = add nsw i32 %3, 1
  %63 = sub i32 %62, %29
  %64 = add nsw i32 %4, 1
  %65 = sub i32 %64, %30
  %66 = mul i32 %65, %63
  %67 = shl i32 %66, 16
  %68 = ashr exact i32 %67, 16
  br i1 %61, label %69, label %73

69:                                               ; preds = %60
  %70 = shl i32 %62, 16
  %71 = mul i32 %70, %30
  %72 = ashr exact i32 %71, 16
  tail call fastcc void @get_chroma_0X(ptr noundef %11, ptr noundef %48, i32 noundef %18, i32 noundef %8, i32 noundef %7, i32 noundef %68, i32 noundef %72, i32 noundef %13) #13
  tail call fastcc void @get_chroma_0X(ptr noundef %12, ptr noundef %53, i32 noundef %18, i32 noundef %8, i32 noundef %7, i32 noundef %68, i32 noundef %72, i32 noundef %13) #13
  br label %84

73:                                               ; preds = %60
  br i1 %56, label %74, label %77

74:                                               ; preds = %73
  %75 = mul i32 %54, %64
  %76 = ashr exact i32 %75, 16
  tail call fastcc void @get_chroma_X0(ptr noundef %11, ptr noundef %48, i32 noundef %18, i32 noundef %8, i32 noundef %7, i32 noundef %68, i32 noundef %76, i32 noundef %13) #13
  tail call fastcc void @get_chroma_X0(ptr noundef %12, ptr noundef %53, i32 noundef %18, i32 noundef %8, i32 noundef %7, i32 noundef %68, i32 noundef %76, i32 noundef %13) #13
  br label %84

77:                                               ; preds = %73
  %78 = mul i32 %55, %63
  %79 = ashr exact i32 %78, 16
  %80 = mul i32 %54, %65
  %81 = ashr exact i32 %80, 16
  %82 = mul i32 %54, %30
  %83 = ashr exact i32 %82, 16
  tail call fastcc void @get_chroma_XX(ptr noundef %11, ptr noundef %48, i32 noundef %18, i32 noundef %8, i32 noundef %7, i32 noundef %68, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %13) #13
  tail call fastcc void @get_chroma_XX(ptr noundef %12, ptr noundef %53, i32 noundef %18, i32 noundef %8, i32 noundef %7, i32 noundef %68, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %13) #13
  br label %84

84:                                               ; preds = %69, %77, %74, %59, %22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp sgt i32 %1, 0
  %4 = add nsw i32 %1, -1
  %5 = shl nuw i32 1, %4
  %6 = add nsw i32 %5, %0
  %7 = ashr i32 %6, %1
  %8 = select i1 %3, i32 %7, i32 %0
  ret i32 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_chroma_0X(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #6 {
  %9 = sext i32 %2 to i64
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = icmp sgt i32 %4, 0
  br label %13

13:                                               ; preds = %11, %38
  %14 = phi i32 [ 0, %11 ], [ %39, %38 ]
  %15 = phi ptr [ %0, %11 ], [ %18, %38 ]
  %16 = phi ptr [ %1, %11 ], [ %17, %38 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 %9
  %18 = getelementptr inbounds i16, ptr %15, i64 16
  br i1 %12, label %19, label %38

19:                                               ; preds = %13, %19
  %20 = phi i32 [ %36, %19 ], [ 0, %13 ]
  %21 = phi ptr [ %35, %19 ], [ %15, %13 ]
  %22 = phi ptr [ %28, %19 ], [ %17, %13 ]
  %23 = phi ptr [ %24, %19 ], [ %16, %13 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %23, align 2, !tbaa !37
  %26 = zext i16 %25 to i32
  %27 = mul nsw i32 %26, %5
  %28 = getelementptr inbounds i16, ptr %22, i64 1
  %29 = load i16, ptr %22, align 2, !tbaa !37
  %30 = zext i16 %29 to i32
  %31 = mul nsw i32 %30, %6
  %32 = add nsw i32 %31, %27
  %33 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %32, i32 noundef %7) #13
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds i16, ptr %21, i64 1
  store i16 %34, ptr %21, align 2, !tbaa !37
  %36 = add nuw nsw i32 %20, 1
  %37 = icmp eq i32 %36, %4
  br i1 %37, label %38, label %19, !llvm.loop !170

38:                                               ; preds = %19, %13
  %39 = add nuw nsw i32 %14, 1
  %40 = icmp eq i32 %39, %3
  br i1 %40, label %41, label %13, !llvm.loop !171

41:                                               ; preds = %38, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_chroma_X0(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #6 {
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = icmp sgt i32 %4, 0
  br label %13

13:                                               ; preds = %10, %36
  %14 = phi i32 [ 0, %10 ], [ %37, %36 ]
  %15 = phi ptr [ %0, %10 ], [ %17, %36 ]
  %16 = phi ptr [ %1, %10 ], [ %18, %36 ]
  %17 = getelementptr inbounds i16, ptr %15, i64 16
  %18 = getelementptr inbounds i16, ptr %16, i64 %11
  br i1 %12, label %19, label %36

19:                                               ; preds = %13, %19
  %20 = phi i32 [ %34, %19 ], [ 0, %13 ]
  %21 = phi ptr [ %33, %19 ], [ %15, %13 ]
  %22 = phi ptr [ %23, %19 ], [ %16, %13 ]
  %23 = getelementptr i16, ptr %22, i64 1
  %24 = load i16, ptr %22, align 2, !tbaa !37
  %25 = zext i16 %24 to i32
  %26 = mul nsw i32 %25, %5
  %27 = load i16, ptr %23, align 2, !tbaa !37
  %28 = zext i16 %27 to i32
  %29 = mul nsw i32 %28, %6
  %30 = add nsw i32 %29, %26
  %31 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %30, i32 noundef %7) #13
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds i16, ptr %21, i64 1
  store i16 %32, ptr %21, align 2, !tbaa !37
  %34 = add nuw nsw i32 %20, 1
  %35 = icmp eq i32 %34, %4
  br i1 %35, label %36, label %19, !llvm.loop !172

36:                                               ; preds = %19, %13
  %37 = add nuw nsw i32 %14, 1
  %38 = icmp eq i32 %37, %3
  br i1 %38, label %39, label %13, !llvm.loop !173

39:                                               ; preds = %36, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_chroma_XX(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #6 {
  %11 = sext i32 %2 to i64
  %12 = icmp sgt i32 %3, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = icmp sgt i32 %4, 0
  br label %15

15:                                               ; preds = %13, %48
  %16 = phi i32 [ 0, %13 ], [ %49, %48 ]
  %17 = phi ptr [ %0, %13 ], [ %20, %48 ]
  %18 = phi ptr [ %1, %13 ], [ %19, %48 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 %11
  %20 = getelementptr inbounds i16, ptr %17, i64 16
  br i1 %14, label %21, label %48

21:                                               ; preds = %15, %21
  %22 = phi i32 [ %46, %21 ], [ 0, %15 ]
  %23 = phi ptr [ %45, %21 ], [ %17, %15 ]
  %24 = phi ptr [ %30, %21 ], [ %19, %15 ]
  %25 = phi ptr [ %26, %21 ], [ %18, %15 ]
  %26 = getelementptr inbounds i16, ptr %25, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !37
  %28 = zext i16 %27 to i32
  %29 = mul nsw i32 %28, %5
  %30 = getelementptr inbounds i16, ptr %24, i64 1
  %31 = load i16, ptr %24, align 2, !tbaa !37
  %32 = zext i16 %31 to i32
  %33 = mul nsw i32 %32, %6
  %34 = load i16, ptr %26, align 2, !tbaa !37
  %35 = zext i16 %34 to i32
  %36 = mul nsw i32 %35, %7
  %37 = load i16, ptr %30, align 2, !tbaa !37
  %38 = zext i16 %37 to i32
  %39 = mul nsw i32 %38, %8
  %40 = add i32 %33, %29
  %41 = add i32 %40, %36
  %42 = add i32 %41, %39
  %43 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %42, i32 noundef %9) #13
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds i16, ptr %23, i64 1
  store i16 %44, ptr %23, align 2, !tbaa !37
  %46 = add nuw nsw i32 %22, 1
  %47 = icmp eq i32 %46, %4
  br i1 %47, label %48, label %21, !llvm.loop !174

48:                                               ; preds = %21, %15
  %49 = add nuw nsw i32 %16, 1
  %50 = icmp eq i32 %49, %3
  br i1 %50, label %51, label %15, !llvm.loop !175

51:                                               ; preds = %48, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd_sf(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = add nsw i32 %1, -1
  %4 = shl nuw i32 1, %3
  %5 = add nsw i32 %4, %0
  %6 = ashr i32 %5, %1
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mc_prediction(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #6 {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %2 to i64
  %10 = shl nsw i64 %9, 1
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi i64 [ 0, %7 ], [ %19, %12 ]
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = getelementptr inbounds i16, ptr %15, i64 %8
  %17 = getelementptr inbounds ptr, ptr %4, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %16, ptr align 2 %18, i64 %10, i1 false)
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %11
  br i1 %20, label %21, label %12, !llvm.loop !176

21:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @check_vert_mv(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = ashr i32 %1, 2
  %5 = icmp slt i32 %4, %0
  %6 = icmp sgt i32 %4, %2
  %7 = or i1 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @weighted_bi_prediction(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #6 {
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %10
  %13 = sub nsw i32 16, %4
  %14 = icmp sgt i32 %4, 0
  %15 = sext i32 %13 to i64
  br label %16

16:                                               ; preds = %12, %42
  %17 = phi ptr [ %0, %12 ], [ %46, %42 ]
  %18 = phi ptr [ %1, %12 ], [ %47, %42 ]
  %19 = phi i32 [ 0, %12 ], [ %49, %42 ]
  %20 = phi ptr [ %2, %12 ], [ %48, %42 ]
  br i1 %14, label %21, label %42

21:                                               ; preds = %16, %21
  %22 = phi ptr [ %39, %21 ], [ %17, %16 ]
  %23 = phi ptr [ %26, %21 ], [ %18, %16 ]
  %24 = phi i32 [ %40, %21 ], [ 0, %16 ]
  %25 = phi ptr [ %30, %21 ], [ %20, %16 ]
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  %27 = load i16, ptr %23, align 2, !tbaa !37
  %28 = zext i16 %27 to i32
  %29 = mul nsw i32 %28, %5
  %30 = getelementptr inbounds i16, ptr %25, i64 1
  %31 = load i16, ptr %25, align 2, !tbaa !37
  %32 = zext i16 %31 to i32
  %33 = mul nsw i32 %32, %6
  %34 = add nsw i32 %33, %29
  %35 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %34, i32 noundef %8) #13
  %36 = add nsw i32 %35, %7
  %37 = tail call fastcc i32 @iClip1(i32 noundef %9, i32 noundef %36) #13
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds i16, ptr %22, i64 1
  store i16 %38, ptr %22, align 2, !tbaa !37
  %40 = add nuw nsw i32 %24, 1
  %41 = icmp eq i32 %40, %4
  br i1 %41, label %42, label %21, !llvm.loop !177

42:                                               ; preds = %21, %16
  %43 = phi ptr [ %20, %16 ], [ %30, %21 ]
  %44 = phi ptr [ %18, %16 ], [ %26, %21 ]
  %45 = phi ptr [ %17, %16 ], [ %39, %21 ]
  %46 = getelementptr inbounds i16, ptr %45, i64 %15
  %47 = getelementptr inbounds i16, ptr %44, i64 %15
  %48 = getelementptr inbounds i16, ptr %43, i64 %15
  %49 = add nuw nsw i32 %19, 1
  %50 = icmp eq i32 %49, %3
  br i1 %50, label %51, label %16, !llvm.loop !178

51:                                               ; preds = %42, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bi_prediction(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 {
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %6
  %9 = sub nsw i32 16, %4
  %10 = load ptr, ptr %2, align 8, !tbaa !21
  %11 = load ptr, ptr %1, align 8, !tbaa !21
  %12 = load ptr, ptr %0, align 8, !tbaa !21
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = icmp sgt i32 %4, 0
  %16 = sext i32 %9 to i64
  br label %17

17:                                               ; preds = %8, %51
  %18 = phi ptr [ %14, %8 ], [ %55, %51 ]
  %19 = phi i32 [ 0, %8 ], [ %58, %51 ]
  %20 = phi ptr [ %10, %8 ], [ %57, %51 ]
  %21 = phi ptr [ %11, %8 ], [ %56, %51 ]
  br i1 %15, label %22, label %51

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %48, %22 ], [ %18, %17 ]
  %24 = phi i32 [ %49, %22 ], [ 0, %17 ]
  %25 = phi ptr [ %41, %22 ], [ %20, %17 ]
  %26 = phi ptr [ %38, %22 ], [ %21, %17 ]
  %27 = getelementptr inbounds i16, ptr %26, i64 1
  %28 = load i16, ptr %26, align 2, !tbaa !37
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds i16, ptr %25, i64 1
  %31 = load i16, ptr %25, align 2, !tbaa !37
  %32 = zext i16 %31 to i32
  %33 = add nuw nsw i32 %29, 1
  %34 = add nuw nsw i32 %33, %32
  %35 = lshr i32 %34, 1
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds i16, ptr %23, i64 1
  store i16 %36, ptr %23, align 2, !tbaa !37
  %38 = getelementptr inbounds i16, ptr %26, i64 2
  %39 = load i16, ptr %27, align 2, !tbaa !37
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds i16, ptr %25, i64 2
  %42 = load i16, ptr %30, align 2, !tbaa !37
  %43 = zext i16 %42 to i32
  %44 = add nuw nsw i32 %40, 1
  %45 = add nuw nsw i32 %44, %43
  %46 = lshr i32 %45, 1
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds i16, ptr %23, i64 2
  store i16 %47, ptr %37, align 2, !tbaa !37
  %49 = add nuw nsw i32 %24, 2
  %50 = icmp slt i32 %49, %4
  br i1 %50, label %22, label %51, !llvm.loop !179

51:                                               ; preds = %22, %17
  %52 = phi ptr [ %21, %17 ], [ %38, %22 ]
  %53 = phi ptr [ %20, %17 ], [ %41, %22 ]
  %54 = phi ptr [ %18, %17 ], [ %48, %22 ]
  %55 = getelementptr inbounds i16, ptr %54, i64 %16
  %56 = getelementptr inbounds i16, ptr %52, i64 %16
  %57 = getelementptr inbounds i16, ptr %53, i64 %16
  %58 = add nuw nsw i32 %19, 1
  %59 = icmp eq i32 %58, %3
  br i1 %59, label %60, label %17, !llvm.loop !180

60:                                               ; preds = %51, %6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 1368}
!7 = !{!"slice", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !9, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !12, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !9, i64 136, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !9, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !8, i64 248, !9, i64 256, !9, i64 264, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !11, i64 1176, !11, i64 1180, !11, i64 1184, !13, i64 1188, !12, i64 1220, !12, i64 1222, !12, i64 1224, !11, i64 1228, !11, i64 1232, !11, i64 1236, !11, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !9, i64 1288, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !11, i64 13264, !11, i64 13268, !12, i64 13272, !12, i64 13274, !12, i64 13276, !12, i64 13278, !8, i64 13280, !8, i64 13288, !8, i64 13296, !12, i64 13304, !12, i64 13306, !11, i64 13308, !11, i64 13312, !8, i64 13320, !8, i64 13328, !11, i64 13336, !9, i64 13340, !8, i64 13408, !8, i64 13416, !8, i64 13424, !8, i64 13432, !8, i64 13440, !8, i64 13448, !8, i64 13456, !8, i64 13464, !8, i64 13472, !8, i64 13480, !8, i64 13488, !8, i64 13496, !11, i64 13504, !8, i64 13512, !8, i64 13520, !8, i64 13528, !8, i64 13536, !8, i64 13544, !9, i64 13552}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"short", !9, i64 0}
!13 = !{!"nalunitheadermvcext_tag", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!14 = !{!7, !8, i64 1352}
!15 = !{!7, !8, i64 1360}
!16 = !{!7, !8, i64 1376}
!17 = !{!7, !8, i64 1384}
!18 = !{!19, !11, i64 384}
!19 = !{!"storable_picture", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !9, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !12, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !9, i64 160, !20, i64 184, !9, i64 192, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !9, i64 300, !11, i64 308, !8, i64 312, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !8, i64 336, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !8, i64 376, !11, i64 384, !11, i64 388, !9, i64 392, !9, i64 400}
!20 = !{!"pic_motion_params_old", !8, i64 0}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !8, i64 8}
!23 = !{!"macroblock", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !24, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !9, i64 80, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !12, i64 108, !9, i64 110, !9, i64 111, !12, i64 112, !12, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !12, i64 152, !9, i64 154, !11, i64 284, !9, i64 288, !9, i64 312, !9, i64 336, !11, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !9, i64 373, !9, i64 374, !12, i64 376, !12, i64 378, !12, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !9, i64 472}
!24 = !{!"", !12, i64 0, !12, i64 2}
!25 = !{!26, !11, i64 849280}
!26 = !{!"video_par", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 132120, !8, i64 699416, !9, i64 699424, !11, i64 848672, !11, i64 848676, !11, i64 848680, !11, i64 848684, !8, i64 848688, !8, i64 848696, !8, i64 848704, !11, i64 848712, !11, i64 848716, !11, i64 848720, !11, i64 848724, !11, i64 848728, !8, i64 848736, !8, i64 848744, !9, i64 848752, !11, i64 848776, !11, i64 848780, !11, i64 848784, !11, i64 848788, !11, i64 848792, !8, i64 848800, !9, i64 848808, !8, i64 848832, !8, i64 848840, !9, i64 848848, !11, i64 848872, !11, i64 848876, !8, i64 848880, !8, i64 848888, !9, i64 848896, !11, i64 848920, !8, i64 848928, !8, i64 848936, !11, i64 848944, !11, i64 848948, !11, i64 848952, !11, i64 848956, !11, i64 848960, !11, i64 848964, !11, i64 848968, !11, i64 848972, !11, i64 848976, !11, i64 848980, !11, i64 848984, !11, i64 848988, !11, i64 848992, !11, i64 848996, !11, i64 849000, !11, i64 849004, !11, i64 849008, !11, i64 849012, !11, i64 849016, !11, i64 849020, !11, i64 849024, !11, i64 849028, !11, i64 849032, !11, i64 849036, !12, i64 849040, !12, i64 849042, !9, i64 849044, !11, i64 849052, !11, i64 849056, !9, i64 849060, !9, i64 849072, !11, i64 849084, !11, i64 849088, !11, i64 849092, !11, i64 849096, !11, i64 849100, !11, i64 849104, !11, i64 849108, !11, i64 849112, !11, i64 849116, !11, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !11, i64 849196, !11, i64 849200, !11, i64 849204, !11, i64 849208, !11, i64 849212, !11, i64 849216, !11, i64 849220, !11, i64 849224, !11, i64 849228, !11, i64 849232, !11, i64 849236, !11, i64 849240, !11, i64 849244, !11, i64 849248, !11, i64 849252, !11, i64 849256, !11, i64 849260, !11, i64 849264, !11, i64 849268, !11, i64 849272, !11, i64 849276, !11, i64 849280, !11, i64 849284, !8, i64 849288, !8, i64 849296, !27, i64 849304, !27, i64 849624, !27, i64 849944, !27, i64 850264, !27, i64 850584, !27, i64 850904, !27, i64 851224, !27, i64 851544, !11, i64 851864, !11, i64 851868, !11, i64 851872, !30, i64 851880, !11, i64 851888, !9, i64 851892, !11, i64 855988, !11, i64 855992, !11, i64 855996, !11, i64 856000, !11, i64 856004, !11, i64 856008, !11, i64 856012, !8, i64 856016, !8, i64 856024, !8, i64 856032, !8, i64 856040, !8, i64 856048, !9, i64 856056, !8, i64 856456, !9, i64 856464, !8, i64 856488, !8, i64 856496, !8, i64 856504, !11, i64 856512, !8, i64 856520, !9, i64 856528, !8, i64 856608, !8, i64 856616, !8, i64 856624, !8, i64 856632, !11, i64 856640, !11, i64 856644, !11, i64 856648, !8, i64 856656, !8, i64 856664, !9, i64 856672, !9, i64 856688, !8, i64 856704, !8, i64 856712, !11, i64 856720, !8, i64 856728, !8, i64 856736, !8, i64 856744, !8, i64 856752, !8, i64 856760, !8, i64 856768, !8, i64 856776, !8, i64 856784, !8, i64 856792, !8, i64 856800, !8, i64 856808, !8, i64 856816, !11, i64 856824, !8, i64 856832, !11, i64 856840, !11, i64 856844, !11, i64 856848, !11, i64 856852, !11, i64 856856, !11, i64 856860, !11, i64 856864, !8, i64 856872}
!27 = !{!"image_data", !28, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!28 = !{!"frame_format", !11, i64 0, !11, i64 4, !29, i64 8, !9, i64 16, !9, i64 28, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !11, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !11, i64 124, !11, i64 128}
!29 = !{!"double", !9, i64 0}
!30 = !{!"long", !9, i64 0}
!31 = !{!23, !8, i64 0}
!32 = !{!7, !11, i64 216}
!33 = !{!19, !8, i64 136}
!34 = !{!19, !11, i64 356}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!12, !12, i64 0}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !36}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36}
!44 = distinct !{!44, !36}
!45 = distinct !{!45, !36}
!46 = distinct !{!46, !36}
!47 = distinct !{!47, !36}
!48 = distinct !{!48, !36}
!49 = distinct !{!49, !36}
!50 = !{!11, !11, i64 0}
!51 = distinct !{!51, !36}
!52 = distinct !{!52, !36}
!53 = distinct !{!53, !36}
!54 = distinct !{!54, !36}
!55 = distinct !{!55, !36}
!56 = distinct !{!56, !36}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !36}
!59 = distinct !{!59, !36}
!60 = distinct !{!60, !36}
!61 = distinct !{!61, !36}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36}
!66 = distinct !{!66, !36}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !36}
!69 = distinct !{!69, !36}
!70 = distinct !{!70, !36}
!71 = distinct !{!71, !36}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !36}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36}
!78 = distinct !{!78, !36}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = distinct !{!81, !36}
!82 = distinct !{!82, !36}
!83 = distinct !{!83, !36}
!84 = distinct !{!84, !36}
!85 = distinct !{!85, !36}
!86 = distinct !{!86, !36}
!87 = !{!7, !8, i64 13520}
!88 = !{!7, !8, i64 13472}
!89 = !{!23, !11, i64 92}
!90 = !{!23, !8, i64 432}
!91 = !{!23, !9, i64 373}
!92 = !{!26, !11, i64 849112}
!93 = !{!26, !11, i64 849108}
!94 = !{!7, !8, i64 1272}
!95 = !{!7, !8, i64 1264}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = !{!23, !12, i64 152}
!99 = !{!23, !11, i64 284}
!100 = !{!26, !11, i64 849100}
!101 = !{!9, !9, i64 0}
!102 = !{!23, !11, i64 56}
!103 = !{!7, !8, i64 1256}
!104 = !{!23, !11, i64 52}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !36}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36}
!109 = !{!7, !8, i64 1248}
!110 = distinct !{!110, !36}
!111 = distinct !{!111, !36}
!112 = distinct !{!112, !36}
!113 = !{!19, !8, i64 152}
!114 = !{!7, !11, i64 128}
!115 = !{!23, !11, i64 384}
!116 = !{!26, !8, i64 848888}
!117 = !{!23, !8, i64 448}
!118 = !{!119, !11, i64 0}
!119 = !{!"pix_pos", !11, i64 0, !11, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!120 = !{!119, !12, i64 14}
!121 = !{!119, !12, i64 12}
!122 = !{!119, !11, i64 4}
!123 = !{!7, !12, i64 13272}
!124 = !{!7, !12, i64 13274}
!125 = !{!7, !8, i64 24}
!126 = !{!23, !11, i64 32}
!127 = !{!23, !11, i64 36}
!128 = !{!7, !11, i64 164}
!129 = !{!19, !11, i64 268}
!130 = !{!23, !12, i64 114}
!131 = !{!19, !11, i64 80}
!132 = !{!19, !11, i64 68}
!133 = !{!19, !11, i64 84}
!134 = !{!24, !12, i64 0}
!135 = !{!23, !11, i64 40}
!136 = !{!24, !12, i64 2}
!137 = !{!26, !11, i64 856844}
!138 = !{!26, !8, i64 8}
!139 = !{!140, !11, i64 2176}
!140 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !9, i64 24, !9, i64 72, !9, i64 456, !9, i64 1992, !9, i64 2016, !11, i64 2040, !11, i64 2044, !11, i64 2048, !9, i64 2052, !9, i64 2084, !9, i64 2116, !11, i64 2148, !11, i64 2152, !11, i64 2156, !8, i64 2160, !11, i64 2168, !11, i64 2172, !11, i64 2176, !11, i64 2180, !11, i64 2184, !11, i64 2188, !11, i64 2192, !11, i64 2196, !11, i64 2200, !11, i64 2204, !11, i64 2208}
!141 = !{!140, !11, i64 2180}
!142 = !{!7, !8, i64 13280}
!143 = !{!7, !8, i64 13288}
!144 = !{!7, !12, i64 13276}
!145 = !{!146, !11, i64 36}
!146 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !9, i64 44, !9, i64 92, !9, i64 476, !9, i64 2012, !9, i64 2036, !11, i64 2060, !11, i64 2064, !11, i64 2068, !11, i64 2072, !11, i64 2076, !11, i64 2080, !11, i64 2084, !11, i64 2088, !11, i64 2092, !9, i64 2096, !11, i64 3120, !11, i64 3124, !11, i64 3128, !11, i64 3132, !11, i64 3136, !11, i64 3140, !11, i64 3144, !11, i64 3148, !11, i64 3152, !11, i64 3156, !11, i64 3160, !11, i64 3164, !11, i64 3168, !147, i64 3172, !11, i64 4120, !11, i64 4124}
!147 = !{!"", !11, i64 0, !11, i64 4, !12, i64 8, !12, i64 10, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !148, i64 80, !11, i64 492, !148, i64 496, !11, i64 908, !11, i64 912, !11, i64 916, !11, i64 920, !11, i64 924, !11, i64 928, !11, i64 932, !11, i64 936, !11, i64 940, !11, i64 944}
!148 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !9, i64 12, !9, i64 140, !9, i64 268, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408}
!149 = !{!26, !11, i64 849212}
!150 = !{!26, !11, i64 849196}
!151 = !{!26, !11, i64 849200}
!152 = !{!26, !11, i64 849204}
!153 = !{!26, !11, i64 849208}
!154 = !{!19, !11, i64 88}
!155 = !{!19, !11, i64 76}
!156 = !{!19, !11, i64 92}
!157 = !{!7, !12, i64 13278}
!158 = !{!7, !8, i64 13296}
!159 = !{i32 0, i32 2}
!160 = !{!26, !8, i64 16}
!161 = !{!7, !8, i64 0}
!162 = !{!26, !11, i64 848712}
!163 = !{!7, !11, i64 108}
!164 = !{!7, !11, i64 13336}
!165 = distinct !{!165, !36}
!166 = distinct !{!166, !36}
!167 = !{!19, !11, i64 360}
!168 = !{!26, !11, i64 856848}
!169 = !{!26, !11, i64 856852}
!170 = distinct !{!170, !36}
!171 = distinct !{!171, !36}
!172 = distinct !{!172, !36}
!173 = distinct !{!173, !36}
!174 = distinct !{!174, !36}
!175 = distinct !{!175, !36}
!176 = distinct !{!176, !36}
!177 = distinct !{!177, !36}
!178 = distinct !{!178, !36}
!179 = distinct !{!179, !36}
!180 = distinct !{!180, !36}
