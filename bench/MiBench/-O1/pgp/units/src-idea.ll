; ModuleID = 'src/idea.c'
source_filename = "src/idea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IdeaCfbContext = type { [8 x i8], [8 x i8], [52 x i16], i32 }
%struct.IdeaRandContext = type { [8 x i8], [52 x i16], i32, [8 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ideaCfbReinit(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 1
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 1
  store i64 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 3
  store i32 0, ptr %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ideaCfbInit(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %16, %4 ]
  %6 = phi ptr [ %1, %2 ], [ %15, %4 ]
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !10
  %12 = zext i8 %11 to i16
  %13 = or disjoint i16 %9, %12
  %14 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 %13, ptr %14, align 2, !tbaa !11
  %15 = getelementptr inbounds i8, ptr %6, i64 2
  %16 = add nuw nsw i64 %5, 1
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %18, label %4, !llvm.loop !13

18:                                               ; preds = %4, %18
  %19 = phi i32 [ %39, %18 ], [ 8, %4 ]
  %20 = phi i32 [ %23, %18 ], [ 0, %4 ]
  %21 = phi ptr [ %38, %18 ], [ %3, %4 ]
  %22 = add nuw nsw i32 %20, 1
  %23 = and i32 %22, 7
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i16, ptr %21, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !11
  %27 = add nuw nsw i32 %20, 2
  %28 = and i32 %27, 7
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds i16, ptr %21, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !11
  %32 = tail call i16 @llvm.fshl.i16(i16 %26, i16 %31, i16 9)
  %33 = or disjoint i32 %20, 8
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i16, ptr %21, i64 %34
  store i16 %32, ptr %35, align 2, !tbaa !11
  %36 = and i32 %22, 8
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds i16, ptr %21, i64 %37
  %39 = add nuw nsw i32 %19, 1
  %40 = icmp eq i32 %39, 52
  br i1 %40, label %41, label %18, !llvm.loop !15

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 1
  store i64 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 3
  store i32 0, ptr %43, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ideaCfbDestroy(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(124) %0, i8 0, i64 124, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ideaCfbSync(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 1
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  %9 = sub nsw i32 8, %3
  %10 = sext i32 %9 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %8, ptr nonnull align 4 %6, i64 %10, i1 false)
  %11 = sub nsw i64 0, %7
  %12 = getelementptr inbounds i8, ptr %6, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr nonnull align 1 %12, i64 %7, i1 false)
  store i32 0, ptr %2, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ideaCfbEncrypt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 2
  %9 = sext i32 %6 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = icmp slt i32 %6, %3
  br i1 %12, label %29, label %13

13:                                               ; preds = %4
  %14 = sub nsw i32 %6, %3
  store i32 %14, ptr %5, align 4, !tbaa !5
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %89, label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %24, %16 ], [ %11, %13 ]
  %18 = phi i32 [ %21, %16 ], [ %3, %13 ]
  %19 = phi ptr [ %27, %16 ], [ %2, %13 ]
  %20 = phi ptr [ %22, %16 ], [ %1, %13 ]
  %21 = add nsw i32 %18, -1
  %22 = getelementptr inbounds i8, ptr %20, i64 1
  %23 = load i8, ptr %20, align 1, !tbaa !10
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  %25 = load i8, ptr %17, align 1, !tbaa !10
  %26 = xor i8 %25, %23
  store i8 %26, ptr %17, align 1, !tbaa !10
  %27 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %26, ptr %19, align 1, !tbaa !10
  %28 = icmp eq i32 %21, 0
  br i1 %28, label %89, label %16, !llvm.loop !16

29:                                               ; preds = %4
  %30 = sub nsw i32 %3, %6
  %31 = icmp eq i32 %6, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %36, %29
  %33 = phi ptr [ %1, %29 ], [ %42, %36 ]
  %34 = phi ptr [ %2, %29 ], [ %47, %36 ]
  %35 = icmp sgt i32 %30, 8
  br i1 %35, label %49, label %70

36:                                               ; preds = %29, %36
  %37 = phi ptr [ %44, %36 ], [ %11, %29 ]
  %38 = phi i32 [ %41, %36 ], [ %6, %29 ]
  %39 = phi ptr [ %47, %36 ], [ %2, %29 ]
  %40 = phi ptr [ %42, %36 ], [ %1, %29 ]
  %41 = add nsw i32 %38, -1
  %42 = getelementptr inbounds i8, ptr %40, i64 1
  %43 = load i8, ptr %40, align 1, !tbaa !10
  %44 = getelementptr inbounds i8, ptr %37, i64 1
  %45 = load i8, ptr %37, align 1, !tbaa !10
  %46 = xor i8 %45, %43
  store i8 %46, ptr %37, align 1, !tbaa !10
  %47 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %46, ptr %39, align 1, !tbaa !10
  %48 = icmp eq i32 %41, 0
  br i1 %48, label %32, label %36, !llvm.loop !17

49:                                               ; preds = %32, %67
  %50 = phi i32 [ %68, %67 ], [ %30, %32 ]
  %51 = phi ptr [ %64, %67 ], [ %34, %32 ]
  %52 = phi ptr [ %59, %67 ], [ %33, %32 ]
  %53 = load i64, ptr %7, align 1
  store i64 %53, ptr %0, align 4
  tail call fastcc void @ideaCipher(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %8)
  br label %54

54:                                               ; preds = %54, %49
  %55 = phi ptr [ %52, %49 ], [ %59, %54 ]
  %56 = phi ptr [ %51, %49 ], [ %64, %54 ]
  %57 = phi i32 [ 8, %49 ], [ %65, %54 ]
  %58 = phi ptr [ %7, %49 ], [ %61, %54 ]
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  %60 = load i8, ptr %55, align 1, !tbaa !10
  %61 = getelementptr inbounds i8, ptr %58, i64 1
  %62 = load i8, ptr %58, align 1, !tbaa !10
  %63 = xor i8 %62, %60
  store i8 %63, ptr %58, align 1, !tbaa !10
  %64 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %63, ptr %56, align 1, !tbaa !10
  %65 = add nsw i32 %57, -1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %54, !llvm.loop !18

67:                                               ; preds = %54
  %68 = add nsw i32 %50, -8
  %69 = icmp sgt i32 %50, 16
  br i1 %69, label %49, label %70, !llvm.loop !19

70:                                               ; preds = %67, %32
  %71 = phi ptr [ %33, %32 ], [ %59, %67 ]
  %72 = phi ptr [ %34, %32 ], [ %64, %67 ]
  %73 = phi i32 [ %30, %32 ], [ %68, %67 ]
  %74 = load i64, ptr %7, align 1
  store i64 %74, ptr %0, align 4
  tail call fastcc void @ideaCipher(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %75 = sub nsw i32 8, %73
  store i32 %75, ptr %5, align 4, !tbaa !5
  br label %76

76:                                               ; preds = %76, %70
  %77 = phi ptr [ %71, %70 ], [ %81, %76 ]
  %78 = phi ptr [ %72, %70 ], [ %86, %76 ]
  %79 = phi i32 [ %73, %70 ], [ %87, %76 ]
  %80 = phi ptr [ %7, %70 ], [ %83, %76 ]
  %81 = getelementptr inbounds i8, ptr %77, i64 1
  %82 = load i8, ptr %77, align 1, !tbaa !10
  %83 = getelementptr inbounds i8, ptr %80, i64 1
  %84 = load i8, ptr %80, align 1, !tbaa !10
  %85 = xor i8 %84, %82
  store i8 %85, ptr %80, align 1, !tbaa !10
  %86 = getelementptr inbounds i8, ptr %78, i64 1
  store i8 %85, ptr %78, align 1, !tbaa !10
  %87 = add nsw i32 %79, -1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %76, !llvm.loop !20

89:                                               ; preds = %16, %76, %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ideaCipher(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds i16, ptr %0, i64 1
  %5 = load i16, ptr %0, align 2, !tbaa !11
  %6 = getelementptr inbounds i16, ptr %0, i64 2
  %7 = load i16, ptr %4, align 2, !tbaa !11
  %8 = getelementptr inbounds i16, ptr %0, i64 3
  %9 = load i16, ptr %6, align 2, !tbaa !11
  %10 = load i16, ptr %8, align 2, !tbaa !11
  %11 = tail call i16 @llvm.bswap.i16(i16 %5)
  %12 = tail call i16 @llvm.bswap.i16(i16 %7)
  %13 = tail call i16 @llvm.bswap.i16(i16 %9)
  %14 = tail call i16 @llvm.bswap.i16(i16 %10)
  %15 = getelementptr i8, ptr %2, i64 96
  br label %16

16:                                               ; preds = %126, %3
  %17 = phi i16 [ %14, %3 ], [ %130, %126 ]
  %18 = phi i16 [ %13, %3 ], [ %132, %126 ]
  %19 = phi i16 [ %12, %3 ], [ %131, %126 ]
  %20 = phi i16 [ %11, %3 ], [ %129, %126 ]
  %21 = phi ptr [ %2, %3 ], [ %104, %126 ]
  %22 = phi i32 [ 8, %3 ], [ %133, %126 ]
  %23 = getelementptr inbounds i16, ptr %21, i64 1
  %24 = load i16, ptr %21, align 2, !tbaa !11
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %16
  %27 = icmp eq i16 %20, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %26
  %29 = zext i16 %20 to i64
  %30 = zext i16 %24 to i64
  %31 = mul nuw nsw i64 %30, %29
  %32 = trunc i64 %31 to i32
  %33 = lshr i64 %31, 16
  %34 = trunc i64 %33 to i32
  %35 = and i32 %32, 65535
  %36 = sub i32 %32, %34
  %37 = icmp ult i32 %35, %34
  %38 = zext i1 %37 to i32
  %39 = add i32 %36, %38
  %40 = trunc i32 %39 to i16
  br label %45

41:                                               ; preds = %26
  %42 = sub i16 1, %24
  br label %45

43:                                               ; preds = %16
  %44 = sub i16 1, %20
  br label %45

45:                                               ; preds = %28, %41, %43
  %46 = phi i16 [ %40, %28 ], [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds i16, ptr %21, i64 2
  %48 = load i16, ptr %23, align 2, !tbaa !11
  %49 = add i16 %48, %19
  %50 = getelementptr inbounds i16, ptr %21, i64 3
  %51 = load i16, ptr %47, align 2, !tbaa !11
  %52 = add i16 %51, %18
  %53 = getelementptr inbounds i16, ptr %21, i64 4
  %54 = load i16, ptr %50, align 2, !tbaa !11
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %45
  %57 = icmp eq i16 %17, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %56
  %59 = zext i16 %17 to i64
  %60 = zext i16 %54 to i64
  %61 = mul nuw nsw i64 %60, %59
  %62 = trunc i64 %61 to i32
  %63 = lshr i64 %61, 16
  %64 = trunc i64 %63 to i32
  %65 = and i32 %62, 65535
  %66 = sub i32 %62, %64
  %67 = icmp ult i32 %65, %64
  %68 = zext i1 %67 to i32
  %69 = add i32 %66, %68
  %70 = trunc i32 %69 to i16
  br label %75

71:                                               ; preds = %56
  %72 = sub i16 1, %54
  br label %75

73:                                               ; preds = %45
  %74 = sub i16 1, %17
  br label %75

75:                                               ; preds = %58, %71, %73
  %76 = phi i16 [ %70, %58 ], [ %72, %71 ], [ %74, %73 ]
  %77 = xor i16 %52, %46
  %78 = getelementptr inbounds i16, ptr %21, i64 5
  %79 = load i16, ptr %53, align 2, !tbaa !11
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %75
  %82 = icmp eq i16 %77, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %81
  %84 = zext i16 %77 to i64
  %85 = zext i16 %79 to i64
  %86 = mul nuw nsw i64 %85, %84
  %87 = trunc i64 %86 to i32
  %88 = lshr i64 %86, 16
  %89 = trunc i64 %88 to i32
  %90 = and i32 %87, 65535
  %91 = sub i32 %87, %89
  %92 = icmp ult i32 %90, %89
  %93 = zext i1 %92 to i32
  %94 = add i32 %91, %93
  %95 = trunc i32 %94 to i16
  br label %100

96:                                               ; preds = %81
  %97 = sub i16 1, %79
  br label %100

98:                                               ; preds = %75
  %99 = sub i16 1, %77
  br label %100

100:                                              ; preds = %83, %96, %98
  %101 = phi i16 [ %95, %83 ], [ %97, %96 ], [ %99, %98 ]
  %102 = xor i16 %76, %49
  %103 = add i16 %101, %102
  %104 = getelementptr inbounds i16, ptr %21, i64 6
  %105 = load i16, ptr %78, align 2, !tbaa !11
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %100
  %108 = icmp eq i16 %103, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %107
  %110 = zext i16 %103 to i64
  %111 = zext i16 %105 to i64
  %112 = mul nuw nsw i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = lshr i64 %112, 16
  %115 = trunc i64 %114 to i32
  %116 = and i32 %113, 65535
  %117 = sub i32 %113, %115
  %118 = icmp ult i32 %116, %115
  %119 = zext i1 %118 to i32
  %120 = add i32 %117, %119
  %121 = trunc i32 %120 to i16
  br label %126

122:                                              ; preds = %107
  %123 = sub i16 1, %105
  br label %126

124:                                              ; preds = %100
  %125 = sub i16 1, %103
  br label %126

126:                                              ; preds = %109, %122, %124
  %127 = phi i16 [ %121, %109 ], [ %123, %122 ], [ %125, %124 ]
  %128 = add i16 %127, %101
  %129 = xor i16 %127, %46
  %130 = xor i16 %128, %76
  %131 = xor i16 %127, %52
  %132 = xor i16 %128, %49
  %133 = add nsw i32 %22, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %16, !llvm.loop !21

135:                                              ; preds = %126
  %136 = getelementptr i8, ptr %2, i64 98
  %137 = load i16, ptr %15, align 2, !tbaa !11
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %156, label %139

139:                                              ; preds = %135
  %140 = icmp eq i16 %129, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %139
  %142 = zext i16 %129 to i64
  %143 = zext i16 %137 to i64
  %144 = mul nuw nsw i64 %143, %142
  %145 = trunc i64 %144 to i32
  %146 = lshr i64 %144, 16
  %147 = trunc i64 %146 to i32
  %148 = and i32 %145, 65535
  %149 = sub i32 %145, %147
  %150 = icmp ult i32 %148, %147
  %151 = zext i1 %150 to i32
  %152 = add i32 %149, %151
  %153 = trunc i32 %152 to i16
  br label %158

154:                                              ; preds = %139
  %155 = sub i16 1, %137
  br label %158

156:                                              ; preds = %135
  %157 = sub i16 1, %129
  br label %158

158:                                              ; preds = %141, %154, %156
  %159 = phi i16 [ %153, %141 ], [ %155, %154 ], [ %157, %156 ]
  %160 = getelementptr i8, ptr %2, i64 100
  %161 = load i16, ptr %136, align 2, !tbaa !11
  %162 = getelementptr i8, ptr %2, i64 102
  %163 = load i16, ptr %160, align 2, !tbaa !11
  %164 = load i16, ptr %162, align 2, !tbaa !11
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %183, label %166

166:                                              ; preds = %158
  %167 = icmp eq i16 %130, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %166
  %169 = zext i16 %130 to i64
  %170 = zext i16 %164 to i64
  %171 = mul nuw nsw i64 %170, %169
  %172 = trunc i64 %171 to i32
  %173 = lshr i64 %171, 16
  %174 = trunc i64 %173 to i32
  %175 = and i32 %172, 65535
  %176 = sub i32 %172, %174
  %177 = icmp ult i32 %175, %174
  %178 = zext i1 %177 to i32
  %179 = add i32 %176, %178
  %180 = trunc i32 %179 to i16
  br label %185

181:                                              ; preds = %166
  %182 = sub i16 1, %164
  br label %185

183:                                              ; preds = %158
  %184 = sub i16 1, %130
  br label %185

185:                                              ; preds = %168, %181, %183
  %186 = phi i16 [ %180, %168 ], [ %182, %181 ], [ %184, %183 ]
  %187 = add i16 %163, %131
  %188 = add i16 %161, %132
  %189 = tail call i16 @llvm.bswap.i16(i16 %159)
  %190 = getelementptr inbounds i16, ptr %1, i64 1
  store i16 %189, ptr %1, align 2, !tbaa !11
  %191 = tail call i16 @llvm.bswap.i16(i16 %188)
  %192 = getelementptr inbounds i16, ptr %1, i64 2
  store i16 %191, ptr %190, align 2, !tbaa !11
  %193 = tail call i16 @llvm.bswap.i16(i16 %187)
  %194 = getelementptr inbounds i16, ptr %1, i64 3
  store i16 %193, ptr %192, align 2, !tbaa !11
  %195 = tail call i16 @llvm.bswap.i16(i16 %186)
  store i16 %195, ptr %194, align 2, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ideaCfbDecrypt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = getelementptr %struct.IdeaCfbContext, ptr %0, i64 0, i32 1
  %8 = sub nsw i32 8, %6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %7, i64 %9
  %11 = icmp slt i32 %6, %3
  br i1 %11, label %28, label %12

12:                                               ; preds = %4
  %13 = sub nsw i32 %6, %3
  store i32 %13, ptr %5, align 4, !tbaa !5
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %91, label %15

15:                                               ; preds = %12, %15
  %16 = phi i32 [ %20, %15 ], [ %3, %12 ]
  %17 = phi ptr [ %26, %15 ], [ %2, %12 ]
  %18 = phi ptr [ %22, %15 ], [ %1, %12 ]
  %19 = phi ptr [ %24, %15 ], [ %10, %12 ]
  %20 = add nsw i32 %16, -1
  %21 = load i8, ptr %19, align 1, !tbaa !10
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  %23 = load i8, ptr %18, align 1, !tbaa !10
  %24 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %23, ptr %19, align 1, !tbaa !10
  %25 = xor i8 %23, %21
  %26 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %25, ptr %17, align 1, !tbaa !10
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %91, label %15, !llvm.loop !22

28:                                               ; preds = %4
  %29 = sub nsw i32 %3, %6
  %30 = icmp eq i32 %6, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %37, %28
  %32 = phi ptr [ %1, %28 ], [ %44, %37 ]
  %33 = phi ptr [ %2, %28 ], [ %48, %37 ]
  %34 = icmp sgt i32 %29, 8
  br i1 %34, label %35, label %71

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 2
  br label %50

37:                                               ; preds = %28, %37
  %38 = phi i32 [ %42, %37 ], [ %6, %28 ]
  %39 = phi ptr [ %48, %37 ], [ %2, %28 ]
  %40 = phi ptr [ %44, %37 ], [ %1, %28 ]
  %41 = phi ptr [ %46, %37 ], [ %10, %28 ]
  %42 = add nsw i32 %38, -1
  %43 = load i8, ptr %41, align 1, !tbaa !10
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  %45 = load i8, ptr %40, align 1, !tbaa !10
  %46 = getelementptr inbounds i8, ptr %41, i64 1
  store i8 %45, ptr %41, align 1, !tbaa !10
  %47 = xor i8 %45, %43
  %48 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %47, ptr %39, align 1, !tbaa !10
  %49 = icmp eq i32 %42, 0
  br i1 %49, label %31, label %37, !llvm.loop !23

50:                                               ; preds = %35, %68
  %51 = phi i32 [ %29, %35 ], [ %69, %68 ]
  %52 = phi ptr [ %33, %35 ], [ %65, %68 ]
  %53 = phi ptr [ %32, %35 ], [ %61, %68 ]
  %54 = load i64, ptr %7, align 1
  store i64 %54, ptr %0, align 4
  tail call fastcc void @ideaCipher(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %36)
  br label %55

55:                                               ; preds = %55, %50
  %56 = phi ptr [ %7, %50 ], [ %63, %55 ]
  %57 = phi ptr [ %53, %50 ], [ %61, %55 ]
  %58 = phi ptr [ %52, %50 ], [ %65, %55 ]
  %59 = phi i32 [ 8, %50 ], [ %66, %55 ]
  %60 = load i8, ptr %56, align 1, !tbaa !10
  %61 = getelementptr inbounds i8, ptr %57, i64 1
  %62 = load i8, ptr %57, align 1, !tbaa !10
  %63 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %62, ptr %56, align 1, !tbaa !10
  %64 = xor i8 %62, %60
  %65 = getelementptr inbounds i8, ptr %58, i64 1
  store i8 %64, ptr %58, align 1, !tbaa !10
  %66 = add nsw i32 %59, -1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %55, !llvm.loop !24

68:                                               ; preds = %55
  %69 = add nsw i32 %51, -8
  %70 = icmp sgt i32 %51, 16
  br i1 %70, label %50, label %71, !llvm.loop !25

71:                                               ; preds = %68, %31
  %72 = phi ptr [ %32, %31 ], [ %61, %68 ]
  %73 = phi ptr [ %33, %31 ], [ %65, %68 ]
  %74 = phi i32 [ %29, %31 ], [ %69, %68 ]
  %75 = load i64, ptr %7, align 1
  store i64 %75, ptr %0, align 4
  %76 = getelementptr inbounds %struct.IdeaCfbContext, ptr %0, i64 0, i32 2
  tail call fastcc void @ideaCipher(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %76)
  %77 = sub nsw i32 8, %74
  store i32 %77, ptr %5, align 4, !tbaa !5
  br label %78

78:                                               ; preds = %78, %71
  %79 = phi ptr [ %7, %71 ], [ %86, %78 ]
  %80 = phi ptr [ %72, %71 ], [ %84, %78 ]
  %81 = phi ptr [ %73, %71 ], [ %88, %78 ]
  %82 = phi i32 [ %74, %71 ], [ %89, %78 ]
  %83 = load i8, ptr %79, align 1, !tbaa !10
  %84 = getelementptr inbounds i8, ptr %80, i64 1
  %85 = load i8, ptr %80, align 1, !tbaa !10
  %86 = getelementptr inbounds i8, ptr %79, i64 1
  store i8 %85, ptr %79, align 1, !tbaa !10
  %87 = xor i8 %85, %83
  %88 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 %87, ptr %81, align 1, !tbaa !10
  %89 = add nsw i32 %82, -1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %78, !llvm.loop !26

91:                                               ; preds = %78, %15, %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ideaRandInit(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i64 [ 0, %3 ], [ %17, %5 ]
  %7 = phi ptr [ %1, %3 ], [ %16, %5 ]
  %8 = load i8, ptr %7, align 1, !tbaa !10
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i16
  %14 = or disjoint i16 %10, %13
  %15 = getelementptr inbounds i16, ptr %4, i64 %6
  store i16 %14, ptr %15, align 2, !tbaa !11
  %16 = getelementptr inbounds i8, ptr %7, i64 2
  %17 = add nuw nsw i64 %6, 1
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %5, !llvm.loop !13

19:                                               ; preds = %5, %19
  %20 = phi i32 [ %40, %19 ], [ 8, %5 ]
  %21 = phi i32 [ %24, %19 ], [ 0, %5 ]
  %22 = phi ptr [ %39, %19 ], [ %4, %5 ]
  %23 = add nuw nsw i32 %21, 1
  %24 = and i32 %23, 7
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %22, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !11
  %28 = add nuw nsw i32 %21, 2
  %29 = and i32 %28, 7
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds i16, ptr %22, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !11
  %33 = tail call i16 @llvm.fshl.i16(i16 %27, i16 %32, i16 9)
  %34 = or disjoint i32 %21, 8
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds i16, ptr %22, i64 %35
  store i16 %33, ptr %36, align 2, !tbaa !11
  %37 = and i32 %23, 8
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds i16, ptr %22, i64 %38
  %40 = add nuw nsw i32 %20, 1
  %41 = icmp eq i32 %40, 52
  br i1 %41, label %42, label %19, !llvm.loop !15

42:                                               ; preds = %19
  %43 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 2
  store i32 0, ptr %43, align 4, !tbaa !27
  %44 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 3
  %45 = load i64, ptr %2, align 1
  store i64 %45, ptr %44, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ideaRandState(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 4
  store i64 %5, ptr %2, align 1
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 0, %3 ], [ %18, %6 ]
  %8 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 1, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !11
  %10 = lshr i16 %9, 8
  %11 = trunc i16 %10 to i8
  %12 = shl nuw nsw i64 %7, 1
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  store i8 %11, ptr %13, align 1, !tbaa !10
  %14 = load i16, ptr %8, align 2, !tbaa !11
  %15 = trunc i16 %14 to i8
  %16 = or disjoint i64 %12, 1
  %17 = getelementptr inbounds i8, ptr %1, i64 %16
  store i8 %15, ptr %17, align 1, !tbaa !10
  %18 = add nuw nsw i64 %7, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %6, !llvm.loop !29

20:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ideaRandWash(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %5 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %4, align 16
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i64 [ 0, %2 ], [ %18, %7 ]
  %9 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !11
  %11 = lshr i16 %10, 8
  %12 = trunc i16 %11 to i8
  %13 = shl nuw nsw i64 %8, 1
  %14 = getelementptr inbounds i8, ptr %3, i64 %13
  store i8 %12, ptr %14, align 2, !tbaa !10
  %15 = trunc i16 %10 to i8
  %16 = or disjoint i64 %13, 1
  %17 = getelementptr inbounds i8, ptr %3, i64 %16
  store i8 %15, ptr %17, align 1, !tbaa !10
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %7, !llvm.loop !29

20:                                               ; preds = %7
  call void @ideaCfbEncrypt(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %3, i32 noundef 24)
  %21 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 1
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i64 [ 0, %20 ], [ %34, %22 ]
  %24 = phi ptr [ %3, %20 ], [ %33, %22 ]
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = zext i8 %25 to i16
  %27 = shl nuw i16 %26, 8
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !10
  %30 = zext i8 %29 to i16
  %31 = or disjoint i16 %27, %30
  %32 = getelementptr inbounds i16, ptr %21, i64 %23
  store i16 %31, ptr %32, align 2, !tbaa !11
  %33 = getelementptr inbounds i8, ptr %24, i64 2
  %34 = add nuw nsw i64 %23, 1
  %35 = icmp eq i64 %34, 8
  br i1 %35, label %36, label %22, !llvm.loop !13

36:                                               ; preds = %22, %36
  %37 = phi i32 [ %57, %36 ], [ 8, %22 ]
  %38 = phi i32 [ %41, %36 ], [ 0, %22 ]
  %39 = phi ptr [ %56, %36 ], [ %21, %22 ]
  %40 = add nuw nsw i32 %38, 1
  %41 = and i32 %40, 7
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds i16, ptr %39, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !11
  %45 = add nuw nsw i32 %38, 2
  %46 = and i32 %45, 7
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i16, ptr %39, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !11
  %50 = tail call i16 @llvm.fshl.i16(i16 %44, i16 %49, i16 9)
  %51 = or disjoint i32 %38, 8
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %39, i64 %52
  store i16 %50, ptr %53, align 2, !tbaa !11
  %54 = and i32 %40, 8
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i16, ptr %39, i64 %55
  %57 = add nuw nsw i32 %37, 1
  %58 = icmp eq i32 %57, 52
  br i1 %58, label %59, label %36, !llvm.loop !15

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 2
  store i32 0, ptr %60, align 4, !tbaa !27
  %61 = load i64, ptr %4, align 16
  store i64 %61, ptr %5, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ideaRandByte(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = alloca [8 x i8], align 8
  %3 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @randPoolGetBytes(ptr noundef nonnull %2, i32 noundef 8) #11
  br label %7

7:                                                ; preds = %6, %7
  %8 = phi i64 [ 0, %6 ], [ %15, %7 ]
  %9 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 3, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = xor i8 %12, %10
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 0, i64 %8
  store i8 %13, ptr %14, align 1, !tbaa !10
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %7, !llvm.loop !30

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 1
  call fastcc void @ideaCipher(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %18)
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %27, %19 ]
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 %20
  %24 = load i8, ptr %23, align 1, !tbaa !10
  %25 = xor i8 %24, %22
  %26 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 3, i64 %20
  store i8 %25, ptr %26, align 1, !tbaa !10
  %27 = add nuw nsw i64 %20, 1
  %28 = icmp eq i64 %27, 8
  br i1 %28, label %29, label %19, !llvm.loop !31

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.IdeaRandContext, ptr %0, i64 0, i32 3
  call fastcc void @ideaCipher(ptr noundef nonnull %30, ptr noundef nonnull %30, ptr noundef nonnull %18)
  store i64 0, ptr %2, align 8
  store i32 8, ptr %3, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %31

31:                                               ; preds = %29, %1
  %32 = load i32, ptr %3, align 4, !tbaa !27
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %3, align 4, !tbaa !27
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %0, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !10
  ret i8 %36
}

declare void @randPoolGetBytes(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 120}
!6 = !{!"IdeaCfbContext", !7, i64 0, !7, i64 8, !7, i64 16, !9, i64 120}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = !{!28, !9, i64 112}
!28 = !{!"IdeaRandContext", !7, i64 0, !7, i64 8, !9, i64 112, !7, i64 116}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
