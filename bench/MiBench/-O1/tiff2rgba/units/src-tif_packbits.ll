; ModuleID = 'src/tif_packbits.c'
source_filename = "src/tif_packbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [49 x i8] c"PackBitsDecode: Not enough data for scanline %ld\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rowsize > 0\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"src/tif_packbits.c\00", align 1
@__PRETTY_FUNCTION__.PackBitsEncodeChunk = private unnamed_addr constant [62 x i8] c"int PackBitsEncodeChunk(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @TIFFInitPackBits(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @PackBitsDecode, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @PackBitsDecode, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @PackBitsDecode, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 24
  store ptr @PackBitsPreEncode, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  store ptr @PackBitsEncode, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  store ptr @PackBitsEncodeChunk, ptr %8, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  store ptr @PackBitsEncodeChunk, ptr %9, align 8, !tbaa !21
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PackBitsDecode(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %8 = load i32, ptr %7, align 8, !tbaa !23
  br label %9

9:                                                ; preds = %48, %4
  %10 = phi i32 [ %54, %48 ], [ %2, %4 ]
  %11 = phi ptr [ %50, %48 ], [ %1, %4 ]
  %12 = phi ptr [ %51, %48 ], [ %6, %4 ]
  %13 = phi i32 [ %52, %48 ], [ %8, %4 ]
  %14 = icmp sgt i32 %10, 0
  br label %15

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %21, %25 ], [ %12, %9 ]
  %17 = phi i32 [ %23, %25 ], [ %13, %9 ]
  %18 = icmp sgt i32 %17, 0
  %19 = select i1 %18, i1 %14, i1 false
  br i1 %19, label %20, label %55

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  %22 = load i8, ptr %16, align 1, !tbaa !24
  %23 = add nsw i32 %17, -1
  %24 = icmp slt i8 %22, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = icmp eq i8 %22, -128
  br i1 %26, label %15, label %27, !llvm.loop !25

27:                                               ; preds = %25
  %28 = sext i8 %22 to i64
  %29 = sub nsw i64 1, %28
  %30 = getelementptr inbounds i8, ptr %16, i64 2
  %31 = add nsw i32 %17, -2
  %32 = load i8, ptr %21, align 1, !tbaa !24
  %33 = tail call i64 @llvm.smin.i64(i64 %29, i64 1)
  %34 = add nsw i64 %33, %28
  %35 = sub nsw i64 2, %34
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 %32, i64 %35, i1 false), !tbaa !24
  %36 = tail call i64 @llvm.smin.i64(i64 %29, i64 1)
  %37 = add nsw i64 %36, %28
  %38 = sub nsw i64 0, %37
  %39 = getelementptr i8, ptr %11, i64 2
  %40 = getelementptr i8, ptr %39, i64 %38
  br label %48

41:                                               ; preds = %20
  %42 = add nuw i8 %22, 1
  %43 = zext i8 %42 to i64
  %44 = zext i8 %42 to i32
  tail call void @_TIFFmemcpy(ptr noundef %11, ptr noundef nonnull %21, i32 noundef %44) #6
  %45 = getelementptr inbounds i8, ptr %11, i64 %43
  %46 = getelementptr inbounds i8, ptr %21, i64 %43
  %47 = sub i32 %23, %44
  br label %48

48:                                               ; preds = %27, %41
  %49 = phi i64 [ %43, %41 ], [ %29, %27 ]
  %50 = phi ptr [ %45, %41 ], [ %40, %27 ]
  %51 = phi ptr [ %46, %41 ], [ %30, %27 ]
  %52 = phi i32 [ %47, %41 ], [ %31, %27 ]
  %53 = trunc i64 %49 to i32
  %54 = sub i32 %10, %53
  br label %9, !llvm.loop !25

55:                                               ; preds = %15
  store ptr %16, ptr %5, align 8, !tbaa !22
  store i32 %17, ptr %7, align 8, !tbaa !23
  br i1 %14, label %56, label %61

56:                                               ; preds = %55
  %57 = load ptr, ptr %0, align 8, !tbaa !27
  %58 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %59 = load i32, ptr %58, align 8, !tbaa !28
  %60 = zext i32 %59 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %57, ptr noundef nonnull @.str, i64 noundef %60) #6
  br label %61

61:                                               ; preds = %55, %56
  %62 = phi i32 [ 0, %56 ], [ 1, %55 ]
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PackBitsPreEncode(ptr noundef %0, i16 zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !29
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @TIFFTileRowSize(ptr noundef %0) #6
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @TIFFScanlineSize(ptr noundef %0) #6
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %10, %9 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %14 = sext i32 %12 to i64
  %15 = inttoptr i64 %14 to ptr
  store ptr %15, ptr %13, align 8, !tbaa !30
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PackBitsEncode(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i16 zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %10 = load i32, ptr %9, align 8, !tbaa !32
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %14, label %168

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  br label %17

17:                                               ; preds = %14, %161
  %18 = phi i32 [ 0, %14 ], [ %165, %161 ]
  %19 = phi ptr [ null, %14 ], [ %164, %161 ]
  %20 = phi i32 [ %2, %14 ], [ %48, %161 ]
  %21 = phi ptr [ %6, %14 ], [ %166, %161 ]
  %22 = phi ptr [ %1, %14 ], [ %47, %161 ]
  %23 = load i8, ptr %22, align 1, !tbaa !24
  %24 = getelementptr inbounds i8, ptr %22, i64 1
  %25 = add nsw i32 %20, -1
  %26 = icmp sgt i32 %20, 1
  br i1 %26, label %27, label %45

27:                                               ; preds = %17
  %28 = add nsw i32 %20, -2
  %29 = zext i32 %28 to i64
  %30 = add nuw nsw i64 %29, 2
  %31 = getelementptr i8, ptr %22, i64 2
  %32 = getelementptr i8, ptr %31, i64 %29
  %33 = zext nneg i32 %20 to i64
  br label %34

34:                                               ; preds = %27, %40
  %35 = phi i32 [ %43, %40 ], [ %25, %27 ]
  %36 = phi ptr [ %42, %40 ], [ %24, %27 ]
  %37 = phi i64 [ %41, %40 ], [ 1, %27 ]
  %38 = load i8, ptr %36, align 1, !tbaa !24
  %39 = icmp eq i8 %23, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = add nuw nsw i64 %37, 1
  %42 = getelementptr inbounds i8, ptr %36, i64 1
  %43 = add nsw i32 %35, -1
  %44 = icmp eq i64 %41, %33
  br i1 %44, label %45, label %34, !llvm.loop !33

45:                                               ; preds = %34, %40, %17
  %46 = phi i64 [ 1, %17 ], [ %37, %34 ], [ %30, %40 ]
  %47 = phi ptr [ %24, %17 ], [ %36, %34 ], [ %32, %40 ]
  %48 = phi i32 [ %25, %17 ], [ %35, %34 ], [ 0, %40 ]
  br label %49

49:                                               ; preds = %133, %45
  %50 = phi ptr [ %21, %45 ], [ %137, %133 ]
  %51 = phi ptr [ %19, %45 ], [ %105, %133 ]
  %52 = phi i64 [ %46, %45 ], [ %136, %133 ]
  %53 = phi i32 [ %18, %45 ], [ %134, %133 ]
  %54 = icmp eq i64 %52, 1
  br label %55

55:                                               ; preds = %145, %49
  %56 = phi ptr [ %50, %49 ], [ %104, %145 ]
  %57 = phi ptr [ %51, %49 ], [ %105, %145 ]
  %58 = phi i32 [ %53, %49 ], [ %146, %145 ]
  %59 = getelementptr inbounds i8, ptr %56, i64 2
  %60 = icmp ult ptr %59, %12
  br i1 %60, label %103, label %61

61:                                               ; preds = %55
  %62 = and i32 %58, -3
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = ptrtoint ptr %57 to i64
  %66 = load ptr, ptr %5, align 8, !tbaa !22
  %67 = ptrtoint ptr %66 to i64
  %68 = sub i64 %65, %67
  %69 = load i32, ptr %16, align 8, !tbaa !23
  %70 = trunc i64 %68 to i32
  %71 = add i32 %69, %70
  store i32 %71, ptr %16, align 8, !tbaa !23
  %72 = tail call i32 @TIFFFlushData1(ptr noundef %0) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %178, label %74

74:                                               ; preds = %64
  %75 = ptrtoint ptr %56 to i64
  %76 = sub i64 %75, %65
  %77 = load ptr, ptr %5, align 8, !tbaa !22
  %78 = icmp sgt i64 %76, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74, %79
  %80 = phi i64 [ %83, %79 ], [ %76, %74 ]
  %81 = phi ptr [ %84, %79 ], [ %57, %74 ]
  %82 = phi ptr [ %86, %79 ], [ %77, %74 ]
  %83 = add nsw i64 %80, -1
  %84 = getelementptr inbounds i8, ptr %81, i64 1
  %85 = load i8, ptr %81, align 1, !tbaa !24
  %86 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 %85, ptr %82, align 1, !tbaa !24
  %87 = icmp sgt i64 %80, 1
  br i1 %87, label %79, label %88, !llvm.loop !34

88:                                               ; preds = %79, %74
  %89 = phi ptr [ %77, %74 ], [ %86, %79 ]
  %90 = load ptr, ptr %5, align 8, !tbaa !22
  br label %103

91:                                               ; preds = %61
  %92 = load ptr, ptr %5, align 8, !tbaa !22
  %93 = ptrtoint ptr %56 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = load i32, ptr %15, align 8, !tbaa !23
  %97 = trunc i64 %95 to i32
  %98 = add i32 %96, %97
  store i32 %98, ptr %15, align 8, !tbaa !23
  %99 = tail call i32 @TIFFFlushData1(ptr noundef %0) #6
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %178, label %101

101:                                              ; preds = %91
  %102 = load ptr, ptr %5, align 8, !tbaa !22
  br label %103

103:                                              ; preds = %88, %101, %55
  %104 = phi ptr [ %89, %88 ], [ %102, %101 ], [ %56, %55 ]
  %105 = phi ptr [ %90, %88 ], [ %57, %101 ], [ %57, %55 ]
  switch i32 %58, label %160 [
    i32 0, label %106
    i32 1, label %116
    i32 2, label %129
    i32 3, label %144
  ]

106:                                              ; preds = %103
  %107 = icmp sgt i64 %52, 1
  br i1 %107, label %108, label %114

108:                                              ; preds = %106
  %109 = icmp sgt i64 %52, 128
  br i1 %109, label %133, label %110

110:                                              ; preds = %108
  %111 = trunc i64 %52 to i8
  %112 = sub i8 1, %111
  %113 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 %112, ptr %104, align 1, !tbaa !24
  br label %161

114:                                              ; preds = %106
  %115 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 0, ptr %104, align 1, !tbaa !24
  br label %161

116:                                              ; preds = %103
  %117 = icmp sgt i64 %52, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %116
  %119 = icmp sgt i64 %52, 128
  br i1 %119, label %133, label %120

120:                                              ; preds = %118
  %121 = trunc i64 %52 to i8
  %122 = sub i8 1, %121
  %123 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 %122, ptr %104, align 1, !tbaa !24
  br label %161

124:                                              ; preds = %116
  %125 = load i8, ptr %105, align 1, !tbaa !24
  %126 = add i8 %125, 1
  store i8 %126, ptr %105, align 1, !tbaa !24
  %127 = icmp ne i8 %126, 127
  %128 = zext i1 %127 to i32
  br label %161

129:                                              ; preds = %103
  %130 = icmp sgt i64 %52, 1
  br i1 %130, label %131, label %142

131:                                              ; preds = %129
  %132 = icmp sgt i64 %52, 128
  br i1 %132, label %133, label %138

133:                                              ; preds = %131, %118, %108
  %134 = phi i32 [ 2, %108 ], [ 3, %118 ], [ 2, %131 ]
  %135 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 -127, ptr %104, align 1, !tbaa !24
  store i8 %23, ptr %135, align 1, !tbaa !24
  %136 = add nsw i64 %52, -128
  %137 = getelementptr inbounds i8, ptr %104, i64 2
  br label %49

138:                                              ; preds = %131
  %139 = trunc i64 %52 to i8
  %140 = sub i8 1, %139
  %141 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 %140, ptr %104, align 1, !tbaa !24
  br label %161

142:                                              ; preds = %129
  %143 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 0, ptr %104, align 1, !tbaa !24
  br label %161

144:                                              ; preds = %103
  br i1 %54, label %147, label %145

145:                                              ; preds = %144, %147, %151, %154
  %146 = phi i32 [ 2, %144 ], [ 2, %147 ], [ 2, %151 ], [ %157, %154 ]
  br label %55

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %104, i64 -2
  %149 = load i8, ptr %148, align 1, !tbaa !24
  %150 = icmp eq i8 %149, -1
  br i1 %150, label %151, label %145

151:                                              ; preds = %147
  %152 = load i8, ptr %105, align 1, !tbaa !24
  %153 = icmp ult i8 %152, 126
  br i1 %153, label %154, label %145

154:                                              ; preds = %151
  %155 = add nuw i8 %152, 2
  store i8 %155, ptr %105, align 1, !tbaa !24
  %156 = icmp ne i8 %155, 127
  %157 = zext i1 %156 to i32
  %158 = getelementptr inbounds i8, ptr %104, i64 -1
  %159 = load i8, ptr %158, align 1, !tbaa !24
  store i8 %159, ptr %148, align 1, !tbaa !24
  br label %145

160:                                              ; preds = %103
  unreachable

161:                                              ; preds = %138, %142, %120, %124, %110, %114
  %162 = phi i64 [ 2, %138 ], [ 2, %142 ], [ 2, %120 ], [ 1, %124 ], [ 2, %110 ], [ 2, %114 ]
  %163 = phi ptr [ %141, %138 ], [ %143, %142 ], [ %123, %120 ], [ %104, %124 ], [ %113, %110 ], [ %115, %114 ]
  %164 = phi ptr [ %105, %138 ], [ %104, %142 ], [ %105, %120 ], [ %105, %124 ], [ %105, %110 ], [ %104, %114 ]
  %165 = phi i32 [ 2, %138 ], [ 1, %142 ], [ 3, %120 ], [ %128, %124 ], [ 2, %110 ], [ 1, %114 ]
  %166 = getelementptr inbounds i8, ptr %104, i64 %162
  store i8 %23, ptr %163, align 1, !tbaa !24
  %167 = icmp sgt i32 %48, 0
  br i1 %167, label %17, label %168, !llvm.loop !35

168:                                              ; preds = %161, %4
  %169 = phi ptr [ %6, %4 ], [ %166, %161 ]
  %170 = load ptr, ptr %5, align 8, !tbaa !22
  %171 = ptrtoint ptr %169 to i64
  %172 = ptrtoint ptr %170 to i64
  %173 = sub i64 %171, %172
  %174 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %175 = load i32, ptr %174, align 8, !tbaa !23
  %176 = trunc i64 %173 to i32
  %177 = add i32 %175, %176
  store i32 %177, ptr %174, align 8, !tbaa !23
  store ptr %169, ptr %5, align 8, !tbaa !22
  br label %178

178:                                              ; preds = %91, %64, %168
  %179 = phi i32 [ 1, %168 ], [ -1, %64 ], [ -1, %91 ]
  ret i32 %179
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PackBitsEncodeChunk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i16 zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = ptrtoint ptr %6 to i64
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = and i64 %7, 4294967295
  br label %15

14:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 193, ptr noundef nonnull @__PRETTY_FUNCTION__.PackBitsEncodeChunk) #7
  unreachable

15:                                               ; preds = %12, %20
  %16 = phi ptr [ %1, %12 ], [ %21, %20 ]
  %17 = phi i32 [ %2, %12 ], [ %22, %20 ]
  %18 = tail call i32 @PackBitsEncode(ptr noundef %0, ptr noundef %16, i32 noundef %8, i16 zeroext poison), !range !36
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %16, i64 %13
  %22 = sub nsw i32 %17, %8
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %15, label %24, !llvm.loop !37

24:                                               ; preds = %15, %20, %10
  %25 = phi i32 [ 1, %10 ], [ -1, %15 ], [ 1, %20 ]
  ret i32 %25
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 616}
!6 = !{!"tiff", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !15, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !10, i64 536, !12, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !12, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !10, i64 712, !10, i64 716, !7, i64 720, !10, i64 728, !7, i64 736, !10, i64 744, !7, i64 752, !10, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !10, i64 848, !7, i64 856, !7, i64 864, !7, i64 872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !8, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !10, i64 68, !12, i64 72, !12, i64 74, !13, i64 80, !13, i64 88, !14, i64 96, !14, i64 100, !12, i64 104, !12, i64 106, !14, i64 108, !14, i64 112, !8, i64 116, !8, i64 120, !8, i64 144, !12, i64 148, !7, i64 152, !13, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !7, i64 256, !12, i64 264, !7, i64 272, !7, i64 280, !8, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !7, i64 312, !8, i64 320, !12, i64 344, !12, i64 346, !8, i64 348, !10, i64 352, !7, i64 360, !7, i64 368, !10, i64 376, !7, i64 384, !10, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !7, i64 432, !7, i64 440, !14, i64 448, !7, i64 456, !7, i64 464}
!12 = !{!"short", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4}
!16 = !{!6, !7, i64 632}
!17 = !{!6, !7, i64 648}
!18 = !{!6, !7, i64 600}
!19 = !{!6, !7, i64 624}
!20 = !{!6, !7, i64 640}
!21 = !{!6, !7, i64 656}
!22 = !{!6, !7, i64 736}
!23 = !{!6, !10, i64 744}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!6, !7, i64 0}
!28 = !{!6, !10, i64 536}
!29 = !{!6, !10, i64 16}
!30 = !{!6, !7, i64 704}
!31 = !{!6, !7, i64 720}
!32 = !{!6, !10, i64 728}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = distinct !{!35, !26}
!36 = !{i32 -1, i32 2}
!37 = distinct !{!37, !26}
