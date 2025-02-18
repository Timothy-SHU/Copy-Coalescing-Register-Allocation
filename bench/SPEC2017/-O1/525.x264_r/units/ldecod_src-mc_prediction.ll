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

; Function Attrs: nounwind uwtable
define dso_local i32 @allocate_pred_mem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 83
  %3 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %2, i32 noundef 16, i32 noundef 16) #9
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 84
  %5 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %4, i32 noundef 16, i32 noundef 16) #9
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 86
  %8 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %7, i32 noundef 16, i32 noundef 16) #9
  %9 = add nsw i32 %6, %8
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 87
  %11 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %10, i32 noundef 16, i32 noundef 16) #9
  %12 = add nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 85
  %14 = tail call i32 @get_mem2Dint(ptr noundef nonnull %13, i32 noundef 21, i32 noundef 21) #9
  %15 = add nsw i32 %12, %14
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @free_pred_mem(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 85
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @free_mem2Dint(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 83
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  tail call void @free_mem2Dpel(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 84
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @free_mem2Dpel(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 86
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  tail call void @free_mem2Dpel(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 87
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  tail call void @free_mem2Dpel(ptr noundef %11) #9
  ret void
}

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #2

declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @get_block_luma(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9, i32 noundef %10, i16 noundef zeroext %11, ptr nocapture noundef readonly %12) local_unnamed_addr #3 {
  %14 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 72
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %19 = load ptr, ptr %5, align 8, !tbaa !49
  %20 = trunc i16 %11 to i8
  %21 = mul nsw i32 %4, %3
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %19, i8 %20, i64 %23, i1 false)
  br label %1736

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.macroblock, ptr %12, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 105
  %28 = load i32, ptr %27, align 8, !tbaa !53
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %12, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.slice, ptr %31, i64 0, i32 46
  %33 = load i32, ptr %32, align 8, !tbaa !60
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 33
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  %38 = zext nneg i32 %33 to i64
  %39 = getelementptr ptr, ptr %37, i64 %38
  %40 = getelementptr ptr, ptr %39, i64 -1
  br label %43

41:                                               ; preds = %30, %24
  %42 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 71
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %40, %35 ], [ %42, %41 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = and i32 %1, 3
  %47 = and i32 %2, 3
  %48 = ashr i32 %1, 2
  %49 = ashr i32 %2, 2
  %50 = add nsw i32 %7, 2
  %51 = tail call i32 @llvm.smax.i32(i32 %48, i32 -18)
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 %50)
  %53 = add nsw i32 %8, 2
  %54 = tail call i32 @llvm.smax.i32(i32 %49, i32 -10)
  %55 = tail call i32 @llvm.smin.i32(i32 %54, i32 %53)
  %56 = or i32 %2, %1
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %43
  %60 = icmp sgt i32 %4, 0
  br i1 %60, label %61, label %1736

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 67
  %63 = load i32, ptr %62, align 4, !tbaa !62
  %64 = sext i32 %55 to i64
  %65 = getelementptr inbounds ptr, ptr %45, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = sext i32 %52 to i64
  %68 = getelementptr inbounds i16, ptr %66, i64 %67
  %69 = load ptr, ptr %5, align 8, !tbaa !49
  %70 = sext i32 %63 to i64
  br label %71

71:                                               ; preds = %61, %71
  %72 = phi i32 [ 0, %61 ], [ %79, %71 ]
  %73 = phi ptr [ %69, %61 ], [ %77, %71 ]
  %74 = phi ptr [ %68, %61 ], [ %78, %71 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %73, ptr noundef nonnull align 2 dereferenceable(32) %74, i64 32, i1 false)
  %75 = getelementptr inbounds i16, ptr %73, i64 16
  %76 = getelementptr inbounds i16, ptr %74, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %75, ptr noundef nonnull align 2 dereferenceable(32) %76, i64 32, i1 false)
  %77 = getelementptr inbounds i16, ptr %73, i64 32
  %78 = getelementptr inbounds i16, ptr %76, i64 %70
  %79 = add nuw nsw i32 %72, 2
  %80 = icmp slt i32 %79, %4
  br i1 %80, label %71, label %1736, !llvm.loop !63

81:                                               ; preds = %43
  %82 = icmp eq i32 %47, 0
  br i1 %82, label %83, label %281

83:                                               ; preds = %81
  %84 = sext i32 %55 to i64
  %85 = getelementptr inbounds ptr, ptr %45, i64 %84
  %86 = icmp sgt i32 %4, 0
  switch i32 %46, label %214 [
    i32 1, label %87
    i32 2, label %154
  ]

87:                                               ; preds = %83
  br i1 %86, label %88, label %1736

88:                                               ; preds = %87
  %89 = sext i32 %52 to i64
  %90 = icmp sgt i32 %3, 0
  %91 = zext nneg i32 %4 to i64
  br label %92

92:                                               ; preds = %88, %151
  %93 = phi i64 [ 0, %88 ], [ %152, %151 ]
  br i1 %90, label %94, label %151

94:                                               ; preds = %92
  %95 = getelementptr inbounds ptr, ptr %5, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !49
  %97 = getelementptr inbounds ptr, ptr %85, i64 %93
  %98 = load ptr, ptr %97, align 8, !tbaa !49
  %99 = getelementptr i16, ptr %98, i64 %89
  %100 = getelementptr inbounds i16, ptr %99, i64 3
  %101 = getelementptr inbounds i16, ptr %99, i64 2
  %102 = getelementptr i16, ptr %99, i64 -1
  %103 = getelementptr i16, ptr %99, i64 -2
  br label %104

104:                                              ; preds = %94, %104
  %105 = phi ptr [ %113, %104 ], [ %103, %94 ]
  %106 = phi i32 [ %149, %104 ], [ 0, %94 ]
  %107 = phi ptr [ %112, %104 ], [ %99, %94 ]
  %108 = phi ptr [ %148, %104 ], [ %96, %94 ]
  %109 = phi ptr [ %116, %104 ], [ %100, %94 ]
  %110 = phi ptr [ %122, %104 ], [ %101, %94 ]
  %111 = phi ptr [ %119, %104 ], [ %102, %94 ]
  %112 = getelementptr i16, ptr %107, i64 1
  %113 = getelementptr inbounds i16, ptr %105, i64 1
  %114 = load i16, ptr %105, align 2, !tbaa !66
  %115 = zext i16 %114 to i32
  %116 = getelementptr inbounds i16, ptr %109, i64 1
  %117 = load i16, ptr %109, align 2, !tbaa !66
  %118 = zext i16 %117 to i32
  %119 = getelementptr inbounds i16, ptr %111, i64 1
  %120 = load i16, ptr %111, align 2, !tbaa !66
  %121 = zext i16 %120 to i32
  %122 = getelementptr inbounds i16, ptr %110, i64 1
  %123 = load i16, ptr %110, align 2, !tbaa !66
  %124 = zext i16 %123 to i32
  %125 = add nuw nsw i32 %124, %121
  %126 = mul nsw i32 %125, -5
  %127 = load i16, ptr %107, align 2, !tbaa !66
  %128 = zext i16 %127 to i32
  %129 = load i16, ptr %112, align 2, !tbaa !66
  %130 = zext i16 %129 to i32
  %131 = add nuw nsw i32 %130, %128
  %132 = mul nuw nsw i32 %131, 20
  %133 = add nuw nsw i32 %115, 16
  %134 = add nuw nsw i32 %133, %118
  %135 = add nsw i32 %134, %126
  %136 = add nsw i32 %135, %132
  %137 = ashr i32 %136, 5
  %138 = tail call i32 @llvm.smax.i32(i32 %137, i32 0)
  %139 = tail call i32 @llvm.smin.i32(i32 %138, i32 %10)
  %140 = trunc i32 %139 to i16
  store i16 %140, ptr %108, align 2, !tbaa !66
  %141 = and i32 %139, 65535
  %142 = load i16, ptr %107, align 2, !tbaa !66
  %143 = zext i16 %142 to i32
  %144 = add nuw nsw i32 %143, 1
  %145 = add nuw nsw i32 %144, %141
  %146 = lshr i32 %145, 1
  %147 = trunc i32 %146 to i16
  store i16 %147, ptr %108, align 2, !tbaa !66
  %148 = getelementptr inbounds i16, ptr %108, i64 1
  %149 = add nuw nsw i32 %106, 1
  %150 = icmp eq i32 %149, %3
  br i1 %150, label %151, label %104, !llvm.loop !67

151:                                              ; preds = %104, %92
  %152 = add nuw nsw i64 %93, 1
  %153 = icmp eq i64 %152, %91
  br i1 %153, label %1736, label %92, !llvm.loop !68

154:                                              ; preds = %83
  br i1 %86, label %155, label %1736

155:                                              ; preds = %154
  %156 = sext i32 %52 to i64
  %157 = icmp sgt i32 %3, 0
  %158 = zext nneg i32 %4 to i64
  br label %159

159:                                              ; preds = %155, %211
  %160 = phi i64 [ 0, %155 ], [ %212, %211 ]
  br i1 %157, label %161, label %211

161:                                              ; preds = %159
  %162 = getelementptr inbounds ptr, ptr %5, i64 %160
  %163 = load ptr, ptr %162, align 8, !tbaa !49
  %164 = getelementptr inbounds ptr, ptr %85, i64 %160
  %165 = load ptr, ptr %164, align 8, !tbaa !49
  %166 = getelementptr i16, ptr %165, i64 %156
  %167 = getelementptr inbounds i16, ptr %166, i64 3
  %168 = getelementptr inbounds i16, ptr %166, i64 2
  %169 = getelementptr i16, ptr %166, i64 -1
  %170 = getelementptr i16, ptr %166, i64 -2
  br label %171

171:                                              ; preds = %161, %171
  %172 = phi ptr [ %180, %171 ], [ %170, %161 ]
  %173 = phi i32 [ %209, %171 ], [ 0, %161 ]
  %174 = phi ptr [ %208, %171 ], [ %163, %161 ]
  %175 = phi ptr [ %183, %171 ], [ %167, %161 ]
  %176 = phi ptr [ %189, %171 ], [ %168, %161 ]
  %177 = phi ptr [ %179, %171 ], [ %166, %161 ]
  %178 = phi ptr [ %186, %171 ], [ %169, %161 ]
  %179 = getelementptr i16, ptr %177, i64 1
  %180 = getelementptr inbounds i16, ptr %172, i64 1
  %181 = load i16, ptr %172, align 2, !tbaa !66
  %182 = zext i16 %181 to i32
  %183 = getelementptr inbounds i16, ptr %175, i64 1
  %184 = load i16, ptr %175, align 2, !tbaa !66
  %185 = zext i16 %184 to i32
  %186 = getelementptr inbounds i16, ptr %178, i64 1
  %187 = load i16, ptr %178, align 2, !tbaa !66
  %188 = zext i16 %187 to i32
  %189 = getelementptr inbounds i16, ptr %176, i64 1
  %190 = load i16, ptr %176, align 2, !tbaa !66
  %191 = zext i16 %190 to i32
  %192 = add nuw nsw i32 %191, %188
  %193 = mul nsw i32 %192, -5
  %194 = load i16, ptr %177, align 2, !tbaa !66
  %195 = zext i16 %194 to i32
  %196 = load i16, ptr %179, align 2, !tbaa !66
  %197 = zext i16 %196 to i32
  %198 = add nuw nsw i32 %197, %195
  %199 = mul nuw nsw i32 %198, 20
  %200 = add nuw nsw i32 %182, 16
  %201 = add nuw nsw i32 %200, %185
  %202 = add nsw i32 %201, %193
  %203 = add nsw i32 %202, %199
  %204 = ashr i32 %203, 5
  %205 = tail call i32 @llvm.smax.i32(i32 %204, i32 0)
  %206 = tail call i32 @llvm.smin.i32(i32 %205, i32 %10)
  %207 = trunc i32 %206 to i16
  %208 = getelementptr inbounds i16, ptr %174, i64 1
  store i16 %207, ptr %174, align 2, !tbaa !66
  %209 = add nuw nsw i32 %173, 1
  %210 = icmp eq i32 %209, %3
  br i1 %210, label %211, label %171, !llvm.loop !69

211:                                              ; preds = %171, %159
  %212 = add nuw nsw i64 %160, 1
  %213 = icmp eq i64 %212, %158
  br i1 %213, label %1736, label %159, !llvm.loop !70

214:                                              ; preds = %83
  br i1 %86, label %215, label %1736

215:                                              ; preds = %214
  %216 = sext i32 %52 to i64
  %217 = icmp sgt i32 %3, 0
  %218 = zext nneg i32 %4 to i64
  br label %219

219:                                              ; preds = %215, %278
  %220 = phi i64 [ 0, %215 ], [ %279, %278 ]
  br i1 %217, label %221, label %278

221:                                              ; preds = %219
  %222 = getelementptr inbounds ptr, ptr %5, i64 %220
  %223 = load ptr, ptr %222, align 8, !tbaa !49
  %224 = getelementptr inbounds ptr, ptr %85, i64 %220
  %225 = load ptr, ptr %224, align 8, !tbaa !49
  %226 = getelementptr i16, ptr %225, i64 %216
  %227 = getelementptr inbounds i16, ptr %226, i64 3
  %228 = getelementptr inbounds i16, ptr %226, i64 2
  %229 = getelementptr i16, ptr %226, i64 -1
  %230 = getelementptr i16, ptr %226, i64 -2
  br label %231

231:                                              ; preds = %221, %231
  %232 = phi ptr [ %240, %231 ], [ %230, %221 ]
  %233 = phi i32 [ %276, %231 ], [ 0, %221 ]
  %234 = phi ptr [ %239, %231 ], [ %226, %221 ]
  %235 = phi ptr [ %275, %231 ], [ %223, %221 ]
  %236 = phi ptr [ %243, %231 ], [ %227, %221 ]
  %237 = phi ptr [ %249, %231 ], [ %228, %221 ]
  %238 = phi ptr [ %246, %231 ], [ %229, %221 ]
  %239 = getelementptr i16, ptr %234, i64 1
  %240 = getelementptr inbounds i16, ptr %232, i64 1
  %241 = load i16, ptr %232, align 2, !tbaa !66
  %242 = zext i16 %241 to i32
  %243 = getelementptr inbounds i16, ptr %236, i64 1
  %244 = load i16, ptr %236, align 2, !tbaa !66
  %245 = zext i16 %244 to i32
  %246 = getelementptr inbounds i16, ptr %238, i64 1
  %247 = load i16, ptr %238, align 2, !tbaa !66
  %248 = zext i16 %247 to i32
  %249 = getelementptr inbounds i16, ptr %237, i64 1
  %250 = load i16, ptr %237, align 2, !tbaa !66
  %251 = zext i16 %250 to i32
  %252 = add nuw nsw i32 %251, %248
  %253 = mul nsw i32 %252, -5
  %254 = load i16, ptr %234, align 2, !tbaa !66
  %255 = zext i16 %254 to i32
  %256 = load i16, ptr %239, align 2, !tbaa !66
  %257 = zext i16 %256 to i32
  %258 = add nuw nsw i32 %257, %255
  %259 = mul nuw nsw i32 %258, 20
  %260 = add nuw nsw i32 %242, 16
  %261 = add nuw nsw i32 %260, %245
  %262 = add nsw i32 %261, %253
  %263 = add nsw i32 %262, %259
  %264 = ashr i32 %263, 5
  %265 = tail call i32 @llvm.smax.i32(i32 %264, i32 0)
  %266 = tail call i32 @llvm.smin.i32(i32 %265, i32 %10)
  %267 = trunc i32 %266 to i16
  store i16 %267, ptr %235, align 2, !tbaa !66
  %268 = and i32 %266, 65535
  %269 = load i16, ptr %239, align 2, !tbaa !66
  %270 = zext i16 %269 to i32
  %271 = add nuw nsw i32 %270, 1
  %272 = add nuw nsw i32 %271, %268
  %273 = lshr i32 %272, 1
  %274 = trunc i32 %273 to i16
  store i16 %274, ptr %235, align 2, !tbaa !66
  %275 = getelementptr inbounds i16, ptr %235, i64 1
  %276 = add nuw nsw i32 %233, 1
  %277 = icmp eq i32 %276, %3
  br i1 %277, label %278, label %231, !llvm.loop !71

278:                                              ; preds = %231, %219
  %279 = add nuw nsw i64 %220, 1
  %280 = icmp eq i64 %279, %218
  br i1 %280, label %1736, label %219, !llvm.loop !72

281:                                              ; preds = %81
  switch i32 %46, label %924 [
    i32 0, label %282
    i32 2, label %525
  ]

282:                                              ; preds = %281
  switch i32 %47, label %439 [
    i32 1, label %283
    i32 2, label %367
  ]

283:                                              ; preds = %282
  %284 = sext i32 %55 to i64
  %285 = getelementptr inbounds ptr, ptr %45, i64 %284
  %286 = sext i32 %52 to i64
  %287 = icmp sgt i32 %4, 0
  br i1 %287, label %288, label %1736

288:                                              ; preds = %283
  %289 = getelementptr inbounds ptr, ptr %285, i64 -2
  %290 = load ptr, ptr %289, align 8, !tbaa !49
  %291 = getelementptr inbounds i16, ptr %290, i64 %286
  %292 = sext i32 %6 to i64
  %293 = icmp sgt i32 %3, 0
  %294 = sext i32 %3 to i64
  %295 = sub nsw i64 0, %294
  %296 = zext nneg i32 %4 to i64
  br label %297

297:                                              ; preds = %363, %288
  %298 = phi i64 [ 0, %288 ], [ %301, %363 ]
  %299 = phi ptr [ %291, %288 ], [ %365, %363 ]
  %300 = getelementptr inbounds i16, ptr %299, i64 %292
  %301 = add nuw nsw i64 %298, 1
  br i1 %293, label %302, label %363

302:                                              ; preds = %297
  %303 = getelementptr inbounds ptr, ptr %285, i64 %298
  %304 = load ptr, ptr %303, align 8, !tbaa !49
  %305 = getelementptr inbounds i16, ptr %304, i64 %286
  %306 = getelementptr inbounds ptr, ptr %5, i64 %298
  %307 = load ptr, ptr %306, align 8, !tbaa !49
  %308 = getelementptr inbounds i16, ptr %300, i64 %292
  %309 = getelementptr inbounds i16, ptr %308, i64 %292
  %310 = getelementptr inbounds i16, ptr %309, i64 %292
  %311 = getelementptr inbounds i16, ptr %310, i64 %292
  br label %312

312:                                              ; preds = %312, %302
  %313 = phi ptr [ %322, %312 ], [ %299, %302 ]
  %314 = phi i32 [ %361, %312 ], [ 0, %302 ]
  %315 = phi ptr [ %353, %312 ], [ %305, %302 ]
  %316 = phi ptr [ %360, %312 ], [ %307, %302 ]
  %317 = phi ptr [ %325, %312 ], [ %311, %302 ]
  %318 = phi ptr [ %331, %312 ], [ %310, %302 ]
  %319 = phi ptr [ %339, %312 ], [ %309, %302 ]
  %320 = phi ptr [ %336, %312 ], [ %308, %302 ]
  %321 = phi ptr [ %328, %312 ], [ %300, %302 ]
  %322 = getelementptr inbounds i16, ptr %313, i64 1
  %323 = load i16, ptr %313, align 2, !tbaa !66
  %324 = zext i16 %323 to i32
  %325 = getelementptr inbounds i16, ptr %317, i64 1
  %326 = load i16, ptr %317, align 2, !tbaa !66
  %327 = zext i16 %326 to i32
  %328 = getelementptr inbounds i16, ptr %321, i64 1
  %329 = load i16, ptr %321, align 2, !tbaa !66
  %330 = zext i16 %329 to i32
  %331 = getelementptr inbounds i16, ptr %318, i64 1
  %332 = load i16, ptr %318, align 2, !tbaa !66
  %333 = zext i16 %332 to i32
  %334 = add nuw nsw i32 %333, %330
  %335 = mul nsw i32 %334, -5
  %336 = getelementptr inbounds i16, ptr %320, i64 1
  %337 = load i16, ptr %320, align 2, !tbaa !66
  %338 = zext i16 %337 to i32
  %339 = getelementptr inbounds i16, ptr %319, i64 1
  %340 = load i16, ptr %319, align 2, !tbaa !66
  %341 = zext i16 %340 to i32
  %342 = add nuw nsw i32 %341, %338
  %343 = mul nuw nsw i32 %342, 20
  %344 = add nuw nsw i32 %324, 16
  %345 = add nuw nsw i32 %344, %327
  %346 = add nsw i32 %345, %335
  %347 = add nsw i32 %346, %343
  %348 = ashr i32 %347, 5
  %349 = tail call i32 @llvm.smax.i32(i32 %348, i32 0)
  %350 = tail call i32 @llvm.smin.i32(i32 %349, i32 %10)
  %351 = trunc i32 %350 to i16
  store i16 %351, ptr %316, align 2, !tbaa !66
  %352 = and i32 %350, 65535
  %353 = getelementptr inbounds i16, ptr %315, i64 1
  %354 = load i16, ptr %315, align 2, !tbaa !66
  %355 = zext i16 %354 to i32
  %356 = add nuw nsw i32 %355, 1
  %357 = add nuw nsw i32 %356, %352
  %358 = lshr i32 %357, 1
  %359 = trunc i32 %358 to i16
  store i16 %359, ptr %316, align 2, !tbaa !66
  %360 = getelementptr inbounds i16, ptr %316, i64 1
  %361 = add nuw nsw i32 %314, 1
  %362 = icmp eq i32 %361, %3
  br i1 %362, label %363, label %312, !llvm.loop !73

363:                                              ; preds = %312, %297
  %364 = phi ptr [ %300, %297 ], [ %328, %312 ]
  %365 = getelementptr inbounds i16, ptr %364, i64 %295
  %366 = icmp eq i64 %301, %296
  br i1 %366, label %1736, label %297, !llvm.loop !74

367:                                              ; preds = %282
  %368 = icmp sgt i32 %4, 0
  br i1 %368, label %369, label %1736

369:                                              ; preds = %367
  %370 = sext i32 %55 to i64
  %371 = getelementptr inbounds ptr, ptr %45, i64 %370
  %372 = getelementptr inbounds ptr, ptr %371, i64 -2
  %373 = load ptr, ptr %372, align 8, !tbaa !49
  %374 = sext i32 %52 to i64
  %375 = getelementptr inbounds i16, ptr %373, i64 %374
  %376 = sext i32 %6 to i64
  %377 = icmp sgt i32 %3, 0
  %378 = sext i32 %3 to i64
  %379 = sub nsw i64 0, %378
  %380 = zext nneg i32 %4 to i64
  br label %381

381:                                              ; preds = %434, %369
  %382 = phi i64 [ 0, %369 ], [ %437, %434 ]
  %383 = phi ptr [ %375, %369 ], [ %436, %434 ]
  %384 = getelementptr inbounds i16, ptr %383, i64 %376
  br i1 %377, label %385, label %434

385:                                              ; preds = %381
  %386 = getelementptr inbounds ptr, ptr %5, i64 %382
  %387 = load ptr, ptr %386, align 8, !tbaa !49
  %388 = getelementptr inbounds i16, ptr %384, i64 %376
  %389 = getelementptr inbounds i16, ptr %388, i64 %376
  %390 = getelementptr inbounds i16, ptr %389, i64 %376
  %391 = getelementptr inbounds i16, ptr %390, i64 %376
  br label %392

392:                                              ; preds = %392, %385
  %393 = phi ptr [ %401, %392 ], [ %383, %385 ]
  %394 = phi i32 [ %432, %392 ], [ 0, %385 ]
  %395 = phi ptr [ %431, %392 ], [ %387, %385 ]
  %396 = phi ptr [ %404, %392 ], [ %391, %385 ]
  %397 = phi ptr [ %410, %392 ], [ %390, %385 ]
  %398 = phi ptr [ %418, %392 ], [ %389, %385 ]
  %399 = phi ptr [ %415, %392 ], [ %388, %385 ]
  %400 = phi ptr [ %407, %392 ], [ %384, %385 ]
  %401 = getelementptr inbounds i16, ptr %393, i64 1
  %402 = load i16, ptr %393, align 2, !tbaa !66
  %403 = zext i16 %402 to i32
  %404 = getelementptr inbounds i16, ptr %396, i64 1
  %405 = load i16, ptr %396, align 2, !tbaa !66
  %406 = zext i16 %405 to i32
  %407 = getelementptr inbounds i16, ptr %400, i64 1
  %408 = load i16, ptr %400, align 2, !tbaa !66
  %409 = zext i16 %408 to i32
  %410 = getelementptr inbounds i16, ptr %397, i64 1
  %411 = load i16, ptr %397, align 2, !tbaa !66
  %412 = zext i16 %411 to i32
  %413 = add nuw nsw i32 %412, %409
  %414 = mul nsw i32 %413, -5
  %415 = getelementptr inbounds i16, ptr %399, i64 1
  %416 = load i16, ptr %399, align 2, !tbaa !66
  %417 = zext i16 %416 to i32
  %418 = getelementptr inbounds i16, ptr %398, i64 1
  %419 = load i16, ptr %398, align 2, !tbaa !66
  %420 = zext i16 %419 to i32
  %421 = add nuw nsw i32 %420, %417
  %422 = mul nuw nsw i32 %421, 20
  %423 = add nuw nsw i32 %403, 16
  %424 = add nuw nsw i32 %423, %406
  %425 = add nsw i32 %424, %414
  %426 = add nsw i32 %425, %422
  %427 = ashr i32 %426, 5
  %428 = tail call i32 @llvm.smax.i32(i32 %427, i32 0)
  %429 = tail call i32 @llvm.smin.i32(i32 %428, i32 %10)
  %430 = trunc i32 %429 to i16
  %431 = getelementptr inbounds i16, ptr %395, i64 1
  store i16 %430, ptr %395, align 2, !tbaa !66
  %432 = add nuw nsw i32 %394, 1
  %433 = icmp eq i32 %432, %3
  br i1 %433, label %434, label %392, !llvm.loop !75

434:                                              ; preds = %392, %381
  %435 = phi ptr [ %384, %381 ], [ %407, %392 ]
  %436 = getelementptr inbounds i16, ptr %435, i64 %379
  %437 = add nuw nsw i64 %382, 1
  %438 = icmp eq i64 %437, %380
  br i1 %438, label %1736, label %381, !llvm.loop !76

439:                                              ; preds = %282
  %440 = sext i32 %55 to i64
  %441 = getelementptr inbounds ptr, ptr %45, i64 %440
  %442 = sext i32 %52 to i64
  %443 = icmp sgt i32 %4, 0
  br i1 %443, label %444, label %1736

444:                                              ; preds = %439
  %445 = getelementptr inbounds ptr, ptr %441, i64 -2
  %446 = load ptr, ptr %445, align 8, !tbaa !49
  %447 = getelementptr inbounds i16, ptr %446, i64 %442
  %448 = sext i32 %6 to i64
  %449 = icmp sgt i32 %3, 0
  %450 = sext i32 %3 to i64
  %451 = sub nsw i64 0, %450
  %452 = zext nneg i32 %4 to i64
  br label %453

453:                                              ; preds = %520, %444
  %454 = phi i64 [ 0, %444 ], [ %523, %520 ]
  %455 = phi i64 [ 1, %444 ], [ %458, %520 ]
  %456 = phi ptr [ %447, %444 ], [ %522, %520 ]
  %457 = getelementptr inbounds i16, ptr %456, i64 %448
  %458 = add nuw nsw i64 %455, 1
  br i1 %449, label %459, label %520

459:                                              ; preds = %453
  %460 = getelementptr inbounds ptr, ptr %441, i64 %455
  %461 = load ptr, ptr %460, align 8, !tbaa !49
  %462 = getelementptr inbounds i16, ptr %461, i64 %442
  %463 = getelementptr inbounds ptr, ptr %5, i64 %454
  %464 = load ptr, ptr %463, align 8, !tbaa !49
  %465 = getelementptr inbounds i16, ptr %457, i64 %448
  %466 = getelementptr inbounds i16, ptr %465, i64 %448
  %467 = getelementptr inbounds i16, ptr %466, i64 %448
  %468 = getelementptr inbounds i16, ptr %467, i64 %448
  br label %469

469:                                              ; preds = %469, %459
  %470 = phi ptr [ %479, %469 ], [ %456, %459 ]
  %471 = phi i32 [ %518, %469 ], [ 0, %459 ]
  %472 = phi ptr [ %510, %469 ], [ %462, %459 ]
  %473 = phi ptr [ %517, %469 ], [ %464, %459 ]
  %474 = phi ptr [ %482, %469 ], [ %468, %459 ]
  %475 = phi ptr [ %488, %469 ], [ %467, %459 ]
  %476 = phi ptr [ %496, %469 ], [ %466, %459 ]
  %477 = phi ptr [ %493, %469 ], [ %465, %459 ]
  %478 = phi ptr [ %485, %469 ], [ %457, %459 ]
  %479 = getelementptr inbounds i16, ptr %470, i64 1
  %480 = load i16, ptr %470, align 2, !tbaa !66
  %481 = zext i16 %480 to i32
  %482 = getelementptr inbounds i16, ptr %474, i64 1
  %483 = load i16, ptr %474, align 2, !tbaa !66
  %484 = zext i16 %483 to i32
  %485 = getelementptr inbounds i16, ptr %478, i64 1
  %486 = load i16, ptr %478, align 2, !tbaa !66
  %487 = zext i16 %486 to i32
  %488 = getelementptr inbounds i16, ptr %475, i64 1
  %489 = load i16, ptr %475, align 2, !tbaa !66
  %490 = zext i16 %489 to i32
  %491 = add nuw nsw i32 %490, %487
  %492 = mul nsw i32 %491, -5
  %493 = getelementptr inbounds i16, ptr %477, i64 1
  %494 = load i16, ptr %477, align 2, !tbaa !66
  %495 = zext i16 %494 to i32
  %496 = getelementptr inbounds i16, ptr %476, i64 1
  %497 = load i16, ptr %476, align 2, !tbaa !66
  %498 = zext i16 %497 to i32
  %499 = add nuw nsw i32 %498, %495
  %500 = mul nuw nsw i32 %499, 20
  %501 = add nuw nsw i32 %481, 16
  %502 = add nuw nsw i32 %501, %484
  %503 = add nsw i32 %502, %492
  %504 = add nsw i32 %503, %500
  %505 = ashr i32 %504, 5
  %506 = tail call i32 @llvm.smax.i32(i32 %505, i32 0)
  %507 = tail call i32 @llvm.smin.i32(i32 %506, i32 %10)
  %508 = trunc i32 %507 to i16
  store i16 %508, ptr %473, align 2, !tbaa !66
  %509 = and i32 %507, 65535
  %510 = getelementptr inbounds i16, ptr %472, i64 1
  %511 = load i16, ptr %472, align 2, !tbaa !66
  %512 = zext i16 %511 to i32
  %513 = add nuw nsw i32 %512, 1
  %514 = add nuw nsw i32 %513, %509
  %515 = lshr i32 %514, 1
  %516 = trunc i32 %515 to i16
  store i16 %516, ptr %473, align 2, !tbaa !66
  %517 = getelementptr inbounds i16, ptr %473, i64 1
  %518 = add nuw nsw i32 %471, 1
  %519 = icmp eq i32 %518, %3
  br i1 %519, label %520, label %469, !llvm.loop !77

520:                                              ; preds = %469, %453
  %521 = phi ptr [ %457, %453 ], [ %485, %469 ]
  %522 = getelementptr inbounds i16, ptr %521, i64 %451
  %523 = add nuw nsw i64 %454, 1
  %524 = icmp eq i64 %523, %452
  br i1 %524, label %1736, label %453, !llvm.loop !78

525:                                              ; preds = %281
  %526 = sext i32 %55 to i64
  %527 = getelementptr inbounds ptr, ptr %45, i64 %526
  %528 = icmp sgt i32 %4, -5
  switch i32 %47, label %787 [
    i32 1, label %529
    i32 2, label %666
  ]

529:                                              ; preds = %525
  br i1 %528, label %530, label %537

530:                                              ; preds = %529
  %531 = sext i32 %52 to i64
  %532 = icmp sgt i32 %3, 0
  %533 = add i32 %4, 4
  %534 = tail call i32 @llvm.smax.i32(i32 %533, i32 0)
  %535 = add nuw i32 %534, 1
  %536 = zext i32 %535 to i64
  br label %542

537:                                              ; preds = %591, %529
  %538 = icmp sgt i32 %4, 0
  br i1 %538, label %539, label %1736

539:                                              ; preds = %537
  %540 = icmp sgt i32 %3, 0
  %541 = zext nneg i32 %4 to i64
  br label %596

542:                                              ; preds = %591, %530
  %543 = phi i64 [ 0, %530 ], [ %592, %591 ]
  %544 = phi i64 [ -2, %530 ], [ %545, %591 ]
  %545 = add nsw i64 %544, 1
  br i1 %532, label %546, label %591

546:                                              ; preds = %542
  %547 = getelementptr inbounds ptr, ptr %9, i64 %543
  %548 = load ptr, ptr %547, align 8, !tbaa !49
  %549 = getelementptr inbounds ptr, ptr %527, i64 %544
  %550 = load ptr, ptr %549, align 8, !tbaa !49
  %551 = getelementptr i16, ptr %550, i64 %531
  %552 = getelementptr inbounds i16, ptr %551, i64 3
  %553 = getelementptr inbounds i16, ptr %551, i64 2
  %554 = getelementptr i16, ptr %551, i64 -1
  %555 = getelementptr i16, ptr %551, i64 -2
  br label %556

556:                                              ; preds = %556, %546
  %557 = phi i32 [ %589, %556 ], [ 0, %546 ]
  %558 = phi ptr [ %568, %556 ], [ %552, %546 ]
  %559 = phi ptr [ %575, %556 ], [ %553, %546 ]
  %560 = phi ptr [ %564, %556 ], [ %551, %546 ]
  %561 = phi ptr [ %572, %556 ], [ %554, %546 ]
  %562 = phi ptr [ %565, %556 ], [ %555, %546 ]
  %563 = phi ptr [ %588, %556 ], [ %548, %546 ]
  %564 = getelementptr i16, ptr %560, i64 1
  %565 = getelementptr inbounds i16, ptr %562, i64 1
  %566 = load i16, ptr %562, align 2, !tbaa !66
  %567 = zext i16 %566 to i32
  %568 = getelementptr inbounds i16, ptr %558, i64 1
  %569 = load i16, ptr %558, align 2, !tbaa !66
  %570 = zext i16 %569 to i32
  %571 = add nuw nsw i32 %570, %567
  %572 = getelementptr inbounds i16, ptr %561, i64 1
  %573 = load i16, ptr %561, align 2, !tbaa !66
  %574 = zext i16 %573 to i32
  %575 = getelementptr inbounds i16, ptr %559, i64 1
  %576 = load i16, ptr %559, align 2, !tbaa !66
  %577 = zext i16 %576 to i32
  %578 = add nuw nsw i32 %577, %574
  %579 = mul nsw i32 %578, -5
  %580 = add nsw i32 %571, %579
  %581 = load i16, ptr %560, align 2, !tbaa !66
  %582 = zext i16 %581 to i32
  %583 = load i16, ptr %564, align 2, !tbaa !66
  %584 = zext i16 %583 to i32
  %585 = add nuw nsw i32 %584, %582
  %586 = mul nuw nsw i32 %585, 20
  %587 = add nsw i32 %580, %586
  %588 = getelementptr inbounds i32, ptr %563, i64 1
  store i32 %587, ptr %563, align 4, !tbaa !79
  %589 = add nuw nsw i32 %557, 1
  %590 = icmp eq i32 %589, %3
  br i1 %590, label %591, label %556, !llvm.loop !80

591:                                              ; preds = %556, %542
  %592 = add nuw nsw i64 %543, 1
  %593 = icmp eq i64 %592, %536
  br i1 %593, label %537, label %542, !llvm.loop !81

594:                                              ; preds = %618, %596
  %595 = icmp eq i64 %600, %541
  br i1 %595, label %1736, label %596, !llvm.loop !82

596:                                              ; preds = %594, %539
  %597 = phi i64 [ 0, %539 ], [ %600, %594 ]
  %598 = phi i64 [ 2, %539 ], [ %599, %594 ]
  %599 = add nuw nsw i64 %598, 1
  %600 = add nuw nsw i64 %597, 1
  br i1 %540, label %601, label %594

601:                                              ; preds = %596
  %602 = getelementptr inbounds ptr, ptr %5, i64 %597
  %603 = load ptr, ptr %602, align 8, !tbaa !49
  %604 = getelementptr inbounds ptr, ptr %9, i64 %597
  %605 = getelementptr ptr, ptr %604, i64 5
  %606 = load ptr, ptr %605, align 8, !tbaa !49
  %607 = getelementptr ptr, ptr %604, i64 4
  %608 = load ptr, ptr %607, align 8, !tbaa !49
  %609 = getelementptr ptr, ptr %604, i64 3
  %610 = load ptr, ptr %609, align 8, !tbaa !49
  %611 = getelementptr ptr, ptr %604, i64 2
  %612 = load ptr, ptr %611, align 8, !tbaa !49
  %613 = getelementptr inbounds ptr, ptr %9, i64 %600
  %614 = load ptr, ptr %613, align 8, !tbaa !49
  %615 = load ptr, ptr %604, align 8, !tbaa !49
  %616 = getelementptr inbounds ptr, ptr %9, i64 %598
  %617 = load ptr, ptr %616, align 8, !tbaa !49
  br label %618

618:                                              ; preds = %618, %601
  %619 = phi i32 [ %664, %618 ], [ 0, %601 ]
  %620 = phi ptr [ %663, %618 ], [ %603, %601 ]
  %621 = phi ptr [ %630, %618 ], [ %606, %601 ]
  %622 = phi ptr [ %634, %618 ], [ %608, %601 ]
  %623 = phi ptr [ %640, %618 ], [ %610, %601 ]
  %624 = phi ptr [ %638, %618 ], [ %612, %601 ]
  %625 = phi ptr [ %632, %618 ], [ %614, %601 ]
  %626 = phi ptr [ %628, %618 ], [ %615, %601 ]
  %627 = phi ptr [ %653, %618 ], [ %617, %601 ]
  %628 = getelementptr inbounds i32, ptr %626, i64 1
  %629 = load i32, ptr %626, align 4, !tbaa !79
  %630 = getelementptr inbounds i32, ptr %621, i64 1
  %631 = load i32, ptr %621, align 4, !tbaa !79
  %632 = getelementptr inbounds i32, ptr %625, i64 1
  %633 = load i32, ptr %625, align 4, !tbaa !79
  %634 = getelementptr inbounds i32, ptr %622, i64 1
  %635 = load i32, ptr %622, align 4, !tbaa !79
  %636 = add nsw i32 %635, %633
  %637 = mul i32 %636, -5
  %638 = getelementptr inbounds i32, ptr %624, i64 1
  %639 = load i32, ptr %624, align 4, !tbaa !79
  %640 = getelementptr inbounds i32, ptr %623, i64 1
  %641 = load i32, ptr %623, align 4, !tbaa !79
  %642 = add nsw i32 %641, %639
  %643 = mul nsw i32 %642, 20
  %644 = add i32 %629, 512
  %645 = add i32 %644, %631
  %646 = add i32 %645, %637
  %647 = add i32 %646, %643
  %648 = ashr i32 %647, 10
  %649 = tail call i32 @llvm.smax.i32(i32 %648, i32 0)
  %650 = tail call i32 @llvm.smin.i32(i32 %649, i32 %10)
  %651 = trunc i32 %650 to i16
  store i16 %651, ptr %620, align 2, !tbaa !66
  %652 = and i32 %650, 65535
  %653 = getelementptr inbounds i32, ptr %627, i64 1
  %654 = load i32, ptr %627, align 4, !tbaa !79
  %655 = add nsw i32 %654, 16
  %656 = ashr i32 %655, 5
  %657 = tail call i32 @llvm.smax.i32(i32 %656, i32 0)
  %658 = tail call i32 @llvm.smin.i32(i32 %657, i32 %10)
  %659 = add nsw i32 %658, 1
  %660 = add nsw i32 %659, %652
  %661 = lshr i32 %660, 1
  %662 = trunc i32 %661 to i16
  store i16 %662, ptr %620, align 2, !tbaa !66
  %663 = getelementptr inbounds i16, ptr %620, i64 1
  %664 = add nuw nsw i32 %619, 1
  %665 = icmp eq i32 %664, %3
  br i1 %665, label %594, label %618, !llvm.loop !83

666:                                              ; preds = %525
  br i1 %528, label %667, label %674

667:                                              ; preds = %666
  %668 = sext i32 %52 to i64
  %669 = icmp sgt i32 %3, 0
  %670 = add i32 %4, 4
  %671 = tail call i32 @llvm.smax.i32(i32 %670, i32 0)
  %672 = add nuw i32 %671, 1
  %673 = zext i32 %672 to i64
  br label %679

674:                                              ; preds = %728, %666
  %675 = icmp sgt i32 %4, 0
  br i1 %675, label %676, label %1736

676:                                              ; preds = %674
  %677 = icmp sgt i32 %3, 0
  %678 = zext nneg i32 %4 to i64
  br label %733

679:                                              ; preds = %728, %667
  %680 = phi i64 [ 0, %667 ], [ %729, %728 ]
  %681 = phi i64 [ -2, %667 ], [ %682, %728 ]
  %682 = add nsw i64 %681, 1
  br i1 %669, label %683, label %728

683:                                              ; preds = %679
  %684 = getelementptr inbounds ptr, ptr %9, i64 %680
  %685 = load ptr, ptr %684, align 8, !tbaa !49
  %686 = getelementptr inbounds ptr, ptr %527, i64 %681
  %687 = load ptr, ptr %686, align 8, !tbaa !49
  %688 = getelementptr i16, ptr %687, i64 %668
  %689 = getelementptr inbounds i16, ptr %688, i64 3
  %690 = getelementptr inbounds i16, ptr %688, i64 2
  %691 = getelementptr i16, ptr %688, i64 -1
  %692 = getelementptr i16, ptr %688, i64 -2
  br label %693

693:                                              ; preds = %693, %683
  %694 = phi i32 [ %726, %693 ], [ 0, %683 ]
  %695 = phi ptr [ %705, %693 ], [ %689, %683 ]
  %696 = phi ptr [ %712, %693 ], [ %690, %683 ]
  %697 = phi ptr [ %701, %693 ], [ %688, %683 ]
  %698 = phi ptr [ %709, %693 ], [ %691, %683 ]
  %699 = phi ptr [ %702, %693 ], [ %692, %683 ]
  %700 = phi ptr [ %725, %693 ], [ %685, %683 ]
  %701 = getelementptr i16, ptr %697, i64 1
  %702 = getelementptr inbounds i16, ptr %699, i64 1
  %703 = load i16, ptr %699, align 2, !tbaa !66
  %704 = zext i16 %703 to i32
  %705 = getelementptr inbounds i16, ptr %695, i64 1
  %706 = load i16, ptr %695, align 2, !tbaa !66
  %707 = zext i16 %706 to i32
  %708 = add nuw nsw i32 %707, %704
  %709 = getelementptr inbounds i16, ptr %698, i64 1
  %710 = load i16, ptr %698, align 2, !tbaa !66
  %711 = zext i16 %710 to i32
  %712 = getelementptr inbounds i16, ptr %696, i64 1
  %713 = load i16, ptr %696, align 2, !tbaa !66
  %714 = zext i16 %713 to i32
  %715 = add nuw nsw i32 %714, %711
  %716 = mul nsw i32 %715, -5
  %717 = add nsw i32 %708, %716
  %718 = load i16, ptr %697, align 2, !tbaa !66
  %719 = zext i16 %718 to i32
  %720 = load i16, ptr %701, align 2, !tbaa !66
  %721 = zext i16 %720 to i32
  %722 = add nuw nsw i32 %721, %719
  %723 = mul nuw nsw i32 %722, 20
  %724 = add nsw i32 %717, %723
  %725 = getelementptr inbounds i32, ptr %700, i64 1
  store i32 %724, ptr %700, align 4, !tbaa !79
  %726 = add nuw nsw i32 %694, 1
  %727 = icmp eq i32 %726, %3
  br i1 %727, label %728, label %693, !llvm.loop !84

728:                                              ; preds = %693, %679
  %729 = add nuw nsw i64 %680, 1
  %730 = icmp eq i64 %729, %673
  br i1 %730, label %674, label %679, !llvm.loop !85

731:                                              ; preds = %751, %733
  %732 = icmp eq i64 %735, %678
  br i1 %732, label %1736, label %733, !llvm.loop !86

733:                                              ; preds = %731, %676
  %734 = phi i64 [ 0, %676 ], [ %735, %731 ]
  %735 = add nuw nsw i64 %734, 1
  br i1 %677, label %736, label %731

736:                                              ; preds = %733
  %737 = getelementptr inbounds ptr, ptr %5, i64 %734
  %738 = load ptr, ptr %737, align 8, !tbaa !49
  %739 = getelementptr inbounds ptr, ptr %9, i64 %734
  %740 = getelementptr ptr, ptr %739, i64 5
  %741 = load ptr, ptr %740, align 8, !tbaa !49
  %742 = getelementptr ptr, ptr %739, i64 4
  %743 = load ptr, ptr %742, align 8, !tbaa !49
  %744 = getelementptr ptr, ptr %739, i64 3
  %745 = load ptr, ptr %744, align 8, !tbaa !49
  %746 = getelementptr ptr, ptr %739, i64 2
  %747 = load ptr, ptr %746, align 8, !tbaa !49
  %748 = getelementptr inbounds ptr, ptr %9, i64 %735
  %749 = load ptr, ptr %748, align 8, !tbaa !49
  %750 = load ptr, ptr %739, align 8, !tbaa !49
  br label %751

751:                                              ; preds = %751, %736
  %752 = phi i32 [ %785, %751 ], [ 0, %736 ]
  %753 = phi ptr [ %784, %751 ], [ %738, %736 ]
  %754 = phi ptr [ %762, %751 ], [ %741, %736 ]
  %755 = phi ptr [ %766, %751 ], [ %743, %736 ]
  %756 = phi ptr [ %772, %751 ], [ %745, %736 ]
  %757 = phi ptr [ %770, %751 ], [ %747, %736 ]
  %758 = phi ptr [ %764, %751 ], [ %749, %736 ]
  %759 = phi ptr [ %760, %751 ], [ %750, %736 ]
  %760 = getelementptr inbounds i32, ptr %759, i64 1
  %761 = load i32, ptr %759, align 4, !tbaa !79
  %762 = getelementptr inbounds i32, ptr %754, i64 1
  %763 = load i32, ptr %754, align 4, !tbaa !79
  %764 = getelementptr inbounds i32, ptr %758, i64 1
  %765 = load i32, ptr %758, align 4, !tbaa !79
  %766 = getelementptr inbounds i32, ptr %755, i64 1
  %767 = load i32, ptr %755, align 4, !tbaa !79
  %768 = add nsw i32 %767, %765
  %769 = mul i32 %768, -5
  %770 = getelementptr inbounds i32, ptr %757, i64 1
  %771 = load i32, ptr %757, align 4, !tbaa !79
  %772 = getelementptr inbounds i32, ptr %756, i64 1
  %773 = load i32, ptr %756, align 4, !tbaa !79
  %774 = add nsw i32 %773, %771
  %775 = mul nsw i32 %774, 20
  %776 = add i32 %761, 512
  %777 = add i32 %776, %763
  %778 = add i32 %777, %769
  %779 = add i32 %778, %775
  %780 = ashr i32 %779, 10
  %781 = tail call i32 @llvm.smax.i32(i32 %780, i32 0)
  %782 = tail call i32 @llvm.smin.i32(i32 %781, i32 %10)
  %783 = trunc i32 %782 to i16
  %784 = getelementptr inbounds i16, ptr %753, i64 1
  store i16 %783, ptr %753, align 2, !tbaa !66
  %785 = add nuw nsw i32 %752, 1
  %786 = icmp eq i32 %785, %3
  br i1 %786, label %731, label %751, !llvm.loop !87

787:                                              ; preds = %525
  br i1 %528, label %788, label %795

788:                                              ; preds = %787
  %789 = sext i32 %52 to i64
  %790 = icmp sgt i32 %3, 0
  %791 = add i32 %4, 4
  %792 = tail call i32 @llvm.smax.i32(i32 %791, i32 0)
  %793 = add nuw i32 %792, 1
  %794 = zext i32 %793 to i64
  br label %800

795:                                              ; preds = %849, %787
  %796 = icmp sgt i32 %4, 0
  br i1 %796, label %797, label %1736

797:                                              ; preds = %795
  %798 = icmp sgt i32 %3, 0
  %799 = zext nneg i32 %4 to i64
  br label %854

800:                                              ; preds = %849, %788
  %801 = phi i64 [ 0, %788 ], [ %850, %849 ]
  %802 = phi i64 [ -2, %788 ], [ %803, %849 ]
  %803 = add nsw i64 %802, 1
  br i1 %790, label %804, label %849

804:                                              ; preds = %800
  %805 = getelementptr inbounds ptr, ptr %9, i64 %801
  %806 = load ptr, ptr %805, align 8, !tbaa !49
  %807 = getelementptr inbounds ptr, ptr %527, i64 %802
  %808 = load ptr, ptr %807, align 8, !tbaa !49
  %809 = getelementptr i16, ptr %808, i64 %789
  %810 = getelementptr inbounds i16, ptr %809, i64 3
  %811 = getelementptr inbounds i16, ptr %809, i64 2
  %812 = getelementptr i16, ptr %809, i64 -1
  %813 = getelementptr i16, ptr %809, i64 -2
  br label %814

814:                                              ; preds = %814, %804
  %815 = phi i32 [ %847, %814 ], [ 0, %804 ]
  %816 = phi ptr [ %826, %814 ], [ %810, %804 ]
  %817 = phi ptr [ %833, %814 ], [ %811, %804 ]
  %818 = phi ptr [ %822, %814 ], [ %809, %804 ]
  %819 = phi ptr [ %830, %814 ], [ %812, %804 ]
  %820 = phi ptr [ %823, %814 ], [ %813, %804 ]
  %821 = phi ptr [ %846, %814 ], [ %806, %804 ]
  %822 = getelementptr i16, ptr %818, i64 1
  %823 = getelementptr inbounds i16, ptr %820, i64 1
  %824 = load i16, ptr %820, align 2, !tbaa !66
  %825 = zext i16 %824 to i32
  %826 = getelementptr inbounds i16, ptr %816, i64 1
  %827 = load i16, ptr %816, align 2, !tbaa !66
  %828 = zext i16 %827 to i32
  %829 = add nuw nsw i32 %828, %825
  %830 = getelementptr inbounds i16, ptr %819, i64 1
  %831 = load i16, ptr %819, align 2, !tbaa !66
  %832 = zext i16 %831 to i32
  %833 = getelementptr inbounds i16, ptr %817, i64 1
  %834 = load i16, ptr %817, align 2, !tbaa !66
  %835 = zext i16 %834 to i32
  %836 = add nuw nsw i32 %835, %832
  %837 = mul nsw i32 %836, -5
  %838 = add nsw i32 %829, %837
  %839 = load i16, ptr %818, align 2, !tbaa !66
  %840 = zext i16 %839 to i32
  %841 = load i16, ptr %822, align 2, !tbaa !66
  %842 = zext i16 %841 to i32
  %843 = add nuw nsw i32 %842, %840
  %844 = mul nuw nsw i32 %843, 20
  %845 = add nsw i32 %838, %844
  %846 = getelementptr inbounds i32, ptr %821, i64 1
  store i32 %845, ptr %821, align 4, !tbaa !79
  %847 = add nuw nsw i32 %815, 1
  %848 = icmp eq i32 %847, %3
  br i1 %848, label %849, label %814, !llvm.loop !88

849:                                              ; preds = %814, %800
  %850 = add nuw nsw i64 %801, 1
  %851 = icmp eq i64 %850, %794
  br i1 %851, label %795, label %800, !llvm.loop !89

852:                                              ; preds = %876, %854
  %853 = icmp eq i64 %858, %799
  br i1 %853, label %1736, label %854, !llvm.loop !90

854:                                              ; preds = %852, %797
  %855 = phi i64 [ 0, %797 ], [ %858, %852 ]
  %856 = phi i64 [ 3, %797 ], [ %857, %852 ]
  %857 = add nuw nsw i64 %856, 1
  %858 = add nuw nsw i64 %855, 1
  br i1 %798, label %859, label %852

859:                                              ; preds = %854
  %860 = getelementptr inbounds ptr, ptr %5, i64 %855
  %861 = load ptr, ptr %860, align 8, !tbaa !49
  %862 = getelementptr inbounds ptr, ptr %9, i64 %855
  %863 = getelementptr ptr, ptr %862, i64 5
  %864 = load ptr, ptr %863, align 8, !tbaa !49
  %865 = getelementptr ptr, ptr %862, i64 4
  %866 = load ptr, ptr %865, align 8, !tbaa !49
  %867 = getelementptr ptr, ptr %862, i64 3
  %868 = load ptr, ptr %867, align 8, !tbaa !49
  %869 = getelementptr ptr, ptr %862, i64 2
  %870 = load ptr, ptr %869, align 8, !tbaa !49
  %871 = getelementptr inbounds ptr, ptr %9, i64 %858
  %872 = load ptr, ptr %871, align 8, !tbaa !49
  %873 = load ptr, ptr %862, align 8, !tbaa !49
  %874 = getelementptr inbounds ptr, ptr %9, i64 %856
  %875 = load ptr, ptr %874, align 8, !tbaa !49
  br label %876

876:                                              ; preds = %876, %859
  %877 = phi i32 [ %922, %876 ], [ 0, %859 ]
  %878 = phi ptr [ %921, %876 ], [ %861, %859 ]
  %879 = phi ptr [ %888, %876 ], [ %864, %859 ]
  %880 = phi ptr [ %892, %876 ], [ %866, %859 ]
  %881 = phi ptr [ %898, %876 ], [ %868, %859 ]
  %882 = phi ptr [ %896, %876 ], [ %870, %859 ]
  %883 = phi ptr [ %890, %876 ], [ %872, %859 ]
  %884 = phi ptr [ %886, %876 ], [ %873, %859 ]
  %885 = phi ptr [ %911, %876 ], [ %875, %859 ]
  %886 = getelementptr inbounds i32, ptr %884, i64 1
  %887 = load i32, ptr %884, align 4, !tbaa !79
  %888 = getelementptr inbounds i32, ptr %879, i64 1
  %889 = load i32, ptr %879, align 4, !tbaa !79
  %890 = getelementptr inbounds i32, ptr %883, i64 1
  %891 = load i32, ptr %883, align 4, !tbaa !79
  %892 = getelementptr inbounds i32, ptr %880, i64 1
  %893 = load i32, ptr %880, align 4, !tbaa !79
  %894 = add nsw i32 %893, %891
  %895 = mul i32 %894, -5
  %896 = getelementptr inbounds i32, ptr %882, i64 1
  %897 = load i32, ptr %882, align 4, !tbaa !79
  %898 = getelementptr inbounds i32, ptr %881, i64 1
  %899 = load i32, ptr %881, align 4, !tbaa !79
  %900 = add nsw i32 %899, %897
  %901 = mul nsw i32 %900, 20
  %902 = add i32 %887, 512
  %903 = add i32 %902, %889
  %904 = add i32 %903, %895
  %905 = add i32 %904, %901
  %906 = ashr i32 %905, 10
  %907 = tail call i32 @llvm.smax.i32(i32 %906, i32 0)
  %908 = tail call i32 @llvm.smin.i32(i32 %907, i32 %10)
  %909 = trunc i32 %908 to i16
  store i16 %909, ptr %878, align 2, !tbaa !66
  %910 = and i32 %908, 65535
  %911 = getelementptr inbounds i32, ptr %885, i64 1
  %912 = load i32, ptr %885, align 4, !tbaa !79
  %913 = add nsw i32 %912, 16
  %914 = ashr i32 %913, 5
  %915 = tail call i32 @llvm.smax.i32(i32 %914, i32 0)
  %916 = tail call i32 @llvm.smin.i32(i32 %915, i32 %10)
  %917 = add nsw i32 %916, 1
  %918 = add nsw i32 %917, %910
  %919 = lshr i32 %918, 1
  %920 = trunc i32 %919 to i16
  store i16 %920, ptr %878, align 2, !tbaa !66
  %921 = getelementptr inbounds i16, ptr %878, i64 1
  %922 = add nuw nsw i32 %877, 1
  %923 = icmp eq i32 %922, %3
  br i1 %923, label %852, label %876, !llvm.loop !91

924:                                              ; preds = %281
  %925 = icmp eq i32 %47, 2
  %926 = icmp eq i32 %46, 1
  br i1 %925, label %927, label %1187

927:                                              ; preds = %924
  %928 = icmp sgt i32 %4, 0
  br i1 %926, label %929, label %1058

929:                                              ; preds = %927
  br i1 %928, label %930, label %1736

930:                                              ; preds = %929
  %931 = sext i32 %55 to i64
  %932 = getelementptr inbounds ptr, ptr %45, i64 %931
  %933 = getelementptr inbounds ptr, ptr %932, i64 -2
  %934 = load ptr, ptr %933, align 8, !tbaa !49
  %935 = sext i32 %52 to i64
  %936 = getelementptr i16, ptr %934, i64 %935
  %937 = getelementptr i16, ptr %936, i64 -2
  %938 = sext i32 %6 to i64
  %939 = icmp sgt i32 %3, -5
  %940 = sub nsw i32 -5, %3
  %941 = sext i32 %940 to i64
  %942 = add i32 %3, 4
  %943 = tail call i32 @llvm.smax.i32(i32 %942, i32 0)
  %944 = zext nneg i32 %4 to i64
  br label %949

945:                                              ; preds = %997
  br i1 %928, label %946, label %1736

946:                                              ; preds = %945
  %947 = icmp sgt i32 %3, 0
  %948 = zext nneg i32 %4 to i64
  br label %1002

949:                                              ; preds = %997, %930
  %950 = phi i64 [ 0, %930 ], [ %1000, %997 ]
  %951 = phi ptr [ %937, %930 ], [ %999, %997 ]
  %952 = getelementptr inbounds i16, ptr %951, i64 %938
  br i1 %939, label %953, label %997

953:                                              ; preds = %949
  %954 = getelementptr inbounds ptr, ptr %9, i64 %950
  %955 = load ptr, ptr %954, align 8, !tbaa !49
  %956 = getelementptr inbounds i16, ptr %952, i64 %938
  %957 = getelementptr inbounds i16, ptr %956, i64 %938
  %958 = getelementptr inbounds i16, ptr %957, i64 %938
  %959 = getelementptr inbounds i16, ptr %958, i64 %938
  br label %960

960:                                              ; preds = %960, %953
  %961 = phi i32 [ %995, %960 ], [ 0, %953 ]
  %962 = phi ptr [ %972, %960 ], [ %959, %953 ]
  %963 = phi ptr [ %979, %960 ], [ %958, %953 ]
  %964 = phi ptr [ %988, %960 ], [ %957, %953 ]
  %965 = phi ptr [ %985, %960 ], [ %956, %953 ]
  %966 = phi ptr [ %976, %960 ], [ %952, %953 ]
  %967 = phi ptr [ %969, %960 ], [ %951, %953 ]
  %968 = phi ptr [ %994, %960 ], [ %955, %953 ]
  %969 = getelementptr inbounds i16, ptr %967, i64 1
  %970 = load i16, ptr %967, align 2, !tbaa !66
  %971 = zext i16 %970 to i32
  %972 = getelementptr inbounds i16, ptr %962, i64 1
  %973 = load i16, ptr %962, align 2, !tbaa !66
  %974 = zext i16 %973 to i32
  %975 = add nuw nsw i32 %974, %971
  %976 = getelementptr inbounds i16, ptr %966, i64 1
  %977 = load i16, ptr %966, align 2, !tbaa !66
  %978 = zext i16 %977 to i32
  %979 = getelementptr inbounds i16, ptr %963, i64 1
  %980 = load i16, ptr %963, align 2, !tbaa !66
  %981 = zext i16 %980 to i32
  %982 = add nuw nsw i32 %981, %978
  %983 = mul nsw i32 %982, -5
  %984 = add nsw i32 %975, %983
  %985 = getelementptr inbounds i16, ptr %965, i64 1
  %986 = load i16, ptr %965, align 2, !tbaa !66
  %987 = zext i16 %986 to i32
  %988 = getelementptr inbounds i16, ptr %964, i64 1
  %989 = load i16, ptr %964, align 2, !tbaa !66
  %990 = zext i16 %989 to i32
  %991 = add nuw nsw i32 %990, %987
  %992 = mul nuw nsw i32 %991, 20
  %993 = add nsw i32 %984, %992
  %994 = getelementptr inbounds i32, ptr %968, i64 1
  store i32 %993, ptr %968, align 4, !tbaa !79
  %995 = add nuw i32 %961, 1
  %996 = icmp eq i32 %961, %943
  br i1 %996, label %997, label %960, !llvm.loop !92

997:                                              ; preds = %960, %949
  %998 = phi ptr [ %952, %949 ], [ %976, %960 ]
  %999 = getelementptr inbounds i16, ptr %998, i64 %941
  %1000 = add nuw nsw i64 %950, 1
  %1001 = icmp eq i64 %1000, %944
  br i1 %1001, label %945, label %949, !llvm.loop !93

1002:                                             ; preds = %1055, %946
  %1003 = phi i64 [ 0, %946 ], [ %1056, %1055 ]
  br i1 %947, label %1004, label %1055

1004:                                             ; preds = %1002
  %1005 = getelementptr inbounds ptr, ptr %9, i64 %1003
  %1006 = load ptr, ptr %1005, align 8, !tbaa !49
  %1007 = getelementptr inbounds i32, ptr %1006, i64 5
  %1008 = getelementptr inbounds i32, ptr %1006, i64 4
  %1009 = getelementptr inbounds i32, ptr %1006, i64 3
  %1010 = getelementptr inbounds ptr, ptr %5, i64 %1003
  %1011 = load ptr, ptr %1010, align 8, !tbaa !49
  %1012 = getelementptr inbounds i32, ptr %1006, i64 2
  br label %1013

1013:                                             ; preds = %1013, %1004
  %1014 = phi i32 [ %1053, %1013 ], [ 0, %1004 ]
  %1015 = phi ptr [ %1052, %1013 ], [ %1011, %1004 ]
  %1016 = phi ptr [ %1023, %1013 ], [ %1007, %1004 ]
  %1017 = phi ptr [ %1026, %1013 ], [ %1008, %1004 ]
  %1018 = phi ptr [ %1032, %1013 ], [ %1009, %1004 ]
  %1019 = phi ptr [ %1030, %1013 ], [ %1012, %1004 ]
  %1020 = phi ptr [ %1021, %1013 ], [ %1006, %1004 ]
  %1021 = getelementptr i32, ptr %1020, i64 1
  %1022 = load i32, ptr %1020, align 4, !tbaa !79
  %1023 = getelementptr inbounds i32, ptr %1016, i64 1
  %1024 = load i32, ptr %1016, align 4, !tbaa !79
  %1025 = load i32, ptr %1021, align 4, !tbaa !79
  %1026 = getelementptr inbounds i32, ptr %1017, i64 1
  %1027 = load i32, ptr %1017, align 4, !tbaa !79
  %1028 = add nsw i32 %1027, %1025
  %1029 = mul i32 %1028, -5
  %1030 = getelementptr i32, ptr %1019, i64 1
  %1031 = load i32, ptr %1019, align 4, !tbaa !79
  %1032 = getelementptr inbounds i32, ptr %1018, i64 1
  %1033 = load i32, ptr %1018, align 4, !tbaa !79
  %1034 = add nsw i32 %1033, %1031
  %1035 = mul nsw i32 %1034, 20
  %1036 = add i32 %1022, 512
  %1037 = add i32 %1036, %1024
  %1038 = add i32 %1037, %1029
  %1039 = add i32 %1038, %1035
  %1040 = ashr i32 %1039, 10
  %1041 = tail call i32 @llvm.smax.i32(i32 %1040, i32 0)
  %1042 = tail call i32 @llvm.smin.i32(i32 %1041, i32 %10)
  %1043 = and i32 %1042, 65535
  %1044 = add nsw i32 %1031, 16
  %1045 = ashr i32 %1044, 5
  %1046 = tail call i32 @llvm.smax.i32(i32 %1045, i32 0)
  %1047 = tail call i32 @llvm.smin.i32(i32 %1046, i32 %10)
  %1048 = add nsw i32 %1047, 1
  %1049 = add nsw i32 %1048, %1043
  %1050 = lshr i32 %1049, 1
  %1051 = trunc i32 %1050 to i16
  store i16 %1051, ptr %1015, align 2, !tbaa !66
  %1052 = getelementptr inbounds i16, ptr %1015, i64 1
  %1053 = add nuw nsw i32 %1014, 1
  %1054 = icmp eq i32 %1053, %3
  br i1 %1054, label %1055, label %1013, !llvm.loop !94

1055:                                             ; preds = %1013, %1002
  %1056 = add nuw nsw i64 %1003, 1
  %1057 = icmp eq i64 %1056, %948
  br i1 %1057, label %1736, label %1002, !llvm.loop !95

1058:                                             ; preds = %927
  br i1 %928, label %1059, label %1736

1059:                                             ; preds = %1058
  %1060 = sext i32 %55 to i64
  %1061 = getelementptr inbounds ptr, ptr %45, i64 %1060
  %1062 = getelementptr inbounds ptr, ptr %1061, i64 -2
  %1063 = load ptr, ptr %1062, align 8, !tbaa !49
  %1064 = sext i32 %52 to i64
  %1065 = getelementptr i16, ptr %1063, i64 %1064
  %1066 = getelementptr i16, ptr %1065, i64 -2
  %1067 = sext i32 %6 to i64
  %1068 = icmp sgt i32 %3, -5
  %1069 = sub nsw i32 -5, %3
  %1070 = sext i32 %1069 to i64
  %1071 = add i32 %3, 4
  %1072 = tail call i32 @llvm.smax.i32(i32 %1071, i32 0)
  %1073 = zext nneg i32 %4 to i64
  br label %1078

1074:                                             ; preds = %1126
  br i1 %928, label %1075, label %1736

1075:                                             ; preds = %1074
  %1076 = icmp sgt i32 %3, 0
  %1077 = zext nneg i32 %4 to i64
  br label %1131

1078:                                             ; preds = %1126, %1059
  %1079 = phi i64 [ 0, %1059 ], [ %1129, %1126 ]
  %1080 = phi ptr [ %1066, %1059 ], [ %1128, %1126 ]
  %1081 = getelementptr inbounds i16, ptr %1080, i64 %1067
  br i1 %1068, label %1082, label %1126

1082:                                             ; preds = %1078
  %1083 = getelementptr inbounds ptr, ptr %9, i64 %1079
  %1084 = load ptr, ptr %1083, align 8, !tbaa !49
  %1085 = getelementptr inbounds i16, ptr %1081, i64 %1067
  %1086 = getelementptr inbounds i16, ptr %1085, i64 %1067
  %1087 = getelementptr inbounds i16, ptr %1086, i64 %1067
  %1088 = getelementptr inbounds i16, ptr %1087, i64 %1067
  br label %1089

1089:                                             ; preds = %1089, %1082
  %1090 = phi i32 [ %1124, %1089 ], [ 0, %1082 ]
  %1091 = phi ptr [ %1101, %1089 ], [ %1088, %1082 ]
  %1092 = phi ptr [ %1108, %1089 ], [ %1087, %1082 ]
  %1093 = phi ptr [ %1117, %1089 ], [ %1086, %1082 ]
  %1094 = phi ptr [ %1114, %1089 ], [ %1085, %1082 ]
  %1095 = phi ptr [ %1105, %1089 ], [ %1081, %1082 ]
  %1096 = phi ptr [ %1098, %1089 ], [ %1080, %1082 ]
  %1097 = phi ptr [ %1123, %1089 ], [ %1084, %1082 ]
  %1098 = getelementptr inbounds i16, ptr %1096, i64 1
  %1099 = load i16, ptr %1096, align 2, !tbaa !66
  %1100 = zext i16 %1099 to i32
  %1101 = getelementptr inbounds i16, ptr %1091, i64 1
  %1102 = load i16, ptr %1091, align 2, !tbaa !66
  %1103 = zext i16 %1102 to i32
  %1104 = add nuw nsw i32 %1103, %1100
  %1105 = getelementptr inbounds i16, ptr %1095, i64 1
  %1106 = load i16, ptr %1095, align 2, !tbaa !66
  %1107 = zext i16 %1106 to i32
  %1108 = getelementptr inbounds i16, ptr %1092, i64 1
  %1109 = load i16, ptr %1092, align 2, !tbaa !66
  %1110 = zext i16 %1109 to i32
  %1111 = add nuw nsw i32 %1110, %1107
  %1112 = mul nsw i32 %1111, -5
  %1113 = add nsw i32 %1104, %1112
  %1114 = getelementptr inbounds i16, ptr %1094, i64 1
  %1115 = load i16, ptr %1094, align 2, !tbaa !66
  %1116 = zext i16 %1115 to i32
  %1117 = getelementptr inbounds i16, ptr %1093, i64 1
  %1118 = load i16, ptr %1093, align 2, !tbaa !66
  %1119 = zext i16 %1118 to i32
  %1120 = add nuw nsw i32 %1119, %1116
  %1121 = mul nuw nsw i32 %1120, 20
  %1122 = add nsw i32 %1113, %1121
  %1123 = getelementptr inbounds i32, ptr %1097, i64 1
  store i32 %1122, ptr %1097, align 4, !tbaa !79
  %1124 = add nuw i32 %1090, 1
  %1125 = icmp eq i32 %1090, %1072
  br i1 %1125, label %1126, label %1089, !llvm.loop !96

1126:                                             ; preds = %1089, %1078
  %1127 = phi ptr [ %1081, %1078 ], [ %1105, %1089 ]
  %1128 = getelementptr inbounds i16, ptr %1127, i64 %1070
  %1129 = add nuw nsw i64 %1079, 1
  %1130 = icmp eq i64 %1129, %1073
  br i1 %1130, label %1074, label %1078, !llvm.loop !97

1131:                                             ; preds = %1184, %1075
  %1132 = phi i64 [ 0, %1075 ], [ %1185, %1184 ]
  br i1 %1076, label %1133, label %1184

1133:                                             ; preds = %1131
  %1134 = getelementptr inbounds ptr, ptr %9, i64 %1132
  %1135 = load ptr, ptr %1134, align 8, !tbaa !49
  %1136 = getelementptr inbounds i32, ptr %1135, i64 5
  %1137 = getelementptr inbounds i32, ptr %1135, i64 4
  %1138 = getelementptr inbounds i32, ptr %1135, i64 2
  %1139 = getelementptr inbounds ptr, ptr %5, i64 %1132
  %1140 = load ptr, ptr %1139, align 8, !tbaa !49
  %1141 = getelementptr inbounds i32, ptr %1135, i64 3
  br label %1142

1142:                                             ; preds = %1142, %1133
  %1143 = phi i32 [ %1182, %1142 ], [ 0, %1133 ]
  %1144 = phi ptr [ %1181, %1142 ], [ %1140, %1133 ]
  %1145 = phi ptr [ %1152, %1142 ], [ %1136, %1133 ]
  %1146 = phi ptr [ %1155, %1142 ], [ %1137, %1133 ]
  %1147 = phi ptr [ %1161, %1142 ], [ %1141, %1133 ]
  %1148 = phi ptr [ %1159, %1142 ], [ %1138, %1133 ]
  %1149 = phi ptr [ %1150, %1142 ], [ %1135, %1133 ]
  %1150 = getelementptr i32, ptr %1149, i64 1
  %1151 = load i32, ptr %1149, align 4, !tbaa !79
  %1152 = getelementptr inbounds i32, ptr %1145, i64 1
  %1153 = load i32, ptr %1145, align 4, !tbaa !79
  %1154 = load i32, ptr %1150, align 4, !tbaa !79
  %1155 = getelementptr inbounds i32, ptr %1146, i64 1
  %1156 = load i32, ptr %1146, align 4, !tbaa !79
  %1157 = add nsw i32 %1156, %1154
  %1158 = mul i32 %1157, -5
  %1159 = getelementptr inbounds i32, ptr %1148, i64 1
  %1160 = load i32, ptr %1148, align 4, !tbaa !79
  %1161 = getelementptr i32, ptr %1147, i64 1
  %1162 = load i32, ptr %1147, align 4, !tbaa !79
  %1163 = add nsw i32 %1162, %1160
  %1164 = mul nsw i32 %1163, 20
  %1165 = add i32 %1151, 512
  %1166 = add i32 %1165, %1153
  %1167 = add i32 %1166, %1158
  %1168 = add i32 %1167, %1164
  %1169 = ashr i32 %1168, 10
  %1170 = tail call i32 @llvm.smax.i32(i32 %1169, i32 0)
  %1171 = tail call i32 @llvm.smin.i32(i32 %1170, i32 %10)
  %1172 = and i32 %1171, 65535
  %1173 = add nsw i32 %1162, 16
  %1174 = ashr i32 %1173, 5
  %1175 = tail call i32 @llvm.smax.i32(i32 %1174, i32 0)
  %1176 = tail call i32 @llvm.smin.i32(i32 %1175, i32 %10)
  %1177 = add nsw i32 %1176, 1
  %1178 = add nsw i32 %1177, %1172
  %1179 = lshr i32 %1178, 1
  %1180 = trunc i32 %1179 to i16
  store i16 %1180, ptr %1144, align 2, !tbaa !66
  %1181 = getelementptr inbounds i16, ptr %1144, i64 1
  %1182 = add nuw nsw i32 %1143, 1
  %1183 = icmp eq i32 %1182, %3
  br i1 %1183, label %1184, label %1142, !llvm.loop !98

1184:                                             ; preds = %1142, %1131
  %1185 = add nuw nsw i64 %1132, 1
  %1186 = icmp eq i64 %1185, %1077
  br i1 %1186, label %1736, label %1131, !llvm.loop !99

1187:                                             ; preds = %924
  %1188 = icmp eq i32 %47, 1
  %1189 = sext i32 %55 to i64
  %1190 = getelementptr inbounds ptr, ptr %45, i64 %1189
  %1191 = icmp sgt i32 %4, 0
  br i1 %926, label %1192, label %1463

1192:                                             ; preds = %1187
  br i1 %1188, label %1193, label %1327

1193:                                             ; preds = %1192
  br i1 %1191, label %1194, label %1736

1194:                                             ; preds = %1193
  %1195 = sext i32 %52 to i64
  %1196 = icmp sgt i32 %3, 0
  %1197 = zext nneg i32 %4 to i64
  br label %1198

1198:                                             ; preds = %1251, %1194
  %1199 = phi i64 [ 0, %1194 ], [ %1200, %1251 ]
  %1200 = add nuw nsw i64 %1199, 1
  br i1 %1196, label %1201, label %1251

1201:                                             ; preds = %1198
  %1202 = getelementptr inbounds ptr, ptr %5, i64 %1199
  %1203 = load ptr, ptr %1202, align 8, !tbaa !49
  %1204 = getelementptr inbounds ptr, ptr %1190, i64 %1199
  %1205 = load ptr, ptr %1204, align 8, !tbaa !49
  %1206 = getelementptr i16, ptr %1205, i64 %1195
  %1207 = getelementptr inbounds i16, ptr %1206, i64 3
  %1208 = getelementptr inbounds i16, ptr %1206, i64 2
  %1209 = getelementptr i16, ptr %1206, i64 -1
  %1210 = getelementptr i16, ptr %1206, i64 -2
  br label %1211

1211:                                             ; preds = %1211, %1201
  %1212 = phi ptr [ %1248, %1211 ], [ %1203, %1201 ]
  %1213 = phi ptr [ %1223, %1211 ], [ %1207, %1201 ]
  %1214 = phi ptr [ %1229, %1211 ], [ %1208, %1201 ]
  %1215 = phi ptr [ %1219, %1211 ], [ %1206, %1201 ]
  %1216 = phi ptr [ %1226, %1211 ], [ %1209, %1201 ]
  %1217 = phi ptr [ %1220, %1211 ], [ %1210, %1201 ]
  %1218 = phi i32 [ %1249, %1211 ], [ 0, %1201 ]
  %1219 = getelementptr i16, ptr %1215, i64 1
  %1220 = getelementptr inbounds i16, ptr %1217, i64 1
  %1221 = load i16, ptr %1217, align 2, !tbaa !66
  %1222 = zext i16 %1221 to i32
  %1223 = getelementptr inbounds i16, ptr %1213, i64 1
  %1224 = load i16, ptr %1213, align 2, !tbaa !66
  %1225 = zext i16 %1224 to i32
  %1226 = getelementptr inbounds i16, ptr %1216, i64 1
  %1227 = load i16, ptr %1216, align 2, !tbaa !66
  %1228 = zext i16 %1227 to i32
  %1229 = getelementptr inbounds i16, ptr %1214, i64 1
  %1230 = load i16, ptr %1214, align 2, !tbaa !66
  %1231 = zext i16 %1230 to i32
  %1232 = add nuw nsw i32 %1231, %1228
  %1233 = mul nsw i32 %1232, -5
  %1234 = load i16, ptr %1215, align 2, !tbaa !66
  %1235 = zext i16 %1234 to i32
  %1236 = load i16, ptr %1219, align 2, !tbaa !66
  %1237 = zext i16 %1236 to i32
  %1238 = add nuw nsw i32 %1237, %1235
  %1239 = mul nuw nsw i32 %1238, 20
  %1240 = add nuw nsw i32 %1222, 16
  %1241 = add nuw nsw i32 %1240, %1225
  %1242 = add nsw i32 %1241, %1233
  %1243 = add nsw i32 %1242, %1239
  %1244 = ashr i32 %1243, 5
  %1245 = tail call i32 @llvm.smax.i32(i32 %1244, i32 0)
  %1246 = tail call i32 @llvm.smin.i32(i32 %1245, i32 %10)
  %1247 = trunc i32 %1246 to i16
  %1248 = getelementptr inbounds i16, ptr %1212, i64 1
  store i16 %1247, ptr %1212, align 2, !tbaa !66
  %1249 = add nuw nsw i32 %1218, 1
  %1250 = icmp eq i32 %1249, %3
  br i1 %1250, label %1251, label %1211, !llvm.loop !100

1251:                                             ; preds = %1211, %1198
  %1252 = icmp eq i64 %1200, %1197
  br i1 %1252, label %1253, label %1198, !llvm.loop !101

1253:                                             ; preds = %1251
  br i1 %1191, label %1254, label %1736

1254:                                             ; preds = %1253
  %1255 = getelementptr inbounds ptr, ptr %1190, i64 -2
  %1256 = load ptr, ptr %1255, align 8, !tbaa !49
  %1257 = sext i32 %52 to i64
  %1258 = getelementptr inbounds i16, ptr %1256, i64 %1257
  %1259 = sext i32 %6 to i64
  %1260 = icmp sgt i32 %3, 0
  %1261 = sext i32 %3 to i64
  %1262 = sub nsw i64 0, %1261
  %1263 = zext nneg i32 %4 to i64
  br label %1264

1264:                                             ; preds = %1322, %1254
  %1265 = phi i64 [ 0, %1254 ], [ %1325, %1322 ]
  %1266 = phi ptr [ %1258, %1254 ], [ %1324, %1322 ]
  %1267 = getelementptr inbounds i16, ptr %1266, i64 %1259
  br i1 %1260, label %1268, label %1322

1268:                                             ; preds = %1264
  %1269 = getelementptr inbounds ptr, ptr %5, i64 %1265
  %1270 = load ptr, ptr %1269, align 8, !tbaa !49
  %1271 = getelementptr inbounds i16, ptr %1267, i64 %1259
  %1272 = getelementptr inbounds i16, ptr %1271, i64 %1259
  %1273 = getelementptr inbounds i16, ptr %1272, i64 %1259
  %1274 = getelementptr inbounds i16, ptr %1273, i64 %1259
  br label %1275

1275:                                             ; preds = %1275, %1268
  %1276 = phi ptr [ %1319, %1275 ], [ %1270, %1268 ]
  %1277 = phi ptr [ %1287, %1275 ], [ %1274, %1268 ]
  %1278 = phi ptr [ %1293, %1275 ], [ %1273, %1268 ]
  %1279 = phi ptr [ %1301, %1275 ], [ %1272, %1268 ]
  %1280 = phi ptr [ %1298, %1275 ], [ %1271, %1268 ]
  %1281 = phi ptr [ %1290, %1275 ], [ %1267, %1268 ]
  %1282 = phi ptr [ %1284, %1275 ], [ %1266, %1268 ]
  %1283 = phi i32 [ %1320, %1275 ], [ 0, %1268 ]
  %1284 = getelementptr inbounds i16, ptr %1282, i64 1
  %1285 = load i16, ptr %1282, align 2, !tbaa !66
  %1286 = zext i16 %1285 to i32
  %1287 = getelementptr inbounds i16, ptr %1277, i64 1
  %1288 = load i16, ptr %1277, align 2, !tbaa !66
  %1289 = zext i16 %1288 to i32
  %1290 = getelementptr inbounds i16, ptr %1281, i64 1
  %1291 = load i16, ptr %1281, align 2, !tbaa !66
  %1292 = zext i16 %1291 to i32
  %1293 = getelementptr inbounds i16, ptr %1278, i64 1
  %1294 = load i16, ptr %1278, align 2, !tbaa !66
  %1295 = zext i16 %1294 to i32
  %1296 = add nuw nsw i32 %1295, %1292
  %1297 = mul nsw i32 %1296, -5
  %1298 = getelementptr inbounds i16, ptr %1280, i64 1
  %1299 = load i16, ptr %1280, align 2, !tbaa !66
  %1300 = zext i16 %1299 to i32
  %1301 = getelementptr inbounds i16, ptr %1279, i64 1
  %1302 = load i16, ptr %1279, align 2, !tbaa !66
  %1303 = zext i16 %1302 to i32
  %1304 = add nuw nsw i32 %1303, %1300
  %1305 = mul nuw nsw i32 %1304, 20
  %1306 = load i16, ptr %1276, align 2, !tbaa !66
  %1307 = zext i16 %1306 to i32
  %1308 = add nuw nsw i32 %1286, 16
  %1309 = add nuw nsw i32 %1308, %1289
  %1310 = add nsw i32 %1309, %1297
  %1311 = add nsw i32 %1310, %1305
  %1312 = ashr i32 %1311, 5
  %1313 = tail call i32 @llvm.smax.i32(i32 %1312, i32 0)
  %1314 = tail call i32 @llvm.smin.i32(i32 %1313, i32 %10)
  %1315 = add nuw nsw i32 %1307, 1
  %1316 = add nsw i32 %1315, %1314
  %1317 = lshr i32 %1316, 1
  %1318 = trunc i32 %1317 to i16
  store i16 %1318, ptr %1276, align 2, !tbaa !66
  %1319 = getelementptr inbounds i16, ptr %1276, i64 1
  %1320 = add nuw nsw i32 %1283, 1
  %1321 = icmp eq i32 %1320, %3
  br i1 %1321, label %1322, label %1275, !llvm.loop !102

1322:                                             ; preds = %1275, %1264
  %1323 = phi ptr [ %1267, %1264 ], [ %1290, %1275 ]
  %1324 = getelementptr inbounds i16, ptr %1323, i64 %1262
  %1325 = add nuw nsw i64 %1265, 1
  %1326 = icmp eq i64 %1325, %1263
  br i1 %1326, label %1736, label %1264, !llvm.loop !103

1327:                                             ; preds = %1192
  br i1 %1191, label %1328, label %1736

1328:                                             ; preds = %1327
  %1329 = sext i32 %52 to i64
  %1330 = icmp sgt i32 %3, 0
  %1331 = zext nneg i32 %4 to i64
  br label %1332

1332:                                             ; preds = %1386, %1328
  %1333 = phi i64 [ 0, %1328 ], [ %1387, %1386 ]
  %1334 = phi i64 [ 1, %1328 ], [ %1335, %1386 ]
  %1335 = add nuw nsw i64 %1334, 1
  br i1 %1330, label %1336, label %1386

1336:                                             ; preds = %1332
  %1337 = getelementptr inbounds ptr, ptr %5, i64 %1333
  %1338 = load ptr, ptr %1337, align 8, !tbaa !49
  %1339 = getelementptr inbounds ptr, ptr %1190, i64 %1334
  %1340 = load ptr, ptr %1339, align 8, !tbaa !49
  %1341 = getelementptr i16, ptr %1340, i64 %1329
  %1342 = getelementptr inbounds i16, ptr %1341, i64 3
  %1343 = getelementptr inbounds i16, ptr %1341, i64 2
  %1344 = getelementptr i16, ptr %1341, i64 -1
  %1345 = getelementptr i16, ptr %1341, i64 -2
  br label %1346

1346:                                             ; preds = %1346, %1336
  %1347 = phi ptr [ %1383, %1346 ], [ %1338, %1336 ]
  %1348 = phi ptr [ %1358, %1346 ], [ %1342, %1336 ]
  %1349 = phi ptr [ %1364, %1346 ], [ %1343, %1336 ]
  %1350 = phi ptr [ %1354, %1346 ], [ %1341, %1336 ]
  %1351 = phi ptr [ %1361, %1346 ], [ %1344, %1336 ]
  %1352 = phi ptr [ %1355, %1346 ], [ %1345, %1336 ]
  %1353 = phi i32 [ %1384, %1346 ], [ 0, %1336 ]
  %1354 = getelementptr i16, ptr %1350, i64 1
  %1355 = getelementptr inbounds i16, ptr %1352, i64 1
  %1356 = load i16, ptr %1352, align 2, !tbaa !66
  %1357 = zext i16 %1356 to i32
  %1358 = getelementptr inbounds i16, ptr %1348, i64 1
  %1359 = load i16, ptr %1348, align 2, !tbaa !66
  %1360 = zext i16 %1359 to i32
  %1361 = getelementptr inbounds i16, ptr %1351, i64 1
  %1362 = load i16, ptr %1351, align 2, !tbaa !66
  %1363 = zext i16 %1362 to i32
  %1364 = getelementptr inbounds i16, ptr %1349, i64 1
  %1365 = load i16, ptr %1349, align 2, !tbaa !66
  %1366 = zext i16 %1365 to i32
  %1367 = add nuw nsw i32 %1366, %1363
  %1368 = mul nsw i32 %1367, -5
  %1369 = load i16, ptr %1350, align 2, !tbaa !66
  %1370 = zext i16 %1369 to i32
  %1371 = load i16, ptr %1354, align 2, !tbaa !66
  %1372 = zext i16 %1371 to i32
  %1373 = add nuw nsw i32 %1372, %1370
  %1374 = mul nuw nsw i32 %1373, 20
  %1375 = add nuw nsw i32 %1357, 16
  %1376 = add nuw nsw i32 %1375, %1360
  %1377 = add nsw i32 %1376, %1368
  %1378 = add nsw i32 %1377, %1374
  %1379 = ashr i32 %1378, 5
  %1380 = tail call i32 @llvm.smax.i32(i32 %1379, i32 0)
  %1381 = tail call i32 @llvm.smin.i32(i32 %1380, i32 %10)
  %1382 = trunc i32 %1381 to i16
  %1383 = getelementptr inbounds i16, ptr %1347, i64 1
  store i16 %1382, ptr %1347, align 2, !tbaa !66
  %1384 = add nuw nsw i32 %1353, 1
  %1385 = icmp eq i32 %1384, %3
  br i1 %1385, label %1386, label %1346, !llvm.loop !104

1386:                                             ; preds = %1346, %1332
  %1387 = add nuw nsw i64 %1333, 1
  %1388 = icmp eq i64 %1387, %1331
  br i1 %1388, label %1389, label %1332, !llvm.loop !105

1389:                                             ; preds = %1386
  br i1 %1191, label %1390, label %1736

1390:                                             ; preds = %1389
  %1391 = getelementptr inbounds ptr, ptr %1190, i64 -2
  %1392 = load ptr, ptr %1391, align 8, !tbaa !49
  %1393 = sext i32 %52 to i64
  %1394 = getelementptr inbounds i16, ptr %1392, i64 %1393
  %1395 = sext i32 %6 to i64
  %1396 = icmp sgt i32 %3, 0
  %1397 = sext i32 %3 to i64
  %1398 = sub nsw i64 0, %1397
  %1399 = zext nneg i32 %4 to i64
  br label %1400

1400:                                             ; preds = %1458, %1390
  %1401 = phi i64 [ 0, %1390 ], [ %1461, %1458 ]
  %1402 = phi ptr [ %1394, %1390 ], [ %1460, %1458 ]
  %1403 = getelementptr inbounds i16, ptr %1402, i64 %1395
  br i1 %1396, label %1404, label %1458

1404:                                             ; preds = %1400
  %1405 = getelementptr inbounds ptr, ptr %5, i64 %1401
  %1406 = load ptr, ptr %1405, align 8, !tbaa !49
  %1407 = getelementptr inbounds i16, ptr %1403, i64 %1395
  %1408 = getelementptr inbounds i16, ptr %1407, i64 %1395
  %1409 = getelementptr inbounds i16, ptr %1408, i64 %1395
  %1410 = getelementptr inbounds i16, ptr %1409, i64 %1395
  br label %1411

1411:                                             ; preds = %1411, %1404
  %1412 = phi ptr [ %1455, %1411 ], [ %1406, %1404 ]
  %1413 = phi ptr [ %1423, %1411 ], [ %1410, %1404 ]
  %1414 = phi ptr [ %1429, %1411 ], [ %1409, %1404 ]
  %1415 = phi ptr [ %1437, %1411 ], [ %1408, %1404 ]
  %1416 = phi ptr [ %1434, %1411 ], [ %1407, %1404 ]
  %1417 = phi ptr [ %1426, %1411 ], [ %1403, %1404 ]
  %1418 = phi ptr [ %1420, %1411 ], [ %1402, %1404 ]
  %1419 = phi i32 [ %1456, %1411 ], [ 0, %1404 ]
  %1420 = getelementptr inbounds i16, ptr %1418, i64 1
  %1421 = load i16, ptr %1418, align 2, !tbaa !66
  %1422 = zext i16 %1421 to i32
  %1423 = getelementptr inbounds i16, ptr %1413, i64 1
  %1424 = load i16, ptr %1413, align 2, !tbaa !66
  %1425 = zext i16 %1424 to i32
  %1426 = getelementptr inbounds i16, ptr %1417, i64 1
  %1427 = load i16, ptr %1417, align 2, !tbaa !66
  %1428 = zext i16 %1427 to i32
  %1429 = getelementptr inbounds i16, ptr %1414, i64 1
  %1430 = load i16, ptr %1414, align 2, !tbaa !66
  %1431 = zext i16 %1430 to i32
  %1432 = add nuw nsw i32 %1431, %1428
  %1433 = mul nsw i32 %1432, -5
  %1434 = getelementptr inbounds i16, ptr %1416, i64 1
  %1435 = load i16, ptr %1416, align 2, !tbaa !66
  %1436 = zext i16 %1435 to i32
  %1437 = getelementptr inbounds i16, ptr %1415, i64 1
  %1438 = load i16, ptr %1415, align 2, !tbaa !66
  %1439 = zext i16 %1438 to i32
  %1440 = add nuw nsw i32 %1439, %1436
  %1441 = mul nuw nsw i32 %1440, 20
  %1442 = load i16, ptr %1412, align 2, !tbaa !66
  %1443 = zext i16 %1442 to i32
  %1444 = add nuw nsw i32 %1422, 16
  %1445 = add nuw nsw i32 %1444, %1425
  %1446 = add nsw i32 %1445, %1433
  %1447 = add nsw i32 %1446, %1441
  %1448 = ashr i32 %1447, 5
  %1449 = tail call i32 @llvm.smax.i32(i32 %1448, i32 0)
  %1450 = tail call i32 @llvm.smin.i32(i32 %1449, i32 %10)
  %1451 = add nuw nsw i32 %1443, 1
  %1452 = add nsw i32 %1451, %1450
  %1453 = lshr i32 %1452, 1
  %1454 = trunc i32 %1453 to i16
  store i16 %1454, ptr %1412, align 2, !tbaa !66
  %1455 = getelementptr inbounds i16, ptr %1412, i64 1
  %1456 = add nuw nsw i32 %1419, 1
  %1457 = icmp eq i32 %1456, %3
  br i1 %1457, label %1458, label %1411, !llvm.loop !106

1458:                                             ; preds = %1411, %1400
  %1459 = phi ptr [ %1403, %1400 ], [ %1426, %1411 ]
  %1460 = getelementptr inbounds i16, ptr %1459, i64 %1398
  %1461 = add nuw nsw i64 %1401, 1
  %1462 = icmp eq i64 %1461, %1399
  br i1 %1462, label %1736, label %1400, !llvm.loop !107

1463:                                             ; preds = %1187
  br i1 %1188, label %1464, label %1599

1464:                                             ; preds = %1463
  br i1 %1191, label %1465, label %1736

1465:                                             ; preds = %1464
  %1466 = sext i32 %52 to i64
  %1467 = icmp sgt i32 %3, 0
  %1468 = zext nneg i32 %4 to i64
  br label %1469

1469:                                             ; preds = %1522, %1465
  %1470 = phi i64 [ 0, %1465 ], [ %1471, %1522 ]
  %1471 = add nuw nsw i64 %1470, 1
  br i1 %1467, label %1472, label %1522

1472:                                             ; preds = %1469
  %1473 = getelementptr inbounds ptr, ptr %5, i64 %1470
  %1474 = load ptr, ptr %1473, align 8, !tbaa !49
  %1475 = getelementptr inbounds ptr, ptr %1190, i64 %1470
  %1476 = load ptr, ptr %1475, align 8, !tbaa !49
  %1477 = getelementptr i16, ptr %1476, i64 %1466
  %1478 = getelementptr inbounds i16, ptr %1477, i64 3
  %1479 = getelementptr inbounds i16, ptr %1477, i64 2
  %1480 = getelementptr i16, ptr %1477, i64 -1
  %1481 = getelementptr i16, ptr %1477, i64 -2
  br label %1482

1482:                                             ; preds = %1482, %1472
  %1483 = phi ptr [ %1519, %1482 ], [ %1474, %1472 ]
  %1484 = phi ptr [ %1494, %1482 ], [ %1478, %1472 ]
  %1485 = phi ptr [ %1500, %1482 ], [ %1479, %1472 ]
  %1486 = phi ptr [ %1490, %1482 ], [ %1477, %1472 ]
  %1487 = phi ptr [ %1497, %1482 ], [ %1480, %1472 ]
  %1488 = phi ptr [ %1491, %1482 ], [ %1481, %1472 ]
  %1489 = phi i32 [ %1520, %1482 ], [ 0, %1472 ]
  %1490 = getelementptr i16, ptr %1486, i64 1
  %1491 = getelementptr inbounds i16, ptr %1488, i64 1
  %1492 = load i16, ptr %1488, align 2, !tbaa !66
  %1493 = zext i16 %1492 to i32
  %1494 = getelementptr inbounds i16, ptr %1484, i64 1
  %1495 = load i16, ptr %1484, align 2, !tbaa !66
  %1496 = zext i16 %1495 to i32
  %1497 = getelementptr inbounds i16, ptr %1487, i64 1
  %1498 = load i16, ptr %1487, align 2, !tbaa !66
  %1499 = zext i16 %1498 to i32
  %1500 = getelementptr inbounds i16, ptr %1485, i64 1
  %1501 = load i16, ptr %1485, align 2, !tbaa !66
  %1502 = zext i16 %1501 to i32
  %1503 = add nuw nsw i32 %1502, %1499
  %1504 = mul nsw i32 %1503, -5
  %1505 = load i16, ptr %1486, align 2, !tbaa !66
  %1506 = zext i16 %1505 to i32
  %1507 = load i16, ptr %1490, align 2, !tbaa !66
  %1508 = zext i16 %1507 to i32
  %1509 = add nuw nsw i32 %1508, %1506
  %1510 = mul nuw nsw i32 %1509, 20
  %1511 = add nuw nsw i32 %1493, 16
  %1512 = add nuw nsw i32 %1511, %1496
  %1513 = add nsw i32 %1512, %1504
  %1514 = add nsw i32 %1513, %1510
  %1515 = ashr i32 %1514, 5
  %1516 = tail call i32 @llvm.smax.i32(i32 %1515, i32 0)
  %1517 = tail call i32 @llvm.smin.i32(i32 %1516, i32 %10)
  %1518 = trunc i32 %1517 to i16
  %1519 = getelementptr inbounds i16, ptr %1483, i64 1
  store i16 %1518, ptr %1483, align 2, !tbaa !66
  %1520 = add nuw nsw i32 %1489, 1
  %1521 = icmp eq i32 %1520, %3
  br i1 %1521, label %1522, label %1482, !llvm.loop !108

1522:                                             ; preds = %1482, %1469
  %1523 = icmp eq i64 %1471, %1468
  br i1 %1523, label %1524, label %1469, !llvm.loop !109

1524:                                             ; preds = %1522
  br i1 %1191, label %1525, label %1736

1525:                                             ; preds = %1524
  %1526 = getelementptr inbounds ptr, ptr %1190, i64 -2
  %1527 = load ptr, ptr %1526, align 8, !tbaa !49
  %1528 = sext i32 %52 to i64
  %1529 = getelementptr i16, ptr %1527, i64 %1528
  %1530 = getelementptr i16, ptr %1529, i64 1
  %1531 = sext i32 %6 to i64
  %1532 = icmp sgt i32 %3, 0
  %1533 = sext i32 %3 to i64
  %1534 = sub nsw i64 0, %1533
  %1535 = zext nneg i32 %4 to i64
  br label %1536

1536:                                             ; preds = %1594, %1525
  %1537 = phi i64 [ 0, %1525 ], [ %1597, %1594 ]
  %1538 = phi ptr [ %1530, %1525 ], [ %1596, %1594 ]
  %1539 = getelementptr inbounds i16, ptr %1538, i64 %1531
  br i1 %1532, label %1540, label %1594

1540:                                             ; preds = %1536
  %1541 = getelementptr inbounds ptr, ptr %5, i64 %1537
  %1542 = load ptr, ptr %1541, align 8, !tbaa !49
  %1543 = getelementptr inbounds i16, ptr %1539, i64 %1531
  %1544 = getelementptr inbounds i16, ptr %1543, i64 %1531
  %1545 = getelementptr inbounds i16, ptr %1544, i64 %1531
  %1546 = getelementptr inbounds i16, ptr %1545, i64 %1531
  br label %1547

1547:                                             ; preds = %1547, %1540
  %1548 = phi ptr [ %1591, %1547 ], [ %1542, %1540 ]
  %1549 = phi ptr [ %1559, %1547 ], [ %1546, %1540 ]
  %1550 = phi ptr [ %1565, %1547 ], [ %1545, %1540 ]
  %1551 = phi ptr [ %1573, %1547 ], [ %1544, %1540 ]
  %1552 = phi ptr [ %1570, %1547 ], [ %1543, %1540 ]
  %1553 = phi ptr [ %1562, %1547 ], [ %1539, %1540 ]
  %1554 = phi ptr [ %1556, %1547 ], [ %1538, %1540 ]
  %1555 = phi i32 [ %1592, %1547 ], [ 0, %1540 ]
  %1556 = getelementptr inbounds i16, ptr %1554, i64 1
  %1557 = load i16, ptr %1554, align 2, !tbaa !66
  %1558 = zext i16 %1557 to i32
  %1559 = getelementptr inbounds i16, ptr %1549, i64 1
  %1560 = load i16, ptr %1549, align 2, !tbaa !66
  %1561 = zext i16 %1560 to i32
  %1562 = getelementptr inbounds i16, ptr %1553, i64 1
  %1563 = load i16, ptr %1553, align 2, !tbaa !66
  %1564 = zext i16 %1563 to i32
  %1565 = getelementptr inbounds i16, ptr %1550, i64 1
  %1566 = load i16, ptr %1550, align 2, !tbaa !66
  %1567 = zext i16 %1566 to i32
  %1568 = add nuw nsw i32 %1567, %1564
  %1569 = mul nsw i32 %1568, -5
  %1570 = getelementptr inbounds i16, ptr %1552, i64 1
  %1571 = load i16, ptr %1552, align 2, !tbaa !66
  %1572 = zext i16 %1571 to i32
  %1573 = getelementptr inbounds i16, ptr %1551, i64 1
  %1574 = load i16, ptr %1551, align 2, !tbaa !66
  %1575 = zext i16 %1574 to i32
  %1576 = add nuw nsw i32 %1575, %1572
  %1577 = mul nuw nsw i32 %1576, 20
  %1578 = load i16, ptr %1548, align 2, !tbaa !66
  %1579 = zext i16 %1578 to i32
  %1580 = add nuw nsw i32 %1558, 16
  %1581 = add nuw nsw i32 %1580, %1561
  %1582 = add nsw i32 %1581, %1569
  %1583 = add nsw i32 %1582, %1577
  %1584 = ashr i32 %1583, 5
  %1585 = tail call i32 @llvm.smax.i32(i32 %1584, i32 0)
  %1586 = tail call i32 @llvm.smin.i32(i32 %1585, i32 %10)
  %1587 = add nuw nsw i32 %1579, 1
  %1588 = add nsw i32 %1587, %1586
  %1589 = lshr i32 %1588, 1
  %1590 = trunc i32 %1589 to i16
  store i16 %1590, ptr %1548, align 2, !tbaa !66
  %1591 = getelementptr inbounds i16, ptr %1548, i64 1
  %1592 = add nuw nsw i32 %1555, 1
  %1593 = icmp eq i32 %1592, %3
  br i1 %1593, label %1594, label %1547, !llvm.loop !110

1594:                                             ; preds = %1547, %1536
  %1595 = phi ptr [ %1539, %1536 ], [ %1562, %1547 ]
  %1596 = getelementptr inbounds i16, ptr %1595, i64 %1534
  %1597 = add nuw nsw i64 %1537, 1
  %1598 = icmp eq i64 %1597, %1535
  br i1 %1598, label %1736, label %1536, !llvm.loop !111

1599:                                             ; preds = %1463
  br i1 %1191, label %1600, label %1736

1600:                                             ; preds = %1599
  %1601 = sext i32 %52 to i64
  %1602 = icmp sgt i32 %3, 0
  %1603 = zext nneg i32 %4 to i64
  br label %1604

1604:                                             ; preds = %1658, %1600
  %1605 = phi i64 [ 0, %1600 ], [ %1659, %1658 ]
  %1606 = phi i64 [ 1, %1600 ], [ %1607, %1658 ]
  %1607 = add nuw nsw i64 %1606, 1
  br i1 %1602, label %1608, label %1658

1608:                                             ; preds = %1604
  %1609 = getelementptr inbounds ptr, ptr %5, i64 %1605
  %1610 = load ptr, ptr %1609, align 8, !tbaa !49
  %1611 = getelementptr inbounds ptr, ptr %1190, i64 %1606
  %1612 = load ptr, ptr %1611, align 8, !tbaa !49
  %1613 = getelementptr i16, ptr %1612, i64 %1601
  %1614 = getelementptr inbounds i16, ptr %1613, i64 3
  %1615 = getelementptr inbounds i16, ptr %1613, i64 2
  %1616 = getelementptr i16, ptr %1613, i64 -1
  %1617 = getelementptr i16, ptr %1613, i64 -2
  br label %1618

1618:                                             ; preds = %1618, %1608
  %1619 = phi ptr [ %1655, %1618 ], [ %1610, %1608 ]
  %1620 = phi ptr [ %1630, %1618 ], [ %1614, %1608 ]
  %1621 = phi ptr [ %1636, %1618 ], [ %1615, %1608 ]
  %1622 = phi ptr [ %1626, %1618 ], [ %1613, %1608 ]
  %1623 = phi ptr [ %1633, %1618 ], [ %1616, %1608 ]
  %1624 = phi ptr [ %1627, %1618 ], [ %1617, %1608 ]
  %1625 = phi i32 [ %1656, %1618 ], [ 0, %1608 ]
  %1626 = getelementptr i16, ptr %1622, i64 1
  %1627 = getelementptr inbounds i16, ptr %1624, i64 1
  %1628 = load i16, ptr %1624, align 2, !tbaa !66
  %1629 = zext i16 %1628 to i32
  %1630 = getelementptr inbounds i16, ptr %1620, i64 1
  %1631 = load i16, ptr %1620, align 2, !tbaa !66
  %1632 = zext i16 %1631 to i32
  %1633 = getelementptr inbounds i16, ptr %1623, i64 1
  %1634 = load i16, ptr %1623, align 2, !tbaa !66
  %1635 = zext i16 %1634 to i32
  %1636 = getelementptr inbounds i16, ptr %1621, i64 1
  %1637 = load i16, ptr %1621, align 2, !tbaa !66
  %1638 = zext i16 %1637 to i32
  %1639 = add nuw nsw i32 %1638, %1635
  %1640 = mul nsw i32 %1639, -5
  %1641 = load i16, ptr %1622, align 2, !tbaa !66
  %1642 = zext i16 %1641 to i32
  %1643 = load i16, ptr %1626, align 2, !tbaa !66
  %1644 = zext i16 %1643 to i32
  %1645 = add nuw nsw i32 %1644, %1642
  %1646 = mul nuw nsw i32 %1645, 20
  %1647 = add nuw nsw i32 %1629, 16
  %1648 = add nuw nsw i32 %1647, %1632
  %1649 = add nsw i32 %1648, %1640
  %1650 = add nsw i32 %1649, %1646
  %1651 = ashr i32 %1650, 5
  %1652 = tail call i32 @llvm.smax.i32(i32 %1651, i32 0)
  %1653 = tail call i32 @llvm.smin.i32(i32 %1652, i32 %10)
  %1654 = trunc i32 %1653 to i16
  %1655 = getelementptr inbounds i16, ptr %1619, i64 1
  store i16 %1654, ptr %1619, align 2, !tbaa !66
  %1656 = add nuw nsw i32 %1625, 1
  %1657 = icmp eq i32 %1656, %3
  br i1 %1657, label %1658, label %1618, !llvm.loop !112

1658:                                             ; preds = %1618, %1604
  %1659 = add nuw nsw i64 %1605, 1
  %1660 = icmp eq i64 %1659, %1603
  br i1 %1660, label %1661, label %1604, !llvm.loop !113

1661:                                             ; preds = %1658
  br i1 %1191, label %1662, label %1736

1662:                                             ; preds = %1661
  %1663 = getelementptr inbounds ptr, ptr %1190, i64 -2
  %1664 = load ptr, ptr %1663, align 8, !tbaa !49
  %1665 = sext i32 %52 to i64
  %1666 = getelementptr i16, ptr %1664, i64 %1665
  %1667 = getelementptr i16, ptr %1666, i64 1
  %1668 = sext i32 %6 to i64
  %1669 = icmp sgt i32 %3, 0
  %1670 = sext i32 %3 to i64
  %1671 = sub nsw i64 0, %1670
  %1672 = zext nneg i32 %4 to i64
  br label %1673

1673:                                             ; preds = %1731, %1662
  %1674 = phi i64 [ 0, %1662 ], [ %1734, %1731 ]
  %1675 = phi ptr [ %1667, %1662 ], [ %1733, %1731 ]
  %1676 = getelementptr inbounds i16, ptr %1675, i64 %1668
  br i1 %1669, label %1677, label %1731

1677:                                             ; preds = %1673
  %1678 = getelementptr inbounds ptr, ptr %5, i64 %1674
  %1679 = load ptr, ptr %1678, align 8, !tbaa !49
  %1680 = getelementptr inbounds i16, ptr %1676, i64 %1668
  %1681 = getelementptr inbounds i16, ptr %1680, i64 %1668
  %1682 = getelementptr inbounds i16, ptr %1681, i64 %1668
  %1683 = getelementptr inbounds i16, ptr %1682, i64 %1668
  br label %1684

1684:                                             ; preds = %1684, %1677
  %1685 = phi ptr [ %1728, %1684 ], [ %1679, %1677 ]
  %1686 = phi ptr [ %1696, %1684 ], [ %1683, %1677 ]
  %1687 = phi ptr [ %1702, %1684 ], [ %1682, %1677 ]
  %1688 = phi ptr [ %1710, %1684 ], [ %1681, %1677 ]
  %1689 = phi ptr [ %1707, %1684 ], [ %1680, %1677 ]
  %1690 = phi ptr [ %1699, %1684 ], [ %1676, %1677 ]
  %1691 = phi ptr [ %1693, %1684 ], [ %1675, %1677 ]
  %1692 = phi i32 [ %1729, %1684 ], [ 0, %1677 ]
  %1693 = getelementptr inbounds i16, ptr %1691, i64 1
  %1694 = load i16, ptr %1691, align 2, !tbaa !66
  %1695 = zext i16 %1694 to i32
  %1696 = getelementptr inbounds i16, ptr %1686, i64 1
  %1697 = load i16, ptr %1686, align 2, !tbaa !66
  %1698 = zext i16 %1697 to i32
  %1699 = getelementptr inbounds i16, ptr %1690, i64 1
  %1700 = load i16, ptr %1690, align 2, !tbaa !66
  %1701 = zext i16 %1700 to i32
  %1702 = getelementptr inbounds i16, ptr %1687, i64 1
  %1703 = load i16, ptr %1687, align 2, !tbaa !66
  %1704 = zext i16 %1703 to i32
  %1705 = add nuw nsw i32 %1704, %1701
  %1706 = mul nsw i32 %1705, -5
  %1707 = getelementptr inbounds i16, ptr %1689, i64 1
  %1708 = load i16, ptr %1689, align 2, !tbaa !66
  %1709 = zext i16 %1708 to i32
  %1710 = getelementptr inbounds i16, ptr %1688, i64 1
  %1711 = load i16, ptr %1688, align 2, !tbaa !66
  %1712 = zext i16 %1711 to i32
  %1713 = add nuw nsw i32 %1712, %1709
  %1714 = mul nuw nsw i32 %1713, 20
  %1715 = load i16, ptr %1685, align 2, !tbaa !66
  %1716 = zext i16 %1715 to i32
  %1717 = add nuw nsw i32 %1695, 16
  %1718 = add nuw nsw i32 %1717, %1698
  %1719 = add nsw i32 %1718, %1706
  %1720 = add nsw i32 %1719, %1714
  %1721 = ashr i32 %1720, 5
  %1722 = tail call i32 @llvm.smax.i32(i32 %1721, i32 0)
  %1723 = tail call i32 @llvm.smin.i32(i32 %1722, i32 %10)
  %1724 = add nuw nsw i32 %1716, 1
  %1725 = add nsw i32 %1724, %1723
  %1726 = lshr i32 %1725, 1
  %1727 = trunc i32 %1726 to i16
  store i16 %1727, ptr %1685, align 2, !tbaa !66
  %1728 = getelementptr inbounds i16, ptr %1685, i64 1
  %1729 = add nuw nsw i32 %1692, 1
  %1730 = icmp eq i32 %1729, %3
  br i1 %1730, label %1731, label %1684, !llvm.loop !114

1731:                                             ; preds = %1684, %1673
  %1732 = phi ptr [ %1676, %1673 ], [ %1699, %1684 ]
  %1733 = getelementptr inbounds i16, ptr %1732, i64 %1671
  %1734 = add nuw nsw i64 %1674, 1
  %1735 = icmp eq i64 %1734, %1672
  br i1 %1735, label %1736, label %1673, !llvm.loop !115

1736:                                             ; preds = %731, %594, %852, %434, %363, %520, %1731, %1594, %1458, %1322, %1184, %1055, %211, %151, %278, %71, %154, %87, %214, %59, %1661, %1599, %1524, %1464, %1389, %1327, %1253, %1193, %1074, %1058, %945, %929, %795, %674, %537, %439, %367, %283, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @intra_cr_decoding(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = load ptr, ptr %0, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 119
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  tail call void %9(ptr noundef nonnull %0) #9
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
  %25 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 75
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %28 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %29 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %30 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %31 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  br label %33

33:                                               ; preds = %2, %181
  %34 = phi i64 [ 0, %2 ], [ %182, %181 ]
  %35 = load i32, ptr %10, align 4, !tbaa !118
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @itrans4x4, ptr @itrans4x4_ls
  store ptr %37, ptr %11, align 8, !tbaa !119
  %38 = load ptr, ptr %12, align 8, !tbaa !61
  %39 = getelementptr inbounds ptr, ptr %38, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  br i1 %36, label %81, label %41

41:                                               ; preds = %33
  %42 = load i8, ptr %13, align 1, !tbaa !120
  %43 = add i8 %42, -1
  %44 = icmp ult i8 %43, 2
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %14, align 8, !tbaa !121
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = add nuw nsw i64 %34, 1
  br label %52

50:                                               ; preds = %41
  %51 = trunc i64 %34 to i32
  tail call void @Inv_Residual_trans_Chroma(ptr noundef nonnull %0, i32 noundef %51) #9
  br label %81

52:                                               ; preds = %48, %76
  %53 = phi i64 [ 0, %48 ], [ %77, %76 ]
  %54 = load i32, ptr %15, align 4, !tbaa !122
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load ptr, ptr %16, align 8, !tbaa !123
  %58 = getelementptr inbounds ptr, ptr %57, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = getelementptr inbounds ptr, ptr %59, i64 %53
  %61 = load ptr, ptr %60, align 8, !tbaa !49
  %62 = load ptr, ptr %17, align 8, !tbaa !124
  %63 = getelementptr inbounds ptr, ptr %62, i64 %49
  %64 = load ptr, ptr %63, align 8, !tbaa !49
  %65 = getelementptr inbounds ptr, ptr %64, i64 %53
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  br label %67

67:                                               ; preds = %56, %67
  %68 = phi i64 [ 0, %56 ], [ %72, %67 ]
  %69 = getelementptr inbounds i32, ptr %61, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !79
  %71 = getelementptr inbounds i32, ptr %66, i64 %68
  store i32 %70, ptr %71, align 4, !tbaa !79
  %72 = add nuw nsw i64 %68, 1
  %73 = load i32, ptr %15, align 4, !tbaa !122
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %67, label %76, !llvm.loop !125

76:                                               ; preds = %67, %52
  %77 = add nuw nsw i64 %53, 1
  %78 = load i32, ptr %14, align 8, !tbaa !121
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %52, label %81, !llvm.loop !126

81:                                               ; preds = %76, %45, %50, %33
  %82 = load i16, ptr %18, align 8, !tbaa !127
  %83 = icmp eq i16 %82, 12
  br i1 %83, label %126, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %19, align 4, !tbaa !128
  %86 = icmp ult i32 %85, 16
  br i1 %86, label %122, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %20, align 4, !tbaa !129
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %181

90:                                               ; preds = %87
  %91 = add nuw nsw i64 %34, 1
  %92 = trunc i64 %91 to i32
  br label %93

93:                                               ; preds = %90, %117
  %94 = phi i64 [ 0, %90 ], [ %118, %117 ]
  br label %95

95:                                               ; preds = %93, %95
  %96 = phi i64 [ 0, %93 ], [ %115, %95 ]
  %97 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %21, i64 %94, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !130
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %21, i64 %94, i64 %96
  %101 = load i8, ptr %100, align 1, !tbaa !130
  %102 = zext i8 %101 to i32
  %103 = load ptr, ptr %11, align 8, !tbaa !119
  tail call void %103(ptr noundef nonnull %0, i32 noundef %92, i32 noundef %102, i32 noundef %99) #9
  %104 = load i32, ptr %22, align 8, !tbaa !131
  %105 = add nsw i32 %104, %99
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %40, i64 %106
  %108 = load ptr, ptr %23, align 8, !tbaa !132
  %109 = getelementptr inbounds ptr, ptr %108, i64 %91
  %110 = load ptr, ptr %109, align 8, !tbaa !49
  %111 = zext i8 %98 to i64
  %112 = getelementptr inbounds ptr, ptr %110, i64 %111
  %113 = load i32, ptr %24, align 4, !tbaa !133
  %114 = add nsw i32 %113, %102
  tail call void @copy_image_data_4x4(ptr noundef %107, ptr noundef %112, i32 noundef %114, i32 noundef %102) #9
  %115 = add nuw nsw i64 %96, 1
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %95, !llvm.loop !134

117:                                              ; preds = %95
  %118 = add nuw nsw i64 %94, 1
  %119 = load i32, ptr %20, align 4, !tbaa !129
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %93, label %181, !llvm.loop !135

122:                                              ; preds = %84
  br i1 %83, label %126, label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %25, align 4, !tbaa !129
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %152, label %181

126:                                              ; preds = %81, %122
  %127 = trunc i64 %34 to i32
  tail call void @itrans_sp_cr(ptr noundef nonnull %0, i32 noundef %127) #9
  %128 = add nuw nsw i64 %34, 1
  %129 = trunc i64 %128 to i32
  br label %130

130:                                              ; preds = %126, %149
  %131 = phi i64 [ 0, %126 ], [ %150, %149 ]
  %132 = trunc i64 %131 to i32
  %133 = trunc i64 %131 to i32
  br label %134

134:                                              ; preds = %130, %134
  %135 = phi i32 [ 0, %130 ], [ %147, %134 ]
  %136 = load ptr, ptr %11, align 8, !tbaa !119
  tail call void %136(ptr noundef nonnull %0, i32 noundef %129, i32 noundef %135, i32 noundef %132) #9
  %137 = load i32, ptr %30, align 8, !tbaa !131
  %138 = add nsw i32 %137, %133
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %40, i64 %139
  %141 = load ptr, ptr %31, align 8, !tbaa !132
  %142 = getelementptr inbounds ptr, ptr %141, i64 %128
  %143 = load ptr, ptr %142, align 8, !tbaa !49
  %144 = getelementptr inbounds ptr, ptr %143, i64 %131
  %145 = load i32, ptr %32, align 4, !tbaa !133
  %146 = add nsw i32 %145, %135
  tail call void @copy_image_data_4x4(ptr noundef %140, ptr noundef %144, i32 noundef %146, i32 noundef %135) #9
  %147 = add nuw nsw i32 %135, 4
  %148 = icmp eq i32 %135, 0
  br i1 %148, label %134, label %149, !llvm.loop !136

149:                                              ; preds = %134
  %150 = add nuw nsw i64 %131, 4
  %151 = icmp eq i64 %131, 0
  br i1 %151, label %130, label %181, !llvm.loop !137

152:                                              ; preds = %123, %176
  %153 = phi i64 [ %177, %176 ], [ 0, %123 ]
  br label %154

154:                                              ; preds = %152, %154
  %155 = phi i64 [ 0, %152 ], [ %174, %154 ]
  %156 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %26, i64 %153, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !130
  %158 = zext i8 %157 to i32
  %159 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %26, i64 %153, i64 %155
  %160 = load i8, ptr %159, align 1, !tbaa !130
  %161 = zext i8 %160 to i32
  %162 = load i32, ptr %27, align 8, !tbaa !131
  %163 = add nsw i32 %162, %158
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds ptr, ptr %40, i64 %164
  %166 = load ptr, ptr %28, align 8, !tbaa !138
  %167 = getelementptr ptr, ptr %166, i64 %34
  %168 = getelementptr ptr, ptr %167, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !49
  %170 = zext i8 %157 to i64
  %171 = getelementptr inbounds ptr, ptr %169, i64 %170
  %172 = load i32, ptr %29, align 4, !tbaa !133
  %173 = add nsw i32 %172, %161
  tail call void @copy_image_data_4x4(ptr noundef %165, ptr noundef %171, i32 noundef %173, i32 noundef %161) #9
  %174 = add nuw nsw i64 %155, 1
  %175 = icmp eq i64 %174, 4
  br i1 %175, label %176, label %154, !llvm.loop !139

176:                                              ; preds = %154
  %177 = add nuw nsw i64 %153, 1
  %178 = load i32, ptr %25, align 4, !tbaa !129
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %177, %179
  br i1 %180, label %152, label %181, !llvm.loop !140

181:                                              ; preds = %117, %176, %149, %87, %123
  %182 = add nuw nsw i64 %34, 1
  %183 = icmp eq i64 %34, 0
  br i1 %183, label %33, label %184, !llvm.loop !141

184:                                              ; preds = %181
  ret void
}

declare void @itrans4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @itrans4x4_ls(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @Inv_Residual_trans_Chroma(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @itrans_sp_cr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @prepare_direct_params(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x %struct.pix_pos], align 16
  %8 = load ptr, ptr %0, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %10 = load ptr, ptr %9, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @get_neighbors(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  %11 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 25
  %12 = load i32, ptr %11, align 8, !tbaa !143
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %6
  %15 = load i32, ptr %7, align 16, !tbaa !144
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %19 = load i16, ptr %18, align 2, !tbaa !146
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %10, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !147
  %25 = sext i16 %24 to i64
  %26 = getelementptr inbounds %struct.pic_motion_params, ptr %22, i64 %25, i32 2
  %27 = load i8, ptr %26, align 1, !tbaa !130
  %28 = getelementptr inbounds i8, ptr %26, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !130
  br label %30

30:                                               ; preds = %14, %17
  %31 = phi i8 [ %27, %17 ], [ -1, %14 ]
  %32 = phi i8 [ %29, %17 ], [ -1, %14 ]
  %33 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1
  %34 = load i32, ptr %33, align 16, !tbaa !144
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 5
  %38 = load i16, ptr %37, align 2, !tbaa !146
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %10, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 4
  %43 = load i16, ptr %42, align 4, !tbaa !147
  %44 = sext i16 %43 to i64
  %45 = getelementptr inbounds %struct.pic_motion_params, ptr %41, i64 %44, i32 2
  %46 = load i8, ptr %45, align 1, !tbaa !130
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !130
  br label %49

49:                                               ; preds = %30, %36
  %50 = phi i8 [ %46, %36 ], [ -1, %30 ]
  %51 = phi i8 [ %48, %36 ], [ -1, %30 ]
  %52 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2
  %53 = load i32, ptr %52, align 16, !tbaa !144
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %271, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 5
  %57 = load i16, ptr %56, align 2, !tbaa !146
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %10, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 4
  %62 = load i16, ptr %61, align 4, !tbaa !147
  %63 = sext i16 %62 to i64
  %64 = getelementptr inbounds %struct.pic_motion_params, ptr %60, i64 %63, i32 2
  %65 = load i8, ptr %64, align 1, !tbaa !130
  %66 = getelementptr inbounds i8, ptr %64, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !130
  br label %271

68:                                               ; preds = %6
  %69 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !50
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %72 = load i32, ptr %71, align 8, !tbaa !148
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct.video_par, ptr %70, i64 0, i32 35
  %75 = load i32, ptr %7, align 16, !tbaa !144
  %76 = icmp eq i32 %75, 0
  br i1 %73, label %180, label %77

77:                                               ; preds = %68
  br i1 %76, label %108, label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %74, align 8, !tbaa !149
  %80 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %81 = load i16, ptr %80, align 2, !tbaa !146
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %10, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !49
  %85 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %86 = load i16, ptr %85, align 4, !tbaa !147
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds %struct.pic_motion_params, ptr %84, i64 %87, i32 2
  %89 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !150
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.macroblock, ptr %79, i64 %91, i32 45
  %93 = load i32, ptr %92, align 8, !tbaa !148
  %94 = icmp eq i32 %93, 0
  %95 = load i8, ptr %88, align 1, !tbaa !130
  br i1 %94, label %99, label %96

96:                                               ; preds = %78
  %97 = getelementptr inbounds i8, ptr %88, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !130
  br label %108

99:                                               ; preds = %78
  %100 = icmp sgt i8 %95, -1
  %101 = zext i1 %100 to i8
  %102 = shl nuw i8 %95, %101
  %103 = getelementptr inbounds i8, ptr %88, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !130
  %105 = icmp sgt i8 %104, -1
  %106 = zext i1 %105 to i8
  %107 = shl nuw i8 %104, %106
  br label %108

108:                                              ; preds = %77, %96, %99
  %109 = phi i8 [ %102, %99 ], [ %95, %96 ], [ -1, %77 ]
  %110 = phi i8 [ %107, %99 ], [ %98, %96 ], [ -1, %77 ]
  %111 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1
  %112 = load i32, ptr %111, align 16, !tbaa !144
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %144, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %74, align 8, !tbaa !149
  %116 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 5
  %117 = load i16, ptr %116, align 2, !tbaa !146
  %118 = sext i16 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %10, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !49
  %121 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 4
  %122 = load i16, ptr %121, align 4, !tbaa !147
  %123 = sext i16 %122 to i64
  %124 = getelementptr inbounds %struct.pic_motion_params, ptr %120, i64 %123, i32 2
  %125 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !150
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.macroblock, ptr %115, i64 %127, i32 45
  %129 = load i32, ptr %128, align 8, !tbaa !148
  %130 = icmp eq i32 %129, 0
  %131 = load i8, ptr %124, align 1, !tbaa !130
  br i1 %130, label %135, label %132

132:                                              ; preds = %114
  %133 = getelementptr inbounds i8, ptr %124, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !130
  br label %144

135:                                              ; preds = %114
  %136 = icmp sgt i8 %131, -1
  %137 = zext i1 %136 to i8
  %138 = shl nuw i8 %131, %137
  %139 = getelementptr inbounds i8, ptr %124, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !130
  %141 = icmp sgt i8 %140, -1
  %142 = zext i1 %141 to i8
  %143 = shl nuw i8 %140, %142
  br label %144

144:                                              ; preds = %108, %132, %135
  %145 = phi i8 [ %138, %135 ], [ %131, %132 ], [ -1, %108 ]
  %146 = phi i8 [ %143, %135 ], [ %134, %132 ], [ -1, %108 ]
  %147 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2
  %148 = load i32, ptr %147, align 16, !tbaa !144
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %271, label %150

150:                                              ; preds = %144
  %151 = load ptr, ptr %74, align 8, !tbaa !149
  %152 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 5
  %153 = load i16, ptr %152, align 2, !tbaa !146
  %154 = sext i16 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %10, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !49
  %157 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 4
  %158 = load i16, ptr %157, align 4, !tbaa !147
  %159 = sext i16 %158 to i64
  %160 = getelementptr inbounds %struct.pic_motion_params, ptr %156, i64 %159, i32 2
  %161 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !150
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.macroblock, ptr %151, i64 %163, i32 45
  %165 = load i32, ptr %164, align 8, !tbaa !148
  %166 = icmp eq i32 %165, 0
  %167 = load i8, ptr %160, align 1, !tbaa !130
  br i1 %166, label %171, label %168

168:                                              ; preds = %150
  %169 = getelementptr inbounds i8, ptr %160, i64 1
  %170 = load i8, ptr %169, align 1, !tbaa !130
  br label %271

171:                                              ; preds = %150
  %172 = icmp sgt i8 %167, -1
  %173 = zext i1 %172 to i8
  %174 = shl nuw i8 %167, %173
  %175 = getelementptr inbounds i8, ptr %160, i64 1
  %176 = load i8, ptr %175, align 1, !tbaa !130
  %177 = icmp sgt i8 %176, -1
  %178 = zext i1 %177 to i8
  %179 = shl nuw i8 %176, %178
  br label %271

180:                                              ; preds = %68
  br i1 %76, label %207, label %181

181:                                              ; preds = %180
  %182 = load ptr, ptr %74, align 8, !tbaa !149
  %183 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %184 = load i16, ptr %183, align 2, !tbaa !146
  %185 = sext i16 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %10, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !49
  %188 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %189 = load i16, ptr %188, align 4, !tbaa !147
  %190 = sext i16 %189 to i64
  %191 = getelementptr inbounds %struct.pic_motion_params, ptr %187, i64 %190, i32 2
  %192 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %193 = load i32, ptr %192, align 4, !tbaa !150
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.macroblock, ptr %182, i64 %194, i32 45
  %196 = load i32, ptr %195, align 8, !tbaa !148
  %197 = icmp eq i32 %196, 0
  %198 = load i8, ptr %191, align 1, !tbaa !130
  br i1 %197, label %204, label %199

199:                                              ; preds = %181
  %200 = ashr i8 %198, 1
  %201 = getelementptr inbounds i8, ptr %191, i64 1
  %202 = load i8, ptr %201, align 1, !tbaa !130
  %203 = ashr i8 %202, 1
  br label %207

204:                                              ; preds = %181
  %205 = getelementptr inbounds i8, ptr %191, i64 1
  %206 = load i8, ptr %205, align 1, !tbaa !130
  br label %207

207:                                              ; preds = %180, %199, %204
  %208 = phi i8 [ %198, %204 ], [ %200, %199 ], [ -1, %180 ]
  %209 = phi i8 [ %206, %204 ], [ %203, %199 ], [ -1, %180 ]
  %210 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1
  %211 = load i32, ptr %210, align 16, !tbaa !144
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %239, label %213

213:                                              ; preds = %207
  %214 = load ptr, ptr %74, align 8, !tbaa !149
  %215 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 5
  %216 = load i16, ptr %215, align 2, !tbaa !146
  %217 = sext i16 %216 to i64
  %218 = getelementptr inbounds ptr, ptr %10, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !49
  %220 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 4
  %221 = load i16, ptr %220, align 4, !tbaa !147
  %222 = sext i16 %221 to i64
  %223 = getelementptr inbounds %struct.pic_motion_params, ptr %219, i64 %222, i32 2
  %224 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 1, i32 1
  %225 = load i32, ptr %224, align 4, !tbaa !150
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.macroblock, ptr %214, i64 %226, i32 45
  %228 = load i32, ptr %227, align 8, !tbaa !148
  %229 = icmp eq i32 %228, 0
  %230 = load i8, ptr %223, align 1, !tbaa !130
  br i1 %229, label %236, label %231

231:                                              ; preds = %213
  %232 = ashr i8 %230, 1
  %233 = getelementptr inbounds i8, ptr %223, i64 1
  %234 = load i8, ptr %233, align 1, !tbaa !130
  %235 = ashr i8 %234, 1
  br label %239

236:                                              ; preds = %213
  %237 = getelementptr inbounds i8, ptr %223, i64 1
  %238 = load i8, ptr %237, align 1, !tbaa !130
  br label %239

239:                                              ; preds = %207, %231, %236
  %240 = phi i8 [ %230, %236 ], [ %232, %231 ], [ -1, %207 ]
  %241 = phi i8 [ %238, %236 ], [ %235, %231 ], [ -1, %207 ]
  %242 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2
  %243 = load i32, ptr %242, align 16, !tbaa !144
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %271, label %245

245:                                              ; preds = %239
  %246 = load ptr, ptr %74, align 8, !tbaa !149
  %247 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 5
  %248 = load i16, ptr %247, align 2, !tbaa !146
  %249 = sext i16 %248 to i64
  %250 = getelementptr inbounds ptr, ptr %10, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !49
  %252 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 4
  %253 = load i16, ptr %252, align 4, !tbaa !147
  %254 = sext i16 %253 to i64
  %255 = getelementptr inbounds %struct.pic_motion_params, ptr %251, i64 %254, i32 2
  %256 = getelementptr inbounds [4 x %struct.pix_pos], ptr %7, i64 0, i64 2, i32 1
  %257 = load i32, ptr %256, align 4, !tbaa !150
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.macroblock, ptr %246, i64 %258, i32 45
  %260 = load i32, ptr %259, align 8, !tbaa !148
  %261 = icmp eq i32 %260, 0
  %262 = load i8, ptr %255, align 1, !tbaa !130
  br i1 %261, label %268, label %263

263:                                              ; preds = %245
  %264 = ashr i8 %262, 1
  %265 = getelementptr inbounds i8, ptr %255, i64 1
  %266 = load i8, ptr %265, align 1, !tbaa !130
  %267 = ashr i8 %266, 1
  br label %271

268:                                              ; preds = %245
  %269 = getelementptr inbounds i8, ptr %255, i64 1
  %270 = load i8, ptr %269, align 1, !tbaa !130
  br label %271

271:                                              ; preds = %268, %263, %239, %171, %168, %144, %55, %49
  %272 = phi i8 [ %31, %49 ], [ %31, %55 ], [ %109, %144 ], [ %109, %168 ], [ %109, %171 ], [ %208, %239 ], [ %208, %263 ], [ %208, %268 ]
  %273 = phi i8 [ %50, %49 ], [ %50, %55 ], [ %145, %144 ], [ %145, %168 ], [ %145, %171 ], [ %240, %239 ], [ %240, %263 ], [ %240, %268 ]
  %274 = phi i8 [ -1, %49 ], [ %65, %55 ], [ -1, %144 ], [ %167, %168 ], [ %174, %171 ], [ -1, %239 ], [ %264, %263 ], [ %262, %268 ]
  %275 = phi i8 [ %32, %49 ], [ %32, %55 ], [ %110, %144 ], [ %110, %168 ], [ %110, %171 ], [ %209, %239 ], [ %209, %263 ], [ %209, %268 ]
  %276 = phi i8 [ %51, %49 ], [ %51, %55 ], [ %146, %144 ], [ %146, %168 ], [ %146, %171 ], [ %241, %239 ], [ %241, %263 ], [ %241, %268 ]
  %277 = phi i8 [ -1, %49 ], [ %67, %55 ], [ -1, %144 ], [ %170, %168 ], [ %179, %171 ], [ -1, %239 ], [ %267, %263 ], [ %270, %268 ]
  %278 = zext i8 %272 to i32
  %279 = zext i8 %273 to i32
  %280 = call i32 @llvm.smin.i32(i32 %278, i32 %279)
  %281 = zext i8 %274 to i32
  %282 = call i32 @llvm.smin.i32(i32 %280, i32 %281)
  %283 = trunc i32 %282 to i8
  store i8 %283, ptr %4, align 1, !tbaa !130
  %284 = zext i8 %275 to i32
  %285 = zext i8 %276 to i32
  %286 = call i32 @llvm.smin.i32(i32 %284, i32 %285)
  %287 = zext i8 %277 to i32
  %288 = call i32 @llvm.smin.i32(i32 %286, i32 %287)
  %289 = trunc i32 %288 to i8
  store i8 %289, ptr %5, align 1, !tbaa !130
  %290 = load i8, ptr %4, align 1, !tbaa !130
  %291 = icmp sgt i8 %290, -1
  br i1 %291, label %292, label %296

292:                                              ; preds = %271
  %293 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 58
  %294 = load ptr, ptr %293, align 8, !tbaa !151
  %295 = zext nneg i8 %290 to i16
  call void %294(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %2, i16 noundef signext %295, ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #9
  br label %296

296:                                              ; preds = %292, %271
  %297 = load i8, ptr %5, align 1, !tbaa !130
  %298 = icmp sgt i8 %297, -1
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 58
  %301 = load ptr, ptr %300, align 8, !tbaa !151
  %302 = zext nneg i8 %297 to i16
  call void %301(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %3, i16 noundef signext %302, ptr noundef %10, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #9
  br label %303

303:                                              ; preds = %299, %296
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  ret void
}

declare void @get_neighbors(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @perform_mc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr %0, align 8, !tbaa !59
  %10 = icmp eq i32 %3, 2
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  br i1 %10, label %585, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 96
  %15 = load i16, ptr %14, align 8, !tbaa !152
  %16 = icmp eq i16 %15, 0
  %17 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  %19 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 83
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 84
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !154
  %25 = add nsw i32 %24, %4
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !155
  %28 = add nsw i32 %27, %5
  br i1 %16, label %364, label %29

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 33
  %31 = load i32, ptr %30, align 4, !tbaa !156
  %32 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %33 = load i32, ptr %32, align 4, !tbaa !157
  %34 = shl i32 %4, 2
  %35 = shl i32 %5, 2
  %36 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  %37 = load ptr, ptr %36, align 8, !tbaa !142
  %38 = sext i32 %28 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = sext i32 %25 to i64
  %42 = sext i32 %3 to i64
  %43 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %41, i32 2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !130
  %45 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %41, i32 1, i64 %42
  %46 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %47 = load i16, ptr %46, align 2, !tbaa !158
  %48 = sext i16 %47 to i32
  %49 = add nsw i32 %48, %3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = sext i8 %44 to i64
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  %56 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 20
  %57 = load i32, ptr %56, align 8, !tbaa !159
  %58 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %59 = load i32, ptr %58, align 8, !tbaa !148
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %29
  %62 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 17
  %63 = load i32, ptr %62, align 4, !tbaa !160
  %64 = ashr i32 %63, 1
  %65 = add nsw i32 %64, -1
  br label %69

66:                                               ; preds = %29
  %67 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 21
  %68 = load i32, ptr %67, align 4, !tbaa !161
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i32 [ %65, %61 ], [ %68, %66 ]
  %71 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 67
  %72 = load i32, ptr %71, align 4, !tbaa !62
  %73 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 85
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = zext i32 %1 to i64
  %76 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 70, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !79
  %78 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %75
  %79 = load i32, ptr %78, align 4, !tbaa !79
  %80 = trunc i32 %79 to i16
  %81 = load i16, ptr %45, align 2, !tbaa !162
  %82 = add i16 %81, -8192
  %83 = icmp ult i16 %82, -16384
  br i1 %83, label %84, label %93

84:                                               ; preds = %69
  %85 = load ptr, ptr @stderr, align 8, !tbaa !49
  %86 = sext i16 %81 to i32
  %87 = load ptr, ptr %9, align 8, !tbaa !163
  %88 = getelementptr inbounds %struct.video_par, ptr %87, i64 0, i32 14
  %89 = load i32, ptr %88, align 8, !tbaa !164
  %90 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %91 = load i32, ptr %90, align 4, !tbaa !165
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.1, i32 noundef %86, i32 noundef %89, i32 noundef %91) #10
  br label %93

93:                                               ; preds = %84, %69
  %94 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %41, i32 1, i64 %42, i32 1
  %95 = load i16, ptr %94, align 2, !tbaa !166
  %96 = sext i16 %95 to i32
  %97 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 109
  %98 = load i32, ptr %97, align 8, !tbaa !167
  %99 = icmp sle i32 %98, %96
  %100 = sub nsw i32 0, %98
  %101 = icmp slt i32 %96, %100
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %93
  %104 = load ptr, ptr @stderr, align 8, !tbaa !49
  %105 = add nsw i32 %98, -1
  %106 = load ptr, ptr %9, align 8, !tbaa !163
  %107 = getelementptr inbounds %struct.video_par, ptr %106, i64 0, i32 14
  %108 = load i32, ptr %107, align 8, !tbaa !164
  %109 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %110 = load i32, ptr %109, align 4, !tbaa !165
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.2, i32 noundef %96, i32 noundef %100, i32 noundef %105, i32 noundef %108, i32 noundef %110) #10
  br label %112

112:                                              ; preds = %93, %103
  %113 = shl nsw i32 %25, 4
  %114 = load i16, ptr %45, align 2, !tbaa !162
  %115 = sext i16 %114 to i32
  %116 = add nsw i32 %113, %115
  %117 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %118 = load i32, ptr %117, align 8, !tbaa !168
  %119 = add nsw i32 %118, %5
  %120 = shl nsw i32 %119, 4
  %121 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %41, i32 1, i64 %42, i32 1
  %122 = load i16, ptr %121, align 2, !tbaa !166
  %123 = sext i16 %122 to i32
  %124 = add nsw i32 %120, %123
  %125 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 173
  %126 = load i32, ptr %125, align 4, !tbaa !169
  %127 = add nsw i32 %126, -4
  %128 = icmp slt i32 %127, %7
  br i1 %128, label %129, label %136

129:                                              ; preds = %112
  %130 = tail call i32 @CheckVertMV(ptr noundef nonnull %0, i32 noundef %124, i32 noundef %7) #9
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  tail call void @get_block_luma(ptr noundef %55, i32 noundef %116, i32 noundef %124, i32 noundef %6, i32 noundef 8, ptr noundef %20, i32 noundef %72, i32 noundef %57, i32 noundef %70, ptr noundef %74, i32 noundef %77, i16 noundef zeroext %80, ptr noundef nonnull %0)
  %133 = add nsw i32 %124, 32
  %134 = add nsw i32 %7, -8
  %135 = getelementptr inbounds ptr, ptr %20, i64 8
  tail call void @get_block_luma(ptr noundef %55, i32 noundef %116, i32 noundef %133, i32 noundef %6, i32 noundef %134, ptr noundef nonnull %135, i32 noundef %72, i32 noundef %57, i32 noundef %70, ptr noundef %74, i32 noundef %77, i16 noundef zeroext %80, ptr noundef nonnull %0)
  br label %137

136:                                              ; preds = %129, %112
  tail call void @get_block_luma(ptr noundef %55, i32 noundef %116, i32 noundef %124, i32 noundef %6, i32 noundef %7, ptr noundef %20, i32 noundef %72, i32 noundef %57, i32 noundef %70, ptr noundef %74, i32 noundef %77, i16 noundef zeroext %80, ptr noundef nonnull %0)
  br label %137

137:                                              ; preds = %136, %132
  %138 = load i32, ptr %58, align 8, !tbaa !148
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !170
  %143 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %142, i64 0, i32 23
  %144 = load i32, ptr %143, align 8, !tbaa !171
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  switch i32 %31, label %147 [
    i32 3, label %153
    i32 0, label %153
  ]

147:                                              ; preds = %146, %140
  %148 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %142, i64 0, i32 24
  %149 = load i32, ptr %148, align 4, !tbaa !173
  %150 = icmp eq i32 %149, 1
  %151 = icmp eq i32 %31, 1
  %152 = select i1 %150, i1 %151, i1 false
  br i1 %152, label %153, label %155

153:                                              ; preds = %147, %146, %146
  %154 = ashr i8 %44, 1
  br label %155

155:                                              ; preds = %153, %147, %137
  %156 = phi i8 [ %154, %153 ], [ %44, %147 ], [ %44, %137 ]
  %157 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 100
  %158 = load ptr, ptr %157, align 8, !tbaa !174
  %159 = getelementptr inbounds ptr, ptr %158, i64 %42
  %160 = load ptr, ptr %159, align 8, !tbaa !49
  %161 = sext i8 %156 to i64
  %162 = getelementptr inbounds ptr, ptr %160, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !49
  %164 = load i32, ptr %163, align 4, !tbaa !79
  %165 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 101
  %166 = load ptr, ptr %165, align 8, !tbaa !175
  %167 = getelementptr inbounds ptr, ptr %166, i64 %42
  %168 = load ptr, ptr %167, align 8, !tbaa !49
  %169 = getelementptr inbounds ptr, ptr %168, i64 %161
  %170 = load ptr, ptr %169, align 8, !tbaa !49
  %171 = load i32, ptr %170, align 4, !tbaa !79
  %172 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 77
  %173 = load ptr, ptr %172, align 8, !tbaa !138
  %174 = getelementptr inbounds ptr, ptr %173, i64 %75
  %175 = load ptr, ptr %174, align 8, !tbaa !49
  %176 = sext i32 %35 to i64
  %177 = getelementptr inbounds ptr, ptr %175, i64 %176
  %178 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 98
  %179 = load i16, ptr %178, align 4, !tbaa !176
  %180 = zext i16 %179 to i32
  %181 = icmp sgt i32 %7, 0
  br i1 %181, label %182, label %217

182:                                              ; preds = %155
  %183 = icmp sgt i32 %6, 0
  %184 = icmp eq i16 %179, 0
  %185 = add nsw i32 %180, -1
  %186 = shl nuw i32 1, %185
  %187 = sext i32 %34 to i64
  %188 = zext nneg i32 %7 to i64
  %189 = zext nneg i32 %6 to i64
  br label %190

190:                                              ; preds = %182, %214
  %191 = phi i64 [ 0, %182 ], [ %215, %214 ]
  br i1 %183, label %192, label %214

192:                                              ; preds = %190
  %193 = getelementptr inbounds ptr, ptr %20, i64 %191
  %194 = load ptr, ptr %193, align 8, !tbaa !49
  %195 = getelementptr inbounds ptr, ptr %177, i64 %191
  %196 = load ptr, ptr %195, align 8, !tbaa !49
  %197 = getelementptr i16, ptr %196, i64 %187
  br label %198

198:                                              ; preds = %192, %198
  %199 = phi i64 [ 0, %192 ], [ %212, %198 ]
  %200 = getelementptr inbounds i16, ptr %194, i64 %199
  %201 = load i16, ptr %200, align 2, !tbaa !66
  %202 = zext i16 %201 to i32
  %203 = mul nsw i32 %164, %202
  %204 = add nsw i32 %203, %186
  %205 = ashr i32 %204, %180
  %206 = select i1 %184, i32 %203, i32 %205
  %207 = add nsw i32 %206, %171
  %208 = tail call i32 @llvm.smax.i32(i32 %207, i32 0)
  %209 = tail call i32 @llvm.smin.i32(i32 %208, i32 %77)
  %210 = trunc i32 %209 to i16
  %211 = getelementptr i16, ptr %197, i64 %199
  store i16 %210, ptr %211, align 2, !tbaa !66
  %212 = add nuw nsw i64 %199, 1
  %213 = icmp eq i64 %212, %189
  br i1 %213, label %214, label %198, !llvm.loop !177

214:                                              ; preds = %198, %190
  %215 = add nuw nsw i64 %191, 1
  %216 = icmp eq i64 %215, %188
  br i1 %216, label %217, label %190, !llvm.loop !178

217:                                              ; preds = %214, %155
  switch i32 %33, label %218 [
    i32 3, label %1479
    i32 0, label %1479
  ]

218:                                              ; preds = %217
  %219 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 9
  %220 = load i32, ptr %219, align 4, !tbaa !179
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 129, i64 %50, i64 %53
  %224 = load i8, ptr %223, align 1, !tbaa !130
  %225 = sext i8 %224 to i32
  br label %226

226:                                              ; preds = %222, %218
  %227 = phi i32 [ %225, %222 ], [ 0, %218 ]
  %228 = add nsw i32 %227, %124
  %229 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 88
  %230 = load i32, ptr %229, align 4, !tbaa !183
  %231 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 84
  %232 = load i32, ptr %231, align 4, !tbaa !184
  %233 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 85
  %234 = load i32, ptr %233, align 8, !tbaa !185
  %235 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 86
  %236 = load i32, ptr %235, align 4, !tbaa !186
  %237 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 87
  %238 = load i32, ptr %237, align 8, !tbaa !187
  %239 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 22
  %240 = load i32, ptr %239, align 8, !tbaa !188
  br i1 %139, label %246, label %241

241:                                              ; preds = %226
  %242 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 19
  %243 = load i32, ptr %242, align 4, !tbaa !189
  %244 = ashr i32 %243, 1
  %245 = add nsw i32 %244, -1
  br label %249

246:                                              ; preds = %226
  %247 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 23
  %248 = load i32, ptr %247, align 4, !tbaa !190
  br label %249

249:                                              ; preds = %246, %241
  %250 = phi i32 [ %245, %241 ], [ %248, %246 ]
  %251 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 99
  %252 = load i16, ptr %251, align 2, !tbaa !191
  %253 = zext i16 %252 to i32
  %254 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 77
  %255 = load i32, ptr %254, align 4, !tbaa !122
  %256 = icmp ne i32 %255, 16
  %257 = zext i1 %256 to i32
  %258 = ashr i32 %6, %257
  %259 = ashr exact i32 %34, %257
  %260 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 78
  %261 = load i32, ptr %260, align 8, !tbaa !121
  %262 = icmp ne i32 %261, 16
  %263 = zext i1 %262 to i32
  %264 = ashr i32 %7, %263
  %265 = ashr exact i32 %35, %263
  %266 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 1
  %267 = load i32, ptr %266, align 4, !tbaa !79
  %268 = trunc i32 %267 to i16
  %269 = load ptr, ptr %20, align 8, !tbaa !49
  %270 = load ptr, ptr %22, align 8, !tbaa !49
  tail call fastcc void @get_block_chroma(ptr noundef %55, i32 noundef %116, i32 noundef %228, i32 noundef %232, i32 noundef %234, i32 noundef %240, i32 noundef %250, i32 noundef %258, i32 noundef %264, i32 noundef %236, i32 noundef %238, ptr noundef %269, ptr noundef %270, i32 noundef %230, i16 noundef zeroext %268, ptr noundef %12)
  %271 = load ptr, ptr %172, align 8, !tbaa !138
  %272 = getelementptr inbounds ptr, ptr %271, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !49
  %274 = sext i32 %265 to i64
  %275 = getelementptr inbounds ptr, ptr %273, i64 %274
  %276 = getelementptr inbounds i32, ptr %163, i64 1
  %277 = load i32, ptr %276, align 4, !tbaa !79
  %278 = getelementptr inbounds i32, ptr %170, i64 1
  %279 = load i32, ptr %278, align 4, !tbaa !79
  %280 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 70, i64 1
  %281 = load i32, ptr %280, align 4, !tbaa !79
  %282 = icmp sgt i32 %264, 0
  br i1 %282, label %283, label %318

283:                                              ; preds = %249
  %284 = icmp sgt i32 %258, 0
  %285 = icmp eq i16 %252, 0
  %286 = add nsw i32 %253, -1
  %287 = shl nuw i32 1, %286
  %288 = sext i32 %259 to i64
  %289 = zext nneg i32 %264 to i64
  %290 = zext nneg i32 %258 to i64
  br label %291

291:                                              ; preds = %283, %315
  %292 = phi i64 [ 0, %283 ], [ %316, %315 ]
  br i1 %284, label %293, label %315

293:                                              ; preds = %291
  %294 = getelementptr inbounds ptr, ptr %20, i64 %292
  %295 = load ptr, ptr %294, align 8, !tbaa !49
  %296 = getelementptr inbounds ptr, ptr %275, i64 %292
  %297 = load ptr, ptr %296, align 8, !tbaa !49
  %298 = getelementptr i16, ptr %297, i64 %288
  br label %299

299:                                              ; preds = %293, %299
  %300 = phi i64 [ 0, %293 ], [ %313, %299 ]
  %301 = getelementptr inbounds i16, ptr %295, i64 %300
  %302 = load i16, ptr %301, align 2, !tbaa !66
  %303 = zext i16 %302 to i32
  %304 = mul nsw i32 %277, %303
  %305 = add nsw i32 %304, %287
  %306 = ashr i32 %305, %253
  %307 = select i1 %285, i32 %304, i32 %306
  %308 = add nsw i32 %307, %279
  %309 = tail call i32 @llvm.smax.i32(i32 %308, i32 0)
  %310 = tail call i32 @llvm.smin.i32(i32 %309, i32 %281)
  %311 = trunc i32 %310 to i16
  %312 = getelementptr i16, ptr %298, i64 %300
  store i16 %311, ptr %312, align 2, !tbaa !66
  %313 = add nuw nsw i64 %300, 1
  %314 = icmp eq i64 %313, %290
  br i1 %314, label %315, label %299, !llvm.loop !177

315:                                              ; preds = %299, %291
  %316 = add nuw nsw i64 %292, 1
  %317 = icmp eq i64 %316, %289
  br i1 %317, label %318, label %291, !llvm.loop !178

318:                                              ; preds = %315, %249
  %319 = getelementptr inbounds ptr, ptr %271, i64 2
  %320 = load ptr, ptr %319, align 8, !tbaa !49
  %321 = getelementptr inbounds ptr, ptr %320, i64 %274
  %322 = getelementptr inbounds i32, ptr %163, i64 2
  %323 = load i32, ptr %322, align 4, !tbaa !79
  %324 = getelementptr inbounds i32, ptr %170, i64 2
  %325 = load i32, ptr %324, align 4, !tbaa !79
  %326 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 70, i64 2
  %327 = load i32, ptr %326, align 8, !tbaa !79
  %328 = icmp sgt i32 %264, 0
  br i1 %328, label %329, label %1479

329:                                              ; preds = %318
  %330 = icmp sgt i32 %258, 0
  %331 = icmp eq i16 %252, 0
  %332 = add nsw i32 %253, -1
  %333 = shl nuw i32 1, %332
  %334 = sext i32 %259 to i64
  %335 = zext nneg i32 %264 to i64
  %336 = zext nneg i32 %258 to i64
  br label %337

337:                                              ; preds = %329, %361
  %338 = phi i64 [ 0, %329 ], [ %362, %361 ]
  br i1 %330, label %339, label %361

339:                                              ; preds = %337
  %340 = getelementptr inbounds ptr, ptr %22, i64 %338
  %341 = load ptr, ptr %340, align 8, !tbaa !49
  %342 = getelementptr inbounds ptr, ptr %321, i64 %338
  %343 = load ptr, ptr %342, align 8, !tbaa !49
  %344 = getelementptr i16, ptr %343, i64 %334
  br label %345

345:                                              ; preds = %339, %345
  %346 = phi i64 [ 0, %339 ], [ %359, %345 ]
  %347 = getelementptr inbounds i16, ptr %341, i64 %346
  %348 = load i16, ptr %347, align 2, !tbaa !66
  %349 = zext i16 %348 to i32
  %350 = mul nsw i32 %323, %349
  %351 = add nsw i32 %350, %333
  %352 = ashr i32 %351, %253
  %353 = select i1 %331, i32 %350, i32 %352
  %354 = add nsw i32 %353, %325
  %355 = tail call i32 @llvm.smax.i32(i32 %354, i32 0)
  %356 = tail call i32 @llvm.smin.i32(i32 %355, i32 %327)
  %357 = trunc i32 %356 to i16
  %358 = getelementptr i16, ptr %344, i64 %346
  store i16 %357, ptr %358, align 2, !tbaa !66
  %359 = add nuw nsw i64 %346, 1
  %360 = icmp eq i64 %359, %336
  br i1 %360, label %361, label %345, !llvm.loop !177

361:                                              ; preds = %345, %337
  %362 = add nuw nsw i64 %338, 1
  %363 = icmp eq i64 %362, %335
  br i1 %363, label %1479, label %337, !llvm.loop !178

364:                                              ; preds = %13
  %365 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %366 = load i32, ptr %365, align 4, !tbaa !157
  %367 = shl i32 %4, 2
  %368 = shl i32 %5, 2
  %369 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  %370 = load ptr, ptr %369, align 8, !tbaa !142
  %371 = sext i32 %28 to i64
  %372 = getelementptr inbounds ptr, ptr %370, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !49
  %374 = sext i32 %25 to i64
  %375 = sext i32 %3 to i64
  %376 = getelementptr inbounds %struct.pic_motion_params, ptr %373, i64 %374, i32 1, i64 %375
  %377 = getelementptr inbounds %struct.pic_motion_params, ptr %373, i64 %374, i32 2, i64 %375
  %378 = load i8, ptr %377, align 1, !tbaa !130
  %379 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %380 = load i16, ptr %379, align 2, !tbaa !158
  %381 = sext i16 %380 to i32
  %382 = add nsw i32 %381, %3
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !49
  %386 = sext i8 %378 to i64
  %387 = getelementptr inbounds ptr, ptr %385, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !49
  %389 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 20
  %390 = load i32, ptr %389, align 8, !tbaa !159
  %391 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %392 = load i32, ptr %391, align 8, !tbaa !148
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %399, label %394

394:                                              ; preds = %364
  %395 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 17
  %396 = load i32, ptr %395, align 4, !tbaa !160
  %397 = ashr i32 %396, 1
  %398 = add nsw i32 %397, -1
  br label %402

399:                                              ; preds = %364
  %400 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 21
  %401 = load i32, ptr %400, align 4, !tbaa !161
  br label %402

402:                                              ; preds = %399, %394
  %403 = phi i32 [ %398, %394 ], [ %401, %399 ]
  %404 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 67
  %405 = load i32, ptr %404, align 4, !tbaa !62
  %406 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 85
  %407 = load ptr, ptr %406, align 8, !tbaa !34
  %408 = zext i32 %1 to i64
  %409 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 70, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !79
  %411 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %408
  %412 = load i32, ptr %411, align 4, !tbaa !79
  %413 = trunc i32 %412 to i16
  %414 = load i16, ptr %376, align 2, !tbaa !162
  %415 = add i16 %414, -8192
  %416 = icmp ult i16 %415, -16384
  br i1 %416, label %417, label %426

417:                                              ; preds = %402
  %418 = load ptr, ptr @stderr, align 8, !tbaa !49
  %419 = sext i16 %414 to i32
  %420 = load ptr, ptr %9, align 8, !tbaa !163
  %421 = getelementptr inbounds %struct.video_par, ptr %420, i64 0, i32 14
  %422 = load i32, ptr %421, align 8, !tbaa !164
  %423 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %424 = load i32, ptr %423, align 4, !tbaa !165
  %425 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %418, ptr noundef nonnull @.str.1, i32 noundef %419, i32 noundef %422, i32 noundef %424) #10
  br label %426

426:                                              ; preds = %417, %402
  %427 = getelementptr inbounds %struct.pic_motion_params, ptr %373, i64 %374, i32 1, i64 %375, i32 1
  %428 = load i16, ptr %427, align 2, !tbaa !166
  %429 = sext i16 %428 to i32
  %430 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 109
  %431 = load i32, ptr %430, align 8, !tbaa !167
  %432 = icmp sle i32 %431, %429
  %433 = sub nsw i32 0, %431
  %434 = icmp slt i32 %429, %433
  %435 = select i1 %432, i1 true, i1 %434
  br i1 %435, label %436, label %445

436:                                              ; preds = %426
  %437 = load ptr, ptr @stderr, align 8, !tbaa !49
  %438 = add nsw i32 %431, -1
  %439 = load ptr, ptr %9, align 8, !tbaa !163
  %440 = getelementptr inbounds %struct.video_par, ptr %439, i64 0, i32 14
  %441 = load i32, ptr %440, align 8, !tbaa !164
  %442 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %443 = load i32, ptr %442, align 4, !tbaa !165
  %444 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %437, ptr noundef nonnull @.str.2, i32 noundef %429, i32 noundef %433, i32 noundef %438, i32 noundef %441, i32 noundef %443) #10
  br label %445

445:                                              ; preds = %426, %436
  %446 = shl nsw i32 %25, 4
  %447 = load i16, ptr %376, align 2, !tbaa !162
  %448 = sext i16 %447 to i32
  %449 = add nsw i32 %446, %448
  %450 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %451 = load i32, ptr %450, align 8, !tbaa !168
  %452 = add nsw i32 %451, %5
  %453 = shl nsw i32 %452, 4
  %454 = getelementptr inbounds %struct.pic_motion_params, ptr %373, i64 %374, i32 1, i64 %375, i32 1
  %455 = load i16, ptr %454, align 2, !tbaa !166
  %456 = sext i16 %455 to i32
  %457 = add nsw i32 %453, %456
  %458 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 173
  %459 = load i32, ptr %458, align 4, !tbaa !169
  %460 = add nsw i32 %459, -4
  %461 = icmp slt i32 %460, %7
  br i1 %461, label %462, label %469

462:                                              ; preds = %445
  %463 = tail call i32 @CheckVertMV(ptr noundef nonnull %0, i32 noundef %457, i32 noundef %7) #9
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %469, label %465

465:                                              ; preds = %462
  tail call void @get_block_luma(ptr noundef %388, i32 noundef %449, i32 noundef %457, i32 noundef %6, i32 noundef 8, ptr noundef %20, i32 noundef %405, i32 noundef %390, i32 noundef %403, ptr noundef %407, i32 noundef %410, i16 noundef zeroext %413, ptr noundef nonnull %0)
  %466 = add nsw i32 %457, 32
  %467 = add nsw i32 %7, -8
  %468 = getelementptr inbounds ptr, ptr %20, i64 8
  tail call void @get_block_luma(ptr noundef %388, i32 noundef %449, i32 noundef %466, i32 noundef %6, i32 noundef %467, ptr noundef nonnull %468, i32 noundef %405, i32 noundef %390, i32 noundef %403, ptr noundef %407, i32 noundef %410, i16 noundef zeroext %413, ptr noundef nonnull %0)
  br label %470

469:                                              ; preds = %462, %445
  tail call void @get_block_luma(ptr noundef %388, i32 noundef %449, i32 noundef %457, i32 noundef %6, i32 noundef %7, ptr noundef %20, i32 noundef %405, i32 noundef %390, i32 noundef %403, ptr noundef %407, i32 noundef %410, i16 noundef zeroext %413, ptr noundef nonnull %0)
  br label %470

470:                                              ; preds = %469, %465
  %471 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 77
  %472 = load ptr, ptr %471, align 8, !tbaa !138
  %473 = getelementptr inbounds ptr, ptr %472, i64 %408
  %474 = load ptr, ptr %473, align 8, !tbaa !49
  %475 = sext i32 %368 to i64
  %476 = getelementptr inbounds ptr, ptr %474, i64 %475
  %477 = icmp sgt i32 %7, 0
  br i1 %477, label %478, label %492

478:                                              ; preds = %470
  %479 = sext i32 %367 to i64
  %480 = sext i32 %6 to i64
  %481 = shl nsw i64 %480, 1
  %482 = zext nneg i32 %7 to i64
  br label %483

483:                                              ; preds = %478, %483
  %484 = phi i64 [ 0, %478 ], [ %490, %483 ]
  %485 = getelementptr inbounds ptr, ptr %476, i64 %484
  %486 = load ptr, ptr %485, align 8, !tbaa !49
  %487 = getelementptr inbounds i16, ptr %486, i64 %479
  %488 = getelementptr inbounds ptr, ptr %20, i64 %484
  %489 = load ptr, ptr %488, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %487, ptr align 2 %489, i64 %481, i1 false)
  %490 = add nuw nsw i64 %484, 1
  %491 = icmp eq i64 %490, %482
  br i1 %491, label %492, label %483, !llvm.loop !192

492:                                              ; preds = %483, %470
  switch i32 %366, label %493 [
    i32 3, label %1479
    i32 0, label %1479
  ]

493:                                              ; preds = %492
  %494 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 9
  %495 = load i32, ptr %494, align 4, !tbaa !179
  %496 = icmp eq i32 %495, 1
  br i1 %496, label %497, label %501

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 129, i64 %383, i64 %386
  %499 = load i8, ptr %498, align 1, !tbaa !130
  %500 = sext i8 %499 to i32
  br label %501

501:                                              ; preds = %497, %493
  %502 = phi i32 [ %500, %497 ], [ 0, %493 ]
  %503 = add nsw i32 %502, %457
  %504 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 88
  %505 = load i32, ptr %504, align 4, !tbaa !183
  %506 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 84
  %507 = load i32, ptr %506, align 4, !tbaa !184
  %508 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 85
  %509 = load i32, ptr %508, align 8, !tbaa !185
  %510 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 86
  %511 = load i32, ptr %510, align 4, !tbaa !186
  %512 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 87
  %513 = load i32, ptr %512, align 8, !tbaa !187
  %514 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 22
  %515 = load i32, ptr %514, align 8, !tbaa !188
  %516 = load i32, ptr %391, align 8, !tbaa !148
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %523, label %518

518:                                              ; preds = %501
  %519 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 19
  %520 = load i32, ptr %519, align 4, !tbaa !189
  %521 = ashr i32 %520, 1
  %522 = add nsw i32 %521, -1
  br label %526

523:                                              ; preds = %501
  %524 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 23
  %525 = load i32, ptr %524, align 4, !tbaa !190
  br label %526

526:                                              ; preds = %523, %518
  %527 = phi i32 [ %522, %518 ], [ %525, %523 ]
  %528 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 77
  %529 = load i32, ptr %528, align 4, !tbaa !122
  %530 = icmp ne i32 %529, 16
  %531 = zext i1 %530 to i32
  %532 = ashr i32 %6, %531
  %533 = ashr exact i32 %367, %531
  %534 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 78
  %535 = load i32, ptr %534, align 8, !tbaa !121
  %536 = icmp ne i32 %535, 16
  %537 = zext i1 %536 to i32
  %538 = ashr i32 %7, %537
  %539 = ashr exact i32 %368, %537
  %540 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 1
  %541 = load i32, ptr %540, align 4, !tbaa !79
  %542 = trunc i32 %541 to i16
  %543 = load ptr, ptr %20, align 8, !tbaa !49
  %544 = load ptr, ptr %22, align 8, !tbaa !49
  tail call fastcc void @get_block_chroma(ptr noundef %388, i32 noundef %449, i32 noundef %503, i32 noundef %507, i32 noundef %509, i32 noundef %515, i32 noundef %527, i32 noundef %532, i32 noundef %538, i32 noundef %511, i32 noundef %513, ptr noundef %543, ptr noundef %544, i32 noundef %505, i16 noundef zeroext %542, ptr noundef %12)
  %545 = load ptr, ptr %471, align 8, !tbaa !138
  %546 = getelementptr inbounds ptr, ptr %545, i64 1
  %547 = load ptr, ptr %546, align 8, !tbaa !49
  %548 = sext i32 %539 to i64
  %549 = getelementptr inbounds ptr, ptr %547, i64 %548
  %550 = icmp sgt i32 %538, 0
  br i1 %550, label %551, label %565

551:                                              ; preds = %526
  %552 = sext i32 %533 to i64
  %553 = sext i32 %532 to i64
  %554 = shl nsw i64 %553, 1
  %555 = zext nneg i32 %538 to i64
  br label %556

556:                                              ; preds = %551, %556
  %557 = phi i64 [ 0, %551 ], [ %563, %556 ]
  %558 = getelementptr inbounds ptr, ptr %549, i64 %557
  %559 = load ptr, ptr %558, align 8, !tbaa !49
  %560 = getelementptr inbounds i16, ptr %559, i64 %552
  %561 = getelementptr inbounds ptr, ptr %20, i64 %557
  %562 = load ptr, ptr %561, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %560, ptr align 2 %562, i64 %554, i1 false)
  %563 = add nuw nsw i64 %557, 1
  %564 = icmp eq i64 %563, %555
  br i1 %564, label %565, label %556, !llvm.loop !192

565:                                              ; preds = %556, %526
  %566 = load ptr, ptr %471, align 8, !tbaa !138
  %567 = getelementptr inbounds ptr, ptr %566, i64 2
  %568 = load ptr, ptr %567, align 8, !tbaa !49
  %569 = getelementptr inbounds ptr, ptr %568, i64 %548
  %570 = icmp sgt i32 %538, 0
  br i1 %570, label %571, label %1479

571:                                              ; preds = %565
  %572 = sext i32 %533 to i64
  %573 = sext i32 %532 to i64
  %574 = shl nsw i64 %573, 1
  %575 = zext nneg i32 %538 to i64
  br label %576

576:                                              ; preds = %571, %576
  %577 = phi i64 [ 0, %571 ], [ %583, %576 ]
  %578 = getelementptr inbounds ptr, ptr %569, i64 %577
  %579 = load ptr, ptr %578, align 8, !tbaa !49
  %580 = getelementptr inbounds i16, ptr %579, i64 %572
  %581 = getelementptr inbounds ptr, ptr %22, i64 %577
  %582 = load ptr, ptr %581, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %580, ptr align 2 %582, i64 %574, i1 false)
  %583 = add nuw nsw i64 %577, 1
  %584 = icmp eq i64 %583, %575
  br i1 %584, label %1479, label %576, !llvm.loop !192

585:                                              ; preds = %8
  %586 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 97
  %587 = load i16, ptr %586, align 2, !tbaa !193
  %588 = icmp eq i16 %587, 0
  br i1 %588, label %1064, label %589

589:                                              ; preds = %585
  %590 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %591 = load ptr, ptr %590, align 8, !tbaa !170
  %592 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %591, i64 0, i32 24
  %593 = load i32, ptr %592, align 4, !tbaa !173
  %594 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %595 = load i32, ptr %594, align 8, !tbaa !168
  %596 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %597 = load i32, ptr %596, align 8, !tbaa !154
  %598 = add nsw i32 %597, %4
  %599 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %600 = load i32, ptr %599, align 4, !tbaa !155
  %601 = add nsw i32 %600, %5
  %602 = shl i32 %4, 2
  %603 = shl i32 %5, 2
  %604 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %605 = load i32, ptr %604, align 4, !tbaa !157
  %606 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %607 = load i16, ptr %606, align 2, !tbaa !158
  %608 = sext i16 %607 to i32
  %609 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  %610 = load ptr, ptr %609, align 8, !tbaa !142
  %611 = sext i32 %601 to i64
  %612 = getelementptr inbounds ptr, ptr %610, i64 %611
  %613 = load ptr, ptr %612, align 8, !tbaa !49
  %614 = sext i32 %598 to i64
  %615 = getelementptr inbounds %struct.pic_motion_params, ptr %613, i64 %614, i32 1
  %616 = getelementptr inbounds %struct.pic_motion_params, ptr %613, i64 %614, i32 1, i64 1
  %617 = getelementptr inbounds %struct.pic_motion_params, ptr %613, i64 %614, i32 2
  %618 = load i8, ptr %617, align 8, !tbaa !130
  %619 = getelementptr inbounds %struct.pic_motion_params, ptr %613, i64 %614, i32 2, i64 1
  %620 = load i8, ptr %619, align 1, !tbaa !130
  %621 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %622 = load i32, ptr %621, align 8, !tbaa !148
  %623 = icmp ne i32 %622, 0
  %624 = icmp eq i32 %593, 1
  %625 = select i1 %623, i1 %624, i1 false
  %626 = sext i8 %618 to i32
  %627 = zext i1 %625 to i32
  %628 = ashr i32 %626, %627
  %629 = sext i8 %620 to i32
  %630 = ashr i32 %629, %627
  %631 = icmp eq i32 %593, 2
  %632 = select i1 %631, i32 %608, i32 0
  %633 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 102
  %634 = load ptr, ptr %633, align 8, !tbaa !194
  %635 = sext i32 %632 to i64
  %636 = getelementptr inbounds ptr, ptr %634, i64 %635
  %637 = load ptr, ptr %636, align 8, !tbaa !49
  %638 = sext i32 %628 to i64
  %639 = getelementptr inbounds ptr, ptr %637, i64 %638
  %640 = load ptr, ptr %639, align 8, !tbaa !49
  %641 = sext i32 %630 to i64
  %642 = getelementptr inbounds ptr, ptr %640, i64 %641
  %643 = load ptr, ptr %642, align 8, !tbaa !49
  %644 = add nsw i32 %632, 1
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds ptr, ptr %634, i64 %645
  %647 = load ptr, ptr %646, align 8, !tbaa !49
  %648 = getelementptr inbounds ptr, ptr %647, i64 %638
  %649 = load ptr, ptr %648, align 8, !tbaa !49
  %650 = getelementptr inbounds ptr, ptr %649, i64 %641
  %651 = load ptr, ptr %650, align 8, !tbaa !49
  %652 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 101
  %653 = load ptr, ptr %652, align 8, !tbaa !175
  %654 = getelementptr inbounds ptr, ptr %653, i64 %635
  %655 = load ptr, ptr %654, align 8, !tbaa !49
  %656 = getelementptr inbounds ptr, ptr %655, i64 %638
  %657 = load ptr, ptr %656, align 8, !tbaa !49
  %658 = getelementptr inbounds ptr, ptr %653, i64 %645
  %659 = load ptr, ptr %658, align 8, !tbaa !49
  %660 = getelementptr inbounds ptr, ptr %659, i64 %641
  %661 = load ptr, ptr %660, align 8, !tbaa !49
  br i1 %623, label %662, label %667

662:                                              ; preds = %589
  %663 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 17
  %664 = load i32, ptr %663, align 4, !tbaa !160
  %665 = ashr i32 %664, 1
  %666 = add nsw i32 %665, -1
  br label %670

667:                                              ; preds = %589
  %668 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 21
  %669 = load i32, ptr %668, align 4, !tbaa !161
  br label %670

670:                                              ; preds = %667, %662
  %671 = phi i32 [ %666, %662 ], [ %669, %667 ]
  %672 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 173
  %673 = load i32, ptr %672, align 4, !tbaa !169
  %674 = sub i32 %671, %7
  %675 = add i32 %674, -2
  %676 = add i32 %675, %673
  %677 = sub nsw i32 2, %673
  %678 = add nsw i32 %673, -4
  %679 = icmp slt i32 %678, %7
  %680 = sext i16 %607 to i64
  %681 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %680
  %682 = load ptr, ptr %681, align 8, !tbaa !49
  %683 = sext i8 %618 to i64
  %684 = getelementptr inbounds ptr, ptr %682, i64 %683
  %685 = load ptr, ptr %684, align 8, !tbaa !49
  %686 = add nsw i32 %608, 1
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %687
  %689 = load ptr, ptr %688, align 8, !tbaa !49
  %690 = sext i8 %620 to i64
  %691 = getelementptr inbounds ptr, ptr %689, i64 %690
  %692 = load ptr, ptr %691, align 8, !tbaa !49
  %693 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 83
  %694 = load ptr, ptr %693, align 8, !tbaa !42
  %695 = load ptr, ptr %694, align 8, !tbaa !49
  %696 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 84
  %697 = load ptr, ptr %696, align 8, !tbaa !43
  %698 = load ptr, ptr %697, align 8, !tbaa !49
  %699 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 86
  %700 = load ptr, ptr %699, align 8, !tbaa !44
  %701 = load ptr, ptr %700, align 8, !tbaa !49
  %702 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 87
  %703 = load ptr, ptr %702, align 8, !tbaa !45
  %704 = load ptr, ptr %703, align 8, !tbaa !49
  %705 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 20
  %706 = load i32, ptr %705, align 8, !tbaa !159
  %707 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 67
  %708 = load i32, ptr %707, align 4, !tbaa !62
  %709 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 85
  %710 = load ptr, ptr %709, align 8, !tbaa !34
  %711 = zext i32 %1 to i64
  %712 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 70, i64 %711
  %713 = load i32, ptr %712, align 4, !tbaa !79
  %714 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %711
  %715 = load i32, ptr %714, align 4, !tbaa !79
  %716 = trunc i32 %715 to i16
  %717 = load i16, ptr %615, align 2, !tbaa !162
  %718 = add i16 %717, -8192
  %719 = icmp ult i16 %718, -16384
  br i1 %719, label %720, label %729

720:                                              ; preds = %670
  %721 = load ptr, ptr @stderr, align 8, !tbaa !49
  %722 = sext i16 %717 to i32
  %723 = load ptr, ptr %9, align 8, !tbaa !163
  %724 = getelementptr inbounds %struct.video_par, ptr %723, i64 0, i32 14
  %725 = load i32, ptr %724, align 8, !tbaa !164
  %726 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %727 = load i32, ptr %726, align 4, !tbaa !165
  %728 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %721, ptr noundef nonnull @.str.1, i32 noundef %722, i32 noundef %725, i32 noundef %727) #10
  br label %729

729:                                              ; preds = %720, %670
  %730 = getelementptr inbounds %struct.MotionVector, ptr %615, i64 0, i32 1
  %731 = load i16, ptr %730, align 2, !tbaa !166
  %732 = sext i16 %731 to i32
  %733 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 109
  %734 = load i32, ptr %733, align 8, !tbaa !167
  %735 = icmp sle i32 %734, %732
  %736 = sub nsw i32 0, %734
  %737 = icmp slt i32 %732, %736
  %738 = select i1 %735, i1 true, i1 %737
  br i1 %738, label %739, label %748

739:                                              ; preds = %729
  %740 = load ptr, ptr @stderr, align 8, !tbaa !49
  %741 = add nsw i32 %734, -1
  %742 = load ptr, ptr %9, align 8, !tbaa !163
  %743 = getelementptr inbounds %struct.video_par, ptr %742, i64 0, i32 14
  %744 = load i32, ptr %743, align 8, !tbaa !164
  %745 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %746 = load i32, ptr %745, align 4, !tbaa !165
  %747 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %740, ptr noundef nonnull @.str.2, i32 noundef %732, i32 noundef %736, i32 noundef %741, i32 noundef %744, i32 noundef %746) #10
  br label %748

748:                                              ; preds = %729, %739
  %749 = load i16, ptr %616, align 2, !tbaa !162
  %750 = add i16 %749, -8192
  %751 = icmp ult i16 %750, -16384
  br i1 %751, label %752, label %761

752:                                              ; preds = %748
  %753 = load ptr, ptr @stderr, align 8, !tbaa !49
  %754 = sext i16 %749 to i32
  %755 = load ptr, ptr %9, align 8, !tbaa !163
  %756 = getelementptr inbounds %struct.video_par, ptr %755, i64 0, i32 14
  %757 = load i32, ptr %756, align 8, !tbaa !164
  %758 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %759 = load i32, ptr %758, align 4, !tbaa !165
  %760 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %753, ptr noundef nonnull @.str.1, i32 noundef %754, i32 noundef %757, i32 noundef %759) #10
  br label %761

761:                                              ; preds = %752, %748
  %762 = getelementptr inbounds %struct.pic_motion_params, ptr %613, i64 %614, i32 1, i64 1, i32 1
  %763 = load i16, ptr %762, align 2, !tbaa !166
  %764 = sext i16 %763 to i32
  %765 = load i32, ptr %733, align 8, !tbaa !167
  %766 = icmp sle i32 %765, %764
  %767 = sub nsw i32 0, %765
  %768 = icmp slt i32 %764, %767
  %769 = select i1 %766, i1 true, i1 %768
  br i1 %769, label %770, label %779

770:                                              ; preds = %761
  %771 = load ptr, ptr @stderr, align 8, !tbaa !49
  %772 = add nsw i32 %765, -1
  %773 = load ptr, ptr %9, align 8, !tbaa !163
  %774 = getelementptr inbounds %struct.video_par, ptr %773, i64 0, i32 14
  %775 = load i32, ptr %774, align 8, !tbaa !164
  %776 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %777 = load i32, ptr %776, align 4, !tbaa !165
  %778 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %771, ptr noundef nonnull @.str.2, i32 noundef %764, i32 noundef %767, i32 noundef %772, i32 noundef %775, i32 noundef %777) #10
  br label %779

779:                                              ; preds = %761, %770
  %780 = shl nsw i32 %598, 4
  %781 = load i16, ptr %615, align 2, !tbaa !162
  %782 = sext i16 %781 to i32
  %783 = add nsw i32 %780, %782
  %784 = load i16, ptr %616, align 2, !tbaa !162
  %785 = sext i16 %784 to i32
  %786 = add nsw i32 %780, %785
  %787 = add nsw i32 %595, %5
  %788 = shl nsw i32 %787, 4
  %789 = load i16, ptr %730, align 2, !tbaa !166
  %790 = sext i16 %789 to i32
  %791 = add nsw i32 %788, %790
  %792 = getelementptr inbounds %struct.pic_motion_params, ptr %613, i64 %614, i32 1, i64 1, i32 1
  %793 = load i16, ptr %792, align 2, !tbaa !166
  %794 = sext i16 %793 to i32
  %795 = add nsw i32 %788, %794
  br i1 %679, label %796, label %805

796:                                              ; preds = %779
  %797 = ashr i32 %791, 2
  %798 = icmp sge i32 %797, %677
  %799 = icmp sle i32 %797, %676
  %800 = and i1 %798, %799
  br i1 %800, label %805, label %801

801:                                              ; preds = %796
  tail call void @get_block_luma(ptr noundef %685, i32 noundef %783, i32 noundef %791, i32 noundef %6, i32 noundef 8, ptr noundef nonnull %694, i32 noundef %708, i32 noundef %706, i32 noundef %671, ptr noundef %710, i32 noundef %713, i16 noundef zeroext %716, ptr noundef nonnull %0)
  %802 = add nsw i32 %791, 32
  %803 = add nsw i32 %7, -8
  %804 = getelementptr inbounds ptr, ptr %694, i64 8
  tail call void @get_block_luma(ptr noundef %685, i32 noundef %783, i32 noundef %802, i32 noundef %6, i32 noundef %803, ptr noundef nonnull %804, i32 noundef %708, i32 noundef %706, i32 noundef %671, ptr noundef %710, i32 noundef %713, i16 noundef zeroext %716, ptr noundef nonnull %0)
  br label %806

805:                                              ; preds = %796, %779
  tail call void @get_block_luma(ptr noundef %685, i32 noundef %783, i32 noundef %791, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %694, i32 noundef %708, i32 noundef %706, i32 noundef %671, ptr noundef %710, i32 noundef %713, i16 noundef zeroext %716, ptr noundef nonnull %0)
  br label %806

806:                                              ; preds = %805, %801
  br i1 %679, label %807, label %816

807:                                              ; preds = %806
  %808 = ashr i32 %795, 2
  %809 = icmp sge i32 %808, %677
  %810 = icmp sle i32 %808, %676
  %811 = and i1 %809, %810
  br i1 %811, label %816, label %812

812:                                              ; preds = %807
  tail call void @get_block_luma(ptr noundef %692, i32 noundef %786, i32 noundef %795, i32 noundef %6, i32 noundef 8, ptr noundef nonnull %697, i32 noundef %708, i32 noundef %706, i32 noundef %671, ptr noundef %710, i32 noundef %713, i16 noundef zeroext %716, ptr noundef nonnull %0)
  %813 = add nsw i32 %795, 32
  %814 = add nsw i32 %7, -8
  %815 = getelementptr inbounds ptr, ptr %697, i64 8
  tail call void @get_block_luma(ptr noundef %692, i32 noundef %786, i32 noundef %813, i32 noundef %6, i32 noundef %814, ptr noundef nonnull %815, i32 noundef %708, i32 noundef %706, i32 noundef %671, ptr noundef %710, i32 noundef %713, i16 noundef zeroext %716, ptr noundef nonnull %0)
  br label %817

816:                                              ; preds = %807, %806
  tail call void @get_block_luma(ptr noundef %692, i32 noundef %786, i32 noundef %795, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %697, i32 noundef %708, i32 noundef %706, i32 noundef %671, ptr noundef %710, i32 noundef %713, i16 noundef zeroext %716, ptr noundef nonnull %0)
  br label %817

817:                                              ; preds = %816, %812
  %818 = load i32, ptr %657, align 4, !tbaa !79
  %819 = load i32, ptr %661, align 4, !tbaa !79
  %820 = add i32 %818, 1
  %821 = add i32 %820, %819
  %822 = ashr i32 %821, 1
  %823 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 77
  %824 = load i32, ptr %643, align 4, !tbaa !79
  %825 = load i32, ptr %651, align 4, !tbaa !79
  %826 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 98
  %827 = load i16, ptr %826, align 4, !tbaa !176
  %828 = zext i16 %827 to i32
  %829 = add nuw nsw i32 %828, 1
  %830 = icmp sgt i32 %7, 0
  br i1 %830, label %831, label %881

831:                                              ; preds = %817
  %832 = sub nsw i32 16, %6
  %833 = load ptr, ptr %823, align 8, !tbaa !138
  %834 = getelementptr inbounds ptr, ptr %833, i64 %711
  %835 = load ptr, ptr %834, align 8, !tbaa !49
  %836 = sext i32 %603 to i64
  %837 = getelementptr inbounds ptr, ptr %835, i64 %836
  %838 = load ptr, ptr %837, align 8, !tbaa !49
  %839 = sext i32 %602 to i64
  %840 = getelementptr inbounds i16, ptr %838, i64 %839
  %841 = icmp sgt i32 %6, 0
  %842 = shl nuw i32 1, %828
  %843 = sext i32 %832 to i64
  br label %844

844:                                              ; preds = %831, %872
  %845 = phi ptr [ %840, %831 ], [ %876, %872 ]
  %846 = phi ptr [ %695, %831 ], [ %877, %872 ]
  %847 = phi i32 [ 0, %831 ], [ %879, %872 ]
  %848 = phi ptr [ %698, %831 ], [ %878, %872 ]
  br i1 %841, label %849, label %872

849:                                              ; preds = %844, %849
  %850 = phi ptr [ %869, %849 ], [ %845, %844 ]
  %851 = phi ptr [ %854, %849 ], [ %846, %844 ]
  %852 = phi i32 [ %870, %849 ], [ 0, %844 ]
  %853 = phi ptr [ %858, %849 ], [ %848, %844 ]
  %854 = getelementptr inbounds i16, ptr %851, i64 1
  %855 = load i16, ptr %851, align 2, !tbaa !66
  %856 = zext i16 %855 to i32
  %857 = mul nsw i32 %824, %856
  %858 = getelementptr inbounds i16, ptr %853, i64 1
  %859 = load i16, ptr %853, align 2, !tbaa !66
  %860 = zext i16 %859 to i32
  %861 = mul nsw i32 %825, %860
  %862 = add i32 %857, %842
  %863 = add i32 %862, %861
  %864 = ashr i32 %863, %829
  %865 = add nsw i32 %864, %822
  %866 = tail call i32 @llvm.smax.i32(i32 %865, i32 0)
  %867 = tail call i32 @llvm.smin.i32(i32 %866, i32 %713)
  %868 = trunc i32 %867 to i16
  %869 = getelementptr inbounds i16, ptr %850, i64 1
  store i16 %868, ptr %850, align 2, !tbaa !66
  %870 = add nuw nsw i32 %852, 1
  %871 = icmp eq i32 %870, %6
  br i1 %871, label %872, label %849, !llvm.loop !195

872:                                              ; preds = %849, %844
  %873 = phi ptr [ %848, %844 ], [ %858, %849 ]
  %874 = phi ptr [ %846, %844 ], [ %854, %849 ]
  %875 = phi ptr [ %845, %844 ], [ %869, %849 ]
  %876 = getelementptr inbounds i16, ptr %875, i64 %843
  %877 = getelementptr inbounds i16, ptr %874, i64 %843
  %878 = getelementptr inbounds i16, ptr %873, i64 %843
  %879 = add nuw nsw i32 %847, 1
  %880 = icmp eq i32 %879, %7
  br i1 %880, label %881, label %844, !llvm.loop !196

881:                                              ; preds = %872, %817
  switch i32 %605, label %882 [
    i32 3, label %1479
    i32 0, label %1479
  ]

882:                                              ; preds = %881
  %883 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 22
  %884 = load i32, ptr %883, align 8, !tbaa !188
  %885 = load i32, ptr %621, align 8, !tbaa !148
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %892, label %887

887:                                              ; preds = %882
  %888 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 19
  %889 = load i32, ptr %888, align 4, !tbaa !189
  %890 = ashr i32 %889, 1
  %891 = add nsw i32 %890, -1
  br label %895

892:                                              ; preds = %882
  %893 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 23
  %894 = load i32, ptr %893, align 4, !tbaa !190
  br label %895

895:                                              ; preds = %892, %887
  %896 = phi i32 [ %891, %887 ], [ %894, %892 ]
  %897 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 86
  %898 = load i32, ptr %897, align 4, !tbaa !186
  %899 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 87
  %900 = load i32, ptr %899, align 8, !tbaa !187
  %901 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 84
  %902 = load i32, ptr %901, align 4, !tbaa !184
  %903 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 85
  %904 = load i32, ptr %903, align 8, !tbaa !185
  %905 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 88
  %906 = load i32, ptr %905, align 4, !tbaa !183
  %907 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 99
  %908 = load i16, ptr %907, align 2, !tbaa !191
  %909 = zext i16 %908 to i32
  %910 = add nuw nsw i32 %909, 1
  %911 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 77
  %912 = load i32, ptr %911, align 4, !tbaa !122
  %913 = icmp ne i32 %912, 16
  %914 = zext i1 %913 to i32
  %915 = ashr i32 %6, %914
  %916 = ashr exact i32 %602, %914
  %917 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 78
  %918 = load i32, ptr %917, align 8, !tbaa !121
  %919 = icmp ne i32 %918, 16
  %920 = zext i1 %919 to i32
  %921 = ashr i32 %7, %920
  %922 = ashr exact i32 %603, %920
  %923 = icmp eq i32 %605, 1
  br i1 %923, label %924, label %933

924:                                              ; preds = %895
  %925 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 129, i64 %680, i64 %683
  %926 = load i8, ptr %925, align 1, !tbaa !130
  %927 = sext i8 %926 to i32
  %928 = add nsw i32 %791, %927
  %929 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 129, i64 %687, i64 %690
  %930 = load i8, ptr %929, align 1, !tbaa !130
  %931 = sext i8 %930 to i32
  %932 = add nsw i32 %795, %931
  br label %933

933:                                              ; preds = %924, %895
  %934 = phi i32 [ %928, %924 ], [ %791, %895 ]
  %935 = phi i32 [ %932, %924 ], [ %795, %895 ]
  %936 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 1
  %937 = load i32, ptr %936, align 4, !tbaa !79
  %938 = trunc i32 %937 to i16
  %939 = getelementptr inbounds i32, ptr %657, i64 1
  %940 = load i32, ptr %939, align 4, !tbaa !79
  %941 = getelementptr inbounds i32, ptr %661, i64 1
  %942 = load i32, ptr %941, align 4, !tbaa !79
  %943 = add i32 %940, 1
  %944 = add i32 %943, %942
  %945 = ashr i32 %944, 1
  tail call fastcc void @get_block_chroma(ptr noundef %685, i32 noundef %783, i32 noundef %934, i32 noundef %902, i32 noundef %904, i32 noundef %884, i32 noundef %896, i32 noundef %915, i32 noundef %921, i32 noundef %898, i32 noundef %900, ptr noundef %695, ptr noundef %701, i32 noundef %906, i16 noundef zeroext %938, ptr noundef %12)
  tail call fastcc void @get_block_chroma(ptr noundef %692, i32 noundef %786, i32 noundef %935, i32 noundef %902, i32 noundef %904, i32 noundef %884, i32 noundef %896, i32 noundef %915, i32 noundef %921, i32 noundef %898, i32 noundef %900, ptr noundef %698, ptr noundef %704, i32 noundef %906, i16 noundef zeroext %938, ptr noundef %12)
  %946 = load ptr, ptr %823, align 8, !tbaa !138
  %947 = sext i32 %922 to i64
  %948 = sext i32 %916 to i64
  %949 = getelementptr inbounds i32, ptr %643, i64 1
  %950 = load i32, ptr %949, align 4, !tbaa !79
  %951 = getelementptr inbounds i32, ptr %651, i64 1
  %952 = load i32, ptr %951, align 4, !tbaa !79
  %953 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 70, i64 1
  %954 = load i32, ptr %953, align 4, !tbaa !79
  %955 = sub nsw i32 16, %915
  %956 = icmp sgt i32 %921, 0
  br i1 %956, label %957, label %1003

957:                                              ; preds = %933
  %958 = getelementptr inbounds ptr, ptr %946, i64 1
  %959 = load ptr, ptr %958, align 8, !tbaa !49
  %960 = getelementptr inbounds ptr, ptr %959, i64 %947
  %961 = load ptr, ptr %960, align 8, !tbaa !49
  %962 = getelementptr inbounds i16, ptr %961, i64 %948
  %963 = icmp sgt i32 %915, 0
  %964 = shl nuw i32 1, %909
  %965 = sext i32 %955 to i64
  br label %966

966:                                              ; preds = %957, %994
  %967 = phi ptr [ %962, %957 ], [ %998, %994 ]
  %968 = phi ptr [ %695, %957 ], [ %999, %994 ]
  %969 = phi i32 [ 0, %957 ], [ %1001, %994 ]
  %970 = phi ptr [ %698, %957 ], [ %1000, %994 ]
  br i1 %963, label %971, label %994

971:                                              ; preds = %966, %971
  %972 = phi ptr [ %991, %971 ], [ %967, %966 ]
  %973 = phi ptr [ %976, %971 ], [ %968, %966 ]
  %974 = phi i32 [ %992, %971 ], [ 0, %966 ]
  %975 = phi ptr [ %980, %971 ], [ %970, %966 ]
  %976 = getelementptr inbounds i16, ptr %973, i64 1
  %977 = load i16, ptr %973, align 2, !tbaa !66
  %978 = zext i16 %977 to i32
  %979 = mul nsw i32 %950, %978
  %980 = getelementptr inbounds i16, ptr %975, i64 1
  %981 = load i16, ptr %975, align 2, !tbaa !66
  %982 = zext i16 %981 to i32
  %983 = mul nsw i32 %952, %982
  %984 = add i32 %979, %964
  %985 = add i32 %984, %983
  %986 = ashr i32 %985, %910
  %987 = add nsw i32 %986, %945
  %988 = tail call i32 @llvm.smax.i32(i32 %987, i32 0)
  %989 = tail call i32 @llvm.smin.i32(i32 %988, i32 %954)
  %990 = trunc i32 %989 to i16
  %991 = getelementptr inbounds i16, ptr %972, i64 1
  store i16 %990, ptr %972, align 2, !tbaa !66
  %992 = add nuw nsw i32 %974, 1
  %993 = icmp eq i32 %992, %915
  br i1 %993, label %994, label %971, !llvm.loop !195

994:                                              ; preds = %971, %966
  %995 = phi ptr [ %970, %966 ], [ %980, %971 ]
  %996 = phi ptr [ %968, %966 ], [ %976, %971 ]
  %997 = phi ptr [ %967, %966 ], [ %991, %971 ]
  %998 = getelementptr inbounds i16, ptr %997, i64 %965
  %999 = getelementptr inbounds i16, ptr %996, i64 %965
  %1000 = getelementptr inbounds i16, ptr %995, i64 %965
  %1001 = add nuw nsw i32 %969, 1
  %1002 = icmp eq i32 %1001, %921
  br i1 %1002, label %1003, label %966, !llvm.loop !196

1003:                                             ; preds = %994, %933
  %1004 = getelementptr inbounds i32, ptr %657, i64 2
  %1005 = load i32, ptr %1004, align 4, !tbaa !79
  %1006 = getelementptr inbounds i32, ptr %661, i64 2
  %1007 = load i32, ptr %1006, align 4, !tbaa !79
  %1008 = add i32 %1005, 1
  %1009 = add i32 %1008, %1007
  %1010 = ashr i32 %1009, 1
  %1011 = getelementptr inbounds i32, ptr %643, i64 2
  %1012 = load i32, ptr %1011, align 4, !tbaa !79
  %1013 = getelementptr inbounds i32, ptr %651, i64 2
  %1014 = load i32, ptr %1013, align 4, !tbaa !79
  %1015 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 70, i64 2
  %1016 = load i32, ptr %1015, align 8, !tbaa !79
  %1017 = icmp sgt i32 %921, 0
  br i1 %1017, label %1018, label %1479

1018:                                             ; preds = %1003
  %1019 = getelementptr inbounds ptr, ptr %946, i64 2
  %1020 = load ptr, ptr %1019, align 8, !tbaa !49
  %1021 = getelementptr inbounds ptr, ptr %1020, i64 %947
  %1022 = load ptr, ptr %1021, align 8, !tbaa !49
  %1023 = getelementptr inbounds i16, ptr %1022, i64 %948
  %1024 = icmp sgt i32 %915, 0
  %1025 = shl nuw i32 1, %909
  %1026 = sext i32 %955 to i64
  br label %1027

1027:                                             ; preds = %1018, %1055
  %1028 = phi ptr [ %1023, %1018 ], [ %1059, %1055 ]
  %1029 = phi ptr [ %701, %1018 ], [ %1060, %1055 ]
  %1030 = phi i32 [ 0, %1018 ], [ %1062, %1055 ]
  %1031 = phi ptr [ %704, %1018 ], [ %1061, %1055 ]
  br i1 %1024, label %1032, label %1055

1032:                                             ; preds = %1027, %1032
  %1033 = phi ptr [ %1052, %1032 ], [ %1028, %1027 ]
  %1034 = phi ptr [ %1037, %1032 ], [ %1029, %1027 ]
  %1035 = phi i32 [ %1053, %1032 ], [ 0, %1027 ]
  %1036 = phi ptr [ %1041, %1032 ], [ %1031, %1027 ]
  %1037 = getelementptr inbounds i16, ptr %1034, i64 1
  %1038 = load i16, ptr %1034, align 2, !tbaa !66
  %1039 = zext i16 %1038 to i32
  %1040 = mul nsw i32 %1012, %1039
  %1041 = getelementptr inbounds i16, ptr %1036, i64 1
  %1042 = load i16, ptr %1036, align 2, !tbaa !66
  %1043 = zext i16 %1042 to i32
  %1044 = mul nsw i32 %1014, %1043
  %1045 = add i32 %1040, %1025
  %1046 = add i32 %1045, %1044
  %1047 = ashr i32 %1046, %910
  %1048 = add nsw i32 %1047, %1010
  %1049 = tail call i32 @llvm.smax.i32(i32 %1048, i32 0)
  %1050 = tail call i32 @llvm.smin.i32(i32 %1049, i32 %1016)
  %1051 = trunc i32 %1050 to i16
  %1052 = getelementptr inbounds i16, ptr %1033, i64 1
  store i16 %1051, ptr %1033, align 2, !tbaa !66
  %1053 = add nuw nsw i32 %1035, 1
  %1054 = icmp eq i32 %1053, %915
  br i1 %1054, label %1055, label %1032, !llvm.loop !195

1055:                                             ; preds = %1032, %1027
  %1056 = phi ptr [ %1031, %1027 ], [ %1041, %1032 ]
  %1057 = phi ptr [ %1029, %1027 ], [ %1037, %1032 ]
  %1058 = phi ptr [ %1028, %1027 ], [ %1052, %1032 ]
  %1059 = getelementptr inbounds i16, ptr %1058, i64 %1026
  %1060 = getelementptr inbounds i16, ptr %1057, i64 %1026
  %1061 = getelementptr inbounds i16, ptr %1056, i64 %1026
  %1062 = add nuw nsw i32 %1030, 1
  %1063 = icmp eq i32 %1062, %921
  br i1 %1063, label %1479, label %1027, !llvm.loop !196

1064:                                             ; preds = %585
  %1065 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %1066 = load i32, ptr %1065, align 8, !tbaa !168
  %1067 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %1068 = load i32, ptr %1067, align 8, !tbaa !154
  %1069 = add nsw i32 %1068, %4
  %1070 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %1071 = load i32, ptr %1070, align 4, !tbaa !155
  %1072 = add nsw i32 %1071, %5
  %1073 = shl i32 %4, 2
  %1074 = shl i32 %5, 2
  %1075 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %1076 = load i32, ptr %1075, align 4, !tbaa !157
  %1077 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  %1078 = load ptr, ptr %1077, align 8, !tbaa !142
  %1079 = sext i32 %1072 to i64
  %1080 = getelementptr inbounds ptr, ptr %1078, i64 %1079
  %1081 = load ptr, ptr %1080, align 8, !tbaa !49
  %1082 = sext i32 %1069 to i64
  %1083 = getelementptr inbounds %struct.pic_motion_params, ptr %1081, i64 %1082, i32 1
  %1084 = getelementptr inbounds %struct.pic_motion_params, ptr %1081, i64 %1082, i32 1, i64 1
  %1085 = getelementptr inbounds %struct.pic_motion_params, ptr %1081, i64 %1082, i32 2
  %1086 = load i8, ptr %1085, align 8, !tbaa !130
  %1087 = getelementptr inbounds %struct.pic_motion_params, ptr %1081, i64 %1082, i32 2, i64 1
  %1088 = load i8, ptr %1087, align 1, !tbaa !130
  %1089 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %1090 = load i16, ptr %1089, align 2, !tbaa !158
  %1091 = sext i16 %1090 to i64
  %1092 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %1093 = load i32, ptr %1092, align 8, !tbaa !148
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1100, label %1095

1095:                                             ; preds = %1064
  %1096 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 17
  %1097 = load i32, ptr %1096, align 4, !tbaa !160
  %1098 = ashr i32 %1097, 1
  %1099 = add nsw i32 %1098, -1
  br label %1103

1100:                                             ; preds = %1064
  %1101 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 21
  %1102 = load i32, ptr %1101, align 4, !tbaa !161
  br label %1103

1103:                                             ; preds = %1100, %1095
  %1104 = phi i32 [ %1099, %1095 ], [ %1102, %1100 ]
  %1105 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 173
  %1106 = load i32, ptr %1105, align 4, !tbaa !169
  %1107 = sub i32 %1104, %7
  %1108 = add i32 %1107, -2
  %1109 = add i32 %1108, %1106
  %1110 = sub nsw i32 2, %1106
  %1111 = add nsw i32 %1106, -4
  %1112 = icmp slt i32 %1111, %7
  %1113 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %1091
  %1114 = load ptr, ptr %1113, align 8, !tbaa !49
  %1115 = sext i8 %1086 to i64
  %1116 = getelementptr inbounds ptr, ptr %1114, i64 %1115
  %1117 = load ptr, ptr %1116, align 8, !tbaa !49
  %1118 = add nsw i64 %1091, 1
  %1119 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %1118
  %1120 = load ptr, ptr %1119, align 8, !tbaa !49
  %1121 = sext i8 %1088 to i64
  %1122 = getelementptr inbounds ptr, ptr %1120, i64 %1121
  %1123 = load ptr, ptr %1122, align 8, !tbaa !49
  %1124 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 83
  %1125 = load ptr, ptr %1124, align 8, !tbaa !42
  %1126 = load ptr, ptr %1125, align 8, !tbaa !49
  %1127 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 84
  %1128 = load ptr, ptr %1127, align 8, !tbaa !43
  %1129 = load ptr, ptr %1128, align 8, !tbaa !49
  %1130 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 86
  %1131 = load ptr, ptr %1130, align 8, !tbaa !44
  %1132 = load ptr, ptr %1131, align 8, !tbaa !49
  %1133 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 87
  %1134 = load ptr, ptr %1133, align 8, !tbaa !45
  %1135 = load ptr, ptr %1134, align 8, !tbaa !49
  %1136 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 20
  %1137 = load i32, ptr %1136, align 8, !tbaa !159
  %1138 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 67
  %1139 = load i32, ptr %1138, align 4, !tbaa !62
  %1140 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 85
  %1141 = load ptr, ptr %1140, align 8, !tbaa !34
  %1142 = zext i32 %1 to i64
  %1143 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 70, i64 %1142
  %1144 = load i32, ptr %1143, align 4, !tbaa !79
  %1145 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 %1142
  %1146 = load i32, ptr %1145, align 4, !tbaa !79
  %1147 = trunc i32 %1146 to i16
  %1148 = load i16, ptr %1083, align 2, !tbaa !162
  %1149 = add i16 %1148, -8192
  %1150 = icmp ult i16 %1149, -16384
  br i1 %1150, label %1151, label %1160

1151:                                             ; preds = %1103
  %1152 = load ptr, ptr @stderr, align 8, !tbaa !49
  %1153 = sext i16 %1148 to i32
  %1154 = load ptr, ptr %9, align 8, !tbaa !163
  %1155 = getelementptr inbounds %struct.video_par, ptr %1154, i64 0, i32 14
  %1156 = load i32, ptr %1155, align 8, !tbaa !164
  %1157 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %1158 = load i32, ptr %1157, align 4, !tbaa !165
  %1159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1152, ptr noundef nonnull @.str.1, i32 noundef %1153, i32 noundef %1156, i32 noundef %1158) #10
  br label %1160

1160:                                             ; preds = %1151, %1103
  %1161 = getelementptr inbounds %struct.MotionVector, ptr %1083, i64 0, i32 1
  %1162 = load i16, ptr %1161, align 2, !tbaa !166
  %1163 = sext i16 %1162 to i32
  %1164 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 109
  %1165 = load i32, ptr %1164, align 8, !tbaa !167
  %1166 = icmp sle i32 %1165, %1163
  %1167 = sub nsw i32 0, %1165
  %1168 = icmp slt i32 %1163, %1167
  %1169 = select i1 %1166, i1 true, i1 %1168
  br i1 %1169, label %1170, label %1179

1170:                                             ; preds = %1160
  %1171 = load ptr, ptr @stderr, align 8, !tbaa !49
  %1172 = add nsw i32 %1165, -1
  %1173 = load ptr, ptr %9, align 8, !tbaa !163
  %1174 = getelementptr inbounds %struct.video_par, ptr %1173, i64 0, i32 14
  %1175 = load i32, ptr %1174, align 8, !tbaa !164
  %1176 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %1177 = load i32, ptr %1176, align 4, !tbaa !165
  %1178 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1171, ptr noundef nonnull @.str.2, i32 noundef %1163, i32 noundef %1167, i32 noundef %1172, i32 noundef %1175, i32 noundef %1177) #10
  br label %1179

1179:                                             ; preds = %1160, %1170
  %1180 = load i16, ptr %1084, align 2, !tbaa !162
  %1181 = add i16 %1180, -8192
  %1182 = icmp ult i16 %1181, -16384
  br i1 %1182, label %1183, label %1192

1183:                                             ; preds = %1179
  %1184 = load ptr, ptr @stderr, align 8, !tbaa !49
  %1185 = sext i16 %1180 to i32
  %1186 = load ptr, ptr %9, align 8, !tbaa !163
  %1187 = getelementptr inbounds %struct.video_par, ptr %1186, i64 0, i32 14
  %1188 = load i32, ptr %1187, align 8, !tbaa !164
  %1189 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %1190 = load i32, ptr %1189, align 4, !tbaa !165
  %1191 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1184, ptr noundef nonnull @.str.1, i32 noundef %1185, i32 noundef %1188, i32 noundef %1190) #10
  br label %1192

1192:                                             ; preds = %1183, %1179
  %1193 = getelementptr inbounds %struct.pic_motion_params, ptr %1081, i64 %1082, i32 1, i64 1, i32 1
  %1194 = load i16, ptr %1193, align 2, !tbaa !166
  %1195 = sext i16 %1194 to i32
  %1196 = load i32, ptr %1164, align 8, !tbaa !167
  %1197 = icmp sle i32 %1196, %1195
  %1198 = sub nsw i32 0, %1196
  %1199 = icmp slt i32 %1195, %1198
  %1200 = select i1 %1197, i1 true, i1 %1199
  br i1 %1200, label %1201, label %1210

1201:                                             ; preds = %1192
  %1202 = load ptr, ptr @stderr, align 8, !tbaa !49
  %1203 = add nsw i32 %1196, -1
  %1204 = load ptr, ptr %9, align 8, !tbaa !163
  %1205 = getelementptr inbounds %struct.video_par, ptr %1204, i64 0, i32 14
  %1206 = load i32, ptr %1205, align 8, !tbaa !164
  %1207 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 20
  %1208 = load i32, ptr %1207, align 4, !tbaa !165
  %1209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1202, ptr noundef nonnull @.str.2, i32 noundef %1195, i32 noundef %1198, i32 noundef %1203, i32 noundef %1206, i32 noundef %1208) #10
  br label %1210

1210:                                             ; preds = %1192, %1201
  %1211 = shl nsw i32 %1069, 4
  %1212 = load i16, ptr %1083, align 2, !tbaa !162
  %1213 = sext i16 %1212 to i32
  %1214 = add nsw i32 %1211, %1213
  %1215 = load i16, ptr %1084, align 2, !tbaa !162
  %1216 = sext i16 %1215 to i32
  %1217 = add nsw i32 %1211, %1216
  %1218 = add nsw i32 %1066, %5
  %1219 = shl nsw i32 %1218, 4
  %1220 = load i16, ptr %1161, align 2, !tbaa !166
  %1221 = sext i16 %1220 to i32
  %1222 = add nsw i32 %1219, %1221
  %1223 = getelementptr inbounds %struct.pic_motion_params, ptr %1081, i64 %1082, i32 1, i64 1, i32 1
  %1224 = load i16, ptr %1223, align 2, !tbaa !166
  %1225 = sext i16 %1224 to i32
  %1226 = add nsw i32 %1219, %1225
  br i1 %1112, label %1227, label %1236

1227:                                             ; preds = %1210
  %1228 = ashr i32 %1222, 2
  %1229 = icmp sge i32 %1228, %1110
  %1230 = icmp sle i32 %1228, %1109
  %1231 = and i1 %1229, %1230
  br i1 %1231, label %1236, label %1232

1232:                                             ; preds = %1227
  tail call void @get_block_luma(ptr noundef %1117, i32 noundef %1214, i32 noundef %1222, i32 noundef %6, i32 noundef 8, ptr noundef nonnull %1125, i32 noundef %1139, i32 noundef %1137, i32 noundef %1104, ptr noundef %1141, i32 noundef %1144, i16 noundef zeroext %1147, ptr noundef nonnull %0)
  %1233 = add nsw i32 %1222, 32
  %1234 = add nsw i32 %7, -8
  %1235 = getelementptr inbounds ptr, ptr %1125, i64 8
  tail call void @get_block_luma(ptr noundef %1117, i32 noundef %1214, i32 noundef %1233, i32 noundef %6, i32 noundef %1234, ptr noundef nonnull %1235, i32 noundef %1139, i32 noundef %1137, i32 noundef %1104, ptr noundef %1141, i32 noundef %1144, i16 noundef zeroext %1147, ptr noundef nonnull %0)
  br label %1237

1236:                                             ; preds = %1227, %1210
  tail call void @get_block_luma(ptr noundef %1117, i32 noundef %1214, i32 noundef %1222, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %1125, i32 noundef %1139, i32 noundef %1137, i32 noundef %1104, ptr noundef %1141, i32 noundef %1144, i16 noundef zeroext %1147, ptr noundef nonnull %0)
  br label %1237

1237:                                             ; preds = %1236, %1232
  br i1 %1112, label %1238, label %1247

1238:                                             ; preds = %1237
  %1239 = ashr i32 %1226, 2
  %1240 = icmp sge i32 %1239, %1110
  %1241 = icmp sle i32 %1239, %1109
  %1242 = and i1 %1240, %1241
  br i1 %1242, label %1247, label %1243

1243:                                             ; preds = %1238
  tail call void @get_block_luma(ptr noundef %1123, i32 noundef %1217, i32 noundef %1226, i32 noundef %6, i32 noundef 8, ptr noundef nonnull %1128, i32 noundef %1139, i32 noundef %1137, i32 noundef %1104, ptr noundef %1141, i32 noundef %1144, i16 noundef zeroext %1147, ptr noundef nonnull %0)
  %1244 = add nsw i32 %1226, 32
  %1245 = add nsw i32 %7, -8
  %1246 = getelementptr inbounds ptr, ptr %1128, i64 8
  tail call void @get_block_luma(ptr noundef %1123, i32 noundef %1217, i32 noundef %1244, i32 noundef %6, i32 noundef %1245, ptr noundef nonnull %1246, i32 noundef %1139, i32 noundef %1137, i32 noundef %1104, ptr noundef %1141, i32 noundef %1144, i16 noundef zeroext %1147, ptr noundef nonnull %0)
  br label %1248

1247:                                             ; preds = %1238, %1237
  tail call void @get_block_luma(ptr noundef %1123, i32 noundef %1217, i32 noundef %1226, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %1128, i32 noundef %1139, i32 noundef %1137, i32 noundef %1104, ptr noundef %1141, i32 noundef %1144, i16 noundef zeroext %1147, ptr noundef nonnull %0)
  br label %1248

1248:                                             ; preds = %1247, %1243
  %1249 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 77
  %1250 = icmp sgt i32 %7, 0
  br i1 %1250, label %1251, label %1308

1251:                                             ; preds = %1248
  %1252 = sub nsw i32 16, %6
  %1253 = load ptr, ptr %1128, align 8, !tbaa !49
  %1254 = load ptr, ptr %1125, align 8, !tbaa !49
  %1255 = load ptr, ptr %1249, align 8, !tbaa !138
  %1256 = getelementptr inbounds ptr, ptr %1255, i64 %1142
  %1257 = load ptr, ptr %1256, align 8, !tbaa !49
  %1258 = sext i32 %1074 to i64
  %1259 = getelementptr inbounds ptr, ptr %1257, i64 %1258
  %1260 = load ptr, ptr %1259, align 8, !tbaa !49
  %1261 = sext i32 %1073 to i64
  %1262 = getelementptr inbounds i16, ptr %1260, i64 %1261
  %1263 = icmp sgt i32 %6, 0
  %1264 = sext i32 %1252 to i64
  br label %1265

1265:                                             ; preds = %1251, %1299
  %1266 = phi ptr [ %1262, %1251 ], [ %1303, %1299 ]
  %1267 = phi i32 [ 0, %1251 ], [ %1306, %1299 ]
  %1268 = phi ptr [ %1253, %1251 ], [ %1305, %1299 ]
  %1269 = phi ptr [ %1254, %1251 ], [ %1304, %1299 ]
  br i1 %1263, label %1270, label %1299

1270:                                             ; preds = %1265, %1270
  %1271 = phi ptr [ %1296, %1270 ], [ %1266, %1265 ]
  %1272 = phi i32 [ %1297, %1270 ], [ 0, %1265 ]
  %1273 = phi ptr [ %1289, %1270 ], [ %1268, %1265 ]
  %1274 = phi ptr [ %1286, %1270 ], [ %1269, %1265 ]
  %1275 = getelementptr inbounds i16, ptr %1274, i64 1
  %1276 = load i16, ptr %1274, align 2, !tbaa !66
  %1277 = zext i16 %1276 to i32
  %1278 = getelementptr inbounds i16, ptr %1273, i64 1
  %1279 = load i16, ptr %1273, align 2, !tbaa !66
  %1280 = zext i16 %1279 to i32
  %1281 = add nuw nsw i32 %1277, 1
  %1282 = add nuw nsw i32 %1281, %1280
  %1283 = lshr i32 %1282, 1
  %1284 = trunc i32 %1283 to i16
  %1285 = getelementptr inbounds i16, ptr %1271, i64 1
  store i16 %1284, ptr %1271, align 2, !tbaa !66
  %1286 = getelementptr inbounds i16, ptr %1274, i64 2
  %1287 = load i16, ptr %1275, align 2, !tbaa !66
  %1288 = zext i16 %1287 to i32
  %1289 = getelementptr inbounds i16, ptr %1273, i64 2
  %1290 = load i16, ptr %1278, align 2, !tbaa !66
  %1291 = zext i16 %1290 to i32
  %1292 = add nuw nsw i32 %1288, 1
  %1293 = add nuw nsw i32 %1292, %1291
  %1294 = lshr i32 %1293, 1
  %1295 = trunc i32 %1294 to i16
  %1296 = getelementptr inbounds i16, ptr %1271, i64 2
  store i16 %1295, ptr %1285, align 2, !tbaa !66
  %1297 = add nuw nsw i32 %1272, 2
  %1298 = icmp slt i32 %1297, %6
  br i1 %1298, label %1270, label %1299, !llvm.loop !197

1299:                                             ; preds = %1270, %1265
  %1300 = phi ptr [ %1269, %1265 ], [ %1286, %1270 ]
  %1301 = phi ptr [ %1268, %1265 ], [ %1289, %1270 ]
  %1302 = phi ptr [ %1266, %1265 ], [ %1296, %1270 ]
  %1303 = getelementptr inbounds i16, ptr %1302, i64 %1264
  %1304 = getelementptr inbounds i16, ptr %1300, i64 %1264
  %1305 = getelementptr inbounds i16, ptr %1301, i64 %1264
  %1306 = add nuw nsw i32 %1267, 1
  %1307 = icmp eq i32 %1306, %7
  br i1 %1307, label %1308, label %1265, !llvm.loop !198

1308:                                             ; preds = %1299, %1248
  switch i32 %1076, label %1309 [
    i32 3, label %1479
    i32 0, label %1479
  ]

1309:                                             ; preds = %1308
  %1310 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 2
  %1311 = load ptr, ptr %1310, align 8, !tbaa !199
  %1312 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1311, i64 0, i32 9
  %1313 = load i32, ptr %1312, align 4, !tbaa !179
  %1314 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 22
  %1315 = load i32, ptr %1314, align 8, !tbaa !188
  %1316 = load i32, ptr %1092, align 8, !tbaa !148
  %1317 = icmp eq i32 %1316, 0
  br i1 %1317, label %1323, label %1318

1318:                                             ; preds = %1309
  %1319 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 19
  %1320 = load i32, ptr %1319, align 4, !tbaa !189
  %1321 = ashr i32 %1320, 1
  %1322 = add nsw i32 %1321, -1
  br label %1326

1323:                                             ; preds = %1309
  %1324 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 23
  %1325 = load i32, ptr %1324, align 4, !tbaa !190
  br label %1326

1326:                                             ; preds = %1323, %1318
  %1327 = phi i32 [ %1322, %1318 ], [ %1325, %1323 ]
  %1328 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 86
  %1329 = load i32, ptr %1328, align 4, !tbaa !186
  %1330 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 87
  %1331 = load i32, ptr %1330, align 8, !tbaa !187
  %1332 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 84
  %1333 = load i32, ptr %1332, align 4, !tbaa !184
  %1334 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 85
  %1335 = load i32, ptr %1334, align 8, !tbaa !185
  %1336 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 88
  %1337 = load i32, ptr %1336, align 4, !tbaa !183
  %1338 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 77
  %1339 = load i32, ptr %1338, align 4, !tbaa !122
  %1340 = icmp ne i32 %1339, 16
  %1341 = zext i1 %1340 to i32
  %1342 = ashr i32 %6, %1341
  %1343 = ashr exact i32 %1073, %1341
  %1344 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 78
  %1345 = load i32, ptr %1344, align 8, !tbaa !121
  %1346 = icmp ne i32 %1345, 16
  %1347 = zext i1 %1346 to i32
  %1348 = ashr i32 %7, %1347
  %1349 = ashr exact i32 %1074, %1347
  %1350 = icmp eq i32 %1313, 1
  br i1 %1350, label %1351, label %1360

1351:                                             ; preds = %1326
  %1352 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 129, i64 %1091, i64 %1115
  %1353 = load i8, ptr %1352, align 1, !tbaa !130
  %1354 = sext i8 %1353 to i32
  %1355 = add nsw i32 %1222, %1354
  %1356 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 129, i64 %1118, i64 %1121
  %1357 = load i8, ptr %1356, align 1, !tbaa !130
  %1358 = sext i8 %1357 to i32
  %1359 = add nsw i32 %1226, %1358
  br label %1360

1360:                                             ; preds = %1351, %1326
  %1361 = phi i32 [ %1359, %1351 ], [ %1226, %1326 ]
  %1362 = phi i32 [ %1355, %1351 ], [ %1222, %1326 ]
  %1363 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 1
  %1364 = load i32, ptr %1363, align 4, !tbaa !79
  %1365 = trunc i32 %1364 to i16
  tail call fastcc void @get_block_chroma(ptr noundef %1117, i32 noundef %1214, i32 noundef %1362, i32 noundef %1333, i32 noundef %1335, i32 noundef %1315, i32 noundef %1327, i32 noundef %1342, i32 noundef %1348, i32 noundef %1329, i32 noundef %1331, ptr noundef %1126, ptr noundef %1132, i32 noundef %1337, i16 noundef zeroext %1365, ptr noundef %12)
  tail call fastcc void @get_block_chroma(ptr noundef %1123, i32 noundef %1217, i32 noundef %1361, i32 noundef %1333, i32 noundef %1335, i32 noundef %1315, i32 noundef %1327, i32 noundef %1342, i32 noundef %1348, i32 noundef %1329, i32 noundef %1331, ptr noundef %1129, ptr noundef %1135, i32 noundef %1337, i16 noundef zeroext %1365, ptr noundef %12)
  %1366 = load ptr, ptr %1249, align 8, !tbaa !138
  %1367 = sext i32 %1349 to i64
  %1368 = sext i32 %1343 to i64
  %1369 = sub nsw i32 16, %1342
  %1370 = icmp sgt i32 %1348, 0
  br i1 %1370, label %1371, label %1424

1371:                                             ; preds = %1360
  %1372 = load ptr, ptr %1128, align 8, !tbaa !49
  %1373 = load ptr, ptr %1125, align 8, !tbaa !49
  %1374 = getelementptr inbounds ptr, ptr %1366, i64 1
  %1375 = load ptr, ptr %1374, align 8, !tbaa !49
  %1376 = getelementptr inbounds ptr, ptr %1375, i64 %1367
  %1377 = load ptr, ptr %1376, align 8, !tbaa !49
  %1378 = getelementptr inbounds i16, ptr %1377, i64 %1368
  %1379 = icmp sgt i32 %1342, 0
  %1380 = sext i32 %1369 to i64
  br label %1381

1381:                                             ; preds = %1371, %1415
  %1382 = phi ptr [ %1378, %1371 ], [ %1419, %1415 ]
  %1383 = phi i32 [ 0, %1371 ], [ %1422, %1415 ]
  %1384 = phi ptr [ %1372, %1371 ], [ %1421, %1415 ]
  %1385 = phi ptr [ %1373, %1371 ], [ %1420, %1415 ]
  br i1 %1379, label %1386, label %1415

1386:                                             ; preds = %1381, %1386
  %1387 = phi ptr [ %1412, %1386 ], [ %1382, %1381 ]
  %1388 = phi i32 [ %1413, %1386 ], [ 0, %1381 ]
  %1389 = phi ptr [ %1405, %1386 ], [ %1384, %1381 ]
  %1390 = phi ptr [ %1402, %1386 ], [ %1385, %1381 ]
  %1391 = getelementptr inbounds i16, ptr %1390, i64 1
  %1392 = load i16, ptr %1390, align 2, !tbaa !66
  %1393 = zext i16 %1392 to i32
  %1394 = getelementptr inbounds i16, ptr %1389, i64 1
  %1395 = load i16, ptr %1389, align 2, !tbaa !66
  %1396 = zext i16 %1395 to i32
  %1397 = add nuw nsw i32 %1393, 1
  %1398 = add nuw nsw i32 %1397, %1396
  %1399 = lshr i32 %1398, 1
  %1400 = trunc i32 %1399 to i16
  %1401 = getelementptr inbounds i16, ptr %1387, i64 1
  store i16 %1400, ptr %1387, align 2, !tbaa !66
  %1402 = getelementptr inbounds i16, ptr %1390, i64 2
  %1403 = load i16, ptr %1391, align 2, !tbaa !66
  %1404 = zext i16 %1403 to i32
  %1405 = getelementptr inbounds i16, ptr %1389, i64 2
  %1406 = load i16, ptr %1394, align 2, !tbaa !66
  %1407 = zext i16 %1406 to i32
  %1408 = add nuw nsw i32 %1404, 1
  %1409 = add nuw nsw i32 %1408, %1407
  %1410 = lshr i32 %1409, 1
  %1411 = trunc i32 %1410 to i16
  %1412 = getelementptr inbounds i16, ptr %1387, i64 2
  store i16 %1411, ptr %1401, align 2, !tbaa !66
  %1413 = add nuw nsw i32 %1388, 2
  %1414 = icmp slt i32 %1413, %1342
  br i1 %1414, label %1386, label %1415, !llvm.loop !197

1415:                                             ; preds = %1386, %1381
  %1416 = phi ptr [ %1385, %1381 ], [ %1402, %1386 ]
  %1417 = phi ptr [ %1384, %1381 ], [ %1405, %1386 ]
  %1418 = phi ptr [ %1382, %1381 ], [ %1412, %1386 ]
  %1419 = getelementptr inbounds i16, ptr %1418, i64 %1380
  %1420 = getelementptr inbounds i16, ptr %1416, i64 %1380
  %1421 = getelementptr inbounds i16, ptr %1417, i64 %1380
  %1422 = add nuw nsw i32 %1383, 1
  %1423 = icmp eq i32 %1422, %1348
  br i1 %1423, label %1424, label %1381, !llvm.loop !198

1424:                                             ; preds = %1415, %1360
  %1425 = icmp sgt i32 %1348, 0
  br i1 %1425, label %1426, label %1479

1426:                                             ; preds = %1424
  %1427 = load ptr, ptr %1134, align 8, !tbaa !49
  %1428 = load ptr, ptr %1131, align 8, !tbaa !49
  %1429 = getelementptr inbounds ptr, ptr %1366, i64 2
  %1430 = load ptr, ptr %1429, align 8, !tbaa !49
  %1431 = getelementptr inbounds ptr, ptr %1430, i64 %1367
  %1432 = load ptr, ptr %1431, align 8, !tbaa !49
  %1433 = getelementptr inbounds i16, ptr %1432, i64 %1368
  %1434 = icmp sgt i32 %1342, 0
  %1435 = sext i32 %1369 to i64
  br label %1436

1436:                                             ; preds = %1426, %1470
  %1437 = phi ptr [ %1433, %1426 ], [ %1474, %1470 ]
  %1438 = phi i32 [ 0, %1426 ], [ %1477, %1470 ]
  %1439 = phi ptr [ %1427, %1426 ], [ %1476, %1470 ]
  %1440 = phi ptr [ %1428, %1426 ], [ %1475, %1470 ]
  br i1 %1434, label %1441, label %1470

1441:                                             ; preds = %1436, %1441
  %1442 = phi ptr [ %1467, %1441 ], [ %1437, %1436 ]
  %1443 = phi i32 [ %1468, %1441 ], [ 0, %1436 ]
  %1444 = phi ptr [ %1460, %1441 ], [ %1439, %1436 ]
  %1445 = phi ptr [ %1457, %1441 ], [ %1440, %1436 ]
  %1446 = getelementptr inbounds i16, ptr %1445, i64 1
  %1447 = load i16, ptr %1445, align 2, !tbaa !66
  %1448 = zext i16 %1447 to i32
  %1449 = getelementptr inbounds i16, ptr %1444, i64 1
  %1450 = load i16, ptr %1444, align 2, !tbaa !66
  %1451 = zext i16 %1450 to i32
  %1452 = add nuw nsw i32 %1448, 1
  %1453 = add nuw nsw i32 %1452, %1451
  %1454 = lshr i32 %1453, 1
  %1455 = trunc i32 %1454 to i16
  %1456 = getelementptr inbounds i16, ptr %1442, i64 1
  store i16 %1455, ptr %1442, align 2, !tbaa !66
  %1457 = getelementptr inbounds i16, ptr %1445, i64 2
  %1458 = load i16, ptr %1446, align 2, !tbaa !66
  %1459 = zext i16 %1458 to i32
  %1460 = getelementptr inbounds i16, ptr %1444, i64 2
  %1461 = load i16, ptr %1449, align 2, !tbaa !66
  %1462 = zext i16 %1461 to i32
  %1463 = add nuw nsw i32 %1459, 1
  %1464 = add nuw nsw i32 %1463, %1462
  %1465 = lshr i32 %1464, 1
  %1466 = trunc i32 %1465 to i16
  %1467 = getelementptr inbounds i16, ptr %1442, i64 2
  store i16 %1466, ptr %1456, align 2, !tbaa !66
  %1468 = add nuw nsw i32 %1443, 2
  %1469 = icmp slt i32 %1468, %1342
  br i1 %1469, label %1441, label %1470, !llvm.loop !197

1470:                                             ; preds = %1441, %1436
  %1471 = phi ptr [ %1440, %1436 ], [ %1457, %1441 ]
  %1472 = phi ptr [ %1439, %1436 ], [ %1460, %1441 ]
  %1473 = phi ptr [ %1437, %1436 ], [ %1467, %1441 ]
  %1474 = getelementptr inbounds i16, ptr %1473, i64 %1435
  %1475 = getelementptr inbounds i16, ptr %1471, i64 %1435
  %1476 = getelementptr inbounds i16, ptr %1472, i64 %1435
  %1477 = add nuw nsw i32 %1438, 1
  %1478 = icmp eq i32 %1477, %1348
  br i1 %1478, label %1479, label %1436, !llvm.loop !198

1479:                                             ; preds = %361, %576, %1055, %1470, %318, %565, %1003, %1424, %1308, %1308, %881, %881, %492, %492, %217, %217
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @CheckVertMV(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @get_block_chroma(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, i32 noundef %13, i16 noundef zeroext %14, ptr nocapture noundef readonly %15) unnamed_addr #3 {
  %17 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 68
  %18 = load i32, ptr %17, align 8, !tbaa !200
  %19 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 72
  %20 = load i32, ptr %19, align 8, !tbaa !46
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
  br label %340

28:                                               ; preds = %16
  %29 = and i32 %3, %1
  %30 = and i32 %4, %2
  %31 = ashr i32 %1, %9
  %32 = ashr i32 %2, %10
  %33 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 174
  %34 = load i32, ptr %33, align 8, !tbaa !201
  %35 = sub nsw i32 0, %34
  %36 = tail call i32 @llvm.smax.i32(i32 %31, i32 %35)
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 %5)
  %38 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 175
  %39 = load i32, ptr %38, align 4, !tbaa !202
  %40 = sub nsw i32 0, %39
  %41 = tail call i32 @llvm.smax.i32(i32 %32, i32 %40)
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %6)
  %43 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 33
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = sext i32 %37 to i64
  %50 = getelementptr inbounds i16, ptr %48, i64 %49
  %51 = getelementptr inbounds ptr, ptr %44, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = getelementptr inbounds ptr, ptr %52, i64 %46
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = getelementptr inbounds i16, ptr %54, i64 %49
  %56 = shl i32 %29, 16
  %57 = shl i32 %30, 16
  %58 = icmp eq i32 %57, 0
  %59 = or i32 %57, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %28
  %62 = icmp sgt i32 %8, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  %64 = sext i32 %18 to i64
  br label %69

65:                                               ; preds = %69, %61
  %66 = icmp sgt i32 %8, 0
  br i1 %66, label %67, label %340

67:                                               ; preds = %65
  %68 = sext i32 %18 to i64
  br label %79

69:                                               ; preds = %63, %69
  %70 = phi i32 [ 0, %63 ], [ %77, %69 ]
  %71 = phi ptr [ %11, %63 ], [ %75, %69 ]
  %72 = phi ptr [ %50, %63 ], [ %76, %69 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %71, ptr noundef nonnull align 2 dereferenceable(32) %72, i64 32, i1 false)
  %73 = getelementptr inbounds i16, ptr %71, i64 16
  %74 = getelementptr inbounds i16, ptr %72, i64 %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %73, ptr noundef nonnull align 2 dereferenceable(32) %74, i64 32, i1 false)
  %75 = getelementptr inbounds i16, ptr %71, i64 32
  %76 = getelementptr inbounds i16, ptr %74, i64 %64
  %77 = add nuw nsw i32 %70, 2
  %78 = icmp slt i32 %77, %8
  br i1 %78, label %69, label %65, !llvm.loop !63

79:                                               ; preds = %67, %79
  %80 = phi i32 [ 0, %67 ], [ %87, %79 ]
  %81 = phi ptr [ %12, %67 ], [ %85, %79 ]
  %82 = phi ptr [ %55, %67 ], [ %86, %79 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %81, ptr noundef nonnull align 2 dereferenceable(32) %82, i64 32, i1 false)
  %83 = getelementptr inbounds i16, ptr %81, i64 16
  %84 = getelementptr inbounds i16, ptr %82, i64 %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %83, ptr noundef nonnull align 2 dereferenceable(32) %84, i64 32, i1 false)
  %85 = getelementptr inbounds i16, ptr %81, i64 32
  %86 = getelementptr inbounds i16, ptr %84, i64 %68
  %87 = add nuw nsw i32 %80, 2
  %88 = icmp slt i32 %87, %8
  br i1 %88, label %79, label %340, !llvm.loop !63

89:                                               ; preds = %28
  %90 = icmp eq i32 %56, 0
  %91 = add nsw i32 %3, 1
  %92 = sub i32 %91, %29
  %93 = add nsw i32 %4, 1
  %94 = sub i32 %93, %30
  %95 = mul i32 %94, %92
  %96 = shl i32 %95, 16
  %97 = ashr exact i32 %96, 16
  br i1 %90, label %98, label %172

98:                                               ; preds = %89
  %99 = shl i32 %91, 16
  %100 = mul i32 %99, %30
  %101 = ashr exact i32 %100, 16
  %102 = sext i32 %18 to i64
  %103 = icmp sgt i32 %8, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = icmp sgt i32 %7, 0
  %106 = add nsw i32 %13, -1
  %107 = shl nuw i32 1, %106
  br label %114

108:                                              ; preds = %140, %98
  %109 = icmp sgt i32 %8, 0
  br i1 %109, label %110, label %340

110:                                              ; preds = %108
  %111 = icmp sgt i32 %7, 0
  %112 = add nsw i32 %13, -1
  %113 = shl nuw i32 1, %112
  br label %143

114:                                              ; preds = %104, %140
  %115 = phi i32 [ 0, %104 ], [ %141, %140 ]
  %116 = phi ptr [ %11, %104 ], [ %119, %140 ]
  %117 = phi ptr [ %50, %104 ], [ %118, %140 ]
  %118 = getelementptr inbounds i16, ptr %117, i64 %102
  %119 = getelementptr inbounds i16, ptr %116, i64 16
  br i1 %105, label %120, label %140

120:                                              ; preds = %114, %120
  %121 = phi i32 [ %138, %120 ], [ 0, %114 ]
  %122 = phi ptr [ %137, %120 ], [ %116, %114 ]
  %123 = phi ptr [ %129, %120 ], [ %118, %114 ]
  %124 = phi ptr [ %125, %120 ], [ %117, %114 ]
  %125 = getelementptr inbounds i16, ptr %124, i64 1
  %126 = load i16, ptr %124, align 2, !tbaa !66
  %127 = zext i16 %126 to i32
  %128 = mul nsw i32 %97, %127
  %129 = getelementptr inbounds i16, ptr %123, i64 1
  %130 = load i16, ptr %123, align 2, !tbaa !66
  %131 = zext i16 %130 to i32
  %132 = mul nsw i32 %101, %131
  %133 = add i32 %128, %107
  %134 = add i32 %133, %132
  %135 = ashr i32 %134, %13
  %136 = trunc i32 %135 to i16
  %137 = getelementptr inbounds i16, ptr %122, i64 1
  store i16 %136, ptr %122, align 2, !tbaa !66
  %138 = add nuw nsw i32 %121, 1
  %139 = icmp eq i32 %138, %7
  br i1 %139, label %140, label %120, !llvm.loop !203

140:                                              ; preds = %120, %114
  %141 = add nuw nsw i32 %115, 1
  %142 = icmp eq i32 %141, %8
  br i1 %142, label %108, label %114, !llvm.loop !204

143:                                              ; preds = %110, %169
  %144 = phi i32 [ 0, %110 ], [ %170, %169 ]
  %145 = phi ptr [ %12, %110 ], [ %148, %169 ]
  %146 = phi ptr [ %55, %110 ], [ %147, %169 ]
  %147 = getelementptr inbounds i16, ptr %146, i64 %102
  %148 = getelementptr inbounds i16, ptr %145, i64 16
  br i1 %111, label %149, label %169

149:                                              ; preds = %143, %149
  %150 = phi i32 [ %167, %149 ], [ 0, %143 ]
  %151 = phi ptr [ %166, %149 ], [ %145, %143 ]
  %152 = phi ptr [ %158, %149 ], [ %147, %143 ]
  %153 = phi ptr [ %154, %149 ], [ %146, %143 ]
  %154 = getelementptr inbounds i16, ptr %153, i64 1
  %155 = load i16, ptr %153, align 2, !tbaa !66
  %156 = zext i16 %155 to i32
  %157 = mul nsw i32 %97, %156
  %158 = getelementptr inbounds i16, ptr %152, i64 1
  %159 = load i16, ptr %152, align 2, !tbaa !66
  %160 = zext i16 %159 to i32
  %161 = mul nsw i32 %101, %160
  %162 = add i32 %157, %113
  %163 = add i32 %162, %161
  %164 = ashr i32 %163, %13
  %165 = trunc i32 %164 to i16
  %166 = getelementptr inbounds i16, ptr %151, i64 1
  store i16 %165, ptr %151, align 2, !tbaa !66
  %167 = add nuw nsw i32 %150, 1
  %168 = icmp eq i32 %167, %7
  br i1 %168, label %169, label %149, !llvm.loop !203

169:                                              ; preds = %149, %143
  %170 = add nuw nsw i32 %144, 1
  %171 = icmp eq i32 %170, %8
  br i1 %171, label %340, label %143, !llvm.loop !204

172:                                              ; preds = %89
  br i1 %58, label %173, label %244

173:                                              ; preds = %172
  %174 = shl i32 %29, 16
  %175 = mul i32 %174, %93
  %176 = ashr exact i32 %175, 16
  %177 = icmp sgt i32 %8, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = sext i32 %18 to i64
  %180 = icmp sgt i32 %7, 0
  %181 = add nsw i32 %13, -1
  %182 = shl nuw i32 1, %181
  br label %190

183:                                              ; preds = %214, %173
  %184 = icmp sgt i32 %8, 0
  br i1 %184, label %185, label %340

185:                                              ; preds = %183
  %186 = sext i32 %18 to i64
  %187 = icmp sgt i32 %7, 0
  %188 = add nsw i32 %13, -1
  %189 = shl nuw i32 1, %188
  br label %217

190:                                              ; preds = %178, %214
  %191 = phi i32 [ 0, %178 ], [ %215, %214 ]
  %192 = phi ptr [ %11, %178 ], [ %194, %214 ]
  %193 = phi ptr [ %50, %178 ], [ %195, %214 ]
  %194 = getelementptr inbounds i16, ptr %192, i64 16
  %195 = getelementptr inbounds i16, ptr %193, i64 %179
  br i1 %180, label %196, label %214

196:                                              ; preds = %190, %196
  %197 = phi i32 [ %212, %196 ], [ 0, %190 ]
  %198 = phi ptr [ %211, %196 ], [ %192, %190 ]
  %199 = phi ptr [ %200, %196 ], [ %193, %190 ]
  %200 = getelementptr i16, ptr %199, i64 1
  %201 = load i16, ptr %199, align 2, !tbaa !66
  %202 = zext i16 %201 to i32
  %203 = mul nsw i32 %97, %202
  %204 = load i16, ptr %200, align 2, !tbaa !66
  %205 = zext i16 %204 to i32
  %206 = mul nsw i32 %176, %205
  %207 = add i32 %203, %182
  %208 = add i32 %207, %206
  %209 = ashr i32 %208, %13
  %210 = trunc i32 %209 to i16
  %211 = getelementptr inbounds i16, ptr %198, i64 1
  store i16 %210, ptr %198, align 2, !tbaa !66
  %212 = add nuw nsw i32 %197, 1
  %213 = icmp eq i32 %212, %7
  br i1 %213, label %214, label %196, !llvm.loop !205

214:                                              ; preds = %196, %190
  %215 = add nuw nsw i32 %191, 1
  %216 = icmp eq i32 %215, %8
  br i1 %216, label %183, label %190, !llvm.loop !206

217:                                              ; preds = %185, %241
  %218 = phi i32 [ 0, %185 ], [ %242, %241 ]
  %219 = phi ptr [ %12, %185 ], [ %221, %241 ]
  %220 = phi ptr [ %55, %185 ], [ %222, %241 ]
  %221 = getelementptr inbounds i16, ptr %219, i64 16
  %222 = getelementptr inbounds i16, ptr %220, i64 %186
  br i1 %187, label %223, label %241

223:                                              ; preds = %217, %223
  %224 = phi i32 [ %239, %223 ], [ 0, %217 ]
  %225 = phi ptr [ %238, %223 ], [ %219, %217 ]
  %226 = phi ptr [ %227, %223 ], [ %220, %217 ]
  %227 = getelementptr i16, ptr %226, i64 1
  %228 = load i16, ptr %226, align 2, !tbaa !66
  %229 = zext i16 %228 to i32
  %230 = mul nsw i32 %97, %229
  %231 = load i16, ptr %227, align 2, !tbaa !66
  %232 = zext i16 %231 to i32
  %233 = mul nsw i32 %176, %232
  %234 = add i32 %230, %189
  %235 = add i32 %234, %233
  %236 = ashr i32 %235, %13
  %237 = trunc i32 %236 to i16
  %238 = getelementptr inbounds i16, ptr %225, i64 1
  store i16 %237, ptr %225, align 2, !tbaa !66
  %239 = add nuw nsw i32 %224, 1
  %240 = icmp eq i32 %239, %7
  br i1 %240, label %241, label %223, !llvm.loop !205

241:                                              ; preds = %223, %217
  %242 = add nuw nsw i32 %218, 1
  %243 = icmp eq i32 %242, %8
  br i1 %243, label %340, label %217, !llvm.loop !206

244:                                              ; preds = %172
  %245 = shl i32 %30, 16
  %246 = mul i32 %245, %92
  %247 = ashr exact i32 %246, 16
  %248 = shl i32 %29, 16
  %249 = mul i32 %248, %94
  %250 = ashr exact i32 %249, 16
  %251 = shl i32 %29, 16
  %252 = mul i32 %251, %30
  %253 = ashr exact i32 %252, 16
  %254 = sext i32 %18 to i64
  %255 = icmp sgt i32 %8, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %244
  %257 = icmp sgt i32 %7, 0
  %258 = add nsw i32 %13, -1
  %259 = shl nuw i32 1, %258
  br label %266

260:                                              ; preds = %300, %244
  %261 = icmp sgt i32 %8, 0
  br i1 %261, label %262, label %340

262:                                              ; preds = %260
  %263 = icmp sgt i32 %7, 0
  %264 = add nsw i32 %13, -1
  %265 = shl nuw i32 1, %264
  br label %303

266:                                              ; preds = %256, %300
  %267 = phi i32 [ 0, %256 ], [ %301, %300 ]
  %268 = phi ptr [ %11, %256 ], [ %271, %300 ]
  %269 = phi ptr [ %50, %256 ], [ %270, %300 ]
  %270 = getelementptr inbounds i16, ptr %269, i64 %254
  %271 = getelementptr inbounds i16, ptr %268, i64 16
  br i1 %257, label %272, label %300

272:                                              ; preds = %266, %272
  %273 = phi i32 [ %298, %272 ], [ 0, %266 ]
  %274 = phi ptr [ %297, %272 ], [ %268, %266 ]
  %275 = phi ptr [ %281, %272 ], [ %270, %266 ]
  %276 = phi ptr [ %277, %272 ], [ %269, %266 ]
  %277 = getelementptr inbounds i16, ptr %276, i64 1
  %278 = load i16, ptr %276, align 2, !tbaa !66
  %279 = zext i16 %278 to i32
  %280 = mul nsw i32 %97, %279
  %281 = getelementptr inbounds i16, ptr %275, i64 1
  %282 = load i16, ptr %275, align 2, !tbaa !66
  %283 = zext i16 %282 to i32
  %284 = mul nsw i32 %247, %283
  %285 = load i16, ptr %277, align 2, !tbaa !66
  %286 = zext i16 %285 to i32
  %287 = mul nsw i32 %250, %286
  %288 = load i16, ptr %281, align 2, !tbaa !66
  %289 = zext i16 %288 to i32
  %290 = mul nsw i32 %253, %289
  %291 = add i32 %280, %259
  %292 = add i32 %291, %284
  %293 = add i32 %292, %287
  %294 = add i32 %293, %290
  %295 = ashr i32 %294, %13
  %296 = trunc i32 %295 to i16
  %297 = getelementptr inbounds i16, ptr %274, i64 1
  store i16 %296, ptr %274, align 2, !tbaa !66
  %298 = add nuw nsw i32 %273, 1
  %299 = icmp eq i32 %298, %7
  br i1 %299, label %300, label %272, !llvm.loop !207

300:                                              ; preds = %272, %266
  %301 = add nuw nsw i32 %267, 1
  %302 = icmp eq i32 %301, %8
  br i1 %302, label %260, label %266, !llvm.loop !208

303:                                              ; preds = %262, %337
  %304 = phi i32 [ 0, %262 ], [ %338, %337 ]
  %305 = phi ptr [ %12, %262 ], [ %308, %337 ]
  %306 = phi ptr [ %55, %262 ], [ %307, %337 ]
  %307 = getelementptr inbounds i16, ptr %306, i64 %254
  %308 = getelementptr inbounds i16, ptr %305, i64 16
  br i1 %263, label %309, label %337

309:                                              ; preds = %303, %309
  %310 = phi i32 [ %335, %309 ], [ 0, %303 ]
  %311 = phi ptr [ %334, %309 ], [ %305, %303 ]
  %312 = phi ptr [ %318, %309 ], [ %307, %303 ]
  %313 = phi ptr [ %314, %309 ], [ %306, %303 ]
  %314 = getelementptr inbounds i16, ptr %313, i64 1
  %315 = load i16, ptr %313, align 2, !tbaa !66
  %316 = zext i16 %315 to i32
  %317 = mul nsw i32 %97, %316
  %318 = getelementptr inbounds i16, ptr %312, i64 1
  %319 = load i16, ptr %312, align 2, !tbaa !66
  %320 = zext i16 %319 to i32
  %321 = mul nsw i32 %247, %320
  %322 = load i16, ptr %314, align 2, !tbaa !66
  %323 = zext i16 %322 to i32
  %324 = mul nsw i32 %250, %323
  %325 = load i16, ptr %318, align 2, !tbaa !66
  %326 = zext i16 %325 to i32
  %327 = mul nsw i32 %253, %326
  %328 = add i32 %317, %265
  %329 = add i32 %328, %321
  %330 = add i32 %329, %324
  %331 = add i32 %330, %327
  %332 = ashr i32 %331, %13
  %333 = trunc i32 %332 to i16
  %334 = getelementptr inbounds i16, ptr %311, i64 1
  store i16 %333, ptr %311, align 2, !tbaa !66
  %335 = add nuw nsw i32 %310, 1
  %336 = icmp eq i32 %335, %7
  br i1 %336, label %337, label %309, !llvm.loop !207

337:                                              ; preds = %309, %303
  %338 = add nuw nsw i32 %304, 1
  %339 = icmp eq i32 %338, %8
  br i1 %339, label %340, label %303, !llvm.loop !208

340:                                              ; preds = %337, %241, %169, %79, %260, %183, %108, %65, %22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { cold }

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
!34 = !{!35, !36, i64 1368}
!35 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !40, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !41, i64 1188, !40, i64 1220, !40, i64 1222, !40, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !40, i64 13272, !40, i64 13274, !40, i64 13276, !40, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !40, i64 13304, !40, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!42 = !{!35, !36, i64 1352}
!43 = !{!35, !36, i64 1360}
!44 = !{!35, !36, i64 1376}
!45 = !{!35, !36, i64 1384}
!46 = !{!47, !39, i64 384}
!47 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !40, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !48, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!48 = !{!"pic_motion_params_old", !36, i64 0}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !36, i64 8}
!51 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !52, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !40, i64 108, !37, i64 110, !37, i64 111, !40, i64 112, !40, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !40, i64 376, !40, i64 378, !40, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!52 = !{!"", !40, i64 0, !40, i64 2}
!53 = !{!54, !39, i64 849280}
!54 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !55, i64 849304, !55, i64 849624, !55, i64 849944, !55, i64 850264, !55, i64 850584, !55, i64 850904, !55, i64 851224, !55, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !58, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!55 = !{!"image_data", !56, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!56 = !{!"frame_format", !39, i64 0, !39, i64 4, !57, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!57 = !{!"double", !37, i64 0}
!58 = !{!"long", !37, i64 0}
!59 = !{!51, !36, i64 0}
!60 = !{!35, !39, i64 216}
!61 = !{!47, !36, i64 136}
!62 = !{!47, !39, i64 356}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!40, !40, i64 0}
!67 = distinct !{!67, !64, !65}
!68 = distinct !{!68, !64, !65}
!69 = distinct !{!69, !64, !65}
!70 = distinct !{!70, !64, !65}
!71 = distinct !{!71, !64, !65}
!72 = distinct !{!72, !64, !65}
!73 = distinct !{!73, !64, !65}
!74 = distinct !{!74, !64, !65}
!75 = distinct !{!75, !64, !65}
!76 = distinct !{!76, !64, !65}
!77 = distinct !{!77, !64, !65}
!78 = distinct !{!78, !64, !65}
!79 = !{!39, !39, i64 0}
!80 = distinct !{!80, !64, !65}
!81 = distinct !{!81, !64, !65}
!82 = distinct !{!82, !64, !65}
!83 = distinct !{!83, !64, !65}
!84 = distinct !{!84, !64, !65}
!85 = distinct !{!85, !64, !65}
!86 = distinct !{!86, !64, !65}
!87 = distinct !{!87, !64, !65}
!88 = distinct !{!88, !64, !65}
!89 = distinct !{!89, !64, !65}
!90 = distinct !{!90, !64, !65}
!91 = distinct !{!91, !64, !65}
!92 = distinct !{!92, !64, !65}
!93 = distinct !{!93, !64, !65}
!94 = distinct !{!94, !64, !65}
!95 = distinct !{!95, !64, !65}
!96 = distinct !{!96, !64, !65}
!97 = distinct !{!97, !64, !65}
!98 = distinct !{!98, !64, !65}
!99 = distinct !{!99, !64, !65}
!100 = distinct !{!100, !64, !65}
!101 = distinct !{!101, !64, !65}
!102 = distinct !{!102, !64, !65}
!103 = distinct !{!103, !64, !65}
!104 = distinct !{!104, !64, !65}
!105 = distinct !{!105, !64, !65}
!106 = distinct !{!106, !64, !65}
!107 = distinct !{!107, !64, !65}
!108 = distinct !{!108, !64, !65}
!109 = distinct !{!109, !64, !65}
!110 = distinct !{!110, !64, !65}
!111 = distinct !{!111, !64, !65}
!112 = distinct !{!112, !64, !65}
!113 = distinct !{!113, !64, !65}
!114 = distinct !{!114, !64, !65}
!115 = distinct !{!115, !64, !65}
!116 = !{!35, !36, i64 13520}
!117 = !{!35, !36, i64 13472}
!118 = !{!51, !39, i64 92}
!119 = !{!51, !36, i64 432}
!120 = !{!51, !37, i64 373}
!121 = !{!54, !39, i64 849112}
!122 = !{!54, !39, i64 849108}
!123 = !{!35, !36, i64 1272}
!124 = !{!35, !36, i64 1264}
!125 = distinct !{!125, !64, !65}
!126 = distinct !{!126, !64, !65}
!127 = !{!51, !40, i64 152}
!128 = !{!51, !39, i64 284}
!129 = !{!54, !39, i64 849100}
!130 = !{!37, !37, i64 0}
!131 = !{!51, !39, i64 56}
!132 = !{!35, !36, i64 1256}
!133 = !{!51, !39, i64 52}
!134 = distinct !{!134, !64, !65}
!135 = distinct !{!135, !64, !65}
!136 = distinct !{!136, !64, !65}
!137 = distinct !{!137, !64, !65}
!138 = !{!35, !36, i64 1248}
!139 = distinct !{!139, !64, !65}
!140 = distinct !{!140, !64, !65}
!141 = distinct !{!141, !64, !65}
!142 = !{!47, !36, i64 152}
!143 = !{!35, !39, i64 128}
!144 = !{!145, !39, i64 0}
!145 = !{!"pix_pos", !39, i64 0, !39, i64 4, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14}
!146 = !{!145, !40, i64 14}
!147 = !{!145, !40, i64 12}
!148 = !{!51, !39, i64 384}
!149 = !{!54, !36, i64 848888}
!150 = !{!145, !39, i64 4}
!151 = !{!51, !36, i64 448}
!152 = !{!35, !40, i64 13272}
!153 = !{!35, !36, i64 24}
!154 = !{!51, !39, i64 32}
!155 = !{!51, !39, i64 36}
!156 = !{!35, !39, i64 164}
!157 = !{!47, !39, i64 268}
!158 = !{!51, !40, i64 114}
!159 = !{!47, !39, i64 80}
!160 = !{!47, !39, i64 68}
!161 = !{!47, !39, i64 84}
!162 = !{!52, !40, i64 0}
!163 = !{!35, !36, i64 0}
!164 = !{!54, !39, i64 848712}
!165 = !{!35, !39, i64 108}
!166 = !{!52, !40, i64 2}
!167 = !{!35, !39, i64 13336}
!168 = !{!51, !39, i64 40}
!169 = !{!54, !39, i64 856844}
!170 = !{!54, !36, i64 8}
!171 = !{!172, !39, i64 2176}
!172 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!173 = !{!172, !39, i64 2180}
!174 = !{!35, !36, i64 13280}
!175 = !{!35, !36, i64 13288}
!176 = !{!35, !40, i64 13276}
!177 = distinct !{!177, !64, !65}
!178 = distinct !{!178, !64, !65}
!179 = !{!180, !39, i64 36}
!180 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !39, i64 2060, !39, i64 2064, !39, i64 2068, !39, i64 2072, !39, i64 2076, !39, i64 2080, !39, i64 2084, !39, i64 2088, !39, i64 2092, !37, i64 2096, !39, i64 3120, !39, i64 3124, !39, i64 3128, !39, i64 3132, !39, i64 3136, !39, i64 3140, !39, i64 3144, !39, i64 3148, !39, i64 3152, !39, i64 3156, !39, i64 3160, !39, i64 3164, !39, i64 3168, !181, i64 3172, !39, i64 4120, !39, i64 4124}
!181 = !{!"", !39, i64 0, !39, i64 4, !40, i64 8, !40, i64 10, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !182, i64 80, !39, i64 492, !182, i64 496, !39, i64 908, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944}
!182 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408}
!183 = !{!54, !39, i64 849212}
!184 = !{!54, !39, i64 849196}
!185 = !{!54, !39, i64 849200}
!186 = !{!54, !39, i64 849204}
!187 = !{!54, !39, i64 849208}
!188 = !{!47, !39, i64 88}
!189 = !{!47, !39, i64 76}
!190 = !{!47, !39, i64 92}
!191 = !{!35, !40, i64 13278}
!192 = distinct !{!192, !64, !65}
!193 = !{!35, !40, i64 13274}
!194 = !{!35, !36, i64 13296}
!195 = distinct !{!195, !64, !65}
!196 = distinct !{!196, !64, !65}
!197 = distinct !{!197, !64, !65}
!198 = distinct !{!198, !64, !65}
!199 = !{!54, !36, i64 16}
!200 = !{!47, !39, i64 360}
!201 = !{!54, !39, i64 856848}
!202 = !{!54, !39, i64 856852}
!203 = distinct !{!203, !64, !65}
!204 = distinct !{!204, !64, !65}
!205 = distinct !{!205, !64, !65}
!206 = distinct !{!206, !64, !65}
!207 = distinct !{!207, !64, !65}
!208 = distinct !{!208, !64, !65}
