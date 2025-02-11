; ModuleID = 'magick/quantum-export.c'
source_filename = "magick/quantum-export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._QuantumInfo = type { i64, i64, i32, double, double, double, i64, i32, i32, i32, i64, ptr, i64, i32, %struct._QuantumState, ptr, i64 }
%struct._QuantumState = type { double, i32, i64, ptr }

@.str = private unnamed_addr constant [24 x i8] c"magick/quantum-export.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ColormappedImageRequired\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @ExportQuantumPixels(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noalias noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3194, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #10
  br label %13

13:                                               ; preds = %10, %6
  %14 = icmp eq ptr %4, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call ptr @GetQuantumPixels(ptr noundef %2) #10
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ %4, %13 ]
  %19 = icmp eq ptr %1, null
  %20 = getelementptr inbounds %struct._QuantumInfo, ptr %2, i64 0, i32 9
  br i1 %19, label %21, label %27

21:                                               ; preds = %17
  %22 = tail call i64 @GetImageExtent(ptr noundef nonnull %0) #10
  %23 = tail call ptr @GetVirtualPixelQueue(ptr noundef nonnull %0) #10
  %24 = tail call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #10
  %25 = load i32, ptr %20, align 8, !tbaa !24
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %33, label %72

27:                                               ; preds = %17
  %28 = tail call i64 @GetCacheViewExtent(ptr noundef nonnull %1) #10
  %29 = tail call ptr @GetCacheViewVirtualPixelQueue(ptr noundef nonnull %1) #11
  %30 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef nonnull %1) #10
  %31 = load i32, ptr %20, align 8, !tbaa !24
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %35, label %72

33:                                               ; preds = %21
  %34 = tail call ptr @GetAuthenticPixelQueue(ptr noundef nonnull %0) #10
  br label %38

35:                                               ; preds = %27
  %36 = tail call ptr @GetAuthenticPixelQueue(ptr noundef nonnull %0) #10
  %37 = tail call ptr @GetCacheViewVirtualPixelQueue(ptr noundef nonnull %1) #11
  br label %38

38:                                               ; preds = %33, %35
  %39 = phi ptr [ %29, %35 ], [ %23, %33 ]
  %40 = phi ptr [ %30, %35 ], [ %24, %33 ]
  %41 = phi i64 [ %28, %35 ], [ %22, %33 ]
  %42 = phi ptr [ %37, %35 ], [ %34, %33 ]
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !27
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %38, %46
  %47 = phi ptr [ %69, %46 ], [ %42, %38 ]
  %48 = phi i64 [ %70, %46 ], [ 0, %38 ]
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 0, i32 3
  %50 = load i16, ptr %49, align 2, !tbaa !28
  %51 = xor i16 %50, -1
  %52 = uitofp i16 %51 to double
  %53 = fmul double %52, 0x3EF0001000100010
  %54 = fptrunc double %53 to float
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 0, i32 2
  %56 = load i16, ptr %55, align 2, !tbaa !29
  %57 = uitofp i16 %56 to float
  %58 = fmul float %57, %54
  %59 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %58) #12
  store i16 %59, ptr %55, align 2, !tbaa !29
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 0, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !30
  %62 = uitofp i16 %61 to float
  %63 = fmul float %54, %62
  %64 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %63) #12
  store i16 %64, ptr %60, align 2, !tbaa !30
  %65 = load i16, ptr %47, align 2, !tbaa !31
  %66 = uitofp i16 %65 to float
  %67 = fmul float %54, %66
  %68 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %67) #12
  store i16 %68, ptr %47, align 2, !tbaa !31
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 1
  %70 = add nuw nsw i64 %48, 1
  %71 = icmp eq i64 %70, %44
  br i1 %71, label %72, label %46, !llvm.loop !32

72:                                               ; preds = %46, %38, %27, %21
  %73 = phi i64 [ %28, %27 ], [ %22, %21 ], [ %41, %38 ], [ %41, %46 ]
  %74 = phi ptr [ %30, %27 ], [ %24, %21 ], [ %40, %38 ], [ %40, %46 ]
  %75 = phi ptr [ %29, %27 ], [ %23, %21 ], [ %39, %38 ], [ %39, %46 ]
  switch i32 %3, label %92 [
    i32 27, label %76
    i32 25, label %76
    i32 17, label %76
  ]

76:                                               ; preds = %72, %72, %72
  %77 = tail call ptr @GetAuthenticPixelQueue(ptr noundef nonnull %0) #10
  br i1 %19, label %80, label %78

78:                                               ; preds = %76
  %79 = tail call ptr @GetCacheViewVirtualPixelQueue(ptr noundef nonnull %1) #11
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %79, %78 ], [ %77, %76 ]
  %82 = icmp sgt i64 %73, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80, %83
  %84 = phi ptr [ %89, %83 ], [ %81, %80 ]
  %85 = phi i64 [ %90, %83 ], [ 0, %80 ]
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %87 = load i16, ptr %86, align 2, !tbaa !28
  %88 = xor i16 %87, -1
  store i16 %88, ptr %86, align 2, !tbaa !28
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 1
  %90 = add nuw nsw i64 %85, 1
  %91 = icmp eq i64 %90, %73
  br i1 %91, label %92, label %83, !llvm.loop !34

92:                                               ; preds = %83, %80, %72
  %93 = add i32 %3, -23
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %0) #10
  br i1 %19, label %99, label %97

97:                                               ; preds = %95
  %98 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %0) #10
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi ptr [ %98, %97 ], [ %96, %95 ]
  %101 = icmp sgt i64 %73, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99, %102
  %103 = phi ptr [ %108, %102 ], [ %100, %99 ]
  %104 = phi i64 [ %109, %102 ], [ 0, %99 ]
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 1
  %106 = load <2 x i16>, ptr %105, align 2, !tbaa !35
  %107 = shufflevector <2 x i16> %106, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %107, ptr %105, align 2, !tbaa !35
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %109 = add nuw nsw i64 %104, 1
  %110 = icmp eq i64 %109, %73
  br i1 %110, label %111, label %102, !llvm.loop !36

111:                                              ; preds = %102, %99, %92
  tail call void @ResetQuantumState(ptr noundef %2) #10
  %112 = tail call i64 @GetQuantumExtent(ptr noundef %0, ptr noundef %2, i32 noundef %3) #10
  switch i32 %3, label %130 [
    i32 1, label %113
    i32 26, label %114
    i32 16, label %115
    i32 27, label %115
    i32 2, label %116
    i32 3, label %117
    i32 19, label %117
    i32 22, label %118
    i32 5, label %119
    i32 4, label %120
    i32 25, label %120
    i32 8, label %121
    i32 7, label %122
    i32 9, label %123
    i32 12, label %123
    i32 11, label %124
    i32 10, label %125
    i32 13, label %126
    i32 14, label %127
    i32 6, label %127
    i32 18, label %128
    i32 23, label %128
    i32 15, label %129
    i32 17, label %129
    i32 24, label %129
  ]

113:                                              ; preds = %111
  tail call fastcc void @ExportAlphaQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %164

114:                                              ; preds = %111
  tail call fastcc void @ExportBGRQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %164

115:                                              ; preds = %111, %111
  tail call fastcc void @ExportBGRAQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %130

116:                                              ; preds = %111
  tail call fastcc void @ExportBlackQuantum(ptr noundef %0, ptr noundef %2, i64 noundef %73, ptr noundef %74, ptr noundef %18, ptr noundef %5) #12
  br label %164

117:                                              ; preds = %111, %111
  tail call fastcc void @ExportBlueQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %147

118:                                              ; preds = %111
  tail call fastcc void @ExportCbYCrYQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %164

119:                                              ; preds = %111
  tail call fastcc void @ExportCMYKQuantum(ptr noundef %0, ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %74, ptr noundef %18, ptr noundef %5) #12
  br label %164

120:                                              ; preds = %111, %111
  tail call fastcc void @ExportCMYKAQuantum(ptr noundef %0, ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %74, ptr noundef %18, ptr noundef %5) #12
  br label %130

121:                                              ; preds = %111
  tail call fastcc void @ExportGrayQuantum(ptr noundef %0, ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %164

122:                                              ; preds = %111
  tail call fastcc void @ExportGrayAlphaQuantum(ptr noundef %0, ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %164

123:                                              ; preds = %111, %111
  tail call fastcc void @ExportGreenQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %147

124:                                              ; preds = %111
  tail call fastcc void @ExportIndexQuantum(ptr noundef %0, ptr noundef %2, i64 noundef %73, ptr noundef %74, ptr noundef %18, ptr noundef %5) #12
  br label %164

125:                                              ; preds = %111
  tail call fastcc void @ExportIndexAlphaQuantum(ptr noundef %0, ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %74, ptr noundef %18, ptr noundef %5) #12
  br label %164

126:                                              ; preds = %111
  tail call fastcc void @ExportOpacityQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %164

127:                                              ; preds = %111, %111
  tail call fastcc void @ExportRedQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %147

128:                                              ; preds = %111, %111
  tail call fastcc void @ExportRGBQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %130

129:                                              ; preds = %111, %111, %111
  tail call fastcc void @ExportRGBAQuantum(ptr noundef %2, i64 noundef %73, ptr noundef %75, ptr noundef %18) #12
  br label %130

130:                                              ; preds = %111, %129, %128, %120, %115
  br i1 %94, label %131, label %147

131:                                              ; preds = %130
  %132 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %0) #10
  br i1 %19, label %135, label %133

133:                                              ; preds = %131
  %134 = tail call ptr @GetCacheViewVirtualPixelQueue(ptr noundef nonnull %1) #11
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi ptr [ %134, %133 ], [ %132, %131 ]
  %137 = icmp sgt i64 %73, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %135, %138
  %139 = phi ptr [ %144, %138 ], [ %136, %135 ]
  %140 = phi i64 [ %145, %138 ], [ 0, %135 ]
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 0, i32 1
  %142 = load <2 x i16>, ptr %141, align 2, !tbaa !35
  %143 = shufflevector <2 x i16> %142, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %143, ptr %141, align 2, !tbaa !35
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 1
  %145 = add nuw nsw i64 %140, 1
  %146 = icmp eq i64 %145, %73
  br i1 %146, label %147, label %138, !llvm.loop !37

147:                                              ; preds = %138, %135, %117, %123, %127, %130
  switch i32 %3, label %164 [
    i32 27, label %148
    i32 25, label %148
    i32 17, label %148
  ]

148:                                              ; preds = %147, %147, %147
  %149 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %0) #10
  br i1 %19, label %152, label %150

150:                                              ; preds = %148
  %151 = tail call ptr @GetCacheViewVirtualPixelQueue(ptr noundef nonnull %1) #11
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi ptr [ %151, %150 ], [ %149, %148 ]
  %154 = icmp sgt i64 %73, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %152, %155
  %156 = phi ptr [ %161, %155 ], [ %153, %152 ]
  %157 = phi i64 [ %162, %155 ], [ 0, %152 ]
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 0, i32 3
  %159 = load i16, ptr %158, align 2, !tbaa !28
  %160 = xor i16 %159, -1
  store i16 %160, ptr %158, align 2, !tbaa !28
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 1
  %162 = add nuw nsw i64 %157, 1
  %163 = icmp eq i64 %162, %73
  br i1 %163, label %164, label %155, !llvm.loop !38

164:                                              ; preds = %155, %152, %126, %125, %124, %122, %121, %119, %118, %116, %114, %113, %147
  ret i64 %112
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetQuantumPixels(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetImageExtent(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualPixelQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetCacheViewExtent(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixelQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetAuthenticPixelQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #4 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 6.553500e+04
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = fadd float %0, 5.000000e-01
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %3, %1, %5
  %9 = phi i16 [ %7, %5 ], [ 0, %1 ], [ -1, %3 ]
  ret i16 %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare hidden void @ResetQuantumState(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetQuantumExtent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportAlphaQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !39
  %6 = add i64 %5, -8
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 61)
  switch i64 %7, label %134 [
    i64 0, label %8
    i64 1, label %26
    i64 3, label %71
    i64 7, label %112
  ]

8:                                                ; preds = %4
  %9 = icmp sgt i64 %1, 0
  br i1 %9, label %10, label %153

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %2, %10 ], [ %21, %12 ]
  %14 = phi ptr [ %3, %10 ], [ %23, %12 ]
  %15 = phi i64 [ 0, %10 ], [ %24, %12 ]
  %16 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !28
  %18 = xor i16 %17, -1
  %19 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %18) #12
  %20 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %19, ptr noundef %14) #12
  %21 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 1
  %22 = load i64, ptr %11, align 8, !tbaa !40
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, %1
  br i1 %25, label %153, label %12, !llvm.loop !41

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !42
  %29 = icmp eq i32 %28, 1
  %30 = icmp sgt i64 %1, 0
  br i1 %29, label %35, label %31

31:                                               ; preds = %26
  br i1 %30, label %32, label %153

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %34 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %57

35:                                               ; preds = %26
  br i1 %30, label %36, label %153

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %38 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %2, %36 ], [ %52, %39 ]
  %41 = phi ptr [ %3, %36 ], [ %54, %39 ]
  %42 = phi i64 [ 0, %36 ], [ %55, %39 ]
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %40, i64 0, i32 3
  %44 = load i16, ptr %43, align 2, !tbaa !28
  %45 = xor i16 %44, -1
  %46 = uitofp i16 %45 to double
  %47 = fmul double %46, 0x3EF0001000100010
  %48 = fptrunc double %47 to float
  %49 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %48) #12
  %50 = load i32, ptr %37, align 8, !tbaa !43
  %51 = tail call fastcc ptr @PopShortPixel(i32 noundef %50, i16 noundef zeroext %49, ptr noundef %41) #12
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %40, i64 1
  %53 = load i64, ptr %38, align 8, !tbaa !40
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  %55 = add nuw nsw i64 %42, 1
  %56 = icmp eq i64 %55, %1
  br i1 %56, label %153, label %39, !llvm.loop !44

57:                                               ; preds = %32, %57
  %58 = phi ptr [ %2, %32 ], [ %66, %57 ]
  %59 = phi ptr [ %3, %32 ], [ %68, %57 ]
  %60 = phi i64 [ 0, %32 ], [ %69, %57 ]
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  %62 = load i16, ptr %61, align 2, !tbaa !28
  %63 = xor i16 %62, -1
  %64 = load i32, ptr %33, align 8, !tbaa !43
  %65 = tail call fastcc ptr @PopShortPixel(i32 noundef %64, i16 noundef zeroext %63, ptr noundef %59) #12
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %67 = load i64, ptr %34, align 8, !tbaa !40
  %68 = getelementptr inbounds i8, ptr %65, i64 %67
  %69 = add nuw nsw i64 %60, 1
  %70 = icmp eq i64 %69, %1
  br i1 %70, label %153, label %57, !llvm.loop !45

71:                                               ; preds = %4
  %72 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !42
  %74 = icmp eq i32 %73, 1
  %75 = icmp sgt i64 %1, 0
  br i1 %74, label %80, label %76

76:                                               ; preds = %71
  br i1 %75, label %77, label %153

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %79 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %97

80:                                               ; preds = %71
  br i1 %75, label %81, label %153

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %83

83:                                               ; preds = %81, %83
  %84 = phi ptr [ %2, %81 ], [ %92, %83 ]
  %85 = phi ptr [ %3, %81 ], [ %94, %83 ]
  %86 = phi i64 [ 0, %81 ], [ %95, %83 ]
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %88 = load i16, ptr %87, align 2, !tbaa !28
  %89 = xor i16 %88, -1
  %90 = uitofp i16 %89 to float
  %91 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %90, ptr noundef %85) #12
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 1
  %93 = load i64, ptr %82, align 8, !tbaa !40
  %94 = getelementptr inbounds i8, ptr %91, i64 %93
  %95 = add nuw nsw i64 %86, 1
  %96 = icmp eq i64 %95, %1
  br i1 %96, label %153, label %83, !llvm.loop !46

97:                                               ; preds = %77, %97
  %98 = phi ptr [ %2, %77 ], [ %107, %97 ]
  %99 = phi ptr [ %3, %77 ], [ %109, %97 ]
  %100 = phi i64 [ 0, %77 ], [ %110, %97 ]
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  %102 = load i16, ptr %101, align 2, !tbaa !28
  %103 = xor i16 %102, -1
  %104 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %103) #12
  %105 = load i32, ptr %78, align 8, !tbaa !43
  %106 = tail call fastcc ptr @PopLongPixel(i32 noundef %105, i32 noundef %104, ptr noundef %99) #12
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 1
  %108 = load i64, ptr %79, align 8, !tbaa !40
  %109 = getelementptr inbounds i8, ptr %106, i64 %108
  %110 = add nuw nsw i64 %100, 1
  %111 = icmp eq i64 %110, %1
  br i1 %111, label %153, label %97, !llvm.loop !47

112:                                              ; preds = %4
  %113 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !42
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = icmp sgt i64 %1, 0
  br i1 %117, label %118, label %153

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi ptr [ %2, %118 ], [ %129, %120 ]
  %122 = phi ptr [ %3, %118 ], [ %131, %120 ]
  %123 = phi i64 [ 0, %118 ], [ %132, %120 ]
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %121, i64 0, i32 3
  %125 = load i16, ptr %124, align 2, !tbaa !28
  %126 = xor i16 %125, -1
  %127 = uitofp i16 %126 to double
  %128 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %127, ptr noundef %122) #12
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %121, i64 1
  %130 = load i64, ptr %119, align 8, !tbaa !40
  %131 = getelementptr inbounds i8, ptr %128, i64 %130
  %132 = add nuw nsw i64 %123, 1
  %133 = icmp eq i64 %132, %1
  br i1 %133, label %153, label %120, !llvm.loop !48

134:                                              ; preds = %112, %4
  %135 = tail call fastcc i64 @GetQuantumRange(i64 noundef %5) #12
  %136 = icmp sgt i64 %1, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %139

139:                                              ; preds = %137, %139
  %140 = phi ptr [ %2, %137 ], [ %148, %139 ]
  %141 = phi ptr [ %3, %137 ], [ %150, %139 ]
  %142 = phi i64 [ 0, %137 ], [ %151, %139 ]
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %140, i64 0, i32 3
  %144 = load i16, ptr %143, align 2, !tbaa !28
  %145 = xor i16 %144, -1
  %146 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %145, i64 noundef %135) #12
  %147 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %146, ptr noundef %141) #12
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %140, i64 1
  %149 = load i64, ptr %138, align 8, !tbaa !40
  %150 = getelementptr inbounds i8, ptr %147, i64 %149
  %151 = add nuw nsw i64 %142, 1
  %152 = icmp eq i64 %151, %1
  br i1 %152, label %153, label %139, !llvm.loop !49

153:                                              ; preds = %120, %97, %83, %57, %39, %12, %139, %116, %76, %80, %31, %35, %8, %134
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportBGRQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef readonly %2, ptr noalias noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !39
  switch i64 %5, label %410 [
    i64 8, label %6
    i64 10, label %30
    i64 12, label %122
    i64 16, label %262
    i64 32, label %327
    i64 64, label %382
  ]

6:                                                ; preds = %4
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %8, label %435

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %2, %8 ], [ %25, %10 ]
  %12 = phi i64 [ 0, %8 ], [ %28, %10 ]
  %13 = phi ptr [ %3, %8 ], [ %27, %10 ]
  %14 = load i16, ptr %11, align 2, !tbaa !31
  %15 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %14) #12
  %16 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %15, ptr noundef %13) #12
  %17 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !30
  %19 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %18) #12
  %20 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %19, ptr noundef nonnull %16) #12
  %21 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !29
  %23 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %22) #12
  %24 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %23, ptr noundef nonnull %20) #12
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 1
  %26 = load i64, ptr %9, align 8, !tbaa !40
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  %28 = add nuw nsw i64 %12, 1
  %29 = icmp eq i64 %28, %1
  br i1 %29, label %435, label %10, !llvm.loop !50

30:                                               ; preds = %4
  %31 = tail call fastcc i64 @GetQuantumRange(i64 noundef 10) #12
  %32 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !51
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = icmp sgt i64 %1, 0
  br i1 %36, label %37, label %435

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %39 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %2, %37 ], [ %60, %40 ]
  %42 = phi i64 [ 0, %37 ], [ %63, %40 ]
  %43 = phi ptr [ %3, %37 ], [ %62, %40 ]
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 0, i32 2
  %45 = load i16, ptr %44, align 2, !tbaa !29
  %46 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %45, i64 noundef %31) #12
  %47 = shl i64 %46, 22
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 0, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !30
  %50 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %49, i64 noundef %31) #12
  %51 = shl i64 %50, 12
  %52 = or i64 %51, %47
  %53 = load i16, ptr %41, align 2, !tbaa !31
  %54 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %53, i64 noundef %31) #12
  %55 = shl i64 %54, 2
  %56 = or i64 %52, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %38, align 8, !tbaa !43
  %59 = tail call fastcc ptr @PopLongPixel(i32 noundef %58, i32 noundef %57, ptr noundef %43) #12
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 1
  %61 = load i64, ptr %39, align 8, !tbaa !40
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  %63 = add nuw nsw i64 %42, 1
  %64 = icmp eq i64 %63, %1
  br i1 %64, label %435, label %40, !llvm.loop !52

65:                                               ; preds = %30
  %66 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !53
  %68 = icmp eq i64 %67, 32
  %69 = icmp sgt i64 %1, 0
  br i1 %68, label %73, label %70

70:                                               ; preds = %65
  br i1 %69, label %71, label %435

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %99

73:                                               ; preds = %65
  br i1 %69, label %74, label %435

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi ptr [ %2, %74 ], [ %94, %76 ]
  %78 = phi i64 [ 0, %74 ], [ %97, %76 ]
  %79 = phi ptr [ %3, %74 ], [ %96, %76 ]
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !29
  %82 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %81, i64 noundef %31) #12
  %83 = and i64 %82, 4294967295
  %84 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %83, ptr noundef %79) #12
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 1
  %86 = load i16, ptr %85, align 2, !tbaa !30
  %87 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %86, i64 noundef %31) #12
  %88 = and i64 %87, 4294967295
  %89 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %88, ptr noundef %84) #12
  %90 = load i16, ptr %77, align 2, !tbaa !31
  %91 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %90, i64 noundef %31) #12
  %92 = and i64 %91, 4294967295
  %93 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %92, ptr noundef %89) #12
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1
  %95 = load i64, ptr %75, align 8, !tbaa !40
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  %97 = add nuw nsw i64 %78, 1
  %98 = icmp eq i64 %97, %1
  br i1 %98, label %435, label %76, !llvm.loop !54

99:                                               ; preds = %71, %99
  %100 = phi ptr [ %2, %71 ], [ %117, %99 ]
  %101 = phi i64 [ 0, %71 ], [ %120, %99 ]
  %102 = phi ptr [ %3, %71 ], [ %119, %99 ]
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %104 = load i16, ptr %103, align 2, !tbaa !29
  %105 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %104, i64 noundef %31) #12
  %106 = and i64 %105, 4294967295
  %107 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %106, ptr noundef %102) #12
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !30
  %110 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %109, i64 noundef %31) #12
  %111 = and i64 %110, 4294967295
  %112 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %111, ptr noundef %107) #12
  %113 = load i16, ptr %100, align 2, !tbaa !31
  %114 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %113, i64 noundef %31) #12
  %115 = and i64 %114, 4294967295
  %116 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %115, ptr noundef %112) #12
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 1
  %118 = load i64, ptr %72, align 8, !tbaa !40
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  %120 = add nuw nsw i64 %101, 1
  %121 = icmp eq i64 %120, %1
  br i1 %121, label %435, label %99, !llvm.loop !55

122:                                              ; preds = %4
  %123 = tail call fastcc i64 @GetQuantumRange(i64 noundef 12) #12
  %124 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %125 = load i32, ptr %124, align 4, !tbaa !51
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %205

127:                                              ; preds = %122
  %128 = mul i64 %1, 3
  %129 = add i64 %128, -1
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %133 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %144

134:                                              ; preds = %182
  %135 = urem i64 %191, 3
  br label %136

136:                                              ; preds = %134, %127
  %137 = phi ptr [ %3, %127 ], [ %190, %134 ]
  %138 = phi i64 [ 0, %127 ], [ %135, %134 ]
  %139 = phi ptr [ %2, %127 ], [ %184, %134 ]
  %140 = and i64 %128, 1
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %435, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  switch i64 %138, label %193 [
    i64 2, label %197
    i64 1, label %195
  ]

144:                                              ; preds = %131, %182
  %145 = phi ptr [ %2, %131 ], [ %184, %182 ]
  %146 = phi i64 [ 0, %131 ], [ %191, %182 ]
  %147 = phi ptr [ %3, %131 ], [ %190, %182 ]
  %148 = urem i64 %146, 3
  switch i64 %148, label %149 [
    i64 2, label %157
    i64 1, label %153
  ]

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 0, i32 2
  %151 = load i16, ptr %150, align 2, !tbaa !29
  %152 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %151, i64 noundef %123) #12
  br label %161

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 0, i32 1
  %155 = load i16, ptr %154, align 2, !tbaa !30
  %156 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %155, i64 noundef %123) #12
  br label %161

157:                                              ; preds = %144
  %158 = load i16, ptr %145, align 2, !tbaa !31
  %159 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %158, i64 noundef %123) #12
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 1
  br label %161

161:                                              ; preds = %157, %153, %149
  %162 = phi i64 [ %152, %149 ], [ %156, %153 ], [ %159, %157 ]
  %163 = phi ptr [ %145, %149 ], [ %145, %153 ], [ %160, %157 ]
  %164 = trunc i64 %162 to i16
  %165 = load i32, ptr %132, align 8, !tbaa !43
  %166 = shl i16 %164, 4
  %167 = tail call fastcc ptr @PopShortPixel(i32 noundef %165, i16 noundef zeroext %166, ptr noundef %147) #12
  %168 = or disjoint i64 %146, 1
  %169 = urem i64 %168, 3
  switch i64 %169, label %170 [
    i64 2, label %178
    i64 1, label %174
  ]

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 0, i32 2
  %172 = load i16, ptr %171, align 2, !tbaa !29
  %173 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %172, i64 noundef %123) #12
  br label %182

174:                                              ; preds = %161
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 0, i32 1
  %176 = load i16, ptr %175, align 2, !tbaa !30
  %177 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %176, i64 noundef %123) #12
  br label %182

178:                                              ; preds = %161
  %179 = load i16, ptr %163, align 2, !tbaa !31
  %180 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %179, i64 noundef %123) #12
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 1
  br label %182

182:                                              ; preds = %178, %174, %170
  %183 = phi i64 [ %173, %170 ], [ %177, %174 ], [ %180, %178 ]
  %184 = phi ptr [ %163, %170 ], [ %163, %174 ], [ %181, %178 ]
  %185 = trunc i64 %183 to i16
  %186 = load i32, ptr %132, align 8, !tbaa !43
  %187 = shl i16 %185, 4
  %188 = tail call fastcc ptr @PopShortPixel(i32 noundef %186, i16 noundef zeroext %187, ptr noundef nonnull %167) #12
  %189 = load i64, ptr %133, align 8, !tbaa !40
  %190 = getelementptr inbounds i8, ptr %188, i64 %189
  %191 = add nuw nsw i64 %146, 2
  %192 = icmp slt i64 %191, %129
  br i1 %192, label %144, label %134, !llvm.loop !56

193:                                              ; preds = %142
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 0, i32 2
  br label %197

195:                                              ; preds = %142
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 0, i32 1
  br label %197

197:                                              ; preds = %142, %195, %193
  %198 = phi ptr [ %196, %195 ], [ %194, %193 ], [ %139, %142 ]
  %199 = load i16, ptr %198, align 2, !tbaa !35
  %200 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %199, i64 noundef %123) #12
  %201 = trunc i64 %200 to i16
  %202 = load i32, ptr %143, align 8, !tbaa !43
  %203 = shl i16 %201, 4
  %204 = tail call fastcc ptr @PopShortPixel(i32 noundef %202, i16 noundef zeroext %203, ptr noundef %137) #12
  br label %435

205:                                              ; preds = %122
  %206 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %207 = load i64, ptr %206, align 8, !tbaa !53
  %208 = icmp eq i64 %207, 32
  %209 = icmp sgt i64 %1, 0
  br i1 %208, label %213, label %210

210:                                              ; preds = %205
  br i1 %209, label %211, label %435

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %239

213:                                              ; preds = %205
  br i1 %209, label %214, label %435

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %216

216:                                              ; preds = %214, %216
  %217 = phi ptr [ %2, %214 ], [ %234, %216 ]
  %218 = phi i64 [ 0, %214 ], [ %237, %216 ]
  %219 = phi ptr [ %3, %214 ], [ %236, %216 ]
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 0, i32 2
  %221 = load i16, ptr %220, align 2, !tbaa !29
  %222 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %221, i64 noundef %123) #12
  %223 = and i64 %222, 4294967295
  %224 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %223, ptr noundef %219) #12
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 0, i32 1
  %226 = load i16, ptr %225, align 2, !tbaa !30
  %227 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %226, i64 noundef %123) #12
  %228 = and i64 %227, 4294967295
  %229 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %228, ptr noundef %224) #12
  %230 = load i16, ptr %217, align 2, !tbaa !31
  %231 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %230, i64 noundef %123) #12
  %232 = and i64 %231, 4294967295
  %233 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %232, ptr noundef %229) #12
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 1
  %235 = load i64, ptr %215, align 8, !tbaa !40
  %236 = getelementptr inbounds i8, ptr %233, i64 %235
  %237 = add nuw nsw i64 %218, 1
  %238 = icmp eq i64 %237, %1
  br i1 %238, label %435, label %216, !llvm.loop !57

239:                                              ; preds = %211, %239
  %240 = phi ptr [ %2, %211 ], [ %257, %239 ]
  %241 = phi i64 [ 0, %211 ], [ %260, %239 ]
  %242 = phi ptr [ %3, %211 ], [ %259, %239 ]
  %243 = getelementptr inbounds %struct._PixelPacket, ptr %240, i64 0, i32 2
  %244 = load i16, ptr %243, align 2, !tbaa !29
  %245 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %244, i64 noundef %123) #12
  %246 = and i64 %245, 4294967295
  %247 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %246, ptr noundef %242) #12
  %248 = getelementptr inbounds %struct._PixelPacket, ptr %240, i64 0, i32 1
  %249 = load i16, ptr %248, align 2, !tbaa !30
  %250 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %249, i64 noundef %123) #12
  %251 = and i64 %250, 4294967295
  %252 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %251, ptr noundef %247) #12
  %253 = load i16, ptr %240, align 2, !tbaa !31
  %254 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %253, i64 noundef %123) #12
  %255 = and i64 %254, 4294967295
  %256 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %255, ptr noundef %252) #12
  %257 = getelementptr inbounds %struct._PixelPacket, ptr %240, i64 1
  %258 = load i64, ptr %212, align 8, !tbaa !40
  %259 = getelementptr inbounds i8, ptr %256, i64 %258
  %260 = add nuw nsw i64 %241, 1
  %261 = icmp eq i64 %260, %1
  br i1 %261, label %435, label %239, !llvm.loop !58

262:                                              ; preds = %4
  %263 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %264 = load i32, ptr %263, align 8, !tbaa !42
  %265 = icmp eq i32 %264, 1
  %266 = icmp sgt i64 %1, 0
  br i1 %265, label %271, label %267

267:                                              ; preds = %262
  br i1 %266, label %268, label %435

268:                                              ; preds = %267
  %269 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %270 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %307

271:                                              ; preds = %262
  br i1 %266, label %272, label %435

272:                                              ; preds = %271
  %273 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %274 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %275

275:                                              ; preds = %272, %275
  %276 = phi ptr [ %2, %272 ], [ %302, %275 ]
  %277 = phi i64 [ 0, %272 ], [ %305, %275 ]
  %278 = phi ptr [ %3, %272 ], [ %304, %275 ]
  %279 = load i16, ptr %276, align 2, !tbaa !31
  %280 = uitofp i16 %279 to double
  %281 = fmul double %280, 0x3EF0001000100010
  %282 = fptrunc double %281 to float
  %283 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %282) #12
  %284 = load i32, ptr %273, align 8, !tbaa !43
  %285 = tail call fastcc ptr @PopShortPixel(i32 noundef %284, i16 noundef zeroext %283, ptr noundef %278) #12
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 0, i32 1
  %287 = load i16, ptr %286, align 2, !tbaa !30
  %288 = uitofp i16 %287 to double
  %289 = fmul double %288, 0x3EF0001000100010
  %290 = fptrunc double %289 to float
  %291 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %290) #12
  %292 = load i32, ptr %273, align 8, !tbaa !43
  %293 = tail call fastcc ptr @PopShortPixel(i32 noundef %292, i16 noundef zeroext %291, ptr noundef nonnull %285) #12
  %294 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 0, i32 2
  %295 = load i16, ptr %294, align 2, !tbaa !29
  %296 = uitofp i16 %295 to double
  %297 = fmul double %296, 0x3EF0001000100010
  %298 = fptrunc double %297 to float
  %299 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %298) #12
  %300 = load i32, ptr %273, align 8, !tbaa !43
  %301 = tail call fastcc ptr @PopShortPixel(i32 noundef %300, i16 noundef zeroext %299, ptr noundef nonnull %293) #12
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 1
  %303 = load i64, ptr %274, align 8, !tbaa !40
  %304 = getelementptr inbounds i8, ptr %301, i64 %303
  %305 = add nuw nsw i64 %277, 1
  %306 = icmp eq i64 %305, %1
  br i1 %306, label %435, label %275, !llvm.loop !59

307:                                              ; preds = %268, %307
  %308 = phi ptr [ %2, %268 ], [ %322, %307 ]
  %309 = phi i64 [ 0, %268 ], [ %325, %307 ]
  %310 = phi ptr [ %3, %268 ], [ %324, %307 ]
  %311 = load i16, ptr %308, align 2, !tbaa !31
  %312 = load i32, ptr %269, align 8, !tbaa !43
  %313 = tail call fastcc ptr @PopShortPixel(i32 noundef %312, i16 noundef zeroext %311, ptr noundef %310) #12
  %314 = getelementptr inbounds %struct._PixelPacket, ptr %308, i64 0, i32 1
  %315 = load i16, ptr %314, align 2, !tbaa !30
  %316 = load i32, ptr %269, align 8, !tbaa !43
  %317 = tail call fastcc ptr @PopShortPixel(i32 noundef %316, i16 noundef zeroext %315, ptr noundef nonnull %313) #12
  %318 = getelementptr inbounds %struct._PixelPacket, ptr %308, i64 0, i32 2
  %319 = load i16, ptr %318, align 2, !tbaa !29
  %320 = load i32, ptr %269, align 8, !tbaa !43
  %321 = tail call fastcc ptr @PopShortPixel(i32 noundef %320, i16 noundef zeroext %319, ptr noundef nonnull %317) #12
  %322 = getelementptr inbounds %struct._PixelPacket, ptr %308, i64 1
  %323 = load i64, ptr %270, align 8, !tbaa !40
  %324 = getelementptr inbounds i8, ptr %321, i64 %323
  %325 = add nuw nsw i64 %309, 1
  %326 = icmp eq i64 %325, %1
  br i1 %326, label %435, label %307, !llvm.loop !60

327:                                              ; preds = %4
  %328 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %329 = load i32, ptr %328, align 8, !tbaa !42
  %330 = icmp eq i32 %329, 1
  %331 = icmp sgt i64 %1, 0
  br i1 %330, label %336, label %332

332:                                              ; preds = %327
  br i1 %331, label %333, label %435

333:                                              ; preds = %332
  %334 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %335 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %359

336:                                              ; preds = %327
  br i1 %331, label %337, label %435

337:                                              ; preds = %336
  %338 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %339

339:                                              ; preds = %337, %339
  %340 = phi ptr [ %2, %337 ], [ %354, %339 ]
  %341 = phi i64 [ 0, %337 ], [ %357, %339 ]
  %342 = phi ptr [ %3, %337 ], [ %356, %339 ]
  %343 = getelementptr inbounds %struct._PixelPacket, ptr %340, i64 0, i32 2
  %344 = load i16, ptr %343, align 2, !tbaa !29
  %345 = uitofp i16 %344 to float
  %346 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %345, ptr noundef %342) #12
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %340, i64 0, i32 1
  %348 = load i16, ptr %347, align 2, !tbaa !30
  %349 = uitofp i16 %348 to float
  %350 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %349, ptr noundef nonnull %346) #12
  %351 = load i16, ptr %340, align 2, !tbaa !31
  %352 = uitofp i16 %351 to float
  %353 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %352, ptr noundef nonnull %350) #12
  %354 = getelementptr inbounds %struct._PixelPacket, ptr %340, i64 1
  %355 = load i64, ptr %338, align 8, !tbaa !40
  %356 = getelementptr inbounds i8, ptr %353, i64 %355
  %357 = add nuw nsw i64 %341, 1
  %358 = icmp eq i64 %357, %1
  br i1 %358, label %435, label %339, !llvm.loop !61

359:                                              ; preds = %333, %359
  %360 = phi ptr [ %2, %333 ], [ %377, %359 ]
  %361 = phi i64 [ 0, %333 ], [ %380, %359 ]
  %362 = phi ptr [ %3, %333 ], [ %379, %359 ]
  %363 = load i16, ptr %360, align 2, !tbaa !31
  %364 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %363) #12
  %365 = load i32, ptr %334, align 8, !tbaa !43
  %366 = tail call fastcc ptr @PopLongPixel(i32 noundef %365, i32 noundef %364, ptr noundef %362) #12
  %367 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 0, i32 1
  %368 = load i16, ptr %367, align 2, !tbaa !30
  %369 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %368) #12
  %370 = load i32, ptr %334, align 8, !tbaa !43
  %371 = tail call fastcc ptr @PopLongPixel(i32 noundef %370, i32 noundef %369, ptr noundef nonnull %366) #12
  %372 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 0, i32 2
  %373 = load i16, ptr %372, align 2, !tbaa !29
  %374 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %373) #12
  %375 = load i32, ptr %334, align 8, !tbaa !43
  %376 = tail call fastcc ptr @PopLongPixel(i32 noundef %375, i32 noundef %374, ptr noundef nonnull %371) #12
  %377 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 1
  %378 = load i64, ptr %335, align 8, !tbaa !40
  %379 = getelementptr inbounds i8, ptr %376, i64 %378
  %380 = add nuw nsw i64 %361, 1
  %381 = icmp eq i64 %380, %1
  br i1 %381, label %435, label %359, !llvm.loop !62

382:                                              ; preds = %4
  %383 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %384 = load i32, ptr %383, align 8, !tbaa !42
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %410

386:                                              ; preds = %382
  %387 = icmp sgt i64 %1, 0
  br i1 %387, label %388, label %435

388:                                              ; preds = %386
  %389 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %390

390:                                              ; preds = %388, %390
  %391 = phi ptr [ %2, %388 ], [ %405, %390 ]
  %392 = phi i64 [ 0, %388 ], [ %408, %390 ]
  %393 = phi ptr [ %3, %388 ], [ %407, %390 ]
  %394 = getelementptr inbounds %struct._PixelPacket, ptr %391, i64 0, i32 2
  %395 = load i16, ptr %394, align 2, !tbaa !29
  %396 = uitofp i16 %395 to double
  %397 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %396, ptr noundef %393) #12
  %398 = getelementptr inbounds %struct._PixelPacket, ptr %391, i64 0, i32 1
  %399 = load i16, ptr %398, align 2, !tbaa !30
  %400 = uitofp i16 %399 to double
  %401 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %400, ptr noundef nonnull %397) #12
  %402 = load i16, ptr %391, align 2, !tbaa !31
  %403 = uitofp i16 %402 to double
  %404 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %403, ptr noundef nonnull %401) #12
  %405 = getelementptr inbounds %struct._PixelPacket, ptr %391, i64 1
  %406 = load i64, ptr %389, align 8, !tbaa !40
  %407 = getelementptr inbounds i8, ptr %404, i64 %406
  %408 = add nuw nsw i64 %392, 1
  %409 = icmp eq i64 %408, %1
  br i1 %409, label %435, label %390, !llvm.loop !63

410:                                              ; preds = %382, %4
  %411 = tail call fastcc i64 @GetQuantumRange(i64 noundef %5) #12
  %412 = icmp sgt i64 %1, 0
  br i1 %412, label %413, label %435

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %415

415:                                              ; preds = %413, %415
  %416 = phi ptr [ %2, %413 ], [ %430, %415 ]
  %417 = phi i64 [ 0, %413 ], [ %433, %415 ]
  %418 = phi ptr [ %3, %413 ], [ %432, %415 ]
  %419 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 0, i32 2
  %420 = load i16, ptr %419, align 2, !tbaa !29
  %421 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %420, i64 noundef %411) #12
  %422 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %421, ptr noundef %418) #12
  %423 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 0, i32 1
  %424 = load i16, ptr %423, align 2, !tbaa !30
  %425 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %424, i64 noundef %411) #12
  %426 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %425, ptr noundef %422) #12
  %427 = load i16, ptr %416, align 2, !tbaa !31
  %428 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %427, i64 noundef %411) #12
  %429 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %428, ptr noundef %426) #12
  %430 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 1
  %431 = load i64, ptr %414, align 8, !tbaa !40
  %432 = getelementptr inbounds i8, ptr %429, i64 %431
  %433 = add nuw nsw i64 %417, 1
  %434 = icmp eq i64 %433, %1
  br i1 %434, label %435, label %415, !llvm.loop !64

435:                                              ; preds = %390, %359, %339, %307, %275, %239, %216, %99, %76, %40, %10, %415, %197, %386, %332, %336, %267, %271, %210, %213, %136, %70, %73, %35, %6, %410
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportBGRAQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !39
  switch i64 %5, label %357 [
    i64 8, label %6
    i64 10, label %35
    i64 16, label %179
    i64 32, label %258
    i64 64, label %324
  ]

6:                                                ; preds = %4
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %8, label %387

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %2, %8 ], [ %30, %10 ]
  %12 = phi ptr [ %3, %8 ], [ %32, %10 ]
  %13 = phi i64 [ 0, %8 ], [ %33, %10 ]
  %14 = load i16, ptr %11, align 2, !tbaa !31
  %15 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %14) #12
  %16 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %15, ptr noundef %12) #12
  %17 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !30
  %19 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %18) #12
  %20 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %19, ptr noundef nonnull %16) #12
  %21 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !29
  %23 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %22) #12
  %24 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %23, ptr noundef nonnull %20) #12
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !28
  %27 = xor i16 %26, -1
  %28 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %27) #12
  %29 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %28, ptr noundef nonnull %24) #12
  %30 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 1
  %31 = load i64, ptr %9, align 8, !tbaa !40
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  %33 = add nuw nsw i64 %13, 1
  %34 = icmp eq i64 %33, %1
  br i1 %34, label %387, label %10, !llvm.loop !65

35:                                               ; preds = %4
  %36 = tail call fastcc i64 @GetQuantumRange(i64 noundef 10) #12
  %37 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !51
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %110

40:                                               ; preds = %35
  %41 = icmp sgt i64 %1, 0
  br i1 %41, label %42, label %387

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %44 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %45

45:                                               ; preds = %42, %103
  %46 = phi ptr [ %2, %42 ], [ %105, %103 ]
  %47 = phi ptr [ %3, %42 ], [ %107, %103 ]
  %48 = phi i64 [ 0, %42 ], [ %104, %103 ]
  %49 = phi i64 [ 0, %42 ], [ %75, %103 ]
  %50 = phi i32 [ 0, %42 ], [ %98, %103 ]
  %51 = phi i64 [ 0, %42 ], [ %108, %103 ]
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 3
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 1
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 2
  br label %55

55:                                               ; preds = %45, %97
  %56 = phi ptr [ %47, %45 ], [ %99, %97 ]
  %57 = phi i64 [ %48, %45 ], [ %100, %97 ]
  %58 = phi i64 [ %49, %45 ], [ %75, %97 ]
  %59 = phi i64 [ 0, %45 ], [ %101, %97 ]
  %60 = phi i32 [ %50, %45 ], [ %98, %97 ]
  switch i64 %59, label %74 [
    i64 0, label %61
    i64 1, label %64
    i64 2, label %67
    i64 3, label %70
  ]

61:                                               ; preds = %55
  %62 = load i16, ptr %54, align 2, !tbaa !29
  %63 = zext i16 %62 to i64
  br label %74

64:                                               ; preds = %55
  %65 = load i16, ptr %53, align 2, !tbaa !30
  %66 = zext i16 %65 to i64
  br label %74

67:                                               ; preds = %55
  %68 = load i16, ptr %46, align 2, !tbaa !31
  %69 = zext i16 %68 to i64
  br label %74

70:                                               ; preds = %55
  %71 = load i16, ptr %52, align 2, !tbaa !28
  %72 = xor i16 %71, -1
  %73 = zext i16 %72 to i64
  br label %74

74:                                               ; preds = %55, %70, %67, %64, %61
  %75 = phi i64 [ %58, %55 ], [ %73, %70 ], [ %69, %67 ], [ %66, %64 ], [ %63, %61 ]
  %76 = srem i64 %57, 3
  switch i64 %76, label %97 [
    i64 0, label %77
    i64 1, label %83
    i64 2, label %89
  ]

77:                                               ; preds = %74
  %78 = trunc i64 %75 to i16
  %79 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %78, i64 noundef %36) #12
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 22
  %82 = or i32 %81, %60
  br label %97

83:                                               ; preds = %74
  %84 = trunc i64 %75 to i16
  %85 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %84, i64 noundef %36) #12
  %86 = trunc i64 %85 to i32
  %87 = shl i32 %86, 12
  %88 = or i32 %87, %60
  br label %97

89:                                               ; preds = %74
  %90 = trunc i64 %75 to i16
  %91 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %90, i64 noundef %36) #12
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 2
  %94 = or i32 %93, %60
  %95 = load i32, ptr %43, align 8, !tbaa !43
  %96 = tail call fastcc ptr @PopLongPixel(i32 noundef %95, i32 noundef %94, ptr noundef %56) #12
  br label %97

97:                                               ; preds = %74, %89, %83, %77
  %98 = phi i32 [ %60, %74 ], [ 0, %89 ], [ %88, %83 ], [ %82, %77 ]
  %99 = phi ptr [ %56, %74 ], [ %96, %89 ], [ %56, %83 ], [ %56, %77 ]
  %100 = add nsw i64 %57, 1
  %101 = add nuw nsw i64 %59, 1
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %55, !llvm.loop !66

103:                                              ; preds = %97
  %104 = add i64 %48, 4
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 1
  %106 = load i64, ptr %44, align 8, !tbaa !40
  %107 = getelementptr inbounds i8, ptr %99, i64 %106
  %108 = add nuw nsw i64 %51, 1
  %109 = icmp eq i64 %108, %1
  br i1 %109, label %387, label %45, !llvm.loop !67

110:                                              ; preds = %35
  %111 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !53
  %113 = icmp eq i64 %112, 32
  %114 = icmp sgt i64 %1, 0
  br i1 %113, label %118, label %115

115:                                              ; preds = %110
  br i1 %114, label %116, label %387

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %150

118:                                              ; preds = %110
  br i1 %114, label %119, label %387

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi ptr [ %2, %119 ], [ %145, %121 ]
  %123 = phi ptr [ %3, %119 ], [ %147, %121 ]
  %124 = phi i64 [ 0, %119 ], [ %148, %121 ]
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 2
  %126 = load i16, ptr %125, align 2, !tbaa !29
  %127 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %126, i64 noundef %36) #12
  %128 = and i64 %127, 4294967295
  %129 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %128, ptr noundef %123) #12
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 1
  %131 = load i16, ptr %130, align 2, !tbaa !30
  %132 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %131, i64 noundef %36) #12
  %133 = and i64 %132, 4294967295
  %134 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %133, ptr noundef %129) #12
  %135 = load i16, ptr %122, align 2, !tbaa !31
  %136 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %135, i64 noundef %36) #12
  %137 = and i64 %136, 4294967295
  %138 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %137, ptr noundef %134) #12
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 3
  %140 = load i16, ptr %139, align 2, !tbaa !28
  %141 = xor i16 %140, -1
  %142 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %141, i64 noundef %36) #12
  %143 = and i64 %142, 4294967295
  %144 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %143, ptr noundef %138) #12
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 1
  %146 = load i64, ptr %120, align 8, !tbaa !40
  %147 = getelementptr inbounds i8, ptr %144, i64 %146
  %148 = add nuw nsw i64 %124, 1
  %149 = icmp eq i64 %148, %1
  br i1 %149, label %387, label %121, !llvm.loop !68

150:                                              ; preds = %116, %150
  %151 = phi ptr [ %2, %116 ], [ %174, %150 ]
  %152 = phi ptr [ %3, %116 ], [ %176, %150 ]
  %153 = phi i64 [ 0, %116 ], [ %177, %150 ]
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 2
  %155 = load i16, ptr %154, align 2, !tbaa !29
  %156 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %155, i64 noundef %36) #12
  %157 = and i64 %156, 4294967295
  %158 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %157, ptr noundef %152) #12
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 1
  %160 = load i16, ptr %159, align 2, !tbaa !30
  %161 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %160, i64 noundef %36) #12
  %162 = and i64 %161, 4294967295
  %163 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %162, ptr noundef %158) #12
  %164 = load i16, ptr %151, align 2, !tbaa !31
  %165 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %164, i64 noundef %36) #12
  %166 = and i64 %165, 4294967295
  %167 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %166, ptr noundef %163) #12
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 3
  %169 = load i16, ptr %168, align 2, !tbaa !28
  %170 = xor i16 %169, -1
  %171 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %170, i64 noundef %36) #12
  %172 = and i64 %171, 4294967295
  %173 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %172, ptr noundef %167) #12
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 1
  %175 = load i64, ptr %117, align 8, !tbaa !40
  %176 = getelementptr inbounds i8, ptr %173, i64 %175
  %177 = add nuw nsw i64 %153, 1
  %178 = icmp eq i64 %177, %1
  br i1 %178, label %387, label %150, !llvm.loop !69

179:                                              ; preds = %4
  %180 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %181 = load i32, ptr %180, align 8, !tbaa !42
  %182 = icmp eq i32 %181, 1
  %183 = icmp sgt i64 %1, 0
  br i1 %182, label %188, label %184

184:                                              ; preds = %179
  br i1 %183, label %185, label %387

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %187 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %233

188:                                              ; preds = %179
  br i1 %183, label %189, label %387

189:                                              ; preds = %188
  %190 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %191 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %192

192:                                              ; preds = %189, %192
  %193 = phi ptr [ %2, %189 ], [ %228, %192 ]
  %194 = phi ptr [ %3, %189 ], [ %230, %192 ]
  %195 = phi i64 [ 0, %189 ], [ %231, %192 ]
  %196 = load i16, ptr %193, align 2, !tbaa !31
  %197 = uitofp i16 %196 to double
  %198 = fmul double %197, 0x3EF0001000100010
  %199 = fptrunc double %198 to float
  %200 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %199) #12
  %201 = load i32, ptr %190, align 8, !tbaa !43
  %202 = tail call fastcc ptr @PopShortPixel(i32 noundef %201, i16 noundef zeroext %200, ptr noundef %194) #12
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 1
  %204 = load i16, ptr %203, align 2, !tbaa !30
  %205 = uitofp i16 %204 to double
  %206 = fmul double %205, 0x3EF0001000100010
  %207 = fptrunc double %206 to float
  %208 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %207) #12
  %209 = load i32, ptr %190, align 8, !tbaa !43
  %210 = tail call fastcc ptr @PopShortPixel(i32 noundef %209, i16 noundef zeroext %208, ptr noundef nonnull %202) #12
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 2
  %212 = load i16, ptr %211, align 2, !tbaa !29
  %213 = uitofp i16 %212 to double
  %214 = fmul double %213, 0x3EF0001000100010
  %215 = fptrunc double %214 to float
  %216 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %215) #12
  %217 = load i32, ptr %190, align 8, !tbaa !43
  %218 = tail call fastcc ptr @PopShortPixel(i32 noundef %217, i16 noundef zeroext %216, ptr noundef nonnull %210) #12
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 3
  %220 = load i16, ptr %219, align 2, !tbaa !28
  %221 = xor i16 %220, -1
  %222 = uitofp i16 %221 to double
  %223 = fmul double %222, 0x3EF0001000100010
  %224 = fptrunc double %223 to float
  %225 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %224) #12
  %226 = load i32, ptr %190, align 8, !tbaa !43
  %227 = tail call fastcc ptr @PopShortPixel(i32 noundef %226, i16 noundef zeroext %225, ptr noundef nonnull %218) #12
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 1
  %229 = load i64, ptr %191, align 8, !tbaa !40
  %230 = getelementptr inbounds i8, ptr %227, i64 %229
  %231 = add nuw nsw i64 %195, 1
  %232 = icmp eq i64 %231, %1
  br i1 %232, label %387, label %192, !llvm.loop !70

233:                                              ; preds = %185, %233
  %234 = phi ptr [ %2, %185 ], [ %253, %233 ]
  %235 = phi ptr [ %3, %185 ], [ %255, %233 ]
  %236 = phi i64 [ 0, %185 ], [ %256, %233 ]
  %237 = load i16, ptr %234, align 2, !tbaa !31
  %238 = load i32, ptr %186, align 8, !tbaa !43
  %239 = tail call fastcc ptr @PopShortPixel(i32 noundef %238, i16 noundef zeroext %237, ptr noundef %235) #12
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %234, i64 0, i32 1
  %241 = load i16, ptr %240, align 2, !tbaa !30
  %242 = load i32, ptr %186, align 8, !tbaa !43
  %243 = tail call fastcc ptr @PopShortPixel(i32 noundef %242, i16 noundef zeroext %241, ptr noundef nonnull %239) #12
  %244 = getelementptr inbounds %struct._PixelPacket, ptr %234, i64 0, i32 2
  %245 = load i16, ptr %244, align 2, !tbaa !29
  %246 = load i32, ptr %186, align 8, !tbaa !43
  %247 = tail call fastcc ptr @PopShortPixel(i32 noundef %246, i16 noundef zeroext %245, ptr noundef nonnull %243) #12
  %248 = getelementptr inbounds %struct._PixelPacket, ptr %234, i64 0, i32 3
  %249 = load i16, ptr %248, align 2, !tbaa !28
  %250 = xor i16 %249, -1
  %251 = load i32, ptr %186, align 8, !tbaa !43
  %252 = tail call fastcc ptr @PopShortPixel(i32 noundef %251, i16 noundef zeroext %250, ptr noundef nonnull %247) #12
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %234, i64 1
  %254 = load i64, ptr %187, align 8, !tbaa !40
  %255 = getelementptr inbounds i8, ptr %252, i64 %254
  %256 = add nuw nsw i64 %236, 1
  %257 = icmp eq i64 %256, %1
  br i1 %257, label %387, label %233, !llvm.loop !71

258:                                              ; preds = %4
  %259 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %260 = load i32, ptr %259, align 8, !tbaa !42
  %261 = icmp eq i32 %260, 1
  %262 = icmp sgt i64 %1, 0
  br i1 %261, label %267, label %263

263:                                              ; preds = %258
  br i1 %262, label %264, label %387

264:                                              ; preds = %263
  %265 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %266 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %295

267:                                              ; preds = %258
  br i1 %262, label %268, label %387

268:                                              ; preds = %267
  %269 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %270

270:                                              ; preds = %268, %270
  %271 = phi ptr [ %2, %268 ], [ %290, %270 ]
  %272 = phi ptr [ %3, %268 ], [ %292, %270 ]
  %273 = phi i64 [ 0, %268 ], [ %293, %270 ]
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 2
  %275 = load i16, ptr %274, align 2, !tbaa !29
  %276 = uitofp i16 %275 to float
  %277 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %276, ptr noundef %272) #12
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 1
  %279 = load i16, ptr %278, align 2, !tbaa !30
  %280 = uitofp i16 %279 to float
  %281 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %280, ptr noundef nonnull %277) #12
  %282 = load i16, ptr %271, align 2, !tbaa !31
  %283 = uitofp i16 %282 to float
  %284 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %283, ptr noundef nonnull %281) #12
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 3
  %286 = load i16, ptr %285, align 2, !tbaa !28
  %287 = xor i16 %286, -1
  %288 = uitofp i16 %287 to float
  %289 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %288, ptr noundef nonnull %284) #12
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 1
  %291 = load i64, ptr %269, align 8, !tbaa !40
  %292 = getelementptr inbounds i8, ptr %289, i64 %291
  %293 = add nuw nsw i64 %273, 1
  %294 = icmp eq i64 %293, %1
  br i1 %294, label %387, label %270, !llvm.loop !72

295:                                              ; preds = %264, %295
  %296 = phi ptr [ %2, %264 ], [ %319, %295 ]
  %297 = phi ptr [ %3, %264 ], [ %321, %295 ]
  %298 = phi i64 [ 0, %264 ], [ %322, %295 ]
  %299 = load i16, ptr %296, align 2, !tbaa !31
  %300 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %299) #12
  %301 = load i32, ptr %265, align 8, !tbaa !43
  %302 = tail call fastcc ptr @PopLongPixel(i32 noundef %301, i32 noundef %300, ptr noundef %297) #12
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %296, i64 0, i32 1
  %304 = load i16, ptr %303, align 2, !tbaa !30
  %305 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %304) #12
  %306 = load i32, ptr %265, align 8, !tbaa !43
  %307 = tail call fastcc ptr @PopLongPixel(i32 noundef %306, i32 noundef %305, ptr noundef nonnull %302) #12
  %308 = getelementptr inbounds %struct._PixelPacket, ptr %296, i64 0, i32 2
  %309 = load i16, ptr %308, align 2, !tbaa !29
  %310 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %309) #12
  %311 = load i32, ptr %265, align 8, !tbaa !43
  %312 = tail call fastcc ptr @PopLongPixel(i32 noundef %311, i32 noundef %310, ptr noundef nonnull %307) #12
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %296, i64 0, i32 3
  %314 = load i16, ptr %313, align 2, !tbaa !28
  %315 = xor i16 %314, -1
  %316 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %315) #12
  %317 = load i32, ptr %265, align 8, !tbaa !43
  %318 = tail call fastcc ptr @PopLongPixel(i32 noundef %317, i32 noundef %316, ptr noundef nonnull %312) #12
  %319 = getelementptr inbounds %struct._PixelPacket, ptr %296, i64 1
  %320 = load i64, ptr %266, align 8, !tbaa !40
  %321 = getelementptr inbounds i8, ptr %318, i64 %320
  %322 = add nuw nsw i64 %298, 1
  %323 = icmp eq i64 %322, %1
  br i1 %323, label %387, label %295, !llvm.loop !73

324:                                              ; preds = %4
  %325 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %326 = load i32, ptr %325, align 8, !tbaa !42
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %328, label %357

328:                                              ; preds = %324
  %329 = icmp sgt i64 %1, 0
  br i1 %329, label %330, label %387

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %332

332:                                              ; preds = %330, %332
  %333 = phi ptr [ %2, %330 ], [ %352, %332 ]
  %334 = phi ptr [ %3, %330 ], [ %354, %332 ]
  %335 = phi i64 [ 0, %330 ], [ %355, %332 ]
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %333, i64 0, i32 2
  %337 = load i16, ptr %336, align 2, !tbaa !29
  %338 = uitofp i16 %337 to double
  %339 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %338, ptr noundef %334) #12
  %340 = getelementptr inbounds %struct._PixelPacket, ptr %333, i64 0, i32 1
  %341 = load i16, ptr %340, align 2, !tbaa !30
  %342 = uitofp i16 %341 to double
  %343 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %342, ptr noundef nonnull %339) #12
  %344 = load i16, ptr %333, align 2, !tbaa !31
  %345 = uitofp i16 %344 to double
  %346 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %345, ptr noundef nonnull %343) #12
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %333, i64 0, i32 3
  %348 = load i16, ptr %347, align 2, !tbaa !28
  %349 = xor i16 %348, -1
  %350 = uitofp i16 %349 to double
  %351 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %350, ptr noundef nonnull %346) #12
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %333, i64 1
  %353 = load i64, ptr %331, align 8, !tbaa !40
  %354 = getelementptr inbounds i8, ptr %351, i64 %353
  %355 = add nuw nsw i64 %335, 1
  %356 = icmp eq i64 %355, %1
  br i1 %356, label %387, label %332, !llvm.loop !74

357:                                              ; preds = %324, %4
  %358 = tail call fastcc i64 @GetQuantumRange(i64 noundef %5) #12
  %359 = icmp sgt i64 %1, 0
  br i1 %359, label %360, label %387

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %362

362:                                              ; preds = %360, %362
  %363 = phi ptr [ %2, %360 ], [ %382, %362 ]
  %364 = phi ptr [ %3, %360 ], [ %384, %362 ]
  %365 = phi i64 [ 0, %360 ], [ %385, %362 ]
  %366 = load i16, ptr %363, align 2, !tbaa !31
  %367 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %366, i64 noundef %358) #12
  %368 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %367, ptr noundef %364) #12
  %369 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 1
  %370 = load i16, ptr %369, align 2, !tbaa !30
  %371 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %370, i64 noundef %358) #12
  %372 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %371, ptr noundef %368) #12
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 2
  %374 = load i16, ptr %373, align 2, !tbaa !29
  %375 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %374, i64 noundef %358) #12
  %376 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %375, ptr noundef %372) #12
  %377 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 3
  %378 = load i16, ptr %377, align 2, !tbaa !28
  %379 = xor i16 %378, -1
  %380 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %379, i64 noundef %358) #12
  %381 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %380, ptr noundef %376) #12
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 1
  %383 = load i64, ptr %361, align 8, !tbaa !40
  %384 = getelementptr inbounds i8, ptr %381, i64 %383
  %385 = add nuw nsw i64 %365, 1
  %386 = icmp eq i64 %385, %1
  br i1 %386, label %387, label %362, !llvm.loop !75

387:                                              ; preds = %332, %295, %270, %233, %192, %150, %121, %103, %10, %362, %328, %263, %267, %184, %188, %115, %118, %40, %6, %357
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportBlackQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias noundef readonly %3, ptr noalias noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !76
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 888, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %11) #10
  br label %172

13:                                               ; preds = %6
  %14 = load i64, ptr %1, align 8, !tbaa !39
  %15 = add i64 %14, -8
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 61)
  switch i64 %16, label %152 [
    i64 0, label %17
    i64 1, label %36
    i64 3, label %84
    i64 7, label %128
  ]

17:                                               ; preds = %13
  %18 = icmp sgt i64 %2, 0
  br i1 %18, label %19, label %172

19:                                               ; preds = %17
  %20 = icmp eq ptr %3, null
  %21 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %22

22:                                               ; preds = %19, %28
  %23 = phi ptr [ %4, %19 ], [ %33, %28 ]
  %24 = phi i64 [ 0, %19 ], [ %34, %28 ]
  br i1 %20, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds i16, ptr %3, i64 %24
  %27 = load i16, ptr %26, align 2, !tbaa !35
  br label %28

28:                                               ; preds = %22, %25
  %29 = phi i16 [ %27, %25 ], [ 0, %22 ]
  %30 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %29) #12
  %31 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %30, ptr noundef %23) #12
  %32 = load i64, ptr %21, align 8, !tbaa !40
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, %2
  br i1 %35, label %172, label %22, !llvm.loop !77

36:                                               ; preds = %13
  %37 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !42
  %39 = icmp eq i32 %38, 1
  %40 = icmp sgt i64 %2, 0
  br i1 %39, label %46, label %41

41:                                               ; preds = %36
  br i1 %40, label %42, label %172

42:                                               ; preds = %41
  %43 = icmp eq ptr %3, null
  %44 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %45 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %70

46:                                               ; preds = %36
  br i1 %40, label %47, label %172

47:                                               ; preds = %46
  %48 = icmp eq ptr %3, null
  %49 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %50 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %51

51:                                               ; preds = %47, %58
  %52 = phi ptr [ %4, %47 ], [ %67, %58 ]
  %53 = phi i64 [ 0, %47 ], [ %68, %58 ]
  br i1 %48, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds i16, ptr %3, i64 %53
  %56 = load i16, ptr %55, align 2, !tbaa !35
  %57 = zext i16 %56 to i32
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi i32 [ %57, %54 ], [ 0, %51 ]
  %60 = sitofp i32 %59 to double
  %61 = fmul double %60, 0x3EF0001000100010
  %62 = fptrunc double %61 to float
  %63 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %62) #12
  %64 = load i32, ptr %49, align 8, !tbaa !43
  %65 = tail call fastcc ptr @PopShortPixel(i32 noundef %64, i16 noundef zeroext %63, ptr noundef %52) #12
  %66 = load i64, ptr %50, align 8, !tbaa !40
  %67 = getelementptr inbounds i8, ptr %65, i64 %66
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %2
  br i1 %69, label %172, label %51, !llvm.loop !78

70:                                               ; preds = %42, %76
  %71 = phi ptr [ %4, %42 ], [ %81, %76 ]
  %72 = phi i64 [ 0, %42 ], [ %82, %76 ]
  br i1 %43, label %76, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds i16, ptr %3, i64 %72
  %75 = load i16, ptr %74, align 2, !tbaa !35
  br label %76

76:                                               ; preds = %70, %73
  %77 = phi i16 [ %75, %73 ], [ 0, %70 ]
  %78 = load i32, ptr %44, align 8, !tbaa !43
  %79 = tail call fastcc ptr @PopShortPixel(i32 noundef %78, i16 noundef zeroext %77, ptr noundef %71) #12
  %80 = load i64, ptr %45, align 8, !tbaa !40
  %81 = getelementptr inbounds i8, ptr %79, i64 %80
  %82 = add nuw nsw i64 %72, 1
  %83 = icmp eq i64 %82, %2
  br i1 %83, label %172, label %70, !llvm.loop !79

84:                                               ; preds = %13
  %85 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !42
  %87 = icmp eq i32 %86, 1
  %88 = icmp sgt i64 %2, 0
  br i1 %87, label %94, label %89

89:                                               ; preds = %84
  br i1 %88, label %90, label %172

90:                                               ; preds = %89
  %91 = icmp eq ptr %3, null
  %92 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %93 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %113

94:                                               ; preds = %84
  br i1 %88, label %95, label %172

95:                                               ; preds = %94
  %96 = icmp eq ptr %3, null
  %97 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %98

98:                                               ; preds = %95, %105
  %99 = phi ptr [ %4, %95 ], [ %110, %105 ]
  %100 = phi i64 [ 0, %95 ], [ %111, %105 ]
  br i1 %96, label %105, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds i16, ptr %3, i64 %100
  %103 = load i16, ptr %102, align 2, !tbaa !35
  %104 = zext i16 %103 to i32
  br label %105

105:                                              ; preds = %98, %101
  %106 = phi i32 [ %104, %101 ], [ 0, %98 ]
  %107 = sitofp i32 %106 to float
  %108 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %107, ptr noundef %99) #12
  %109 = load i64, ptr %97, align 8, !tbaa !40
  %110 = getelementptr inbounds i8, ptr %108, i64 %109
  %111 = add nuw nsw i64 %100, 1
  %112 = icmp eq i64 %111, %2
  br i1 %112, label %172, label %98, !llvm.loop !80

113:                                              ; preds = %90, %119
  %114 = phi ptr [ %4, %90 ], [ %125, %119 ]
  %115 = phi i64 [ 0, %90 ], [ %126, %119 ]
  br i1 %91, label %119, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds i16, ptr %3, i64 %115
  %118 = load i16, ptr %117, align 2, !tbaa !35
  br label %119

119:                                              ; preds = %113, %116
  %120 = phi i16 [ %118, %116 ], [ 0, %113 ]
  %121 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %120) #12
  %122 = load i32, ptr %92, align 8, !tbaa !43
  %123 = tail call fastcc ptr @PopLongPixel(i32 noundef %122, i32 noundef %121, ptr noundef %114) #12
  %124 = load i64, ptr %93, align 8, !tbaa !40
  %125 = getelementptr inbounds i8, ptr %123, i64 %124
  %126 = add nuw nsw i64 %115, 1
  %127 = icmp eq i64 %126, %2
  br i1 %127, label %172, label %113, !llvm.loop !81

128:                                              ; preds = %13
  %129 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !42
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = icmp sgt i64 %2, 0
  br i1 %133, label %134, label %172

134:                                              ; preds = %132
  %135 = icmp eq ptr %3, null
  %136 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %137

137:                                              ; preds = %134, %144
  %138 = phi ptr [ %4, %134 ], [ %149, %144 ]
  %139 = phi i64 [ 0, %134 ], [ %150, %144 ]
  br i1 %135, label %144, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds i16, ptr %3, i64 %139
  %142 = load i16, ptr %141, align 2, !tbaa !35
  %143 = zext i16 %142 to i32
  br label %144

144:                                              ; preds = %137, %140
  %145 = phi i32 [ %143, %140 ], [ 0, %137 ]
  %146 = sitofp i32 %145 to double
  %147 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %146, ptr noundef %138) #12
  %148 = load i64, ptr %136, align 8, !tbaa !40
  %149 = getelementptr inbounds i8, ptr %147, i64 %148
  %150 = add nuw nsw i64 %139, 1
  %151 = icmp eq i64 %150, %2
  br i1 %151, label %172, label %137, !llvm.loop !82

152:                                              ; preds = %128, %13
  %153 = tail call fastcc i64 @GetQuantumRange(i64 noundef %14) #12
  %154 = icmp sgt i64 %2, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = icmp eq ptr %3, null
  %157 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %158

158:                                              ; preds = %155, %164
  %159 = phi ptr [ %4, %155 ], [ %169, %164 ]
  %160 = phi i64 [ 0, %155 ], [ %170, %164 ]
  br i1 %156, label %164, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds i16, ptr %3, i64 %160
  %163 = load i16, ptr %162, align 2, !tbaa !35
  br label %164

164:                                              ; preds = %158, %161
  %165 = phi i16 [ %163, %161 ], [ 0, %158 ]
  %166 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %165, i64 noundef %153) #12
  %167 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %166, ptr noundef %159) #12
  %168 = load i64, ptr %157, align 8, !tbaa !40
  %169 = getelementptr inbounds i8, ptr %167, i64 %168
  %170 = add nuw nsw i64 %160, 1
  %171 = icmp eq i64 %170, %2
  br i1 %171, label %172, label %158, !llvm.loop !83

172:                                              ; preds = %144, %119, %105, %76, %58, %28, %164, %132, %89, %94, %41, %46, %17, %152, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportBlueQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !39
  %6 = add i64 %5, -8
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 61)
  switch i64 %7, label %122 [
    i64 0, label %8
    i64 1, label %24
    i64 3, label %65
    i64 7, label %102
  ]

8:                                                ; preds = %4
  %9 = icmp sgt i64 %1, 0
  br i1 %9, label %10, label %139

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %2, %10 ], [ %19, %12 ]
  %14 = phi ptr [ %3, %10 ], [ %21, %12 ]
  %15 = phi i64 [ 0, %10 ], [ %22, %12 ]
  %16 = load i16, ptr %13, align 2, !tbaa !31
  %17 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %16) #12
  %18 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %17, ptr noundef %14) #12
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 1
  %20 = load i64, ptr %11, align 8, !tbaa !40
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, %1
  br i1 %23, label %139, label %12, !llvm.loop !84

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !42
  %27 = icmp eq i32 %26, 1
  %28 = icmp sgt i64 %1, 0
  br i1 %27, label %33, label %29

29:                                               ; preds = %24
  br i1 %28, label %30, label %139

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %32 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %53

33:                                               ; preds = %24
  br i1 %28, label %34, label %139

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %36 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %2, %34 ], [ %48, %37 ]
  %39 = phi ptr [ %3, %34 ], [ %50, %37 ]
  %40 = phi i64 [ 0, %34 ], [ %51, %37 ]
  %41 = load i16, ptr %38, align 2, !tbaa !31
  %42 = uitofp i16 %41 to double
  %43 = fmul double %42, 0x3EF0001000100010
  %44 = fptrunc double %43 to float
  %45 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %44) #12
  %46 = load i32, ptr %35, align 8, !tbaa !43
  %47 = tail call fastcc ptr @PopShortPixel(i32 noundef %46, i16 noundef zeroext %45, ptr noundef %39) #12
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 1
  %49 = load i64, ptr %36, align 8, !tbaa !40
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = add nuw nsw i64 %40, 1
  %52 = icmp eq i64 %51, %1
  br i1 %52, label %139, label %37, !llvm.loop !85

53:                                               ; preds = %30, %53
  %54 = phi ptr [ %2, %30 ], [ %60, %53 ]
  %55 = phi ptr [ %3, %30 ], [ %62, %53 ]
  %56 = phi i64 [ 0, %30 ], [ %63, %53 ]
  %57 = load i16, ptr %54, align 2, !tbaa !31
  %58 = load i32, ptr %31, align 8, !tbaa !43
  %59 = tail call fastcc ptr @PopShortPixel(i32 noundef %58, i16 noundef zeroext %57, ptr noundef %55) #12
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 1
  %61 = load i64, ptr %32, align 8, !tbaa !40
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  %63 = add nuw nsw i64 %56, 1
  %64 = icmp eq i64 %63, %1
  br i1 %64, label %139, label %53, !llvm.loop !86

65:                                               ; preds = %4
  %66 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !42
  %68 = icmp eq i32 %67, 1
  %69 = icmp sgt i64 %1, 0
  br i1 %68, label %74, label %70

70:                                               ; preds = %65
  br i1 %69, label %71, label %139

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %73 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %89

74:                                               ; preds = %65
  br i1 %69, label %75, label %139

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi ptr [ %2, %75 ], [ %84, %77 ]
  %79 = phi ptr [ %3, %75 ], [ %86, %77 ]
  %80 = phi i64 [ 0, %75 ], [ %87, %77 ]
  %81 = load i16, ptr %78, align 2, !tbaa !31
  %82 = uitofp i16 %81 to float
  %83 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %82, ptr noundef %79) #12
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %85 = load i64, ptr %76, align 8, !tbaa !40
  %86 = getelementptr inbounds i8, ptr %83, i64 %85
  %87 = add nuw nsw i64 %80, 1
  %88 = icmp eq i64 %87, %1
  br i1 %88, label %139, label %77, !llvm.loop !87

89:                                               ; preds = %71, %89
  %90 = phi ptr [ %2, %71 ], [ %97, %89 ]
  %91 = phi ptr [ %3, %71 ], [ %99, %89 ]
  %92 = phi i64 [ 0, %71 ], [ %100, %89 ]
  %93 = load i16, ptr %90, align 2, !tbaa !31
  %94 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %93) #12
  %95 = load i32, ptr %72, align 8, !tbaa !43
  %96 = tail call fastcc ptr @PopLongPixel(i32 noundef %95, i32 noundef %94, ptr noundef %91) #12
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 1
  %98 = load i64, ptr %73, align 8, !tbaa !40
  %99 = getelementptr inbounds i8, ptr %96, i64 %98
  %100 = add nuw nsw i64 %92, 1
  %101 = icmp eq i64 %100, %1
  br i1 %101, label %139, label %89, !llvm.loop !88

102:                                              ; preds = %4
  %103 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !42
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = icmp sgt i64 %1, 0
  br i1 %107, label %108, label %139

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi ptr [ %2, %108 ], [ %117, %110 ]
  %112 = phi ptr [ %3, %108 ], [ %119, %110 ]
  %113 = phi i64 [ 0, %108 ], [ %120, %110 ]
  %114 = load i16, ptr %111, align 2, !tbaa !31
  %115 = uitofp i16 %114 to double
  %116 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %115, ptr noundef %112) #12
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 1
  %118 = load i64, ptr %109, align 8, !tbaa !40
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  %120 = add nuw nsw i64 %113, 1
  %121 = icmp eq i64 %120, %1
  br i1 %121, label %139, label %110, !llvm.loop !89

122:                                              ; preds = %102, %4
  %123 = tail call fastcc i64 @GetQuantumRange(i64 noundef %5) #12
  %124 = icmp sgt i64 %1, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %127

127:                                              ; preds = %125, %127
  %128 = phi ptr [ %2, %125 ], [ %134, %127 ]
  %129 = phi ptr [ %3, %125 ], [ %136, %127 ]
  %130 = phi i64 [ 0, %125 ], [ %137, %127 ]
  %131 = load i16, ptr %128, align 2, !tbaa !31
  %132 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %131, i64 noundef %123) #12
  %133 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %132, ptr noundef %129) #12
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 1
  %135 = load i64, ptr %126, align 8, !tbaa !40
  %136 = getelementptr inbounds i8, ptr %133, i64 %135
  %137 = add nuw nsw i64 %130, 1
  %138 = icmp eq i64 %137, %1
  br i1 %138, label %139, label %127, !llvm.loop !90

139:                                              ; preds = %110, %89, %77, %53, %37, %12, %127, %106, %70, %74, %29, %33, %8, %122
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ExportCbYCrYQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias noundef %3) unnamed_addr #5 {
  %5 = alloca [4 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %6 = load i64, ptr %0, align 8, !tbaa !39
  %7 = tail call fastcc i64 @GetQuantumRange(i64 noundef %6) #12
  %8 = icmp eq i64 %6, 10
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i64 %1, 0
  br i1 %10, label %11, label %124

11:                                               ; preds = %9
  %12 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 1
  %13 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 2
  %14 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 3
  %15 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %79

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !51
  %19 = icmp eq i32 %18, 0
  %20 = icmp sgt i64 %1, 0
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %124

22:                                               ; preds = %16
  %23 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 1
  %24 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 2
  %25 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %26 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 3
  %27 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %28

28:                                               ; preds = %22, %52
  %29 = phi i64 [ 0, %22 ], [ %53, %52 ]
  %30 = phi i16 [ 0, %22 ], [ %47, %52 ]
  %31 = phi ptr [ %2, %22 ], [ %74, %52 ]
  %32 = phi i64 [ 0, %22 ], [ %77, %52 ]
  %33 = phi ptr [ %3, %22 ], [ %76, %52 ]
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %31, i64 0, i32 1
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %31, i64 0, i32 2
  br label %36

36:                                               ; preds = %28, %46
  %37 = phi i64 [ %29, %28 ], [ %49, %46 ]
  %38 = phi i16 [ %30, %28 ], [ %47, %46 ]
  %39 = phi i64 [ 0, %28 ], [ %50, %46 ]
  %40 = srem i64 %37, 3
  switch i64 %40, label %46 [
    i64 0, label %43
    i64 1, label %41
    i64 2, label %42
  ]

41:                                               ; preds = %36
  br label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %36, %41, %42
  %44 = phi ptr [ %31, %42 ], [ %34, %41 ], [ %35, %36 ]
  %45 = load i16, ptr %44, align 2, !tbaa !35
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i16 [ %38, %36 ], [ %45, %43 ]
  %48 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 %39
  store i16 %47, ptr %48, align 2, !tbaa !35
  %49 = add nsw i64 %37, 1
  %50 = add nuw nsw i64 %39, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %52, label %36, !llvm.loop !91

52:                                               ; preds = %46
  %53 = add nuw i64 %29, 4
  %54 = load i16, ptr %23, align 2, !tbaa !35
  %55 = zext i16 %54 to i32
  %56 = shl i32 %55, 22
  %57 = load i16, ptr %5, align 2, !tbaa !35
  %58 = zext i16 %57 to i32
  %59 = shl nuw nsw i32 %58, 12
  %60 = load i16, ptr %24, align 2, !tbaa !35
  %61 = zext i16 %60 to i32
  %62 = shl nuw nsw i32 %61, 2
  %63 = or i32 %59, %56
  %64 = or i32 %63, %62
  %65 = load i32, ptr %25, align 8, !tbaa !43
  %66 = tail call fastcc ptr @PopLongPixel(i32 noundef %65, i32 noundef %64, ptr noundef %33) #12
  %67 = load i16, ptr %26, align 2, !tbaa !35
  %68 = zext i16 %67 to i32
  %69 = shl i32 %68, 22
  %70 = or i32 %59, %69
  %71 = or i32 %70, %62
  %72 = load i32, ptr %25, align 8, !tbaa !43
  %73 = tail call fastcc ptr @PopLongPixel(i32 noundef %72, i32 noundef %71, ptr noundef nonnull %66) #12
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %31, i64 2
  %75 = load i64, ptr %27, align 8, !tbaa !40
  %76 = getelementptr inbounds i8, ptr %73, i64 %75
  %77 = add nuw nsw i64 %32, 2
  %78 = icmp slt i64 %77, %1
  br i1 %78, label %28, label %124, !llvm.loop !92

79:                                               ; preds = %11, %103
  %80 = phi i64 [ 0, %11 ], [ %104, %103 ]
  %81 = phi i16 [ 0, %11 ], [ %98, %103 ]
  %82 = phi ptr [ %2, %11 ], [ %119, %103 ]
  %83 = phi i64 [ 0, %11 ], [ %122, %103 ]
  %84 = phi ptr [ %3, %11 ], [ %121, %103 ]
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 1
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 2
  br label %87

87:                                               ; preds = %79, %97
  %88 = phi i64 [ %80, %79 ], [ %100, %97 ]
  %89 = phi i16 [ %81, %79 ], [ %98, %97 ]
  %90 = phi i64 [ 0, %79 ], [ %101, %97 ]
  %91 = srem i64 %88, 3
  switch i64 %91, label %97 [
    i64 0, label %94
    i64 1, label %92
    i64 2, label %93
  ]

92:                                               ; preds = %87
  br label %94

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %87, %92, %93
  %95 = phi ptr [ %82, %93 ], [ %85, %92 ], [ %86, %87 ]
  %96 = load i16, ptr %95, align 2, !tbaa !35
  br label %97

97:                                               ; preds = %94, %87
  %98 = phi i16 [ %89, %87 ], [ %96, %94 ]
  %99 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 %90
  store i16 %98, ptr %99, align 2, !tbaa !35
  %100 = add nsw i64 %88, 1
  %101 = add nuw nsw i64 %90, 1
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %87, !llvm.loop !93

103:                                              ; preds = %97
  %104 = add i64 %80, 4
  %105 = load i16, ptr %12, align 2, !tbaa !35
  %106 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %105, i64 noundef %7) #12
  %107 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %106, ptr noundef %84) #12
  %108 = load i16, ptr %5, align 2, !tbaa !35
  %109 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %108, i64 noundef %7) #12
  %110 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %109, ptr noundef %107) #12
  %111 = load i16, ptr %13, align 2, !tbaa !35
  %112 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %111, i64 noundef %7) #12
  %113 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %112, ptr noundef %110) #12
  %114 = load i16, ptr %14, align 2, !tbaa !35
  %115 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %114, i64 noundef %7) #12
  %116 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %115, ptr noundef %113) #12
  %117 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %109, ptr noundef %116) #12
  %118 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %112, ptr noundef %117) #12
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 2
  %120 = load i64, ptr %15, align 8, !tbaa !40
  %121 = getelementptr inbounds i8, ptr %118, i64 %120
  %122 = add nuw nsw i64 %83, 2
  %123 = icmp slt i64 %122, %1
  br i1 %123, label %79, label %124, !llvm.loop !94

124:                                              ; preds = %103, %52, %9, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportCMYKQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, ptr noalias noundef readonly %4, ptr noalias noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !76
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1224, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %12) #10
  br label %279

14:                                               ; preds = %7
  %15 = load i64, ptr %1, align 8, !tbaa !39
  %16 = add i64 %15, -8
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 61)
  switch i64 %17, label %246 [
    i64 0, label %18
    i64 1, label %50
    i64 3, label %136
    i64 7, label %209
  ]

18:                                               ; preds = %14
  %19 = icmp sgt i64 %2, 0
  br i1 %19, label %20, label %279

20:                                               ; preds = %18
  %21 = icmp eq ptr %4, null
  %22 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %23

23:                                               ; preds = %20, %41
  %24 = phi i64 [ 0, %20 ], [ %48, %41 ]
  %25 = phi ptr [ %3, %20 ], [ %45, %41 ]
  %26 = phi ptr [ %5, %20 ], [ %47, %41 ]
  %27 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 0, i32 2
  %28 = load i16, ptr %27, align 2, !tbaa !29
  %29 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %28) #12
  %30 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %29, ptr noundef %26) #12
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !30
  %33 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %32) #12
  %34 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %33, ptr noundef nonnull %30) #12
  %35 = load i16, ptr %25, align 2, !tbaa !31
  %36 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %35) #12
  %37 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %36, ptr noundef nonnull %34) #12
  br i1 %21, label %41, label %38

38:                                               ; preds = %23
  %39 = getelementptr inbounds i16, ptr %4, i64 %24
  %40 = load i16, ptr %39, align 2, !tbaa !35
  br label %41

41:                                               ; preds = %23, %38
  %42 = phi i16 [ %40, %38 ], [ 0, %23 ]
  %43 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %42) #12
  %44 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %43, ptr noundef nonnull %37) #12
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 1
  %46 = load i64, ptr %22, align 8, !tbaa !40
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = add nuw nsw i64 %24, 1
  %49 = icmp eq i64 %48, %2
  br i1 %49, label %279, label %23, !llvm.loop !95

50:                                               ; preds = %14
  %51 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !42
  %53 = icmp eq i32 %52, 1
  %54 = icmp sgt i64 %2, 0
  br i1 %53, label %60, label %55

55:                                               ; preds = %50
  br i1 %54, label %56, label %279

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %58 = icmp eq ptr %4, null
  %59 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %109

60:                                               ; preds = %50
  br i1 %54, label %61, label %279

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %63 = icmp eq ptr %4, null
  %64 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %65

65:                                               ; preds = %61, %96
  %66 = phi i64 [ 0, %61 ], [ %107, %96 ]
  %67 = phi ptr [ %3, %61 ], [ %104, %96 ]
  %68 = phi ptr [ %5, %61 ], [ %106, %96 ]
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 2
  %70 = load i16, ptr %69, align 2, !tbaa !29
  %71 = uitofp i16 %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fptrunc double %72 to float
  %74 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %73) #12
  %75 = load i32, ptr %62, align 8, !tbaa !43
  %76 = tail call fastcc ptr @PopShortPixel(i32 noundef %75, i16 noundef zeroext %74, ptr noundef %68) #12
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 1
  %78 = load i16, ptr %77, align 2, !tbaa !30
  %79 = uitofp i16 %78 to double
  %80 = fmul double %79, 0x3EF0001000100010
  %81 = fptrunc double %80 to float
  %82 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %81) #12
  %83 = load i32, ptr %62, align 8, !tbaa !43
  %84 = tail call fastcc ptr @PopShortPixel(i32 noundef %83, i16 noundef zeroext %82, ptr noundef nonnull %76) #12
  %85 = load i16, ptr %67, align 2, !tbaa !31
  %86 = uitofp i16 %85 to double
  %87 = fmul double %86, 0x3EF0001000100010
  %88 = fptrunc double %87 to float
  %89 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %88) #12
  %90 = load i32, ptr %62, align 8, !tbaa !43
  %91 = tail call fastcc ptr @PopShortPixel(i32 noundef %90, i16 noundef zeroext %89, ptr noundef nonnull %84) #12
  br i1 %63, label %96, label %92

92:                                               ; preds = %65
  %93 = getelementptr inbounds i16, ptr %4, i64 %66
  %94 = load i16, ptr %93, align 2, !tbaa !35
  %95 = zext i16 %94 to i32
  br label %96

96:                                               ; preds = %65, %92
  %97 = phi i32 [ %95, %92 ], [ 0, %65 ]
  %98 = sitofp i32 %97 to double
  %99 = fmul double %98, 0x3EF0001000100010
  %100 = fptrunc double %99 to float
  %101 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %100) #12
  %102 = load i32, ptr %62, align 8, !tbaa !43
  %103 = tail call fastcc ptr @PopShortPixel(i32 noundef %102, i16 noundef zeroext %101, ptr noundef nonnull %91) #12
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1
  %105 = load i64, ptr %64, align 8, !tbaa !40
  %106 = getelementptr inbounds i8, ptr %103, i64 %105
  %107 = add nuw nsw i64 %66, 1
  %108 = icmp eq i64 %107, %2
  br i1 %108, label %279, label %65, !llvm.loop !96

109:                                              ; preds = %56, %127
  %110 = phi i64 [ 0, %56 ], [ %134, %127 ]
  %111 = phi ptr [ %3, %56 ], [ %131, %127 ]
  %112 = phi ptr [ %5, %56 ], [ %133, %127 ]
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  %114 = load i16, ptr %113, align 2, !tbaa !29
  %115 = load i32, ptr %57, align 8, !tbaa !43
  %116 = tail call fastcc ptr @PopShortPixel(i32 noundef %115, i16 noundef zeroext %114, ptr noundef %112) #12
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 1
  %118 = load i16, ptr %117, align 2, !tbaa !30
  %119 = load i32, ptr %57, align 8, !tbaa !43
  %120 = tail call fastcc ptr @PopShortPixel(i32 noundef %119, i16 noundef zeroext %118, ptr noundef nonnull %116) #12
  %121 = load i16, ptr %111, align 2, !tbaa !31
  %122 = load i32, ptr %57, align 8, !tbaa !43
  %123 = tail call fastcc ptr @PopShortPixel(i32 noundef %122, i16 noundef zeroext %121, ptr noundef nonnull %120) #12
  br i1 %58, label %127, label %124

124:                                              ; preds = %109
  %125 = getelementptr inbounds i16, ptr %4, i64 %110
  %126 = load i16, ptr %125, align 2, !tbaa !35
  br label %127

127:                                              ; preds = %109, %124
  %128 = phi i16 [ %126, %124 ], [ 0, %109 ]
  %129 = load i32, ptr %57, align 8, !tbaa !43
  %130 = tail call fastcc ptr @PopShortPixel(i32 noundef %129, i16 noundef zeroext %128, ptr noundef nonnull %123) #12
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 1
  %132 = load i64, ptr %59, align 8, !tbaa !40
  %133 = getelementptr inbounds i8, ptr %130, i64 %132
  %134 = add nuw nsw i64 %110, 1
  %135 = icmp eq i64 %134, %2
  br i1 %135, label %279, label %109, !llvm.loop !97

136:                                              ; preds = %14
  %137 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %138 = load i32, ptr %137, align 8, !tbaa !42
  %139 = icmp eq i32 %138, 1
  %140 = icmp sgt i64 %2, 0
  br i1 %139, label %146, label %141

141:                                              ; preds = %136
  br i1 %140, label %142, label %279

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %144 = icmp eq ptr %4, null
  %145 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %178

146:                                              ; preds = %136
  br i1 %140, label %147, label %279

147:                                              ; preds = %146
  %148 = icmp eq ptr %4, null
  %149 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %150

150:                                              ; preds = %147, %169
  %151 = phi i64 [ 0, %147 ], [ %176, %169 ]
  %152 = phi ptr [ %3, %147 ], [ %173, %169 ]
  %153 = phi ptr [ %5, %147 ], [ %175, %169 ]
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 2
  %155 = load i16, ptr %154, align 2, !tbaa !29
  %156 = uitofp i16 %155 to float
  %157 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %156, ptr noundef %153) #12
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 1
  %159 = load i16, ptr %158, align 2, !tbaa !30
  %160 = uitofp i16 %159 to float
  %161 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %160, ptr noundef nonnull %157) #12
  %162 = load i16, ptr %152, align 2, !tbaa !31
  %163 = uitofp i16 %162 to float
  %164 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %163, ptr noundef nonnull %161) #12
  br i1 %148, label %169, label %165

165:                                              ; preds = %150
  %166 = getelementptr inbounds i16, ptr %4, i64 %151
  %167 = load i16, ptr %166, align 2, !tbaa !35
  %168 = zext i16 %167 to i32
  br label %169

169:                                              ; preds = %150, %165
  %170 = phi i32 [ %168, %165 ], [ 0, %150 ]
  %171 = sitofp i32 %170 to float
  %172 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %171, ptr noundef nonnull %164) #12
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 1
  %174 = load i64, ptr %149, align 8, !tbaa !40
  %175 = getelementptr inbounds i8, ptr %172, i64 %174
  %176 = add nuw nsw i64 %151, 1
  %177 = icmp eq i64 %176, %2
  br i1 %177, label %279, label %150, !llvm.loop !98

178:                                              ; preds = %142, %199
  %179 = phi i64 [ 0, %142 ], [ %207, %199 ]
  %180 = phi ptr [ %3, %142 ], [ %204, %199 ]
  %181 = phi ptr [ %5, %142 ], [ %206, %199 ]
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 0, i32 2
  %183 = load i16, ptr %182, align 2, !tbaa !29
  %184 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %183) #12
  %185 = load i32, ptr %143, align 8, !tbaa !43
  %186 = tail call fastcc ptr @PopLongPixel(i32 noundef %185, i32 noundef %184, ptr noundef %181) #12
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 0, i32 1
  %188 = load i16, ptr %187, align 2, !tbaa !30
  %189 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %188) #12
  %190 = load i32, ptr %143, align 8, !tbaa !43
  %191 = tail call fastcc ptr @PopLongPixel(i32 noundef %190, i32 noundef %189, ptr noundef nonnull %186) #12
  %192 = load i16, ptr %180, align 2, !tbaa !31
  %193 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %192) #12
  %194 = load i32, ptr %143, align 8, !tbaa !43
  %195 = tail call fastcc ptr @PopLongPixel(i32 noundef %194, i32 noundef %193, ptr noundef nonnull %191) #12
  br i1 %144, label %199, label %196

196:                                              ; preds = %178
  %197 = getelementptr inbounds i16, ptr %4, i64 %179
  %198 = load i16, ptr %197, align 2, !tbaa !35
  br label %199

199:                                              ; preds = %178, %196
  %200 = phi i16 [ %198, %196 ], [ 0, %178 ]
  %201 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %200) #12
  %202 = load i32, ptr %143, align 8, !tbaa !43
  %203 = tail call fastcc ptr @PopLongPixel(i32 noundef %202, i32 noundef %201, ptr noundef nonnull %195) #12
  %204 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 1
  %205 = load i64, ptr %145, align 8, !tbaa !40
  %206 = getelementptr inbounds i8, ptr %203, i64 %205
  %207 = add nuw nsw i64 %179, 1
  %208 = icmp eq i64 %207, %2
  br i1 %208, label %279, label %178, !llvm.loop !99

209:                                              ; preds = %14
  %210 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %211 = load i32, ptr %210, align 8, !tbaa !42
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %246

213:                                              ; preds = %209
  %214 = icmp sgt i64 %2, 0
  br i1 %214, label %215, label %279

215:                                              ; preds = %213
  %216 = icmp eq ptr %4, null
  %217 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %218

218:                                              ; preds = %215, %237
  %219 = phi i64 [ 0, %215 ], [ %244, %237 ]
  %220 = phi ptr [ %3, %215 ], [ %241, %237 ]
  %221 = phi ptr [ %5, %215 ], [ %243, %237 ]
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 0, i32 2
  %223 = load i16, ptr %222, align 2, !tbaa !29
  %224 = uitofp i16 %223 to double
  %225 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %224, ptr noundef %221) #12
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 0, i32 1
  %227 = load i16, ptr %226, align 2, !tbaa !30
  %228 = uitofp i16 %227 to double
  %229 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %228, ptr noundef nonnull %225) #12
  %230 = load i16, ptr %220, align 2, !tbaa !31
  %231 = uitofp i16 %230 to double
  %232 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %231, ptr noundef nonnull %229) #12
  br i1 %216, label %237, label %233

233:                                              ; preds = %218
  %234 = getelementptr inbounds i16, ptr %4, i64 %219
  %235 = load i16, ptr %234, align 2, !tbaa !35
  %236 = zext i16 %235 to i32
  br label %237

237:                                              ; preds = %218, %233
  %238 = phi i32 [ %236, %233 ], [ 0, %218 ]
  %239 = sitofp i32 %238 to double
  %240 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %239, ptr noundef nonnull %232) #12
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 1
  %242 = load i64, ptr %217, align 8, !tbaa !40
  %243 = getelementptr inbounds i8, ptr %240, i64 %242
  %244 = add nuw nsw i64 %219, 1
  %245 = icmp eq i64 %244, %2
  br i1 %245, label %279, label %218, !llvm.loop !100

246:                                              ; preds = %209, %14
  %247 = tail call fastcc i64 @GetQuantumRange(i64 noundef %15) #12
  %248 = icmp sgt i64 %2, 0
  br i1 %248, label %249, label %279

249:                                              ; preds = %246
  %250 = icmp eq ptr %4, null
  %251 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %252

252:                                              ; preds = %249, %270
  %253 = phi i64 [ 0, %249 ], [ %277, %270 ]
  %254 = phi ptr [ %3, %249 ], [ %274, %270 ]
  %255 = phi ptr [ %5, %249 ], [ %276, %270 ]
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 0, i32 2
  %257 = load i16, ptr %256, align 2, !tbaa !29
  %258 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %257, i64 noundef %247) #12
  %259 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %258, ptr noundef %255) #12
  %260 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 0, i32 1
  %261 = load i16, ptr %260, align 2, !tbaa !30
  %262 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %261, i64 noundef %247) #12
  %263 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %262, ptr noundef %259) #12
  %264 = load i16, ptr %254, align 2, !tbaa !31
  %265 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %264, i64 noundef %247) #12
  %266 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %265, ptr noundef %263) #12
  br i1 %250, label %270, label %267

267:                                              ; preds = %252
  %268 = getelementptr inbounds i16, ptr %4, i64 %253
  %269 = load i16, ptr %268, align 2, !tbaa !35
  br label %270

270:                                              ; preds = %252, %267
  %271 = phi i16 [ %269, %267 ], [ 0, %252 ]
  %272 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %271, i64 noundef %247) #12
  %273 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %272, ptr noundef %266) #12
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 1
  %275 = load i64, ptr %251, align 8, !tbaa !40
  %276 = getelementptr inbounds i8, ptr %273, i64 %275
  %277 = add nuw nsw i64 %253, 1
  %278 = icmp eq i64 %277, %2
  br i1 %278, label %279, label %252, !llvm.loop !101

279:                                              ; preds = %237, %199, %169, %127, %96, %41, %270, %213, %141, %146, %55, %60, %18, %246, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportCMYKAQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, ptr noalias noundef readonly %4, ptr noalias noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !76
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1371, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %12) #10
  br label %318

14:                                               ; preds = %7
  %15 = load i64, ptr %1, align 8, !tbaa !39
  %16 = add i64 %15, -8
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 61)
  switch i64 %17, label %281 [
    i64 0, label %18
    i64 1, label %55
    i64 3, label %155
    i64 7, label %239
  ]

18:                                               ; preds = %14
  %19 = icmp sgt i64 %2, 0
  br i1 %19, label %20, label %318

20:                                               ; preds = %18
  %21 = icmp eq ptr %4, null
  %22 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %23

23:                                               ; preds = %20, %41
  %24 = phi ptr [ %3, %20 ], [ %50, %41 ]
  %25 = phi ptr [ %5, %20 ], [ %52, %41 ]
  %26 = phi i64 [ 0, %20 ], [ %53, %41 ]
  %27 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 2
  %28 = load i16, ptr %27, align 2, !tbaa !29
  %29 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %28) #12
  %30 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %29, ptr noundef %25) #12
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !30
  %33 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %32) #12
  %34 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %33, ptr noundef nonnull %30) #12
  %35 = load i16, ptr %24, align 2, !tbaa !31
  %36 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %35) #12
  %37 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %36, ptr noundef nonnull %34) #12
  br i1 %21, label %41, label %38

38:                                               ; preds = %23
  %39 = getelementptr inbounds i16, ptr %4, i64 %26
  %40 = load i16, ptr %39, align 2, !tbaa !35
  br label %41

41:                                               ; preds = %23, %38
  %42 = phi i16 [ %40, %38 ], [ 0, %23 ]
  %43 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %42) #12
  %44 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %43, ptr noundef nonnull %37) #12
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !28
  %47 = xor i16 %46, -1
  %48 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %47) #12
  %49 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %48, ptr noundef nonnull %44) #12
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 1
  %51 = load i64, ptr %22, align 8, !tbaa !40
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  %53 = add nuw nsw i64 %26, 1
  %54 = icmp eq i64 %53, %2
  br i1 %54, label %318, label %23, !llvm.loop !102

55:                                               ; preds = %14
  %56 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !42
  %58 = icmp eq i32 %57, 1
  %59 = icmp sgt i64 %2, 0
  br i1 %58, label %65, label %60

60:                                               ; preds = %55
  br i1 %59, label %61, label %318

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %63 = icmp eq ptr %4, null
  %64 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %123

65:                                               ; preds = %55
  br i1 %59, label %66, label %318

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %68 = icmp eq ptr %4, null
  %69 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %70

70:                                               ; preds = %66, %101
  %71 = phi ptr [ %3, %66 ], [ %118, %101 ]
  %72 = phi ptr [ %5, %66 ], [ %120, %101 ]
  %73 = phi i64 [ 0, %66 ], [ %121, %101 ]
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 2
  %75 = load i16, ptr %74, align 2, !tbaa !29
  %76 = uitofp i16 %75 to double
  %77 = fmul double %76, 0x3EF0001000100010
  %78 = fptrunc double %77 to float
  %79 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %78) #12
  %80 = load i32, ptr %67, align 8, !tbaa !43
  %81 = tail call fastcc ptr @PopShortPixel(i32 noundef %80, i16 noundef zeroext %79, ptr noundef %72) #12
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 1
  %83 = load i16, ptr %82, align 2, !tbaa !30
  %84 = uitofp i16 %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fptrunc double %85 to float
  %87 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %86) #12
  %88 = load i32, ptr %67, align 8, !tbaa !43
  %89 = tail call fastcc ptr @PopShortPixel(i32 noundef %88, i16 noundef zeroext %87, ptr noundef nonnull %81) #12
  %90 = load i16, ptr %71, align 2, !tbaa !31
  %91 = uitofp i16 %90 to double
  %92 = fmul double %91, 0x3EF0001000100010
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %93) #12
  %95 = load i32, ptr %67, align 8, !tbaa !43
  %96 = tail call fastcc ptr @PopShortPixel(i32 noundef %95, i16 noundef zeroext %94, ptr noundef nonnull %89) #12
  br i1 %68, label %101, label %97

97:                                               ; preds = %70
  %98 = getelementptr inbounds i16, ptr %4, i64 %73
  %99 = load i16, ptr %98, align 2, !tbaa !35
  %100 = zext i16 %99 to i32
  br label %101

101:                                              ; preds = %70, %97
  %102 = phi i32 [ %100, %97 ], [ 0, %70 ]
  %103 = sitofp i32 %102 to double
  %104 = fmul double %103, 0x3EF0001000100010
  %105 = fptrunc double %104 to float
  %106 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %105) #12
  %107 = load i32, ptr %67, align 8, !tbaa !43
  %108 = tail call fastcc ptr @PopShortPixel(i32 noundef %107, i16 noundef zeroext %106, ptr noundef nonnull %96) #12
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  %110 = load i16, ptr %109, align 2, !tbaa !28
  %111 = xor i16 %110, -1
  %112 = uitofp i16 %111 to double
  %113 = fmul double %112, 0x3EF0001000100010
  %114 = fptrunc double %113 to float
  %115 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %114) #12
  %116 = load i32, ptr %67, align 8, !tbaa !43
  %117 = tail call fastcc ptr @PopShortPixel(i32 noundef %116, i16 noundef zeroext %115, ptr noundef nonnull %108) #12
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %119 = load i64, ptr %69, align 8, !tbaa !40
  %120 = getelementptr inbounds i8, ptr %117, i64 %119
  %121 = add nuw nsw i64 %73, 1
  %122 = icmp eq i64 %121, %2
  br i1 %122, label %318, label %70, !llvm.loop !103

123:                                              ; preds = %61, %141
  %124 = phi ptr [ %3, %61 ], [ %150, %141 ]
  %125 = phi ptr [ %5, %61 ], [ %152, %141 ]
  %126 = phi i64 [ 0, %61 ], [ %153, %141 ]
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 0, i32 2
  %128 = load i16, ptr %127, align 2, !tbaa !29
  %129 = load i32, ptr %62, align 8, !tbaa !43
  %130 = tail call fastcc ptr @PopShortPixel(i32 noundef %129, i16 noundef zeroext %128, ptr noundef %125) #12
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 0, i32 1
  %132 = load i16, ptr %131, align 2, !tbaa !30
  %133 = load i32, ptr %62, align 8, !tbaa !43
  %134 = tail call fastcc ptr @PopShortPixel(i32 noundef %133, i16 noundef zeroext %132, ptr noundef nonnull %130) #12
  %135 = load i16, ptr %124, align 2, !tbaa !31
  %136 = load i32, ptr %62, align 8, !tbaa !43
  %137 = tail call fastcc ptr @PopShortPixel(i32 noundef %136, i16 noundef zeroext %135, ptr noundef nonnull %134) #12
  br i1 %63, label %141, label %138

138:                                              ; preds = %123
  %139 = getelementptr inbounds i16, ptr %4, i64 %126
  %140 = load i16, ptr %139, align 2, !tbaa !35
  br label %141

141:                                              ; preds = %123, %138
  %142 = phi i16 [ %140, %138 ], [ 0, %123 ]
  %143 = load i32, ptr %62, align 8, !tbaa !43
  %144 = tail call fastcc ptr @PopShortPixel(i32 noundef %143, i16 noundef zeroext %142, ptr noundef nonnull %137) #12
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 0, i32 3
  %146 = load i16, ptr %145, align 2, !tbaa !28
  %147 = xor i16 %146, -1
  %148 = load i32, ptr %62, align 8, !tbaa !43
  %149 = tail call fastcc ptr @PopShortPixel(i32 noundef %148, i16 noundef zeroext %147, ptr noundef nonnull %144) #12
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 1
  %151 = load i64, ptr %64, align 8, !tbaa !40
  %152 = getelementptr inbounds i8, ptr %149, i64 %151
  %153 = add nuw nsw i64 %126, 1
  %154 = icmp eq i64 %153, %2
  br i1 %154, label %318, label %123, !llvm.loop !104

155:                                              ; preds = %14
  %156 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %157 = load i32, ptr %156, align 8, !tbaa !42
  %158 = icmp eq i32 %157, 1
  %159 = icmp sgt i64 %2, 0
  br i1 %158, label %165, label %160

160:                                              ; preds = %155
  br i1 %159, label %161, label %318

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %163 = icmp eq ptr %4, null
  %164 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %202

165:                                              ; preds = %155
  br i1 %159, label %166, label %318

166:                                              ; preds = %165
  %167 = icmp eq ptr %4, null
  %168 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %169

169:                                              ; preds = %166, %188
  %170 = phi ptr [ %3, %166 ], [ %197, %188 ]
  %171 = phi ptr [ %5, %166 ], [ %199, %188 ]
  %172 = phi i64 [ 0, %166 ], [ %200, %188 ]
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 2
  %174 = load i16, ptr %173, align 2, !tbaa !29
  %175 = uitofp i16 %174 to float
  %176 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %175, ptr noundef %171) #12
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 1
  %178 = load i16, ptr %177, align 2, !tbaa !30
  %179 = uitofp i16 %178 to float
  %180 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %179, ptr noundef nonnull %176) #12
  %181 = load i16, ptr %170, align 2, !tbaa !31
  %182 = uitofp i16 %181 to float
  %183 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %182, ptr noundef nonnull %180) #12
  br i1 %167, label %188, label %184

184:                                              ; preds = %169
  %185 = getelementptr inbounds i16, ptr %4, i64 %172
  %186 = load i16, ptr %185, align 2, !tbaa !35
  %187 = zext i16 %186 to i32
  br label %188

188:                                              ; preds = %169, %184
  %189 = phi i32 [ %187, %184 ], [ 0, %169 ]
  %190 = sitofp i32 %189 to float
  %191 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %190, ptr noundef nonnull %183) #12
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 3
  %193 = load i16, ptr %192, align 2, !tbaa !28
  %194 = xor i16 %193, -1
  %195 = uitofp i16 %194 to float
  %196 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %195, ptr noundef nonnull %191) #12
  %197 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 1
  %198 = load i64, ptr %168, align 8, !tbaa !40
  %199 = getelementptr inbounds i8, ptr %196, i64 %198
  %200 = add nuw nsw i64 %172, 1
  %201 = icmp eq i64 %200, %2
  br i1 %201, label %318, label %169, !llvm.loop !105

202:                                              ; preds = %161, %223
  %203 = phi ptr [ %3, %161 ], [ %234, %223 ]
  %204 = phi ptr [ %5, %161 ], [ %236, %223 ]
  %205 = phi i64 [ 0, %161 ], [ %237, %223 ]
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 0, i32 2
  %207 = load i16, ptr %206, align 2, !tbaa !29
  %208 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %207) #12
  %209 = load i32, ptr %162, align 8, !tbaa !43
  %210 = tail call fastcc ptr @PopLongPixel(i32 noundef %209, i32 noundef %208, ptr noundef %204) #12
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 0, i32 1
  %212 = load i16, ptr %211, align 2, !tbaa !30
  %213 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %212) #12
  %214 = load i32, ptr %162, align 8, !tbaa !43
  %215 = tail call fastcc ptr @PopLongPixel(i32 noundef %214, i32 noundef %213, ptr noundef nonnull %210) #12
  %216 = load i16, ptr %203, align 2, !tbaa !31
  %217 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %216) #12
  %218 = load i32, ptr %162, align 8, !tbaa !43
  %219 = tail call fastcc ptr @PopLongPixel(i32 noundef %218, i32 noundef %217, ptr noundef nonnull %215) #12
  br i1 %163, label %223, label %220

220:                                              ; preds = %202
  %221 = getelementptr inbounds i16, ptr %4, i64 %205
  %222 = load i16, ptr %221, align 2, !tbaa !35
  br label %223

223:                                              ; preds = %202, %220
  %224 = phi i16 [ %222, %220 ], [ 0, %202 ]
  %225 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %224) #12
  %226 = load i32, ptr %162, align 8, !tbaa !43
  %227 = tail call fastcc ptr @PopLongPixel(i32 noundef %226, i32 noundef %225, ptr noundef nonnull %219) #12
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 0, i32 3
  %229 = load i16, ptr %228, align 2, !tbaa !28
  %230 = xor i16 %229, -1
  %231 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %230) #12
  %232 = load i32, ptr %162, align 8, !tbaa !43
  %233 = tail call fastcc ptr @PopLongPixel(i32 noundef %232, i32 noundef %231, ptr noundef nonnull %227) #12
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 1
  %235 = load i64, ptr %164, align 8, !tbaa !40
  %236 = getelementptr inbounds i8, ptr %233, i64 %235
  %237 = add nuw nsw i64 %205, 1
  %238 = icmp eq i64 %237, %2
  br i1 %238, label %318, label %202, !llvm.loop !106

239:                                              ; preds = %14
  %240 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %241 = load i32, ptr %240, align 8, !tbaa !42
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %281

243:                                              ; preds = %239
  %244 = icmp sgt i64 %2, 0
  br i1 %244, label %245, label %318

245:                                              ; preds = %243
  %246 = icmp eq ptr %4, null
  %247 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %248

248:                                              ; preds = %245, %267
  %249 = phi ptr [ %3, %245 ], [ %276, %267 ]
  %250 = phi ptr [ %5, %245 ], [ %278, %267 ]
  %251 = phi i64 [ 0, %245 ], [ %279, %267 ]
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 2
  %253 = load i16, ptr %252, align 2, !tbaa !29
  %254 = uitofp i16 %253 to double
  %255 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %254, ptr noundef %250) #12
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 1
  %257 = load i16, ptr %256, align 2, !tbaa !30
  %258 = uitofp i16 %257 to double
  %259 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %258, ptr noundef nonnull %255) #12
  %260 = load i16, ptr %249, align 2, !tbaa !31
  %261 = uitofp i16 %260 to double
  %262 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %261, ptr noundef nonnull %259) #12
  br i1 %246, label %267, label %263

263:                                              ; preds = %248
  %264 = getelementptr inbounds i16, ptr %4, i64 %251
  %265 = load i16, ptr %264, align 2, !tbaa !35
  %266 = zext i16 %265 to i32
  br label %267

267:                                              ; preds = %248, %263
  %268 = phi i32 [ %266, %263 ], [ 0, %248 ]
  %269 = sitofp i32 %268 to double
  %270 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %269, ptr noundef nonnull %262) #12
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 3
  %272 = load i16, ptr %271, align 2, !tbaa !28
  %273 = xor i16 %272, -1
  %274 = uitofp i16 %273 to double
  %275 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %274, ptr noundef nonnull %270) #12
  %276 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 1
  %277 = load i64, ptr %247, align 8, !tbaa !40
  %278 = getelementptr inbounds i8, ptr %275, i64 %277
  %279 = add nuw nsw i64 %251, 1
  %280 = icmp eq i64 %279, %2
  br i1 %280, label %318, label %248, !llvm.loop !107

281:                                              ; preds = %239, %14
  %282 = tail call fastcc i64 @GetQuantumRange(i64 noundef %15) #12
  %283 = icmp sgt i64 %2, 0
  br i1 %283, label %284, label %318

284:                                              ; preds = %281
  %285 = icmp eq ptr %4, null
  %286 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %287

287:                                              ; preds = %284, %305
  %288 = phi ptr [ %3, %284 ], [ %313, %305 ]
  %289 = phi ptr [ %5, %284 ], [ %315, %305 ]
  %290 = phi i64 [ 0, %284 ], [ %316, %305 ]
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 0, i32 2
  %292 = load i16, ptr %291, align 2, !tbaa !29
  %293 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %292, i64 noundef %282) #12
  %294 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %293, ptr noundef %289) #12
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 0, i32 1
  %296 = load i16, ptr %295, align 2, !tbaa !30
  %297 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %296, i64 noundef %282) #12
  %298 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %297, ptr noundef %294) #12
  %299 = load i16, ptr %288, align 2, !tbaa !31
  %300 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %299, i64 noundef %282) #12
  %301 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %300, ptr noundef %298) #12
  br i1 %285, label %305, label %302

302:                                              ; preds = %287
  %303 = getelementptr inbounds i16, ptr %4, i64 %290
  %304 = load i16, ptr %303, align 2, !tbaa !35
  br label %305

305:                                              ; preds = %287, %302
  %306 = phi i16 [ %304, %302 ], [ 0, %287 ]
  %307 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %306, i64 noundef %282) #12
  %308 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %307, ptr noundef %301) #12
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 0, i32 3
  %310 = load i16, ptr %309, align 2, !tbaa !28
  %311 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %310, i64 noundef %282) #12
  %312 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %311, ptr noundef %308) #12
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 1
  %314 = load i64, ptr %286, align 8, !tbaa !40
  %315 = getelementptr inbounds i8, ptr %312, i64 %314
  %316 = add nuw nsw i64 %290, 1
  %317 = icmp eq i64 %316, %2
  br i1 %317, label %318, label %287, !llvm.loop !108

318:                                              ; preds = %267, %223, %188, %141, %101, %41, %305, %243, %160, %165, %60, %65, %18, %281, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportGrayQuantum(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, ptr noalias noundef %4) unnamed_addr #0 {
  %6 = load i64, ptr %1, align 8, !tbaa !39
  switch i64 %6, label %373 [
    i64 1, label %14
    i64 4, label %11
    i64 8, label %7
    i64 10, label %147
    i64 12, label %234
    i64 16, label %274
    i64 32, label %316
    i64 64, label %353
  ]

7:                                                ; preds = %5
  %8 = icmp sgt i64 %2, 0
  br i1 %8, label %9, label %391

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %134

11:                                               ; preds = %5
  %12 = add i64 %2, -1
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %106, label %124

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !109
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = xor i1 %17, true
  %20 = zext i1 %19 to i32
  %21 = icmp sgt i64 %2, 7
  br i1 %21, label %22, label %85

22:                                               ; preds = %14
  %23 = add nsw i64 %2, -7
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi ptr [ %81, %24 ], [ %3, %22 ]
  %26 = phi ptr [ %82, %24 ], [ %4, %22 ]
  %27 = phi i64 [ %83, %24 ], [ %23, %22 ]
  %28 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %25) #12
  %29 = fcmp olt float %28, 3.276750e+04
  %30 = select i1 %29, i32 %18, i32 %20
  %31 = trunc i32 %30 to i8
  %32 = shl nuw i8 %31, 7
  store i8 %32, ptr %26, align 1, !tbaa !110
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 1
  %34 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %33) #12
  %35 = fcmp olt float %34, 3.276750e+04
  %36 = select i1 %35, i32 %18, i32 %20
  %37 = trunc i32 %36 to i8
  %38 = shl nuw nsw i8 %37, 6
  %39 = or disjoint i8 %38, %32
  store i8 %39, ptr %26, align 1, !tbaa !110
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 2
  %41 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %40) #12
  %42 = fcmp olt float %41, 3.276750e+04
  %43 = select i1 %42, i32 %18, i32 %20
  %44 = trunc i32 %43 to i8
  %45 = shl nuw nsw i8 %44, 5
  %46 = or disjoint i8 %45, %39
  store i8 %46, ptr %26, align 1, !tbaa !110
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 3
  %48 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %47) #12
  %49 = fcmp olt float %48, 3.276750e+04
  %50 = select i1 %49, i32 %18, i32 %20
  %51 = trunc i32 %50 to i8
  %52 = shl nuw nsw i8 %51, 4
  %53 = or disjoint i8 %52, %46
  store i8 %53, ptr %26, align 1, !tbaa !110
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 4
  %55 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %54) #12
  %56 = fcmp olt float %55, 3.276750e+04
  %57 = select i1 %56, i32 %18, i32 %20
  %58 = trunc i32 %57 to i8
  %59 = shl nuw nsw i8 %58, 3
  %60 = or disjoint i8 %59, %53
  store i8 %60, ptr %26, align 1, !tbaa !110
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 5
  %62 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %61) #12
  %63 = fcmp olt float %62, 3.276750e+04
  %64 = select i1 %63, i32 %18, i32 %20
  %65 = trunc i32 %64 to i8
  %66 = shl nuw nsw i8 %65, 2
  %67 = or disjoint i8 %66, %60
  store i8 %67, ptr %26, align 1, !tbaa !110
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 6
  %69 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %68) #12
  %70 = fcmp olt float %69, 3.276750e+04
  %71 = select i1 %70, i32 %18, i32 %20
  %72 = trunc i32 %71 to i8
  %73 = shl nuw nsw i8 %72, 1
  %74 = or disjoint i8 %73, %67
  store i8 %74, ptr %26, align 1, !tbaa !110
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 7
  %76 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %75) #12
  %77 = fcmp olt float %76, 3.276750e+04
  %78 = select i1 %77, i32 %18, i32 %20
  %79 = trunc i32 %78 to i8
  %80 = or i8 %74, %79
  store i8 %80, ptr %26, align 1, !tbaa !110
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %25, i64 8
  %82 = getelementptr inbounds i8, ptr %26, i64 1
  %83 = add nsw i64 %27, -8
  %84 = icmp ugt i64 %27, 8
  br i1 %84, label %24, label %85, !llvm.loop !111

85:                                               ; preds = %24, %14
  %86 = phi ptr [ %4, %14 ], [ %82, %24 ]
  %87 = phi ptr [ %3, %14 ], [ %81, %24 ]
  %88 = and i64 %2, 7
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %391, label %90

90:                                               ; preds = %85
  store i8 0, ptr %86, align 1, !tbaa !110
  %91 = sub nuw nsw i64 8, %88
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i8 [ 0, %90 ], [ %102, %92 ]
  %94 = phi ptr [ %87, %90 ], [ %103, %92 ]
  %95 = phi i64 [ 7, %90 ], [ %104, %92 ]
  %96 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %94) #12
  %97 = fcmp olt float %96, 3.276750e+04
  %98 = select i1 %97, i32 %18, i32 %20
  %99 = trunc i64 %95 to i32
  %100 = shl nuw i32 %98, %99
  %101 = trunc i32 %100 to i8
  %102 = or i8 %93, %101
  store i8 %102, ptr %86, align 1, !tbaa !110
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %104 = add nsw i64 %95, -1
  %105 = icmp ugt i64 %95, %91
  br i1 %105, label %92, label %391, !llvm.loop !112

106:                                              ; preds = %11, %106
  %107 = phi ptr [ %120, %106 ], [ %3, %11 ]
  %108 = phi ptr [ %121, %106 ], [ %4, %11 ]
  %109 = phi i64 [ %122, %106 ], [ 0, %11 ]
  %110 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %107) #12
  %111 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %110) #12
  %112 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %111) #12
  %113 = and i8 %112, -16
  store i8 %113, ptr %108, align 1, !tbaa !110
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 1
  %115 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %114) #12
  %116 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %115) #12
  %117 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %116) #12
  %118 = lshr i8 %117, 4
  %119 = or disjoint i8 %118, %113
  store i8 %119, ptr %108, align 1, !tbaa !110
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 2
  %121 = getelementptr inbounds i8, ptr %108, i64 1
  %122 = add nuw nsw i64 %109, 2
  %123 = icmp slt i64 %122, %12
  br i1 %123, label %106, label %124, !llvm.loop !113

124:                                              ; preds = %106, %11
  %125 = phi ptr [ %4, %11 ], [ %121, %106 ]
  %126 = phi ptr [ %3, %11 ], [ %120, %106 ]
  %127 = and i64 %2, 1
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %391, label %129

129:                                              ; preds = %124
  %130 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %126) #12
  %131 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %130) #12
  %132 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %131) #12
  %133 = and i8 %132, -16
  store i8 %133, ptr %125, align 1, !tbaa !110
  br label %391

134:                                              ; preds = %9, %134
  %135 = phi ptr [ %3, %9 ], [ %142, %134 ]
  %136 = phi ptr [ %4, %9 ], [ %144, %134 ]
  %137 = phi i64 [ 0, %9 ], [ %145, %134 ]
  %138 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %135) #12
  %139 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %138) #12
  %140 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %139) #12
  %141 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %140, ptr noundef %136) #12
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %135, i64 1
  %143 = load i64, ptr %10, align 8, !tbaa !40
  %144 = getelementptr inbounds i8, ptr %141, i64 %143
  %145 = add nuw nsw i64 %137, 1
  %146 = icmp eq i64 %145, %2
  br i1 %146, label %391, label %134, !llvm.loop !114

147:                                              ; preds = %5
  %148 = tail call fastcc i64 @GetQuantumRange(i64 noundef 10) #12
  %149 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 8
  %150 = load i32, ptr %149, align 4, !tbaa !51
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = icmp sgt i64 %2, 0
  br i1 %153, label %154, label %391

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %221

156:                                              ; preds = %147
  %157 = add i64 %2, -2
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %190

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %161 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %162

162:                                              ; preds = %159, %162
  %163 = phi ptr [ %3, %159 ], [ %185, %162 ]
  %164 = phi ptr [ %4, %159 ], [ %187, %162 ]
  %165 = phi i64 [ 0, %159 ], [ %188, %162 ]
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 2
  %167 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %166) #12
  %168 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %167) #12
  %169 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %168, i64 noundef %148) #12
  %170 = shl i64 %169, 22
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 1
  %172 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %171) #12
  %173 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %172) #12
  %174 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %173, i64 noundef %148) #12
  %175 = shl i64 %174, 12
  %176 = or i64 %175, %170
  %177 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %163) #12
  %178 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %177) #12
  %179 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %178, i64 noundef %148) #12
  %180 = shl i64 %179, 2
  %181 = or i64 %176, %180
  %182 = trunc i64 %181 to i32
  %183 = load i32, ptr %160, align 8, !tbaa !43
  %184 = tail call fastcc ptr @PopLongPixel(i32 noundef %183, i32 noundef %182, ptr noundef %164) #12
  %185 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 3
  %186 = load i64, ptr %161, align 8, !tbaa !40
  %187 = getelementptr inbounds i8, ptr %184, i64 %186
  %188 = add nuw nsw i64 %165, 3
  %189 = icmp slt i64 %188, %157
  br i1 %189, label %162, label %190, !llvm.loop !115

190:                                              ; preds = %162, %156
  %191 = phi i64 [ 0, %156 ], [ %188, %162 ]
  %192 = phi ptr [ %4, %156 ], [ %187, %162 ]
  %193 = phi ptr [ %3, %156 ], [ %185, %162 ]
  %194 = icmp slt i64 %191, %2
  br i1 %194, label %195, label %391

195:                                              ; preds = %190
  %196 = add nuw nsw i64 %191, 1
  %197 = add nsw i64 %2, -1
  %198 = icmp slt i64 %191, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 1
  %201 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %200) #12
  %202 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %201) #12
  %203 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %202, i64 noundef %148) #12
  %204 = trunc i64 %203 to i32
  %205 = shl i32 %204, 12
  br label %206

206:                                              ; preds = %199, %195
  %207 = phi i32 [ %205, %199 ], [ 0, %195 ]
  %208 = icmp slt i64 %196, %2
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %193) #12
  %211 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %210) #12
  %212 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %211, i64 noundef %148) #12
  %213 = trunc i64 %212 to i32
  %214 = shl i32 %213, 2
  %215 = or i32 %214, %207
  br label %216

216:                                              ; preds = %209, %206
  %217 = phi i32 [ %215, %209 ], [ %207, %206 ]
  %218 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %219 = load i32, ptr %218, align 8, !tbaa !43
  %220 = tail call fastcc ptr @PopLongPixel(i32 noundef %219, i32 noundef %217, ptr noundef %192) #12
  br label %391

221:                                              ; preds = %154, %221
  %222 = phi ptr [ %3, %154 ], [ %229, %221 ]
  %223 = phi ptr [ %4, %154 ], [ %231, %221 ]
  %224 = phi i64 [ 0, %154 ], [ %232, %221 ]
  %225 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %222) #12
  %226 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %225) #12
  %227 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %226, i64 noundef %148) #12
  %228 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %227, ptr noundef %223) #12
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %222, i64 1
  %230 = load i64, ptr %155, align 8, !tbaa !40
  %231 = getelementptr inbounds i8, ptr %228, i64 %230
  %232 = add nuw nsw i64 %224, 1
  %233 = icmp eq i64 %232, %2
  br i1 %233, label %391, label %221, !llvm.loop !116

234:                                              ; preds = %5
  %235 = tail call fastcc i64 @GetQuantumRange(i64 noundef 12) #12
  %236 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 8
  %237 = load i32, ptr %236, align 4, !tbaa !51
  %238 = icmp eq i32 %237, 0
  %239 = icmp sgt i64 %2, 0
  br i1 %238, label %243, label %240

240:                                              ; preds = %234
  br i1 %239, label %241, label %391

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %261

243:                                              ; preds = %234
  br i1 %239, label %244, label %391

244:                                              ; preds = %243
  %245 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %246 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %247

247:                                              ; preds = %244, %247
  %248 = phi ptr [ %3, %244 ], [ %256, %247 ]
  %249 = phi ptr [ %4, %244 ], [ %258, %247 ]
  %250 = phi i64 [ 0, %244 ], [ %259, %247 ]
  %251 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %248) #12
  %252 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %251) #12
  %253 = load i32, ptr %245, align 8, !tbaa !43
  %254 = lshr i16 %252, 4
  %255 = tail call fastcc ptr @PopShortPixel(i32 noundef %253, i16 noundef zeroext %254, ptr noundef %249) #12
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %248, i64 1
  %257 = load i64, ptr %246, align 8, !tbaa !40
  %258 = getelementptr inbounds i8, ptr %255, i64 %257
  %259 = add nuw nsw i64 %250, 1
  %260 = icmp eq i64 %259, %2
  br i1 %260, label %391, label %247, !llvm.loop !117

261:                                              ; preds = %241, %261
  %262 = phi ptr [ %3, %241 ], [ %269, %261 ]
  %263 = phi ptr [ %4, %241 ], [ %271, %261 ]
  %264 = phi i64 [ 0, %241 ], [ %272, %261 ]
  %265 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %262) #12
  %266 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %265) #12
  %267 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %266, i64 noundef %235) #12
  %268 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %267, ptr noundef %263) #12
  %269 = getelementptr inbounds %struct._PixelPacket, ptr %262, i64 1
  %270 = load i64, ptr %242, align 8, !tbaa !40
  %271 = getelementptr inbounds i8, ptr %268, i64 %270
  %272 = add nuw nsw i64 %264, 1
  %273 = icmp eq i64 %272, %2
  br i1 %273, label %391, label %261, !llvm.loop !118

274:                                              ; preds = %5
  %275 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %276 = load i32, ptr %275, align 8, !tbaa !42
  %277 = icmp eq i32 %276, 1
  %278 = icmp sgt i64 %2, 0
  br i1 %277, label %283, label %279

279:                                              ; preds = %274
  br i1 %278, label %280, label %391

280:                                              ; preds = %279
  %281 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %282 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %303

283:                                              ; preds = %274
  br i1 %278, label %284, label %391

284:                                              ; preds = %283
  %285 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %286 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %287

287:                                              ; preds = %284, %287
  %288 = phi ptr [ %3, %284 ], [ %298, %287 ]
  %289 = phi ptr [ %4, %284 ], [ %300, %287 ]
  %290 = phi i64 [ 0, %284 ], [ %301, %287 ]
  %291 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %288) #12
  %292 = fpext float %291 to double
  %293 = fmul double %292, 0x3EF0001000100010
  %294 = fptrunc double %293 to float
  %295 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %294) #12
  %296 = load i32, ptr %285, align 8, !tbaa !43
  %297 = tail call fastcc ptr @PopShortPixel(i32 noundef %296, i16 noundef zeroext %295, ptr noundef %289) #12
  %298 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 1
  %299 = load i64, ptr %286, align 8, !tbaa !40
  %300 = getelementptr inbounds i8, ptr %297, i64 %299
  %301 = add nuw nsw i64 %290, 1
  %302 = icmp eq i64 %301, %2
  br i1 %302, label %391, label %287, !llvm.loop !119

303:                                              ; preds = %280, %303
  %304 = phi ptr [ %3, %280 ], [ %311, %303 ]
  %305 = phi ptr [ %4, %280 ], [ %313, %303 ]
  %306 = phi i64 [ 0, %280 ], [ %314, %303 ]
  %307 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %304) #12
  %308 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %307) #12
  %309 = load i32, ptr %281, align 8, !tbaa !43
  %310 = tail call fastcc ptr @PopShortPixel(i32 noundef %309, i16 noundef zeroext %308, ptr noundef %305) #12
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %304, i64 1
  %312 = load i64, ptr %282, align 8, !tbaa !40
  %313 = getelementptr inbounds i8, ptr %310, i64 %312
  %314 = add nuw nsw i64 %306, 1
  %315 = icmp eq i64 %314, %2
  br i1 %315, label %391, label %303, !llvm.loop !120

316:                                              ; preds = %5
  %317 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %318 = load i32, ptr %317, align 8, !tbaa !42
  %319 = icmp eq i32 %318, 1
  %320 = icmp sgt i64 %2, 0
  br i1 %319, label %325, label %321

321:                                              ; preds = %316
  br i1 %320, label %322, label %391

322:                                              ; preds = %321
  %323 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %324 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %339

325:                                              ; preds = %316
  br i1 %320, label %326, label %391

326:                                              ; preds = %325
  %327 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %328

328:                                              ; preds = %326, %328
  %329 = phi ptr [ %3, %326 ], [ %334, %328 ]
  %330 = phi ptr [ %4, %326 ], [ %336, %328 ]
  %331 = phi i64 [ 0, %326 ], [ %337, %328 ]
  %332 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %329) #12
  %333 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %332, ptr noundef %330) #12
  %334 = getelementptr inbounds %struct._PixelPacket, ptr %329, i64 1
  %335 = load i64, ptr %327, align 8, !tbaa !40
  %336 = getelementptr inbounds i8, ptr %333, i64 %335
  %337 = add nuw nsw i64 %331, 1
  %338 = icmp eq i64 %337, %2
  br i1 %338, label %391, label %328, !llvm.loop !121

339:                                              ; preds = %322, %339
  %340 = phi ptr [ %3, %322 ], [ %348, %339 ]
  %341 = phi ptr [ %4, %322 ], [ %350, %339 ]
  %342 = phi i64 [ 0, %322 ], [ %351, %339 ]
  %343 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %340) #12
  %344 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %343) #12
  %345 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %344) #12
  %346 = load i32, ptr %323, align 8, !tbaa !43
  %347 = tail call fastcc ptr @PopLongPixel(i32 noundef %346, i32 noundef %345, ptr noundef %341) #12
  %348 = getelementptr inbounds %struct._PixelPacket, ptr %340, i64 1
  %349 = load i64, ptr %324, align 8, !tbaa !40
  %350 = getelementptr inbounds i8, ptr %347, i64 %349
  %351 = add nuw nsw i64 %342, 1
  %352 = icmp eq i64 %351, %2
  br i1 %352, label %391, label %339, !llvm.loop !122

353:                                              ; preds = %5
  %354 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %355 = load i32, ptr %354, align 8, !tbaa !42
  %356 = icmp eq i32 %355, 1
  br i1 %356, label %357, label %373

357:                                              ; preds = %353
  %358 = icmp sgt i64 %2, 0
  br i1 %358, label %359, label %391

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %361

361:                                              ; preds = %359, %361
  %362 = phi ptr [ %3, %359 ], [ %368, %361 ]
  %363 = phi ptr [ %4, %359 ], [ %370, %361 ]
  %364 = phi i64 [ 0, %359 ], [ %371, %361 ]
  %365 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %362) #12
  %366 = fpext float %365 to double
  %367 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %366, ptr noundef %363) #12
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %362, i64 1
  %369 = load i64, ptr %360, align 8, !tbaa !40
  %370 = getelementptr inbounds i8, ptr %367, i64 %369
  %371 = add nuw nsw i64 %364, 1
  %372 = icmp eq i64 %371, %2
  br i1 %372, label %391, label %361, !llvm.loop !123

373:                                              ; preds = %353, %5
  %374 = tail call fastcc i64 @GetQuantumRange(i64 noundef %6) #12
  %375 = icmp sgt i64 %2, 0
  br i1 %375, label %376, label %391

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %378

378:                                              ; preds = %376, %378
  %379 = phi ptr [ %3, %376 ], [ %386, %378 ]
  %380 = phi ptr [ %4, %376 ], [ %388, %378 ]
  %381 = phi i64 [ 0, %376 ], [ %389, %378 ]
  %382 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %379) #12
  %383 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %382) #12
  %384 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %383, i64 noundef %374) #12
  %385 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %384, ptr noundef %380) #12
  %386 = getelementptr inbounds %struct._PixelPacket, ptr %379, i64 1
  %387 = load i64, ptr %377, align 8, !tbaa !40
  %388 = getelementptr inbounds i8, ptr %385, i64 %387
  %389 = add nuw nsw i64 %381, 1
  %390 = icmp eq i64 %389, %2
  br i1 %390, label %391, label %378, !llvm.loop !124

391:                                              ; preds = %361, %339, %328, %303, %287, %261, %247, %221, %134, %92, %378, %357, %321, %325, %279, %283, %240, %243, %152, %7, %373, %190, %216, %124, %129, %85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportGrayAlphaQuantum(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, ptr noalias noundef %4) unnamed_addr #0 {
  %6 = load i64, ptr %1, align 8, !tbaa !39
  switch i64 %6, label %274 [
    i64 1, label %13
    i64 4, label %11
    i64 8, label %7
    i64 16, label %145
    i64 32, label %201
    i64 64, label %249
  ]

7:                                                ; preds = %5
  %8 = icmp sgt i64 %2, 0
  br i1 %8, label %9, label %297

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %127

11:                                               ; preds = %5
  %12 = icmp sgt i64 %2, 0
  br i1 %12, label %107, label %297

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !109
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = xor i1 %16, true
  %19 = zext i1 %18 to i32
  %20 = icmp sgt i64 %2, 3
  br i1 %20, label %21, label %77

21:                                               ; preds = %13
  %22 = add nsw i64 %2, -3
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi ptr [ %73, %23 ], [ %3, %21 ]
  %25 = phi ptr [ %74, %23 ], [ %4, %21 ]
  %26 = phi i64 [ %75, %23 ], [ %22, %21 ]
  %27 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %24) #12
  %28 = fcmp ogt float %27, 3.276750e+04
  %29 = select i1 %28, i32 %19, i32 %17
  %30 = trunc i32 %29 to i8
  %31 = shl nuw i8 %30, 7
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !28
  %34 = icmp eq i16 %33, 0
  %35 = select i1 %34, i8 64, i8 0
  %36 = or disjoint i8 %35, %31
  store i8 %36, ptr %25, align 1, !tbaa !110
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 1
  %38 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %37) #12
  %39 = fcmp ogt float %38, 3.276750e+04
  %40 = select i1 %39, i32 %19, i32 %17
  %41 = trunc i32 %40 to i8
  %42 = shl nuw nsw i8 %41, 5
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 1, i32 3
  %44 = load i16, ptr %43, align 2, !tbaa !28
  %45 = icmp eq i16 %44, 0
  %46 = select i1 %45, i8 16, i8 0
  %47 = or disjoint i8 %42, %46
  %48 = or disjoint i8 %47, %36
  store i8 %48, ptr %25, align 1, !tbaa !110
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 2
  %50 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %49) #12
  %51 = fcmp ogt float %50, 3.276750e+04
  %52 = select i1 %51, i32 %19, i32 %17
  %53 = trunc i32 %52 to i8
  %54 = shl nuw nsw i8 %53, 3
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 2, i32 3
  %56 = load i16, ptr %55, align 2, !tbaa !28
  %57 = icmp eq i16 %56, 0
  %58 = select i1 %57, i8 4, i8 0
  %59 = or disjoint i8 %54, %58
  %60 = or disjoint i8 %59, %48
  store i8 %60, ptr %25, align 1, !tbaa !110
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 3
  %62 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef nonnull %61) #12
  %63 = fcmp ogt float %62, 3.276750e+04
  %64 = select i1 %63, i32 %19, i32 %17
  %65 = trunc i32 %64 to i8
  %66 = shl nuw nsw i8 %65, 1
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 3, i32 3
  %68 = load i16, ptr %67, align 2, !tbaa !28
  %69 = icmp eq i16 %68, 0
  %70 = zext i1 %69 to i8
  %71 = or disjoint i8 %66, %70
  %72 = or disjoint i8 %71, %60
  store i8 %72, ptr %25, align 1, !tbaa !110
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 4
  %74 = getelementptr inbounds i8, ptr %25, i64 1
  %75 = add nsw i64 %26, -4
  %76 = icmp ugt i64 %26, 4
  br i1 %76, label %23, label %77, !llvm.loop !125

77:                                               ; preds = %23, %13
  %78 = phi ptr [ %4, %13 ], [ %74, %23 ]
  %79 = phi ptr [ %3, %13 ], [ %73, %23 ]
  %80 = and i64 %2, 3
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %297, label %82

82:                                               ; preds = %77
  store i8 0, ptr %78, align 1, !tbaa !110
  br label %83

83:                                               ; preds = %82, %83
  %84 = phi ptr [ %79, %82 ], [ %104, %83 ]
  %85 = phi i64 [ 0, %82 ], [ %105, %83 ]
  %86 = phi i8 [ 0, %82 ], [ %103, %83 ]
  %87 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %84) #12
  %88 = fcmp ogt float %87, 3.276750e+04
  %89 = select i1 %88, i32 %19, i32 %17
  %90 = trunc i64 %85 to i32
  %91 = sub i32 7, %90
  %92 = shl nuw i32 %89, %91
  %93 = trunc i32 %92 to i8
  %94 = or i8 %86, %93
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %96 = load i16, ptr %95, align 2, !tbaa !28
  %97 = icmp eq i16 %96, 0
  %98 = zext i1 %97 to i32
  %99 = sub i32 6, %90
  %100 = and i32 %99, 254
  %101 = shl nuw i32 %98, %100
  %102 = trunc i32 %101 to i8
  %103 = or i8 %94, %102
  store i8 %103, ptr %78, align 1, !tbaa !110
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 1
  %105 = add nuw nsw i64 %85, 2
  %106 = icmp ugt i64 %105, %80
  br i1 %106, label %297, label %83, !llvm.loop !126

107:                                              ; preds = %11, %107
  %108 = phi ptr [ %123, %107 ], [ %3, %11 ]
  %109 = phi ptr [ %124, %107 ], [ %4, %11 ]
  %110 = phi i64 [ %125, %107 ], [ 0, %11 ]
  %111 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %108) #12
  %112 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %111) #12
  %113 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %112) #12
  %114 = and i8 %113, -16
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %116 = load i16, ptr %115, align 2, !tbaa !28
  %117 = xor i16 %116, -1
  %118 = uitofp i16 %117 to double
  %119 = tail call double @llvm.fmuladd.f64(double %118, double 0x3F30001000100010, double 5.000000e-01)
  %120 = fptoui double %119 to i8
  %121 = and i8 %120, 15
  %122 = or disjoint i8 %121, %114
  store i8 %122, ptr %109, align 1, !tbaa !110
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 1
  %124 = getelementptr inbounds i8, ptr %109, i64 1
  %125 = add nuw nsw i64 %110, 1
  %126 = icmp eq i64 %125, %2
  br i1 %126, label %297, label %107, !llvm.loop !127

127:                                              ; preds = %9, %127
  %128 = phi ptr [ %3, %9 ], [ %140, %127 ]
  %129 = phi ptr [ %4, %9 ], [ %142, %127 ]
  %130 = phi i64 [ 0, %9 ], [ %143, %127 ]
  %131 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %128) #12
  %132 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %131) #12
  %133 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %132) #12
  %134 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %133, ptr noundef %129) #12
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 3
  %136 = load i16, ptr %135, align 2, !tbaa !28
  %137 = xor i16 %136, -1
  %138 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %137) #12
  %139 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %138, ptr noundef nonnull %134) #12
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 1
  %141 = load i64, ptr %10, align 8, !tbaa !40
  %142 = getelementptr inbounds i8, ptr %139, i64 %141
  %143 = add nuw nsw i64 %130, 1
  %144 = icmp eq i64 %143, %2
  br i1 %144, label %297, label %127, !llvm.loop !128

145:                                              ; preds = %5
  %146 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !42
  %148 = icmp eq i32 %147, 1
  %149 = icmp sgt i64 %2, 0
  br i1 %148, label %154, label %150

150:                                              ; preds = %145
  br i1 %149, label %151, label %297

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %153 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %183

154:                                              ; preds = %145
  br i1 %149, label %155, label %297

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %157 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %158

158:                                              ; preds = %155, %158
  %159 = phi ptr [ %3, %155 ], [ %178, %158 ]
  %160 = phi ptr [ %4, %155 ], [ %180, %158 ]
  %161 = phi i64 [ 0, %155 ], [ %181, %158 ]
  %162 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %159) #12
  %163 = fpext float %162 to double
  %164 = fmul double %163, 0x3EF0001000100010
  %165 = fptrunc double %164 to float
  %166 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %165) #12
  %167 = load i32, ptr %156, align 8, !tbaa !43
  %168 = tail call fastcc ptr @PopShortPixel(i32 noundef %167, i16 noundef zeroext %166, ptr noundef %160) #12
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 3
  %170 = load i16, ptr %169, align 2, !tbaa !28
  %171 = xor i16 %170, -1
  %172 = uitofp i16 %171 to double
  %173 = fmul double %172, 0x3EF0001000100010
  %174 = fptrunc double %173 to float
  %175 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %174) #12
  %176 = load i32, ptr %156, align 8, !tbaa !43
  %177 = tail call fastcc ptr @PopShortPixel(i32 noundef %176, i16 noundef zeroext %175, ptr noundef nonnull %168) #12
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 1
  %179 = load i64, ptr %157, align 8, !tbaa !40
  %180 = getelementptr inbounds i8, ptr %177, i64 %179
  %181 = add nuw nsw i64 %161, 1
  %182 = icmp eq i64 %181, %2
  br i1 %182, label %297, label %158, !llvm.loop !129

183:                                              ; preds = %151, %183
  %184 = phi ptr [ %3, %151 ], [ %196, %183 ]
  %185 = phi ptr [ %4, %151 ], [ %198, %183 ]
  %186 = phi i64 [ 0, %151 ], [ %199, %183 ]
  %187 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %184) #12
  %188 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %187) #12
  %189 = load i32, ptr %152, align 8, !tbaa !43
  %190 = tail call fastcc ptr @PopShortPixel(i32 noundef %189, i16 noundef zeroext %188, ptr noundef %185) #12
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 0, i32 3
  %192 = load i16, ptr %191, align 2, !tbaa !28
  %193 = xor i16 %192, -1
  %194 = load i32, ptr %152, align 8, !tbaa !43
  %195 = tail call fastcc ptr @PopShortPixel(i32 noundef %194, i16 noundef zeroext %193, ptr noundef nonnull %190) #12
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 1
  %197 = load i64, ptr %153, align 8, !tbaa !40
  %198 = getelementptr inbounds i8, ptr %195, i64 %197
  %199 = add nuw nsw i64 %186, 1
  %200 = icmp eq i64 %199, %2
  br i1 %200, label %297, label %183, !llvm.loop !130

201:                                              ; preds = %5
  %202 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !42
  %204 = icmp eq i32 %203, 1
  %205 = icmp sgt i64 %2, 0
  br i1 %204, label %210, label %206

206:                                              ; preds = %201
  br i1 %205, label %207, label %297

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %209 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %229

210:                                              ; preds = %201
  br i1 %205, label %211, label %297

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %213

213:                                              ; preds = %211, %213
  %214 = phi ptr [ %3, %211 ], [ %224, %213 ]
  %215 = phi ptr [ %4, %211 ], [ %226, %213 ]
  %216 = phi i64 [ 0, %211 ], [ %227, %213 ]
  %217 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %214) #12
  %218 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %217, ptr noundef %215) #12
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 0, i32 3
  %220 = load i16, ptr %219, align 2, !tbaa !28
  %221 = xor i16 %220, -1
  %222 = uitofp i16 %221 to float
  %223 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %222, ptr noundef nonnull %218) #12
  %224 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 1
  %225 = load i64, ptr %212, align 8, !tbaa !40
  %226 = getelementptr inbounds i8, ptr %223, i64 %225
  %227 = add nuw nsw i64 %216, 1
  %228 = icmp eq i64 %227, %2
  br i1 %228, label %297, label %213, !llvm.loop !131

229:                                              ; preds = %207, %229
  %230 = phi ptr [ %3, %207 ], [ %244, %229 ]
  %231 = phi ptr [ %4, %207 ], [ %246, %229 ]
  %232 = phi i64 [ 0, %207 ], [ %247, %229 ]
  %233 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %230) #12
  %234 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %233) #12
  %235 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %234) #12
  %236 = load i32, ptr %208, align 8, !tbaa !43
  %237 = tail call fastcc ptr @PopLongPixel(i32 noundef %236, i32 noundef %235, ptr noundef %231) #12
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 0, i32 3
  %239 = load i16, ptr %238, align 2, !tbaa !28
  %240 = xor i16 %239, -1
  %241 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %240) #12
  %242 = load i32, ptr %208, align 8, !tbaa !43
  %243 = tail call fastcc ptr @PopLongPixel(i32 noundef %242, i32 noundef %241, ptr noundef nonnull %237) #12
  %244 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 1
  %245 = load i64, ptr %209, align 8, !tbaa !40
  %246 = getelementptr inbounds i8, ptr %243, i64 %245
  %247 = add nuw nsw i64 %232, 1
  %248 = icmp eq i64 %247, %2
  br i1 %248, label %297, label %229, !llvm.loop !132

249:                                              ; preds = %5
  %250 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %251 = load i32, ptr %250, align 8, !tbaa !42
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %274

253:                                              ; preds = %249
  %254 = icmp sgt i64 %2, 0
  br i1 %254, label %255, label %297

255:                                              ; preds = %253
  %256 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %257

257:                                              ; preds = %255, %257
  %258 = phi ptr [ %3, %255 ], [ %269, %257 ]
  %259 = phi ptr [ %4, %255 ], [ %271, %257 ]
  %260 = phi i64 [ 0, %255 ], [ %272, %257 ]
  %261 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %258) #12
  %262 = fpext float %261 to double
  %263 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %262, ptr noundef %259) #12
  %264 = getelementptr inbounds %struct._PixelPacket, ptr %258, i64 0, i32 3
  %265 = load i16, ptr %264, align 2, !tbaa !28
  %266 = xor i16 %265, -1
  %267 = uitofp i16 %266 to double
  %268 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %267, ptr noundef nonnull %263) #12
  %269 = getelementptr inbounds %struct._PixelPacket, ptr %258, i64 1
  %270 = load i64, ptr %256, align 8, !tbaa !40
  %271 = getelementptr inbounds i8, ptr %268, i64 %270
  %272 = add nuw nsw i64 %260, 1
  %273 = icmp eq i64 %272, %2
  br i1 %273, label %297, label %257, !llvm.loop !133

274:                                              ; preds = %249, %5
  %275 = tail call fastcc i64 @GetQuantumRange(i64 noundef %6) #12
  %276 = icmp sgt i64 %2, 0
  br i1 %276, label %277, label %297

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %279

279:                                              ; preds = %277, %279
  %280 = phi ptr [ %3, %277 ], [ %292, %279 ]
  %281 = phi ptr [ %4, %277 ], [ %294, %279 ]
  %282 = phi i64 [ 0, %277 ], [ %295, %279 ]
  %283 = tail call fastcc float @GetPixelLuma(ptr noundef %0, ptr noundef %280) #12
  %284 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %283) #12
  %285 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %284, i64 noundef %275) #12
  %286 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %285, ptr noundef %281) #12
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %280, i64 0, i32 3
  %288 = load i16, ptr %287, align 2, !tbaa !28
  %289 = xor i16 %288, -1
  %290 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %289, i64 noundef %275) #12
  %291 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %290, ptr noundef %286) #12
  %292 = getelementptr inbounds %struct._PixelPacket, ptr %280, i64 1
  %293 = load i64, ptr %278, align 8, !tbaa !40
  %294 = getelementptr inbounds i8, ptr %291, i64 %293
  %295 = add nuw nsw i64 %282, 1
  %296 = icmp eq i64 %295, %2
  br i1 %296, label %297, label %279, !llvm.loop !134

297:                                              ; preds = %257, %229, %213, %183, %158, %127, %107, %83, %279, %253, %206, %210, %150, %154, %7, %11, %274, %77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportGreenQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !39
  %6 = add i64 %5, -8
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 61)
  switch i64 %7, label %128 [
    i64 0, label %8
    i64 1, label %25
    i64 3, label %68
    i64 7, label %107
  ]

8:                                                ; preds = %4
  %9 = icmp sgt i64 %1, 0
  br i1 %9, label %10, label %146

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %2, %10 ], [ %20, %12 ]
  %14 = phi ptr [ %3, %10 ], [ %22, %12 ]
  %15 = phi i64 [ 0, %10 ], [ %23, %12 ]
  %16 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !30
  %18 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %17) #12
  %19 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %18, ptr noundef %14) #12
  %20 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 1
  %21 = load i64, ptr %11, align 8, !tbaa !40
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = add nuw nsw i64 %15, 1
  %24 = icmp eq i64 %23, %1
  br i1 %24, label %146, label %12, !llvm.loop !135

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !42
  %28 = icmp eq i32 %27, 1
  %29 = icmp sgt i64 %1, 0
  br i1 %28, label %34, label %30

30:                                               ; preds = %25
  br i1 %29, label %31, label %146

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %33 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %55

34:                                               ; preds = %25
  br i1 %29, label %35, label %146

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %37 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %2, %35 ], [ %50, %38 ]
  %40 = phi ptr [ %3, %35 ], [ %52, %38 ]
  %41 = phi i64 [ 0, %35 ], [ %53, %38 ]
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 0, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !30
  %44 = uitofp i16 %43 to double
  %45 = fmul double %44, 0x3EF0001000100010
  %46 = fptrunc double %45 to float
  %47 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %46) #12
  %48 = load i32, ptr %36, align 8, !tbaa !43
  %49 = tail call fastcc ptr @PopShortPixel(i32 noundef %48, i16 noundef zeroext %47, ptr noundef %40) #12
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 1
  %51 = load i64, ptr %37, align 8, !tbaa !40
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  %53 = add nuw nsw i64 %41, 1
  %54 = icmp eq i64 %53, %1
  br i1 %54, label %146, label %38, !llvm.loop !136

55:                                               ; preds = %31, %55
  %56 = phi ptr [ %2, %31 ], [ %63, %55 ]
  %57 = phi ptr [ %3, %31 ], [ %65, %55 ]
  %58 = phi i64 [ 0, %31 ], [ %66, %55 ]
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !30
  %61 = load i32, ptr %32, align 8, !tbaa !43
  %62 = tail call fastcc ptr @PopShortPixel(i32 noundef %61, i16 noundef zeroext %60, ptr noundef %57) #12
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %64 = load i64, ptr %33, align 8, !tbaa !40
  %65 = getelementptr inbounds i8, ptr %62, i64 %64
  %66 = add nuw nsw i64 %58, 1
  %67 = icmp eq i64 %66, %1
  br i1 %67, label %146, label %55, !llvm.loop !137

68:                                               ; preds = %4
  %69 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !42
  %71 = icmp eq i32 %70, 1
  %72 = icmp sgt i64 %1, 0
  br i1 %71, label %77, label %73

73:                                               ; preds = %68
  br i1 %72, label %74, label %146

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %76 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %93

77:                                               ; preds = %68
  br i1 %72, label %78, label %146

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi ptr [ %2, %78 ], [ %88, %80 ]
  %82 = phi ptr [ %3, %78 ], [ %90, %80 ]
  %83 = phi i64 [ 0, %78 ], [ %91, %80 ]
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 0, i32 1
  %85 = load i16, ptr %84, align 2, !tbaa !30
  %86 = uitofp i16 %85 to float
  %87 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %86, ptr noundef %82) #12
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 1
  %89 = load i64, ptr %79, align 8, !tbaa !40
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  %91 = add nuw nsw i64 %83, 1
  %92 = icmp eq i64 %91, %1
  br i1 %92, label %146, label %80, !llvm.loop !138

93:                                               ; preds = %74, %93
  %94 = phi ptr [ %2, %74 ], [ %102, %93 ]
  %95 = phi ptr [ %3, %74 ], [ %104, %93 ]
  %96 = phi i64 [ 0, %74 ], [ %105, %93 ]
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 1
  %98 = load i16, ptr %97, align 2, !tbaa !30
  %99 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %98) #12
  %100 = load i32, ptr %75, align 8, !tbaa !43
  %101 = tail call fastcc ptr @PopLongPixel(i32 noundef %100, i32 noundef %99, ptr noundef %95) #12
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %103 = load i64, ptr %76, align 8, !tbaa !40
  %104 = getelementptr inbounds i8, ptr %101, i64 %103
  %105 = add nuw nsw i64 %96, 1
  %106 = icmp eq i64 %105, %1
  br i1 %106, label %146, label %93, !llvm.loop !139

107:                                              ; preds = %4
  %108 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !42
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = icmp sgt i64 %1, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi ptr [ %2, %113 ], [ %123, %115 ]
  %117 = phi ptr [ %3, %113 ], [ %125, %115 ]
  %118 = phi i64 [ 0, %113 ], [ %126, %115 ]
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 1
  %120 = load i16, ptr %119, align 2, !tbaa !30
  %121 = uitofp i16 %120 to double
  %122 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %121, ptr noundef %117) #12
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 1
  %124 = load i64, ptr %114, align 8, !tbaa !40
  %125 = getelementptr inbounds i8, ptr %122, i64 %124
  %126 = add nuw nsw i64 %118, 1
  %127 = icmp eq i64 %126, %1
  br i1 %127, label %146, label %115, !llvm.loop !140

128:                                              ; preds = %107, %4
  %129 = tail call fastcc i64 @GetQuantumRange(i64 noundef %5) #12
  %130 = icmp sgt i64 %1, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi ptr [ %2, %131 ], [ %141, %133 ]
  %135 = phi ptr [ %3, %131 ], [ %143, %133 ]
  %136 = phi i64 [ 0, %131 ], [ %144, %133 ]
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 0, i32 1
  %138 = load i16, ptr %137, align 2, !tbaa !30
  %139 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %138, i64 noundef %129) #12
  %140 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %139, ptr noundef %135) #12
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 1
  %142 = load i64, ptr %132, align 8, !tbaa !40
  %143 = getelementptr inbounds i8, ptr %140, i64 %142
  %144 = add nuw nsw i64 %136, 1
  %145 = icmp eq i64 %144, %1
  br i1 %145, label %146, label %133, !llvm.loop !141

146:                                              ; preds = %115, %93, %80, %55, %38, %12, %133, %111, %73, %77, %30, %34, %8, %128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportIndexQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias noundef readonly %3, ptr noalias noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr %0, align 8, !tbaa !142
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2099, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %10) #10
  br label %275

12:                                               ; preds = %6
  %13 = load i64, ptr %1, align 8, !tbaa !39
  switch i64 %13, label %255 [
    i64 1, label %22
    i64 4, label %19
    i64 8, label %14
    i64 16, label %139
    i64 32, label %187
    i64 64, label %231
  ]

14:                                               ; preds = %12
  %15 = icmp sgt i64 %2, 0
  br i1 %15, label %16, label %275

16:                                               ; preds = %14
  %17 = icmp eq ptr %3, null
  %18 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %125

19:                                               ; preds = %12
  %20 = add i64 %2, -1
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %100, label %116

22:                                               ; preds = %12
  %23 = icmp sgt i64 %2, 7
  br i1 %23, label %24, label %78

24:                                               ; preds = %22
  %25 = add nsw i64 %2, -7
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %76, %26 ], [ %25, %24 ]
  %28 = phi ptr [ %75, %26 ], [ %4, %24 ]
  %29 = phi ptr [ %70, %26 ], [ %3, %24 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = load i16, ptr %29, align 2, !tbaa !35
  %32 = trunc i16 %31 to i8
  %33 = shl i8 %32, 7
  %34 = getelementptr inbounds i16, ptr %29, i64 2
  %35 = load i16, ptr %30, align 2, !tbaa !35
  %36 = trunc i16 %35 to i8
  %37 = shl i8 %36, 6
  %38 = and i8 %37, 64
  %39 = or disjoint i8 %38, %33
  %40 = getelementptr inbounds i16, ptr %29, i64 3
  %41 = load i16, ptr %34, align 2, !tbaa !35
  %42 = trunc i16 %41 to i8
  %43 = shl i8 %42, 5
  %44 = and i8 %43, 32
  %45 = or disjoint i8 %44, %39
  %46 = getelementptr inbounds i16, ptr %29, i64 4
  %47 = load i16, ptr %40, align 2, !tbaa !35
  %48 = trunc i16 %47 to i8
  %49 = shl i8 %48, 4
  %50 = and i8 %49, 16
  %51 = or disjoint i8 %50, %45
  %52 = getelementptr inbounds i16, ptr %29, i64 5
  %53 = load i16, ptr %46, align 2, !tbaa !35
  %54 = trunc i16 %53 to i8
  %55 = shl i8 %54, 3
  %56 = and i8 %55, 8
  %57 = or disjoint i8 %56, %51
  %58 = getelementptr inbounds i16, ptr %29, i64 6
  %59 = load i16, ptr %52, align 2, !tbaa !35
  %60 = trunc i16 %59 to i8
  %61 = shl i8 %60, 2
  %62 = and i8 %61, 4
  %63 = or disjoint i8 %62, %57
  %64 = getelementptr inbounds i16, ptr %29, i64 7
  %65 = load i16, ptr %58, align 2, !tbaa !35
  %66 = trunc i16 %65 to i8
  %67 = shl i8 %66, 1
  %68 = and i8 %67, 2
  %69 = or i8 %68, %63
  %70 = getelementptr inbounds i16, ptr %29, i64 8
  %71 = load i16, ptr %64, align 2, !tbaa !35
  %72 = trunc i16 %71 to i8
  %73 = and i8 %72, 1
  %74 = or i8 %73, %69
  store i8 %74, ptr %28, align 1, !tbaa !110
  %75 = getelementptr inbounds i8, ptr %28, i64 1
  %76 = add nsw i64 %27, -8
  %77 = icmp ugt i64 %27, 8
  br i1 %77, label %26, label %78, !llvm.loop !143

78:                                               ; preds = %26, %22
  %79 = phi ptr [ %3, %22 ], [ %70, %26 ]
  %80 = phi ptr [ %4, %22 ], [ %75, %26 ]
  %81 = and i64 %2, 7
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %275, label %83

83:                                               ; preds = %78
  %84 = sub nuw nsw i64 8, %81
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi i8 [ 0, %83 ], [ %97, %85 ]
  %87 = phi i64 [ 7, %83 ], [ %98, %85 ]
  %88 = phi ptr [ %79, %83 ], [ %89, %85 ]
  %89 = getelementptr inbounds i16, ptr %88, i64 1
  %90 = load i16, ptr %88, align 2, !tbaa !35
  %91 = and i16 %90, 1
  %92 = zext nneg i16 %91 to i32
  %93 = trunc i64 %87 to i32
  %94 = and i32 %93, 255
  %95 = shl nuw i32 %92, %94
  %96 = trunc i32 %95 to i8
  %97 = or i8 %86, %96
  %98 = add nsw i64 %87, -1
  %99 = icmp ugt i64 %87, %84
  br i1 %99, label %85, label %274, !llvm.loop !144

100:                                              ; preds = %19, %100
  %101 = phi i64 [ %114, %100 ], [ 0, %19 ]
  %102 = phi ptr [ %113, %100 ], [ %4, %19 ]
  %103 = phi ptr [ %108, %100 ], [ %3, %19 ]
  %104 = getelementptr inbounds i16, ptr %103, i64 1
  %105 = load i16, ptr %103, align 2, !tbaa !35
  %106 = trunc i16 %105 to i8
  %107 = shl i8 %106, 4
  %108 = getelementptr inbounds i16, ptr %103, i64 2
  %109 = load i16, ptr %104, align 2, !tbaa !35
  %110 = trunc i16 %109 to i8
  %111 = and i8 %110, 15
  %112 = or disjoint i8 %111, %107
  store i8 %112, ptr %102, align 1, !tbaa !110
  %113 = getelementptr inbounds i8, ptr %102, i64 1
  %114 = add nuw nsw i64 %101, 2
  %115 = icmp slt i64 %114, %20
  br i1 %115, label %100, label %116, !llvm.loop !145

116:                                              ; preds = %100, %19
  %117 = phi ptr [ %3, %19 ], [ %108, %100 ]
  %118 = phi ptr [ %4, %19 ], [ %113, %100 ]
  %119 = and i64 %2, 1
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %275, label %121

121:                                              ; preds = %116
  %122 = load i16, ptr %117, align 2, !tbaa !35
  %123 = trunc i16 %122 to i8
  %124 = shl i8 %123, 4
  store i8 %124, ptr %118, align 1, !tbaa !110
  br label %275

125:                                              ; preds = %16, %132
  %126 = phi i64 [ 0, %16 ], [ %137, %132 ]
  %127 = phi ptr [ %4, %16 ], [ %136, %132 ]
  br i1 %17, label %132, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds i16, ptr %3, i64 %126
  %130 = load i16, ptr %129, align 2, !tbaa !35
  %131 = trunc i16 %130 to i8
  br label %132

132:                                              ; preds = %125, %128
  %133 = phi i8 [ %131, %128 ], [ 0, %125 ]
  %134 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %133, ptr noundef %127) #12
  %135 = load i64, ptr %18, align 8, !tbaa !40
  %136 = getelementptr inbounds i8, ptr %134, i64 %135
  %137 = add nuw nsw i64 %126, 1
  %138 = icmp eq i64 %137, %2
  br i1 %138, label %275, label %125, !llvm.loop !146

139:                                              ; preds = %12
  %140 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !42
  %142 = icmp eq i32 %141, 1
  %143 = icmp sgt i64 %2, 0
  br i1 %142, label %149, label %144

144:                                              ; preds = %139
  br i1 %143, label %145, label %275

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %147 = icmp eq ptr %3, null
  %148 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %173

149:                                              ; preds = %139
  br i1 %143, label %150, label %275

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %152 = icmp eq ptr %3, null
  %153 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %154

154:                                              ; preds = %150, %162
  %155 = phi i64 [ 0, %150 ], [ %171, %162 ]
  %156 = phi ptr [ %4, %150 ], [ %170, %162 ]
  %157 = load i32, ptr %151, align 8, !tbaa !43
  br i1 %152, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds i16, ptr %3, i64 %155
  %160 = load i16, ptr %159, align 2, !tbaa !35
  %161 = zext i16 %160 to i32
  br label %162

162:                                              ; preds = %154, %158
  %163 = phi i32 [ %161, %158 ], [ 0, %154 ]
  %164 = sitofp i32 %163 to double
  %165 = fmul double %164, 0x3EF0001000100010
  %166 = fptrunc double %165 to float
  %167 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %166) #12
  %168 = tail call fastcc ptr @PopShortPixel(i32 noundef %157, i16 noundef zeroext %167, ptr noundef %156) #12
  %169 = load i64, ptr %153, align 8, !tbaa !40
  %170 = getelementptr inbounds i8, ptr %168, i64 %169
  %171 = add nuw nsw i64 %155, 1
  %172 = icmp eq i64 %171, %2
  br i1 %172, label %275, label %154, !llvm.loop !147

173:                                              ; preds = %145, %180
  %174 = phi i64 [ 0, %145 ], [ %185, %180 ]
  %175 = phi ptr [ %4, %145 ], [ %184, %180 ]
  %176 = load i32, ptr %146, align 8, !tbaa !43
  br i1 %147, label %180, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds i16, ptr %3, i64 %174
  %179 = load i16, ptr %178, align 2, !tbaa !35
  br label %180

180:                                              ; preds = %173, %177
  %181 = phi i16 [ %179, %177 ], [ 0, %173 ]
  %182 = tail call fastcc ptr @PopShortPixel(i32 noundef %176, i16 noundef zeroext %181, ptr noundef %175) #12
  %183 = load i64, ptr %148, align 8, !tbaa !40
  %184 = getelementptr inbounds i8, ptr %182, i64 %183
  %185 = add nuw nsw i64 %174, 1
  %186 = icmp eq i64 %185, %2
  br i1 %186, label %275, label %173, !llvm.loop !148

187:                                              ; preds = %12
  %188 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %189 = load i32, ptr %188, align 8, !tbaa !42
  %190 = icmp eq i32 %189, 1
  %191 = icmp sgt i64 %2, 0
  br i1 %190, label %197, label %192

192:                                              ; preds = %187
  br i1 %191, label %193, label %275

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %195 = icmp eq ptr %3, null
  %196 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %216

197:                                              ; preds = %187
  br i1 %191, label %198, label %275

198:                                              ; preds = %197
  %199 = icmp eq ptr %3, null
  %200 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %201

201:                                              ; preds = %198, %208
  %202 = phi i64 [ 0, %198 ], [ %214, %208 ]
  %203 = phi ptr [ %4, %198 ], [ %213, %208 ]
  br i1 %199, label %208, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds i16, ptr %3, i64 %202
  %206 = load i16, ptr %205, align 2, !tbaa !35
  %207 = zext i16 %206 to i32
  br label %208

208:                                              ; preds = %201, %204
  %209 = phi i32 [ %207, %204 ], [ 0, %201 ]
  %210 = sitofp i32 %209 to float
  %211 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %210, ptr noundef %203) #12
  %212 = load i64, ptr %200, align 8, !tbaa !40
  %213 = getelementptr inbounds i8, ptr %211, i64 %212
  %214 = add nuw nsw i64 %202, 1
  %215 = icmp eq i64 %214, %2
  br i1 %215, label %275, label %201, !llvm.loop !149

216:                                              ; preds = %193, %224
  %217 = phi i64 [ 0, %193 ], [ %229, %224 ]
  %218 = phi ptr [ %4, %193 ], [ %228, %224 ]
  %219 = load i32, ptr %194, align 8, !tbaa !43
  br i1 %195, label %224, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds i16, ptr %3, i64 %217
  %222 = load i16, ptr %221, align 2, !tbaa !35
  %223 = zext i16 %222 to i32
  br label %224

224:                                              ; preds = %216, %220
  %225 = phi i32 [ %223, %220 ], [ 0, %216 ]
  %226 = tail call fastcc ptr @PopLongPixel(i32 noundef %219, i32 noundef %225, ptr noundef %218) #12
  %227 = load i64, ptr %196, align 8, !tbaa !40
  %228 = getelementptr inbounds i8, ptr %226, i64 %227
  %229 = add nuw nsw i64 %217, 1
  %230 = icmp eq i64 %229, %2
  br i1 %230, label %275, label %216, !llvm.loop !150

231:                                              ; preds = %12
  %232 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %233 = load i32, ptr %232, align 8, !tbaa !42
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %255

235:                                              ; preds = %231
  %236 = icmp sgt i64 %2, 0
  br i1 %236, label %237, label %275

237:                                              ; preds = %235
  %238 = icmp eq ptr %3, null
  %239 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %240

240:                                              ; preds = %237, %247
  %241 = phi i64 [ 0, %237 ], [ %253, %247 ]
  %242 = phi ptr [ %4, %237 ], [ %252, %247 ]
  br i1 %238, label %247, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds i16, ptr %3, i64 %241
  %245 = load i16, ptr %244, align 2, !tbaa !35
  %246 = zext i16 %245 to i32
  br label %247

247:                                              ; preds = %240, %243
  %248 = phi i32 [ %246, %243 ], [ 0, %240 ]
  %249 = sitofp i32 %248 to double
  %250 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %249, ptr noundef %242) #12
  %251 = load i64, ptr %239, align 8, !tbaa !40
  %252 = getelementptr inbounds i8, ptr %250, i64 %251
  %253 = add nuw nsw i64 %241, 1
  %254 = icmp eq i64 %253, %2
  br i1 %254, label %275, label %240, !llvm.loop !151

255:                                              ; preds = %231, %12
  %256 = icmp sgt i64 %2, 0
  br i1 %256, label %257, label %275

257:                                              ; preds = %255
  %258 = icmp eq ptr %3, null
  %259 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %260

260:                                              ; preds = %257, %267
  %261 = phi i64 [ 0, %257 ], [ %272, %267 ]
  %262 = phi ptr [ %4, %257 ], [ %271, %267 ]
  br i1 %258, label %267, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds i16, ptr %3, i64 %261
  %265 = load i16, ptr %264, align 2, !tbaa !35
  %266 = zext i16 %265 to i64
  br label %267

267:                                              ; preds = %260, %263
  %268 = phi i64 [ %266, %263 ], [ 0, %260 ]
  %269 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %268, ptr noundef %262) #12
  %270 = load i64, ptr %259, align 8, !tbaa !40
  %271 = getelementptr inbounds i8, ptr %269, i64 %270
  %272 = add nuw nsw i64 %261, 1
  %273 = icmp eq i64 %272, %2
  br i1 %273, label %275, label %260, !llvm.loop !152

274:                                              ; preds = %85
  store i8 %97, ptr %80, align 1, !tbaa !110
  br label %275

275:                                              ; preds = %247, %224, %208, %180, %162, %132, %267, %235, %192, %197, %144, %149, %14, %274, %255, %78, %121, %116, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportIndexAlphaQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias nocapture noundef readonly %3, ptr noalias noundef readonly %4, ptr noalias noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = load i32, ptr %0, align 8, !tbaa !142
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2251, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %11) #10
  br label %333

13:                                               ; preds = %7
  %14 = load i64, ptr %1, align 8, !tbaa !39
  switch i64 %14, label %305 [
    i64 1, label %22
    i64 4, label %20
    i64 8, label %15
    i64 16, label %154
    i64 32, label %215
    i64 64, label %274
  ]

15:                                               ; preds = %13
  %16 = icmp sgt i64 %2, 0
  br i1 %16, label %17, label %333

17:                                               ; preds = %15
  %18 = icmp eq ptr %4, null
  %19 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %133

20:                                               ; preds = %13
  %21 = icmp sgt i64 %2, 0
  br i1 %21, label %112, label %333

22:                                               ; preds = %13
  %23 = icmp sgt i64 %2, 3
  br i1 %23, label %24, label %77

24:                                               ; preds = %22
  %25 = add nsw i64 %2, -3
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi ptr [ %73, %26 ], [ %3, %24 ]
  %28 = phi ptr [ %62, %26 ], [ %4, %24 ]
  %29 = phi ptr [ %74, %26 ], [ %5, %24 ]
  %30 = phi i64 [ %75, %26 ], [ %25, %24 ]
  %31 = getelementptr inbounds i16, ptr %28, i64 1
  %32 = load i16, ptr %28, align 2, !tbaa !35
  %33 = trunc i16 %32 to i8
  %34 = shl i8 %33, 7
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %27, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !28
  %37 = icmp eq i16 %36, -1
  %38 = select i1 %37, i8 64, i8 0
  %39 = or disjoint i8 %38, %34
  %40 = getelementptr inbounds i16, ptr %28, i64 2
  %41 = load i16, ptr %31, align 2, !tbaa !35
  %42 = trunc i16 %41 to i8
  %43 = shl i8 %42, 5
  %44 = and i8 %43, 32
  %45 = or disjoint i8 %44, %39
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %27, i64 1, i32 3
  %47 = load i16, ptr %46, align 2, !tbaa !28
  %48 = icmp eq i16 %47, -1
  %49 = select i1 %48, i8 16, i8 0
  %50 = or disjoint i8 %49, %45
  %51 = getelementptr inbounds i16, ptr %28, i64 3
  %52 = load i16, ptr %40, align 2, !tbaa !35
  %53 = trunc i16 %52 to i8
  %54 = shl i8 %53, 3
  %55 = and i8 %54, 8
  %56 = or disjoint i8 %55, %50
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %27, i64 2, i32 3
  %58 = load i16, ptr %57, align 2, !tbaa !28
  %59 = icmp eq i16 %58, -1
  %60 = select i1 %59, i8 4, i8 0
  %61 = or disjoint i8 %60, %56
  %62 = getelementptr inbounds i16, ptr %28, i64 4
  %63 = load i16, ptr %51, align 2, !tbaa !35
  %64 = trunc i16 %63 to i8
  %65 = shl i8 %64, 1
  %66 = and i8 %65, 2
  %67 = or i8 %66, %61
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %27, i64 3, i32 3
  %69 = load i16, ptr %68, align 2, !tbaa !28
  %70 = icmp eq i16 %69, -1
  %71 = zext i1 %70 to i8
  %72 = or i8 %67, %71
  store i8 %72, ptr %29, align 1, !tbaa !110
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %27, i64 4
  %74 = getelementptr inbounds i8, ptr %29, i64 1
  %75 = add nsw i64 %30, -4
  %76 = icmp ugt i64 %30, 4
  br i1 %76, label %26, label %77, !llvm.loop !153

77:                                               ; preds = %26, %22
  %78 = phi ptr [ %5, %22 ], [ %74, %26 ]
  %79 = phi ptr [ %4, %22 ], [ %62, %26 ]
  %80 = phi ptr [ %3, %22 ], [ %73, %26 ]
  %81 = and i64 %2, 3
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %333, label %83

83:                                               ; preds = %77
  %84 = sub nuw nsw i64 4, %81
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi i8 [ 0, %83 ], [ %108, %85 ]
  %87 = phi ptr [ %80, %83 ], [ %109, %85 ]
  %88 = phi ptr [ %79, %83 ], [ %90, %85 ]
  %89 = phi i64 [ 3, %83 ], [ %110, %85 ]
  %90 = getelementptr inbounds i16, ptr %88, i64 1
  %91 = load i16, ptr %88, align 2, !tbaa !35
  %92 = and i16 %91, 1
  %93 = zext nneg i16 %92 to i32
  %94 = trunc i64 %89 to i32
  %95 = add i32 %94, 4
  %96 = and i32 %95, 255
  %97 = shl nuw nsw i32 %93, %96
  %98 = trunc i32 %97 to i8
  %99 = or i8 %86, %98
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 3
  %101 = load i16, ptr %100, align 2, !tbaa !28
  %102 = icmp eq i16 %101, -1
  %103 = zext i1 %102 to i32
  %104 = add i32 %94, 3
  %105 = and i32 %104, 255
  %106 = shl nuw nsw i32 %103, %105
  %107 = trunc i32 %106 to i8
  %108 = or i8 %99, %107
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 1
  %110 = add nsw i64 %89, -2
  %111 = icmp slt i64 %110, %84
  br i1 %111, label %332, label %85, !llvm.loop !154

112:                                              ; preds = %20, %112
  %113 = phi ptr [ %129, %112 ], [ %3, %20 ]
  %114 = phi ptr [ %117, %112 ], [ %4, %20 ]
  %115 = phi ptr [ %130, %112 ], [ %5, %20 ]
  %116 = phi i64 [ %131, %112 ], [ 0, %20 ]
  %117 = getelementptr inbounds i16, ptr %114, i64 1
  %118 = load i16, ptr %114, align 2, !tbaa !35
  %119 = trunc i16 %118 to i8
  %120 = shl i8 %119, 4
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 3
  %122 = load i16, ptr %121, align 2, !tbaa !28
  %123 = xor i16 %122, -1
  %124 = uitofp i16 %123 to double
  %125 = tail call double @llvm.fmuladd.f64(double %124, double 0x3F30001000100010, double 5.000000e-01)
  %126 = fptoui double %125 to i8
  %127 = and i8 %126, 15
  %128 = or disjoint i8 %127, %120
  store i8 %128, ptr %115, align 1, !tbaa !110
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 1
  %130 = getelementptr inbounds i8, ptr %115, i64 1
  %131 = add nuw nsw i64 %116, 1
  %132 = icmp eq i64 %131, %2
  br i1 %132, label %333, label %112, !llvm.loop !155

133:                                              ; preds = %17, %141
  %134 = phi ptr [ %3, %17 ], [ %149, %141 ]
  %135 = phi ptr [ %5, %17 ], [ %151, %141 ]
  %136 = phi i64 [ 0, %17 ], [ %152, %141 ]
  br i1 %18, label %141, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds i16, ptr %4, i64 %136
  %139 = load i16, ptr %138, align 2, !tbaa !35
  %140 = trunc i16 %139 to i8
  br label %141

141:                                              ; preds = %133, %137
  %142 = phi i8 [ %140, %137 ], [ 0, %133 ]
  %143 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %142, ptr noundef %135) #12
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 0, i32 3
  %145 = load i16, ptr %144, align 2, !tbaa !28
  %146 = xor i16 %145, -1
  %147 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %146) #12
  %148 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %147, ptr noundef nonnull %143) #12
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 1
  %150 = load i64, ptr %19, align 8, !tbaa !40
  %151 = getelementptr inbounds i8, ptr %148, i64 %150
  %152 = add nuw nsw i64 %136, 1
  %153 = icmp eq i64 %152, %2
  br i1 %153, label %333, label %133, !llvm.loop !156

154:                                              ; preds = %13
  %155 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !42
  %157 = icmp eq i32 %156, 1
  %158 = icmp sgt i64 %2, 0
  br i1 %157, label %164, label %159

159:                                              ; preds = %154
  br i1 %158, label %160, label %333

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %162 = icmp eq ptr %4, null
  %163 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %194

164:                                              ; preds = %154
  br i1 %158, label %165, label %333

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %167 = icmp eq ptr %4, null
  %168 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %169

169:                                              ; preds = %165, %177
  %170 = phi ptr [ %3, %165 ], [ %189, %177 ]
  %171 = phi ptr [ %5, %165 ], [ %191, %177 ]
  %172 = phi i64 [ 0, %165 ], [ %192, %177 ]
  %173 = load i32, ptr %166, align 8, !tbaa !43
  br i1 %167, label %177, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds i16, ptr %4, i64 %172
  %176 = load i16, ptr %175, align 2, !tbaa !35
  br label %177

177:                                              ; preds = %169, %174
  %178 = phi i16 [ %176, %174 ], [ 0, %169 ]
  %179 = tail call fastcc ptr @PopShortPixel(i32 noundef %173, i16 noundef zeroext %178, ptr noundef %171) #12
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 3
  %181 = load i16, ptr %180, align 2, !tbaa !28
  %182 = xor i16 %181, -1
  %183 = uitofp i16 %182 to double
  %184 = fmul double %183, 0x3EF0001000100010
  %185 = fptrunc double %184 to float
  %186 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %185) #12
  %187 = load i32, ptr %166, align 8, !tbaa !43
  %188 = tail call fastcc ptr @PopShortPixel(i32 noundef %187, i16 noundef zeroext %186, ptr noundef nonnull %179) #12
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 1
  %190 = load i64, ptr %168, align 8, !tbaa !40
  %191 = getelementptr inbounds i8, ptr %188, i64 %190
  %192 = add nuw nsw i64 %172, 1
  %193 = icmp eq i64 %192, %2
  br i1 %193, label %333, label %169, !llvm.loop !157

194:                                              ; preds = %160, %202
  %195 = phi ptr [ %3, %160 ], [ %210, %202 ]
  %196 = phi ptr [ %5, %160 ], [ %212, %202 ]
  %197 = phi i64 [ 0, %160 ], [ %213, %202 ]
  %198 = load i32, ptr %161, align 8, !tbaa !43
  br i1 %162, label %202, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds i16, ptr %4, i64 %197
  %201 = load i16, ptr %200, align 2, !tbaa !35
  br label %202

202:                                              ; preds = %194, %199
  %203 = phi i16 [ %201, %199 ], [ 0, %194 ]
  %204 = tail call fastcc ptr @PopShortPixel(i32 noundef %198, i16 noundef zeroext %203, ptr noundef %196) #12
  %205 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 0, i32 3
  %206 = load i16, ptr %205, align 2, !tbaa !28
  %207 = xor i16 %206, -1
  %208 = load i32, ptr %161, align 8, !tbaa !43
  %209 = tail call fastcc ptr @PopShortPixel(i32 noundef %208, i16 noundef zeroext %207, ptr noundef nonnull %204) #12
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 1
  %211 = load i64, ptr %163, align 8, !tbaa !40
  %212 = getelementptr inbounds i8, ptr %209, i64 %211
  %213 = add nuw nsw i64 %197, 1
  %214 = icmp eq i64 %213, %2
  br i1 %214, label %333, label %194, !llvm.loop !158

215:                                              ; preds = %13
  %216 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %217 = load i32, ptr %216, align 8, !tbaa !42
  %218 = icmp eq i32 %217, 1
  %219 = icmp sgt i64 %2, 0
  br i1 %218, label %225, label %220

220:                                              ; preds = %215
  br i1 %219, label %221, label %333

221:                                              ; preds = %220
  %222 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %223 = icmp eq ptr %4, null
  %224 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %251

225:                                              ; preds = %215
  br i1 %219, label %226, label %333

226:                                              ; preds = %225
  %227 = icmp eq ptr %4, null
  %228 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %229

229:                                              ; preds = %226, %237
  %230 = phi ptr [ %3, %226 ], [ %246, %237 ]
  %231 = phi ptr [ %5, %226 ], [ %248, %237 ]
  %232 = phi i64 [ 0, %226 ], [ %249, %237 ]
  br i1 %227, label %237, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds i16, ptr %4, i64 %232
  %235 = load i16, ptr %234, align 2, !tbaa !35
  %236 = zext i16 %235 to i32
  br label %237

237:                                              ; preds = %229, %233
  %238 = phi i32 [ %236, %233 ], [ 0, %229 ]
  %239 = sitofp i32 %238 to float
  %240 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %239, ptr noundef %231) #12
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 0, i32 3
  %242 = load i16, ptr %241, align 2, !tbaa !28
  %243 = xor i16 %242, -1
  %244 = uitofp i16 %243 to float
  %245 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %1, float noundef %244, ptr noundef nonnull %240) #12
  %246 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 1
  %247 = load i64, ptr %228, align 8, !tbaa !40
  %248 = getelementptr inbounds i8, ptr %245, i64 %247
  %249 = add nuw nsw i64 %232, 1
  %250 = icmp eq i64 %249, %2
  br i1 %250, label %333, label %229, !llvm.loop !159

251:                                              ; preds = %221, %260
  %252 = phi ptr [ %3, %221 ], [ %269, %260 ]
  %253 = phi ptr [ %5, %221 ], [ %271, %260 ]
  %254 = phi i64 [ 0, %221 ], [ %272, %260 ]
  %255 = load i32, ptr %222, align 8, !tbaa !43
  br i1 %223, label %260, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds i16, ptr %4, i64 %254
  %258 = load i16, ptr %257, align 2, !tbaa !35
  %259 = zext i16 %258 to i32
  br label %260

260:                                              ; preds = %251, %256
  %261 = phi i32 [ %259, %256 ], [ 0, %251 ]
  %262 = tail call fastcc ptr @PopLongPixel(i32 noundef %255, i32 noundef %261, ptr noundef %253) #12
  %263 = getelementptr inbounds %struct._PixelPacket, ptr %252, i64 0, i32 3
  %264 = load i16, ptr %263, align 2, !tbaa !28
  %265 = xor i16 %264, -1
  %266 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %265) #12
  %267 = load i32, ptr %222, align 8, !tbaa !43
  %268 = tail call fastcc ptr @PopLongPixel(i32 noundef %267, i32 noundef %266, ptr noundef nonnull %262) #12
  %269 = getelementptr inbounds %struct._PixelPacket, ptr %252, i64 1
  %270 = load i64, ptr %224, align 8, !tbaa !40
  %271 = getelementptr inbounds i8, ptr %268, i64 %270
  %272 = add nuw nsw i64 %254, 1
  %273 = icmp eq i64 %272, %2
  br i1 %273, label %333, label %251, !llvm.loop !160

274:                                              ; preds = %13
  %275 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %276 = load i32, ptr %275, align 8, !tbaa !42
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %278, label %305

278:                                              ; preds = %274
  %279 = icmp sgt i64 %2, 0
  br i1 %279, label %280, label %333

280:                                              ; preds = %278
  %281 = icmp eq ptr %4, null
  %282 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %283

283:                                              ; preds = %280, %291
  %284 = phi ptr [ %3, %280 ], [ %300, %291 ]
  %285 = phi ptr [ %5, %280 ], [ %302, %291 ]
  %286 = phi i64 [ 0, %280 ], [ %303, %291 ]
  br i1 %281, label %291, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds i16, ptr %4, i64 %286
  %289 = load i16, ptr %288, align 2, !tbaa !35
  %290 = zext i16 %289 to i32
  br label %291

291:                                              ; preds = %283, %287
  %292 = phi i32 [ %290, %287 ], [ 0, %283 ]
  %293 = sitofp i32 %292 to double
  %294 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %293, ptr noundef %285) #12
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %284, i64 0, i32 3
  %296 = load i16, ptr %295, align 2, !tbaa !28
  %297 = xor i16 %296, -1
  %298 = uitofp i16 %297 to double
  %299 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %1, double noundef %298, ptr noundef nonnull %294) #12
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %284, i64 1
  %301 = load i64, ptr %282, align 8, !tbaa !40
  %302 = getelementptr inbounds i8, ptr %299, i64 %301
  %303 = add nuw nsw i64 %286, 1
  %304 = icmp eq i64 %303, %2
  br i1 %304, label %333, label %283, !llvm.loop !161

305:                                              ; preds = %274, %13
  %306 = tail call fastcc i64 @GetQuantumRange(i64 noundef %14) #12
  %307 = icmp sgt i64 %2, 0
  br i1 %307, label %308, label %333

308:                                              ; preds = %305
  %309 = icmp eq ptr %4, null
  %310 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %311

311:                                              ; preds = %308, %319
  %312 = phi ptr [ %3, %308 ], [ %327, %319 ]
  %313 = phi ptr [ %5, %308 ], [ %329, %319 ]
  %314 = phi i64 [ 0, %308 ], [ %330, %319 ]
  br i1 %309, label %319, label %315

315:                                              ; preds = %311
  %316 = getelementptr inbounds i16, ptr %4, i64 %314
  %317 = load i16, ptr %316, align 2, !tbaa !35
  %318 = zext i16 %317 to i64
  br label %319

319:                                              ; preds = %311, %315
  %320 = phi i64 [ %318, %315 ], [ 0, %311 ]
  %321 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %320, ptr noundef %313) #12
  %322 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 0, i32 3
  %323 = load i16, ptr %322, align 2, !tbaa !28
  %324 = xor i16 %323, -1
  %325 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %324, i64 noundef %306) #12
  %326 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %1, i64 noundef %325, ptr noundef %321) #12
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 1
  %328 = load i64, ptr %310, align 8, !tbaa !40
  %329 = getelementptr inbounds i8, ptr %326, i64 %328
  %330 = add nuw nsw i64 %314, 1
  %331 = icmp eq i64 %330, %2
  br i1 %331, label %333, label %311, !llvm.loop !162

332:                                              ; preds = %85
  store i8 %108, ptr %78, align 1, !tbaa !110
  br label %333

333:                                              ; preds = %291, %260, %237, %202, %177, %141, %112, %319, %278, %220, %225, %159, %164, %15, %20, %332, %305, %77, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportOpacityQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !39
  %6 = add i64 %5, -8
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 61)
  switch i64 %7, label %128 [
    i64 0, label %8
    i64 1, label %25
    i64 3, label %68
    i64 7, label %107
  ]

8:                                                ; preds = %4
  %9 = icmp sgt i64 %1, 0
  br i1 %9, label %10, label %146

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %2, %10 ], [ %20, %12 ]
  %14 = phi ptr [ %3, %10 ], [ %22, %12 ]
  %15 = phi i64 [ 0, %10 ], [ %23, %12 ]
  %16 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !28
  %18 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %17) #12
  %19 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %18, ptr noundef %14) #12
  %20 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 1
  %21 = load i64, ptr %11, align 8, !tbaa !40
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = add nuw nsw i64 %15, 1
  %24 = icmp eq i64 %23, %1
  br i1 %24, label %146, label %12, !llvm.loop !163

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !42
  %28 = icmp eq i32 %27, 1
  %29 = icmp sgt i64 %1, 0
  br i1 %28, label %34, label %30

30:                                               ; preds = %25
  br i1 %29, label %31, label %146

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %33 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %55

34:                                               ; preds = %25
  br i1 %29, label %35, label %146

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %37 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %2, %35 ], [ %50, %38 ]
  %40 = phi ptr [ %3, %35 ], [ %52, %38 ]
  %41 = phi i64 [ 0, %35 ], [ %53, %38 ]
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 0, i32 3
  %43 = load i16, ptr %42, align 2, !tbaa !28
  %44 = uitofp i16 %43 to double
  %45 = fmul double %44, 0x3EF0001000100010
  %46 = fptrunc double %45 to float
  %47 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %46) #12
  %48 = load i32, ptr %36, align 8, !tbaa !43
  %49 = tail call fastcc ptr @PopShortPixel(i32 noundef %48, i16 noundef zeroext %47, ptr noundef %40) #12
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 1
  %51 = load i64, ptr %37, align 8, !tbaa !40
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  %53 = add nuw nsw i64 %41, 1
  %54 = icmp eq i64 %53, %1
  br i1 %54, label %146, label %38, !llvm.loop !164

55:                                               ; preds = %31, %55
  %56 = phi ptr [ %2, %31 ], [ %63, %55 ]
  %57 = phi ptr [ %3, %31 ], [ %65, %55 ]
  %58 = phi i64 [ 0, %31 ], [ %66, %55 ]
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  %60 = load i16, ptr %59, align 2, !tbaa !28
  %61 = load i32, ptr %32, align 8, !tbaa !43
  %62 = tail call fastcc ptr @PopShortPixel(i32 noundef %61, i16 noundef zeroext %60, ptr noundef %57) #12
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %64 = load i64, ptr %33, align 8, !tbaa !40
  %65 = getelementptr inbounds i8, ptr %62, i64 %64
  %66 = add nuw nsw i64 %58, 1
  %67 = icmp eq i64 %66, %1
  br i1 %67, label %146, label %55, !llvm.loop !165

68:                                               ; preds = %4
  %69 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !42
  %71 = icmp eq i32 %70, 1
  %72 = icmp sgt i64 %1, 0
  br i1 %71, label %77, label %73

73:                                               ; preds = %68
  br i1 %72, label %74, label %146

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %76 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %93

77:                                               ; preds = %68
  br i1 %72, label %78, label %146

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi ptr [ %2, %78 ], [ %88, %80 ]
  %82 = phi ptr [ %3, %78 ], [ %90, %80 ]
  %83 = phi i64 [ 0, %78 ], [ %91, %80 ]
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !28
  %86 = uitofp i16 %85 to float
  %87 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %86, ptr noundef %82) #12
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 1
  %89 = load i64, ptr %79, align 8, !tbaa !40
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  %91 = add nuw nsw i64 %83, 1
  %92 = icmp eq i64 %91, %1
  br i1 %92, label %146, label %80, !llvm.loop !166

93:                                               ; preds = %74, %93
  %94 = phi ptr [ %2, %74 ], [ %102, %93 ]
  %95 = phi ptr [ %3, %74 ], [ %104, %93 ]
  %96 = phi i64 [ 0, %74 ], [ %105, %93 ]
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 3
  %98 = load i16, ptr %97, align 2, !tbaa !28
  %99 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %98) #12
  %100 = load i32, ptr %75, align 8, !tbaa !43
  %101 = tail call fastcc ptr @PopLongPixel(i32 noundef %100, i32 noundef %99, ptr noundef %95) #12
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %103 = load i64, ptr %76, align 8, !tbaa !40
  %104 = getelementptr inbounds i8, ptr %101, i64 %103
  %105 = add nuw nsw i64 %96, 1
  %106 = icmp eq i64 %105, %1
  br i1 %106, label %146, label %93, !llvm.loop !167

107:                                              ; preds = %4
  %108 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !42
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = icmp sgt i64 %1, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi ptr [ %2, %113 ], [ %123, %115 ]
  %117 = phi ptr [ %3, %113 ], [ %125, %115 ]
  %118 = phi i64 [ 0, %113 ], [ %126, %115 ]
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 3
  %120 = load i16, ptr %119, align 2, !tbaa !28
  %121 = uitofp i16 %120 to double
  %122 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %121, ptr noundef %117) #12
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 1
  %124 = load i64, ptr %114, align 8, !tbaa !40
  %125 = getelementptr inbounds i8, ptr %122, i64 %124
  %126 = add nuw nsw i64 %118, 1
  %127 = icmp eq i64 %126, %1
  br i1 %127, label %146, label %115, !llvm.loop !168

128:                                              ; preds = %107, %4
  %129 = tail call fastcc i64 @GetQuantumRange(i64 noundef %5) #12
  %130 = icmp sgt i64 %1, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi ptr [ %2, %131 ], [ %141, %133 ]
  %135 = phi ptr [ %3, %131 ], [ %143, %133 ]
  %136 = phi i64 [ 0, %131 ], [ %144, %133 ]
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 0, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !28
  %139 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %138, i64 noundef %129) #12
  %140 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %139, ptr noundef %135) #12
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 1
  %142 = load i64, ptr %132, align 8, !tbaa !40
  %143 = getelementptr inbounds i8, ptr %140, i64 %142
  %144 = add nuw nsw i64 %136, 1
  %145 = icmp eq i64 %144, %1
  br i1 %145, label %146, label %133, !llvm.loop !169

146:                                              ; preds = %115, %93, %80, %55, %38, %12, %133, %111, %73, %77, %30, %34, %8, %128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportRedQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !39
  %6 = add i64 %5, -8
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 61)
  switch i64 %7, label %128 [
    i64 0, label %8
    i64 1, label %25
    i64 3, label %68
    i64 7, label %107
  ]

8:                                                ; preds = %4
  %9 = icmp sgt i64 %1, 0
  br i1 %9, label %10, label %146

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %2, %10 ], [ %20, %12 ]
  %14 = phi ptr [ %3, %10 ], [ %22, %12 ]
  %15 = phi i64 [ 0, %10 ], [ %23, %12 ]
  %16 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 0, i32 2
  %17 = load i16, ptr %16, align 2, !tbaa !29
  %18 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %17) #12
  %19 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %18, ptr noundef %14) #12
  %20 = getelementptr inbounds %struct._PixelPacket, ptr %13, i64 1
  %21 = load i64, ptr %11, align 8, !tbaa !40
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = add nuw nsw i64 %15, 1
  %24 = icmp eq i64 %23, %1
  br i1 %24, label %146, label %12, !llvm.loop !170

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !42
  %28 = icmp eq i32 %27, 1
  %29 = icmp sgt i64 %1, 0
  br i1 %28, label %34, label %30

30:                                               ; preds = %25
  br i1 %29, label %31, label %146

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %33 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %55

34:                                               ; preds = %25
  br i1 %29, label %35, label %146

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %37 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %2, %35 ], [ %50, %38 ]
  %40 = phi ptr [ %3, %35 ], [ %52, %38 ]
  %41 = phi i64 [ 0, %35 ], [ %53, %38 ]
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 0, i32 2
  %43 = load i16, ptr %42, align 2, !tbaa !29
  %44 = uitofp i16 %43 to double
  %45 = fmul double %44, 0x3EF0001000100010
  %46 = fptrunc double %45 to float
  %47 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %46) #12
  %48 = load i32, ptr %36, align 8, !tbaa !43
  %49 = tail call fastcc ptr @PopShortPixel(i32 noundef %48, i16 noundef zeroext %47, ptr noundef %40) #12
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 1
  %51 = load i64, ptr %37, align 8, !tbaa !40
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  %53 = add nuw nsw i64 %41, 1
  %54 = icmp eq i64 %53, %1
  br i1 %54, label %146, label %38, !llvm.loop !171

55:                                               ; preds = %31, %55
  %56 = phi ptr [ %2, %31 ], [ %63, %55 ]
  %57 = phi ptr [ %3, %31 ], [ %65, %55 ]
  %58 = phi i64 [ 0, %31 ], [ %66, %55 ]
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !29
  %61 = load i32, ptr %32, align 8, !tbaa !43
  %62 = tail call fastcc ptr @PopShortPixel(i32 noundef %61, i16 noundef zeroext %60, ptr noundef %57) #12
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %64 = load i64, ptr %33, align 8, !tbaa !40
  %65 = getelementptr inbounds i8, ptr %62, i64 %64
  %66 = add nuw nsw i64 %58, 1
  %67 = icmp eq i64 %66, %1
  br i1 %67, label %146, label %55, !llvm.loop !172

68:                                               ; preds = %4
  %69 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !42
  %71 = icmp eq i32 %70, 1
  %72 = icmp sgt i64 %1, 0
  br i1 %71, label %77, label %73

73:                                               ; preds = %68
  br i1 %72, label %74, label %146

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %76 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %93

77:                                               ; preds = %68
  br i1 %72, label %78, label %146

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi ptr [ %2, %78 ], [ %88, %80 ]
  %82 = phi ptr [ %3, %78 ], [ %90, %80 ]
  %83 = phi i64 [ 0, %78 ], [ %91, %80 ]
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 0, i32 2
  %85 = load i16, ptr %84, align 2, !tbaa !29
  %86 = uitofp i16 %85 to float
  %87 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %86, ptr noundef %82) #12
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 1
  %89 = load i64, ptr %79, align 8, !tbaa !40
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  %91 = add nuw nsw i64 %83, 1
  %92 = icmp eq i64 %91, %1
  br i1 %92, label %146, label %80, !llvm.loop !173

93:                                               ; preds = %74, %93
  %94 = phi ptr [ %2, %74 ], [ %102, %93 ]
  %95 = phi ptr [ %3, %74 ], [ %104, %93 ]
  %96 = phi i64 [ 0, %74 ], [ %105, %93 ]
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 2
  %98 = load i16, ptr %97, align 2, !tbaa !29
  %99 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %98) #12
  %100 = load i32, ptr %75, align 8, !tbaa !43
  %101 = tail call fastcc ptr @PopLongPixel(i32 noundef %100, i32 noundef %99, ptr noundef %95) #12
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %103 = load i64, ptr %76, align 8, !tbaa !40
  %104 = getelementptr inbounds i8, ptr %101, i64 %103
  %105 = add nuw nsw i64 %96, 1
  %106 = icmp eq i64 %105, %1
  br i1 %106, label %146, label %93, !llvm.loop !174

107:                                              ; preds = %4
  %108 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !42
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = icmp sgt i64 %1, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi ptr [ %2, %113 ], [ %123, %115 ]
  %117 = phi ptr [ %3, %113 ], [ %125, %115 ]
  %118 = phi i64 [ 0, %113 ], [ %126, %115 ]
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 2
  %120 = load i16, ptr %119, align 2, !tbaa !29
  %121 = uitofp i16 %120 to double
  %122 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %121, ptr noundef %117) #12
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 1
  %124 = load i64, ptr %114, align 8, !tbaa !40
  %125 = getelementptr inbounds i8, ptr %122, i64 %124
  %126 = add nuw nsw i64 %118, 1
  %127 = icmp eq i64 %126, %1
  br i1 %127, label %146, label %115, !llvm.loop !175

128:                                              ; preds = %107, %4
  %129 = tail call fastcc i64 @GetQuantumRange(i64 noundef %5) #12
  %130 = icmp sgt i64 %1, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi ptr [ %2, %131 ], [ %141, %133 ]
  %135 = phi ptr [ %3, %131 ], [ %143, %133 ]
  %136 = phi i64 [ 0, %131 ], [ %144, %133 ]
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 0, i32 2
  %138 = load i16, ptr %137, align 2, !tbaa !29
  %139 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %138, i64 noundef %129) #12
  %140 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %139, ptr noundef %135) #12
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 1
  %142 = load i64, ptr %132, align 8, !tbaa !40
  %143 = getelementptr inbounds i8, ptr %140, i64 %142
  %144 = add nuw nsw i64 %136, 1
  %145 = icmp eq i64 %144, %1
  br i1 %145, label %146, label %133, !llvm.loop !176

146:                                              ; preds = %115, %93, %80, %55, %38, %12, %133, %111, %73, %77, %30, %34, %8, %128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportRGBQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef readonly %2, ptr noalias noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !39
  switch i64 %5, label %410 [
    i64 8, label %6
    i64 10, label %30
    i64 12, label %122
    i64 16, label %262
    i64 32, label %327
    i64 64, label %382
  ]

6:                                                ; preds = %4
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %8, label %435

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %2, %8 ], [ %25, %10 ]
  %12 = phi i64 [ 0, %8 ], [ %28, %10 ]
  %13 = phi ptr [ %3, %8 ], [ %27, %10 ]
  %14 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 2
  %15 = load i16, ptr %14, align 2, !tbaa !29
  %16 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %15) #12
  %17 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %16, ptr noundef %13) #12
  %18 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !30
  %20 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %19) #12
  %21 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %20, ptr noundef nonnull %17) #12
  %22 = load i16, ptr %11, align 2, !tbaa !31
  %23 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %22) #12
  %24 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %23, ptr noundef nonnull %21) #12
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 1
  %26 = load i64, ptr %9, align 8, !tbaa !40
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  %28 = add nuw nsw i64 %12, 1
  %29 = icmp eq i64 %28, %1
  br i1 %29, label %435, label %10, !llvm.loop !177

30:                                               ; preds = %4
  %31 = tail call fastcc i64 @GetQuantumRange(i64 noundef 10) #12
  %32 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !51
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = icmp sgt i64 %1, 0
  br i1 %36, label %37, label %435

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %39 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %2, %37 ], [ %60, %40 ]
  %42 = phi i64 [ 0, %37 ], [ %63, %40 ]
  %43 = phi ptr [ %3, %37 ], [ %62, %40 ]
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 0, i32 2
  %45 = load i16, ptr %44, align 2, !tbaa !29
  %46 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %45, i64 noundef %31) #12
  %47 = shl i64 %46, 22
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 0, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !30
  %50 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %49, i64 noundef %31) #12
  %51 = shl i64 %50, 12
  %52 = or i64 %51, %47
  %53 = load i16, ptr %41, align 2, !tbaa !31
  %54 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %53, i64 noundef %31) #12
  %55 = shl i64 %54, 2
  %56 = or i64 %52, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %38, align 8, !tbaa !43
  %59 = tail call fastcc ptr @PopLongPixel(i32 noundef %58, i32 noundef %57, ptr noundef %43) #12
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 1
  %61 = load i64, ptr %39, align 8, !tbaa !40
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  %63 = add nuw nsw i64 %42, 1
  %64 = icmp eq i64 %63, %1
  br i1 %64, label %435, label %40, !llvm.loop !178

65:                                               ; preds = %30
  %66 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !53
  %68 = icmp eq i64 %67, 32
  %69 = icmp sgt i64 %1, 0
  br i1 %68, label %73, label %70

70:                                               ; preds = %65
  br i1 %69, label %71, label %435

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %99

73:                                               ; preds = %65
  br i1 %69, label %74, label %435

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi ptr [ %2, %74 ], [ %94, %76 ]
  %78 = phi i64 [ 0, %74 ], [ %97, %76 ]
  %79 = phi ptr [ %3, %74 ], [ %96, %76 ]
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !29
  %82 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %81, i64 noundef %31) #12
  %83 = and i64 %82, 4294967295
  %84 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %83, ptr noundef %79) #12
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 1
  %86 = load i16, ptr %85, align 2, !tbaa !30
  %87 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %86, i64 noundef %31) #12
  %88 = and i64 %87, 4294967295
  %89 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %88, ptr noundef %84) #12
  %90 = load i16, ptr %77, align 2, !tbaa !31
  %91 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %90, i64 noundef %31) #12
  %92 = and i64 %91, 4294967295
  %93 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %92, ptr noundef %89) #12
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1
  %95 = load i64, ptr %75, align 8, !tbaa !40
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  %97 = add nuw nsw i64 %78, 1
  %98 = icmp eq i64 %97, %1
  br i1 %98, label %435, label %76, !llvm.loop !179

99:                                               ; preds = %71, %99
  %100 = phi ptr [ %2, %71 ], [ %117, %99 ]
  %101 = phi i64 [ 0, %71 ], [ %120, %99 ]
  %102 = phi ptr [ %3, %71 ], [ %119, %99 ]
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %104 = load i16, ptr %103, align 2, !tbaa !29
  %105 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %104, i64 noundef %31) #12
  %106 = and i64 %105, 4294967295
  %107 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %106, ptr noundef %102) #12
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !30
  %110 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %109, i64 noundef %31) #12
  %111 = and i64 %110, 4294967295
  %112 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %111, ptr noundef %107) #12
  %113 = load i16, ptr %100, align 2, !tbaa !31
  %114 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %113, i64 noundef %31) #12
  %115 = and i64 %114, 4294967295
  %116 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %115, ptr noundef %112) #12
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 1
  %118 = load i64, ptr %72, align 8, !tbaa !40
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  %120 = add nuw nsw i64 %101, 1
  %121 = icmp eq i64 %120, %1
  br i1 %121, label %435, label %99, !llvm.loop !180

122:                                              ; preds = %4
  %123 = tail call fastcc i64 @GetQuantumRange(i64 noundef 12) #12
  %124 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %125 = load i32, ptr %124, align 4, !tbaa !51
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %205

127:                                              ; preds = %122
  %128 = mul i64 %1, 3
  %129 = add i64 %128, -1
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %133 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %144

134:                                              ; preds = %182
  %135 = urem i64 %191, 3
  br label %136

136:                                              ; preds = %134, %127
  %137 = phi ptr [ %3, %127 ], [ %190, %134 ]
  %138 = phi i64 [ 0, %127 ], [ %135, %134 ]
  %139 = phi ptr [ %2, %127 ], [ %184, %134 ]
  %140 = and i64 %128, 1
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %435, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  switch i64 %138, label %193 [
    i64 2, label %197
    i64 1, label %195
  ]

144:                                              ; preds = %131, %182
  %145 = phi ptr [ %2, %131 ], [ %184, %182 ]
  %146 = phi i64 [ 0, %131 ], [ %191, %182 ]
  %147 = phi ptr [ %3, %131 ], [ %190, %182 ]
  %148 = urem i64 %146, 3
  switch i64 %148, label %149 [
    i64 2, label %157
    i64 1, label %153
  ]

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 0, i32 2
  %151 = load i16, ptr %150, align 2, !tbaa !29
  %152 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %151, i64 noundef %123) #12
  br label %161

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 0, i32 1
  %155 = load i16, ptr %154, align 2, !tbaa !30
  %156 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %155, i64 noundef %123) #12
  br label %161

157:                                              ; preds = %144
  %158 = load i16, ptr %145, align 2, !tbaa !31
  %159 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %158, i64 noundef %123) #12
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 1
  br label %161

161:                                              ; preds = %157, %153, %149
  %162 = phi i64 [ %152, %149 ], [ %156, %153 ], [ %159, %157 ]
  %163 = phi ptr [ %145, %149 ], [ %145, %153 ], [ %160, %157 ]
  %164 = trunc i64 %162 to i16
  %165 = load i32, ptr %132, align 8, !tbaa !43
  %166 = shl i16 %164, 4
  %167 = tail call fastcc ptr @PopShortPixel(i32 noundef %165, i16 noundef zeroext %166, ptr noundef %147) #12
  %168 = or disjoint i64 %146, 1
  %169 = urem i64 %168, 3
  switch i64 %169, label %170 [
    i64 2, label %178
    i64 1, label %174
  ]

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 0, i32 2
  %172 = load i16, ptr %171, align 2, !tbaa !29
  %173 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %172, i64 noundef %123) #12
  br label %182

174:                                              ; preds = %161
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 0, i32 1
  %176 = load i16, ptr %175, align 2, !tbaa !30
  %177 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %176, i64 noundef %123) #12
  br label %182

178:                                              ; preds = %161
  %179 = load i16, ptr %163, align 2, !tbaa !31
  %180 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %179, i64 noundef %123) #12
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %163, i64 1
  br label %182

182:                                              ; preds = %178, %174, %170
  %183 = phi i64 [ %173, %170 ], [ %177, %174 ], [ %180, %178 ]
  %184 = phi ptr [ %163, %170 ], [ %163, %174 ], [ %181, %178 ]
  %185 = trunc i64 %183 to i16
  %186 = load i32, ptr %132, align 8, !tbaa !43
  %187 = shl i16 %185, 4
  %188 = tail call fastcc ptr @PopShortPixel(i32 noundef %186, i16 noundef zeroext %187, ptr noundef nonnull %167) #12
  %189 = load i64, ptr %133, align 8, !tbaa !40
  %190 = getelementptr inbounds i8, ptr %188, i64 %189
  %191 = add nuw nsw i64 %146, 2
  %192 = icmp slt i64 %191, %129
  br i1 %192, label %144, label %134, !llvm.loop !181

193:                                              ; preds = %142
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 0, i32 2
  br label %197

195:                                              ; preds = %142
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 0, i32 1
  br label %197

197:                                              ; preds = %142, %195, %193
  %198 = phi ptr [ %196, %195 ], [ %194, %193 ], [ %139, %142 ]
  %199 = load i16, ptr %198, align 2, !tbaa !35
  %200 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %199, i64 noundef %123) #12
  %201 = trunc i64 %200 to i16
  %202 = load i32, ptr %143, align 8, !tbaa !43
  %203 = shl i16 %201, 4
  %204 = tail call fastcc ptr @PopShortPixel(i32 noundef %202, i16 noundef zeroext %203, ptr noundef %137) #12
  br label %435

205:                                              ; preds = %122
  %206 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %207 = load i64, ptr %206, align 8, !tbaa !53
  %208 = icmp eq i64 %207, 32
  %209 = icmp sgt i64 %1, 0
  br i1 %208, label %213, label %210

210:                                              ; preds = %205
  br i1 %209, label %211, label %435

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %239

213:                                              ; preds = %205
  br i1 %209, label %214, label %435

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %216

216:                                              ; preds = %214, %216
  %217 = phi ptr [ %2, %214 ], [ %234, %216 ]
  %218 = phi i64 [ 0, %214 ], [ %237, %216 ]
  %219 = phi ptr [ %3, %214 ], [ %236, %216 ]
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 0, i32 2
  %221 = load i16, ptr %220, align 2, !tbaa !29
  %222 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %221, i64 noundef %123) #12
  %223 = and i64 %222, 4294967295
  %224 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %223, ptr noundef %219) #12
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 0, i32 1
  %226 = load i16, ptr %225, align 2, !tbaa !30
  %227 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %226, i64 noundef %123) #12
  %228 = and i64 %227, 4294967295
  %229 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %228, ptr noundef %224) #12
  %230 = load i16, ptr %217, align 2, !tbaa !31
  %231 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %230, i64 noundef %123) #12
  %232 = and i64 %231, 4294967295
  %233 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %232, ptr noundef %229) #12
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 1
  %235 = load i64, ptr %215, align 8, !tbaa !40
  %236 = getelementptr inbounds i8, ptr %233, i64 %235
  %237 = add nuw nsw i64 %218, 1
  %238 = icmp eq i64 %237, %1
  br i1 %238, label %435, label %216, !llvm.loop !182

239:                                              ; preds = %211, %239
  %240 = phi ptr [ %2, %211 ], [ %257, %239 ]
  %241 = phi i64 [ 0, %211 ], [ %260, %239 ]
  %242 = phi ptr [ %3, %211 ], [ %259, %239 ]
  %243 = getelementptr inbounds %struct._PixelPacket, ptr %240, i64 0, i32 2
  %244 = load i16, ptr %243, align 2, !tbaa !29
  %245 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %244, i64 noundef %123) #12
  %246 = and i64 %245, 4294967295
  %247 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %246, ptr noundef %242) #12
  %248 = getelementptr inbounds %struct._PixelPacket, ptr %240, i64 0, i32 1
  %249 = load i16, ptr %248, align 2, !tbaa !30
  %250 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %249, i64 noundef %123) #12
  %251 = and i64 %250, 4294967295
  %252 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %251, ptr noundef %247) #12
  %253 = load i16, ptr %240, align 2, !tbaa !31
  %254 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %253, i64 noundef %123) #12
  %255 = and i64 %254, 4294967295
  %256 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %255, ptr noundef %252) #12
  %257 = getelementptr inbounds %struct._PixelPacket, ptr %240, i64 1
  %258 = load i64, ptr %212, align 8, !tbaa !40
  %259 = getelementptr inbounds i8, ptr %256, i64 %258
  %260 = add nuw nsw i64 %241, 1
  %261 = icmp eq i64 %260, %1
  br i1 %261, label %435, label %239, !llvm.loop !183

262:                                              ; preds = %4
  %263 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %264 = load i32, ptr %263, align 8, !tbaa !42
  %265 = icmp eq i32 %264, 1
  %266 = icmp sgt i64 %1, 0
  br i1 %265, label %271, label %267

267:                                              ; preds = %262
  br i1 %266, label %268, label %435

268:                                              ; preds = %267
  %269 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %270 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %307

271:                                              ; preds = %262
  br i1 %266, label %272, label %435

272:                                              ; preds = %271
  %273 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %274 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %275

275:                                              ; preds = %272, %275
  %276 = phi ptr [ %2, %272 ], [ %302, %275 ]
  %277 = phi i64 [ 0, %272 ], [ %305, %275 ]
  %278 = phi ptr [ %3, %272 ], [ %304, %275 ]
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 0, i32 2
  %280 = load i16, ptr %279, align 2, !tbaa !29
  %281 = uitofp i16 %280 to double
  %282 = fmul double %281, 0x3EF0001000100010
  %283 = fptrunc double %282 to float
  %284 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %283) #12
  %285 = load i32, ptr %273, align 8, !tbaa !43
  %286 = tail call fastcc ptr @PopShortPixel(i32 noundef %285, i16 noundef zeroext %284, ptr noundef %278) #12
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 0, i32 1
  %288 = load i16, ptr %287, align 2, !tbaa !30
  %289 = uitofp i16 %288 to double
  %290 = fmul double %289, 0x3EF0001000100010
  %291 = fptrunc double %290 to float
  %292 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %291) #12
  %293 = load i32, ptr %273, align 8, !tbaa !43
  %294 = tail call fastcc ptr @PopShortPixel(i32 noundef %293, i16 noundef zeroext %292, ptr noundef nonnull %286) #12
  %295 = load i16, ptr %276, align 2, !tbaa !31
  %296 = uitofp i16 %295 to double
  %297 = fmul double %296, 0x3EF0001000100010
  %298 = fptrunc double %297 to float
  %299 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %298) #12
  %300 = load i32, ptr %273, align 8, !tbaa !43
  %301 = tail call fastcc ptr @PopShortPixel(i32 noundef %300, i16 noundef zeroext %299, ptr noundef nonnull %294) #12
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 1
  %303 = load i64, ptr %274, align 8, !tbaa !40
  %304 = getelementptr inbounds i8, ptr %301, i64 %303
  %305 = add nuw nsw i64 %277, 1
  %306 = icmp eq i64 %305, %1
  br i1 %306, label %435, label %275, !llvm.loop !184

307:                                              ; preds = %268, %307
  %308 = phi ptr [ %2, %268 ], [ %322, %307 ]
  %309 = phi i64 [ 0, %268 ], [ %325, %307 ]
  %310 = phi ptr [ %3, %268 ], [ %324, %307 ]
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %308, i64 0, i32 2
  %312 = load i16, ptr %311, align 2, !tbaa !29
  %313 = load i32, ptr %269, align 8, !tbaa !43
  %314 = tail call fastcc ptr @PopShortPixel(i32 noundef %313, i16 noundef zeroext %312, ptr noundef %310) #12
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %308, i64 0, i32 1
  %316 = load i16, ptr %315, align 2, !tbaa !30
  %317 = load i32, ptr %269, align 8, !tbaa !43
  %318 = tail call fastcc ptr @PopShortPixel(i32 noundef %317, i16 noundef zeroext %316, ptr noundef nonnull %314) #12
  %319 = load i16, ptr %308, align 2, !tbaa !31
  %320 = load i32, ptr %269, align 8, !tbaa !43
  %321 = tail call fastcc ptr @PopShortPixel(i32 noundef %320, i16 noundef zeroext %319, ptr noundef nonnull %318) #12
  %322 = getelementptr inbounds %struct._PixelPacket, ptr %308, i64 1
  %323 = load i64, ptr %270, align 8, !tbaa !40
  %324 = getelementptr inbounds i8, ptr %321, i64 %323
  %325 = add nuw nsw i64 %309, 1
  %326 = icmp eq i64 %325, %1
  br i1 %326, label %435, label %307, !llvm.loop !185

327:                                              ; preds = %4
  %328 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %329 = load i32, ptr %328, align 8, !tbaa !42
  %330 = icmp eq i32 %329, 1
  %331 = icmp sgt i64 %1, 0
  br i1 %330, label %336, label %332

332:                                              ; preds = %327
  br i1 %331, label %333, label %435

333:                                              ; preds = %332
  %334 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %335 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %359

336:                                              ; preds = %327
  br i1 %331, label %337, label %435

337:                                              ; preds = %336
  %338 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %339

339:                                              ; preds = %337, %339
  %340 = phi ptr [ %2, %337 ], [ %354, %339 ]
  %341 = phi i64 [ 0, %337 ], [ %357, %339 ]
  %342 = phi ptr [ %3, %337 ], [ %356, %339 ]
  %343 = getelementptr inbounds %struct._PixelPacket, ptr %340, i64 0, i32 2
  %344 = load i16, ptr %343, align 2, !tbaa !29
  %345 = uitofp i16 %344 to float
  %346 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %345, ptr noundef %342) #12
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %340, i64 0, i32 1
  %348 = load i16, ptr %347, align 2, !tbaa !30
  %349 = uitofp i16 %348 to float
  %350 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %349, ptr noundef nonnull %346) #12
  %351 = load i16, ptr %340, align 2, !tbaa !31
  %352 = uitofp i16 %351 to float
  %353 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %352, ptr noundef nonnull %350) #12
  %354 = getelementptr inbounds %struct._PixelPacket, ptr %340, i64 1
  %355 = load i64, ptr %338, align 8, !tbaa !40
  %356 = getelementptr inbounds i8, ptr %353, i64 %355
  %357 = add nuw nsw i64 %341, 1
  %358 = icmp eq i64 %357, %1
  br i1 %358, label %435, label %339, !llvm.loop !186

359:                                              ; preds = %333, %359
  %360 = phi ptr [ %2, %333 ], [ %377, %359 ]
  %361 = phi i64 [ 0, %333 ], [ %380, %359 ]
  %362 = phi ptr [ %3, %333 ], [ %379, %359 ]
  %363 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 0, i32 2
  %364 = load i16, ptr %363, align 2, !tbaa !29
  %365 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %364) #12
  %366 = load i32, ptr %334, align 8, !tbaa !43
  %367 = tail call fastcc ptr @PopLongPixel(i32 noundef %366, i32 noundef %365, ptr noundef %362) #12
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 0, i32 1
  %369 = load i16, ptr %368, align 2, !tbaa !30
  %370 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %369) #12
  %371 = load i32, ptr %334, align 8, !tbaa !43
  %372 = tail call fastcc ptr @PopLongPixel(i32 noundef %371, i32 noundef %370, ptr noundef nonnull %367) #12
  %373 = load i16, ptr %360, align 2, !tbaa !31
  %374 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %373) #12
  %375 = load i32, ptr %334, align 8, !tbaa !43
  %376 = tail call fastcc ptr @PopLongPixel(i32 noundef %375, i32 noundef %374, ptr noundef nonnull %372) #12
  %377 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 1
  %378 = load i64, ptr %335, align 8, !tbaa !40
  %379 = getelementptr inbounds i8, ptr %376, i64 %378
  %380 = add nuw nsw i64 %361, 1
  %381 = icmp eq i64 %380, %1
  br i1 %381, label %435, label %359, !llvm.loop !187

382:                                              ; preds = %4
  %383 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %384 = load i32, ptr %383, align 8, !tbaa !42
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %410

386:                                              ; preds = %382
  %387 = icmp sgt i64 %1, 0
  br i1 %387, label %388, label %435

388:                                              ; preds = %386
  %389 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %390

390:                                              ; preds = %388, %390
  %391 = phi ptr [ %2, %388 ], [ %405, %390 ]
  %392 = phi i64 [ 0, %388 ], [ %408, %390 ]
  %393 = phi ptr [ %3, %388 ], [ %407, %390 ]
  %394 = getelementptr inbounds %struct._PixelPacket, ptr %391, i64 0, i32 2
  %395 = load i16, ptr %394, align 2, !tbaa !29
  %396 = uitofp i16 %395 to double
  %397 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %396, ptr noundef %393) #12
  %398 = getelementptr inbounds %struct._PixelPacket, ptr %391, i64 0, i32 1
  %399 = load i16, ptr %398, align 2, !tbaa !30
  %400 = uitofp i16 %399 to double
  %401 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %400, ptr noundef nonnull %397) #12
  %402 = load i16, ptr %391, align 2, !tbaa !31
  %403 = uitofp i16 %402 to double
  %404 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %403, ptr noundef nonnull %401) #12
  %405 = getelementptr inbounds %struct._PixelPacket, ptr %391, i64 1
  %406 = load i64, ptr %389, align 8, !tbaa !40
  %407 = getelementptr inbounds i8, ptr %404, i64 %406
  %408 = add nuw nsw i64 %392, 1
  %409 = icmp eq i64 %408, %1
  br i1 %409, label %435, label %390, !llvm.loop !188

410:                                              ; preds = %382, %4
  %411 = tail call fastcc i64 @GetQuantumRange(i64 noundef %5) #12
  %412 = icmp sgt i64 %1, 0
  br i1 %412, label %413, label %435

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %415

415:                                              ; preds = %413, %415
  %416 = phi ptr [ %2, %413 ], [ %430, %415 ]
  %417 = phi i64 [ 0, %413 ], [ %433, %415 ]
  %418 = phi ptr [ %3, %413 ], [ %432, %415 ]
  %419 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 0, i32 2
  %420 = load i16, ptr %419, align 2, !tbaa !29
  %421 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %420, i64 noundef %411) #12
  %422 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %421, ptr noundef %418) #12
  %423 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 0, i32 1
  %424 = load i16, ptr %423, align 2, !tbaa !30
  %425 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %424, i64 noundef %411) #12
  %426 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %425, ptr noundef %422) #12
  %427 = load i16, ptr %416, align 2, !tbaa !31
  %428 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %427, i64 noundef %411) #12
  %429 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %428, ptr noundef %426) #12
  %430 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 1
  %431 = load i64, ptr %414, align 8, !tbaa !40
  %432 = getelementptr inbounds i8, ptr %429, i64 %431
  %433 = add nuw nsw i64 %417, 1
  %434 = icmp eq i64 %433, %1
  br i1 %434, label %435, label %415, !llvm.loop !189

435:                                              ; preds = %390, %359, %339, %307, %275, %239, %216, %99, %76, %40, %10, %415, %197, %386, %332, %336, %267, %271, %210, %213, %136, %70, %73, %35, %6, %410
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportRGBAQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8, !tbaa !39
  switch i64 %5, label %357 [
    i64 8, label %6
    i64 10, label %35
    i64 16, label %179
    i64 32, label %258
    i64 64, label %324
  ]

6:                                                ; preds = %4
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %8, label %387

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %2, %8 ], [ %30, %10 ]
  %12 = phi ptr [ %3, %8 ], [ %32, %10 ]
  %13 = phi i64 [ 0, %8 ], [ %33, %10 ]
  %14 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 2
  %15 = load i16, ptr %14, align 2, !tbaa !29
  %16 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %15) #12
  %17 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %16, ptr noundef %12) #12
  %18 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !30
  %20 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %19) #12
  %21 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %20, ptr noundef nonnull %17) #12
  %22 = load i16, ptr %11, align 2, !tbaa !31
  %23 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %22) #12
  %24 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %23, ptr noundef nonnull %21) #12
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !28
  %27 = xor i16 %26, -1
  %28 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %27) #12
  %29 = tail call fastcc ptr @PopCharPixel(i8 noundef zeroext %28, ptr noundef nonnull %24) #12
  %30 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 1
  %31 = load i64, ptr %9, align 8, !tbaa !40
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  %33 = add nuw nsw i64 %13, 1
  %34 = icmp eq i64 %33, %1
  br i1 %34, label %387, label %10, !llvm.loop !190

35:                                               ; preds = %4
  %36 = tail call fastcc i64 @GetQuantumRange(i64 noundef 10) #12
  %37 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !51
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %110

40:                                               ; preds = %35
  %41 = icmp sgt i64 %1, 0
  br i1 %41, label %42, label %387

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %44 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %45

45:                                               ; preds = %42, %103
  %46 = phi ptr [ %2, %42 ], [ %105, %103 ]
  %47 = phi ptr [ %3, %42 ], [ %107, %103 ]
  %48 = phi i64 [ 0, %42 ], [ %104, %103 ]
  %49 = phi i64 [ 0, %42 ], [ %75, %103 ]
  %50 = phi i32 [ 0, %42 ], [ %98, %103 ]
  %51 = phi i64 [ 0, %42 ], [ %108, %103 ]
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 3
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 1
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 2
  br label %55

55:                                               ; preds = %45, %97
  %56 = phi ptr [ %47, %45 ], [ %99, %97 ]
  %57 = phi i64 [ %48, %45 ], [ %100, %97 ]
  %58 = phi i64 [ %49, %45 ], [ %75, %97 ]
  %59 = phi i64 [ 0, %45 ], [ %101, %97 ]
  %60 = phi i32 [ %50, %45 ], [ %98, %97 ]
  switch i64 %59, label %74 [
    i64 0, label %61
    i64 1, label %64
    i64 2, label %67
    i64 3, label %70
  ]

61:                                               ; preds = %55
  %62 = load i16, ptr %54, align 2, !tbaa !29
  %63 = zext i16 %62 to i64
  br label %74

64:                                               ; preds = %55
  %65 = load i16, ptr %53, align 2, !tbaa !30
  %66 = zext i16 %65 to i64
  br label %74

67:                                               ; preds = %55
  %68 = load i16, ptr %46, align 2, !tbaa !31
  %69 = zext i16 %68 to i64
  br label %74

70:                                               ; preds = %55
  %71 = load i16, ptr %52, align 2, !tbaa !28
  %72 = xor i16 %71, -1
  %73 = zext i16 %72 to i64
  br label %74

74:                                               ; preds = %55, %70, %67, %64, %61
  %75 = phi i64 [ %58, %55 ], [ %73, %70 ], [ %69, %67 ], [ %66, %64 ], [ %63, %61 ]
  %76 = srem i64 %57, 3
  switch i64 %76, label %97 [
    i64 0, label %77
    i64 1, label %83
    i64 2, label %89
  ]

77:                                               ; preds = %74
  %78 = trunc i64 %75 to i16
  %79 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %78, i64 noundef %36) #12
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 22
  %82 = or i32 %81, %60
  br label %97

83:                                               ; preds = %74
  %84 = trunc i64 %75 to i16
  %85 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %84, i64 noundef %36) #12
  %86 = trunc i64 %85 to i32
  %87 = shl i32 %86, 12
  %88 = or i32 %87, %60
  br label %97

89:                                               ; preds = %74
  %90 = trunc i64 %75 to i16
  %91 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %90, i64 noundef %36) #12
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 2
  %94 = or i32 %93, %60
  %95 = load i32, ptr %43, align 8, !tbaa !43
  %96 = tail call fastcc ptr @PopLongPixel(i32 noundef %95, i32 noundef %94, ptr noundef %56) #12
  br label %97

97:                                               ; preds = %74, %89, %83, %77
  %98 = phi i32 [ %60, %74 ], [ 0, %89 ], [ %88, %83 ], [ %82, %77 ]
  %99 = phi ptr [ %56, %74 ], [ %96, %89 ], [ %56, %83 ], [ %56, %77 ]
  %100 = add nsw i64 %57, 1
  %101 = add nuw nsw i64 %59, 1
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %55, !llvm.loop !191

103:                                              ; preds = %97
  %104 = add i64 %48, 4
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 1
  %106 = load i64, ptr %44, align 8, !tbaa !40
  %107 = getelementptr inbounds i8, ptr %99, i64 %106
  %108 = add nuw nsw i64 %51, 1
  %109 = icmp eq i64 %108, %1
  br i1 %109, label %387, label %45, !llvm.loop !192

110:                                              ; preds = %35
  %111 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !53
  %113 = icmp eq i64 %112, 32
  %114 = icmp sgt i64 %1, 0
  br i1 %113, label %118, label %115

115:                                              ; preds = %110
  br i1 %114, label %116, label %387

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %150

118:                                              ; preds = %110
  br i1 %114, label %119, label %387

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi ptr [ %2, %119 ], [ %145, %121 ]
  %123 = phi ptr [ %3, %119 ], [ %147, %121 ]
  %124 = phi i64 [ 0, %119 ], [ %148, %121 ]
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 2
  %126 = load i16, ptr %125, align 2, !tbaa !29
  %127 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %126, i64 noundef %36) #12
  %128 = and i64 %127, 4294967295
  %129 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %128, ptr noundef %123) #12
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 1
  %131 = load i16, ptr %130, align 2, !tbaa !30
  %132 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %131, i64 noundef %36) #12
  %133 = and i64 %132, 4294967295
  %134 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %133, ptr noundef %129) #12
  %135 = load i16, ptr %122, align 2, !tbaa !31
  %136 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %135, i64 noundef %36) #12
  %137 = and i64 %136, 4294967295
  %138 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %137, ptr noundef %134) #12
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 3
  %140 = load i16, ptr %139, align 2, !tbaa !28
  %141 = xor i16 %140, -1
  %142 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %141, i64 noundef %36) #12
  %143 = and i64 %142, 4294967295
  %144 = tail call fastcc ptr @PopQuantumLongPixel(ptr noundef nonnull %0, i64 noundef %143, ptr noundef %138) #12
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 1
  %146 = load i64, ptr %120, align 8, !tbaa !40
  %147 = getelementptr inbounds i8, ptr %144, i64 %146
  %148 = add nuw nsw i64 %124, 1
  %149 = icmp eq i64 %148, %1
  br i1 %149, label %387, label %121, !llvm.loop !193

150:                                              ; preds = %116, %150
  %151 = phi ptr [ %2, %116 ], [ %174, %150 ]
  %152 = phi ptr [ %3, %116 ], [ %176, %150 ]
  %153 = phi i64 [ 0, %116 ], [ %177, %150 ]
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 2
  %155 = load i16, ptr %154, align 2, !tbaa !29
  %156 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %155, i64 noundef %36) #12
  %157 = and i64 %156, 4294967295
  %158 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %157, ptr noundef %152) #12
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 1
  %160 = load i16, ptr %159, align 2, !tbaa !30
  %161 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %160, i64 noundef %36) #12
  %162 = and i64 %161, 4294967295
  %163 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %162, ptr noundef %158) #12
  %164 = load i16, ptr %151, align 2, !tbaa !31
  %165 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %164, i64 noundef %36) #12
  %166 = and i64 %165, 4294967295
  %167 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %166, ptr noundef %163) #12
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 3
  %169 = load i16, ptr %168, align 2, !tbaa !28
  %170 = xor i16 %169, -1
  %171 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %170, i64 noundef %36) #12
  %172 = and i64 %171, 4294967295
  %173 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %172, ptr noundef %167) #12
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 1
  %175 = load i64, ptr %117, align 8, !tbaa !40
  %176 = getelementptr inbounds i8, ptr %173, i64 %175
  %177 = add nuw nsw i64 %153, 1
  %178 = icmp eq i64 %177, %1
  br i1 %178, label %387, label %150, !llvm.loop !194

179:                                              ; preds = %4
  %180 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %181 = load i32, ptr %180, align 8, !tbaa !42
  %182 = icmp eq i32 %181, 1
  %183 = icmp sgt i64 %1, 0
  br i1 %182, label %188, label %184

184:                                              ; preds = %179
  br i1 %183, label %185, label %387

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %187 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %233

188:                                              ; preds = %179
  br i1 %183, label %189, label %387

189:                                              ; preds = %188
  %190 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %191 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %192

192:                                              ; preds = %189, %192
  %193 = phi ptr [ %2, %189 ], [ %228, %192 ]
  %194 = phi ptr [ %3, %189 ], [ %230, %192 ]
  %195 = phi i64 [ 0, %189 ], [ %231, %192 ]
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 2
  %197 = load i16, ptr %196, align 2, !tbaa !29
  %198 = uitofp i16 %197 to double
  %199 = fmul double %198, 0x3EF0001000100010
  %200 = fptrunc double %199 to float
  %201 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %200) #12
  %202 = load i32, ptr %190, align 8, !tbaa !43
  %203 = tail call fastcc ptr @PopShortPixel(i32 noundef %202, i16 noundef zeroext %201, ptr noundef %194) #12
  %204 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 1
  %205 = load i16, ptr %204, align 2, !tbaa !30
  %206 = uitofp i16 %205 to double
  %207 = fmul double %206, 0x3EF0001000100010
  %208 = fptrunc double %207 to float
  %209 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %208) #12
  %210 = load i32, ptr %190, align 8, !tbaa !43
  %211 = tail call fastcc ptr @PopShortPixel(i32 noundef %210, i16 noundef zeroext %209, ptr noundef nonnull %203) #12
  %212 = load i16, ptr %193, align 2, !tbaa !31
  %213 = uitofp i16 %212 to double
  %214 = fmul double %213, 0x3EF0001000100010
  %215 = fptrunc double %214 to float
  %216 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %215) #12
  %217 = load i32, ptr %190, align 8, !tbaa !43
  %218 = tail call fastcc ptr @PopShortPixel(i32 noundef %217, i16 noundef zeroext %216, ptr noundef nonnull %211) #12
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 3
  %220 = load i16, ptr %219, align 2, !tbaa !28
  %221 = xor i16 %220, -1
  %222 = uitofp i16 %221 to double
  %223 = fmul double %222, 0x3EF0001000100010
  %224 = fptrunc double %223 to float
  %225 = tail call fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %224) #12
  %226 = load i32, ptr %190, align 8, !tbaa !43
  %227 = tail call fastcc ptr @PopShortPixel(i32 noundef %226, i16 noundef zeroext %225, ptr noundef nonnull %218) #12
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 1
  %229 = load i64, ptr %191, align 8, !tbaa !40
  %230 = getelementptr inbounds i8, ptr %227, i64 %229
  %231 = add nuw nsw i64 %195, 1
  %232 = icmp eq i64 %231, %1
  br i1 %232, label %387, label %192, !llvm.loop !195

233:                                              ; preds = %185, %233
  %234 = phi ptr [ %2, %185 ], [ %253, %233 ]
  %235 = phi ptr [ %3, %185 ], [ %255, %233 ]
  %236 = phi i64 [ 0, %185 ], [ %256, %233 ]
  %237 = getelementptr inbounds %struct._PixelPacket, ptr %234, i64 0, i32 2
  %238 = load i16, ptr %237, align 2, !tbaa !29
  %239 = load i32, ptr %186, align 8, !tbaa !43
  %240 = tail call fastcc ptr @PopShortPixel(i32 noundef %239, i16 noundef zeroext %238, ptr noundef %235) #12
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %234, i64 0, i32 1
  %242 = load i16, ptr %241, align 2, !tbaa !30
  %243 = load i32, ptr %186, align 8, !tbaa !43
  %244 = tail call fastcc ptr @PopShortPixel(i32 noundef %243, i16 noundef zeroext %242, ptr noundef nonnull %240) #12
  %245 = load i16, ptr %234, align 2, !tbaa !31
  %246 = load i32, ptr %186, align 8, !tbaa !43
  %247 = tail call fastcc ptr @PopShortPixel(i32 noundef %246, i16 noundef zeroext %245, ptr noundef nonnull %244) #12
  %248 = getelementptr inbounds %struct._PixelPacket, ptr %234, i64 0, i32 3
  %249 = load i16, ptr %248, align 2, !tbaa !28
  %250 = xor i16 %249, -1
  %251 = load i32, ptr %186, align 8, !tbaa !43
  %252 = tail call fastcc ptr @PopShortPixel(i32 noundef %251, i16 noundef zeroext %250, ptr noundef nonnull %247) #12
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %234, i64 1
  %254 = load i64, ptr %187, align 8, !tbaa !40
  %255 = getelementptr inbounds i8, ptr %252, i64 %254
  %256 = add nuw nsw i64 %236, 1
  %257 = icmp eq i64 %256, %1
  br i1 %257, label %387, label %233, !llvm.loop !196

258:                                              ; preds = %4
  %259 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %260 = load i32, ptr %259, align 8, !tbaa !42
  %261 = icmp eq i32 %260, 1
  %262 = icmp sgt i64 %1, 0
  br i1 %261, label %267, label %263

263:                                              ; preds = %258
  br i1 %262, label %264, label %387

264:                                              ; preds = %263
  %265 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %266 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %295

267:                                              ; preds = %258
  br i1 %262, label %268, label %387

268:                                              ; preds = %267
  %269 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %270

270:                                              ; preds = %268, %270
  %271 = phi ptr [ %2, %268 ], [ %290, %270 ]
  %272 = phi ptr [ %3, %268 ], [ %292, %270 ]
  %273 = phi i64 [ 0, %268 ], [ %293, %270 ]
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 2
  %275 = load i16, ptr %274, align 2, !tbaa !29
  %276 = uitofp i16 %275 to float
  %277 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %276, ptr noundef %272) #12
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 1
  %279 = load i16, ptr %278, align 2, !tbaa !30
  %280 = uitofp i16 %279 to float
  %281 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %280, ptr noundef nonnull %277) #12
  %282 = load i16, ptr %271, align 2, !tbaa !31
  %283 = uitofp i16 %282 to float
  %284 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %283, ptr noundef nonnull %281) #12
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 3
  %286 = load i16, ptr %285, align 2, !tbaa !28
  %287 = xor i16 %286, -1
  %288 = uitofp i16 %287 to float
  %289 = tail call fastcc ptr @PopFloatPixel(ptr noundef nonnull %0, float noundef %288, ptr noundef nonnull %284) #12
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 1
  %291 = load i64, ptr %269, align 8, !tbaa !40
  %292 = getelementptr inbounds i8, ptr %289, i64 %291
  %293 = add nuw nsw i64 %273, 1
  %294 = icmp eq i64 %293, %1
  br i1 %294, label %387, label %270, !llvm.loop !197

295:                                              ; preds = %264, %295
  %296 = phi ptr [ %2, %264 ], [ %319, %295 ]
  %297 = phi ptr [ %3, %264 ], [ %321, %295 ]
  %298 = phi i64 [ 0, %264 ], [ %322, %295 ]
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %296, i64 0, i32 2
  %300 = load i16, ptr %299, align 2, !tbaa !29
  %301 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %300) #12
  %302 = load i32, ptr %265, align 8, !tbaa !43
  %303 = tail call fastcc ptr @PopLongPixel(i32 noundef %302, i32 noundef %301, ptr noundef %297) #12
  %304 = getelementptr inbounds %struct._PixelPacket, ptr %296, i64 0, i32 1
  %305 = load i16, ptr %304, align 2, !tbaa !30
  %306 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %305) #12
  %307 = load i32, ptr %265, align 8, !tbaa !43
  %308 = tail call fastcc ptr @PopLongPixel(i32 noundef %307, i32 noundef %306, ptr noundef nonnull %303) #12
  %309 = load i16, ptr %296, align 2, !tbaa !31
  %310 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %309) #12
  %311 = load i32, ptr %265, align 8, !tbaa !43
  %312 = tail call fastcc ptr @PopLongPixel(i32 noundef %311, i32 noundef %310, ptr noundef nonnull %308) #12
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %296, i64 0, i32 3
  %314 = load i16, ptr %313, align 2, !tbaa !28
  %315 = xor i16 %314, -1
  %316 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %315) #12
  %317 = load i32, ptr %265, align 8, !tbaa !43
  %318 = tail call fastcc ptr @PopLongPixel(i32 noundef %317, i32 noundef %316, ptr noundef nonnull %312) #12
  %319 = getelementptr inbounds %struct._PixelPacket, ptr %296, i64 1
  %320 = load i64, ptr %266, align 8, !tbaa !40
  %321 = getelementptr inbounds i8, ptr %318, i64 %320
  %322 = add nuw nsw i64 %298, 1
  %323 = icmp eq i64 %322, %1
  br i1 %323, label %387, label %295, !llvm.loop !198

324:                                              ; preds = %4
  %325 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %326 = load i32, ptr %325, align 8, !tbaa !42
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %328, label %357

328:                                              ; preds = %324
  %329 = icmp sgt i64 %1, 0
  br i1 %329, label %330, label %387

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %332

332:                                              ; preds = %330, %332
  %333 = phi ptr [ %2, %330 ], [ %352, %332 ]
  %334 = phi ptr [ %3, %330 ], [ %354, %332 ]
  %335 = phi i64 [ 0, %330 ], [ %355, %332 ]
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %333, i64 0, i32 2
  %337 = load i16, ptr %336, align 2, !tbaa !29
  %338 = uitofp i16 %337 to double
  %339 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %338, ptr noundef %334) #12
  %340 = getelementptr inbounds %struct._PixelPacket, ptr %333, i64 0, i32 1
  %341 = load i16, ptr %340, align 2, !tbaa !30
  %342 = uitofp i16 %341 to double
  %343 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %342, ptr noundef nonnull %339) #12
  %344 = load i16, ptr %333, align 2, !tbaa !31
  %345 = uitofp i16 %344 to double
  %346 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %345, ptr noundef nonnull %343) #12
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %333, i64 0, i32 3
  %348 = load i16, ptr %347, align 2, !tbaa !28
  %349 = xor i16 %348, -1
  %350 = uitofp i16 %349 to double
  %351 = tail call fastcc ptr @PopDoublePixel(ptr noundef nonnull %0, double noundef %350, ptr noundef nonnull %346) #12
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %333, i64 1
  %353 = load i64, ptr %331, align 8, !tbaa !40
  %354 = getelementptr inbounds i8, ptr %351, i64 %353
  %355 = add nuw nsw i64 %335, 1
  %356 = icmp eq i64 %355, %1
  br i1 %356, label %387, label %332, !llvm.loop !199

357:                                              ; preds = %324, %4
  %358 = tail call fastcc i64 @GetQuantumRange(i64 noundef %5) #12
  %359 = icmp sgt i64 %1, 0
  br i1 %359, label %360, label %387

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %362

362:                                              ; preds = %360, %362
  %363 = phi ptr [ %2, %360 ], [ %382, %362 ]
  %364 = phi ptr [ %3, %360 ], [ %384, %362 ]
  %365 = phi i64 [ 0, %360 ], [ %385, %362 ]
  %366 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 2
  %367 = load i16, ptr %366, align 2, !tbaa !29
  %368 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %367, i64 noundef %358) #12
  %369 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %368, ptr noundef %364) #12
  %370 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 1
  %371 = load i16, ptr %370, align 2, !tbaa !30
  %372 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %371, i64 noundef %358) #12
  %373 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %372, ptr noundef %369) #12
  %374 = load i16, ptr %363, align 2, !tbaa !31
  %375 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %374, i64 noundef %358) #12
  %376 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %375, ptr noundef %373) #12
  %377 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 3
  %378 = load i16, ptr %377, align 2, !tbaa !28
  %379 = xor i16 %378, -1
  %380 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %379, i64 noundef %358) #12
  %381 = tail call fastcc ptr @PopQuantumPixel(ptr noundef nonnull %0, i64 noundef %380, ptr noundef %376) #12
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 1
  %383 = load i64, ptr %361, align 8, !tbaa !40
  %384 = getelementptr inbounds i8, ptr %381, i64 %383
  %385 = add nuw nsw i64 %365, 1
  %386 = icmp eq i64 %385, %1
  br i1 %386, label %387, label %362, !llvm.loop !200

387:                                              ; preds = %332, %295, %270, %233, %192, %150, %121, %103, %10, %362, %328, %263, %267, %184, %188, %115, %118, %40, %6, %357
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #4 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc nonnull ptr @PopCharPixel(i8 noundef zeroext %0, ptr noundef writeonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %0, ptr %1, align 1, !tbaa !110
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @SinglePrecisionToHalf(float noundef %0) unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 32768
  %5 = lshr i32 %2, 23
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -112
  %8 = and i32 %2, 8388607
  %9 = icmp ult i32 %6, 113
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = icmp ult i32 %6, 102
  br i1 %11, label %24, label %12

12:                                               ; preds = %10
  %13 = or disjoint i32 %8, 8388608
  %14 = sub nuw nsw i32 126, %6
  %15 = sub nuw nsw i32 125, %6
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = add nuw nsw i32 %13, %17
  %19 = lshr i32 %13, %14
  %20 = and i32 %19, 1
  %21 = add nuw nsw i32 %18, %20
  %22 = lshr i32 %21, %14
  %23 = or i32 %22, %4
  br label %24

24:                                               ; preds = %10, %12
  %25 = phi i32 [ %23, %12 ], [ %4, %10 ]
  %26 = trunc i32 %25 to i16
  br label %62

27:                                               ; preds = %1
  %28 = icmp eq i32 %7, 143
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = icmp eq i32 %8, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = trunc i32 %4 to i16
  %33 = or disjoint i16 %32, 31744
  br label %62

34:                                               ; preds = %29
  %35 = lshr i32 %8, 13
  %36 = icmp ult i32 %8, 8192
  %37 = zext i1 %36 to i32
  %38 = or i32 %35, %37
  %39 = or disjoint i32 %38, %4
  %40 = trunc i32 %39 to i16
  %41 = or disjoint i16 %40, 31744
  br label %62

42:                                               ; preds = %27
  %43 = lshr i32 %2, 13
  %44 = and i32 %43, 1
  %45 = add nuw nsw i32 %8, 4095
  %46 = add nuw nsw i32 %45, %44
  %47 = and i32 %46, 8388608
  %48 = icmp eq i32 %47, 0
  %49 = add nsw i32 %6, -111
  %50 = select i1 %48, i32 %7, i32 %49
  %51 = icmp ugt i32 %50, 30
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = trunc i32 %4 to i16
  %54 = or disjoint i16 %53, 31744
  br label %62

55:                                               ; preds = %42
  %56 = lshr i32 %46, 13
  %57 = shl nuw nsw i32 %50, 10
  %58 = select i1 %48, i32 %56, i32 0
  %59 = or i32 %58, %57
  %60 = or i32 %59, %4
  %61 = trunc i32 %60 to i16
  br label %62

62:                                               ; preds = %55, %52, %34, %31, %24
  %63 = phi i16 [ %26, %24 ], [ %33, %31 ], [ %41, %34 ], [ %54, %52 ], [ %61, %55 ]
  ret i16 %63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc nonnull ptr @PopShortPixel(i32 noundef %0, i16 noundef zeroext %1, ptr noundef writeonly %2) unnamed_addr #6 {
  %4 = icmp eq i32 %0, 1
  %5 = lshr i16 %1, 8
  %6 = select i1 %4, i16 %1, i16 %5
  %7 = select i1 %4, i16 %5, i16 %1
  %8 = trunc i16 %7 to i8
  %9 = trunc i16 %6 to i8
  store i8 %9, ptr %2, align 1
  %10 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %8, ptr %10, align 1
  %11 = getelementptr inbounds i8, ptr %2, i64 2
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @PopFloatPixel(ptr nocapture noundef readonly %0, float noundef %1, ptr noalias noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 4) #10
  %6 = fpext float %1 to double
  %7 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14
  %8 = load double, ptr %7, align 8, !tbaa !201
  %9 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 3
  %10 = load double, ptr %9, align 8, !tbaa !202
  %11 = call double @llvm.fmuladd.f64(double %6, double %8, double %10)
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = icmp eq i32 %14, 1
  %16 = bitcast float %12 to i32
  %17 = lshr i32 %16, 24
  %18 = trunc i32 %17 to i8
  %19 = lshr i32 %16, 16
  %20 = trunc i32 %19 to i8
  %21 = lshr i32 %16, 8
  %22 = trunc i32 %21 to i8
  %23 = trunc i32 %16 to i8
  br i1 %15, label %25, label %24

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %3, %24
  %26 = phi i8 [ %18, %24 ], [ %23, %3 ]
  %27 = phi i8 [ %20, %24 ], [ %22, %3 ]
  %28 = phi i8 [ %22, %24 ], [ %20, %3 ]
  %29 = phi i8 [ %23, %24 ], [ %18, %3 ]
  store i8 %26, ptr %2, align 1
  %30 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %27, ptr %30, align 1
  %31 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %28, ptr %31, align 1
  %32 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %29, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %2, i64 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret ptr %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %0) unnamed_addr #4 {
  %2 = zext i16 %0 to i32
  %3 = mul nuw i32 %2, 65537
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc nonnull ptr @PopLongPixel(i32 noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #6 {
  %4 = icmp eq i32 %0, 1
  %5 = lshr i32 %1, 16
  br i1 %4, label %6, label %9

6:                                                ; preds = %3
  %7 = lshr i32 %1, 8
  %8 = lshr i32 %1, 24
  br label %12

9:                                                ; preds = %3
  %10 = lshr i32 %1, 24
  %11 = lshr i32 %1, 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %1, %6 ], [ %10, %9 ]
  %14 = phi i32 [ %7, %6 ], [ %5, %9 ]
  %15 = phi i32 [ %5, %6 ], [ %11, %9 ]
  %16 = phi i32 [ %8, %6 ], [ %1, %9 ]
  %17 = trunc i32 %16 to i8
  %18 = trunc i32 %15 to i8
  %19 = trunc i32 %14 to i8
  %20 = trunc i32 %13 to i8
  store i8 %20, ptr %2, align 1
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %19, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %18, ptr %22, align 1
  %23 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %17, ptr %23, align 1
  %24 = getelementptr inbounds i8, ptr %2, i64 4
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @PopDoublePixel(ptr nocapture noundef readonly %0, double noundef %1, ptr noalias noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %5 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 8) #10
  %6 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14
  %7 = load double, ptr %6, align 8, !tbaa !201
  %8 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 3
  %9 = load double, ptr %8, align 8, !tbaa !202
  %10 = call double @llvm.fmuladd.f64(double %1, double %7, double %9)
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = icmp eq i32 %12, 1
  %14 = bitcast double %10 to i64
  %15 = lshr i64 %14, 56
  %16 = trunc i64 %15 to i8
  %17 = lshr i64 %14, 48
  %18 = trunc i64 %17 to i8
  %19 = lshr i64 %14, 40
  %20 = trunc i64 %19 to i8
  %21 = lshr i64 %14, 32
  %22 = trunc i64 %21 to i8
  %23 = lshr i64 %14, 24
  %24 = trunc i64 %23 to i8
  %25 = lshr i64 %14, 16
  %26 = trunc i64 %25 to i8
  %27 = lshr i64 %14, 8
  %28 = trunc i64 %27 to i8
  %29 = trunc i64 %14 to i8
  br i1 %13, label %31, label %30

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %3, %30
  %32 = phi i8 [ %16, %30 ], [ %29, %3 ]
  %33 = phi i8 [ %18, %30 ], [ %28, %3 ]
  %34 = phi i8 [ %20, %30 ], [ %26, %3 ]
  %35 = phi i8 [ %22, %30 ], [ %24, %3 ]
  %36 = phi i8 [ %24, %30 ], [ %22, %3 ]
  %37 = phi i8 [ %26, %30 ], [ %20, %3 ]
  %38 = phi i8 [ %28, %30 ], [ %18, %3 ]
  %39 = phi i8 [ %29, %30 ], [ %16, %3 ]
  store i8 %32, ptr %2, align 1
  %40 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %33, ptr %40, align 1
  %41 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %34, ptr %41, align 1
  %42 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %35, ptr %42, align 1
  %43 = getelementptr inbounds i8, ptr %2, i64 4
  store i8 %36, ptr %43, align 1
  %44 = getelementptr inbounds i8, ptr %2, i64 5
  store i8 %37, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %2, i64 6
  store i8 %38, ptr %45, align 1
  %46 = getelementptr inbounds i8, ptr %2, i64 7
  store i8 %39, ptr %46, align 1
  %47 = getelementptr inbounds i8, ptr %2, i64 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret ptr %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @GetQuantumRange(i64 noundef %0) unnamed_addr #4 {
  %2 = add i64 %0, -1
  %3 = shl i64 2, %2
  %4 = add i64 %3, -1
  ret i64 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @PopQuantumPixel(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !203
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i64 8, ptr %4, align 8, !tbaa !203
  br label %8

8:                                                ; preds = %7, %3
  %9 = phi i64 [ 8, %7 ], [ %5, %3 ]
  %10 = load i64, ptr %0, align 8, !tbaa !39
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %8, %37
  %13 = phi i64 [ %38, %37 ], [ %9, %8 ]
  %14 = phi i64 [ %18, %37 ], [ %10, %8 ]
  %15 = phi ptr [ %39, %37 ], [ %2, %8 ]
  %16 = tail call i64 @llvm.umin.i64(i64 %14, i64 %13)
  %17 = sub nsw i64 %14, %16
  %18 = tail call i64 @llvm.smax.i64(i64 %17, i64 0)
  %19 = icmp eq i64 %13, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  store i8 0, ptr %15, align 1, !tbaa !110
  %21 = load i64, ptr %4, align 8, !tbaa !203
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i64 [ %21, %20 ], [ %13, %12 ]
  %24 = sub i64 %23, %16
  store i64 %24, ptr %4, align 8, !tbaa !203
  %25 = lshr i64 %1, %18
  %26 = shl nsw i64 -1, %16
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  %29 = shl i64 %28, %24
  %30 = load i8, ptr %15, align 1, !tbaa !110
  %31 = trunc i64 %29 to i8
  %32 = or i8 %30, %31
  store i8 %32, ptr %15, align 1, !tbaa !110
  %33 = load i64, ptr %4, align 8, !tbaa !203
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = getelementptr inbounds i8, ptr %15, i64 1
  store i64 8, ptr %4, align 8, !tbaa !203
  br label %37

37:                                               ; preds = %35, %22
  %38 = phi i64 [ 8, %35 ], [ %33, %22 ]
  %39 = phi ptr [ %36, %35 ], [ %15, %22 ]
  %40 = icmp slt i64 %17, 1
  br i1 %40, label %41, label %12, !llvm.loop !204

41:                                               ; preds = %37, %8
  %42 = phi ptr [ %2, %8 ], [ %39, %37 ]
  ret ptr %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %0, i64 noundef %1) unnamed_addr #4 {
  %3 = uitofp i64 %1 to float
  %4 = uitofp i16 %0 to float
  %5 = fmul float %4, %3
  %6 = fdiv float %5, 6.553500e+04
  %7 = fpext float %6 to double
  %8 = fadd double %7, 5.000000e-01
  %9 = fptoui double %8 to i64
  ret i64 %9
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @PopQuantumLongPixel(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !203
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i64 32, ptr %4, align 8, !tbaa !203
  br label %8

8:                                                ; preds = %7, %3
  %9 = phi i64 [ 32, %7 ], [ %5, %3 ]
  %10 = load i64, ptr %0, align 8, !tbaa !39
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 3
  %14 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 1
  %15 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %14, align 8, !tbaa !205
  br label %17

17:                                               ; preds = %12, %41
  %18 = phi i32 [ %16, %12 ], [ %42, %41 ]
  %19 = phi i64 [ %9, %12 ], [ %43, %41 ]
  %20 = phi i64 [ %10, %12 ], [ %35, %41 ]
  %21 = phi ptr [ %2, %12 ], [ %44, %41 ]
  %22 = tail call i64 @llvm.umin.i64(i64 %20, i64 %19)
  %23 = load i64, ptr %0, align 8, !tbaa !39
  %24 = sub i64 %23, %20
  %25 = lshr i64 %1, %24
  %26 = load ptr, ptr %13, align 8, !tbaa !206
  %27 = getelementptr inbounds i32, ptr %26, i64 %22
  %28 = load i32, ptr %27, align 4, !tbaa !207
  %29 = zext i32 %28 to i64
  %30 = and i64 %25, %29
  %31 = sub i64 32, %19
  %32 = shl i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = or i32 %18, %33
  store i32 %34, ptr %14, align 8, !tbaa !205
  %35 = sub nsw i64 %20, %22
  %36 = sub i64 %19, %22
  store i64 %36, ptr %4, align 8, !tbaa !203
  %37 = icmp ugt i64 %19, %20
  br i1 %37, label %41, label %38

38:                                               ; preds = %17
  %39 = load i32, ptr %15, align 8, !tbaa !43
  %40 = tail call fastcc ptr @PopLongPixel(i32 noundef %39, i32 noundef %34, ptr noundef %21) #12
  store i32 0, ptr %14, align 8, !tbaa !205
  store i64 32, ptr %4, align 8, !tbaa !203
  br label %41

41:                                               ; preds = %38, %17
  %42 = phi i32 [ 0, %38 ], [ %34, %17 ]
  %43 = phi i64 [ 32, %38 ], [ %36, %17 ]
  %44 = phi ptr [ %40, %38 ], [ %21, %17 ]
  %45 = icmp sgt i64 %35, 0
  br i1 %45, label %17, label %46, !llvm.loop !208

46:                                               ; preds = %41, %8
  %47 = phi ptr [ %2, %8 ], [ %44, %41 ]
  ret ptr %47
}

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @GetPixelLuma(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !76
  %5 = icmp eq i32 %4, 2
  %6 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !29
  %8 = uitofp i16 %7 to float
  br i1 %5, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !30
  %12 = uitofp i16 %11 to float
  %13 = fmul float %12, 0x3FE6E29300000000
  %14 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FCB384FE0000000, float %13)
  %15 = load i16, ptr %1, align 2, !tbaa !31
  %16 = uitofp i16 %15 to float
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 0x3FB27AC820000000, float %14)
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi float [ %17, %9 ], [ %8, %2 ]
  ret float %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { hot nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12976}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = !{!25, !7, i64 64}
!25 = !{!"_QuantumInfo", !10, i64 0, !10, i64 8, !7, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !10, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !10, i64 72, !11, i64 80, !10, i64 88, !7, i64 96, !26, i64 104, !11, i64 136, !10, i64 144}
!26 = !{!"_QuantumState", !14, i64 0, !7, i64 8, !10, i64 16, !11, i64 24}
!27 = !{!6, !10, i64 40}
!28 = !{!12, !13, i64 6}
!29 = !{!12, !13, i64 4}
!30 = !{!12, !13, i64 2}
!31 = !{!12, !13, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{!13, !13, i64 0}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = !{!25, !10, i64 0}
!40 = !{!25, !10, i64 48}
!41 = distinct !{!41, !33}
!42 = !{!25, !7, i64 16}
!43 = !{!25, !7, i64 96}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = !{!25, !7, i64 60}
!52 = distinct !{!52, !33}
!53 = !{!25, !10, i64 8}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = distinct !{!56, !33}
!57 = distinct !{!57, !33}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !33}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !33}
!76 = !{!6, !7, i64 4}
!77 = distinct !{!77, !33}
!78 = distinct !{!78, !33}
!79 = distinct !{!79, !33}
!80 = distinct !{!80, !33}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = distinct !{!95, !33}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = distinct !{!98, !33}
!99 = distinct !{!99, !33}
!100 = distinct !{!100, !33}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, !33}
!103 = distinct !{!103, !33}
!104 = distinct !{!104, !33}
!105 = distinct !{!105, !33}
!106 = distinct !{!106, !33}
!107 = distinct !{!107, !33}
!108 = distinct !{!108, !33}
!109 = !{!25, !7, i64 56}
!110 = !{!8, !8, i64 0}
!111 = distinct !{!111, !33}
!112 = distinct !{!112, !33}
!113 = distinct !{!113, !33}
!114 = distinct !{!114, !33}
!115 = distinct !{!115, !33}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !33}
!130 = distinct !{!130, !33}
!131 = distinct !{!131, !33}
!132 = distinct !{!132, !33}
!133 = distinct !{!133, !33}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = distinct !{!138, !33}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !33}
!142 = !{!6, !7, i64 0}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = distinct !{!158, !33}
!159 = distinct !{!159, !33}
!160 = distinct !{!160, !33}
!161 = distinct !{!161, !33}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !33}
!164 = distinct !{!164, !33}
!165 = distinct !{!165, !33}
!166 = distinct !{!166, !33}
!167 = distinct !{!167, !33}
!168 = distinct !{!168, !33}
!169 = distinct !{!169, !33}
!170 = distinct !{!170, !33}
!171 = distinct !{!171, !33}
!172 = distinct !{!172, !33}
!173 = distinct !{!173, !33}
!174 = distinct !{!174, !33}
!175 = distinct !{!175, !33}
!176 = distinct !{!176, !33}
!177 = distinct !{!177, !33}
!178 = distinct !{!178, !33}
!179 = distinct !{!179, !33}
!180 = distinct !{!180, !33}
!181 = distinct !{!181, !33}
!182 = distinct !{!182, !33}
!183 = distinct !{!183, !33}
!184 = distinct !{!184, !33}
!185 = distinct !{!185, !33}
!186 = distinct !{!186, !33}
!187 = distinct !{!187, !33}
!188 = distinct !{!188, !33}
!189 = distinct !{!189, !33}
!190 = distinct !{!190, !33}
!191 = distinct !{!191, !33}
!192 = distinct !{!192, !33}
!193 = distinct !{!193, !33}
!194 = distinct !{!194, !33}
!195 = distinct !{!195, !33}
!196 = distinct !{!196, !33}
!197 = distinct !{!197, !33}
!198 = distinct !{!198, !33}
!199 = distinct !{!199, !33}
!200 = distinct !{!200, !33}
!201 = !{!25, !14, i64 104}
!202 = !{!25, !14, i64 24}
!203 = !{!25, !10, i64 120}
!204 = distinct !{!204, !33}
!205 = !{!25, !7, i64 112}
!206 = !{!25, !11, i64 128}
!207 = !{!7, !7, i64 0}
!208 = distinct !{!208, !33}
