; ModuleID = 'blender/source/blender/blenlib/intern/BLI_mempool.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_mempool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BLI_mempool = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32 }
%struct.BLI_mempool_chunk = type { ptr }
%struct.BLI_freenode = type { ptr, i32 }
%struct.BLI_mempool_iter = type { ptr, ptr, i32 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"memory pool\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"BLI_Mempool Chunk\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_mempool_create(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 48, ptr noundef nonnull @.str) #9
  %7 = tail call i32 @llvm.umax.i32(i32 %0, i32 16)
  %8 = icmp ugt i32 %1, %2
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = udiv i32 %1, %2
  %11 = add i32 %10, 1
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi i32 [ %11, %9 ], [ 1, %4 ]
  %14 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 1
  %15 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 %7, ptr %15, align 8, !tbaa !38
  %16 = mul i32 %7, %2
  %17 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 3
  %18 = add i32 %16, -1
  %19 = lshr i32 %18, 1
  %20 = or i32 %19, %18
  %21 = lshr i32 %20, 2
  %22 = or i32 %21, %20
  %23 = lshr i32 %22, 4
  %24 = or i32 %23, %22
  %25 = lshr i32 %24, 8
  %26 = or i32 %25, %24
  %27 = lshr i32 %26, 16
  %28 = or i32 %27, %26
  %29 = add i32 %28, -7
  store i32 %29, ptr %17, align 4, !tbaa !41
  %30 = udiv i32 %29, %7
  %31 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 4
  store i32 %30, ptr %31, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 5
  store i32 %3, ptr %32, align 4, !tbaa !43
  %33 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 6
  store ptr null, ptr %33, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 7
  store i32 %13, ptr %34, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 8
  store i32 0, ptr %35, align 4, !tbaa !46
  %36 = icmp ne i32 %1, 0
  %37 = icmp ne i32 %13, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %12, %87
  %40 = phi i32 [ %88, %87 ], [ 0, %12 ]
  %41 = phi ptr [ %84, %87 ], [ null, %12 ]
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %43 = load i32, ptr %17, align 4, !tbaa !41
  %44 = zext i32 %43 to i64
  %45 = add nuw nsw i64 %44, 8
  %46 = tail call ptr %42(i64 noundef %45, ptr noundef nonnull @.str.1) #9
  %47 = load i32, ptr %15, align 8, !tbaa !38
  %48 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %46, i64 1
  %49 = load ptr, ptr %14, align 8, !tbaa !47
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr %6, ptr %49
  store ptr %46, ptr %51, align 8, !tbaa !34
  store ptr null, ptr %46, align 8, !tbaa !48
  store ptr %46, ptr %14, align 8, !tbaa !47
  %52 = load ptr, ptr %33, align 8, !tbaa !44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store ptr %48, ptr %33, align 8, !tbaa !44
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, ptr %31, align 8, !tbaa !42
  %57 = load i32, ptr %32, align 4, !tbaa !43
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  %60 = icmp eq i32 %56, 0
  br i1 %59, label %64, label %61

61:                                               ; preds = %55
  br i1 %60, label %80, label %62

62:                                               ; preds = %61
  %63 = zext i32 %47 to i64
  br label %67

64:                                               ; preds = %55
  br i1 %60, label %80, label %65

65:                                               ; preds = %64
  %66 = zext i32 %47 to i64
  br label %74

67:                                               ; preds = %67, %62
  %68 = phi i32 [ %56, %62 ], [ %70, %67 ]
  %69 = phi ptr [ %48, %62 ], [ %71, %67 ]
  %70 = add i32 %68, -1
  %71 = getelementptr inbounds i8, ptr %69, i64 %63
  store ptr %71, ptr %69, align 8, !tbaa !50
  %72 = getelementptr inbounds %struct.BLI_freenode, ptr %69, i64 0, i32 1
  store i32 1701147238, ptr %72, align 8, !tbaa !52
  %73 = icmp eq i32 %70, 0
  br i1 %73, label %80, label %67, !llvm.loop !53

74:                                               ; preds = %74, %65
  %75 = phi i32 [ %56, %65 ], [ %77, %74 ]
  %76 = phi ptr [ %48, %65 ], [ %78, %74 ]
  %77 = add i32 %75, -1
  %78 = getelementptr inbounds i8, ptr %76, i64 %66
  store ptr %78, ptr %76, align 8, !tbaa !50
  %79 = icmp eq i32 %77, 0
  br i1 %79, label %80, label %74, !llvm.loop !56

80:                                               ; preds = %67, %74, %64, %61
  %81 = phi ptr [ %48, %64 ], [ %48, %61 ], [ %78, %74 ], [ %71, %67 ]
  %82 = zext i32 %47 to i64
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds i8, ptr %81, i64 %83
  store ptr null, ptr %84, align 8, !tbaa !50
  %85 = icmp eq ptr %41, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store ptr %48, ptr %41, align 8, !tbaa !50
  br label %87

87:                                               ; preds = %80, %86
  %88 = add nuw i32 %40, 1
  %89 = icmp eq i32 %88, %13
  br i1 %89, label %90, label %39, !llvm.loop !57

90:                                               ; preds = %87, %12
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_mempool_alloc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %54

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 8
  %11 = tail call ptr %6(i64 noundef %10, ptr noundef nonnull @.str.1) #9
  %12 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %11, i64 1
  %15 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr %0, ptr %16
  store ptr %11, ptr %18, align 8, !tbaa !34
  store ptr null, ptr %11, align 8, !tbaa !48
  store ptr %11, ptr %15, align 8, !tbaa !47
  %19 = load ptr, ptr %2, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store ptr %14, ptr %2, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %21, %5
  %23 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !43
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %24, 0
  br i1 %28, label %33, label %30

30:                                               ; preds = %22
  br i1 %29, label %49, label %31

31:                                               ; preds = %30
  %32 = zext i32 %13 to i64
  br label %36

33:                                               ; preds = %22
  br i1 %29, label %49, label %34

34:                                               ; preds = %33
  %35 = zext i32 %13 to i64
  br label %43

36:                                               ; preds = %36, %31
  %37 = phi i32 [ %24, %31 ], [ %39, %36 ]
  %38 = phi ptr [ %14, %31 ], [ %40, %36 ]
  %39 = add i32 %37, -1
  %40 = getelementptr inbounds i8, ptr %38, i64 %32
  store ptr %40, ptr %38, align 8, !tbaa !50
  %41 = getelementptr inbounds %struct.BLI_freenode, ptr %38, i64 0, i32 1
  store i32 1701147238, ptr %41, align 8, !tbaa !52
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %49, label %36, !llvm.loop !53

43:                                               ; preds = %43, %34
  %44 = phi i32 [ %24, %34 ], [ %46, %43 ]
  %45 = phi ptr [ %14, %34 ], [ %47, %43 ]
  %46 = add i32 %44, -1
  %47 = getelementptr inbounds i8, ptr %45, i64 %35
  store ptr %47, ptr %45, align 8, !tbaa !50
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %43, !llvm.loop !56

49:                                               ; preds = %36, %43, %30, %33
  %50 = phi ptr [ %14, %33 ], [ %14, %30 ], [ %47, %43 ], [ %40, %36 ]
  %51 = zext i32 %13 to i64
  %52 = sub nsw i64 0, %51
  %53 = getelementptr inbounds i8, ptr %50, i64 %52
  store ptr null, ptr %53, align 8, !tbaa !50
  br label %54

54:                                               ; preds = %49, %1
  %55 = load ptr, ptr %2, align 8, !tbaa !44
  %56 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 5
  %57 = load i32, ptr %56, align 4, !tbaa !43
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.BLI_freenode, ptr %55, i64 0, i32 1
  store i32 1684370293, ptr %61, align 8, !tbaa !52
  br label %62

62:                                               ; preds = %60, %54
  %63 = load ptr, ptr %55, align 8, !tbaa !50
  store ptr %63, ptr %2, align 8, !tbaa !44
  %64 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %65 = load i32, ptr %64, align 4, !tbaa !46
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !46
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_mempool_calloc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_mempool_alloc(ptr noundef %0)
  %3 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !38
  %5 = zext i32 %4 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %5, i1 false)
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_mempool_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BLI_freenode, ptr %1, i64 0, i32 1
  store i32 1701147238, ptr %8, align 8, !tbaa !52
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  store ptr %11, ptr %1, align 8, !tbaa !50
  store ptr %1, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !46
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 8, !tbaa !58
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !38
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %18, %20 ], [ %25, %23 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %24) #9
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %23, !llvm.loop !59

28:                                               ; preds = %23
  store ptr null, ptr %17, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 1
  store ptr %17, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %17, i64 1
  store ptr %30, ptr %10, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !42
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = zext i32 %22 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %30, %34 ], [ %40, %36 ]
  %38 = phi i32 [ %32, %34 ], [ %39, %36 ]
  %39 = add i32 %38, -1
  %40 = getelementptr inbounds i8, ptr %37, i64 %35
  store ptr %40, ptr %37, align 8, !tbaa !50
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %42, label %36, !llvm.loop !60

42:                                               ; preds = %36, %28
  %43 = phi ptr [ %30, %28 ], [ %40, %36 ]
  %44 = zext i32 %22 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  store ptr null, ptr %46, align 8, !tbaa !50
  br label %47

47:                                               ; preds = %42, %16, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_mempool_count(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !46
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_mempool_findelem(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %70

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  br label %10

10:                                               ; preds = %25, %6
  %11 = phi ptr [ %7, %6 ], [ %26, %25 ]
  %12 = phi i32 [ 0, %6 ], [ %27, %25 ]
  %13 = icmp eq ptr %11, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %11, i64 1
  %16 = load i32, ptr %8, align 8, !tbaa !38
  %17 = mul i32 %16, %12
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %15, i64 %18
  %20 = add i32 %12, 1
  %21 = load i32, ptr %9, align 8, !tbaa !42
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load ptr, ptr %11, align 8, !tbaa !48
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi ptr [ %24, %23 ], [ %11, %14 ]
  %27 = phi i32 [ 0, %23 ], [ %20, %14 ]
  %28 = getelementptr inbounds %struct.BLI_freenode, ptr %19, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !52
  %30 = icmp eq i32 %29, 1701147238
  br i1 %30, label %10, label %31, !llvm.loop !61

31:                                               ; preds = %10, %25
  %32 = phi ptr [ %11, %10 ], [ %26, %25 ]
  %33 = phi i32 [ %12, %10 ], [ %27, %25 ]
  %34 = phi ptr [ null, %10 ], [ %19, %25 ]
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  br label %39

39:                                               ; preds = %36, %65
  %40 = phi i32 [ %1, %36 ], [ %43, %65 ]
  %41 = phi i32 [ %33, %36 ], [ %67, %65 ]
  %42 = phi ptr [ %32, %36 ], [ %66, %65 ]
  %43 = add i32 %40, -1
  br label %44

44:                                               ; preds = %59, %39
  %45 = phi ptr [ %42, %39 ], [ %60, %59 ]
  %46 = phi i32 [ %41, %39 ], [ %61, %59 ]
  %47 = icmp eq ptr %45, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %45, i64 1
  %50 = load i32, ptr %37, align 8, !tbaa !38
  %51 = mul i32 %50, %46
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  %54 = add i32 %46, 1
  %55 = load i32, ptr %38, align 8, !tbaa !42
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load ptr, ptr %45, align 8, !tbaa !48
  br label %59

59:                                               ; preds = %57, %48
  %60 = phi ptr [ %58, %57 ], [ %45, %48 ]
  %61 = phi i32 [ 0, %57 ], [ %54, %48 ]
  %62 = getelementptr inbounds %struct.BLI_freenode, ptr %53, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !52
  %64 = icmp eq i32 %63, 1701147238
  br i1 %64, label %44, label %65, !llvm.loop !61

65:                                               ; preds = %44, %59
  %66 = phi ptr [ %45, %44 ], [ %60, %59 ]
  %67 = phi i32 [ %46, %44 ], [ %61, %59 ]
  %68 = phi ptr [ null, %44 ], [ %53, %59 ]
  %69 = icmp eq i32 %43, 0
  br i1 %69, label %70, label %39, !llvm.loop !62

70:                                               ; preds = %65, %31, %2
  %71 = phi ptr [ null, %2 ], [ %34, %31 ], [ %68, %65 ]
  ret ptr %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_mempool_iternew(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  store ptr %0, ptr %1, align 8, !tbaa !63
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.BLI_mempool_iter, ptr %1, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.BLI_mempool_iter, ptr %1, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !66
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_mempool_iterstep(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BLI_mempool_iter, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.BLI_mempool_iter, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %23, %1
  %6 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %6, i64 1
  %10 = load ptr, ptr %0, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.BLI_mempool, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = load i32, ptr %4, align 8, !tbaa !66
  %14 = mul i32 %13, %12
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %9, i64 %15
  %17 = add i32 %13, 1
  store i32 %17, ptr %4, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.BLI_mempool, ptr %10, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !42
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  store i32 0, ptr %4, align 8, !tbaa !66
  %22 = load ptr, ptr %6, align 8, !tbaa !48
  store ptr %22, ptr %2, align 8, !tbaa !65
  br label %23

23:                                               ; preds = %8, %21
  %24 = phi ptr [ %6, %8 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.BLI_freenode, ptr %16, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !52
  %27 = icmp eq i32 %26, 1701147238
  br i1 %27, label %5, label %28, !llvm.loop !61

28:                                               ; preds = %23, %5
  %29 = phi ptr [ null, %5 ], [ %16, %23 ]
  ret ptr %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_mempool_as_table(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  br label %6

6:                                                ; preds = %36, %2
  %7 = phi ptr [ %3, %2 ], [ %32, %36 ]
  %8 = phi i32 [ 0, %2 ], [ %33, %36 ]
  %9 = phi ptr [ %1, %2 ], [ %37, %36 ]
  br label %10

10:                                               ; preds = %25, %6
  %11 = phi ptr [ %7, %6 ], [ %26, %25 ]
  %12 = phi i32 [ %8, %6 ], [ %27, %25 ]
  %13 = icmp eq ptr %11, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %11, i64 1
  %16 = load i32, ptr %4, align 8, !tbaa !38
  %17 = mul i32 %16, %12
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %15, i64 %18
  %20 = add i32 %12, 1
  %21 = load i32, ptr %5, align 8, !tbaa !42
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load ptr, ptr %11, align 8, !tbaa !48
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi ptr [ %24, %23 ], [ %11, %14 ]
  %27 = phi i32 [ 0, %23 ], [ %20, %14 ]
  %28 = getelementptr inbounds %struct.BLI_freenode, ptr %19, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !52
  %30 = icmp eq i32 %29, 1701147238
  br i1 %30, label %10, label %31, !llvm.loop !61

31:                                               ; preds = %10, %25
  %32 = phi ptr [ %11, %10 ], [ %26, %25 ]
  %33 = phi i32 [ %12, %10 ], [ %27, %25 ]
  %34 = phi ptr [ null, %10 ], [ %19, %25 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %34, ptr %9, align 8, !tbaa !34
  br label %6, !llvm.loop !67

38:                                               ; preds = %31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_mempool_as_tableN(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = tail call ptr %3(i64 noundef %7, ptr noundef %1) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %42, %2
  %13 = phi ptr [ %9, %2 ], [ %38, %42 ]
  %14 = phi i32 [ 0, %2 ], [ %39, %42 ]
  %15 = phi ptr [ %8, %2 ], [ %43, %42 ]
  br label %16

16:                                               ; preds = %31, %12
  %17 = phi ptr [ %13, %12 ], [ %32, %31 ]
  %18 = phi i32 [ %14, %12 ], [ %33, %31 ]
  %19 = icmp eq ptr %17, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %17, i64 1
  %22 = load i32, ptr %10, align 8, !tbaa !38
  %23 = mul i32 %22, %18
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = add i32 %18, 1
  %27 = load i32, ptr %11, align 8, !tbaa !42
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load ptr, ptr %17, align 8, !tbaa !48
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi ptr [ %30, %29 ], [ %17, %20 ]
  %33 = phi i32 [ 0, %29 ], [ %26, %20 ]
  %34 = getelementptr inbounds %struct.BLI_freenode, ptr %25, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !52
  %36 = icmp eq i32 %35, 1701147238
  br i1 %36, label %16, label %37, !llvm.loop !61

37:                                               ; preds = %31, %16
  %38 = phi ptr [ %17, %16 ], [ %32, %31 ]
  %39 = phi i32 [ %18, %16 ], [ %33, %31 ]
  %40 = phi ptr [ null, %16 ], [ %25, %31 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds ptr, ptr %15, i64 1
  store ptr %40, ptr %15, align 8, !tbaa !34
  br label %12, !llvm.loop !67

44:                                               ; preds = %37
  ret ptr %8
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_mempool_as_array(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !38
  %5 = load ptr, ptr %0, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %38, %2
  %9 = phi ptr [ %5, %2 ], [ %34, %38 ]
  %10 = phi i32 [ 0, %2 ], [ %35, %38 ]
  %11 = phi ptr [ %1, %2 ], [ %39, %38 ]
  br label %12

12:                                               ; preds = %27, %8
  %13 = phi ptr [ %9, %8 ], [ %28, %27 ]
  %14 = phi i32 [ %10, %8 ], [ %29, %27 ]
  %15 = icmp eq ptr %13, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %13, i64 1
  %18 = load i32, ptr %3, align 8, !tbaa !38
  %19 = mul i32 %18, %14
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  %22 = add i32 %14, 1
  %23 = load i32, ptr %6, align 8, !tbaa !42
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load ptr, ptr %13, align 8, !tbaa !48
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi ptr [ %26, %25 ], [ %13, %16 ]
  %29 = phi i32 [ 0, %25 ], [ %22, %16 ]
  %30 = getelementptr inbounds %struct.BLI_freenode, ptr %21, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !52
  %32 = icmp eq i32 %31, 1701147238
  br i1 %32, label %12, label %33, !llvm.loop !61

33:                                               ; preds = %12, %27
  %34 = phi ptr [ %13, %12 ], [ %28, %27 ]
  %35 = phi i32 [ %14, %12 ], [ %29, %27 ]
  %36 = phi ptr [ null, %12 ], [ %21, %27 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr nonnull align 1 %36, i64 %7, i1 false)
  %39 = getelementptr inbounds i8, ptr %11, i64 %7
  br label %8, !llvm.loop !68

40:                                               ; preds = %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_mempool_as_arrayN(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = mul i32 %7, %5
  %9 = zext i32 %8 to i64
  %10 = tail call ptr %3(i64 noundef %9, ptr noundef %1) #9
  %11 = load i32, ptr %6, align 8, !tbaa !38
  %12 = load ptr, ptr %0, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  %14 = zext i32 %11 to i64
  br label %15

15:                                               ; preds = %45, %2
  %16 = phi ptr [ %12, %2 ], [ %41, %45 ]
  %17 = phi i32 [ 0, %2 ], [ %42, %45 ]
  %18 = phi ptr [ %10, %2 ], [ %46, %45 ]
  br label %19

19:                                               ; preds = %34, %15
  %20 = phi ptr [ %16, %15 ], [ %35, %34 ]
  %21 = phi i32 [ %17, %15 ], [ %36, %34 ]
  %22 = icmp eq ptr %20, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %20, i64 1
  %25 = load i32, ptr %6, align 8, !tbaa !38
  %26 = mul i32 %25, %21
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = add i32 %21, 1
  %30 = load i32, ptr %13, align 8, !tbaa !42
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load ptr, ptr %20, align 8, !tbaa !48
  br label %34

34:                                               ; preds = %32, %23
  %35 = phi ptr [ %33, %32 ], [ %20, %23 ]
  %36 = phi i32 [ 0, %32 ], [ %29, %23 ]
  %37 = getelementptr inbounds %struct.BLI_freenode, ptr %28, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !52
  %39 = icmp eq i32 %38, 1701147238
  br i1 %39, label %19, label %40, !llvm.loop !61

40:                                               ; preds = %34, %19
  %41 = phi ptr [ %20, %19 ], [ %35, %34 ]
  %42 = phi i32 [ %21, %19 ], [ %36, %34 ]
  %43 = phi ptr [ null, %19 ], [ %28, %34 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr nonnull align 1 %43, i64 %14, i1 false)
  %46 = getelementptr inbounds i8, ptr %18, i64 %14
  br label %15, !llvm.loop !68

47:                                               ; preds = %40
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_mempool_clear_ex(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = add i32 %6, -1
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = udiv i32 %1, %10
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i32 [ %7, %4 ], [ 0, %8 ], [ %13, %12 ]
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %19, %16 ], [ %0, %14 ]
  %18 = phi i32 [ %23, %16 ], [ %15, %14 ]
  %19 = load ptr, ptr %17, align 8, !tbaa !34
  %20 = icmp ne i32 %18, 0
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  %23 = add i32 %18, -1
  br i1 %22, label %16, label %24, !llvm.loop !69

24:                                               ; preds = %16
  %25 = icmp eq ptr %19, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %19, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  store ptr null, ptr %19, align 8, !tbaa !48
  br label %30

30:                                               ; preds = %30, %29
  %31 = phi ptr [ %27, %29 ], [ %32, %30 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %33(ptr noundef nonnull %31) #9
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %30, !llvm.loop !70

35:                                               ; preds = %30, %26, %24
  %36 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 6
  store ptr null, ptr %36, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  store i32 0, ptr %37, align 4, !tbaa !46
  %38 = load ptr, ptr %0, align 8, !tbaa !58
  %39 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 1
  %40 = icmp eq ptr %38, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %40, label %94, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !38
  %44 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !42
  %46 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !43
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  %50 = icmp eq i32 %45, 0
  %51 = zext i32 %43 to i64
  %52 = icmp eq i32 %45, 0
  %53 = zext i32 %43 to i64
  %54 = zext i32 %43 to i64
  %55 = sub nsw i64 0, %54
  %56 = load ptr, ptr %39, align 8, !tbaa !47
  %57 = load ptr, ptr %36, align 8, !tbaa !44
  br label %58

58:                                               ; preds = %41, %91
  %59 = phi ptr [ %57, %41 ], [ %70, %91 ]
  %60 = phi ptr [ %56, %41 ], [ %62, %91 ]
  %61 = phi ptr [ null, %41 ], [ %88, %91 ]
  %62 = phi ptr [ %38, %41 ], [ %63, %91 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %62, i64 1
  %65 = icmp eq ptr %60, null
  %66 = select i1 %65, ptr %0, ptr %60
  store ptr %62, ptr %66, align 8, !tbaa !34
  store ptr null, ptr %62, align 8, !tbaa !48
  %67 = icmp eq ptr %59, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store ptr %64, ptr %36, align 8, !tbaa !44
  br label %69

69:                                               ; preds = %68, %58
  %70 = phi ptr [ %64, %68 ], [ %59, %58 ]
  br i1 %49, label %72, label %71

71:                                               ; preds = %69
  br i1 %50, label %86, label %73

72:                                               ; preds = %69
  br i1 %52, label %86, label %80

73:                                               ; preds = %71, %73
  %74 = phi i32 [ %76, %73 ], [ %45, %71 ]
  %75 = phi ptr [ %77, %73 ], [ %64, %71 ]
  %76 = add i32 %74, -1
  %77 = getelementptr inbounds i8, ptr %75, i64 %51
  store ptr %77, ptr %75, align 8, !tbaa !50
  %78 = getelementptr inbounds %struct.BLI_freenode, ptr %75, i64 0, i32 1
  store i32 1701147238, ptr %78, align 8, !tbaa !52
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %86, label %73, !llvm.loop !53

80:                                               ; preds = %72, %80
  %81 = phi i32 [ %83, %80 ], [ %45, %72 ]
  %82 = phi ptr [ %84, %80 ], [ %64, %72 ]
  %83 = add i32 %81, -1
  %84 = getelementptr inbounds i8, ptr %82, i64 %53
  store ptr %84, ptr %82, align 8, !tbaa !50
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %80, !llvm.loop !56

86:                                               ; preds = %73, %80, %72, %71
  %87 = phi ptr [ %64, %72 ], [ %64, %71 ], [ %84, %80 ], [ %77, %73 ]
  %88 = getelementptr inbounds i8, ptr %87, i64 %55
  store ptr null, ptr %88, align 8, !tbaa !50
  %89 = icmp eq ptr %61, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store ptr %64, ptr %61, align 8, !tbaa !50
  br label %91

91:                                               ; preds = %86, %90
  %92 = icmp eq ptr %63, null
  br i1 %92, label %93, label %58, !llvm.loop !71

93:                                               ; preds = %91
  store ptr %62, ptr %39, align 8, !tbaa !47
  br label %94

94:                                               ; preds = %93, %35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_mempool_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_mempool_clear_ex(ptr noundef %0, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_mempool_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef nonnull %5) #9
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %4, !llvm.loop !59

9:                                                ; preds = %4, %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 16}
!39 = !{!"BLI_mempool", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32, !40, i64 40, !40, i64 44}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 20}
!42 = !{!39, !40, i64 24}
!43 = !{!39, !40, i64 28}
!44 = !{!39, !35, i64 32}
!45 = !{!39, !40, i64 40}
!46 = !{!39, !40, i64 44}
!47 = !{!39, !35, i64 8}
!48 = !{!49, !35, i64 0}
!49 = !{!"BLI_mempool_chunk", !35, i64 0}
!50 = !{!51, !35, i64 0}
!51 = !{!"BLI_freenode", !35, i64 0, !40, i64 8}
!52 = !{!51, !40, i64 8}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !54, !55}
!57 = distinct !{!57, !54, !55}
!58 = !{!39, !35, i64 0}
!59 = distinct !{!59, !54, !55}
!60 = distinct !{!60, !54, !55}
!61 = distinct !{!61, !54, !55}
!62 = distinct !{!62, !54, !55}
!63 = !{!64, !35, i64 0}
!64 = !{!"BLI_mempool_iter", !35, i64 0, !35, i64 8, !40, i64 16}
!65 = !{!64, !35, i64 8}
!66 = !{!64, !40, i64 16}
!67 = distinct !{!67, !54, !55}
!68 = distinct !{!68, !54, !55}
!69 = distinct !{!69, !54, !55}
!70 = distinct !{!70, !54, !55}
!71 = distinct !{!71, !54, !55}
