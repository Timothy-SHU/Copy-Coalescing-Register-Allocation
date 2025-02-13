; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_marking.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_marking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }

@__func__.BM_select_history_map_create = private unnamed_addr constant [29 x i8] c"BM_select_history_map_create\00", align 1
@__const.BM_mesh_elem_hflag_enable_test.flag_types = private unnamed_addr constant [3 x i8] c"\01\02\08", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"blender/source/blender/bmesh/intern/bmesh_marking.c\00", align 1
@__func__._bm_elem_hide_set = private unnamed_addr constant [18 x i8] c"_bm_elem_hide_set\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__const.recount_totsels.iter_types = private unnamed_addr constant [3 x i8] c"\01\02\03", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"BMEdit Selection\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_select_mode_clean_ex(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %95

8:                                                ; preds = %2
  %9 = and i32 %5, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %20, %18 ], [ %16, %15 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %19, i8 noundef zeroext 1) #14
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %18, !llvm.loop !43

22:                                               ; preds = %18, %15
  store i32 0, ptr %12, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %22, %11
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !45
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27, %39
  %31 = phi ptr [ %40, %39 ], [ %28, %27 ]
  %32 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %31, i8 noundef zeroext 1) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  call void @BM_vert_select_set(ptr noundef %0, ptr noundef %36, i8 noundef zeroext 1) #14
  %37 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !50
  call void @BM_vert_select_set(ptr noundef %0, ptr noundef %38, i8 noundef zeroext 1) #14
  br label %39

39:                                               ; preds = %30, %34
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !llvm.loop !51

42:                                               ; preds = %39, %27, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  br label %95

43:                                               ; preds = %8
  %44 = and i32 %5, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %95, label %46

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %47 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !34
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %55, %53 ], [ %51, %50 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %54, i8 noundef zeroext 1) #14
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %53, !llvm.loop !52

57:                                               ; preds = %53, %50
  store i32 0, ptr %47, align 8, !tbaa !34
  br label %58

58:                                               ; preds = %57, %46
  %59 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !45
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62, %65
  %66 = phi ptr [ %67, %65 ], [ %63, %62 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %66, i8 noundef zeroext 1) #14
  %67 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %65, !llvm.loop !53

69:                                               ; preds = %65, %62
  store i32 0, ptr %59, align 4, !tbaa !45
  br label %70

70:                                               ; preds = %69, %58
  %71 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !54
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %70
  %75 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #14
  %76 = icmp eq ptr %75, null
  br i1 %76, label %94, label %77

77:                                               ; preds = %74, %91
  %78 = phi ptr [ %92, %91 ], [ %75, %74 ]
  %79 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %78, i8 noundef zeroext 1) #14
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.BMFace, ptr %78, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !55
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi ptr [ %83, %81 ], [ %89, %84 ]
  %86 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !57
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef %87, i8 noundef zeroext 1) #14
  %88 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !59
  %90 = icmp eq ptr %89, %83
  br i1 %90, label %91, label %84, !llvm.loop !60

91:                                               ; preds = %84, %77
  %92 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %77, !llvm.loop !61

94:                                               ; preds = %91, %74, %70
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %95

95:                                               ; preds = %42, %94, %43, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !62 {
  %5 = tail call fastcc zeroext i8 @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #14, !range !63
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #2 !PGOFuncName !64 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !65
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !66 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !65
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BM_vert_select_set(ptr nocapture noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 2) #14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 1) #14
  %9 = icmp eq i8 %8, 0
  br i1 %7, label %15, label %10

10:                                               ; preds = %6
  br i1 %9, label %11, label %20

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !34
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %1, i8 noundef zeroext 1) #14
  br label %20

15:                                               ; preds = %6
  br i1 %9, label %20, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %17, align 8, !tbaa !34
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %1, i8 noundef zeroext 1) #14
  br label %20

20:                                               ; preds = %15, %16, %10, %11, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_edge_select_set(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x ptr], align 16
  %6 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 2) #14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %3
  %9 = icmp eq i8 %2, 0
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 1) #14
  %11 = icmp eq i8 %10, 0
  br i1 %9, label %22, label %12

12:                                               ; preds = %8
  br i1 %11, label %13, label %17

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !45
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !45
  br label %17

17:                                               ; preds = %13, %12
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %1, i8 noundef zeroext 1) #14
  %18 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  tail call void @BM_vert_select_set(ptr noundef %0, ptr noundef %19, i8 noundef zeroext 1) #14
  %20 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  tail call void @BM_vert_select_set(ptr noundef %0, ptr noundef %21, i8 noundef zeroext 1) #14
  br label %59

22:                                               ; preds = %8
  br i1 %11, label %27, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !45
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 4, !tbaa !45
  br label %27

27:                                               ; preds = %23, %22
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %1, i8 noundef zeroext 1) #14
  %28 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 28
  %29 = load i16, ptr %28, align 8, !tbaa !70
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %33 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %34 = load <2 x ptr>, ptr %33, align 8, !tbaa !71
  store <2 x ptr> %34, ptr %5, align 16, !tbaa !71
  br label %35

35:                                               ; preds = %32, %52
  %36 = phi i1 [ true, %32 ], [ false, %52 ]
  %37 = phi i64 [ 0, %32 ], [ 1, %52 ]
  %38 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  %40 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 4, ptr noundef %39) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %35, %48
  %43 = phi ptr [ %49, %48 ], [ %40, %35 ]
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %43, i8 noundef zeroext 1) #14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %42
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %42, !llvm.loop !72

51:                                               ; preds = %48, %35
  call void @BM_vert_select_set(ptr noundef %0, ptr noundef %39, i8 noundef zeroext 0) #14
  br label %52

52:                                               ; preds = %45, %51
  br i1 %36, label %35, label %53, !llvm.loop !73

53:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %59

54:                                               ; preds = %27
  %55 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  tail call void @BM_vert_select_set(ptr noundef nonnull %0, ptr noundef %56, i8 noundef zeroext 0) #14
  %57 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  tail call void @BM_vert_select_set(ptr noundef nonnull %0, ptr noundef %58, i8 noundef zeroext 0) #14
  br label %59

59:                                               ; preds = %53, %54, %3, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_select_mode_clean(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 28
  %3 = load i16, ptr %2, align 8, !tbaa !70
  tail call void @BM_mesh_select_mode_clean_ex(ptr noundef %0, i16 noundef signext %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_select_mode_flush_ex(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %2
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %8, %27
  %12 = phi ptr [ %28, %27 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %14, i8 noundef zeroext 1) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %19, i8 noundef zeroext 1) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %12, i8 noundef zeroext 2) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %12, i8 noundef zeroext 1) #14
  br label %27

26:                                               ; preds = %22, %17, %11
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %12, i8 noundef zeroext 1) #14
  br label %27

27:                                               ; preds = %25, %26
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %11, !llvm.loop !74

30:                                               ; preds = %27, %8
  %31 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %81, label %33

33:                                               ; preds = %30, %50
  %34 = phi ptr [ %52, %50 ], [ %31, %30 ]
  %35 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %34, i8 noundef zeroext 2) #14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.BMFace, ptr %34, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !55
  br label %40

40:                                               ; preds = %46, %37
  %41 = phi ptr [ %39, %37 ], [ %48, %46 ]
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %43, i8 noundef zeroext 1) #14
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = icmp eq ptr %48, %39
  br i1 %49, label %50, label %40, !llvm.loop !76

50:                                               ; preds = %40, %46, %33
  %51 = phi i32 [ 0, %33 ], [ 0, %40 ], [ 1, %46 ]
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %34, i8 noundef zeroext 1, i32 noundef %51) #14
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %81, label %33, !llvm.loop !77

54:                                               ; preds = %2
  %55 = and i32 %5, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %54
  %58 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %81, label %60

60:                                               ; preds = %57, %77
  %61 = phi ptr [ %79, %77 ], [ %58, %57 ]
  %62 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %61, i8 noundef zeroext 2) #14
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !55
  br label %67

67:                                               ; preds = %73, %64
  %68 = phi ptr [ %66, %64 ], [ %75, %73 ]
  %69 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  %71 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %70, i8 noundef zeroext 1) #14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !59
  %76 = icmp eq ptr %75, %66
  br i1 %76, label %77, label %67, !llvm.loop !78

77:                                               ; preds = %67, %73, %60
  %78 = phi i32 [ 0, %60 ], [ 0, %67 ], [ 1, %73 ]
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %61, i8 noundef zeroext 1, i32 noundef %78) #14
  %79 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %60, !llvm.loop !79

81:                                               ; preds = %50, %77, %30, %57, %54
  call void @BM_select_history_validate(ptr noundef %0) #14
  call fastcc void @recount_totsels(ptr noundef %0) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #2 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !65
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !81 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0, i8 noundef zeroext %1) #14
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0, i8 noundef zeroext %1) #14
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_select_history_validate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %7, %13 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.BMEditSelection, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %9, i8 noundef zeroext 1) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef nonnull %6) #15
  br label %13

13:                                               ; preds = %5, %12
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %5, !llvm.loop !86

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recount_totsels(ptr noundef %0) unnamed_addr #0 !PGOFuncName !87 {
  %2 = alloca [3 x ptr], align 16
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  store i32 0, ptr %5, align 4, !tbaa !45
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !34
  store ptr %6, ptr %2, align 16, !tbaa !71
  %7 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  store ptr %5, ptr %7, align 8, !tbaa !71
  %8 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 2
  store ptr %4, ptr %8, align 16, !tbaa !71
  br label %9

9:                                                ; preds = %1, %24
  %10 = phi i64 [ 0, %1 ], [ %28, %24 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %11 = getelementptr inbounds [3 x i8], ptr @__const.recount_totsels.iter_types, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !88
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext %12, ptr noundef null) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %9, %15
  %16 = phi i32 [ %21, %15 ], [ 0, %9 ]
  %17 = phi ptr [ %22, %15 ], [ %13, %9 ]
  %18 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17, i8 noundef zeroext 1) #14
  %19 = icmp ne i8 %18, 0
  %20 = zext i1 %19 to i32
  %21 = add nuw nsw i32 %16, %20
  %22 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !89

24:                                               ; preds = %15, %9
  %25 = phi i32 [ 0, %9 ], [ %21, %15 ]
  %26 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 %10
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  store i32 %25, ptr %27, align 4, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  %28 = add nuw nsw i64 %10, 1
  %29 = icmp eq i64 %28, 3
  br i1 %29, label %30, label %9, !llvm.loop !91

30:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_select_mode_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 28
  %3 = load i16, ptr %2, align 8, !tbaa !70
  tail call void @BM_mesh_select_mode_flush_ex(ptr noundef %0, i16 noundef signext %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_deselect_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1, %37
  %6 = phi ptr [ %38, %37 ], [ %3, %1 ]
  %7 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %6, i8 noundef zeroext 2) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %6, i8 noundef zeroext 1) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %14, i8 noundef zeroext 1) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %19, i8 noundef zeroext 1) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %6, i8 noundef zeroext 1) #14
  br label %23

23:                                               ; preds = %17, %22, %9
  %24 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %6, i8 noundef zeroext 1) #14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %35, %30 ], [ %25, %27 ]
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !93
  call fastcc void @_bm_elem_flag_disable(ptr noundef %33, i8 noundef zeroext 1) #14
  %34 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !94
  %36 = icmp eq ptr %35, %25
  br i1 %36, label %37, label %30, !llvm.loop !95

37:                                               ; preds = %30, %5, %27, %23
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !96

40:                                               ; preds = %37, %1
  call void @BM_select_history_validate(ptr noundef %0) #14
  call fastcc void @recount_totsels(ptr noundef %0) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_select_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1, %21
  %7 = phi ptr [ %22, %21 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %9, i8 noundef zeroext 1) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %14, i8 noundef zeroext 1) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext 2) #14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %7, i8 noundef zeroext 1) #14
  br label %21

21:                                               ; preds = %6, %12, %17, %20
  %22 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !97

24:                                               ; preds = %21, %1
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %24, %45
  %28 = phi ptr [ %46, %45 ], [ %25, %24 ]
  %29 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %28, i8 noundef zeroext 2) #14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  br label %34

34:                                               ; preds = %40, %31
  %35 = phi ptr [ %33, %31 ], [ %42, %40 ]
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  %38 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %37, i8 noundef zeroext 1) #14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  %43 = icmp eq ptr %42, %33
  br i1 %43, label %44, label %34, !llvm.loop !98

44:                                               ; preds = %40
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %28, i8 noundef zeroext 1) #14
  br label %45

45:                                               ; preds = %34, %27, %44
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %27, !llvm.loop !99

48:                                               ; preds = %45, %24
  call fastcc void @recount_totsels(ptr noundef %0) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_select_set(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 2) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %80

9:                                                ; preds = %3
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 1) #14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !54
  br label %18

18:                                               ; preds = %14, %11
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %1, i8 noundef zeroext 1) #14
  %19 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %20, %18 ], [ %28, %21 ]
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  tail call void @BM_vert_select_set(ptr noundef %0, ptr noundef %24, i8 noundef zeroext 1) #14
  %25 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  tail call void @BM_edge_select_set(ptr noundef %0, ptr noundef %26, i8 noundef zeroext 1) #14
  %27 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = icmp eq ptr %28, %20
  br i1 %29, label %80, label %21, !llvm.loop !100

30:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %31 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 1) #14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !54
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %34, align 8, !tbaa !54
  br label %37

37:                                               ; preds = %33, %30
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %1, i8 noundef zeroext 1) #14
  %38 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef %1) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %37, %55
  %41 = phi ptr [ %56, %55 ], [ %38, %37 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 8, ptr noundef %43) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %40, %50
  %47 = phi ptr [ %51, %50 ], [ %44, %40 ]
  %48 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %47, i8 noundef zeroext 1) #14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %46, !llvm.loop !101

53:                                               ; preds = %50, %40
  %54 = load ptr, ptr %42, align 8, !tbaa !57
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef %54, i8 noundef zeroext 0) #14
  br label %55

55:                                               ; preds = %46, %53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %40, !llvm.loop !102

58:                                               ; preds = %55, %37
  %59 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef %1) #14
  %60 = icmp eq ptr %59, null
  br i1 %60, label %79, label %61

61:                                               ; preds = %58, %76
  %62 = phi ptr [ %77, %76 ], [ %59, %58 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !75
  %65 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 4, ptr noundef %64) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %61, %71
  %68 = phi ptr [ %72, %71 ], [ %65, %61 ]
  %69 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %68, i8 noundef zeroext 1) #14
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %67, !llvm.loop !103

74:                                               ; preds = %71, %61
  %75 = load ptr, ptr %63, align 8, !tbaa !75
  call void @BM_vert_select_set(ptr noundef %0, ptr noundef %75, i8 noundef zeroext 0) #14
  br label %76

76:                                               ; preds = %67, %74
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  %77 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %61, !llvm.loop !104

79:                                               ; preds = %76, %58
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %80

80:                                               ; preds = %21, %79, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_select_mode_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %4 = trunc i32 %1 to i16
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 28
  store i16 %4, ptr %5, align 8, !tbaa !70
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @BM_mesh_select_mode_flush(ptr noundef nonnull %0) #14
  br label %39

9:                                                ; preds = %2
  %10 = and i32 %1, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12, %20
  %16 = phi ptr [ %21, %20 ], [ %13, %12 ]
  %17 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %16, i8 noundef zeroext 1) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef nonnull %16, i8 noundef zeroext 1) #14
  br label %20

20:                                               ; preds = %15, %19
  %21 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !105

23:                                               ; preds = %20, %12
  call void @BM_mesh_select_mode_flush(ptr noundef %0) #14
  br label %39

24:                                               ; preds = %9
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27, %35
  %31 = phi ptr [ %36, %35 ], [ %28, %27 ]
  %32 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %31, i8 noundef zeroext 1) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @BM_face_select_set(ptr noundef %0, ptr noundef nonnull %31, i8 noundef zeroext 1) #14
  br label %35

35:                                               ; preds = %30, %34
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30, !llvm.loop !106

38:                                               ; preds = %35, %27
  call void @BM_mesh_select_mode_flush(ptr noundef %0) #14
  br label %39

39:                                               ; preds = %23, %38, %24, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_mesh_elem_hflag_count_enabled(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @bm_mesh_flag_count(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 1) #14
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_mesh_flag_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !107 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %7 = zext i8 %1 to i32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %5
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = icmp eq i8 %3, 0
  br label %15

15:                                               ; preds = %13, %26
  %16 = phi i32 [ 0, %13 ], [ %27, %26 ]
  %17 = phi ptr [ %11, %13 ], [ %28, %26 ]
  br i1 %14, label %21, label %18

18:                                               ; preds = %15
  %19 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17, i8 noundef zeroext 2) #14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %15
  %22 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %17, i8 noundef zeroext %2) #14, !range !63
  %23 = icmp eq i8 %22, %4
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %16, %24
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i32 [ %16, %18 ], [ %25, %21 ]
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %15, !llvm.loop !108

30:                                               ; preds = %26, %10, %5
  %31 = phi i32 [ 0, %5 ], [ 0, %10 ], [ %27, %26 ]
  %32 = and i32 %7, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  %35 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %34
  %38 = icmp eq i8 %3, 0
  br label %39

39:                                               ; preds = %37, %50
  %40 = phi i32 [ %31, %37 ], [ %51, %50 ]
  %41 = phi ptr [ %35, %37 ], [ %52, %50 ]
  br i1 %38, label %45, label %42

42:                                               ; preds = %39
  %43 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %41, i8 noundef zeroext 2) #14
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42, %39
  %46 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %41, i8 noundef zeroext %2) #14, !range !63
  %47 = icmp eq i8 %46, %4
  %48 = zext i1 %47 to i32
  %49 = add nsw i32 %40, %48
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %40, %42 ], [ %49, %45 ]
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %39, !llvm.loop !109

54:                                               ; preds = %50, %34, %30
  %55 = phi i32 [ %31, %30 ], [ %31, %34 ], [ %51, %50 ]
  %56 = and i32 %7, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %54
  %59 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %60 = icmp eq ptr %59, null
  br i1 %60, label %78, label %61

61:                                               ; preds = %58
  %62 = icmp eq i8 %3, 0
  br label %63

63:                                               ; preds = %61, %74
  %64 = phi i32 [ %55, %61 ], [ %75, %74 ]
  %65 = phi ptr [ %59, %61 ], [ %76, %74 ]
  br i1 %62, label %69, label %66

66:                                               ; preds = %63
  %67 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %65, i8 noundef zeroext 2) #14
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66, %63
  %70 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %65, i8 noundef zeroext %2) #14, !range !63
  %71 = icmp eq i8 %70, %4
  %72 = zext i1 %71 to i32
  %73 = add nsw i32 %64, %72
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %64, %66 ], [ %73, %69 ]
  %76 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %63, !llvm.loop !110

78:                                               ; preds = %74, %58, %54
  %79 = phi i32 [ %55, %54 ], [ %55, %58 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  ret i32 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_mesh_elem_hflag_count_disabled(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @bm_mesh_flag_count(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_elem_select_set(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !111
  switch i8 %5, label %9 [
    i8 1, label %6
    i8 2, label %7
    i8 8, label %8
  ]

6:                                                ; preds = %3
  tail call void @BM_vert_select_set(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #14
  br label %9

7:                                                ; preds = %3
  tail call void @BM_edge_select_set(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #14
  br label %9

8:                                                ; preds = %3
  tail call void @BM_face_select_set(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #14
  br label %9

9:                                                ; preds = %3, %8, %7, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BM_mesh_active_face_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  store ptr %1, ptr %3, align 8, !tbaa !113
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_mesh_active_face_get(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %8
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %6, i8 noundef zeroext 1) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %10, %3
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  %20 = icmp eq i8 %2, 0
  br label %21

21:                                               ; preds = %19, %35
  %22 = phi ptr [ %17, %19 ], [ %37, %35 ]
  %23 = getelementptr inbounds %struct.BMEditSelection, ptr %22, i64 0, i32 3
  %24 = load i8, ptr %23, align 8, !tbaa !114
  %25 = icmp eq i8 %24, 8
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.BMEditSelection, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %28, i8 noundef zeroext 2) #14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  br i1 %20, label %39, label %32

32:                                               ; preds = %31
  %33 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %28, i8 noundef zeroext 1) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %26, %21
  %36 = getelementptr inbounds %struct.BMEditSelection, ptr %22, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %21, !llvm.loop !115

39:                                               ; preds = %31, %32
  %40 = icmp eq ptr %28, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %15, %39
  %42 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %41, %48
  %45 = phi ptr [ %49, %48 ], [ %42, %41 ]
  %46 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %45, i8 noundef zeroext 1) #14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %44, !llvm.loop !116

51:                                               ; preds = %44, %48, %41, %39
  %52 = phi ptr [ %28, %39 ], [ null, %41 ], [ %45, %44 ], [ null, %48 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %53

53:                                               ; preds = %8, %10, %13, %51
  %54 = phi ptr [ %52, %51 ], [ null, %13 ], [ %6, %10 ], [ %6, %8 ]
  ret ptr %54
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_mesh_active_edge_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !tbaa !114
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %5, %1, %9
  %13 = phi ptr [ %11, %9 ], [ null, %1 ], [ null, %5 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_mesh_active_vert_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !tbaa !114
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %5, %1, %9
  %13 = phi ptr [ %11, %9 ], [ null, %1 ], [ null, %5 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_mesh_active_elem_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_editselection_center(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !114
  switch i8 %4, label %21 [
    i8 1, label %5
    i8 2, label %9
    i8 8, label %18
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %8) #14
  br label %21

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  tail call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull %17) #15
  br label %21

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  tail call void @BM_face_calc_center_mean(ptr noundef %20, ptr noundef %1) #15
  br label %21

21:                                               ; preds = %2, %9, %18, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !118 {
  %3 = load float, ptr %1, align 4, !tbaa !119
  store float %3, ptr %0, align 4, !tbaa !119
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !119
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !119
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !119
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !119
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_editselection_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !114
  switch i8 %6, label %28 [
    i8 1, label %7
    i8 2, label %11
    i8 8, label %24
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %10) #14
  br label %28

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 3
  %17 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 3
  tail call fastcc void @add_v3_v3v3(ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull %19) #14
  %20 = load ptr, ptr %17, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %14, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %21, ptr noundef nonnull %23) #14
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #14
  call fastcc void @cross_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  tail call fastcc void @normalize_v3(ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  br label %28

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %27) #14
  br label %28

28:                                               ; preds = %2, %11, %24, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !121 {
  %4 = load float, ptr %1, align 4, !tbaa !119
  %5 = load float, ptr %2, align 4, !tbaa !119
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !119
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !119
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !119
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !119
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !119
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !119
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !122 {
  %4 = load float, ptr %1, align 4, !tbaa !119
  %5 = load float, ptr %2, align 4, !tbaa !119
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !119
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !119
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !119
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !119
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !119
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !119
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !123 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !119
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !119
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !119
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !119
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !119
  %15 = load float, ptr %8, align 4, !tbaa !119
  %16 = load float, ptr %2, align 4, !tbaa !119
  %17 = load float, ptr %1, align 4, !tbaa !119
  %18 = load float, ptr %6, align 4, !tbaa !119
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !119
  %23 = load float, ptr %1, align 4, !tbaa !119
  %24 = load float, ptr %10, align 4, !tbaa !119
  %25 = load float, ptr %4, align 4, !tbaa !119
  %26 = load float, ptr %2, align 4, !tbaa !119
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !124 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_editselection_plane(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !114
  switch i8 %5, label %63 [
    i8 1, label %6
    i8 2, label %29
    i8 8, label %60
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !125
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  call void @BM_editselection_center(ptr noundef nonnull %10, ptr noundef nonnull %3) #14
  %13 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %13) #14
  br label %28

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !119
  %17 = fcmp olt float %16, 5.000000e-01
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store float 1.000000e+00, ptr %3, align 4, !tbaa !119
  br label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !119
  %22 = fcmp olt float %21, 5.000000e-01
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 1.000000e+00, ptr %24, align 4, !tbaa !119
  br label %27

25:                                               ; preds = %19
  %26 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 1.000000e+00, ptr %26, align 4, !tbaa !119
  br label %27

27:                                               ; preds = %23, %25, %18
  call fastcc void @cross_v3_v3v3(ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %3) #14
  br label %28

28:                                               ; preds = %27, %12
  call fastcc void @normalize_v3(ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  br label %63

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  %32 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %31) #14, !range !63
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  tail call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef nonnull %39, ptr noundef nonnull %44) #14
  br label %59

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  %49 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !119
  %51 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.BMVert, ptr %52, i64 0, i32 2
  %54 = getelementptr inbounds %struct.BMVert, ptr %52, i64 0, i32 2, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !119
  %56 = fcmp ogt float %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  tail call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef nonnull %48, ptr noundef nonnull %53) #14
  br label %59

58:                                               ; preds = %45
  tail call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef nonnull %53, ptr noundef nonnull %48) #14
  br label %59

59:                                               ; preds = %57, %58, %34
  tail call fastcc void @normalize_v3(ptr noundef %1) #14
  br label %63

60:                                               ; preds = %2
  %61 = getelementptr inbounds %struct.BMEditSelection, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !85
  tail call void @BM_face_calc_plane(ptr noundef %62, ptr noundef %1) #15
  br label %63

63:                                               ; preds = %2, %59, %60, %28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !126 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @BM_face_calc_plane(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_bm_select_history_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %4 = tail call ptr @BLI_findptr(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #15
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_bm_select_history_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %4 = tail call ptr @BLI_findptr(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_bm_select_history_store_notest(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @bm_select_history_create(ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_select_history_create(ptr noundef %0) unnamed_addr #0 !PGOFuncName !127 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !71
  %3 = tail call ptr %2(i64 noundef 32, ptr noundef nonnull @.str.3) #15
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !128
  %6 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 3
  store i8 %5, ptr %6, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.BMEditSelection, ptr %3, i64 0, i32 2
  store ptr %0, ptr %7, align 8, !tbaa !85
  ret ptr %3
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_bm_select_history_store(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @_bm_select_history_check(ptr noundef %0, ptr noundef %1) #14, !range !63
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_bm_select_history_store_notest(ptr noundef %0, ptr noundef %1) #14
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_bm_select_history_store_after_notest(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @bm_select_history_create(ptr noundef %2) #14
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %4) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_bm_select_history_store_after(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call zeroext i8 @_bm_select_history_check(ptr noundef %0, ptr noundef %2) #14, !range !63
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_bm_select_history_store_after_notest(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_select_history_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_select_history_active_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = tail call ptr @BM_mesh_active_face_get(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %6 = icmp eq ptr %4, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMEditSelection, ptr %4, i64 0, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !114
  %10 = icmp eq i8 %9, 8
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = icmp eq ptr %5, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.BMEditSelection, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  br label %16

16:                                               ; preds = %11, %13
  %17 = phi ptr [ %15, %13 ], [ %5, %11 ]
  %18 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 3
  store i8 8, ptr %19, align 8, !tbaa !114
  br label %31

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.BMEditSelection, ptr %4, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 3
  store i8 %9, ptr %24, align 8, !tbaa !114
  br label %31

25:                                               ; preds = %2
  %26 = icmp eq ptr %5, null
  %27 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 2
  br i1 %26, label %30, label %28

28:                                               ; preds = %25
  store ptr %5, ptr %27, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.BMEditSelection, ptr %1, i64 0, i32 3
  store i8 8, ptr %29, align 8, !tbaa !114
  br label %31

30:                                               ; preds = %25
  store ptr null, ptr %27, align 8, !tbaa !85
  br label %31

31:                                               ; preds = %28, %20, %16, %30
  %32 = phi i8 [ 0, %30 ], [ 1, %16 ], [ 1, %20 ], [ 1, %28 ]
  ret i8 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_select_history_map_create(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %3 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %2) #14, !range !63
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_select_history_map_create) #15
  %7 = load ptr, ptr %2, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.BMEditSelection, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %12, ptr noundef nonnull %10) #15
  %13 = load ptr, ptr %10, align 8, !tbaa !71
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !129

15:                                               ; preds = %9, %5, %1
  %16 = phi ptr [ null, %1 ], [ %6, %5 ], [ %6, %9 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !130 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_elem_hflag_disable_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = and i8 %2, -2
  %10 = and i8 %2, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @BM_select_history_clear(ptr noundef %0) #14
  br label %13

13:                                               ; preds = %12, %6
  %14 = icmp eq i8 %1, 11
  %15 = icmp eq i8 %2, 1
  %16 = and i1 %14, %15
  %17 = or i8 %5, %3
  %18 = icmp eq i8 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = icmp eq i8 %3, 0
  %22 = icmp eq i8 %5, 0
  %23 = icmp eq i8 %4, 0
  br label %41

24:                                               ; preds = %13, %34
  %25 = phi i64 [ %35, %34 ], [ 0, %13 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  %26 = getelementptr inbounds [3 x i8], ptr @__const.recount_totsels.iter_types, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !88
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext %27, ptr noundef null) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24, %30
  %31 = phi ptr [ %32, %30 ], [ %28, %24 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %31, i8 noundef zeroext 1) #14
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %30, !llvm.loop !132

34:                                               ; preds = %30, %24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  %35 = add nuw nsw i64 %25, 1
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %37, label %24, !llvm.loop !133

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  store i32 0, ptr %38, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  store i32 0, ptr %39, align 4, !tbaa !45
  %40 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  store i32 0, ptr %40, align 8, !tbaa !34
  br label %74

41:                                               ; preds = %20, %71
  %42 = phi i64 [ 0, %20 ], [ %72, %71 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #13
  %43 = getelementptr inbounds [3 x i8], ptr @__const.BM_mesh_elem_hflag_enable_test.flag_types, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !88
  %45 = and i8 %44, %1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds [3 x i8], ptr @__const.recount_totsels.iter_types, i64 0, i64 %42
  %49 = load i8, ptr %48, align 1, !tbaa !88
  %50 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext %49, ptr noundef null) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %47, %68
  %53 = phi ptr [ %69, %68 ], [ %50, %47 ]
  br i1 %21, label %57, label %54

54:                                               ; preds = %52
  %55 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %53, i8 noundef zeroext 2) #14
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54, %52
  br i1 %22, label %61, label %58

58:                                               ; preds = %57
  %59 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %53, i8 noundef zeroext %5) #14
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %57
  br i1 %11, label %63, label %62

62:                                               ; preds = %61
  call void @BM_elem_select_set(ptr noundef %0, ptr noundef nonnull %53, i8 noundef zeroext 0) #14
  br label %63

63:                                               ; preds = %62, %61
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %53, i8 noundef zeroext %2) #14
  br label %68

64:                                               ; preds = %58
  br i1 %23, label %68, label %65

65:                                               ; preds = %64
  br i1 %11, label %67, label %66

66:                                               ; preds = %65
  call void @BM_elem_select_set(ptr noundef %0, ptr noundef nonnull %53, i8 noundef zeroext 1) #14
  br label %67

67:                                               ; preds = %66, %65
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %53, i8 noundef zeroext %9) #14
  br label %68

68:                                               ; preds = %54, %64, %67, %63
  %69 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %52, !llvm.loop !134

71:                                               ; preds = %68, %47, %41
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #13
  %72 = add nuw nsw i64 %42, 1
  %73 = icmp eq i64 %72, 3
  br i1 %73, label %74, label %41, !llvm.loop !135

74:                                               ; preds = %71, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_elem_hflag_enable_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = and i8 %2, -2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  %9 = and i8 %2, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @BM_select_history_clear(ptr noundef %0) #14
  br label %12

12:                                               ; preds = %11, %6
  %13 = icmp eq i8 %3, 0
  %14 = icmp eq i8 %5, 0
  %15 = icmp eq i8 %4, 0
  br label %16

16:                                               ; preds = %12, %46
  %17 = phi i64 [ 0, %12 ], [ %47, %46 ]
  %18 = getelementptr inbounds [3 x i8], ptr @__const.BM_mesh_elem_hflag_enable_test.flag_types, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !88
  %20 = and i8 %19, %1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds [3 x i8], ptr @__const.recount_totsels.iter_types, i64 0, i64 %17
  %24 = load i8, ptr %23, align 1, !tbaa !88
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext %24, ptr noundef null) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %22, %43
  %28 = phi ptr [ %44, %43 ], [ %25, %22 ]
  br i1 %13, label %32, label %29

29:                                               ; preds = %27
  %30 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %28, i8 noundef zeroext 2) #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29, %27
  br i1 %14, label %36, label %33

33:                                               ; preds = %32
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %28, i8 noundef zeroext %5) #14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %32
  br i1 %10, label %38, label %37

37:                                               ; preds = %36
  call void @BM_elem_select_set(ptr noundef %0, ptr noundef nonnull %28, i8 noundef zeroext 1) #14
  br label %38

38:                                               ; preds = %37, %36
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %28, i8 noundef zeroext %8) #14
  br label %43

39:                                               ; preds = %33
  br i1 %15, label %43, label %40

40:                                               ; preds = %39
  br i1 %10, label %42, label %41

41:                                               ; preds = %40
  call void @BM_elem_select_set(ptr noundef %0, ptr noundef nonnull %28, i8 noundef zeroext 0) #14
  br label %42

42:                                               ; preds = %41, %40
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %28, i8 noundef zeroext %2) #14
  br label %43

43:                                               ; preds = %29, %39, %42, %38
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %27, !llvm.loop !136

46:                                               ; preds = %43, %22, %16
  %47 = add nuw nsw i64 %17, 1
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %16, !llvm.loop !137

49:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  tail call void @BM_mesh_elem_hflag_disable_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_elem_hflag_enable_all(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  tail call void @BM_mesh_elem_hflag_enable_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_vert_hide_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = zext i8 %1 to i32
  tail call fastcc void @_bm_elem_flag_set(ptr noundef %0, i8 noundef zeroext 2, i32 noundef %5) #14
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %2 ]
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %9, i8 noundef zeroext 2, i32 noundef %5) #14
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %9) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %8 ]
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %13, i8 noundef zeroext 2, i32 noundef %5) #14
  %14 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !138

16:                                               ; preds = %12, %8
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !139

19:                                               ; preds = %16, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_edge_hide_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 8, ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  %6 = zext i8 %1 to i32
  br i1 %5, label %11, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %4, %2 ]
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %8, i8 noundef zeroext 2, i32 noundef %6) #14
  %9 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !140

11:                                               ; preds = %7, %2
  call fastcc void @_bm_elem_flag_set(ptr noundef %0, i8 noundef zeroext 2, i32 noundef %6) #14
  %12 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  call fastcc void @vert_flush_hide_set(ptr noundef %13) #14
  %14 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  call fastcc void @vert_flush_hide_set(ptr noundef %15) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vert_flush_hide_set(ptr noundef %0) unnamed_addr #0 !PGOFuncName !141 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %12
  %6 = phi i8 [ %14, %12 ], [ 1, %1 ]
  %7 = phi ptr [ %15, %12 ], [ %3, %1 ]
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext 2) #14
  %11 = icmp ne i8 %10, 0
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i1 [ false, %5 ], [ %11, %9 ]
  %14 = zext i1 %13 to i8
  %15 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !142

17:                                               ; preds = %12
  %18 = zext i1 %13 to i32
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i32 [ 1, %1 ], [ %18, %17 ]
  call fastcc void @_bm_elem_flag_set(ptr noundef %0, i8 noundef zeroext 2, i32 noundef %20) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_hide_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %4 = zext i8 %1 to i32
  tail call fastcc void @_bm_elem_flag_set(ptr noundef %0, i8 noundef zeroext 2, i32 noundef %4) #14
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 11, ptr noundef %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  call fastcc void @edge_flush_hide(ptr noundef %10) #14
  %11 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !143

13:                                               ; preds = %7, %2
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 11, ptr noundef %0) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  call fastcc void @vert_flush_hide_set(ptr noundef %19) #14
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !144

22:                                               ; preds = %16, %13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edge_flush_hide(ptr noundef %0) unnamed_addr #0 !PGOFuncName !145 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 8, ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %12
  %6 = phi i8 [ %14, %12 ], [ 1, %1 ]
  %7 = phi ptr [ %15, %12 ], [ %3, %1 ]
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext 2) #14
  %11 = icmp ne i8 %10, 0
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i1 [ false, %5 ], [ %11, %9 ]
  %14 = zext i1 %13 to i8
  %15 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !146

17:                                               ; preds = %12
  %18 = zext i1 %13 to i32
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i32 [ 1, %1 ], [ %18, %17 ]
  call fastcc void @_bm_elem_flag_set(ptr noundef %0, i8 noundef zeroext 2, i32 noundef %20) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_bm_elem_hide_set(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !128
  switch i8 %5, label %18 [
    i8 1, label %6
    i8 2, label %10
    i8 8, label %14
  ]

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @BM_vert_select_set(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #14
  br label %9

9:                                                ; preds = %8, %6
  tail call void @BM_vert_hide_set(ptr noundef nonnull %1, i8 noundef zeroext %2) #14
  br label %21

10:                                               ; preds = %3
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @BM_edge_select_set(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #14
  br label %13

13:                                               ; preds = %12, %10
  tail call void @BM_edge_hide_set(ptr noundef nonnull %1, i8 noundef zeroext %2) #14
  br label %21

14:                                               ; preds = %3
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @BM_face_select_set(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #14
  br label %17

17:                                               ; preds = %16, %14
  tail call void @BM_face_hide_set(ptr noundef nonnull %1, i8 noundef zeroext %2) #14
  br label %21

18:                                               ; preds = %3
  %19 = load ptr, ptr @stderr, align 8, !tbaa !71
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._bm_elem_hide_set, i32 noundef 1186, ptr noundef nonnull @.str.2) #16
  br label %21

21:                                               ; preds = %18, %17, %13, %9
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !147 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !148
  switch i8 %2, label %54 [
    i8 1, label %6
    i8 2, label %11
    i8 3, label %16
    i8 4, label %21
    i8 5, label %24
    i8 6, label %27
    i8 7, label %30
    i8 8, label %33
    i8 9, label %36
    i8 10, label %39
    i8 11, label %42
    i8 13, label %45
    i8 14, label %48
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !149
  %8 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  br label %51

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !149
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !151
  br label %51

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !149
  %18 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !152
  br label %51

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %22, align 8, !tbaa !149
  %23 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %23, align 8, !tbaa !67
  br label %51

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %25, align 8, !tbaa !149
  %26 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %26, align 8, !tbaa !67
  br label %51

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %28, align 8, !tbaa !149
  %29 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %29, align 8, !tbaa !67
  br label %51

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %31, align 8, !tbaa !149
  %32 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %32, align 8, !tbaa !67
  br label %51

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %34, align 8, !tbaa !149
  %35 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %35, align 8, !tbaa !67
  br label %51

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %37, align 8, !tbaa !149
  %38 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %38, align 8, !tbaa !67
  br label %51

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %40, align 8, !tbaa !149
  %41 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %41, align 8, !tbaa !67
  br label %51

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %43, align 8, !tbaa !149
  %44 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %44, align 8, !tbaa !67
  br label %51

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %46, align 8, !tbaa !149
  %47 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %47, align 8, !tbaa !67
  br label %51

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %49, align 8, !tbaa !149
  %50 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %50, align 8, !tbaa !67
  br label %51

51:                                               ; preds = %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %16, %11, %6
  %52 = phi ptr [ %3, %48 ], [ %3, %45 ], [ %3, %42 ], [ %3, %39 ], [ %3, %36 ], [ %3, %33 ], [ %3, %30 ], [ %3, %27 ], [ %3, %24 ], [ %3, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
  %53 = phi ptr [ @bmiter__loop_of_edge_begin, %48 ], [ @bmiter__loop_of_loop_begin, %45 ], [ @bmiter__loop_of_face_begin, %42 ], [ @bmiter__edge_of_face_begin, %39 ], [ @bmiter__vert_of_face_begin, %36 ], [ @bmiter__face_of_edge_begin, %33 ], [ @bmiter__vert_of_edge_begin, %30 ], [ @bmiter__loop_of_vert_begin, %27 ], [ @bmiter__face_of_vert_begin, %24 ], [ @bmiter__edge_of_vert_begin, %21 ], [ @bmiter__elem_of_mesh_begin, %16 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %6 ]
  store ptr %52, ptr %0, align 8, !tbaa !88
  tail call void %53(ptr noundef nonnull %0) #15
  br label %54

54:                                               ; preds = %4, %51
  %55 = phi i8 [ 1, %51 ], [ 0, %4 ]
  ret i8 %55
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__loop_of_loop_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__loop_of_loop_step(ptr noundef) #6

; Function Attrs: optsize
declare void @bmiter__loop_of_edge_begin(ptr noundef) #6

; Function Attrs: optsize
declare ptr @bmiter__loop_of_edge_step(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !65
  %5 = and i8 %4, %1
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !154 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !155 {
  %3 = load float, ptr %0, align 4, !tbaa !119
  %4 = load float, ptr %1, align 4, !tbaa !119
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !119
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !119
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !119
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !119
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !156 {
  %4 = load float, ptr %1, align 4, !tbaa !119
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !119
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !119
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !119
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !119
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !157 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !119
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !119
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { cold optsize }

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
!34 = !{!35, !36, i64 16}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!35, !36, i64 20}
!46 = !{!47, !39, i64 24}
!47 = !{!"BMEdge", !48, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !49, i64 48, !49, i64 64}
!48 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!49 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!50 = !{!47, !39, i64 32}
!51 = distinct !{!51, !44}
!52 = distinct !{!52, !44}
!53 = distinct !{!53, !44}
!54 = !{!35, !36, i64 24}
!55 = !{!56, !39, i64 24}
!56 = !{!"BMFace", !48, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!57 = !{!58, !39, i64 24}
!58 = !{!"BMLoop", !48, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!59 = !{!58, !39, i64 56}
!60 = distinct !{!60, !44}
!61 = distinct !{!61, !44}
!62 = !{!"bmesh_marking.c:BM_iter_new"}
!63 = !{i8 0, i8 2}
!64 = !{!"bmesh_marking.c:_bm_elem_flag_disable"}
!65 = !{!48, !37, i64 13}
!66 = !{!"bmesh_marking.c:BM_iter_step"}
!67 = !{!68, !39, i64 48}
!68 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!69 = !{!"bmesh_marking.c:_bm_elem_flag_test"}
!70 = !{!35, !41, i64 944}
!71 = !{!39, !39, i64 0}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !44}
!74 = distinct !{!74, !44}
!75 = !{!58, !39, i64 16}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = !{!"bmesh_marking.c:_bm_elem_flag_enable"}
!81 = !{!"bmesh_marking.c:_bm_elem_flag_set"}
!82 = !{!35, !39, i64 960}
!83 = !{!84, !39, i64 0}
!84 = !{!"BMEditSelection", !39, i64 0, !39, i64 8, !39, i64 16, !37, i64 24}
!85 = !{!84, !39, i64 16}
!86 = distinct !{!86, !44}
!87 = !{!"bmesh_marking.c:recount_totsels"}
!88 = !{!37, !37, i64 0}
!89 = distinct !{!89, !44}
!90 = !{!36, !36, i64 0}
!91 = distinct !{!91, !44}
!92 = !{!47, !39, i64 40}
!93 = !{!58, !39, i64 32}
!94 = !{!58, !39, i64 40}
!95 = distinct !{!95, !44}
!96 = distinct !{!96, !44}
!97 = distinct !{!97, !44}
!98 = distinct !{!98, !44}
!99 = distinct !{!99, !44}
!100 = distinct !{!100, !44}
!101 = distinct !{!101, !44}
!102 = distinct !{!102, !44}
!103 = distinct !{!103, !44}
!104 = distinct !{!104, !44}
!105 = distinct !{!105, !44}
!106 = distinct !{!106, !44}
!107 = !{!"bmesh_marking.c:bm_mesh_flag_count"}
!108 = distinct !{!108, !44}
!109 = distinct !{!109, !44}
!110 = distinct !{!110, !44}
!111 = !{!112, !37, i64 12}
!112 = !{!"BMElem", !48, i64 0}
!113 = !{!35, !39, i64 976}
!114 = !{!84, !37, i64 24}
!115 = distinct !{!115, !44}
!116 = distinct !{!116, !44}
!117 = !{!35, !39, i64 968}
!118 = !{!"bmesh_marking.c:copy_v3_v3"}
!119 = !{!120, !120, i64 0}
!120 = !{!"float", !37, i64 0}
!121 = !{!"bmesh_marking.c:add_v3_v3v3"}
!122 = !{!"bmesh_marking.c:sub_v3_v3v3"}
!123 = !{!"bmesh_marking.c:cross_v3_v3v3"}
!124 = !{!"bmesh_marking.c:normalize_v3"}
!125 = !{!84, !39, i64 8}
!126 = !{!"bmesh_marking.c:BM_edge_is_boundary"}
!127 = !{!"bmesh_marking.c:bm_select_history_create"}
!128 = !{!48, !37, i64 12}
!129 = distinct !{!129, !44}
!130 = !{!"bmesh_marking.c:BLI_listbase_is_empty"}
!131 = !{!42, !39, i64 0}
!132 = distinct !{!132, !44}
!133 = distinct !{!133, !44}
!134 = distinct !{!134, !44}
!135 = distinct !{!135, !44}
!136 = distinct !{!136, !44}
!137 = distinct !{!137, !44}
!138 = distinct !{!138, !44}
!139 = distinct !{!139, !44}
!140 = distinct !{!140, !44}
!141 = !{!"bmesh_marking.c:vert_flush_hide_set"}
!142 = distinct !{!142, !44}
!143 = distinct !{!143, !44}
!144 = distinct !{!144, !44}
!145 = !{!"bmesh_marking.c:edge_flush_hide"}
!146 = distinct !{!146, !44}
!147 = !{!"bmesh_marking.c:BM_iter_init"}
!148 = !{!68, !37, i64 60}
!149 = !{!68, !39, i64 40}
!150 = !{!35, !39, i64 32}
!151 = !{!35, !39, i64 40}
!152 = !{!35, !39, i64 56}
!153 = !{!"bmesh_marking.c:_bm_elem_flag_test_bool"}
!154 = !{!"bmesh_marking.c:normalize_v3_v3"}
!155 = !{!"bmesh_marking.c:dot_v3v3"}
!156 = !{!"bmesh_marking.c:mul_v3_v3fl"}
!157 = !{!"bmesh_marking.c:zero_v3"}
