; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@.str = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1.2 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i64 1732584193, ptr %0, align 8, !tbaa !7
  %2 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 1
  store i64 4023233417, ptr %2, align 8, !tbaa !7
  %3 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 2
  store i64 2562383102, ptr %3, align 8, !tbaa !7
  %4 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 3
  store i64 271733878, ptr %4, align 8, !tbaa !7
  %5 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 4
  store i64 3285377520, ptr %5, align 8, !tbaa !7
  %6 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !11
  %6 = sext i32 %2 to i64
  %7 = shl nsw i64 %6, 3
  %8 = xor i64 %5, -1
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !13
  br label %14

14:                                               ; preds = %10, %3
  %15 = add i64 %5, %7
  store i64 %15, ptr %4, align 8, !tbaa !11
  %16 = lshr i64 %6, 29
  %17 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !13
  %19 = add i64 %18, %16
  store i64 %19, ptr %17, align 8, !tbaa !13
  %20 = icmp sgt i32 %2, 63
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  br label %23

23:                                               ; preds = %39, %21
  %24 = phi i32 [ %2, %21 ], [ %41, %39 ]
  %25 = phi ptr [ %1, %21 ], [ %40, %39 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull align 1 dereferenceable(64) %25, i64 64, i1 false)
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %22, %23 ], [ %36, %26 ]
  %28 = phi i32 [ 0, %23 ], [ %37, %26 ]
  %29 = load i8, ptr %27, align 1, !tbaa !14
  %30 = getelementptr inbounds i8, ptr %27, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %32 = getelementptr inbounds i8, ptr %27, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !14
  %34 = getelementptr inbounds i8, ptr %27, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !14
  store i8 %35, ptr %27, align 1, !tbaa !14
  store i8 %33, ptr %30, align 1, !tbaa !14
  store i8 %31, ptr %32, align 1, !tbaa !14
  store i8 %29, ptr %34, align 1, !tbaa !14
  %36 = getelementptr inbounds i8, ptr %27, i64 8
  %37 = add nuw nsw i32 %28, 1
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %26, !llvm.loop !15

39:                                               ; preds = %26
  tail call fastcc void @sha_transform(ptr noundef %0)
  %40 = getelementptr inbounds i8, ptr %25, i64 64
  %41 = add nsw i32 %24, -64
  %42 = icmp sgt i32 %24, 127
  br i1 %42, label %23, label %43, !llvm.loop !17

43:                                               ; preds = %39, %14
  %44 = phi ptr [ %1, %14 ], [ %40, %39 ]
  %45 = phi i32 [ %2, %14 ], [ %41, %39 ]
  %46 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %47 = sext i32 %45 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %46, ptr align 1 %44, i64 %47, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha_transform(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = alloca [80 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %2) #9
  %3 = getelementptr i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !tbaa !7
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 16, %1 ], [ %22, %4 ]
  %6 = add nsw i64 %5, -3
  %7 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !7
  %9 = add nsw i64 %5, -8
  %10 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !7
  %12 = xor i64 %11, %8
  %13 = add nsw i64 %5, -14
  %14 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !7
  %16 = xor i64 %12, %15
  %17 = add nsw i64 %5, -16
  %18 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !7
  %20 = xor i64 %16, %19
  %21 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %5
  store i64 %20, ptr %21, align 8, !tbaa !7
  %22 = add nuw nsw i64 %5, 1
  %23 = icmp eq i64 %22, 80
  br i1 %23, label %24, label %4, !llvm.loop !18

24:                                               ; preds = %4
  %25 = load i64, ptr %0, align 8, !tbaa !7
  %26 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 1
  %27 = load i64, ptr %26, align 8, !tbaa !7
  %28 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 2
  %29 = load i64, ptr %28, align 8, !tbaa !7
  %30 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 3
  %31 = load i64, ptr %30, align 8, !tbaa !7
  %32 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 4
  %33 = load i64, ptr %32, align 8, !tbaa !7
  br label %34

34:                                               ; preds = %34, %24
  %35 = phi i64 [ 0, %24 ], [ %57, %34 ]
  %36 = phi i64 [ %33, %24 ], [ %37, %34 ]
  %37 = phi i64 [ %31, %24 ], [ %38, %34 ]
  %38 = phi i64 [ %29, %24 ], [ %56, %34 ]
  %39 = phi i64 [ %27, %24 ], [ %40, %34 ]
  %40 = phi i64 [ %25, %24 ], [ %53, %34 ]
  %41 = shl i64 %40, 5
  %42 = lshr i64 %40, 27
  %43 = or i64 %41, %42
  %44 = and i64 %38, %39
  %45 = xor i64 %39, -1
  %46 = and i64 %37, %45
  %47 = or i64 %46, %44
  %48 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %35
  %49 = load i64, ptr %48, align 8, !tbaa !7
  %50 = add i64 %43, 1518500249
  %51 = add i64 %50, %36
  %52 = add i64 %51, %47
  %53 = add i64 %52, %49
  %54 = shl i64 %39, 30
  %55 = lshr i64 %39, 2
  %56 = or i64 %54, %55
  %57 = add nuw nsw i64 %35, 1
  %58 = icmp eq i64 %57, 20
  br i1 %58, label %59, label %34, !llvm.loop !19

59:                                               ; preds = %59, %34
  %60 = phi i64 [ %80, %59 ], [ 20, %34 ]
  %61 = phi i64 [ %62, %59 ], [ %37, %34 ]
  %62 = phi i64 [ %63, %59 ], [ %38, %34 ]
  %63 = phi i64 [ %79, %59 ], [ %56, %34 ]
  %64 = phi i64 [ %65, %59 ], [ %40, %34 ]
  %65 = phi i64 [ %76, %59 ], [ %53, %34 ]
  %66 = shl i64 %65, 5
  %67 = lshr i64 %65, 27
  %68 = or i64 %66, %67
  %69 = xor i64 %63, %64
  %70 = xor i64 %69, %62
  %71 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %60
  %72 = load i64, ptr %71, align 8, !tbaa !7
  %73 = add i64 %68, 1859775393
  %74 = add i64 %73, %70
  %75 = add i64 %74, %61
  %76 = add i64 %75, %72
  %77 = shl i64 %64, 30
  %78 = lshr i64 %64, 2
  %79 = or i64 %77, %78
  %80 = add nuw nsw i64 %60, 1
  %81 = icmp eq i64 %80, 40
  br i1 %81, label %82, label %59, !llvm.loop !20

82:                                               ; preds = %82, %59
  %83 = phi i64 [ %105, %82 ], [ 40, %59 ]
  %84 = phi i64 [ %85, %82 ], [ %62, %59 ]
  %85 = phi i64 [ %86, %82 ], [ %63, %59 ]
  %86 = phi i64 [ %104, %82 ], [ %79, %59 ]
  %87 = phi i64 [ %88, %82 ], [ %65, %59 ]
  %88 = phi i64 [ %101, %82 ], [ %76, %59 ]
  %89 = shl i64 %88, 5
  %90 = lshr i64 %88, 27
  %91 = or i64 %89, %90
  %92 = or i64 %85, %86
  %93 = and i64 %92, %87
  %94 = and i64 %85, %86
  %95 = or i64 %93, %94
  %96 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %83
  %97 = load i64, ptr %96, align 8, !tbaa !7
  %98 = add i64 %91, 2400959708
  %99 = add i64 %98, %84
  %100 = add i64 %99, %95
  %101 = add i64 %100, %97
  %102 = shl i64 %87, 30
  %103 = lshr i64 %87, 2
  %104 = or i64 %102, %103
  %105 = add nuw nsw i64 %83, 1
  %106 = icmp eq i64 %105, 60
  br i1 %106, label %107, label %82, !llvm.loop !21

107:                                              ; preds = %107, %82
  %108 = phi i64 [ %128, %107 ], [ 60, %82 ]
  %109 = phi i64 [ %110, %107 ], [ %85, %82 ]
  %110 = phi i64 [ %111, %107 ], [ %86, %82 ]
  %111 = phi i64 [ %127, %107 ], [ %104, %82 ]
  %112 = phi i64 [ %113, %107 ], [ %88, %82 ]
  %113 = phi i64 [ %124, %107 ], [ %101, %82 ]
  %114 = shl i64 %113, 5
  %115 = lshr i64 %113, 27
  %116 = or i64 %114, %115
  %117 = xor i64 %111, %112
  %118 = xor i64 %117, %110
  %119 = getelementptr inbounds [80 x i64], ptr %2, i64 0, i64 %108
  %120 = load i64, ptr %119, align 8, !tbaa !7
  %121 = add i64 %116, 3395469782
  %122 = add i64 %121, %118
  %123 = add i64 %122, %109
  %124 = add i64 %123, %120
  %125 = shl i64 %112, 30
  %126 = lshr i64 %112, 2
  %127 = or i64 %125, %126
  %128 = add nuw nsw i64 %108, 1
  %129 = icmp eq i64 %128, 80
  br i1 %129, label %130, label %107, !llvm.loop !22

130:                                              ; preds = %107
  %131 = add i64 %124, %25
  store i64 %131, ptr %0, align 8, !tbaa !7
  %132 = add i64 %113, %27
  store i64 %132, ptr %26, align 8, !tbaa !7
  %133 = add i64 %127, %29
  store i64 %133, ptr %28, align 8, !tbaa !7
  %134 = add i64 %111, %31
  store i64 %134, ptr %30, align 8, !tbaa !7
  %135 = add i64 %110, %33
  store i64 %135, ptr %32, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha_final(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !13
  %6 = trunc i64 %3 to i32
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 63
  %9 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %10 = zext nneg i32 %8 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  store i8 -128, ptr %11, align 1, !tbaa !14
  %12 = icmp ugt i32 %8, 55
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr i8, ptr %9, i64 %13
  %15 = getelementptr i8, ptr %14, i64 1
  br i1 %12, label %16, label %33

16:                                               ; preds = %1
  %17 = xor i32 %8, 63
  %18 = zext nneg i32 %17 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %15, i8 0, i64 %18, i1 false)
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %9, %16 ], [ %29, %19 ]
  %21 = phi i32 [ 0, %16 ], [ %30, %19 ]
  %22 = load i8, ptr %20, align 1, !tbaa !14
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %25 = getelementptr inbounds i8, ptr %20, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !14
  %27 = getelementptr inbounds i8, ptr %20, i64 3
  %28 = load i8, ptr %27, align 1, !tbaa !14
  store i8 %28, ptr %20, align 1, !tbaa !14
  store i8 %26, ptr %23, align 1, !tbaa !14
  store i8 %24, ptr %25, align 1, !tbaa !14
  store i8 %22, ptr %27, align 1, !tbaa !14
  %29 = getelementptr inbounds i8, ptr %20, i64 8
  %30 = add nuw nsw i32 %21, 1
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %19, !llvm.loop !15

32:                                               ; preds = %19
  tail call fastcc void @sha_transform(ptr noundef %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  br label %36

33:                                               ; preds = %1
  %34 = sub nuw nsw i32 55, %8
  %35 = zext nneg i32 %34 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %15, i8 0, i64 %35, i1 false)
  br label %36

36:                                               ; preds = %33, %32
  br label %37

37:                                               ; preds = %37, %36
  %38 = phi ptr [ %47, %37 ], [ %9, %36 ]
  %39 = phi i32 [ %48, %37 ], [ 0, %36 ]
  %40 = load i8, ptr %38, align 1, !tbaa !14
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !14
  %43 = getelementptr inbounds i8, ptr %38, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !14
  %45 = getelementptr inbounds i8, ptr %38, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !14
  store i8 %46, ptr %38, align 1, !tbaa !14
  store i8 %44, ptr %41, align 1, !tbaa !14
  store i8 %42, ptr %43, align 1, !tbaa !14
  store i8 %40, ptr %45, align 1, !tbaa !14
  %47 = getelementptr inbounds i8, ptr %38, i64 8
  %48 = add nuw nsw i32 %39, 1
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %37, !llvm.loop !15

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 14
  store i64 %5, ptr %51, align 8, !tbaa !7
  %52 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 15
  store i64 %3, ptr %52, align 8, !tbaa !7
  tail call fastcc void @sha_transform(ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sha_stream(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #9
  store i64 1732584193, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 1
  store i64 4023233417, ptr %4, align 8, !tbaa !7
  %5 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 2
  store i64 2562383102, ptr %5, align 8, !tbaa !7
  %6 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 3
  store i64 271733878, ptr %6, align 8, !tbaa !7
  %7 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 4
  store i64 3285377520, ptr %7, align 8, !tbaa !7
  %8 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %52, %2
  %14 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, 0
  %17 = load i64, ptr %8, align 8, !tbaa !11
  br i1 %16, label %18, label %56

18:                                               ; preds = %13
  %19 = and i64 %14, 4294967295
  %20 = shl nuw nsw i64 %19, 3
  %21 = xor i64 %17, -1
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i64, ptr %9, align 8, !tbaa !13
  %25 = add i64 %24, 1
  store i64 %25, ptr %9, align 8, !tbaa !13
  br label %26

26:                                               ; preds = %23, %18
  %27 = add i64 %17, %20
  store i64 %27, ptr %8, align 8, !tbaa !11
  %28 = lshr i64 %19, 29
  %29 = load i64, ptr %10, align 8, !tbaa !13
  %30 = add i64 %29, %28
  store i64 %30, ptr %10, align 8, !tbaa !13
  %31 = icmp sgt i32 %15, 63
  br i1 %31, label %32, label %52

32:                                               ; preds = %48, %26
  %33 = phi i32 [ %50, %48 ], [ %15, %26 ]
  %34 = phi ptr [ %49, %48 ], [ %3, %26 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 1 dereferenceable(64) %34, i64 64, i1 false)
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %11, %32 ], [ %45, %35 ]
  %37 = phi i32 [ 0, %32 ], [ %46, %35 ]
  %38 = load i8, ptr %36, align 1, !tbaa !14
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !14
  %41 = getelementptr inbounds i8, ptr %36, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !14
  %43 = getelementptr inbounds i8, ptr %36, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !14
  store i8 %44, ptr %36, align 1, !tbaa !14
  store i8 %42, ptr %39, align 1, !tbaa !14
  store i8 %40, ptr %41, align 1, !tbaa !14
  store i8 %38, ptr %43, align 1, !tbaa !14
  %45 = getelementptr inbounds i8, ptr %36, i64 8
  %46 = add nuw nsw i32 %37, 1
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %35, !llvm.loop !15

48:                                               ; preds = %35
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  %49 = getelementptr inbounds i8, ptr %34, i64 64
  %50 = add nsw i32 %33, -64
  %51 = icmp sgt i32 %33, 127
  br i1 %51, label %32, label %52, !llvm.loop !17

52:                                               ; preds = %48, %26
  %53 = phi ptr [ %3, %26 ], [ %49, %48 ]
  %54 = phi i32 [ %15, %26 ], [ %50, %48 ]
  %55 = sext i32 %54 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %12, ptr nonnull align 1 %53, i64 %55, i1 false)
  br label %13, !llvm.loop !23

56:                                               ; preds = %13
  %57 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !13
  %59 = trunc i64 %17 to i32
  %60 = lshr i32 %59, 3
  %61 = and i32 %60, 63
  %62 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %63 = zext nneg i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  store i8 -128, ptr %64, align 1, !tbaa !14
  %65 = icmp ugt i32 %61, 55
  %66 = zext nneg i32 %61 to i64
  %67 = getelementptr i8, ptr %62, i64 %66
  %68 = getelementptr i8, ptr %67, i64 1
  br i1 %65, label %69, label %86

69:                                               ; preds = %56
  %70 = xor i32 %61, 63
  %71 = zext nneg i32 %70 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %68, i8 0, i64 %71, i1 false)
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi ptr [ %62, %69 ], [ %82, %72 ]
  %74 = phi i32 [ 0, %69 ], [ %83, %72 ]
  %75 = load i8, ptr %73, align 1, !tbaa !14
  %76 = getelementptr inbounds i8, ptr %73, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !14
  %78 = getelementptr inbounds i8, ptr %73, i64 2
  %79 = load i8, ptr %78, align 1, !tbaa !14
  %80 = getelementptr inbounds i8, ptr %73, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !14
  store i8 %81, ptr %73, align 1, !tbaa !14
  store i8 %79, ptr %76, align 1, !tbaa !14
  store i8 %77, ptr %78, align 1, !tbaa !14
  store i8 %75, ptr %80, align 1, !tbaa !14
  %82 = getelementptr inbounds i8, ptr %73, i64 8
  %83 = add nuw nsw i32 %74, 1
  %84 = icmp eq i32 %83, 8
  br i1 %84, label %85, label %72, !llvm.loop !15

85:                                               ; preds = %72
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %62, i8 0, i64 56, i1 false)
  br label %89

86:                                               ; preds = %56
  %87 = sub nuw nsw i32 55, %61
  %88 = zext nneg i32 %87 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %68, i8 0, i64 %88, i1 false)
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %90, %89
  %91 = phi ptr [ %100, %90 ], [ %62, %89 ]
  %92 = phi i32 [ %101, %90 ], [ 0, %89 ]
  %93 = load i8, ptr %91, align 1, !tbaa !14
  %94 = getelementptr inbounds i8, ptr %91, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !14
  %96 = getelementptr inbounds i8, ptr %91, i64 2
  %97 = load i8, ptr %96, align 1, !tbaa !14
  %98 = getelementptr inbounds i8, ptr %91, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !14
  store i8 %99, ptr %91, align 1, !tbaa !14
  store i8 %97, ptr %94, align 1, !tbaa !14
  store i8 %95, ptr %96, align 1, !tbaa !14
  store i8 %93, ptr %98, align 1, !tbaa !14
  %100 = getelementptr inbounds i8, ptr %91, i64 8
  %101 = add nuw nsw i32 %92, 1
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %103, label %90, !llvm.loop !15

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 14
  store i64 %58, ptr %104, align 8, !tbaa !7
  %105 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 15
  store i64 %17, ptr %105, align 8, !tbaa !7
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @sha_print(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8, !tbaa !7
  %3 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 1
  %4 = load i64, ptr %3, align 8, !tbaa !7
  %5 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !7
  %7 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 3
  %8 = load i64, ptr %7, align 8, !tbaa !7
  %9 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 4
  %10 = load i64, ptr %9, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %2, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = alloca %struct.SHA_INFO, align 8
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %3) #9
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = add nsw i32 %0, -1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr @stdin, align 8, !tbaa !24
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef %9) #9
  call void @sha_print(ptr noundef nonnull %3) #9
  br label %25

10:                                               ; preds = %22, %5
  %11 = phi i32 [ %23, %22 ], [ %6, %5 ]
  %12 = phi ptr [ %13, %22 ], [ %1, %5 ]
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = call noalias ptr @fopen(ptr noundef %14, ptr noundef nonnull @.str.1)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr %13, align 8, !tbaa !24
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.2, ptr noundef %18)
  br label %22

20:                                               ; preds = %10
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef nonnull %15) #9
  call void @sha_print(ptr noundef nonnull %3) #9
  %21 = call i32 @fclose(ptr noundef nonnull %15)
  br label %22

22:                                               ; preds = %20, %17
  %23 = add nsw i32 %11, -1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %10, !llvm.loop !26

25:                                               ; preds = %22, %8, %5
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 40}
!12 = !{!"", !9, i64 0, !8, i64 40, !8, i64 48, !9, i64 56}
!13 = !{!12, !8, i64 48}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !9, i64 0}
!26 = distinct !{!26, !16}
