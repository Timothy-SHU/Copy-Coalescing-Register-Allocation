; ModuleID = 'blender/source/blender/imbuf/intern/divers.c'
source_filename = "blender/source/blender/imbuf/intern/divers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ColorSpace = type { ptr, ptr, i32, [64 x i8], [512 x i8], ptr, ptr, i8, i8 }

@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"IMB_float_from_rect\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"dithering context\00", align 1
@BLI_color_to_srgb_table = external local_unnamed_addr global [65536 x i16], align 16
@BLI_color_from_srgb_table = external local_unnamed_addr global [256 x float], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_de_interlace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %3
  %9 = or disjoint i32 %5, 4
  store i32 %9, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !45
  %18 = sdiv i32 %17, 2
  %19 = tail call ptr @IMB_allocImBuf(i32 noundef %15, i32 noundef %18, i8 noundef zeroext 32, i32 noundef 1) #17
  %20 = load i32, ptr %14, align 8, !tbaa !44
  %21 = load i32, ptr %16, align 4, !tbaa !45
  %22 = sdiv i32 %21, 2
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %20, i32 noundef %22, i8 noundef zeroext 32, i32 noundef 1) #17
  %24 = load i32, ptr %14, align 8, !tbaa !44
  %25 = shl nsw i32 %24, 1
  store i32 %25, ptr %14, align 8, !tbaa !44
  %26 = load i32, ptr %16, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %19, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %25, i32 noundef %26) #17
  %27 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !44
  %29 = load i32, ptr %14, align 8, !tbaa !44
  %30 = load i32, ptr %16, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %28, i32 noundef 0, i32 noundef %29, i32 noundef %30) #17
  %31 = load i32, ptr %14, align 8, !tbaa !44
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %14, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %34, i32 noundef %36) #17
  %37 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !45
  %39 = load i32, ptr %27, align 8, !tbaa !44
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %23, i32 noundef 0, i32 noundef %38, i32 noundef 0, i32 noundef 0, i32 noundef %39, i32 noundef %38) #17
  tail call void @IMB_freeImBuf(ptr noundef %19) #17
  tail call void @IMB_freeImBuf(ptr noundef %23) #17
  br label %40

40:                                               ; preds = %13, %8
  %41 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !45
  %43 = sdiv i32 %42, 2
  store i32 %43, ptr %41, align 4, !tbaa !45
  br label %44

44:                                               ; preds = %3, %1, %40
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_interlace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = and i32 %5, -5
  store i32 %6, ptr %4, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = shl nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = tail call ptr @IMB_allocImBuf(i32 noundef %15, i32 noundef %8, i8 noundef zeroext 32, i32 noundef 1) #17
  %17 = load i32, ptr %14, align 8, !tbaa !44
  %18 = load i32, ptr %7, align 4, !tbaa !45
  %19 = sdiv i32 %18, 2
  %20 = tail call ptr @IMB_allocImBuf(i32 noundef %17, i32 noundef %19, i8 noundef zeroext 32, i32 noundef 1) #17
  %21 = load i32, ptr %14, align 8, !tbaa !44
  %22 = load i32, ptr %7, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %16, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %21, i32 noundef %22) #17
  %23 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !45
  %25 = load i32, ptr %14, align 8, !tbaa !44
  %26 = load i32, ptr %7, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %20, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %24, i32 noundef %25, i32 noundef %26) #17
  %27 = load i32, ptr %14, align 8, !tbaa !44
  %28 = shl nsw i32 %27, 1
  store i32 %28, ptr %14, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %30, i32 noundef %32) #17
  %33 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = load i32, ptr %23, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %20, i32 noundef %34, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %34, i32 noundef %35) #17
  %36 = load i32, ptr %14, align 8, !tbaa !44
  %37 = sdiv i32 %36, 2
  store i32 %37, ptr %14, align 8, !tbaa !44
  tail call void @IMB_freeImBuf(ptr noundef %16) #17
  tail call void @IMB_freeImBuf(ptr noundef %20) #17
  br label %38

38:                                               ; preds = %3, %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_buffer_byte_from_float(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  %15 = sitofp i32 %7 to float
  %16 = fdiv float 1.000000e+00, %15
  %17 = sitofp i32 %8 to float
  %18 = fdiv float 1.000000e+00, %17
  %19 = fcmp une float %3, 0.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = tail call fastcc ptr @create_dither_context(float noundef %3) #19
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi ptr [ %21, %20 ], [ null, %11 ]
  %24 = icmp sgt i32 %8, 0
  br i1 %24, label %25, label %245

25:                                               ; preds = %22
  %26 = shl i32 %10, 2
  %27 = shl i32 %9, 2
  %28 = icmp eq i32 %4, %5
  %29 = icmp ne i8 %6, 0
  %30 = and i1 %19, %29
  %31 = icmp eq i8 %6, 0
  %32 = icmp sgt i32 %7, 0
  %33 = mul i32 %10, 3
  %34 = sext i32 %10 to i64
  %35 = zext nneg i32 %8 to i64
  br label %36

36:                                               ; preds = %25, %242
  %37 = phi i64 [ 0, %25 ], [ %243, %242 ]
  %38 = trunc i64 %37 to i32
  %39 = sitofp i32 %38 to float
  %40 = fmul float %18, %39
  switch i32 %2, label %242 [
    i32 1, label %41
    i32 3, label %65
    i32 4, label %103
  ]

41:                                               ; preds = %36
  br i1 %32, label %42, label %242

42:                                               ; preds = %41
  %43 = mul i32 %27, %38
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  %46 = mul nsw i64 %37, %34
  %47 = getelementptr inbounds float, ptr %1, i64 %46
  br label %48

48:                                               ; preds = %42, %58
  %49 = phi ptr [ %63, %58 ], [ %45, %42 ]
  %50 = phi ptr [ %62, %58 ], [ %47, %42 ]
  %51 = phi i32 [ %61, %58 ], [ 0, %42 ]
  %52 = load float, ptr %50, align 4, !tbaa !46
  %53 = fcmp ugt float %52, 0.000000e+00
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = fcmp ogt float %52, 0x3FEFEFEFE0000000
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = call float @llvm.fmuladd.f32(float %52, float 2.550000e+02, float 5.000000e-01)
  br label %58

58:                                               ; preds = %56, %54, %48
  %59 = phi float [ 0.000000e+00, %48 ], [ %57, %56 ], [ 2.550000e+02, %54 ]
  %60 = fptoui float %59 to i8
  %61 = add nuw nsw i32 %51, 1
  %62 = getelementptr inbounds float, ptr %50, i64 1
  %63 = getelementptr inbounds i8, ptr %49, i64 4
  %64 = icmp eq i32 %61, %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %49, i8 %60, i64 4, i1 false)
  br i1 %64, label %242, label %48, !llvm.loop !47

65:                                               ; preds = %36
  %66 = mul i32 %33, %38
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %1, i64 %67
  %69 = mul i32 %27, %38
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %0, i64 %70
  br i1 %28, label %72, label %82

72:                                               ; preds = %65
  br i1 %32, label %73, label %242

73:                                               ; preds = %72, %73
  %74 = phi ptr [ %80, %73 ], [ %71, %72 ]
  %75 = phi ptr [ %79, %73 ], [ %68, %72 ]
  %76 = phi i32 [ %78, %73 ], [ 0, %72 ]
  call void @rgb_float_to_uchar(ptr noundef %74, ptr noundef %75) #17
  %77 = getelementptr inbounds i8, ptr %74, i64 3
  store i8 -1, ptr %77, align 1, !tbaa !49
  %78 = add nuw nsw i32 %76, 1
  %79 = getelementptr inbounds float, ptr %75, i64 3
  %80 = getelementptr inbounds i8, ptr %74, i64 4
  %81 = icmp eq i32 %78, %7
  br i1 %81, label %242, label %73, !llvm.loop !50

82:                                               ; preds = %65
  switch i32 %4, label %242 [
    i32 2, label %84
    i32 1, label %83
  ]

83:                                               ; preds = %82
  br i1 %32, label %94, label %242

84:                                               ; preds = %82
  br i1 %32, label %85, label %242

85:                                               ; preds = %84, %85
  %86 = phi ptr [ %92, %85 ], [ %71, %84 ]
  %87 = phi ptr [ %91, %85 ], [ %68, %84 ]
  %88 = phi i32 [ %90, %85 ], [ 0, %84 ]
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %12, ptr noundef %87) #19
  call void @rgb_float_to_uchar(ptr noundef %86, ptr noundef nonnull %12) #17
  %89 = getelementptr inbounds i8, ptr %86, i64 3
  store i8 -1, ptr %89, align 1, !tbaa !49
  %90 = add nuw nsw i32 %88, 1
  %91 = getelementptr inbounds float, ptr %87, i64 3
  %92 = getelementptr inbounds i8, ptr %86, i64 4
  %93 = icmp eq i32 %90, %7
  br i1 %93, label %242, label %85, !llvm.loop !51

94:                                               ; preds = %83, %94
  %95 = phi ptr [ %101, %94 ], [ %71, %83 ]
  %96 = phi ptr [ %100, %94 ], [ %68, %83 ]
  %97 = phi i32 [ %99, %94 ], [ 0, %83 ]
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %12, ptr noundef %96) #19
  call void @rgb_float_to_uchar(ptr noundef %95, ptr noundef nonnull %12) #17
  %98 = getelementptr inbounds i8, ptr %95, i64 3
  store i8 -1, ptr %98, align 1, !tbaa !49
  %99 = add nuw nsw i32 %97, 1
  %100 = getelementptr inbounds float, ptr %96, i64 3
  %101 = getelementptr inbounds i8, ptr %95, i64 4
  %102 = icmp eq i32 %99, %7
  br i1 %102, label %242, label %94, !llvm.loop !52

103:                                              ; preds = %36
  %104 = mul i32 %26, %38
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, ptr %1, i64 %105
  %107 = mul i32 %27, %38
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %0, i64 %108
  br i1 %28, label %110, label %154

110:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  br i1 %30, label %111, label %122

111:                                              ; preds = %110
  br i1 %32, label %112, label %153

112:                                              ; preds = %111, %112
  %113 = phi ptr [ %120, %112 ], [ %109, %111 ]
  %114 = phi ptr [ %119, %112 ], [ %106, %111 ]
  %115 = phi i32 [ %118, %112 ], [ 0, %111 ]
  call fastcc void @premul_to_straight_v4_v4(ptr noundef nonnull %13, ptr noundef %114) #19
  %116 = sitofp i32 %115 to float
  %117 = fmul float %16, %116
  call fastcc void @float_to_byte_dither_v4(ptr noundef %113, ptr noundef nonnull %13, ptr noundef %23, float noundef %117, float noundef %40) #19
  %118 = add nuw nsw i32 %115, 1
  %119 = getelementptr inbounds float, ptr %114, i64 4
  %120 = getelementptr inbounds i8, ptr %113, i64 4
  %121 = icmp eq i32 %118, %7
  br i1 %121, label %153, label %112, !llvm.loop !53

122:                                              ; preds = %110
  br i1 %19, label %123, label %134

123:                                              ; preds = %122
  br i1 %32, label %124, label %153

124:                                              ; preds = %123, %124
  %125 = phi ptr [ %132, %124 ], [ %109, %123 ]
  %126 = phi ptr [ %131, %124 ], [ %106, %123 ]
  %127 = phi i32 [ %130, %124 ], [ 0, %123 ]
  %128 = sitofp i32 %127 to float
  %129 = fmul float %16, %128
  call fastcc void @float_to_byte_dither_v4(ptr noundef %125, ptr noundef %126, ptr noundef %23, float noundef %129, float noundef %40) #19
  %130 = add nuw nsw i32 %127, 1
  %131 = getelementptr inbounds float, ptr %126, i64 4
  %132 = getelementptr inbounds i8, ptr %125, i64 4
  %133 = icmp eq i32 %130, %7
  br i1 %133, label %153, label %124, !llvm.loop !54

134:                                              ; preds = %122
  br i1 %31, label %136, label %135

135:                                              ; preds = %134
  br i1 %32, label %137, label %153

136:                                              ; preds = %134
  br i1 %32, label %145, label %153

137:                                              ; preds = %135, %137
  %138 = phi ptr [ %143, %137 ], [ %109, %135 ]
  %139 = phi ptr [ %142, %137 ], [ %106, %135 ]
  %140 = phi i32 [ %141, %137 ], [ 0, %135 ]
  call fastcc void @premul_to_straight_v4_v4(ptr noundef nonnull %13, ptr noundef %139) #19
  call void @rgba_float_to_uchar(ptr noundef %138, ptr noundef nonnull %13) #17
  %141 = add nuw nsw i32 %140, 1
  %142 = getelementptr inbounds float, ptr %139, i64 4
  %143 = getelementptr inbounds i8, ptr %138, i64 4
  %144 = icmp eq i32 %141, %7
  br i1 %144, label %153, label %137, !llvm.loop !55

145:                                              ; preds = %136, %145
  %146 = phi ptr [ %151, %145 ], [ %109, %136 ]
  %147 = phi ptr [ %150, %145 ], [ %106, %136 ]
  %148 = phi i32 [ %149, %145 ], [ 0, %136 ]
  call void @rgba_float_to_uchar(ptr noundef %146, ptr noundef %147) #17
  %149 = add nuw nsw i32 %148, 1
  %150 = getelementptr inbounds float, ptr %147, i64 4
  %151 = getelementptr inbounds i8, ptr %146, i64 4
  %152 = icmp eq i32 %149, %7
  br i1 %152, label %153, label %145, !llvm.loop !56

153:                                              ; preds = %137, %145, %124, %112, %135, %136, %123, %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  br label %242

154:                                              ; preds = %103
  switch i32 %4, label %242 [
    i32 2, label %155
    i32 1, label %199
  ]

155:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  br i1 %30, label %156, label %167

156:                                              ; preds = %155
  br i1 %32, label %157, label %198

157:                                              ; preds = %156, %157
  %158 = phi ptr [ %165, %157 ], [ %109, %156 ]
  %159 = phi ptr [ %164, %157 ], [ %106, %156 ]
  %160 = phi i32 [ %163, %157 ], [ 0, %156 ]
  call fastcc void @linearrgb_to_srgb_ushort4(ptr noundef nonnull %14, ptr noundef %159) #19
  %161 = sitofp i32 %160 to float
  %162 = fmul float %16, %161
  call fastcc void @ushort_to_byte_dither_v4(ptr noundef %158, ptr noundef nonnull %14, ptr noundef %23, float noundef %162, float noundef %40) #19
  %163 = add nuw nsw i32 %160, 1
  %164 = getelementptr inbounds float, ptr %159, i64 4
  %165 = getelementptr inbounds i8, ptr %158, i64 4
  %166 = icmp eq i32 %163, %7
  br i1 %166, label %198, label %157, !llvm.loop !57

167:                                              ; preds = %155
  br i1 %19, label %168, label %179

168:                                              ; preds = %167
  br i1 %32, label %169, label %198

169:                                              ; preds = %168, %169
  %170 = phi ptr [ %177, %169 ], [ %109, %168 ]
  %171 = phi ptr [ %176, %169 ], [ %106, %168 ]
  %172 = phi i32 [ %175, %169 ], [ 0, %168 ]
  call fastcc void @linearrgb_to_srgb_ushort4(ptr noundef nonnull %14, ptr noundef %171) #19
  %173 = sitofp i32 %172 to float
  %174 = fmul float %16, %173
  call fastcc void @ushort_to_byte_dither_v4(ptr noundef %170, ptr noundef nonnull %14, ptr noundef %23, float noundef %174, float noundef %40) #19
  %175 = add nuw nsw i32 %172, 1
  %176 = getelementptr inbounds float, ptr %171, i64 4
  %177 = getelementptr inbounds i8, ptr %170, i64 4
  %178 = icmp eq i32 %175, %7
  br i1 %178, label %198, label %169, !llvm.loop !58

179:                                              ; preds = %167
  br i1 %31, label %181, label %180

180:                                              ; preds = %179
  br i1 %32, label %182, label %198

181:                                              ; preds = %179
  br i1 %32, label %190, label %198

182:                                              ; preds = %180, %182
  %183 = phi ptr [ %188, %182 ], [ %109, %180 ]
  %184 = phi ptr [ %187, %182 ], [ %106, %180 ]
  %185 = phi i32 [ %186, %182 ], [ 0, %180 ]
  call fastcc void @linearrgb_to_srgb_ushort4(ptr noundef nonnull %14, ptr noundef %184) #19
  call fastcc void @ushort_to_byte_v4(ptr noundef %183, ptr noundef nonnull %14) #19
  %186 = add nuw nsw i32 %185, 1
  %187 = getelementptr inbounds float, ptr %184, i64 4
  %188 = getelementptr inbounds i8, ptr %183, i64 4
  %189 = icmp eq i32 %186, %7
  br i1 %189, label %198, label %182, !llvm.loop !59

190:                                              ; preds = %181, %190
  %191 = phi ptr [ %196, %190 ], [ %109, %181 ]
  %192 = phi ptr [ %195, %190 ], [ %106, %181 ]
  %193 = phi i32 [ %194, %190 ], [ 0, %181 ]
  call fastcc void @linearrgb_to_srgb_ushort4(ptr noundef nonnull %14, ptr noundef %192) #19
  call fastcc void @ushort_to_byte_v4(ptr noundef %191, ptr noundef nonnull %14) #19
  %194 = add nuw nsw i32 %193, 1
  %195 = getelementptr inbounds float, ptr %192, i64 4
  %196 = getelementptr inbounds i8, ptr %191, i64 4
  %197 = icmp eq i32 %194, %7
  br i1 %197, label %198, label %190, !llvm.loop !60

198:                                              ; preds = %182, %190, %169, %157, %180, %181, %168, %156
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  br label %242

199:                                              ; preds = %154
  br i1 %30, label %200, label %211

200:                                              ; preds = %199
  br i1 %32, label %201, label %242

201:                                              ; preds = %200, %201
  %202 = phi ptr [ %209, %201 ], [ %109, %200 ]
  %203 = phi ptr [ %208, %201 ], [ %106, %200 ]
  %204 = phi i32 [ %207, %201 ], [ 0, %200 ]
  call fastcc void @srgb_to_linearrgb_predivide_v4(ptr noundef nonnull %12, ptr noundef %203) #19
  %205 = sitofp i32 %204 to float
  %206 = fmul float %16, %205
  call fastcc void @float_to_byte_dither_v4(ptr noundef %202, ptr noundef nonnull %12, ptr noundef %23, float noundef %206, float noundef %40) #19
  %207 = add nuw nsw i32 %204, 1
  %208 = getelementptr inbounds float, ptr %203, i64 4
  %209 = getelementptr inbounds i8, ptr %202, i64 4
  %210 = icmp eq i32 %207, %7
  br i1 %210, label %242, label %201, !llvm.loop !61

211:                                              ; preds = %199
  br i1 %19, label %212, label %223

212:                                              ; preds = %211
  br i1 %32, label %213, label %242

213:                                              ; preds = %212, %213
  %214 = phi ptr [ %221, %213 ], [ %109, %212 ]
  %215 = phi ptr [ %220, %213 ], [ %106, %212 ]
  %216 = phi i32 [ %219, %213 ], [ 0, %212 ]
  call fastcc void @srgb_to_linearrgb_v4(ptr noundef nonnull %12, ptr noundef %215) #19
  %217 = sitofp i32 %216 to float
  %218 = fmul float %16, %217
  call fastcc void @float_to_byte_dither_v4(ptr noundef %214, ptr noundef nonnull %12, ptr noundef %23, float noundef %218, float noundef %40) #19
  %219 = add nuw nsw i32 %216, 1
  %220 = getelementptr inbounds float, ptr %215, i64 4
  %221 = getelementptr inbounds i8, ptr %214, i64 4
  %222 = icmp eq i32 %219, %7
  br i1 %222, label %242, label %213, !llvm.loop !62

223:                                              ; preds = %211
  br i1 %31, label %225, label %224

224:                                              ; preds = %223
  br i1 %32, label %226, label %242

225:                                              ; preds = %223
  br i1 %32, label %234, label %242

226:                                              ; preds = %224, %226
  %227 = phi ptr [ %232, %226 ], [ %109, %224 ]
  %228 = phi ptr [ %231, %226 ], [ %106, %224 ]
  %229 = phi i32 [ %230, %226 ], [ 0, %224 ]
  call fastcc void @srgb_to_linearrgb_predivide_v4(ptr noundef nonnull %12, ptr noundef %228) #19
  call void @rgba_float_to_uchar(ptr noundef %227, ptr noundef nonnull %12) #17
  %230 = add nuw nsw i32 %229, 1
  %231 = getelementptr inbounds float, ptr %228, i64 4
  %232 = getelementptr inbounds i8, ptr %227, i64 4
  %233 = icmp eq i32 %230, %7
  br i1 %233, label %242, label %226, !llvm.loop !63

234:                                              ; preds = %225, %234
  %235 = phi ptr [ %240, %234 ], [ %109, %225 ]
  %236 = phi ptr [ %239, %234 ], [ %106, %225 ]
  %237 = phi i32 [ %238, %234 ], [ 0, %225 ]
  call fastcc void @srgb_to_linearrgb_v4(ptr noundef nonnull %12, ptr noundef %236) #19
  call void @rgba_float_to_uchar(ptr noundef %235, ptr noundef nonnull %12) #17
  %238 = add nuw nsw i32 %237, 1
  %239 = getelementptr inbounds float, ptr %236, i64 4
  %240 = getelementptr inbounds i8, ptr %235, i64 4
  %241 = icmp eq i32 %238, %7
  br i1 %241, label %242, label %234, !llvm.loop !64

242:                                              ; preds = %226, %234, %213, %201, %94, %85, %73, %58, %224, %225, %212, %200, %83, %84, %72, %41, %153, %198, %154, %36, %82
  %243 = add nuw nsw i64 %37, 1
  %244 = icmp eq i64 %243, %35
  br i1 %244, label %245, label %36, !llvm.loop !65

245:                                              ; preds = %242, %22
  br i1 %19, label %246, label %247

246:                                              ; preds = %245
  call fastcc void @clear_dither_context(ptr noundef %23) #19
  br label %247

247:                                              ; preds = %246, %245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_dither_context(float noundef %0) unnamed_addr #0 !PGOFuncName !66 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !67
  %3 = tail call ptr %2(i64 noundef 4, ptr noundef nonnull @.str.1) #17
  store float %0, ptr %3, align 4, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !70 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #17
  store float %4, ptr %0, align 4, !tbaa !46
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #17
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #17
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !71 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #17
  store float %4, ptr %0, align 4, !tbaa !46
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #17
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #17
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_to_straight_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !72 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = fcmp oeq float %4, 0.000000e+00
  %6 = fcmp oeq float %4, 1.000000e+00
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !46
  store float %9, ptr %0, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  br label %26

15:                                               ; preds = %2
  %16 = fdiv float 1.000000e+00, %4
  %17 = load float, ptr %1, align 4, !tbaa !46
  %18 = fmul float %16, %17
  store float %18, ptr %0, align 4, !tbaa !46
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !46
  %21 = fmul float %16, %20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !46
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !46
  %25 = fmul float %16, %24
  br label %26

26:                                               ; preds = %15, %8
  %27 = phi float [ %25, %15 ], [ %14, %8 ]
  %28 = getelementptr inbounds float, ptr %0, i64 2
  store float %27, ptr %28, align 4, !tbaa !46
  %29 = load float, ptr %3, align 4, !tbaa !46
  %30 = getelementptr inbounds float, ptr %0, i64 3
  store float %29, ptr %30, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @float_to_byte_dither_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) unnamed_addr #5 !PGOFuncName !73 {
  %6 = tail call fastcc float @dither_random_value(float noundef %3, float noundef %4) #19
  %7 = fmul float %6, 0x3F747AE140000000
  %8 = load float, ptr %2, align 4, !tbaa !68
  %9 = fmul float %7, %8
  %10 = load float, ptr %1, align 4, !tbaa !46
  %11 = fadd float %9, %10
  %12 = tail call fastcc zeroext i8 @ftochar(float noundef %11) #19
  store i8 %12, ptr %0, align 1, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = fadd float %9, %14
  %16 = tail call fastcc zeroext i8 @ftochar(float noundef %15) #19
  %17 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %16, ptr %17, align 1, !tbaa !49
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !46
  %20 = fadd float %9, %19
  %21 = tail call fastcc zeroext i8 @ftochar(float noundef %20) #19
  %22 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %21, ptr %22, align 1, !tbaa !49
  %23 = getelementptr inbounds float, ptr %1, i64 3
  %24 = load float, ptr %23, align 4, !tbaa !46
  %25 = fcmp ugt float %24, 0.000000e+00
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = fcmp ogt float %24, 0x3FEFEFEFE0000000
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = tail call float @llvm.fmuladd.f32(float %24, float 2.550000e+02, float 5.000000e-01)
  %30 = fptoui float %29 to i8
  br label %31

31:                                               ; preds = %28, %26, %5
  %32 = phi i8 [ 0, %5 ], [ %30, %28 ], [ -1, %26 ]
  %33 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %32, ptr %33, align 1, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @linearrgb_to_srgb_ushort4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !74 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  %4 = tail call fastcc zeroext i16 @to_srgb_table_lookup(float noundef %3) #19
  store i16 %4, ptr %0, align 2, !tbaa !75
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = tail call fastcc zeroext i16 @to_srgb_table_lookup(float noundef %6) #19
  %8 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %7, ptr %8, align 2, !tbaa !75
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = tail call fastcc zeroext i16 @to_srgb_table_lookup(float noundef %10) #19
  %12 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %11, ptr %12, align 2, !tbaa !75
  %13 = getelementptr inbounds float, ptr %1, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = fcmp ult float %14, 0x3FEFFFF000000000
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = fcmp ugt float %14, 0.000000e+00
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = tail call float @llvm.fmuladd.f32(float %14, float 6.553500e+04, float 5.000000e-01)
  %20 = fptoui float %19 to i16
  br label %21

21:                                               ; preds = %18, %16, %2
  %22 = phi i16 [ -1, %2 ], [ %20, %18 ], [ 0, %16 ]
  %23 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %22, ptr %23, align 2, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @ushort_to_byte_dither_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) unnamed_addr #5 !PGOFuncName !77 {
  %6 = tail call fastcc float @dither_random_value(float noundef %3, float noundef %4) #19
  %7 = fmul float %6, 0x3F747AE140000000
  %8 = load float, ptr %2, align 4, !tbaa !68
  %9 = fmul float %7, %8
  %10 = load i16, ptr %1, align 2, !tbaa !75
  %11 = uitofp i16 %10 to float
  %12 = fdiv float %11, 6.553500e+04
  %13 = fadd float %9, %12
  %14 = tail call fastcc zeroext i8 @ftochar(float noundef %13) #19
  store i8 %14, ptr %0, align 1, !tbaa !49
  %15 = getelementptr inbounds i16, ptr %1, i64 1
  %16 = load i16, ptr %15, align 2, !tbaa !75
  %17 = uitofp i16 %16 to float
  %18 = fdiv float %17, 6.553500e+04
  %19 = fadd float %9, %18
  %20 = tail call fastcc zeroext i8 @ftochar(float noundef %19) #19
  %21 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %20, ptr %21, align 1, !tbaa !49
  %22 = getelementptr inbounds i16, ptr %1, i64 2
  %23 = load i16, ptr %22, align 2, !tbaa !75
  %24 = uitofp i16 %23 to float
  %25 = fdiv float %24, 6.553500e+04
  %26 = fadd float %9, %25
  %27 = tail call fastcc zeroext i8 @ftochar(float noundef %26) #19
  %28 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %27, ptr %28, align 1, !tbaa !49
  %29 = getelementptr inbounds i16, ptr %1, i64 3
  %30 = load i16, ptr %29, align 2, !tbaa !75
  %31 = icmp ugt i16 %30, -130
  %32 = zext i16 %30 to i32
  %33 = add nuw nsw i32 %32, 128
  %34 = lshr i32 %33, 8
  %35 = trunc i32 %34 to i8
  %36 = select i1 %31, i8 -1, i8 %35
  %37 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %36, ptr %37, align 1, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ushort_to_byte_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !78 {
  %3 = load i16, ptr %1, align 2, !tbaa !75
  %4 = icmp ugt i16 %3, -130
  %5 = zext i16 %3 to i32
  %6 = add nuw nsw i32 %5, 128
  %7 = lshr i32 %6, 8
  %8 = trunc i32 %7 to i8
  %9 = select i1 %4, i8 -1, i8 %8
  store i8 %9, ptr %0, align 1, !tbaa !49
  %10 = getelementptr inbounds i16, ptr %1, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !75
  %12 = icmp ugt i16 %11, -130
  %13 = zext i16 %11 to i32
  %14 = add nuw nsw i32 %13, 128
  %15 = lshr i32 %14, 8
  %16 = trunc i32 %15 to i8
  %17 = select i1 %12, i8 -1, i8 %16
  %18 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %17, ptr %18, align 1, !tbaa !49
  %19 = getelementptr inbounds i16, ptr %1, i64 2
  %20 = load i16, ptr %19, align 2, !tbaa !75
  %21 = icmp ugt i16 %20, -130
  %22 = zext i16 %20 to i32
  %23 = add nuw nsw i32 %22, 128
  %24 = lshr i32 %23, 8
  %25 = trunc i32 %24 to i8
  %26 = select i1 %21, i8 -1, i8 %25
  %27 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !49
  %28 = getelementptr inbounds i16, ptr %1, i64 3
  %29 = load i16, ptr %28, align 2, !tbaa !75
  %30 = icmp ugt i16 %29, -130
  %31 = zext i16 %29 to i32
  %32 = add nuw nsw i32 %31, 128
  %33 = lshr i32 %32, 8
  %34 = trunc i32 %33 to i8
  %35 = select i1 %30, i8 -1, i8 %34
  %36 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %35, ptr %36, align 1, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_predivide_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = fcmp oeq float %4, 1.000000e+00
  %6 = fcmp oeq float %4, 0.000000e+00
  %7 = or i1 %5, %6
  %8 = fdiv float 1.000000e+00, %4
  %9 = select i1 %6, float 1.000000e+00, float %4
  %10 = select i1 %7, float 1.000000e+00, float %8
  %11 = load float, ptr %1, align 4, !tbaa !46
  %12 = fmul float %11, %10
  %13 = tail call float @srgb_to_linearrgb(float noundef %12) #17
  %14 = fmul float %13, %9
  store float %14, ptr %0, align 4, !tbaa !46
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = fmul float %10, %16
  %18 = tail call float @srgb_to_linearrgb(float noundef %17) #17
  %19 = fmul float %9, %18
  %20 = getelementptr inbounds float, ptr %0, i64 1
  store float %19, ptr %20, align 4, !tbaa !46
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !46
  %23 = fmul float %10, %22
  %24 = tail call float @srgb_to_linearrgb(float noundef %23) #17
  %25 = fmul float %9, %24
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4, !tbaa !46
  %27 = load float, ptr %3, align 4, !tbaa !46
  %28 = getelementptr inbounds float, ptr %0, i64 3
  store float %27, ptr %28, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !80 {
  tail call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef %0, ptr noundef %1) #19
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %5, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_dither_context(ptr noundef %0) unnamed_addr #0 !PGOFuncName !81 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %2(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_buffer_byte_from_float_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) local_unnamed_addr #0 {
  %11 = alloca [4 x float], align 16
  %12 = sitofp i32 %5 to float
  %13 = fdiv float 1.000000e+00, %12
  %14 = sitofp i32 %6 to float
  %15 = fdiv float 1.000000e+00, %14
  %16 = fcmp une float %3, 0.000000e+00
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = tail call fastcc ptr @create_dither_context(float noundef %3) #19
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi ptr [ %18, %17 ], [ null, %10 ]
  %21 = icmp sgt i32 %6, 0
  br i1 %21, label %22, label %185

22:                                               ; preds = %19
  %23 = shl i32 %8, 2
  %24 = shl i32 %7, 2
  %25 = icmp ne i8 %4, 0
  %26 = and i1 %16, %25
  %27 = icmp eq i8 %4, 0
  %28 = icmp sgt i32 %5, 0
  %29 = mul i32 %8, 3
  %30 = add i32 %5, -1
  %31 = zext i32 %30 to i64
  %32 = add nuw nsw i64 %31, 1
  %33 = sext i32 %8 to i64
  %34 = zext nneg i32 %6 to i64
  br label %35

35:                                               ; preds = %22, %181
  %36 = phi i64 [ 0, %22 ], [ %183, %181 ]
  %37 = phi ptr [ %9, %22 ], [ %182, %181 ]
  %38 = trunc i64 %36 to i32
  %39 = sitofp i32 %38 to float
  %40 = fmul float %15, %39
  switch i32 %2, label %181 [
    i32 1, label %41
    i32 3, label %71
    i32 4, label %94
  ]

41:                                               ; preds = %35
  br i1 %28, label %42, label %181

42:                                               ; preds = %41
  %43 = mul i32 %24, %38
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  %46 = mul nsw i64 %36, %33
  %47 = getelementptr inbounds float, ptr %1, i64 %46
  br label %48

48:                                               ; preds = %42, %66
  %49 = phi ptr [ %69, %66 ], [ %45, %42 ]
  %50 = phi ptr [ %68, %66 ], [ %47, %42 ]
  %51 = phi ptr [ %53, %66 ], [ %37, %42 ]
  %52 = phi i32 [ %67, %66 ], [ 0, %42 ]
  %53 = getelementptr inbounds i8, ptr %51, i64 1
  %54 = load i8, ptr %51, align 1, !tbaa !49
  %55 = icmp eq i8 %54, 2
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load float, ptr %50, align 4, !tbaa !46
  %58 = fcmp ugt float %57, 0.000000e+00
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = fcmp ogt float %57, 0x3FEFEFEFE0000000
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = call float @llvm.fmuladd.f32(float %57, float 2.550000e+02, float 5.000000e-01)
  br label %63

63:                                               ; preds = %61, %59, %56
  %64 = phi float [ 0.000000e+00, %56 ], [ %62, %61 ], [ 2.550000e+02, %59 ]
  %65 = fptoui float %64 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %49, i8 %65, i64 4, i1 false)
  br label %66

66:                                               ; preds = %48, %63
  %67 = add nuw nsw i32 %52, 1
  %68 = getelementptr inbounds float, ptr %50, i64 1
  %69 = getelementptr inbounds i8, ptr %49, i64 4
  %70 = icmp eq i32 %67, %5
  br i1 %70, label %177, label %48, !llvm.loop !82

71:                                               ; preds = %35
  br i1 %28, label %72, label %181

72:                                               ; preds = %71
  %73 = mul i32 %24, %38
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %0, i64 %74
  %76 = mul i32 %29, %38
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr %1, i64 %77
  br label %79

79:                                               ; preds = %72, %89
  %80 = phi ptr [ %92, %89 ], [ %75, %72 ]
  %81 = phi ptr [ %91, %89 ], [ %78, %72 ]
  %82 = phi ptr [ %84, %89 ], [ %37, %72 ]
  %83 = phi i32 [ %90, %89 ], [ 0, %72 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 1
  %85 = load i8, ptr %82, align 1, !tbaa !49
  %86 = icmp eq i8 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  call void @rgb_float_to_uchar(ptr noundef %80, ptr noundef %81) #17
  %88 = getelementptr inbounds i8, ptr %80, i64 3
  store i8 -1, ptr %88, align 1, !tbaa !49
  br label %89

89:                                               ; preds = %79, %87
  %90 = add nuw nsw i32 %83, 1
  %91 = getelementptr inbounds float, ptr %81, i64 3
  %92 = getelementptr inbounds i8, ptr %80, i64 4
  %93 = icmp eq i32 %90, %5
  br i1 %93, label %179, label %79, !llvm.loop !83

94:                                               ; preds = %35
  %95 = mul i32 %23, %38
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, ptr %1, i64 %96
  %98 = mul i32 %24, %38
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %0, i64 %99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18
  br i1 %26, label %101, label %118

101:                                              ; preds = %94
  br i1 %28, label %102, label %175

102:                                              ; preds = %101, %113
  %103 = phi ptr [ %116, %113 ], [ %100, %101 ]
  %104 = phi ptr [ %115, %113 ], [ %97, %101 ]
  %105 = phi ptr [ %107, %113 ], [ %37, %101 ]
  %106 = phi i32 [ %114, %113 ], [ 0, %101 ]
  %107 = getelementptr inbounds i8, ptr %105, i64 1
  %108 = load i8, ptr %105, align 1, !tbaa !49
  %109 = icmp eq i8 %108, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  call fastcc void @premul_to_straight_v4_v4(ptr noundef nonnull %11, ptr noundef %104) #19
  %111 = sitofp i32 %106 to float
  %112 = fmul float %13, %111
  call fastcc void @float_to_byte_dither_v4(ptr noundef %103, ptr noundef nonnull %11, ptr noundef %20, float noundef %112, float noundef %40) #19
  br label %113

113:                                              ; preds = %102, %110
  %114 = add nuw nsw i32 %106, 1
  %115 = getelementptr inbounds float, ptr %104, i64 4
  %116 = getelementptr inbounds i8, ptr %103, i64 4
  %117 = icmp eq i32 %114, %5
  br i1 %117, label %167, label %102, !llvm.loop !84

118:                                              ; preds = %94
  br i1 %16, label %119, label %136

119:                                              ; preds = %118
  br i1 %28, label %120, label %175

120:                                              ; preds = %119, %131
  %121 = phi ptr [ %134, %131 ], [ %100, %119 ]
  %122 = phi ptr [ %133, %131 ], [ %97, %119 ]
  %123 = phi ptr [ %125, %131 ], [ %37, %119 ]
  %124 = phi i32 [ %132, %131 ], [ 0, %119 ]
  %125 = getelementptr inbounds i8, ptr %123, i64 1
  %126 = load i8, ptr %123, align 1, !tbaa !49
  %127 = icmp eq i8 %126, 2
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = sitofp i32 %124 to float
  %130 = fmul float %13, %129
  call fastcc void @float_to_byte_dither_v4(ptr noundef %121, ptr noundef %122, ptr noundef %20, float noundef %130, float noundef %40) #19
  br label %131

131:                                              ; preds = %120, %128
  %132 = add nuw nsw i32 %124, 1
  %133 = getelementptr inbounds float, ptr %122, i64 4
  %134 = getelementptr inbounds i8, ptr %121, i64 4
  %135 = icmp eq i32 %132, %5
  br i1 %135, label %169, label %120, !llvm.loop !85

136:                                              ; preds = %118
  br i1 %27, label %138, label %137

137:                                              ; preds = %136
  br i1 %28, label %139, label %175

138:                                              ; preds = %136
  br i1 %28, label %153, label %175

139:                                              ; preds = %137, %148
  %140 = phi ptr [ %151, %148 ], [ %100, %137 ]
  %141 = phi ptr [ %150, %148 ], [ %97, %137 ]
  %142 = phi ptr [ %144, %148 ], [ %37, %137 ]
  %143 = phi i32 [ %149, %148 ], [ 0, %137 ]
  %144 = getelementptr inbounds i8, ptr %142, i64 1
  %145 = load i8, ptr %142, align 1, !tbaa !49
  %146 = icmp eq i8 %145, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  call fastcc void @premul_to_straight_v4_v4(ptr noundef nonnull %11, ptr noundef %141) #19
  call void @rgba_float_to_uchar(ptr noundef %140, ptr noundef nonnull %11) #17
  br label %148

148:                                              ; preds = %139, %147
  %149 = add nuw nsw i32 %143, 1
  %150 = getelementptr inbounds float, ptr %141, i64 4
  %151 = getelementptr inbounds i8, ptr %140, i64 4
  %152 = icmp eq i32 %149, %5
  br i1 %152, label %173, label %139, !llvm.loop !86

153:                                              ; preds = %138, %162
  %154 = phi ptr [ %165, %162 ], [ %100, %138 ]
  %155 = phi ptr [ %164, %162 ], [ %97, %138 ]
  %156 = phi ptr [ %158, %162 ], [ %37, %138 ]
  %157 = phi i32 [ %163, %162 ], [ 0, %138 ]
  %158 = getelementptr inbounds i8, ptr %156, i64 1
  %159 = load i8, ptr %156, align 1, !tbaa !49
  %160 = icmp eq i8 %159, 2
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  call void @rgba_float_to_uchar(ptr noundef %154, ptr noundef %155) #17
  br label %162

162:                                              ; preds = %153, %161
  %163 = add nuw nsw i32 %157, 1
  %164 = getelementptr inbounds float, ptr %155, i64 4
  %165 = getelementptr inbounds i8, ptr %154, i64 4
  %166 = icmp eq i32 %163, %5
  br i1 %166, label %171, label %153, !llvm.loop !87

167:                                              ; preds = %113
  %168 = getelementptr i8, ptr %37, i64 %32
  br label %175

169:                                              ; preds = %131
  %170 = getelementptr i8, ptr %37, i64 %32
  br label %175

171:                                              ; preds = %162
  %172 = getelementptr i8, ptr %37, i64 %32
  br label %175

173:                                              ; preds = %148
  %174 = getelementptr i8, ptr %37, i64 %32
  br label %175

175:                                              ; preds = %173, %171, %169, %167, %137, %138, %119, %101
  %176 = phi ptr [ %37, %101 ], [ %37, %119 ], [ %37, %138 ], [ %37, %137 ], [ %168, %167 ], [ %170, %169 ], [ %172, %171 ], [ %174, %173 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  br label %181

177:                                              ; preds = %66
  %178 = getelementptr i8, ptr %37, i64 %32
  br label %181

179:                                              ; preds = %89
  %180 = getelementptr i8, ptr %37, i64 %32
  br label %181

181:                                              ; preds = %179, %177, %71, %41, %35, %175
  %182 = phi ptr [ %176, %175 ], [ %37, %35 ], [ %37, %41 ], [ %37, %71 ], [ %178, %177 ], [ %180, %179 ]
  %183 = add nuw nsw i64 %36, 1
  %184 = icmp eq i64 %183, %34
  br i1 %184, label %185, label %35, !llvm.loop !88

185:                                              ; preds = %181, %19
  br i1 %16, label %186, label %187

186:                                              ; preds = %185
  call fastcc void @clear_dither_context(ptr noundef %20) #19
  br label %187

187:                                              ; preds = %186, %185
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_buffer_float_from_byte(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %9
  %13 = shl i32 %8, 2
  %14 = shl i32 %7, 2
  %15 = icmp eq i32 %2, %3
  %16 = icmp eq i8 %4, 0
  %17 = icmp sgt i32 %5, 0
  %18 = zext nneg i32 %6 to i64
  br label %19

19:                                               ; preds = %12, %76
  %20 = phi i64 [ 0, %12 ], [ %77, %76 ]
  %21 = trunc i64 %20 to i32
  %22 = mul i32 %13, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  %25 = mul i32 %14, %21
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %0, i64 %26
  br i1 %15, label %28, label %37

28:                                               ; preds = %19
  br i1 %17, label %29, label %76

29:                                               ; preds = %28, %29
  %30 = phi ptr [ %35, %29 ], [ %27, %28 ]
  %31 = phi ptr [ %34, %29 ], [ %24, %28 ]
  %32 = phi i32 [ %33, %29 ], [ 0, %28 ]
  call void @rgba_uchar_to_float(ptr noundef %30, ptr noundef %31) #17
  %33 = add nuw nsw i32 %32, 1
  %34 = getelementptr inbounds i8, ptr %31, i64 4
  %35 = getelementptr inbounds float, ptr %30, i64 4
  %36 = icmp eq i32 %33, %5
  br i1 %36, label %76, label %29, !llvm.loop !89

37:                                               ; preds = %19
  switch i32 %2, label %76 [
    i32 1, label %38
    i32 2, label %57
  ]

38:                                               ; preds = %37
  br i1 %16, label %40, label %39

39:                                               ; preds = %38
  br i1 %17, label %41, label %76

40:                                               ; preds = %38
  br i1 %17, label %49, label %76

41:                                               ; preds = %39, %41
  %42 = phi ptr [ %47, %41 ], [ %27, %39 ]
  %43 = phi ptr [ %46, %41 ], [ %24, %39 ]
  %44 = phi i32 [ %45, %41 ], [ 0, %39 ]
  call fastcc void @srgb_to_linearrgb_uchar4_predivide(ptr noundef %42, ptr noundef %43) #19
  %45 = add nuw nsw i32 %44, 1
  %46 = getelementptr inbounds i8, ptr %43, i64 4
  %47 = getelementptr inbounds float, ptr %42, i64 4
  %48 = icmp eq i32 %45, %5
  br i1 %48, label %76, label %41, !llvm.loop !90

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %55, %49 ], [ %27, %40 ]
  %51 = phi ptr [ %54, %49 ], [ %24, %40 ]
  %52 = phi i32 [ %53, %49 ], [ 0, %40 ]
  call fastcc void @srgb_to_linearrgb_uchar4(ptr noundef %50, ptr noundef %51) #19
  %53 = add nuw nsw i32 %52, 1
  %54 = getelementptr inbounds i8, ptr %51, i64 4
  %55 = getelementptr inbounds float, ptr %50, i64 4
  %56 = icmp eq i32 %53, %5
  br i1 %56, label %76, label %49, !llvm.loop !91

57:                                               ; preds = %37
  br i1 %16, label %59, label %58

58:                                               ; preds = %57
  br i1 %17, label %60, label %76

59:                                               ; preds = %57
  br i1 %17, label %68, label %76

60:                                               ; preds = %58, %60
  %61 = phi ptr [ %66, %60 ], [ %27, %58 ]
  %62 = phi ptr [ %65, %60 ], [ %24, %58 ]
  %63 = phi i32 [ %64, %60 ], [ 0, %58 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %62) #17
  call fastcc void @linearrgb_to_srgb_predivide_v4(ptr noundef %61, ptr noundef nonnull %10) #19
  %64 = add nuw nsw i32 %63, 1
  %65 = getelementptr inbounds i8, ptr %62, i64 4
  %66 = getelementptr inbounds float, ptr %61, i64 4
  %67 = icmp eq i32 %64, %5
  br i1 %67, label %76, label %60, !llvm.loop !92

68:                                               ; preds = %59, %68
  %69 = phi ptr [ %74, %68 ], [ %27, %59 ]
  %70 = phi ptr [ %73, %68 ], [ %24, %59 ]
  %71 = phi i32 [ %72, %68 ], [ 0, %59 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %70) #17
  call fastcc void @linearrgb_to_srgb_v4(ptr noundef %69, ptr noundef nonnull %10) #19
  %72 = add nuw nsw i32 %71, 1
  %73 = getelementptr inbounds i8, ptr %70, i64 4
  %74 = getelementptr inbounds float, ptr %69, i64 4
  %75 = icmp eq i32 %72, %5
  br i1 %75, label %76, label %68, !llvm.loop !93

76:                                               ; preds = %60, %68, %41, %49, %29, %58, %59, %39, %40, %28, %37
  %77 = add nuw nsw i64 %20, 1
  %78 = icmp eq i64 %77, %18
  br i1 %78, label %79, label %19, !llvm.loop !94

79:                                               ; preds = %76, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  ret void
}

; Function Attrs: optsize
declare void @rgba_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_uchar4_predivide(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !95 {
  %3 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = getelementptr inbounds i8, ptr %1, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !49
  switch i8 %5, label %6 [
    i8 -1, label %10
    i8 0, label %10
  ]

6:                                                ; preds = %2
  %7 = load <4 x i8>, ptr %1, align 1, !tbaa !49
  %8 = uitofp <4 x i8> %7 to <4 x float>
  %9 = fmul <4 x float> %8, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  store <4 x float> %9, ptr %3, align 16, !tbaa !46
  call fastcc void @srgb_to_linearrgb_predivide_v4(ptr noundef %0, ptr noundef nonnull %3) #19
  br label %11

10:                                               ; preds = %2, %2
  tail call fastcc void @srgb_to_linearrgb_uchar4(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %11

11:                                               ; preds = %6, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @srgb_to_linearrgb_uchar4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !96 {
  %3 = load i8, ptr %1, align 1, !tbaa !49
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !46
  store float %6, ptr %0, align 4, !tbaa !46
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !49
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !46
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !49
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !46
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !46
  %19 = getelementptr inbounds i8, ptr %1, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !49
  %21 = uitofp i8 %20 to float
  %22 = fmul float %21, 0x3F70101020000000
  %23 = getelementptr inbounds float, ptr %0, i64 3
  store float %22, ptr %23, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_predivide_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !97 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = fcmp oeq float %4, 1.000000e+00
  %6 = fcmp oeq float %4, 0.000000e+00
  %7 = or i1 %5, %6
  %8 = fdiv float 1.000000e+00, %4
  %9 = select i1 %6, float 1.000000e+00, float %4
  %10 = select i1 %7, float 1.000000e+00, float %8
  %11 = load float, ptr %1, align 4, !tbaa !46
  %12 = fmul float %11, %10
  %13 = tail call float @linearrgb_to_srgb(float noundef %12) #17
  %14 = fmul float %13, %9
  store float %14, ptr %0, align 4, !tbaa !46
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = fmul float %10, %16
  %18 = tail call float @linearrgb_to_srgb(float noundef %17) #17
  %19 = fmul float %9, %18
  %20 = getelementptr inbounds float, ptr %0, i64 1
  store float %19, ptr %20, align 4, !tbaa !46
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !46
  %23 = fmul float %10, %22
  %24 = tail call float @linearrgb_to_srgb(float noundef %23) #17
  %25 = fmul float %9, %24
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4, !tbaa !46
  %27 = load float, ptr %3, align 4, !tbaa !46
  %28 = getelementptr inbounds float, ptr %0, i64 3
  store float %27, ptr %28, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !98 {
  tail call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef %0, ptr noundef %1) #19
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %5, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_buffer_float_from_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  switch i32 %2, label %155 [
    i32 1, label %30
    i32 3, label %22
    i32 4, label %11
  ]

11:                                               ; preds = %10
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %155

13:                                               ; preds = %11
  %14 = shl i32 %9, 2
  %15 = shl i32 %8, 2
  %16 = icmp eq i32 %3, %4
  %17 = icmp eq i8 %5, 0
  %18 = icmp sgt i32 %6, 0
  %19 = sext i32 %6 to i64
  %20 = shl nsw i64 %19, 4
  %21 = zext nneg i32 %7 to i64
  br label %103

22:                                               ; preds = %10
  %23 = icmp sgt i32 %7, 0
  br i1 %23, label %24, label %155

24:                                               ; preds = %22
  %25 = mul i32 %9, 3
  %26 = shl i32 %8, 2
  %27 = icmp eq i32 %3, %4
  %28 = icmp sgt i32 %6, 0
  %29 = zext nneg i32 %7 to i64
  br label %60

30:                                               ; preds = %10
  %31 = icmp sgt i32 %7, 0
  br i1 %31, label %32, label %155

32:                                               ; preds = %30
  %33 = shl i32 %8, 2
  %34 = icmp sgt i32 %6, 0
  %35 = sext i32 %9 to i64
  %36 = zext nneg i32 %7 to i64
  br label %37

37:                                               ; preds = %32, %57
  %38 = phi i64 [ 0, %32 ], [ %58, %57 ]
  br i1 %34, label %39, label %57

39:                                               ; preds = %37
  %40 = trunc i64 %38 to i32
  %41 = mul i32 %33, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %0, i64 %42
  %44 = mul nsw i64 %38, %35
  %45 = getelementptr inbounds float, ptr %1, i64 %44
  br label %46

46:                                               ; preds = %39, %46
  %47 = phi ptr [ %55, %46 ], [ %43, %39 ]
  %48 = phi ptr [ %54, %46 ], [ %45, %39 ]
  %49 = phi i32 [ %53, %46 ], [ 0, %39 ]
  %50 = load float, ptr %48, align 4, !tbaa !46
  %51 = insertelement <4 x float> poison, float %50, i64 0
  %52 = shufflevector <4 x float> %51, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %52, ptr %47, align 4, !tbaa !46
  %53 = add nuw nsw i32 %49, 1
  %54 = getelementptr inbounds float, ptr %48, i64 1
  %55 = getelementptr inbounds float, ptr %47, i64 4
  %56 = icmp eq i32 %53, %6
  br i1 %56, label %57, label %46, !llvm.loop !99

57:                                               ; preds = %46, %37
  %58 = add nuw nsw i64 %38, 1
  %59 = icmp eq i64 %58, %36
  br i1 %59, label %155, label %37, !llvm.loop !100

60:                                               ; preds = %24, %100
  %61 = phi i64 [ 0, %24 ], [ %101, %100 ]
  %62 = trunc i64 %61 to i32
  %63 = mul i32 %25, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %1, i64 %64
  %66 = mul i32 %26, %62
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %0, i64 %67
  br i1 %27, label %69, label %79

69:                                               ; preds = %60
  br i1 %28, label %70, label %100

70:                                               ; preds = %69, %70
  %71 = phi ptr [ %77, %70 ], [ %68, %69 ]
  %72 = phi ptr [ %76, %70 ], [ %65, %69 ]
  %73 = phi i32 [ %75, %70 ], [ 0, %69 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %71, ptr noundef %72) #19
  %74 = getelementptr inbounds float, ptr %71, i64 3
  store float 1.000000e+00, ptr %74, align 4, !tbaa !46
  %75 = add nuw nsw i32 %73, 1
  %76 = getelementptr inbounds float, ptr %72, i64 3
  %77 = getelementptr inbounds float, ptr %71, i64 4
  %78 = icmp eq i32 %75, %6
  br i1 %78, label %100, label %70, !llvm.loop !101

79:                                               ; preds = %60
  switch i32 %3, label %100 [
    i32 1, label %81
    i32 2, label %80
  ]

80:                                               ; preds = %79
  br i1 %28, label %91, label %100

81:                                               ; preds = %79
  br i1 %28, label %82, label %100

82:                                               ; preds = %81, %82
  %83 = phi ptr [ %89, %82 ], [ %68, %81 ]
  %84 = phi ptr [ %88, %82 ], [ %65, %81 ]
  %85 = phi i32 [ %87, %82 ], [ 0, %81 ]
  tail call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef %83, ptr noundef %84) #19
  %86 = getelementptr inbounds float, ptr %83, i64 3
  store float 1.000000e+00, ptr %86, align 4, !tbaa !46
  %87 = add nuw nsw i32 %85, 1
  %88 = getelementptr inbounds float, ptr %84, i64 3
  %89 = getelementptr inbounds float, ptr %83, i64 4
  %90 = icmp eq i32 %87, %6
  br i1 %90, label %100, label %82, !llvm.loop !102

91:                                               ; preds = %80, %91
  %92 = phi ptr [ %98, %91 ], [ %68, %80 ]
  %93 = phi ptr [ %97, %91 ], [ %65, %80 ]
  %94 = phi i32 [ %96, %91 ], [ 0, %80 ]
  tail call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef %92, ptr noundef %93) #19
  %95 = getelementptr inbounds float, ptr %92, i64 3
  store float 1.000000e+00, ptr %95, align 4, !tbaa !46
  %96 = add nuw nsw i32 %94, 1
  %97 = getelementptr inbounds float, ptr %93, i64 3
  %98 = getelementptr inbounds float, ptr %92, i64 4
  %99 = icmp eq i32 %96, %6
  br i1 %99, label %100, label %91, !llvm.loop !103

100:                                              ; preds = %91, %82, %70, %80, %81, %69, %79
  %101 = add nuw nsw i64 %61, 1
  %102 = icmp eq i64 %101, %29
  br i1 %102, label %155, label %60, !llvm.loop !104

103:                                              ; preds = %13, %152
  %104 = phi i64 [ 0, %13 ], [ %153, %152 ]
  %105 = trunc i64 %104 to i32
  %106 = mul i32 %14, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, ptr %1, i64 %107
  %109 = mul i32 %15, %105
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, ptr %0, i64 %110
  br i1 %16, label %112, label %113

112:                                              ; preds = %103
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %111, ptr align 4 %108, i64 %20, i1 false)
  br label %152

113:                                              ; preds = %103
  switch i32 %3, label %152 [
    i32 1, label %114
    i32 2, label %133
  ]

114:                                              ; preds = %113
  br i1 %17, label %116, label %115

115:                                              ; preds = %114
  br i1 %18, label %117, label %152

116:                                              ; preds = %114
  br i1 %18, label %125, label %152

117:                                              ; preds = %115, %117
  %118 = phi ptr [ %123, %117 ], [ %111, %115 ]
  %119 = phi ptr [ %122, %117 ], [ %108, %115 ]
  %120 = phi i32 [ %121, %117 ], [ 0, %115 ]
  tail call fastcc void @srgb_to_linearrgb_predivide_v4(ptr noundef %118, ptr noundef %119) #19
  %121 = add nuw nsw i32 %120, 1
  %122 = getelementptr inbounds float, ptr %119, i64 4
  %123 = getelementptr inbounds float, ptr %118, i64 4
  %124 = icmp eq i32 %121, %6
  br i1 %124, label %152, label %117, !llvm.loop !105

125:                                              ; preds = %116, %125
  %126 = phi ptr [ %131, %125 ], [ %111, %116 ]
  %127 = phi ptr [ %130, %125 ], [ %108, %116 ]
  %128 = phi i32 [ %129, %125 ], [ 0, %116 ]
  tail call fastcc void @srgb_to_linearrgb_v4(ptr noundef %126, ptr noundef %127) #19
  %129 = add nuw nsw i32 %128, 1
  %130 = getelementptr inbounds float, ptr %127, i64 4
  %131 = getelementptr inbounds float, ptr %126, i64 4
  %132 = icmp eq i32 %129, %6
  br i1 %132, label %152, label %125, !llvm.loop !106

133:                                              ; preds = %113
  br i1 %17, label %135, label %134

134:                                              ; preds = %133
  br i1 %18, label %136, label %152

135:                                              ; preds = %133
  br i1 %18, label %144, label %152

136:                                              ; preds = %134, %136
  %137 = phi ptr [ %142, %136 ], [ %111, %134 ]
  %138 = phi ptr [ %141, %136 ], [ %108, %134 ]
  %139 = phi i32 [ %140, %136 ], [ 0, %134 ]
  tail call fastcc void @linearrgb_to_srgb_predivide_v4(ptr noundef %137, ptr noundef %138) #19
  %140 = add nuw nsw i32 %139, 1
  %141 = getelementptr inbounds float, ptr %138, i64 4
  %142 = getelementptr inbounds float, ptr %137, i64 4
  %143 = icmp eq i32 %140, %6
  br i1 %143, label %152, label %136, !llvm.loop !107

144:                                              ; preds = %135, %144
  %145 = phi ptr [ %150, %144 ], [ %111, %135 ]
  %146 = phi ptr [ %149, %144 ], [ %108, %135 ]
  %147 = phi i32 [ %148, %144 ], [ 0, %135 ]
  tail call fastcc void @linearrgb_to_srgb_v4(ptr noundef %145, ptr noundef %146) #19
  %148 = add nuw nsw i32 %147, 1
  %149 = getelementptr inbounds float, ptr %146, i64 4
  %150 = getelementptr inbounds float, ptr %145, i64 4
  %151 = icmp eq i32 %148, %6
  br i1 %151, label %152, label %144, !llvm.loop !108

152:                                              ; preds = %136, %144, %117, %125, %134, %135, %115, %116, %113, %112
  %153 = add nuw nsw i64 %104, 1
  %154 = icmp eq i64 %153, %21
  br i1 %154, label %155, label %103, !llvm.loop !109

155:                                              ; preds = %152, %100, %57, %11, %22, %30, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !110 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_buffer_float_from_float_mask(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7) local_unnamed_addr #8 {
  switch i32 %2, label %135 [
    i32 1, label %29
    i32 3, label %19
    i32 4, label %9
  ]

9:                                                ; preds = %8
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %135

11:                                               ; preds = %9
  %12 = shl i32 %6, 2
  %13 = shl i32 %5, 2
  %14 = icmp sgt i32 %3, 0
  %15 = add i32 %3, -1
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = zext nneg i32 %4 to i64
  br label %104

19:                                               ; preds = %8
  %20 = icmp sgt i32 %4, 0
  br i1 %20, label %21, label %135

21:                                               ; preds = %19
  %22 = mul i32 %6, 3
  %23 = shl i32 %5, 2
  %24 = icmp sgt i32 %3, 0
  %25 = add i32 %3, -1
  %26 = zext i32 %25 to i64
  %27 = add nuw nsw i64 %26, 1
  %28 = zext nneg i32 %4 to i64
  br label %72

29:                                               ; preds = %8
  %30 = icmp sgt i32 %4, 0
  br i1 %30, label %31, label %135

31:                                               ; preds = %29
  %32 = shl i32 %5, 2
  %33 = icmp sgt i32 %3, 0
  %34 = add i32 %3, -1
  %35 = zext i32 %34 to i64
  %36 = add nuw nsw i64 %35, 1
  %37 = sext i32 %6 to i64
  %38 = zext nneg i32 %4 to i64
  br label %39

39:                                               ; preds = %31, %68
  %40 = phi i64 [ 0, %31 ], [ %70, %68 ]
  %41 = phi ptr [ %7, %31 ], [ %69, %68 ]
  br i1 %33, label %42, label %68

42:                                               ; preds = %39
  %43 = trunc i64 %40 to i32
  %44 = mul i32 %32, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, ptr %0, i64 %45
  %47 = mul nsw i64 %40, %37
  %48 = getelementptr inbounds float, ptr %1, i64 %47
  br label %49

49:                                               ; preds = %42, %61
  %50 = phi ptr [ %64, %61 ], [ %46, %42 ]
  %51 = phi ptr [ %63, %61 ], [ %48, %42 ]
  %52 = phi i32 [ %62, %61 ], [ 0, %42 ]
  %53 = phi ptr [ %54, %61 ], [ %41, %42 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  %55 = load i8, ptr %53, align 1, !tbaa !49
  %56 = icmp eq i8 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load float, ptr %51, align 4, !tbaa !46
  %59 = insertelement <4 x float> poison, float %58, i64 0
  %60 = shufflevector <4 x float> %59, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %60, ptr %50, align 4, !tbaa !46
  br label %61

61:                                               ; preds = %49, %57
  %62 = add nuw nsw i32 %52, 1
  %63 = getelementptr inbounds float, ptr %51, i64 1
  %64 = getelementptr inbounds float, ptr %50, i64 4
  %65 = icmp eq i32 %62, %3
  br i1 %65, label %66, label %49, !llvm.loop !111

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %41, i64 %36
  br label %68

68:                                               ; preds = %66, %39
  %69 = phi ptr [ %41, %39 ], [ %67, %66 ]
  %70 = add nuw nsw i64 %40, 1
  %71 = icmp eq i64 %70, %38
  br i1 %71, label %135, label %39, !llvm.loop !112

72:                                               ; preds = %21, %100
  %73 = phi i64 [ 0, %21 ], [ %102, %100 ]
  %74 = phi ptr [ %7, %21 ], [ %101, %100 ]
  br i1 %24, label %75, label %100

75:                                               ; preds = %72
  %76 = trunc i64 %73 to i32
  %77 = mul i32 %23, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, ptr %0, i64 %78
  %80 = mul i32 %22, %76
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, ptr %1, i64 %81
  br label %83

83:                                               ; preds = %75, %93
  %84 = phi ptr [ %96, %93 ], [ %79, %75 ]
  %85 = phi ptr [ %95, %93 ], [ %82, %75 ]
  %86 = phi i32 [ %94, %93 ], [ 0, %75 ]
  %87 = phi ptr [ %88, %93 ], [ %74, %75 ]
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  %89 = load i8, ptr %87, align 1, !tbaa !49
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  tail call fastcc void @copy_v3_v3(ptr noundef %84, ptr noundef %85) #19
  %92 = getelementptr inbounds float, ptr %84, i64 3
  store float 1.000000e+00, ptr %92, align 4, !tbaa !46
  br label %93

93:                                               ; preds = %83, %91
  %94 = add nuw nsw i32 %86, 1
  %95 = getelementptr inbounds float, ptr %85, i64 3
  %96 = getelementptr inbounds float, ptr %84, i64 4
  %97 = icmp eq i32 %94, %3
  br i1 %97, label %98, label %83, !llvm.loop !113

98:                                               ; preds = %93
  %99 = getelementptr i8, ptr %74, i64 %27
  br label %100

100:                                              ; preds = %98, %72
  %101 = phi ptr [ %74, %72 ], [ %99, %98 ]
  %102 = add nuw nsw i64 %73, 1
  %103 = icmp eq i64 %102, %28
  br i1 %103, label %135, label %72, !llvm.loop !114

104:                                              ; preds = %11, %131
  %105 = phi i64 [ 0, %11 ], [ %133, %131 ]
  %106 = phi ptr [ %7, %11 ], [ %132, %131 ]
  br i1 %14, label %107, label %131

107:                                              ; preds = %104
  %108 = trunc i64 %105 to i32
  %109 = mul i32 %13, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, ptr %0, i64 %110
  %112 = mul i32 %12, %108
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, ptr %1, i64 %113
  br label %115

115:                                              ; preds = %107, %124
  %116 = phi ptr [ %127, %124 ], [ %111, %107 ]
  %117 = phi ptr [ %126, %124 ], [ %114, %107 ]
  %118 = phi i32 [ %125, %124 ], [ 0, %107 ]
  %119 = phi ptr [ %120, %124 ], [ %106, %107 ]
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = load i8, ptr %119, align 1, !tbaa !49
  %122 = icmp eq i8 %121, 2
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  tail call fastcc void @copy_v4_v4(ptr noundef %116, ptr noundef %117) #19
  br label %124

124:                                              ; preds = %115, %123
  %125 = add nuw nsw i32 %118, 1
  %126 = getelementptr inbounds float, ptr %117, i64 4
  %127 = getelementptr inbounds float, ptr %116, i64 4
  %128 = icmp eq i32 %125, %3
  br i1 %128, label %129, label %115, !llvm.loop !115

129:                                              ; preds = %124
  %130 = getelementptr i8, ptr %106, i64 %17
  br label %131

131:                                              ; preds = %129, %104
  %132 = phi ptr [ %106, %104 ], [ %130, %129 ]
  %133 = add nuw nsw i64 %105, 1
  %134 = icmp eq i64 %133, %18
  br i1 %134, label %135, label %104, !llvm.loop !116

135:                                              ; preds = %131, %100, %68, %9, %19, %29, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !117 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_buffer_byte_from_byte(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %12, label %73

12:                                               ; preds = %9
  %13 = shl i32 %8, 2
  %14 = shl i32 %7, 2
  %15 = icmp eq i32 %2, %3
  %16 = icmp eq i8 %4, 0
  %17 = icmp sgt i32 %5, 0
  %18 = sext i32 %5 to i64
  %19 = shl nsw i64 %18, 2
  %20 = zext nneg i32 %6 to i64
  br label %21

21:                                               ; preds = %12, %70
  %22 = phi i64 [ 0, %12 ], [ %71, %70 ]
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %13, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = mul i32 %14, %23
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  br i1 %15, label %30, label %31

30:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %26, i64 %19, i1 false)
  br label %70

31:                                               ; preds = %21
  switch i32 %2, label %70 [
    i32 1, label %32
    i32 2, label %51
  ]

32:                                               ; preds = %31
  br i1 %16, label %34, label %33

33:                                               ; preds = %32
  br i1 %17, label %35, label %70

34:                                               ; preds = %32
  br i1 %17, label %43, label %70

35:                                               ; preds = %33, %35
  %36 = phi ptr [ %41, %35 ], [ %29, %33 ]
  %37 = phi ptr [ %40, %35 ], [ %26, %33 ]
  %38 = phi i32 [ %39, %35 ], [ 0, %33 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %37) #17
  call fastcc void @srgb_to_linearrgb_predivide_v4(ptr noundef nonnull %10, ptr noundef nonnull %10) #19
  call void @rgba_float_to_uchar(ptr noundef %36, ptr noundef nonnull %10) #17
  %39 = add nuw nsw i32 %38, 1
  %40 = getelementptr inbounds i8, ptr %37, i64 4
  %41 = getelementptr inbounds i8, ptr %36, i64 4
  %42 = icmp eq i32 %39, %5
  br i1 %42, label %70, label %35, !llvm.loop !118

43:                                               ; preds = %34, %43
  %44 = phi ptr [ %49, %43 ], [ %29, %34 ]
  %45 = phi ptr [ %48, %43 ], [ %26, %34 ]
  %46 = phi i32 [ %47, %43 ], [ 0, %34 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %45) #17
  call fastcc void @srgb_to_linearrgb_v4(ptr noundef nonnull %10, ptr noundef nonnull %10) #19
  call void @rgba_float_to_uchar(ptr noundef %44, ptr noundef nonnull %10) #17
  %47 = add nuw nsw i32 %46, 1
  %48 = getelementptr inbounds i8, ptr %45, i64 4
  %49 = getelementptr inbounds i8, ptr %44, i64 4
  %50 = icmp eq i32 %47, %5
  br i1 %50, label %70, label %43, !llvm.loop !119

51:                                               ; preds = %31
  br i1 %16, label %53, label %52

52:                                               ; preds = %51
  br i1 %17, label %54, label %70

53:                                               ; preds = %51
  br i1 %17, label %62, label %70

54:                                               ; preds = %52, %54
  %55 = phi ptr [ %60, %54 ], [ %29, %52 ]
  %56 = phi ptr [ %59, %54 ], [ %26, %52 ]
  %57 = phi i32 [ %58, %54 ], [ 0, %52 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %56) #17
  call fastcc void @linearrgb_to_srgb_predivide_v4(ptr noundef nonnull %10, ptr noundef nonnull %10) #19
  call void @rgba_float_to_uchar(ptr noundef %55, ptr noundef nonnull %10) #17
  %58 = add nuw nsw i32 %57, 1
  %59 = getelementptr inbounds i8, ptr %56, i64 4
  %60 = getelementptr inbounds i8, ptr %55, i64 4
  %61 = icmp eq i32 %58, %5
  br i1 %61, label %70, label %54, !llvm.loop !120

62:                                               ; preds = %53, %62
  %63 = phi ptr [ %68, %62 ], [ %29, %53 ]
  %64 = phi ptr [ %67, %62 ], [ %26, %53 ]
  %65 = phi i32 [ %66, %62 ], [ 0, %53 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %64) #17
  call fastcc void @linearrgb_to_srgb_v4(ptr noundef nonnull %10, ptr noundef nonnull %10) #19
  call void @rgba_float_to_uchar(ptr noundef %63, ptr noundef nonnull %10) #17
  %66 = add nuw nsw i32 %65, 1
  %67 = getelementptr inbounds i8, ptr %64, i64 4
  %68 = getelementptr inbounds i8, ptr %63, i64 4
  %69 = icmp eq i32 %66, %5
  br i1 %69, label %70, label %62, !llvm.loop !121

70:                                               ; preds = %54, %62, %35, %43, %52, %53, %33, %34, %31, %30
  %71 = add nuw nsw i64 %22, 1
  %72 = icmp eq i64 %71, %20
  br i1 %72, label %73, label %21, !llvm.loop !122

73:                                               ; preds = %70, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_rect_from_float(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @imb_addrectImBuf(ptr noundef nonnull %0) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #17
  br label %20

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ColorSpace, ptr %14, i64 0, i32 3
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !67
  %23 = load ptr, ptr %2, align 8, !tbaa !123
  %24 = tail call ptr %22(ptr noundef %23) #17
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !45
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !125
  %31 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %32 = load ptr, ptr %31, align 8, !tbaa !126
  %33 = getelementptr inbounds %struct.ColorSpace, ptr %32, i64 0, i32 3
  tail call void @IMB_colormanagement_transform(ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, ptr noundef %21, ptr noundef nonnull %33, i8 noundef zeroext 1) #17
  %34 = load i32, ptr %29, align 4, !tbaa !125
  %35 = load i32, ptr %25, align 8, !tbaa !44
  %36 = load i32, ptr %27, align 4, !tbaa !45
  tail call void @IMB_unpremultiply_rect_float(ptr noundef %24, i32 noundef %34, i32 noundef %35, i32 noundef %36) #17
  %37 = load ptr, ptr %6, align 8, !tbaa !43
  %38 = load i32, ptr %29, align 4, !tbaa !125
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %40 = load float, ptr %39, align 8, !tbaa !127
  %41 = load i32, ptr %25, align 8, !tbaa !44
  %42 = load i32, ptr %27, align 4, !tbaa !45
  tail call void @IMB_buffer_byte_from_float(ptr noundef %37, ptr noundef %24, i32 noundef %38, float noundef %40, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %41, i32 noundef %42, i32 noundef %41, i32 noundef %41) #19
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %43(ptr noundef %24) #17
  %44 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %45 = load i32, ptr %44, align 4, !tbaa !128
  %46 = and i32 %45, -9
  store i32 %46, ptr %44, align 4, !tbaa !128
  br label %47

47:                                               ; preds = %9, %1, %20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @imb_addrectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_transform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_unpremultiply_rect_float(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_partial_rect_from_float(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %11, %10
  br i1 %12, label %49, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @imb_addrectImBuf(ptr noundef nonnull %0) #17
  %19 = load ptr, ptr %8, align 8, !tbaa !123
  %20 = load ptr, ptr %14, align 8, !tbaa !43
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %23 = phi ptr [ %19, %17 ], [ %9, %13 ]
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !44
  %26 = mul nsw i32 %25, %3
  %27 = add nsw i32 %26, %2
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !125
  %30 = mul nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, ptr %23, i64 %31
  %33 = shl nsw i32 %27, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %22, i64 %34
  %36 = icmp eq i8 %6, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %21
  tail call void @IMB_buffer_float_from_float(ptr noundef nonnull %1, ptr noundef %32, i32 noundef %29, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0, i32 noundef %4, i32 noundef %5, i32 noundef %4, i32 noundef %25) #19
  %38 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %39 = load float, ptr %38, align 8, !tbaa !127
  %40 = load i32, ptr %24, align 8, !tbaa !44
  tail call void @IMB_buffer_byte_from_float(ptr noundef %35, ptr noundef %32, i32 noundef 4, float noundef %39, i32 noundef 2, i32 noundef 1, i8 noundef zeroext 1, i32 noundef %4, i32 noundef %5, i32 noundef %40, i32 noundef %4) #19
  br label %45

41:                                               ; preds = %21
  tail call void @IMB_buffer_float_from_float(ptr noundef nonnull %1, ptr noundef %32, i32 noundef %29, i32 noundef 2, i32 noundef 1, i8 noundef zeroext 1, i32 noundef %4, i32 noundef %5, i32 noundef %4, i32 noundef %25) #19
  tail call void @IMB_buffer_float_unpremultiply(ptr noundef nonnull %1, i32 noundef %4, i32 noundef %5) #19
  %42 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %43 = load float, ptr %42, align 8, !tbaa !127
  %44 = load i32, ptr %24, align 8, !tbaa !44
  tail call void @IMB_buffer_byte_from_float(ptr noundef %35, ptr noundef nonnull %1, i32 noundef 4, float noundef %43, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %4, i32 noundef %5, i32 noundef %44, i32 noundef %4) #19
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %47 = load i32, ptr %46, align 4, !tbaa !128
  %48 = and i32 %47, -9
  store i32 %48, ptr %46, align 4, !tbaa !128
  br label %49

49:                                               ; preds = %7, %45
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_buffer_float_unpremultiply(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = mul nsw i32 %2, %1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %10, %6 ], [ %0, %3 ]
  %8 = phi i32 [ %9, %6 ], [ %4, %3 ]
  %9 = add nsw i32 %8, -1
  tail call fastcc void @premul_to_straight_v4(ptr noundef %7) #19
  %10 = getelementptr inbounds float, ptr %7, i64 4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %6, !llvm.loop !129

12:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_float_from_rect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !45
  %14 = shl i32 %11, 4
  %15 = mul i32 %14, %13
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  store i32 4, ptr %16, align 4, !tbaa !125
  %17 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !67
  %18 = sext i32 %15 to i64
  %19 = tail call ptr %17(i64 noundef %18, ptr noundef nonnull @.str) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %9
  %22 = load ptr, ptr %2, align 8, !tbaa !43
  br label %23

23:                                               ; preds = %21, %5
  %24 = phi ptr [ %22, %21 ], [ %3, %5 ]
  %25 = phi ptr [ %19, %21 ], [ %7, %5 ]
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !45
  tail call void @IMB_buffer_float_from_byte(ptr noundef nonnull %25, ptr noundef %24, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %27, i32 noundef %29, i32 noundef %27, i32 noundef %27) #19
  %30 = load i32, ptr %26, align 8, !tbaa !44
  %31 = load i32, ptr %28, align 4, !tbaa !45
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !125
  %34 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %35 = load ptr, ptr %34, align 8, !tbaa !126
  tail call void @IMB_colormanagement_colorspace_to_scene_linear(ptr noundef nonnull %25, i32 noundef %30, i32 noundef %31, i32 noundef %33, ptr noundef %35, i8 noundef zeroext 0) #17
  %36 = load i32, ptr %32, align 4, !tbaa !125
  %37 = load i32, ptr %26, align 8, !tbaa !44
  %38 = load i32, ptr %28, align 4, !tbaa !45
  tail call void @IMB_premultiply_rect_float(ptr noundef nonnull %25, i32 noundef %36, i32 noundef %37, i32 noundef %38) #17
  %39 = load ptr, ptr %6, align 8, !tbaa !123
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %23
  store ptr %25, ptr %6, align 8, !tbaa !123
  %42 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %43 = load <2 x i32>, ptr %42, align 8, !tbaa !130
  %44 = or <2 x i32> %43, <i32 32, i32 32>
  store <2 x i32> %44, ptr %42, align 8, !tbaa !130
  br label %45

45:                                               ; preds = %23, %41, %1, %9
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_premultiply_rect_float(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_color_to_bw(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %3, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = mul nsw i32 %11, %9
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %7, %14
  %15 = phi i32 [ %20, %14 ], [ %12, %7 ]
  %16 = phi ptr [ %21, %14 ], [ %3, %7 ]
  %17 = tail call fastcc float @rgb_to_grayscale(ptr noundef nonnull %16) #19
  %18 = getelementptr inbounds float, ptr %16, i64 2
  store float %17, ptr %18, align 4, !tbaa !46
  %19 = getelementptr inbounds float, ptr %16, i64 1
  store float %17, ptr %19, align 4, !tbaa !46
  store float %17, ptr %16, align 4, !tbaa !46
  %20 = add nsw i32 %15, -1
  %21 = getelementptr inbounds float, ptr %16, i64 4
  %22 = icmp ugt i32 %15, 1
  br i1 %22, label %14, label %23, !llvm.loop !131

23:                                               ; preds = %14, %7, %1
  %24 = icmp eq ptr %5, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !45
  %30 = mul nsw i32 %29, %27
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25, %32
  %33 = phi i32 [ %38, %32 ], [ %30, %25 ]
  %34 = phi ptr [ %39, %32 ], [ %5, %25 ]
  %35 = tail call fastcc zeroext i8 @rgb_to_grayscale_byte(ptr noundef nonnull %34) #19
  %36 = getelementptr inbounds i8, ptr %34, i64 2
  store i8 %35, ptr %36, align 1, !tbaa !49
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 %35, ptr %37, align 1, !tbaa !49
  store i8 %35, ptr %34, align 1, !tbaa !49
  %38 = add nsw i32 %33, -1
  %39 = getelementptr inbounds i8, ptr %34, i64 4
  %40 = icmp ugt i32 %33, 1
  br i1 %40, label %32, label %41, !llvm.loop !132

41:                                               ; preds = %32, %25, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_grayscale(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !133 {
  %2 = load float, ptr %0, align 4, !tbaa !46
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = fmul float %4, 0x3FE28F5C20000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD3333340000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FBEB851E0000000, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @rgb_to_grayscale_byte(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !134 {
  %2 = load i8, ptr %0, align 1, !tbaa !49
  %3 = zext i8 %2 to i16
  %4 = mul nuw nsw i16 %3, 76
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !49
  %7 = zext i8 %6 to i16
  %8 = mul nuw i16 %7, 148
  %9 = add nuw i16 %8, %4
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !49
  %12 = zext i8 %11 to i16
  %13 = mul nuw nsw i16 %12, 31
  %14 = add nuw i16 %9, %13
  %15 = udiv i16 %14, 255
  %16 = trunc i16 %15 to i8
  ret i8 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @IMB_buffer_float_clamp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = shl i32 %1, 2
  %5 = mul i32 %4, %2
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = getelementptr inbounds float, ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = tail call fastcc float @min_ff(float noundef %12) #19
  store float %13, ptr %11, align 4, !tbaa !46
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !135

16:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #11 !PGOFuncName !136 {
  %2 = fcmp ogt float %0, 1.000000e+00
  %3 = select i1 %2, float 1.000000e+00, float %0
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_to_straight_v4(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !137 {
  tail call fastcc void @premul_to_straight_v4_v4(ptr noundef %0, ptr noundef %0) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_buffer_float_premultiply(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = mul nsw i32 %2, %1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %10, %6 ], [ %0, %3 ]
  %8 = phi i32 [ %9, %6 ], [ %4, %3 ]
  %9 = add nsw i32 %8, -1
  tail call fastcc void @straight_to_premul_v4(ptr noundef %7) #19
  %10 = getelementptr inbounds float, ptr %7, i64 4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %6, !llvm.loop !138

12:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_to_premul_v4(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !139 {
  tail call fastcc void @straight_to_premul_v4_v4(ptr noundef %0, ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_saturation(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  %9 = icmp eq ptr %6, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !45
  %15 = mul nsw i32 %14, %12
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %19 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %20 = getelementptr inbounds float, ptr %4, i64 1
  %21 = getelementptr inbounds float, ptr %4, i64 2
  br label %22

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %6, %17 ], [ %30, %22 ]
  %24 = phi i32 [ %15, %17 ], [ %29, %22 ]
  call void @rgb_uchar_to_float(ptr noundef nonnull %4, ptr noundef nonnull %23) #17
  call void @rgb_to_hsv_v(ptr noundef nonnull %4, ptr noundef nonnull %3) #17
  %25 = load float, ptr %3, align 4, !tbaa !46
  %26 = load float, ptr %18, align 4, !tbaa !46
  %27 = fmul float %26, %1
  %28 = load float, ptr %19, align 4, !tbaa !46
  call void @hsv_to_rgb(float noundef %25, float noundef %27, float noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %20, ptr noundef nonnull %21) #17
  call void @rgb_float_to_uchar(ptr noundef nonnull %23, ptr noundef nonnull %4) #17
  %29 = add nsw i32 %24, -1
  %30 = getelementptr inbounds i8, ptr %23, i64 4
  %31 = icmp ugt i32 %24, 1
  br i1 %31, label %22, label %32, !llvm.loop !140

32:                                               ; preds = %22, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %33

33:                                               ; preds = %32, %2
  %34 = icmp eq ptr %8, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !44
  %38 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !45
  %40 = mul nsw i32 %39, %37
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %44 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %8, %42 ], [ %55, %45 ]
  %47 = phi i32 [ %40, %42 ], [ %54, %45 ]
  call void @rgb_to_hsv_v(ptr noundef nonnull %46, ptr noundef nonnull %3) #17
  %48 = load float, ptr %3, align 4, !tbaa !46
  %49 = load float, ptr %43, align 4, !tbaa !46
  %50 = fmul float %49, %1
  %51 = load float, ptr %44, align 4, !tbaa !46
  %52 = getelementptr inbounds float, ptr %46, i64 1
  %53 = getelementptr inbounds float, ptr %46, i64 2
  call void @hsv_to_rgb(float noundef %48, float noundef %50, float noundef %51, ptr noundef nonnull %46, ptr noundef nonnull %52, ptr noundef nonnull %53) #17
  %54 = add nsw i32 %47, -1
  %55 = getelementptr inbounds float, ptr %46, i64 4
  %56 = icmp ugt i32 %47, 1
  br i1 %56, label %45, label %57, !llvm.loop !141

57:                                               ; preds = %45, %35, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc float @dither_random_value(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !142 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %3, float noundef %0, float noundef %1) #19
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3) #19
  %5 = tail call float @sinf(float noundef %4) #17
  %6 = fmul float %5, 0x40E55DD180000000
  %7 = tail call float @llvm.floor.f32(float %6)
  %8 = fsub float %6, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ftochar(float noundef %0) unnamed_addr #11 !PGOFuncName !143 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ogt float %0, 0x3FEFEFEFE0000000
  %5 = tail call float @llvm.fmuladd.f32(float %0, float 2.550000e+02, float 5.000000e-01)
  %6 = select i1 %4, float 2.550000e+02, float %5
  %7 = fptoui float %6 to i8
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i8 [ %7, %3 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v2_fl2(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2) unnamed_addr #12 !PGOFuncName !144 {
  store float %1, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %4, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !145 {
  %2 = load float, ptr %0, align 4, !tbaa !46
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = fmul float %4, 0x40538EE980000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x4029FAC720000000, float %5)
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i16 @to_srgb_table_lookup(float noundef %0) unnamed_addr #15 !PGOFuncName !146 {
  %2 = bitcast float %0 to i32
  %3 = lshr i32 %2, 16
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !75
  ret i16 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_to_premul_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !147 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = load float, ptr %1, align 4, !tbaa !46
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fmul float %4, %8
  %10 = getelementptr inbounds float, ptr %0, i64 1
  store float %9, ptr %10, align 4, !tbaa !46
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = fmul float %4, %12
  %14 = getelementptr inbounds float, ptr %0, i64 2
  store float %13, ptr %14, align 4, !tbaa !46
  %15 = load float, ptr %3, align 4, !tbaa !46
  %16 = getelementptr inbounds float, ptr %0, i64 3
  store float %15, ptr %16, align 4, !tbaa !46
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 32}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !36, i64 40}
!44 = !{!35, !39, i64 16}
!45 = !{!35, !39, i64 20}
!46 = !{!40, !40, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!37, !37, i64 0}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !48}
!52 = distinct !{!52, !48}
!53 = distinct !{!53, !48}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = distinct !{!56, !48}
!57 = distinct !{!57, !48}
!58 = distinct !{!58, !48}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = distinct !{!62, !48}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = !{!"divers.c:create_dither_context"}
!67 = !{!36, !36, i64 0}
!68 = !{!69, !40, i64 0}
!69 = !{!"DitherContext", !40, i64 0}
!70 = !{!"divers.c:linearrgb_to_srgb_v3_v3"}
!71 = !{!"divers.c:srgb_to_linearrgb_v3_v3"}
!72 = !{!"divers.c:premul_to_straight_v4_v4"}
!73 = !{!"divers.c:float_to_byte_dither_v4"}
!74 = !{!"divers.c:linearrgb_to_srgb_ushort4"}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !37, i64 0}
!77 = !{!"divers.c:ushort_to_byte_dither_v4"}
!78 = !{!"divers.c:ushort_to_byte_v4"}
!79 = !{!"divers.c:srgb_to_linearrgb_predivide_v4"}
!80 = !{!"divers.c:srgb_to_linearrgb_v4"}
!81 = !{!"divers.c:clear_dither_context"}
!82 = distinct !{!82, !48}
!83 = distinct !{!83, !48}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
!86 = distinct !{!86, !48}
!87 = distinct !{!87, !48}
!88 = distinct !{!88, !48}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = distinct !{!92, !48}
!93 = distinct !{!93, !48}
!94 = distinct !{!94, !48}
!95 = !{!"divers.c:srgb_to_linearrgb_uchar4_predivide"}
!96 = !{!"divers.c:srgb_to_linearrgb_uchar4"}
!97 = !{!"divers.c:linearrgb_to_srgb_predivide_v4"}
!98 = !{!"divers.c:linearrgb_to_srgb_v4"}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, !48}
!103 = distinct !{!103, !48}
!104 = distinct !{!104, !48}
!105 = distinct !{!105, !48}
!106 = distinct !{!106, !48}
!107 = distinct !{!107, !48}
!108 = distinct !{!108, !48}
!109 = distinct !{!109, !48}
!110 = !{!"divers.c:copy_v3_v3"}
!111 = distinct !{!111, !48}
!112 = distinct !{!112, !48}
!113 = distinct !{!113, !48}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !48}
!116 = distinct !{!116, !48}
!117 = !{!"divers.c:copy_v4_v4"}
!118 = distinct !{!118, !48}
!119 = distinct !{!119, !48}
!120 = distinct !{!120, !48}
!121 = distinct !{!121, !48}
!122 = distinct !{!122, !48}
!123 = !{!35, !36, i64 48}
!124 = !{!35, !36, i64 2408}
!125 = !{!35, !39, i64 28}
!126 = !{!35, !36, i64 2400}
!127 = !{!35, !40, i64 112}
!128 = !{!35, !39, i64 292}
!129 = distinct !{!129, !48}
!130 = !{!39, !39, i64 0}
!131 = distinct !{!131, !48}
!132 = distinct !{!132, !48}
!133 = !{!"divers.c:rgb_to_grayscale"}
!134 = !{!"divers.c:rgb_to_grayscale_byte"}
!135 = distinct !{!135, !48}
!136 = !{!"divers.c:min_ff"}
!137 = !{!"divers.c:premul_to_straight_v4"}
!138 = distinct !{!138, !48}
!139 = !{!"divers.c:straight_to_premul_v4"}
!140 = distinct !{!140, !48}
!141 = distinct !{!141, !48}
!142 = !{!"divers.c:dither_random_value"}
!143 = !{!"divers.c:ftochar"}
!144 = !{!"divers.c:copy_v2_fl2"}
!145 = !{!"divers.c:dot_v2v2"}
!146 = !{!"divers.c:to_srgb_table_lookup"}
!147 = !{!"divers.c:straight_to_premul_v4_v4"}
