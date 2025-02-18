; ModuleID = 'blender/source/blender/blenlib/intern/edgehash.c'
source_filename = "blender/source/blender/blenlib/intern/edgehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EdgeHash = type { ptr, ptr, i32, i32, i32, i32 }
%struct.EdgeEntry = type { ptr, i32, i32, ptr }
%struct.EdgeHashIterator = type { ptr, ptr, i32 }

@_ehash_hashsizes = internal unnamed_addr constant [29 x i32] [i32 1, i32 3, i32 5, i32 11, i32 17, i32 37, i32 67, i32 131, i32 257, i32 521, i32 1031, i32 2053, i32 4099, i32 8209, i32 16411, i32 32771, i32 65537, i32 131101, i32 262147, i32 524309, i32 1048583, i32 2097169, i32 4194319, i32 8388617, i32 16777259, i32 33554467, i32 67108879, i32 134217757, i32 268435459], align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"eh buckets\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"eh iter\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_edgehash_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 2
  store i32 1, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 5
  store i32 0, ptr %8, align 4, !tbaa !43
  %9 = icmp ugt i32 %1, 3
  br i1 %9, label %10, label %19

10:                                               ; preds = %2, %10
  %11 = phi i32 [ %12, %10 ], [ 0, %2 ]
  %12 = add i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = mul i32 %15, 3
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %10, label %18, !llvm.loop !45

18:                                               ; preds = %10
  store i32 %12, ptr %7, align 8, !tbaa !42
  store i32 %15, ptr %5, align 8, !tbaa !38
  br label %19

19:                                               ; preds = %2, %18
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = load i32, ptr %5, align 8, !tbaa !38
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str) #7
  store ptr %24, ptr %4, align 8, !tbaa !48
  %25 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef %1, i32 noundef 512, i32 noundef 0) #7
  %26 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !49
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_edgehash_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 32, ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 2
  store i32 1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !43
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 8, ptr noundef nonnull @.str) #7
  store ptr %9, ptr %3, align 8, !tbaa !48
  %10 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 0, i32 noundef 512, i32 noundef 0) #7
  %11 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_edgehash_insert(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %7 = mul i32 %6, 65
  %8 = mul i32 %5, 31
  %9 = xor i32 %7, %8
  %10 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = urem i32 %9, %11
  %13 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = tail call ptr @BLI_mempool_alloc(ptr noundef %14) #7
  %16 = load ptr, ptr %0, align 8, !tbaa !48
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  store ptr %19, ptr %15, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.EdgeEntry, ptr %15, i64 0, i32 1
  store i32 %6, ptr %20, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.EdgeEntry, ptr %15, i64 0, i32 2
  store i32 %5, ptr %21, align 4, !tbaa !53
  %22 = getelementptr inbounds %struct.EdgeEntry, ptr %15, i64 0, i32 3
  store ptr %3, ptr %22, align 8, !tbaa !54
  store ptr %15, ptr %18, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !41
  %26 = load i32, ptr %10, align 8, !tbaa !38
  %27 = mul i32 %26, 3
  %28 = icmp ult i32 %27, %25
  br i1 %28, label %29, label %71

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !42
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !42
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !44
  %36 = load ptr, ptr %0, align 8, !tbaa !48
  store i32 %35, ptr %10, align 8, !tbaa !38
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %38 = zext i32 %35 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str) #7
  %41 = icmp eq i32 %26, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %29
  %43 = zext i32 %26 to i64
  br label %44

44:                                               ; preds = %42, %66
  %45 = phi i64 [ 0, %42 ], [ %67, %66 ]
  %46 = getelementptr inbounds ptr, ptr %36, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %10, align 8, !tbaa !38
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi ptr [ %47, %49 ], [ %61, %51 ]
  %53 = getelementptr inbounds %struct.EdgeEntry, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !52
  %55 = getelementptr inbounds %struct.EdgeEntry, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !53
  %57 = mul i32 %54, 65
  %58 = mul i32 %56, 31
  %59 = xor i32 %58, %57
  %60 = urem i32 %59, %50
  %61 = load ptr, ptr %52, align 8, !tbaa !50
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds ptr, ptr %40, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  store ptr %64, ptr %52, align 8, !tbaa !50
  store ptr %52, ptr %63, align 8, !tbaa !34
  %65 = icmp eq ptr %61, null
  br i1 %65, label %66, label %51, !llvm.loop !55

66:                                               ; preds = %51, %44
  %67 = add nuw nsw i64 %45, 1
  %68 = icmp eq i64 %67, %43
  br i1 %68, label %69, label %44, !llvm.loop !56

69:                                               ; preds = %66, %29
  store ptr %40, ptr %0, align 8, !tbaa !48
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %70(ptr noundef %36) #7
  br label %71

71:                                               ; preds = %4, %69
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_edgehash_reinsert(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %7 = mul i32 %6, 65
  %8 = mul i32 %5, 31
  %9 = xor i32 %7, %8
  %10 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = urem i32 %9, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !48
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %4, %27
  %19 = phi ptr [ %28, %27 ], [ %16, %4 ]
  %20 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i32 %21, %6
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = icmp eq i32 %25, %5
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !57

30:                                               ; preds = %23, %27, %4
  %31 = phi ptr [ null, %4 ], [ %19, %23 ], [ null, %27 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.EdgeEntry, ptr %31, i64 0, i32 3
  store ptr %3, ptr %34, align 8, !tbaa !54
  br label %93

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %38 = tail call ptr @BLI_mempool_alloc(ptr noundef %37) #7
  %39 = load ptr, ptr %0, align 8, !tbaa !48
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  store ptr %41, ptr %38, align 8, !tbaa !50
  %42 = getelementptr inbounds %struct.EdgeEntry, ptr %38, i64 0, i32 1
  store i32 %6, ptr %42, align 8, !tbaa !52
  %43 = getelementptr inbounds %struct.EdgeEntry, ptr %38, i64 0, i32 2
  store i32 %5, ptr %43, align 4, !tbaa !53
  %44 = getelementptr inbounds %struct.EdgeEntry, ptr %38, i64 0, i32 3
  store ptr %3, ptr %44, align 8, !tbaa !54
  store ptr %38, ptr %40, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !41
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4, !tbaa !41
  %48 = load i32, ptr %10, align 8, !tbaa !38
  %49 = mul i32 %48, 3
  %50 = icmp ult i32 %49, %47
  br i1 %50, label %51, label %93

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !42
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8, !tbaa !42
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !44
  %58 = load ptr, ptr %0, align 8, !tbaa !48
  store i32 %57, ptr %10, align 8, !tbaa !38
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %60 = zext i32 %57 to i64
  %61 = shl nuw nsw i64 %60, 3
  %62 = tail call ptr %59(i64 noundef %61, ptr noundef nonnull @.str) #7
  %63 = icmp eq i32 %48, 0
  br i1 %63, label %91, label %64

64:                                               ; preds = %51
  %65 = zext i32 %48 to i64
  br label %66

66:                                               ; preds = %64, %88
  %67 = phi i64 [ 0, %64 ], [ %89, %88 ]
  %68 = getelementptr inbounds ptr, ptr %58, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %88, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %10, align 8, !tbaa !38
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi ptr [ %69, %71 ], [ %83, %73 ]
  %75 = getelementptr inbounds %struct.EdgeEntry, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !52
  %77 = getelementptr inbounds %struct.EdgeEntry, ptr %74, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !53
  %79 = mul i32 %76, 65
  %80 = mul i32 %78, 31
  %81 = xor i32 %80, %79
  %82 = urem i32 %81, %72
  %83 = load ptr, ptr %74, align 8, !tbaa !50
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds ptr, ptr %62, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  store ptr %86, ptr %74, align 8, !tbaa !50
  store ptr %74, ptr %85, align 8, !tbaa !34
  %87 = icmp eq ptr %83, null
  br i1 %87, label %88, label %73, !llvm.loop !55

88:                                               ; preds = %73, %66
  %89 = add nuw nsw i64 %67, 1
  %90 = icmp eq i64 %89, %65
  br i1 %90, label %91, label %66, !llvm.loop !56

91:                                               ; preds = %88, %51
  store ptr %62, ptr %0, align 8, !tbaa !48
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %92(ptr noundef %58) #7
  br label %93

93:                                               ; preds = %91, %35, %33
  %94 = phi i8 [ 0, %33 ], [ 1, %35 ], [ 1, %91 ]
  ret i8 %94
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_edgehash_lookup_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %6 = mul i32 %5, 65
  %7 = mul i32 %4, 31
  %8 = xor i32 %6, %7
  %9 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = urem i32 %8, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !48
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %3, %26
  %18 = phi ptr [ %27, %26 ], [ %15, %3 ]
  %19 = getelementptr inbounds %struct.EdgeEntry, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = icmp eq i32 %20, %5
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.EdgeEntry, ptr %18, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !53
  %25 = icmp eq i32 %24, %4
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %17
  %27 = load ptr, ptr %18, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !57

29:                                               ; preds = %22, %26, %3
  %30 = phi ptr [ null, %3 ], [ %18, %22 ], [ null, %26 ]
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.EdgeEntry, ptr %30, i64 0, i32 3
  %33 = select i1 %31, ptr null, ptr %32
  ret ptr %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_edgehash_lookup(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %6 = mul i32 %5, 65
  %7 = mul i32 %4, 31
  %8 = xor i32 %6, %7
  %9 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = urem i32 %8, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !48
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %3, %26
  %18 = phi ptr [ %27, %26 ], [ %15, %3 ]
  %19 = getelementptr inbounds %struct.EdgeEntry, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = icmp eq i32 %20, %5
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.EdgeEntry, ptr %18, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !53
  %25 = icmp eq i32 %24, %4
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %17
  %27 = load ptr, ptr %18, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !57

29:                                               ; preds = %22, %26, %3
  %30 = phi ptr [ null, %3 ], [ %18, %22 ], [ null, %26 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.EdgeEntry, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  br label %35

35:                                               ; preds = %29, %32
  %36 = phi ptr [ %34, %32 ], [ null, %29 ]
  ret ptr %36
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_edgehash_lookup_default(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef readnone %3) local_unnamed_addr #1 {
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %7 = mul i32 %6, 65
  %8 = mul i32 %5, 31
  %9 = xor i32 %7, %8
  %10 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = urem i32 %9, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !48
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %4, %27
  %19 = phi ptr [ %28, %27 ], [ %16, %4 ]
  %20 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i32 %21, %6
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = icmp eq i32 %25, %5
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !57

30:                                               ; preds = %23, %27, %4
  %31 = phi ptr [ null, %4 ], [ %19, %23 ], [ null, %27 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.EdgeEntry, ptr %31, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !54
  br label %36

36:                                               ; preds = %30, %33
  %37 = phi ptr [ %35, %33 ], [ %3, %30 ]
  ret ptr %37
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_edgehash_haskey(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %6 = mul i32 %5, 65
  %7 = mul i32 %4, 31
  %8 = xor i32 %6, %7
  %9 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = urem i32 %8, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !48
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %3, %27
  %18 = phi i1 [ %29, %27 ], [ %16, %3 ]
  %19 = phi ptr [ %28, %27 ], [ %15, %3 ]
  %20 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i32 %21, %5
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = icmp eq i32 %25, %4
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %17
  %28 = load ptr, ptr %19, align 8, !tbaa !34
  %29 = icmp ne ptr %28, null
  br i1 %29, label %17, label %30, !llvm.loop !57

30:                                               ; preds = %23, %27, %3
  %31 = phi i1 [ %16, %3 ], [ %18, %23 ], [ %29, %27 ]
  %32 = zext i1 %31 to i8
  ret i8 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_edgehash_size(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !41
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_edgehash_clear_ex(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5, %21
  %10 = phi i64 [ %22, %21 ], [ 0, %5 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !48
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %9 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.EdgeEntry, ptr %16, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  tail call void %1(ptr noundef %19) #7
  %20 = icmp eq ptr %17, null
  br i1 %20, label %21, label %15, !llvm.loop !58

21:                                               ; preds = %15, %9
  %22 = add nuw nsw i64 %10, 1
  %23 = load i32, ptr %6, align 8, !tbaa !38
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %9, label %26, !llvm.loop !59

26:                                               ; preds = %21, %5, %3
  %27 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  store i32 1, ptr %27, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  store i32 0, ptr %28, align 4, !tbaa !41
  %29 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 4
  store i32 0, ptr %29, align 8, !tbaa !42
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %27, align 8, !tbaa !38
  %33 = mul i32 %32, 3
  %34 = icmp ult i32 %33, %2
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, ptr %29, align 8, !tbaa !42
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i32 [ %36, %35 ], [ %39, %37 ]
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !44
  %43 = mul i32 %42, 3
  %44 = icmp ult i32 %43, %2
  br i1 %44, label %37, label %45, !llvm.loop !45

45:                                               ; preds = %37
  store i32 %39, ptr %29, align 8, !tbaa !42
  store i32 %42, ptr %27, align 8, !tbaa !38
  br label %46

46:                                               ; preds = %31, %45, %26
  %47 = phi i32 [ -1, %26 ], [ %2, %45 ], [ %2, %31 ]
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %49 = load ptr, ptr %0, align 8, !tbaa !48
  tail call void %48(ptr noundef %49) #7
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %51 = load i32, ptr %27, align 8, !tbaa !38
  %52 = zext i32 %51 to i64
  %53 = shl nuw nsw i64 %52, 3
  %54 = tail call ptr %50(i64 noundef %53, ptr noundef nonnull @.str) #7
  store ptr %54, ptr %0, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !49
  tail call void @BLI_mempool_clear_ex(ptr noundef %56, i32 noundef %47) #7
  ret void
}

declare void @BLI_mempool_clear_ex(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BLI_edgehash_free(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %4, %20
  %9 = phi i64 [ %21, %20 ], [ 0, %4 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !48
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %8 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.EdgeEntry, ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  tail call void %1(ptr noundef %18) #7
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %14, !llvm.loop !58

20:                                               ; preds = %14, %8
  %21 = add nuw nsw i64 %9, 1
  %22 = load i32, ptr %5, align 8, !tbaa !38
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %8, label %25, !llvm.loop !59

25:                                               ; preds = %20, %4, %2
  %26 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  tail call void @BLI_mempool_destroy(ptr noundef %27) #7
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %29 = load ptr, ptr %0, align 8, !tbaa !48
  tail call void %28(ptr noundef %29) #7
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef nonnull %0) #7
  ret void
}

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_edgehash_flag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_edgehash_flag_clear(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_edgehashIterator_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 24, ptr noundef nonnull @.str.1) #7
  store ptr %0, ptr %3, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.EdgeHashIterator, ptr %3, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.EdgeHashIterator, ptr %3, i64 0, i32 2
  store i32 -1, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = load i32, ptr %5, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %9, %17
  %14 = phi i32 [ %12, %9 ], [ %15, %17 ]
  %15 = add i32 %14, 1
  %16 = icmp eq i32 %15, %11
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !48
  %19 = zext i32 %15 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  store ptr %21, ptr %4, align 8, !tbaa !62
  %22 = icmp eq ptr %21, null
  br i1 %22, label %13, label %23, !llvm.loop !64

23:                                               ; preds = %17, %13
  %24 = phi i32 [ %15, %17 ], [ %11, %13 ]
  store i32 %24, ptr %5, align 8, !tbaa !63
  br label %25

25:                                               ; preds = %23, %1
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_edgehashIterator_init(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  store ptr %1, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 2
  store i32 -1, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.EdgeHash, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.EdgeHash, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = load i32, ptr %4, align 8, !tbaa !63
  br label %12

12:                                               ; preds = %8, %16
  %13 = phi i32 [ %11, %8 ], [ %14, %16 ]
  %14 = add i32 %13, 1
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 8, !tbaa !48
  %18 = zext i32 %14 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  store ptr %20, ptr %3, align 8, !tbaa !62
  %21 = icmp eq ptr %20, null
  br i1 %21, label %12, label %22, !llvm.loop !64

22:                                               ; preds = %12, %16
  %23 = phi i32 [ %10, %12 ], [ %14, %16 ]
  store i32 %23, ptr %4, align 8, !tbaa !63
  br label %24

24:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_edgehashIterator_step(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %3, align 8, !tbaa !34
  store ptr %7, ptr %2, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.EdgeHash, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = load i32, ptr %6, align 8, !tbaa !63
  br label %14

14:                                               ; preds = %9, %18
  %15 = phi i32 [ %13, %9 ], [ %16, %18 ]
  %16 = add i32 %15, 1
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !48
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  store ptr %22, ptr %2, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %24, !llvm.loop !65

24:                                               ; preds = %18, %14
  %25 = phi i32 [ %12, %14 ], [ %16, %18 ]
  store i32 %25, ptr %6, align 8, !tbaa !63
  br label %26

26:                                               ; preds = %24, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_edgehashIterator_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_edgeset_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 2
  store i32 1, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 5
  store i32 0, ptr %8, align 4, !tbaa !43
  %9 = icmp ugt i32 %1, 3
  br i1 %9, label %10, label %19

10:                                               ; preds = %2, %10
  %11 = phi i32 [ %12, %10 ], [ 0, %2 ]
  %12 = add i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = mul i32 %15, 3
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %10, label %18, !llvm.loop !45

18:                                               ; preds = %10
  store i32 %12, ptr %7, align 8, !tbaa !42
  store i32 %15, ptr %5, align 8, !tbaa !38
  br label %19

19:                                               ; preds = %2, %18
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = load i32, ptr %5, align 8, !tbaa !38
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str) #7
  store ptr %24, ptr %4, align 8, !tbaa !48
  %25 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef %1, i32 noundef 512, i32 noundef 0) #7
  %26 = getelementptr inbounds %struct.EdgeHash, ptr %4, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !49
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_edgeset_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 32, ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 2
  store i32 1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !43
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 8, ptr noundef nonnull @.str) #7
  store ptr %9, ptr %3, align 8, !tbaa !48
  %10 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 512, i32 noundef 0) #7
  %11 = getelementptr inbounds %struct.EdgeHash, ptr %3, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_edgeset_size(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !41
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_edgeset_insert(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %6 = mul i32 %5, 65
  %7 = mul i32 %4, 31
  %8 = xor i32 %6, %7
  %9 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = urem i32 %8, %10
  %12 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = tail call ptr @BLI_mempool_alloc(ptr noundef %13) #7
  %15 = load ptr, ptr %0, align 8, !tbaa !48
  %16 = zext i32 %11 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  store ptr %18, ptr %14, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.EdgeEntry, ptr %14, i64 0, i32 1
  store i32 %5, ptr %19, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.EdgeEntry, ptr %14, i64 0, i32 2
  store i32 %4, ptr %20, align 4, !tbaa !53
  store ptr %14, ptr %17, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !41
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !41
  %24 = load i32, ptr %9, align 8, !tbaa !38
  %25 = mul i32 %24, 3
  %26 = icmp ult i32 %25, %23
  br i1 %26, label %27, label %69

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !42
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !42
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !44
  %34 = load ptr, ptr %0, align 8, !tbaa !48
  store i32 %33, ptr %9, align 8, !tbaa !38
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = zext i32 %33 to i64
  %37 = shl nuw nsw i64 %36, 3
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @.str) #7
  %39 = icmp eq i32 %24, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %27
  %41 = zext i32 %24 to i64
  br label %42

42:                                               ; preds = %40, %64
  %43 = phi i64 [ 0, %40 ], [ %65, %64 ]
  %44 = getelementptr inbounds ptr, ptr %34, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %9, align 8, !tbaa !38
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi ptr [ %45, %47 ], [ %59, %49 ]
  %51 = getelementptr inbounds %struct.EdgeEntry, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !52
  %53 = getelementptr inbounds %struct.EdgeEntry, ptr %50, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !53
  %55 = mul i32 %52, 65
  %56 = mul i32 %54, 31
  %57 = xor i32 %56, %55
  %58 = urem i32 %57, %48
  %59 = load ptr, ptr %50, align 8, !tbaa !50
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds ptr, ptr %38, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  store ptr %62, ptr %50, align 8, !tbaa !50
  store ptr %50, ptr %61, align 8, !tbaa !34
  %63 = icmp eq ptr %59, null
  br i1 %63, label %64, label %49, !llvm.loop !55

64:                                               ; preds = %49, %42
  %65 = add nuw nsw i64 %43, 1
  %66 = icmp eq i64 %65, %41
  br i1 %66, label %67, label %42, !llvm.loop !56

67:                                               ; preds = %64, %27
  store ptr %38, ptr %0, align 8, !tbaa !48
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %68(ptr noundef %34) #7
  br label %69

69:                                               ; preds = %3, %67
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_edgeset_add(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %6 = mul i32 %5, 65
  %7 = mul i32 %4, 31
  %8 = xor i32 %6, %7
  %9 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = urem i32 %8, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !48
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %3, %27
  %18 = phi i1 [ %29, %27 ], [ %16, %3 ]
  %19 = phi ptr [ %28, %27 ], [ %15, %3 ]
  %20 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i32 %21, %5
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = icmp eq i32 %25, %4
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %17
  %28 = load ptr, ptr %19, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %17, !llvm.loop !57

30:                                               ; preds = %23
  br i1 %18, label %31, label %88

31:                                               ; preds = %27, %3, %30
  %32 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = tail call ptr @BLI_mempool_alloc(ptr noundef %33) #7
  %35 = load ptr, ptr %0, align 8, !tbaa !48
  %36 = getelementptr inbounds ptr, ptr %35, i64 %13
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  store ptr %37, ptr %34, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct.EdgeEntry, ptr %34, i64 0, i32 1
  store i32 %5, ptr %38, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct.EdgeEntry, ptr %34, i64 0, i32 2
  store i32 %4, ptr %39, align 4, !tbaa !53
  store ptr %34, ptr %36, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !41
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !41
  %43 = load i32, ptr %9, align 8, !tbaa !38
  %44 = mul i32 %43, 3
  %45 = icmp ult i32 %44, %42
  br i1 %45, label %46, label %88

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !42
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !42
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [29 x i32], ptr @_ehash_hashsizes, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !44
  %53 = load ptr, ptr %0, align 8, !tbaa !48
  store i32 %52, ptr %9, align 8, !tbaa !38
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %55 = zext i32 %52 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = tail call ptr %54(i64 noundef %56, ptr noundef nonnull @.str) #7
  %58 = icmp eq i32 %43, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %46
  %60 = zext i32 %43 to i64
  br label %61

61:                                               ; preds = %59, %83
  %62 = phi i64 [ 0, %59 ], [ %84, %83 ]
  %63 = getelementptr inbounds ptr, ptr %53, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %61
  %67 = load i32, ptr %9, align 8, !tbaa !38
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi ptr [ %64, %66 ], [ %78, %68 ]
  %70 = getelementptr inbounds %struct.EdgeEntry, ptr %69, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !52
  %72 = getelementptr inbounds %struct.EdgeEntry, ptr %69, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !53
  %74 = mul i32 %71, 65
  %75 = mul i32 %73, 31
  %76 = xor i32 %75, %74
  %77 = urem i32 %76, %67
  %78 = load ptr, ptr %69, align 8, !tbaa !50
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds ptr, ptr %57, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !34
  store ptr %81, ptr %69, align 8, !tbaa !50
  store ptr %69, ptr %80, align 8, !tbaa !34
  %82 = icmp eq ptr %78, null
  br i1 %82, label %83, label %68, !llvm.loop !55

83:                                               ; preds = %68, %61
  %84 = add nuw nsw i64 %62, 1
  %85 = icmp eq i64 %84, %60
  br i1 %85, label %86, label %61, !llvm.loop !56

86:                                               ; preds = %83, %46
  store ptr %57, ptr %0, align 8, !tbaa !48
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %87(ptr noundef %53) #7
  br label %88

88:                                               ; preds = %86, %31, %30
  %89 = phi i8 [ 0, %30 ], [ 1, %31 ], [ 1, %86 ]
  ret i8 %89
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_edgeset_haskey(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %6 = mul i32 %5, 65
  %7 = mul i32 %4, 31
  %8 = xor i32 %6, %7
  %9 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = urem i32 %8, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !48
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %3, %27
  %18 = phi i1 [ %29, %27 ], [ %16, %3 ]
  %19 = phi ptr [ %28, %27 ], [ %15, %3 ]
  %20 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i32 %21, %5
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.EdgeEntry, ptr %19, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = icmp eq i32 %25, %4
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %17
  %28 = load ptr, ptr %19, align 8, !tbaa !34
  %29 = icmp ne ptr %28, null
  br i1 %29, label %17, label %30, !llvm.loop !57

30:                                               ; preds = %23, %27, %3
  %31 = phi i1 [ %16, %3 ], [ %18, %23 ], [ %29, %27 ]
  %32 = zext i1 %31 to i8
  ret i8 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_edgeset_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  tail call void @BLI_mempool_destroy(ptr noundef %3) #7
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  tail call void %4(ptr noundef %5) #7
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_edgeset_flag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_edgeset_flag_clear(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.EdgeHash, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !43
  ret void
}

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 16}
!39 = !{!"EdgeHash", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 20}
!42 = !{!39, !40, i64 24}
!43 = !{!39, !40, i64 28}
!44 = !{!40, !40, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!39, !35, i64 0}
!49 = !{!39, !35, i64 8}
!50 = !{!51, !35, i64 0}
!51 = !{!"EdgeEntry", !35, i64 0, !40, i64 8, !40, i64 12, !35, i64 16}
!52 = !{!51, !40, i64 8}
!53 = !{!51, !40, i64 12}
!54 = !{!51, !35, i64 16}
!55 = distinct !{!55, !46, !47}
!56 = distinct !{!56, !46, !47}
!57 = distinct !{!57, !46, !47}
!58 = distinct !{!58, !46, !47}
!59 = distinct !{!59, !46, !47}
!60 = !{!61, !35, i64 0}
!61 = !{!"EdgeHashIterator", !35, i64 0, !35, i64 8, !40, i64 16}
!62 = !{!61, !35, i64 8}
!63 = !{!61, !40, i64 16}
!64 = distinct !{!64, !46, !47}
!65 = distinct !{!65, !46, !47}
