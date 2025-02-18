; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_queries.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_queries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"blender/source/blender/bmesh/intern/bmesh_queries.c\00", align 1
@__func__.BM_face_exists_multi_edge = private unnamed_addr constant [26 x i8] c"BM_face_exists_multi_edge\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_calc_face_groups = private unnamed_addr constant [25 x i8] c"BM_mesh_calc_face_groups\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_calc_edge_groups = private unnamed_addr constant [25 x i8] c"BM_mesh_calc_edge_groups\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_other_edge_loop(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %11, %3
  %7 = phi ptr [ %5, %3 ], [ %13, %11 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %15, label %6, !llvm.loop !45

15:                                               ; preds = %6, %11
  %16 = phi ptr [ %7, %6 ], [ null, %11 ]
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, %2
  %20 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 7
  %21 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  ret ptr %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_edge_share_loop(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %10 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %5, !llvm.loop !45

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %6, %5 ], [ null, %10 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_loop_other_edge_loop(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %8 = select i1 %5, ptr %6, ptr %7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_face_other_vert_loop(ptr noundef readnone %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 6, ptr %5, align 4, !tbaa !50
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !53
  store ptr %2, ptr %4, align 8, !tbaa !54
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %4) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = call ptr %8(ptr noundef nonnull %4) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %3, %16
  %12 = phi ptr [ %18, %16 ], [ %9, %3 ]
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %7, align 8, !tbaa !53
  %18 = call ptr %17(ptr noundef nonnull %4) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %11, !llvm.loop !55

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, %1
  %26 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  br i1 %25, label %33, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, %1
  %32 = select i1 %31, ptr %22, ptr null
  br label %33

33:                                               ; preds = %16, %20, %3, %28
  %34 = phi ptr [ %32, %28 ], [ null, %3 ], [ %27, %20 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret ptr %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_loop_other_vert_loop(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  br i1 %5, label %10, label %24

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, %1
  %16 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %17, %1
  %19 = select i1 %18, ptr %14, ptr null
  %20 = select i1 %15, ptr %17, ptr %19
  %21 = icmp eq ptr %9, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  br label %32

24:                                               ; preds = %2
  %25 = icmp eq ptr %9, %1
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 7
  br label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 6
  br label %32

32:                                               ; preds = %22, %26, %28
  %33 = phi ptr [ %31, %28 ], [ %27, %26 ], [ %23, %22 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  br label %35

35:                                               ; preds = %32, %10
  %36 = phi ptr [ %7, %10 ], [ %34, %32 ]
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_vert_pair_share_face_check(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 5, ptr %12, align 4, !tbaa !50
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %14, align 8, !tbaa !53
  store ptr %0, ptr %3, align 8, !tbaa !54
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %3) #13
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = call ptr %15(ptr noundef nonnull %3) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %11, %33
  %19 = phi i1 [ %36, %33 ], [ %17, %11 ]
  %20 = phi ptr [ %35, %33 ], [ %16, %11 ]
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  br label %23

23:                                               ; preds = %28, %18
  %24 = phi ptr [ %22, %18 ], [ %30, %28 ]
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !66

32:                                               ; preds = %28
  br i1 %27, label %37, label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %14, align 8, !tbaa !53
  %35 = call ptr %34(ptr noundef nonnull %3) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %18, !llvm.loop !67

37:                                               ; preds = %32, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  br i1 %19, label %39, label %40

38:                                               ; preds = %33, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  br label %39

39:                                               ; preds = %38, %37, %7, %2
  br label %40

40:                                               ; preds = %37, %39
  %41 = phi i8 [ 1, %37 ], [ 0, %39 ]
  ret i8 %41
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_vert_in_face(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %10 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %5, !llvm.loop !66

14:                                               ; preds = %10, %5
  %15 = phi i8 [ 1, %5 ], [ 0, %10 ]
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_vert_pair_share_face_by_len(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %82, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = icmp eq ptr %12, null
  br i1 %13, label %82, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %15 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 6, ptr %15, align 4, !tbaa !50
  %16 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %17, align 8, !tbaa !53
  store ptr %0, ptr %6, align 8, !tbaa !54
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %6) #13
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = call ptr %18(ptr noundef nonnull %6) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %78, label %21

21:                                               ; preds = %14
  %22 = icmp ne i8 %4, 0
  br label %23

23:                                               ; preds = %21, %71
  %24 = phi ptr [ null, %21 ], [ %74, %71 ]
  %25 = phi ptr [ %19, %21 ], [ %76, %71 ]
  %26 = phi ptr [ null, %21 ], [ %73, %71 ]
  %27 = phi ptr [ null, %21 ], [ %72, %71 ]
  %28 = icmp eq ptr %26, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !68
  %34 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !68
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %29, %23
  %38 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds %struct.BMFace, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  br label %42

42:                                               ; preds = %47, %37
  %43 = phi ptr [ %41, %37 ], [ %49, %47 ]
  %44 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = icmp eq ptr %49, %41
  br i1 %50, label %51, label %42, !llvm.loop !69

51:                                               ; preds = %42, %47
  %52 = phi ptr [ %43, %42 ], [ null, %47 ]
  %53 = icmp eq ptr %52, null
  %54 = or i1 %53, %22
  %55 = select i1 %53, ptr %27, ptr %52
  %56 = select i1 %53, ptr %26, ptr %39
  %57 = select i1 %53, ptr %24, ptr %25
  br i1 %54, label %71, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !57
  %61 = icmp eq ptr %60, %52
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !56
  %65 = icmp eq ptr %64, %52
  %66 = zext i1 %65 to i8
  br label %67

67:                                               ; preds = %58, %62
  %68 = phi i8 [ 1, %58 ], [ %66, %62 ]
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %51, %29, %70, %67
  %72 = phi ptr [ %27, %67 ], [ %55, %51 ], [ %27, %29 ], [ %52, %70 ]
  %73 = phi ptr [ %26, %67 ], [ %56, %51 ], [ %26, %29 ], [ %39, %70 ]
  %74 = phi ptr [ %24, %67 ], [ %57, %51 ], [ %24, %29 ], [ %25, %70 ]
  %75 = load ptr, ptr %17, align 8, !tbaa !53
  %76 = call ptr %75(ptr noundef nonnull %6) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %23, !llvm.loop !70

78:                                               ; preds = %71, %14
  %79 = phi ptr [ null, %14 ], [ %72, %71 ]
  %80 = phi ptr [ null, %14 ], [ %73, %71 ]
  %81 = phi ptr [ null, %14 ], [ %74, %71 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  br label %82

82:                                               ; preds = %78, %10, %5
  %83 = phi ptr [ %79, %78 ], [ null, %10 ], [ null, %5 ]
  %84 = phi ptr [ %80, %78 ], [ null, %10 ], [ null, %5 ]
  %85 = phi ptr [ %81, %78 ], [ null, %10 ], [ null, %5 ]
  store ptr %85, ptr %2, align 8, !tbaa !49
  store ptr %83, ptr %3, align 8, !tbaa !49
  ret ptr %84
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_vert_share_loop(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %10 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %5, !llvm.loop !69

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %6, %5 ], [ null, %10 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_vert_pair_share_face_by_angle(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = alloca [2 x [3 x float]], align 16
  %7 = alloca [2 x [3 x float]], align 16
  %8 = alloca %struct.BMIter, align 8
  %9 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %10, null
  br i1 %11, label %126, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = icmp eq ptr %14, null
  br i1 %15, label %126, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #13
  %17 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 6, ptr %17, align 4, !tbaa !50
  %18 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %18, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %19, align 8, !tbaa !53
  store ptr %0, ptr %8, align 8, !tbaa !54
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %8) #13
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = call ptr %20(ptr noundef nonnull %8) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %122, label %23

23:                                               ; preds = %16
  %24 = icmp eq i8 %4, 0
  %25 = getelementptr inbounds [2 x [3 x float]], ptr %7, i64 0, i64 1
  %26 = getelementptr inbounds float, ptr %7, i64 1
  %27 = getelementptr inbounds [2 x [3 x float]], ptr %7, i64 0, i64 1, i64 1
  %28 = getelementptr inbounds float, ptr %7, i64 2
  %29 = getelementptr inbounds [2 x [3 x float]], ptr %7, i64 0, i64 1, i64 2
  %30 = getelementptr inbounds [2 x [3 x float]], ptr %6, i64 0, i64 1
  %31 = getelementptr inbounds float, ptr %6, i64 1
  %32 = getelementptr inbounds [2 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %33 = getelementptr inbounds float, ptr %6, i64 2
  %34 = getelementptr inbounds [2 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  br label %35

35:                                               ; preds = %23, %114
  %36 = phi ptr [ null, %23 ], [ %118, %114 ]
  %37 = phi float [ -1.000000e+00, %23 ], [ %117, %114 ]
  %38 = phi ptr [ null, %23 ], [ %116, %114 ]
  %39 = phi ptr [ %21, %23 ], [ %120, %114 ]
  %40 = phi ptr [ null, %23 ], [ %115, %114 ]
  %41 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.BMFace, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  br label %45

45:                                               ; preds = %50, %35
  %46 = phi ptr [ %44, %35 ], [ %52, %50 ]
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  %53 = icmp eq ptr %52, %44
  br i1 %53, label %54, label %45, !llvm.loop !69

54:                                               ; preds = %45, %50
  %55 = phi ptr [ %46, %45 ], [ null, %50 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %114, label %57

57:                                               ; preds = %54
  br i1 %24, label %58, label %70

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !57
  %61 = icmp eq ptr %60, %55
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !56
  %65 = icmp eq ptr %64, %55
  %66 = zext i1 %65 to i8
  br label %67

67:                                               ; preds = %58, %62
  %68 = phi i8 [ 1, %58 ], [ %66, %62 ]
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %67, %57
  %71 = icmp eq ptr %40, null
  br i1 %71, label %114, label %72

72:                                               ; preds = %70
  %73 = fcmp oeq float %37, -1.000000e+00
  br i1 %73, label %74, label %92

74:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  %75 = call float @BM_face_calc_normal_subset(ptr noundef %36, ptr noundef %38, ptr noundef nonnull %7) #13
  %76 = fcmp une float %75, 0.000000e+00
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = call float @BM_face_calc_normal_subset(ptr noundef %38, ptr noundef %36, ptr noundef nonnull %25) #13
  %79 = fcmp une float %78, 0.000000e+00
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load float, ptr %7, align 16, !tbaa !71
  %82 = load float, ptr %25, align 4, !tbaa !71
  %83 = load float, ptr %26, align 4, !tbaa !71
  %84 = load float, ptr %27, align 16, !tbaa !71
  %85 = fmul float %83, %84
  %86 = call float @llvm.fmuladd.f32(float %81, float %82, float %85)
  %87 = load float, ptr %28, align 8, !tbaa !71
  %88 = load float, ptr %29, align 4, !tbaa !71
  %89 = call float @llvm.fmuladd.f32(float %87, float %88, float %86)
  br label %90

90:                                               ; preds = %74, %77, %80
  %91 = phi float [ %89, %80 ], [ -1.000000e+00, %77 ], [ -1.000000e+00, %74 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  br label %92

92:                                               ; preds = %90, %72
  %93 = phi float [ %91, %90 ], [ %37, %72 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %94 = call float @BM_face_calc_normal_subset(ptr noundef nonnull %39, ptr noundef nonnull %55, ptr noundef nonnull %6) #13
  %95 = fcmp une float %94, 0.000000e+00
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = call float @BM_face_calc_normal_subset(ptr noundef nonnull %55, ptr noundef nonnull %39, ptr noundef nonnull %30) #13
  %98 = fcmp une float %97, 0.000000e+00
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load float, ptr %6, align 16, !tbaa !71
  %101 = load float, ptr %30, align 4, !tbaa !71
  %102 = load float, ptr %31, align 4, !tbaa !71
  %103 = load float, ptr %32, align 16, !tbaa !71
  %104 = fmul float %102, %103
  %105 = call float @llvm.fmuladd.f32(float %100, float %101, float %104)
  %106 = load float, ptr %33, align 8, !tbaa !71
  %107 = load float, ptr %34, align 4, !tbaa !71
  %108 = call float @llvm.fmuladd.f32(float %106, float %107, float %105)
  br label %109

109:                                              ; preds = %92, %96, %99
  %110 = phi float [ %108, %99 ], [ -1.000000e+00, %96 ], [ -1.000000e+00, %92 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %111 = fcmp ogt float %110, %93
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load ptr, ptr %41, align 8, !tbaa !42
  br label %114

114:                                              ; preds = %70, %109, %112, %54, %67
  %115 = phi ptr [ %40, %67 ], [ %40, %54 ], [ %113, %112 ], [ %40, %109 ], [ %42, %70 ]
  %116 = phi ptr [ %38, %67 ], [ %38, %54 ], [ %55, %112 ], [ %38, %109 ], [ %55, %70 ]
  %117 = phi float [ %37, %67 ], [ %37, %54 ], [ %110, %112 ], [ %93, %109 ], [ %37, %70 ]
  %118 = phi ptr [ %36, %67 ], [ %36, %54 ], [ %39, %112 ], [ %36, %109 ], [ %39, %70 ]
  %119 = load ptr, ptr %19, align 8, !tbaa !53
  %120 = call ptr %119(ptr noundef nonnull %8) #13
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %35, !llvm.loop !73

122:                                              ; preds = %114, %16
  %123 = phi ptr [ null, %16 ], [ %115, %114 ]
  %124 = phi ptr [ null, %16 ], [ %116, %114 ]
  %125 = phi ptr [ null, %16 ], [ %118, %114 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #13
  br label %126

126:                                              ; preds = %122, %12, %5
  %127 = phi ptr [ %123, %122 ], [ null, %12 ], [ null, %5 ]
  %128 = phi ptr [ %124, %122 ], [ null, %12 ], [ null, %5 ]
  %129 = phi ptr [ %125, %122 ], [ null, %12 ], [ null, %5 ]
  store ptr %129, ptr %2, align 8, !tbaa !49
  store ptr %128, ptr %3, align 8, !tbaa !49
  ret ptr %127
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_vert_find_first_loop(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @bmesh_disk_faceedge_find_first(ptr noundef nonnull %3, ptr noundef %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call ptr @bmesh_radial_faceloop_find_first(ptr noundef %10, ptr noundef %0) #13
  br label %12

12:                                               ; preds = %5, %1, %8
  %13 = phi ptr [ %11, %8 ], [ null, %1 ], [ null, %5 ]
  ret ptr %13
}

declare ptr @bmesh_disk_faceedge_find_first(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @bmesh_radial_faceloop_find_first(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BM_verts_in_face_count(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %14, %7 ]
  %9 = getelementptr inbounds ptr, ptr %1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 4
  %12 = load i8, ptr %11, align 2, !tbaa !74
  %13 = or i8 %12, 4
  store i8 %13, ptr %11, align 2, !tbaa !74
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !75

16:                                               ; preds = %7, %3
  %17 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %18, %16 ], [ %31, %19 ]
  %21 = phi i32 [ 0, %16 ], [ %29, %19 ]
  %22 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.BMHeader, ptr %23, i64 0, i32 4
  %25 = load i8, ptr %24, align 2, !tbaa !74
  %26 = lshr i8 %25, 2
  %27 = and i8 %26, 1
  %28 = zext nneg i8 %27 to i32
  %29 = add i32 %21, %28
  %30 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = icmp eq ptr %31, %18
  br i1 %32, label %33, label %19, !llvm.loop !76

33:                                               ; preds = %19
  %34 = icmp sgt i32 %2, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %33
  %36 = zext nneg i32 %2 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %44, %37 ]
  %39 = getelementptr inbounds ptr, ptr %1, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 4
  %42 = load i8, ptr %41, align 2, !tbaa !74
  %43 = and i8 %42, -5
  store i8 %43, ptr %41, align 2, !tbaa !74
  %44 = add nuw nsw i64 %38, 1
  %45 = icmp eq i64 %44, %36
  br i1 %45, label %46, label %37, !llvm.loop !77

46:                                               ; preds = %37, %33
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_verts_in_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = zext nneg i32 %2 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 4
  %16 = load i8, ptr %15, align 2, !tbaa !74
  %17 = or i8 %16, 4
  store i8 %17, ptr %15, align 2, !tbaa !74
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %20, label %11, !llvm.loop !78

20:                                               ; preds = %11, %7
  %21 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  br label %23

23:                                               ; preds = %31, %20
  %24 = phi ptr [ %22, %20 ], [ %33, %31 ]
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 4
  %28 = load i8, ptr %27, align 2, !tbaa !74
  %29 = and i8 %28, 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = icmp eq ptr %33, %22
  br i1 %34, label %35, label %23, !llvm.loop !79

35:                                               ; preds = %23, %31
  %36 = phi i8 [ 1, %31 ], [ 0, %23 ]
  %37 = icmp sgt i32 %2, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = zext nneg i32 %2 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %47, %40 ]
  %42 = getelementptr inbounds ptr, ptr %1, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !49
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 4
  %45 = load i8, ptr %44, align 2, !tbaa !74
  %46 = and i8 %45, -5
  store i8 %46, ptr %44, align 2, !tbaa !74
  %47 = add nuw nsw i64 %41, 1
  %48 = icmp eq i64 %47, %39
  br i1 %48, label %49, label %40, !llvm.loop !80

49:                                               ; preds = %40, %35, %3
  %50 = phi i8 [ 0, %3 ], [ %36, %35 ], [ %36, %40 ]
  ret i8 %50
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_in_face(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %11
  %7 = phi ptr [ %13, %11 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %6, !llvm.loop !81

15:                                               ; preds = %11
  br i1 %10, label %17, label %16

16:                                               ; preds = %15, %2
  br label %17

17:                                               ; preds = %6, %15, %16
  %18 = phi i8 [ 1, %15 ], [ 0, %16 ], [ 1, %6 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_edge_other_loop(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, %16
  %24 = select i1 %23, ptr %20, ptr %12
  br label %25

25:                                               ; preds = %18, %9
  %26 = phi ptr [ %12, %9 ], [ %24, %18 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BM_vert_step_fan_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, %3
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  br i1 %6, label %13, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %10, %3
  br i1 %12, label %13, label %48

13:                                               ; preds = %2, %11
  %14 = phi ptr [ %5, %11 ], [ %10, %2 ]
  %15 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, %16
  br i1 %21, label %48, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  store ptr %14, ptr %1, align 8, !tbaa !49
  %27 = load ptr, ptr %4, align 8, !tbaa !58
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi ptr [ %31, %29 ], [ %0, %26 ]
  %34 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, %39
  %47 = select i1 %46, ptr %43, ptr %35
  br label %48

48:                                               ; preds = %18, %13, %41, %32, %22, %11
  %49 = phi ptr [ null, %11 ], [ null, %22 ], [ %35, %32 ], [ %47, %41 ], [ null, %13 ], [ null, %18 ]
  ret ptr %49
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_vert_other_disk_edge(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %77, %2
  %6 = phi ptr [ %4, %2 ], [ %79, %77 ]
  %7 = phi i32 [ 0, %2 ], [ %80, %77 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, %0
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  br i1 %10, label %15, label %29

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, %0
  %21 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = icmp eq ptr %22, %0
  %24 = select i1 %23, ptr %19, ptr null
  %25 = select i1 %20, ptr %22, ptr %24
  %26 = icmp eq ptr %14, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  br label %37

29:                                               ; preds = %5
  %30 = icmp eq ptr %14, %0
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 7
  br label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 6
  br label %37

37:                                               ; preds = %33, %31, %27
  %38 = phi ptr [ %28, %27 ], [ %32, %31 ], [ %36, %33 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  br label %40

40:                                               ; preds = %37, %15
  %41 = phi ptr [ %12, %15 ], [ %39, %37 ]
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.BMEdge, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.BMEdge, ptr %43, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  %50 = icmp eq ptr %49, %0
  %51 = zext i1 %50 to i8
  br label %52

52:                                               ; preds = %40, %47
  %53 = phi i8 [ 1, %40 ], [ %51, %47 ]
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  br label %58

58:                                               ; preds = %52, %55
  %59 = phi ptr [ %57, %55 ], [ %41, %52 ]
  %60 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !58
  %62 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !44
  %68 = icmp eq ptr %67, %63
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !44
  %72 = icmp eq ptr %71, %63
  %73 = zext i1 %72 to i8
  br label %74

74:                                               ; preds = %58, %65, %69
  %75 = phi i8 [ 0, %65 ], [ 0, %58 ], [ %73, %69 ]
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %177, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !44
  %80 = add nuw nsw i32 %7, 1
  %81 = icmp eq ptr %79, %4
  br i1 %81, label %82, label %5, !llvm.loop !82

82:                                               ; preds = %77
  %83 = lshr i32 %80, 1
  br label %84

84:                                               ; preds = %173, %82
  %85 = phi ptr [ %4, %82 ], [ %174, %173 ]
  %86 = phi i32 [ 0, %82 ], [ %175, %173 ]
  %87 = icmp eq i32 %86, %83
  %88 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !58
  %90 = getelementptr inbounds %struct.BMEdge, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  %92 = icmp eq ptr %91, %0
  br i1 %87, label %93, label %105

93:                                               ; preds = %84
  br i1 %92, label %101, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.BMEdge, ptr %89, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !60
  %97 = icmp eq ptr %96, %0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !56
  br label %101

101:                                              ; preds = %93, %94, %98
  %102 = phi ptr [ %100, %98 ], [ %85, %94 ], [ %85, %93 ]
  %103 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !58
  br label %177

105:                                              ; preds = %84
  %106 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !48
  %108 = icmp eq ptr %107, %0
  %109 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !56
  %111 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !48
  br i1 %108, label %113, label %122

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.BMEdge, ptr %89, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !60
  %116 = icmp eq ptr %115, %0
  %117 = select i1 %116, ptr %91, ptr null
  %118 = select i1 %92, ptr %115, ptr %117
  %119 = icmp eq ptr %112, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 6
  br label %130

122:                                              ; preds = %105
  %123 = icmp eq ptr %112, %0
  br i1 %123, label %124, label %126

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 7
  br label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !57
  %129 = getelementptr inbounds %struct.BMLoop, ptr %128, i64 0, i32 6
  br label %130

130:                                              ; preds = %126, %124, %120
  %131 = phi ptr [ %121, %120 ], [ %125, %124 ], [ %129, %126 ]
  %132 = load ptr, ptr %131, align 8, !tbaa !49
  br label %133

133:                                              ; preds = %130, %113
  %134 = phi ptr [ %110, %113 ], [ %132, %130 ]
  %135 = getelementptr inbounds %struct.BMLoop, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !58
  %137 = getelementptr inbounds %struct.BMEdge, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !59
  %139 = icmp eq ptr %138, %0
  br i1 %139, label %145, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.BMEdge, ptr %136, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !60
  %143 = icmp eq ptr %142, %0
  %144 = zext i1 %143 to i8
  br label %145

145:                                              ; preds = %133, %140
  %146 = phi i8 [ 1, %133 ], [ %144, %140 ]
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.BMLoop, ptr %134, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !56
  br label %151

151:                                              ; preds = %145, %148
  %152 = phi ptr [ %150, %148 ], [ %134, %145 ]
  %153 = getelementptr inbounds %struct.BMLoop, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !58
  %155 = getelementptr inbounds %struct.BMEdge, ptr %154, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !34
  %157 = icmp eq ptr %156, null
  br i1 %157, label %167, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.BMLoop, ptr %156, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !44
  %161 = icmp eq ptr %160, %156
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.BMLoop, ptr %160, i64 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !44
  %165 = icmp eq ptr %164, %156
  %166 = zext i1 %165 to i8
  br label %167

167:                                              ; preds = %151, %158, %162
  %168 = phi i8 [ 0, %158 ], [ 0, %151 ], [ %166, %162 ]
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.BMLoop, ptr %152, i64 0, i32 4
  %172 = load ptr, ptr %171, align 8, !tbaa !44
  br label %173

173:                                              ; preds = %170, %167
  %174 = phi ptr [ %172, %170 ], [ %152, %167 ]
  %175 = add nuw nsw i32 %86, 1
  %176 = icmp eq ptr %174, %4
  br i1 %176, label %177, label %84, !llvm.loop !83

177:                                              ; preds = %74, %173, %101
  %178 = phi ptr [ %104, %101 ], [ null, %173 ], [ null, %74 ]
  ret ptr %178
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @BM_edge_calc_length(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !71
  %9 = load float, ptr %4, align 4, !tbaa !71
  %10 = fsub float %8, %9
  %11 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !71
  %13 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !71
  %15 = fsub float %12, %14
  %16 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !71
  %18 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !71
  %20 = fsub float %17, %19
  %21 = fmul float %15, %15
  %22 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %21)
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %22)
  %24 = tail call float @sqrtf(float noundef %23) #13
  ret float %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BM_edge_calc_length_squared(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !71
  %9 = load float, ptr %4, align 4, !tbaa !71
  %10 = fsub float %8, %9
  %11 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !71
  %13 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !71
  %15 = fsub float %12, %14
  %16 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !71
  %18 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !71
  %20 = fsub float %17, %19
  %21 = fmul float %15, %15
  %22 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %21)
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %22)
  ret float %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_face_pair(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %5, %9
  %12 = or i1 %10, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  store ptr %19, ptr %1, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  br label %23

22:                                               ; preds = %13, %7, %3
  store ptr null, ptr %1, align 8, !tbaa !49
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi ptr [ null, %22 ], [ %21, %17 ]
  %25 = phi i8 [ 0, %22 ], [ 1, %17 ]
  store ptr %24, ptr %2, align 8, !tbaa !49
  ret i8 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_loop_pair(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %5, %9
  %12 = or i1 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %7, %3
  br label %18

18:                                               ; preds = %13, %17
  %19 = phi ptr [ null, %17 ], [ %5, %13 ]
  %20 = phi ptr [ null, %17 ], [ %9, %13 ]
  %21 = phi i8 [ 0, %17 ], [ 1, %13 ]
  store ptr %19, ptr %1, align 8, !tbaa !49
  store ptr %20, ptr %2, align 8, !tbaa !49
  ret i8 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_vert_is_edge_pair(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 5
  %7 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, %0
  %10 = zext i1 %9 to i64
  %11 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 %10, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = icmp eq ptr %12, %14
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %1, %5
  %18 = phi i8 [ %16, %5 ], [ 0, %1 ]
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_vert_edge_count(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @bmesh_disk_count(ptr noundef %0) #13
  ret i32 %2
}

declare i32 @bmesh_disk_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_vert_edge_count_nonwire(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 4, ptr %3, align 4, !tbaa !50
  %4 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %5, align 8, !tbaa !53
  store ptr %0, ptr %2, align 8, !tbaa !54
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %2) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = call ptr %6(ptr noundef nonnull %2) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %18, %9 ], [ %7, %1 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = load ptr, ptr %5, align 8, !tbaa !53
  %18 = call ptr %17(ptr noundef nonnull %2) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !86

20:                                               ; preds = %9, %1
  %21 = phi i32 [ 0, %1 ], [ %16, %9 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BM_edge_face_count(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %12, label %5, !llvm.loop !87

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_vert_face_count(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @bmesh_disk_facevert_count(ptr noundef %0) #13
  ret i32 %2
}

declare i32 @bmesh_disk_facevert_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_vert_is_wire(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %10
  %6 = phi ptr [ %17, %10 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 5
  %12 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp eq ptr %13, %0
  %15 = zext i1 %14 to i64
  %16 = getelementptr inbounds %struct.BMDiskLink, ptr %11, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %19, label %5, !llvm.loop !89

19:                                               ; preds = %5, %10, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %10 ]
  ret i8 %20
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_vert_is_manifold(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %22, %14 ], [ %3, %1 ]
  %7 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %69, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @bmesh_radial_length(ptr noundef nonnull %9) #13
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %69, label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %7, 1
  %16 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 5
  %17 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %0
  %20 = zext i1 %19 to i64
  %21 = getelementptr inbounds %struct.BMDiskLink, ptr %16, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %24, label %5, !llvm.loop !90

24:                                               ; preds = %14
  %25 = load ptr, ptr %2, align 8, !tbaa !61
  %26 = icmp eq ptr %25, null
  br i1 %26, label %65, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.BMEdge, ptr %25, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %27, %58
  %31 = phi i32 [ %63, %58 ], [ 1, %27 ]
  %32 = phi i32 [ %62, %58 ], [ 1, %27 ]
  %33 = phi ptr [ %61, %58 ], [ %29, %27 ]
  %34 = phi ptr [ %60, %58 ], [ %25, %27 ]
  %35 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, %0
  %38 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 7
  %39 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 6
  %40 = select i1 %37, ptr %38, ptr %39
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  %44 = add nsw i32 %32, 1
  %45 = icmp eq i32 %31, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = icmp eq ptr %48, %41
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.BMEdge, ptr %43, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  br label %58

53:                                               ; preds = %46, %30
  %54 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !44
  %56 = icmp eq ptr %55, %41
  %57 = select i1 %56, ptr %34, ptr %43
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi ptr [ null, %50 ], [ %57, %53 ]
  %60 = phi ptr [ %43, %50 ], [ %34, %53 ]
  %61 = phi ptr [ %52, %50 ], [ %55, %53 ]
  %62 = phi i32 [ 1, %50 ], [ %44, %53 ]
  %63 = phi i32 [ 0, %50 ], [ %31, %53 ]
  %64 = icmp eq ptr %59, %60
  br i1 %64, label %65, label %30, !llvm.loop !91

65:                                               ; preds = %58, %24
  %66 = phi i32 [ 1, %24 ], [ %62, %58 ]
  %67 = icmp sgt i32 %66, %7
  %68 = zext i1 %67 to i8
  br label %69

69:                                               ; preds = %5, %11, %65, %1
  %70 = phi i8 [ 0, %1 ], [ %68, %65 ], [ 0, %11 ], [ 0, %5 ]
  ret i8 %70
}

declare i32 @bmesh_radial_length(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_edge_is_convex(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %85, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %85

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4
  %22 = load float, ptr %18, align 4, !tbaa !71
  %23 = load float, ptr %21, align 4, !tbaa !71
  %24 = fcmp oeq float %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 4, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !71
  %28 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !71
  %30 = fcmp oeq float %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 4, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !71
  %34 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !71
  %36 = fcmp une float %33, %35
  br label %37

37:                                               ; preds = %13, %25, %31
  %38 = phi i1 [ true, %25 ], [ true, %13 ], [ %36, %31 ]
  br i1 %38, label %39, label %83

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 4, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !71
  %42 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !71
  %44 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 4, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !71
  %46 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !71
  %48 = fneg float %45
  %49 = fmul float %47, %48
  %50 = tail call float @llvm.fmuladd.f32(float %41, float %43, float %49)
  %51 = fneg float %22
  %52 = fmul float %43, %51
  %53 = tail call float @llvm.fmuladd.f32(float %45, float %23, float %52)
  %54 = fneg float %41
  %55 = fmul float %23, %54
  %56 = tail call float @llvm.fmuladd.f32(float %22, float %47, float %55)
  %57 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = getelementptr inbounds %struct.BMLoop, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2
  %62 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.BMVert, ptr %63, i64 0, i32 2
  %65 = load float, ptr %61, align 4, !tbaa !71
  %66 = load float, ptr %64, align 4, !tbaa !71
  %67 = fsub float %65, %66
  %68 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !71
  %70 = getelementptr inbounds %struct.BMVert, ptr %63, i64 0, i32 2, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !71
  %72 = fsub float %69, %71
  %73 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !71
  %75 = getelementptr inbounds %struct.BMVert, ptr %63, i64 0, i32 2, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !71
  %77 = fsub float %74, %76
  %78 = fmul float %53, %72
  %79 = tail call float @llvm.fmuladd.f32(float %67, float %50, float %78)
  %80 = tail call float @llvm.fmuladd.f32(float %77, float %56, float %79)
  %81 = fcmp ogt float %80, 0.000000e+00
  %82 = zext i1 %81 to i8
  br label %83

83:                                               ; preds = %37, %39
  %84 = phi i8 [ %82, %39 ], [ undef, %37 ]
  br i1 %38, label %86, label %85

85:                                               ; preds = %5, %1, %83, %9
  br label %86

86:                                               ; preds = %83, %85
  %87 = phi i8 [ %84, %83 ], [ 1, %85 ]
  ret i8 %87
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_vert_is_boundary(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1, %18
  %6 = phi ptr [ %25, %18 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, %8
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %5, %10
  %16 = phi i8 [ 0, %5 ], [ %14, %10 ]
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 5
  %20 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = icmp eq ptr %21, %0
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds %struct.BMDiskLink, ptr %19, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = icmp eq ptr %25, %3
  br i1 %26, label %27, label %5, !llvm.loop !92

27:                                               ; preds = %15, %18, %1
  %28 = phi i8 [ 0, %1 ], [ 1, %15 ], [ 0, %18 ]
  ret i8 %28
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_face_share_face_count(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 10, ptr %5, align 4, !tbaa !50
  %6 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !53
  store ptr %0, ptr %3, align 8, !tbaa !54
  call void @bmiter__edge_of_face_begin(ptr noundef nonnull %3) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = call ptr %8(ptr noundef nonnull %3) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %63, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %15

15:                                               ; preds = %11, %58
  %16 = phi i32 [ 0, %11 ], [ %59, %58 ]
  %17 = phi ptr [ %9, %11 ], [ %61, %58 ]
  store i8 8, ptr %12, align 4, !tbaa !50
  store ptr @bmiter__face_of_edge_begin, ptr %13, align 8, !tbaa !52
  store ptr @bmiter__face_of_edge_step, ptr %14, align 8, !tbaa !53
  store ptr %17, ptr %4, align 8, !tbaa !54
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %4) #13
  %18 = load ptr, ptr %14, align 8, !tbaa !53
  %19 = call ptr %18(ptr noundef nonnull %4) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %15, %53
  %22 = phi i32 [ %54, %53 ], [ %16, %15 ]
  %23 = phi ptr [ %56, %53 ], [ %19, %15 ]
  %24 = icmp eq ptr %23, %0
  %25 = icmp eq ptr %23, %1
  %26 = or i1 %24, %25
  br i1 %26, label %53, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.BMFace, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  br label %30

30:                                               ; preds = %46, %27
  %31 = phi ptr [ %29, %27 ], [ %48, %46 ]
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %30, %42
  %38 = phi ptr [ %44, %42 ], [ %35, %30 ]
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !42
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = icmp eq ptr %44, %35
  br i1 %45, label %46, label %37, !llvm.loop !81

46:                                               ; preds = %42, %30
  %47 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = icmp eq ptr %48, %29
  br i1 %49, label %50, label %30, !llvm.loop !93

50:                                               ; preds = %46, %37
  %51 = phi i32 [ 1, %37 ], [ 0, %46 ]
  %52 = add nsw i32 %51, %22
  br label %53

53:                                               ; preds = %50, %21
  %54 = phi i32 [ %22, %21 ], [ %52, %50 ]
  %55 = load ptr, ptr %14, align 8, !tbaa !53
  %56 = call ptr %55(ptr noundef nonnull %4) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %21, !llvm.loop !94

58:                                               ; preds = %53, %15
  %59 = phi i32 [ %16, %15 ], [ %54, %53 ]
  %60 = load ptr, ptr %7, align 8, !tbaa !53
  %61 = call ptr %60(ptr noundef nonnull %3) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %15, !llvm.loop !95

63:                                               ; preds = %58, %2
  %64 = phi i32 [ 0, %2 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 %64
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_face_share_edge_check(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %21, %2
  %6 = phi ptr [ %4, %2 ], [ %23, %21 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5, %17
  %13 = phi ptr [ %19, %17 ], [ %10, %5 ]
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = icmp eq ptr %19, %10
  br i1 %20, label %21, label %12, !llvm.loop !81

21:                                               ; preds = %17, %5
  %22 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %5, !llvm.loop !93

25:                                               ; preds = %21, %12
  %26 = phi i8 [ 1, %12 ], [ 0, %21 ]
  ret i8 %26
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_face_share_face_check(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 10, ptr %5, align 4, !tbaa !50
  %6 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !53
  store ptr %0, ptr %3, align 8, !tbaa !54
  call void @bmiter__edge_of_face_begin(ptr noundef nonnull %3) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = call ptr %8(ptr noundef nonnull %3) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %15

15:                                               ; preds = %11, %52
  %16 = phi ptr [ %9, %11 ], [ %54, %52 ]
  store i8 8, ptr %12, align 4, !tbaa !50
  store ptr @bmiter__face_of_edge_begin, ptr %13, align 8, !tbaa !52
  store ptr @bmiter__face_of_edge_step, ptr %14, align 8, !tbaa !53
  store ptr %16, ptr %4, align 8, !tbaa !54
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %4) #13
  %17 = load ptr, ptr %14, align 8, !tbaa !53
  %18 = call ptr %17(ptr noundef nonnull %4) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %15, %48
  %21 = phi ptr [ %50, %48 ], [ %18, %15 ]
  %22 = icmp eq ptr %21, %0
  %23 = icmp eq ptr %21, %1
  %24 = or i1 %22, %23
  br i1 %24, label %48, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.BMFace, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  br label %28

28:                                               ; preds = %44, %25
  %29 = phi ptr [ %27, %25 ], [ %46, %44 ]
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %28, %40
  %36 = phi ptr [ %42, %40 ], [ %33, %28 ]
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = icmp eq ptr %42, %33
  br i1 %43, label %44, label %35, !llvm.loop !81

44:                                               ; preds = %40, %28
  %45 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = icmp eq ptr %46, %27
  br i1 %47, label %48, label %28, !llvm.loop !93

48:                                               ; preds = %44, %20
  %49 = load ptr, ptr %14, align 8, !tbaa !53
  %50 = call ptr %49(ptr noundef nonnull %4) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %20, !llvm.loop !96

52:                                               ; preds = %48, %15
  %53 = load ptr, ptr %7, align 8, !tbaa !53
  %54 = call ptr %53(ptr noundef nonnull %3) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %15, !llvm.loop !97

56:                                               ; preds = %52, %35, %2
  %57 = phi i8 [ 0, %2 ], [ 1, %35 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i8 %57
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BM_face_share_edge_count(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %22, %2
  %6 = phi ptr [ %4, %2 ], [ %26, %22 ]
  %7 = phi i32 [ 0, %2 ], [ %24, %22 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %5, %18
  %14 = phi ptr [ %20, %18 ], [ %11, %5 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, %11
  br i1 %21, label %22, label %13, !llvm.loop !81

22:                                               ; preds = %18, %13, %5
  %23 = phi i32 [ 0, %5 ], [ 1, %13 ], [ 0, %18 ]
  %24 = add nuw nsw i32 %23, %7
  %25 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = icmp eq ptr %26, %4
  br i1 %27, label %28, label %5, !llvm.loop !98

28:                                               ; preds = %22
  ret i32 %24
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_share_face_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6, %23
  %11 = phi ptr [ %25, %23 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br label %14

14:                                               ; preds = %10, %19
  %15 = phi ptr [ %21, %19 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, %13
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %23, label %14, !llvm.loop !81

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %27, label %10, !llvm.loop !99

27:                                               ; preds = %23, %14, %2, %6
  %28 = phi i8 [ 0, %6 ], [ 0, %2 ], [ 1, %14 ], [ 0, %23 ]
  ret i8 %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_share_quad_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6, %26
  %11 = phi ptr [ %28, %26 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.BMFace, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %26

17:                                               ; preds = %10, %22
  %18 = phi ptr [ %24, %22 ], [ %8, %10 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, %8
  br i1 %25, label %26, label %17, !llvm.loop !81

26:                                               ; preds = %22, %10
  %27 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %10, !llvm.loop !100

30:                                               ; preds = %26, %17, %2, %6
  %31 = phi i8 [ 0, %6 ], [ 0, %2 ], [ 1, %17 ], [ 0, %26 ]
  ret i8 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BM_edge_share_vert_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = icmp eq ptr %4, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %14, %10
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %16, %12, %8, %2
  %20 = phi i8 [ 1, %12 ], [ 1, %8 ], [ 1, %2 ], [ %18, %16 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BM_edge_share_vert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %6, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %14
  %20 = select i1 %19, ptr %14, ptr null
  br label %21

21:                                               ; preds = %16, %12, %2, %8
  %22 = phi ptr [ %4, %8 ], [ %4, %2 ], [ %14, %12 ], [ %20, %16 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BM_edge_vert_share_loop(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %0, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_edge_ordered_verts_ex(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  store ptr %6, ptr %1, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  store ptr %10, ptr %2, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_edge_ordered_verts(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  store ptr %7, ptr %1, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  store ptr %11, ptr %2, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_loop_is_convex(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = load float, ptr %6, align 4, !tbaa !71
  %11 = load float, ptr %9, align 4, !tbaa !71
  %12 = fsub float %10, %11
  %13 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !71
  %15 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !71
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !71
  %20 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !71
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !71
  %29 = fsub float %28, %11
  %30 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !71
  %32 = fsub float %31, %16
  %33 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !71
  %35 = fsub float %34, %21
  %36 = fneg float %35
  %37 = fmul float %17, %36
  %38 = tail call float @llvm.fmuladd.f32(float %32, float %22, float %37)
  %39 = fneg float %29
  %40 = fmul float %22, %39
  %41 = tail call float @llvm.fmuladd.f32(float %35, float %12, float %40)
  %42 = fneg float %32
  %43 = fmul float %12, %42
  %44 = tail call float @llvm.fmuladd.f32(float %29, float %17, float %43)
  %45 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 4
  %48 = load float, ptr %47, align 4, !tbaa !71
  %49 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 4, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !71
  %51 = fmul float %41, %50
  %52 = tail call float @llvm.fmuladd.f32(float %38, float %48, float %51)
  %53 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 4, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !71
  %55 = tail call float @llvm.fmuladd.f32(float %44, float %54, float %52)
  %56 = fcmp ogt float %55, 0.000000e+00
  %57 = zext i1 %56 to i8
  ret i8 %57
}

; Function Attrs: nounwind uwtable
define dso_local float @BM_loop_calc_face_angle(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = tail call float @angle_v3v3v3(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %14) #13
  ret float %15
}

declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BM_loop_calc_face_normal(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = tail call float @normal_tri_v3(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %15) #13
  %17 = fcmp une float %16, 0.000000e+00
  br i1 %17, label %29, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4
  %22 = load float, ptr %21, align 4, !tbaa !71
  store float %22, ptr %1, align 4, !tbaa !71
  %23 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !71
  %25 = getelementptr inbounds float, ptr %1, i64 1
  store float %24, ptr %25, align 4, !tbaa !71
  %26 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 4, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !71
  %28 = getelementptr inbounds float, ptr %1, i64 2
  store float %27, ptr %28, align 4, !tbaa !71
  br label %29

29:                                               ; preds = %2, %18
  ret void
}

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_loop_calc_face_direction(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = load float, ptr %5, align 4, !tbaa !71
  %12 = load float, ptr %10, align 4, !tbaa !71
  %13 = fsub float %11, %12
  %14 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !71
  %16 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !71
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !71
  %21 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !71
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  %29 = load float, ptr %28, align 4, !tbaa !71
  %30 = fsub float %29, %11
  %31 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !71
  %33 = fsub float %32, %15
  %34 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !71
  %36 = fsub float %35, %20
  %37 = fmul float %18, %18
  %38 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %38)
  %40 = fcmp ogt float %39, 0x38AA95A5C0000000
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = tail call float @sqrtf(float noundef %39) #13
  %43 = fdiv float 1.000000e+00, %42
  %44 = fmul float %13, %43
  %45 = fmul float %18, %43
  %46 = fmul float %23, %43
  br label %47

47:                                               ; preds = %2, %41
  %48 = phi float [ %45, %41 ], [ 0.000000e+00, %2 ]
  %49 = phi float [ %44, %41 ], [ 0.000000e+00, %2 ]
  %50 = phi float [ %46, %41 ], [ 0.000000e+00, %2 ]
  %51 = fmul float %33, %33
  %52 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %52)
  %54 = fcmp ogt float %53, 0x38AA95A5C0000000
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = tail call float @sqrtf(float noundef %53) #13
  %57 = fdiv float 1.000000e+00, %56
  %58 = fmul float %30, %57
  %59 = fmul float %33, %57
  %60 = fmul float %36, %57
  br label %61

61:                                               ; preds = %47, %55
  %62 = phi float [ %59, %55 ], [ 0.000000e+00, %47 ]
  %63 = phi float [ %58, %55 ], [ 0.000000e+00, %47 ]
  %64 = phi float [ %60, %55 ], [ 0.000000e+00, %47 ]
  %65 = fadd float %49, %63
  store float %65, ptr %1, align 4, !tbaa !71
  %66 = fadd float %48, %62
  %67 = getelementptr inbounds float, ptr %1, i64 1
  store float %66, ptr %67, align 4, !tbaa !71
  %68 = fadd float %50, %64
  %69 = getelementptr inbounds float, ptr %1, i64 2
  store float %68, ptr %69, align 4, !tbaa !71
  %70 = fmul float %66, %66
  %71 = tail call float @llvm.fmuladd.f32(float %65, float %65, float %70)
  %72 = tail call float @llvm.fmuladd.f32(float %68, float %68, float %71)
  %73 = fcmp ogt float %72, 0x38AA95A5C0000000
  br i1 %73, label %74, label %83

74:                                               ; preds = %61
  %75 = tail call float @sqrtf(float noundef %72) #13
  %76 = fdiv float 1.000000e+00, %75
  %77 = load float, ptr %1, align 4, !tbaa !71
  %78 = fmul float %77, %76
  store float %78, ptr %1, align 4, !tbaa !71
  %79 = load float, ptr %67, align 4, !tbaa !71
  %80 = fmul float %76, %79
  store float %80, ptr %67, align 4, !tbaa !71
  %81 = load float, ptr %69, align 4, !tbaa !71
  %82 = fmul float %76, %81
  br label %84

83:                                               ; preds = %61
  store float 0.000000e+00, ptr %1, align 4, !tbaa !71
  store float 0.000000e+00, ptr %67, align 4, !tbaa !71
  br label %84

84:                                               ; preds = %74, %83
  %85 = phi float [ 0.000000e+00, %83 ], [ %82, %74 ]
  store float %85, ptr %69, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_loop_calc_face_tangent(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = load float, ptr %7, align 4, !tbaa !71
  %12 = load float, ptr %10, align 4, !tbaa !71
  %13 = fsub float %11, %12
  %14 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !71
  %16 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !71
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !71
  %21 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !71
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  %29 = load float, ptr %28, align 4, !tbaa !71
  %30 = fsub float %12, %29
  %31 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !71
  %33 = fsub float %17, %32
  %34 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !71
  %36 = fsub float %22, %35
  %37 = fmul float %18, %18
  %38 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %38)
  %40 = fcmp ogt float %39, 0x38AA95A5C0000000
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = tail call float @sqrtf(float noundef %39) #13
  %43 = fdiv float 1.000000e+00, %42
  %44 = fmul float %13, %43
  %45 = fmul float %18, %43
  %46 = fmul float %23, %43
  br label %47

47:                                               ; preds = %2, %41
  %48 = phi float [ %44, %41 ], [ 0.000000e+00, %2 ]
  %49 = phi float [ %45, %41 ], [ 0.000000e+00, %2 ]
  %50 = phi float [ %46, %41 ], [ 0.000000e+00, %2 ]
  %51 = fmul float %33, %33
  %52 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %52)
  %54 = fcmp ogt float %53, 0x38AA95A5C0000000
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = tail call float @sqrtf(float noundef %53) #13
  %57 = fdiv float 1.000000e+00, %56
  %58 = fmul float %30, %57
  %59 = fmul float %33, %57
  %60 = fmul float %36, %57
  br label %61

61:                                               ; preds = %47, %55
  %62 = phi float [ %59, %55 ], [ 0.000000e+00, %47 ]
  %63 = phi float [ %58, %55 ], [ 0.000000e+00, %47 ]
  %64 = phi float [ %60, %55 ], [ 0.000000e+00, %47 ]
  %65 = fadd float %48, %63
  %66 = fadd float %49, %62
  %67 = fadd float %50, %64
  %68 = fsub float %48, %63
  %69 = tail call float @llvm.fabs.f32(float %68)
  %70 = fcmp ugt float %69, 0x3EB4000000000000
  br i1 %70, label %79, label %71

71:                                               ; preds = %61
  %72 = fsub float %49, %62
  %73 = tail call float @llvm.fabs.f32(float %72)
  %74 = fcmp ugt float %73, 0x3EB4000000000000
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = fsub float %50, %64
  %77 = tail call float @llvm.fabs.f32(float %76)
  %78 = fcmp ugt float %77, 0x3EB4000000000000
  br i1 %78, label %79, label %114

79:                                               ; preds = %75, %71, %61
  %80 = fneg float %50
  %81 = fmul float %62, %80
  %82 = tail call float @llvm.fmuladd.f32(float %49, float %64, float %81)
  %83 = fneg float %48
  %84 = fmul float %64, %83
  %85 = tail call float @llvm.fmuladd.f32(float %50, float %63, float %84)
  %86 = fneg float %49
  %87 = fmul float %63, %86
  %88 = tail call float @llvm.fmuladd.f32(float %48, float %62, float %87)
  %89 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !42
  %91 = getelementptr inbounds %struct.BMFace, ptr %90, i64 0, i32 4
  %92 = load float, ptr %91, align 4, !tbaa !71
  %93 = getelementptr inbounds %struct.BMFace, ptr %90, i64 0, i32 4, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !71
  %95 = fmul float %85, %94
  %96 = tail call float @llvm.fmuladd.f32(float %82, float %92, float %95)
  %97 = getelementptr inbounds %struct.BMFace, ptr %90, i64 0, i32 4, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !71
  %99 = tail call float @llvm.fmuladd.f32(float %88, float %98, float %96)
  %100 = fcmp olt float %99, 0.000000e+00
  %101 = fneg float %82
  %102 = fneg float %85
  %103 = fneg float %88
  %104 = select i1 %100, float %103, float %88
  %105 = select i1 %100, float %102, float %85
  %106 = select i1 %100, float %101, float %82
  %107 = fneg float %67
  %108 = fmul float %105, %107
  %109 = tail call float @llvm.fmuladd.f32(float %66, float %104, float %108)
  store float %109, ptr %1, align 4, !tbaa !71
  %110 = fneg float %65
  %111 = fmul float %104, %110
  %112 = tail call float @llvm.fmuladd.f32(float %67, float %106, float %111)
  %113 = getelementptr inbounds float, ptr %1, i64 1
  store float %112, ptr %113, align 4, !tbaa !71
  br label %133

114:                                              ; preds = %75
  %115 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !42
  %117 = getelementptr inbounds %struct.BMFace, ptr %116, i64 0, i32 4
  %118 = getelementptr inbounds %struct.BMFace, ptr %116, i64 0, i32 4, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !71
  %120 = getelementptr inbounds %struct.BMFace, ptr %116, i64 0, i32 4, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !71
  %122 = fneg float %67
  %123 = fmul float %121, %122
  %124 = tail call float @llvm.fmuladd.f32(float %66, float %119, float %123)
  store float %124, ptr %1, align 4, !tbaa !71
  %125 = load float, ptr %117, align 4, !tbaa !71
  %126 = load float, ptr %118, align 4, !tbaa !71
  %127 = fneg float %65
  %128 = fmul float %126, %127
  %129 = tail call float @llvm.fmuladd.f32(float %67, float %125, float %128)
  %130 = getelementptr inbounds float, ptr %1, i64 1
  store float %129, ptr %130, align 4, !tbaa !71
  %131 = load float, ptr %120, align 4, !tbaa !71
  %132 = load float, ptr %117, align 4, !tbaa !71
  br label %133

133:                                              ; preds = %114, %79
  %134 = phi float [ %132, %114 ], [ %106, %79 ]
  %135 = phi float [ %131, %114 ], [ %105, %79 ]
  %136 = fneg float %66
  %137 = fmul float %134, %136
  %138 = tail call float @llvm.fmuladd.f32(float %65, float %135, float %137)
  %139 = getelementptr inbounds float, ptr %1, i64 2
  store float %138, ptr %139, align 4, !tbaa !71
  %140 = load float, ptr %1, align 4, !tbaa !71
  %141 = getelementptr inbounds float, ptr %1, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !71
  %143 = fmul float %142, %142
  %144 = tail call float @llvm.fmuladd.f32(float %140, float %140, float %143)
  %145 = getelementptr inbounds float, ptr %1, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !71
  %147 = tail call float @llvm.fmuladd.f32(float %146, float %146, float %144)
  %148 = fcmp ogt float %147, 0x38AA95A5C0000000
  br i1 %148, label %149, label %158

149:                                              ; preds = %133
  %150 = tail call float @sqrtf(float noundef %147) #13
  %151 = fdiv float 1.000000e+00, %150
  %152 = load float, ptr %1, align 4, !tbaa !71
  %153 = fmul float %152, %151
  store float %153, ptr %1, align 4, !tbaa !71
  %154 = load float, ptr %141, align 4, !tbaa !71
  %155 = fmul float %151, %154
  store float %155, ptr %141, align 4, !tbaa !71
  %156 = load float, ptr %145, align 4, !tbaa !71
  %157 = fmul float %151, %156
  br label %159

158:                                              ; preds = %133
  store float 0.000000e+00, ptr %1, align 4, !tbaa !71
  store float 0.000000e+00, ptr %141, align 4, !tbaa !71
  br label %159

159:                                              ; preds = %149, %158
  %160 = phi float [ 0.000000e+00, %158 ], [ %157, %149 ]
  store float %160, ptr %145, align 4, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @BM_edge_calc_face_angle_ex(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 4
  %20 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.BMFace, ptr %21, i64 0, i32 4
  %23 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %22) #13
  br label %24

24:                                               ; preds = %6, %2, %10, %14
  %25 = phi float [ %23, %14 ], [ %1, %10 ], [ %1, %2 ], [ %1, %6 ]
  ret float %25
}

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local float @BM_edge_calc_face_angle(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 4
  %17 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 4
  %20 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %19) #13
  br label %21

21:                                               ; preds = %5, %1, %9, %13
  %22 = phi float [ %20, %13 ], [ 0x3FF921FB60000000, %9 ], [ 0x3FF921FB60000000, %1 ], [ 0x3FF921FB60000000, %5 ]
  ret float %22
}

; Function Attrs: nounwind uwtable
define dso_local float @BM_edge_calc_face_angle_signed_ex(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 4
  %20 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.BMFace, ptr %21, i64 0, i32 4
  %23 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %22) #13
  %24 = tail call zeroext i8 @BM_edge_is_convex(ptr noundef %0)
  %25 = icmp eq i8 %24, 0
  %26 = fneg float %23
  %27 = select i1 %25, float %26, float %23
  br label %28

28:                                               ; preds = %6, %2, %10, %14
  %29 = phi float [ %27, %14 ], [ %1, %10 ], [ %1, %2 ], [ %1, %6 ]
  ret float %29
}

; Function Attrs: nounwind uwtable
define dso_local float @BM_edge_calc_face_angle_signed(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 4
  %17 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 4
  %20 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %19) #13
  %21 = tail call zeroext i8 @BM_edge_is_convex(ptr noundef %0)
  %22 = icmp eq i8 %21, 0
  %23 = fneg float %20
  %24 = select i1 %22, float %23, float %20
  br label %25

25:                                               ; preds = %1, %5, %9, %13
  %26 = phi float [ %24, %13 ], [ 0x3FF921FB60000000, %9 ], [ 0x3FF921FB60000000, %1 ], [ 0x3FF921FB60000000, %5 ]
  ret float %26
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_edge_calc_face_tangent(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %12 = load float, ptr %10, align 4, !tbaa !71
  %13 = load float, ptr %11, align 4, !tbaa !71
  %14 = fsub float %12, %13
  %15 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !71
  %17 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !71
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !71
  %22 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !71
  %24 = fsub float %21, %23
  %25 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 4
  %28 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 4, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !71
  %30 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 4, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !71
  %32 = fneg float %24
  %33 = fmul float %31, %32
  %34 = tail call float @llvm.fmuladd.f32(float %19, float %29, float %33)
  store float %34, ptr %2, align 4, !tbaa !71
  %35 = load float, ptr %27, align 4, !tbaa !71
  %36 = load float, ptr %28, align 4, !tbaa !71
  %37 = fneg float %14
  %38 = fmul float %36, %37
  %39 = tail call float @llvm.fmuladd.f32(float %24, float %35, float %38)
  %40 = getelementptr inbounds float, ptr %2, i64 1
  store float %39, ptr %40, align 4, !tbaa !71
  %41 = load float, ptr %30, align 4, !tbaa !71
  %42 = load float, ptr %27, align 4, !tbaa !71
  %43 = fneg float %19
  %44 = fmul float %42, %43
  %45 = tail call float @llvm.fmuladd.f32(float %14, float %41, float %44)
  %46 = getelementptr inbounds float, ptr %2, i64 2
  store float %45, ptr %46, align 4, !tbaa !71
  %47 = fmul float %39, %39
  %48 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %47)
  %49 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %48)
  %50 = fcmp ogt float %49, 0x38AA95A5C0000000
  br i1 %50, label %51, label %60

51:                                               ; preds = %3
  %52 = tail call float @sqrtf(float noundef %49) #13
  %53 = fdiv float 1.000000e+00, %52
  %54 = load float, ptr %2, align 4, !tbaa !71
  %55 = fmul float %54, %53
  store float %55, ptr %2, align 4, !tbaa !71
  %56 = load float, ptr %40, align 4, !tbaa !71
  %57 = fmul float %53, %56
  store float %57, ptr %40, align 4, !tbaa !71
  %58 = load float, ptr %46, align 4, !tbaa !71
  %59 = fmul float %53, %58
  br label %61

60:                                               ; preds = %3
  store float 0.000000e+00, ptr %2, align 4, !tbaa !71
  store float 0.000000e+00, ptr %40, align 4, !tbaa !71
  br label %61

61:                                               ; preds = %51, %60
  %62 = phi float [ 0.000000e+00, %60 ], [ %59, %51 ]
  store float %62, ptr %46, align 4, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @BM_vert_calc_edge_angle(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 5
  %7 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, %0
  %10 = zext i1 %9 to i64
  %11 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 5
  %16 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %17, %0
  %19 = zext i1 %18 to i64
  %20 = getelementptr inbounds %struct.BMDiskLink, ptr %15, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = icmp eq ptr %3, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.BMEdge, ptr %3, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = icmp eq ptr %25, %0
  %27 = select i1 %9, ptr %25, ptr null
  %28 = select i1 %26, ptr %8, ptr %27
  %29 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = icmp eq ptr %30, %0
  %32 = select i1 %18, ptr %30, ptr null
  %33 = select i1 %31, ptr %17, ptr %32
  %34 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %35 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %36 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  %37 = tail call float @angle_v3v3v3(ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %36) #13
  %38 = fsub float 0x400921FB60000000, %37
  br label %39

39:                                               ; preds = %1, %5, %14, %23
  %40 = phi float [ %38, %23 ], [ 0x3FF921FB60000000, %14 ], [ 0x3FF921FB60000000, %5 ], [ 0x3FF921FB60000000, %1 ]
  ret float %40
}

; Function Attrs: nounwind uwtable
define dso_local float @BM_vert_calc_shell_factor(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 6, ptr %3, align 4, !tbaa !50
  %4 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %5, align 8, !tbaa !53
  store ptr %0, ptr %2, align 8, !tbaa !54
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %2) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = call ptr %6(ptr noundef nonnull %2) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3, i64 1
  %12 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3, i64 2
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi float [ 0.000000e+00, %9 ], [ %50, %13 ]
  %15 = phi float [ 0.000000e+00, %9 ], [ %49, %13 ]
  %16 = phi ptr [ %7, %9 ], [ %52, %13 ]
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  %22 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %30 = call float @angle_v3v3v3(ptr noundef nonnull %21, ptr noundef nonnull %24, ptr noundef nonnull %29) #13
  %31 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 4
  %34 = load float, ptr %10, align 4, !tbaa !71
  %35 = load float, ptr %33, align 4, !tbaa !71
  %36 = load float, ptr %11, align 4, !tbaa !71
  %37 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 4, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !71
  %39 = fmul float %36, %38
  %40 = call float @llvm.fmuladd.f32(float %34, float %35, float %39)
  %41 = load float, ptr %12, align 4, !tbaa !71
  %42 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 4, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !71
  %44 = call float @llvm.fmuladd.f32(float %41, float %43, float %40)
  %45 = call float @llvm.fabs.f32(float %44)
  %46 = fcmp olt float %45, 0x3E45798EE0000000
  %47 = fdiv float 1.000000e+00, %45
  %48 = select i1 %46, float 1.000000e+00, float %47
  %49 = call float @llvm.fmuladd.f32(float %48, float %30, float %15)
  %50 = fadd float %14, %30
  %51 = load ptr, ptr %5, align 8, !tbaa !53
  %52 = call ptr %51(ptr noundef nonnull %2) #13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %13, !llvm.loop !101

54:                                               ; preds = %13, %1
  %55 = phi float [ 0.000000e+00, %1 ], [ %49, %13 ]
  %56 = phi float [ 0.000000e+00, %1 ], [ %50, %13 ]
  %57 = fcmp une float %56, 0.000000e+00
  %58 = fdiv float %55, %56
  %59 = select i1 %57, float %58, float 1.000000e+00
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret float %59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nounwind uwtable
define dso_local float @BM_vert_calc_shell_factor_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 6, ptr %4, align 4, !tbaa !50
  %5 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %6, align 8, !tbaa !53
  store ptr %0, ptr %3, align 8, !tbaa !54
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %3) #13
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = call ptr %7(ptr noundef nonnull %3) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3, i64 1
  %13 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3, i64 2
  br label %14

14:                                               ; preds = %10, %60
  %15 = phi i32 [ 0, %10 ], [ %63, %60 ]
  %16 = phi float [ 0.000000e+00, %10 ], [ %62, %60 ]
  %17 = phi float [ 0.000000e+00, %10 ], [ %61, %60 ]
  %18 = phi ptr [ %8, %10 ], [ %65, %60 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !102
  %23 = and i8 %22, %1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %60, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !56
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  %34 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2
  %39 = call float @angle_v3v3v3(ptr noundef nonnull %30, ptr noundef nonnull %33, ptr noundef nonnull %38) #13
  %40 = load ptr, ptr %19, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.BMFace, ptr %40, i64 0, i32 4
  %42 = load float, ptr %11, align 4, !tbaa !71
  %43 = load float, ptr %41, align 4, !tbaa !71
  %44 = load float, ptr %12, align 4, !tbaa !71
  %45 = getelementptr inbounds %struct.BMFace, ptr %40, i64 0, i32 4, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !71
  %47 = fmul float %44, %46
  %48 = call float @llvm.fmuladd.f32(float %42, float %43, float %47)
  %49 = load float, ptr %13, align 4, !tbaa !71
  %50 = getelementptr inbounds %struct.BMFace, ptr %40, i64 0, i32 4, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !71
  %52 = call float @llvm.fmuladd.f32(float %49, float %51, float %48)
  %53 = call float @llvm.fabs.f32(float %52)
  %54 = fcmp olt float %53, 0x3E45798EE0000000
  %55 = fdiv float 1.000000e+00, %53
  %56 = select i1 %54, float 1.000000e+00, float %55
  %57 = call float @llvm.fmuladd.f32(float %56, float %39, float %17)
  %58 = fadd float %16, %39
  %59 = add nsw i32 %15, 1
  br label %60

60:                                               ; preds = %25, %14
  %61 = phi float [ %57, %25 ], [ %17, %14 ]
  %62 = phi float [ %58, %25 ], [ %16, %14 ]
  %63 = phi i32 [ %59, %25 ], [ %15, %14 ]
  %64 = load ptr, ptr %6, align 8, !tbaa !53
  %65 = call ptr %64(ptr noundef nonnull %3) #13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %14, !llvm.loop !103

67:                                               ; preds = %60
  %68 = icmp eq i32 %63, 0
  br label %69

69:                                               ; preds = %67, %2
  %70 = phi i1 [ false, %2 ], [ %68, %67 ]
  %71 = phi float [ 0.000000e+00, %2 ], [ %61, %67 ]
  %72 = phi float [ 0.000000e+00, %2 ], [ %62, %67 ]
  %73 = fcmp une float %72, 0.000000e+00
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = fdiv float %71, %72
  br label %79

76:                                               ; preds = %69
  br i1 %70, label %77, label %79

77:                                               ; preds = %76
  %78 = call float @BM_vert_calc_shell_factor(ptr noundef %0)
  br label %79

79:                                               ; preds = %76, %77, %74
  %80 = phi float [ %75, %74 ], [ %78, %77 ], [ 1.000000e+00, %76 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret float %80
}

; Function Attrs: nounwind uwtable
define dso_local float @BM_vert_calc_mean_tagged_edge_length(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 4, ptr %3, align 4, !tbaa !50
  %4 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %5, align 8, !tbaa !53
  store ptr %0, ptr %2, align 8, !tbaa !54
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %2) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = call ptr %6(ptr noundef nonnull %2) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %1, %48
  %10 = phi float [ %49, %48 ], [ 0.000000e+00, %1 ]
  %11 = phi i32 [ %52, %48 ], [ 0, %1 ]
  %12 = phi ptr [ %51, %48 ], [ %7, %1 ]
  %13 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, %0
  %16 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %17, %0
  %19 = select i1 %18, ptr %14, ptr null
  %20 = select i1 %15, ptr %17, ptr %19
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !102
  %23 = and i8 %22, 16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %30 = load float, ptr %29, align 4, !tbaa !71
  %31 = load float, ptr %26, align 4, !tbaa !71
  %32 = fsub float %30, %31
  %33 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !71
  %35 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !71
  %37 = fsub float %34, %36
  %38 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !71
  %40 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !71
  %42 = fsub float %39, %41
  %43 = fmul float %37, %37
  %44 = call float @llvm.fmuladd.f32(float %32, float %32, float %43)
  %45 = call float @llvm.fmuladd.f32(float %42, float %42, float %44)
  %46 = call float @sqrtf(float noundef %45) #13
  %47 = fadd float %10, %46
  br label %48

48:                                               ; preds = %25, %9
  %49 = phi float [ %47, %25 ], [ %10, %9 ]
  %50 = load ptr, ptr %5, align 8, !tbaa !53
  %51 = call ptr %50(ptr noundef nonnull %2) #13
  %52 = add nuw nsw i32 %11, 1
  %53 = icmp eq ptr %51, null
  br i1 %53, label %54, label %9, !llvm.loop !104

54:                                               ; preds = %48, %1
  %55 = phi i32 [ 0, %1 ], [ %52, %48 ]
  %56 = phi float [ 0.000000e+00, %1 ], [ %49, %48 ]
  %57 = icmp eq i32 %55, 0
  %58 = sitofp i32 %55 to float
  %59 = fdiv float %56, %58
  %60 = select i1 %57, float 0.000000e+00, float %59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret float %60
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_find_shortest_loop(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %3, %1 ], [ %12, %4 ]
  %6 = phi float [ 0x47EFFFFFE0000000, %1 ], [ %33, %4 ]
  %7 = phi ptr [ null, %1 ], [ %34, %4 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !71
  %17 = load float, ptr %10, align 4, !tbaa !71
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !71
  %21 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !71
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !71
  %26 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !71
  %28 = fsub float %25, %27
  %29 = fmul float %23, %23
  %30 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %30)
  %32 = fcmp ugt float %31, %6
  %33 = select i1 %32, float %6, float %31
  %34 = select i1 %32, ptr %7, ptr %5
  %35 = icmp eq ptr %12, %3
  br i1 %35, label %36, label %4, !llvm.loop !105

36:                                               ; preds = %4
  ret ptr %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_face_find_longest_loop(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %3, %1 ], [ %12, %4 ]
  %6 = phi float [ 0.000000e+00, %1 ], [ %33, %4 ]
  %7 = phi ptr [ null, %1 ], [ %34, %4 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !71
  %17 = load float, ptr %10, align 4, !tbaa !71
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !71
  %21 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !71
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !71
  %26 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !71
  %28 = fsub float %25, %27
  %29 = fmul float %23, %23
  %30 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %30)
  %32 = fcmp ult float %31, %6
  %33 = select i1 %32, float %6, float %31
  %34 = select i1 %32, ptr %7, ptr %5
  %35 = icmp eq ptr %12, %3
  br i1 %35, label %36, label %4, !llvm.loop !106

36:                                               ; preds = %4
  ret ptr %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_edge_exists(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %6, %45
  %11 = phi ptr [ %43, %45 ], [ %4, %6 ]
  %12 = phi ptr [ %52, %45 ], [ %8, %6 ]
  %13 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %1
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %10, %16
  %22 = phi i8 [ 1, %10 ], [ %20, %16 ]
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = icmp eq ptr %30, %0
  %32 = zext i1 %31 to i8
  br label %33

33:                                               ; preds = %24, %28
  %34 = phi i8 [ 1, %24 ], [ %32, %28 ]
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 5
  %38 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = icmp eq ptr %39, %0
  %41 = zext i1 %40 to i64
  %42 = getelementptr inbounds %struct.BMDiskLink, ptr %37, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !88
  %44 = icmp eq ptr %43, %4
  br i1 %44, label %54, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 5
  %47 = getelementptr inbounds %struct.BMEdge, ptr %12, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  %49 = icmp eq ptr %48, %1
  %50 = zext i1 %49 to i64
  %51 = getelementptr inbounds %struct.BMDiskLink, ptr %46, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !88
  %53 = icmp eq ptr %52, %8
  br i1 %53, label %54, label %10, !llvm.loop !107

54:                                               ; preds = %45, %36, %33, %21
  %55 = phi ptr [ %11, %21 ], [ %12, %33 ], [ undef, %36 ], [ undef, %45 ]
  %56 = phi i1 [ false, %21 ], [ false, %33 ], [ true, %36 ], [ true, %45 ]
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %6, %2
  br label %58

58:                                               ; preds = %54, %57
  %59 = phi ptr [ null, %57 ], [ %55, %54 ]
  ret ptr %59
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BM_edge_find_double(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  br label %6

6:                                                ; preds = %25, %1
  %7 = phi ptr [ %0, %1 ], [ %14, %25 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 5
  %9 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = icmp eq ptr %10, %3
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds %struct.BMDiskLink, ptr %8, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %28, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = icmp eq ptr %22, %5
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %16, %20
  %26 = phi i8 [ 1, %16 ], [ %24, %20 ]
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %6, label %28, !llvm.loop !108

28:                                               ; preds = %6, %25
  %29 = phi ptr [ %14, %25 ], [ null, %6 ]
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_face_exists(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 6, ptr %6, align 4, !tbaa !50
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %7, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %8, align 8, !tbaa !53
  store ptr %5, ptr %4, align 8, !tbaa !54
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %4) #13
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = call ptr %9(ptr noundef nonnull %4) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %3
  %13 = icmp slt i32 %1, 1
  %14 = zext i32 %1 to i64
  br label %15

15:                                               ; preds = %12, %56
  %16 = phi i1 [ %11, %12 ], [ %60, %56 ]
  %17 = phi i8 [ 0, %12 ], [ %57, %56 ]
  %18 = phi ptr [ %10, %12 ], [ %59, %56 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !68
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %56

24:                                               ; preds = %15
  %25 = icmp ne i8 %17, 0
  %26 = or i1 %25, %13
  %27 = select i1 %25, i8 %17, i8 1
  br i1 %26, label %37, label %28

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %35, %28 ], [ 0, %24 ]
  %30 = getelementptr inbounds ptr, ptr %0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 4
  %33 = load i8, ptr %32, align 2, !tbaa !74
  %34 = or i8 %33, 4
  store i8 %34, ptr %32, align 2, !tbaa !74
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %14
  br i1 %36, label %37, label %28, !llvm.loop !109

37:                                               ; preds = %28, %24
  %38 = phi i8 [ %27, %24 ], [ 1, %28 ]
  %39 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  br label %41

41:                                               ; preds = %49, %37
  %42 = phi ptr [ %40, %37 ], [ %51, %49 ]
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 4
  %46 = load i8, ptr %45, align 2, !tbaa !74
  %47 = and i8 %46, 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = icmp eq ptr %51, %18
  br i1 %52, label %53, label %41, !llvm.loop !110

53:                                               ; preds = %49
  %54 = icmp eq ptr %2, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  store ptr %20, ptr %2, align 8, !tbaa !49
  br label %61

56:                                               ; preds = %41, %15
  %57 = phi i8 [ %17, %15 ], [ %38, %41 ]
  %58 = load ptr, ptr %8, align 8, !tbaa !53
  %59 = call ptr %58(ptr noundef nonnull %4) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %15, !llvm.loop !111

61:                                               ; preds = %56, %3, %53, %55
  %62 = phi i1 [ %16, %55 ], [ %16, %53 ], [ %11, %3 ], [ %60, %56 ]
  %63 = phi i8 [ %38, %55 ], [ %38, %53 ], [ 0, %3 ], [ %57, %56 ]
  %64 = phi i8 [ 1, %55 ], [ 1, %53 ], [ 0, %3 ], [ 0, %56 ]
  %65 = icmp ne ptr %2, null
  %66 = and i1 %65, %62
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store ptr null, ptr %2, align 8, !tbaa !49
  br label %68

68:                                               ; preds = %67, %61
  %69 = icmp eq i8 %63, 1
  %70 = icmp sgt i32 %1, 0
  %71 = and i1 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = zext i32 %1 to i64
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i64 [ 0, %72 ], [ %81, %74 ]
  %76 = getelementptr inbounds ptr, ptr %0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !49
  %78 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 4
  %79 = load i8, ptr %78, align 2, !tbaa !74
  %80 = and i8 %79, -5
  store i8 %80, ptr %78, align 2, !tbaa !74
  %81 = add nuw nsw i64 %75, 1
  %82 = icmp eq i64 %81, %73
  br i1 %82, label %83, label %74, !llvm.loop !112

83:                                               ; preds = %74, %68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i8 %64
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_face_exists_multi(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %9 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %10 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %14 = zext nneg i32 %2 to i64
  br label %19

15:                                               ; preds = %60, %3
  %16 = icmp sgt i32 %2, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %15
  %18 = zext nneg i32 %2 to i64
  br label %73

19:                                               ; preds = %7, %60
  %20 = phi i64 [ 0, %7 ], [ %61, %60 ]
  %21 = getelementptr inbounds ptr, ptr %1, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  store i8 8, ptr %8, align 4, !tbaa !50
  store ptr @bmiter__face_of_edge_begin, ptr %9, align 8, !tbaa !52
  store ptr @bmiter__face_of_edge_step, ptr %10, align 8, !tbaa !53
  store ptr %22, ptr %4, align 8, !tbaa !54
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %4) #13
  %23 = load ptr, ptr %10, align 8, !tbaa !53
  %24 = call ptr %23(ptr noundef nonnull %4) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %19, %42
  %27 = phi ptr [ %44, %42 ], [ %24, %19 ]
  %28 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !102
  %30 = and i8 %29, 127
  store i8 %30, ptr %28, align 1, !tbaa !102
  store i8 9, ptr %11, align 4, !tbaa !50
  store ptr @bmiter__vert_of_face_begin, ptr %12, align 8, !tbaa !52
  store ptr @bmiter__vert_of_face_step, ptr %13, align 8, !tbaa !53
  store ptr %27, ptr %5, align 8, !tbaa !54
  call void @bmiter__vert_of_face_begin(ptr noundef nonnull %5) #13
  %31 = load ptr, ptr %13, align 8, !tbaa !53
  %32 = call ptr %31(ptr noundef nonnull %5) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %26, %34
  %35 = phi ptr [ %40, %34 ], [ %32, %26 ]
  %36 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !102
  %38 = and i8 %37, 127
  store i8 %38, ptr %36, align 1, !tbaa !102
  %39 = load ptr, ptr %13, align 8, !tbaa !53
  %40 = call ptr %39(ptr noundef nonnull %5) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34, !llvm.loop !113

42:                                               ; preds = %34, %26
  %43 = load ptr, ptr %10, align 8, !tbaa !53
  %44 = call ptr %43(ptr noundef nonnull %4) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %26, !llvm.loop !114

46:                                               ; preds = %42, %19
  %47 = getelementptr inbounds ptr, ptr %0, i64 %20
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  store i8 4, ptr %8, align 4, !tbaa !50
  store ptr @bmiter__edge_of_vert_begin, ptr %9, align 8, !tbaa !52
  store ptr @bmiter__edge_of_vert_step, ptr %10, align 8, !tbaa !53
  store ptr %48, ptr %4, align 8, !tbaa !54
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #13
  %49 = load ptr, ptr %10, align 8, !tbaa !53
  %50 = call ptr %49(ptr noundef nonnull %4) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %46, %52
  %53 = phi ptr [ %58, %52 ], [ %50, %46 ]
  %54 = getelementptr inbounds %struct.BMHeader, ptr %53, i64 0, i32 3
  %55 = load i8, ptr %54, align 1, !tbaa !102
  %56 = and i8 %55, 127
  store i8 %56, ptr %54, align 1, !tbaa !102
  %57 = load ptr, ptr %10, align 8, !tbaa !53
  %58 = call ptr %57(ptr noundef nonnull %4) #13
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %52, !llvm.loop !115

60:                                               ; preds = %52, %46
  %61 = add nuw nsw i64 %20, 1
  %62 = icmp eq i64 %61, %14
  br i1 %62, label %15, label %19, !llvm.loop !116

63:                                               ; preds = %73, %15
  %64 = icmp sgt i32 %2, 0
  br i1 %64, label %65, label %148

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %67 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %68 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %69 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %70 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %71 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %72 = zext nneg i32 %2 to i64
  br label %87

73:                                               ; preds = %17, %73
  %74 = phi i64 [ 0, %17 ], [ %85, %73 ]
  %75 = getelementptr inbounds ptr, ptr %0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !49
  %77 = getelementptr inbounds %struct.BMHeader, ptr %76, i64 0, i32 3
  %78 = load i8, ptr %77, align 1, !tbaa !102
  %79 = or i8 %78, -128
  store i8 %79, ptr %77, align 1, !tbaa !102
  %80 = getelementptr inbounds ptr, ptr %1, i64 %74
  %81 = load ptr, ptr %80, align 8, !tbaa !49
  %82 = getelementptr inbounds %struct.BMHeader, ptr %81, i64 0, i32 3
  %83 = load i8, ptr %82, align 1, !tbaa !102
  %84 = or i8 %83, -128
  store i8 %84, ptr %82, align 1, !tbaa !102
  %85 = add nuw nsw i64 %74, 1
  %86 = icmp eq i64 %85, %18
  br i1 %86, label %63, label %73, !llvm.loop !117

87:                                               ; preds = %65, %123
  %88 = phi i64 [ 0, %65 ], [ %125, %123 ]
  %89 = phi i32 [ 0, %65 ], [ %124, %123 ]
  %90 = getelementptr inbounds ptr, ptr %1, i64 %88
  %91 = load ptr, ptr %90, align 8, !tbaa !49
  store i8 8, ptr %66, align 4, !tbaa !50
  store ptr @bmiter__face_of_edge_begin, ptr %67, align 8, !tbaa !52
  store ptr @bmiter__face_of_edge_step, ptr %68, align 8, !tbaa !53
  store ptr %91, ptr %4, align 8, !tbaa !54
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %4) #13
  %92 = load ptr, ptr %68, align 8, !tbaa !53
  %93 = call ptr %92(ptr noundef nonnull %4) #13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %123, label %95

95:                                               ; preds = %87, %118
  %96 = phi i32 [ %119, %118 ], [ %89, %87 ]
  %97 = phi ptr [ %121, %118 ], [ %93, %87 ]
  %98 = getelementptr inbounds %struct.BMHeader, ptr %97, i64 0, i32 3
  %99 = load i8, ptr %98, align 1, !tbaa !102
  %100 = icmp sgt i8 %99, -1
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  store i8 9, ptr %69, align 4, !tbaa !50
  store ptr @bmiter__vert_of_face_begin, ptr %70, align 8, !tbaa !52
  store ptr @bmiter__vert_of_face_step, ptr %71, align 8, !tbaa !53
  store ptr %97, ptr %5, align 8, !tbaa !54
  call void @bmiter__vert_of_face_begin(ptr noundef nonnull %5) #13
  %102 = load ptr, ptr %71, align 8, !tbaa !53
  %103 = call ptr %102(ptr noundef nonnull %5) #13
  %104 = icmp eq ptr %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %101, %110
  %106 = phi ptr [ %112, %110 ], [ %103, %101 ]
  %107 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 3
  %108 = load i8, ptr %107, align 1, !tbaa !102
  %109 = icmp sgt i8 %108, -1
  br i1 %109, label %118, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %71, align 8, !tbaa !53
  %112 = call ptr %111(ptr noundef nonnull %5) #13
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %105, !llvm.loop !118

114:                                              ; preds = %110, %101
  %115 = load i8, ptr %98, align 1, !tbaa !102
  %116 = or i8 %115, -128
  store i8 %116, ptr %98, align 1, !tbaa !102
  %117 = add nsw i32 %96, 1
  br label %118

118:                                              ; preds = %105, %114, %95
  %119 = phi i32 [ %96, %95 ], [ %117, %114 ], [ %96, %105 ]
  %120 = load ptr, ptr %68, align 8, !tbaa !53
  %121 = call ptr %120(ptr noundef nonnull %4) #13
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %95, !llvm.loop !119

123:                                              ; preds = %118, %87
  %124 = phi i32 [ %89, %87 ], [ %119, %118 ]
  %125 = add nuw nsw i64 %88, 1
  %126 = icmp eq i64 %125, %72
  br i1 %126, label %127, label %87, !llvm.loop !120

127:                                              ; preds = %123
  %128 = icmp eq i32 %124, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %131 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %132 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %133 = zext nneg i32 %2 to i64
  br label %134

134:                                              ; preds = %129, %145
  %135 = phi i64 [ 0, %129 ], [ %146, %145 ]
  %136 = getelementptr inbounds ptr, ptr %0, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !49
  store i8 4, ptr %130, align 4, !tbaa !50
  store ptr @bmiter__edge_of_vert_begin, ptr %131, align 8, !tbaa !52
  store ptr @bmiter__edge_of_vert_step, ptr %132, align 8, !tbaa !53
  store ptr %137, ptr %4, align 8, !tbaa !54
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #13
  %138 = load ptr, ptr %132, align 8, !tbaa !53
  %139 = call ptr %138(ptr noundef nonnull %4) #13
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %134, %141
  %142 = load ptr, ptr %132, align 8, !tbaa !53
  %143 = call ptr %142(ptr noundef nonnull %4) #13
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %141, !llvm.loop !121

145:                                              ; preds = %141, %134
  %146 = add nuw nsw i64 %135, 1
  %147 = icmp eq i64 %146, %133
  br i1 %147, label %148, label %134, !llvm.loop !122

148:                                              ; preds = %145, %63, %127
  %149 = phi i8 [ 0, %127 ], [ 0, %63 ], [ 1, %145 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i8 %149
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_face_exists_multi_edge(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = shl nsw i64 %3, 3
  %5 = alloca i8, i64 %4, align 16
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %2
  %8 = add nsw i32 %1, -1
  %9 = zext nneg i32 %1 to i64
  br label %14

10:                                               ; preds = %38
  %11 = add nuw nsw i64 %15, 1
  %12 = trunc i64 %15 to i32
  %13 = icmp eq i64 %11, %9
  br i1 %13, label %45, label %14, !llvm.loop !123

14:                                               ; preds = %7, %10
  %15 = phi i64 [ 0, %7 ], [ %11, %10 ]
  %16 = phi i32 [ %8, %7 ], [ %12, %10 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = getelementptr inbounds ptr, ptr %0, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = icmp eq ptr %25, %23
  br i1 %26, label %38, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = icmp eq ptr %29, %23
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = icmp eq ptr %25, %33
  %35 = icmp eq ptr %29, %33
  %36 = or i1 %34, %35
  %37 = select i1 %36, ptr %33, ptr null
  br label %38

38:                                               ; preds = %31, %27, %14
  %39 = phi ptr [ %23, %14 ], [ %23, %27 ], [ %37, %31 ]
  %40 = getelementptr inbounds ptr, ptr %5, i64 %17
  store ptr %39, ptr %40, align 8, !tbaa !49
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %10

42:                                               ; preds = %38
  %43 = load ptr, ptr @stderr, align 8, !tbaa !49
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.BM_face_exists_multi_edge, i32 noundef 1764, ptr noundef nonnull @.str.2) #14
  br label %47

45:                                               ; preds = %10, %2
  %46 = call zeroext i8 @BM_face_exists_multi(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1), !range !124
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i8 [ 0, %42 ], [ %46, %45 ]
  ret i8 %48
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_face_exists_overlap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !49
  %6 = icmp eq ptr %2, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !49
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %14 = zext nneg i32 %1 to i64
  %15 = zext nneg i32 %1 to i64
  %16 = zext nneg i32 %1 to i64
  br label %21

17:                                               ; preds = %81, %8
  %18 = phi i8 [ 0, %8 ], [ %82, %81 ]
  %19 = load ptr, ptr %5, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %94, label %85

21:                                               ; preds = %10, %81
  %22 = phi i64 [ 0, %10 ], [ %83, %81 ]
  %23 = phi i8 [ 0, %10 ], [ %82, %81 ]
  %24 = getelementptr inbounds ptr, ptr %0, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  store i8 5, ptr %11, align 4, !tbaa !50
  store ptr @bmiter__face_of_vert_begin, ptr %12, align 8, !tbaa !52
  store ptr @bmiter__face_of_vert_step, ptr %13, align 8, !tbaa !53
  store ptr %25, ptr %4, align 8, !tbaa !54
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %4) #13
  %26 = load ptr, ptr %13, align 8, !tbaa !53
  %27 = call ptr %26(ptr noundef nonnull %4) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %81, label %29

29:                                               ; preds = %21, %77
  %30 = phi ptr [ %79, %77 ], [ %27, %21 ]
  %31 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 4
  %32 = load i8, ptr %31, align 2, !tbaa !125
  %33 = and i8 %32, 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %29, %35
  %36 = phi i64 [ %42, %35 ], [ 0, %29 ]
  %37 = getelementptr inbounds ptr, ptr %0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 4
  %40 = load i8, ptr %39, align 2, !tbaa !74
  %41 = or i8 %40, 4
  store i8 %41, ptr %39, align 2, !tbaa !74
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %14
  br i1 %43, label %44, label %35, !llvm.loop !75

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.BMFace, ptr %30, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !63
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ %46, %44 ], [ %59, %47 ]
  %49 = phi i32 [ 0, %44 ], [ %57, %47 ]
  %50 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = getelementptr inbounds %struct.BMHeader, ptr %51, i64 0, i32 4
  %53 = load i8, ptr %52, align 2, !tbaa !74
  %54 = lshr i8 %53, 2
  %55 = and i8 %54, 1
  %56 = zext nneg i8 %55 to i32
  %57 = add i32 %49, %56
  %58 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = icmp eq ptr %59, %46
  br i1 %60, label %61, label %47, !llvm.loop !76

61:                                               ; preds = %47, %61
  %62 = phi i64 [ %68, %61 ], [ 0, %47 ]
  %63 = getelementptr inbounds ptr, ptr %0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !49
  %65 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 4
  %66 = load i8, ptr %65, align 2, !tbaa !74
  %67 = and i8 %66, -5
  store i8 %67, ptr %65, align 2, !tbaa !74
  %68 = add nuw nsw i64 %62, 1
  %69 = icmp eq i64 %68, %15
  br i1 %69, label %70, label %61, !llvm.loop !77

70:                                               ; preds = %61
  %71 = icmp slt i32 %57, %1
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  br i1 %6, label %81, label %73

73:                                               ; preds = %72
  store ptr %30, ptr %2, align 8, !tbaa !49
  br label %81

74:                                               ; preds = %70
  %75 = or disjoint i8 %32, 4
  store i8 %75, ptr %31, align 2, !tbaa !125
  %76 = alloca [16 x i8], align 16
  call void @BLI_linklist_prepend_nlink(ptr noundef nonnull %5, ptr noundef nonnull %30, ptr noundef nonnull %76) #13
  br label %77

77:                                               ; preds = %29, %74
  %78 = load ptr, ptr %13, align 8, !tbaa !53
  %79 = call ptr %78(ptr noundef nonnull %4) #13
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %29, !llvm.loop !126

81:                                               ; preds = %77, %21, %72, %73
  %82 = phi i8 [ 1, %73 ], [ 1, %72 ], [ %23, %21 ], [ %23, %77 ]
  %83 = add nuw nsw i64 %22, 1
  %84 = icmp eq i64 %83, %16
  br i1 %84, label %17, label %21, !llvm.loop !127

85:                                               ; preds = %17, %85
  %86 = phi ptr [ %92, %85 ], [ %19, %17 ]
  %87 = getelementptr inbounds %struct.LinkNode, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !128
  %89 = getelementptr inbounds %struct.BMHeader, ptr %88, i64 0, i32 4
  %90 = load i8, ptr %89, align 2, !tbaa !125
  %91 = and i8 %90, -5
  store i8 %91, ptr %89, align 2, !tbaa !125
  %92 = load ptr, ptr %86, align 8, !tbaa !130
  store ptr %92, ptr %5, align 8, !tbaa !49
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %85, !llvm.loop !131

94:                                               ; preds = %85, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i8 %18
}

declare void @BLI_linklist_prepend_nlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_face_exists_overlap_subset(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !49
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %84

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %6, %76
  %12 = phi i8 [ 0, %6 ], [ %79, %76 ]
  %13 = phi i8 [ 0, %6 ], [ %78, %76 ]
  %14 = phi i32 [ 0, %6 ], [ %80, %76 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  store i8 5, ptr %7, align 4, !tbaa !50
  store ptr @bmiter__face_of_vert_begin, ptr %8, align 8, !tbaa !52
  store ptr @bmiter__face_of_vert_step, ptr %9, align 8, !tbaa !53
  store ptr %17, ptr %3, align 8, !tbaa !54
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %3) #13
  %18 = load ptr, ptr %9, align 8, !tbaa !53
  %19 = call ptr %18(ptr noundef nonnull %3) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %76, label %21

21:                                               ; preds = %11, %69
  %22 = phi ptr [ %74, %69 ], [ %19, %11 ]
  %23 = phi i8 [ %72, %69 ], [ %12, %11 ]
  %24 = phi i8 [ %71, %69 ], [ %13, %11 ]
  %25 = phi i32 [ %70, %69 ], [ %14, %11 ]
  %26 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !68
  %28 = icmp sgt i32 %27, %1
  br i1 %28, label %69, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 4
  %31 = load i8, ptr %30, align 2, !tbaa !125
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %29
  %35 = icmp eq i8 %24, 0
  %36 = select i1 %35, i32 0, i32 %25
  br i1 %35, label %37, label %48

37:                                               ; preds = %34, %37
  %38 = phi i64 [ %44, %37 ], [ 0, %34 ]
  %39 = getelementptr inbounds ptr, ptr %0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 4
  %42 = load i8, ptr %41, align 2, !tbaa !74
  %43 = or i8 %42, 4
  store i8 %43, ptr %41, align 2, !tbaa !74
  %44 = add nuw nsw i64 %38, 1
  %45 = icmp eq i64 %44, %10
  br i1 %45, label %46, label %37, !llvm.loop !132

46:                                               ; preds = %37
  %47 = trunc i64 %44 to i32
  br label %48

48:                                               ; preds = %46, %34
  %49 = phi i32 [ %36, %34 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  br label %52

52:                                               ; preds = %60, %48
  %53 = phi ptr [ %51, %48 ], [ %62, %60 ]
  %54 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct.BMHeader, ptr %55, i64 0, i32 4
  %57 = load i8, ptr %56, align 2, !tbaa !74
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  %63 = icmp eq ptr %62, %51
  br i1 %63, label %64, label %52, !llvm.loop !133

64:                                               ; preds = %52, %60
  %65 = phi i8 [ 1, %60 ], [ 0, %52 ]
  br i1 %59, label %66, label %76

66:                                               ; preds = %64
  %67 = or disjoint i8 %31, 4
  store i8 %67, ptr %30, align 2, !tbaa !125
  %68 = alloca [16 x i8], align 16
  call void @BLI_linklist_prepend_nlink(ptr noundef nonnull %4, ptr noundef nonnull %22, ptr noundef nonnull %68) #13
  br label %69

69:                                               ; preds = %66, %21, %29
  %70 = phi i32 [ %49, %66 ], [ %25, %29 ], [ %25, %21 ]
  %71 = phi i8 [ 1, %66 ], [ %24, %29 ], [ %24, %21 ]
  %72 = phi i8 [ %65, %66 ], [ %23, %29 ], [ %23, %21 ]
  %73 = load ptr, ptr %9, align 8, !tbaa !53
  %74 = call ptr %73(ptr noundef nonnull %3) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %21, !llvm.loop !134

76:                                               ; preds = %69, %64, %11
  %77 = phi i32 [ %14, %11 ], [ %70, %69 ], [ %49, %64 ]
  %78 = phi i8 [ %13, %11 ], [ %71, %69 ], [ 1, %64 ]
  %79 = phi i8 [ %12, %11 ], [ %72, %69 ], [ %65, %64 ]
  %80 = add nsw i32 %77, 1
  %81 = icmp slt i32 %80, %1
  br i1 %81, label %11, label %82, !llvm.loop !135

82:                                               ; preds = %76
  %83 = icmp eq i8 %78, 1
  br label %84

84:                                               ; preds = %82, %2
  %85 = phi i1 [ false, %2 ], [ %83, %82 ]
  %86 = phi i8 [ 0, %2 ], [ %79, %82 ]
  %87 = icmp sgt i32 %1, 0
  %88 = and i1 %85, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = zext i32 %1 to i64
  br label %91

91:                                               ; preds = %89, %91
  %92 = phi i64 [ 0, %89 ], [ %98, %91 ]
  %93 = getelementptr inbounds ptr, ptr %0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !49
  %95 = getelementptr inbounds %struct.BMHeader, ptr %94, i64 0, i32 4
  %96 = load i8, ptr %95, align 2, !tbaa !74
  %97 = and i8 %96, -5
  store i8 %97, ptr %95, align 2, !tbaa !74
  %98 = add nuw nsw i64 %92, 1
  %99 = icmp eq i64 %98, %90
  br i1 %99, label %100, label %91, !llvm.loop !136

100:                                              ; preds = %91, %84
  %101 = load ptr, ptr %4, align 8, !tbaa !49
  %102 = icmp eq ptr %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %100, %103
  %104 = phi ptr [ %110, %103 ], [ %101, %100 ]
  %105 = getelementptr inbounds %struct.LinkNode, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !128
  %107 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 4
  %108 = load i8, ptr %107, align 2, !tbaa !125
  %109 = and i8 %108, -5
  store i8 %109, ptr %107, align 2, !tbaa !125
  %110 = load ptr, ptr %104, align 8, !tbaa !130
  store ptr %110, ptr %4, align 8, !tbaa !49
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %103, !llvm.loop !137

112:                                              ; preds = %103, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i8 %86
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_vert_is_all_edge_flag_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %9 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 4, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %11, align 8, !tbaa !53
  store ptr %0, ptr %4, align 8, !tbaa !54
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #13
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = call ptr %12(ptr noundef nonnull %4) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %8
  %16 = icmp eq i8 %2, 0
  br label %17

17:                                               ; preds = %15, %30
  %18 = phi i1 [ %14, %15 ], [ %33, %30 ]
  %19 = phi ptr [ %13, %15 ], [ %32, %30 ]
  br i1 %16, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !102
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20, %17
  %26 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !102
  %28 = and i8 %27, %1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %20, %25
  %31 = load ptr, ptr %11, align 8, !tbaa !53
  %32 = call ptr %31(ptr noundef nonnull %4) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %17, !llvm.loop !138

34:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br i1 %18, label %36, label %37

35:                                               ; preds = %30, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %36

36:                                               ; preds = %35, %34, %3
  br label %37

37:                                               ; preds = %34, %36
  %38 = phi i8 [ 0, %34 ], [ 1, %36 ]
  ret i8 %38
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_vert_is_all_face_flag_test(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %9 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 5, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %11, align 8, !tbaa !53
  store ptr %0, ptr %4, align 8, !tbaa !54
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %4) #13
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = call ptr %12(ptr noundef nonnull %4) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %8
  %16 = icmp eq i8 %2, 0
  br label %17

17:                                               ; preds = %15, %30
  %18 = phi i1 [ %14, %15 ], [ %33, %30 ]
  %19 = phi ptr [ %13, %15 ], [ %32, %30 ]
  br i1 %16, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !102
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20, %17
  %26 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !102
  %28 = and i8 %27, %1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %20, %25
  %31 = load ptr, ptr %11, align 8, !tbaa !53
  %32 = call ptr %31(ptr noundef nonnull %4) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %17, !llvm.loop !139

34:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br i1 %18, label %36, label %37

35:                                               ; preds = %30, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %36

36:                                               ; preds = %35, %34, %3
  br label %37

37:                                               ; preds = %34, %36
  %38 = phi i8 [ 0, %34 ], [ 1, %36 ]
  ret i8 %38
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edge_is_all_face_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %9

9:                                                ; preds = %7, %25
  %10 = phi ptr [ %27, %25 ], [ %5, %7 ]
  br i1 %8, label %18, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.BMHeader, ptr %13, i64 0, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !102
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11, %9
  %19 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !102
  %23 = and i8 %22, %1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %11, %18
  %26 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %29, label %9, !llvm.loop !140

29:                                               ; preds = %18, %25, %3
  %30 = phi i8 [ 1, %3 ], [ 1, %25 ], [ 0, %18 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_edge_is_any_vert_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.BMHeader, ptr %4, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !102
  %7 = and i8 %6, %1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.BMHeader, ptr %11, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !102
  %14 = and i8 %13, %1
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i8 [ 1, %2 ], [ %16, %9 ]
  ret i8 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_face_is_any_vert_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %13, %2
  %6 = phi ptr [ %4, %2 ], [ %15, %13 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.BMHeader, ptr %8, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !102
  %11 = and i8 %10, %1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %5, !llvm.loop !141

17:                                               ; preds = %13, %5
  %18 = phi i8 [ 1, %5 ], [ 0, %13 ]
  ret i8 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_face_is_any_edge_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %13, %2
  %6 = phi ptr [ %4, %2 ], [ %15, %13 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.BMHeader, ptr %8, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !102
  %11 = and i8 %10, %1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %5, !llvm.loop !142

17:                                               ; preds = %13, %5
  %18 = phi i8 [ 1, %5 ], [ 0, %13 ]
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_face_is_normal_valid(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  %3 = call float @BM_face_calc_normal(ptr noundef %0, ptr noundef nonnull %2) #13
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !71
  %6 = load float, ptr %2, align 4, !tbaa !71
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !71
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !71
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !71
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !71
  %17 = fsub float %14, %16
  %18 = fmul float %12, %12
  %19 = call float @llvm.fmuladd.f32(float %7, float %7, float %18)
  %20 = call float @llvm.fmuladd.f32(float %17, float %17, float %19)
  %21 = fcmp olt float %20, 0x3E45798EC0000000
  %22 = zext i1 %21 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  ret i8 %22
}

declare float @BM_face_calc_normal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local float @BM_mesh_calc_volume(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = alloca float, align 4
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store float 0.000000e+00, ptr %3, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %5, align 4, !tbaa !50
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !143
  store ptr %9, ptr %4, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !53
  %11 = call ptr %10(ptr noundef nonnull %4) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %2 ]
  call fastcc void @bm_mesh_calc_volume_face(ptr noundef nonnull %14, ptr noundef nonnull %3)
  %15 = load ptr, ptr %7, align 8, !tbaa !53
  %16 = call ptr %15(ptr noundef nonnull %4) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !147

18:                                               ; preds = %13, %2
  %19 = icmp eq i8 %1, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load float, ptr %3, align 4, !tbaa !71
  %22 = call float @llvm.fabs.f32(float %21)
  store float %22, ptr %3, align 4, !tbaa !71
  br label %23

23:                                               ; preds = %20, %18
  %24 = load float, ptr %3, align 4, !tbaa !71
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret float %24
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_mesh_calc_volume_face(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !68
  %5 = add i32 %4, -2
  %6 = sext i32 %4 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = sext i32 %5 to i64
  %10 = mul nsw i64 %9, 12
  %11 = alloca i8, i64 %10, align 16
  call void @BM_face_calc_tessellation(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %11) #13
  %12 = icmp sgt i32 %4, 2
  br i1 %12, label %13, label %73

13:                                               ; preds = %2
  %14 = load float, ptr %1, align 4, !tbaa !71
  %15 = zext i32 %5 to i64
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %71, %16 ]
  %18 = phi float [ %14, %13 ], [ %70, %16 ]
  %19 = getelementptr inbounds [3 x i32], ptr %11, i64 %17
  %20 = load i32, ptr %19, align 4, !tbaa !148
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %8, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds [3 x i32], ptr %11, i64 %17, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !148
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %8, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  %35 = getelementptr inbounds [3 x i32], ptr %11, i64 %17, i64 2
  %36 = load i32, ptr %35, align 4, !tbaa !148
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %8, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  %43 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !71
  %45 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !71
  %47 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !71
  %49 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !71
  %51 = fneg float %48
  %52 = fmul float %50, %51
  %53 = call float @llvm.fmuladd.f32(float %44, float %46, float %52)
  %54 = load float, ptr %42, align 4, !tbaa !71
  %55 = load float, ptr %34, align 4, !tbaa !71
  %56 = fneg float %55
  %57 = fmul float %46, %56
  %58 = call float @llvm.fmuladd.f32(float %48, float %54, float %57)
  %59 = fneg float %44
  %60 = fmul float %54, %59
  %61 = call float @llvm.fmuladd.f32(float %55, float %50, float %60)
  %62 = load float, ptr %26, align 4, !tbaa !71
  %63 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !71
  %65 = fmul float %64, %58
  %66 = call float @llvm.fmuladd.f32(float %62, float %53, float %65)
  %67 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !71
  %69 = call float @llvm.fmuladd.f32(float %68, float %61, float %66)
  %70 = call float @llvm.fmuladd.f32(float %69, float 0x3FC5555560000000, float %18)
  store float %70, ptr %1, align 4, !tbaa !71
  %71 = add nuw nsw i64 %17, 1
  %72 = icmp eq i64 %71, %15
  br i1 %72, label %73, label %16, !llvm.loop !149

73:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_mesh_calc_face_groups(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #3 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %11 = tail call ptr %10(i64 noundef 256, ptr noundef nonnull @__func__.BM_mesh_calc_face_groups) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #13
  %12 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 3, ptr %12, align 4, !tbaa !50
  %13 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  store ptr %16, ptr %8, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #13
  %17 = load ptr, ptr %14, align 8, !tbaa !53
  %18 = call ptr %17(ptr noundef nonnull %8) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %7
  %21 = icmp eq i8 %5, 0
  br label %22

22:                                               ; preds = %20, %38
  %23 = phi i32 [ 0, %20 ], [ %43, %38 ]
  %24 = phi ptr [ %18, %20 ], [ %42, %38 ]
  %25 = phi i32 [ 0, %20 ], [ %39, %38 ]
  br i1 %21, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !102
  %29 = and i8 %28, %5
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %22
  %32 = add i32 %25, 1
  %33 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !102
  %35 = and i8 %34, -17
  store i8 %35, ptr %33, align 1, !tbaa !102
  br label %38

36:                                               ; preds = %26
  %37 = or i8 %28, 16
  store i8 %37, ptr %27, align 1, !tbaa !102
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i32 [ %32, %31 ], [ %25, %36 ]
  %40 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 1
  store i32 %23, ptr %40, align 8, !tbaa !150
  %41 = load ptr, ptr %14, align 8, !tbaa !53
  %42 = call ptr %41(ptr noundef nonnull %8) #13
  %43 = add nuw nsw i32 %23, 1
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %22, !llvm.loop !151

45:                                               ; preds = %38, %7
  %46 = phi i32 [ 0, %7 ], [ %39, %38 ]
  %47 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %48 = load i8, ptr %47, align 4, !tbaa !152
  %49 = and i8 %48, -9
  store i8 %49, ptr %47, align 4, !tbaa !152
  %50 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %51 = zext i32 %46 to i64
  %52 = shl nuw nsw i64 %51, 3
  %53 = call ptr %50(i64 noundef %52, ptr noundef nonnull @__func__.BM_mesh_calc_face_groups) #13
  %54 = icmp eq i32 %46, 0
  br i1 %54, label %216, label %55

55:                                               ; preds = %45
  %56 = zext i8 %6 to i32
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  %59 = icmp eq ptr %3, null
  %60 = and i32 %56, 1
  %61 = icmp eq i32 %60, 0
  %62 = icmp eq ptr %3, null
  %63 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %64 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %65 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  br label %66

66:                                               ; preds = %55, %211
  %67 = phi i64 [ 0, %55 ], [ %212, %211 ]
  %68 = phi i32 [ 32, %55 ], [ %101, %211 ]
  %69 = phi ptr [ %11, %55 ], [ %100, %211 ]
  %70 = phi i32 [ 0, %55 ], [ %107, %211 ]
  %71 = phi i32 [ 0, %55 ], [ %105, %211 ]
  store i8 3, ptr %12, align 4, !tbaa !50
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !52
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !53
  %72 = load ptr, ptr %15, align 8, !tbaa !143
  store ptr %72, ptr %8, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #13
  %73 = load ptr, ptr %14, align 8, !tbaa !53
  %74 = call ptr %73(ptr noundef nonnull %8) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %66, %85
  %77 = phi ptr [ %87, %85 ], [ %74, %66 ]
  %78 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !102
  %80 = and i8 %79, 16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 3
  %84 = or disjoint i8 %79, 16
  store i8 %84, ptr %83, align 1, !tbaa !102
  store ptr %77, ptr %53, align 8, !tbaa !49
  br label %89

85:                                               ; preds = %76
  %86 = load ptr, ptr %14, align 8, !tbaa !53
  %87 = call ptr %86(ptr noundef nonnull %8) #13
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %76, !llvm.loop !153

89:                                               ; preds = %85, %66, %82
  %90 = phi i32 [ 1, %82 ], [ 0, %66 ], [ 0, %85 ]
  %91 = zext i32 %68 to i64
  %92 = icmp eq i64 %67, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = shl nsw i32 %68, 1
  %95 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %96 = sext i32 %94 to i64
  %97 = shl nsw i64 %96, 3
  %98 = call ptr %95(ptr noundef %69, i64 noundef %97, ptr noundef nonnull @__func__.BM_mesh_calc_face_groups) #13
  br label %99

99:                                               ; preds = %93, %89
  %100 = phi ptr [ %98, %93 ], [ %69, %89 ]
  %101 = phi i32 [ %94, %93 ], [ %68, %89 ]
  %102 = getelementptr inbounds [2 x i32], ptr %100, i64 %67
  store i32 %70, ptr %102, align 4, !tbaa !148
  %103 = getelementptr inbounds i32, ptr %102, i64 1
  store i32 0, ptr %103, align 4, !tbaa !148
  br label %104

104:                                              ; preds = %209, %99
  %105 = phi i32 [ %71, %99 ], [ %124, %209 ]
  %106 = phi i32 [ %90, %99 ], [ %210, %209 ]
  %107 = phi i32 [ %70, %99 ], [ %121, %209 ]
  %108 = icmp eq i32 %106, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = add i32 %106, -1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %53, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !49
  br label %114

114:                                              ; preds = %104, %109
  %115 = phi i32 [ %110, %109 ], [ 0, %104 ]
  %116 = phi ptr [ %113, %109 ], [ null, %104 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %211, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.BMHeader, ptr %116, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !150
  %121 = add i32 %107, 1
  %122 = zext i32 %107 to i64
  %123 = getelementptr inbounds i32, ptr %1, i64 %122
  store i32 %120, ptr %123, align 4, !tbaa !148
  %124 = add i32 %105, 1
  %125 = load i32, ptr %103, align 4, !tbaa !148
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %103, align 4, !tbaa !148
  br i1 %58, label %167, label %127

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.BMFace, ptr %116, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !63
  br label %130

130:                                              ; preds = %162, %127
  %131 = phi i32 [ %115, %127 ], [ %163, %162 ]
  %132 = phi ptr [ %129, %127 ], [ %165, %162 ]
  %133 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !44
  %135 = icmp eq ptr %134, %132
  br i1 %135, label %162, label %136

136:                                              ; preds = %130
  br i1 %59, label %142, label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !58
  %140 = call zeroext i8 %3(ptr noundef %139, ptr noundef %4) #13
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %137, %136
  br label %143

143:                                              ; preds = %142, %157
  %144 = phi i32 [ %158, %157 ], [ %131, %142 ]
  %145 = phi ptr [ %160, %157 ], [ %134, %142 ]
  %146 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !42
  %148 = getelementptr inbounds %struct.BMHeader, ptr %147, i64 0, i32 3
  %149 = load i8, ptr %148, align 1, !tbaa !102
  %150 = and i8 %149, 16
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = or disjoint i8 %149, 16
  store i8 %153, ptr %148, align 1, !tbaa !102
  %154 = add i32 %144, 1
  %155 = zext i32 %144 to i64
  %156 = getelementptr inbounds ptr, ptr %53, i64 %155
  store ptr %147, ptr %156, align 8, !tbaa !49
  br label %157

157:                                              ; preds = %152, %143
  %158 = phi i32 [ %154, %152 ], [ %144, %143 ]
  %159 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !44
  %161 = icmp eq ptr %160, %132
  br i1 %161, label %162, label %143, !llvm.loop !154

162:                                              ; preds = %157, %137, %130
  %163 = phi i32 [ %131, %137 ], [ %131, %130 ], [ %158, %157 ]
  %164 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 6
  %165 = load ptr, ptr %164, align 8, !tbaa !57
  %166 = icmp eq ptr %165, %129
  br i1 %166, label %167, label %130, !llvm.loop !155

167:                                              ; preds = %162, %118
  %168 = phi i32 [ %115, %118 ], [ %163, %162 ]
  br i1 %61, label %209, label %169

169:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #13
  %170 = getelementptr inbounds %struct.BMFace, ptr %116, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !63
  br label %172

172:                                              ; preds = %203, %169
  %173 = phi i32 [ %168, %169 ], [ %204, %203 ]
  %174 = phi ptr [ %171, %169 ], [ %206, %203 ]
  br i1 %62, label %180, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.BMLoop, ptr %174, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !48
  %178 = call zeroext i8 %3(ptr noundef %177, ptr noundef %4) #13
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %203, label %180

180:                                              ; preds = %175, %172
  store i8 13, ptr %63, align 4, !tbaa !50
  store ptr @bmiter__loop_of_loop_begin, ptr %64, align 8, !tbaa !52
  store ptr @bmiter__loop_of_loop_step, ptr %65, align 8, !tbaa !53
  store ptr %174, ptr %9, align 8, !tbaa !54
  call void @bmiter__loop_of_loop_begin(ptr noundef nonnull %9) #13
  %181 = load ptr, ptr %65, align 8, !tbaa !53
  %182 = call ptr %181(ptr noundef nonnull %9) #13
  %183 = icmp eq ptr %182, null
  br i1 %183, label %203, label %184

184:                                              ; preds = %180, %198
  %185 = phi ptr [ %201, %198 ], [ %182, %180 ]
  %186 = phi i32 [ %199, %198 ], [ %173, %180 ]
  %187 = getelementptr inbounds %struct.BMLoop, ptr %185, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !42
  %189 = getelementptr inbounds %struct.BMHeader, ptr %188, i64 0, i32 3
  %190 = load i8, ptr %189, align 1, !tbaa !102
  %191 = and i8 %190, 16
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = or disjoint i8 %190, 16
  store i8 %194, ptr %189, align 1, !tbaa !102
  %195 = add i32 %186, 1
  %196 = zext i32 %186 to i64
  %197 = getelementptr inbounds ptr, ptr %53, i64 %196
  store ptr %188, ptr %197, align 8, !tbaa !49
  br label %198

198:                                              ; preds = %193, %184
  %199 = phi i32 [ %195, %193 ], [ %186, %184 ]
  %200 = load ptr, ptr %65, align 8, !tbaa !53
  %201 = call ptr %200(ptr noundef nonnull %9) #13
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %184, !llvm.loop !156

203:                                              ; preds = %198, %180, %175
  %204 = phi i32 [ %173, %175 ], [ %173, %180 ], [ %199, %198 ]
  %205 = getelementptr inbounds %struct.BMLoop, ptr %174, i64 0, i32 6
  %206 = load ptr, ptr %205, align 8, !tbaa !57
  %207 = icmp eq ptr %206, %171
  br i1 %207, label %208, label %172, !llvm.loop !157

208:                                              ; preds = %203
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #13
  br label %209

209:                                              ; preds = %208, %167
  %210 = phi i32 [ %204, %208 ], [ %168, %167 ]
  br label %104, !llvm.loop !158

211:                                              ; preds = %114
  %212 = add nuw i64 %67, 1
  %213 = icmp eq i32 %105, %46
  br i1 %213, label %214, label %66, !llvm.loop !159

214:                                              ; preds = %211
  %215 = trunc i64 %212 to i32
  br label %216

216:                                              ; preds = %214, %45
  %217 = phi i32 [ 0, %45 ], [ %215, %214 ]
  %218 = phi ptr [ %11, %45 ], [ %100, %214 ]
  %219 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %219(ptr noundef %53) #13
  %220 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %221 = zext nneg i32 %217 to i64
  %222 = shl nuw nsw i64 %221, 3
  %223 = call ptr %220(ptr noundef %218, i64 noundef %222, ptr noundef nonnull @__func__.BM_mesh_calc_face_groups) #13
  store ptr %223, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #13
  ret i32 %217
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_mesh_calc_edge_groups(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #3 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %11 = tail call ptr %10(i64 noundef 256, ptr noundef nonnull @__func__.BM_mesh_calc_edge_groups) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  %12 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 2, ptr %12, align 4, !tbaa !50
  %13 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !160
  store ptr %16, ptr %7, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #13
  %17 = load ptr, ptr %14, align 8, !tbaa !53
  %18 = call ptr %17(ptr noundef nonnull %7) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %6
  %21 = icmp eq i8 %5, 0
  br label %22

22:                                               ; preds = %20, %38
  %23 = phi i32 [ 0, %20 ], [ %43, %38 ]
  %24 = phi ptr [ %18, %20 ], [ %42, %38 ]
  %25 = phi i32 [ 0, %20 ], [ %39, %38 ]
  br i1 %21, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !102
  %29 = and i8 %28, %5
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %22
  %32 = add i32 %25, 1
  %33 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !102
  %35 = and i8 %34, -17
  store i8 %35, ptr %33, align 1, !tbaa !102
  br label %38

36:                                               ; preds = %26
  %37 = or i8 %28, 16
  store i8 %37, ptr %27, align 1, !tbaa !102
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i32 [ %32, %31 ], [ %25, %36 ]
  %40 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 1
  store i32 %23, ptr %40, align 8, !tbaa !150
  %41 = load ptr, ptr %14, align 8, !tbaa !53
  %42 = call ptr %41(ptr noundef nonnull %7) #13
  %43 = add nuw nsw i32 %23, 1
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %22, !llvm.loop !161

45:                                               ; preds = %38, %6
  %46 = phi i32 [ 0, %6 ], [ %39, %38 ]
  %47 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %48 = load i8, ptr %47, align 4, !tbaa !152
  %49 = and i8 %48, -3
  store i8 %49, ptr %47, align 4, !tbaa !152
  %50 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %51 = zext i32 %46 to i64
  %52 = shl nuw nsw i64 %51, 3
  %53 = call ptr %50(i64 noundef %52, ptr noundef nonnull @__func__.BM_mesh_calc_edge_groups) #13
  %54 = icmp eq i32 %46, 0
  br i1 %54, label %166, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %57 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %58 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %59 = icmp eq ptr %3, null
  %60 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %61 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %62 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  br label %63

63:                                               ; preds = %55, %161
  %64 = phi i64 [ 0, %55 ], [ %162, %161 ]
  %65 = phi i32 [ 32, %55 ], [ %98, %161 ]
  %66 = phi ptr [ %11, %55 ], [ %97, %161 ]
  %67 = phi i32 [ 0, %55 ], [ %103, %161 ]
  %68 = phi i32 [ 0, %55 ], [ %102, %161 ]
  store i8 2, ptr %12, align 4, !tbaa !50
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !52
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !53
  %69 = load ptr, ptr %15, align 8, !tbaa !160
  store ptr %69, ptr %7, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #13
  %70 = load ptr, ptr %14, align 8, !tbaa !53
  %71 = call ptr %70(ptr noundef nonnull %7) #13
  %72 = icmp eq ptr %71, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %63, %82
  %74 = phi ptr [ %84, %82 ], [ %71, %63 ]
  %75 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 3
  %76 = load i8, ptr %75, align 1, !tbaa !102
  %77 = and i8 %76, 16
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 3
  %81 = or disjoint i8 %76, 16
  store i8 %81, ptr %80, align 1, !tbaa !102
  store ptr %74, ptr %53, align 8, !tbaa !49
  br label %86

82:                                               ; preds = %73
  %83 = load ptr, ptr %14, align 8, !tbaa !53
  %84 = call ptr %83(ptr noundef nonnull %7) #13
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %73, !llvm.loop !162

86:                                               ; preds = %82, %63, %79
  %87 = phi i32 [ 1, %79 ], [ 0, %63 ], [ 0, %82 ]
  %88 = zext i32 %65 to i64
  %89 = icmp eq i64 %64, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = shl nsw i32 %65, 1
  %92 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %93 = sext i32 %91 to i64
  %94 = shl nsw i64 %93, 3
  %95 = call ptr %92(ptr noundef %66, i64 noundef %94, ptr noundef nonnull @__func__.BM_mesh_calc_edge_groups) #13
  br label %96

96:                                               ; preds = %90, %86
  %97 = phi ptr [ %95, %90 ], [ %66, %86 ]
  %98 = phi i32 [ %91, %90 ], [ %65, %86 ]
  %99 = getelementptr inbounds [2 x i32], ptr %97, i64 %64
  store i32 %68, ptr %99, align 4, !tbaa !148
  %100 = getelementptr inbounds i32, ptr %99, i64 1
  store i32 0, ptr %100, align 4, !tbaa !148
  br label %101

101:                                              ; preds = %159, %96
  %102 = phi i32 [ %68, %96 ], [ %118, %159 ]
  %103 = phi i32 [ %67, %96 ], [ %121, %159 ]
  %104 = phi i32 [ %87, %96 ], [ %160, %159 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = add i32 %104, -1
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %53, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !49
  br label %111

111:                                              ; preds = %101, %106
  %112 = phi i32 [ %107, %106 ], [ 0, %101 ]
  %113 = phi ptr [ %110, %106 ], [ null, %101 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %161, label %115

115:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #13
  %116 = getelementptr inbounds %struct.BMHeader, ptr %113, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !150
  %118 = add i32 %102, 1
  %119 = zext i32 %102 to i64
  %120 = getelementptr inbounds i32, ptr %1, i64 %119
  store i32 %117, ptr %120, align 4, !tbaa !148
  %121 = add i32 %103, 1
  %122 = load i32, ptr %100, align 4, !tbaa !148
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %100, align 4, !tbaa !148
  store i8 7, ptr %56, align 4, !tbaa !50
  store ptr @bmiter__vert_of_edge_begin, ptr %57, align 8, !tbaa !52
  store ptr @bmiter__vert_of_edge_step, ptr %58, align 8, !tbaa !53
  store ptr %113, ptr %8, align 8, !tbaa !54
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %8) #13
  %124 = load ptr, ptr %58, align 8, !tbaa !53
  %125 = call ptr %124(ptr noundef nonnull %8) #13
  %126 = icmp eq ptr %125, null
  br i1 %126, label %159, label %127

127:                                              ; preds = %115, %154
  %128 = phi ptr [ %157, %154 ], [ %125, %115 ]
  %129 = phi i32 [ %155, %154 ], [ %112, %115 ]
  br i1 %59, label %133, label %130

130:                                              ; preds = %127
  %131 = call zeroext i8 %3(ptr noundef nonnull %128, ptr noundef %4) #13
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %154, label %133

133:                                              ; preds = %130, %127
  store i8 4, ptr %60, align 4, !tbaa !50
  store ptr @bmiter__edge_of_vert_begin, ptr %61, align 8, !tbaa !52
  store ptr @bmiter__edge_of_vert_step, ptr %62, align 8, !tbaa !53
  store ptr %128, ptr %9, align 8, !tbaa !54
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %9) #13
  %134 = load ptr, ptr %62, align 8, !tbaa !53
  %135 = call ptr %134(ptr noundef nonnull %9) #13
  %136 = icmp eq ptr %135, null
  br i1 %136, label %154, label %137

137:                                              ; preds = %133, %149
  %138 = phi ptr [ %152, %149 ], [ %135, %133 ]
  %139 = phi i32 [ %150, %149 ], [ %129, %133 ]
  %140 = getelementptr inbounds %struct.BMHeader, ptr %138, i64 0, i32 3
  %141 = load i8, ptr %140, align 1, !tbaa !102
  %142 = and i8 %141, 16
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = or disjoint i8 %141, 16
  store i8 %145, ptr %140, align 1, !tbaa !102
  %146 = add i32 %139, 1
  %147 = zext i32 %139 to i64
  %148 = getelementptr inbounds ptr, ptr %53, i64 %147
  store ptr %138, ptr %148, align 8, !tbaa !49
  br label %149

149:                                              ; preds = %137, %144
  %150 = phi i32 [ %146, %144 ], [ %139, %137 ]
  %151 = load ptr, ptr %62, align 8, !tbaa !53
  %152 = call ptr %151(ptr noundef nonnull %9) #13
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %137, !llvm.loop !163

154:                                              ; preds = %149, %133, %130
  %155 = phi i32 [ %129, %130 ], [ %129, %133 ], [ %150, %149 ]
  %156 = load ptr, ptr %58, align 8, !tbaa !53
  %157 = call ptr %156(ptr noundef nonnull %8) #13
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %127, !llvm.loop !164

159:                                              ; preds = %154, %115
  %160 = phi i32 [ %112, %115 ], [ %155, %154 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #13
  br label %101, !llvm.loop !165

161:                                              ; preds = %111
  %162 = add nuw i64 %64, 1
  %163 = icmp eq i32 %103, %46
  br i1 %163, label %164, label %63, !llvm.loop !166

164:                                              ; preds = %161
  %165 = trunc i64 %162 to i32
  br label %166

166:                                              ; preds = %164, %45
  %167 = phi i32 [ 0, %45 ], [ %165, %164 ]
  %168 = phi ptr [ %11, %45 ], [ %97, %164 ]
  %169 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %169(ptr noundef %53) #13
  %170 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %171 = zext nneg i32 %167 to i64
  %172 = shl nuw nsw i64 %171, 3
  %173 = call ptr %170(ptr noundef %168, i64 noundef %172, ptr noundef nonnull @__func__.BM_mesh_calc_edge_groups) #13
  store ptr %173, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  ret i32 %167
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @bmesh_subd_falloff_calc(i32 noundef %0, float noundef %1) local_unnamed_addr #11 {
  switch i32 %0, label %18 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %14
    i32 3, label %16
  ]

3:                                                ; preds = %2
  %4 = fmul float %1, 3.000000e+00
  %5 = fmul float %1, -2.000000e+00
  %6 = fmul float %5, %1
  %7 = fmul float %6, %1
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %1, float %7)
  br label %18

9:                                                ; preds = %2
  %10 = fneg float %1
  %11 = fmul float %10, %1
  %12 = tail call float @llvm.fmuladd.f32(float %1, float 2.000000e+00, float %11)
  %13 = tail call float @sqrtf(float noundef %12) #13
  br label %18

14:                                               ; preds = %2
  %15 = tail call float @sqrtf(float noundef %1) #13
  br label %18

16:                                               ; preds = %2
  %17 = fmul float %1, %1
  br label %18

18:                                               ; preds = %2, %16, %14, %9, %3
  %19 = phi float [ %1, %2 ], [ %17, %16 ], [ %15, %14 ], [ %13, %9 ], [ %8, %3 ]
  ret float %19
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #4

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #4

declare void @bmiter__edge_of_vert_begin(ptr noundef) #4

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #4

declare void @bmiter__face_of_vert_begin(ptr noundef) #4

declare ptr @bmiter__face_of_vert_step(ptr noundef) #4

declare void @bmiter__loop_of_vert_begin(ptr noundef) #4

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #4

declare void @bmiter__vert_of_edge_begin(ptr noundef) #4

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #4

declare void @bmiter__face_of_edge_begin(ptr noundef) #4

declare ptr @bmiter__face_of_edge_step(ptr noundef) #4

declare void @bmiter__vert_of_face_begin(ptr noundef) #4

declare ptr @bmiter__vert_of_face_step(ptr noundef) #4

declare void @bmiter__edge_of_face_begin(ptr noundef) #4

declare ptr @bmiter__edge_of_face_step(ptr noundef) #4

declare void @bmiter__loop_of_loop_begin(ptr noundef) #4

declare ptr @bmiter__loop_of_loop_step(ptr noundef) #4

declare float @BM_face_calc_normal_subset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BM_face_calc_tessellation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { cold }

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
!34 = !{!35, !37, i64 40}
!35 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !41, i64 64}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!42 = !{!43, !37, i64 32}
!43 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!44 = !{!43, !37, i64 40}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!43, !37, i64 16}
!49 = !{!37, !37, i64 0}
!50 = !{!51, !38, i64 60}
!51 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!52 = !{!51, !37, i64 40}
!53 = !{!51, !37, i64 48}
!54 = !{!38, !38, i64 0}
!55 = distinct !{!55, !46, !47}
!56 = !{!43, !37, i64 64}
!57 = !{!43, !37, i64 56}
!58 = !{!43, !37, i64 24}
!59 = !{!35, !37, i64 24}
!60 = !{!35, !37, i64 32}
!61 = !{!62, !37, i64 48}
!62 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!63 = !{!64, !37, i64 24}
!64 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !65, i64 48}
!65 = !{!"short", !38, i64 0}
!66 = distinct !{!66, !46, !47}
!67 = distinct !{!67, !46, !47}
!68 = !{!64, !40, i64 32}
!69 = distinct !{!69, !46, !47}
!70 = distinct !{!70, !46, !47}
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !38, i64 0}
!73 = distinct !{!73, !46, !47}
!74 = !{!62, !38, i64 14}
!75 = distinct !{!75, !46, !47}
!76 = distinct !{!76, !46, !47}
!77 = distinct !{!77, !46, !47}
!78 = distinct !{!78, !46, !47}
!79 = distinct !{!79, !46, !47}
!80 = distinct !{!80, !46, !47}
!81 = distinct !{!81, !46, !47}
!82 = distinct !{!82, !46, !47}
!83 = distinct !{!83, !46, !47}
!84 = !{!41, !37, i64 0}
!85 = !{!41, !37, i64 8}
!86 = distinct !{!86, !46, !47}
!87 = distinct !{!87, !46, !47}
!88 = !{!35, !37, i64 48}
!89 = distinct !{!89, !46, !47}
!90 = distinct !{!90, !46, !47}
!91 = distinct !{!91, !46, !47}
!92 = distinct !{!92, !46, !47}
!93 = distinct !{!93, !46, !47}
!94 = distinct !{!94, !46, !47}
!95 = distinct !{!95, !46, !47}
!96 = distinct !{!96, !46, !47}
!97 = distinct !{!97, !46, !47}
!98 = distinct !{!98, !46, !47}
!99 = distinct !{!99, !46, !47}
!100 = distinct !{!100, !46, !47}
!101 = distinct !{!101, !46, !47}
!102 = !{!36, !38, i64 13}
!103 = distinct !{!103, !46, !47}
!104 = distinct !{!104, !46, !47}
!105 = distinct !{!105, !46, !47}
!106 = distinct !{!106, !46, !47}
!107 = distinct !{!107, !46, !47}
!108 = distinct !{!108, !46, !47}
!109 = distinct !{!109, !46, !47}
!110 = distinct !{!110, !46, !47}
!111 = distinct !{!111, !46, !47}
!112 = distinct !{!112, !46, !47}
!113 = distinct !{!113, !46, !47}
!114 = distinct !{!114, !46, !47}
!115 = distinct !{!115, !46, !47}
!116 = distinct !{!116, !46, !47}
!117 = distinct !{!117, !46, !47}
!118 = distinct !{!118, !46, !47}
!119 = distinct !{!119, !46, !47}
!120 = distinct !{!120, !46, !47}
!121 = distinct !{!121, !46, !47}
!122 = distinct !{!122, !46, !47}
!123 = distinct !{!123, !46, !47}
!124 = !{i8 0, i8 2}
!125 = !{!64, !38, i64 14}
!126 = distinct !{!126, !46, !47}
!127 = distinct !{!127, !46, !47}
!128 = !{!129, !37, i64 8}
!129 = !{!"LinkNode", !37, i64 0, !37, i64 8}
!130 = !{!129, !37, i64 0}
!131 = distinct !{!131, !46, !47}
!132 = distinct !{!132, !46, !47}
!133 = distinct !{!133, !46, !47}
!134 = distinct !{!134, !46, !47}
!135 = distinct !{!135, !46, !47}
!136 = distinct !{!136, !46, !47}
!137 = distinct !{!137, !46, !47}
!138 = distinct !{!138, !46, !47}
!139 = distinct !{!139, !46, !47}
!140 = distinct !{!140, !46, !47}
!141 = distinct !{!141, !46, !47}
!142 = distinct !{!142, !46, !47}
!143 = !{!144, !37, i64 56}
!144 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !145, i64 144, !145, i64 344, !145, i64 544, !145, i64 744, !65, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !146, i64 960, !37, i64 976, !146, i64 984, !37, i64 1000}
!145 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!146 = !{!"ListBase", !37, i64 0, !37, i64 8}
!147 = distinct !{!147, !46, !47}
!148 = !{!40, !40, i64 0}
!149 = distinct !{!149, !46, !47}
!150 = !{!36, !40, i64 8}
!151 = distinct !{!151, !46, !47}
!152 = !{!144, !38, i64 28}
!153 = distinct !{!153, !46, !47}
!154 = distinct !{!154, !46, !47}
!155 = distinct !{!155, !46, !47}
!156 = distinct !{!156, !46, !47}
!157 = distinct !{!157, !46, !47}
!158 = distinct !{!158, !46, !47}
!159 = distinct !{!159, !46, !47}
!160 = !{!144, !37, i64 40}
!161 = distinct !{!161, !46, !47}
!162 = distinct !{!162, !46, !47}
!163 = distinct !{!163, !46, !47}
!164 = distinct !{!164, !46, !47}
!165 = distinct !{!165, !46, !47}
!166 = distinct !{!166, !46, !47}
