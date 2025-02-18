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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_colocated_info_4x4(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  %6 = load i8, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !44
  switch i8 %16, label %44 [
    i8 0, label %17
    i8 -1, label %29
  ]

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 1
  %19 = load i16, ptr %18, align 8, !tbaa !45
  %20 = tail call i16 @llvm.abs.i16(i16 %19, i1 false)
  %21 = icmp ult i16 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.MotionVector, ptr %18, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !47
  %25 = tail call i16 @llvm.abs.i16(i16 %24, i1 false)
  %26 = icmp ult i16 %25, 2
  br i1 %26, label %44, label %27

27:                                               ; preds = %22, %17
  %28 = icmp eq i8 %16, -1
  br i1 %28, label %29, label %44

29:                                               ; preds = %8, %27
  %30 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 2, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !44
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 1, i64 1
  %35 = load i16, ptr %34, align 4, !tbaa !45
  %36 = tail call i16 @llvm.abs.i16(i16 %35, i1 false)
  %37 = icmp ult i16 %36, 2
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %14, i32 1, i64 1, i32 1
  %40 = load i16, ptr %39, align 2, !tbaa !47
  %41 = tail call i16 @llvm.abs.i16(i16 %40, i1 false)
  %42 = icmp ugt i16 %41, 1
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %8, %22, %38, %33, %29, %27, %4
  %45 = phi i32 [ 1, %4 ], [ 0, %22 ], [ 1, %33 ], [ 1, %29 ], [ 1, %27 ], [ %43, %38 ], [ 1, %8 ]
  ret i32 %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_colocated_info_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  %6 = load i8, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %210

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 25
  %11 = load i32, ptr %10, align 8, !tbaa !50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %17, i64 0, i32 30
  %19 = load i32, ptr %18, align 4, !tbaa !60
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %146

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 38
  %23 = load i32, ptr %22, align 8, !tbaa !64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 73
  %27 = load i32, ptr %26, align 4, !tbaa !65
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %36, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr %1, align 8, !tbaa !66
  %31 = icmp eq i32 %23, %30
  br i1 %31, label %146, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 24
  %34 = load i32, ptr %33, align 8, !tbaa !67
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %146, label %36

36:                                               ; preds = %32, %25, %8
  %37 = and i32 %3, -2
  %38 = lshr i32 %3, 1
  %39 = and i32 %38, 1
  %40 = or disjoint i32 %39, %37
  %41 = and i32 %2, -2
  %42 = lshr i32 %2, 1
  %43 = and i32 %42, 1
  %44 = or disjoint i32 %43, %41
  %45 = ashr i32 %3, 1
  %46 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = sext i32 %40 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = sext i32 %44 to i64
  %52 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 36
  %53 = load i32, ptr %52, align 8, !tbaa !68
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 38
  %57 = load i32, ptr %56, align 8, !tbaa !64
  %58 = load i32, ptr %1, align 8, !tbaa !66
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 24
  %62 = load i32, ptr %61, align 8, !tbaa !67
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = icmp eq i32 %57, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 40
  %68 = load ptr, ptr %67, align 8, !tbaa !69
  br label %113

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 41
  %71 = load ptr, ptr %70, align 8, !tbaa !70
  br label %113

72:                                               ; preds = %60, %55, %36
  br i1 %12, label %93, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %75 = load i32, ptr %74, align 8, !tbaa !71
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 37
  %79 = load ptr, ptr %78, align 8, !tbaa !72
  %80 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !73
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %79, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !44
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  br i1 %76, label %87, label %92

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 73
  %89 = load i32, ptr %88, align 4, !tbaa !65
  %90 = icmp eq i32 %89, 1
  %91 = or i1 %12, %90
  br i1 %91, label %93, label %120

92:                                               ; preds = %73, %86
  br i1 %12, label %93, label %120

93:                                               ; preds = %72, %87, %92, %77
  %94 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 125
  %95 = load ptr, ptr %94, align 8, !tbaa !74
  %96 = getelementptr inbounds %struct.storable_picture, ptr %95, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !75
  %98 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 41
  %99 = load ptr, ptr %98, align 8, !tbaa !70
  %100 = getelementptr inbounds %struct.storable_picture, ptr %99, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !75
  %102 = sub nsw i32 %97, %101
  %103 = tail call i32 @llvm.abs.i32(i32 %102, i1 true)
  %104 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 40
  %105 = load ptr, ptr %104, align 8, !tbaa !69
  %106 = getelementptr inbounds %struct.storable_picture, ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !75
  %108 = sub nsw i32 %97, %107
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = icmp ugt i32 %103, %109
  %111 = sext i32 %45 to i64
  %112 = select i1 %110, ptr %105, ptr %99
  br label %113

113:                                              ; preds = %93, %69, %66
  %114 = phi ptr [ %68, %66 ], [ %71, %69 ], [ %112, %93 ]
  %115 = phi i64 [ %48, %66 ], [ %48, %69 ], [ %111, %93 ]
  %116 = getelementptr inbounds %struct.storable_picture, ptr %114, i64 0, i32 35
  %117 = load ptr, ptr %116, align 8, !tbaa !42
  %118 = getelementptr inbounds ptr, ptr %117, i64 %115
  %119 = load ptr, ptr %118, align 8, !tbaa !43
  br label %120

120:                                              ; preds = %113, %87, %92
  %121 = phi ptr [ %50, %92 ], [ %50, %87 ], [ %119, %113 ]
  %122 = getelementptr inbounds %struct.pic_motion_params, ptr %121, i64 %51
  %123 = getelementptr inbounds %struct.pic_motion_params, ptr %121, i64 %51, i32 2
  %124 = load i8, ptr %123, align 8, !tbaa !44
  switch i8 %124, label %210 [
    i8 0, label %125
    i8 -1, label %137
  ]

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.pic_motion_params, ptr %121, i64 %51, i32 1
  %127 = load i16, ptr %126, align 8, !tbaa !45
  %128 = tail call i16 @llvm.abs.i16(i16 %127, i1 false)
  %129 = icmp ult i16 %128, 2
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.pic_motion_params, ptr %121, i64 %51, i32 1, i64 0, i32 1
  %132 = load i16, ptr %131, align 2, !tbaa !47
  %133 = tail call i16 @llvm.abs.i16(i16 %132, i1 false)
  %134 = icmp ult i16 %133, 2
  br i1 %134, label %210, label %135

135:                                              ; preds = %130, %125
  %136 = icmp eq i8 %124, -1
  br i1 %136, label %137, label %210

137:                                              ; preds = %120, %135
  %138 = getelementptr inbounds %struct.pic_motion_params, ptr %121, i64 %51, i32 2, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !44
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %210

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.pic_motion_params, ptr %121, i64 %51, i32 1, i64 1
  %143 = load i16, ptr %142, align 4, !tbaa !45
  %144 = tail call i16 @llvm.abs.i16(i16 %143, i1 false)
  %145 = icmp ult i16 %144, 2
  br i1 %145, label %203, label %210

146:                                              ; preds = %32, %29, %13
  %147 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %148 = load ptr, ptr %147, align 8, !tbaa !42
  %149 = and i32 %3, -2
  %150 = lshr i32 %3, 1
  %151 = and i32 %150, 1
  %152 = or disjoint i32 %151, %149
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds ptr, ptr %148, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !43
  %156 = and i32 %2, -2
  %157 = lshr i32 %2, 1
  %158 = and i32 %157, 1
  %159 = or disjoint i32 %158, %156
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.pic_motion_params, ptr %155, i64 %160
  %162 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 105
  %163 = load i32, ptr %162, align 8, !tbaa !76
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %146
  %166 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 72
  %167 = load i32, ptr %166, align 8, !tbaa !77
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 46
  %171 = load i32, ptr %170, align 8, !tbaa !78
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 36, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !43
  %175 = getelementptr inbounds ptr, ptr %174, i64 %153
  %176 = load ptr, ptr %175, align 8, !tbaa !43
  %177 = getelementptr inbounds %struct.pic_motion_params, ptr %176, i64 %160
  br label %178

178:                                              ; preds = %169, %165, %146
  %179 = phi ptr [ %177, %169 ], [ %161, %165 ], [ %161, %146 ]
  %180 = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 0, i32 2
  %181 = load i8, ptr %180, align 8, !tbaa !44
  switch i8 %181, label %210 [
    i8 0, label %182
    i8 -1, label %194
  ]

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 0, i32 1
  %184 = load i16, ptr %183, align 8, !tbaa !45
  %185 = tail call i16 @llvm.abs.i16(i16 %184, i1 false)
  %186 = icmp ult i16 %185, 2
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 0, i32 1, i64 0, i32 1
  %189 = load i16, ptr %188, align 2, !tbaa !47
  %190 = tail call i16 @llvm.abs.i16(i16 %189, i1 false)
  %191 = icmp ult i16 %190, 2
  br i1 %191, label %210, label %192

192:                                              ; preds = %187, %182
  %193 = icmp eq i8 %181, -1
  br i1 %193, label %194, label %210

194:                                              ; preds = %178, %192
  %195 = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 0, i32 2, i64 1
  %196 = load i8, ptr %195, align 1, !tbaa !44
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 0, i32 1, i64 1
  %200 = load i16, ptr %199, align 4, !tbaa !45
  %201 = tail call i16 @llvm.abs.i16(i16 %200, i1 false)
  %202 = icmp ult i16 %201, 2
  br i1 %202, label %203, label %210

203:                                              ; preds = %198, %141
  %204 = phi ptr [ %122, %141 ], [ %179, %198 ]
  %205 = getelementptr inbounds %struct.pic_motion_params, ptr %204, i64 0, i32 1, i64 1, i32 1
  %206 = load i16, ptr %205, align 2, !tbaa !47
  %207 = tail call i16 @llvm.abs.i16(i16 %206, i1 false)
  %208 = icmp ugt i16 %207, 1
  %209 = zext i1 %208 to i32
  br label %210

210:                                              ; preds = %203, %178, %120, %135, %137, %141, %130, %192, %194, %198, %187, %4
  %211 = phi i32 [ 1, %4 ], [ 0, %130 ], [ 1, %141 ], [ 1, %137 ], [ 1, %135 ], [ 0, %187 ], [ 1, %198 ], [ 1, %194 ], [ 1, %192 ], [ 1, %120 ], [ 1, %178 ], [ %209, %203 ]
  ret i32 %211
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_direct_types(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 32
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 4, !tbaa !81
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  %11 = select i1 %6, ptr @update_direct_mv_info_spatial_4x4, ptr @update_direct_mv_info_spatial_8x8
  %12 = select i1 %9, ptr @update_direct_mv_info_temporal, ptr %11
  store ptr %12, ptr %10, align 8, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_direct_mv_info_spatial_8x8(ptr noundef %0) #3 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.MotionVector, align 4
  %5 = alloca %struct.MotionVector, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  %7 = load i8, ptr %6, align 4, !tbaa !44
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !44
  %11 = icmp eq i8 %10, 0
  %12 = or i1 %8, %11
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 2
  %14 = load i8, ptr %13, align 2, !tbaa !44
  %15 = icmp eq i8 %14, 0
  %16 = or i1 %12, %15
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !44
  %19 = icmp eq i8 %18, 0
  %20 = or i1 %16, %19
  br i1 %20, label %21, label %200

21:                                               ; preds = %1
  %22 = load ptr, ptr %0, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 125
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %26 = load i16, ptr %25, align 2, !tbaa !83
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 56, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = add nsw i64 %27, 1
  %31 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 56, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %33 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %34 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %35 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 35
  %36 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  br label %37

37:                                               ; preds = %21, %196
  %38 = phi i64 [ 0, %21 ], [ %197, %196 ]
  %39 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !44
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %196

42:                                               ; preds = %37
  %43 = trunc i64 %38 to i32
  %44 = shl i32 %43, 1
  %45 = and i32 %44, 2
  %46 = trunc i64 %38 to i32
  %47 = and i32 %46, 2
  %48 = load i32, ptr %33, align 4, !tbaa !84
  %49 = add nsw i32 %48, %47
  %50 = load i32, ptr %34, align 8, !tbaa !85
  %51 = add nsw i32 %50, %45
  %52 = load ptr, ptr %35, align 8, !tbaa !42
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56
  %58 = load ptr, ptr %32, align 8, !tbaa !43
  %59 = load i32, ptr %36, align 8, !tbaa !86
  %60 = add nsw i32 %59, %47
  %61 = call i32 @get_colocated_info_8x8(ptr noundef nonnull %0, ptr noundef %58, i32 noundef %51, i32 noundef %60), !range !87
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %138

63:                                               ; preds = %42
  %64 = load i8, ptr %2, align 1, !tbaa !44
  %65 = icmp eq i8 %64, 0
  %66 = load i8, ptr %3, align 1
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %69, label %138

69:                                               ; preds = %63
  %70 = icmp eq i8 %66, -1
  br i1 %70, label %71, label %88

71:                                               ; preds = %69
  br i1 %65, label %72, label %78

72:                                               ; preds = %71
  %73 = load ptr, ptr %29, align 8, !tbaa !43
  store ptr %73, ptr %57, align 8, !tbaa !43
  %74 = load ptr, ptr %32, align 8, !tbaa !43
  %75 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr %74, ptr %75, align 8, !tbaa !43
  %76 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  %77 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %76, i8 0, i64 9, i1 false)
  store i8 -1, ptr %77, align 1, !tbaa !44
  br label %184

78:                                               ; preds = %71
  %79 = sext i8 %64 to i64
  %80 = getelementptr inbounds ptr, ptr %29, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  store ptr %81, ptr %57, align 8, !tbaa !43
  %82 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr null, ptr %82, align 8, !tbaa !43
  %83 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  %84 = load i32, ptr %4, align 4
  store i32 %84, ptr %83, align 8
  %85 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1, i64 1
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2
  store i8 %64, ptr %86, align 8, !tbaa !44
  %87 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2, i64 1
  store i8 -1, ptr %87, align 1, !tbaa !44
  br label %184

88:                                               ; preds = %69
  %89 = icmp eq i8 %64, -1
  br i1 %89, label %90, label %109

90:                                               ; preds = %88
  store ptr null, ptr %57, align 8, !tbaa !43
  br i1 %67, label %91, label %98

91:                                               ; preds = %90
  %92 = load ptr, ptr %32, align 8, !tbaa !43
  %93 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr %92, ptr %93, align 8, !tbaa !43
  %94 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  store i32 0, ptr %94, align 8
  %95 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1, i64 1
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2
  store i8 -1, ptr %96, align 8, !tbaa !44
  %97 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2, i64 1
  store i8 0, ptr %97, align 1, !tbaa !44
  br label %184

98:                                               ; preds = %90
  %99 = sext i8 %66 to i64
  %100 = getelementptr inbounds ptr, ptr %32, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !43
  %102 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr %101, ptr %102, align 8, !tbaa !43
  %103 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  store i32 0, ptr %103, align 8
  %104 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1, i64 1
  %105 = load i32, ptr %5, align 4
  store i32 %105, ptr %104, align 4
  %106 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2
  store i8 -1, ptr %106, align 8, !tbaa !44
  %107 = load i8, ptr %3, align 1, !tbaa !44
  %108 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2, i64 1
  store i8 %107, ptr %108, align 1, !tbaa !44
  br label %184

109:                                              ; preds = %88
  br i1 %65, label %110, label %113

110:                                              ; preds = %109
  %111 = load ptr, ptr %29, align 8, !tbaa !43
  store ptr %111, ptr %57, align 8, !tbaa !43
  %112 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  store i32 0, ptr %112, align 8
  br label %120

113:                                              ; preds = %109
  %114 = sext i8 %64 to i64
  %115 = getelementptr inbounds ptr, ptr %32, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !43
  %117 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr %116, ptr %117, align 8, !tbaa !43
  %118 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  %119 = load i32, ptr %4, align 4
  store i32 %119, ptr %118, align 8
  br label %120

120:                                              ; preds = %113, %110
  %121 = phi i8 [ %64, %113 ], [ 0, %110 ]
  %122 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2
  store i8 %121, ptr %122, align 8, !tbaa !44
  %123 = load i8, ptr %3, align 1, !tbaa !44
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load ptr, ptr %32, align 8, !tbaa !43
  %127 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr %126, ptr %127, align 8, !tbaa !43
  %128 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1, i64 1
  store i32 0, ptr %128, align 4
  %129 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2, i64 1
  store i8 0, ptr %129, align 1, !tbaa !44
  br label %184

130:                                              ; preds = %120
  %131 = sext i8 %123 to i64
  %132 = getelementptr inbounds ptr, ptr %32, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !43
  %134 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr %133, ptr %134, align 8, !tbaa !43
  %135 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1, i64 1
  %136 = load i32, ptr %5, align 4
  store i32 %136, ptr %135, align 4
  %137 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2, i64 1
  store i8 %123, ptr %137, align 1, !tbaa !44
  br label %184

138:                                              ; preds = %63, %42
  %139 = load i8, ptr %2, align 1, !tbaa !44
  %140 = icmp slt i8 %139, 0
  %141 = load i8, ptr %3, align 1
  %142 = icmp slt i8 %141, 0
  %143 = select i1 %140, i1 %142, i1 false
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load ptr, ptr %29, align 8, !tbaa !43
  store ptr %145, ptr %57, align 8, !tbaa !43
  %146 = load ptr, ptr %32, align 8, !tbaa !43
  %147 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr %146, ptr %147, align 8, !tbaa !43
  %148 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %148, i8 0, i64 10, i1 false)
  br label %184

149:                                              ; preds = %138
  br i1 %140, label %150, label %161

150:                                              ; preds = %149
  store ptr null, ptr %57, align 8, !tbaa !43
  %151 = sext i8 %141 to i64
  %152 = getelementptr inbounds ptr, ptr %32, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !43
  %154 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr %153, ptr %154, align 8, !tbaa !43
  %155 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  store i32 0, ptr %155, align 8
  %156 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1, i64 1
  %157 = load i32, ptr %5, align 4
  store i32 %157, ptr %156, align 4
  %158 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2
  store i8 -1, ptr %158, align 8, !tbaa !44
  %159 = load i8, ptr %3, align 1, !tbaa !44
  %160 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2, i64 1
  store i8 %159, ptr %160, align 1, !tbaa !44
  br label %184

161:                                              ; preds = %149
  %162 = zext nneg i8 %139 to i64
  %163 = getelementptr inbounds ptr, ptr %29, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !43
  store ptr %164, ptr %57, align 8, !tbaa !43
  br i1 %142, label %165, label %172

165:                                              ; preds = %161
  %166 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr null, ptr %166, align 8, !tbaa !43
  %167 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  %168 = load i32, ptr %4, align 4
  store i32 %168, ptr %167, align 8
  %169 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1, i64 1
  store i32 0, ptr %169, align 4
  %170 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2
  store i8 %139, ptr %170, align 8, !tbaa !44
  %171 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2, i64 1
  store i8 -1, ptr %171, align 1, !tbaa !44
  br label %184

172:                                              ; preds = %161
  %173 = zext nneg i8 %141 to i64
  %174 = getelementptr inbounds ptr, ptr %32, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !43
  %176 = getelementptr inbounds [2 x ptr], ptr %57, i64 0, i64 1
  store ptr %175, ptr %176, align 8, !tbaa !43
  %177 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1
  %178 = load i32, ptr %4, align 4
  store i32 %178, ptr %177, align 8
  %179 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 1, i64 1
  %180 = load i32, ptr %5, align 4
  store i32 %180, ptr %179, align 4
  %181 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2
  store i8 %139, ptr %181, align 8, !tbaa !44
  %182 = load i8, ptr %3, align 1, !tbaa !44
  %183 = getelementptr inbounds %struct.pic_motion_params, ptr %55, i64 %56, i32 2, i64 1
  store i8 %182, ptr %183, align 1, !tbaa !44
  br label %184

184:                                              ; preds = %144, %165, %172, %150, %78, %72, %125, %130, %91, %98
  %185 = load ptr, ptr %35, align 8, !tbaa !42
  %186 = getelementptr inbounds ptr, ptr %185, i64 %53
  %187 = getelementptr inbounds ptr, ptr %186, i64 1
  %188 = load ptr, ptr %186, align 8, !tbaa !43
  %189 = add nsw i32 %51, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.pic_motion_params, ptr %188, i64 %190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %191, ptr noundef nonnull align 8 dereferenceable(32) %57, i64 32, i1 false), !tbaa.struct !88
  %192 = load ptr, ptr %187, align 8, !tbaa !43
  %193 = getelementptr inbounds %struct.pic_motion_params, ptr %192, i64 %56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %193, ptr noundef nonnull align 8 dereferenceable(32) %57, i64 32, i1 false), !tbaa.struct !88
  %194 = load ptr, ptr %187, align 8, !tbaa !43
  %195 = getelementptr inbounds %struct.pic_motion_params, ptr %194, i64 %190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %195, ptr noundef nonnull align 8 dereferenceable(32) %57, i64 32, i1 false), !tbaa.struct !88
  br label %196

196:                                              ; preds = %37, %184
  %197 = add nuw nsw i64 %38, 1
  %198 = icmp eq i64 %197, 4
  br i1 %198, label %199, label %37, !llvm.loop !89

199:                                              ; preds = %196
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  br label %200

200:                                              ; preds = %199, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_direct_mv_info_temporal(ptr nocapture noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %4 = load i16, ptr %3, align 8, !tbaa !92
  %5 = icmp eq i16 %4, 8
  %6 = select i1 %5, i16 4, i16 %4
  %7 = sext i16 %6 to i64
  %8 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %7, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !93
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %13 = load i16, ptr %12, align 2, !tbaa !83
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = add nsw i64 %14, 1
  %18 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  %21 = load i8, ptr %20, align 4, !tbaa !44
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !44
  %25 = icmp eq i8 %24, 0
  %26 = or i1 %22, %25
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 2
  %28 = load i8, ptr %27, align 2, !tbaa !44
  %29 = icmp eq i8 %28, 0
  %30 = or i1 %26, %29
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 3
  %32 = load i8, ptr %31, align 1, !tbaa !44
  %33 = icmp eq i8 %32, 0
  %34 = or i1 %30, %33
  br i1 %34, label %35, label %919

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 125
  %37 = load ptr, ptr %36, align 8, !tbaa !74
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %41 = getelementptr inbounds %struct.video_par, ptr %39, i64 0, i32 2
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %43 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %44 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 25
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %46 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 1
  %47 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %48 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 1
  %49 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 5
  %50 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 3
  %51 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %52 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %53 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %54 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %55 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 36
  %56 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 1
  %57 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 1
  %58 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %59 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %61 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %62 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 36
  %63 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 38
  %64 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %65 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %66 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %67 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %68 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %69 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 36
  %70 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 27
  %71 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %14
  %72 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 27
  %73 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %14
  %74 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %75 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %76 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 35
  %77 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %78 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 1
  %79 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %80 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 1
  %81 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 5
  %82 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 3
  %83 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 36
  %84 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 1
  %85 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 1
  %86 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 36
  %87 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 38
  %88 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %89 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 36
  %90 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %91 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 36
  %92 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %93 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 35
  %94 = sext i32 %9 to i64
  %95 = sext i32 %11 to i64
  %96 = sext i32 %9 to i64
  %97 = sext i32 %9 to i64
  %98 = icmp eq i16 %6, 0
  %99 = icmp sgt i32 %9, 0
  %100 = icmp sgt i32 %9, 0
  br label %101

101:                                              ; preds = %35, %915
  %102 = phi i64 [ 0, %35 ], [ %916, %915 ]
  %103 = phi i32 [ 0, %35 ], [ %917, %915 ]
  %104 = shl nuw i32 %103, 1
  %105 = and i32 %104, 2
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %102
  %108 = load i8, ptr %107, align 1, !tbaa !44
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %915

110:                                              ; preds = %101
  %111 = and i64 %102, 9223372036854775806
  %112 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %102
  store i8 2, ptr %112, align 1, !tbaa !44
  %113 = trunc i64 %102 to i32
  %114 = and i32 %113, 2
  %115 = add nuw nsw i32 %114, 2
  %116 = trunc i64 %102 to i32
  %117 = shl i32 %116, 1
  %118 = and i32 %117, 2
  %119 = add nuw nsw i32 %118, 2
  br label %120

120:                                              ; preds = %110, %911
  %121 = phi i64 [ %111, %110 ], [ %914, %911 ]
  %122 = phi i32 [ %114, %110 ], [ %912, %911 ]
  %123 = load i32, ptr %40, align 8, !tbaa !85
  %124 = add nsw i32 %123, %118
  %125 = add i32 %119, %123
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %911

127:                                              ; preds = %120
  %128 = add nsw i32 %122, %11
  %129 = add i32 %122, %11
  %130 = sext i32 %123 to i64
  %131 = add nsw i64 %106, %130
  br label %132

132:                                              ; preds = %127, %905
  %133 = phi i64 [ %131, %127 ], [ %906, %905 ]
  %134 = load ptr, ptr %41, align 8, !tbaa !54
  %135 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %134, i64 0, i32 32
  %136 = load i32, ptr %135, align 4, !tbaa !80
  %137 = icmp eq i32 %136, 0
  %138 = load ptr, ptr %19, align 8, !tbaa !43
  %139 = getelementptr inbounds %struct.storable_picture, ptr %138, i64 0, i32 35
  %140 = load ptr, ptr %139, align 8, !tbaa !42
  br i1 %137, label %159, label %141

141:                                              ; preds = %132
  %142 = load i32, ptr %42, align 8, !tbaa !86
  %143 = add nsw i32 %142, %122
  %144 = and i32 %143, -2
  %145 = lshr i32 %143, 1
  %146 = and i32 %145, 1
  %147 = or disjoint i32 %146, %144
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds ptr, ptr %140, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !43
  %151 = trunc i64 %133 to i32
  %152 = and i32 %151, -2
  %153 = trunc i64 %133 to i32
  %154 = lshr i32 %153, 1
  %155 = and i32 %154, 1
  %156 = or disjoint i32 %155, %152
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.pic_motion_params, ptr %150, i64 %157
  br label %166

159:                                              ; preds = %132
  %160 = load i32, ptr %43, align 8, !tbaa !86
  %161 = add nsw i32 %160, %122
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %140, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !43
  %165 = getelementptr inbounds %struct.pic_motion_params, ptr %164, i64 %133
  br label %166

166:                                              ; preds = %159, %141
  %167 = phi ptr [ %158, %141 ], [ %165, %159 ]
  %168 = load i32, ptr %44, align 8, !tbaa !50
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %255, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %45, align 8, !tbaa !71
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %413

173:                                              ; preds = %170
  %174 = load ptr, ptr %46, align 8, !tbaa !43
  %175 = load ptr, ptr %174, align 8, !tbaa !43
  %176 = getelementptr inbounds %struct.storable_picture, ptr %175, i64 0, i32 73
  %177 = load i32, ptr %176, align 4, !tbaa !65
  switch i32 %177, label %413 [
    i32 3, label %178
    i32 1, label %188
  ]

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.storable_picture, ptr %175, i64 0, i32 37
  %180 = load ptr, ptr %179, align 8, !tbaa !72
  %181 = load i32, ptr %47, align 8, !tbaa !73
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, ptr %180, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !44
  %185 = icmp ne i8 %184, 0
  %186 = icmp eq i32 %177, 1
  %187 = or i1 %186, %185
  br i1 %187, label %188, label %413

188:                                              ; preds = %173, %178
  %189 = load i32, ptr %48, align 4, !tbaa !75
  %190 = load ptr, ptr %49, align 8, !tbaa !43
  %191 = load ptr, ptr %190, align 8, !tbaa !43
  %192 = getelementptr inbounds %struct.storable_picture, ptr %191, i64 0, i32 1
  %193 = load i32, ptr %192, align 4, !tbaa !75
  %194 = sub nsw i32 %189, %193
  %195 = tail call i32 @llvm.abs.i32(i32 %194, i1 true)
  %196 = load ptr, ptr %50, align 8, !tbaa !43
  %197 = load ptr, ptr %196, align 8, !tbaa !43
  %198 = getelementptr inbounds %struct.storable_picture, ptr %197, i64 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !75
  %200 = sub nsw i32 %189, %199
  %201 = tail call i32 @llvm.abs.i32(i32 %200, i1 true)
  %202 = icmp ugt i32 %195, %201
  br i1 %202, label %203, label %229

203:                                              ; preds = %188
  %204 = getelementptr inbounds %struct.storable_picture, ptr %197, i64 0, i32 35
  %205 = load ptr, ptr %204, align 8, !tbaa !42
  br i1 %137, label %221, label %206

206:                                              ; preds = %203
  %207 = load i32, ptr %53, align 8, !tbaa !86
  %208 = add nsw i32 %207, %122
  %209 = ashr i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %205, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !43
  %213 = trunc i64 %133 to i32
  %214 = and i32 %213, -2
  %215 = trunc i64 %133 to i32
  %216 = lshr i32 %215, 1
  %217 = and i32 %216, 1
  %218 = or disjoint i32 %217, %214
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.pic_motion_params, ptr %212, i64 %219
  br label %413

221:                                              ; preds = %203
  %222 = load i32, ptr %54, align 8, !tbaa !86
  %223 = add nsw i32 %222, %122
  %224 = ashr i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds ptr, ptr %205, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !43
  %228 = getelementptr inbounds %struct.pic_motion_params, ptr %227, i64 %133
  br label %413

229:                                              ; preds = %188
  %230 = getelementptr inbounds %struct.storable_picture, ptr %191, i64 0, i32 35
  %231 = load ptr, ptr %230, align 8, !tbaa !42
  br i1 %137, label %247, label %232

232:                                              ; preds = %229
  %233 = load i32, ptr %51, align 8, !tbaa !86
  %234 = add nsw i32 %233, %122
  %235 = ashr i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %231, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !43
  %239 = trunc i64 %133 to i32
  %240 = and i32 %239, -2
  %241 = trunc i64 %133 to i32
  %242 = lshr i32 %241, 1
  %243 = and i32 %242, 1
  %244 = or disjoint i32 %243, %240
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.pic_motion_params, ptr %238, i64 %245
  br label %413

247:                                              ; preds = %229
  %248 = load i32, ptr %52, align 8, !tbaa !86
  %249 = add nsw i32 %248, %122
  %250 = ashr i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds ptr, ptr %231, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !43
  %254 = getelementptr inbounds %struct.pic_motion_params, ptr %253, i64 %133
  br label %413

255:                                              ; preds = %166
  %256 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %134, i64 0, i32 30
  %257 = load i32, ptr %256, align 4, !tbaa !60
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %413

259:                                              ; preds = %255
  %260 = load i32, ptr %55, align 8, !tbaa !68
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %336

262:                                              ; preds = %259
  %263 = load ptr, ptr %56, align 8, !tbaa !43
  %264 = load ptr, ptr %263, align 8, !tbaa !43
  %265 = getelementptr inbounds %struct.storable_picture, ptr %264, i64 0, i32 73
  %266 = load i32, ptr %265, align 4, !tbaa !65
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %336, label %268

268:                                              ; preds = %262
  %269 = load i32, ptr %57, align 4, !tbaa !75
  %270 = load ptr, ptr %19, align 8, !tbaa !43
  %271 = getelementptr inbounds %struct.storable_picture, ptr %270, i64 0, i32 41
  %272 = load ptr, ptr %271, align 8, !tbaa !70
  %273 = getelementptr inbounds %struct.storable_picture, ptr %272, i64 0, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !75
  %275 = sub nsw i32 %269, %274
  %276 = tail call i32 @llvm.abs.i32(i32 %275, i1 true)
  %277 = getelementptr inbounds %struct.storable_picture, ptr %270, i64 0, i32 40
  %278 = load ptr, ptr %277, align 8, !tbaa !69
  %279 = getelementptr inbounds %struct.storable_picture, ptr %278, i64 0, i32 1
  %280 = load i32, ptr %279, align 4, !tbaa !75
  %281 = sub nsw i32 %269, %280
  %282 = tail call i32 @llvm.abs.i32(i32 %281, i1 true)
  %283 = icmp ugt i32 %276, %282
  br i1 %283, label %284, label %310

284:                                              ; preds = %268
  %285 = getelementptr inbounds %struct.storable_picture, ptr %278, i64 0, i32 35
  %286 = load ptr, ptr %285, align 8, !tbaa !42
  br i1 %137, label %302, label %287

287:                                              ; preds = %284
  %288 = load i32, ptr %60, align 8, !tbaa !86
  %289 = add nsw i32 %288, %122
  %290 = ashr i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds ptr, ptr %286, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !43
  %294 = trunc i64 %133 to i32
  %295 = and i32 %294, -2
  %296 = trunc i64 %133 to i32
  %297 = lshr i32 %296, 1
  %298 = and i32 %297, 1
  %299 = or disjoint i32 %298, %295
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.pic_motion_params, ptr %293, i64 %300
  br label %413

302:                                              ; preds = %284
  %303 = load i32, ptr %61, align 8, !tbaa !86
  %304 = add nsw i32 %303, %122
  %305 = ashr i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds ptr, ptr %286, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !43
  %309 = getelementptr inbounds %struct.pic_motion_params, ptr %308, i64 %133
  br label %413

310:                                              ; preds = %268
  %311 = getelementptr inbounds %struct.storable_picture, ptr %272, i64 0, i32 35
  %312 = load ptr, ptr %311, align 8, !tbaa !42
  br i1 %137, label %328, label %313

313:                                              ; preds = %310
  %314 = load i32, ptr %58, align 8, !tbaa !86
  %315 = add nsw i32 %314, %122
  %316 = ashr i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds ptr, ptr %312, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !43
  %320 = trunc i64 %133 to i32
  %321 = and i32 %320, -2
  %322 = trunc i64 %133 to i32
  %323 = lshr i32 %322, 1
  %324 = and i32 %323, 1
  %325 = or disjoint i32 %324, %321
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.pic_motion_params, ptr %319, i64 %326
  br label %413

328:                                              ; preds = %310
  %329 = load i32, ptr %59, align 8, !tbaa !86
  %330 = add nsw i32 %329, %122
  %331 = ashr i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds ptr, ptr %312, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !43
  %335 = getelementptr inbounds %struct.pic_motion_params, ptr %334, i64 %133
  br label %413

336:                                              ; preds = %262, %259
  br i1 %258, label %337, label %413

337:                                              ; preds = %336
  %338 = load i32, ptr %62, align 8, !tbaa !68
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %413, label %340

340:                                              ; preds = %337
  %341 = load i32, ptr %63, align 8, !tbaa !64
  %342 = load ptr, ptr %19, align 8, !tbaa !43
  %343 = load i32, ptr %342, align 8, !tbaa !66
  %344 = icmp eq i32 %341, %343
  br i1 %344, label %413, label %345

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.storable_picture, ptr %342, i64 0, i32 24
  %347 = load i32, ptr %346, align 8, !tbaa !67
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %413, label %349

349:                                              ; preds = %345
  %350 = icmp eq i32 %341, 1
  %351 = getelementptr inbounds %struct.storable_picture, ptr %342, i64 0, i32 42
  %352 = load ptr, ptr %351, align 8, !tbaa !94
  br i1 %350, label %353, label %383

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.storable_picture, ptr %352, i64 0, i32 40
  %355 = load ptr, ptr %354, align 8, !tbaa !69
  %356 = getelementptr inbounds %struct.storable_picture, ptr %355, i64 0, i32 35
  %357 = load ptr, ptr %356, align 8, !tbaa !42
  br i1 %137, label %376, label %358

358:                                              ; preds = %353
  %359 = load i32, ptr %66, align 8, !tbaa !86
  %360 = add nsw i32 %359, %122
  %361 = and i32 %360, -2
  %362 = lshr i32 %360, 1
  %363 = and i32 %362, 1
  %364 = or disjoint i32 %363, %361
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds ptr, ptr %357, i64 %365
  %367 = load ptr, ptr %366, align 8, !tbaa !43
  %368 = trunc i64 %133 to i32
  %369 = and i32 %368, -2
  %370 = trunc i64 %133 to i32
  %371 = lshr i32 %370, 1
  %372 = and i32 %371, 1
  %373 = or disjoint i32 %372, %369
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.pic_motion_params, ptr %367, i64 %374
  br label %413

376:                                              ; preds = %353
  %377 = load i32, ptr %67, align 8, !tbaa !86
  %378 = add nsw i32 %377, %122
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds ptr, ptr %357, i64 %379
  %381 = load ptr, ptr %380, align 8, !tbaa !43
  %382 = getelementptr inbounds %struct.pic_motion_params, ptr %381, i64 %133
  br label %413

383:                                              ; preds = %349
  %384 = getelementptr inbounds %struct.storable_picture, ptr %352, i64 0, i32 41
  %385 = load ptr, ptr %384, align 8, !tbaa !70
  %386 = getelementptr inbounds %struct.storable_picture, ptr %385, i64 0, i32 35
  %387 = load ptr, ptr %386, align 8, !tbaa !42
  br i1 %137, label %406, label %388

388:                                              ; preds = %383
  %389 = load i32, ptr %64, align 8, !tbaa !86
  %390 = add nsw i32 %389, %122
  %391 = and i32 %390, -2
  %392 = lshr i32 %390, 1
  %393 = and i32 %392, 1
  %394 = or disjoint i32 %393, %391
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds ptr, ptr %387, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !43
  %398 = trunc i64 %133 to i32
  %399 = and i32 %398, -2
  %400 = trunc i64 %133 to i32
  %401 = lshr i32 %400, 1
  %402 = and i32 %401, 1
  %403 = or disjoint i32 %402, %399
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.pic_motion_params, ptr %397, i64 %404
  br label %413

406:                                              ; preds = %383
  %407 = load i32, ptr %65, align 8, !tbaa !86
  %408 = add nsw i32 %407, %122
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds ptr, ptr %387, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !43
  %412 = getelementptr inbounds %struct.pic_motion_params, ptr %411, i64 %133
  br label %413

413:                                              ; preds = %255, %178, %173, %388, %406, %358, %376, %313, %328, %287, %302, %232, %247, %206, %221, %345, %340, %337, %336, %170
  %414 = phi ptr [ %167, %170 ], [ %167, %336 ], [ %167, %345 ], [ %167, %340 ], [ %167, %337 ], [ %220, %206 ], [ %228, %221 ], [ %246, %232 ], [ %254, %247 ], [ %301, %287 ], [ %309, %302 ], [ %327, %313 ], [ %335, %328 ], [ %375, %358 ], [ %382, %376 ], [ %405, %388 ], [ %412, %406 ], [ %167, %173 ], [ %167, %178 ], [ %167, %255 ]
  %415 = getelementptr inbounds %struct.pic_motion_params, ptr %414, i64 0, i32 2
  %416 = load i8, ptr %415, align 8, !tbaa !44
  %417 = icmp eq i8 %416, -1
  %418 = zext i1 %417 to i64
  %419 = getelementptr inbounds %struct.pic_motion_params, ptr %414, i64 0, i32 2, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !44
  %421 = icmp eq i8 %420, -1
  br i1 %421, label %422, label %451

422:                                              ; preds = %413
  %423 = load i32, ptr %92, align 4, !tbaa !84
  %424 = add nsw i32 %423, %122
  %425 = add i32 %129, %423
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %905

427:                                              ; preds = %422
  %428 = add nsw i64 %133, %96
  %429 = sext i32 %423 to i64
  %430 = add nsw i64 %121, %429
  br label %431

431:                                              ; preds = %427, %445
  %432 = phi i64 [ %430, %427 ], [ %446, %445 ]
  br i1 %100, label %433, label %445

433:                                              ; preds = %431, %433
  %434 = phi i64 [ %443, %433 ], [ %133, %431 ]
  %435 = load ptr, ptr %93, align 8, !tbaa !42
  %436 = getelementptr inbounds ptr, ptr %435, i64 %432
  %437 = load ptr, ptr %436, align 8, !tbaa !43
  %438 = getelementptr inbounds %struct.pic_motion_params, ptr %437, i64 %434
  %439 = load ptr, ptr %16, align 8, !tbaa !43
  store ptr %439, ptr %438, align 8, !tbaa !43
  %440 = load ptr, ptr %19, align 8, !tbaa !43
  %441 = getelementptr inbounds [2 x ptr], ptr %438, i64 0, i64 1
  store ptr %440, ptr %441, align 8, !tbaa !43
  %442 = getelementptr inbounds %struct.pic_motion_params, ptr %437, i64 %434, i32 1
  %443 = add i64 %434, 1
  %444 = icmp slt i64 %443, %428
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %442, i8 0, i64 10, i1 false)
  br i1 %444, label %433, label %445, !llvm.loop !95

445:                                              ; preds = %433, %431
  %446 = add nsw i64 %432, 1
  %447 = load i32, ptr %92, align 4, !tbaa !84
  %448 = add i32 %129, %447
  %449 = sext i32 %448 to i64
  %450 = icmp slt i64 %446, %449
  br i1 %450, label %431, label %905, !llvm.loop !96

451:                                              ; preds = %413
  br i1 %169, label %467, label %452

452:                                              ; preds = %451
  %453 = load i32, ptr %68, align 8, !tbaa !71
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %461, label %455

455:                                              ; preds = %452
  %456 = getelementptr inbounds [2 x ptr], ptr %414, i64 0, i64 %418
  %457 = load ptr, ptr %456, align 8, !tbaa !43
  %458 = load i32, ptr %457, align 8, !tbaa !66
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %481, label %460

460:                                              ; preds = %455
  br i1 %454, label %461, label %466

461:                                              ; preds = %452, %460
  %462 = getelementptr inbounds [2 x ptr], ptr %414, i64 0, i64 %418
  %463 = load ptr, ptr %462, align 8, !tbaa !43
  %464 = load i32, ptr %463, align 8, !tbaa !66
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %481

466:                                              ; preds = %461, %460
  br i1 %169, label %467, label %510

467:                                              ; preds = %451, %466
  %468 = load i32, ptr %69, align 8, !tbaa !68
  switch i32 %468, label %510 [
    i32 0, label %469
    i32 1, label %476
  ]

469:                                              ; preds = %467
  %470 = getelementptr inbounds [2 x ptr], ptr %414, i64 0, i64 %418
  %471 = load ptr, ptr %470, align 8, !tbaa !43
  %472 = load i32, ptr %471, align 8, !tbaa !66
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %481

474:                                              ; preds = %469
  %475 = icmp eq i32 %468, 1
  br i1 %475, label %476, label %510

476:                                              ; preds = %467, %474
  %477 = getelementptr inbounds [2 x ptr], ptr %414, i64 0, i64 %418
  %478 = load ptr, ptr %477, align 8, !tbaa !43
  %479 = load i32, ptr %478, align 8, !tbaa !66
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %510

481:                                              ; preds = %476, %469, %461, %455
  %482 = load i32, ptr %70, align 8, !tbaa !93
  %483 = load i8, ptr %71, align 1, !tbaa !44
  %484 = sext i8 %483 to i32
  %485 = tail call i32 @llvm.smin.i32(i32 %482, i32 %484)
  %486 = icmp sgt i32 %485, 0
  br i1 %486, label %487, label %537

487:                                              ; preds = %481
  %488 = load ptr, ptr %15, align 8, !tbaa !43
  %489 = getelementptr inbounds [2 x ptr], ptr %414, i64 0, i64 %418
  %490 = load ptr, ptr %489, align 8, !tbaa !43
  %491 = zext nneg i32 %485 to i64
  br label %492

492:                                              ; preds = %487, %507
  %493 = phi i64 [ 0, %487 ], [ %508, %507 ]
  %494 = getelementptr inbounds ptr, ptr %488, i64 %493
  %495 = load ptr, ptr %494, align 8, !tbaa !43
  %496 = getelementptr inbounds %struct.storable_picture, ptr %495, i64 0, i32 40
  %497 = load ptr, ptr %496, align 8, !tbaa !69
  %498 = icmp eq ptr %497, %490
  br i1 %498, label %531, label %499

499:                                              ; preds = %492
  %500 = getelementptr inbounds %struct.storable_picture, ptr %495, i64 0, i32 41
  %501 = load ptr, ptr %500, align 8, !tbaa !70
  %502 = icmp eq ptr %501, %490
  br i1 %502, label %533, label %503

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.storable_picture, ptr %495, i64 0, i32 42
  %505 = load ptr, ptr %504, align 8, !tbaa !94
  %506 = icmp eq ptr %505, %490
  br i1 %506, label %535, label %507

507:                                              ; preds = %503
  %508 = add nuw nsw i64 %493, 1
  %509 = icmp eq i64 %508, %491
  br i1 %509, label %537, label %492, !llvm.loop !97

510:                                              ; preds = %467, %476, %474, %466
  %511 = load i32, ptr %72, align 8, !tbaa !93
  %512 = load i8, ptr %73, align 1, !tbaa !44
  %513 = sext i8 %512 to i32
  %514 = tail call i32 @llvm.smin.i32(i32 %511, i32 %513)
  %515 = icmp sgt i32 %514, 0
  br i1 %515, label %516, label %537

516:                                              ; preds = %510
  %517 = load ptr, ptr %15, align 8, !tbaa !43
  %518 = getelementptr inbounds [2 x ptr], ptr %414, i64 0, i64 %418
  %519 = load ptr, ptr %518, align 8, !tbaa !43
  %520 = zext nneg i32 %514 to i64
  br label %521

521:                                              ; preds = %516, %526
  %522 = phi i64 [ 0, %516 ], [ %527, %526 ]
  %523 = getelementptr inbounds ptr, ptr %517, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !43
  %525 = icmp eq ptr %524, %519
  br i1 %525, label %529, label %526

526:                                              ; preds = %521
  %527 = add nuw nsw i64 %522, 1
  %528 = icmp eq i64 %527, %520
  br i1 %528, label %537, label %521, !llvm.loop !98

529:                                              ; preds = %521
  %530 = trunc i64 %522 to i32
  br label %537

531:                                              ; preds = %492
  %532 = trunc i64 %493 to i32
  br label %537

533:                                              ; preds = %499
  %534 = trunc i64 %493 to i32
  br label %537

535:                                              ; preds = %503
  %536 = trunc i64 %493 to i32
  br label %537

537:                                              ; preds = %531, %533, %535, %507, %529, %526, %481, %510
  %538 = phi i32 [ -1, %510 ], [ -1, %481 ], [ %530, %529 ], [ -135792468, %526 ], [ %532, %531 ], [ %534, %533 ], [ %536, %535 ], [ -135792468, %507 ]
  %539 = icmp eq i32 %538, -135792468
  br i1 %539, label %904, label %540

540:                                              ; preds = %537
  br i1 %98, label %905, label %541

541:                                              ; preds = %540
  %542 = add nsw i64 %133, %97
  %543 = sext i32 %538 to i64
  %544 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 60, i64 %14, i64 %543
  %545 = trunc i32 %538 to i8
  %546 = getelementptr inbounds ptr, ptr %16, i64 %543
  br label %547

547:                                              ; preds = %541, %901
  %548 = phi i32 [ %122, %541 ], [ %902, %901 ]
  br i1 %99, label %549, label %901

549:                                              ; preds = %547
  %550 = load i32, ptr %75, align 8, !tbaa !86
  %551 = add nsw i32 %550, %548
  %552 = load i32, ptr %74, align 4, !tbaa !84
  %553 = add nsw i32 %552, %548
  %554 = and i32 %551, -2
  %555 = lshr i32 %551, 1
  %556 = and i32 %555, 1
  %557 = or disjoint i32 %556, %554
  %558 = sext i32 %557 to i64
  %559 = sext i32 %551 to i64
  %560 = sext i32 %553 to i64
  %561 = ashr i32 %551, 1
  %562 = sext i32 %561 to i64
  %563 = ashr i32 %551, 1
  %564 = sext i32 %563 to i64
  %565 = ashr i32 %551, 1
  %566 = sext i32 %565 to i64
  %567 = ashr i32 %551, 1
  %568 = sext i32 %567 to i64
  %569 = ashr i32 %551, 1
  %570 = sext i32 %569 to i64
  %571 = ashr i32 %551, 1
  %572 = sext i32 %571 to i64
  %573 = ashr i32 %551, 1
  %574 = sext i32 %573 to i64
  %575 = ashr i32 %551, 1
  %576 = sext i32 %575 to i64
  %577 = and i32 %551, -2
  %578 = lshr i32 %551, 1
  %579 = and i32 %578, 1
  %580 = or disjoint i32 %579, %577
  %581 = sext i32 %580 to i64
  %582 = sext i32 %551 to i64
  %583 = and i32 %551, -2
  %584 = lshr i32 %551, 1
  %585 = and i32 %584, 1
  %586 = or disjoint i32 %585, %583
  %587 = sext i32 %586 to i64
  %588 = sext i32 %551 to i64
  br label %589

589:                                              ; preds = %549, %898
  %590 = phi i64 [ %133, %549 ], [ %899, %898 ]
  %591 = load ptr, ptr %41, align 8, !tbaa !54
  %592 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %591, i64 0, i32 32
  %593 = load i32, ptr %592, align 4, !tbaa !80
  %594 = icmp eq i32 %593, 0
  %595 = load ptr, ptr %19, align 8, !tbaa !43
  %596 = getelementptr inbounds %struct.storable_picture, ptr %595, i64 0, i32 35
  %597 = load ptr, ptr %596, align 8, !tbaa !42
  br i1 %594, label %609, label %598

598:                                              ; preds = %589
  %599 = getelementptr inbounds ptr, ptr %597, i64 %558
  %600 = load ptr, ptr %599, align 8, !tbaa !43
  %601 = trunc i64 %590 to i32
  %602 = and i32 %601, -2
  %603 = trunc i64 %590 to i32
  %604 = lshr i32 %603, 1
  %605 = and i32 %604, 1
  %606 = or disjoint i32 %605, %602
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds %struct.pic_motion_params, ptr %600, i64 %607
  br label %613

609:                                              ; preds = %589
  %610 = getelementptr inbounds ptr, ptr %597, i64 %559
  %611 = load ptr, ptr %610, align 8, !tbaa !43
  %612 = getelementptr inbounds %struct.pic_motion_params, ptr %611, i64 %590
  br label %613

613:                                              ; preds = %609, %598
  %614 = phi ptr [ %608, %598 ], [ %612, %609 ]
  %615 = load ptr, ptr %76, align 8, !tbaa !42
  %616 = getelementptr inbounds ptr, ptr %615, i64 %560
  %617 = load ptr, ptr %616, align 8, !tbaa !43
  %618 = getelementptr inbounds %struct.pic_motion_params, ptr %617, i64 %590
  %619 = load i32, ptr %44, align 8, !tbaa !50
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %690, label %621

621:                                              ; preds = %613
  %622 = load i32, ptr %77, align 8, !tbaa !71
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %812

624:                                              ; preds = %621
  %625 = load ptr, ptr %78, align 8, !tbaa !43
  %626 = load ptr, ptr %625, align 8, !tbaa !43
  %627 = getelementptr inbounds %struct.storable_picture, ptr %626, i64 0, i32 73
  %628 = load i32, ptr %627, align 4, !tbaa !65
  switch i32 %628, label %812 [
    i32 3, label %629
    i32 1, label %639
  ]

629:                                              ; preds = %624
  %630 = getelementptr inbounds %struct.storable_picture, ptr %626, i64 0, i32 37
  %631 = load ptr, ptr %630, align 8, !tbaa !72
  %632 = load i32, ptr %79, align 8, !tbaa !73
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i8, ptr %631, i64 %633
  %635 = load i8, ptr %634, align 1, !tbaa !44
  %636 = icmp ne i8 %635, 0
  %637 = icmp eq i32 %628, 1
  %638 = or i1 %637, %636
  br i1 %638, label %639, label %812

639:                                              ; preds = %624, %629
  %640 = load i32, ptr %80, align 4, !tbaa !75
  %641 = load ptr, ptr %81, align 8, !tbaa !43
  %642 = load ptr, ptr %641, align 8, !tbaa !43
  %643 = getelementptr inbounds %struct.storable_picture, ptr %642, i64 0, i32 1
  %644 = load i32, ptr %643, align 4, !tbaa !75
  %645 = sub nsw i32 %640, %644
  %646 = tail call i32 @llvm.abs.i32(i32 %645, i1 true)
  %647 = load ptr, ptr %82, align 8, !tbaa !43
  %648 = load ptr, ptr %647, align 8, !tbaa !43
  %649 = getelementptr inbounds %struct.storable_picture, ptr %648, i64 0, i32 1
  %650 = load i32, ptr %649, align 4, !tbaa !75
  %651 = sub nsw i32 %640, %650
  %652 = tail call i32 @llvm.abs.i32(i32 %651, i1 true)
  %653 = icmp ugt i32 %646, %652
  br i1 %653, label %654, label %672

654:                                              ; preds = %639
  %655 = getelementptr inbounds %struct.storable_picture, ptr %648, i64 0, i32 35
  %656 = load ptr, ptr %655, align 8, !tbaa !42
  br i1 %594, label %668, label %657

657:                                              ; preds = %654
  %658 = getelementptr inbounds ptr, ptr %656, i64 %566
  %659 = load ptr, ptr %658, align 8, !tbaa !43
  %660 = trunc i64 %590 to i32
  %661 = and i32 %660, -2
  %662 = trunc i64 %590 to i32
  %663 = lshr i32 %662, 1
  %664 = and i32 %663, 1
  %665 = or disjoint i32 %664, %661
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds %struct.pic_motion_params, ptr %659, i64 %666
  br label %812

668:                                              ; preds = %654
  %669 = getelementptr inbounds ptr, ptr %656, i64 %568
  %670 = load ptr, ptr %669, align 8, !tbaa !43
  %671 = getelementptr inbounds %struct.pic_motion_params, ptr %670, i64 %590
  br label %812

672:                                              ; preds = %639
  %673 = getelementptr inbounds %struct.storable_picture, ptr %642, i64 0, i32 35
  %674 = load ptr, ptr %673, align 8, !tbaa !42
  br i1 %594, label %686, label %675

675:                                              ; preds = %672
  %676 = getelementptr inbounds ptr, ptr %674, i64 %562
  %677 = load ptr, ptr %676, align 8, !tbaa !43
  %678 = trunc i64 %590 to i32
  %679 = and i32 %678, -2
  %680 = trunc i64 %590 to i32
  %681 = lshr i32 %680, 1
  %682 = and i32 %681, 1
  %683 = or disjoint i32 %682, %679
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.pic_motion_params, ptr %677, i64 %684
  br label %812

686:                                              ; preds = %672
  %687 = getelementptr inbounds ptr, ptr %674, i64 %564
  %688 = load ptr, ptr %687, align 8, !tbaa !43
  %689 = getelementptr inbounds %struct.pic_motion_params, ptr %688, i64 %590
  br label %812

690:                                              ; preds = %613
  %691 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %591, i64 0, i32 30
  %692 = load i32, ptr %691, align 4, !tbaa !60
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %812

694:                                              ; preds = %690
  %695 = load i32, ptr %83, align 8, !tbaa !68
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %755

697:                                              ; preds = %694
  %698 = load ptr, ptr %84, align 8, !tbaa !43
  %699 = load ptr, ptr %698, align 8, !tbaa !43
  %700 = getelementptr inbounds %struct.storable_picture, ptr %699, i64 0, i32 73
  %701 = load i32, ptr %700, align 4, !tbaa !65
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %755, label %703

703:                                              ; preds = %697
  %704 = load i32, ptr %85, align 4, !tbaa !75
  %705 = load ptr, ptr %19, align 8, !tbaa !43
  %706 = getelementptr inbounds %struct.storable_picture, ptr %705, i64 0, i32 41
  %707 = load ptr, ptr %706, align 8, !tbaa !70
  %708 = getelementptr inbounds %struct.storable_picture, ptr %707, i64 0, i32 1
  %709 = load i32, ptr %708, align 4, !tbaa !75
  %710 = sub nsw i32 %704, %709
  %711 = tail call i32 @llvm.abs.i32(i32 %710, i1 true)
  %712 = getelementptr inbounds %struct.storable_picture, ptr %705, i64 0, i32 40
  %713 = load ptr, ptr %712, align 8, !tbaa !69
  %714 = getelementptr inbounds %struct.storable_picture, ptr %713, i64 0, i32 1
  %715 = load i32, ptr %714, align 4, !tbaa !75
  %716 = sub nsw i32 %704, %715
  %717 = tail call i32 @llvm.abs.i32(i32 %716, i1 true)
  %718 = icmp ugt i32 %711, %717
  br i1 %718, label %719, label %737

719:                                              ; preds = %703
  %720 = getelementptr inbounds %struct.storable_picture, ptr %713, i64 0, i32 35
  %721 = load ptr, ptr %720, align 8, !tbaa !42
  br i1 %594, label %733, label %722

722:                                              ; preds = %719
  %723 = getelementptr inbounds ptr, ptr %721, i64 %574
  %724 = load ptr, ptr %723, align 8, !tbaa !43
  %725 = trunc i64 %590 to i32
  %726 = and i32 %725, -2
  %727 = trunc i64 %590 to i32
  %728 = lshr i32 %727, 1
  %729 = and i32 %728, 1
  %730 = or disjoint i32 %729, %726
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.pic_motion_params, ptr %724, i64 %731
  br label %812

733:                                              ; preds = %719
  %734 = getelementptr inbounds ptr, ptr %721, i64 %576
  %735 = load ptr, ptr %734, align 8, !tbaa !43
  %736 = getelementptr inbounds %struct.pic_motion_params, ptr %735, i64 %590
  br label %812

737:                                              ; preds = %703
  %738 = getelementptr inbounds %struct.storable_picture, ptr %707, i64 0, i32 35
  %739 = load ptr, ptr %738, align 8, !tbaa !42
  br i1 %594, label %751, label %740

740:                                              ; preds = %737
  %741 = getelementptr inbounds ptr, ptr %739, i64 %570
  %742 = load ptr, ptr %741, align 8, !tbaa !43
  %743 = trunc i64 %590 to i32
  %744 = and i32 %743, -2
  %745 = trunc i64 %590 to i32
  %746 = lshr i32 %745, 1
  %747 = and i32 %746, 1
  %748 = or disjoint i32 %747, %744
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.pic_motion_params, ptr %742, i64 %749
  br label %812

751:                                              ; preds = %737
  %752 = getelementptr inbounds ptr, ptr %739, i64 %572
  %753 = load ptr, ptr %752, align 8, !tbaa !43
  %754 = getelementptr inbounds %struct.pic_motion_params, ptr %753, i64 %590
  br label %812

755:                                              ; preds = %697, %694
  br i1 %693, label %756, label %812

756:                                              ; preds = %755
  %757 = load i32, ptr %86, align 8, !tbaa !68
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %812, label %759

759:                                              ; preds = %756
  %760 = load i32, ptr %87, align 8, !tbaa !64
  %761 = load ptr, ptr %19, align 8, !tbaa !43
  %762 = load i32, ptr %761, align 8, !tbaa !66
  %763 = icmp eq i32 %760, %762
  br i1 %763, label %812, label %764

764:                                              ; preds = %759
  %765 = getelementptr inbounds %struct.storable_picture, ptr %761, i64 0, i32 24
  %766 = load i32, ptr %765, align 8, !tbaa !67
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %812, label %768

768:                                              ; preds = %764
  %769 = icmp eq i32 %760, 1
  %770 = getelementptr inbounds %struct.storable_picture, ptr %761, i64 0, i32 42
  %771 = load ptr, ptr %770, align 8, !tbaa !94
  br i1 %769, label %772, label %792

772:                                              ; preds = %768
  %773 = getelementptr inbounds %struct.storable_picture, ptr %771, i64 0, i32 40
  %774 = load ptr, ptr %773, align 8, !tbaa !69
  %775 = getelementptr inbounds %struct.storable_picture, ptr %774, i64 0, i32 35
  %776 = load ptr, ptr %775, align 8, !tbaa !42
  br i1 %594, label %788, label %777

777:                                              ; preds = %772
  %778 = getelementptr inbounds ptr, ptr %776, i64 %587
  %779 = load ptr, ptr %778, align 8, !tbaa !43
  %780 = trunc i64 %590 to i32
  %781 = and i32 %780, -2
  %782 = trunc i64 %590 to i32
  %783 = lshr i32 %782, 1
  %784 = and i32 %783, 1
  %785 = or disjoint i32 %784, %781
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.pic_motion_params, ptr %779, i64 %786
  br label %812

788:                                              ; preds = %772
  %789 = getelementptr inbounds ptr, ptr %776, i64 %588
  %790 = load ptr, ptr %789, align 8, !tbaa !43
  %791 = getelementptr inbounds %struct.pic_motion_params, ptr %790, i64 %590
  br label %812

792:                                              ; preds = %768
  %793 = getelementptr inbounds %struct.storable_picture, ptr %771, i64 0, i32 41
  %794 = load ptr, ptr %793, align 8, !tbaa !70
  %795 = getelementptr inbounds %struct.storable_picture, ptr %794, i64 0, i32 35
  %796 = load ptr, ptr %795, align 8, !tbaa !42
  br i1 %594, label %808, label %797

797:                                              ; preds = %792
  %798 = getelementptr inbounds ptr, ptr %796, i64 %581
  %799 = load ptr, ptr %798, align 8, !tbaa !43
  %800 = trunc i64 %590 to i32
  %801 = and i32 %800, -2
  %802 = trunc i64 %590 to i32
  %803 = lshr i32 %802, 1
  %804 = and i32 %803, 1
  %805 = or disjoint i32 %804, %801
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds %struct.pic_motion_params, ptr %799, i64 %806
  br label %812

808:                                              ; preds = %792
  %809 = getelementptr inbounds ptr, ptr %796, i64 %582
  %810 = load ptr, ptr %809, align 8, !tbaa !43
  %811 = getelementptr inbounds %struct.pic_motion_params, ptr %810, i64 %590
  br label %812

812:                                              ; preds = %690, %629, %624, %797, %808, %777, %788, %740, %751, %722, %733, %675, %686, %657, %668, %764, %759, %756, %755, %621
  %813 = phi ptr [ %614, %621 ], [ %614, %755 ], [ %614, %764 ], [ %614, %759 ], [ %614, %756 ], [ %667, %657 ], [ %671, %668 ], [ %685, %675 ], [ %689, %686 ], [ %732, %722 ], [ %736, %733 ], [ %750, %740 ], [ %754, %751 ], [ %787, %777 ], [ %791, %788 ], [ %807, %797 ], [ %811, %808 ], [ %614, %624 ], [ %614, %629 ], [ %614, %690 ]
  %814 = getelementptr inbounds %struct.pic_motion_params, ptr %813, i64 0, i32 1, i64 %418
  %815 = getelementptr inbounds %struct.pic_motion_params, ptr %813, i64 0, i32 1, i64 %418, i32 1
  %816 = load i16, ptr %815, align 2, !tbaa !47
  %817 = sext i16 %816 to i32
  br i1 %620, label %827, label %818

818:                                              ; preds = %812
  %819 = load i32, ptr %88, align 8, !tbaa !71
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %826

821:                                              ; preds = %818
  %822 = getelementptr inbounds [2 x ptr], ptr %813, i64 0, i64 %418
  %823 = load ptr, ptr %822, align 8, !tbaa !43
  %824 = load i32, ptr %823, align 8, !tbaa !66
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %835

826:                                              ; preds = %821, %818
  br i1 %620, label %827, label %838

827:                                              ; preds = %812, %826
  %828 = load i32, ptr %89, align 8, !tbaa !68
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %837

830:                                              ; preds = %827
  %831 = getelementptr inbounds [2 x ptr], ptr %813, i64 0, i64 %418
  %832 = load ptr, ptr %831, align 8, !tbaa !43
  %833 = load i32, ptr %832, align 8, !tbaa !66
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %837, label %835

835:                                              ; preds = %830, %821
  %836 = shl nsw i32 %817, 1
  br label %857

837:                                              ; preds = %830, %827
  br i1 %620, label %847, label %838

838:                                              ; preds = %826, %837
  %839 = load i32, ptr %90, align 8, !tbaa !71
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %846, label %841

841:                                              ; preds = %838
  %842 = getelementptr inbounds [2 x ptr], ptr %813, i64 0, i64 %418
  %843 = load ptr, ptr %842, align 8, !tbaa !43
  %844 = load i32, ptr %843, align 8, !tbaa !66
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %855, label %846

846:                                              ; preds = %841, %838
  br i1 %620, label %847, label %857

847:                                              ; preds = %837, %846
  %848 = load i32, ptr %91, align 8, !tbaa !68
  %849 = icmp eq i32 %848, 1
  br i1 %849, label %850, label %857

850:                                              ; preds = %847
  %851 = getelementptr inbounds [2 x ptr], ptr %813, i64 0, i64 %418
  %852 = load ptr, ptr %851, align 8, !tbaa !43
  %853 = load i32, ptr %852, align 8, !tbaa !66
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %857

855:                                              ; preds = %850, %841
  %856 = sdiv i32 %817, 2
  br label %857

857:                                              ; preds = %846, %847, %850, %855, %835
  %858 = phi i32 [ %856, %855 ], [ %817, %846 ], [ %817, %850 ], [ %817, %847 ], [ %836, %835 ]
  %859 = load i32, ptr %544, align 4, !tbaa !93
  %860 = getelementptr inbounds %struct.pic_motion_params, ptr %617, i64 %590, i32 2
  store i8 %545, ptr %860, align 8, !tbaa !44
  %861 = getelementptr inbounds %struct.pic_motion_params, ptr %617, i64 %590, i32 2, i64 1
  store i8 0, ptr %861, align 1, !tbaa !44
  %862 = load ptr, ptr %546, align 8, !tbaa !43
  store ptr %862, ptr %618, align 8, !tbaa !43
  %863 = load ptr, ptr %19, align 8, !tbaa !43
  %864 = getelementptr inbounds [2 x ptr], ptr %618, i64 0, i64 1
  store ptr %863, ptr %864, align 8, !tbaa !43
  %865 = icmp eq i32 %859, 9999
  br i1 %865, label %873, label %866

866:                                              ; preds = %857
  %867 = load ptr, ptr %15, align 8, !tbaa !43
  %868 = getelementptr inbounds ptr, ptr %867, i64 %543
  %869 = load ptr, ptr %868, align 8, !tbaa !43
  %870 = getelementptr inbounds %struct.storable_picture, ptr %869, i64 0, i32 10
  %871 = load i8, ptr %870, align 8, !tbaa !34
  %872 = icmp eq i8 %871, 0
  br i1 %872, label %879, label %873

873:                                              ; preds = %866, %857
  %874 = load i16, ptr %814, align 4, !tbaa !45
  %875 = getelementptr inbounds %struct.pic_motion_params, ptr %617, i64 %590, i32 1
  store i16 %874, ptr %875, align 8, !tbaa !45
  %876 = trunc i32 %858 to i16
  %877 = getelementptr inbounds %struct.MotionVector, ptr %875, i64 0, i32 1
  store i16 %876, ptr %877, align 2, !tbaa !47
  %878 = getelementptr inbounds %struct.pic_motion_params, ptr %617, i64 %590, i32 1, i64 1
  store i32 0, ptr %878, align 4
  br label %898

879:                                              ; preds = %866
  %880 = load i16, ptr %814, align 4, !tbaa !45
  %881 = sext i16 %880 to i32
  %882 = mul nsw i32 %859, %881
  %883 = add nsw i32 %882, 128
  %884 = lshr i32 %883, 8
  %885 = trunc i32 %884 to i16
  %886 = getelementptr inbounds %struct.pic_motion_params, ptr %617, i64 %590, i32 1
  store i16 %885, ptr %886, align 8, !tbaa !45
  %887 = mul nsw i32 %859, %858
  %888 = add nsw i32 %887, 128
  %889 = lshr i32 %888, 8
  %890 = trunc i32 %889 to i16
  %891 = getelementptr inbounds %struct.MotionVector, ptr %886, i64 0, i32 1
  store i16 %890, ptr %891, align 2, !tbaa !47
  %892 = load i16, ptr %814, align 4, !tbaa !45
  %893 = sub i16 %885, %892
  %894 = getelementptr inbounds %struct.pic_motion_params, ptr %617, i64 %590, i32 1, i64 1
  store i16 %893, ptr %894, align 4, !tbaa !45
  %895 = sub i32 %889, %858
  %896 = trunc i32 %895 to i16
  %897 = getelementptr inbounds %struct.pic_motion_params, ptr %617, i64 %590, i32 1, i64 1, i32 1
  store i16 %896, ptr %897, align 2, !tbaa !47
  br label %898

898:                                              ; preds = %879, %873
  %899 = add i64 %590, 1
  %900 = icmp slt i64 %899, %542
  br i1 %900, label %589, label %901, !llvm.loop !99

901:                                              ; preds = %898, %547
  %902 = add nsw i32 %548, 1
  %903 = icmp slt i32 %902, %128
  br i1 %903, label %547, label %905, !llvm.loop !100

904:                                              ; preds = %537
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #8
  br label %905

905:                                              ; preds = %901, %445, %540, %422, %904
  %906 = add i64 %133, %94
  %907 = load i32, ptr %40, align 8, !tbaa !85
  %908 = add i32 %119, %907
  %909 = sext i32 %908 to i64
  %910 = icmp slt i64 %906, %909
  br i1 %910, label %132, label %911, !llvm.loop !101

911:                                              ; preds = %905, %120
  %912 = add nsw i32 %122, %11
  %913 = icmp slt i32 %912, %115
  %914 = add i64 %121, %95
  br i1 %913, label %120, label %915, !llvm.loop !102

915:                                              ; preds = %911, %101
  %916 = add nuw nsw i64 %102, 1
  %917 = add nuw nsw i32 %103, 1
  %918 = icmp eq i64 %916, 4
  br i1 %918, label %919, label %101, !llvm.loop !103

919:                                              ; preds = %915, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_direct_mv_info_spatial_4x4(ptr noundef %0) #3 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.MotionVector, align 4
  %5 = alloca %struct.MotionVector, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  %7 = load i8, ptr %6, align 4, !tbaa !44
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !44
  %11 = icmp eq i8 %10, 0
  %12 = or i1 %8, %11
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 2
  %14 = load i8, ptr %13, align 2, !tbaa !44
  %15 = icmp eq i8 %14, 0
  %16 = or i1 %12, %15
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !44
  %19 = icmp eq i8 %18, 0
  %20 = or i1 %16, %19
  br i1 %20, label %21, label %254

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = load ptr, ptr %0, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.video_par, ptr %23, i64 0, i32 136
  %26 = load ptr, ptr %25, align 8, !tbaa !104
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %28 = load i16, ptr %27, align 2, !tbaa !83
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds %struct.slice, ptr %24, i64 0, i32 56, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = add nsw i64 %29, 1
  %33 = getelementptr inbounds %struct.slice, ptr %24, i64 0, i32 56, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %36 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %37 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %38 = getelementptr inbounds %struct.storable_picture, ptr %26, i64 0, i32 35
  br label %39

39:                                               ; preds = %21, %249
  %40 = phi i64 [ 0, %21 ], [ %250, %249 ]
  %41 = phi i32 [ 0, %21 ], [ %251, %249 ]
  %42 = trunc i64 %40 to i32
  %43 = shl nuw i32 %41, 1
  %44 = and i32 %43, 2
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %40
  %47 = load i8, ptr %46, align 1, !tbaa !44
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %249

49:                                               ; preds = %39
  %50 = trunc i64 %40 to i32
  %51 = shl i32 %50, 1
  %52 = and i32 %51, 2
  %53 = trunc i64 %40 to i32
  %54 = and i32 %53, 2
  %55 = add nuw nsw i32 %52, 2
  %56 = or i32 %42, 1
  br label %57

57:                                               ; preds = %49, %246
  %58 = phi i32 [ %54, %49 ], [ %247, %246 ]
  %59 = load i32, ptr %37, align 8, !tbaa !85
  %60 = add nsw i32 %59, %52
  %61 = add i32 %55, %59
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %246

63:                                               ; preds = %57
  %64 = load i32, ptr %36, align 4, !tbaa !84
  %65 = add nsw i32 %64, %58
  %66 = sext i32 %65 to i64
  %67 = sext i32 %59 to i64
  %68 = add nsw i64 %45, %67
  br label %69

69:                                               ; preds = %63, %240
  %70 = phi i64 [ %68, %63 ], [ %241, %240 ]
  %71 = load ptr, ptr %38, align 8, !tbaa !42
  %72 = getelementptr inbounds ptr, ptr %71, i64 %66
  %73 = load ptr, ptr %72, align 8, !tbaa !43
  %74 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70
  %75 = load i8, ptr %2, align 1, !tbaa !44
  %76 = icmp eq i8 %75, 0
  %77 = load i8, ptr %3, align 1
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %80, label %191

80:                                               ; preds = %69
  %81 = load ptr, ptr %34, align 8, !tbaa !43
  %82 = getelementptr inbounds %struct.storable_picture, ptr %81, i64 0, i32 10
  %83 = load i8, ptr %82, align 8, !tbaa !34
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %80
  %86 = load i32, ptr %35, align 8, !tbaa !86
  %87 = add nsw i32 %86, %58
  %88 = getelementptr inbounds %struct.storable_picture, ptr %81, i64 0, i32 35
  %89 = load ptr, ptr %88, align 8, !tbaa !42
  %90 = sext i32 %87 to i64
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !43
  %93 = getelementptr inbounds %struct.pic_motion_params, ptr %92, i64 %70, i32 2
  %94 = load i8, ptr %93, align 8, !tbaa !44
  switch i8 %94, label %122 [
    i8 0, label %95
    i8 -1, label %107
  ]

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.pic_motion_params, ptr %92, i64 %70, i32 1
  %97 = load i16, ptr %96, align 8, !tbaa !45
  %98 = call i16 @llvm.abs.i16(i16 %97, i1 false)
  %99 = icmp ult i16 %98, 2
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.MotionVector, ptr %96, i64 0, i32 1
  %102 = load i16, ptr %101, align 2, !tbaa !47
  %103 = call i16 @llvm.abs.i16(i16 %102, i1 false)
  %104 = icmp ult i16 %103, 2
  br i1 %104, label %122, label %105

105:                                              ; preds = %100, %95
  %106 = icmp eq i8 %94, -1
  br i1 %106, label %107, label %122

107:                                              ; preds = %105, %85
  %108 = getelementptr inbounds %struct.pic_motion_params, ptr %92, i64 %70, i32 2, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !44
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.pic_motion_params, ptr %92, i64 %70, i32 1, i64 1
  %113 = load i16, ptr %112, align 4, !tbaa !45
  %114 = call i16 @llvm.abs.i16(i16 %113, i1 false)
  %115 = icmp ult i16 %114, 2
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.pic_motion_params, ptr %92, i64 %70, i32 1, i64 1, i32 1
  %118 = load i16, ptr %117, align 2, !tbaa !47
  %119 = call i16 @llvm.abs.i16(i16 %118, i1 false)
  %120 = icmp ugt i16 %119, 1
  %121 = zext i1 %120 to i32
  br label %122

122:                                              ; preds = %80, %85, %100, %105, %107, %111, %116
  %123 = phi i32 [ 1, %80 ], [ 0, %100 ], [ 1, %111 ], [ 1, %107 ], [ 1, %105 ], [ %121, %116 ], [ 1, %85 ]
  %124 = icmp eq i32 %123, 0
  %125 = icmp eq i8 %77, -1
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  br i1 %124, label %127, label %131

127:                                              ; preds = %126
  %128 = load ptr, ptr %31, align 8, !tbaa !43
  store ptr %128, ptr %74, align 8, !tbaa !43
  %129 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  %130 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %129, i8 0, i64 17, i1 false)
  store i8 -1, ptr %130, align 1, !tbaa !44
  br label %240

131:                                              ; preds = %126
  %132 = sext i8 %75 to i64
  %133 = getelementptr inbounds ptr, ptr %31, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !43
  store ptr %134, ptr %74, align 8, !tbaa !43
  %135 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  store ptr null, ptr %135, align 8, !tbaa !43
  %136 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1
  %137 = load i32, ptr %4, align 4
  store i32 %137, ptr %136, align 8
  %138 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1, i64 1
  store i32 0, ptr %138, align 4
  %139 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2
  store i8 %75, ptr %139, align 8, !tbaa !44
  %140 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2, i64 1
  store i8 -1, ptr %140, align 1, !tbaa !44
  br label %240

141:                                              ; preds = %122
  %142 = icmp eq i8 %75, -1
  br i1 %142, label %143, label %161

143:                                              ; preds = %141
  br i1 %124, label %144, label %150

144:                                              ; preds = %143
  %145 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  store ptr %81, ptr %145, align 8, !tbaa !43
  %146 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1
  store i32 0, ptr %146, align 8
  %147 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1, i64 1
  store i32 0, ptr %147, align 4
  %148 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2
  store i8 -1, ptr %148, align 8, !tbaa !44
  %149 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2, i64 1
  store i8 0, ptr %149, align 1, !tbaa !44
  br label %240

150:                                              ; preds = %143
  %151 = sext i8 %77 to i64
  %152 = getelementptr inbounds ptr, ptr %34, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !43
  %154 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  store ptr %153, ptr %154, align 8, !tbaa !43
  %155 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1
  store i32 0, ptr %155, align 8
  %156 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1, i64 1
  %157 = load i32, ptr %5, align 4
  store i32 %157, ptr %156, align 4
  %158 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2
  store i8 -1, ptr %158, align 8, !tbaa !44
  %159 = load i8, ptr %3, align 1, !tbaa !44
  %160 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2, i64 1
  store i8 %159, ptr %160, align 1, !tbaa !44
  br label %240

161:                                              ; preds = %141
  %162 = select i1 %76, i1 %124, i1 false
  br i1 %162, label %163, label %166

163:                                              ; preds = %161
  %164 = load ptr, ptr %31, align 8, !tbaa !43
  store ptr %164, ptr %74, align 8, !tbaa !43
  %165 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1
  store i32 0, ptr %165, align 8
  br label %172

166:                                              ; preds = %161
  %167 = sext i8 %75 to i64
  %168 = getelementptr inbounds ptr, ptr %31, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !43
  store ptr %169, ptr %74, align 8, !tbaa !43
  %170 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1
  %171 = load i32, ptr %4, align 4
  store i32 %171, ptr %170, align 8
  br label %172

172:                                              ; preds = %166, %163
  %173 = phi i8 [ %75, %166 ], [ 0, %163 ]
  %174 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2
  store i8 %173, ptr %174, align 8, !tbaa !44
  %175 = load i8, ptr %3, align 1, !tbaa !44
  %176 = icmp eq i8 %175, 0
  %177 = select i1 %176, i1 %124, i1 false
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load ptr, ptr %34, align 8, !tbaa !43
  %180 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  store ptr %179, ptr %180, align 8, !tbaa !43
  %181 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1, i64 1
  store i32 0, ptr %181, align 4
  %182 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2, i64 1
  store i8 0, ptr %182, align 1, !tbaa !44
  br label %240

183:                                              ; preds = %172
  %184 = sext i8 %175 to i64
  %185 = getelementptr inbounds ptr, ptr %34, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !43
  %187 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  store ptr %186, ptr %187, align 8, !tbaa !43
  %188 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1, i64 1
  %189 = load i32, ptr %5, align 4
  store i32 %189, ptr %188, align 4
  %190 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2, i64 1
  store i8 %175, ptr %190, align 1, !tbaa !44
  br label %240

191:                                              ; preds = %69
  %192 = icmp slt i8 %75, 0
  %193 = icmp slt i8 %77, 0
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load ptr, ptr %31, align 8, !tbaa !43
  store ptr %196, ptr %74, align 8, !tbaa !43
  %197 = load ptr, ptr %34, align 8, !tbaa !43
  %198 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  store ptr %197, ptr %198, align 8, !tbaa !43
  %199 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %199, i8 0, i64 10, i1 false)
  br label %240

200:                                              ; preds = %191
  %201 = icmp eq i8 %77, -1
  br i1 %201, label %202, label %212

202:                                              ; preds = %200
  %203 = sext i8 %75 to i64
  %204 = getelementptr inbounds ptr, ptr %31, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !43
  store ptr %205, ptr %74, align 8, !tbaa !43
  %206 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  store ptr null, ptr %206, align 8, !tbaa !43
  %207 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1
  %208 = load i32, ptr %4, align 4
  store i32 %208, ptr %207, align 8
  %209 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1, i64 1
  store i32 0, ptr %209, align 4
  %210 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2
  store i8 %75, ptr %210, align 8, !tbaa !44
  %211 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2, i64 1
  store i8 -1, ptr %211, align 1, !tbaa !44
  br label %240

212:                                              ; preds = %200
  %213 = icmp eq i8 %75, -1
  br i1 %213, label %214, label %225

214:                                              ; preds = %212
  store ptr null, ptr %74, align 8, !tbaa !43
  %215 = sext i8 %77 to i64
  %216 = getelementptr inbounds ptr, ptr %34, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !43
  %218 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  store ptr %217, ptr %218, align 8, !tbaa !43
  %219 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1
  store i32 0, ptr %219, align 8
  %220 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1, i64 1
  %221 = load i32, ptr %5, align 4
  store i32 %221, ptr %220, align 4
  %222 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2
  store i8 -1, ptr %222, align 8, !tbaa !44
  %223 = load i8, ptr %3, align 1, !tbaa !44
  %224 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2, i64 1
  store i8 %223, ptr %224, align 1, !tbaa !44
  br label %240

225:                                              ; preds = %212
  %226 = sext i8 %75 to i64
  %227 = getelementptr inbounds ptr, ptr %31, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !43
  store ptr %228, ptr %74, align 8, !tbaa !43
  %229 = sext i8 %77 to i64
  %230 = getelementptr inbounds ptr, ptr %34, i64 %229
  %231 = load ptr, ptr %230, align 8, !tbaa !43
  %232 = getelementptr inbounds [2 x ptr], ptr %74, i64 0, i64 1
  store ptr %231, ptr %232, align 8, !tbaa !43
  %233 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1
  %234 = load i32, ptr %4, align 4
  store i32 %234, ptr %233, align 8
  %235 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 1, i64 1
  %236 = load i32, ptr %5, align 4
  store i32 %236, ptr %235, align 4
  %237 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2
  store i8 %75, ptr %237, align 8, !tbaa !44
  %238 = load i8, ptr %3, align 1, !tbaa !44
  %239 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %70, i32 2, i64 1
  store i8 %238, ptr %239, align 1, !tbaa !44
  br label %240

240:                                              ; preds = %131, %127, %178, %183, %144, %150, %195, %214, %225, %202
  %241 = add nsw i64 %70, 1
  %242 = load i32, ptr %37, align 8, !tbaa !85
  %243 = add i32 %55, %242
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %241, %244
  br i1 %245, label %69, label %246, !llvm.loop !105

246:                                              ; preds = %240, %57
  %247 = add nuw nsw i32 %58, 1
  %248 = icmp eq i32 %58, %56
  br i1 %248, label %249, label %57, !llvm.loop !106

249:                                              ; preds = %246, %39
  %250 = add nuw nsw i64 %40, 1
  %251 = add nuw nsw i32 %41, 1
  %252 = icmp eq i64 %250, 4
  br i1 %252, label %253, label %39, !llvm.loop !107

253:                                              ; preds = %249
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  br label %254

254:                                              ; preds = %253, %1
  ret void
}

declare void @prepare_direct_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !37, i64 40}
!35 = !{!"storable_picture", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !37, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !39, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !37, i64 160, !41, i64 184, !37, i64 192, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !37, i64 300, !36, i64 308, !40, i64 312, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !40, i64 336, !36, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !40, i64 376, !36, i64 384, !36, i64 388, !37, i64 392, !37, i64 400}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"pic_motion_params_old", !40, i64 0}
!42 = !{!35, !40, i64 152}
!43 = !{!40, !40, i64 0}
!44 = !{!37, !37, i64 0}
!45 = !{!46, !39, i64 0}
!46 = !{!"", !39, i64 0, !39, i64 2}
!47 = !{!46, !39, i64 2}
!48 = !{!49, !40, i64 0}
!49 = !{!"macroblock", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !46, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !37, i64 80, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !39, i64 108, !37, i64 110, !37, i64 111, !39, i64 112, !39, i64 114, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !39, i64 152, !37, i64 154, !36, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !36, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !39, i64 376, !39, i64 378, !39, i64 380, !36, i64 384, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !37, i64 472}
!50 = !{!51, !36, i64 128}
!51 = !{!"slice", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !37, i64 88, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !39, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !37, i64 136, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !37, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !40, i64 248, !37, i64 256, !37, i64 264, !40, i64 312, !40, i64 320, !40, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !36, i64 1176, !36, i64 1180, !36, i64 1184, !52, i64 1188, !39, i64 1220, !39, i64 1222, !39, i64 1224, !36, i64 1228, !36, i64 1232, !36, i64 1236, !36, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !37, i64 1288, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !36, i64 13264, !36, i64 13268, !39, i64 13272, !39, i64 13274, !39, i64 13276, !39, i64 13278, !40, i64 13280, !40, i64 13288, !40, i64 13296, !39, i64 13304, !39, i64 13306, !36, i64 13308, !36, i64 13312, !40, i64 13320, !40, i64 13328, !36, i64 13336, !37, i64 13340, !40, i64 13408, !40, i64 13416, !40, i64 13424, !40, i64 13432, !40, i64 13440, !40, i64 13448, !40, i64 13456, !40, i64 13464, !40, i64 13472, !40, i64 13480, !40, i64 13488, !40, i64 13496, !36, i64 13504, !40, i64 13512, !40, i64 13520, !40, i64 13528, !40, i64 13536, !40, i64 13544, !37, i64 13552}
!52 = !{!"nalunitheadermvcext_tag", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!53 = !{!49, !40, i64 8}
!54 = !{!55, !40, i64 16}
!55 = !{!"video_par", !40, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 132120, !40, i64 699416, !37, i64 699424, !36, i64 848672, !36, i64 848676, !36, i64 848680, !36, i64 848684, !40, i64 848688, !40, i64 848696, !40, i64 848704, !36, i64 848712, !36, i64 848716, !36, i64 848720, !36, i64 848724, !36, i64 848728, !40, i64 848736, !40, i64 848744, !37, i64 848752, !36, i64 848776, !36, i64 848780, !36, i64 848784, !36, i64 848788, !36, i64 848792, !40, i64 848800, !37, i64 848808, !40, i64 848832, !40, i64 848840, !37, i64 848848, !36, i64 848872, !36, i64 848876, !40, i64 848880, !40, i64 848888, !37, i64 848896, !36, i64 848920, !40, i64 848928, !40, i64 848936, !36, i64 848944, !36, i64 848948, !36, i64 848952, !36, i64 848956, !36, i64 848960, !36, i64 848964, !36, i64 848968, !36, i64 848972, !36, i64 848976, !36, i64 848980, !36, i64 848984, !36, i64 848988, !36, i64 848992, !36, i64 848996, !36, i64 849000, !36, i64 849004, !36, i64 849008, !36, i64 849012, !36, i64 849016, !36, i64 849020, !36, i64 849024, !36, i64 849028, !36, i64 849032, !36, i64 849036, !39, i64 849040, !39, i64 849042, !37, i64 849044, !36, i64 849052, !36, i64 849056, !37, i64 849060, !37, i64 849072, !36, i64 849084, !36, i64 849088, !36, i64 849092, !36, i64 849096, !36, i64 849100, !36, i64 849104, !36, i64 849108, !36, i64 849112, !36, i64 849116, !36, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !36, i64 849196, !36, i64 849200, !36, i64 849204, !36, i64 849208, !36, i64 849212, !36, i64 849216, !36, i64 849220, !36, i64 849224, !36, i64 849228, !36, i64 849232, !36, i64 849236, !36, i64 849240, !36, i64 849244, !36, i64 849248, !36, i64 849252, !36, i64 849256, !36, i64 849260, !36, i64 849264, !36, i64 849268, !36, i64 849272, !36, i64 849276, !36, i64 849280, !36, i64 849284, !40, i64 849288, !40, i64 849296, !56, i64 849304, !56, i64 849624, !56, i64 849944, !56, i64 850264, !56, i64 850584, !56, i64 850904, !56, i64 851224, !56, i64 851544, !36, i64 851864, !36, i64 851868, !36, i64 851872, !59, i64 851880, !36, i64 851888, !37, i64 851892, !36, i64 855988, !36, i64 855992, !36, i64 855996, !36, i64 856000, !36, i64 856004, !36, i64 856008, !36, i64 856012, !40, i64 856016, !40, i64 856024, !40, i64 856032, !40, i64 856040, !40, i64 856048, !37, i64 856056, !40, i64 856456, !37, i64 856464, !40, i64 856488, !40, i64 856496, !40, i64 856504, !36, i64 856512, !40, i64 856520, !37, i64 856528, !40, i64 856608, !40, i64 856616, !40, i64 856624, !40, i64 856632, !36, i64 856640, !36, i64 856644, !36, i64 856648, !40, i64 856656, !40, i64 856664, !37, i64 856672, !37, i64 856688, !40, i64 856704, !40, i64 856712, !36, i64 856720, !40, i64 856728, !40, i64 856736, !40, i64 856744, !40, i64 856752, !40, i64 856760, !40, i64 856768, !40, i64 856776, !40, i64 856784, !40, i64 856792, !40, i64 856800, !40, i64 856808, !40, i64 856816, !36, i64 856824, !40, i64 856832, !36, i64 856840, !36, i64 856844, !36, i64 856848, !36, i64 856852, !36, i64 856856, !36, i64 856860, !36, i64 856864, !40, i64 856872}
!56 = !{!"image_data", !57, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!57 = !{!"frame_format", !36, i64 0, !36, i64 4, !58, i64 8, !37, i64 16, !37, i64 28, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !36, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !36, i64 124, !36, i64 128}
!58 = !{!"double", !37, i64 0}
!59 = !{!"long", !37, i64 0}
!60 = !{!61, !36, i64 3136}
!61 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !36, i64 2060, !36, i64 2064, !36, i64 2068, !36, i64 2072, !36, i64 2076, !36, i64 2080, !36, i64 2084, !36, i64 2088, !36, i64 2092, !37, i64 2096, !36, i64 3120, !36, i64 3124, !36, i64 3128, !36, i64 3132, !36, i64 3136, !36, i64 3140, !36, i64 3144, !36, i64 3148, !36, i64 3152, !36, i64 3156, !36, i64 3160, !36, i64 3164, !36, i64 3168, !62, i64 3172, !36, i64 4120, !36, i64 4124}
!62 = !{!"", !36, i64 0, !36, i64 4, !39, i64 8, !39, i64 10, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !63, i64 80, !36, i64 492, !63, i64 496, !36, i64 908, !36, i64 912, !36, i64 916, !36, i64 920, !36, i64 924, !36, i64 928, !36, i64 932, !36, i64 936, !36, i64 940, !36, i64 944}
!63 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408}
!64 = !{!51, !36, i64 184}
!65 = !{!35, !36, i64 388}
!66 = !{!35, !36, i64 0}
!67 = !{!35, !36, i64 96}
!68 = !{!51, !36, i64 176}
!69 = !{!35, !40, i64 224}
!70 = !{!35, !40, i64 232}
!71 = !{!49, !36, i64 384}
!72 = !{!35, !40, i64 184}
!73 = !{!49, !36, i64 24}
!74 = !{!51, !40, i64 13520}
!75 = !{!35, !36, i64 4}
!76 = !{!55, !36, i64 849280}
!77 = !{!55, !36, i64 849088}
!78 = !{!51, !36, i64 216}
!79 = !{!51, !40, i64 24}
!80 = !{!61, !36, i64 3144}
!81 = !{!51, !36, i64 132}
!82 = !{!51, !40, i64 13496}
!83 = !{!49, !39, i64 114}
!84 = !{!49, !36, i64 36}
!85 = !{!49, !36, i64 32}
!86 = !{!49, !36, i64 40}
!87 = !{i32 0, i32 2}
!88 = !{i64 0, i64 16, !44, i64 16, i64 8, !44, i64 24, i64 2, !44}
!89 = distinct !{!89, !90, !91}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!49, !39, i64 152}
!93 = !{!36, !36, i64 0}
!94 = !{!35, !40, i64 240}
!95 = distinct !{!95, !90, !91}
!96 = distinct !{!96, !90, !91}
!97 = distinct !{!97, !90, !91}
!98 = distinct !{!98, !90, !91}
!99 = distinct !{!99, !90, !91}
!100 = distinct !{!100, !90, !91}
!101 = distinct !{!101, !90, !91}
!102 = distinct !{!102, !90, !91}
!103 = distinct !{!103, !90, !91}
!104 = !{!55, !40, i64 856456}
!105 = distinct !{!105, !90, !91}
!106 = distinct !{!106, !90, !91}
!107 = distinct !{!107, !90, !91}
