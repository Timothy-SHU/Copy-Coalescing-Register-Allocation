; ModuleID = 'blender/source/blender/imbuf/intern/allocimbuf.c'
source_filename = "blender/source/blender/imbuf/intern/allocimbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@refcounter_spin = internal global i32 0, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@__func__.addzbufImBuf = private unnamed_addr constant [13 x i8] c"addzbufImBuf\00", align 1
@__func__.addzbuffloatImBuf = private unnamed_addr constant [18 x i8] c"addzbuffloatImBuf\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.imb_addencodedbufferImBuf = private unnamed_addr constant [26 x i8] c"imb_addencodedbufferImBuf\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"%s: error in parameters\0A\00", align 1
@__func__.imb_enlargeencodedbufferImBuf = private unnamed_addr constant [30 x i8] c"imb_enlargeencodedbufferImBuf\00", align 1
@__func__.imb_addrectfloatImBuf = private unnamed_addr constant [22 x i8] c"imb_addrectfloatImBuf\00", align 1
@__func__.imb_addrectImBuf = private unnamed_addr constant [17 x i8] c"imb_addrectImBuf\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"imb_tiles\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ImBuf_struct\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @imb_refcounter_lock_init() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @refcounter_spin) #9
  ret void
}

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @imb_refcounter_lock_exit() local_unnamed_addr #0 {
  tail call void @BLI_spin_end(ptr noundef nonnull @refcounter_spin) #9
  ret void
}

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @imb_freemipmapImBuf(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %17

5:                                                ; preds = %1, %12
  %6 = phi i64 [ %13, %12 ], [ 1, %1 ]
  %7 = add nsw i64 %6, -1
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %11, %5
  store ptr null, ptr %8, align 8, !tbaa !43
  %13 = add nuw nsw i64 %6, 1
  %14 = load i32, ptr %2, align 8, !tbaa !34
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %5, label %17, !llvm.loop !44

17:                                               ; preds = %12, %1
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  store i32 0, ptr %18, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_freeImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %107, label %3

3:                                                ; preds = %1
  tail call void @BLI_spin_lock(ptr noundef nonnull @refcounter_spin) #9
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 30
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add nsw i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !47
  tail call void @BLI_spin_unlock(ptr noundef nonnull @refcounter_spin) #9
  br label %107

9:                                                ; preds = %3
  tail call void @BLI_spin_unlock(ptr noundef nonnull @refcounter_spin) #9
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !49
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %19(ptr noundef nonnull %11) #9
  br label %20

20:                                               ; preds = %18, %13, %9
  store ptr null, ptr %10, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %22 = load i32, ptr %21, align 8, !tbaa !34
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %20, %31
  %25 = phi i64 [ %32, %31 ], [ 1, %20 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @IMB_freeImBuf(ptr noundef nonnull %28)
  br label %31

31:                                               ; preds = %30, %24
  store ptr null, ptr %27, align 8, !tbaa !43
  %32 = add nuw nsw i64 %25, 1
  %33 = load i32, ptr %21, align 8, !tbaa !34
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %24, label %36, !llvm.loop !44

36:                                               ; preds = %31, %20
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  store i32 0, ptr %37, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !49
  %40 = and i32 %39, -2
  store i32 %40, ptr %38, align 4, !tbaa !49
  %41 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  %43 = icmp eq ptr %42, null
  %44 = and i32 %39, 32
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %48(ptr noundef nonnull %42) #9
  store ptr null, ptr %41, align 8, !tbaa !50
  br label %49

49:                                               ; preds = %47, %36
  %50 = load i32, ptr %37, align 8, !tbaa !34
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %64

52:                                               ; preds = %49, %59
  %53 = phi i64 [ %60, %59 ], [ 1, %49 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !43
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void @IMB_freeImBuf(ptr noundef nonnull %56)
  br label %59

59:                                               ; preds = %58, %52
  store ptr null, ptr %55, align 8, !tbaa !43
  %60 = add nuw nsw i64 %53, 1
  %61 = load i32, ptr %37, align 8, !tbaa !34
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %52, label %64, !llvm.loop !44

64:                                               ; preds = %59, %49
  store i32 0, ptr %37, align 8, !tbaa !34
  store ptr null, ptr %41, align 8, !tbaa !50
  %65 = load i32, ptr %38, align 4, !tbaa !49
  %66 = and i32 %65, -33
  store i32 %66, ptr %38, align 4, !tbaa !49
  tail call void @imb_freetilesImBuf(ptr noundef nonnull %0)
  %67 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %68 = load ptr, ptr %67, align 8, !tbaa !51
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr %38, align 4, !tbaa !49
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %75(ptr noundef nonnull %68) #9
  br label %76

76:                                               ; preds = %74, %70, %64
  store ptr null, ptr %67, align 8, !tbaa !51
  %77 = load i32, ptr %38, align 4, !tbaa !49
  %78 = and i32 %77, -9
  store i32 %78, ptr %38, align 4, !tbaa !49
  %79 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  %81 = icmp eq ptr %80, null
  %82 = and i32 %77, 64
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %81, i1 true, i1 %83
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %86(ptr noundef nonnull %80) #9
  br label %87

87:                                               ; preds = %85, %76
  store ptr null, ptr %79, align 8, !tbaa !52
  %88 = load i32, ptr %38, align 4, !tbaa !49
  %89 = and i32 %88, -65
  store i32 %89, ptr %38, align 4, !tbaa !49
  %90 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 31
  %91 = load ptr, ptr %90, align 8, !tbaa !53
  %92 = icmp eq ptr %91, null
  %93 = and i32 %88, 16
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %92, i1 true, i1 %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %87
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %97(ptr noundef nonnull %91) #9
  br label %98

98:                                               ; preds = %87, %96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %90, i8 0, i64 16, i1 false)
  %99 = load i32, ptr %38, align 4, !tbaa !49
  %100 = and i32 %99, -17
  store i32 %100, ptr %38, align 4, !tbaa !49
  tail call void @IMB_metadata_free(ptr noundef nonnull %0) #9
  tail call void @colormanage_cache_free(ptr noundef nonnull %0) #9
  %101 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 40, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !54
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  tail call void @free(ptr noundef %102) #9
  br label %105

105:                                              ; preds = %104, %98
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %106(ptr noundef nonnull %0) #9
  br label %107

107:                                              ; preds = %7, %105, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @imb_freerectfloatImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  store ptr null, ptr %4, align 8, !tbaa !50
  br label %14

14:                                               ; preds = %12, %7, %3
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %14, %25
  %19 = phi i64 [ %26, %25 ], [ 1, %14 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @IMB_freeImBuf(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %24, %18
  store ptr null, ptr %21, align 8, !tbaa !43
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %15, align 8, !tbaa !34
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %18, label %30, !llvm.loop !44

30:                                               ; preds = %25, %14
  %31 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  store i32 0, ptr %31, align 8, !tbaa !34
  store ptr null, ptr %4, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !49
  %34 = and i32 %33, -33
  store i32 %34, ptr %32, align 4, !tbaa !49
  br label %35

35:                                               ; preds = %1, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @imb_freerectImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %14, %25
  %19 = phi i64 [ %26, %25 ], [ 1, %14 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @IMB_freeImBuf(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %24, %18
  store ptr null, ptr %21, align 8, !tbaa !43
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %15, align 8, !tbaa !34
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %18, label %30, !llvm.loop !44

30:                                               ; preds = %25, %14
  %31 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  store i32 0, ptr %31, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !49
  %34 = and i32 %33, -2
  store i32 %34, ptr %32, align 4, !tbaa !49
  br label %35

35:                                               ; preds = %1, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @imb_freetilesImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %56, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 13
  br label %18

18:                                               ; preds = %16, %45
  %19 = phi i32 [ 0, %16 ], [ %46, %45 ]
  %20 = load i32, ptr %17, align 8, !tbaa !57
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18, %41
  %23 = phi i32 [ %43, %41 ], [ %20, %18 ]
  %24 = phi i32 [ %42, %41 ], [ 0, %18 ]
  %25 = load ptr, ptr %4, align 8, !tbaa !55
  %26 = mul nsw i32 %23, %19
  %27 = add nsw i32 %26, %24
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %22
  tail call void @imb_tile_cache_tile_free(ptr noundef nonnull %0, i32 noundef %24, i32 noundef %19) #9
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %34 = load ptr, ptr %4, align 8, !tbaa !55
  %35 = load i32, ptr %17, align 8, !tbaa !57
  %36 = mul nsw i32 %35, %19
  %37 = add nsw i32 %36, %24
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %34, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  tail call void %33(ptr noundef %40) #9
  br label %41

41:                                               ; preds = %22, %32
  %42 = add nuw nsw i32 %24, 1
  %43 = load i32, ptr %17, align 8, !tbaa !57
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %22, label %45, !llvm.loop !58

45:                                               ; preds = %41, %18
  %46 = add nuw nsw i32 %19, 1
  %47 = load i32, ptr %13, align 4, !tbaa !56
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %18, label %49, !llvm.loop !59

49:                                               ; preds = %45, %12
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %51 = load ptr, ptr %4, align 8, !tbaa !55
  tail call void %50(ptr noundef %51) #9
  br label %52

52:                                               ; preds = %49, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !55
  %53 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %54 = load i32, ptr %53, align 4, !tbaa !49
  %55 = and i32 %54, -1025
  store i32 %55, ptr %53, align 4, !tbaa !49
  br label %56

56:                                               ; preds = %1, %52
  ret void
}

declare void @imb_tile_cache_tile_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @IMB_freezbufImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = and i32 %16, -9
  store i32 %17, ptr %15, align 4, !tbaa !49
  br label %18

18:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_freezbuffloatImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = and i32 %16, -65
  store i32 %17, ptr %15, align 4, !tbaa !49
  br label %18

18:                                               ; preds = %1, %14
  ret void
}

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

declare void @IMB_metadata_free(ptr noundef) local_unnamed_addr #1

declare void @colormanage_cache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @IMB_refImBuf(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_spin_lock(ptr noundef nonnull @refcounter_spin) #9
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !47
  tail call void @BLI_spin_unlock(ptr noundef nonnull @refcounter_spin) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_makeSingleUser(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 30
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %0)
  tail call void @IMB_freeImBuf(ptr noundef nonnull %0)
  br label %9

9:                                                ; preds = %1, %3, %7
  %10 = phi ptr [ %8, %7 ], [ %0, %3 ], [ %0, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_dupImBuf(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca { [2 x double], i32, i32, i32, i32, ptr }, align 8
  %3 = alloca { float, [20 x ptr] }, align 8
  %4 = alloca { i32, i32, i32, i32 }, align 8
  %5 = alloca { ptr, i32, [1024 x i8], [1024 x i8] }, align 8
  %6 = alloca { i32, i32, ptr, ptr }, align 8
  %7 = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 2064, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7)
  %8 = icmp eq ptr %0, null
  br i1 %8, label %128, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = icmp eq ptr %15, null
  %17 = or disjoint i32 %13, 32
  %18 = select i1 %16, i32 %13, i32 %17
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !62
  %25 = lshr i32 %24, 2
  %26 = and i32 %25, 1
  %27 = shl i32 %22, %26
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %29 = load i8, ptr %28, align 8, !tbaa !63
  %30 = tail call ptr @IMB_allocImBuf(i32 noundef %20, i32 noundef %27, i8 noundef zeroext %29, i32 noundef %18)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %128, label %32

32:                                               ; preds = %9
  br i1 %12, label %33, label %40

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = load ptr, ptr %10, align 8, !tbaa !48
  %37 = mul nsw i32 %27, %20
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %36, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %33, %32
  br i1 %16, label %51, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = load ptr, ptr %14, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !64
  %47 = mul i32 %27, %20
  %48 = mul i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %43, ptr align 4 %44, i64 %50, i1 false)
  br label %51

51:                                               ; preds = %41, %40
  %52 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 31
  %53 = load ptr, ptr %52, align 8, !tbaa !53
  %54 = icmp eq ptr %53, null
  br i1 %54, label %90, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 33
  %57 = load i32, ptr %56, align 4, !tbaa !65
  %58 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 33
  store i32 %57, ptr %58, align 4, !tbaa !65
  %59 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 31
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 7
  %64 = load i32, ptr %63, align 4, !tbaa !49
  %65 = and i32 %64, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %68(ptr noundef nonnull %60) #9
  br label %69

69:                                               ; preds = %67, %62, %55
  %70 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 32
  %71 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  %72 = load i32, ptr %71, align 4, !tbaa !49
  %73 = and i32 %72, -17
  store i32 %73, ptr %71, align 4, !tbaa !49
  store i32 10000, ptr %58, align 4, !tbaa !65
  store i32 0, ptr %70, align 8, !tbaa !66
  %74 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %75 = tail call ptr %74(i64 noundef 10000, ptr noundef nonnull @__func__.imb_addencodedbufferImBuf) #9
  store ptr %75, ptr %59, align 8, !tbaa !53
  %76 = icmp eq ptr %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %69
  %78 = load i32, ptr %71, align 4, !tbaa !49
  %79 = or i32 %78, 16
  store i32 %79, ptr %71, align 4, !tbaa !49
  %80 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !62
  %82 = or i32 %81, 16
  store i32 %82, ptr %80, align 8, !tbaa !62
  %83 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 31
  %84 = load ptr, ptr %83, align 8, !tbaa !53
  %85 = load ptr, ptr %52, align 8, !tbaa !53
  %86 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 32
  %87 = load i32, ptr %86, align 8, !tbaa !66
  %88 = zext i32 %87 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %84, ptr align 1 %85, i64 %88, i1 false)
  br label %90

89:                                               ; preds = %69
  tail call void @IMB_freeImBuf(ptr noundef nonnull %30)
  br label %128

90:                                               ; preds = %77, %51
  %91 = getelementptr inbounds i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %91, i64 40, i1 false), !tbaa.struct !67
  %92 = getelementptr inbounds i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef nonnull align 8 dereferenceable(168) %92, i64 168, i1 false), !tbaa.struct !71
  %93 = getelementptr inbounds i8, ptr %0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %93, i64 16, i1 false), !tbaa.struct !72
  %94 = getelementptr inbounds i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %5, ptr noundef nonnull align 8 dereferenceable(2064) %94, i64 2064, i1 false), !tbaa.struct !73
  %95 = getelementptr inbounds i8, ptr %0, i64 2380
  %96 = load i32, ptr %95, align 4, !tbaa.struct !74
  %97 = getelementptr inbounds i8, ptr %0, i64 2392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %97, i64 24, i1 false), !tbaa.struct !75
  %98 = getelementptr inbounds i8, ptr %0, i64 2432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %98, i64 32, i1 false), !tbaa.struct !76
  %99 = getelementptr inbounds i8, ptr %0, i64 2472
  %100 = load i64, ptr %99, align 8, !tbaa.struct !77
  %101 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 8
  %102 = load ptr, ptr %101, align 8, !tbaa !48
  %103 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !50
  %105 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 31
  %106 = load ptr, ptr %105, align 8, !tbaa !53
  %107 = getelementptr inbounds i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %107, i8 0, i64 160, i1 false), !tbaa !43
  %108 = getelementptr inbounds %struct.ImBuf, ptr %30, i64 0, i32 7
  %109 = load i32, ptr %108, align 4, !tbaa !49
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef nonnull align 8 dereferenceable(36) %0, i64 36, i1 false)
  %110 = getelementptr inbounds i8, ptr %30, i64 36
  store i32 %109, ptr %110, align 4, !tbaa.struct !78
  %111 = getelementptr inbounds i8, ptr %30, i64 40
  store ptr %102, ptr %111, align 8, !tbaa.struct !79
  %112 = getelementptr inbounds i8, ptr %30, i64 48
  store ptr %104, ptr %112, align 8, !tbaa.struct !80
  %113 = getelementptr inbounds i8, ptr %30, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %113, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !67
  %114 = getelementptr inbounds i8, ptr %30, i64 96
  %115 = getelementptr inbounds i8, ptr %30, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %114, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %115, ptr noundef nonnull align 8 dereferenceable(168) %3, i64 168, i1 false), !tbaa.struct !71
  %116 = getelementptr inbounds i8, ptr %30, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %116, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !72
  %117 = getelementptr inbounds i8, ptr %30, i64 296
  store ptr null, ptr %117, align 8, !tbaa.struct !81
  %118 = getelementptr inbounds i8, ptr %30, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %118, ptr noundef nonnull align 8 dereferenceable(2064) %5, i64 2064, i1 false), !tbaa.struct !73
  %119 = getelementptr inbounds i8, ptr %30, i64 2368
  store ptr null, ptr %119, align 8, !tbaa.struct !82
  %120 = getelementptr inbounds i8, ptr %30, i64 2376
  store i32 0, ptr %120, align 8, !tbaa.struct !83
  %121 = getelementptr inbounds i8, ptr %30, i64 2380
  store i32 %96, ptr %121, align 4, !tbaa.struct !74
  %122 = getelementptr inbounds i8, ptr %30, i64 2384
  store ptr %106, ptr %122, align 8, !tbaa.struct !84
  %123 = getelementptr inbounds i8, ptr %30, i64 2392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %123, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !75
  %124 = getelementptr inbounds i8, ptr %30, i64 2416
  %125 = getelementptr inbounds i8, ptr %30, i64 2432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %124, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %125, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !76
  %126 = getelementptr inbounds i8, ptr %30, i64 2464
  store ptr null, ptr %126, align 8, !tbaa.struct !85
  %127 = getelementptr inbounds i8, ptr %30, i64 2472
  store i64 %100, ptr %127, align 8, !tbaa.struct !77
  br label %128

128:                                              ; preds = %9, %1, %90, %89
  %129 = phi ptr [ null, %89 ], [ %30, %90 ], [ null, %1 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 2064, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7)
  ret ptr %129
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @addzbufImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = and i32 %16, -9
  store i32 %17, ptr %15, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %20, 2
  %25 = mul i64 %24, %23
  %26 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %27 = tail call ptr %26(i64 noundef %25, ptr noundef nonnull @__func__.addzbufImBuf) #9
  store ptr %27, ptr %4, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %14
  %30 = load i32, ptr %15, align 4, !tbaa !49
  %31 = or i32 %30, 8
  store i32 %31, ptr %15, align 4, !tbaa !49
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !62
  %34 = or i32 %33, 8
  store i32 %34, ptr %32, align 8, !tbaa !62
  br label %35

35:                                               ; preds = %14, %1, %29
  %36 = phi i8 [ 1, %29 ], [ 0, %1 ], [ 0, %14 ]
  ret i8 %36
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @addzbuffloatImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = and i32 %16, -65
  store i32 %17, ptr %15, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %20, 2
  %25 = mul i64 %24, %23
  %26 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %27 = tail call ptr %26(i64 noundef %25, ptr noundef nonnull @__func__.addzbuffloatImBuf) #9
  store ptr %27, ptr %4, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %14
  %30 = load i32, ptr %15, align 4, !tbaa !49
  %31 = or i32 %30, 64
  store i32 %31, ptr %15, align 4, !tbaa !49
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !62
  %34 = or i32 %33, 64
  store i32 %34, ptr %32, align 8, !tbaa !62
  br label %35

35:                                               ; preds = %14, %1, %29
  %36 = phi i8 [ 1, %29 ], [ 0, %1 ], [ 0, %14 ]
  ret i8 %36
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @imb_addencodedbufferImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 31
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %3, %7, %12
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 33
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 32
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = and i32 %18, -17
  store i32 %19, ptr %17, align 4, !tbaa !49
  store i32 10000, ptr %15, align 4, !tbaa !65
  store i32 0, ptr %16, align 8, !tbaa !66
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %21 = tail call ptr %20(i64 noundef 10000, ptr noundef nonnull @__func__.imb_addencodedbufferImBuf) #9
  store ptr %21, ptr %4, align 8, !tbaa !53
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = load i32, ptr %17, align 4, !tbaa !49
  %25 = or i32 %24, 16
  store i32 %25, ptr %17, align 4, !tbaa !49
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !62
  %28 = or i32 %27, 16
  store i32 %28, ptr %26, align 8, !tbaa !62
  br label %29

29:                                               ; preds = %14, %1, %23
  %30 = phi i8 [ 1, %23 ], [ 0, %1 ], [ 0, %14 ]
  ret i8 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @imb_enlargeencodedbufferImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 33
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 32
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.imb_enlargeencodedbufferImBuf)
  br label %45

11:                                               ; preds = %3
  %12 = shl i32 %5, 1
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 10000)
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %15 = zext i32 %13 to i64
  %16 = tail call ptr %14(i64 noundef %15, ptr noundef nonnull @__func__.imb_enlargeencodedbufferImBuf) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 31
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %6, align 8, !tbaa !66
  %24 = zext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull align 1 %20, i64 %24, i1 false)
  br label %26

25:                                               ; preds = %18
  store i32 0, ptr %6, align 8, !tbaa !66
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, ptr %6, align 8, !tbaa !66
  %28 = load ptr, ptr %19, align 8, !tbaa !53
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !49
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %36(ptr noundef nonnull %28) #9
  br label %37

37:                                               ; preds = %26, %30, %35
  %38 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %39 = load i32, ptr %38, align 4, !tbaa !49
  %40 = and i32 %39, -17
  store i32 %40, ptr %38, align 4, !tbaa !49
  store i32 %13, ptr %4, align 4, !tbaa !65
  store i32 %27, ptr %6, align 8, !tbaa !66
  store ptr %16, ptr %19, align 8, !tbaa !53
  %41 = or i32 %39, 16
  store i32 %41, ptr %38, align 4, !tbaa !49
  %42 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !62
  %44 = or i32 %43, 16
  store i32 %44, ptr %42, align 8, !tbaa !62
  br label %45

45:                                               ; preds = %11, %1, %37, %9
  %46 = phi i8 [ 0, %9 ], [ 1, %37 ], [ 0, %1 ], [ 0, %11 ]
  ret i8 %46
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @imb_addrectfloatImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %54, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  store ptr null, ptr %4, align 8, !tbaa !50
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %14, %25
  %19 = phi i64 [ %26, %25 ], [ 1, %14 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @IMB_freeImBuf(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %24, %18
  store ptr null, ptr %21, align 8, !tbaa !43
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %15, align 8, !tbaa !34
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %18, label %30, !llvm.loop !44

30:                                               ; preds = %25, %14
  store i32 0, ptr %15, align 8, !tbaa !34
  store ptr null, ptr %4, align 8, !tbaa !50
  %31 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !49
  %33 = and i32 %32, -33
  store i32 %33, ptr %31, align 4, !tbaa !49
  br label %34

34:                                               ; preds = %30, %3
  %35 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !60
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !61
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %37, 4
  %42 = mul i64 %41, %40
  %43 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  store i32 4, ptr %43, align 4, !tbaa !64
  %44 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %45 = tail call ptr %44(i64 noundef %42, ptr noundef nonnull @__func__.imb_addrectfloatImBuf) #9
  store ptr %45, ptr %4, align 8, !tbaa !50
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !49
  %50 = or i32 %49, 32
  store i32 %50, ptr %48, align 4, !tbaa !49
  %51 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !62
  %53 = or i32 %52, 32
  store i32 %53, ptr %51, align 8, !tbaa !62
  br label %54

54:                                               ; preds = %34, %1, %47
  %55 = phi i8 [ 1, %47 ], [ 0, %1 ], [ 0, %34 ]
  ret i8 %55
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @imb_addrectImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %62, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %13(ptr noundef nonnull %5) #9
  br label %14

14:                                               ; preds = %12, %7, %3
  store ptr null, ptr %4, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !60
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !61
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %17, 2
  %22 = mul i64 %21, %20
  %23 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %24 = tail call ptr %23(i64 noundef %22, ptr noundef nonnull @__func__.imb_addrectImBuf) #9
  store ptr %24, ptr %4, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %62, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !49
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !49
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !62
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %34 = load i8, ptr %33, align 8, !tbaa !63
  %35 = icmp ugt i8 %34, 32
  br i1 %35, label %36, label %62

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  %40 = and i32 %28, 8
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %44(ptr noundef nonnull %38) #9
  br label %45

45:                                               ; preds = %43, %36
  store ptr null, ptr %37, align 8, !tbaa !51
  %46 = load i32, ptr %27, align 4, !tbaa !49
  %47 = and i32 %46, -9
  store i32 %47, ptr %27, align 4, !tbaa !49
  %48 = load i32, ptr %15, align 8, !tbaa !60
  %49 = sext i32 %48 to i64
  %50 = load i32, ptr %18, align 4, !tbaa !61
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %49, 2
  %53 = mul i64 %52, %51
  %54 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %55 = tail call ptr %54(i64 noundef %53, ptr noundef nonnull @__func__.addzbufImBuf) #9
  store ptr %55, ptr %37, align 8, !tbaa !51
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %45
  %58 = load i32, ptr %27, align 4, !tbaa !49
  %59 = or i32 %58, 8
  store i32 %59, ptr %27, align 4, !tbaa !49
  %60 = load i32, ptr %30, align 8, !tbaa !62
  %61 = or i32 %60, 8
  store i32 %61, ptr %30, align 8, !tbaa !62
  br label %62

62:                                               ; preds = %57, %45, %14, %26, %1
  %63 = phi i8 [ 0, %1 ], [ 1, %26 ], [ 0, %14 ], [ 1, %57 ], [ 0, %45 ]
  ret i8 %63
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @imb_addtilesImBuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = sext i32 %14 to i64
  %16 = mul i64 %12, %15
  %17 = tail call ptr %8(i64 noundef %16, ptr noundef nonnull @.str.1) #9
  store ptr %17, ptr %4, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = or i32 %21, 1024
  store i32 %22, ptr %20, align 4, !tbaa !49
  br label %23

23:                                               ; preds = %7, %19, %3
  %24 = load ptr, ptr %4, align 8, !tbaa !55
  %25 = icmp ne ptr %24, null
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %1, %23
  %28 = phi i8 [ %26, %23 ], [ 0, %1 ]
  ret i8 %28
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_allocImBuf(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %6 = tail call ptr %5(i64 noundef 2480, ptr noundef nonnull @.str.2) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %98, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  store i32 %0, ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  store i32 %1, ptr %10, align 4, !tbaa !61
  %11 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 4
  store i8 %2, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 26
  store i32 1073741839, ptr %12, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 5
  store i32 4, ptr %13, align 4, !tbaa !64
  %14 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 10
  %15 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 10, i64 1
  store double 0x40A6254AA0000000, ptr %15, align 8, !tbaa !87
  store double 0x40A6254AA0000000, ptr %14, align 8, !tbaa !87
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %8
  %19 = tail call zeroext i8 @imb_addrectImBuf(ptr noundef nonnull %6), !range !89
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6)
  br label %98

22:                                               ; preds = %18, %8
  %23 = and i32 %3, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @imb_addrectfloatImBuf(ptr noundef nonnull %6), !range !89
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6)
  br label %98

29:                                               ; preds = %25, %22
  %30 = and i32 %3, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 7
  %38 = load i32, ptr %37, align 4, !tbaa !49
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %42(ptr noundef nonnull %34) #9
  br label %43

43:                                               ; preds = %41, %36, %32
  store ptr null, ptr %33, align 8, !tbaa !51
  %44 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !49
  %46 = and i32 %45, -9
  store i32 %46, ptr %44, align 4, !tbaa !49
  %47 = load i32, ptr %9, align 8, !tbaa !60
  %48 = sext i32 %47 to i64
  %49 = load i32, ptr %10, align 4, !tbaa !61
  %50 = sext i32 %49 to i64
  %51 = shl nsw i64 %48, 2
  %52 = mul i64 %51, %50
  %53 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %54 = tail call ptr %53(i64 noundef %52, ptr noundef nonnull @__func__.addzbufImBuf) #9
  store ptr %54, ptr %33, align 8, !tbaa !51
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %43
  %57 = load i32, ptr %44, align 4, !tbaa !49
  %58 = or i32 %57, 8
  store i32 %58, ptr %44, align 4, !tbaa !49
  %59 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 6
  %60 = load i32, ptr %59, align 8, !tbaa !62
  %61 = or i32 %60, 8
  store i32 %61, ptr %59, align 8, !tbaa !62
  br label %63

62:                                               ; preds = %43
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6)
  br label %98

63:                                               ; preds = %56, %29
  %64 = and i32 %3, 64
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 7
  %72 = load i32, ptr %71, align 4, !tbaa !49
  %73 = and i32 %72, 64
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %76(ptr noundef nonnull %68) #9
  br label %77

77:                                               ; preds = %75, %70, %66
  store ptr null, ptr %67, align 8, !tbaa !52
  %78 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 7
  %79 = load i32, ptr %78, align 4, !tbaa !49
  %80 = and i32 %79, -65
  store i32 %80, ptr %78, align 4, !tbaa !49
  %81 = load i32, ptr %9, align 8, !tbaa !60
  %82 = sext i32 %81 to i64
  %83 = load i32, ptr %10, align 4, !tbaa !61
  %84 = sext i32 %83 to i64
  %85 = shl nsw i64 %82, 2
  %86 = mul i64 %85, %84
  %87 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !43
  %88 = tail call ptr %87(i64 noundef %86, ptr noundef nonnull @__func__.addzbuffloatImBuf) #9
  store ptr %88, ptr %67, align 8, !tbaa !52
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %77
  %91 = load i32, ptr %78, align 4, !tbaa !49
  %92 = or i32 %91, 64
  store i32 %92, ptr %78, align 4, !tbaa !49
  %93 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 6
  %94 = load i32, ptr %93, align 8, !tbaa !62
  %95 = or i32 %94, 64
  store i32 %95, ptr %93, align 8, !tbaa !62
  br label %97

96:                                               ; preds = %77
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6)
  br label %98

97:                                               ; preds = %90, %63
  tail call void @colormanage_imbuf_set_default_spaces(ptr noundef nonnull %6) #9
  br label %98

98:                                               ; preds = %4, %97, %96, %62, %28, %21
  %99 = phi ptr [ null, %21 ], [ null, %28 ], [ null, %62 ], [ null, %96 ], [ %6, %97 ], [ %6, %4 ]
  ret ptr %99
}

declare void @colormanage_imbuf_set_default_spaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !39, i64 280}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!36, !36, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!35, !39, i64 2376}
!48 = !{!35, !36, i64 40}
!49 = !{!35, !39, i64 36}
!50 = !{!35, !36, i64 48}
!51 = !{!35, !36, i64 96}
!52 = !{!35, !36, i64 104}
!53 = !{!35, !36, i64 2384}
!54 = !{!35, !36, i64 2464}
!55 = !{!35, !36, i64 88}
!56 = !{!35, !39, i64 84}
!57 = !{!35, !39, i64 80}
!58 = distinct !{!58, !45, !46}
!59 = distinct !{!59, !45, !46}
!60 = !{!35, !39, i64 16}
!61 = !{!35, !39, i64 20}
!62 = !{!35, !39, i64 32}
!63 = !{!35, !37, i64 24}
!64 = !{!35, !39, i64 28}
!65 = !{!35, !39, i64 2396}
!66 = !{!35, !39, i64 2392}
!67 = !{i64 0, i64 16, !68, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 4, !70, i64 64, i64 160, !68, i64 224, i64 4, !69, i64 228, i64 4, !69, i64 232, i64 4, !69, i64 236, i64 4, !69, i64 240, i64 8, !43, i64 248, i64 8, !43, i64 256, i64 4, !69, i64 260, i64 1024, !68, i64 1284, i64 1024, !68, i64 2312, i64 8, !43, i64 2320, i64 4, !69, i64 2328, i64 8, !43, i64 2336, i64 4, !69, i64 2340, i64 4, !69, i64 2344, i64 8, !43, i64 2352, i64 8, !43, i64 2360, i64 8, !43, i64 2368, i64 8, !43, i64 2376, i64 4, !69, i64 2380, i64 4, !69, i64 2384, i64 4, !69, i64 2388, i64 4, !69, i64 2392, i64 4, !69, i64 2400, i64 4, !69, i64 2404, i64 4, !69, i64 2408, i64 8, !43, i64 2416, i64 4, !69}
!68 = !{!37, !37, i64 0}
!69 = !{!39, !39, i64 0}
!70 = !{!40, !40, i64 0}
!71 = !{i64 0, i64 4, !70, i64 8, i64 160, !68, i64 168, i64 4, !69, i64 172, i64 4, !69, i64 176, i64 4, !69, i64 180, i64 4, !69, i64 184, i64 8, !43, i64 192, i64 8, !43, i64 200, i64 4, !69, i64 204, i64 1024, !68, i64 1228, i64 1024, !68, i64 2256, i64 8, !43, i64 2264, i64 4, !69, i64 2272, i64 8, !43, i64 2280, i64 4, !69, i64 2284, i64 4, !69, i64 2288, i64 8, !43, i64 2296, i64 8, !43, i64 2304, i64 8, !43, i64 2312, i64 8, !43, i64 2320, i64 4, !69, i64 2324, i64 4, !69, i64 2328, i64 4, !69, i64 2332, i64 4, !69, i64 2336, i64 4, !69, i64 2344, i64 4, !69, i64 2348, i64 4, !69, i64 2352, i64 8, !43, i64 2360, i64 4, !69}
!72 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 4, !69, i64 36, i64 1024, !68, i64 1060, i64 1024, !68, i64 2088, i64 8, !43, i64 2096, i64 4, !69, i64 2104, i64 8, !43, i64 2112, i64 4, !69, i64 2116, i64 4, !69, i64 2120, i64 8, !43, i64 2128, i64 8, !43, i64 2136, i64 8, !43, i64 2144, i64 8, !43, i64 2152, i64 4, !69, i64 2156, i64 4, !69, i64 2160, i64 4, !69, i64 2164, i64 4, !69, i64 2168, i64 4, !69, i64 2176, i64 4, !69, i64 2180, i64 4, !69, i64 2184, i64 8, !43, i64 2192, i64 4, !69}
!73 = !{i64 0, i64 8, !43, i64 8, i64 4, !69, i64 12, i64 1024, !68, i64 1036, i64 1024, !68, i64 2064, i64 8, !43, i64 2072, i64 4, !69, i64 2080, i64 8, !43, i64 2088, i64 4, !69, i64 2092, i64 4, !69, i64 2096, i64 8, !43, i64 2104, i64 8, !43, i64 2112, i64 8, !43, i64 2120, i64 8, !43, i64 2128, i64 4, !69, i64 2132, i64 4, !69, i64 2136, i64 4, !69, i64 2140, i64 4, !69, i64 2144, i64 4, !69, i64 2152, i64 4, !69, i64 2156, i64 4, !69, i64 2160, i64 8, !43, i64 2168, i64 4, !69}
!74 = !{i64 4, i64 8, !43, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 8, !43, i64 28, i64 8, !43, i64 36, i64 8, !43, i64 44, i64 8, !43, i64 52, i64 4, !69, i64 56, i64 4, !69, i64 60, i64 4, !69, i64 64, i64 4, !69, i64 68, i64 4, !69, i64 76, i64 4, !69, i64 80, i64 4, !69, i64 84, i64 8, !43, i64 92, i64 4, !69}
!75 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 4, !69, i64 44, i64 4, !69, i64 48, i64 4, !69, i64 52, i64 4, !69, i64 56, i64 4, !69, i64 64, i64 4, !69, i64 68, i64 4, !69, i64 72, i64 8, !43, i64 80, i64 4, !69}
!76 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 8, !43, i64 40, i64 4, !69}
!77 = !{i64 0, i64 4, !69}
!78 = !{i64 0, i64 4, !69, i64 4, i64 8, !43, i64 12, i64 8, !43, i64 20, i64 16, !68, i64 36, i64 4, !69, i64 40, i64 4, !69, i64 44, i64 4, !69, i64 48, i64 4, !69, i64 52, i64 8, !43, i64 60, i64 8, !43, i64 68, i64 8, !43, i64 76, i64 4, !70, i64 84, i64 160, !68, i64 244, i64 4, !69, i64 248, i64 4, !69, i64 252, i64 4, !69, i64 256, i64 4, !69, i64 260, i64 8, !43, i64 268, i64 8, !43, i64 276, i64 4, !69, i64 280, i64 1024, !68, i64 1304, i64 1024, !68, i64 2332, i64 8, !43, i64 2340, i64 4, !69, i64 2348, i64 8, !43, i64 2356, i64 4, !69, i64 2360, i64 4, !69, i64 2364, i64 8, !43, i64 2372, i64 8, !43, i64 2380, i64 8, !43, i64 2388, i64 8, !43, i64 2396, i64 4, !69, i64 2400, i64 4, !69, i64 2404, i64 4, !69, i64 2408, i64 4, !69, i64 2412, i64 4, !69, i64 2420, i64 4, !69, i64 2424, i64 4, !69, i64 2428, i64 8, !43, i64 2436, i64 4, !69}
!79 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 16, !68, i64 32, i64 4, !69, i64 36, i64 4, !69, i64 40, i64 4, !69, i64 44, i64 4, !69, i64 48, i64 8, !43, i64 56, i64 8, !43, i64 64, i64 8, !43, i64 72, i64 4, !70, i64 80, i64 160, !68, i64 240, i64 4, !69, i64 244, i64 4, !69, i64 248, i64 4, !69, i64 252, i64 4, !69, i64 256, i64 8, !43, i64 264, i64 8, !43, i64 272, i64 4, !69, i64 276, i64 1024, !68, i64 1300, i64 1024, !68, i64 2328, i64 8, !43, i64 2336, i64 4, !69, i64 2344, i64 8, !43, i64 2352, i64 4, !69, i64 2356, i64 4, !69, i64 2360, i64 8, !43, i64 2368, i64 8, !43, i64 2376, i64 8, !43, i64 2384, i64 8, !43, i64 2392, i64 4, !69, i64 2396, i64 4, !69, i64 2400, i64 4, !69, i64 2404, i64 4, !69, i64 2408, i64 4, !69, i64 2416, i64 4, !69, i64 2420, i64 4, !69, i64 2424, i64 8, !43, i64 2432, i64 4, !69}
!80 = !{i64 0, i64 8, !43, i64 8, i64 16, !68, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !69, i64 36, i64 4, !69, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !43, i64 64, i64 4, !70, i64 72, i64 160, !68, i64 232, i64 4, !69, i64 236, i64 4, !69, i64 240, i64 4, !69, i64 244, i64 4, !69, i64 248, i64 8, !43, i64 256, i64 8, !43, i64 264, i64 4, !69, i64 268, i64 1024, !68, i64 1292, i64 1024, !68, i64 2320, i64 8, !43, i64 2328, i64 4, !69, i64 2336, i64 8, !43, i64 2344, i64 4, !69, i64 2348, i64 4, !69, i64 2352, i64 8, !43, i64 2360, i64 8, !43, i64 2368, i64 8, !43, i64 2376, i64 8, !43, i64 2384, i64 4, !69, i64 2388, i64 4, !69, i64 2392, i64 4, !69, i64 2396, i64 4, !69, i64 2400, i64 4, !69, i64 2408, i64 4, !69, i64 2412, i64 4, !69, i64 2416, i64 8, !43, i64 2424, i64 4, !69}
!81 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 4, !69, i64 20, i64 1024, !68, i64 1044, i64 1024, !68, i64 2072, i64 8, !43, i64 2080, i64 4, !69, i64 2088, i64 8, !43, i64 2096, i64 4, !69, i64 2100, i64 4, !69, i64 2104, i64 8, !43, i64 2112, i64 8, !43, i64 2120, i64 8, !43, i64 2128, i64 8, !43, i64 2136, i64 4, !69, i64 2140, i64 4, !69, i64 2144, i64 4, !69, i64 2148, i64 4, !69, i64 2152, i64 4, !69, i64 2160, i64 4, !69, i64 2164, i64 4, !69, i64 2168, i64 8, !43, i64 2176, i64 4, !69}
!82 = !{i64 0, i64 8, !43, i64 8, i64 4, !69, i64 16, i64 8, !43, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !43, i64 64, i64 4, !69, i64 68, i64 4, !69, i64 72, i64 4, !69, i64 76, i64 4, !69, i64 80, i64 4, !69, i64 88, i64 4, !69, i64 92, i64 4, !69, i64 96, i64 8, !43, i64 104, i64 4, !69}
!83 = !{i64 0, i64 4, !69, i64 8, i64 8, !43, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 4, !69, i64 60, i64 4, !69, i64 64, i64 4, !69, i64 68, i64 4, !69, i64 72, i64 4, !69, i64 80, i64 4, !69, i64 84, i64 4, !69, i64 88, i64 8, !43, i64 96, i64 4, !69}
!84 = !{i64 0, i64 8, !43, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 4, !69, i64 52, i64 4, !69, i64 56, i64 4, !69, i64 60, i64 4, !69, i64 64, i64 4, !69, i64 72, i64 4, !69, i64 76, i64 4, !69, i64 80, i64 8, !43, i64 88, i64 4, !69}
!85 = !{i64 0, i64 8, !43, i64 8, i64 4, !69}
!86 = !{!35, !39, i64 312}
!87 = !{!88, !88, i64 0}
!88 = !{!"double", !37, i64 0}
!89 = !{i8 0, i8 2}
