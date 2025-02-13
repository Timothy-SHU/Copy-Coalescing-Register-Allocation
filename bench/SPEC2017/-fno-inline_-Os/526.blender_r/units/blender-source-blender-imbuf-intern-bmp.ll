; ModuleID = 'blender/source/blender/imbuf/intern/bmp.c'
source_filename = "blender/source/blender/imbuf/intern/bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @imb_is_a_bmp(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @checkbmp(ptr noundef %0) #6, !range !34
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @checkbmp(ptr noundef readonly %0) unnamed_addr #0 !PGOFuncName !35 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !36
  switch i8 %4, label %32 [
    i8 66, label %5
    i8 67, label %8
    i8 73, label %11
    i8 80, label %15
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !36
  switch i8 %7, label %32 [
    i8 77, label %19
    i8 65, label %19
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !36
  switch i8 %10, label %32 [
    i8 73, label %19
    i8 80, label %19
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !36
  %14 = icmp eq i8 %13, 67
  br i1 %14, label %19, label %32

15:                                               ; preds = %3
  %16 = getelementptr inbounds i8, ptr %0, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !36
  %18 = icmp eq i8 %17, 84
  br i1 %18, label %19, label %32

19:                                               ; preds = %8, %8, %5, %5, %15, %11
  %20 = getelementptr inbounds i8, ptr %0, i64 14
  %21 = load i32, ptr %20, align 1
  %22 = getelementptr inbounds i8, ptr %0, i64 30
  %23 = load i32, ptr %22, align 1
  %24 = icmp ugt i32 %21, 39
  %25 = icmp eq i32 %23, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = getelementptr inbounds i8, ptr %0, i64 28
  %29 = load i16, ptr %28, align 1
  %30 = icmp ugt i16 %29, 7
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %8, %5, %3, %11, %27, %1, %19, %15
  %33 = phi i32 [ 0, %15 ], [ 0, %19 ], [ 0, %1 ], [ %31, %27 ], [ 0, %11 ], [ 0, %3 ], [ 0, %5 ], [ 0, %8 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @imb_bmp_decode(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = tail call fastcc i32 @checkbmp(ptr noundef %0) #6, !range !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %171, label %7

7:                                                ; preds = %4
  tail call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #7
  %8 = load i8, ptr %0, align 1, !tbaa !36
  %9 = icmp eq i8 %8, 66
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !36
  %13 = icmp eq i8 %12, 77
  %14 = select i1 %13, i64 14, i64 0
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi ptr [ %0, %7 ], [ %15, %10 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  %19 = load i32, ptr %18, align 1
  %20 = getelementptr inbounds i8, ptr %17, i64 8
  %21 = load i32, ptr %20, align 1
  %22 = getelementptr inbounds i8, ptr %17, i64 14
  %23 = load i16, ptr %22, align 1
  %24 = getelementptr inbounds i8, ptr %17, i64 24
  %25 = load <2 x i32>, ptr %24, align 1
  %26 = getelementptr inbounds i8, ptr %17, i64 32
  %27 = load i32, ptr %26, align 1
  %28 = uitofp <2 x i32> %25 to <2 x double>
  %29 = icmp ult i16 %23, 9
  %30 = trunc i16 %23 to i8
  %31 = select i1 %29, i8 24, i8 %30
  %32 = and i32 %2, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %16
  %35 = tail call ptr @IMB_allocImBuf(i32 noundef %19, i32 noundef %21, i8 noundef zeroext %31, i32 noundef 0) #7
  br label %164

36:                                               ; preds = %16
  %37 = load i32, ptr %17, align 1
  %38 = tail call ptr @IMB_allocImBuf(i32 noundef %19, i32 noundef %21, i8 noundef zeroext %31, i32 noundef 1) #7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, ptr %17, i64 %39
  %41 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = add i16 %23, -8
  %44 = tail call i16 @llvm.fshl.i16(i16 %43, i16 %43, i16 13)
  switch i16 %44, label %167 [
    i16 0, label %45
    i16 1, label %84
    i16 2, label %111
    i16 3, label %143
  ]

45:                                               ; preds = %36
  %46 = icmp sgt i32 %21, 0
  br i1 %46, label %47, label %167

47:                                               ; preds = %45
  %48 = shl i32 %27, 2
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %40, i64 %49
  %51 = sub i32 0, %19
  %52 = and i32 %51, 3
  %53 = icmp sgt i32 %19, 0
  %54 = zext nneg i32 %52 to i64
  br label %55

55:                                               ; preds = %47, %78
  %56 = phi i32 [ %21, %47 ], [ %82, %78 ]
  %57 = phi ptr [ %50, %47 ], [ %81, %78 ]
  %58 = phi ptr [ %42, %47 ], [ %79, %78 ]
  br i1 %53, label %59, label %78

59:                                               ; preds = %55, %59
  %60 = phi i32 [ %76, %59 ], [ %19, %55 ]
  %61 = phi ptr [ %75, %59 ], [ %57, %55 ]
  %62 = phi ptr [ %74, %59 ], [ %58, %55 ]
  %63 = load i8, ptr %61, align 1, !tbaa !36
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [4 x i8], ptr %40, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !36
  store i8 %66, ptr %62, align 1, !tbaa !36
  %67 = getelementptr inbounds i8, ptr %65, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !36
  %69 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %68, ptr %69, align 1, !tbaa !36
  %70 = getelementptr inbounds i8, ptr %65, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !36
  %72 = getelementptr inbounds i8, ptr %62, i64 2
  store i8 %71, ptr %72, align 1, !tbaa !36
  %73 = getelementptr inbounds i8, ptr %62, i64 3
  store i8 -1, ptr %73, align 1, !tbaa !36
  %74 = getelementptr inbounds i8, ptr %62, i64 4
  %75 = getelementptr inbounds i8, ptr %61, i64 1
  %76 = add nsw i32 %60, -1
  %77 = icmp ugt i32 %60, 1
  br i1 %77, label %59, label %78, !llvm.loop !46

78:                                               ; preds = %59, %55
  %79 = phi ptr [ %58, %55 ], [ %74, %59 ]
  %80 = phi ptr [ %57, %55 ], [ %75, %59 ]
  %81 = getelementptr inbounds i8, ptr %80, i64 %54
  %82 = add nsw i32 %56, -1
  %83 = icmp sgt i32 %56, 1
  br i1 %83, label %55, label %164, !llvm.loop !48

84:                                               ; preds = %36
  %85 = mul nsw i32 %21, %19
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %167

87:                                               ; preds = %84, %87
  %88 = phi i32 [ %109, %87 ], [ %85, %84 ]
  %89 = phi ptr [ %108, %87 ], [ %40, %84 ]
  %90 = phi ptr [ %107, %87 ], [ %42, %84 ]
  %91 = load i8, ptr %89, align 1, !tbaa !36
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds i8, ptr %89, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !36
  %95 = zext i8 %94 to i16
  %96 = shl nuw i16 %95, 8
  %97 = or disjoint i16 %96, %92
  %98 = shl i8 %94, 1
  %99 = and i8 %98, -8
  store i8 %99, ptr %90, align 1, !tbaa !36
  %100 = lshr i16 %97, 2
  %101 = trunc i16 %100 to i8
  %102 = and i8 %101, -8
  %103 = getelementptr inbounds i8, ptr %90, i64 1
  store i8 %102, ptr %103, align 1, !tbaa !36
  %104 = shl i8 %91, 3
  %105 = getelementptr inbounds i8, ptr %90, i64 2
  store i8 %104, ptr %105, align 1, !tbaa !36
  %106 = getelementptr inbounds i8, ptr %90, i64 3
  store i8 -1, ptr %106, align 1, !tbaa !36
  %107 = getelementptr inbounds i8, ptr %90, i64 4
  %108 = getelementptr inbounds i8, ptr %89, i64 2
  %109 = add nsw i32 %88, -1
  %110 = icmp ugt i32 %88, 1
  br i1 %110, label %87, label %164, !llvm.loop !49

111:                                              ; preds = %36
  %112 = icmp sgt i32 %21, 0
  br i1 %112, label %113, label %167

113:                                              ; preds = %111
  %114 = srem i32 %19, 4
  %115 = icmp sgt i32 %19, 0
  %116 = sext i32 %114 to i64
  br label %117

117:                                              ; preds = %113, %137
  %118 = phi i32 [ %21, %113 ], [ %141, %137 ]
  %119 = phi ptr [ %40, %113 ], [ %140, %137 ]
  %120 = phi ptr [ %42, %113 ], [ %138, %137 ]
  br i1 %115, label %121, label %137

121:                                              ; preds = %117, %121
  %122 = phi i32 [ %135, %121 ], [ %19, %117 ]
  %123 = phi ptr [ %134, %121 ], [ %119, %117 ]
  %124 = phi ptr [ %133, %121 ], [ %120, %117 ]
  %125 = getelementptr inbounds i8, ptr %123, i64 2
  %126 = load i8, ptr %125, align 1, !tbaa !36
  store i8 %126, ptr %124, align 1, !tbaa !36
  %127 = getelementptr inbounds i8, ptr %123, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !36
  %129 = getelementptr inbounds i8, ptr %124, i64 1
  store i8 %128, ptr %129, align 1, !tbaa !36
  %130 = load i8, ptr %123, align 1, !tbaa !36
  %131 = getelementptr inbounds i8, ptr %124, i64 2
  store i8 %130, ptr %131, align 1, !tbaa !36
  %132 = getelementptr inbounds i8, ptr %124, i64 3
  store i8 -1, ptr %132, align 1, !tbaa !36
  %133 = getelementptr inbounds i8, ptr %124, i64 4
  %134 = getelementptr inbounds i8, ptr %123, i64 3
  %135 = add nsw i32 %122, -1
  %136 = icmp ugt i32 %122, 1
  br i1 %136, label %121, label %137, !llvm.loop !50

137:                                              ; preds = %121, %117
  %138 = phi ptr [ %120, %117 ], [ %133, %121 ]
  %139 = phi ptr [ %119, %117 ], [ %134, %121 ]
  %140 = getelementptr inbounds i8, ptr %139, i64 %116
  %141 = add nsw i32 %118, -1
  %142 = icmp sgt i32 %118, 1
  br i1 %142, label %117, label %164, !llvm.loop !51

143:                                              ; preds = %36
  %144 = mul nsw i32 %21, %19
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %167

146:                                              ; preds = %143, %146
  %147 = phi i32 [ %162, %146 ], [ %144, %143 ]
  %148 = phi ptr [ %161, %146 ], [ %40, %143 ]
  %149 = phi ptr [ %160, %146 ], [ %42, %143 ]
  %150 = getelementptr inbounds i8, ptr %148, i64 2
  %151 = load i8, ptr %150, align 1, !tbaa !36
  store i8 %151, ptr %149, align 1, !tbaa !36
  %152 = getelementptr inbounds i8, ptr %148, i64 1
  %153 = load i8, ptr %152, align 1, !tbaa !36
  %154 = getelementptr inbounds i8, ptr %149, i64 1
  store i8 %153, ptr %154, align 1, !tbaa !36
  %155 = load i8, ptr %148, align 1, !tbaa !36
  %156 = getelementptr inbounds i8, ptr %149, i64 2
  store i8 %155, ptr %156, align 1, !tbaa !36
  %157 = getelementptr inbounds i8, ptr %148, i64 3
  %158 = load i8, ptr %157, align 1, !tbaa !36
  %159 = getelementptr inbounds i8, ptr %149, i64 3
  store i8 %158, ptr %159, align 1, !tbaa !36
  %160 = getelementptr inbounds i8, ptr %149, i64 4
  %161 = getelementptr inbounds i8, ptr %148, i64 4
  %162 = add nsw i32 %147, -1
  %163 = icmp ugt i32 %147, 1
  br i1 %163, label %146, label %164, !llvm.loop !52

164:                                              ; preds = %146, %137, %87, %78, %34
  %165 = phi ptr [ %35, %34 ], [ %38, %78 ], [ %38, %87 ], [ %38, %137 ], [ %38, %146 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %143, %111, %84, %45, %36, %164
  %168 = phi ptr [ %165, %164 ], [ %38, %36 ], [ %38, %45 ], [ %38, %84 ], [ %38, %111 ], [ %38, %143 ]
  %169 = getelementptr inbounds %struct.ImBuf, ptr %168, i64 0, i32 10
  store <2 x double> %28, ptr %169, align 8, !tbaa !53
  %170 = getelementptr inbounds %struct.ImBuf, ptr %168, i64 0, i32 26
  store i32 67108864, ptr %170, align 8, !tbaa !55
  br label %171

171:                                              ; preds = %164, %167, %4
  %172 = phi ptr [ null, %4 ], [ %168, %167 ], [ null, %164 ]
  ret ptr %172
}

; Function Attrs: optsize
declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @imb_savebmp(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = mul i32 %5, 3
  %7 = sub i32 0, %6
  %8 = and i32 %7, 3
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %84, label %15

15:                                               ; preds = %3
  %16 = add nsw i32 %8, %6
  %17 = mul nsw i32 %16, %10
  tail call fastcc void @putShortLSB(i16 noundef zeroext 19778, ptr noundef nonnull %13) #6
  %18 = add i32 %17, 54
  tail call fastcc void @putIntLSB(i32 noundef %18, ptr noundef nonnull %13) #6
  tail call fastcc void @putShortLSB(i16 noundef zeroext 0, ptr noundef nonnull %13) #6
  tail call fastcc void @putShortLSB(i16 noundef zeroext 0, ptr noundef nonnull %13) #6
  tail call fastcc void @putIntLSB(i32 noundef 54, ptr noundef nonnull %13) #6
  tail call fastcc void @putIntLSB(i32 noundef 40, ptr noundef nonnull %13) #6
  %19 = load i32, ptr %4, align 8, !tbaa !56
  tail call fastcc void @putIntLSB(i32 noundef %19, ptr noundef nonnull %13) #6
  %20 = load i32, ptr %9, align 4, !tbaa !57
  tail call fastcc void @putIntLSB(i32 noundef %20, ptr noundef nonnull %13) #6
  tail call fastcc void @putShortLSB(i16 noundef zeroext 1, ptr noundef nonnull %13) #6
  tail call fastcc void @putShortLSB(i16 noundef zeroext 24, ptr noundef nonnull %13) #6
  tail call fastcc void @putIntLSB(i32 noundef 0, ptr noundef nonnull %13) #6
  tail call fastcc void @putIntLSB(i32 noundef %17, ptr noundef nonnull %13) #6
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 10
  %22 = load double, ptr %21, align 8, !tbaa !53
  %23 = fadd double %22, 5.000000e-01
  %24 = fptosi double %23 to i32
  tail call fastcc void @putIntLSB(i32 noundef %24, ptr noundef nonnull %13) #6
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 10, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !53
  %27 = fadd double %26, 5.000000e-01
  %28 = fptosi double %27 to i32
  tail call fastcc void @putIntLSB(i32 noundef %28, ptr noundef nonnull %13) #6
  tail call fastcc void @putIntLSB(i32 noundef 0, ptr noundef nonnull %13) #6
  tail call fastcc void @putIntLSB(i32 noundef 0, ptr noundef nonnull %13) #6
  %29 = load i32, ptr %9, align 4, !tbaa !57
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %81

31:                                               ; preds = %15
  %32 = icmp eq i32 %8, 0
  br label %33

33:                                               ; preds = %31, %77
  %34 = phi i32 [ 0, %31 ], [ %78, %77 ]
  %35 = load i32, ptr %4, align 8, !tbaa !56
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %42, label %41

37:                                               ; preds = %63
  %38 = add nuw nsw i32 %44, 1
  %39 = load i32, ptr %4, align 8, !tbaa !56
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %42, label %41, !llvm.loop !58

41:                                               ; preds = %37, %33
  br i1 %32, label %77, label %73

42:                                               ; preds = %33, %37
  %43 = phi i32 [ %39, %37 ], [ %35, %33 ]
  %44 = phi i32 [ %38, %37 ], [ 0, %33 ]
  %45 = mul nsw i32 %43, %34
  %46 = add nsw i32 %45, %44
  %47 = shl nsw i32 %46, 2
  %48 = or disjoint i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %12, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !36
  %52 = zext i8 %51 to i32
  %53 = tail call i32 @putc(i32 noundef %52, ptr noundef %13) #6
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %84, label %55

55:                                               ; preds = %42
  %56 = or disjoint i32 %47, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %12, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !36
  %60 = zext i8 %59 to i32
  %61 = tail call i32 @putc(i32 noundef %60, ptr noundef %13) #6
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %84, label %63

63:                                               ; preds = %55
  %64 = sext i32 %47 to i64
  %65 = getelementptr inbounds i8, ptr %12, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !36
  %67 = zext i8 %66 to i32
  %68 = tail call i32 @putc(i32 noundef %67, ptr noundef %13) #6
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %84, label %37

70:                                               ; preds = %73
  %71 = add nuw nsw i32 %74, 1
  %72 = icmp eq i32 %71, %8
  br i1 %72, label %77, label %73, !llvm.loop !59

73:                                               ; preds = %41, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %41 ]
  %75 = tail call i32 @putc(i32 noundef 0, ptr noundef %13) #6
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %84, label %70

77:                                               ; preds = %70, %41
  %78 = add nuw nsw i32 %34, 1
  %79 = load i32, ptr %9, align 4, !tbaa !57
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %33, label %81, !llvm.loop !60

81:                                               ; preds = %77, %15
  %82 = tail call i32 @fflush(ptr noundef %13) #6
  %83 = tail call i32 @fclose(ptr noundef %13) #6
  br label %84

84:                                               ; preds = %63, %55, %42, %73, %3, %81
  %85 = phi i32 [ 1, %81 ], [ 0, %3 ], [ 0, %73 ], [ 0, %42 ], [ 0, %55 ], [ 0, %63 ]
  ret i32 %85
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @putShortLSB(i16 noundef zeroext %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !61 {
  %3 = zext nneg i16 %0 to i32
  %4 = and i32 %3, 255
  %5 = tail call i32 @putc(i32 noundef %4, ptr noundef %1) #6
  %6 = lshr i32 %3, 8
  %7 = tail call i32 @putc(i32 noundef %6, ptr noundef %1) #6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @putIntLSB(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !62 {
  %3 = and i32 %0, 255
  %4 = tail call i32 @putc(i32 noundef %3, ptr noundef %1) #6
  %5 = lshr i32 %0, 8
  %6 = and i32 %5, 255
  %7 = tail call i32 @putc(i32 noundef %6, ptr noundef %1) #6
  %8 = lshr i32 %0, 16
  %9 = and i32 %8, 255
  %10 = tail call i32 @putc(i32 noundef %9, ptr noundef %1) #6
  %11 = lshr i32 %0, 24
  %12 = tail call i32 @putc(i32 noundef %11, ptr noundef %1) #6
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

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
!34 = !{i32 0, i32 2}
!35 = !{!"bmp.c:checkbmp"}
!36 = !{!37, !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 40}
!40 = !{!"ImBuf", !41, i64 0, !41, i64 8, !42, i64 16, !42, i64 20, !37, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !41, i64 40, !41, i64 48, !37, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !41, i64 88, !41, i64 96, !41, i64 104, !43, i64 112, !37, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !41, i64 296, !41, i64 304, !42, i64 312, !37, i64 316, !37, i64 1340, !41, i64 2368, !42, i64 2376, !41, i64 2384, !42, i64 2392, !42, i64 2396, !41, i64 2400, !41, i64 2408, !41, i64 2416, !41, i64 2424, !42, i64 2432, !44, i64 2436, !45, i64 2456}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"int", !37, i64 0}
!43 = !{!"float", !37, i64 0}
!44 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!45 = !{!"DDSData", !42, i64 0, !42, i64 4, !41, i64 8, !42, i64 16}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
!52 = distinct !{!52, !47}
!53 = !{!54, !54, i64 0}
!54 = !{!"double", !37, i64 0}
!55 = !{!40, !42, i64 312}
!56 = !{!40, !42, i64 16}
!57 = !{!40, !42, i64 20}
!58 = distinct !{!58, !47}
!59 = distinct !{!59, !47}
!60 = distinct !{!60, !47}
!61 = !{!"bmp.c:putShortLSB"}
!62 = !{!"bmp.c:putIntLSB"}
