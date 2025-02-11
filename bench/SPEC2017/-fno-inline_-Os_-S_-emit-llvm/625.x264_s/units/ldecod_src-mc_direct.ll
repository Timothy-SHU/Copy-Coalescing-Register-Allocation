; ModuleID = 'ldecod_src/mc_direct.c'
source_filename = "ldecod_src/mc_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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

@BLOCK_STEP = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 4, i32 4], [2 x i32] [i32 4, i32 2], [2 x i32] [i32 2, i32 4], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 1]], align 16
@.str = private unnamed_addr constant [67 x i8] c"temporal direct error: colocated block has ref that is unavailable\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_colocated_info_4x4(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  %6 = load i8, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !16
  switch i8 %16, label %47 [
    i8 0, label %17
    i8 -1, label %30
  ]

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 1
  %19 = load i16, ptr %18, align 8, !tbaa !17
  %20 = sext i16 %19 to i32
  %21 = tail call fastcc i32 @iabs(i32 noundef %20) #10
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.MotionVector, ptr %18, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !19
  %26 = sext i16 %25 to i32
  %27 = tail call fastcc i32 @iabs(i32 noundef %26) #10
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %47, label %29

29:                                               ; preds = %23, %17
  br label %47

30:                                               ; preds = %8
  %31 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 2, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 1, i64 1
  %36 = load i16, ptr %35, align 4, !tbaa !17
  %37 = sext i16 %36 to i32
  %38 = tail call fastcc i32 @iabs(i32 noundef %37) #10
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 1, i64 1, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !19
  %43 = sext i16 %42 to i32
  %44 = tail call fastcc i32 @iabs(i32 noundef %43) #10
  %45 = icmp ugt i32 %44, 1
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %8, %29, %23, %40, %34, %30, %4
  %48 = phi i32 [ 1, %4 ], [ 0, %23 ], [ 1, %34 ], [ 1, %30 ], [ %46, %40 ], [ 1, %29 ], [ 1, %8 ]
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_colocated_info_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  %6 = load i8, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %203

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 25
  %11 = load i32, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %17, i64 0, i32 30
  %19 = load i32, ptr %18, align 4, !tbaa !32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %144

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 38
  %23 = load i32, ptr %22, align 8, !tbaa !36
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 73
  %27 = load i32, ptr %26, align 4, !tbaa !37
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %36, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr %1, align 8, !tbaa !38
  %31 = icmp eq i32 %23, %30
  br i1 %31, label %144, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 24
  %34 = load i32, ptr %33, align 8, !tbaa !39
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %144, label %36

36:                                               ; preds = %32, %25, %8
  %37 = tail call fastcc i32 @RSD(i32 noundef %3) #10
  %38 = tail call fastcc i32 @RSD(i32 noundef %2) #10
  %39 = ashr i32 %37, 1
  %40 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %41 = load ptr, ptr %40, align 8, !tbaa !14
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = sext i32 %38 to i64
  %46 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 36
  %47 = load i32, ptr %46, align 8, !tbaa !40
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 38
  %51 = load i32, ptr %50, align 8, !tbaa !36
  %52 = load i32, ptr %1, align 8, !tbaa !38
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 24
  %56 = load i32, ptr %55, align 8, !tbaa !39
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = icmp eq i32 %51, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 40
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  br label %104

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 41
  %65 = load ptr, ptr %64, align 8, !tbaa !42
  br label %104

66:                                               ; preds = %54, %49, %36
  br i1 %12, label %84, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %69 = load i32, ptr %68, align 8, !tbaa !43
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 37
  %73 = load ptr, ptr %72, align 8, !tbaa !44
  %74 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !45
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %73, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 73
  %82 = load i32, ptr %81, align 4, !tbaa !37
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %111

84:                                               ; preds = %66, %80, %71
  %85 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 125
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.storable_picture, ptr %86, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !47
  %89 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 41
  %90 = load ptr, ptr %89, align 8, !tbaa !42
  %91 = getelementptr inbounds %struct.storable_picture, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !47
  %93 = sub nsw i32 %88, %92
  %94 = tail call fastcc i32 @iabs(i32 noundef %93) #10
  %95 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 40
  %96 = load ptr, ptr %95, align 8, !tbaa !41
  %97 = getelementptr inbounds %struct.storable_picture, ptr %96, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !47
  %99 = sub nsw i32 %88, %98
  %100 = tail call fastcc i32 @iabs(i32 noundef %99) #10
  %101 = icmp sgt i32 %94, %100
  %102 = sext i32 %39 to i64
  %103 = select i1 %101, ptr %96, ptr %90
  br label %104

104:                                              ; preds = %84, %63, %60
  %105 = phi ptr [ %62, %60 ], [ %65, %63 ], [ %103, %84 ]
  %106 = phi i64 [ %42, %60 ], [ %42, %63 ], [ %102, %84 ]
  %107 = getelementptr inbounds %struct.storable_picture, ptr %105, i64 0, i32 35
  %108 = load ptr, ptr %107, align 8, !tbaa !14
  %109 = getelementptr inbounds ptr, ptr %108, i64 %106
  %110 = load ptr, ptr %109, align 8, !tbaa !15
  br label %111

111:                                              ; preds = %104, %80, %67
  %112 = phi ptr [ %44, %67 ], [ %44, %80 ], [ %110, %104 ]
  %113 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %45, i32 2
  %114 = load i8, ptr %113, align 8, !tbaa !16
  switch i8 %114, label %203 [
    i8 0, label %115
    i8 -1, label %128
  ]

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %45, i32 1
  %117 = load i16, ptr %116, align 8, !tbaa !17
  %118 = sext i16 %117 to i32
  %119 = tail call fastcc i32 @iabs(i32 noundef %118) #10
  %120 = icmp ult i32 %119, 2
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %45, i32 1, i64 0, i32 1
  %123 = load i16, ptr %122, align 2, !tbaa !19
  %124 = sext i16 %123 to i32
  %125 = tail call fastcc i32 @iabs(i32 noundef %124) #10
  %126 = icmp ult i32 %125, 2
  br i1 %126, label %203, label %127

127:                                              ; preds = %121, %115
  br label %203

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %45, i32 2, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !16
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %203

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %45, i32 1, i64 1
  %134 = load i16, ptr %133, align 4, !tbaa !17
  %135 = sext i16 %134 to i32
  %136 = tail call fastcc i32 @iabs(i32 noundef %135) #10
  %137 = icmp ult i32 %136, 2
  br i1 %137, label %138, label %203

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %45, i32 1, i64 1, i32 1
  %140 = load i16, ptr %139, align 2, !tbaa !19
  %141 = sext i16 %140 to i32
  %142 = tail call fastcc i32 @iabs(i32 noundef %141) #10
  %143 = icmp ugt i32 %142, 1
  br label %203

144:                                              ; preds = %32, %29, %13
  %145 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %146 = load ptr, ptr %145, align 8, !tbaa !14
  %147 = tail call fastcc i32 @RSD(i32 noundef %3) #10
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds ptr, ptr %146, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !15
  %151 = tail call fastcc i32 @RSD(i32 noundef %2) #10
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.pic_motion_params, ptr %150, i64 %152
  %154 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 105
  %155 = load i32, ptr %154, align 8, !tbaa !48
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %170, label %157

157:                                              ; preds = %144
  %158 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 72
  %159 = load i32, ptr %158, align 8, !tbaa !49
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 46
  %163 = load i32, ptr %162, align 8, !tbaa !50
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 36, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !15
  %167 = getelementptr inbounds ptr, ptr %166, i64 %148
  %168 = load ptr, ptr %167, align 8, !tbaa !15
  %169 = getelementptr inbounds %struct.pic_motion_params, ptr %168, i64 %152
  br label %170

170:                                              ; preds = %161, %157, %144
  %171 = phi ptr [ %169, %161 ], [ %153, %157 ], [ %153, %144 ]
  %172 = getelementptr inbounds %struct.pic_motion_params, ptr %171, i64 0, i32 2
  %173 = load i8, ptr %172, align 8, !tbaa !16
  switch i8 %173, label %203 [
    i8 0, label %174
    i8 -1, label %187
  ]

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.pic_motion_params, ptr %171, i64 0, i32 1
  %176 = load i16, ptr %175, align 8, !tbaa !17
  %177 = sext i16 %176 to i32
  %178 = tail call fastcc i32 @iabs(i32 noundef %177) #10
  %179 = icmp ult i32 %178, 2
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.pic_motion_params, ptr %171, i64 0, i32 1, i64 0, i32 1
  %182 = load i16, ptr %181, align 2, !tbaa !19
  %183 = sext i16 %182 to i32
  %184 = tail call fastcc i32 @iabs(i32 noundef %183) #10
  %185 = icmp ult i32 %184, 2
  br i1 %185, label %203, label %186

186:                                              ; preds = %180, %174
  br label %203

187:                                              ; preds = %170
  %188 = getelementptr inbounds %struct.pic_motion_params, ptr %171, i64 0, i32 2, i64 1
  %189 = load i8, ptr %188, align 1, !tbaa !16
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.pic_motion_params, ptr %171, i64 0, i32 1, i64 1
  %193 = load i16, ptr %192, align 4, !tbaa !17
  %194 = sext i16 %193 to i32
  %195 = tail call fastcc i32 @iabs(i32 noundef %194) #10
  %196 = icmp ult i32 %195, 2
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.pic_motion_params, ptr %171, i64 0, i32 1, i64 1, i32 1
  %199 = load i16, ptr %198, align 2, !tbaa !19
  %200 = sext i16 %199 to i32
  %201 = tail call fastcc i32 @iabs(i32 noundef %200) #10
  %202 = icmp ugt i32 %201, 1
  br label %203

203:                                              ; preds = %170, %111, %186, %127, %128, %132, %138, %121, %187, %191, %197, %180, %4
  %204 = phi i1 [ true, %4 ], [ false, %121 ], [ true, %132 ], [ true, %128 ], [ %143, %138 ], [ false, %180 ], [ true, %191 ], [ true, %187 ], [ %202, %197 ], [ true, %127 ], [ true, %186 ], [ true, %111 ], [ true, %170 ]
  %205 = zext i1 %204 to i32
  ret i32 %205
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @RSD(i32 noundef %0) unnamed_addr #2 {
  %2 = and i32 %0, -2
  %3 = lshr i32 %0, 1
  %4 = and i32 %3, 1
  %5 = or disjoint i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_direct_types(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 32
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %6, ptr @update_direct_mv_info_spatial_4x4, ptr @update_direct_mv_info_spatial_8x8
  %11 = select i1 %9, ptr @update_direct_mv_info_temporal, ptr %10
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  store ptr %11, ptr %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @update_direct_mv_info_spatial_8x8(ptr noundef %0) #4 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.MotionVector, align 4
  %5 = alloca %struct.MotionVector, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  %7 = load <4 x i8>, ptr %6, align 4, !tbaa !16
  %8 = icmp eq <4 x i8> %7, zeroinitializer
  %9 = bitcast <4 x i1> %8 to i4
  %10 = icmp eq i4 %9, 0
  br i1 %10, label %181, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 125
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %16 = load i16, ptr %15, align 2, !tbaa !54
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 56, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = add nsw i64 %17, 1
  %21 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 56, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %25 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 35
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  br label %27

27:                                               ; preds = %11, %177
  %28 = phi i64 [ 0, %11 ], [ %178, %177 ]
  %29 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %177

32:                                               ; preds = %27
  %33 = trunc i64 %28 to i32
  %34 = shl i32 %33, 1
  %35 = and i32 %34, 2
  %36 = trunc i64 %28 to i32
  %37 = and i32 %36, 2
  %38 = load i32, ptr %23, align 4, !tbaa !55
  %39 = add nsw i32 %38, %37
  %40 = load i32, ptr %24, align 8, !tbaa !56
  %41 = add nsw i32 %40, %35
  %42 = load ptr, ptr %25, align 8, !tbaa !14
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !15
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46
  %48 = load ptr, ptr %22, align 8, !tbaa !15
  %49 = load i32, ptr %26, align 8, !tbaa !57
  %50 = add nsw i32 %49, %37
  %51 = call i32 @get_colocated_info_8x8(ptr noundef nonnull %0, ptr noundef %48, i32 noundef %41, i32 noundef %50) #10, !range !58
  %52 = icmp eq i32 %51, 0
  %53 = load i8, ptr %2, align 1, !tbaa !16
  br i1 %52, label %54, label %127

54:                                               ; preds = %32
  %55 = icmp eq i8 %53, 0
  %56 = load i8, ptr %3, align 1
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %129

59:                                               ; preds = %54
  %60 = icmp eq i8 %56, -1
  br i1 %60, label %61, label %78

61:                                               ; preds = %59
  br i1 %55, label %62, label %68

62:                                               ; preds = %61
  %63 = load ptr, ptr %19, align 8, !tbaa !15
  store ptr %63, ptr %47, align 8, !tbaa !15
  %64 = load ptr, ptr %22, align 8, !tbaa !15
  %65 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %64, ptr %65, align 8, !tbaa !15
  %66 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  %67 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %66, i8 0, i64 9, i1 false)
  store i8 -1, ptr %67, align 1, !tbaa !16
  br label %174

68:                                               ; preds = %61
  %69 = sext i8 %53 to i64
  %70 = getelementptr inbounds ptr, ptr %19, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !15
  store ptr %71, ptr %47, align 8, !tbaa !15
  %72 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr null, ptr %72, align 8, !tbaa !15
  %73 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  %74 = load i32, ptr %4, align 4
  store i32 %74, ptr %73, align 8
  %75 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  store i8 %53, ptr %76, align 8, !tbaa !16
  %77 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 -1, ptr %77, align 1, !tbaa !16
  br label %174

78:                                               ; preds = %59
  %79 = icmp eq i8 %53, -1
  br i1 %79, label %80, label %99

80:                                               ; preds = %78
  store ptr null, ptr %47, align 8, !tbaa !15
  br i1 %57, label %81, label %88

81:                                               ; preds = %80
  %82 = load ptr, ptr %22, align 8, !tbaa !15
  %83 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %82, ptr %83, align 8, !tbaa !15
  %84 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  store i32 0, ptr %84, align 8
  %85 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  store i8 -1, ptr %86, align 8, !tbaa !16
  %87 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 0, ptr %87, align 1, !tbaa !16
  br label %174

88:                                               ; preds = %80
  %89 = sext i8 %56 to i64
  %90 = getelementptr inbounds ptr, ptr %22, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !15
  %92 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %91, ptr %92, align 8, !tbaa !15
  %93 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  store i32 0, ptr %93, align 8
  %94 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  %95 = load i32, ptr %5, align 4
  store i32 %95, ptr %94, align 4
  %96 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  store i8 -1, ptr %96, align 8, !tbaa !16
  %97 = load i8, ptr %3, align 1, !tbaa !16
  %98 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 %97, ptr %98, align 1, !tbaa !16
  br label %174

99:                                               ; preds = %78
  br i1 %55, label %100, label %102

100:                                              ; preds = %99
  %101 = load ptr, ptr %19, align 8, !tbaa !15
  store ptr %101, ptr %47, align 8, !tbaa !15
  br label %108

102:                                              ; preds = %99
  %103 = sext i8 %53 to i64
  %104 = getelementptr inbounds ptr, ptr %22, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !15
  %106 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %105, ptr %106, align 8, !tbaa !15
  %107 = load i32, ptr %4, align 4
  br label %108

108:                                              ; preds = %102, %100
  %109 = phi i32 [ 0, %100 ], [ %107, %102 ]
  %110 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  store i32 %109, ptr %110, align 8
  %111 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  store i8 %53, ptr %111, align 8
  %112 = load i8, ptr %3, align 1, !tbaa !16
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load ptr, ptr %22, align 8, !tbaa !15
  %116 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %115, ptr %116, align 8, !tbaa !15
  %117 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  store i32 0, ptr %117, align 4
  %118 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 0, ptr %118, align 1, !tbaa !16
  br label %174

119:                                              ; preds = %108
  %120 = sext i8 %112 to i64
  %121 = getelementptr inbounds ptr, ptr %22, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !15
  %123 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %122, ptr %123, align 8, !tbaa !15
  %124 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  %125 = load i32, ptr %5, align 4
  store i32 %125, ptr %124, align 4
  %126 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 %112, ptr %126, align 1, !tbaa !16
  br label %174

127:                                              ; preds = %32
  %128 = load i8, ptr %3, align 1
  br label %129

129:                                              ; preds = %127, %54
  %130 = phi i8 [ %128, %127 ], [ %56, %54 ]
  %131 = icmp slt i8 %53, 0
  %132 = icmp slt i8 %130, 0
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load ptr, ptr %19, align 8, !tbaa !15
  store ptr %135, ptr %47, align 8, !tbaa !15
  %136 = load ptr, ptr %22, align 8, !tbaa !15
  %137 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %136, ptr %137, align 8, !tbaa !15
  %138 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %138, i8 0, i64 10, i1 false)
  br label %174

139:                                              ; preds = %129
  br i1 %131, label %140, label %151

140:                                              ; preds = %139
  store ptr null, ptr %47, align 8, !tbaa !15
  %141 = sext i8 %130 to i64
  %142 = getelementptr inbounds ptr, ptr %22, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !15
  %144 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %143, ptr %144, align 8, !tbaa !15
  %145 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  store i32 0, ptr %145, align 8
  %146 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  %147 = load i32, ptr %5, align 4
  store i32 %147, ptr %146, align 4
  %148 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  store i8 -1, ptr %148, align 8, !tbaa !16
  %149 = load i8, ptr %3, align 1, !tbaa !16
  %150 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 %149, ptr %150, align 1, !tbaa !16
  br label %174

151:                                              ; preds = %139
  %152 = zext nneg i8 %53 to i64
  %153 = getelementptr inbounds ptr, ptr %19, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !15
  store ptr %154, ptr %47, align 8, !tbaa !15
  br i1 %132, label %155, label %162

155:                                              ; preds = %151
  %156 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr null, ptr %156, align 8, !tbaa !15
  %157 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  %158 = load i32, ptr %4, align 4
  store i32 %158, ptr %157, align 8
  %159 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  store i32 0, ptr %159, align 4
  %160 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  store i8 %53, ptr %160, align 8, !tbaa !16
  %161 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 -1, ptr %161, align 1, !tbaa !16
  br label %174

162:                                              ; preds = %151
  %163 = zext nneg i8 %130 to i64
  %164 = getelementptr inbounds ptr, ptr %22, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !15
  %166 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %165, ptr %166, align 8, !tbaa !15
  %167 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  %168 = load i32, ptr %4, align 4
  store i32 %168, ptr %167, align 8
  %169 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  %170 = load i32, ptr %5, align 4
  store i32 %170, ptr %169, align 4
  %171 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  store i8 %53, ptr %171, align 8, !tbaa !16
  %172 = load i8, ptr %3, align 1, !tbaa !16
  %173 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 %172, ptr %173, align 1, !tbaa !16
  br label %174

174:                                              ; preds = %134, %155, %162, %140, %68, %62, %114, %119, %81, %88
  %175 = load ptr, ptr %25, align 8, !tbaa !14
  %176 = getelementptr inbounds ptr, ptr %175, i64 %43
  call fastcc void @update_neighbor_mvs(ptr noundef %176, ptr noundef nonnull %47, i32 noundef %41) #10
  br label %177

177:                                              ; preds = %27, %174
  %178 = add nuw nsw i64 %28, 1
  %179 = icmp eq i64 %178, 4
  br i1 %179, label %180, label %27, !llvm.loop !59

180:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %181

181:                                              ; preds = %180, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @update_direct_mv_info_temporal(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %4 = load i16, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i16 %4, 8
  %6 = select i1 %5, i16 4, i16 %4
  %7 = sext i16 %6 to i64
  %8 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %7, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !62
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %11 = load i16, ptr %10, align 2, !tbaa !54
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = add nsw i64 %12, 1
  %16 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  %19 = load <4 x i8>, ptr %18, align 4, !tbaa !16
  %20 = icmp eq <4 x i8> %19, zeroinitializer
  %21 = bitcast <4 x i1> %20 to i4
  %22 = icmp eq i4 %21, 0
  br i1 %22, label %765, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %7
  %25 = load i32, ptr %24, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 125
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %31 = getelementptr inbounds %struct.video_par, ptr %29, i64 0, i32 2
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %33 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 25
  %34 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %35 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 1
  %36 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %37 = getelementptr inbounds %struct.storable_picture, ptr %27, i64 0, i32 1
  %38 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 5
  %39 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 3
  %40 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 36
  %41 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 38
  %42 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 27
  %43 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %12
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %45 = getelementptr inbounds %struct.storable_picture, ptr %27, i64 0, i32 35
  %46 = sext i32 %25 to i64
  %47 = sext i32 %9 to i64
  %48 = icmp eq i16 %6, 0
  %49 = icmp sgt i32 %25, 0
  %50 = icmp sgt i32 %25, 0
  br label %51

51:                                               ; preds = %23, %761
  %52 = phi i64 [ 0, %23 ], [ %762, %761 ]
  %53 = phi i32 [ 0, %23 ], [ %763, %761 ]
  %54 = shl nuw i32 %53, 1
  %55 = and i32 %54, 2
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %52
  %58 = load i8, ptr %57, align 1, !tbaa !16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %761

60:                                               ; preds = %51
  %61 = and i64 %52, 9223372036854775806
  %62 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %52
  store i8 2, ptr %62, align 1, !tbaa !16
  %63 = trunc i64 %52 to i32
  %64 = and i32 %63, 2
  %65 = add nuw nsw i32 %64, 2
  %66 = trunc i64 %52 to i32
  %67 = shl i32 %66, 1
  %68 = and i32 %67, 2
  %69 = add nuw nsw i32 %68, 2
  %70 = load i32, ptr %30, align 8, !tbaa !56
  br label %71

71:                                               ; preds = %60, %757
  %72 = phi i32 [ %70, %60 ], [ %758, %757 ]
  %73 = phi i64 [ %61, %60 ], [ %760, %757 ]
  %74 = phi i32 [ %64, %60 ], [ %78, %757 ]
  %75 = add nsw i32 %72, %68
  %76 = add i32 %69, %72
  %77 = icmp slt i32 %75, %76
  %78 = add i32 %74, %9
  br i1 %77, label %79, label %757

79:                                               ; preds = %71
  %80 = sext i32 %72 to i64
  %81 = add nsw i64 %56, %80
  br label %82

82:                                               ; preds = %79, %751
  %83 = phi i64 [ %81, %79 ], [ %752, %751 ]
  %84 = load ptr, ptr %31, align 8, !tbaa !26
  %85 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %84, i64 0, i32 32
  %86 = load i32, ptr %85, align 4, !tbaa !52
  %87 = icmp eq i32 %86, 0
  %88 = load ptr, ptr %17, align 8, !tbaa !15
  %89 = getelementptr inbounds %struct.storable_picture, ptr %88, i64 0, i32 35
  %90 = load ptr, ptr %89, align 8, !tbaa !14
  %91 = load i32, ptr %32, align 8, !tbaa !57
  %92 = add nsw i32 %91, %74
  br i1 %87, label %102, label %93

93:                                               ; preds = %82
  %94 = tail call fastcc i32 @RSD(i32 noundef %92) #10
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %90, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !15
  %98 = trunc i64 %83 to i32
  %99 = tail call fastcc i32 @RSD(i32 noundef %98) #10
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.pic_motion_params, ptr %97, i64 %100
  br label %107

102:                                              ; preds = %82
  %103 = sext i32 %92 to i64
  %104 = getelementptr inbounds ptr, ptr %90, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !15
  %106 = getelementptr inbounds %struct.pic_motion_params, ptr %105, i64 %83
  br label %107

107:                                              ; preds = %102, %93
  %108 = phi ptr [ %101, %93 ], [ %106, %102 ]
  %109 = load i32, ptr %33, align 8, !tbaa !22
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %181, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %34, align 8, !tbaa !43
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %299

114:                                              ; preds = %111
  %115 = load ptr, ptr %35, align 8, !tbaa !15
  %116 = load ptr, ptr %115, align 8, !tbaa !15
  %117 = getelementptr inbounds %struct.storable_picture, ptr %116, i64 0, i32 73
  %118 = load i32, ptr %117, align 4, !tbaa !37
  switch i32 %118, label %299 [
    i32 3, label %119
    i32 1, label %127
  ]

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.storable_picture, ptr %116, i64 0, i32 37
  %121 = load ptr, ptr %120, align 8, !tbaa !44
  %122 = load i32, ptr %36, align 8, !tbaa !45
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %121, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !16
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %299, label %127

127:                                              ; preds = %114, %119
  %128 = load i32, ptr %37, align 4, !tbaa !47
  %129 = load ptr, ptr %38, align 8, !tbaa !15
  %130 = load ptr, ptr %129, align 8, !tbaa !15
  %131 = getelementptr inbounds %struct.storable_picture, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !47
  %133 = sub nsw i32 %128, %132
  %134 = tail call fastcc i32 @iabs(i32 noundef %133) #10
  %135 = load ptr, ptr %39, align 8, !tbaa !15
  %136 = load ptr, ptr %135, align 8, !tbaa !15
  %137 = getelementptr inbounds %struct.storable_picture, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !47
  %139 = sub nsw i32 %128, %138
  %140 = tail call fastcc i32 @iabs(i32 noundef %139) #10
  %141 = icmp sgt i32 %134, %140
  %142 = add nsw i32 %91, %74
  br i1 %141, label %143, label %162

143:                                              ; preds = %127
  %144 = getelementptr inbounds %struct.storable_picture, ptr %136, i64 0, i32 35
  %145 = load ptr, ptr %144, align 8, !tbaa !14
  br i1 %87, label %156, label %146

146:                                              ; preds = %143
  %147 = tail call fastcc i32 @RSD(i32 noundef %142) #10
  %148 = ashr i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %145, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !15
  %152 = trunc i64 %83 to i32
  %153 = tail call fastcc i32 @RSD(i32 noundef %152) #10
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.pic_motion_params, ptr %151, i64 %154
  br label %299

156:                                              ; preds = %143
  %157 = ashr i32 %142, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %145, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !15
  %161 = getelementptr inbounds %struct.pic_motion_params, ptr %160, i64 %83
  br label %299

162:                                              ; preds = %127
  %163 = getelementptr inbounds %struct.storable_picture, ptr %130, i64 0, i32 35
  %164 = load ptr, ptr %163, align 8, !tbaa !14
  br i1 %87, label %175, label %165

165:                                              ; preds = %162
  %166 = tail call fastcc i32 @RSD(i32 noundef %142) #10
  %167 = ashr i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %164, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !15
  %171 = trunc i64 %83 to i32
  %172 = tail call fastcc i32 @RSD(i32 noundef %171) #10
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.pic_motion_params, ptr %170, i64 %173
  br label %299

175:                                              ; preds = %162
  %176 = ashr i32 %142, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds ptr, ptr %164, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !15
  %180 = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 %83
  br label %299

181:                                              ; preds = %107
  %182 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %84, i64 0, i32 30
  %183 = load i32, ptr %182, align 4, !tbaa !32
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %299

185:                                              ; preds = %181
  %186 = load i32, ptr %40, align 8, !tbaa !40
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %248

188:                                              ; preds = %185
  %189 = load ptr, ptr %35, align 8, !tbaa !15
  %190 = load ptr, ptr %189, align 8, !tbaa !15
  %191 = getelementptr inbounds %struct.storable_picture, ptr %190, i64 0, i32 73
  %192 = load i32, ptr %191, align 4, !tbaa !37
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %299, label %194

194:                                              ; preds = %188
  %195 = load i32, ptr %37, align 4, !tbaa !47
  %196 = getelementptr inbounds %struct.storable_picture, ptr %88, i64 0, i32 41
  %197 = load ptr, ptr %196, align 8, !tbaa !42
  %198 = getelementptr inbounds %struct.storable_picture, ptr %197, i64 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !47
  %200 = sub nsw i32 %195, %199
  %201 = tail call fastcc i32 @iabs(i32 noundef %200) #10
  %202 = getelementptr inbounds %struct.storable_picture, ptr %88, i64 0, i32 40
  %203 = load ptr, ptr %202, align 8, !tbaa !41
  %204 = getelementptr inbounds %struct.storable_picture, ptr %203, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !47
  %206 = sub nsw i32 %195, %205
  %207 = tail call fastcc i32 @iabs(i32 noundef %206) #10
  %208 = icmp sgt i32 %201, %207
  %209 = add nsw i32 %91, %74
  br i1 %208, label %210, label %229

210:                                              ; preds = %194
  %211 = getelementptr inbounds %struct.storable_picture, ptr %203, i64 0, i32 35
  %212 = load ptr, ptr %211, align 8, !tbaa !14
  br i1 %87, label %223, label %213

213:                                              ; preds = %210
  %214 = tail call fastcc i32 @RSD(i32 noundef %209) #10
  %215 = ashr i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %212, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !15
  %219 = trunc i64 %83 to i32
  %220 = tail call fastcc i32 @RSD(i32 noundef %219) #10
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.pic_motion_params, ptr %218, i64 %221
  br label %299

223:                                              ; preds = %210
  %224 = ashr i32 %209, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds ptr, ptr %212, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !15
  %228 = getelementptr inbounds %struct.pic_motion_params, ptr %227, i64 %83
  br label %299

229:                                              ; preds = %194
  %230 = getelementptr inbounds %struct.storable_picture, ptr %197, i64 0, i32 35
  %231 = load ptr, ptr %230, align 8, !tbaa !14
  br i1 %87, label %242, label %232

232:                                              ; preds = %229
  %233 = tail call fastcc i32 @RSD(i32 noundef %209) #10
  %234 = ashr i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds ptr, ptr %231, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !15
  %238 = trunc i64 %83 to i32
  %239 = tail call fastcc i32 @RSD(i32 noundef %238) #10
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.pic_motion_params, ptr %237, i64 %240
  br label %299

242:                                              ; preds = %229
  %243 = ashr i32 %209, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %231, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !15
  %247 = getelementptr inbounds %struct.pic_motion_params, ptr %246, i64 %83
  br label %299

248:                                              ; preds = %185
  %249 = load i32, ptr %41, align 8, !tbaa !36
  %250 = load i32, ptr %88, align 8, !tbaa !38
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %299, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.storable_picture, ptr %88, i64 0, i32 24
  %254 = load i32, ptr %253, align 8, !tbaa !39
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %299, label %256

256:                                              ; preds = %252
  %257 = icmp eq i32 %249, 1
  %258 = getelementptr inbounds %struct.storable_picture, ptr %88, i64 0, i32 42
  %259 = load ptr, ptr %258, align 8, !tbaa !63
  %260 = add nsw i32 %91, %74
  br i1 %257, label %261, label %280

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.storable_picture, ptr %259, i64 0, i32 40
  %263 = load ptr, ptr %262, align 8, !tbaa !41
  %264 = getelementptr inbounds %struct.storable_picture, ptr %263, i64 0, i32 35
  %265 = load ptr, ptr %264, align 8, !tbaa !14
  br i1 %87, label %275, label %266

266:                                              ; preds = %261
  %267 = tail call fastcc i32 @RSD(i32 noundef %260) #10
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds ptr, ptr %265, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !15
  %271 = trunc i64 %83 to i32
  %272 = tail call fastcc i32 @RSD(i32 noundef %271) #10
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.pic_motion_params, ptr %270, i64 %273
  br label %299

275:                                              ; preds = %261
  %276 = sext i32 %260 to i64
  %277 = getelementptr inbounds ptr, ptr %265, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !15
  %279 = getelementptr inbounds %struct.pic_motion_params, ptr %278, i64 %83
  br label %299

280:                                              ; preds = %256
  %281 = getelementptr inbounds %struct.storable_picture, ptr %259, i64 0, i32 41
  %282 = load ptr, ptr %281, align 8, !tbaa !42
  %283 = getelementptr inbounds %struct.storable_picture, ptr %282, i64 0, i32 35
  %284 = load ptr, ptr %283, align 8, !tbaa !14
  br i1 %87, label %294, label %285

285:                                              ; preds = %280
  %286 = tail call fastcc i32 @RSD(i32 noundef %260) #10
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds ptr, ptr %284, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !15
  %290 = trunc i64 %83 to i32
  %291 = tail call fastcc i32 @RSD(i32 noundef %290) #10
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.pic_motion_params, ptr %289, i64 %292
  br label %299

294:                                              ; preds = %280
  %295 = sext i32 %260 to i64
  %296 = getelementptr inbounds ptr, ptr %284, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !15
  %298 = getelementptr inbounds %struct.pic_motion_params, ptr %297, i64 %83
  br label %299

299:                                              ; preds = %188, %114, %119, %181, %285, %294, %266, %275, %232, %242, %213, %223, %165, %175, %146, %156, %252, %248, %111
  %300 = phi ptr [ %108, %111 ], [ %108, %252 ], [ %108, %248 ], [ %155, %146 ], [ %161, %156 ], [ %174, %165 ], [ %180, %175 ], [ %222, %213 ], [ %228, %223 ], [ %241, %232 ], [ %247, %242 ], [ %274, %266 ], [ %279, %275 ], [ %293, %285 ], [ %298, %294 ], [ %108, %181 ], [ %108, %119 ], [ %108, %114 ], [ %108, %188 ]
  %301 = getelementptr inbounds %struct.pic_motion_params, ptr %300, i64 0, i32 2
  %302 = load i8, ptr %301, align 8, !tbaa !16
  %303 = icmp eq i8 %302, -1
  %304 = zext i1 %303 to i64
  %305 = getelementptr inbounds %struct.pic_motion_params, ptr %300, i64 0, i32 2, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !16
  %307 = icmp eq i8 %306, -1
  br i1 %307, label %308, label %340

308:                                              ; preds = %299
  %309 = load i32, ptr %44, align 4, !tbaa !55
  %310 = add nsw i32 %309, %74
  %311 = add i32 %78, %309
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %751

313:                                              ; preds = %308
  %314 = add nsw i64 %83, %46
  %315 = sext i32 %309 to i64
  %316 = add nsw i64 %73, %315
  br label %317

317:                                              ; preds = %313, %334
  %318 = phi i32 [ %309, %313 ], [ %335, %334 ]
  %319 = phi i64 [ %316, %313 ], [ %336, %334 ]
  br i1 %50, label %320, label %334

320:                                              ; preds = %317, %320
  %321 = phi i64 [ %330, %320 ], [ %83, %317 ]
  %322 = load ptr, ptr %45, align 8, !tbaa !14
  %323 = getelementptr inbounds ptr, ptr %322, i64 %319
  %324 = load ptr, ptr %323, align 8, !tbaa !15
  %325 = getelementptr inbounds %struct.pic_motion_params, ptr %324, i64 %321
  %326 = load ptr, ptr %14, align 8, !tbaa !15
  store ptr %326, ptr %325, align 8, !tbaa !15
  %327 = load ptr, ptr %17, align 8, !tbaa !15
  %328 = getelementptr inbounds [2 x ptr], ptr %325, i64 0, i64 1
  store ptr %327, ptr %328, align 8, !tbaa !15
  %329 = getelementptr inbounds %struct.pic_motion_params, ptr %324, i64 %321, i32 1
  %330 = add i64 %321, 1
  %331 = icmp slt i64 %330, %314
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %329, i8 0, i64 10, i1 false)
  br i1 %331, label %320, label %332, !llvm.loop !64

332:                                              ; preds = %320
  %333 = load i32, ptr %44, align 4, !tbaa !55
  br label %334

334:                                              ; preds = %332, %317
  %335 = phi i32 [ %333, %332 ], [ %318, %317 ]
  %336 = add nsw i64 %319, 1
  %337 = add i32 %78, %335
  %338 = sext i32 %337 to i64
  %339 = icmp slt i64 %336, %338
  br i1 %339, label %317, label %751, !llvm.loop !65

340:                                              ; preds = %299
  br i1 %110, label %350, label %341

341:                                              ; preds = %340
  %342 = load i32, ptr %34, align 8, !tbaa !43
  %343 = icmp eq i32 %342, 0
  %344 = getelementptr inbounds [2 x ptr], ptr %300, i64 0, i64 %304
  %345 = load ptr, ptr %344, align 8, !tbaa !15
  %346 = load i32, ptr %345, align 8, !tbaa !38
  %347 = icmp eq i32 %346, 0
  br i1 %343, label %349, label %348

348:                                              ; preds = %341
  br i1 %347, label %362, label %390

349:                                              ; preds = %341
  br i1 %347, label %390, label %362

350:                                              ; preds = %340
  %351 = load i32, ptr %40, align 8, !tbaa !40
  switch i32 %351, label %390 [
    i32 0, label %352
    i32 1, label %357
  ]

352:                                              ; preds = %350
  %353 = getelementptr inbounds [2 x ptr], ptr %300, i64 0, i64 %304
  %354 = load ptr, ptr %353, align 8, !tbaa !15
  %355 = load i32, ptr %354, align 8, !tbaa !38
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %390, label %362

357:                                              ; preds = %350
  %358 = getelementptr inbounds [2 x ptr], ptr %300, i64 0, i64 %304
  %359 = load ptr, ptr %358, align 8, !tbaa !15
  %360 = load i32, ptr %359, align 8, !tbaa !38
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %390

362:                                              ; preds = %357, %352, %349, %348
  %363 = phi ptr [ %359, %357 ], [ %354, %352 ], [ %345, %349 ], [ %345, %348 ]
  %364 = load i32, ptr %42, align 8, !tbaa !62
  %365 = load i8, ptr %43, align 1, !tbaa !16
  %366 = sext i8 %365 to i32
  %367 = tail call fastcc i32 @imin(i32 noundef %364, i32 noundef %366) #10
  %368 = icmp sgt i32 %367, 0
  br i1 %368, label %369, label %413

369:                                              ; preds = %362
  %370 = load ptr, ptr %13, align 8, !tbaa !15
  %371 = zext nneg i32 %367 to i64
  br label %372

372:                                              ; preds = %369, %387
  %373 = phi i64 [ 0, %369 ], [ %388, %387 ]
  %374 = getelementptr inbounds ptr, ptr %370, i64 %373
  %375 = load ptr, ptr %374, align 8, !tbaa !15
  %376 = getelementptr inbounds %struct.storable_picture, ptr %375, i64 0, i32 40
  %377 = load ptr, ptr %376, align 8, !tbaa !41
  %378 = icmp eq ptr %377, %363
  br i1 %378, label %409, label %379

379:                                              ; preds = %372
  %380 = getelementptr inbounds %struct.storable_picture, ptr %375, i64 0, i32 41
  %381 = load ptr, ptr %380, align 8, !tbaa !42
  %382 = icmp eq ptr %381, %363
  br i1 %382, label %409, label %383

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.storable_picture, ptr %375, i64 0, i32 42
  %385 = load ptr, ptr %384, align 8, !tbaa !63
  %386 = icmp eq ptr %385, %363
  br i1 %386, label %409, label %387

387:                                              ; preds = %383
  %388 = add nuw nsw i64 %373, 1
  %389 = icmp eq i64 %388, %371
  br i1 %389, label %750, label %372, !llvm.loop !66

390:                                              ; preds = %350, %352, %349, %348, %357
  %391 = load i32, ptr %42, align 8, !tbaa !62
  %392 = load i8, ptr %43, align 1, !tbaa !16
  %393 = sext i8 %392 to i32
  %394 = tail call fastcc i32 @imin(i32 noundef %391, i32 noundef %393) #10
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %413

396:                                              ; preds = %390
  %397 = load ptr, ptr %13, align 8, !tbaa !15
  %398 = getelementptr inbounds [2 x ptr], ptr %300, i64 0, i64 %304
  %399 = load ptr, ptr %398, align 8, !tbaa !15
  %400 = zext nneg i32 %394 to i64
  br label %401

401:                                              ; preds = %396, %406
  %402 = phi i64 [ 0, %396 ], [ %407, %406 ]
  %403 = getelementptr inbounds ptr, ptr %397, i64 %402
  %404 = load ptr, ptr %403, align 8, !tbaa !15
  %405 = icmp eq ptr %404, %399
  br i1 %405, label %409, label %406

406:                                              ; preds = %401
  %407 = add nuw nsw i64 %402, 1
  %408 = icmp eq i64 %407, %400
  br i1 %408, label %750, label %401, !llvm.loop !67

409:                                              ; preds = %383, %379, %372, %401
  %410 = phi i64 [ %402, %401 ], [ %373, %372 ], [ %373, %379 ], [ %373, %383 ]
  %411 = trunc i64 %410 to i32
  %412 = icmp eq i32 %411, -135792468
  br i1 %412, label %750, label %413

413:                                              ; preds = %362, %390, %409
  %414 = phi i32 [ %411, %409 ], [ -1, %390 ], [ -1, %362 ]
  br i1 %48, label %751, label %415

415:                                              ; preds = %413
  %416 = add nsw i64 %83, %46
  %417 = sext i32 %414 to i64
  %418 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 60, i64 %12, i64 %417
  %419 = trunc i32 %414 to i8
  %420 = getelementptr inbounds ptr, ptr %14, i64 %417
  br label %421

421:                                              ; preds = %415, %747
  %422 = phi i32 [ %74, %415 ], [ %748, %747 ]
  %423 = load i32, ptr %32, align 8, !tbaa !57
  %424 = add nsw i32 %423, %422
  br i1 %49, label %425, label %747

425:                                              ; preds = %421
  %426 = load i32, ptr %44, align 4, !tbaa !55
  %427 = add nsw i32 %426, %422
  %428 = sext i32 %424 to i64
  %429 = sext i32 %427 to i64
  %430 = ashr i32 %424, 1
  %431 = sext i32 %430 to i64
  br label %432

432:                                              ; preds = %425, %744
  %433 = phi i64 [ %83, %425 ], [ %745, %744 ]
  %434 = load ptr, ptr %31, align 8, !tbaa !26
  %435 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %434, i64 0, i32 32
  %436 = load i32, ptr %435, align 4, !tbaa !52
  %437 = icmp eq i32 %436, 0
  %438 = load ptr, ptr %17, align 8, !tbaa !15
  %439 = getelementptr inbounds %struct.storable_picture, ptr %438, i64 0, i32 35
  %440 = load ptr, ptr %439, align 8, !tbaa !14
  br i1 %437, label %450, label %441

441:                                              ; preds = %432
  %442 = tail call fastcc i32 @RSD(i32 noundef %424) #10
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds ptr, ptr %440, i64 %443
  %445 = load ptr, ptr %444, align 8, !tbaa !15
  %446 = trunc i64 %433 to i32
  %447 = tail call fastcc i32 @RSD(i32 noundef %446) #10
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.pic_motion_params, ptr %445, i64 %448
  br label %454

450:                                              ; preds = %432
  %451 = getelementptr inbounds ptr, ptr %440, i64 %428
  %452 = load ptr, ptr %451, align 8, !tbaa !15
  %453 = getelementptr inbounds %struct.pic_motion_params, ptr %452, i64 %433
  br label %454

454:                                              ; preds = %450, %441
  %455 = phi ptr [ %449, %441 ], [ %453, %450 ]
  %456 = load ptr, ptr %45, align 8, !tbaa !14
  %457 = getelementptr inbounds ptr, ptr %456, i64 %429
  %458 = load ptr, ptr %457, align 8, !tbaa !15
  %459 = getelementptr inbounds %struct.pic_motion_params, ptr %458, i64 %433
  %460 = load i32, ptr %33, align 8, !tbaa !22
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %527, label %462

462:                                              ; preds = %454
  %463 = load i32, ptr %34, align 8, !tbaa !43
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %677

465:                                              ; preds = %462
  %466 = load ptr, ptr %35, align 8, !tbaa !15
  %467 = load ptr, ptr %466, align 8, !tbaa !15
  %468 = getelementptr inbounds %struct.storable_picture, ptr %467, i64 0, i32 73
  %469 = load i32, ptr %468, align 4, !tbaa !37
  switch i32 %469, label %637 [
    i32 3, label %470
    i32 1, label %478
  ]

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.storable_picture, ptr %467, i64 0, i32 37
  %472 = load ptr, ptr %471, align 8, !tbaa !44
  %473 = load i32, ptr %36, align 8, !tbaa !45
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, ptr %472, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !16
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %637, label %478

478:                                              ; preds = %465, %470
  %479 = load i32, ptr %37, align 4, !tbaa !47
  %480 = load ptr, ptr %38, align 8, !tbaa !15
  %481 = load ptr, ptr %480, align 8, !tbaa !15
  %482 = getelementptr inbounds %struct.storable_picture, ptr %481, i64 0, i32 1
  %483 = load i32, ptr %482, align 4, !tbaa !47
  %484 = sub nsw i32 %479, %483
  %485 = tail call fastcc i32 @iabs(i32 noundef %484) #10
  %486 = load ptr, ptr %39, align 8, !tbaa !15
  %487 = load ptr, ptr %486, align 8, !tbaa !15
  %488 = getelementptr inbounds %struct.storable_picture, ptr %487, i64 0, i32 1
  %489 = load i32, ptr %488, align 4, !tbaa !47
  %490 = sub nsw i32 %479, %489
  %491 = tail call fastcc i32 @iabs(i32 noundef %490) #10
  %492 = icmp sgt i32 %485, %491
  br i1 %492, label %493, label %510

493:                                              ; preds = %478
  %494 = getelementptr inbounds %struct.storable_picture, ptr %487, i64 0, i32 35
  %495 = load ptr, ptr %494, align 8, !tbaa !14
  br i1 %437, label %506, label %496

496:                                              ; preds = %493
  %497 = tail call fastcc i32 @RSD(i32 noundef %424) #10
  %498 = ashr i32 %497, 1
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds ptr, ptr %495, i64 %499
  %501 = load ptr, ptr %500, align 8, !tbaa !15
  %502 = trunc i64 %433 to i32
  %503 = tail call fastcc i32 @RSD(i32 noundef %502) #10
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.pic_motion_params, ptr %501, i64 %504
  br label %637

506:                                              ; preds = %493
  %507 = getelementptr inbounds ptr, ptr %495, i64 %431
  %508 = load ptr, ptr %507, align 8, !tbaa !15
  %509 = getelementptr inbounds %struct.pic_motion_params, ptr %508, i64 %433
  br label %637

510:                                              ; preds = %478
  %511 = getelementptr inbounds %struct.storable_picture, ptr %481, i64 0, i32 35
  %512 = load ptr, ptr %511, align 8, !tbaa !14
  br i1 %437, label %523, label %513

513:                                              ; preds = %510
  %514 = tail call fastcc i32 @RSD(i32 noundef %424) #10
  %515 = ashr i32 %514, 1
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds ptr, ptr %512, i64 %516
  %518 = load ptr, ptr %517, align 8, !tbaa !15
  %519 = trunc i64 %433 to i32
  %520 = tail call fastcc i32 @RSD(i32 noundef %519) #10
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.pic_motion_params, ptr %518, i64 %521
  br label %637

523:                                              ; preds = %510
  %524 = getelementptr inbounds ptr, ptr %512, i64 %431
  %525 = load ptr, ptr %524, align 8, !tbaa !15
  %526 = getelementptr inbounds %struct.pic_motion_params, ptr %525, i64 %433
  br label %637

527:                                              ; preds = %454
  %528 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %434, i64 0, i32 30
  %529 = load i32, ptr %528, align 4, !tbaa !32
  %530 = icmp eq i32 %529, 0
  %531 = load i32, ptr %40, align 8, !tbaa !40
  br i1 %530, label %532, label %659

532:                                              ; preds = %527
  %533 = icmp eq i32 %531, 0
  br i1 %533, label %534, label %589

534:                                              ; preds = %532
  %535 = load ptr, ptr %35, align 8, !tbaa !15
  %536 = load ptr, ptr %535, align 8, !tbaa !15
  %537 = getelementptr inbounds %struct.storable_picture, ptr %536, i64 0, i32 73
  %538 = load i32, ptr %537, align 4, !tbaa !37
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %653, label %540

540:                                              ; preds = %534
  %541 = load i32, ptr %37, align 4, !tbaa !47
  %542 = getelementptr inbounds %struct.storable_picture, ptr %438, i64 0, i32 41
  %543 = load ptr, ptr %542, align 8, !tbaa !42
  %544 = getelementptr inbounds %struct.storable_picture, ptr %543, i64 0, i32 1
  %545 = load i32, ptr %544, align 4, !tbaa !47
  %546 = sub nsw i32 %541, %545
  %547 = tail call fastcc i32 @iabs(i32 noundef %546) #10
  %548 = getelementptr inbounds %struct.storable_picture, ptr %438, i64 0, i32 40
  %549 = load ptr, ptr %548, align 8, !tbaa !41
  %550 = getelementptr inbounds %struct.storable_picture, ptr %549, i64 0, i32 1
  %551 = load i32, ptr %550, align 4, !tbaa !47
  %552 = sub nsw i32 %541, %551
  %553 = tail call fastcc i32 @iabs(i32 noundef %552) #10
  %554 = icmp sgt i32 %547, %553
  br i1 %554, label %555, label %572

555:                                              ; preds = %540
  %556 = getelementptr inbounds %struct.storable_picture, ptr %549, i64 0, i32 35
  %557 = load ptr, ptr %556, align 8, !tbaa !14
  br i1 %437, label %568, label %558

558:                                              ; preds = %555
  %559 = tail call fastcc i32 @RSD(i32 noundef %424) #10
  %560 = ashr i32 %559, 1
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds ptr, ptr %557, i64 %561
  %563 = load ptr, ptr %562, align 8, !tbaa !15
  %564 = trunc i64 %433 to i32
  %565 = tail call fastcc i32 @RSD(i32 noundef %564) #10
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.pic_motion_params, ptr %563, i64 %566
  br label %653

568:                                              ; preds = %555
  %569 = getelementptr inbounds ptr, ptr %557, i64 %431
  %570 = load ptr, ptr %569, align 8, !tbaa !15
  %571 = getelementptr inbounds %struct.pic_motion_params, ptr %570, i64 %433
  br label %653

572:                                              ; preds = %540
  %573 = getelementptr inbounds %struct.storable_picture, ptr %543, i64 0, i32 35
  %574 = load ptr, ptr %573, align 8, !tbaa !14
  br i1 %437, label %585, label %575

575:                                              ; preds = %572
  %576 = tail call fastcc i32 @RSD(i32 noundef %424) #10
  %577 = ashr i32 %576, 1
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds ptr, ptr %574, i64 %578
  %580 = load ptr, ptr %579, align 8, !tbaa !15
  %581 = trunc i64 %433 to i32
  %582 = tail call fastcc i32 @RSD(i32 noundef %581) #10
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.pic_motion_params, ptr %580, i64 %583
  br label %653

585:                                              ; preds = %572
  %586 = getelementptr inbounds ptr, ptr %574, i64 %431
  %587 = load ptr, ptr %586, align 8, !tbaa !15
  %588 = getelementptr inbounds %struct.pic_motion_params, ptr %587, i64 %433
  br label %653

589:                                              ; preds = %532
  %590 = load i32, ptr %41, align 8, !tbaa !36
  %591 = load i32, ptr %438, align 8, !tbaa !38
  %592 = icmp eq i32 %590, %591
  br i1 %592, label %647, label %593

593:                                              ; preds = %589
  %594 = getelementptr inbounds %struct.storable_picture, ptr %438, i64 0, i32 24
  %595 = load i32, ptr %594, align 8, !tbaa !39
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %647, label %597

597:                                              ; preds = %593
  %598 = icmp eq i32 %590, 1
  %599 = getelementptr inbounds %struct.storable_picture, ptr %438, i64 0, i32 42
  %600 = load ptr, ptr %599, align 8, !tbaa !63
  br i1 %598, label %601, label %619

601:                                              ; preds = %597
  %602 = getelementptr inbounds %struct.storable_picture, ptr %600, i64 0, i32 40
  %603 = load ptr, ptr %602, align 8, !tbaa !41
  %604 = getelementptr inbounds %struct.storable_picture, ptr %603, i64 0, i32 35
  %605 = load ptr, ptr %604, align 8, !tbaa !14
  br i1 %437, label %615, label %606

606:                                              ; preds = %601
  %607 = tail call fastcc i32 @RSD(i32 noundef %424) #10
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds ptr, ptr %605, i64 %608
  %610 = load ptr, ptr %609, align 8, !tbaa !15
  %611 = trunc i64 %433 to i32
  %612 = tail call fastcc i32 @RSD(i32 noundef %611) #10
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.pic_motion_params, ptr %610, i64 %613
  br label %647

615:                                              ; preds = %601
  %616 = getelementptr inbounds ptr, ptr %605, i64 %428
  %617 = load ptr, ptr %616, align 8, !tbaa !15
  %618 = getelementptr inbounds %struct.pic_motion_params, ptr %617, i64 %433
  br label %647

619:                                              ; preds = %597
  %620 = getelementptr inbounds %struct.storable_picture, ptr %600, i64 0, i32 41
  %621 = load ptr, ptr %620, align 8, !tbaa !42
  %622 = getelementptr inbounds %struct.storable_picture, ptr %621, i64 0, i32 35
  %623 = load ptr, ptr %622, align 8, !tbaa !14
  br i1 %437, label %633, label %624

624:                                              ; preds = %619
  %625 = tail call fastcc i32 @RSD(i32 noundef %424) #10
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds ptr, ptr %623, i64 %626
  %628 = load ptr, ptr %627, align 8, !tbaa !15
  %629 = trunc i64 %433 to i32
  %630 = tail call fastcc i32 @RSD(i32 noundef %629) #10
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.pic_motion_params, ptr %628, i64 %631
  br label %647

633:                                              ; preds = %619
  %634 = getelementptr inbounds ptr, ptr %623, i64 %428
  %635 = load ptr, ptr %634, align 8, !tbaa !15
  %636 = getelementptr inbounds %struct.pic_motion_params, ptr %635, i64 %433
  br label %647

637:                                              ; preds = %465, %470, %506, %496, %523, %513
  %638 = phi ptr [ %455, %465 ], [ %455, %470 ], [ %526, %523 ], [ %522, %513 ], [ %509, %506 ], [ %505, %496 ]
  %639 = getelementptr inbounds %struct.pic_motion_params, ptr %638, i64 0, i32 1, i64 %304
  %640 = getelementptr inbounds %struct.pic_motion_params, ptr %638, i64 0, i32 1, i64 %304, i32 1
  %641 = load i16, ptr %640, align 2, !tbaa !19
  %642 = sext i16 %641 to i32
  %643 = getelementptr inbounds [2 x ptr], ptr %638, i64 0, i64 %304
  %644 = load ptr, ptr %643, align 8, !tbaa !15
  %645 = load i32, ptr %644, align 8, !tbaa !38
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %702, label %673

647:                                              ; preds = %589, %593, %615, %606, %633, %624
  %648 = phi ptr [ %455, %593 ], [ %455, %589 ], [ %614, %606 ], [ %618, %615 ], [ %632, %624 ], [ %636, %633 ]
  %649 = getelementptr inbounds %struct.pic_motion_params, ptr %648, i64 0, i32 1, i64 %304
  %650 = getelementptr inbounds %struct.pic_motion_params, ptr %648, i64 0, i32 1, i64 %304, i32 1
  %651 = load i16, ptr %650, align 2, !tbaa !19
  %652 = sext i16 %651 to i32
  br label %686

653:                                              ; preds = %568, %558, %585, %575, %534
  %654 = phi ptr [ %567, %558 ], [ %571, %568 ], [ %584, %575 ], [ %588, %585 ], [ %455, %534 ]
  %655 = getelementptr inbounds %struct.pic_motion_params, ptr %654, i64 0, i32 1, i64 %304
  %656 = getelementptr inbounds %struct.pic_motion_params, ptr %654, i64 0, i32 1, i64 %304, i32 1
  %657 = load i16, ptr %656, align 2, !tbaa !19
  %658 = sext i16 %657 to i32
  br label %665

659:                                              ; preds = %527
  %660 = getelementptr inbounds %struct.pic_motion_params, ptr %455, i64 0, i32 1, i64 %304
  %661 = getelementptr inbounds %struct.pic_motion_params, ptr %455, i64 0, i32 1, i64 %304, i32 1
  %662 = load i16, ptr %661, align 2, !tbaa !19
  %663 = sext i16 %662 to i32
  %664 = icmp eq i32 %531, 0
  br i1 %664, label %665, label %686

665:                                              ; preds = %653, %659
  %666 = phi i32 [ %658, %653 ], [ %663, %659 ]
  %667 = phi ptr [ %655, %653 ], [ %660, %659 ]
  %668 = phi ptr [ %654, %653 ], [ %455, %659 ]
  %669 = getelementptr inbounds [2 x ptr], ptr %668, i64 0, i64 %304
  %670 = load ptr, ptr %669, align 8, !tbaa !15
  %671 = load i32, ptr %670, align 8, !tbaa !38
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %702, label %673

673:                                              ; preds = %665, %637
  %674 = phi i32 [ %666, %665 ], [ %642, %637 ]
  %675 = phi ptr [ %667, %665 ], [ %639, %637 ]
  %676 = shl nsw i32 %674, 1
  br label %702

677:                                              ; preds = %462
  %678 = getelementptr inbounds %struct.pic_motion_params, ptr %455, i64 0, i32 1, i64 %304
  %679 = getelementptr inbounds %struct.pic_motion_params, ptr %455, i64 0, i32 1, i64 %304, i32 1
  %680 = load i16, ptr %679, align 2, !tbaa !19
  %681 = sext i16 %680 to i32
  %682 = getelementptr inbounds [2 x ptr], ptr %455, i64 0, i64 %304
  %683 = load ptr, ptr %682, align 8, !tbaa !15
  %684 = load i32, ptr %683, align 8, !tbaa !38
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %697, label %702

686:                                              ; preds = %647, %659
  %687 = phi i32 [ %652, %647 ], [ %663, %659 ]
  %688 = phi i16 [ %651, %647 ], [ %662, %659 ]
  %689 = phi ptr [ %649, %647 ], [ %660, %659 ]
  %690 = phi ptr [ %648, %647 ], [ %455, %659 ]
  %691 = icmp eq i32 %531, 1
  br i1 %691, label %692, label %702

692:                                              ; preds = %686
  %693 = getelementptr inbounds [2 x ptr], ptr %690, i64 0, i64 %304
  %694 = load ptr, ptr %693, align 8, !tbaa !15
  %695 = load i32, ptr %694, align 8, !tbaa !38
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %702

697:                                              ; preds = %692, %677
  %698 = phi i16 [ %688, %692 ], [ %680, %677 ]
  %699 = phi ptr [ %689, %692 ], [ %678, %677 ]
  %700 = sdiv i16 %698, 2
  %701 = sext i16 %700 to i32
  br label %702

702:                                              ; preds = %665, %637, %677, %686, %692, %697, %673
  %703 = phi ptr [ %699, %697 ], [ %689, %692 ], [ %689, %686 ], [ %675, %673 ], [ %678, %677 ], [ %639, %637 ], [ %667, %665 ]
  %704 = phi i32 [ %701, %697 ], [ %687, %692 ], [ %687, %686 ], [ %676, %673 ], [ %681, %677 ], [ %642, %637 ], [ %666, %665 ]
  %705 = load i32, ptr %418, align 4, !tbaa !62
  %706 = getelementptr inbounds %struct.pic_motion_params, ptr %458, i64 %433, i32 2
  store i8 %419, ptr %706, align 8, !tbaa !16
  %707 = getelementptr inbounds %struct.pic_motion_params, ptr %458, i64 %433, i32 2, i64 1
  store i8 0, ptr %707, align 1, !tbaa !16
  %708 = load ptr, ptr %420, align 8, !tbaa !15
  store ptr %708, ptr %459, align 8, !tbaa !15
  %709 = load ptr, ptr %17, align 8, !tbaa !15
  %710 = getelementptr inbounds [2 x ptr], ptr %459, i64 0, i64 1
  store ptr %709, ptr %710, align 8, !tbaa !15
  %711 = icmp eq i32 %705, 9999
  br i1 %711, label %719, label %712

712:                                              ; preds = %702
  %713 = load ptr, ptr %13, align 8, !tbaa !15
  %714 = getelementptr inbounds ptr, ptr %713, i64 %417
  %715 = load ptr, ptr %714, align 8, !tbaa !15
  %716 = getelementptr inbounds %struct.storable_picture, ptr %715, i64 0, i32 10
  %717 = load i8, ptr %716, align 8, !tbaa !6
  %718 = icmp eq i8 %717, 0
  br i1 %718, label %725, label %719

719:                                              ; preds = %712, %702
  %720 = load i16, ptr %703, align 4, !tbaa !17
  %721 = getelementptr inbounds %struct.pic_motion_params, ptr %458, i64 %433, i32 1
  store i16 %720, ptr %721, align 8, !tbaa !17
  %722 = trunc i32 %704 to i16
  %723 = getelementptr inbounds %struct.MotionVector, ptr %721, i64 0, i32 1
  store i16 %722, ptr %723, align 2, !tbaa !19
  %724 = getelementptr inbounds %struct.pic_motion_params, ptr %458, i64 %433, i32 1, i64 1
  store i32 0, ptr %724, align 4
  br label %744

725:                                              ; preds = %712
  %726 = load i16, ptr %703, align 4, !tbaa !17
  %727 = sext i16 %726 to i32
  %728 = mul nsw i32 %705, %727
  %729 = add nsw i32 %728, 128
  %730 = lshr i32 %729, 8
  %731 = trunc i32 %730 to i16
  %732 = getelementptr inbounds %struct.pic_motion_params, ptr %458, i64 %433, i32 1
  store i16 %731, ptr %732, align 8, !tbaa !17
  %733 = mul nsw i32 %705, %704
  %734 = add nsw i32 %733, 128
  %735 = lshr i32 %734, 8
  %736 = trunc i32 %735 to i16
  %737 = getelementptr inbounds %struct.MotionVector, ptr %732, i64 0, i32 1
  store i16 %736, ptr %737, align 2, !tbaa !19
  %738 = load i16, ptr %703, align 4, !tbaa !17
  %739 = sub i16 %731, %738
  %740 = getelementptr inbounds %struct.pic_motion_params, ptr %458, i64 %433, i32 1, i64 1
  store i16 %739, ptr %740, align 4, !tbaa !17
  %741 = sub i32 %735, %704
  %742 = trunc i32 %741 to i16
  %743 = getelementptr inbounds %struct.pic_motion_params, ptr %458, i64 %433, i32 1, i64 1, i32 1
  store i16 %742, ptr %743, align 2, !tbaa !19
  br label %744

744:                                              ; preds = %725, %719
  %745 = add i64 %433, 1
  %746 = icmp slt i64 %745, %416
  br i1 %746, label %432, label %747, !llvm.loop !68

747:                                              ; preds = %744, %421
  %748 = add nsw i32 %422, 1
  %749 = icmp slt i32 %748, %78
  br i1 %749, label %421, label %751, !llvm.loop !69

750:                                              ; preds = %387, %406, %409
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #12
  br label %751

751:                                              ; preds = %747, %334, %413, %308, %750
  %752 = add i64 %83, %46
  %753 = load i32, ptr %30, align 8, !tbaa !56
  %754 = add i32 %69, %753
  %755 = sext i32 %754 to i64
  %756 = icmp slt i64 %752, %755
  br i1 %756, label %82, label %757, !llvm.loop !70

757:                                              ; preds = %751, %71
  %758 = phi i32 [ %72, %71 ], [ %753, %751 ]
  %759 = icmp slt i32 %78, %65
  %760 = add i64 %73, %47
  br i1 %759, label %71, label %761, !llvm.loop !71

761:                                              ; preds = %757, %51
  %762 = add nuw nsw i64 %52, 1
  %763 = add nuw nsw i32 %53, 1
  %764 = icmp eq i64 %762, 4
  br i1 %764, label %765, label %51, !llvm.loop !72

765:                                              ; preds = %761, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @update_direct_mv_info_spatial_4x4(ptr noundef %0) #4 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.MotionVector, align 4
  %5 = alloca %struct.MotionVector, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  %7 = load <4 x i8>, ptr %6, align 4, !tbaa !16
  %8 = icmp eq <4 x i8> %7, zeroinitializer
  %9 = bitcast <4 x i1> %8 to i4
  %10 = icmp eq i4 %9, 0
  br i1 %10, label %203, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = load ptr, ptr %0, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 136
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %18 = load i16, ptr %17, align 2, !tbaa !54
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds %struct.slice, ptr %14, i64 0, i32 56, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = add nsw i64 %19, 1
  %23 = getelementptr inbounds %struct.slice, ptr %14, i64 0, i32 56, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %28 = getelementptr inbounds %struct.storable_picture, ptr %16, i64 0, i32 35
  br label %29

29:                                               ; preds = %11, %198
  %30 = phi i64 [ 0, %11 ], [ %199, %198 ]
  %31 = phi i32 [ 0, %11 ], [ %200, %198 ]
  %32 = shl nuw i32 %31, 1
  %33 = and i32 %32, 2
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %30
  %36 = load i8, ptr %35, align 1, !tbaa !16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %198

38:                                               ; preds = %29
  %39 = trunc i64 %30 to i32
  %40 = trunc i64 %30 to i32
  %41 = shl i32 %40, 1
  %42 = and i32 %41, 2
  %43 = and i32 %39, 2
  %44 = add nuw nsw i32 %42, 2
  %45 = load i32, ptr %27, align 8, !tbaa !56
  %46 = or i32 %39, 1
  br label %47

47:                                               ; preds = %38, %194
  %48 = phi i32 [ %45, %38 ], [ %195, %194 ]
  %49 = phi i32 [ %43, %38 ], [ %196, %194 ]
  %50 = add nsw i32 %48, %42
  %51 = add i32 %44, %48
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %194

53:                                               ; preds = %47
  %54 = load i32, ptr %26, align 4, !tbaa !55
  %55 = add nsw i32 %54, %49
  %56 = sext i32 %55 to i64
  %57 = sext i32 %48 to i64
  %58 = add nsw i64 %34, %57
  br label %59

59:                                               ; preds = %53, %188
  %60 = phi i64 [ %58, %53 ], [ %189, %188 ]
  %61 = load ptr, ptr %28, align 8, !tbaa !14
  %62 = getelementptr inbounds ptr, ptr %61, i64 %56
  %63 = load ptr, ptr %62, align 8, !tbaa !15
  %64 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60
  %65 = load i8, ptr %2, align 1, !tbaa !16
  %66 = icmp eq i8 %65, 0
  %67 = load i8, ptr %3, align 1
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %70, label %139

70:                                               ; preds = %59
  %71 = load ptr, ptr %24, align 8, !tbaa !15
  %72 = load i32, ptr %25, align 8, !tbaa !57
  %73 = add nsw i32 %72, %49
  %74 = trunc i64 %60 to i32
  %75 = call i32 @get_colocated_info_4x4(ptr nonnull poison, ptr noundef %71, i32 noundef %74, i32 noundef %73) #10, !range !58
  %76 = icmp eq i32 %75, 0
  %77 = icmp eq i8 %67, -1
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  br i1 %76, label %79, label %83

79:                                               ; preds = %78
  %80 = load ptr, ptr %21, align 8, !tbaa !15
  store ptr %80, ptr %64, align 8, !tbaa !15
  %81 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  %82 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %81, i8 0, i64 17, i1 false)
  store i8 -1, ptr %82, align 1, !tbaa !16
  br label %188

83:                                               ; preds = %78
  %84 = sext i8 %65 to i64
  %85 = getelementptr inbounds ptr, ptr %21, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !15
  store ptr %86, ptr %64, align 8, !tbaa !15
  %87 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  store ptr null, ptr %87, align 8, !tbaa !15
  %88 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1
  %89 = load i32, ptr %4, align 4
  store i32 %89, ptr %88, align 8
  %90 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1, i64 1
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2
  store i8 %65, ptr %91, align 8, !tbaa !16
  %92 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2, i64 1
  store i8 -1, ptr %92, align 1, !tbaa !16
  br label %188

93:                                               ; preds = %70
  %94 = icmp eq i8 %65, -1
  br i1 %94, label %95, label %113

95:                                               ; preds = %93
  br i1 %76, label %96, label %102

96:                                               ; preds = %95
  %97 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  store ptr %71, ptr %97, align 8, !tbaa !15
  %98 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1
  store i32 0, ptr %98, align 8
  %99 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1, i64 1
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2
  store i8 -1, ptr %100, align 8, !tbaa !16
  %101 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2, i64 1
  store i8 0, ptr %101, align 1, !tbaa !16
  br label %188

102:                                              ; preds = %95
  %103 = sext i8 %67 to i64
  %104 = getelementptr inbounds ptr, ptr %24, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !15
  %106 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  store ptr %105, ptr %106, align 8, !tbaa !15
  %107 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1
  store i32 0, ptr %107, align 8
  %108 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1, i64 1
  %109 = load i32, ptr %5, align 4
  store i32 %109, ptr %108, align 4
  %110 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2
  store i8 -1, ptr %110, align 8, !tbaa !16
  %111 = load i8, ptr %3, align 1, !tbaa !16
  %112 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2, i64 1
  store i8 %111, ptr %112, align 1, !tbaa !16
  br label %188

113:                                              ; preds = %93
  %114 = select i1 %66, i1 %76, i1 false
  %115 = sext i8 %65 to i64
  %116 = load i32, ptr %4, align 4
  %117 = select i1 %114, i64 0, i64 %115
  %118 = getelementptr inbounds ptr, ptr %21, i64 %117
  %119 = select i1 %114, i32 0, i32 %116
  %120 = load ptr, ptr %118, align 8, !tbaa !15
  store ptr %120, ptr %64, align 8
  %121 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1
  store i32 %119, ptr %121, align 8
  %122 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2
  store i8 %65, ptr %122, align 8
  %123 = load i8, ptr %3, align 1, !tbaa !16
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %124, i1 %76, i1 false
  br i1 %125, label %126, label %131

126:                                              ; preds = %113
  %127 = load ptr, ptr %24, align 8, !tbaa !15
  %128 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  store ptr %127, ptr %128, align 8, !tbaa !15
  %129 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1, i64 1
  store i32 0, ptr %129, align 4
  %130 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2, i64 1
  store i8 0, ptr %130, align 1, !tbaa !16
  br label %188

131:                                              ; preds = %113
  %132 = sext i8 %123 to i64
  %133 = getelementptr inbounds ptr, ptr %24, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !15
  %135 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  store ptr %134, ptr %135, align 8, !tbaa !15
  %136 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1, i64 1
  %137 = load i32, ptr %5, align 4
  store i32 %137, ptr %136, align 4
  %138 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2, i64 1
  store i8 %123, ptr %138, align 1, !tbaa !16
  br label %188

139:                                              ; preds = %59
  %140 = icmp slt i8 %65, 0
  %141 = icmp slt i8 %67, 0
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load ptr, ptr %21, align 8, !tbaa !15
  store ptr %144, ptr %64, align 8, !tbaa !15
  %145 = load ptr, ptr %24, align 8, !tbaa !15
  %146 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  store ptr %145, ptr %146, align 8, !tbaa !15
  %147 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %147, i8 0, i64 10, i1 false)
  br label %188

148:                                              ; preds = %139
  %149 = icmp eq i8 %67, -1
  br i1 %149, label %150, label %160

150:                                              ; preds = %148
  %151 = sext i8 %65 to i64
  %152 = getelementptr inbounds ptr, ptr %21, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !15
  store ptr %153, ptr %64, align 8, !tbaa !15
  %154 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  store ptr null, ptr %154, align 8, !tbaa !15
  %155 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1
  %156 = load i32, ptr %4, align 4
  store i32 %156, ptr %155, align 8
  %157 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1, i64 1
  store i32 0, ptr %157, align 4
  %158 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2
  store i8 %65, ptr %158, align 8, !tbaa !16
  %159 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2, i64 1
  store i8 -1, ptr %159, align 1, !tbaa !16
  br label %188

160:                                              ; preds = %148
  %161 = icmp eq i8 %65, -1
  br i1 %161, label %162, label %173

162:                                              ; preds = %160
  store ptr null, ptr %64, align 8, !tbaa !15
  %163 = sext i8 %67 to i64
  %164 = getelementptr inbounds ptr, ptr %24, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !15
  %166 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  store ptr %165, ptr %166, align 8, !tbaa !15
  %167 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1
  store i32 0, ptr %167, align 8
  %168 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1, i64 1
  %169 = load i32, ptr %5, align 4
  store i32 %169, ptr %168, align 4
  %170 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2
  store i8 -1, ptr %170, align 8, !tbaa !16
  %171 = load i8, ptr %3, align 1, !tbaa !16
  %172 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2, i64 1
  store i8 %171, ptr %172, align 1, !tbaa !16
  br label %188

173:                                              ; preds = %160
  %174 = sext i8 %65 to i64
  %175 = getelementptr inbounds ptr, ptr %21, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !15
  store ptr %176, ptr %64, align 8, !tbaa !15
  %177 = sext i8 %67 to i64
  %178 = getelementptr inbounds ptr, ptr %24, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !15
  %180 = getelementptr inbounds [2 x ptr], ptr %64, i64 0, i64 1
  store ptr %179, ptr %180, align 8, !tbaa !15
  %181 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1
  %182 = load i32, ptr %4, align 4
  store i32 %182, ptr %181, align 8
  %183 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 1, i64 1
  %184 = load i32, ptr %5, align 4
  store i32 %184, ptr %183, align 4
  %185 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2
  store i8 %65, ptr %185, align 8, !tbaa !16
  %186 = load i8, ptr %3, align 1, !tbaa !16
  %187 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %60, i32 2, i64 1
  store i8 %186, ptr %187, align 1, !tbaa !16
  br label %188

188:                                              ; preds = %83, %79, %126, %131, %96, %102, %143, %162, %173, %150
  %189 = add nsw i64 %60, 1
  %190 = load i32, ptr %27, align 8, !tbaa !56
  %191 = add i32 %44, %190
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %189, %192
  br i1 %193, label %59, label %194, !llvm.loop !74

194:                                              ; preds = %188, %47
  %195 = phi i32 [ %48, %47 ], [ %190, %188 ]
  %196 = add nuw nsw i32 %49, 1
  %197 = icmp eq i32 %49, %46
  br i1 %197, label %198, label %47, !llvm.loop !75

198:                                              ; preds = %194, %29
  %199 = add nuw nsw i64 %30, 1
  %200 = add nuw nsw i32 %31, 1
  %201 = icmp eq i64 %199, 4
  br i1 %201, label %202, label %29, !llvm.loop !76

202:                                              ; preds = %198
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %203

203:                                              ; preds = %202, %1
  ret void
}

; Function Attrs: optsize
declare void @prepare_direct_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_neighbor_mvs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds ptr, ptr %0, i64 1
  %5 = load ptr, ptr %0, align 8, !tbaa !15
  %6 = add nsw i32 %2, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.pic_motion_params, ptr %5, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !77
  %9 = load ptr, ptr %4, align 8, !tbaa !15
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.pic_motion_params, ptr %9, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !77
  %12 = load ptr, ptr %4, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.pic_motion_params, ptr %12, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !9, i64 40}
!7 = !{!"storable_picture", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !9, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !11, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !9, i64 160, !13, i64 184, !9, i64 192, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !9, i64 300, !8, i64 308, !12, i64 312, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !12, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !12, i64 376, !8, i64 384, !8, i64 388, !9, i64 392, !9, i64 400}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"pic_motion_params_old", !12, i64 0}
!14 = !{!7, !12, i64 152}
!15 = !{!12, !12, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !11, i64 0}
!18 = !{!"", !11, i64 0, !11, i64 2}
!19 = !{!18, !11, i64 2}
!20 = !{!21, !12, i64 0}
!21 = !{!"macroblock", !12, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !18, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !9, i64 72, !9, i64 80, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !11, i64 108, !9, i64 110, !9, i64 111, !11, i64 112, !11, i64 114, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !11, i64 152, !9, i64 154, !8, i64 284, !9, i64 288, !9, i64 312, !9, i64 336, !8, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !9, i64 373, !9, i64 374, !11, i64 376, !11, i64 378, !11, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !8, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !9, i64 472}
!22 = !{!23, !8, i64 128}
!23 = !{!"slice", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !9, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !11, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !9, i64 136, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !9, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !12, i64 248, !9, i64 256, !9, i64 264, !12, i64 312, !12, i64 320, !12, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !8, i64 1176, !8, i64 1180, !8, i64 1184, !24, i64 1188, !11, i64 1220, !11, i64 1222, !11, i64 1224, !8, i64 1228, !8, i64 1232, !8, i64 1236, !8, i64 1240, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !12, i64 1280, !9, i64 1288, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !8, i64 13264, !8, i64 13268, !11, i64 13272, !11, i64 13274, !11, i64 13276, !11, i64 13278, !12, i64 13280, !12, i64 13288, !12, i64 13296, !11, i64 13304, !11, i64 13306, !8, i64 13308, !8, i64 13312, !12, i64 13320, !12, i64 13328, !8, i64 13336, !9, i64 13340, !12, i64 13408, !12, i64 13416, !12, i64 13424, !12, i64 13432, !12, i64 13440, !12, i64 13448, !12, i64 13456, !12, i64 13464, !12, i64 13472, !12, i64 13480, !12, i64 13488, !12, i64 13496, !8, i64 13504, !12, i64 13512, !12, i64 13520, !12, i64 13528, !12, i64 13536, !12, i64 13544, !9, i64 13552}
!24 = !{!"nalunitheadermvcext_tag", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!25 = !{!21, !12, i64 8}
!26 = !{!27, !12, i64 16}
!27 = !{!"video_par", !12, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 132120, !12, i64 699416, !9, i64 699424, !8, i64 848672, !8, i64 848676, !8, i64 848680, !8, i64 848684, !12, i64 848688, !12, i64 848696, !12, i64 848704, !8, i64 848712, !8, i64 848716, !8, i64 848720, !8, i64 848724, !8, i64 848728, !12, i64 848736, !12, i64 848744, !9, i64 848752, !8, i64 848776, !8, i64 848780, !8, i64 848784, !8, i64 848788, !8, i64 848792, !12, i64 848800, !9, i64 848808, !12, i64 848832, !12, i64 848840, !9, i64 848848, !8, i64 848872, !8, i64 848876, !12, i64 848880, !12, i64 848888, !9, i64 848896, !8, i64 848920, !12, i64 848928, !12, i64 848936, !8, i64 848944, !8, i64 848948, !8, i64 848952, !8, i64 848956, !8, i64 848960, !8, i64 848964, !8, i64 848968, !8, i64 848972, !8, i64 848976, !8, i64 848980, !8, i64 848984, !8, i64 848988, !8, i64 848992, !8, i64 848996, !8, i64 849000, !8, i64 849004, !8, i64 849008, !8, i64 849012, !8, i64 849016, !8, i64 849020, !8, i64 849024, !8, i64 849028, !8, i64 849032, !8, i64 849036, !11, i64 849040, !11, i64 849042, !9, i64 849044, !8, i64 849052, !8, i64 849056, !9, i64 849060, !9, i64 849072, !8, i64 849084, !8, i64 849088, !8, i64 849092, !8, i64 849096, !8, i64 849100, !8, i64 849104, !8, i64 849108, !8, i64 849112, !8, i64 849116, !8, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !8, i64 849196, !8, i64 849200, !8, i64 849204, !8, i64 849208, !8, i64 849212, !8, i64 849216, !8, i64 849220, !8, i64 849224, !8, i64 849228, !8, i64 849232, !8, i64 849236, !8, i64 849240, !8, i64 849244, !8, i64 849248, !8, i64 849252, !8, i64 849256, !8, i64 849260, !8, i64 849264, !8, i64 849268, !8, i64 849272, !8, i64 849276, !8, i64 849280, !8, i64 849284, !12, i64 849288, !12, i64 849296, !28, i64 849304, !28, i64 849624, !28, i64 849944, !28, i64 850264, !28, i64 850584, !28, i64 850904, !28, i64 851224, !28, i64 851544, !8, i64 851864, !8, i64 851868, !8, i64 851872, !31, i64 851880, !8, i64 851888, !9, i64 851892, !8, i64 855988, !8, i64 855992, !8, i64 855996, !8, i64 856000, !8, i64 856004, !8, i64 856008, !8, i64 856012, !12, i64 856016, !12, i64 856024, !12, i64 856032, !12, i64 856040, !12, i64 856048, !9, i64 856056, !12, i64 856456, !9, i64 856464, !12, i64 856488, !12, i64 856496, !12, i64 856504, !8, i64 856512, !12, i64 856520, !9, i64 856528, !12, i64 856608, !12, i64 856616, !12, i64 856624, !12, i64 856632, !8, i64 856640, !8, i64 856644, !8, i64 856648, !12, i64 856656, !12, i64 856664, !9, i64 856672, !9, i64 856688, !12, i64 856704, !12, i64 856712, !8, i64 856720, !12, i64 856728, !12, i64 856736, !12, i64 856744, !12, i64 856752, !12, i64 856760, !12, i64 856768, !12, i64 856776, !12, i64 856784, !12, i64 856792, !12, i64 856800, !12, i64 856808, !12, i64 856816, !8, i64 856824, !12, i64 856832, !8, i64 856840, !8, i64 856844, !8, i64 856848, !8, i64 856852, !8, i64 856856, !8, i64 856860, !8, i64 856864, !12, i64 856872}
!28 = !{!"image_data", !29, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!29 = !{!"frame_format", !8, i64 0, !8, i64 4, !30, i64 8, !9, i64 16, !9, i64 28, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !9, i64 72, !8, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !8, i64 124, !8, i64 128}
!30 = !{!"double", !9, i64 0}
!31 = !{!"long", !9, i64 0}
!32 = !{!33, !8, i64 3136}
!33 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !9, i64 44, !9, i64 92, !9, i64 476, !9, i64 2012, !9, i64 2036, !8, i64 2060, !8, i64 2064, !8, i64 2068, !8, i64 2072, !8, i64 2076, !8, i64 2080, !8, i64 2084, !8, i64 2088, !8, i64 2092, !9, i64 2096, !8, i64 3120, !8, i64 3124, !8, i64 3128, !8, i64 3132, !8, i64 3136, !8, i64 3140, !8, i64 3144, !8, i64 3148, !8, i64 3152, !8, i64 3156, !8, i64 3160, !8, i64 3164, !8, i64 3168, !34, i64 3172, !8, i64 4120, !8, i64 4124}
!34 = !{!"", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 10, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !35, i64 80, !8, i64 492, !35, i64 496, !8, i64 908, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !8, i64 932, !8, i64 936, !8, i64 940, !8, i64 944}
!35 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !9, i64 140, !9, i64 268, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408}
!36 = !{!23, !8, i64 184}
!37 = !{!7, !8, i64 388}
!38 = !{!7, !8, i64 0}
!39 = !{!7, !8, i64 96}
!40 = !{!23, !8, i64 176}
!41 = !{!7, !12, i64 224}
!42 = !{!7, !12, i64 232}
!43 = !{!21, !8, i64 384}
!44 = !{!7, !12, i64 184}
!45 = !{!21, !8, i64 24}
!46 = !{!23, !12, i64 13520}
!47 = !{!7, !8, i64 4}
!48 = !{!27, !8, i64 849280}
!49 = !{!27, !8, i64 849088}
!50 = !{!23, !8, i64 216}
!51 = !{!23, !12, i64 24}
!52 = !{!33, !8, i64 3144}
!53 = !{!23, !8, i64 132}
!54 = !{!21, !11, i64 114}
!55 = !{!21, !8, i64 36}
!56 = !{!21, !8, i64 32}
!57 = !{!21, !8, i64 40}
!58 = !{i32 0, i32 2}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!21, !11, i64 152}
!62 = !{!8, !8, i64 0}
!63 = !{!7, !12, i64 240}
!64 = distinct !{!64, !60}
!65 = distinct !{!65, !60}
!66 = distinct !{!66, !60}
!67 = distinct !{!67, !60}
!68 = distinct !{!68, !60}
!69 = distinct !{!69, !60}
!70 = distinct !{!70, !60}
!71 = distinct !{!71, !60}
!72 = distinct !{!72, !60}
!73 = !{!27, !12, i64 856456}
!74 = distinct !{!74, !60}
!75 = distinct !{!75, !60}
!76 = distinct !{!76, !60}
!77 = !{i64 0, i64 16, !16, i64 16, i64 8, !16, i64 24, i64 2, !16}
