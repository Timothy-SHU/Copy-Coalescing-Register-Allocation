; ModuleID = 'blender/source/blender/imbuf/intern/bmp.c'
source_filename = "blender/source/blender/imbuf/intern/bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @imb_is_a_bmp(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !34
  switch i8 %4, label %36 [
    i8 66, label %5
    i8 67, label %9
    i8 73, label %13
    i8 80, label %19
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !34
  switch i8 %7, label %8 [
    i8 77, label %23
    i8 65, label %23
  ]

8:                                                ; preds = %5
  switch i8 %4, label %36 [
    i8 67, label %9
    i8 73, label %13
    i8 80, label %19
  ]

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !34
  switch i8 %11, label %12 [
    i8 73, label %23
    i8 80, label %23
  ]

12:                                               ; preds = %9
  switch i8 %4, label %36 [
    i8 73, label %13
    i8 80, label %19
  ]

13:                                               ; preds = %3, %8, %12
  %14 = getelementptr inbounds i8, ptr %0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = icmp eq i8 %15, 67
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = icmp eq i8 %4, 80
  br i1 %18, label %19, label %36

19:                                               ; preds = %3, %8, %17, %12
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = icmp eq i8 %21, 84
  br i1 %22, label %23, label %36

23:                                               ; preds = %9, %9, %5, %5, %19, %13
  %24 = getelementptr inbounds i8, ptr %0, i64 14
  %25 = load i32, ptr %24, align 1
  %26 = getelementptr inbounds i8, ptr %0, i64 30
  %27 = load i32, ptr %26, align 1
  %28 = icmp ugt i32 %25, 39
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds i8, ptr %0, i64 28
  %33 = load i16, ptr %32, align 1
  %34 = icmp ugt i16 %33, 7
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %3, %8, %1, %12, %17, %19, %23, %31
  %37 = phi i32 [ 0, %19 ], [ 0, %17 ], [ 0, %23 ], [ 0, %1 ], [ %35, %31 ], [ 0, %12 ], [ 0, %8 ], [ 0, %3 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local ptr @imb_bmp_decode(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %205, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !tbaa !34
  switch i8 %7, label %205 [
    i8 66, label %8
    i8 67, label %12
    i8 73, label %16
    i8 80, label %22
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !34
  switch i8 %10, label %11 [
    i8 77, label %26
    i8 65, label %26
  ]

11:                                               ; preds = %8
  switch i8 %7, label %205 [
    i8 67, label %12
    i8 73, label %16
    i8 80, label %22
  ]

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !34
  switch i8 %14, label %15 [
    i8 73, label %26
    i8 80, label %26
  ]

15:                                               ; preds = %12
  switch i8 %7, label %205 [
    i8 73, label %16
    i8 80, label %22
  ]

16:                                               ; preds = %6, %11, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = icmp eq i8 %18, 67
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = icmp eq i8 %7, 80
  br i1 %21, label %22, label %205

22:                                               ; preds = %6, %11, %20, %15
  %23 = getelementptr inbounds i8, ptr %0, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = icmp eq i8 %24, 84
  br i1 %25, label %26, label %205

26:                                               ; preds = %12, %12, %8, %8, %22, %16
  %27 = getelementptr inbounds i8, ptr %0, i64 14
  %28 = load i32, ptr %27, align 1
  %29 = getelementptr inbounds i8, ptr %0, i64 30
  %30 = load i32, ptr %29, align 1
  %31 = icmp ugt i32 %28, 39
  %32 = icmp eq i32 %30, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %205

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, ptr %0, i64 28
  %36 = load i16, ptr %35, align 1
  %37 = icmp ult i16 %36, 8
  br i1 %37, label %205, label %38

38:                                               ; preds = %34
  tail call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #5
  %39 = load i8, ptr %0, align 1, !tbaa !34
  %40 = icmp eq i8 %39, 66
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = icmp eq i8 %43, 77
  %45 = select i1 %44, i64 14, i64 0
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi ptr [ %0, %38 ], [ %46, %41 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 4
  %50 = load i32, ptr %49, align 1
  %51 = getelementptr inbounds i8, ptr %48, i64 8
  %52 = load i32, ptr %51, align 1
  %53 = getelementptr inbounds i8, ptr %48, i64 14
  %54 = load i16, ptr %53, align 1
  %55 = getelementptr inbounds i8, ptr %48, i64 24
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds i8, ptr %48, i64 28
  %58 = load i32, ptr %57, align 1
  %59 = getelementptr inbounds i8, ptr %48, i64 32
  %60 = load i32, ptr %59, align 1
  %61 = uitofp i32 %56 to double
  %62 = uitofp i32 %58 to double
  %63 = icmp ult i16 %54, 9
  %64 = trunc i16 %54 to i8
  %65 = select i1 %63, i8 24, i8 %64
  %66 = and i32 %2, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %47
  %69 = tail call ptr @IMB_allocImBuf(i32 noundef %50, i32 noundef %52, i8 noundef zeroext %65, i32 noundef 0) #5
  br label %198

70:                                               ; preds = %47
  %71 = load i32, ptr %48, align 1
  %72 = tail call ptr @IMB_allocImBuf(i32 noundef %50, i32 noundef %52, i8 noundef zeroext %65, i32 noundef 1) #5
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, ptr %48, i64 %73
  %75 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !37
  %77 = add i16 %54, -8
  %78 = tail call i16 @llvm.fshl.i16(i16 %77, i16 %77, i16 13)
  switch i16 %78, label %198 [
    i16 0, label %79
    i16 1, label %118
    i16 2, label %145
    i16 3, label %177
  ]

79:                                               ; preds = %70
  %80 = icmp sgt i32 %52, 0
  br i1 %80, label %81, label %198

81:                                               ; preds = %79
  %82 = shl i32 %60, 2
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %74, i64 %83
  %85 = sub i32 0, %50
  %86 = and i32 %85, 3
  %87 = icmp sgt i32 %50, 0
  %88 = zext nneg i32 %86 to i64
  br label %89

89:                                               ; preds = %81, %112
  %90 = phi i32 [ %52, %81 ], [ %116, %112 ]
  %91 = phi ptr [ %84, %81 ], [ %115, %112 ]
  %92 = phi ptr [ %76, %81 ], [ %113, %112 ]
  br i1 %87, label %93, label %112

93:                                               ; preds = %89, %93
  %94 = phi i32 [ %110, %93 ], [ %50, %89 ]
  %95 = phi ptr [ %109, %93 ], [ %91, %89 ]
  %96 = phi ptr [ %108, %93 ], [ %92, %89 ]
  %97 = load i8, ptr %95, align 1, !tbaa !34
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds [4 x i8], ptr %74, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !34
  store i8 %100, ptr %96, align 1, !tbaa !34
  %101 = getelementptr inbounds i8, ptr %99, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !34
  %103 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 %102, ptr %103, align 1, !tbaa !34
  %104 = getelementptr inbounds i8, ptr %99, i64 2
  %105 = load i8, ptr %104, align 1, !tbaa !34
  %106 = getelementptr inbounds i8, ptr %96, i64 2
  store i8 %105, ptr %106, align 1, !tbaa !34
  %107 = getelementptr inbounds i8, ptr %96, i64 3
  store i8 -1, ptr %107, align 1, !tbaa !34
  %108 = getelementptr inbounds i8, ptr %96, i64 4
  %109 = getelementptr inbounds i8, ptr %95, i64 1
  %110 = add nsw i32 %94, -1
  %111 = icmp sgt i32 %94, 1
  br i1 %111, label %93, label %112, !llvm.loop !44

112:                                              ; preds = %93, %89
  %113 = phi ptr [ %92, %89 ], [ %108, %93 ]
  %114 = phi ptr [ %91, %89 ], [ %109, %93 ]
  %115 = getelementptr inbounds i8, ptr %114, i64 %88
  %116 = add nsw i32 %90, -1
  %117 = icmp sgt i32 %90, 1
  br i1 %117, label %89, label %198, !llvm.loop !47

118:                                              ; preds = %70
  %119 = mul nsw i32 %52, %50
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %198

121:                                              ; preds = %118, %121
  %122 = phi i32 [ %143, %121 ], [ %119, %118 ]
  %123 = phi ptr [ %142, %121 ], [ %74, %118 ]
  %124 = phi ptr [ %141, %121 ], [ %76, %118 ]
  %125 = load i8, ptr %123, align 1, !tbaa !34
  %126 = zext i8 %125 to i16
  %127 = getelementptr inbounds i8, ptr %123, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !34
  %129 = zext i8 %128 to i16
  %130 = shl nuw i16 %129, 8
  %131 = or disjoint i16 %130, %126
  %132 = shl i8 %128, 1
  %133 = and i8 %132, -8
  store i8 %133, ptr %124, align 1, !tbaa !34
  %134 = lshr i16 %131, 2
  %135 = trunc i16 %134 to i8
  %136 = and i8 %135, -8
  %137 = getelementptr inbounds i8, ptr %124, i64 1
  store i8 %136, ptr %137, align 1, !tbaa !34
  %138 = shl i8 %125, 3
  %139 = getelementptr inbounds i8, ptr %124, i64 2
  store i8 %138, ptr %139, align 1, !tbaa !34
  %140 = getelementptr inbounds i8, ptr %124, i64 3
  store i8 -1, ptr %140, align 1, !tbaa !34
  %141 = getelementptr inbounds i8, ptr %124, i64 4
  %142 = getelementptr inbounds i8, ptr %123, i64 2
  %143 = add nsw i32 %122, -1
  %144 = icmp sgt i32 %122, 1
  br i1 %144, label %121, label %198, !llvm.loop !48

145:                                              ; preds = %70
  %146 = icmp sgt i32 %52, 0
  br i1 %146, label %147, label %198

147:                                              ; preds = %145
  %148 = srem i32 %50, 4
  %149 = icmp sgt i32 %50, 0
  %150 = sext i32 %148 to i64
  br label %151

151:                                              ; preds = %147, %171
  %152 = phi i32 [ %52, %147 ], [ %175, %171 ]
  %153 = phi ptr [ %74, %147 ], [ %174, %171 ]
  %154 = phi ptr [ %76, %147 ], [ %172, %171 ]
  br i1 %149, label %155, label %171

155:                                              ; preds = %151, %155
  %156 = phi i32 [ %169, %155 ], [ %50, %151 ]
  %157 = phi ptr [ %168, %155 ], [ %153, %151 ]
  %158 = phi ptr [ %167, %155 ], [ %154, %151 ]
  %159 = getelementptr inbounds i8, ptr %157, i64 2
  %160 = load i8, ptr %159, align 1, !tbaa !34
  store i8 %160, ptr %158, align 1, !tbaa !34
  %161 = getelementptr inbounds i8, ptr %157, i64 1
  %162 = load i8, ptr %161, align 1, !tbaa !34
  %163 = getelementptr inbounds i8, ptr %158, i64 1
  store i8 %162, ptr %163, align 1, !tbaa !34
  %164 = load i8, ptr %157, align 1, !tbaa !34
  %165 = getelementptr inbounds i8, ptr %158, i64 2
  store i8 %164, ptr %165, align 1, !tbaa !34
  %166 = getelementptr inbounds i8, ptr %158, i64 3
  store i8 -1, ptr %166, align 1, !tbaa !34
  %167 = getelementptr inbounds i8, ptr %158, i64 4
  %168 = getelementptr inbounds i8, ptr %157, i64 3
  %169 = add nsw i32 %156, -1
  %170 = icmp sgt i32 %156, 1
  br i1 %170, label %155, label %171, !llvm.loop !49

171:                                              ; preds = %155, %151
  %172 = phi ptr [ %154, %151 ], [ %167, %155 ]
  %173 = phi ptr [ %153, %151 ], [ %168, %155 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 %150
  %175 = add nsw i32 %152, -1
  %176 = icmp sgt i32 %152, 1
  br i1 %176, label %151, label %198, !llvm.loop !50

177:                                              ; preds = %70
  %178 = mul nsw i32 %52, %50
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %177, %180
  %181 = phi i32 [ %196, %180 ], [ %178, %177 ]
  %182 = phi ptr [ %195, %180 ], [ %74, %177 ]
  %183 = phi ptr [ %194, %180 ], [ %76, %177 ]
  %184 = getelementptr inbounds i8, ptr %182, i64 2
  %185 = load i8, ptr %184, align 1, !tbaa !34
  store i8 %185, ptr %183, align 1, !tbaa !34
  %186 = getelementptr inbounds i8, ptr %182, i64 1
  %187 = load i8, ptr %186, align 1, !tbaa !34
  %188 = getelementptr inbounds i8, ptr %183, i64 1
  store i8 %187, ptr %188, align 1, !tbaa !34
  %189 = load i8, ptr %182, align 1, !tbaa !34
  %190 = getelementptr inbounds i8, ptr %183, i64 2
  store i8 %189, ptr %190, align 1, !tbaa !34
  %191 = getelementptr inbounds i8, ptr %182, i64 3
  %192 = load i8, ptr %191, align 1, !tbaa !34
  %193 = getelementptr inbounds i8, ptr %183, i64 3
  store i8 %192, ptr %193, align 1, !tbaa !34
  %194 = getelementptr inbounds i8, ptr %183, i64 4
  %195 = getelementptr inbounds i8, ptr %182, i64 4
  %196 = add nsw i32 %181, -1
  %197 = icmp sgt i32 %181, 1
  br i1 %197, label %180, label %198, !llvm.loop !51

198:                                              ; preds = %180, %171, %121, %112, %177, %145, %118, %79, %70, %68
  %199 = phi ptr [ %69, %68 ], [ %72, %70 ], [ %72, %79 ], [ %72, %118 ], [ %72, %145 ], [ %72, %177 ], [ %72, %112 ], [ %72, %121 ], [ %72, %171 ], [ %72, %180 ]
  %200 = icmp eq ptr %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.ImBuf, ptr %199, i64 0, i32 10
  store double %61, ptr %202, align 8, !tbaa !52
  %203 = getelementptr inbounds %struct.ImBuf, ptr %199, i64 0, i32 10, i64 1
  store double %62, ptr %203, align 8, !tbaa !52
  %204 = getelementptr inbounds %struct.ImBuf, ptr %199, i64 0, i32 26
  store i32 67108864, ptr %204, align 8, !tbaa !54
  br label %205

205:                                              ; preds = %22, %20, %26, %4, %15, %11, %6, %198, %201, %34
  %206 = phi ptr [ null, %34 ], [ %199, %201 ], [ %199, %198 ], [ null, %6 ], [ null, %11 ], [ null, %15 ], [ null, %4 ], [ null, %26 ], [ null, %20 ], [ null, %22 ]
  ret ptr %206
}

declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @imb_savebmp(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = mul i32 %5, 3
  %7 = sub i32 0, %6
  %8 = and i32 %7, 3
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %174, label %15

15:                                               ; preds = %3
  %16 = add nsw i32 %8, %6
  %17 = mul nsw i32 %16, %10
  %18 = tail call i32 @putc(i32 noundef 66, ptr noundef %13)
  %19 = tail call i32 @putc(i32 noundef 77, ptr noundef %13)
  %20 = add i32 %17, 54
  %21 = and i32 %20, 255
  %22 = tail call i32 @putc(i32 noundef %21, ptr noundef %13)
  %23 = lshr i32 %20, 8
  %24 = and i32 %23, 255
  %25 = tail call i32 @putc(i32 noundef %24, ptr noundef %13)
  %26 = lshr i32 %20, 16
  %27 = and i32 %26, 255
  %28 = tail call i32 @putc(i32 noundef %27, ptr noundef %13)
  %29 = lshr i32 %20, 24
  %30 = tail call noundef i32 @putc(i32 noundef %29, ptr noundef %13)
  %31 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %32 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %33 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %34 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %35 = tail call i32 @putc(i32 noundef 54, ptr noundef %13)
  %36 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %37 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %38 = tail call noundef i32 @putc(i32 noundef 0, ptr noundef %13)
  %39 = tail call i32 @putc(i32 noundef 40, ptr noundef %13)
  %40 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %41 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %42 = tail call noundef i32 @putc(i32 noundef 0, ptr noundef %13)
  %43 = load i32, ptr %4, align 8, !tbaa !55
  %44 = and i32 %43, 255
  %45 = tail call i32 @putc(i32 noundef %44, ptr noundef %13)
  %46 = lshr i32 %43, 8
  %47 = and i32 %46, 255
  %48 = tail call i32 @putc(i32 noundef %47, ptr noundef %13)
  %49 = lshr i32 %43, 16
  %50 = and i32 %49, 255
  %51 = tail call i32 @putc(i32 noundef %50, ptr noundef %13)
  %52 = lshr i32 %43, 24
  %53 = tail call noundef i32 @putc(i32 noundef %52, ptr noundef %13)
  %54 = load i32, ptr %9, align 4, !tbaa !56
  %55 = and i32 %54, 255
  %56 = tail call i32 @putc(i32 noundef %55, ptr noundef %13)
  %57 = lshr i32 %54, 8
  %58 = and i32 %57, 255
  %59 = tail call i32 @putc(i32 noundef %58, ptr noundef %13)
  %60 = lshr i32 %54, 16
  %61 = and i32 %60, 255
  %62 = tail call i32 @putc(i32 noundef %61, ptr noundef %13)
  %63 = lshr i32 %54, 24
  %64 = tail call noundef i32 @putc(i32 noundef %63, ptr noundef %13)
  %65 = tail call i32 @putc(i32 noundef 1, ptr noundef %13)
  %66 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %67 = tail call i32 @putc(i32 noundef 24, ptr noundef %13)
  %68 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %69 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %70 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %71 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %72 = tail call noundef i32 @putc(i32 noundef 0, ptr noundef %13)
  %73 = and i32 %17, 255
  %74 = tail call i32 @putc(i32 noundef %73, ptr noundef %13)
  %75 = lshr i32 %17, 8
  %76 = and i32 %75, 255
  %77 = tail call i32 @putc(i32 noundef %76, ptr noundef %13)
  %78 = lshr i32 %17, 16
  %79 = and i32 %78, 255
  %80 = tail call i32 @putc(i32 noundef %79, ptr noundef %13)
  %81 = lshr i32 %17, 24
  %82 = tail call noundef i32 @putc(i32 noundef %81, ptr noundef %13)
  %83 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 10
  %84 = load double, ptr %83, align 8, !tbaa !52
  %85 = fadd double %84, 5.000000e-01
  %86 = fptosi double %85 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @putc(i32 noundef %87, ptr noundef %13)
  %89 = lshr i32 %86, 8
  %90 = and i32 %89, 255
  %91 = tail call i32 @putc(i32 noundef %90, ptr noundef %13)
  %92 = lshr i32 %86, 16
  %93 = and i32 %92, 255
  %94 = tail call i32 @putc(i32 noundef %93, ptr noundef %13)
  %95 = lshr i32 %86, 24
  %96 = tail call noundef i32 @putc(i32 noundef %95, ptr noundef %13)
  %97 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 10, i64 1
  %98 = load double, ptr %97, align 8, !tbaa !52
  %99 = fadd double %98, 5.000000e-01
  %100 = fptosi double %99 to i32
  %101 = and i32 %100, 255
  %102 = tail call i32 @putc(i32 noundef %101, ptr noundef %13)
  %103 = lshr i32 %100, 8
  %104 = and i32 %103, 255
  %105 = tail call i32 @putc(i32 noundef %104, ptr noundef %13)
  %106 = lshr i32 %100, 16
  %107 = and i32 %106, 255
  %108 = tail call i32 @putc(i32 noundef %107, ptr noundef %13)
  %109 = lshr i32 %100, 24
  %110 = tail call noundef i32 @putc(i32 noundef %109, ptr noundef %13)
  %111 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %112 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %113 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %114 = tail call noundef i32 @putc(i32 noundef 0, ptr noundef %13)
  %115 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %116 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %117 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %118 = tail call noundef i32 @putc(i32 noundef 0, ptr noundef %13)
  %119 = load i32, ptr %9, align 4, !tbaa !56
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %171

121:                                              ; preds = %15
  %122 = icmp eq i32 %8, 0
  br label %123

123:                                              ; preds = %121, %167
  %124 = phi i32 [ 0, %121 ], [ %168, %167 ]
  %125 = load i32, ptr %4, align 8, !tbaa !55
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %132, label %131

127:                                              ; preds = %153
  %128 = add nuw nsw i32 %134, 1
  %129 = load i32, ptr %4, align 8, !tbaa !55
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %132, label %131, !llvm.loop !57

131:                                              ; preds = %127, %123
  br i1 %122, label %167, label %163

132:                                              ; preds = %123, %127
  %133 = phi i32 [ %129, %127 ], [ %125, %123 ]
  %134 = phi i32 [ %128, %127 ], [ 0, %123 ]
  %135 = mul nsw i32 %133, %124
  %136 = add nsw i32 %135, %134
  %137 = shl nsw i32 %136, 2
  %138 = or disjoint i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %12, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !34
  %142 = zext i8 %141 to i32
  %143 = tail call i32 @putc(i32 noundef %142, ptr noundef %13)
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %174, label %145

145:                                              ; preds = %132
  %146 = or disjoint i32 %137, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %12, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !34
  %150 = zext i8 %149 to i32
  %151 = tail call i32 @putc(i32 noundef %150, ptr noundef %13)
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %174, label %153

153:                                              ; preds = %145
  %154 = sext i32 %137 to i64
  %155 = getelementptr inbounds i8, ptr %12, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !34
  %157 = zext i8 %156 to i32
  %158 = tail call i32 @putc(i32 noundef %157, ptr noundef %13)
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %174, label %127

160:                                              ; preds = %163
  %161 = add nuw nsw i32 %164, 1
  %162 = icmp eq i32 %161, %8
  br i1 %162, label %167, label %163, !llvm.loop !58

163:                                              ; preds = %131, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %131 ]
  %165 = tail call i32 @putc(i32 noundef 0, ptr noundef %13)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %174, label %160

167:                                              ; preds = %160, %131
  %168 = add nuw nsw i32 %124, 1
  %169 = load i32, ptr %9, align 4, !tbaa !56
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %123, label %171, !llvm.loop !59

171:                                              ; preds = %167, %15
  %172 = tail call i32 @fflush(ptr noundef %13)
  %173 = tail call i32 @fclose(ptr noundef %13)
  br label %174

174:                                              ; preds = %153, %145, %132, %163, %3, %171
  %175 = phi i32 [ 1, %171 ], [ 0, %3 ], [ 0, %163 ], [ 0, %132 ], [ 0, %145 ], [ 0, %153 ]
  ret i32 %175
}

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !39, i64 40}
!38 = !{!"ImBuf", !39, i64 0, !39, i64 8, !40, i64 16, !40, i64 20, !35, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !39, i64 48, !35, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !39, i64 88, !39, i64 96, !39, i64 104, !41, i64 112, !35, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !39, i64 296, !39, i64 304, !40, i64 312, !35, i64 316, !35, i64 1340, !39, i64 2368, !40, i64 2376, !39, i64 2384, !40, i64 2392, !40, i64 2396, !39, i64 2400, !39, i64 2408, !39, i64 2416, !39, i64 2424, !40, i64 2432, !42, i64 2436, !43, i64 2456}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!"int", !35, i64 0}
!41 = !{!"float", !35, i64 0}
!42 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!43 = !{!"DDSData", !40, i64 0, !40, i64 4, !39, i64 8, !40, i64 16}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
!48 = distinct !{!48, !45, !46}
!49 = distinct !{!49, !45, !46}
!50 = distinct !{!50, !45, !46}
!51 = distinct !{!51, !45, !46}
!52 = !{!53, !53, i64 0}
!53 = !{!"double", !35, i64 0}
!54 = !{!38, !40, i64 312}
!55 = !{!38, !40, i64 16}
!56 = !{!38, !40, i64 20}
!57 = distinct !{!57, !45, !46}
!58 = distinct !{!58, !45, !46}
!59 = distinct !{!59, !45, !46}
