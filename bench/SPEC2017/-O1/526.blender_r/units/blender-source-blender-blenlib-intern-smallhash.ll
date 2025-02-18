; ModuleID = 'blender/source/blender/blenlib/intern/smallhash.c'
source_filename = "blender/source/blender/blenlib/intern/smallhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SmallHash = type { i32, i32, i32, ptr, [131 x %struct.SmallHashEntry] }
%struct.SmallHashEntry = type { i64, ptr }
%struct.SmallHashIter = type { ptr, i32 }

@hashsizes = external local_unnamed_addr constant [0 x i32], align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_smallhash_init_ex = private unnamed_addr constant [22 x i8] c"BLI_smallhash_init_ex\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.smallhash_resize_buckets = private unnamed_addr constant [25 x i8] c"smallhash_resize_buckets\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_smallhash_init_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 2
  store i32 2, ptr %4, align 8, !tbaa !40
  %5 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @hashsizes, i64 0, i64 2), align 4, !tbaa !41
  store i32 %5, ptr %0, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !43
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = lshr i32 %1, 1
  %11 = add i32 %10, %1
  %12 = load i32, ptr %0, align 8, !tbaa !42
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, ptr %4, align 8, !tbaa !40
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %15, %14 ], [ %18, %16 ]
  %18 = add i32 %17, 1
  store i32 %18, ptr %4, align 8, !tbaa !40
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @hashsizes, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !41
  store i32 %21, ptr %0, align 8, !tbaa !42
  %22 = icmp ugt i32 %11, %21
  br i1 %22, label %16, label %23, !llvm.loop !44

23:                                               ; preds = %16, %9
  %24 = phi i32 [ %12, %9 ], [ %21, %16 ]
  %25 = icmp ugt i32 %24, 131
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %28 = zext i32 %24 to i64
  %29 = shl nuw nsw i64 %28, 4
  %30 = tail call ptr %27(i64 noundef %29, ptr noundef nonnull @__func__.BLI_smallhash_init_ex) #7
  store ptr %30, ptr %7, align 8, !tbaa !43
  br label %31

31:                                               ; preds = %23, %26, %2
  %32 = load i32, ptr %0, align 8, !tbaa !42
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 8, !tbaa !43
  %36 = zext i32 %32 to i64
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i64 [ 0, %34 ], [ %41, %37 ]
  %39 = getelementptr inbounds %struct.SmallHashEntry, ptr %35, i64 %38
  store i64 -1, ptr %39, align 8, !tbaa !48
  %40 = getelementptr inbounds %struct.SmallHashEntry, ptr %35, i64 %38, i32 1
  store ptr inttoptr (i64 -2 to ptr), ptr %40, align 8, !tbaa !51
  %41 = add nuw nsw i64 %38, 1
  %42 = icmp eq i64 %41, %36
  br i1 %42, label %43, label %37, !llvm.loop !52

43:                                               ; preds = %37, %31
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @BLI_smallhash_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !34
  %3 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 2
  store i32 2, ptr %3, align 8, !tbaa !40
  %4 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @hashsizes, i64 0, i64 2), align 4, !tbaa !41
  store i32 %4, ptr %0, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !43
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %14, %10 ]
  %12 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %11
  store i64 -1, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %11, i32 1
  store ptr inttoptr (i64 -2 to ptr), ptr %13, align 8, !tbaa !51
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, %9
  br i1 %15, label %16, label %10, !llvm.loop !52

16:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_smallhash_release(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 4
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %7(ptr noundef %3) #7
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_smallhash_insert(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !34
  %7 = load i32, ptr %0, align 8, !tbaa !42
  %8 = lshr i32 %6, 1
  %9 = add i32 %8, %6
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !40
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !40
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @hashsizes, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !41
  tail call fastcc void @smallhash_resize_buckets(ptr noundef nonnull %0, i32 noundef %17)
  br label %18

18:                                               ; preds = %11, %3
  %19 = trunc i64 %1 to i32
  %20 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load i32, ptr %0, align 8, !tbaa !42
  %23 = urem i32 %19, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.SmallHashEntry, ptr %21, i64 %24, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = icmp eq ptr %26, inttoptr (i64 -2 to ptr)
  br i1 %27, label %39, label %28

28:                                               ; preds = %18, %28
  %29 = phi i32 [ %32, %28 ], [ 1, %18 ]
  %30 = phi i32 [ %33, %28 ], [ %19, %18 ]
  %31 = shl i32 %29, 1
  %32 = or disjoint i32 %31, 1
  %33 = add i32 %32, %30
  %34 = urem i32 %33, %22
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.SmallHashEntry, ptr %21, i64 %35, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = icmp eq ptr %37, inttoptr (i64 -2 to ptr)
  br i1 %38, label %39, label %28, !llvm.loop !53

39:                                               ; preds = %28, %18
  %40 = phi i64 [ %24, %18 ], [ %35, %28 ]
  %41 = phi ptr [ %25, %18 ], [ %36, %28 ]
  %42 = getelementptr inbounds %struct.SmallHashEntry, ptr %21, i64 %40
  store i64 %1, ptr %42, align 8, !tbaa !48
  store ptr %2, ptr %41, align 8, !tbaa !51
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @smallhash_resize_buckets(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load i32, ptr %0, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 4
  %7 = icmp eq ptr %4, %6
  %8 = icmp ult i32 %1, 132
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = zext i32 %5 to i64
  %11 = shl nuw nsw i64 %10, 4
  %12 = alloca i8, i64 %11, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %12, ptr align 8 %4, i64 %11, i1 false)
  br label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %15 = zext i32 %1 to i64
  %16 = shl nuw nsw i64 %15, 4
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @__func__.smallhash_resize_buckets) #7
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %17, %13 ], [ %6, %9 ]
  %20 = phi ptr [ %4, %13 ], [ %12, %9 ]
  store ptr %19, ptr %3, align 8, !tbaa !43
  store i32 %1, ptr %0, align 8, !tbaa !42
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = zext i32 %1 to i64
  br label %28

24:                                               ; preds = %28, %18
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %66, label %26

26:                                               ; preds = %24
  %27 = zext i32 %5 to i64
  br label %34

28:                                               ; preds = %22, %28
  %29 = phi i64 [ 0, %22 ], [ %32, %28 ]
  %30 = getelementptr inbounds %struct.SmallHashEntry, ptr %19, i64 %29
  store i64 -1, ptr %30, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.SmallHashEntry, ptr %19, i64 %29, i32 1
  store ptr inttoptr (i64 -2 to ptr), ptr %31, align 8, !tbaa !51
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, %23
  br i1 %33, label %24, label %28, !llvm.loop !52

34:                                               ; preds = %26, %63
  %35 = phi i64 [ 0, %26 ], [ %64, %63 ]
  %36 = getelementptr inbounds %struct.SmallHashEntry, ptr %20, i64 %35, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = icmp eq ptr %37, inttoptr (i64 -2 to ptr)
  br i1 %38, label %63, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.SmallHashEntry, ptr %20, i64 %35
  %41 = load i64, ptr %40, align 8, !tbaa !48
  %42 = trunc i64 %41 to i32
  %43 = urem i32 %42, %1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.SmallHashEntry, ptr %19, i64 %44, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = icmp eq ptr %46, inttoptr (i64 -2 to ptr)
  br i1 %47, label %59, label %48

48:                                               ; preds = %39, %48
  %49 = phi i32 [ %52, %48 ], [ 1, %39 ]
  %50 = phi i32 [ %53, %48 ], [ %42, %39 ]
  %51 = shl i32 %49, 1
  %52 = or disjoint i32 %51, 1
  %53 = add i32 %52, %50
  %54 = urem i32 %53, %1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.SmallHashEntry, ptr %19, i64 %55, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !51
  %58 = icmp eq ptr %57, inttoptr (i64 -2 to ptr)
  br i1 %58, label %59, label %48, !llvm.loop !53

59:                                               ; preds = %48, %39
  %60 = phi i64 [ %44, %39 ], [ %55, %48 ]
  %61 = phi ptr [ %45, %39 ], [ %56, %48 ]
  %62 = getelementptr inbounds %struct.SmallHashEntry, ptr %19, i64 %60
  store i64 %41, ptr %62, align 8, !tbaa !48
  store ptr %37, ptr %61, align 8, !tbaa !51
  br label %63

63:                                               ; preds = %34, %59
  %64 = add nuw nsw i64 %35, 1
  %65 = icmp eq i64 %64, %27
  br i1 %65, label %66, label %34, !llvm.loop !54

66:                                               ; preds = %63, %24
  br i1 %7, label %69, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %68(ptr noundef %20) #7
  br label %69

69:                                               ; preds = %67, %66
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_smallhash_lookup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load i32, ptr %0, align 8, !tbaa !42
  %7 = urem i32 %3, %6
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %10, inttoptr (i64 -2 to ptr)
  br i1 %11, label %28, label %12

12:                                               ; preds = %2, %19
  %13 = phi i64 [ %24, %19 ], [ %8, %2 ]
  %14 = phi i32 [ %21, %19 ], [ 1, %2 ]
  %15 = phi i32 [ %22, %19 ], [ %3, %2 ]
  %16 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !48
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = shl i32 %14, 1
  %21 = or disjoint i32 %20, 1
  %22 = add i32 %21, %15
  %23 = urem i32 %22, %6
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %24, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = icmp eq ptr %26, inttoptr (i64 -2 to ptr)
  br i1 %27, label %28, label %12, !llvm.loop !55

28:                                               ; preds = %12, %19, %2
  %29 = phi ptr [ null, %2 ], [ %16, %12 ], [ null, %19 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.SmallHashEntry, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  br label %34

34:                                               ; preds = %28, %31
  %35 = phi ptr [ %33, %31 ], [ null, %28 ]
  ret ptr %35
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_smallhash_lookup_p(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load i32, ptr %0, align 8, !tbaa !42
  %7 = urem i32 %3, %6
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %10, inttoptr (i64 -2 to ptr)
  br i1 %11, label %28, label %12

12:                                               ; preds = %2, %19
  %13 = phi i64 [ %24, %19 ], [ %8, %2 ]
  %14 = phi i32 [ %21, %19 ], [ 1, %2 ]
  %15 = phi i32 [ %22, %19 ], [ %3, %2 ]
  %16 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !48
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = shl i32 %14, 1
  %21 = or disjoint i32 %20, 1
  %22 = add i32 %21, %15
  %23 = urem i32 %22, %6
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %24, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = icmp eq ptr %26, inttoptr (i64 -2 to ptr)
  br i1 %27, label %28, label %12, !llvm.loop !55

28:                                               ; preds = %12, %19, %2
  %29 = phi ptr [ null, %2 ], [ %16, %12 ], [ null, %19 ]
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.SmallHashEntry, ptr %29, i64 0, i32 1
  %32 = select i1 %30, ptr null, ptr %31
  ret ptr %32
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_smallhash_haskey(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load i32, ptr %0, align 8, !tbaa !42
  %7 = urem i32 %3, %6
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp ne ptr %10, inttoptr (i64 -2 to ptr)
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %8
  %14 = load i64, ptr %13, align 8, !tbaa !48
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %31, label %20

16:                                               ; preds = %20
  %17 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %27
  %18 = load i64, ptr %17, align 8, !tbaa !48
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %31, label %20, !llvm.loop !55

20:                                               ; preds = %12, %16
  %21 = phi i32 [ %25, %16 ], [ %3, %12 ]
  %22 = phi i32 [ %24, %16 ], [ 1, %12 ]
  %23 = shl i32 %22, 1
  %24 = or disjoint i32 %23, 1
  %25 = add i32 %24, %21
  %26 = urem i32 %25, %6
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.SmallHashEntry, ptr %5, i64 %27, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = icmp ne ptr %29, inttoptr (i64 -2 to ptr)
  br i1 %30, label %16, label %31, !llvm.loop !55

31:                                               ; preds = %20, %16, %12, %2
  %32 = phi i1 [ %11, %2 ], [ %11, %12 ], [ %30, %16 ], [ %30, %20 ]
  %33 = zext i1 %32 to i8
  ret i8 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_smallhash_count(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !34
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_smallhash_iternext(ptr nocapture noundef %0, ptr noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.SmallHashIter, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %0, align 8, !tbaa !56
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = load i32, ptr %3, align 8, !tbaa !58
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SmallHash, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %8, %24
  %12 = phi i32 [ %6, %8 ], [ %25, %24 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.SmallHashEntry, ptr %10, i64 %13, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, inttoptr (i64 -2 to ptr)
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = icmp eq ptr %1, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.SmallHashEntry, ptr %10, i64 %13
  %21 = load i64, ptr %20, align 8, !tbaa !48
  store i64 %21, ptr %1, align 8, !tbaa !59
  br label %22

22:                                               ; preds = %19, %17
  %23 = add i32 %12, 1
  store i32 %23, ptr %3, align 8, !tbaa !58
  br label %27

24:                                               ; preds = %11
  %25 = add nuw i32 %12, 1
  store i32 %25, ptr %3, align 8, !tbaa !58
  %26 = icmp eq i32 %25, %5
  br i1 %26, label %27, label %11, !llvm.loop !60

27:                                               ; preds = %24, %2, %22
  %28 = phi ptr [ %15, %22 ], [ null, %2 ], [ null, %24 ]
  ret ptr %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_smallhash_iternew(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #5 {
  store ptr %0, ptr %1, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.SmallHashIter, ptr %1, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !58
  %5 = load i32, ptr %0, align 8, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SmallHash, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = zext i32 %5 to i64
  br label %11

11:                                               ; preds = %24, %7
  %12 = phi i64 [ %25, %24 ], [ 0, %7 ]
  %13 = getelementptr inbounds %struct.SmallHashEntry, ptr %9, i64 %12, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, inttoptr (i64 -2 to ptr)
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = trunc i64 %12 to i32
  %18 = icmp eq ptr %2, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.SmallHashEntry, ptr %9, i64 %12
  %21 = load i64, ptr %20, align 8, !tbaa !48
  store i64 %21, ptr %2, align 8, !tbaa !59
  br label %22

22:                                               ; preds = %19, %16
  %23 = add i32 %17, 1
  store i32 %23, ptr %4, align 8, !tbaa !58
  br label %28

24:                                               ; preds = %11
  %25 = add nuw nsw i64 %12, 1
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %4, align 8, !tbaa !58
  %27 = icmp eq i64 %25, %10
  br i1 %27, label %28, label %11, !llvm.loop !60

28:                                               ; preds = %24, %3, %22
  %29 = phi ptr [ %14, %22 ], [ null, %3 ], [ null, %24 ]
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

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
!34 = !{!35, !36, i64 4}
!35 = !{!"SmallHash", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !37, i64 24}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!35, !36, i64 8}
!41 = !{!36, !36, i64 0}
!42 = !{!35, !36, i64 0}
!43 = !{!35, !39, i64 16}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!39, !39, i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"", !50, i64 0, !39, i64 8}
!50 = !{!"long", !37, i64 0}
!51 = !{!49, !39, i64 8}
!52 = distinct !{!52, !45, !46}
!53 = distinct !{!53, !45, !46}
!54 = distinct !{!54, !45, !46}
!55 = distinct !{!55, !45, !46}
!56 = !{!57, !39, i64 0}
!57 = !{!"", !39, i64 0, !36, i64 8}
!58 = !{!57, !36, i64 8}
!59 = !{!50, !50, i64 0}
!60 = distinct !{!60, !45, !46}
