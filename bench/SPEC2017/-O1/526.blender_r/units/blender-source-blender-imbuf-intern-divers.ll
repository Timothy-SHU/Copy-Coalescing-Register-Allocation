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

; Function Attrs: nounwind uwtable
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
  %19 = tail call ptr @IMB_allocImBuf(i32 noundef %15, i32 noundef %18, i8 noundef zeroext 32, i32 noundef 1) #9
  %20 = load i32, ptr %14, align 8, !tbaa !44
  %21 = load i32, ptr %16, align 4, !tbaa !45
  %22 = sdiv i32 %21, 2
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %20, i32 noundef %22, i8 noundef zeroext 32, i32 noundef 1) #9
  %24 = load i32, ptr %14, align 8, !tbaa !44
  %25 = shl nsw i32 %24, 1
  store i32 %25, ptr %14, align 8, !tbaa !44
  %26 = load i32, ptr %16, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %19, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %25, i32 noundef %26) #9
  %27 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !44
  %29 = load i32, ptr %14, align 8, !tbaa !44
  %30 = load i32, ptr %16, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %28, i32 noundef 0, i32 noundef %29, i32 noundef %30) #9
  %31 = load i32, ptr %14, align 8, !tbaa !44
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %14, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %34, i32 noundef %36) #9
  %37 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !45
  %39 = load i32, ptr %27, align 8, !tbaa !44
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %23, i32 noundef 0, i32 noundef %38, i32 noundef 0, i32 noundef 0, i32 noundef %39, i32 noundef %38) #9
  tail call void @IMB_freeImBuf(ptr noundef %19) #9
  tail call void @IMB_freeImBuf(ptr noundef %23) #9
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

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
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
  %16 = tail call ptr @IMB_allocImBuf(i32 noundef %15, i32 noundef %8, i8 noundef zeroext 32, i32 noundef 1) #9
  %17 = load i32, ptr %14, align 8, !tbaa !44
  %18 = load i32, ptr %7, align 4, !tbaa !45
  %19 = sdiv i32 %18, 2
  %20 = tail call ptr @IMB_allocImBuf(i32 noundef %17, i32 noundef %19, i8 noundef zeroext 32, i32 noundef 1) #9
  %21 = load i32, ptr %14, align 8, !tbaa !44
  %22 = load i32, ptr %7, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %16, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %21, i32 noundef %22) #9
  %23 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !45
  %25 = load i32, ptr %14, align 8, !tbaa !44
  %26 = load i32, ptr %7, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef %20, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %24, i32 noundef %25, i32 noundef %26) #9
  %27 = load i32, ptr %14, align 8, !tbaa !44
  %28 = shl nsw i32 %27, 1
  store i32 %28, ptr %14, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %30, i32 noundef %32) #9
  %33 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = load i32, ptr %23, align 4, !tbaa !45
  tail call void @IMB_rectcpy(ptr noundef nonnull %0, ptr noundef %20, i32 noundef %34, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %34, i32 noundef %35) #9
  %36 = load i32, ptr %14, align 8, !tbaa !44
  %37 = sdiv i32 %36, 2
  store i32 %37, ptr %14, align 8, !tbaa !44
  tail call void @IMB_freeImBuf(ptr noundef %16) #9
  tail call void @IMB_freeImBuf(ptr noundef %20) #9
  br label %38

38:                                               ; preds = %3, %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_buffer_byte_from_float(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9
  %14 = sitofp i32 %7 to float
  %15 = fdiv float 1.000000e+00, %14
  %16 = sitofp i32 %8 to float
  %17 = fdiv float 1.000000e+00, %16
  %18 = fcmp une float %3, 0.000000e+00
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %21 = tail call ptr %20(i64 noundef 4, ptr noundef nonnull @.str.1) #9
  store float %3, ptr %21, align 4, !tbaa !47
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi ptr [ %21, %19 ], [ null, %11 ]
  %24 = icmp sgt i32 %8, 0
  br i1 %24, label %25, label %909

25:                                               ; preds = %22
  %26 = shl i32 %10, 2
  %27 = shl i32 %9, 2
  %28 = icmp eq i32 %4, %5
  %29 = icmp ne i8 %6, 0
  %30 = and i1 %18, %29
  %31 = icmp eq i8 %6, 0
  %32 = icmp sgt i32 %7, 0
  %33 = getelementptr inbounds float, ptr %12, i64 1
  %34 = getelementptr inbounds float, ptr %12, i64 2
  %35 = getelementptr inbounds float, ptr %12, i64 3
  %36 = icmp sgt i32 %7, 0
  %37 = getelementptr inbounds float, ptr %12, i64 1
  %38 = getelementptr inbounds float, ptr %12, i64 2
  %39 = getelementptr inbounds float, ptr %12, i64 3
  %40 = icmp sgt i32 %7, 0
  %41 = getelementptr inbounds float, ptr %12, i64 1
  %42 = getelementptr inbounds float, ptr %12, i64 2
  %43 = getelementptr inbounds float, ptr %12, i64 3
  %44 = icmp sgt i32 %7, 0
  %45 = getelementptr inbounds float, ptr %12, i64 1
  %46 = getelementptr inbounds float, ptr %12, i64 2
  %47 = getelementptr inbounds float, ptr %12, i64 3
  %48 = icmp ne i8 %6, 0
  %49 = and i1 %18, %48
  %50 = icmp eq i8 %6, 0
  %51 = icmp sgt i32 %7, 0
  %52 = icmp sgt i32 %7, 0
  %53 = icmp sgt i32 %7, 0
  %54 = icmp sgt i32 %7, 0
  %55 = icmp ne i8 %6, 0
  %56 = and i1 %18, %55
  %57 = icmp eq i8 %6, 0
  %58 = icmp sgt i32 %7, 0
  %59 = getelementptr inbounds float, ptr %13, i64 1
  %60 = getelementptr inbounds float, ptr %13, i64 2
  %61 = getelementptr inbounds float, ptr %13, i64 3
  %62 = getelementptr inbounds float, ptr %13, i64 1
  %63 = getelementptr inbounds float, ptr %13, i64 2
  %64 = getelementptr inbounds float, ptr %13, i64 3
  %65 = icmp sgt i32 %7, 0
  %66 = icmp sgt i32 %7, 0
  %67 = icmp sgt i32 %7, 0
  %68 = getelementptr inbounds float, ptr %13, i64 1
  %69 = getelementptr inbounds float, ptr %13, i64 2
  %70 = getelementptr inbounds float, ptr %13, i64 3
  %71 = getelementptr inbounds float, ptr %13, i64 1
  %72 = getelementptr inbounds float, ptr %13, i64 2
  %73 = getelementptr inbounds float, ptr %13, i64 3
  %74 = getelementptr inbounds float, ptr %13, i64 1
  %75 = getelementptr inbounds float, ptr %13, i64 2
  %76 = getelementptr inbounds float, ptr %13, i64 3
  %77 = mul i32 %10, 3
  %78 = shl i32 %9, 2
  %79 = icmp eq i32 %4, %5
  %80 = icmp sgt i32 %7, 0
  %81 = getelementptr inbounds float, ptr %12, i64 1
  %82 = getelementptr inbounds float, ptr %12, i64 2
  %83 = icmp sgt i32 %7, 0
  %84 = getelementptr inbounds float, ptr %12, i64 1
  %85 = getelementptr inbounds float, ptr %12, i64 2
  %86 = icmp sgt i32 %7, 0
  %87 = shl i32 %9, 2
  %88 = icmp sgt i32 %7, 0
  %89 = sext i32 %10 to i64
  %90 = zext nneg i32 %8 to i64
  br label %91

91:                                               ; preds = %25, %906
  %92 = phi i64 [ 0, %25 ], [ %907, %906 ]
  %93 = trunc i64 %92 to i32
  %94 = sitofp i32 %93 to float
  %95 = fmul float %17, %94
  switch i32 %2, label %906 [
    i32 1, label %96
    i32 3, label %121
    i32 4, label %177
  ]

96:                                               ; preds = %91
  br i1 %88, label %97, label %906

97:                                               ; preds = %96
  %98 = trunc i64 %92 to i32
  %99 = mul i32 %87, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %0, i64 %100
  %102 = mul nsw i64 %92, %89
  %103 = getelementptr inbounds float, ptr %1, i64 %102
  br label %104

104:                                              ; preds = %97, %114
  %105 = phi ptr [ %119, %114 ], [ %101, %97 ]
  %106 = phi ptr [ %118, %114 ], [ %103, %97 ]
  %107 = phi i32 [ %117, %114 ], [ 0, %97 ]
  %108 = load float, ptr %106, align 4, !tbaa !49
  %109 = fcmp ugt float %108, 0.000000e+00
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = fcmp ogt float %108, 0x3FEFEFEFE0000000
  br i1 %111, label %114, label %112

112:                                              ; preds = %110
  %113 = call float @llvm.fmuladd.f32(float %108, float 2.550000e+02, float 5.000000e-01)
  br label %114

114:                                              ; preds = %112, %110, %104
  %115 = phi float [ 0.000000e+00, %104 ], [ %113, %112 ], [ 2.550000e+02, %110 ]
  %116 = fptoui float %115 to i8
  %117 = add nuw nsw i32 %107, 1
  %118 = getelementptr inbounds float, ptr %106, i64 1
  %119 = getelementptr inbounds i8, ptr %105, i64 4
  %120 = icmp eq i32 %117, %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %105, i8 %116, i64 4, i1 false)
  br i1 %120, label %906, label %104, !llvm.loop !50

121:                                              ; preds = %91
  %122 = trunc i64 %92 to i32
  %123 = mul i32 %77, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, ptr %1, i64 %124
  %126 = trunc i64 %92 to i32
  %127 = mul i32 %78, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %0, i64 %128
  br i1 %79, label %130, label %140

130:                                              ; preds = %121
  br i1 %86, label %131, label %906

131:                                              ; preds = %130, %131
  %132 = phi ptr [ %138, %131 ], [ %129, %130 ]
  %133 = phi ptr [ %137, %131 ], [ %125, %130 ]
  %134 = phi i32 [ %136, %131 ], [ 0, %130 ]
  call void @rgb_float_to_uchar(ptr noundef %132, ptr noundef %133) #9
  %135 = getelementptr inbounds i8, ptr %132, i64 3
  store i8 -1, ptr %135, align 1, !tbaa !53
  %136 = add nuw nsw i32 %134, 1
  %137 = getelementptr inbounds float, ptr %133, i64 3
  %138 = getelementptr inbounds i8, ptr %132, i64 4
  %139 = icmp eq i32 %136, %7
  br i1 %139, label %906, label %131, !llvm.loop !54

140:                                              ; preds = %121
  switch i32 %4, label %906 [
    i32 2, label %142
    i32 1, label %141
  ]

141:                                              ; preds = %140
  br i1 %80, label %160, label %906

142:                                              ; preds = %140
  br i1 %83, label %143, label %906

143:                                              ; preds = %142, %143
  %144 = phi ptr [ %158, %143 ], [ %129, %142 ]
  %145 = phi ptr [ %157, %143 ], [ %125, %142 ]
  %146 = phi i32 [ %156, %143 ], [ 0, %142 ]
  %147 = load float, ptr %145, align 4, !tbaa !49
  %148 = call float @linearrgb_to_srgb(float noundef %147) #9
  store float %148, ptr %12, align 16, !tbaa !49
  %149 = getelementptr inbounds float, ptr %145, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !49
  %151 = call float @linearrgb_to_srgb(float noundef %150) #9
  store float %151, ptr %84, align 4, !tbaa !49
  %152 = getelementptr inbounds float, ptr %145, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !49
  %154 = call float @linearrgb_to_srgb(float noundef %153) #9
  store float %154, ptr %85, align 8, !tbaa !49
  call void @rgb_float_to_uchar(ptr noundef %144, ptr noundef nonnull %12) #9
  %155 = getelementptr inbounds i8, ptr %144, i64 3
  store i8 -1, ptr %155, align 1, !tbaa !53
  %156 = add nuw nsw i32 %146, 1
  %157 = getelementptr inbounds float, ptr %145, i64 3
  %158 = getelementptr inbounds i8, ptr %144, i64 4
  %159 = icmp eq i32 %156, %7
  br i1 %159, label %906, label %143, !llvm.loop !55

160:                                              ; preds = %141, %160
  %161 = phi ptr [ %175, %160 ], [ %129, %141 ]
  %162 = phi ptr [ %174, %160 ], [ %125, %141 ]
  %163 = phi i32 [ %173, %160 ], [ 0, %141 ]
  %164 = load float, ptr %162, align 4, !tbaa !49
  %165 = call float @srgb_to_linearrgb(float noundef %164) #9
  store float %165, ptr %12, align 16, !tbaa !49
  %166 = getelementptr inbounds float, ptr %162, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !49
  %168 = call float @srgb_to_linearrgb(float noundef %167) #9
  store float %168, ptr %81, align 4, !tbaa !49
  %169 = getelementptr inbounds float, ptr %162, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !49
  %171 = call float @srgb_to_linearrgb(float noundef %170) #9
  store float %171, ptr %82, align 8, !tbaa !49
  call void @rgb_float_to_uchar(ptr noundef %161, ptr noundef nonnull %12) #9
  %172 = getelementptr inbounds i8, ptr %161, i64 3
  store i8 -1, ptr %172, align 1, !tbaa !53
  %173 = add nuw nsw i32 %163, 1
  %174 = getelementptr inbounds float, ptr %162, i64 3
  %175 = getelementptr inbounds i8, ptr %161, i64 4
  %176 = icmp eq i32 %173, %7
  br i1 %176, label %906, label %160, !llvm.loop !56

177:                                              ; preds = %91
  %178 = trunc i64 %92 to i32
  %179 = mul i32 %26, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, ptr %1, i64 %180
  %182 = trunc i64 %92 to i32
  %183 = mul i32 %27, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %0, i64 %184
  br i1 %28, label %186, label %383

186:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9
  br i1 %56, label %187, label %273

187:                                              ; preds = %186
  br i1 %67, label %188, label %382

188:                                              ; preds = %187
  %189 = fmul float %95, 0x40538EE980000000
  br label %190

190:                                              ; preds = %188, %266
  %191 = phi ptr [ %271, %266 ], [ %185, %188 ]
  %192 = phi ptr [ %270, %266 ], [ %181, %188 ]
  %193 = phi i32 [ %269, %266 ], [ 0, %188 ]
  %194 = getelementptr inbounds float, ptr %192, i64 3
  %195 = load float, ptr %194, align 4, !tbaa !49
  %196 = fcmp oeq float %195, 0.000000e+00
  %197 = fcmp oeq float %195, 1.000000e+00
  %198 = or i1 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %190
  %200 = load float, ptr %192, align 4, !tbaa !49
  store float %200, ptr %13, align 16, !tbaa !49
  %201 = getelementptr inbounds float, ptr %192, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !49
  store float %202, ptr %71, align 4, !tbaa !49
  %203 = getelementptr inbounds float, ptr %192, i64 2
  %204 = load float, ptr %203, align 4, !tbaa !49
  store float %204, ptr %72, align 8, !tbaa !49
  br label %215

205:                                              ; preds = %190
  %206 = fdiv float 1.000000e+00, %195
  %207 = load float, ptr %192, align 4, !tbaa !49
  %208 = fmul float %206, %207
  store float %208, ptr %13, align 16, !tbaa !49
  %209 = getelementptr inbounds float, ptr %192, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !49
  %211 = fmul float %206, %210
  store float %211, ptr %68, align 4, !tbaa !49
  %212 = getelementptr inbounds float, ptr %192, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !49
  %214 = fmul float %206, %213
  store float %214, ptr %69, align 8, !tbaa !49
  br label %215

215:                                              ; preds = %199, %205
  %216 = phi ptr [ %73, %199 ], [ %70, %205 ]
  store float %195, ptr %216, align 4, !tbaa !49
  %217 = sitofp i32 %193 to float
  %218 = fmul float %15, %217
  %219 = call float @llvm.fmuladd.f32(float %218, float 0x4029FAC720000000, float %189)
  %220 = call float @sinf(float noundef %219) #9
  %221 = fmul float %220, 0x40E55DD180000000
  %222 = call float @llvm.floor.f32(float %221)
  %223 = fsub float %221, %222
  %224 = fmul float %223, 0x3F747AE140000000
  %225 = load float, ptr %23, align 4, !tbaa !47
  %226 = fmul float %225, %224
  %227 = load float, ptr %13, align 16, !tbaa !49
  %228 = fadd float %227, %226
  %229 = fcmp ugt float %228, 0.000000e+00
  br i1 %229, label %230, label %235

230:                                              ; preds = %215
  %231 = fcmp ogt float %228, 0x3FEFEFEFE0000000
  %232 = call float @llvm.fmuladd.f32(float %228, float 2.550000e+02, float 5.000000e-01)
  %233 = select i1 %231, float 2.550000e+02, float %232
  %234 = fptoui float %233 to i8
  br label %235

235:                                              ; preds = %230, %215
  %236 = phi i8 [ %234, %230 ], [ 0, %215 ]
  store i8 %236, ptr %191, align 1, !tbaa !53
  %237 = load float, ptr %74, align 4, !tbaa !49
  %238 = fadd float %226, %237
  %239 = fcmp ugt float %238, 0.000000e+00
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = fcmp ogt float %238, 0x3FEFEFEFE0000000
  %242 = call float @llvm.fmuladd.f32(float %238, float 2.550000e+02, float 5.000000e-01)
  %243 = select i1 %241, float 2.550000e+02, float %242
  %244 = fptoui float %243 to i8
  br label %245

245:                                              ; preds = %240, %235
  %246 = phi i8 [ %244, %240 ], [ 0, %235 ]
  %247 = getelementptr inbounds i8, ptr %191, i64 1
  store i8 %246, ptr %247, align 1, !tbaa !53
  %248 = load float, ptr %75, align 8, !tbaa !49
  %249 = fadd float %226, %248
  %250 = fcmp ugt float %249, 0.000000e+00
  br i1 %250, label %251, label %256

251:                                              ; preds = %245
  %252 = fcmp ogt float %249, 0x3FEFEFEFE0000000
  %253 = call float @llvm.fmuladd.f32(float %249, float 2.550000e+02, float 5.000000e-01)
  %254 = select i1 %252, float 2.550000e+02, float %253
  %255 = fptoui float %254 to i8
  br label %256

256:                                              ; preds = %251, %245
  %257 = phi i8 [ %255, %251 ], [ 0, %245 ]
  %258 = getelementptr inbounds i8, ptr %191, i64 2
  store i8 %257, ptr %258, align 1, !tbaa !53
  %259 = load float, ptr %76, align 4, !tbaa !49
  %260 = fcmp ugt float %259, 0.000000e+00
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = fcmp ogt float %259, 0x3FEFEFEFE0000000
  br i1 %262, label %266, label %263

263:                                              ; preds = %261
  %264 = call float @llvm.fmuladd.f32(float %259, float 2.550000e+02, float 5.000000e-01)
  %265 = fptoui float %264 to i8
  br label %266

266:                                              ; preds = %256, %261, %263
  %267 = phi i8 [ 0, %256 ], [ %265, %263 ], [ -1, %261 ]
  %268 = getelementptr inbounds i8, ptr %191, i64 3
  store i8 %267, ptr %268, align 1, !tbaa !53
  %269 = add nuw nsw i32 %193, 1
  %270 = getelementptr inbounds float, ptr %192, i64 4
  %271 = getelementptr inbounds i8, ptr %191, i64 4
  %272 = icmp eq i32 %269, %7
  br i1 %272, label %382, label %190, !llvm.loop !57

273:                                              ; preds = %186
  br i1 %18, label %274, label %340

274:                                              ; preds = %273
  br i1 %66, label %275, label %382

275:                                              ; preds = %274
  %276 = fmul float %95, 0x40538EE980000000
  br label %277

277:                                              ; preds = %275, %333
  %278 = phi ptr [ %338, %333 ], [ %185, %275 ]
  %279 = phi ptr [ %337, %333 ], [ %181, %275 ]
  %280 = phi i32 [ %336, %333 ], [ 0, %275 ]
  %281 = sitofp i32 %280 to float
  %282 = fmul float %15, %281
  %283 = call float @llvm.fmuladd.f32(float %282, float 0x4029FAC720000000, float %276)
  %284 = call float @sinf(float noundef %283) #9
  %285 = fmul float %284, 0x40E55DD180000000
  %286 = call float @llvm.floor.f32(float %285)
  %287 = fsub float %285, %286
  %288 = fmul float %287, 0x3F747AE140000000
  %289 = load float, ptr %23, align 4, !tbaa !47
  %290 = fmul float %289, %288
  %291 = load float, ptr %279, align 4, !tbaa !49
  %292 = fadd float %291, %290
  %293 = fcmp ugt float %292, 0.000000e+00
  br i1 %293, label %294, label %299

294:                                              ; preds = %277
  %295 = fcmp ogt float %292, 0x3FEFEFEFE0000000
  %296 = call float @llvm.fmuladd.f32(float %292, float 2.550000e+02, float 5.000000e-01)
  %297 = select i1 %295, float 2.550000e+02, float %296
  %298 = fptoui float %297 to i8
  br label %299

299:                                              ; preds = %294, %277
  %300 = phi i8 [ %298, %294 ], [ 0, %277 ]
  store i8 %300, ptr %278, align 1, !tbaa !53
  %301 = getelementptr inbounds float, ptr %279, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !49
  %303 = fadd float %290, %302
  %304 = fcmp ugt float %303, 0.000000e+00
  br i1 %304, label %305, label %310

305:                                              ; preds = %299
  %306 = fcmp ogt float %303, 0x3FEFEFEFE0000000
  %307 = call float @llvm.fmuladd.f32(float %303, float 2.550000e+02, float 5.000000e-01)
  %308 = select i1 %306, float 2.550000e+02, float %307
  %309 = fptoui float %308 to i8
  br label %310

310:                                              ; preds = %305, %299
  %311 = phi i8 [ %309, %305 ], [ 0, %299 ]
  %312 = getelementptr inbounds i8, ptr %278, i64 1
  store i8 %311, ptr %312, align 1, !tbaa !53
  %313 = getelementptr inbounds float, ptr %279, i64 2
  %314 = load float, ptr %313, align 4, !tbaa !49
  %315 = fadd float %290, %314
  %316 = fcmp ugt float %315, 0.000000e+00
  br i1 %316, label %317, label %322

317:                                              ; preds = %310
  %318 = fcmp ogt float %315, 0x3FEFEFEFE0000000
  %319 = call float @llvm.fmuladd.f32(float %315, float 2.550000e+02, float 5.000000e-01)
  %320 = select i1 %318, float 2.550000e+02, float %319
  %321 = fptoui float %320 to i8
  br label %322

322:                                              ; preds = %317, %310
  %323 = phi i8 [ %321, %317 ], [ 0, %310 ]
  %324 = getelementptr inbounds i8, ptr %278, i64 2
  store i8 %323, ptr %324, align 1, !tbaa !53
  %325 = getelementptr inbounds float, ptr %279, i64 3
  %326 = load float, ptr %325, align 4, !tbaa !49
  %327 = fcmp ugt float %326, 0.000000e+00
  br i1 %327, label %328, label %333

328:                                              ; preds = %322
  %329 = fcmp ogt float %326, 0x3FEFEFEFE0000000
  br i1 %329, label %333, label %330

330:                                              ; preds = %328
  %331 = call float @llvm.fmuladd.f32(float %326, float 2.550000e+02, float 5.000000e-01)
  %332 = fptoui float %331 to i8
  br label %333

333:                                              ; preds = %322, %328, %330
  %334 = phi i8 [ 0, %322 ], [ %332, %330 ], [ -1, %328 ]
  %335 = getelementptr inbounds i8, ptr %278, i64 3
  store i8 %334, ptr %335, align 1, !tbaa !53
  %336 = add nuw nsw i32 %280, 1
  %337 = getelementptr inbounds float, ptr %279, i64 4
  %338 = getelementptr inbounds i8, ptr %278, i64 4
  %339 = icmp eq i32 %336, %7
  br i1 %339, label %382, label %277, !llvm.loop !58

340:                                              ; preds = %273
  br i1 %57, label %342, label %341

341:                                              ; preds = %340
  br i1 %58, label %343, label %382

342:                                              ; preds = %340
  br i1 %65, label %374, label %382

343:                                              ; preds = %341, %368
  %344 = phi ptr [ %372, %368 ], [ %185, %341 ]
  %345 = phi ptr [ %371, %368 ], [ %181, %341 ]
  %346 = phi i32 [ %370, %368 ], [ 0, %341 ]
  %347 = getelementptr inbounds float, ptr %345, i64 3
  %348 = load float, ptr %347, align 4, !tbaa !49
  %349 = fcmp oeq float %348, 0.000000e+00
  %350 = fcmp oeq float %348, 1.000000e+00
  %351 = or i1 %349, %350
  br i1 %351, label %352, label %358

352:                                              ; preds = %343
  %353 = load float, ptr %345, align 4, !tbaa !49
  store float %353, ptr %13, align 16, !tbaa !49
  %354 = getelementptr inbounds float, ptr %345, i64 1
  %355 = load float, ptr %354, align 4, !tbaa !49
  store float %355, ptr %62, align 4, !tbaa !49
  %356 = getelementptr inbounds float, ptr %345, i64 2
  %357 = load float, ptr %356, align 4, !tbaa !49
  store float %357, ptr %63, align 8, !tbaa !49
  br label %368

358:                                              ; preds = %343
  %359 = fdiv float 1.000000e+00, %348
  %360 = load float, ptr %345, align 4, !tbaa !49
  %361 = fmul float %359, %360
  store float %361, ptr %13, align 16, !tbaa !49
  %362 = getelementptr inbounds float, ptr %345, i64 1
  %363 = load float, ptr %362, align 4, !tbaa !49
  %364 = fmul float %359, %363
  store float %364, ptr %59, align 4, !tbaa !49
  %365 = getelementptr inbounds float, ptr %345, i64 2
  %366 = load float, ptr %365, align 4, !tbaa !49
  %367 = fmul float %359, %366
  store float %367, ptr %60, align 8, !tbaa !49
  br label %368

368:                                              ; preds = %352, %358
  %369 = phi ptr [ %64, %352 ], [ %61, %358 ]
  store float %348, ptr %369, align 4, !tbaa !49
  call void @rgba_float_to_uchar(ptr noundef %344, ptr noundef nonnull %13) #9
  %370 = add nuw nsw i32 %346, 1
  %371 = getelementptr inbounds float, ptr %345, i64 4
  %372 = getelementptr inbounds i8, ptr %344, i64 4
  %373 = icmp eq i32 %370, %7
  br i1 %373, label %382, label %343, !llvm.loop !59

374:                                              ; preds = %342, %374
  %375 = phi ptr [ %380, %374 ], [ %185, %342 ]
  %376 = phi ptr [ %379, %374 ], [ %181, %342 ]
  %377 = phi i32 [ %378, %374 ], [ 0, %342 ]
  call void @rgba_float_to_uchar(ptr noundef %375, ptr noundef %376) #9
  %378 = add nuw nsw i32 %377, 1
  %379 = getelementptr inbounds float, ptr %376, i64 4
  %380 = getelementptr inbounds i8, ptr %375, i64 4
  %381 = icmp eq i32 %378, %7
  br i1 %381, label %382, label %374, !llvm.loop !60

382:                                              ; preds = %368, %374, %333, %266, %341, %342, %274, %187
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  br label %906

383:                                              ; preds = %177
  switch i32 %4, label %906 [
    i32 2, label %384
    i32 1, label %693
  ]

384:                                              ; preds = %383
  br i1 %49, label %385, label %475

385:                                              ; preds = %384
  br i1 %54, label %386, label %906

386:                                              ; preds = %385
  %387 = fmul float %95, 0x40538EE980000000
  br label %388

388:                                              ; preds = %386, %461
  %389 = phi ptr [ %473, %461 ], [ %185, %386 ]
  %390 = phi ptr [ %472, %461 ], [ %181, %386 ]
  %391 = phi i32 [ %471, %461 ], [ 0, %386 ]
  %392 = getelementptr inbounds float, ptr %390, i64 3
  %393 = load float, ptr %392, align 4, !tbaa !49
  %394 = load i32, ptr %390, align 4, !tbaa !49
  %395 = lshr i32 %394, 16
  %396 = zext nneg i32 %395 to i64
  %397 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %396
  %398 = load i16, ptr %397, align 2, !tbaa !61
  %399 = getelementptr inbounds float, ptr %390, i64 1
  %400 = load i32, ptr %399, align 4, !tbaa !49
  %401 = lshr i32 %400, 16
  %402 = zext nneg i32 %401 to i64
  %403 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %402
  %404 = load i16, ptr %403, align 2, !tbaa !61
  %405 = getelementptr inbounds float, ptr %390, i64 2
  %406 = load i32, ptr %405, align 4, !tbaa !49
  %407 = lshr i32 %406, 16
  %408 = zext nneg i32 %407 to i64
  %409 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %408
  %410 = load i16, ptr %409, align 2, !tbaa !61
  %411 = fcmp ult float %393, 0x3FEFFFF000000000
  br i1 %411, label %412, label %417

412:                                              ; preds = %388
  %413 = fcmp ugt float %393, 0.000000e+00
  br i1 %413, label %414, label %417

414:                                              ; preds = %412
  %415 = call float @llvm.fmuladd.f32(float %393, float 6.553500e+04, float 5.000000e-01)
  %416 = fptoui float %415 to i16
  br label %417

417:                                              ; preds = %388, %412, %414
  %418 = phi i16 [ -1, %388 ], [ %416, %414 ], [ 0, %412 ]
  %419 = sitofp i32 %391 to float
  %420 = fmul float %15, %419
  %421 = call float @llvm.fmuladd.f32(float %420, float 0x4029FAC720000000, float %387)
  %422 = call float @sinf(float noundef %421) #9
  %423 = fmul float %422, 0x40E55DD180000000
  %424 = call float @llvm.floor.f32(float %423)
  %425 = fsub float %423, %424
  %426 = fmul float %425, 0x3F747AE140000000
  %427 = load float, ptr %23, align 4, !tbaa !47
  %428 = fmul float %427, %426
  %429 = uitofp i16 %398 to float
  %430 = fdiv float %429, 6.553500e+04
  %431 = fadd float %430, %428
  %432 = fcmp ugt float %431, 0.000000e+00
  br i1 %432, label %433, label %438

433:                                              ; preds = %417
  %434 = fcmp ogt float %431, 0x3FEFEFEFE0000000
  %435 = call float @llvm.fmuladd.f32(float %431, float 2.550000e+02, float 5.000000e-01)
  %436 = select i1 %434, float 2.550000e+02, float %435
  %437 = fptoui float %436 to i8
  br label %438

438:                                              ; preds = %433, %417
  %439 = phi i8 [ %437, %433 ], [ 0, %417 ]
  store i8 %439, ptr %389, align 1, !tbaa !53
  %440 = uitofp i16 %404 to float
  %441 = fdiv float %440, 6.553500e+04
  %442 = fadd float %441, %428
  %443 = fcmp ugt float %442, 0.000000e+00
  br i1 %443, label %444, label %449

444:                                              ; preds = %438
  %445 = fcmp ogt float %442, 0x3FEFEFEFE0000000
  %446 = call float @llvm.fmuladd.f32(float %442, float 2.550000e+02, float 5.000000e-01)
  %447 = select i1 %445, float 2.550000e+02, float %446
  %448 = fptoui float %447 to i8
  br label %449

449:                                              ; preds = %444, %438
  %450 = phi i8 [ %448, %444 ], [ 0, %438 ]
  %451 = getelementptr inbounds i8, ptr %389, i64 1
  store i8 %450, ptr %451, align 1, !tbaa !53
  %452 = uitofp i16 %410 to float
  %453 = fdiv float %452, 6.553500e+04
  %454 = fadd float %453, %428
  %455 = fcmp ugt float %454, 0.000000e+00
  br i1 %455, label %456, label %461

456:                                              ; preds = %449
  %457 = fcmp ogt float %454, 0x3FEFEFEFE0000000
  %458 = call float @llvm.fmuladd.f32(float %454, float 2.550000e+02, float 5.000000e-01)
  %459 = select i1 %457, float 2.550000e+02, float %458
  %460 = fptoui float %459 to i8
  br label %461

461:                                              ; preds = %449, %456
  %462 = phi i8 [ %460, %456 ], [ 0, %449 ]
  %463 = getelementptr inbounds i8, ptr %389, i64 2
  store i8 %462, ptr %463, align 1, !tbaa !53
  %464 = icmp ugt i16 %418, -130
  %465 = zext i16 %418 to i32
  %466 = add nuw nsw i32 %465, 128
  %467 = lshr i32 %466, 8
  %468 = trunc i32 %467 to i8
  %469 = select i1 %464, i8 -1, i8 %468
  %470 = getelementptr inbounds i8, ptr %389, i64 3
  store i8 %469, ptr %470, align 1, !tbaa !53
  %471 = add nuw nsw i32 %391, 1
  %472 = getelementptr inbounds float, ptr %390, i64 4
  %473 = getelementptr inbounds i8, ptr %389, i64 4
  %474 = icmp eq i32 %471, %7
  br i1 %474, label %906, label %388, !llvm.loop !63

475:                                              ; preds = %384
  br i1 %18, label %476, label %566

476:                                              ; preds = %475
  br i1 %53, label %477, label %906

477:                                              ; preds = %476
  %478 = fmul float %95, 0x40538EE980000000
  br label %479

479:                                              ; preds = %477, %552
  %480 = phi ptr [ %564, %552 ], [ %185, %477 ]
  %481 = phi ptr [ %563, %552 ], [ %181, %477 ]
  %482 = phi i32 [ %562, %552 ], [ 0, %477 ]
  %483 = load i32, ptr %481, align 4, !tbaa !49
  %484 = lshr i32 %483, 16
  %485 = zext nneg i32 %484 to i64
  %486 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %485
  %487 = load i16, ptr %486, align 2, !tbaa !61
  %488 = getelementptr inbounds float, ptr %481, i64 1
  %489 = load i32, ptr %488, align 4, !tbaa !49
  %490 = lshr i32 %489, 16
  %491 = zext nneg i32 %490 to i64
  %492 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %491
  %493 = load i16, ptr %492, align 2, !tbaa !61
  %494 = getelementptr inbounds float, ptr %481, i64 2
  %495 = load i32, ptr %494, align 4, !tbaa !49
  %496 = lshr i32 %495, 16
  %497 = zext nneg i32 %496 to i64
  %498 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %497
  %499 = load i16, ptr %498, align 2, !tbaa !61
  %500 = getelementptr inbounds float, ptr %481, i64 3
  %501 = load float, ptr %500, align 4, !tbaa !49
  %502 = fcmp ult float %501, 0x3FEFFFF000000000
  br i1 %502, label %503, label %508

503:                                              ; preds = %479
  %504 = fcmp ugt float %501, 0.000000e+00
  br i1 %504, label %505, label %508

505:                                              ; preds = %503
  %506 = call float @llvm.fmuladd.f32(float %501, float 6.553500e+04, float 5.000000e-01)
  %507 = fptoui float %506 to i16
  br label %508

508:                                              ; preds = %479, %503, %505
  %509 = phi i16 [ -1, %479 ], [ %507, %505 ], [ 0, %503 ]
  %510 = sitofp i32 %482 to float
  %511 = fmul float %15, %510
  %512 = call float @llvm.fmuladd.f32(float %511, float 0x4029FAC720000000, float %478)
  %513 = call float @sinf(float noundef %512) #9
  %514 = fmul float %513, 0x40E55DD180000000
  %515 = call float @llvm.floor.f32(float %514)
  %516 = fsub float %514, %515
  %517 = fmul float %516, 0x3F747AE140000000
  %518 = load float, ptr %23, align 4, !tbaa !47
  %519 = fmul float %518, %517
  %520 = uitofp i16 %487 to float
  %521 = fdiv float %520, 6.553500e+04
  %522 = fadd float %521, %519
  %523 = fcmp ugt float %522, 0.000000e+00
  br i1 %523, label %524, label %529

524:                                              ; preds = %508
  %525 = fcmp ogt float %522, 0x3FEFEFEFE0000000
  %526 = call float @llvm.fmuladd.f32(float %522, float 2.550000e+02, float 5.000000e-01)
  %527 = select i1 %525, float 2.550000e+02, float %526
  %528 = fptoui float %527 to i8
  br label %529

529:                                              ; preds = %524, %508
  %530 = phi i8 [ %528, %524 ], [ 0, %508 ]
  store i8 %530, ptr %480, align 1, !tbaa !53
  %531 = uitofp i16 %493 to float
  %532 = fdiv float %531, 6.553500e+04
  %533 = fadd float %532, %519
  %534 = fcmp ugt float %533, 0.000000e+00
  br i1 %534, label %535, label %540

535:                                              ; preds = %529
  %536 = fcmp ogt float %533, 0x3FEFEFEFE0000000
  %537 = call float @llvm.fmuladd.f32(float %533, float 2.550000e+02, float 5.000000e-01)
  %538 = select i1 %536, float 2.550000e+02, float %537
  %539 = fptoui float %538 to i8
  br label %540

540:                                              ; preds = %535, %529
  %541 = phi i8 [ %539, %535 ], [ 0, %529 ]
  %542 = getelementptr inbounds i8, ptr %480, i64 1
  store i8 %541, ptr %542, align 1, !tbaa !53
  %543 = uitofp i16 %499 to float
  %544 = fdiv float %543, 6.553500e+04
  %545 = fadd float %544, %519
  %546 = fcmp ugt float %545, 0.000000e+00
  br i1 %546, label %547, label %552

547:                                              ; preds = %540
  %548 = fcmp ogt float %545, 0x3FEFEFEFE0000000
  %549 = call float @llvm.fmuladd.f32(float %545, float 2.550000e+02, float 5.000000e-01)
  %550 = select i1 %548, float 2.550000e+02, float %549
  %551 = fptoui float %550 to i8
  br label %552

552:                                              ; preds = %540, %547
  %553 = phi i8 [ %551, %547 ], [ 0, %540 ]
  %554 = getelementptr inbounds i8, ptr %480, i64 2
  store i8 %553, ptr %554, align 1, !tbaa !53
  %555 = icmp ugt i16 %509, -130
  %556 = zext i16 %509 to i32
  %557 = add nuw nsw i32 %556, 128
  %558 = lshr i32 %557, 8
  %559 = trunc i32 %558 to i8
  %560 = select i1 %555, i8 -1, i8 %559
  %561 = getelementptr inbounds i8, ptr %480, i64 3
  store i8 %560, ptr %561, align 1, !tbaa !53
  %562 = add nuw nsw i32 %482, 1
  %563 = getelementptr inbounds float, ptr %481, i64 4
  %564 = getelementptr inbounds i8, ptr %480, i64 4
  %565 = icmp eq i32 %562, %7
  br i1 %565, label %906, label %479, !llvm.loop !64

566:                                              ; preds = %475
  br i1 %50, label %568, label %567

567:                                              ; preds = %566
  br i1 %51, label %569, label %906

568:                                              ; preds = %566
  br i1 %52, label %631, label %906

569:                                              ; preds = %567, %598
  %570 = phi ptr [ %629, %598 ], [ %185, %567 ]
  %571 = phi ptr [ %628, %598 ], [ %181, %567 ]
  %572 = phi i32 [ %627, %598 ], [ 0, %567 ]
  %573 = getelementptr inbounds float, ptr %571, i64 3
  %574 = load float, ptr %573, align 4, !tbaa !49
  %575 = load i32, ptr %571, align 4, !tbaa !49
  %576 = lshr i32 %575, 16
  %577 = zext nneg i32 %576 to i64
  %578 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %577
  %579 = load i16, ptr %578, align 2, !tbaa !61
  %580 = getelementptr inbounds float, ptr %571, i64 1
  %581 = load i32, ptr %580, align 4, !tbaa !49
  %582 = lshr i32 %581, 16
  %583 = zext nneg i32 %582 to i64
  %584 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %583
  %585 = load i16, ptr %584, align 2, !tbaa !61
  %586 = getelementptr inbounds float, ptr %571, i64 2
  %587 = load i32, ptr %586, align 4, !tbaa !49
  %588 = lshr i32 %587, 16
  %589 = zext nneg i32 %588 to i64
  %590 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %589
  %591 = load i16, ptr %590, align 2, !tbaa !61
  %592 = fcmp ult float %574, 0x3FEFFFF000000000
  br i1 %592, label %593, label %598

593:                                              ; preds = %569
  %594 = fcmp ugt float %574, 0.000000e+00
  br i1 %594, label %595, label %598

595:                                              ; preds = %593
  %596 = call float @llvm.fmuladd.f32(float %574, float 6.553500e+04, float 5.000000e-01)
  %597 = fptoui float %596 to i16
  br label %598

598:                                              ; preds = %569, %593, %595
  %599 = phi i16 [ -1, %569 ], [ %597, %595 ], [ 0, %593 ]
  %600 = icmp ugt i16 %579, -130
  %601 = zext i16 %579 to i32
  %602 = add nuw nsw i32 %601, 128
  %603 = lshr i32 %602, 8
  %604 = trunc i32 %603 to i8
  %605 = select i1 %600, i8 -1, i8 %604
  store i8 %605, ptr %570, align 1, !tbaa !53
  %606 = icmp ugt i16 %585, -130
  %607 = zext i16 %585 to i32
  %608 = add nuw nsw i32 %607, 128
  %609 = lshr i32 %608, 8
  %610 = trunc i32 %609 to i8
  %611 = select i1 %606, i8 -1, i8 %610
  %612 = getelementptr inbounds i8, ptr %570, i64 1
  store i8 %611, ptr %612, align 1, !tbaa !53
  %613 = icmp ugt i16 %591, -130
  %614 = zext i16 %591 to i32
  %615 = add nuw nsw i32 %614, 128
  %616 = lshr i32 %615, 8
  %617 = trunc i32 %616 to i8
  %618 = select i1 %613, i8 -1, i8 %617
  %619 = getelementptr inbounds i8, ptr %570, i64 2
  store i8 %618, ptr %619, align 1, !tbaa !53
  %620 = icmp ugt i16 %599, -130
  %621 = zext i16 %599 to i32
  %622 = add nuw nsw i32 %621, 128
  %623 = lshr i32 %622, 8
  %624 = trunc i32 %623 to i8
  %625 = select i1 %620, i8 -1, i8 %624
  %626 = getelementptr inbounds i8, ptr %570, i64 3
  store i8 %625, ptr %626, align 1, !tbaa !53
  %627 = add nuw nsw i32 %572, 1
  %628 = getelementptr inbounds float, ptr %571, i64 4
  %629 = getelementptr inbounds i8, ptr %570, i64 4
  %630 = icmp eq i32 %627, %7
  br i1 %630, label %906, label %569, !llvm.loop !65

631:                                              ; preds = %568, %660
  %632 = phi ptr [ %691, %660 ], [ %185, %568 ]
  %633 = phi ptr [ %690, %660 ], [ %181, %568 ]
  %634 = phi i32 [ %689, %660 ], [ 0, %568 ]
  %635 = load i32, ptr %633, align 4, !tbaa !49
  %636 = lshr i32 %635, 16
  %637 = zext nneg i32 %636 to i64
  %638 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %637
  %639 = load i16, ptr %638, align 2, !tbaa !61
  %640 = getelementptr inbounds float, ptr %633, i64 1
  %641 = load i32, ptr %640, align 4, !tbaa !49
  %642 = lshr i32 %641, 16
  %643 = zext nneg i32 %642 to i64
  %644 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %643
  %645 = load i16, ptr %644, align 2, !tbaa !61
  %646 = getelementptr inbounds float, ptr %633, i64 2
  %647 = load i32, ptr %646, align 4, !tbaa !49
  %648 = lshr i32 %647, 16
  %649 = zext nneg i32 %648 to i64
  %650 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %649
  %651 = load i16, ptr %650, align 2, !tbaa !61
  %652 = getelementptr inbounds float, ptr %633, i64 3
  %653 = load float, ptr %652, align 4, !tbaa !49
  %654 = fcmp ult float %653, 0x3FEFFFF000000000
  br i1 %654, label %655, label %660

655:                                              ; preds = %631
  %656 = fcmp ugt float %653, 0.000000e+00
  br i1 %656, label %657, label %660

657:                                              ; preds = %655
  %658 = call float @llvm.fmuladd.f32(float %653, float 6.553500e+04, float 5.000000e-01)
  %659 = fptoui float %658 to i16
  br label %660

660:                                              ; preds = %631, %655, %657
  %661 = phi i16 [ -1, %631 ], [ %659, %657 ], [ 0, %655 ]
  %662 = icmp ugt i16 %639, -130
  %663 = zext i16 %639 to i32
  %664 = add nuw nsw i32 %663, 128
  %665 = lshr i32 %664, 8
  %666 = trunc i32 %665 to i8
  %667 = select i1 %662, i8 -1, i8 %666
  store i8 %667, ptr %632, align 1, !tbaa !53
  %668 = icmp ugt i16 %645, -130
  %669 = zext i16 %645 to i32
  %670 = add nuw nsw i32 %669, 128
  %671 = lshr i32 %670, 8
  %672 = trunc i32 %671 to i8
  %673 = select i1 %668, i8 -1, i8 %672
  %674 = getelementptr inbounds i8, ptr %632, i64 1
  store i8 %673, ptr %674, align 1, !tbaa !53
  %675 = icmp ugt i16 %651, -130
  %676 = zext i16 %651 to i32
  %677 = add nuw nsw i32 %676, 128
  %678 = lshr i32 %677, 8
  %679 = trunc i32 %678 to i8
  %680 = select i1 %675, i8 -1, i8 %679
  %681 = getelementptr inbounds i8, ptr %632, i64 2
  store i8 %680, ptr %681, align 1, !tbaa !53
  %682 = icmp ugt i16 %661, -130
  %683 = zext i16 %661 to i32
  %684 = add nuw nsw i32 %683, 128
  %685 = lshr i32 %684, 8
  %686 = trunc i32 %685 to i8
  %687 = select i1 %682, i8 -1, i8 %686
  %688 = getelementptr inbounds i8, ptr %632, i64 3
  store i8 %687, ptr %688, align 1, !tbaa !53
  %689 = add nuw nsw i32 %634, 1
  %690 = getelementptr inbounds float, ptr %633, i64 4
  %691 = getelementptr inbounds i8, ptr %632, i64 4
  %692 = icmp eq i32 %689, %7
  br i1 %692, label %906, label %631, !llvm.loop !66

693:                                              ; preds = %383
  br i1 %30, label %694, label %780

694:                                              ; preds = %693
  br i1 %44, label %695, label %906

695:                                              ; preds = %694
  %696 = fmul float %95, 0x40538EE980000000
  br label %697

697:                                              ; preds = %695, %773
  %698 = phi ptr [ %778, %773 ], [ %185, %695 ]
  %699 = phi ptr [ %777, %773 ], [ %181, %695 ]
  %700 = phi i32 [ %776, %773 ], [ 0, %695 ]
  %701 = getelementptr inbounds float, ptr %699, i64 3
  %702 = load float, ptr %701, align 4, !tbaa !49
  %703 = fcmp oeq float %702, 1.000000e+00
  %704 = fcmp oeq float %702, 0.000000e+00
  %705 = or i1 %703, %704
  %706 = fdiv float 1.000000e+00, %702
  %707 = select i1 %704, float 1.000000e+00, float %702
  %708 = select i1 %705, float 1.000000e+00, float %706
  %709 = load float, ptr %699, align 4, !tbaa !49
  %710 = fmul float %709, %708
  %711 = call float @srgb_to_linearrgb(float noundef %710) #9
  %712 = fmul float %711, %707
  store float %712, ptr %12, align 16, !tbaa !49
  %713 = getelementptr inbounds float, ptr %699, i64 1
  %714 = load float, ptr %713, align 4, !tbaa !49
  %715 = fmul float %708, %714
  %716 = call float @srgb_to_linearrgb(float noundef %715) #9
  %717 = fmul float %707, %716
  store float %717, ptr %45, align 4, !tbaa !49
  %718 = getelementptr inbounds float, ptr %699, i64 2
  %719 = load float, ptr %718, align 4, !tbaa !49
  %720 = fmul float %708, %719
  %721 = call float @srgb_to_linearrgb(float noundef %720) #9
  %722 = fmul float %707, %721
  store float %722, ptr %46, align 8, !tbaa !49
  %723 = load float, ptr %701, align 4, !tbaa !49
  store float %723, ptr %47, align 4, !tbaa !49
  %724 = sitofp i32 %700 to float
  %725 = fmul float %15, %724
  %726 = call float @llvm.fmuladd.f32(float %725, float 0x4029FAC720000000, float %696)
  %727 = call float @sinf(float noundef %726) #9
  %728 = fmul float %727, 0x40E55DD180000000
  %729 = call float @llvm.floor.f32(float %728)
  %730 = fsub float %728, %729
  %731 = fmul float %730, 0x3F747AE140000000
  %732 = load float, ptr %23, align 4, !tbaa !47
  %733 = fmul float %732, %731
  %734 = load float, ptr %12, align 16, !tbaa !49
  %735 = fadd float %734, %733
  %736 = fcmp ugt float %735, 0.000000e+00
  br i1 %736, label %737, label %742

737:                                              ; preds = %697
  %738 = fcmp ogt float %735, 0x3FEFEFEFE0000000
  %739 = call float @llvm.fmuladd.f32(float %735, float 2.550000e+02, float 5.000000e-01)
  %740 = select i1 %738, float 2.550000e+02, float %739
  %741 = fptoui float %740 to i8
  br label %742

742:                                              ; preds = %737, %697
  %743 = phi i8 [ %741, %737 ], [ 0, %697 ]
  store i8 %743, ptr %698, align 1, !tbaa !53
  %744 = load float, ptr %45, align 4, !tbaa !49
  %745 = fadd float %733, %744
  %746 = fcmp ugt float %745, 0.000000e+00
  br i1 %746, label %747, label %752

747:                                              ; preds = %742
  %748 = fcmp ogt float %745, 0x3FEFEFEFE0000000
  %749 = call float @llvm.fmuladd.f32(float %745, float 2.550000e+02, float 5.000000e-01)
  %750 = select i1 %748, float 2.550000e+02, float %749
  %751 = fptoui float %750 to i8
  br label %752

752:                                              ; preds = %747, %742
  %753 = phi i8 [ %751, %747 ], [ 0, %742 ]
  %754 = getelementptr inbounds i8, ptr %698, i64 1
  store i8 %753, ptr %754, align 1, !tbaa !53
  %755 = load float, ptr %46, align 8, !tbaa !49
  %756 = fadd float %733, %755
  %757 = fcmp ugt float %756, 0.000000e+00
  br i1 %757, label %758, label %763

758:                                              ; preds = %752
  %759 = fcmp ogt float %756, 0x3FEFEFEFE0000000
  %760 = call float @llvm.fmuladd.f32(float %756, float 2.550000e+02, float 5.000000e-01)
  %761 = select i1 %759, float 2.550000e+02, float %760
  %762 = fptoui float %761 to i8
  br label %763

763:                                              ; preds = %758, %752
  %764 = phi i8 [ %762, %758 ], [ 0, %752 ]
  %765 = getelementptr inbounds i8, ptr %698, i64 2
  store i8 %764, ptr %765, align 1, !tbaa !53
  %766 = load float, ptr %47, align 4, !tbaa !49
  %767 = fcmp ugt float %766, 0.000000e+00
  br i1 %767, label %768, label %773

768:                                              ; preds = %763
  %769 = fcmp ogt float %766, 0x3FEFEFEFE0000000
  br i1 %769, label %773, label %770

770:                                              ; preds = %768
  %771 = call float @llvm.fmuladd.f32(float %766, float 2.550000e+02, float 5.000000e-01)
  %772 = fptoui float %771 to i8
  br label %773

773:                                              ; preds = %763, %768, %770
  %774 = phi i8 [ 0, %763 ], [ %772, %770 ], [ -1, %768 ]
  %775 = getelementptr inbounds i8, ptr %698, i64 3
  store i8 %774, ptr %775, align 1, !tbaa !53
  %776 = add nuw nsw i32 %700, 1
  %777 = getelementptr inbounds float, ptr %699, i64 4
  %778 = getelementptr inbounds i8, ptr %698, i64 4
  %779 = icmp eq i32 %776, %7
  br i1 %779, label %906, label %697, !llvm.loop !67

780:                                              ; preds = %693
  br i1 %18, label %781, label %854

781:                                              ; preds = %780
  br i1 %40, label %782, label %906

782:                                              ; preds = %781
  %783 = fmul float %95, 0x40538EE980000000
  br label %784

784:                                              ; preds = %782, %847
  %785 = phi ptr [ %852, %847 ], [ %185, %782 ]
  %786 = phi ptr [ %851, %847 ], [ %181, %782 ]
  %787 = phi i32 [ %850, %847 ], [ 0, %782 ]
  %788 = load float, ptr %786, align 4, !tbaa !49
  %789 = call float @srgb_to_linearrgb(float noundef %788) #9
  store float %789, ptr %12, align 16, !tbaa !49
  %790 = getelementptr inbounds float, ptr %786, i64 1
  %791 = load float, ptr %790, align 4, !tbaa !49
  %792 = call float @srgb_to_linearrgb(float noundef %791) #9
  store float %792, ptr %41, align 4, !tbaa !49
  %793 = getelementptr inbounds float, ptr %786, i64 2
  %794 = load float, ptr %793, align 4, !tbaa !49
  %795 = call float @srgb_to_linearrgb(float noundef %794) #9
  store float %795, ptr %42, align 8, !tbaa !49
  %796 = getelementptr inbounds float, ptr %786, i64 3
  %797 = load float, ptr %796, align 4, !tbaa !49
  store float %797, ptr %43, align 4, !tbaa !49
  %798 = sitofp i32 %787 to float
  %799 = fmul float %15, %798
  %800 = call float @llvm.fmuladd.f32(float %799, float 0x4029FAC720000000, float %783)
  %801 = call float @sinf(float noundef %800) #9
  %802 = fmul float %801, 0x40E55DD180000000
  %803 = call float @llvm.floor.f32(float %802)
  %804 = fsub float %802, %803
  %805 = fmul float %804, 0x3F747AE140000000
  %806 = load float, ptr %23, align 4, !tbaa !47
  %807 = fmul float %806, %805
  %808 = load float, ptr %12, align 16, !tbaa !49
  %809 = fadd float %808, %807
  %810 = fcmp ugt float %809, 0.000000e+00
  br i1 %810, label %811, label %816

811:                                              ; preds = %784
  %812 = fcmp ogt float %809, 0x3FEFEFEFE0000000
  %813 = call float @llvm.fmuladd.f32(float %809, float 2.550000e+02, float 5.000000e-01)
  %814 = select i1 %812, float 2.550000e+02, float %813
  %815 = fptoui float %814 to i8
  br label %816

816:                                              ; preds = %811, %784
  %817 = phi i8 [ %815, %811 ], [ 0, %784 ]
  store i8 %817, ptr %785, align 1, !tbaa !53
  %818 = load float, ptr %41, align 4, !tbaa !49
  %819 = fadd float %807, %818
  %820 = fcmp ugt float %819, 0.000000e+00
  br i1 %820, label %821, label %826

821:                                              ; preds = %816
  %822 = fcmp ogt float %819, 0x3FEFEFEFE0000000
  %823 = call float @llvm.fmuladd.f32(float %819, float 2.550000e+02, float 5.000000e-01)
  %824 = select i1 %822, float 2.550000e+02, float %823
  %825 = fptoui float %824 to i8
  br label %826

826:                                              ; preds = %821, %816
  %827 = phi i8 [ %825, %821 ], [ 0, %816 ]
  %828 = getelementptr inbounds i8, ptr %785, i64 1
  store i8 %827, ptr %828, align 1, !tbaa !53
  %829 = load float, ptr %42, align 8, !tbaa !49
  %830 = fadd float %807, %829
  %831 = fcmp ugt float %830, 0.000000e+00
  br i1 %831, label %832, label %837

832:                                              ; preds = %826
  %833 = fcmp ogt float %830, 0x3FEFEFEFE0000000
  %834 = call float @llvm.fmuladd.f32(float %830, float 2.550000e+02, float 5.000000e-01)
  %835 = select i1 %833, float 2.550000e+02, float %834
  %836 = fptoui float %835 to i8
  br label %837

837:                                              ; preds = %832, %826
  %838 = phi i8 [ %836, %832 ], [ 0, %826 ]
  %839 = getelementptr inbounds i8, ptr %785, i64 2
  store i8 %838, ptr %839, align 1, !tbaa !53
  %840 = load float, ptr %43, align 4, !tbaa !49
  %841 = fcmp ugt float %840, 0.000000e+00
  br i1 %841, label %842, label %847

842:                                              ; preds = %837
  %843 = fcmp ogt float %840, 0x3FEFEFEFE0000000
  br i1 %843, label %847, label %844

844:                                              ; preds = %842
  %845 = call float @llvm.fmuladd.f32(float %840, float 2.550000e+02, float 5.000000e-01)
  %846 = fptoui float %845 to i8
  br label %847

847:                                              ; preds = %837, %842, %844
  %848 = phi i8 [ 0, %837 ], [ %846, %844 ], [ -1, %842 ]
  %849 = getelementptr inbounds i8, ptr %785, i64 3
  store i8 %848, ptr %849, align 1, !tbaa !53
  %850 = add nuw nsw i32 %787, 1
  %851 = getelementptr inbounds float, ptr %786, i64 4
  %852 = getelementptr inbounds i8, ptr %785, i64 4
  %853 = icmp eq i32 %850, %7
  br i1 %853, label %906, label %784, !llvm.loop !68

854:                                              ; preds = %780
  br i1 %31, label %856, label %855

855:                                              ; preds = %854
  br i1 %32, label %857, label %906

856:                                              ; preds = %854
  br i1 %36, label %888, label %906

857:                                              ; preds = %855, %857
  %858 = phi ptr [ %886, %857 ], [ %185, %855 ]
  %859 = phi ptr [ %885, %857 ], [ %181, %855 ]
  %860 = phi i32 [ %884, %857 ], [ 0, %855 ]
  %861 = getelementptr inbounds float, ptr %859, i64 3
  %862 = load float, ptr %861, align 4, !tbaa !49
  %863 = fcmp oeq float %862, 1.000000e+00
  %864 = fcmp oeq float %862, 0.000000e+00
  %865 = or i1 %863, %864
  %866 = fdiv float 1.000000e+00, %862
  %867 = select i1 %864, float 1.000000e+00, float %862
  %868 = select i1 %865, float 1.000000e+00, float %866
  %869 = load float, ptr %859, align 4, !tbaa !49
  %870 = fmul float %869, %868
  %871 = call float @srgb_to_linearrgb(float noundef %870) #9
  %872 = fmul float %871, %867
  store float %872, ptr %12, align 16, !tbaa !49
  %873 = getelementptr inbounds float, ptr %859, i64 1
  %874 = load float, ptr %873, align 4, !tbaa !49
  %875 = fmul float %868, %874
  %876 = call float @srgb_to_linearrgb(float noundef %875) #9
  %877 = fmul float %867, %876
  store float %877, ptr %33, align 4, !tbaa !49
  %878 = getelementptr inbounds float, ptr %859, i64 2
  %879 = load float, ptr %878, align 4, !tbaa !49
  %880 = fmul float %868, %879
  %881 = call float @srgb_to_linearrgb(float noundef %880) #9
  %882 = fmul float %867, %881
  store float %882, ptr %34, align 8, !tbaa !49
  %883 = load float, ptr %861, align 4, !tbaa !49
  store float %883, ptr %35, align 4, !tbaa !49
  call void @rgba_float_to_uchar(ptr noundef %858, ptr noundef nonnull %12) #9
  %884 = add nuw nsw i32 %860, 1
  %885 = getelementptr inbounds float, ptr %859, i64 4
  %886 = getelementptr inbounds i8, ptr %858, i64 4
  %887 = icmp eq i32 %884, %7
  br i1 %887, label %906, label %857, !llvm.loop !69

888:                                              ; preds = %856, %888
  %889 = phi ptr [ %904, %888 ], [ %185, %856 ]
  %890 = phi ptr [ %903, %888 ], [ %181, %856 ]
  %891 = phi i32 [ %902, %888 ], [ 0, %856 ]
  %892 = load float, ptr %890, align 4, !tbaa !49
  %893 = call float @srgb_to_linearrgb(float noundef %892) #9
  store float %893, ptr %12, align 16, !tbaa !49
  %894 = getelementptr inbounds float, ptr %890, i64 1
  %895 = load float, ptr %894, align 4, !tbaa !49
  %896 = call float @srgb_to_linearrgb(float noundef %895) #9
  store float %896, ptr %37, align 4, !tbaa !49
  %897 = getelementptr inbounds float, ptr %890, i64 2
  %898 = load float, ptr %897, align 4, !tbaa !49
  %899 = call float @srgb_to_linearrgb(float noundef %898) #9
  store float %899, ptr %38, align 8, !tbaa !49
  %900 = getelementptr inbounds float, ptr %890, i64 3
  %901 = load float, ptr %900, align 4, !tbaa !49
  store float %901, ptr %39, align 4, !tbaa !49
  call void @rgba_float_to_uchar(ptr noundef %889, ptr noundef nonnull %12) #9
  %902 = add nuw nsw i32 %891, 1
  %903 = getelementptr inbounds float, ptr %890, i64 4
  %904 = getelementptr inbounds i8, ptr %889, i64 4
  %905 = icmp eq i32 %902, %7
  br i1 %905, label %906, label %888, !llvm.loop !70

906:                                              ; preds = %857, %888, %847, %773, %598, %660, %552, %461, %160, %143, %131, %114, %855, %856, %781, %694, %567, %568, %476, %385, %141, %142, %130, %96, %382, %383, %91, %140
  %907 = add nuw nsw i64 %92, 1
  %908 = icmp eq i64 %907, %90
  br i1 %908, label %909, label %91, !llvm.loop !71

909:                                              ; preds = %906, %22
  br i1 %18, label %910, label %912

910:                                              ; preds = %909
  %911 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %911(ptr noundef %23) #9
  br label %912

912:                                              ; preds = %910, %909
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_buffer_byte_from_float_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) local_unnamed_addr #0 {
  %11 = alloca [4 x float], align 16
  %12 = sitofp i32 %5 to float
  %13 = fdiv float 1.000000e+00, %12
  %14 = sitofp i32 %6 to float
  %15 = fdiv float 1.000000e+00, %14
  %16 = fcmp une float %3, 0.000000e+00
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %19 = tail call ptr %18(i64 noundef 4, ptr noundef nonnull @.str.1) #9
  store float %3, ptr %19, align 4, !tbaa !47
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi ptr [ %19, %17 ], [ null, %10 ]
  %22 = icmp sgt i32 %6, 0
  br i1 %22, label %23, label %377

23:                                               ; preds = %20
  %24 = shl i32 %8, 2
  %25 = shl i32 %7, 2
  %26 = icmp ne i8 %4, 0
  %27 = and i1 %16, %26
  %28 = icmp eq i8 %4, 0
  %29 = icmp sgt i32 %5, 0
  %30 = getelementptr inbounds float, ptr %11, i64 1
  %31 = getelementptr inbounds float, ptr %11, i64 2
  %32 = getelementptr inbounds float, ptr %11, i64 3
  %33 = getelementptr inbounds float, ptr %11, i64 1
  %34 = getelementptr inbounds float, ptr %11, i64 2
  %35 = getelementptr inbounds float, ptr %11, i64 3
  %36 = icmp sgt i32 %5, 0
  %37 = icmp sgt i32 %5, 0
  %38 = icmp sgt i32 %5, 0
  %39 = getelementptr inbounds float, ptr %11, i64 1
  %40 = getelementptr inbounds float, ptr %11, i64 2
  %41 = getelementptr inbounds float, ptr %11, i64 3
  %42 = getelementptr inbounds float, ptr %11, i64 1
  %43 = getelementptr inbounds float, ptr %11, i64 2
  %44 = getelementptr inbounds float, ptr %11, i64 3
  %45 = getelementptr inbounds float, ptr %11, i64 1
  %46 = getelementptr inbounds float, ptr %11, i64 2
  %47 = getelementptr inbounds float, ptr %11, i64 3
  %48 = mul i32 %8, 3
  %49 = shl i32 %7, 2
  %50 = icmp sgt i32 %5, 0
  %51 = shl i32 %7, 2
  %52 = icmp sgt i32 %5, 0
  %53 = add i32 %5, -1
  %54 = zext i32 %53 to i64
  %55 = add nuw nsw i64 %54, 1
  %56 = zext i32 %53 to i64
  %57 = add nuw nsw i64 %56, 1
  %58 = zext i32 %53 to i64
  %59 = add nuw nsw i64 %58, 1
  %60 = add i32 %5, -1
  %61 = zext i32 %60 to i64
  %62 = add nuw nsw i64 %61, 1
  %63 = zext i32 %60 to i64
  %64 = add nuw nsw i64 %63, 1
  %65 = zext i32 %60 to i64
  %66 = add nuw nsw i64 %65, 1
  %67 = sext i32 %8 to i64
  %68 = zext nneg i32 %6 to i64
  br label %69

69:                                               ; preds = %23, %373
  %70 = phi i64 [ 0, %23 ], [ %375, %373 ]
  %71 = phi ptr [ %9, %23 ], [ %374, %373 ]
  %72 = trunc i64 %70 to i32
  %73 = sitofp i32 %72 to float
  %74 = fmul float %15, %73
  switch i32 %2, label %373 [
    i32 1, label %75
    i32 3, label %106
    i32 4, label %131
  ]

75:                                               ; preds = %69
  br i1 %52, label %76, label %373

76:                                               ; preds = %75
  %77 = trunc i64 %70 to i32
  %78 = mul i32 %51, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %0, i64 %79
  %81 = mul nsw i64 %70, %67
  %82 = getelementptr inbounds float, ptr %1, i64 %81
  br label %83

83:                                               ; preds = %76, %101
  %84 = phi ptr [ %104, %101 ], [ %80, %76 ]
  %85 = phi ptr [ %103, %101 ], [ %82, %76 ]
  %86 = phi ptr [ %88, %101 ], [ %71, %76 ]
  %87 = phi i32 [ %102, %101 ], [ 0, %76 ]
  %88 = getelementptr inbounds i8, ptr %86, i64 1
  %89 = load i8, ptr %86, align 1, !tbaa !53
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load float, ptr %85, align 4, !tbaa !49
  %93 = fcmp ugt float %92, 0.000000e+00
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = fcmp ogt float %92, 0x3FEFEFEFE0000000
  br i1 %95, label %98, label %96

96:                                               ; preds = %94
  %97 = call float @llvm.fmuladd.f32(float %92, float 2.550000e+02, float 5.000000e-01)
  br label %98

98:                                               ; preds = %96, %94, %91
  %99 = phi float [ 0.000000e+00, %91 ], [ %97, %96 ], [ 2.550000e+02, %94 ]
  %100 = fptoui float %99 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %84, i8 %100, i64 4, i1 false)
  br label %101

101:                                              ; preds = %83, %98
  %102 = add nuw nsw i32 %87, 1
  %103 = getelementptr inbounds float, ptr %85, i64 1
  %104 = getelementptr inbounds i8, ptr %84, i64 4
  %105 = icmp eq i32 %102, %5
  br i1 %105, label %369, label %83, !llvm.loop !72

106:                                              ; preds = %69
  br i1 %50, label %107, label %373

107:                                              ; preds = %106
  %108 = trunc i64 %70 to i32
  %109 = mul i32 %49, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %0, i64 %110
  %112 = trunc i64 %70 to i32
  %113 = mul i32 %48, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, ptr %1, i64 %114
  br label %116

116:                                              ; preds = %107, %126
  %117 = phi ptr [ %129, %126 ], [ %111, %107 ]
  %118 = phi ptr [ %128, %126 ], [ %115, %107 ]
  %119 = phi ptr [ %121, %126 ], [ %71, %107 ]
  %120 = phi i32 [ %127, %126 ], [ 0, %107 ]
  %121 = getelementptr inbounds i8, ptr %119, i64 1
  %122 = load i8, ptr %119, align 1, !tbaa !53
  %123 = icmp eq i8 %122, 2
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  call void @rgb_float_to_uchar(ptr noundef %117, ptr noundef %118) #9
  %125 = getelementptr inbounds i8, ptr %117, i64 3
  store i8 -1, ptr %125, align 1, !tbaa !53
  br label %126

126:                                              ; preds = %116, %124
  %127 = add nuw nsw i32 %120, 1
  %128 = getelementptr inbounds float, ptr %118, i64 3
  %129 = getelementptr inbounds i8, ptr %117, i64 4
  %130 = icmp eq i32 %127, %5
  br i1 %130, label %371, label %116, !llvm.loop !73

131:                                              ; preds = %69
  %132 = trunc i64 %70 to i32
  %133 = mul i32 %24, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, ptr %1, i64 %134
  %136 = trunc i64 %70 to i32
  %137 = mul i32 %25, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %0, i64 %138
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  br i1 %27, label %140, label %232

140:                                              ; preds = %131
  br i1 %38, label %141, label %367

141:                                              ; preds = %140
  %142 = fmul float %74, 0x40538EE980000000
  br label %143

143:                                              ; preds = %141, %227
  %144 = phi ptr [ %230, %227 ], [ %139, %141 ]
  %145 = phi ptr [ %229, %227 ], [ %135, %141 ]
  %146 = phi ptr [ %148, %227 ], [ %71, %141 ]
  %147 = phi i32 [ %228, %227 ], [ 0, %141 ]
  %148 = getelementptr inbounds i8, ptr %146, i64 1
  %149 = load i8, ptr %146, align 1, !tbaa !53
  %150 = icmp eq i8 %149, 2
  br i1 %150, label %151, label %227

151:                                              ; preds = %143
  %152 = getelementptr inbounds float, ptr %145, i64 3
  %153 = load float, ptr %152, align 4, !tbaa !49
  %154 = fcmp oeq float %153, 0.000000e+00
  %155 = fcmp oeq float %153, 1.000000e+00
  %156 = or i1 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load float, ptr %145, align 4, !tbaa !49
  store float %158, ptr %11, align 16, !tbaa !49
  %159 = getelementptr inbounds float, ptr %145, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !49
  store float %160, ptr %42, align 4, !tbaa !49
  %161 = getelementptr inbounds float, ptr %145, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !49
  store float %162, ptr %43, align 8, !tbaa !49
  br label %173

163:                                              ; preds = %151
  %164 = fdiv float 1.000000e+00, %153
  %165 = load float, ptr %145, align 4, !tbaa !49
  %166 = fmul float %164, %165
  store float %166, ptr %11, align 16, !tbaa !49
  %167 = getelementptr inbounds float, ptr %145, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !49
  %169 = fmul float %164, %168
  store float %169, ptr %39, align 4, !tbaa !49
  %170 = getelementptr inbounds float, ptr %145, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !49
  %172 = fmul float %164, %171
  store float %172, ptr %40, align 8, !tbaa !49
  br label %173

173:                                              ; preds = %157, %163
  %174 = phi ptr [ %44, %157 ], [ %41, %163 ]
  store float %153, ptr %174, align 4, !tbaa !49
  %175 = sitofp i32 %147 to float
  %176 = fmul float %13, %175
  %177 = call float @llvm.fmuladd.f32(float %176, float 0x4029FAC720000000, float %142)
  %178 = call float @sinf(float noundef %177) #9
  %179 = fmul float %178, 0x40E55DD180000000
  %180 = call float @llvm.floor.f32(float %179)
  %181 = fsub float %179, %180
  %182 = fmul float %181, 0x3F747AE140000000
  %183 = load float, ptr %21, align 4, !tbaa !47
  %184 = fmul float %183, %182
  %185 = load float, ptr %11, align 16, !tbaa !49
  %186 = fadd float %185, %184
  %187 = fcmp ugt float %186, 0.000000e+00
  br i1 %187, label %188, label %193

188:                                              ; preds = %173
  %189 = fcmp ogt float %186, 0x3FEFEFEFE0000000
  %190 = call float @llvm.fmuladd.f32(float %186, float 2.550000e+02, float 5.000000e-01)
  %191 = select i1 %189, float 2.550000e+02, float %190
  %192 = fptoui float %191 to i8
  br label %193

193:                                              ; preds = %188, %173
  %194 = phi i8 [ %192, %188 ], [ 0, %173 ]
  store i8 %194, ptr %144, align 1, !tbaa !53
  %195 = load float, ptr %45, align 4, !tbaa !49
  %196 = fadd float %184, %195
  %197 = fcmp ugt float %196, 0.000000e+00
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = fcmp ogt float %196, 0x3FEFEFEFE0000000
  %200 = call float @llvm.fmuladd.f32(float %196, float 2.550000e+02, float 5.000000e-01)
  %201 = select i1 %199, float 2.550000e+02, float %200
  %202 = fptoui float %201 to i8
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi i8 [ %202, %198 ], [ 0, %193 ]
  %205 = getelementptr inbounds i8, ptr %144, i64 1
  store i8 %204, ptr %205, align 1, !tbaa !53
  %206 = load float, ptr %46, align 8, !tbaa !49
  %207 = fadd float %184, %206
  %208 = fcmp ugt float %207, 0.000000e+00
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = fcmp ogt float %207, 0x3FEFEFEFE0000000
  %211 = call float @llvm.fmuladd.f32(float %207, float 2.550000e+02, float 5.000000e-01)
  %212 = select i1 %210, float 2.550000e+02, float %211
  %213 = fptoui float %212 to i8
  br label %214

214:                                              ; preds = %209, %203
  %215 = phi i8 [ %213, %209 ], [ 0, %203 ]
  %216 = getelementptr inbounds i8, ptr %144, i64 2
  store i8 %215, ptr %216, align 1, !tbaa !53
  %217 = load float, ptr %47, align 4, !tbaa !49
  %218 = fcmp ugt float %217, 0.000000e+00
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = fcmp ogt float %217, 0x3FEFEFEFE0000000
  br i1 %220, label %224, label %221

221:                                              ; preds = %219
  %222 = call float @llvm.fmuladd.f32(float %217, float 2.550000e+02, float 5.000000e-01)
  %223 = fptoui float %222 to i8
  br label %224

224:                                              ; preds = %214, %219, %221
  %225 = phi i8 [ 0, %214 ], [ %223, %221 ], [ -1, %219 ]
  %226 = getelementptr inbounds i8, ptr %144, i64 3
  store i8 %225, ptr %226, align 1, !tbaa !53
  br label %227

227:                                              ; preds = %143, %224
  %228 = add nuw nsw i32 %147, 1
  %229 = getelementptr inbounds float, ptr %145, i64 4
  %230 = getelementptr inbounds i8, ptr %144, i64 4
  %231 = icmp eq i32 %228, %5
  br i1 %231, label %359, label %143, !llvm.loop !74

232:                                              ; preds = %131
  br i1 %16, label %233, label %305

233:                                              ; preds = %232
  br i1 %37, label %234, label %367

234:                                              ; preds = %233
  %235 = fmul float %74, 0x40538EE980000000
  br label %236

236:                                              ; preds = %234, %300
  %237 = phi ptr [ %303, %300 ], [ %139, %234 ]
  %238 = phi ptr [ %302, %300 ], [ %135, %234 ]
  %239 = phi ptr [ %241, %300 ], [ %71, %234 ]
  %240 = phi i32 [ %301, %300 ], [ 0, %234 ]
  %241 = getelementptr inbounds i8, ptr %239, i64 1
  %242 = load i8, ptr %239, align 1, !tbaa !53
  %243 = icmp eq i8 %242, 2
  br i1 %243, label %244, label %300

244:                                              ; preds = %236
  %245 = sitofp i32 %240 to float
  %246 = fmul float %13, %245
  %247 = call float @llvm.fmuladd.f32(float %246, float 0x4029FAC720000000, float %235)
  %248 = call float @sinf(float noundef %247) #9
  %249 = fmul float %248, 0x40E55DD180000000
  %250 = call float @llvm.floor.f32(float %249)
  %251 = fsub float %249, %250
  %252 = fmul float %251, 0x3F747AE140000000
  %253 = load float, ptr %21, align 4, !tbaa !47
  %254 = fmul float %253, %252
  %255 = load float, ptr %238, align 4, !tbaa !49
  %256 = fadd float %255, %254
  %257 = fcmp ugt float %256, 0.000000e+00
  br i1 %257, label %258, label %263

258:                                              ; preds = %244
  %259 = fcmp ogt float %256, 0x3FEFEFEFE0000000
  %260 = call float @llvm.fmuladd.f32(float %256, float 2.550000e+02, float 5.000000e-01)
  %261 = select i1 %259, float 2.550000e+02, float %260
  %262 = fptoui float %261 to i8
  br label %263

263:                                              ; preds = %258, %244
  %264 = phi i8 [ %262, %258 ], [ 0, %244 ]
  store i8 %264, ptr %237, align 1, !tbaa !53
  %265 = getelementptr inbounds float, ptr %238, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !49
  %267 = fadd float %254, %266
  %268 = fcmp ugt float %267, 0.000000e+00
  br i1 %268, label %269, label %274

269:                                              ; preds = %263
  %270 = fcmp ogt float %267, 0x3FEFEFEFE0000000
  %271 = call float @llvm.fmuladd.f32(float %267, float 2.550000e+02, float 5.000000e-01)
  %272 = select i1 %270, float 2.550000e+02, float %271
  %273 = fptoui float %272 to i8
  br label %274

274:                                              ; preds = %269, %263
  %275 = phi i8 [ %273, %269 ], [ 0, %263 ]
  %276 = getelementptr inbounds i8, ptr %237, i64 1
  store i8 %275, ptr %276, align 1, !tbaa !53
  %277 = getelementptr inbounds float, ptr %238, i64 2
  %278 = load float, ptr %277, align 4, !tbaa !49
  %279 = fadd float %254, %278
  %280 = fcmp ugt float %279, 0.000000e+00
  br i1 %280, label %281, label %286

281:                                              ; preds = %274
  %282 = fcmp ogt float %279, 0x3FEFEFEFE0000000
  %283 = call float @llvm.fmuladd.f32(float %279, float 2.550000e+02, float 5.000000e-01)
  %284 = select i1 %282, float 2.550000e+02, float %283
  %285 = fptoui float %284 to i8
  br label %286

286:                                              ; preds = %281, %274
  %287 = phi i8 [ %285, %281 ], [ 0, %274 ]
  %288 = getelementptr inbounds i8, ptr %237, i64 2
  store i8 %287, ptr %288, align 1, !tbaa !53
  %289 = getelementptr inbounds float, ptr %238, i64 3
  %290 = load float, ptr %289, align 4, !tbaa !49
  %291 = fcmp ugt float %290, 0.000000e+00
  br i1 %291, label %292, label %297

292:                                              ; preds = %286
  %293 = fcmp ogt float %290, 0x3FEFEFEFE0000000
  br i1 %293, label %297, label %294

294:                                              ; preds = %292
  %295 = call float @llvm.fmuladd.f32(float %290, float 2.550000e+02, float 5.000000e-01)
  %296 = fptoui float %295 to i8
  br label %297

297:                                              ; preds = %286, %292, %294
  %298 = phi i8 [ 0, %286 ], [ %296, %294 ], [ -1, %292 ]
  %299 = getelementptr inbounds i8, ptr %237, i64 3
  store i8 %298, ptr %299, align 1, !tbaa !53
  br label %300

300:                                              ; preds = %236, %297
  %301 = add nuw nsw i32 %240, 1
  %302 = getelementptr inbounds float, ptr %238, i64 4
  %303 = getelementptr inbounds i8, ptr %237, i64 4
  %304 = icmp eq i32 %301, %5
  br i1 %304, label %361, label %236, !llvm.loop !75

305:                                              ; preds = %232
  br i1 %28, label %307, label %306

306:                                              ; preds = %305
  br i1 %29, label %308, label %367

307:                                              ; preds = %305
  br i1 %36, label %345, label %367

308:                                              ; preds = %306, %340
  %309 = phi ptr [ %343, %340 ], [ %139, %306 ]
  %310 = phi ptr [ %342, %340 ], [ %135, %306 ]
  %311 = phi ptr [ %313, %340 ], [ %71, %306 ]
  %312 = phi i32 [ %341, %340 ], [ 0, %306 ]
  %313 = getelementptr inbounds i8, ptr %311, i64 1
  %314 = load i8, ptr %311, align 1, !tbaa !53
  %315 = icmp eq i8 %314, 2
  br i1 %315, label %316, label %340

316:                                              ; preds = %308
  %317 = getelementptr inbounds float, ptr %310, i64 3
  %318 = load float, ptr %317, align 4, !tbaa !49
  %319 = fcmp oeq float %318, 0.000000e+00
  %320 = fcmp oeq float %318, 1.000000e+00
  %321 = or i1 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %316
  %323 = load float, ptr %310, align 4, !tbaa !49
  store float %323, ptr %11, align 16, !tbaa !49
  %324 = getelementptr inbounds float, ptr %310, i64 1
  %325 = load float, ptr %324, align 4, !tbaa !49
  store float %325, ptr %33, align 4, !tbaa !49
  %326 = getelementptr inbounds float, ptr %310, i64 2
  %327 = load float, ptr %326, align 4, !tbaa !49
  store float %327, ptr %34, align 8, !tbaa !49
  br label %338

328:                                              ; preds = %316
  %329 = fdiv float 1.000000e+00, %318
  %330 = load float, ptr %310, align 4, !tbaa !49
  %331 = fmul float %329, %330
  store float %331, ptr %11, align 16, !tbaa !49
  %332 = getelementptr inbounds float, ptr %310, i64 1
  %333 = load float, ptr %332, align 4, !tbaa !49
  %334 = fmul float %329, %333
  store float %334, ptr %30, align 4, !tbaa !49
  %335 = getelementptr inbounds float, ptr %310, i64 2
  %336 = load float, ptr %335, align 4, !tbaa !49
  %337 = fmul float %329, %336
  store float %337, ptr %31, align 8, !tbaa !49
  br label %338

338:                                              ; preds = %322, %328
  %339 = phi ptr [ %35, %322 ], [ %32, %328 ]
  store float %318, ptr %339, align 4, !tbaa !49
  call void @rgba_float_to_uchar(ptr noundef %309, ptr noundef nonnull %11) #9
  br label %340

340:                                              ; preds = %308, %338
  %341 = add nuw nsw i32 %312, 1
  %342 = getelementptr inbounds float, ptr %310, i64 4
  %343 = getelementptr inbounds i8, ptr %309, i64 4
  %344 = icmp eq i32 %341, %5
  br i1 %344, label %365, label %308, !llvm.loop !76

345:                                              ; preds = %307, %354
  %346 = phi ptr [ %357, %354 ], [ %139, %307 ]
  %347 = phi ptr [ %356, %354 ], [ %135, %307 ]
  %348 = phi ptr [ %350, %354 ], [ %71, %307 ]
  %349 = phi i32 [ %355, %354 ], [ 0, %307 ]
  %350 = getelementptr inbounds i8, ptr %348, i64 1
  %351 = load i8, ptr %348, align 1, !tbaa !53
  %352 = icmp eq i8 %351, 2
  br i1 %352, label %353, label %354

353:                                              ; preds = %345
  call void @rgba_float_to_uchar(ptr noundef %346, ptr noundef %347) #9
  br label %354

354:                                              ; preds = %345, %353
  %355 = add nuw nsw i32 %349, 1
  %356 = getelementptr inbounds float, ptr %347, i64 4
  %357 = getelementptr inbounds i8, ptr %346, i64 4
  %358 = icmp eq i32 %355, %5
  br i1 %358, label %363, label %345, !llvm.loop !77

359:                                              ; preds = %227
  %360 = getelementptr i8, ptr %71, i64 %62
  br label %367

361:                                              ; preds = %300
  %362 = getelementptr i8, ptr %71, i64 %59
  br label %367

363:                                              ; preds = %354
  %364 = getelementptr i8, ptr %71, i64 %57
  br label %367

365:                                              ; preds = %340
  %366 = getelementptr i8, ptr %71, i64 %55
  br label %367

367:                                              ; preds = %365, %363, %361, %359, %306, %307, %233, %140
  %368 = phi ptr [ %71, %140 ], [ %71, %233 ], [ %71, %307 ], [ %71, %306 ], [ %360, %359 ], [ %362, %361 ], [ %364, %363 ], [ %366, %365 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  br label %373

369:                                              ; preds = %101
  %370 = getelementptr i8, ptr %71, i64 %66
  br label %373

371:                                              ; preds = %126
  %372 = getelementptr i8, ptr %71, i64 %64
  br label %373

373:                                              ; preds = %371, %369, %106, %75, %69, %367
  %374 = phi ptr [ %368, %367 ], [ %71, %69 ], [ %71, %75 ], [ %71, %106 ], [ %370, %369 ], [ %372, %371 ]
  %375 = add nuw nsw i64 %70, 1
  %376 = icmp eq i64 %375, %68
  br i1 %376, label %377, label %69, !llvm.loop !78

377:                                              ; preds = %373, %20
  br i1 %16, label %378, label %380

378:                                              ; preds = %377
  %379 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %379(ptr noundef %21) #9
  br label %380

380:                                              ; preds = %378, %377
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_buffer_float_from_byte(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %12 = icmp sgt i32 %6, 0
  br i1 %12, label %13, label %205

13:                                               ; preds = %9
  %14 = shl i32 %8, 2
  %15 = shl i32 %7, 2
  %16 = icmp eq i32 %2, %3
  %17 = icmp eq i8 %4, 0
  %18 = icmp sgt i32 %5, 0
  %19 = getelementptr inbounds float, ptr %11, i64 3
  %20 = getelementptr inbounds float, ptr %11, i64 1
  %21 = getelementptr inbounds float, ptr %11, i64 2
  %22 = icmp sgt i32 %5, 0
  %23 = getelementptr inbounds float, ptr %11, i64 1
  %24 = getelementptr inbounds float, ptr %11, i64 2
  %25 = getelementptr inbounds float, ptr %11, i64 3
  %26 = icmp eq i8 %4, 0
  %27 = icmp sgt i32 %5, 0
  %28 = getelementptr inbounds float, ptr %10, i64 3
  %29 = getelementptr inbounds float, ptr %10, i64 1
  %30 = getelementptr inbounds float, ptr %10, i64 2
  %31 = icmp sgt i32 %5, 0
  %32 = icmp sgt i32 %5, 0
  %33 = zext nneg i32 %6 to i64
  br label %34

34:                                               ; preds = %13, %202
  %35 = phi i64 [ 0, %13 ], [ %203, %202 ]
  %36 = trunc i64 %35 to i32
  %37 = mul i32 %14, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %1, i64 %38
  %40 = trunc i64 %35 to i32
  %41 = mul i32 %15, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %0, i64 %42
  br i1 %16, label %44, label %53

44:                                               ; preds = %34
  br i1 %32, label %45, label %202

45:                                               ; preds = %44, %45
  %46 = phi ptr [ %51, %45 ], [ %43, %44 ]
  %47 = phi ptr [ %50, %45 ], [ %39, %44 ]
  %48 = phi i32 [ %49, %45 ], [ 0, %44 ]
  call void @rgba_uchar_to_float(ptr noundef %46, ptr noundef %47) #9
  %49 = add nuw nsw i32 %48, 1
  %50 = getelementptr inbounds i8, ptr %47, i64 4
  %51 = getelementptr inbounds float, ptr %46, i64 4
  %52 = icmp eq i32 %49, %5
  br i1 %52, label %202, label %45, !llvm.loop !79

53:                                               ; preds = %34
  switch i32 %2, label %202 [
    i32 1, label %54
    i32 2, label %150
  ]

54:                                               ; preds = %53
  br i1 %26, label %56, label %55

55:                                               ; preds = %54
  br i1 %27, label %57, label %202

56:                                               ; preds = %54
  br i1 %31, label %121, label %202

57:                                               ; preds = %55, %114
  %58 = phi ptr [ %119, %114 ], [ %43, %55 ]
  %59 = phi ptr [ %118, %114 ], [ %39, %55 ]
  %60 = phi i32 [ %117, %114 ], [ 0, %55 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %61 = getelementptr inbounds i8, ptr %59, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !53
  switch i8 %62, label %83 [
    i8 -1, label %63
    i8 0, label %63
  ]

63:                                               ; preds = %57, %57
  %64 = load i8, ptr %59, align 1, !tbaa !53
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %65
  %67 = load float, ptr %66, align 4, !tbaa !49
  store float %67, ptr %58, align 4, !tbaa !49
  %68 = getelementptr inbounds i8, ptr %59, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !53
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !49
  %73 = getelementptr inbounds float, ptr %58, i64 1
  store float %72, ptr %73, align 4, !tbaa !49
  %74 = getelementptr inbounds i8, ptr %59, i64 2
  %75 = load i8, ptr %74, align 1, !tbaa !53
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !49
  %79 = getelementptr inbounds float, ptr %58, i64 2
  store float %78, ptr %79, align 4, !tbaa !49
  %80 = load i8, ptr %61, align 1, !tbaa !53
  %81 = uitofp i8 %80 to float
  %82 = fmul float %81, 0x3F70101020000000
  br label %114

83:                                               ; preds = %57, %83
  %84 = phi i64 [ %90, %83 ], [ 0, %57 ]
  %85 = getelementptr inbounds i8, ptr %59, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !53
  %87 = uitofp i8 %86 to float
  %88 = fmul float %87, 0x3F70101020000000
  %89 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 %84
  store float %88, ptr %89, align 4, !tbaa !49
  %90 = add nuw nsw i64 %84, 1
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %83, !llvm.loop !80

92:                                               ; preds = %83
  %93 = load float, ptr %28, align 4, !tbaa !49
  %94 = fcmp oeq float %93, 1.000000e+00
  %95 = fcmp oeq float %93, 0.000000e+00
  %96 = or i1 %94, %95
  %97 = fdiv float 1.000000e+00, %93
  %98 = select i1 %95, float 1.000000e+00, float %93
  %99 = select i1 %96, float 1.000000e+00, float %97
  %100 = load float, ptr %10, align 16, !tbaa !49
  %101 = fmul float %100, %99
  %102 = call float @srgb_to_linearrgb(float noundef %101) #9
  %103 = fmul float %102, %98
  store float %103, ptr %58, align 4, !tbaa !49
  %104 = load float, ptr %29, align 4, !tbaa !49
  %105 = fmul float %99, %104
  %106 = call float @srgb_to_linearrgb(float noundef %105) #9
  %107 = fmul float %98, %106
  %108 = getelementptr inbounds float, ptr %58, i64 1
  store float %107, ptr %108, align 4, !tbaa !49
  %109 = load float, ptr %30, align 8, !tbaa !49
  %110 = fmul float %99, %109
  %111 = call float @srgb_to_linearrgb(float noundef %110) #9
  %112 = fmul float %98, %111
  %113 = getelementptr inbounds float, ptr %58, i64 2
  store float %112, ptr %113, align 4, !tbaa !49
  br label %114

114:                                              ; preds = %63, %92
  %115 = phi float [ %82, %63 ], [ %93, %92 ]
  %116 = getelementptr inbounds float, ptr %58, i64 3
  store float %115, ptr %116, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  %117 = add nuw nsw i32 %60, 1
  %118 = getelementptr inbounds i8, ptr %59, i64 4
  %119 = getelementptr inbounds float, ptr %58, i64 4
  %120 = icmp eq i32 %117, %5
  br i1 %120, label %202, label %57, !llvm.loop !81

121:                                              ; preds = %56, %121
  %122 = phi ptr [ %148, %121 ], [ %43, %56 ]
  %123 = phi ptr [ %147, %121 ], [ %39, %56 ]
  %124 = phi i32 [ %146, %121 ], [ 0, %56 ]
  %125 = load i8, ptr %123, align 1, !tbaa !53
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !49
  store float %128, ptr %122, align 4, !tbaa !49
  %129 = getelementptr inbounds i8, ptr %123, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !53
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %131
  %133 = load float, ptr %132, align 4, !tbaa !49
  %134 = getelementptr inbounds float, ptr %122, i64 1
  store float %133, ptr %134, align 4, !tbaa !49
  %135 = getelementptr inbounds i8, ptr %123, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !53
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %137
  %139 = load float, ptr %138, align 4, !tbaa !49
  %140 = getelementptr inbounds float, ptr %122, i64 2
  store float %139, ptr %140, align 4, !tbaa !49
  %141 = getelementptr inbounds i8, ptr %123, i64 3
  %142 = load i8, ptr %141, align 1, !tbaa !53
  %143 = uitofp i8 %142 to float
  %144 = fmul float %143, 0x3F70101020000000
  %145 = getelementptr inbounds float, ptr %122, i64 3
  store float %144, ptr %145, align 4, !tbaa !49
  %146 = add nuw nsw i32 %124, 1
  %147 = getelementptr inbounds i8, ptr %123, i64 4
  %148 = getelementptr inbounds float, ptr %122, i64 4
  %149 = icmp eq i32 %146, %5
  br i1 %149, label %202, label %121, !llvm.loop !82

150:                                              ; preds = %53
  br i1 %17, label %152, label %151

151:                                              ; preds = %150
  br i1 %18, label %153, label %202

152:                                              ; preds = %150
  br i1 %22, label %184, label %202

153:                                              ; preds = %151, %153
  %154 = phi ptr [ %182, %153 ], [ %43, %151 ]
  %155 = phi ptr [ %181, %153 ], [ %39, %151 ]
  %156 = phi i32 [ %180, %153 ], [ 0, %151 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %11, ptr noundef %155) #9
  %157 = load float, ptr %19, align 4, !tbaa !49
  %158 = fcmp oeq float %157, 1.000000e+00
  %159 = fcmp oeq float %157, 0.000000e+00
  %160 = or i1 %158, %159
  %161 = fdiv float 1.000000e+00, %157
  %162 = select i1 %159, float 1.000000e+00, float %157
  %163 = select i1 %160, float 1.000000e+00, float %161
  %164 = load float, ptr %11, align 16, !tbaa !49
  %165 = fmul float %164, %163
  %166 = call float @linearrgb_to_srgb(float noundef %165) #9
  %167 = fmul float %166, %162
  store float %167, ptr %154, align 4, !tbaa !49
  %168 = load float, ptr %20, align 4, !tbaa !49
  %169 = fmul float %163, %168
  %170 = call float @linearrgb_to_srgb(float noundef %169) #9
  %171 = fmul float %162, %170
  %172 = getelementptr inbounds float, ptr %154, i64 1
  store float %171, ptr %172, align 4, !tbaa !49
  %173 = load float, ptr %21, align 8, !tbaa !49
  %174 = fmul float %163, %173
  %175 = call float @linearrgb_to_srgb(float noundef %174) #9
  %176 = fmul float %162, %175
  %177 = getelementptr inbounds float, ptr %154, i64 2
  store float %176, ptr %177, align 4, !tbaa !49
  %178 = load float, ptr %19, align 4, !tbaa !49
  %179 = getelementptr inbounds float, ptr %154, i64 3
  store float %178, ptr %179, align 4, !tbaa !49
  %180 = add nuw nsw i32 %156, 1
  %181 = getelementptr inbounds i8, ptr %155, i64 4
  %182 = getelementptr inbounds float, ptr %154, i64 4
  %183 = icmp eq i32 %180, %5
  br i1 %183, label %202, label %153, !llvm.loop !83

184:                                              ; preds = %152, %184
  %185 = phi ptr [ %200, %184 ], [ %43, %152 ]
  %186 = phi ptr [ %199, %184 ], [ %39, %152 ]
  %187 = phi i32 [ %198, %184 ], [ 0, %152 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %11, ptr noundef %186) #9
  %188 = load float, ptr %11, align 16, !tbaa !49
  %189 = call float @linearrgb_to_srgb(float noundef %188) #9
  store float %189, ptr %185, align 4, !tbaa !49
  %190 = load float, ptr %23, align 4, !tbaa !49
  %191 = call float @linearrgb_to_srgb(float noundef %190) #9
  %192 = getelementptr inbounds float, ptr %185, i64 1
  store float %191, ptr %192, align 4, !tbaa !49
  %193 = load float, ptr %24, align 8, !tbaa !49
  %194 = call float @linearrgb_to_srgb(float noundef %193) #9
  %195 = getelementptr inbounds float, ptr %185, i64 2
  store float %194, ptr %195, align 4, !tbaa !49
  %196 = load float, ptr %25, align 4, !tbaa !49
  %197 = getelementptr inbounds float, ptr %185, i64 3
  store float %196, ptr %197, align 4, !tbaa !49
  %198 = add nuw nsw i32 %187, 1
  %199 = getelementptr inbounds i8, ptr %186, i64 4
  %200 = getelementptr inbounds float, ptr %185, i64 4
  %201 = icmp eq i32 %198, %5
  br i1 %201, label %202, label %184, !llvm.loop !84

202:                                              ; preds = %153, %184, %114, %121, %45, %151, %152, %55, %56, %44, %53
  %203 = add nuw nsw i64 %35, 1
  %204 = icmp eq i64 %203, %33
  br i1 %204, label %205, label %34, !llvm.loop !85

205:                                              ; preds = %202, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  ret void
}

declare void @rgba_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_buffer_float_from_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  switch i32 %2, label %269 [
    i32 1, label %36
    i32 3, label %26
    i32 4, label %11
  ]

11:                                               ; preds = %10
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %269

13:                                               ; preds = %11
  %14 = shl i32 %9, 2
  %15 = shl i32 %8, 2
  %16 = icmp eq i32 %3, %4
  %17 = icmp eq i8 %5, 0
  %18 = icmp sgt i32 %6, 0
  %19 = icmp sgt i32 %6, 0
  %20 = icmp eq i8 %5, 0
  %21 = icmp sgt i32 %6, 0
  %22 = icmp sgt i32 %6, 0
  %23 = sext i32 %6 to i64
  %24 = shl nsw i64 %23, 4
  %25 = zext nneg i32 %7 to i64
  br label %138

26:                                               ; preds = %10
  %27 = icmp sgt i32 %7, 0
  br i1 %27, label %28, label %269

28:                                               ; preds = %26
  %29 = mul i32 %9, 3
  %30 = shl i32 %8, 2
  %31 = icmp eq i32 %3, %4
  %32 = icmp sgt i32 %6, 0
  %33 = icmp sgt i32 %6, 0
  %34 = icmp sgt i32 %6, 0
  %35 = zext nneg i32 %7 to i64
  br label %67

36:                                               ; preds = %10
  %37 = icmp sgt i32 %7, 0
  br i1 %37, label %38, label %269

38:                                               ; preds = %36
  %39 = shl i32 %8, 2
  %40 = icmp sgt i32 %6, 0
  %41 = sext i32 %9 to i64
  %42 = zext nneg i32 %7 to i64
  br label %43

43:                                               ; preds = %38, %64
  %44 = phi i64 [ 0, %38 ], [ %65, %64 ]
  br i1 %40, label %45, label %64

45:                                               ; preds = %43
  %46 = trunc i64 %44 to i32
  %47 = mul i32 %39, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, ptr %0, i64 %48
  %50 = mul nsw i64 %44, %41
  %51 = getelementptr inbounds float, ptr %1, i64 %50
  br label %52

52:                                               ; preds = %45, %52
  %53 = phi ptr [ %62, %52 ], [ %49, %45 ]
  %54 = phi ptr [ %61, %52 ], [ %51, %45 ]
  %55 = phi i32 [ %60, %52 ], [ 0, %45 ]
  %56 = load float, ptr %54, align 4, !tbaa !49
  %57 = getelementptr inbounds float, ptr %53, i64 3
  store float %56, ptr %57, align 4, !tbaa !49
  %58 = getelementptr inbounds float, ptr %53, i64 2
  store float %56, ptr %58, align 4, !tbaa !49
  %59 = getelementptr inbounds float, ptr %53, i64 1
  store float %56, ptr %59, align 4, !tbaa !49
  store float %56, ptr %53, align 4, !tbaa !49
  %60 = add nuw nsw i32 %55, 1
  %61 = getelementptr inbounds float, ptr %54, i64 1
  %62 = getelementptr inbounds float, ptr %53, i64 4
  %63 = icmp eq i32 %60, %6
  br i1 %63, label %64, label %52, !llvm.loop !86

64:                                               ; preds = %52, %43
  %65 = add nuw nsw i64 %44, 1
  %66 = icmp eq i64 %65, %42
  br i1 %66, label %269, label %43, !llvm.loop !87

67:                                               ; preds = %28, %135
  %68 = phi i64 [ 0, %28 ], [ %136, %135 ]
  %69 = trunc i64 %68 to i32
  %70 = mul i32 %29, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr %1, i64 %71
  %73 = trunc i64 %68 to i32
  %74 = mul i32 %30, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, ptr %0, i64 %75
  br i1 %31, label %77, label %94

77:                                               ; preds = %67
  br i1 %34, label %78, label %135

78:                                               ; preds = %77, %78
  %79 = phi ptr [ %92, %78 ], [ %76, %77 ]
  %80 = phi ptr [ %91, %78 ], [ %72, %77 ]
  %81 = phi i32 [ %90, %78 ], [ 0, %77 ]
  %82 = load float, ptr %80, align 4, !tbaa !49
  store float %82, ptr %79, align 4, !tbaa !49
  %83 = getelementptr inbounds float, ptr %80, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !49
  %85 = getelementptr inbounds float, ptr %79, i64 1
  store float %84, ptr %85, align 4, !tbaa !49
  %86 = getelementptr inbounds float, ptr %80, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !49
  %88 = getelementptr inbounds float, ptr %79, i64 2
  store float %87, ptr %88, align 4, !tbaa !49
  %89 = getelementptr inbounds float, ptr %79, i64 3
  store float 1.000000e+00, ptr %89, align 4, !tbaa !49
  %90 = add nuw nsw i32 %81, 1
  %91 = getelementptr inbounds float, ptr %80, i64 3
  %92 = getelementptr inbounds float, ptr %79, i64 4
  %93 = icmp eq i32 %90, %6
  br i1 %93, label %135, label %78, !llvm.loop !88

94:                                               ; preds = %67
  switch i32 %3, label %135 [
    i32 1, label %96
    i32 2, label %95
  ]

95:                                               ; preds = %94
  br i1 %32, label %116, label %135

96:                                               ; preds = %94
  br i1 %33, label %97, label %135

97:                                               ; preds = %96, %97
  %98 = phi ptr [ %114, %97 ], [ %76, %96 ]
  %99 = phi ptr [ %113, %97 ], [ %72, %96 ]
  %100 = phi i32 [ %112, %97 ], [ 0, %96 ]
  %101 = load float, ptr %99, align 4, !tbaa !49
  %102 = tail call float @srgb_to_linearrgb(float noundef %101) #9
  store float %102, ptr %98, align 4, !tbaa !49
  %103 = getelementptr inbounds float, ptr %99, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !49
  %105 = tail call float @srgb_to_linearrgb(float noundef %104) #9
  %106 = getelementptr inbounds float, ptr %98, i64 1
  store float %105, ptr %106, align 4, !tbaa !49
  %107 = getelementptr inbounds float, ptr %99, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !49
  %109 = tail call float @srgb_to_linearrgb(float noundef %108) #9
  %110 = getelementptr inbounds float, ptr %98, i64 2
  store float %109, ptr %110, align 4, !tbaa !49
  %111 = getelementptr inbounds float, ptr %98, i64 3
  store float 1.000000e+00, ptr %111, align 4, !tbaa !49
  %112 = add nuw nsw i32 %100, 1
  %113 = getelementptr inbounds float, ptr %99, i64 3
  %114 = getelementptr inbounds float, ptr %98, i64 4
  %115 = icmp eq i32 %112, %6
  br i1 %115, label %135, label %97, !llvm.loop !89

116:                                              ; preds = %95, %116
  %117 = phi ptr [ %133, %116 ], [ %76, %95 ]
  %118 = phi ptr [ %132, %116 ], [ %72, %95 ]
  %119 = phi i32 [ %131, %116 ], [ 0, %95 ]
  %120 = load float, ptr %118, align 4, !tbaa !49
  %121 = tail call float @linearrgb_to_srgb(float noundef %120) #9
  store float %121, ptr %117, align 4, !tbaa !49
  %122 = getelementptr inbounds float, ptr %118, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !49
  %124 = tail call float @linearrgb_to_srgb(float noundef %123) #9
  %125 = getelementptr inbounds float, ptr %117, i64 1
  store float %124, ptr %125, align 4, !tbaa !49
  %126 = getelementptr inbounds float, ptr %118, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !49
  %128 = tail call float @linearrgb_to_srgb(float noundef %127) #9
  %129 = getelementptr inbounds float, ptr %117, i64 2
  store float %128, ptr %129, align 4, !tbaa !49
  %130 = getelementptr inbounds float, ptr %117, i64 3
  store float 1.000000e+00, ptr %130, align 4, !tbaa !49
  %131 = add nuw nsw i32 %119, 1
  %132 = getelementptr inbounds float, ptr %118, i64 3
  %133 = getelementptr inbounds float, ptr %117, i64 4
  %134 = icmp eq i32 %131, %6
  br i1 %134, label %135, label %116, !llvm.loop !90

135:                                              ; preds = %116, %97, %78, %95, %96, %77, %94
  %136 = add nuw nsw i64 %68, 1
  %137 = icmp eq i64 %136, %35
  br i1 %137, label %269, label %67, !llvm.loop !91

138:                                              ; preds = %13, %266
  %139 = phi i64 [ 0, %13 ], [ %267, %266 ]
  %140 = trunc i64 %139 to i32
  %141 = mul i32 %14, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, ptr %1, i64 %142
  %144 = trunc i64 %139 to i32
  %145 = mul i32 %15, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, ptr %0, i64 %146
  br i1 %16, label %148, label %149

148:                                              ; preds = %138
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %147, ptr align 4 %143, i64 %24, i1 false)
  br label %266

149:                                              ; preds = %138
  switch i32 %3, label %266 [
    i32 1, label %150
    i32 2, label %208
  ]

150:                                              ; preds = %149
  br i1 %20, label %152, label %151

151:                                              ; preds = %150
  br i1 %21, label %153, label %266

152:                                              ; preds = %150
  br i1 %22, label %187, label %266

153:                                              ; preds = %151, %153
  %154 = phi ptr [ %185, %153 ], [ %147, %151 ]
  %155 = phi ptr [ %184, %153 ], [ %143, %151 ]
  %156 = phi i32 [ %183, %153 ], [ 0, %151 ]
  %157 = getelementptr inbounds float, ptr %155, i64 3
  %158 = load float, ptr %157, align 4, !tbaa !49
  %159 = fcmp oeq float %158, 1.000000e+00
  %160 = fcmp oeq float %158, 0.000000e+00
  %161 = or i1 %159, %160
  %162 = fdiv float 1.000000e+00, %158
  %163 = select i1 %160, float 1.000000e+00, float %158
  %164 = select i1 %161, float 1.000000e+00, float %162
  %165 = load float, ptr %155, align 4, !tbaa !49
  %166 = fmul float %165, %164
  %167 = tail call float @srgb_to_linearrgb(float noundef %166) #9
  %168 = fmul float %167, %163
  store float %168, ptr %154, align 4, !tbaa !49
  %169 = getelementptr inbounds float, ptr %155, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !49
  %171 = fmul float %164, %170
  %172 = tail call float @srgb_to_linearrgb(float noundef %171) #9
  %173 = fmul float %163, %172
  %174 = getelementptr inbounds float, ptr %154, i64 1
  store float %173, ptr %174, align 4, !tbaa !49
  %175 = getelementptr inbounds float, ptr %155, i64 2
  %176 = load float, ptr %175, align 4, !tbaa !49
  %177 = fmul float %164, %176
  %178 = tail call float @srgb_to_linearrgb(float noundef %177) #9
  %179 = fmul float %163, %178
  %180 = getelementptr inbounds float, ptr %154, i64 2
  store float %179, ptr %180, align 4, !tbaa !49
  %181 = load float, ptr %157, align 4, !tbaa !49
  %182 = getelementptr inbounds float, ptr %154, i64 3
  store float %181, ptr %182, align 4, !tbaa !49
  %183 = add nuw nsw i32 %156, 1
  %184 = getelementptr inbounds float, ptr %155, i64 4
  %185 = getelementptr inbounds float, ptr %154, i64 4
  %186 = icmp eq i32 %183, %6
  br i1 %186, label %266, label %153, !llvm.loop !92

187:                                              ; preds = %152, %187
  %188 = phi ptr [ %206, %187 ], [ %147, %152 ]
  %189 = phi ptr [ %205, %187 ], [ %143, %152 ]
  %190 = phi i32 [ %204, %187 ], [ 0, %152 ]
  %191 = load float, ptr %189, align 4, !tbaa !49
  %192 = tail call float @srgb_to_linearrgb(float noundef %191) #9
  store float %192, ptr %188, align 4, !tbaa !49
  %193 = getelementptr inbounds float, ptr %189, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !49
  %195 = tail call float @srgb_to_linearrgb(float noundef %194) #9
  %196 = getelementptr inbounds float, ptr %188, i64 1
  store float %195, ptr %196, align 4, !tbaa !49
  %197 = getelementptr inbounds float, ptr %189, i64 2
  %198 = load float, ptr %197, align 4, !tbaa !49
  %199 = tail call float @srgb_to_linearrgb(float noundef %198) #9
  %200 = getelementptr inbounds float, ptr %188, i64 2
  store float %199, ptr %200, align 4, !tbaa !49
  %201 = getelementptr inbounds float, ptr %189, i64 3
  %202 = load float, ptr %201, align 4, !tbaa !49
  %203 = getelementptr inbounds float, ptr %188, i64 3
  store float %202, ptr %203, align 4, !tbaa !49
  %204 = add nuw nsw i32 %190, 1
  %205 = getelementptr inbounds float, ptr %189, i64 4
  %206 = getelementptr inbounds float, ptr %188, i64 4
  %207 = icmp eq i32 %204, %6
  br i1 %207, label %266, label %187, !llvm.loop !93

208:                                              ; preds = %149
  br i1 %17, label %210, label %209

209:                                              ; preds = %208
  br i1 %18, label %211, label %266

210:                                              ; preds = %208
  br i1 %19, label %245, label %266

211:                                              ; preds = %209, %211
  %212 = phi ptr [ %243, %211 ], [ %147, %209 ]
  %213 = phi ptr [ %242, %211 ], [ %143, %209 ]
  %214 = phi i32 [ %241, %211 ], [ 0, %209 ]
  %215 = getelementptr inbounds float, ptr %213, i64 3
  %216 = load float, ptr %215, align 4, !tbaa !49
  %217 = fcmp oeq float %216, 1.000000e+00
  %218 = fcmp oeq float %216, 0.000000e+00
  %219 = or i1 %217, %218
  %220 = fdiv float 1.000000e+00, %216
  %221 = select i1 %218, float 1.000000e+00, float %216
  %222 = select i1 %219, float 1.000000e+00, float %220
  %223 = load float, ptr %213, align 4, !tbaa !49
  %224 = fmul float %223, %222
  %225 = tail call float @linearrgb_to_srgb(float noundef %224) #9
  %226 = fmul float %225, %221
  store float %226, ptr %212, align 4, !tbaa !49
  %227 = getelementptr inbounds float, ptr %213, i64 1
  %228 = load float, ptr %227, align 4, !tbaa !49
  %229 = fmul float %222, %228
  %230 = tail call float @linearrgb_to_srgb(float noundef %229) #9
  %231 = fmul float %221, %230
  %232 = getelementptr inbounds float, ptr %212, i64 1
  store float %231, ptr %232, align 4, !tbaa !49
  %233 = getelementptr inbounds float, ptr %213, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !49
  %235 = fmul float %222, %234
  %236 = tail call float @linearrgb_to_srgb(float noundef %235) #9
  %237 = fmul float %221, %236
  %238 = getelementptr inbounds float, ptr %212, i64 2
  store float %237, ptr %238, align 4, !tbaa !49
  %239 = load float, ptr %215, align 4, !tbaa !49
  %240 = getelementptr inbounds float, ptr %212, i64 3
  store float %239, ptr %240, align 4, !tbaa !49
  %241 = add nuw nsw i32 %214, 1
  %242 = getelementptr inbounds float, ptr %213, i64 4
  %243 = getelementptr inbounds float, ptr %212, i64 4
  %244 = icmp eq i32 %241, %6
  br i1 %244, label %266, label %211, !llvm.loop !94

245:                                              ; preds = %210, %245
  %246 = phi ptr [ %264, %245 ], [ %147, %210 ]
  %247 = phi ptr [ %263, %245 ], [ %143, %210 ]
  %248 = phi i32 [ %262, %245 ], [ 0, %210 ]
  %249 = load float, ptr %247, align 4, !tbaa !49
  %250 = tail call float @linearrgb_to_srgb(float noundef %249) #9
  store float %250, ptr %246, align 4, !tbaa !49
  %251 = getelementptr inbounds float, ptr %247, i64 1
  %252 = load float, ptr %251, align 4, !tbaa !49
  %253 = tail call float @linearrgb_to_srgb(float noundef %252) #9
  %254 = getelementptr inbounds float, ptr %246, i64 1
  store float %253, ptr %254, align 4, !tbaa !49
  %255 = getelementptr inbounds float, ptr %247, i64 2
  %256 = load float, ptr %255, align 4, !tbaa !49
  %257 = tail call float @linearrgb_to_srgb(float noundef %256) #9
  %258 = getelementptr inbounds float, ptr %246, i64 2
  store float %257, ptr %258, align 4, !tbaa !49
  %259 = getelementptr inbounds float, ptr %247, i64 3
  %260 = load float, ptr %259, align 4, !tbaa !49
  %261 = getelementptr inbounds float, ptr %246, i64 3
  store float %260, ptr %261, align 4, !tbaa !49
  %262 = add nuw nsw i32 %248, 1
  %263 = getelementptr inbounds float, ptr %247, i64 4
  %264 = getelementptr inbounds float, ptr %246, i64 4
  %265 = icmp eq i32 %262, %6
  br i1 %265, label %266, label %245, !llvm.loop !95

266:                                              ; preds = %211, %245, %153, %187, %209, %210, %151, %152, %149, %148
  %267 = add nuw nsw i64 %139, 1
  %268 = icmp eq i64 %267, %25
  br i1 %268, label %269, label %138, !llvm.loop !96

269:                                              ; preds = %266, %135, %64, %11, %26, %36, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_buffer_float_from_float_mask(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7) local_unnamed_addr #5 {
  switch i32 %2, label %155 [
    i32 1, label %29
    i32 3, label %19
    i32 4, label %9
  ]

9:                                                ; preds = %8
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %155

11:                                               ; preds = %9
  %12 = shl i32 %6, 2
  %13 = shl i32 %5, 2
  %14 = icmp sgt i32 %3, 0
  %15 = add i32 %3, -1
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = zext nneg i32 %4 to i64
  br label %113

19:                                               ; preds = %8
  %20 = icmp sgt i32 %4, 0
  br i1 %20, label %21, label %155

21:                                               ; preds = %19
  %22 = mul i32 %6, 3
  %23 = shl i32 %5, 2
  %24 = icmp sgt i32 %3, 0
  %25 = add i32 %3, -1
  %26 = zext i32 %25 to i64
  %27 = add nuw nsw i64 %26, 1
  %28 = zext nneg i32 %4 to i64
  br label %73

29:                                               ; preds = %8
  %30 = icmp sgt i32 %4, 0
  br i1 %30, label %31, label %155

31:                                               ; preds = %29
  %32 = shl i32 %5, 2
  %33 = icmp sgt i32 %3, 0
  %34 = add i32 %3, -1
  %35 = zext i32 %34 to i64
  %36 = add nuw nsw i64 %35, 1
  %37 = sext i32 %6 to i64
  %38 = zext nneg i32 %4 to i64
  br label %39

39:                                               ; preds = %31, %69
  %40 = phi i64 [ 0, %31 ], [ %71, %69 ]
  %41 = phi ptr [ %7, %31 ], [ %70, %69 ]
  br i1 %33, label %42, label %69

42:                                               ; preds = %39
  %43 = trunc i64 %40 to i32
  %44 = mul i32 %32, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, ptr %0, i64 %45
  %47 = mul nsw i64 %40, %37
  %48 = getelementptr inbounds float, ptr %1, i64 %47
  br label %49

49:                                               ; preds = %42, %62
  %50 = phi ptr [ %65, %62 ], [ %46, %42 ]
  %51 = phi ptr [ %64, %62 ], [ %48, %42 ]
  %52 = phi i32 [ %63, %62 ], [ 0, %42 ]
  %53 = phi ptr [ %54, %62 ], [ %41, %42 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  %55 = load i8, ptr %53, align 1, !tbaa !53
  %56 = icmp eq i8 %55, 2
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load float, ptr %51, align 4, !tbaa !49
  %59 = getelementptr inbounds float, ptr %50, i64 3
  store float %58, ptr %59, align 4, !tbaa !49
  %60 = getelementptr inbounds float, ptr %50, i64 2
  store float %58, ptr %60, align 4, !tbaa !49
  %61 = getelementptr inbounds float, ptr %50, i64 1
  store float %58, ptr %61, align 4, !tbaa !49
  store float %58, ptr %50, align 4, !tbaa !49
  br label %62

62:                                               ; preds = %49, %57
  %63 = add nuw nsw i32 %52, 1
  %64 = getelementptr inbounds float, ptr %51, i64 1
  %65 = getelementptr inbounds float, ptr %50, i64 4
  %66 = icmp eq i32 %63, %3
  br i1 %66, label %67, label %49, !llvm.loop !97

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %41, i64 %36
  br label %69

69:                                               ; preds = %67, %39
  %70 = phi ptr [ %41, %39 ], [ %68, %67 ]
  %71 = add nuw nsw i64 %40, 1
  %72 = icmp eq i64 %71, %38
  br i1 %72, label %155, label %39, !llvm.loop !98

73:                                               ; preds = %21, %109
  %74 = phi i64 [ 0, %21 ], [ %111, %109 ]
  %75 = phi ptr [ %7, %21 ], [ %110, %109 ]
  br i1 %24, label %76, label %109

76:                                               ; preds = %73
  %77 = trunc i64 %74 to i32
  %78 = mul i32 %23, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %0, i64 %79
  %81 = trunc i64 %74 to i32
  %82 = mul i32 %22, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, ptr %1, i64 %83
  br label %85

85:                                               ; preds = %76, %102
  %86 = phi ptr [ %105, %102 ], [ %80, %76 ]
  %87 = phi ptr [ %104, %102 ], [ %84, %76 ]
  %88 = phi i32 [ %103, %102 ], [ 0, %76 ]
  %89 = phi ptr [ %90, %102 ], [ %75, %76 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  %91 = load i8, ptr %89, align 1, !tbaa !53
  %92 = icmp eq i8 %91, 2
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = load float, ptr %87, align 4, !tbaa !49
  store float %94, ptr %86, align 4, !tbaa !49
  %95 = getelementptr inbounds float, ptr %87, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !49
  %97 = getelementptr inbounds float, ptr %86, i64 1
  store float %96, ptr %97, align 4, !tbaa !49
  %98 = getelementptr inbounds float, ptr %87, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !49
  %100 = getelementptr inbounds float, ptr %86, i64 2
  store float %99, ptr %100, align 4, !tbaa !49
  %101 = getelementptr inbounds float, ptr %86, i64 3
  store float 1.000000e+00, ptr %101, align 4, !tbaa !49
  br label %102

102:                                              ; preds = %85, %93
  %103 = add nuw nsw i32 %88, 1
  %104 = getelementptr inbounds float, ptr %87, i64 3
  %105 = getelementptr inbounds float, ptr %86, i64 4
  %106 = icmp eq i32 %103, %3
  br i1 %106, label %107, label %85, !llvm.loop !99

107:                                              ; preds = %102
  %108 = getelementptr i8, ptr %75, i64 %27
  br label %109

109:                                              ; preds = %107, %73
  %110 = phi ptr [ %75, %73 ], [ %108, %107 ]
  %111 = add nuw nsw i64 %74, 1
  %112 = icmp eq i64 %111, %28
  br i1 %112, label %155, label %73, !llvm.loop !100

113:                                              ; preds = %11, %151
  %114 = phi i64 [ 0, %11 ], [ %153, %151 ]
  %115 = phi ptr [ %7, %11 ], [ %152, %151 ]
  br i1 %14, label %116, label %151

116:                                              ; preds = %113
  %117 = trunc i64 %114 to i32
  %118 = mul i32 %13, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, ptr %0, i64 %119
  %121 = trunc i64 %114 to i32
  %122 = mul i32 %12, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, ptr %1, i64 %123
  br label %125

125:                                              ; preds = %116, %144
  %126 = phi ptr [ %147, %144 ], [ %120, %116 ]
  %127 = phi ptr [ %146, %144 ], [ %124, %116 ]
  %128 = phi i32 [ %145, %144 ], [ 0, %116 ]
  %129 = phi ptr [ %130, %144 ], [ %115, %116 ]
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  %131 = load i8, ptr %129, align 1, !tbaa !53
  %132 = icmp eq i8 %131, 2
  br i1 %132, label %133, label %144

133:                                              ; preds = %125
  %134 = load float, ptr %127, align 4, !tbaa !49
  store float %134, ptr %126, align 4, !tbaa !49
  %135 = getelementptr inbounds float, ptr %127, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !49
  %137 = getelementptr inbounds float, ptr %126, i64 1
  store float %136, ptr %137, align 4, !tbaa !49
  %138 = getelementptr inbounds float, ptr %127, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !49
  %140 = getelementptr inbounds float, ptr %126, i64 2
  store float %139, ptr %140, align 4, !tbaa !49
  %141 = getelementptr inbounds float, ptr %127, i64 3
  %142 = load float, ptr %141, align 4, !tbaa !49
  %143 = getelementptr inbounds float, ptr %126, i64 3
  store float %142, ptr %143, align 4, !tbaa !49
  br label %144

144:                                              ; preds = %125, %133
  %145 = add nuw nsw i32 %128, 1
  %146 = getelementptr inbounds float, ptr %127, i64 4
  %147 = getelementptr inbounds float, ptr %126, i64 4
  %148 = icmp eq i32 %145, %3
  br i1 %148, label %149, label %125, !llvm.loop !101

149:                                              ; preds = %144
  %150 = getelementptr i8, ptr %115, i64 %17
  br label %151

151:                                              ; preds = %149, %113
  %152 = phi ptr [ %115, %113 ], [ %150, %149 ]
  %153 = add nuw nsw i64 %114, 1
  %154 = icmp eq i64 %153, %18
  br i1 %154, label %155, label %113, !llvm.loop !102

155:                                              ; preds = %151, %109, %69, %9, %19, %29, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_buffer_byte_from_byte(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %12, label %138

12:                                               ; preds = %9
  %13 = shl i32 %8, 2
  %14 = shl i32 %7, 2
  %15 = icmp eq i32 %2, %3
  %16 = icmp eq i8 %4, 0
  %17 = icmp sgt i32 %5, 0
  %18 = getelementptr inbounds float, ptr %10, i64 3
  %19 = getelementptr inbounds float, ptr %10, i64 1
  %20 = getelementptr inbounds float, ptr %10, i64 2
  %21 = icmp sgt i32 %5, 0
  %22 = getelementptr inbounds float, ptr %10, i64 1
  %23 = getelementptr inbounds float, ptr %10, i64 2
  %24 = icmp eq i8 %4, 0
  %25 = icmp sgt i32 %5, 0
  %26 = getelementptr inbounds float, ptr %10, i64 3
  %27 = getelementptr inbounds float, ptr %10, i64 1
  %28 = getelementptr inbounds float, ptr %10, i64 2
  %29 = icmp sgt i32 %5, 0
  %30 = getelementptr inbounds float, ptr %10, i64 1
  %31 = getelementptr inbounds float, ptr %10, i64 2
  %32 = sext i32 %5 to i64
  %33 = shl nsw i64 %32, 2
  %34 = zext nneg i32 %6 to i64
  br label %35

35:                                               ; preds = %12, %135
  %36 = phi i64 [ 0, %12 ], [ %136, %135 ]
  %37 = trunc i64 %36 to i32
  %38 = mul i32 %13, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = trunc i64 %36 to i32
  %42 = mul i32 %14, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  br i1 %15, label %45, label %46

45:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %40, i64 %33, i1 false)
  br label %135

46:                                               ; preds = %35
  switch i32 %2, label %135 [
    i32 1, label %47
    i32 2, label %91
  ]

47:                                               ; preds = %46
  br i1 %24, label %49, label %48

48:                                               ; preds = %47
  br i1 %25, label %50, label %135

49:                                               ; preds = %47
  br i1 %29, label %77, label %135

50:                                               ; preds = %48, %50
  %51 = phi ptr [ %75, %50 ], [ %44, %48 ]
  %52 = phi ptr [ %74, %50 ], [ %40, %48 ]
  %53 = phi i32 [ %73, %50 ], [ 0, %48 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %52) #9
  %54 = load float, ptr %26, align 4, !tbaa !49
  %55 = fcmp oeq float %54, 1.000000e+00
  %56 = fcmp oeq float %54, 0.000000e+00
  %57 = or i1 %55, %56
  %58 = fdiv float 1.000000e+00, %54
  %59 = select i1 %56, float 1.000000e+00, float %54
  %60 = select i1 %57, float 1.000000e+00, float %58
  %61 = load float, ptr %10, align 16, !tbaa !49
  %62 = fmul float %61, %60
  %63 = call float @srgb_to_linearrgb(float noundef %62) #9
  %64 = fmul float %63, %59
  store float %64, ptr %10, align 16, !tbaa !49
  %65 = load float, ptr %27, align 4, !tbaa !49
  %66 = fmul float %60, %65
  %67 = call float @srgb_to_linearrgb(float noundef %66) #9
  %68 = fmul float %59, %67
  store float %68, ptr %27, align 4, !tbaa !49
  %69 = load float, ptr %28, align 8, !tbaa !49
  %70 = fmul float %60, %69
  %71 = call float @srgb_to_linearrgb(float noundef %70) #9
  %72 = fmul float %59, %71
  store float %72, ptr %28, align 8, !tbaa !49
  call void @rgba_float_to_uchar(ptr noundef %51, ptr noundef nonnull %10) #9
  %73 = add nuw nsw i32 %53, 1
  %74 = getelementptr inbounds i8, ptr %52, i64 4
  %75 = getelementptr inbounds i8, ptr %51, i64 4
  %76 = icmp eq i32 %73, %5
  br i1 %76, label %135, label %50, !llvm.loop !103

77:                                               ; preds = %49, %77
  %78 = phi ptr [ %89, %77 ], [ %44, %49 ]
  %79 = phi ptr [ %88, %77 ], [ %40, %49 ]
  %80 = phi i32 [ %87, %77 ], [ 0, %49 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %79) #9
  %81 = load float, ptr %10, align 16, !tbaa !49
  %82 = call float @srgb_to_linearrgb(float noundef %81) #9
  store float %82, ptr %10, align 16, !tbaa !49
  %83 = load float, ptr %30, align 4, !tbaa !49
  %84 = call float @srgb_to_linearrgb(float noundef %83) #9
  store float %84, ptr %30, align 4, !tbaa !49
  %85 = load float, ptr %31, align 8, !tbaa !49
  %86 = call float @srgb_to_linearrgb(float noundef %85) #9
  store float %86, ptr %31, align 8, !tbaa !49
  call void @rgba_float_to_uchar(ptr noundef %78, ptr noundef nonnull %10) #9
  %87 = add nuw nsw i32 %80, 1
  %88 = getelementptr inbounds i8, ptr %79, i64 4
  %89 = getelementptr inbounds i8, ptr %78, i64 4
  %90 = icmp eq i32 %87, %5
  br i1 %90, label %135, label %77, !llvm.loop !104

91:                                               ; preds = %46
  br i1 %16, label %93, label %92

92:                                               ; preds = %91
  br i1 %17, label %94, label %135

93:                                               ; preds = %91
  br i1 %21, label %121, label %135

94:                                               ; preds = %92, %94
  %95 = phi ptr [ %119, %94 ], [ %44, %92 ]
  %96 = phi ptr [ %118, %94 ], [ %40, %92 ]
  %97 = phi i32 [ %117, %94 ], [ 0, %92 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %96) #9
  %98 = load float, ptr %18, align 4, !tbaa !49
  %99 = fcmp oeq float %98, 1.000000e+00
  %100 = fcmp oeq float %98, 0.000000e+00
  %101 = or i1 %99, %100
  %102 = fdiv float 1.000000e+00, %98
  %103 = select i1 %100, float 1.000000e+00, float %98
  %104 = select i1 %101, float 1.000000e+00, float %102
  %105 = load float, ptr %10, align 16, !tbaa !49
  %106 = fmul float %105, %104
  %107 = call float @linearrgb_to_srgb(float noundef %106) #9
  %108 = fmul float %107, %103
  store float %108, ptr %10, align 16, !tbaa !49
  %109 = load float, ptr %19, align 4, !tbaa !49
  %110 = fmul float %104, %109
  %111 = call float @linearrgb_to_srgb(float noundef %110) #9
  %112 = fmul float %103, %111
  store float %112, ptr %19, align 4, !tbaa !49
  %113 = load float, ptr %20, align 8, !tbaa !49
  %114 = fmul float %104, %113
  %115 = call float @linearrgb_to_srgb(float noundef %114) #9
  %116 = fmul float %103, %115
  store float %116, ptr %20, align 8, !tbaa !49
  call void @rgba_float_to_uchar(ptr noundef %95, ptr noundef nonnull %10) #9
  %117 = add nuw nsw i32 %97, 1
  %118 = getelementptr inbounds i8, ptr %96, i64 4
  %119 = getelementptr inbounds i8, ptr %95, i64 4
  %120 = icmp eq i32 %117, %5
  br i1 %120, label %135, label %94, !llvm.loop !105

121:                                              ; preds = %93, %121
  %122 = phi ptr [ %133, %121 ], [ %44, %93 ]
  %123 = phi ptr [ %132, %121 ], [ %40, %93 ]
  %124 = phi i32 [ %131, %121 ], [ 0, %93 ]
  call void @rgba_uchar_to_float(ptr noundef nonnull %10, ptr noundef %123) #9
  %125 = load float, ptr %10, align 16, !tbaa !49
  %126 = call float @linearrgb_to_srgb(float noundef %125) #9
  store float %126, ptr %10, align 16, !tbaa !49
  %127 = load float, ptr %22, align 4, !tbaa !49
  %128 = call float @linearrgb_to_srgb(float noundef %127) #9
  store float %128, ptr %22, align 4, !tbaa !49
  %129 = load float, ptr %23, align 8, !tbaa !49
  %130 = call float @linearrgb_to_srgb(float noundef %129) #9
  store float %130, ptr %23, align 8, !tbaa !49
  call void @rgba_float_to_uchar(ptr noundef %122, ptr noundef nonnull %10) #9
  %131 = add nuw nsw i32 %124, 1
  %132 = getelementptr inbounds i8, ptr %123, i64 4
  %133 = getelementptr inbounds i8, ptr %122, i64 4
  %134 = icmp eq i32 %131, %5
  br i1 %134, label %135, label %121, !llvm.loop !106

135:                                              ; preds = %94, %121, %50, %77, %92, %93, %48, %49, %46, %45
  %136 = add nuw nsw i64 %36, 1
  %137 = icmp eq i64 %136, %34
  br i1 %137, label %138, label %35, !llvm.loop !107

138:                                              ; preds = %135, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_rect_from_float(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @imb_addrectImBuf(ptr noundef %0) #9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %14 = load ptr, ptr %13, align 8, !tbaa !109
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #9
  br label %20

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ColorSpace, ptr %14, i64 0, i32 3
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %23 = load ptr, ptr %2, align 8, !tbaa !108
  %24 = tail call ptr %22(ptr noundef %23) #9
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !45
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !110
  %31 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = getelementptr inbounds %struct.ColorSpace, ptr %32, i64 0, i32 3
  tail call void @IMB_colormanagement_transform(ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, ptr noundef %21, ptr noundef nonnull %33, i8 noundef zeroext 1) #9
  %34 = load i32, ptr %29, align 4, !tbaa !110
  %35 = load i32, ptr %25, align 8, !tbaa !44
  %36 = load i32, ptr %27, align 4, !tbaa !45
  tail call void @IMB_unpremultiply_rect_float(ptr noundef %24, i32 noundef %34, i32 noundef %35, i32 noundef %36) #9
  %37 = load ptr, ptr %6, align 8, !tbaa !43
  %38 = load i32, ptr %29, align 4, !tbaa !110
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %40 = load float, ptr %39, align 8, !tbaa !112
  %41 = load i32, ptr %25, align 8, !tbaa !44
  %42 = load i32, ptr %27, align 4, !tbaa !45
  tail call void @IMB_buffer_byte_from_float(ptr noundef %37, ptr noundef %24, i32 noundef %38, float noundef %40, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %41, i32 noundef %42, i32 noundef %41, i32 noundef %41)
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %43(ptr noundef %24) #9
  %44 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %45 = load i32, ptr %44, align 4, !tbaa !113
  %46 = and i32 %45, -9
  store i32 %46, ptr %44, align 4, !tbaa !113
  br label %47

47:                                               ; preds = %9, %1, %20
  ret void
}

declare zeroext i8 @imb_addrectImBuf(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_transform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @IMB_unpremultiply_rect_float(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_partial_rect_from_float(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %11, %10
  br i1 %12, label %72, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @imb_addrectImBuf(ptr noundef %0) #9
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr %8, align 8, !tbaa !108
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = mul nsw i32 %22, %3
  %24 = add nsw i32 %23, %2
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !110
  %27 = mul nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, ptr %20, i64 %28
  %30 = load ptr, ptr %14, align 8, !tbaa !43
  %31 = shl nsw i32 %24, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 %32
  %34 = icmp eq i8 %6, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %19
  tail call void @IMB_buffer_float_from_float(ptr noundef %1, ptr noundef %29, i32 noundef %26, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0, i32 noundef %4, i32 noundef %5, i32 noundef %4, i32 noundef %22)
  %36 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %37 = load float, ptr %36, align 8, !tbaa !112
  %38 = load i32, ptr %21, align 8, !tbaa !44
  tail call void @IMB_buffer_byte_from_float(ptr noundef %33, ptr noundef %29, i32 noundef 4, float noundef %37, i32 noundef 2, i32 noundef 1, i8 noundef zeroext 1, i32 noundef %4, i32 noundef %5, i32 noundef %38, i32 noundef %4)
  br label %68

39:                                               ; preds = %19
  tail call void @IMB_buffer_float_from_float(ptr noundef %1, ptr noundef %29, i32 noundef %26, i32 noundef 2, i32 noundef 1, i8 noundef zeroext 1, i32 noundef %4, i32 noundef %5, i32 noundef %4, i32 noundef %22)
  %40 = mul nsw i32 %5, %4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %39, %61
  %43 = phi ptr [ %62, %61 ], [ %1, %39 ]
  %44 = phi i32 [ %45, %61 ], [ %40, %39 ]
  %45 = add nsw i32 %44, -1
  %46 = getelementptr inbounds float, ptr %43, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !49
  %48 = fcmp oeq float %47, 0.000000e+00
  %49 = fcmp oeq float %47, 1.000000e+00
  %50 = or i1 %48, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %42
  %52 = fdiv float 1.000000e+00, %47
  %53 = load float, ptr %43, align 4, !tbaa !49
  %54 = fmul float %52, %53
  store float %54, ptr %43, align 4, !tbaa !49
  %55 = getelementptr inbounds float, ptr %43, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !49
  %57 = fmul float %52, %56
  store float %57, ptr %55, align 4, !tbaa !49
  %58 = getelementptr inbounds float, ptr %43, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !49
  %60 = fmul float %52, %59
  store float %60, ptr %58, align 4, !tbaa !49
  br label %61

61:                                               ; preds = %51, %42
  %62 = getelementptr inbounds float, ptr %43, i64 4
  %63 = icmp eq i32 %45, 0
  br i1 %63, label %64, label %42, !llvm.loop !114

64:                                               ; preds = %61, %39
  %65 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %66 = load float, ptr %65, align 8, !tbaa !112
  %67 = load i32, ptr %21, align 8, !tbaa !44
  tail call void @IMB_buffer_byte_from_float(ptr noundef %33, ptr noundef %1, i32 noundef 4, float noundef %66, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %4, i32 noundef %5, i32 noundef %67, i32 noundef %4)
  br label %68

68:                                               ; preds = %64, %35
  %69 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %70 = load i32, ptr %69, align 4, !tbaa !113
  %71 = and i32 %70, -9
  store i32 %71, ptr %69, align 4, !tbaa !113
  br label %72

72:                                               ; preds = %7, %68
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_buffer_float_unpremultiply(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = mul nsw i32 %2, %1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %3, %25
  %7 = phi ptr [ %26, %25 ], [ %0, %3 ]
  %8 = phi i32 [ %9, %25 ], [ %4, %3 ]
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds float, ptr %7, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fcmp oeq float %11, 0.000000e+00
  %13 = fcmp oeq float %11, 1.000000e+00
  %14 = or i1 %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %6
  %16 = fdiv float 1.000000e+00, %11
  %17 = load float, ptr %7, align 4, !tbaa !49
  %18 = fmul float %16, %17
  store float %18, ptr %7, align 4, !tbaa !49
  %19 = getelementptr inbounds float, ptr %7, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !49
  %21 = fmul float %16, %20
  store float %21, ptr %19, align 4, !tbaa !49
  %22 = getelementptr inbounds float, ptr %7, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = fmul float %16, %23
  store float %24, ptr %22, align 4, !tbaa !49
  br label %25

25:                                               ; preds = %6, %15
  %26 = getelementptr inbounds float, ptr %7, i64 4
  %27 = icmp eq i32 %9, 0
  br i1 %27, label %28, label %6, !llvm.loop !114

28:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_float_from_rect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !45
  %14 = shl i32 %11, 4
  %15 = mul i32 %14, %13
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  store i32 4, ptr %16, align 4, !tbaa !110
  %17 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !46
  %18 = sext i32 %15 to i64
  %19 = tail call ptr %17(i64 noundef %18, ptr noundef nonnull @.str) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %71, label %21

21:                                               ; preds = %9, %5
  %22 = phi ptr [ %19, %9 ], [ %7, %5 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !45
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  %30 = shl i32 %25, 2
  %31 = icmp sgt i32 %25, 0
  %32 = zext nneg i32 %27 to i64
  br label %33

33:                                               ; preds = %29, %49
  %34 = phi i64 [ 0, %29 ], [ %50, %49 ]
  br i1 %31, label %35, label %49

35:                                               ; preds = %33
  %36 = trunc i64 %34 to i32
  %37 = mul i32 %30, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, ptr %22, i64 %38
  %40 = getelementptr inbounds i8, ptr %23, i64 %38
  br label %41

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %47, %41 ], [ %39, %35 ]
  %43 = phi ptr [ %46, %41 ], [ %40, %35 ]
  %44 = phi i32 [ %45, %41 ], [ 0, %35 ]
  tail call void @rgba_uchar_to_float(ptr noundef %42, ptr noundef %43) #9
  %45 = add nuw nsw i32 %44, 1
  %46 = getelementptr inbounds i8, ptr %43, i64 4
  %47 = getelementptr inbounds float, ptr %42, i64 4
  %48 = icmp eq i32 %45, %25
  br i1 %48, label %49, label %41, !llvm.loop !79

49:                                               ; preds = %41, %33
  %50 = add nuw nsw i64 %34, 1
  %51 = icmp eq i64 %50, %32
  br i1 %51, label %52, label %33, !llvm.loop !85

52:                                               ; preds = %49, %21
  %53 = load i32, ptr %24, align 8, !tbaa !44
  %54 = load i32, ptr %26, align 4, !tbaa !45
  %55 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !110
  %57 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %58 = load ptr, ptr %57, align 8, !tbaa !111
  tail call void @IMB_colormanagement_colorspace_to_scene_linear(ptr noundef nonnull %22, i32 noundef %53, i32 noundef %54, i32 noundef %56, ptr noundef %58, i8 noundef zeroext 0) #9
  %59 = load i32, ptr %55, align 4, !tbaa !110
  %60 = load i32, ptr %24, align 8, !tbaa !44
  %61 = load i32, ptr %26, align 4, !tbaa !45
  tail call void @IMB_premultiply_rect_float(ptr noundef nonnull %22, i32 noundef %59, i32 noundef %60, i32 noundef %61) #9
  %62 = load ptr, ptr %6, align 8, !tbaa !108
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %52
  store ptr %22, ptr %6, align 8, !tbaa !108
  %65 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !115
  %67 = or i32 %66, 32
  store i32 %67, ptr %65, align 4, !tbaa !115
  %68 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !34
  %70 = or i32 %69, 32
  store i32 %70, ptr %68, align 8, !tbaa !34
  br label %71

71:                                               ; preds = %52, %64, %1, %9
  ret void
}

declare void @IMB_colormanagement_colorspace_to_scene_linear(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @IMB_premultiply_rect_float(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_color_to_bw(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %3, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = mul nsw i32 %11, %9
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %7, %14
  %15 = phi i32 [ %25, %14 ], [ %12, %7 ]
  %16 = phi ptr [ %26, %14 ], [ %3, %7 ]
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = getelementptr inbounds float, ptr %16, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !49
  %20 = fmul float %19, 0x3FE28F5C20000000
  %21 = tail call float @llvm.fmuladd.f32(float %17, float 0x3FD3333340000000, float %20)
  %22 = getelementptr inbounds float, ptr %16, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 0x3FBEB851E0000000, float %21)
  store float %24, ptr %22, align 4, !tbaa !49
  store float %24, ptr %18, align 4, !tbaa !49
  store float %24, ptr %16, align 4, !tbaa !49
  %25 = add nsw i32 %15, -1
  %26 = getelementptr inbounds float, ptr %16, i64 4
  %27 = icmp sgt i32 %15, 1
  br i1 %27, label %14, label %28, !llvm.loop !116

28:                                               ; preds = %14, %7, %1
  %29 = icmp eq ptr %5, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !45
  %35 = mul nsw i32 %34, %32
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30, %37
  %38 = phi i32 [ %55, %37 ], [ %35, %30 ]
  %39 = phi ptr [ %56, %37 ], [ %5, %30 ]
  %40 = load i8, ptr %39, align 1, !tbaa !53
  %41 = zext i8 %40 to i32
  %42 = mul nuw nsw i32 %41, 76
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !53
  %45 = zext i8 %44 to i32
  %46 = mul nuw nsw i32 %45, 148
  %47 = add nuw nsw i32 %46, %42
  %48 = getelementptr inbounds i8, ptr %39, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !53
  %50 = zext i8 %49 to i32
  %51 = mul nuw nsw i32 %50, 31
  %52 = add nuw nsw i32 %47, %51
  %53 = udiv i32 %52, 255
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %48, align 1, !tbaa !53
  store i8 %54, ptr %43, align 1, !tbaa !53
  store i8 %54, ptr %39, align 1, !tbaa !53
  %55 = add nsw i32 %38, -1
  %56 = getelementptr inbounds i8, ptr %39, i64 4
  %57 = icmp sgt i32 %38, 1
  br i1 %57, label %37, label %58, !llvm.loop !117

58:                                               ; preds = %37, %30, %28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @IMB_buffer_float_clamp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = shl i32 %1, 2
  %5 = mul i32 %4, %2
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %11 = getelementptr inbounds float, ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fcmp ogt float %12, 1.000000e+00
  %14 = select i1 %13, float 1.000000e+00, float %12
  store float %14, ptr %11, align 4, !tbaa !49
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !118

17:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_buffer_float_premultiply(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = mul nsw i32 %2, %1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %20, %6 ], [ %0, %3 ]
  %8 = phi i32 [ %9, %6 ], [ %4, %3 ]
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds float, ptr %7, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = load float, ptr %7, align 4, !tbaa !49
  %13 = fmul float %11, %12
  store float %13, ptr %7, align 4, !tbaa !49
  %14 = getelementptr inbounds float, ptr %7, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = fmul float %11, %15
  store float %16, ptr %14, align 4, !tbaa !49
  %17 = getelementptr inbounds float, ptr %7, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = fmul float %11, %18
  store float %19, ptr %17, align 4, !tbaa !49
  %20 = getelementptr inbounds float, ptr %7, i64 4
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %6, !llvm.loop !119

22:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_saturation(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %9 = icmp eq ptr %6, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
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
  call void @rgb_uchar_to_float(ptr noundef nonnull %4, ptr noundef nonnull %23) #9
  call void @rgb_to_hsv_v(ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %25 = load float, ptr %3, align 4, !tbaa !49
  %26 = load float, ptr %18, align 4, !tbaa !49
  %27 = fmul float %26, %1
  %28 = load float, ptr %19, align 4, !tbaa !49
  call void @hsv_to_rgb(float noundef %25, float noundef %27, float noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %20, ptr noundef nonnull %21) #9
  call void @rgb_float_to_uchar(ptr noundef nonnull %23, ptr noundef nonnull %4) #9
  %29 = add nsw i32 %24, -1
  %30 = getelementptr inbounds i8, ptr %23, i64 4
  %31 = icmp sgt i32 %24, 1
  br i1 %31, label %22, label %32, !llvm.loop !120

32:                                               ; preds = %22, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
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
  call void @rgb_to_hsv_v(ptr noundef nonnull %46, ptr noundef nonnull %3) #9
  %48 = load float, ptr %3, align 4, !tbaa !49
  %49 = load float, ptr %43, align 4, !tbaa !49
  %50 = fmul float %49, %1
  %51 = load float, ptr %44, align 4, !tbaa !49
  %52 = getelementptr inbounds float, ptr %46, i64 1
  %53 = getelementptr inbounds float, ptr %46, i64 2
  call void @hsv_to_rgb(float noundef %48, float noundef %50, float noundef %51, ptr noundef nonnull %46, ptr noundef nonnull %52, ptr noundef nonnull %53) #9
  %54 = add nsw i32 %47, -1
  %55 = getelementptr inbounds float, ptr %46, i64 4
  %56 = icmp sgt i32 %47, 1
  br i1 %56, label %45, label %57, !llvm.loop !121

57:                                               ; preds = %45, %35, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret void
}

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
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
!46 = !{!36, !36, i64 0}
!47 = !{!48, !40, i64 0}
!48 = !{!"DitherContext", !40, i64 0}
!49 = !{!40, !40, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!37, !37, i64 0}
!54 = distinct !{!54, !51, !52}
!55 = distinct !{!55, !51, !52}
!56 = distinct !{!56, !51, !52}
!57 = distinct !{!57, !51, !52}
!58 = distinct !{!58, !51, !52}
!59 = distinct !{!59, !51, !52}
!60 = distinct !{!60, !51, !52}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !37, i64 0}
!63 = distinct !{!63, !51, !52}
!64 = distinct !{!64, !51, !52}
!65 = distinct !{!65, !51, !52}
!66 = distinct !{!66, !51, !52}
!67 = distinct !{!67, !51, !52}
!68 = distinct !{!68, !51, !52}
!69 = distinct !{!69, !51, !52}
!70 = distinct !{!70, !51, !52}
!71 = distinct !{!71, !51, !52}
!72 = distinct !{!72, !51, !52}
!73 = distinct !{!73, !51, !52}
!74 = distinct !{!74, !51, !52}
!75 = distinct !{!75, !51, !52}
!76 = distinct !{!76, !51, !52}
!77 = distinct !{!77, !51, !52}
!78 = distinct !{!78, !51, !52}
!79 = distinct !{!79, !51, !52}
!80 = distinct !{!80, !51, !52}
!81 = distinct !{!81, !51, !52}
!82 = distinct !{!82, !51, !52}
!83 = distinct !{!83, !51, !52}
!84 = distinct !{!84, !51, !52}
!85 = distinct !{!85, !51, !52}
!86 = distinct !{!86, !51, !52}
!87 = distinct !{!87, !51, !52}
!88 = distinct !{!88, !51, !52}
!89 = distinct !{!89, !51, !52}
!90 = distinct !{!90, !51, !52}
!91 = distinct !{!91, !51, !52}
!92 = distinct !{!92, !51, !52}
!93 = distinct !{!93, !51, !52}
!94 = distinct !{!94, !51, !52}
!95 = distinct !{!95, !51, !52}
!96 = distinct !{!96, !51, !52}
!97 = distinct !{!97, !51, !52}
!98 = distinct !{!98, !51, !52}
!99 = distinct !{!99, !51, !52}
!100 = distinct !{!100, !51, !52}
!101 = distinct !{!101, !51, !52}
!102 = distinct !{!102, !51, !52}
!103 = distinct !{!103, !51, !52}
!104 = distinct !{!104, !51, !52}
!105 = distinct !{!105, !51, !52}
!106 = distinct !{!106, !51, !52}
!107 = distinct !{!107, !51, !52}
!108 = !{!35, !36, i64 48}
!109 = !{!35, !36, i64 2408}
!110 = !{!35, !39, i64 28}
!111 = !{!35, !36, i64 2400}
!112 = !{!35, !40, i64 112}
!113 = !{!35, !39, i64 292}
!114 = distinct !{!114, !51, !52}
!115 = !{!35, !39, i64 36}
!116 = distinct !{!116, !51, !52}
!117 = distinct !{!117, !51, !52}
!118 = distinct !{!118, !51, !52}
!119 = distinct !{!119, !51, !52}
!120 = distinct !{!120, !51, !52}
!121 = distinct !{!121, !51, !52}
