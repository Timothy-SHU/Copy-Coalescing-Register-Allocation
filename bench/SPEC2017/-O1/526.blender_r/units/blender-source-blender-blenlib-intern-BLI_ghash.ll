; ModuleID = 'blender/source/blender/blenlib/intern/BLI_ghash.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_ghash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GHash = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.Entry = type { ptr, ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.GHashPair = type { ptr, ptr }

@hashsizes = dso_local local_unnamed_addr constant [27 x i32] [i32 5, i32 11, i32 17, i32 37, i32 67, i32 131, i32 257, i32 521, i32 1031, i32 2053, i32 4099, i32 8209, i32 16411, i32 32771, i32 65537, i32 131101, i32 262147, i32 524309, i32 1048583, i32 2097169, i32 4194319, i32 8388617, i32 16777259, i32 33554467, i32 67108879, i32 134217757, i32 268435459], align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"buckets\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ghash iterator\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"GHashPair\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_new_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 48, ptr noundef %2) #10
  store ptr %0, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 4
  store i32 5, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 5
  store i32 0, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 6
  store i32 0, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 7
  store i32 0, ptr %11, align 4, !tbaa !45
  %12 = icmp ugt i32 %3, 15
  br i1 %12, label %13, label %21

13:                                               ; preds = %4, %13
  %14 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %15 = add i32 %14, 1
  store i32 %15, ptr %10, align 8, !tbaa !44
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !46
  store i32 %18, ptr %8, align 8, !tbaa !42
  %19 = mul i32 %18, 3
  %20 = icmp ult i32 %19, %3
  br i1 %20, label %13, label %21, !llvm.loop !47

21:                                               ; preds = %13, %4
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = load i32, ptr %8, align 8, !tbaa !42
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  %26 = tail call ptr %22(i64 noundef %25, ptr noundef nonnull @.str) #10
  %27 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !50
  %28 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %29 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !51
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 48, ptr noundef %2) #10
  store ptr %0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 4
  store i32 5, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 5
  store i32 0, ptr %8, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 6
  store i32 0, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 7
  store i32 0, ptr %10, align 4, !tbaa !45
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str) #10
  %13 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !50
  %14 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %15 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !51
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_ghash_size(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !43
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_ghash_insert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = tail call i32 %4(ptr noundef %1) #10
  %6 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = urem i32 %5, %7
  %9 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call ptr @BLI_mempool_alloc(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = zext i32 %8 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  store ptr %16, ptr %11, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.Entry, ptr %11, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.Entry, ptr %11, i64 0, i32 2
  store ptr %2, ptr %18, align 8, !tbaa !55
  store ptr %11, ptr %15, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !43
  %22 = load i32, ptr %6, align 8, !tbaa !42
  %23 = mul i32 %22, 3
  %24 = icmp ult i32 %23, %21
  br i1 %24, label %25, label %63

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !44
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !44
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !46
  %32 = load ptr, ptr %12, align 8, !tbaa !50
  store i32 %31, ptr %6, align 8, !tbaa !42
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = zext i32 %31 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = tail call ptr %33(i64 noundef %35, ptr noundef nonnull @.str) #10
  %37 = icmp eq i32 %22, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %25
  %39 = zext i32 %22 to i64
  br label %40

40:                                               ; preds = %38, %58
  %41 = phi i64 [ 0, %38 ], [ %59, %58 ]
  %42 = getelementptr inbounds ptr, ptr %32, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %40, %45
  %46 = phi ptr [ %53, %45 ], [ %43, %40 ]
  %47 = getelementptr inbounds %struct.Entry, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  %49 = load ptr, ptr %0, align 8, !tbaa !38
  %50 = tail call i32 %49(ptr noundef %48) #10
  %51 = load i32, ptr %6, align 8, !tbaa !42
  %52 = urem i32 %50, %51
  %53 = load ptr, ptr %46, align 8, !tbaa !52
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds ptr, ptr %36, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  store ptr %56, ptr %46, align 8, !tbaa !52
  store ptr %46, ptr %55, align 8, !tbaa !34
  %57 = icmp eq ptr %53, null
  br i1 %57, label %58, label %45, !llvm.loop !56

58:                                               ; preds = %45, %40
  %59 = add nuw nsw i64 %41, 1
  %60 = icmp eq i64 %59, %39
  br i1 %60, label %61, label %40, !llvm.loop !57

61:                                               ; preds = %58, %25
  store ptr %36, ptr %12, align 8, !tbaa !50
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %62(ptr noundef %32) #10
  br label %63

63:                                               ; preds = %3, %61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_ghash_reinsert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = tail call i32 %6(ptr noundef %1) #10
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = urem i32 %7, %9
  %11 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %16

16:                                               ; preds = %20, %5
  %17 = phi ptr [ %14, %5 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %15, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.Entry, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = tail call zeroext i8 %21(ptr noundef %1, ptr noundef %23) #10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %16, !llvm.loop !58

26:                                               ; preds = %16, %20
  %27 = phi ptr [ %18, %20 ], [ null, %16 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = icmp eq ptr %3, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.Entry, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  tail call void %3(ptr noundef %33) #10
  br label %34

34:                                               ; preds = %31, %29
  %35 = icmp eq ptr %4, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.Entry, ptr %27, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  tail call void %4(ptr noundef %38) #10
  br label %39

39:                                               ; preds = %36, %34
  %40 = getelementptr inbounds %struct.Entry, ptr %27, i64 0, i32 1
  store ptr %1, ptr %40, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct.Entry, ptr %27, i64 0, i32 2
  store ptr %2, ptr %41, align 8, !tbaa !55
  br label %95

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !51
  %45 = tail call ptr @BLI_mempool_alloc(ptr noundef %44) #10
  %46 = load ptr, ptr %11, align 8, !tbaa !50
  %47 = getelementptr inbounds ptr, ptr %46, i64 %13
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  store ptr %48, ptr %45, align 8, !tbaa !52
  %49 = getelementptr inbounds %struct.Entry, ptr %45, i64 0, i32 1
  store ptr %1, ptr %49, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct.Entry, ptr %45, i64 0, i32 2
  store ptr %2, ptr %50, align 8, !tbaa !55
  store ptr %45, ptr %47, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !43
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4, !tbaa !43
  %54 = load i32, ptr %8, align 8, !tbaa !42
  %55 = mul i32 %54, 3
  %56 = icmp ult i32 %55, %53
  br i1 %56, label %57, label %95

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !44
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !44
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !46
  %64 = load ptr, ptr %11, align 8, !tbaa !50
  store i32 %63, ptr %8, align 8, !tbaa !42
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %66 = zext i32 %63 to i64
  %67 = shl nuw nsw i64 %66, 3
  %68 = tail call ptr %65(i64 noundef %67, ptr noundef nonnull @.str) #10
  %69 = icmp eq i32 %54, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %57
  %71 = zext i32 %54 to i64
  br label %72

72:                                               ; preds = %70, %90
  %73 = phi i64 [ 0, %70 ], [ %91, %90 ]
  %74 = getelementptr inbounds ptr, ptr %64, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %72, %77
  %78 = phi ptr [ %85, %77 ], [ %75, %72 ]
  %79 = getelementptr inbounds %struct.Entry, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !54
  %81 = load ptr, ptr %0, align 8, !tbaa !38
  %82 = tail call i32 %81(ptr noundef %80) #10
  %83 = load i32, ptr %8, align 8, !tbaa !42
  %84 = urem i32 %82, %83
  %85 = load ptr, ptr %78, align 8, !tbaa !52
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds ptr, ptr %68, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  store ptr %88, ptr %78, align 8, !tbaa !52
  store ptr %78, ptr %87, align 8, !tbaa !34
  %89 = icmp eq ptr %85, null
  br i1 %89, label %90, label %77, !llvm.loop !56

90:                                               ; preds = %77, %72
  %91 = add nuw nsw i64 %73, 1
  %92 = icmp eq i64 %91, %71
  br i1 %92, label %93, label %72, !llvm.loop !57

93:                                               ; preds = %90, %57
  store ptr %68, ptr %11, align 8, !tbaa !50
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %94(ptr noundef %64) #10
  br label %95

95:                                               ; preds = %93, %42, %39
  %96 = phi i8 [ 0, %39 ], [ 1, %42 ], [ 1, %93 ]
  ret i8 %96
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_ghash_lookup(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = tail call i32 %3(ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = urem i32 %4, %6
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %11, %2 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %12, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.Entry, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = tail call zeroext i8 %18(ptr noundef %1, ptr noundef %20) #10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !58

23:                                               ; preds = %13, %17
  %24 = phi ptr [ %15, %17 ], [ null, %13 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Entry, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  br label %29

29:                                               ; preds = %23, %26
  %30 = phi ptr [ %28, %26 ], [ null, %23 ]
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_ghash_lookup_default(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = tail call i32 %4(ptr noundef %1) #10
  %6 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = urem i32 %5, %7
  %9 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %18, %3
  %15 = phi ptr [ %12, %3 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %13, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.Entry, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = tail call zeroext i8 %19(ptr noundef %1, ptr noundef %21) #10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %14, !llvm.loop !58

24:                                               ; preds = %14, %18
  %25 = phi ptr [ %16, %18 ], [ null, %14 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Entry, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  br label %30

30:                                               ; preds = %24, %27
  %31 = phi ptr [ %29, %27 ], [ %2, %24 ]
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_ghash_lookup_p(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = tail call i32 %3(ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = urem i32 %4, %6
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %11, %2 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %12, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.Entry, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = tail call zeroext i8 %18(ptr noundef %1, ptr noundef %20) #10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !58

23:                                               ; preds = %13, %17
  %24 = phi ptr [ %15, %17 ], [ null, %13 ]
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.Entry, ptr %24, i64 0, i32 2
  %27 = select i1 %25, ptr null, ptr %26
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_ghash_remove(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = tail call i32 %5(ptr noundef %1) #10
  %7 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = urem i32 %6, %8
  %10 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = zext i32 %9 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %20, %4
  %16 = phi ptr [ %13, %4 ], [ %18, %20 ]
  %17 = phi ptr [ null, %4 ], [ %18, %20 ]
  %18 = load ptr, ptr %16, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %14, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.Entry, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = tail call zeroext i8 %21(ptr noundef %1, ptr noundef %23) #10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !59

26:                                               ; preds = %20
  %27 = load ptr, ptr %18, align 8, !tbaa !52
  %28 = icmp eq ptr %2, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Entry, ptr %18, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  tail call void %2(ptr noundef %31) #10
  br label %32

32:                                               ; preds = %29, %26
  %33 = icmp eq ptr %3, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.Entry, ptr %18, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  tail call void %3(ptr noundef %36) #10
  br label %37

37:                                               ; preds = %34, %32
  %38 = icmp eq ptr %17, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load ptr, ptr %10, align 8, !tbaa !50
  %41 = getelementptr inbounds ptr, ptr %40, i64 %12
  br label %42

42:                                               ; preds = %37, %39
  %43 = phi ptr [ %41, %39 ], [ %17, %37 ]
  store ptr %27, ptr %43, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !43
  %46 = add i32 %45, -1
  store i32 %46, ptr %44, align 4, !tbaa !43
  br label %47

47:                                               ; preds = %15, %42
  %48 = phi ptr [ %18, %42 ], [ null, %15 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !51
  tail call void @BLI_mempool_free(ptr noundef %52, ptr noundef nonnull %48) #10
  br label %53

53:                                               ; preds = %47, %50
  %54 = phi i8 [ 1, %50 ], [ 0, %47 ]
  ret i8 %54
}

declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_ghash_popkey(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = tail call i32 %4(ptr noundef %1) #10
  %6 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = urem i32 %5, %7
  %9 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %19, %3
  %15 = phi ptr [ %12, %3 ], [ %17, %19 ]
  %16 = phi ptr [ null, %3 ], [ %17, %19 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %13, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.Entry, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = tail call zeroext i8 %20(ptr noundef %1, ptr noundef %22) #10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !59

25:                                               ; preds = %19
  %26 = load ptr, ptr %17, align 8, !tbaa !52
  %27 = icmp eq ptr %2, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Entry, ptr %17, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  tail call void %2(ptr noundef %30) #10
  br label %31

31:                                               ; preds = %28, %25
  %32 = icmp eq ptr %16, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load ptr, ptr %9, align 8, !tbaa !50
  %35 = getelementptr inbounds ptr, ptr %34, i64 %11
  br label %36

36:                                               ; preds = %31, %33
  %37 = phi ptr [ %35, %33 ], [ %16, %31 ]
  store ptr %26, ptr %37, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !43
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 4, !tbaa !43
  br label %41

41:                                               ; preds = %14, %36
  %42 = phi ptr [ %17, %36 ], [ null, %14 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.Entry, ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !51
  tail call void @BLI_mempool_free(ptr noundef %48, ptr noundef nonnull %42) #10
  br label %49

49:                                               ; preds = %41, %44
  %50 = phi ptr [ %46, %44 ], [ null, %41 ]
  ret ptr %50
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_ghash_haskey(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = tail call i32 %3(ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = urem i32 %4, %6
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %11, %2 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %12, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.Entry, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = tail call zeroext i8 %18(ptr noundef %1, ptr noundef %20) #10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !58

23:                                               ; preds = %13, %17
  %24 = zext i1 %16 to i8
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_ghash_clear_ex(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %2, null
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %14 = icmp eq ptr %1, null
  %15 = icmp eq ptr %2, null
  br label %16

16:                                               ; preds = %12, %34
  %17 = phi i64 [ 0, %12 ], [ %35, %34 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !50
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %16, %32
  %23 = phi ptr [ %24, %32 ], [ %20, %16 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  br i1 %14, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Entry, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  tail call void %1(ptr noundef %27) #10
  br label %28

28:                                               ; preds = %25, %22
  br i1 %15, label %32, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.Entry, ptr %23, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  tail call void %2(ptr noundef %31) #10
  br label %32

32:                                               ; preds = %29, %28
  %33 = icmp eq ptr %24, null
  br i1 %33, label %34, label %22, !llvm.loop !60

34:                                               ; preds = %32, %16
  %35 = add nuw nsw i64 %17, 1
  %36 = load i32, ptr %9, align 8, !tbaa !42
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %16, label %39, !llvm.loop !61

39:                                               ; preds = %34, %8, %4
  %40 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  store i32 5, ptr %40, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  store i32 0, ptr %41, align 4, !tbaa !43
  %42 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  store i32 0, ptr %42, align 8, !tbaa !44
  %43 = icmp eq i32 %3, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %39
  %45 = load i32, ptr %40, align 8, !tbaa !42
  %46 = mul i32 %45, 3
  %47 = icmp ult i32 %46, %3
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, ptr %42, align 8, !tbaa !44
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i32 [ %49, %48 ], [ %52, %50 ]
  %52 = add i32 %51, 1
  store i32 %52, ptr %42, align 8, !tbaa !44
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !46
  store i32 %55, ptr %40, align 8, !tbaa !42
  %56 = mul i32 %55, 3
  %57 = icmp ult i32 %56, %3
  br i1 %57, label %50, label %58, !llvm.loop !47

58:                                               ; preds = %50, %44, %39
  %59 = phi i32 [ -1, %39 ], [ %3, %44 ], [ %3, %50 ]
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !50
  tail call void %60(ptr noundef %62) #10
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %64 = load i32, ptr %40, align 8, !tbaa !42
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 3
  %67 = tail call ptr %63(i64 noundef %66, ptr noundef nonnull @.str) #10
  store ptr %67, ptr %61, align 8, !tbaa !50
  %68 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !51
  tail call void @BLI_mempool_clear_ex(ptr noundef %69, i32 noundef %59) #10
  ret void
}

declare void @BLI_mempool_clear_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLI_ghash_clear(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %13 = icmp eq ptr %1, null
  %14 = icmp eq ptr %2, null
  br label %15

15:                                               ; preds = %33, %11
  %16 = phi i64 [ 0, %11 ], [ %34, %33 ]
  %17 = load ptr, ptr %12, align 8, !tbaa !50
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %15, %31
  %22 = phi ptr [ %23, %31 ], [ %19, %15 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  br i1 %13, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Entry, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  tail call void %1(ptr noundef %26) #10
  br label %27

27:                                               ; preds = %24, %21
  br i1 %14, label %31, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Entry, ptr %22, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  tail call void %2(ptr noundef %30) #10
  br label %31

31:                                               ; preds = %28, %27
  %32 = icmp eq ptr %23, null
  br i1 %32, label %33, label %21, !llvm.loop !60

33:                                               ; preds = %31, %15
  %34 = add nuw nsw i64 %16, 1
  %35 = load i32, ptr %8, align 8, !tbaa !42
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %15, label %38, !llvm.loop !61

38:                                               ; preds = %33, %3, %7
  %39 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  store i32 5, ptr %39, align 8, !tbaa !42
  %40 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  store i32 0, ptr %40, align 4, !tbaa !43
  %41 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  store i32 0, ptr %41, align 8, !tbaa !44
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  tail call void %42(ptr noundef %44) #10
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %46 = load i32, ptr %39, align 8, !tbaa !42
  %47 = zext i32 %46 to i64
  %48 = shl nuw nsw i64 %47, 3
  %49 = tail call ptr %45(i64 noundef %48, ptr noundef nonnull @.str) #10
  store ptr %49, ptr %43, align 8, !tbaa !50
  %50 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  tail call void @BLI_mempool_clear_ex(ptr noundef %51, i32 noundef -1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_ghash_free(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %13 = icmp eq ptr %1, null
  %14 = icmp eq ptr %2, null
  br label %15

15:                                               ; preds = %11, %33
  %16 = phi i64 [ 0, %11 ], [ %34, %33 ]
  %17 = load ptr, ptr %12, align 8, !tbaa !50
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %15, %31
  %22 = phi ptr [ %23, %31 ], [ %19, %15 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  br i1 %13, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Entry, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  tail call void %1(ptr noundef %26) #10
  br label %27

27:                                               ; preds = %24, %21
  br i1 %14, label %31, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Entry, ptr %22, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  tail call void %2(ptr noundef %30) #10
  br label %31

31:                                               ; preds = %28, %27
  %32 = icmp eq ptr %23, null
  br i1 %32, label %33, label %21, !llvm.loop !60

33:                                               ; preds = %31, %15
  %34 = add nuw nsw i64 %16, 1
  %35 = load i32, ptr %8, align 8, !tbaa !42
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %15, label %38, !llvm.loop !61

38:                                               ; preds = %33, %7, %3
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  tail call void %39(ptr noundef %41) #10
  %42 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  tail call void @BLI_mempool_destroy(ptr noundef %43) #10
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %44(ptr noundef %0) #10
  ret void
}

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_ghash_flag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !45
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_ghash_flag_clear(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghashIterator_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 24, ptr noundef nonnull @.str.1) #10
  store ptr %0, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 2
  store i32 -1, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = load i32, ptr %5, align 8, !tbaa !65
  br label %14

14:                                               ; preds = %9, %18
  %15 = phi i32 [ %13, %9 ], [ %16, %18 ]
  %16 = add i32 %15, 1
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  store ptr %22, ptr %4, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %24, !llvm.loop !66

24:                                               ; preds = %18, %14
  %25 = phi i32 [ %16, %18 ], [ %12, %14 ]
  store i32 %25, ptr %5, align 8, !tbaa !65
  br label %26

26:                                               ; preds = %24, %1
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_ghashIterator_init(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  store ptr %1, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 2
  store i32 -1, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.GHash, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.GHash, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.GHash, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = load i32, ptr %4, align 8, !tbaa !65
  br label %13

13:                                               ; preds = %8, %17
  %14 = phi i32 [ %12, %8 ], [ %15, %17 ]
  %15 = add i32 %14, 1
  %16 = icmp eq i32 %15, %11
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %9, align 8, !tbaa !50
  %19 = zext i32 %15 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  store ptr %21, ptr %3, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %13, label %23, !llvm.loop !66

23:                                               ; preds = %13, %17
  %24 = phi i32 [ %11, %13 ], [ %15, %17 ]
  store i32 %24, ptr %4, align 8, !tbaa !65
  br label %25

25:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_ghashIterator_step(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %3, align 8, !tbaa !34
  store ptr %7, ptr %2, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.GHash, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.GHash, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %6, align 8, !tbaa !65
  br label %15

15:                                               ; preds = %9, %19
  %16 = phi i32 [ %14, %9 ], [ %17, %19 ]
  %17 = add i32 %16, 1
  %18 = icmp eq i32 %17, %12
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 8, !tbaa !50
  %21 = zext i32 %17 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  store ptr %23, ptr %2, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %15, label %25, !llvm.loop !67

25:                                               ; preds = %19, %15
  %26 = phi i32 [ %12, %15 ], [ %17, %19 ]
  store i32 %26, ptr %6, align 8, !tbaa !65
  br label %27

27:                                               ; preds = %25, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_ghashIterator_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BLI_ghashutil_ptrhash(ptr noundef %0) #5 {
  %2 = ptrtoint ptr %0 to i64
  %3 = lshr i64 %2, 4
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BLI_ghashutil_ptrcmp(ptr noundef readnone %0, ptr noundef readnone %1) #5 {
  %3 = icmp ne ptr %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_ghashutil_uinthash_v4(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 4, !tbaa !46
  %3 = mul i32 %2, 37
  %4 = getelementptr inbounds i32, ptr %0, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = add i32 %3, %5
  %7 = mul i32 %6, 37
  %8 = getelementptr inbounds i32, ptr %0, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = add i32 %7, %9
  %11 = mul i32 %10, 37
  %12 = getelementptr inbounds i32, ptr %0, i64 3
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = add i32 %11, %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_ghashutil_uinthash_v4_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) %1, i64 16)
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @BLI_ghashutil_uinthash(i32 noundef %0) local_unnamed_addr #5 {
  %2 = shl i32 %0, 16
  %3 = xor i32 %2, -1
  %4 = add i32 %3, %0
  %5 = lshr i32 %4, 5
  %6 = xor i32 %5, %4
  %7 = mul i32 %6, 9
  %8 = lshr i32 %7, 13
  %9 = xor i32 %8, %7
  %10 = shl i32 %9, 9
  %11 = xor i32 %10, -1
  %12 = add i32 %9, %11
  %13 = lshr i32 %12, 17
  %14 = xor i32 %13, %12
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @BLI_ghashutil_inthash_p(ptr noundef %0) #5 {
  %2 = ptrtoint ptr %0 to i64
  %3 = shl i64 %2, 16
  %4 = xor i64 %3, -1
  %5 = add i64 %4, %2
  %6 = lshr i64 %5, 5
  %7 = xor i64 %6, %5
  %8 = mul i64 %7, 9
  %9 = lshr i64 %8, 13
  %10 = xor i64 %9, %8
  %11 = shl i64 %10, 9
  %12 = xor i64 %11, -1
  %13 = add i64 %10, %12
  %14 = lshr i64 %13, 17
  %15 = xor i64 %14, %13
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BLI_ghashutil_intcmp(ptr noundef readnone %0, ptr noundef readnone %1) #5 {
  %3 = icmp ne ptr %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_ghashutil_strhash_n(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2, %10
  %5 = phi i64 [ %11, %10 ], [ %1, %2 ]
  %6 = phi i32 [ %14, %10 ], [ 5381, %2 ]
  %7 = phi ptr [ %15, %10 ], [ %0, %2 ]
  %8 = load i8, ptr %7, align 1, !tbaa !68
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = add i64 %5, -1
  %12 = sext i8 %8 to i32
  %13 = mul i32 %6, 33
  %14 = add i32 %13, %12
  %15 = getelementptr inbounds i8, ptr %7, i64 1
  %16 = icmp eq i64 %11, 0
  br i1 %16, label %17, label %4, !llvm.loop !69

17:                                               ; preds = %4, %10, %2
  %18 = phi i32 [ 5381, %2 ], [ %6, %4 ], [ %14, %10 ]
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_ghashutil_strhash_p(ptr nocapture noundef readonly %0) #7 {
  %2 = load i8, ptr %0, align 1, !tbaa !68
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %12, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %10, %4 ], [ 5381, %1 ]
  %7 = phi ptr [ %11, %4 ], [ %0, %1 ]
  %8 = sext i8 %5 to i32
  %9 = mul i32 %6, 33
  %10 = add i32 %9, %8
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !68
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %4, !llvm.loop !70

14:                                               ; preds = %4, %1
  %15 = phi i32 [ 5381, %1 ], [ %10, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_ghashutil_strcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #11
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghashutil_pairalloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @.str.2) #10
  store ptr %0, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.GHashPair, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !73
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_ghashutil_pairhash(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = ptrtoint ptr %2 to i64
  %4 = getelementptr inbounds %struct.GHashPair, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = ptrtoint ptr %5 to i64
  %7 = xor i64 %6, %3
  %8 = lshr i64 %7, 4
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_ghashutil_paircmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !71
  %4 = load ptr, ptr %1, align 8, !tbaa !71
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.GHashPair, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.GHashPair, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp ne ptr %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 1, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_ghashutil_pairfree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_ptr_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_ptrhash, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 1
  store ptr @BLI_ghashutil_ptrcmp, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 4
  store i32 5, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 6
  store i32 0, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !45
  %10 = icmp ugt i32 %1, 15
  br i1 %10, label %11, label %19

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %13 = add i32 %12, 1
  store i32 %13, ptr %8, align 8, !tbaa !44
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !46
  store i32 %16, ptr %6, align 8, !tbaa !42
  %17 = mul i32 %16, 3
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %11, label %19, !llvm.loop !47

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = load i32, ptr %6, align 8, !tbaa !42
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str) #10
  %25 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !50
  %26 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_ptr_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_ptrhash, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 1
  store ptr @BLI_ghashutil_ptrcmp, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 4
  store i32 5, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 5
  store i32 0, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 7
  store i32 0, ptr %8, align 4, !tbaa !45
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 40, ptr noundef nonnull @.str) #10
  %11 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !50
  %12 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_str_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_strhash_p, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 1
  store ptr @BLI_ghashutil_strcmp, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 4
  store i32 5, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 6
  store i32 0, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !45
  %10 = icmp ugt i32 %1, 15
  br i1 %10, label %11, label %19

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %13 = add i32 %12, 1
  store i32 %13, ptr %8, align 8, !tbaa !44
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !46
  store i32 %16, ptr %6, align 8, !tbaa !42
  %17 = mul i32 %16, 3
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %11, label %19, !llvm.loop !47

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = load i32, ptr %6, align 8, !tbaa !42
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str) #10
  %25 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !50
  %26 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_str_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_strhash_p, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 1
  store ptr @BLI_ghashutil_strcmp, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 4
  store i32 5, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 5
  store i32 0, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 7
  store i32 0, ptr %8, align 4, !tbaa !45
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 40, ptr noundef nonnull @.str) #10
  %11 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !50
  %12 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_int_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_inthash_p, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 1
  store ptr @BLI_ghashutil_intcmp, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 4
  store i32 5, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 6
  store i32 0, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !45
  %10 = icmp ugt i32 %1, 15
  br i1 %10, label %11, label %19

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %13 = add i32 %12, 1
  store i32 %13, ptr %8, align 8, !tbaa !44
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !46
  store i32 %16, ptr %6, align 8, !tbaa !42
  %17 = mul i32 %16, 3
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %11, label %19, !llvm.loop !47

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = load i32, ptr %6, align 8, !tbaa !42
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str) #10
  %25 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !50
  %26 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_int_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_inthash_p, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 1
  store ptr @BLI_ghashutil_intcmp, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 4
  store i32 5, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 5
  store i32 0, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 7
  store i32 0, ptr %8, align 4, !tbaa !45
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 40, ptr noundef nonnull @.str) #10
  %11 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !50
  %12 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_pair_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_pairhash, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 1
  store ptr @BLI_ghashutil_paircmp, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 4
  store i32 5, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 6
  store i32 0, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !45
  %10 = icmp ugt i32 %1, 15
  br i1 %10, label %11, label %19

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %13 = add i32 %12, 1
  store i32 %13, ptr %8, align 8, !tbaa !44
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !46
  store i32 %16, ptr %6, align 8, !tbaa !42
  %17 = mul i32 %16, 3
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %11, label %19, !llvm.loop !47

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = load i32, ptr %6, align 8, !tbaa !42
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str) #10
  %25 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !50
  %26 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_ghash_pair_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_pairhash, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 1
  store ptr @BLI_ghashutil_paircmp, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 4
  store i32 5, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 5
  store i32 0, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 7
  store i32 0, ptr %8, align 4, !tbaa !45
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 40, ptr noundef nonnull @.str) #10
  %11 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !50
  %12 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_gset_new_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 48, ptr noundef %2) #10
  store ptr %0, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 4
  store i32 5, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 5
  store i32 0, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 6
  store i32 0, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 7
  store i32 0, ptr %11, align 4, !tbaa !45
  %12 = icmp ugt i32 %3, 15
  br i1 %12, label %13, label %21

13:                                               ; preds = %4, %13
  %14 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %15 = add i32 %14, 1
  store i32 %15, ptr %10, align 8, !tbaa !44
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !46
  store i32 %18, ptr %8, align 8, !tbaa !42
  %19 = mul i32 %18, 3
  %20 = icmp ult i32 %19, %3
  br i1 %20, label %13, label %21, !llvm.loop !47

21:                                               ; preds = %13, %4
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = load i32, ptr %8, align 8, !tbaa !42
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  %26 = tail call ptr %22(i64 noundef %25, ptr noundef nonnull @.str) #10
  %27 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !50
  %28 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %29 = getelementptr inbounds %struct.GHash, ptr %6, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !51
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_gset_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 48, ptr noundef %2) #10
  store ptr %0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 4
  store i32 5, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 5
  store i32 0, ptr %8, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 6
  store i32 0, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 7
  store i32 0, ptr %10, align 4, !tbaa !45
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str) #10
  %13 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !50
  %14 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %15 = getelementptr inbounds %struct.GHash, ptr %5, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !51
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_gset_size(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !43
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_gset_insert(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = tail call i32 %3(ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = urem i32 %4, %6
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = tail call ptr @BLI_mempool_alloc(ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = zext i32 %7 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  store ptr %15, ptr %10, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.Entry, ptr %10, i64 0, i32 1
  store ptr %1, ptr %16, align 8, !tbaa !54
  store ptr %10, ptr %14, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !43
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !43
  %20 = load i32, ptr %5, align 8, !tbaa !42
  %21 = mul i32 %20, 3
  %22 = icmp ult i32 %21, %19
  br i1 %22, label %23, label %61

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !44
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !44
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !46
  %30 = load ptr, ptr %11, align 8, !tbaa !50
  store i32 %29, ptr %5, align 8, !tbaa !42
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = tail call ptr %31(i64 noundef %33, ptr noundef nonnull @.str) #10
  %35 = icmp eq i32 %20, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %23
  %37 = zext i32 %20 to i64
  br label %38

38:                                               ; preds = %36, %56
  %39 = phi i64 [ 0, %36 ], [ %57, %56 ]
  %40 = getelementptr inbounds ptr, ptr %30, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %38, %43
  %44 = phi ptr [ %51, %43 ], [ %41, %38 ]
  %45 = getelementptr inbounds %struct.Entry, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = load ptr, ptr %0, align 8, !tbaa !38
  %48 = tail call i32 %47(ptr noundef %46) #10
  %49 = load i32, ptr %5, align 8, !tbaa !42
  %50 = urem i32 %48, %49
  %51 = load ptr, ptr %44, align 8, !tbaa !52
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds ptr, ptr %34, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  store ptr %54, ptr %44, align 8, !tbaa !52
  store ptr %44, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %51, null
  br i1 %55, label %56, label %43, !llvm.loop !56

56:                                               ; preds = %43, %38
  %57 = add nuw nsw i64 %39, 1
  %58 = icmp eq i64 %57, %37
  br i1 %58, label %59, label %38, !llvm.loop !57

59:                                               ; preds = %56, %23
  store ptr %34, ptr %11, align 8, !tbaa !50
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %60(ptr noundef %30) #10
  br label %61

61:                                               ; preds = %2, %59
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_gset_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = tail call i32 %3(ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = urem i32 %4, %6
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %11, %2 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %12, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.Entry, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = tail call zeroext i8 %18(ptr noundef %1, ptr noundef %20) #10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !58

23:                                               ; preds = %17
  br i1 %16, label %24, label %76

24:                                               ; preds = %13, %23
  %25 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = tail call ptr @BLI_mempool_alloc(ptr noundef %26) #10
  %28 = load ptr, ptr %8, align 8, !tbaa !50
  %29 = getelementptr inbounds ptr, ptr %28, i64 %10
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  store ptr %30, ptr %27, align 8, !tbaa !52
  %31 = getelementptr inbounds %struct.Entry, ptr %27, i64 0, i32 1
  store ptr %1, ptr %31, align 8, !tbaa !54
  store ptr %27, ptr %29, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !43
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !43
  %35 = load i32, ptr %5, align 8, !tbaa !42
  %36 = mul i32 %35, 3
  %37 = icmp ult i32 %36, %34
  br i1 %37, label %38, label %76

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !44
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !44
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !46
  %45 = load ptr, ptr %8, align 8, !tbaa !50
  store i32 %44, ptr %5, align 8, !tbaa !42
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %47 = zext i32 %44 to i64
  %48 = shl nuw nsw i64 %47, 3
  %49 = tail call ptr %46(i64 noundef %48, ptr noundef nonnull @.str) #10
  %50 = icmp eq i32 %35, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %38
  %52 = zext i32 %35 to i64
  br label %53

53:                                               ; preds = %51, %71
  %54 = phi i64 [ 0, %51 ], [ %72, %71 ]
  %55 = getelementptr inbounds ptr, ptr %45, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %71, label %58

58:                                               ; preds = %53, %58
  %59 = phi ptr [ %66, %58 ], [ %56, %53 ]
  %60 = getelementptr inbounds %struct.Entry, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !54
  %62 = load ptr, ptr %0, align 8, !tbaa !38
  %63 = tail call i32 %62(ptr noundef %61) #10
  %64 = load i32, ptr %5, align 8, !tbaa !42
  %65 = urem i32 %63, %64
  %66 = load ptr, ptr %59, align 8, !tbaa !52
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds ptr, ptr %49, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  store ptr %69, ptr %59, align 8, !tbaa !52
  store ptr %59, ptr %68, align 8, !tbaa !34
  %70 = icmp eq ptr %66, null
  br i1 %70, label %71, label %58, !llvm.loop !56

71:                                               ; preds = %58, %53
  %72 = add nuw nsw i64 %54, 1
  %73 = icmp eq i64 %72, %52
  br i1 %73, label %74, label %53, !llvm.loop !57

74:                                               ; preds = %71, %38
  store ptr %49, ptr %8, align 8, !tbaa !50
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %75(ptr noundef %45) #10
  br label %76

76:                                               ; preds = %74, %24, %23
  %77 = phi i8 [ 0, %23 ], [ 1, %24 ], [ 1, %74 ]
  ret i8 %77
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_gset_reinsert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = tail call i32 %4(ptr noundef %1) #10
  %6 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = urem i32 %5, %7
  %9 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %18, %3
  %15 = phi ptr [ %12, %3 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %13, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.Entry, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = tail call zeroext i8 %19(ptr noundef %1, ptr noundef %21) #10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %14, !llvm.loop !58

24:                                               ; preds = %14, %18
  %25 = phi ptr [ %16, %18 ], [ null, %14 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = icmp eq ptr %2, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.Entry, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  tail call void %2(ptr noundef %31) #10
  br label %32

32:                                               ; preds = %29, %27
  %33 = getelementptr inbounds %struct.Entry, ptr %25, i64 0, i32 1
  store ptr %1, ptr %33, align 8, !tbaa !54
  br label %86

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = tail call ptr @BLI_mempool_alloc(ptr noundef %36) #10
  %38 = load ptr, ptr %9, align 8, !tbaa !50
  %39 = getelementptr inbounds ptr, ptr %38, i64 %11
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  store ptr %40, ptr %37, align 8, !tbaa !52
  %41 = getelementptr inbounds %struct.Entry, ptr %37, i64 0, i32 1
  store ptr %1, ptr %41, align 8, !tbaa !54
  store ptr %37, ptr %39, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !43
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4, !tbaa !43
  %45 = load i32, ptr %6, align 8, !tbaa !42
  %46 = mul i32 %45, 3
  %47 = icmp ult i32 %46, %44
  br i1 %47, label %48, label %86

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !44
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !44
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !46
  %55 = load ptr, ptr %9, align 8, !tbaa !50
  store i32 %54, ptr %6, align 8, !tbaa !42
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %57 = zext i32 %54 to i64
  %58 = shl nuw nsw i64 %57, 3
  %59 = tail call ptr %56(i64 noundef %58, ptr noundef nonnull @.str) #10
  %60 = icmp eq i32 %45, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %48
  %62 = zext i32 %45 to i64
  br label %63

63:                                               ; preds = %61, %81
  %64 = phi i64 [ 0, %61 ], [ %82, %81 ]
  %65 = getelementptr inbounds ptr, ptr %55, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %63, %68
  %69 = phi ptr [ %76, %68 ], [ %66, %63 ]
  %70 = getelementptr inbounds %struct.Entry, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = load ptr, ptr %0, align 8, !tbaa !38
  %73 = tail call i32 %72(ptr noundef %71) #10
  %74 = load i32, ptr %6, align 8, !tbaa !42
  %75 = urem i32 %73, %74
  %76 = load ptr, ptr %69, align 8, !tbaa !52
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds ptr, ptr %59, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  store ptr %79, ptr %69, align 8, !tbaa !52
  store ptr %69, ptr %78, align 8, !tbaa !34
  %80 = icmp eq ptr %76, null
  br i1 %80, label %81, label %68, !llvm.loop !56

81:                                               ; preds = %68, %63
  %82 = add nuw nsw i64 %64, 1
  %83 = icmp eq i64 %82, %62
  br i1 %83, label %84, label %63, !llvm.loop !57

84:                                               ; preds = %81, %48
  store ptr %59, ptr %9, align 8, !tbaa !50
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %85(ptr noundef %55) #10
  br label %86

86:                                               ; preds = %84, %34, %32
  %87 = phi i8 [ 0, %32 ], [ 1, %34 ], [ 1, %84 ]
  ret i8 %87
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_gset_remove(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = tail call i32 %4(ptr noundef %1) #10
  %6 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = urem i32 %5, %7
  %9 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %19, %3
  %15 = phi ptr [ %12, %3 ], [ %17, %19 ]
  %16 = phi ptr [ null, %3 ], [ %17, %19 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %13, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.Entry, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = tail call zeroext i8 %20(ptr noundef %1, ptr noundef %22) #10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !59

25:                                               ; preds = %19
  %26 = load ptr, ptr %17, align 8, !tbaa !52
  %27 = icmp eq ptr %2, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Entry, ptr %17, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  tail call void %2(ptr noundef %30) #10
  br label %31

31:                                               ; preds = %28, %25
  %32 = icmp eq ptr %16, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load ptr, ptr %9, align 8, !tbaa !50
  %35 = getelementptr inbounds ptr, ptr %34, i64 %11
  br label %36

36:                                               ; preds = %31, %33
  %37 = phi ptr [ %35, %33 ], [ %16, %31 ]
  store ptr %26, ptr %37, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !43
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 4, !tbaa !43
  br label %41

41:                                               ; preds = %14, %36
  %42 = phi ptr [ %17, %36 ], [ null, %14 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  tail call void @BLI_mempool_free(ptr noundef %46, ptr noundef nonnull %42) #10
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi i8 [ 1, %44 ], [ 0, %41 ]
  ret i8 %48
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_gset_haskey(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = tail call i32 %3(ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = urem i32 %4, %6
  %8 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi ptr [ %11, %2 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %12, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.Entry, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = tail call zeroext i8 %18(ptr noundef %1, ptr noundef %20) #10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !58

23:                                               ; preds = %13, %17
  %24 = zext i1 %16 to i8
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_gset_clear_ex(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @BLI_ghash_clear_ex(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_gset_clear(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi i64 [ 0, %8 ], [ %23, %22 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !50
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %18, %16 ], [ %14, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.Entry, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  tail call void %1(ptr noundef %20) #10
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %16, !llvm.loop !60

22:                                               ; preds = %16, %10
  %23 = add nuw nsw i64 %11, 1
  %24 = load i32, ptr %5, align 8, !tbaa !42
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %10, label %27, !llvm.loop !61

27:                                               ; preds = %22, %2, %4
  %28 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  store i32 5, ptr %28, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 5
  store i32 0, ptr %29, align 4, !tbaa !43
  %30 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 6
  store i32 0, ptr %30, align 8, !tbaa !44
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  tail call void %31(ptr noundef %33) #10
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %35 = load i32, ptr %28, align 8, !tbaa !42
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 3
  %38 = tail call ptr %34(i64 noundef %37, ptr noundef nonnull @.str) #10
  store ptr %38, ptr %32, align 8, !tbaa !50
  %39 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  tail call void @BLI_mempool_clear_ex(ptr noundef %40, i32 noundef -1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_gset_free(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi i64 [ 0, %8 ], [ %23, %22 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !50
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %18, %16 ], [ %14, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.Entry, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  tail call void %1(ptr noundef %20) #10
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %16, !llvm.loop !60

22:                                               ; preds = %16, %10
  %23 = add nuw nsw i64 %11, 1
  %24 = load i32, ptr %5, align 8, !tbaa !42
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %10, label %27, !llvm.loop !61

27:                                               ; preds = %22, %2, %4
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  tail call void %28(ptr noundef %30) #10
  %31 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  tail call void @BLI_mempool_destroy(ptr noundef %32) #10
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %33(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_gset_flag_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !45
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_gset_flag_clear(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.GHash, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_gset_ptr_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_ptrhash, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 1
  store ptr @BLI_ghashutil_ptrcmp, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 4
  store i32 5, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 6
  store i32 0, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !45
  %10 = icmp ugt i32 %1, 15
  br i1 %10, label %11, label %19

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %13 = add i32 %12, 1
  store i32 %13, ptr %8, align 8, !tbaa !44
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !46
  store i32 %16, ptr %6, align 8, !tbaa !42
  %17 = mul i32 %16, 3
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %11, label %19, !llvm.loop !47

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = load i32, ptr %6, align 8, !tbaa !42
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str) #10
  %25 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !50
  %26 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_gset_ptr_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_ptrhash, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 1
  store ptr @BLI_ghashutil_ptrcmp, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 4
  store i32 5, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 5
  store i32 0, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 7
  store i32 0, ptr %8, align 4, !tbaa !45
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 40, ptr noundef nonnull @.str) #10
  %11 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !50
  %12 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_gset_pair_new_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_pairhash, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 1
  store ptr @BLI_ghashutil_paircmp, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 4
  store i32 5, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 6
  store i32 0, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !45
  %10 = icmp ugt i32 %1, 15
  br i1 %10, label %11, label %19

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %13 = add i32 %12, 1
  store i32 %13, ptr %8, align 8, !tbaa !44
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x i32], ptr @hashsizes, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !46
  store i32 %16, ptr %6, align 8, !tbaa !42
  %17 = mul i32 %16, 3
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %11, label %19, !llvm.loop !47

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = load i32, ptr %6, align 8, !tbaa !42
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str) #10
  %25 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !50
  %26 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.GHash, ptr %4, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_gset_pair_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 48, ptr noundef %0) #10
  store ptr @BLI_ghashutil_pairhash, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 1
  store ptr @BLI_ghashutil_paircmp, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 4
  store i32 5, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 5
  store i32 0, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 6
  store i32 0, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 7
  store i32 0, ptr %8, align 4, !tbaa !45
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 40, ptr noundef nonnull @.str) #10
  %11 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !50
  %12 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.GHash, ptr %3, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !51
  ret ptr %3
}

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"GHash", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !35, i64 8}
!42 = !{!39, !40, i64 32}
!43 = !{!39, !40, i64 36}
!44 = !{!39, !40, i64 40}
!45 = !{!39, !40, i64 44}
!46 = !{!40, !40, i64 0}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!39, !35, i64 16}
!51 = !{!39, !35, i64 24}
!52 = !{!53, !35, i64 0}
!53 = !{!"Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!54 = !{!53, !35, i64 8}
!55 = !{!53, !35, i64 16}
!56 = distinct !{!56, !48, !49}
!57 = distinct !{!57, !48, !49}
!58 = distinct !{!58, !48, !49}
!59 = distinct !{!59, !48, !49}
!60 = distinct !{!60, !48, !49}
!61 = distinct !{!61, !48, !49}
!62 = !{!63, !35, i64 0}
!63 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !40, i64 16}
!64 = !{!63, !35, i64 8}
!65 = !{!63, !40, i64 16}
!66 = distinct !{!66, !48, !49}
!67 = distinct !{!67, !48, !49}
!68 = !{!36, !36, i64 0}
!69 = distinct !{!69, !48, !49}
!70 = distinct !{!70, !48, !49}
!71 = !{!72, !35, i64 0}
!72 = !{!"GHashPair", !35, i64 0, !35, i64 8}
!73 = !{!72, !35, i64 8}
