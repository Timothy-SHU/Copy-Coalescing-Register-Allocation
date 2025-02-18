; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_structure.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"blender/source/blender/bmesh/intern/bmesh_structure.c\00", align 1
@__func__.bmesh_radial_validate = private unnamed_addr constant [22 x i8] c"bmesh_radial_validate\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__func__.bmesh_radial_loop_remove = private unnamed_addr constant [25 x i8] c"bmesh_radial_loop_remove\00", align 1
@__func__.bmesh_radial_length = private unnamed_addr constant [20 x i8] c"bmesh_radial_length\00", align 1
@__func__.bmesh_radial_append = private unnamed_addr constant [20 x i8] c"bmesh_radial_append\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @bmesh_edge_swapverts(ptr nocapture noundef %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  store ptr %2, ptr %4, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  store ptr %2, ptr %10, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %8, %7 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i8 [ 0, %9 ], [ 1, %15 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmesh_disk_edge_append(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i64
  %11 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 %10
  br i1 %5, label %12, label %14

12:                                               ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 %10, i32 1
  store ptr %0, ptr %13, align 8, !tbaa !45
  br label %34

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 5
  %16 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, %1
  %19 = zext i1 %18 to i64
  %20 = getelementptr inbounds %struct.BMDiskLink, ptr %15, i64 %19, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 5
  %25 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = icmp eq ptr %26, %1
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds %struct.BMDiskLink, ptr %24, i64 %28
  br label %30

30:                                               ; preds = %14, %23
  %31 = phi ptr [ %29, %23 ], [ null, %14 ]
  store ptr %4, ptr %11, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.BMDiskLink, ptr %6, i64 %10, i32 1
  store ptr %21, ptr %32, align 8, !tbaa !45
  store ptr %0, ptr %20, align 8, !tbaa !45
  %33 = icmp eq ptr %31, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30, %12
  %35 = phi ptr [ %11, %12 ], [ %31, %30 ]
  store ptr %0, ptr %35, align 8, !tbaa !46
  br label %36

36:                                               ; preds = %34, %30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bmesh_disk_edge_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  %9 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 5
  %14 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, %1
  %17 = zext i1 %16 to i64
  %18 = getelementptr inbounds %struct.BMDiskLink, ptr %13, i64 %17
  %19 = load ptr, ptr %8, align 8, !tbaa !46
  store ptr %19, ptr %18, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %12, %2
  %21 = load ptr, ptr %8, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 5
  %25 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = icmp eq ptr %26, %1
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds %struct.BMDiskLink, ptr %24, i64 %28, i32 1
  store ptr %10, ptr %29, align 8, !tbaa !45
  br label %30

30:                                               ; preds = %23, %20
  %31 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = icmp eq ptr %21, %0
  %36 = select i1 %35, ptr null, ptr %21
  store ptr %36, ptr %31, align 8, !tbaa !43
  br label %37

37:                                               ; preds = %34, %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmesh_disk_edge_exists(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2, %25
  %7 = phi ptr [ %32, %25 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %6
  %16 = icmp eq ptr %9, %1
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, %0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %11, %15, %17
  %23 = phi i8 [ 1, %11 ], [ 0, %15 ], [ %21, %17 ]
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 5
  %27 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = icmp eq ptr %28, %0
  %30 = zext i1 %29 to i64
  %31 = getelementptr inbounds %struct.BMDiskLink, ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = icmp eq ptr %32, %4
  br i1 %33, label %34, label %6, !llvm.loop !48

34:                                               ; preds = %25, %22, %2
  %35 = phi ptr [ null, %2 ], [ %7, %22 ], [ null, %25 ]
  ret ptr %35
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bmesh_disk_count(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %7 = phi ptr [ %15, %5 ], [ %3, %1 ]
  %8 = add nuw nsw i32 %6, 1
  %9 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 5
  %10 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, %0
  %13 = zext i1 %12 to i64
  %14 = getelementptr inbounds %struct.BMDiskLink, ptr %9, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %5, !llvm.loop !51

17:                                               ; preds = %5, %1
  %18 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bmesh_disk_validate(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %11, label %54

11:                                               ; preds = %3, %7
  %12 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11, %15
  %16 = phi i32 [ %18, %15 ], [ 0, %11 ]
  %17 = phi ptr [ %25, %15 ], [ %13, %11 ]
  %18 = add nuw nsw i32 %16, 1
  %19 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 5
  %20 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = icmp eq ptr %21, %2
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds %struct.BMDiskLink, ptr %19, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, %13
  br i1 %26, label %27, label %15, !llvm.loop !51

27:                                               ; preds = %15, %11
  %28 = phi i32 [ 0, %11 ], [ %18, %15 ]
  %29 = icmp ne i32 %28, %0
  %30 = icmp eq i32 %0, 0
  %31 = or i1 %30, %29
  br i1 %31, label %54, label %32

32:                                               ; preds = %27
  %33 = icmp eq i32 %0, 1
  br label %34

34:                                               ; preds = %32, %45
  %35 = phi ptr [ %52, %45 ], [ %1, %32 ]
  br i1 %33, label %45, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 5
  %38 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = icmp eq ptr %39, %2
  %41 = zext i1 %40 to i64
  %42 = getelementptr inbounds %struct.BMDiskLink, ptr %37, i64 %41, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = icmp eq ptr %43, %35
  br i1 %44, label %54, label %45

45:                                               ; preds = %34, %36
  %46 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 5
  %47 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = icmp eq ptr %48, %2
  %50 = zext i1 %49 to i64
  %51 = getelementptr inbounds %struct.BMDiskLink, ptr %46, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  %53 = icmp eq ptr %52, %1
  br i1 %53, label %54, label %34, !llvm.loop !53

54:                                               ; preds = %45, %36, %27, %7
  %55 = phi i8 [ 0, %7 ], [ 0, %27 ], [ 0, %36 ], [ 1, %45 ]
  ret i8 %55
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bmesh_disk_facevert_count(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1, %24
  %6 = phi ptr [ %32, %24 ], [ %3, %1 ]
  %7 = phi i32 [ %25, %24 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %5, %11
  %12 = phi ptr [ %20, %11 ], [ %9, %5 ]
  %13 = phi i32 [ %18, %11 ], [ 0, %5 ]
  %14 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = icmp eq ptr %15, %0
  %17 = zext i1 %16 to i32
  %18 = add nuw nsw i32 %13, %17
  %19 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %22, label %11, !llvm.loop !58

22:                                               ; preds = %11
  %23 = add nsw i32 %18, %7
  br label %24

24:                                               ; preds = %5, %22
  %25 = phi i32 [ %23, %22 ], [ %7, %5 ]
  %26 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 5
  %27 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = icmp eq ptr %28, %0
  %30 = zext i1 %29 to i64
  %31 = getelementptr inbounds %struct.BMDiskLink, ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = icmp eq ptr %32, %3
  br i1 %33, label %34, label %5, !llvm.loop !59

34:                                               ; preds = %24, %1
  %35 = phi i32 [ 0, %1 ], [ %25, %24 ]
  ret i32 %35
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bmesh_radial_facevert_count(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %3 ]
  %5 = phi i32 [ 0, %2 ], [ %10, %3 ]
  %6 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, %1
  %9 = zext i1 %8 to i32
  %10 = add nuw nsw i32 %5, %9
  %11 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %3, !llvm.loop !58

14:                                               ; preds = %3
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmesh_disk_faceedge_find_first(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi ptr [ %0, %2 ], [ %25, %18 ]
  %5 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3, %13
  %9 = phi ptr [ %15, %13 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !60

17:                                               ; preds = %13
  br i1 %12, label %27, label %18

18:                                               ; preds = %3, %17
  %19 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 5
  %20 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = icmp eq ptr %21, %1
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds %struct.BMDiskLink, ptr %19, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %3, !llvm.loop !61

27:                                               ; preds = %18, %17, %8
  %28 = phi ptr [ %4, %8 ], [ %4, %17 ], [ null, %18 ]
  ret ptr %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bmesh_radial_facevert_check(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %10, %8 ]
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %3, !llvm.loop !60

12:                                               ; preds = %8, %3
  %13 = phi i8 [ 1, %3 ], [ 0, %8 ]
  ret i8 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmesh_disk_faceedge_find_next(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %25, %2
  %11 = phi ptr [ %9, %2 ], [ %32, %25 ]
  %12 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %10, %20
  %16 = phi ptr [ %22, %20 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = icmp eq ptr %22, %13
  br i1 %23, label %24, label %15, !llvm.loop !60

24:                                               ; preds = %20
  br i1 %19, label %34, label %25

25:                                               ; preds = %10, %24
  %26 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 5
  %27 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = icmp eq ptr %28, %1
  %30 = zext i1 %29 to i64
  %31 = getelementptr inbounds %struct.BMDiskLink, ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %10, !llvm.loop !62

34:                                               ; preds = %25, %24, %15
  %35 = phi ptr [ %11, %15 ], [ %11, %24 ], [ %0, %25 ]
  ret ptr %35
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef zeroext i8 @bmesh_radial_validate(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2, %10
  %5 = phi ptr [ %13, %10 ], [ %1, %2 ]
  %6 = phi i32 [ %11, %10 ], [ 0, %2 ]
  %7 = icmp eq ptr %5, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %6, 9999
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = add nuw nsw i32 %6, 1
  %12 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %20, label %4, !llvm.loop !63

15:                                               ; preds = %8, %4
  %16 = phi i32 [ 401, %4 ], [ 407, %8 ]
  %17 = phi i32 [ 0, %4 ], [ -1, %8 ]
  %18 = load ptr, ptr @stderr, align 8, !tbaa !64
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_length, i32 noundef %16, ptr noundef nonnull @.str.2) #6
  br label %20

20:                                               ; preds = %10, %15, %2
  %21 = phi i32 [ 0, %2 ], [ %17, %15 ], [ %11, %10 ]
  %22 = icmp eq i32 %21, %0
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  br label %25

25:                                               ; preds = %23, %46
  %26 = phi ptr [ %49, %46 ], [ %1, %23 ]
  %27 = phi i32 [ %47, %46 ], [ 0, %23 ]
  %28 = icmp eq ptr %26, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = load ptr, ptr %24, align 8, !tbaa !65
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  %43 = icmp eq ptr %36, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40, %34
  %45 = icmp eq i32 %27, 10001
  br i1 %45, label %51, label %46

46:                                               ; preds = %44
  %47 = add nuw nsw i32 %27, 1
  %48 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %55, label %25, !llvm.loop !66

51:                                               ; preds = %44, %25
  %52 = phi i32 [ 300, %25 ], [ 310, %44 ]
  %53 = load ptr, ptr @stderr, align 8, !tbaa !64
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_validate, i32 noundef %52, ptr noundef nonnull @.str.2) #6
  br label %55

55:                                               ; preds = %46, %40, %29, %51, %20
  %56 = phi i8 [ 0, %20 ], [ 0, %51 ], [ 0, %29 ], [ 0, %40 ], [ 1, %46 ]
  ret i8 %56
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bmesh_radial_length(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %12, %9 ], [ %0, %1 ]
  %5 = phi i32 [ %10, %9 ], [ 0, %1 ]
  %6 = icmp eq ptr %4, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 9999
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = add nuw nsw i32 %5, 1
  %11 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %19, label %3, !llvm.loop !63

14:                                               ; preds = %7, %3
  %15 = phi i32 [ 401, %3 ], [ 407, %7 ]
  %16 = phi i32 [ 0, %3 ], [ -1, %7 ]
  %17 = load ptr, ptr @stderr, align 8, !tbaa !64
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_length, i32 noundef %15, ptr noundef nonnull @.str.2) #6
  br label %19

19:                                               ; preds = %9, %14, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %14 ], [ %10, %9 ]
  ret i32 %20
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @bmesh_radial_loop_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !64
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_loop_remove, i32 noundef 332, ptr noundef nonnull @.str.2) #6
  br label %11

11:                                               ; preds = %8, %4, %2
  %12 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  br i1 %3, label %21, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store ptr %13, ptr %17, align 8, !tbaa !54
  br label %21

21:                                               ; preds = %20, %16, %15
  %22 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 5
  store ptr %23, ptr %24, align 8, !tbaa !67
  %25 = load ptr, ptr %22, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 4
  store ptr %13, ptr %26, align 8, !tbaa !57
  br label %36

27:                                               ; preds = %11
  br i1 %3, label %36, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr null, ptr %29, align 8, !tbaa !54
  br label %36

33:                                               ; preds = %28
  %34 = load ptr, ptr @stderr, align 8, !tbaa !64
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_loop_remove, i32 noundef 348, ptr noundef nonnull @.str.2) #6
  br label %36

36:                                               ; preds = %27, %33, %32, %21
  %37 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 2
  store ptr null, ptr %37, align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmesh_radial_faceloop_find_first(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %10, %8 ]
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %3, !llvm.loop !68

12:                                               ; preds = %8, %3
  %13 = phi ptr [ %4, %3 ], [ null, %8 ]
  ret ptr %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmesh_radial_faceloop_find_next(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %10 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %5, !llvm.loop !69

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %6, %5 ], [ %0, %10 ]
  ret ptr %15
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @bmesh_radial_append(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 5
  store ptr %1, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 4
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 5
  store ptr %4, ptr %10, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !57
  %14 = load ptr, ptr %11, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 5
  store ptr %1, ptr %15, align 8, !tbaa !67
  store ptr %1, ptr %11, align 8, !tbaa !57
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi ptr [ %3, %9 ], [ %8, %6 ]
  store ptr %1, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = icmp eq ptr %19, null
  %21 = icmp eq ptr %19, %0
  %22 = or i1 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr @stderr, align 8, !tbaa !64
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bmesh_radial_append, i32 noundef 433, ptr noundef nonnull @.str.2) #6
  br label %26

26:                                               ; preds = %23, %16
  store ptr %0, ptr %18, align 8, !tbaa !65
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bmesh_loop_validate(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = icmp sgt i32 %3, 1
  br i1 %10, label %16, label %24

11:                                               ; preds = %16
  %12 = add nuw nsw i32 %18, 1
  %13 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = icmp eq i32 %12, %3
  br i1 %15, label %24, label %16, !llvm.loop !75

16:                                               ; preds = %7, %11
  %17 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %18 = phi i32 [ %12, %11 ], [ 1, %7 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp ne ptr %20, %0
  %22 = icmp eq ptr %17, %5
  %23 = or i1 %21, %22
  br i1 %23, label %44, label %11

24:                                               ; preds = %11, %7
  %25 = phi ptr [ %9, %7 ], [ %14, %11 ]
  %26 = icmp eq ptr %25, %5
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = icmp sgt i32 %3, 1
  br i1 %30, label %36, label %40

31:                                               ; preds = %36
  %32 = add nuw nsw i32 %38, 1
  %33 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = icmp eq i32 %32, %3
  br i1 %35, label %40, label %36, !llvm.loop !78

36:                                               ; preds = %27, %31
  %37 = phi ptr [ %34, %31 ], [ %29, %27 ]
  %38 = phi i32 [ %32, %31 ], [ 1, %27 ]
  %39 = icmp eq ptr %37, %5
  br i1 %39, label %44, label %31

40:                                               ; preds = %31, %27
  %41 = phi ptr [ %29, %27 ], [ %34, %31 ]
  %42 = icmp eq ptr %41, %5
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %16, %36, %40, %24, %1
  %45 = phi i8 [ 0, %1 ], [ 0, %24 ], [ %43, %40 ], [ 0, %36 ], [ 0, %16 ]
  ret i8 %45
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold }

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
!34 = !{!35, !37, i64 24}
!35 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !41, i64 64}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!42 = !{!35, !37, i64 32}
!43 = !{!44, !37, i64 48}
!44 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!45 = !{!41, !37, i64 8}
!46 = !{!41, !37, i64 0}
!47 = !{!35, !37, i64 48}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = !{!35, !37, i64 56}
!53 = distinct !{!53, !49, !50}
!54 = !{!35, !37, i64 40}
!55 = !{!56, !37, i64 16}
!56 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!57 = !{!56, !37, i64 40}
!58 = distinct !{!58, !49, !50}
!59 = distinct !{!59, !49, !50}
!60 = distinct !{!60, !49, !50}
!61 = distinct !{!61, !49, !50}
!62 = distinct !{!62, !49, !50}
!63 = distinct !{!63, !49, !50}
!64 = !{!37, !37, i64 0}
!65 = !{!56, !37, i64 24}
!66 = distinct !{!66, !49, !50}
!67 = !{!56, !37, i64 48}
!68 = distinct !{!68, !49, !50}
!69 = distinct !{!69, !49, !50}
!70 = !{!71, !40, i64 32}
!71 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !72, i64 48}
!72 = !{!"short", !38, i64 0}
!73 = !{!71, !37, i64 24}
!74 = !{!56, !37, i64 56}
!75 = distinct !{!75, !49, !50}
!76 = !{!56, !37, i64 32}
!77 = !{!56, !37, i64 64}
!78 = distinct !{!78, !49, !50}
