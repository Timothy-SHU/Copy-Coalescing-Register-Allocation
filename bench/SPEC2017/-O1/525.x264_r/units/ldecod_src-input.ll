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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @initInput(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 15, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 15, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %3
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ @buf2img_bitshift, %15 ], [ @buf2img_basic, %9 ]
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 159
  store ptr %17, ptr %18, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @testEndian() local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
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
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = trunc i64 %36 to i32
  %41 = mul i32 %40, %2
  %42 = zext i32 %41 to i64
  %43 = getelementptr i8, ptr %1, i64 %42
  br label %44

44:                                               ; preds = %37, %44
  %45 = phi i64 [ 0, %37 ], [ %50, %44 ]
  %46 = getelementptr i8, ptr %43, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !47
  %48 = zext i8 %47 to i16
  %49 = getelementptr inbounds i16, ptr %39, i64 %45
  store i16 %48, ptr %49, align 2, !tbaa !48
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, %34
  br i1 %51, label %52, label %44, !llvm.loop !49

52:                                               ; preds = %44, %35
  %53 = add nuw nsw i64 %36, 1
  %54 = icmp eq i64 %53, %33
  br i1 %54, label %101, label %35, !llvm.loop !52

55:                                               ; preds = %25, %74
  %56 = phi i64 [ 0, %25 ], [ %75, %74 ]
  br i1 %26, label %57, label %74

57:                                               ; preds = %55
  %58 = getelementptr inbounds ptr, ptr %0, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !46
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
  store i16 %70, ptr %71, align 2, !tbaa !48
  %72 = add nuw nsw i64 %63, 1
  %73 = icmp eq i64 %72, %28
  br i1 %73, label %74, label %62, !llvm.loop !53

74:                                               ; preds = %62, %55
  %75 = add nuw nsw i64 %56, 1
  %76 = icmp eq i64 %75, %27
  br i1 %76, label %101, label %55, !llvm.loop !54

77:                                               ; preds = %19, %97
  %78 = phi i64 [ 0, %19 ], [ %98, %97 ]
  br i1 %20, label %79, label %97

79:                                               ; preds = %77
  %80 = getelementptr inbounds ptr, ptr %0, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !46
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
  store i16 %93, ptr %94, align 2, !tbaa !48
  %95 = add nuw nsw i64 %85, 1
  %96 = icmp eq i64 %95, %22
  br i1 %96, label %97, label %84, !llvm.loop !55

97:                                               ; preds = %84, %77
  %98 = add nuw nsw i64 %78, 1
  %99 = icmp eq i64 %98, %21
  br i1 %99, label %101, label %77, !llvm.loop !56

100:                                              ; preds = %16
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #12
  br label %101

101:                                              ; preds = %97, %74, %52, %17, %23, %29, %100
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @buf2img_basic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #2 {
  %9 = alloca i16, align 2
  %10 = icmp sgt i32 %6, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12
  br label %12

12:                                               ; preds = %11, %8
  %13 = sext i32 %6 to i64
  %14 = icmp eq i32 %6, 2
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = icmp eq i32 %2, %4
  %17 = icmp eq i32 %3, %5
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !46
  %21 = mul nsw i32 %3, %2
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %20, ptr align 1 %1, i64 %23, i1 false)
  br label %159

24:                                               ; preds = %15
  %25 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5)
  %26 = icmp slt i32 %5, %3
  %27 = sub nsw i32 %5, %3
  %28 = ashr i32 %27, 1
  %29 = select i1 %26, i32 0, i32 %28
  %30 = add nsw i32 %29, %25
  %31 = icmp sgt i32 %30, %5
  %32 = sub nsw i32 %5, %29
  %33 = select i1 %31, i32 %32, i32 %25
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %159

35:                                               ; preds = %24
  %36 = icmp slt i32 %4, %2
  %37 = sub nsw i32 %4, %2
  %38 = ashr i32 %37, 1
  %39 = select i1 %36, i32 0, i32 %38
  %40 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %41 = add nsw i32 %39, %40
  %42 = icmp sgt i32 %41, %4
  %43 = sub nsw i32 %4, %39
  %44 = select i1 %42, i32 %43, i32 %40
  %45 = sext i32 %39 to i64
  %46 = sext i32 %44 to i64
  %47 = shl nsw i64 %46, 1
  %48 = sext i32 %29 to i64
  %49 = sext i32 %2 to i64
  %50 = zext nneg i32 %33 to i64
  %51 = getelementptr ptr, ptr %0, i64 %48
  br label %52

52:                                               ; preds = %35, %52
  %53 = phi i64 [ 0, %35 ], [ %59, %52 ]
  %54 = getelementptr ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = getelementptr inbounds i16, ptr %55, i64 %45
  %57 = mul nsw i64 %53, %49
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %56, ptr align 1 %58, i64 %47, i1 false)
  %59 = add nuw nsw i64 %53, 1
  %60 = icmp ult i64 %59, %50
  br i1 %60, label %52, label %159, !llvm.loop !57

61:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9)
  %62 = icmp eq i32 %2, %4
  %63 = icmp eq i32 %3, %5
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %61
  %66 = icmp sgt i32 %5, 0
  br i1 %66, label %67, label %158

67:                                               ; preds = %65
  %68 = icmp sgt i32 %4, 0
  %69 = sext i32 %6 to i64
  %70 = sext i32 %2 to i64
  %71 = zext nneg i32 %5 to i64
  %72 = zext nneg i32 %4 to i64
  br label %73

73:                                               ; preds = %67, %88
  %74 = phi i64 [ 0, %67 ], [ %89, %88 ]
  %75 = mul nsw i64 %74, %70
  br i1 %68, label %76, label %88

76:                                               ; preds = %73
  %77 = getelementptr inbounds ptr, ptr %0, i64 %74
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  br label %79

79:                                               ; preds = %76, %79
  %80 = phi i64 [ 0, %76 ], [ %86, %79 ]
  store i16 0, ptr %9, align 2, !tbaa !48
  %81 = add nsw i64 %80, %75
  %82 = mul nsw i64 %81, %69
  %83 = getelementptr inbounds i8, ptr %1, i64 %82
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %9, ptr align 1 %83, i64 %13, i1 false)
  %84 = load i16, ptr %9, align 2, !tbaa !48
  %85 = getelementptr inbounds i16, ptr %78, i64 %80
  store i16 %84, ptr %85, align 2, !tbaa !48
  %86 = add nuw nsw i64 %80, 1
  %87 = icmp eq i64 %86, %72
  br i1 %87, label %88, label %79, !llvm.loop !58

88:                                               ; preds = %79, %73
  %89 = add nuw nsw i64 %74, 1
  %90 = icmp eq i64 %89, %71
  br i1 %90, label %158, label %73, !llvm.loop !59

91:                                               ; preds = %61
  %92 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %93 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5)
  %94 = icmp slt i32 %4, %2
  %95 = sub nsw i32 %4, %2
  %96 = ashr i32 %95, 1
  %97 = select i1 %94, i32 0, i32 %96
  %98 = icmp slt i32 %5, %3
  %99 = sub nsw i32 %5, %3
  %100 = ashr i32 %99, 1
  %101 = select i1 %98, i32 0, i32 %100
  %102 = add nsw i32 %97, %92
  %103 = icmp sgt i32 %102, %4
  %104 = sub nsw i32 %4, %97
  %105 = select i1 %103, i32 %104, i32 %92
  %106 = add nsw i32 %101, %93
  %107 = icmp sgt i32 %106, %5
  %108 = sub nsw i32 %5, %101
  %109 = select i1 %107, i32 %108, i32 %93
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %91
  %112 = sext i32 %97 to i64
  %113 = sext i32 %105 to i64
  %114 = shl nsw i64 %113, 1
  %115 = sext i32 %101 to i64
  %116 = sext i32 %2 to i64
  %117 = zext nneg i32 %109 to i64
  %118 = getelementptr ptr, ptr %0, i64 %115
  br label %130

119:                                              ; preds = %130, %91
  %120 = icmp sgt i32 %109, 0
  br i1 %120, label %121, label %158

121:                                              ; preds = %119
  %122 = icmp sgt i32 %105, 0
  %123 = sext i32 %6 to i64
  %124 = sext i32 %97 to i64
  %125 = sext i32 %105 to i64
  %126 = sext i32 %2 to i64
  %127 = sext i32 %101 to i64
  %128 = zext nneg i32 %109 to i64
  %129 = getelementptr ptr, ptr %0, i64 %127
  br label %139

130:                                              ; preds = %111, %130
  %131 = phi i64 [ 0, %111 ], [ %137, %130 ]
  %132 = getelementptr ptr, ptr %118, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = getelementptr inbounds i16, ptr %133, i64 %112
  %135 = mul nsw i64 %131, %116
  %136 = getelementptr inbounds i8, ptr %1, i64 %135
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %134, ptr align 1 %136, i64 %114, i1 false)
  %137 = add nuw nsw i64 %131, 1
  %138 = icmp ult i64 %137, %117
  br i1 %138, label %130, label %119, !llvm.loop !60

139:                                              ; preds = %121, %155
  %140 = phi i64 [ 0, %121 ], [ %156, %155 ]
  %141 = mul nsw i64 %140, %126
  br i1 %122, label %142, label %155

142:                                              ; preds = %139
  %143 = getelementptr ptr, ptr %129, i64 %140
  %144 = load ptr, ptr %143, align 8, !tbaa !46
  %145 = getelementptr i16, ptr %144, i64 %124
  br label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ 0, %142 ], [ %153, %146 ]
  store i16 0, ptr %9, align 2, !tbaa !48
  %148 = add nsw i64 %147, %141
  %149 = mul nsw i64 %148, %123
  %150 = getelementptr inbounds i8, ptr %1, i64 %149
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %9, ptr align 1 %150, i64 %13, i1 false)
  %151 = load i16, ptr %9, align 2, !tbaa !48
  %152 = getelementptr i16, ptr %145, i64 %147
  store i16 %151, ptr %152, align 2, !tbaa !48
  %153 = add nuw nsw i64 %147, 1
  %154 = icmp slt i64 %153, %125
  br i1 %154, label %146, label %155, !llvm.loop !61

155:                                              ; preds = %146, %139
  %156 = add nuw nsw i64 %140, 1
  %157 = icmp ult i64 %156, %128
  br i1 %157, label %139, label %158, !llvm.loop !62

158:                                              ; preds = %155, %88, %119, %65
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9)
  br label %159

159:                                              ; preds = %52, %24, %19, %158
  ret void
}

; Function Attrs: nounwind uwtable
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
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = icmp sgt i32 %5, 0
  br i1 %19, label %20, label %114

20:                                               ; preds = %18
  %21 = icmp sgt i32 %4, 0
  %22 = sext i32 %6 to i64
  %23 = icmp sgt i32 %7, 0
  %24 = sub nsw i32 0, %7
  %25 = add nsw i32 %7, -1
  %26 = shl nuw i32 1, %25
  %27 = sext i32 %6 to i64
  %28 = sext i32 %2 to i64
  %29 = zext nneg i32 %5 to i64
  %30 = zext nneg i32 %4 to i64
  br label %31

31:                                               ; preds = %20, %52
  %32 = phi i64 [ 0, %20 ], [ %53, %52 ]
  %33 = mul nsw i64 %32, %28
  br i1 %21, label %34, label %52

34:                                               ; preds = %31
  %35 = getelementptr inbounds ptr, ptr %0, i64 %32
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i64 [ 0, %34 ], [ %50, %37 ]
  store i16 0, ptr %9, align 2, !tbaa !48
  %39 = add nsw i64 %38, %33
  %40 = mul nsw i64 %39, %27
  %41 = getelementptr inbounds i8, ptr %1, i64 %40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %9, ptr align 1 %41, i64 %22, i1 false)
  %42 = load i16, ptr %9, align 2, !tbaa !48
  %43 = zext i16 %42 to i32
  %44 = add nuw nsw i32 %26, %43
  %45 = ashr i32 %44, %7
  %46 = shl i32 %43, %24
  %47 = select i1 %23, i32 %45, i32 %46
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds i16, ptr %36, i64 %38
  store i16 %48, ptr %49, align 2, !tbaa !48
  %50 = add nuw nsw i64 %38, 1
  %51 = icmp eq i64 %50, %30
  br i1 %51, label %52, label %37, !llvm.loop !63

52:                                               ; preds = %37, %31
  %53 = add nuw nsw i64 %32, 1
  %54 = icmp eq i64 %53, %29
  br i1 %54, label %114, label %31, !llvm.loop !64

55:                                               ; preds = %14
  %56 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5)
  %57 = icmp slt i32 %5, %3
  %58 = sub nsw i32 %5, %3
  %59 = ashr i32 %58, 1
  %60 = select i1 %57, i32 0, i32 %59
  %61 = add nsw i32 %60, %56
  %62 = icmp sgt i32 %61, %5
  %63 = sub nsw i32 %5, %60
  %64 = select i1 %62, i32 %63, i32 %56
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %55
  %67 = icmp slt i32 %4, %2
  %68 = sub nsw i32 %4, %2
  %69 = ashr i32 %68, 1
  %70 = select i1 %67, i32 0, i32 %69
  %71 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %72 = add nsw i32 %70, %71
  %73 = icmp sgt i32 %72, %4
  %74 = sub nsw i32 %4, %70
  %75 = select i1 %73, i32 %74, i32 %71
  %76 = icmp sgt i32 %75, 0
  %77 = sext i32 %6 to i64
  %78 = icmp sgt i32 %7, 0
  %79 = sub nsw i32 0, %7
  %80 = add nsw i32 %7, -1
  %81 = shl nuw i32 1, %80
  %82 = sext i32 %6 to i64
  %83 = sext i32 %70 to i64
  %84 = sext i32 %75 to i64
  %85 = sext i32 %2 to i64
  %86 = sext i32 %60 to i64
  %87 = zext nneg i32 %64 to i64
  %88 = getelementptr ptr, ptr %0, i64 %86
  br label %89

89:                                               ; preds = %66, %111
  %90 = phi i64 [ 0, %66 ], [ %112, %111 ]
  %91 = mul nsw i64 %90, %85
  br i1 %76, label %92, label %111

92:                                               ; preds = %89
  %93 = getelementptr ptr, ptr %88, i64 %90
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = getelementptr i16, ptr %94, i64 %83
  br label %96

96:                                               ; preds = %92, %96
  %97 = phi i64 [ 0, %92 ], [ %109, %96 ]
  store i16 0, ptr %9, align 2, !tbaa !48
  %98 = add nsw i64 %97, %91
  %99 = mul nsw i64 %98, %82
  %100 = getelementptr inbounds i8, ptr %1, i64 %99
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %9, ptr align 1 %100, i64 %77, i1 false)
  %101 = load i16, ptr %9, align 2, !tbaa !48
  %102 = zext i16 %101 to i32
  %103 = add nuw nsw i32 %81, %102
  %104 = ashr i32 %103, %7
  %105 = shl i32 %102, %79
  %106 = select i1 %78, i32 %104, i32 %105
  %107 = trunc i32 %106 to i16
  %108 = getelementptr i16, ptr %95, i64 %97
  store i16 %107, ptr %108, align 2, !tbaa !48
  %109 = add nuw nsw i64 %97, 1
  %110 = icmp slt i64 %109, %84
  br i1 %110, label %96, label %111, !llvm.loop !65

111:                                              ; preds = %96, %89
  %112 = add nuw nsw i64 %90, 1
  %113 = icmp ult i64 %112, %87
  br i1 %113, label %89, label %114, !llvm.loop !66

114:                                              ; preds = %111, %52, %55, %18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @fillPlane(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  %8 = trunc i32 %1 to i16
  %9 = zext nneg i32 %3 to i64
  %10 = zext nneg i32 %2 to i64
  br label %11

11:                                               ; preds = %6, %21
  %12 = phi i64 [ 0, %6 ], [ %22, %21 ]
  br i1 %7, label %13, label %21

13:                                               ; preds = %11
  %14 = getelementptr inbounds ptr, ptr %0, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %19, %16 ]
  %18 = getelementptr inbounds i16, ptr %15, i64 %17
  store i16 %8, ptr %18, align 2, !tbaa !48
  %19 = add nuw nsw i64 %17, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %21, label %16, !llvm.loop !67

21:                                               ; preds = %16, %11
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %11, !llvm.loop !68

24:                                               ; preds = %21, %4
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @AllocateFrameMemory(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 14
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = mul nsw i32 %7, %5
  %9 = sext i32 %8 to i64
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #13
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  store ptr %10, ptr %11, align 8, !tbaa !71
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #12
  br label %14

14:                                               ; preds = %13, %3
  %15 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 13, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !72
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %4, align 4, !tbaa !69
  %20 = load i32, ptr %6, align 8, !tbaa !70
  %21 = mul nsw i32 %20, %19
  %22 = sext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #13
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 108
  store ptr %23, ptr %24, align 8, !tbaa !75
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #12
  br label %27

27:                                               ; preds = %18, %26, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @DeleteFrameMemory(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 108
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #12
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @read_one_frame(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #2 {
  %8 = load ptr, ptr %0, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = mul i32 %12, %10
  %14 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 13, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = mul i32 %15, %10
  %17 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !77
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i32, ptr %4, align 8, !tbaa !78
  %22 = icmp eq i32 %21, 3
  br label %23

23:                                               ; preds = %20, %7
  %24 = phi i1 [ false, %7 ], [ %22, %20 ]
  %25 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !79
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !80
  %31 = icmp eq i32 %30, 3
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  br i1 %31, label %34, label %36

34:                                               ; preds = %28
  %35 = tail call i32 @ReadTIFFImage(ptr noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef %4, ptr noundef %33) #12
  br label %42

36:                                               ; preds = %28
  %37 = tail call i32 @ReadFrameSeparate(ptr noundef %8, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %33) #12
  br label %42

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = tail call i32 @ReadFrameConcatenated(ptr noundef %8, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %40) #12
  br label %42

42:                                               ; preds = %34, %36, %38
  %43 = phi i32 [ %35, %34 ], [ %37, %36 ], [ %41, %38 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %219, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !81
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %145, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %51 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 108
  %52 = load ptr, ptr %50, align 8, !tbaa !46
  %53 = load ptr, ptr %51, align 8, !tbaa !46
  %54 = load i32, ptr %11, align 8, !tbaa !34
  %55 = mul nsw i32 %54, %10
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i32, ptr %14, align 4, !tbaa !34
  %59 = mul nsw i32 %58, %10
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  %62 = load i32, ptr %4, align 8, !tbaa !78
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %94

64:                                               ; preds = %49
  %65 = load i32, ptr %14, align 4, !tbaa !34
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = sext i32 %10 to i64
  %69 = shl nsw i32 %10, 1
  %70 = sext i32 %69 to i64
  br label %71

71:                                               ; preds = %67, %71
  %72 = phi i32 [ 0, %67 ], [ %85, %71 ]
  %73 = phi ptr [ %61, %67 ], [ %81, %71 ]
  %74 = phi ptr [ %57, %67 ], [ %77, %71 ]
  %75 = phi ptr [ %53, %67 ], [ %83, %71 ]
  %76 = phi ptr [ %52, %67 ], [ %84, %71 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %76, i64 %68, i1 false)
  %77 = getelementptr inbounds i8, ptr %74, i64 %68
  %78 = getelementptr inbounds i8, ptr %76, i64 %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %75, ptr align 1 %78, i64 %70, i1 false)
  %79 = getelementptr inbounds i8, ptr %75, i64 %70
  %80 = getelementptr inbounds i8, ptr %78, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 1 %80, i64 %68, i1 false)
  %81 = getelementptr inbounds i8, ptr %73, i64 %68
  %82 = getelementptr inbounds i8, ptr %80, i64 %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %79, ptr align 1 %82, i64 %70, i1 false)
  %83 = getelementptr inbounds i8, ptr %79, i64 %70
  %84 = getelementptr inbounds i8, ptr %82, i64 %70
  %85 = add nuw nsw i32 %72, 1
  %86 = load i32, ptr %14, align 4, !tbaa !34
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %71, label %88, !llvm.loop !82

88:                                               ; preds = %71, %64
  %89 = phi ptr [ %53, %64 ], [ %83, %71 ]
  %90 = phi ptr [ %57, %64 ], [ %77, %71 ]
  %91 = phi ptr [ %61, %64 ], [ %81, %71 ]
  %92 = load ptr, ptr %50, align 8, !tbaa !46
  %93 = load ptr, ptr %51, align 8, !tbaa !46
  store ptr %93, ptr %50, align 8, !tbaa !46
  store ptr %92, ptr %51, align 8, !tbaa !46
  br label %94

94:                                               ; preds = %88, %49
  %95 = phi ptr [ %92, %88 ], [ %52, %49 ]
  %96 = phi ptr [ %89, %88 ], [ %53, %49 ]
  %97 = phi ptr [ %90, %88 ], [ %57, %49 ]
  %98 = phi ptr [ %91, %88 ], [ %61, %49 ]
  %99 = load i32, ptr %4, align 8, !tbaa !78
  switch i32 %99, label %145 [
    i32 2, label %105
    i32 3, label %100
  ]

100:                                              ; preds = %94
  %101 = load i32, ptr %11, align 8, !tbaa !34
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %142

103:                                              ; preds = %100
  %104 = sext i32 %10 to i64
  br label %127

105:                                              ; preds = %94
  %106 = load i32, ptr %14, align 4, !tbaa !34
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  %109 = sext i32 %10 to i64
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi i32 [ 0, %108 ], [ %124, %110 ]
  %112 = phi ptr [ %98, %108 ], [ %122, %110 ]
  %113 = phi ptr [ %97, %108 ], [ %118, %110 ]
  %114 = phi ptr [ %96, %108 ], [ %120, %110 ]
  %115 = phi ptr [ %95, %108 ], [ %123, %110 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %114, ptr align 1 %115, i64 %109, i1 false)
  %116 = getelementptr inbounds i8, ptr %114, i64 %109
  %117 = getelementptr inbounds i8, ptr %115, i64 %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %113, ptr align 1 %117, i64 %109, i1 false)
  %118 = getelementptr inbounds i8, ptr %113, i64 %109
  %119 = getelementptr inbounds i8, ptr %117, i64 %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %116, ptr align 1 %119, i64 %109, i1 false)
  %120 = getelementptr inbounds i8, ptr %116, i64 %109
  %121 = getelementptr inbounds i8, ptr %119, i64 %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %112, ptr align 1 %121, i64 %109, i1 false)
  %122 = getelementptr inbounds i8, ptr %112, i64 %109
  %123 = getelementptr inbounds i8, ptr %121, i64 %109
  %124 = add nuw nsw i32 %111, 1
  %125 = load i32, ptr %14, align 4, !tbaa !34
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %110, label %142, !llvm.loop !83

127:                                              ; preds = %103, %127
  %128 = phi i32 [ 0, %103 ], [ %139, %127 ]
  %129 = phi ptr [ %98, %103 ], [ %137, %127 ]
  %130 = phi ptr [ %97, %103 ], [ %135, %127 ]
  %131 = phi ptr [ %96, %103 ], [ %133, %127 ]
  %132 = phi ptr [ %95, %103 ], [ %138, %127 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %132, i64 %104, i1 false)
  %133 = getelementptr inbounds i8, ptr %131, i64 %104
  %134 = getelementptr inbounds i8, ptr %132, i64 %104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %130, ptr align 1 %134, i64 %104, i1 false)
  %135 = getelementptr inbounds i8, ptr %130, i64 %104
  %136 = getelementptr inbounds i8, ptr %134, i64 %104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr align 1 %136, i64 %104, i1 false)
  %137 = getelementptr inbounds i8, ptr %129, i64 %104
  %138 = getelementptr inbounds i8, ptr %136, i64 %104
  %139 = add nuw nsw i32 %128, 1
  %140 = load i32, ptr %11, align 8, !tbaa !34
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %127, label %142, !llvm.loop !84

142:                                              ; preds = %127, %110, %100, %105
  %143 = load ptr, ptr %50, align 8, !tbaa !46
  %144 = load ptr, ptr %51, align 8, !tbaa !46
  store ptr %144, ptr %50, align 8, !tbaa !46
  store ptr %143, ptr %51, align 8, !tbaa !46
  br label %145

145:                                              ; preds = %142, %94, %45
  %146 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 15
  %147 = load i32, ptr %146, align 8, !tbaa !34
  %148 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 15
  %149 = load i32, ptr %148, align 8, !tbaa !34
  %150 = sub nsw i32 %147, %149
  %151 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 159
  %152 = load ptr, ptr %151, align 8, !tbaa !38
  %153 = load ptr, ptr %6, align 8, !tbaa !46
  %154 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %155 = load ptr, ptr %154, align 8, !tbaa !71
  %156 = sext i32 %13 to i64
  %157 = select i1 %24, i64 %156, i64 0
  %158 = getelementptr inbounds i8, ptr %155, i64 %157
  %159 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3
  %160 = load i32, ptr %159, align 8, !tbaa !34
  %161 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4
  %162 = load i32, ptr %161, align 4, !tbaa !34
  %163 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 3
  %164 = load i32, ptr %163, align 8, !tbaa !34
  %165 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 4
  %166 = load i32, ptr %165, align 4, !tbaa !34
  tail call void %152(ptr noundef %153, ptr noundef %158, i32 noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %166, i32 noundef %10, i32 noundef %150) #12
  %167 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 72
  %168 = load i32, ptr %167, align 8, !tbaa !85
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %219, label %170

170:                                              ; preds = %145
  %171 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 15, i64 1
  %172 = load i32, ptr %171, align 4, !tbaa !34
  %173 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 15, i64 1
  %174 = load i32, ptr %173, align 4, !tbaa !34
  %175 = sub nsw i32 %172, %174
  %176 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 159
  %177 = load ptr, ptr %176, align 8, !tbaa !38
  %178 = getelementptr inbounds ptr, ptr %6, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %181 = load ptr, ptr %180, align 8, !tbaa !71
  %182 = sext i32 %13 to i64
  %183 = getelementptr inbounds i8, ptr %181, i64 %182
  %184 = sext i32 %16 to i64
  %185 = select i1 %24, i64 %184, i64 0
  %186 = getelementptr inbounds i8, ptr %183, i64 %185
  %187 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3, i64 1
  %188 = load i32, ptr %187, align 4, !tbaa !34
  %189 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4, i64 1
  %190 = load i32, ptr %189, align 4, !tbaa !34
  %191 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 3, i64 1
  %192 = load i32, ptr %191, align 4, !tbaa !34
  %193 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 4, i64 1
  %194 = load i32, ptr %193, align 4, !tbaa !34
  tail call void %177(ptr noundef %179, ptr noundef %186, i32 noundef %188, i32 noundef %190, i32 noundef %192, i32 noundef %194, i32 noundef %10, i32 noundef %175) #12
  %195 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 15, i64 2
  %196 = load i32, ptr %195, align 8, !tbaa !34
  %197 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 15, i64 2
  %198 = load i32, ptr %197, align 8, !tbaa !34
  %199 = sub nsw i32 %196, %198
  %200 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 159
  %201 = load ptr, ptr %200, align 8, !tbaa !38
  %202 = getelementptr inbounds ptr, ptr %6, i64 2
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 107
  %205 = load ptr, ptr %204, align 8, !tbaa !71
  %206 = sext i32 %13 to i64
  %207 = getelementptr inbounds i8, ptr %205, i64 %206
  %208 = sext i32 %16 to i64
  %209 = getelementptr inbounds i8, ptr %207, i64 %208
  %210 = select i1 %24, ptr %205, ptr %209
  %211 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3, i64 1
  %212 = load i32, ptr %211, align 4, !tbaa !34
  %213 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4, i64 1
  %214 = load i32, ptr %213, align 4, !tbaa !34
  %215 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 3, i64 1
  %216 = load i32, ptr %215, align 4, !tbaa !34
  %217 = getelementptr inbounds %struct.frame_format, ptr %5, i64 0, i32 4, i64 1
  %218 = load i32, ptr %217, align 4, !tbaa !34
  tail call void %201(ptr noundef %203, ptr noundef %210, i32 noundef %212, i32 noundef %214, i32 noundef %216, i32 noundef %218, i32 noundef %10, i32 noundef %199) #12
  br label %219

219:                                              ; preds = %170, %145, %42
  %220 = phi i32 [ 0, %42 ], [ %43, %145 ], [ %43, %170 ]
  ret i32 %220
}

declare i32 @ReadTIFFImage(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ReadFrameSeparate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ReadFrameConcatenated(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pad_borders(ptr nocapture noundef readonly byval(%struct.frame_format) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #10 {
  %7 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = icmp slt i32 %8, %1
  %16 = sext i32 %8 to i64
  %17 = zext nneg i32 %12 to i64
  %18 = shl nsw i64 %16, 1
  %19 = sext i32 %1 to i64
  br label %20

20:                                               ; preds = %14, %34
  %21 = phi i64 [ 0, %14 ], [ %35, %34 ]
  br i1 %15, label %22, label %34

22:                                               ; preds = %20
  %23 = load ptr, ptr %5, align 8, !tbaa !46
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr i8, ptr %25, i64 %18
  %27 = getelementptr i8, ptr %26, i64 -2
  %28 = load i16, ptr %27, align 2
  br label %29

29:                                               ; preds = %22, %29
  %30 = phi i64 [ %16, %22 ], [ %32, %29 ]
  %31 = getelementptr i16, ptr %25, i64 %30
  store i16 %28, ptr %31, align 2, !tbaa !48
  %32 = add nsw i64 %30, 1
  %33 = icmp eq i64 %32, %19
  br i1 %33, label %34, label %29, !llvm.loop !86

34:                                               ; preds = %29, %20
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %17
  br i1 %36, label %37, label %20, !llvm.loop !87

37:                                               ; preds = %34, %10, %6
  %38 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !34
  %40 = icmp slt i32 %39, %2
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = sext i32 %1 to i64
  %43 = shl nsw i64 %42, 1
  %44 = sext i32 %39 to i64
  %45 = sext i32 %2 to i64
  br label %46

46:                                               ; preds = %41, %46
  %47 = phi i64 [ %44, %41 ], [ %53, %46 ]
  %48 = load ptr, ptr %5, align 8, !tbaa !46
  %49 = getelementptr inbounds ptr, ptr %48, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr ptr, ptr %49, i64 -1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %50, ptr align 2 %52, i64 %43, i1 false)
  %53 = add nsw i64 %47, 1
  %54 = icmp eq i64 %53, %45
  br i1 %54, label %55, label %46, !llvm.loop !88

55:                                               ; preds = %46, %37
  %56 = load i32, ptr %0, align 8, !tbaa !78
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %112, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !34
  %61 = icmp sge i32 %60, %3
  %62 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4, i64 1
  %63 = load i32, ptr %62, align 8
  %64 = icmp slt i32 %63, %4
  %65 = icmp slt i32 %63, 1
  %66 = icmp slt i32 %60, %3
  %67 = sext i32 %3 to i64
  %68 = shl nsw i64 %67, 1
  %69 = sext i32 %60 to i64
  %70 = sext i32 %63 to i64
  %71 = shl nsw i64 %69, 1
  %72 = select i1 %61, i1 true, i1 %65
  %73 = zext i32 %63 to i64
  %74 = sext i32 %3 to i64
  %75 = sext i32 %4 to i64
  br label %76

76:                                               ; preds = %58, %109
  %77 = phi i64 [ 1, %58 ], [ %110, %109 ]
  br i1 %72, label %97, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds ptr, ptr %5, i64 %77
  br label %80

80:                                               ; preds = %78, %94
  %81 = phi i64 [ 0, %78 ], [ %95, %94 ]
  br i1 %66, label %82, label %94

82:                                               ; preds = %80
  %83 = load ptr, ptr %79, align 8, !tbaa !46
  %84 = getelementptr inbounds ptr, ptr %83, i64 %81
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = getelementptr i8, ptr %85, i64 %71
  %87 = getelementptr i8, ptr %86, i64 -2
  %88 = load i16, ptr %87, align 2
  br label %89

89:                                               ; preds = %82, %89
  %90 = phi i64 [ %69, %82 ], [ %92, %89 ]
  %91 = getelementptr i16, ptr %85, i64 %90
  store i16 %88, ptr %91, align 2, !tbaa !48
  %92 = add nsw i64 %90, 1
  %93 = icmp eq i64 %92, %74
  br i1 %93, label %94, label %89, !llvm.loop !89

94:                                               ; preds = %89, %80
  %95 = add nuw nsw i64 %81, 1
  %96 = icmp eq i64 %95, %73
  br i1 %96, label %97, label %80, !llvm.loop !90

97:                                               ; preds = %94, %76
  br i1 %64, label %98, label %109

98:                                               ; preds = %97
  %99 = getelementptr inbounds ptr, ptr %5, i64 %77
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi i64 [ %70, %98 ], [ %107, %100 ]
  %102 = load ptr, ptr %99, align 8, !tbaa !46
  %103 = getelementptr inbounds ptr, ptr %102, i64 %101
  %104 = load ptr, ptr %103, align 8, !tbaa !46
  %105 = getelementptr ptr, ptr %103, i64 -1
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %104, ptr align 2 %106, i64 %68, i1 false)
  %107 = add nsw i64 %101, 1
  %108 = icmp eq i64 %107, %75
  br i1 %108, label %109, label %100, !llvm.loop !91

109:                                              ; preds = %100, %97
  %110 = add nuw nsw i64 %77, 1
  %111 = icmp eq i64 %110, 3
  br i1 %111, label %112, label %76, !llvm.loop !92

112:                                              ; preds = %109, %55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 856736}
!39 = !{!"video_par", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !36, i64 132120, !40, i64 699416, !36, i64 699424, !35, i64 848672, !35, i64 848676, !35, i64 848680, !35, i64 848684, !40, i64 848688, !40, i64 848696, !40, i64 848704, !35, i64 848712, !35, i64 848716, !35, i64 848720, !35, i64 848724, !35, i64 848728, !40, i64 848736, !40, i64 848744, !36, i64 848752, !35, i64 848776, !35, i64 848780, !35, i64 848784, !35, i64 848788, !35, i64 848792, !40, i64 848800, !36, i64 848808, !40, i64 848832, !40, i64 848840, !36, i64 848848, !35, i64 848872, !35, i64 848876, !40, i64 848880, !40, i64 848888, !36, i64 848896, !35, i64 848920, !40, i64 848928, !40, i64 848936, !35, i64 848944, !35, i64 848948, !35, i64 848952, !35, i64 848956, !35, i64 848960, !35, i64 848964, !35, i64 848968, !35, i64 848972, !35, i64 848976, !35, i64 848980, !35, i64 848984, !35, i64 848988, !35, i64 848992, !35, i64 848996, !35, i64 849000, !35, i64 849004, !35, i64 849008, !35, i64 849012, !35, i64 849016, !35, i64 849020, !35, i64 849024, !35, i64 849028, !35, i64 849032, !35, i64 849036, !41, i64 849040, !41, i64 849042, !36, i64 849044, !35, i64 849052, !35, i64 849056, !36, i64 849060, !36, i64 849072, !35, i64 849084, !35, i64 849088, !35, i64 849092, !35, i64 849096, !35, i64 849100, !35, i64 849104, !35, i64 849108, !35, i64 849112, !35, i64 849116, !35, i64 849120, !36, i64 849124, !36, i64 849148, !36, i64 849172, !35, i64 849196, !35, i64 849200, !35, i64 849204, !35, i64 849208, !35, i64 849212, !35, i64 849216, !35, i64 849220, !35, i64 849224, !35, i64 849228, !35, i64 849232, !35, i64 849236, !35, i64 849240, !35, i64 849244, !35, i64 849248, !35, i64 849252, !35, i64 849256, !35, i64 849260, !35, i64 849264, !35, i64 849268, !35, i64 849272, !35, i64 849276, !35, i64 849280, !35, i64 849284, !40, i64 849288, !40, i64 849296, !42, i64 849304, !42, i64 849624, !42, i64 849944, !42, i64 850264, !42, i64 850584, !42, i64 850904, !42, i64 851224, !42, i64 851544, !35, i64 851864, !35, i64 851868, !35, i64 851872, !45, i64 851880, !35, i64 851888, !36, i64 851892, !35, i64 855988, !35, i64 855992, !35, i64 855996, !35, i64 856000, !35, i64 856004, !35, i64 856008, !35, i64 856012, !40, i64 856016, !40, i64 856024, !40, i64 856032, !40, i64 856040, !40, i64 856048, !36, i64 856056, !40, i64 856456, !36, i64 856464, !40, i64 856488, !40, i64 856496, !40, i64 856504, !35, i64 856512, !40, i64 856520, !36, i64 856528, !40, i64 856608, !40, i64 856616, !40, i64 856624, !40, i64 856632, !35, i64 856640, !35, i64 856644, !35, i64 856648, !40, i64 856656, !40, i64 856664, !36, i64 856672, !36, i64 856688, !40, i64 856704, !40, i64 856712, !35, i64 856720, !40, i64 856728, !40, i64 856736, !40, i64 856744, !40, i64 856752, !40, i64 856760, !40, i64 856768, !40, i64 856776, !40, i64 856784, !40, i64 856792, !40, i64 856800, !40, i64 856808, !40, i64 856816, !35, i64 856824, !40, i64 856832, !35, i64 856840, !35, i64 856844, !35, i64 856848, !35, i64 856852, !35, i64 856856, !35, i64 856860, !35, i64 856864, !40, i64 856872}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"image_data", !43, i64 0, !36, i64 136, !36, i64 160, !36, i64 184, !36, i64 208, !36, i64 232, !36, i64 256, !36, i64 280, !36, i64 292, !36, i64 304}
!43 = !{!"frame_format", !35, i64 0, !35, i64 4, !44, i64 8, !36, i64 16, !36, i64 28, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !36, i64 72, !35, i64 84, !36, i64 88, !36, i64 100, !36, i64 112, !35, i64 124, !35, i64 128}
!44 = !{!"double", !36, i64 0}
!45 = !{!"long", !36, i64 0}
!46 = !{!40, !40, i64 0}
!47 = !{!36, !36, i64 0}
!48 = !{!41, !41, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !50, !51}
!53 = distinct !{!53, !50, !51}
!54 = distinct !{!54, !50, !51}
!55 = distinct !{!55, !50, !51}
!56 = distinct !{!56, !50, !51}
!57 = distinct !{!57, !50, !51}
!58 = distinct !{!58, !50, !51}
!59 = distinct !{!59, !50, !51}
!60 = distinct !{!60, !50, !51}
!61 = distinct !{!61, !50, !51}
!62 = distinct !{!62, !50, !51}
!63 = distinct !{!63, !50, !51}
!64 = distinct !{!64, !50, !51}
!65 = distinct !{!65, !50, !51}
!66 = distinct !{!66, !50, !51}
!67 = distinct !{!67, !50, !51}
!68 = distinct !{!68, !50, !51}
!69 = !{!43, !35, i64 84}
!70 = !{!43, !35, i64 128}
!71 = !{!39, !40, i64 849288}
!72 = !{!73, !35, i64 1988}
!73 = !{!"inp_par", !36, i64 0, !36, i64 255, !36, i64 510, !35, i64 768, !35, i64 772, !35, i64 776, !35, i64 780, !35, i64 784, !35, i64 788, !43, i64 792, !43, i64 928, !35, i64 1064, !35, i64 1068, !74, i64 1072, !74, i64 2040, !74, i64 3008, !35, i64 3976, !35, i64 3980, !35, i64 3984, !35, i64 3988, !35, i64 3992, !35, i64 3996, !35, i64 4000, !35, i64 4004, !35, i64 4008, !35, i64 4012}
!74 = !{!"video_data_file", !36, i64 0, !36, i64 255, !36, i64 510, !35, i64 768, !35, i64 772, !43, i64 776, !35, i64 912, !35, i64 916, !35, i64 920, !35, i64 924, !35, i64 928, !35, i64 932, !35, i64 936, !35, i64 940, !35, i64 944, !35, i64 948, !35, i64 952, !40, i64 960}
!75 = !{!39, !40, i64 849296}
!76 = !{!39, !40, i64 0}
!77 = !{!43, !35, i64 4}
!78 = !{!43, !35, i64 0}
!79 = !{!74, !35, i64 912}
!80 = !{!74, !35, i64 772}
!81 = !{!74, !35, i64 916}
!82 = distinct !{!82, !50, !51}
!83 = distinct !{!83, !50, !51}
!84 = distinct !{!84, !50, !51}
!85 = !{!39, !35, i64 849088}
!86 = distinct !{!86, !50, !51}
!87 = distinct !{!87, !50, !51}
!88 = distinct !{!88, !50, !51}
!89 = distinct !{!89, !50, !51}
!90 = distinct !{!90, !50, !51}
!91 = distinct !{!91, !50, !51}
!92 = distinct !{!92, !50, !51}
