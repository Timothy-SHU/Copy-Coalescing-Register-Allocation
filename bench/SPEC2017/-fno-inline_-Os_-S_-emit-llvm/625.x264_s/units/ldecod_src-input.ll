; ModuleID = 'ldecod_src/input.c'
source_filename = "ldecod_src/input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [111 x i8] c"Source picture has higher bit depth than imgpel data type. \0APlease recompile with larger data type for imgpel.\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Rescaling not supported in big endian architectures. \00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"AllocateFrameMemory: p_Vid->buf\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"AllocateFrameMemory: p_Vid->ibuf\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @initInput(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 15, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 15, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %3
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ @buf2img_bitshift, %15 ], [ @buf2img_basic, %9 ]
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 159
  store ptr %17, ptr %18, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @testEndian() local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @buf2img_endian(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = icmp sgt i32 %6, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12
  br label %11

11:                                               ; preds = %10, %8
  %12 = icmp eq i32 %2, %4
  %13 = icmp eq i32 %3, %5
  %14 = and i1 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #12
  br label %16

16:                                               ; preds = %11, %15
  switch i32 %6, label %100 [
    i32 1, label %29
    i32 2, label %23
    i32 4, label %17
  ]

17:                                               ; preds = %16
  %18 = icmp sgt i32 %3, 0
  br i1 %18, label %19, label %101

19:                                               ; preds = %17
  %20 = icmp sgt i32 %2, 0
  %21 = zext nneg i32 %3 to i64
  %22 = zext nneg i32 %2 to i64
  br label %77

23:                                               ; preds = %16
  %24 = icmp sgt i32 %3, 0
  br i1 %24, label %25, label %101

25:                                               ; preds = %23
  %26 = icmp sgt i32 %2, 0
  %27 = zext nneg i32 %3 to i64
  %28 = zext nneg i32 %2 to i64
  br label %55

29:                                               ; preds = %16
  %30 = icmp sgt i32 %3, 0
  br i1 %30, label %31, label %101

31:                                               ; preds = %29
  %32 = icmp sgt i32 %2, 0
  %33 = zext nneg i32 %3 to i64
  %34 = zext nneg i32 %2 to i64
  br label %35

35:                                               ; preds = %31, %52
  %36 = phi i64 [ 0, %31 ], [ %53, %52 ]
  br i1 %32, label %37, label %52

37:                                               ; preds = %35
  %38 = getelementptr inbounds ptr, ptr %0, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !18
  %40 = trunc i64 %36 to i32
  %41 = mul i32 %40, %2
  %42 = zext i32 %41 to i64
  %43 = getelementptr i8, ptr %1, i64 %42
  br label %44

44:                                               ; preds = %37, %44
  %45 = phi i64 [ 0, %37 ], [ %50, %44 ]
  %46 = getelementptr i8, ptr %43, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !19
  %48 = zext i8 %47 to i16
  %49 = getelementptr inbounds i16, ptr %39, i64 %45
  store i16 %48, ptr %49, align 2, !tbaa !20
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, %34
  br i1 %51, label %52, label %44, !llvm.loop !21

52:                                               ; preds = %44, %35
  %53 = add nuw nsw i64 %36, 1
  %54 = icmp eq i64 %53, %33
  br i1 %54, label %101, label %35, !llvm.loop !23

55:                                               ; preds = %25, %74
  %56 = phi i64 [ 0, %25 ], [ %75, %74 ]
  br i1 %26, label %57, label %74

57:                                               ; preds = %55
  %58 = getelementptr inbounds ptr, ptr %0, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !18
  %60 = trunc i64 %56 to i32
  %61 = mul i32 %60, %2
  br label %62

62:                                               ; preds = %57, %62
  %63 = phi i64 [ 0, %57 ], [ %72, %62 ]
  %64 = trunc i64 %63 to i32
  %65 = add i32 %61, %64
  %66 = shl nuw nsw i32 %65, 1
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %1, i64 %67
  %69 = load i16, ptr %68, align 1
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %71 = getelementptr inbounds i16, ptr %59, i64 %63
  store i16 %70, ptr %71, align 2, !tbaa !20
  %72 = add nuw nsw i64 %63, 1
  %73 = icmp eq i64 %72, %28
  br i1 %73, label %74, label %62, !llvm.loop !24

74:                                               ; preds = %62, %55
  %75 = add nuw nsw i64 %56, 1
  %76 = icmp eq i64 %75, %27
  br i1 %76, label %101, label %55, !llvm.loop !25

77:                                               ; preds = %19, %97
  %78 = phi i64 [ 0, %19 ], [ %98, %97 ]
  br i1 %20, label %79, label %97

79:                                               ; preds = %77
  %80 = getelementptr inbounds ptr, ptr %0, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !18
  %82 = trunc i64 %78 to i32
  %83 = mul i32 %82, %2
  br label %84

84:                                               ; preds = %79, %84
  %85 = phi i64 [ 0, %79 ], [ %95, %84 ]
  %86 = trunc i64 %85 to i32
  %87 = add i32 %83, %86
  %88 = shl nsw i32 %87, 2
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %1, i64 %89
  %91 = load i32, ptr %90, align 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %93 = trunc i32 %92 to i16
  %94 = getelementptr inbounds i16, ptr %81, i64 %85
  store i16 %93, ptr %94, align 2, !tbaa !20
  %95 = add nuw nsw i64 %85, 1
  %96 = icmp eq i64 %95, %22
  br i1 %96, label %97, label %84, !llvm.loop !26

97:                                               ; preds = %84, %77
  %98 = add nuw nsw i64 %78, 1
  %99 = icmp eq i64 %98, %21
  br i1 %99, label %101, label %77, !llvm.loop !27

100:                                              ; preds = %16
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #12
  br label %101

101:                                              ; preds = %97, %74, %52, %17, %23, %29, %100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @buf2img_basic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #2 {
  %9 = alloca i16, align 2
  %10 = icmp sgt i32 %6, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12
  %12 = zext nneg i32 %6 to i64
  br label %64

13:                                               ; preds = %8
  %14 = sext i32 %6 to i64
  %15 = icmp eq i32 %6, 2
  br i1 %15, label %16, label %64

16:                                               ; preds = %13
  %17 = icmp eq i32 %2, %4
  %18 = icmp eq i32 %3, %5
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8, !tbaa !18
  %22 = mul nsw i32 %3, %2
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 1 %1, i64 %24, i1 false)
  br label %164

25:                                               ; preds = %16
  %26 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %5) #13
  %27 = icmp slt i32 %5, %3
  %28 = sub nsw i32 %5, %3
  %29 = ashr i32 %28, 1
  %30 = select i1 %27, i32 0, i32 %29
  %31 = tail call i32 @llvm.smin.i32(i32 %26, i32 %3)
  %32 = add nsw i32 %31, %30
  %33 = icmp sgt i32 %32, %5
  %34 = sub nsw i32 %5, %30
  %35 = select i1 %33, i32 %34, i32 %31
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %164

37:                                               ; preds = %25
  %38 = tail call fastcc i32 @imin(i32 noundef %2, i32 noundef %4) #13
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 %2)
  %40 = icmp slt i32 %4, %2
  %41 = sub nsw i32 %4, %2
  %42 = ashr i32 %41, 1
  %43 = select i1 %40, i32 0, i32 %42
  %44 = add nsw i32 %39, %43
  %45 = icmp sgt i32 %44, %4
  %46 = sub nsw i32 %4, %43
  %47 = select i1 %45, i32 %46, i32 %39
  %48 = sext i32 %43 to i64
  %49 = sext i32 %47 to i64
  %50 = shl nsw i64 %49, 1
  %51 = sext i32 %30 to i64
  %52 = sext i32 %2 to i64
  %53 = zext nneg i32 %35 to i64
  %54 = getelementptr ptr, ptr %0, i64 %51
  br label %55

55:                                               ; preds = %37, %55
  %56 = phi i64 [ 0, %37 ], [ %62, %55 ]
  %57 = getelementptr ptr, ptr %54, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !18
  %59 = getelementptr inbounds i16, ptr %58, i64 %48
  %60 = mul nsw i64 %56, %52
  %61 = getelementptr inbounds i8, ptr %1, i64 %60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %59, ptr align 1 %61, i64 %50, i1 false)
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp ult i64 %62, %53
  br i1 %63, label %55, label %164, !llvm.loop !28

64:                                               ; preds = %11, %13
  %65 = phi i64 [ %12, %11 ], [ %14, %13 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9)
  %66 = icmp eq i32 %2, %4
  %67 = icmp eq i32 %3, %5
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %64
  %70 = icmp sgt i32 %3, 0
  br i1 %70, label %71, label %163

71:                                               ; preds = %69
  %72 = icmp sgt i32 %2, 0
  %73 = sext i32 %6 to i64
  %74 = sext i32 %2 to i64
  %75 = zext nneg i32 %3 to i64
  %76 = zext nneg i32 %2 to i64
  br label %77

77:                                               ; preds = %71, %92
  %78 = phi i64 [ 0, %71 ], [ %93, %92 ]
  %79 = mul nsw i64 %78, %74
  br i1 %72, label %80, label %92

80:                                               ; preds = %77
  %81 = getelementptr inbounds ptr, ptr %0, i64 %78
  %82 = load ptr, ptr %81, align 8, !tbaa !18
  br label %83

83:                                               ; preds = %80, %83
  %84 = phi i64 [ 0, %80 ], [ %90, %83 ]
  store i16 0, ptr %9, align 2, !tbaa !20
  %85 = add nuw nsw i64 %84, %79
  %86 = mul nsw i64 %85, %73
  %87 = getelementptr inbounds i8, ptr %1, i64 %86
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %9, ptr align 1 %87, i64 %65, i1 false)
  %88 = load i16, ptr %9, align 2, !tbaa !20
  %89 = getelementptr inbounds i16, ptr %82, i64 %84
  store i16 %88, ptr %89, align 2, !tbaa !20
  %90 = add nuw nsw i64 %84, 1
  %91 = icmp eq i64 %90, %76
  br i1 %91, label %92, label %83, !llvm.loop !29

92:                                               ; preds = %83, %77
  %93 = add nuw nsw i64 %78, 1
  %94 = icmp eq i64 %93, %75
  br i1 %94, label %163, label %77, !llvm.loop !30

95:                                               ; preds = %64
  %96 = tail call fastcc i32 @imin(i32 noundef %2, i32 noundef %4) #13
  %97 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %5) #13
  %98 = icmp slt i32 %4, %2
  %99 = sub nsw i32 %4, %2
  %100 = ashr i32 %99, 1
  %101 = select i1 %98, i32 0, i32 %100
  %102 = icmp slt i32 %5, %3
  %103 = sub nsw i32 %5, %3
  %104 = ashr i32 %103, 1
  %105 = select i1 %102, i32 0, i32 %104
  %106 = tail call i32 @llvm.smin.i32(i32 %96, i32 %2)
  %107 = tail call i32 @llvm.smin.i32(i32 %97, i32 %3)
  %108 = add nsw i32 %106, %101
  %109 = icmp sgt i32 %108, %4
  %110 = sub nsw i32 %4, %101
  %111 = select i1 %109, i32 %110, i32 %106
  %112 = add nsw i32 %107, %105
  %113 = icmp sgt i32 %112, %5
  %114 = sub nsw i32 %5, %105
  %115 = select i1 %113, i32 %114, i32 %107
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %163

117:                                              ; preds = %95
  %118 = sext i32 %101 to i64
  %119 = sext i32 %111 to i64
  %120 = shl nsw i64 %119, 1
  %121 = sext i32 %105 to i64
  %122 = sext i32 %2 to i64
  %123 = zext nneg i32 %115 to i64
  %124 = getelementptr ptr, ptr %0, i64 %121
  br label %135

125:                                              ; preds = %135
  br i1 %116, label %126, label %163

126:                                              ; preds = %125
  %127 = icmp sgt i32 %111, 0
  %128 = sext i32 %6 to i64
  %129 = sext i32 %101 to i64
  %130 = sext i32 %111 to i64
  %131 = sext i32 %2 to i64
  %132 = sext i32 %105 to i64
  %133 = zext nneg i32 %115 to i64
  %134 = getelementptr ptr, ptr %0, i64 %132
  br label %144

135:                                              ; preds = %117, %135
  %136 = phi i64 [ 0, %117 ], [ %142, %135 ]
  %137 = getelementptr ptr, ptr %124, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !18
  %139 = getelementptr inbounds i16, ptr %138, i64 %118
  %140 = mul nsw i64 %136, %122
  %141 = getelementptr inbounds i8, ptr %1, i64 %140
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %139, ptr align 1 %141, i64 %120, i1 false)
  %142 = add nuw nsw i64 %136, 1
  %143 = icmp ult i64 %142, %123
  br i1 %143, label %135, label %125, !llvm.loop !31

144:                                              ; preds = %126, %160
  %145 = phi i64 [ 0, %126 ], [ %161, %160 ]
  %146 = mul nsw i64 %145, %131
  br i1 %127, label %147, label %160

147:                                              ; preds = %144
  %148 = getelementptr ptr, ptr %134, i64 %145
  %149 = load ptr, ptr %148, align 8, !tbaa !18
  %150 = getelementptr i16, ptr %149, i64 %129
  br label %151

151:                                              ; preds = %147, %151
  %152 = phi i64 [ 0, %147 ], [ %158, %151 ]
  store i16 0, ptr %9, align 2, !tbaa !20
  %153 = add nsw i64 %152, %146
  %154 = mul nsw i64 %153, %128
  %155 = getelementptr inbounds i8, ptr %1, i64 %154
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %9, ptr align 1 %155, i64 %65, i1 false)
  %156 = load i16, ptr %9, align 2, !tbaa !20
  %157 = getelementptr i16, ptr %150, i64 %152
  store i16 %156, ptr %157, align 2, !tbaa !20
  %158 = add nuw nsw i64 %152, 1
  %159 = icmp slt i64 %158, %130
  br i1 %159, label %151, label %160, !llvm.loop !32

160:                                              ; preds = %151, %144
  %161 = add nuw nsw i64 %145, 1
  %162 = icmp ult i64 %161, %133
  br i1 %162, label %144, label %163, !llvm.loop !33

163:                                              ; preds = %160, %92, %95, %125, %69
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9)
  br label %164

164:                                              ; preds = %55, %25, %20, %163
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @buf2img_bitshift(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
  %9 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9)
  %10 = shl i32 %6, 3
  %11 = sub nsw i32 %10, %7
  %12 = icmp sgt i32 %11, 16
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12
  br label %14

14:                                               ; preds = %13, %8
  %15 = icmp eq i32 %2, %4
  %16 = icmp eq i32 %3, %5
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %18
  %21 = icmp sgt i32 %2, 0
  %22 = sext i32 %6 to i64
  %23 = sext i32 %2 to i64
  %24 = zext nneg i32 %3 to i64
  %25 = zext nneg i32 %2 to i64
  br label %26

26:                                               ; preds = %20, %44
  %27 = phi i64 [ 0, %20 ], [ %45, %44 ]
  %28 = mul nsw i64 %27, %23
  br i1 %21, label %29, label %44

29:                                               ; preds = %26
  %30 = getelementptr inbounds ptr, ptr %0, i64 %27
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ 0, %29 ], [ %42, %32 ]
  store i16 0, ptr %9, align 2, !tbaa !20
  %34 = add nuw nsw i64 %33, %28
  %35 = mul nsw i64 %34, %22
  %36 = getelementptr inbounds i8, ptr %1, i64 %35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %9, ptr align 1 %36, i64 %22, i1 false)
  %37 = load i16, ptr %9, align 2, !tbaa !20
  %38 = zext i16 %37 to i32
  %39 = tail call fastcc i32 @rshift_rnd(i32 noundef %38, i32 noundef %7) #13
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds i16, ptr %31, i64 %33
  store i16 %40, ptr %41, align 2, !tbaa !20
  %42 = add nuw nsw i64 %33, 1
  %43 = icmp eq i64 %42, %25
  br i1 %43, label %44, label %32, !llvm.loop !34

44:                                               ; preds = %32, %26
  %45 = add nuw nsw i64 %27, 1
  %46 = icmp eq i64 %45, %24
  br i1 %46, label %100, label %26, !llvm.loop !35

47:                                               ; preds = %14
  %48 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %5) #13
  %49 = icmp slt i32 %5, %3
  %50 = sub nsw i32 %5, %3
  %51 = ashr i32 %50, 1
  %52 = select i1 %49, i32 0, i32 %51
  %53 = tail call i32 @llvm.smin.i32(i32 %48, i32 %3)
  %54 = add nsw i32 %53, %52
  %55 = icmp sgt i32 %54, %5
  %56 = sub nsw i32 %5, %52
  %57 = select i1 %55, i32 %56, i32 %53
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %47
  %60 = tail call fastcc i32 @imin(i32 noundef %2, i32 noundef %4) #13
  %61 = tail call i32 @llvm.smin.i32(i32 %60, i32 %2)
  %62 = icmp slt i32 %4, %2
  %63 = sub nsw i32 %4, %2
  %64 = ashr i32 %63, 1
  %65 = select i1 %62, i32 0, i32 %64
  %66 = add nsw i32 %61, %65
  %67 = icmp sgt i32 %66, %4
  %68 = sub nsw i32 %4, %65
  %69 = select i1 %67, i32 %68, i32 %61
  %70 = icmp sgt i32 %69, 0
  %71 = sext i32 %6 to i64
  %72 = sext i32 %65 to i64
  %73 = sext i32 %69 to i64
  %74 = sext i32 %2 to i64
  %75 = sext i32 %52 to i64
  %76 = zext nneg i32 %57 to i64
  %77 = getelementptr ptr, ptr %0, i64 %75
  br label %78

78:                                               ; preds = %59, %97
  %79 = phi i64 [ 0, %59 ], [ %98, %97 ]
  %80 = mul nsw i64 %79, %74
  br i1 %70, label %81, label %97

81:                                               ; preds = %78
  %82 = getelementptr ptr, ptr %77, i64 %79
  %83 = load ptr, ptr %82, align 8, !tbaa !18
  %84 = getelementptr i16, ptr %83, i64 %72
  br label %85

85:                                               ; preds = %81, %85
  %86 = phi i64 [ 0, %81 ], [ %95, %85 ]
  store i16 0, ptr %9, align 2, !tbaa !20
  %87 = add nsw i64 %86, %80
  %88 = mul nsw i64 %87, %71
  %89 = getelementptr inbounds i8, ptr %1, i64 %88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %9, ptr align 1 %89, i64 %71, i1 false)
  %90 = load i16, ptr %9, align 2, !tbaa !20
  %91 = zext i16 %90 to i32
  %92 = tail call fastcc i32 @rshift_rnd(i32 noundef %91, i32 noundef %7) #13
  %93 = trunc i32 %92 to i16
  %94 = getelementptr i16, ptr %84, i64 %86
  store i16 %93, ptr %94, align 2, !tbaa !20
  %95 = add nuw nsw i64 %86, 1
  %96 = icmp slt i64 %95, %73
  br i1 %96, label %85, label %97, !llvm.loop !36

97:                                               ; preds = %85, %78
  %98 = add nuw nsw i64 %79, 1
  %99 = icmp ult i64 %98, %76
  br i1 %99, label %78, label %100, !llvm.loop !37

100:                                              ; preds = %97, %44, %47, %18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @fillPlane(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %70

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  %8 = trunc i32 %1 to i16
  %9 = zext nneg i32 %3 to i64
  %10 = zext i32 %2 to i64
  %11 = add nuw nsw i64 %10, 7
  %12 = and i64 %11, 4294967288
  %13 = add nsw i64 %10, -1
  %14 = insertelement <8 x i64> poison, i64 %13, i64 0
  %15 = shufflevector <8 x i64> %14, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %6, %67
  %17 = phi i64 [ 0, %6 ], [ %68, %67 ]
  br i1 %7, label %18, label %67

18:                                               ; preds = %16
  %19 = getelementptr inbounds ptr, ptr %0, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  br label %21

21:                                               ; preds = %63, %18
  %22 = phi i64 [ 0, %18 ], [ %64, %63 ]
  %23 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %18 ], [ %65, %63 ]
  %24 = icmp ule <8 x i64> %23, %15
  %25 = extractelement <8 x i1> %24, i64 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds i16, ptr %20, i64 %22
  store i16 %8, ptr %27, align 2, !tbaa !20
  br label %28

28:                                               ; preds = %26, %21
  %29 = extractelement <8 x i1> %24, i64 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = or disjoint i64 %22, 1
  %32 = getelementptr inbounds i16, ptr %20, i64 %31
  store i16 %8, ptr %32, align 2, !tbaa !20
  br label %33

33:                                               ; preds = %30, %28
  %34 = extractelement <8 x i1> %24, i64 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = or disjoint i64 %22, 2
  %37 = getelementptr inbounds i16, ptr %20, i64 %36
  store i16 %8, ptr %37, align 2, !tbaa !20
  br label %38

38:                                               ; preds = %35, %33
  %39 = extractelement <8 x i1> %24, i64 3
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = or disjoint i64 %22, 3
  %42 = getelementptr inbounds i16, ptr %20, i64 %41
  store i16 %8, ptr %42, align 2, !tbaa !20
  br label %43

43:                                               ; preds = %40, %38
  %44 = extractelement <8 x i1> %24, i64 4
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = or disjoint i64 %22, 4
  %47 = getelementptr inbounds i16, ptr %20, i64 %46
  store i16 %8, ptr %47, align 2, !tbaa !20
  br label %48

48:                                               ; preds = %45, %43
  %49 = extractelement <8 x i1> %24, i64 5
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = or disjoint i64 %22, 5
  %52 = getelementptr inbounds i16, ptr %20, i64 %51
  store i16 %8, ptr %52, align 2, !tbaa !20
  br label %53

53:                                               ; preds = %50, %48
  %54 = extractelement <8 x i1> %24, i64 6
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = or disjoint i64 %22, 6
  %57 = getelementptr inbounds i16, ptr %20, i64 %56
  store i16 %8, ptr %57, align 2, !tbaa !20
  br label %58

58:                                               ; preds = %55, %53
  %59 = extractelement <8 x i1> %24, i64 7
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = or disjoint i64 %22, 7
  %62 = getelementptr inbounds i16, ptr %20, i64 %61
  store i16 %8, ptr %62, align 2, !tbaa !20
  br label %63

63:                                               ; preds = %60, %58
  %64 = add i64 %22, 8
  %65 = add <8 x i64> %23, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %66 = icmp eq i64 %64, %12
  br i1 %66, label %67, label %21, !llvm.loop !38

67:                                               ; preds = %63, %16
  %68 = add nuw nsw i64 %17, 1
  %69 = icmp eq i64 %68, %9
  br i1 %69, label %70, label %16, !llvm.loop !41

70:                                               ; preds = %67, %4
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = shl nuw i32 1, %5
  %7 = add nsw i32 %6, %0
  %8 = ashr i32 %7, %1
  br label %12

9:                                                ; preds = %2
  %10 = sub nsw i32 0, %1
  %11 = shl i32 %0, %10
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi i32 [ %8, %4 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AllocateFrameMemory(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 14
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = mul nsw i32 %7, %5
  %9 = sext i32 %8 to i64
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #14
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  store ptr %10, ptr %11, align 8, !tbaa !44
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #12
  br label %14

14:                                               ; preds = %13, %3
  %15 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 13, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !45
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %4, align 4, !tbaa !42
  %20 = load i32, ptr %6, align 8, !tbaa !43
  %21 = mul nsw i32 %20, %19
  %22 = sext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #14
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 108
  store ptr %23, ptr %24, align 8, !tbaa !48
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #12
  br label %27

27:                                               ; preds = %18, %26, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @DeleteFrameMemory(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 108
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @read_one_frame(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #2 {
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = mul i32 %12, %10
  %14 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 13, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !6
  %16 = mul i32 %15, %10
  %17 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i32, ptr %4, align 8, !tbaa !51
  %22 = icmp eq i32 %21, 3
  br label %23

23:                                               ; preds = %20, %7
  %24 = phi i1 [ false, %7 ], [ %22, %20 ]
  %25 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !52
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = icmp eq i32 %30, 3
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  br i1 %31, label %34, label %36

34:                                               ; preds = %28
  %35 = tail call i32 @ReadTIFFImage(ptr noundef %8, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef %33) #12
  br label %42

36:                                               ; preds = %28
  %37 = tail call i32 @ReadFrameSeparate(ptr noundef %8, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef %33) #12
  br label %42

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = tail call i32 @ReadFrameConcatenated(ptr noundef %8, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef %40) #12
  br label %42

42:                                               ; preds = %34, %36, %38
  %43 = phi i32 [ %35, %34 ], [ %37, %36 ], [ %41, %38 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %159, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !54
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %51 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 108
  tail call fastcc void @deinterleave(ptr noundef nonnull %50, ptr noundef nonnull %51, ptr noundef nonnull %4, i32 noundef %10) #13
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 15
  %54 = load i32, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 15
  %56 = load i32, ptr %55, align 8, !tbaa !6
  %57 = sub nsw i32 %54, %56
  %58 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 159
  %59 = load ptr, ptr %58, align 8, !tbaa !10
  %60 = load ptr, ptr %6, align 8, !tbaa !18
  %61 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  br i1 %24, label %63, label %77

63:                                               ; preds = %52
  %64 = sext i32 %13 to i64
  %65 = getelementptr inbounds i8, ptr %62, i64 %64
  %66 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !6
  %68 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !6
  %70 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !6
  tail call void %59(ptr noundef %60, ptr noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %10, i32 noundef %57) #12
  %74 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 72
  %75 = load i32, ptr %74, align 8, !tbaa !55
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %159, label %89

77:                                               ; preds = %52
  %78 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4
  %81 = load i32, ptr %80, align 4, !tbaa !6
  %82 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 4
  %85 = load i32, ptr %84, align 4, !tbaa !6
  tail call void %59(ptr noundef %60, ptr noundef %62, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %10, i32 noundef %57) #12
  %86 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 72
  %87 = load i32, ptr %86, align 8, !tbaa !55
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %159, label %123

89:                                               ; preds = %63
  %90 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 15, i64 1
  %91 = load i32, ptr %90, align 4, !tbaa !6
  %92 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 15, i64 1
  %93 = load i32, ptr %92, align 4, !tbaa !6
  %94 = sub nsw i32 %91, %93
  %95 = load ptr, ptr %58, align 8, !tbaa !10
  %96 = getelementptr inbounds ptr, ptr %6, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !18
  %98 = load ptr, ptr %61, align 8, !tbaa !44
  %99 = getelementptr inbounds i8, ptr %98, i64 %64
  %100 = sext i32 %16 to i64
  %101 = getelementptr inbounds i8, ptr %99, i64 %100
  %102 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3, i64 1
  %103 = load i32, ptr %102, align 4, !tbaa !6
  %104 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4, i64 1
  %105 = load i32, ptr %104, align 4, !tbaa !6
  %106 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 3, i64 1
  %107 = load i32, ptr %106, align 4, !tbaa !6
  %108 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 4, i64 1
  %109 = load i32, ptr %108, align 4, !tbaa !6
  tail call void %95(ptr noundef %97, ptr noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %109, i32 noundef %10, i32 noundef %94) #12
  %110 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 15, i64 2
  %111 = load i32, ptr %110, align 8, !tbaa !6
  %112 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 15, i64 2
  %113 = load i32, ptr %112, align 8, !tbaa !6
  %114 = sub nsw i32 %111, %113
  %115 = load ptr, ptr %58, align 8, !tbaa !10
  %116 = getelementptr inbounds ptr, ptr %6, i64 2
  %117 = load ptr, ptr %116, align 8, !tbaa !18
  %118 = load ptr, ptr %61, align 8, !tbaa !44
  %119 = load i32, ptr %102, align 4, !tbaa !6
  %120 = load i32, ptr %104, align 4, !tbaa !6
  %121 = load i32, ptr %106, align 4, !tbaa !6
  %122 = load i32, ptr %108, align 4, !tbaa !6
  tail call void %115(ptr noundef %117, ptr noundef %118, i32 noundef %119, i32 noundef %120, i32 noundef %121, i32 noundef %122, i32 noundef %10, i32 noundef %114) #12
  br label %159

123:                                              ; preds = %77
  %124 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 15, i64 1
  %125 = load i32, ptr %124, align 4, !tbaa !6
  %126 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 15, i64 1
  %127 = load i32, ptr %126, align 4, !tbaa !6
  %128 = sub nsw i32 %125, %127
  %129 = load ptr, ptr %58, align 8, !tbaa !10
  %130 = getelementptr inbounds ptr, ptr %6, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !18
  %132 = load ptr, ptr %61, align 8, !tbaa !44
  %133 = sext i32 %13 to i64
  %134 = getelementptr inbounds i8, ptr %132, i64 %133
  %135 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3, i64 1
  %136 = load i32, ptr %135, align 4, !tbaa !6
  %137 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4, i64 1
  %138 = load i32, ptr %137, align 4, !tbaa !6
  %139 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 3, i64 1
  %140 = load i32, ptr %139, align 4, !tbaa !6
  %141 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 4, i64 1
  %142 = load i32, ptr %141, align 4, !tbaa !6
  tail call void %129(ptr noundef %131, ptr noundef %134, i32 noundef %136, i32 noundef %138, i32 noundef %140, i32 noundef %142, i32 noundef %10, i32 noundef %128) #12
  %143 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 15, i64 2
  %144 = load i32, ptr %143, align 8, !tbaa !6
  %145 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 15, i64 2
  %146 = load i32, ptr %145, align 8, !tbaa !6
  %147 = sub nsw i32 %144, %146
  %148 = load ptr, ptr %58, align 8, !tbaa !10
  %149 = getelementptr inbounds ptr, ptr %6, i64 2
  %150 = load ptr, ptr %149, align 8, !tbaa !18
  %151 = load ptr, ptr %61, align 8, !tbaa !44
  %152 = getelementptr inbounds i8, ptr %151, i64 %133
  %153 = sext i32 %16 to i64
  %154 = getelementptr inbounds i8, ptr %152, i64 %153
  %155 = load i32, ptr %135, align 4, !tbaa !6
  %156 = load i32, ptr %137, align 4, !tbaa !6
  %157 = load i32, ptr %139, align 4, !tbaa !6
  %158 = load i32, ptr %141, align 4, !tbaa !6
  tail call void %148(ptr noundef %150, ptr noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef %157, i32 noundef %158, i32 noundef %10, i32 noundef %147) #12
  br label %159

159:                                              ; preds = %77, %63, %123, %89, %42
  ret i32 %43
}

; Function Attrs: optsize
declare i32 @ReadTIFFImage(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @ReadFrameSeparate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @ReadFrameConcatenated(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deinterleave(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #10 {
  %5 = load ptr, ptr %0, align 8, !tbaa !18
  %6 = load ptr, ptr %1, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = mul nsw i32 %8, %3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  %12 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 13, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = mul nsw i32 %13, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  %17 = load i32, ptr %2, align 8, !tbaa !51
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %54

19:                                               ; preds = %4
  %20 = icmp sgt i32 %13, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %19
  %22 = sext i32 %3 to i64
  %23 = shl nsw i32 %3, 1
  %24 = sext i32 %23 to i64
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i32 [ 0, %21 ], [ %39, %25 ]
  %27 = phi ptr [ %16, %21 ], [ %35, %25 ]
  %28 = phi ptr [ %11, %21 ], [ %31, %25 ]
  %29 = phi ptr [ %6, %21 ], [ %37, %25 ]
  %30 = phi ptr [ %5, %21 ], [ %38, %25 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %30, i64 %22, i1 false)
  %31 = getelementptr inbounds i8, ptr %28, i64 %22
  %32 = getelementptr inbounds i8, ptr %30, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %32, i64 %24, i1 false)
  %33 = getelementptr inbounds i8, ptr %29, i64 %24
  %34 = getelementptr inbounds i8, ptr %32, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr align 1 %34, i64 %22, i1 false)
  %35 = getelementptr inbounds i8, ptr %27, i64 %22
  %36 = getelementptr inbounds i8, ptr %34, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %36, i64 %24, i1 false)
  %37 = getelementptr inbounds i8, ptr %33, i64 %24
  %38 = getelementptr inbounds i8, ptr %36, i64 %24
  %39 = add nuw nsw i32 %26, 1
  %40 = load i32, ptr %12, align 4, !tbaa !6
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %25, label %42, !llvm.loop !56

42:                                               ; preds = %25
  %43 = load ptr, ptr %0, align 8, !tbaa !18
  %44 = load ptr, ptr %1, align 8, !tbaa !18
  %45 = load i32, ptr %2, align 8, !tbaa !51
  br label %46

46:                                               ; preds = %42, %19
  %47 = phi i32 [ %13, %19 ], [ %40, %42 ]
  %48 = phi i32 [ 1, %19 ], [ %45, %42 ]
  %49 = phi ptr [ %6, %19 ], [ %44, %42 ]
  %50 = phi ptr [ %5, %19 ], [ %43, %42 ]
  %51 = phi ptr [ %6, %19 ], [ %37, %42 ]
  %52 = phi ptr [ %11, %19 ], [ %31, %42 ]
  %53 = phi ptr [ %16, %19 ], [ %35, %42 ]
  store ptr %49, ptr %0, align 8, !tbaa !18
  store ptr %50, ptr %1, align 8, !tbaa !18
  br label %54

54:                                               ; preds = %46, %4
  %55 = phi i32 [ %47, %46 ], [ %13, %4 ]
  %56 = phi ptr [ %50, %46 ], [ %6, %4 ]
  %57 = phi i32 [ %48, %46 ], [ %17, %4 ]
  %58 = phi ptr [ %50, %46 ], [ %5, %4 ]
  %59 = phi ptr [ %51, %46 ], [ %6, %4 ]
  %60 = phi ptr [ %52, %46 ], [ %11, %4 ]
  %61 = phi ptr [ %53, %46 ], [ %16, %4 ]
  switch i32 %57, label %108 [
    i32 2, label %67
    i32 3, label %62
  ]

62:                                               ; preds = %54
  %63 = load i32, ptr %7, align 8, !tbaa !6
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %62
  %66 = sext i32 %3 to i64
  br label %88

67:                                               ; preds = %54
  %68 = icmp sgt i32 %55, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %67
  %70 = sext i32 %3 to i64
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i32 [ 0, %69 ], [ %85, %71 ]
  %73 = phi ptr [ %61, %69 ], [ %83, %71 ]
  %74 = phi ptr [ %60, %69 ], [ %79, %71 ]
  %75 = phi ptr [ %59, %69 ], [ %81, %71 ]
  %76 = phi ptr [ %58, %69 ], [ %84, %71 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %75, ptr align 1 %76, i64 %70, i1 false)
  %77 = getelementptr inbounds i8, ptr %75, i64 %70
  %78 = getelementptr inbounds i8, ptr %76, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %78, i64 %70, i1 false)
  %79 = getelementptr inbounds i8, ptr %74, i64 %70
  %80 = getelementptr inbounds i8, ptr %78, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %77, ptr align 1 %80, i64 %70, i1 false)
  %81 = getelementptr inbounds i8, ptr %77, i64 %70
  %82 = getelementptr inbounds i8, ptr %80, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 1 %82, i64 %70, i1 false)
  %83 = getelementptr inbounds i8, ptr %73, i64 %70
  %84 = getelementptr inbounds i8, ptr %82, i64 %70
  %85 = add nuw nsw i32 %72, 1
  %86 = load i32, ptr %12, align 4, !tbaa !6
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %71, label %103, !llvm.loop !57

88:                                               ; preds = %65, %88
  %89 = phi i32 [ 0, %65 ], [ %100, %88 ]
  %90 = phi ptr [ %61, %65 ], [ %98, %88 ]
  %91 = phi ptr [ %60, %65 ], [ %96, %88 ]
  %92 = phi ptr [ %59, %65 ], [ %94, %88 ]
  %93 = phi ptr [ %58, %65 ], [ %99, %88 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %92, ptr align 1 %93, i64 %66, i1 false)
  %94 = getelementptr inbounds i8, ptr %92, i64 %66
  %95 = getelementptr inbounds i8, ptr %93, i64 %66
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %95, i64 %66, i1 false)
  %96 = getelementptr inbounds i8, ptr %91, i64 %66
  %97 = getelementptr inbounds i8, ptr %95, i64 %66
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %90, ptr align 1 %97, i64 %66, i1 false)
  %98 = getelementptr inbounds i8, ptr %90, i64 %66
  %99 = getelementptr inbounds i8, ptr %97, i64 %66
  %100 = add nuw nsw i32 %89, 1
  %101 = load i32, ptr %7, align 8, !tbaa !6
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %88, label %103, !llvm.loop !58

103:                                              ; preds = %88, %71
  %104 = load ptr, ptr %1, align 8, !tbaa !18
  br label %105

105:                                              ; preds = %103, %62, %67
  %106 = phi ptr [ %56, %67 ], [ %56, %62 ], [ %104, %103 ]
  %107 = load ptr, ptr %0, align 8, !tbaa !18
  store ptr %106, ptr %0, align 8, !tbaa !18
  store ptr %107, ptr %1, align 8, !tbaa !18
  br label %108

108:                                              ; preds = %105, %54
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pad_borders(ptr nocapture noundef readonly byval(%struct.frame_format) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #10 {
  %7 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = icmp slt i32 %8, %1
  %10 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %14, label %35

14:                                               ; preds = %6
  %15 = sext i32 %8 to i64
  %16 = zext nneg i32 %11 to i64
  %17 = load ptr, ptr %5, align 8, !tbaa !18
  %18 = sext i32 %1 to i64
  %19 = shl nsw i64 %15, 1
  br label %20

20:                                               ; preds = %32, %14
  %21 = phi i64 [ 0, %14 ], [ %33, %32 ]
  %22 = getelementptr inbounds ptr, ptr %17, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = getelementptr i8, ptr %23, i64 %19
  %25 = getelementptr i8, ptr %24, i64 -2
  %26 = load i16, ptr %25, align 2
  br label %27

27:                                               ; preds = %20, %27
  %28 = phi i64 [ %15, %20 ], [ %30, %27 ]
  %29 = getelementptr i16, ptr %23, i64 %28
  store i16 %26, ptr %29, align 2, !tbaa !20
  %30 = add nsw i64 %28, 1
  %31 = icmp eq i64 %30, %18
  br i1 %31, label %32, label %27, !llvm.loop !59

32:                                               ; preds = %27
  %33 = add nuw nsw i64 %21, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %35, label %20, !llvm.loop !60

35:                                               ; preds = %32, %6
  %36 = icmp slt i32 %11, %2
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = sext i32 %1 to i64
  %39 = shl nsw i64 %38, 1
  %40 = sext i32 %11 to i64
  %41 = sext i32 %2 to i64
  br label %42

42:                                               ; preds = %37, %42
  %43 = phi i64 [ %40, %37 ], [ %49, %42 ]
  %44 = load ptr, ptr %5, align 8, !tbaa !18
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !18
  %47 = getelementptr ptr, ptr %45, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %46, ptr align 2 %48, i64 %39, i1 false)
  %49 = add nsw i64 %43, 1
  %50 = icmp eq i64 %49, %41
  br i1 %50, label %51, label %42, !llvm.loop !61

51:                                               ; preds = %42, %35
  %52 = load i32, ptr %0, align 8, !tbaa !51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %105, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3, i64 1
  %56 = load i32, ptr %55, align 4, !tbaa !6
  %57 = icmp sge i32 %56, %3
  %58 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4, i64 1
  %59 = load i32, ptr %58, align 8
  %60 = icmp slt i32 %59, %4
  %61 = icmp slt i32 %59, 1
  %62 = sext i32 %3 to i64
  %63 = shl nsw i64 %62, 1
  %64 = sext i32 %56 to i64
  %65 = sext i32 %59 to i64
  %66 = select i1 %57, i1 true, i1 %61
  %67 = zext nneg i32 %59 to i64
  %68 = sext i32 %4 to i64
  %69 = shl nsw i64 %64, 1
  br label %70

70:                                               ; preds = %54, %102
  %71 = phi i64 [ 1, %54 ], [ %103, %102 ]
  br i1 %66, label %90, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds ptr, ptr %5, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !18
  br label %75

75:                                               ; preds = %87, %72
  %76 = phi i64 [ 0, %72 ], [ %88, %87 ]
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !18
  %79 = getelementptr i8, ptr %78, i64 %69
  %80 = getelementptr i8, ptr %79, i64 -2
  %81 = load i16, ptr %80, align 2
  br label %82

82:                                               ; preds = %75, %82
  %83 = phi i64 [ %64, %75 ], [ %85, %82 ]
  %84 = getelementptr i16, ptr %78, i64 %83
  store i16 %81, ptr %84, align 2, !tbaa !20
  %85 = add nsw i64 %83, 1
  %86 = icmp eq i64 %85, %62
  br i1 %86, label %87, label %82, !llvm.loop !62

87:                                               ; preds = %82
  %88 = add nuw nsw i64 %76, 1
  %89 = icmp eq i64 %88, %67
  br i1 %89, label %90, label %75, !llvm.loop !63

90:                                               ; preds = %87, %70
  br i1 %60, label %91, label %102

91:                                               ; preds = %90
  %92 = getelementptr inbounds ptr, ptr %5, i64 %71
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi i64 [ %65, %91 ], [ %100, %93 ]
  %95 = load ptr, ptr %92, align 8, !tbaa !18
  %96 = getelementptr inbounds ptr, ptr %95, i64 %94
  %97 = load ptr, ptr %96, align 8, !tbaa !18
  %98 = getelementptr ptr, ptr %96, i64 -1
  %99 = load ptr, ptr %98, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %97, ptr align 2 %99, i64 %63, i1 false)
  %100 = add nsw i64 %94, 1
  %101 = icmp eq i64 %100, %68
  br i1 %101, label %102, label %93, !llvm.loop !64

102:                                              ; preds = %93, %90
  %103 = add nuw nsw i64 %71, 1
  %104 = icmp eq i64 %103, 3
  br i1 %104, label %105, label %70, !llvm.loop !65

105:                                              ; preds = %102, %51
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 856736}
!11 = !{!"video_par", !12, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !8, i64 132120, !12, i64 699416, !8, i64 699424, !7, i64 848672, !7, i64 848676, !7, i64 848680, !7, i64 848684, !12, i64 848688, !12, i64 848696, !12, i64 848704, !7, i64 848712, !7, i64 848716, !7, i64 848720, !7, i64 848724, !7, i64 848728, !12, i64 848736, !12, i64 848744, !8, i64 848752, !7, i64 848776, !7, i64 848780, !7, i64 848784, !7, i64 848788, !7, i64 848792, !12, i64 848800, !8, i64 848808, !12, i64 848832, !12, i64 848840, !8, i64 848848, !7, i64 848872, !7, i64 848876, !12, i64 848880, !12, i64 848888, !8, i64 848896, !7, i64 848920, !12, i64 848928, !12, i64 848936, !7, i64 848944, !7, i64 848948, !7, i64 848952, !7, i64 848956, !7, i64 848960, !7, i64 848964, !7, i64 848968, !7, i64 848972, !7, i64 848976, !7, i64 848980, !7, i64 848984, !7, i64 848988, !7, i64 848992, !7, i64 848996, !7, i64 849000, !7, i64 849004, !7, i64 849008, !7, i64 849012, !7, i64 849016, !7, i64 849020, !7, i64 849024, !7, i64 849028, !7, i64 849032, !7, i64 849036, !13, i64 849040, !13, i64 849042, !8, i64 849044, !7, i64 849052, !7, i64 849056, !8, i64 849060, !8, i64 849072, !7, i64 849084, !7, i64 849088, !7, i64 849092, !7, i64 849096, !7, i64 849100, !7, i64 849104, !7, i64 849108, !7, i64 849112, !7, i64 849116, !7, i64 849120, !8, i64 849124, !8, i64 849148, !8, i64 849172, !7, i64 849196, !7, i64 849200, !7, i64 849204, !7, i64 849208, !7, i64 849212, !7, i64 849216, !7, i64 849220, !7, i64 849224, !7, i64 849228, !7, i64 849232, !7, i64 849236, !7, i64 849240, !7, i64 849244, !7, i64 849248, !7, i64 849252, !7, i64 849256, !7, i64 849260, !7, i64 849264, !7, i64 849268, !7, i64 849272, !7, i64 849276, !7, i64 849280, !7, i64 849284, !12, i64 849288, !12, i64 849296, !14, i64 849304, !14, i64 849624, !14, i64 849944, !14, i64 850264, !14, i64 850584, !14, i64 850904, !14, i64 851224, !14, i64 851544, !7, i64 851864, !7, i64 851868, !7, i64 851872, !17, i64 851880, !7, i64 851888, !8, i64 851892, !7, i64 855988, !7, i64 855992, !7, i64 855996, !7, i64 856000, !7, i64 856004, !7, i64 856008, !7, i64 856012, !12, i64 856016, !12, i64 856024, !12, i64 856032, !12, i64 856040, !12, i64 856048, !8, i64 856056, !12, i64 856456, !8, i64 856464, !12, i64 856488, !12, i64 856496, !12, i64 856504, !7, i64 856512, !12, i64 856520, !8, i64 856528, !12, i64 856608, !12, i64 856616, !12, i64 856624, !12, i64 856632, !7, i64 856640, !7, i64 856644, !7, i64 856648, !12, i64 856656, !12, i64 856664, !8, i64 856672, !8, i64 856688, !12, i64 856704, !12, i64 856712, !7, i64 856720, !12, i64 856728, !12, i64 856736, !12, i64 856744, !12, i64 856752, !12, i64 856760, !12, i64 856768, !12, i64 856776, !12, i64 856784, !12, i64 856792, !12, i64 856800, !12, i64 856808, !12, i64 856816, !7, i64 856824, !12, i64 856832, !7, i64 856840, !7, i64 856844, !7, i64 856848, !7, i64 856852, !7, i64 856856, !7, i64 856860, !7, i64 856864, !12, i64 856872}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!"image_data", !15, i64 0, !8, i64 136, !8, i64 160, !8, i64 184, !8, i64 208, !8, i64 232, !8, i64 256, !8, i64 280, !8, i64 292, !8, i64 304}
!15 = !{!"frame_format", !7, i64 0, !7, i64 4, !16, i64 8, !8, i64 16, !8, i64 28, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !8, i64 72, !7, i64 84, !8, i64 88, !8, i64 100, !8, i64 112, !7, i64 124, !7, i64 128}
!16 = !{!"double", !8, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!13, !13, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !22}
!42 = !{!15, !7, i64 84}
!43 = !{!15, !7, i64 128}
!44 = !{!11, !12, i64 849288}
!45 = !{!46, !7, i64 1988}
!46 = !{!"inp_par", !8, i64 0, !8, i64 255, !8, i64 510, !7, i64 768, !7, i64 772, !7, i64 776, !7, i64 780, !7, i64 784, !7, i64 788, !15, i64 792, !15, i64 928, !7, i64 1064, !7, i64 1068, !47, i64 1072, !47, i64 2040, !47, i64 3008, !7, i64 3976, !7, i64 3980, !7, i64 3984, !7, i64 3988, !7, i64 3992, !7, i64 3996, !7, i64 4000, !7, i64 4004, !7, i64 4008, !7, i64 4012}
!47 = !{!"video_data_file", !8, i64 0, !8, i64 255, !8, i64 510, !7, i64 768, !7, i64 772, !15, i64 776, !7, i64 912, !7, i64 916, !7, i64 920, !7, i64 924, !7, i64 928, !7, i64 932, !7, i64 936, !7, i64 940, !7, i64 944, !7, i64 948, !7, i64 952, !12, i64 960}
!48 = !{!11, !12, i64 849296}
!49 = !{!11, !12, i64 0}
!50 = !{!15, !7, i64 4}
!51 = !{!15, !7, i64 0}
!52 = !{!47, !7, i64 912}
!53 = !{!47, !7, i64 772}
!54 = !{!47, !7, i64 916}
!55 = !{!11, !7, i64 849088}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
