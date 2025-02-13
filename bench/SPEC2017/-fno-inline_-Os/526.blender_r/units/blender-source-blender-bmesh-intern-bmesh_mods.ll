; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_mods.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_mods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.VertOrder = type { float, ptr }

@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"BLI_array.face_arr\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"BLI_array.faces\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"BLI_array.bad_faces\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"BLI_array.oldfaces\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"blender/source/blender/bmesh/intern/bmesh_mods.c\00", align 1
@__func__.BM_edge_split = private unnamed_addr constant [14 x i8] c"BM_edge_split\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@switch.table.BM_iter_init = private unnamed_addr constant [4 x ptr] [ptr @bmiter__edge_of_vert_begin, ptr @bmiter__face_of_vert_begin, ptr @bmiter__loop_of_vert_begin, ptr @bmiter__vert_of_edge_begin], align 8
@switch.table.BM_iter_init.7 = private unnamed_addr constant [4 x ptr] [ptr @bmiter__edge_of_vert_step, ptr @bmiter__face_of_vert_step, ptr @bmiter__loop_of_vert_step, ptr @bmiter__vert_of_edge_step], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_vert_dissolve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BM_vert_edge_count(ptr noundef %1) #15
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @BM_vert_kill(ptr noundef %0, ptr noundef %1) #15
  br label %37

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @BM_vert_is_manifold(ptr noundef %1) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %37

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BMEdge, ptr %11, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i32 %3, 2
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = tail call ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i8
  br label %37

24:                                               ; preds = %6
  %25 = icmp eq i32 %3, 2
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = tail call i32 @BM_vert_face_count(ptr noundef %1) #15
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = tail call ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %31, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  %33 = icmp ne ptr %32, null
  %34 = zext i1 %33 to i8
  br label %37

35:                                               ; preds = %26, %24
  %36 = tail call zeroext i8 @BM_disk_dissolve(ptr noundef %0, ptr noundef %1) #16, !range !44
  br label %37

37:                                               ; preds = %14, %35, %29, %20, %13, %5
  %38 = phi i8 [ 1, %5 ], [ %34, %29 ], [ %36, %35 ], [ %23, %20 ], [ 1, %13 ], [ 0, %14 ]
  ret i8 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BM_vert_edge_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef 1.000000e+00, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext %4) #16
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_disk_dissolve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @BM_vert_is_manifold(ptr noundef %1) #15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %112, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %112, label %9

9:                                                ; preds = %5, %18
  %10 = phi ptr [ %20, %18 ], [ %7, %5 ]
  %11 = phi ptr [ %13, %18 ], [ %7, %5 ]
  %12 = phi i32 [ %19, %18 ], [ 0, %5 ]
  %13 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %11, ptr noundef nonnull %1) #16
  %14 = tail call zeroext i8 @BM_edge_share_face_check(ptr noundef %13, ptr noundef %10) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load ptr, ptr %6, align 8, !tbaa !34
  br label %22

18:                                               ; preds = %9
  %19 = add nuw nsw i32 %12, 1
  %20 = load ptr, ptr %6, align 8, !tbaa !34
  %21 = icmp eq ptr %13, %20
  br i1 %21, label %22, label %9, !llvm.loop !45

22:                                               ; preds = %18, %16
  %23 = phi ptr [ %17, %16 ], [ %13, %18 ]
  %24 = phi ptr [ %13, %16 ], [ null, %18 ]
  %25 = phi ptr [ %17, %16 ], [ null, %18 ]
  %26 = phi i32 [ %12, %16 ], [ %19, %18 ]
  %27 = icmp eq ptr %24, null
  %28 = icmp eq i32 %26, 3
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = tail call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %34, ptr noundef %38, ptr noundef %13, i8 noundef zeroext 1) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %112, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr %6, align 8, !tbaa !34
  %43 = tail call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %42, ptr noundef nonnull %1, float noundef 1.000000e+00, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  %44 = icmp ne ptr %43, null
  %45 = zext i1 %44 to i8
  br label %112

46:                                               ; preds = %22
  %47 = icmp eq i32 %26, 2
  %48 = select i1 %27, i1 %47, i1 false
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = tail call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %1, float noundef 1.000000e+00, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %112, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.BMEdge, ptr %50, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.BMLoop, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !47
  %61 = icmp eq ptr %56, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = tail call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %56, ptr noundef %60, ptr noundef nonnull %50, i8 noundef zeroext 1) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %112, label %65

65:                                               ; preds = %62, %52
  br label %112

66:                                               ; preds = %46
  br i1 %27, label %112, label %67

67:                                               ; preds = %66, %77
  %68 = load ptr, ptr %6, align 8, !tbaa !34
  br label %69

69:                                               ; preds = %88, %67
  %70 = phi ptr [ %68, %67 ], [ %89, %88 ]
  %71 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %70) #16, !range !44
  %72 = icmp eq i8 %71, 0
  %73 = icmp eq ptr %70, %25
  %74 = select i1 %72, i1 true, i1 %73
  %75 = icmp eq ptr %70, %24
  %76 = or i1 %75, %74
  br i1 %76, label %88, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.BMEdge, ptr %70, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !41
  %80 = getelementptr inbounds %struct.BMLoop, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !47
  %82 = getelementptr inbounds %struct.BMLoop, ptr %79, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !49
  %84 = getelementptr inbounds %struct.BMLoop, ptr %83, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !47
  %86 = tail call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %81, ptr noundef %85, ptr noundef %70, i8 noundef zeroext 1) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %112, label %67

88:                                               ; preds = %69
  %89 = tail call fastcc ptr @bmesh_disk_edge_next(ptr noundef %70, ptr noundef %1) #16
  %90 = icmp eq ptr %89, %68
  br i1 %90, label %91, label %69, !llvm.loop !50

91:                                               ; preds = %88
  %92 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %25) #16, !range !44
  %93 = xor i8 %92, 1
  %94 = tail call ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %25, ptr noundef %1, float noundef 1.000000e+00, i8 noundef zeroext 1, i8 noundef zeroext %93, i8 noundef zeroext 1) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %112, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.BMEdge, ptr %94, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !41
  %99 = icmp eq ptr %98, null
  br i1 %99, label %111, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !47
  %103 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !49
  %105 = getelementptr inbounds %struct.BMLoop, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !47
  %107 = icmp eq ptr %102, %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = tail call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %102, ptr noundef %106, ptr noundef nonnull %94, i8 noundef zeroext 1) #16
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %100, %108, %96
  br label %112

112:                                              ; preds = %77, %5, %66, %111, %91, %108, %62, %49, %41, %30, %2, %65
  %113 = phi i8 [ 1, %65 ], [ 0, %2 ], [ 0, %30 ], [ %45, %41 ], [ 0, %49 ], [ 0, %62 ], [ 0, %108 ], [ 0, %91 ], [ 1, %111 ], [ 1, %66 ], [ 1, %5 ], [ 0, %77 ]
  ret i8 %113
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @bmesh_disk_edge_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !51 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i64
  %8 = getelementptr inbounds %struct.BMDiskLink, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  ret ptr %9
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_share_face_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  store ptr %1, ptr %6, align 16, !tbaa !54
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  store ptr %2, ptr %7, align 8, !tbaa !54
  %8 = tail call ptr @BM_face_edge_share_loop(ptr noundef %1, ptr noundef %3) #15
  %9 = tail call ptr @BM_face_edge_share_loop(ptr noundef %2, ptr noundef %3) #15
  %10 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = tail call zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr noundef %2) #15
  br label %17

17:                                               ; preds = %15, %5
  %18 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2, i8 noundef zeroext %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_vert_collapse_faces(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x ptr], align 16
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [16 x ptr], align 16
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [16 x ptr], align 16
  %16 = alloca %struct.BMIter, align 8
  %17 = alloca [2 x ptr], align 16
  %18 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %1, ptr noundef %2) #16
  %19 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %23 = fsub float 1.000000e+00, %3
  store float %23, ptr %8, align 4, !tbaa !56
  %24 = getelementptr inbounds float, ptr %8, i64 1
  store float %3, ptr %24, align 4, !tbaa !56
  %25 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br label %27

27:                                               ; preds = %44, %22
  %28 = phi ptr [ %20, %22 ], [ %45, %44 ]
  %29 = phi ptr [ %20, %22 ], [ %47, %44 ]
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = icmp eq ptr %31, %18
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  %40 = load ptr, ptr %35, align 8, !tbaa !59
  store ptr %40, ptr %9, align 16, !tbaa !54
  %41 = load ptr, ptr %29, align 8, !tbaa !59
  store ptr %41, ptr %25, align 8, !tbaa !54
  %42 = load ptr, ptr %35, align 8, !tbaa !59
  call void @CustomData_bmesh_interp(ptr noundef nonnull %26, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef null, i32 noundef 2, ptr noundef %42) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  %43 = load ptr, ptr %19, align 8, !tbaa !41
  br label %44

44:                                               ; preds = %27, %33, %39
  %45 = phi ptr [ %28, %27 ], [ %28, %33 ], [ %43, %39 ]
  %46 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = icmp eq ptr %47, %45
  br i1 %48, label %49, label %27, !llvm.loop !60

49:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br label %50

50:                                               ; preds = %49, %7
  call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %2, ptr noundef %18, ptr noundef %2, float noundef %3) #15
  %51 = call fastcc ptr @bmesh_disk_edge_next(ptr noundef nonnull %1, ptr noundef %2) #16
  %52 = call fastcc ptr @BM_edge_other_vert(ptr noundef %51, ptr noundef %2) #16
  %53 = icmp eq i8 %5, 0
  br i1 %53, label %114, label %54

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  store ptr null, ptr %11, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #17
  %55 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, i8 noundef zeroext 5, ptr noundef %2) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %105, label %57

57:                                               ; preds = %54, %77
  %58 = phi i64 [ %78, %77 ], [ 0, %54 ]
  %59 = phi ptr [ %81, %77 ], [ %55, %54 ]
  %60 = load ptr, ptr %11, align 8
  %61 = icmp eq ptr %60, null
  %62 = icmp ult i64 %58, 16
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store ptr %12, ptr %11, align 8, !tbaa !54
  br label %77

65:                                               ; preds = %57
  %66 = icmp eq ptr %60, %12
  br i1 %66, label %72, label %67

67:                                               ; preds = %65
  br i1 %61, label %75, label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !54
  %70 = call i64 %69(ptr noundef nonnull %60) #15
  %71 = lshr i64 %70, 3
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i64 [ 16, %65 ], [ %71, %68 ]
  %74 = icmp ugt i64 %73, %58
  br i1 %74, label %77, label %75

75:                                               ; preds = %67, %72
  %76 = trunc i64 %58 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 8, i32 noundef %76, i32 noundef 1, ptr noundef nonnull @.str.1) #15
  br label %77

77:                                               ; preds = %75, %72, %64
  %78 = add nuw i64 %58, 1
  %79 = load ptr, ptr %11, align 8, !tbaa !54
  %80 = getelementptr inbounds ptr, ptr %79, i64 %58
  store ptr %59, ptr %80, align 8, !tbaa !54
  %81 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %57, !llvm.loop !61

83:                                               ; preds = %77
  %84 = trunc i64 %78 to i32
  %85 = icmp ugt i32 %84, 1
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load ptr, ptr %11, align 8, !tbaa !54
  %88 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef %87, i32 noundef %84, i8 noundef zeroext 1) #15
  %89 = icmp eq ptr %88, null
  br i1 %89, label %105, label %90

90:                                               ; preds = %86
  %91 = call ptr @BM_face_vert_share_loop(ptr noundef nonnull %88, ptr noundef %18) #15
  %92 = icmp eq ptr %91, null
  br i1 %92, label %105, label %93

93:                                               ; preds = %90
  %94 = call ptr @BM_face_vert_share_loop(ptr noundef nonnull %88, ptr noundef %52) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  %97 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %88, ptr noundef nonnull %91, ptr noundef nonnull %94, ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 0) #16
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %13, align 8, !tbaa !54
  %101 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !62
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi ptr [ %102, %99 ], [ null, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  br label %105

105:                                              ; preds = %54, %86, %103, %93, %90, %83
  %106 = phi ptr [ null, %83 ], [ null, %86 ], [ %104, %103 ], [ null, %93 ], [ null, %90 ], [ null, %54 ]
  %107 = load ptr, ptr %11, align 8
  %108 = icmp ne ptr %107, null
  %109 = icmp ne ptr %107, %12
  %110 = and i1 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %112(ptr noundef nonnull %107) #15
  br label %113

113:                                              ; preds = %111, %105
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  br label %194

114:                                              ; preds = %50
  %115 = call ptr @bmesh_jekv(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext %4, i8 noundef zeroext 1) #15
  %116 = icmp ne ptr %115, null
  %117 = icmp ne i8 %6, 0
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %194

119:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  store ptr null, ptr %14, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #17
  %120 = getelementptr inbounds %struct.BMEdge, ptr %115, i64 0, i32 2
  %121 = load <2 x ptr>, ptr %120, align 8, !tbaa !54
  store <2 x ptr> %121, ptr %17, align 16, !tbaa !54
  br label %122

122:                                              ; preds = %119, %185
  %123 = phi i1 [ true, %119 ], [ false, %185 ]
  %124 = phi i64 [ 0, %119 ], [ 1, %185 ]
  %125 = getelementptr inbounds [2 x ptr], ptr %17, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !54
  %127 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %16, i8 noundef zeroext 5, ptr noundef %126) #16
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load ptr, ptr %14, align 8
  br label %185

131:                                              ; preds = %168
  %132 = load ptr, ptr %14, align 8
  %133 = icmp ne ptr %132, null
  %134 = icmp ne i32 %169, 0
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %185

136:                                              ; preds = %131
  %137 = sext i32 %169 to i64
  br label %172

138:                                              ; preds = %122, %168
  %139 = phi ptr [ %170, %168 ], [ %127, %122 ]
  %140 = phi i32 [ %169, %168 ], [ 0, %122 ]
  %141 = getelementptr inbounds %struct.BMFace, ptr %139, i64 0, i32 3
  %142 = load i32, ptr %141, align 8, !tbaa !63
  %143 = icmp slt i32 %142, 3
  br i1 %143, label %144, label %168

144:                                              ; preds = %138
  %145 = load ptr, ptr %14, align 8
  %146 = icmp eq ptr %145, null
  %147 = add nsw i32 %140, 1
  %148 = icmp ult i32 %147, 17
  %149 = select i1 %146, i1 %148, i1 false
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store ptr %15, ptr %14, align 8, !tbaa !54
  br label %164

151:                                              ; preds = %144
  %152 = icmp eq ptr %145, %15
  %153 = or i1 %152, %146
  %154 = select i1 %152, i64 16, i64 0
  br i1 %153, label %159, label %155

155:                                              ; preds = %151
  %156 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !54
  %157 = call i64 %156(ptr noundef nonnull %145) #15
  %158 = lshr i64 %157, 3
  br label %159

159:                                              ; preds = %151, %155
  %160 = phi i64 [ %154, %151 ], [ %158, %155 ]
  %161 = sext i32 %147 to i64
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  call void @_bli_array_grow_func(ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef 8, i32 noundef %140, i32 noundef 1, ptr noundef nonnull @.str.2) #15
  br label %164

164:                                              ; preds = %163, %159, %150
  %165 = load ptr, ptr %14, align 8, !tbaa !54
  %166 = sext i32 %140 to i64
  %167 = getelementptr inbounds ptr, ptr %165, i64 %166
  store ptr %139, ptr %167, align 8, !tbaa !54
  br label %168

168:                                              ; preds = %138, %164
  %169 = phi i32 [ %147, %164 ], [ %140, %138 ]
  %170 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %16) #16
  %171 = icmp eq ptr %170, null
  br i1 %171, label %131, label %138, !llvm.loop !66

172:                                              ; preds = %136, %179
  %173 = phi i64 [ %137, %136 ], [ %175, %179 ]
  %174 = phi ptr [ %132, %136 ], [ %180, %179 ]
  %175 = add nsw i64 %173, -1
  %176 = getelementptr inbounds ptr, ptr %174, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !54
  %178 = icmp eq ptr %177, null
  br i1 %178, label %185, label %179

179:                                              ; preds = %172
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %177) #15
  %180 = load ptr, ptr %14, align 8
  %181 = icmp ne ptr %180, null
  %182 = and i64 %175, 4294967295
  %183 = icmp ne i64 %182, 0
  %184 = and i1 %181, %183
  br i1 %184, label %172, label %185, !llvm.loop !67

185:                                              ; preds = %172, %179, %129, %131
  %186 = phi ptr [ %132, %131 ], [ %130, %129 ], [ %174, %172 ], [ %180, %179 ]
  br i1 %123, label %122, label %187, !llvm.loop !68

187:                                              ; preds = %185
  %188 = icmp ne ptr %186, null
  %189 = icmp ne ptr %186, %15
  %190 = and i1 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %192(ptr noundef nonnull %186) #15
  br label %193

193:                                              ; preds = %191, %187
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  br label %194

194:                                              ; preds = %114, %193, %113
  %195 = phi ptr [ %106, %113 ], [ %115, %193 ], [ %115, %114 ]
  ret ptr %195
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @BM_face_edge_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bmesh_loop_reverse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_faces_join(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_split(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %9 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %8, i32 noundef 19) #15
  %10 = tail call fastcc zeroext i8 @BM_loop_is_adjacent(ptr noundef %2, ptr noundef %3) #16, !range !44
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %12, %7
  %21 = icmp eq ptr %4, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %20
  store ptr null, ptr %4, align 8, !tbaa !54
  br label %48

23:                                               ; preds = %16
  %24 = icmp eq i8 %9, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = tail call ptr @bmesh_sfme(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) #15
  br label %48

27:                                               ; preds = %23
  %28 = tail call ptr @BM_face_copy(ptr noundef %0, ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %29 = tail call ptr @bmesh_sfme(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %33, %31 ], [ %37, %34 ]
  tail call void @BM_loop_interp_multires(ptr noundef %0, ptr noundef %35, ptr noundef %28) #15
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = icmp eq ptr %37, %33
  br i1 %38, label %39, label %34, !llvm.loop !72

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.BMFace, ptr %29, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %41, %39 ], [ %45, %42 ]
  tail call void @BM_loop_interp_multires(ptr noundef %0, ptr noundef %43, ptr noundef %28) #15
  %44 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = icmp eq ptr %45, %41
  br i1 %46, label %47, label %42, !llvm.loop !73

47:                                               ; preds = %42, %27
  tail call void @BM_face_kill(ptr noundef %0, ptr noundef %28) #15
  br label %48

48:                                               ; preds = %25, %47, %20, %22
  %49 = phi ptr [ null, %22 ], [ null, %20 ], [ %29, %47 ], [ %26, %25 ]
  ret ptr %49
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_loop_is_adjacent(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BM_face_copy(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bmesh_sfme(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_loop_interp_multires(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_split_n(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  %11 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = tail call fastcc zeroext i8 @BM_loop_is_adjacent(ptr noundef %2, ptr noundef nonnull %3) #16, !range !44
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14, %8
  %18 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17, %14
  %24 = icmp eq ptr %6, null
  br i1 %24, label %69, label %25

25:                                               ; preds = %23
  store ptr null, ptr %6, align 8, !tbaa !54
  br label %69

26:                                               ; preds = %17
  %27 = tail call ptr @BM_face_copy(ptr noundef %0, ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %28 = icmp eq ptr %6, null
  %29 = select i1 %28, ptr %9, ptr %6
  %30 = call ptr @bmesh_sfme(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %29, ptr noundef %7, i8 noundef zeroext 0) #15
  %31 = icmp ne ptr %30, null
  %32 = icmp sgt i32 %5, 0
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %26
  %35 = load ptr, ptr %29, align 8, !tbaa !54
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 2
  %37 = zext nneg i32 %5 to i64
  br label %38

38:                                               ; preds = %34, %65
  %39 = phi i64 [ 0, %34 ], [ %66, %65 ]
  %40 = phi ptr [ %36, %34 ], [ %10, %65 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = call ptr @bmesh_semv(ptr noundef %0, ptr noundef %12, ptr noundef %41, ptr noundef nonnull %10) #15
  %43 = getelementptr inbounds %struct.BMVert, ptr %42, i64 0, i32 2
  %44 = getelementptr inbounds [3 x float], ptr %4, i64 %39
  call fastcc void @copy_v3_v3(ptr noundef nonnull %43, ptr noundef %44) #16
  br label %45

45:                                               ; preds = %38, %64
  %46 = phi i1 [ true, %38 ], [ false, %64 ]
  %47 = load ptr, ptr %10, align 8
  %48 = select i1 %46, ptr %41, ptr %47
  %49 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  br label %51

51:                                               ; preds = %59, %45
  %52 = phi ptr [ %50, %45 ], [ %60, %59 ]
  %53 = phi ptr [ %50, %45 ], [ %62, %59 ]
  %54 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  %56 = icmp eq ptr %55, %42
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  call void @BM_loop_interp_from_face(ptr noundef %0, ptr noundef nonnull %53, ptr noundef %27, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %58 = load ptr, ptr %49, align 8, !tbaa !41
  br label %59

59:                                               ; preds = %51, %57
  %60 = phi ptr [ %52, %51 ], [ %58, %57 ]
  %61 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !49
  %63 = icmp eq ptr %62, %60
  br i1 %63, label %64, label %51, !llvm.loop !76

64:                                               ; preds = %59
  br i1 %46, label %45, label %65, !llvm.loop !77

65:                                               ; preds = %64
  %66 = add nuw nsw i64 %39, 1
  %67 = icmp eq i64 %66, %37
  br i1 %67, label %68, label %38, !llvm.loop !78

68:                                               ; preds = %65, %26
  call void @BM_face_verts_kill(ptr noundef %0, ptr noundef %27) #15
  br label %69

69:                                               ; preds = %23, %25, %68
  %70 = phi ptr [ %30, %68 ], [ null, %25 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  ret ptr %70
}

; Function Attrs: optsize
declare ptr @bmesh_semv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !79 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  store float %3, ptr %0, align 4, !tbaa !56
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @BM_loop_interp_from_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_verts_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_face_split_edgenet(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [2 x float], align 4
  %12 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store ptr null, ptr %8, align 8, !tbaa !54
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = icmp eq ptr %4, null
  br i1 %15, label %299, label %16

16:                                               ; preds = %14
  store ptr null, ptr %4, align 8, !tbaa !54
  store i32 0, ptr %5, align 4, !tbaa !80
  br label %299

17:                                               ; preds = %6
  %18 = add nsw i32 %3, 2
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 4
  %21 = alloca i8, i64 %20, align 16
  %22 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !63
  %24 = add nsw i32 %23, %3
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = alloca i8, i64 %26, align 16
  %28 = alloca i8, i64 %26, align 16
  %29 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 4
  %30 = load i8, ptr %29, align 2, !tbaa !81
  %31 = or i8 %30, 8
  store i8 %31, ptr %29, align 2, !tbaa !81
  %32 = icmp sgt i32 %3, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %17
  %34 = zext nneg i32 %3 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %42, %35 ]
  %37 = getelementptr inbounds ptr, ptr %2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 4
  %40 = load i8, ptr %39, align 2, !tbaa !82
  %41 = or i8 %40, 8
  store i8 %41, ptr %39, align 2, !tbaa !82
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %34
  br i1 %43, label %44, label %35, !llvm.loop !83

44:                                               ; preds = %35, %17
  %45 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !71
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ %46, %44 ], [ %55, %47 ]
  %49 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !62
  %51 = getelementptr inbounds %struct.BMHeader, ptr %50, i64 0, i32 4
  %52 = load i8, ptr %51, align 2, !tbaa !82
  %53 = or i8 %52, 8
  store i8 %53, ptr %51, align 2, !tbaa !82
  %54 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !58
  %56 = icmp eq ptr %55, %46
  br i1 %56, label %57, label %47, !llvm.loop !84

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !55
  store ptr %59, ptr %28, align 16, !tbaa !54
  %60 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  br label %61

61:                                               ; preds = %57, %125
  %62 = phi i32 [ 0, %57 ], [ %127, %125 ]
  %63 = phi i32 [ 1, %57 ], [ %126, %125 ]
  %64 = add i32 %63, -1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %28, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !54
  %68 = icmp eq ptr %67, null
  br i1 %68, label %129, label %69

69:                                               ; preds = %61
  %70 = call fastcc zeroext i8 @bm_face_split_edgenet_find_loop(ptr noundef nonnull %67, ptr noundef nonnull %60, ptr noundef nonnull %21, ptr noundef nonnull %27, ptr noundef nonnull %7) #16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %125, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %7, align 4, !tbaa !80
  %74 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %27, i32 noundef %73, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0) #15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %125, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %8, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !54
  %81 = call i64 %80(ptr noundef nonnull %77) #15
  %82 = lshr i64 %81, 3
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i64 [ %82, %79 ], [ 0, %76 ]
  %85 = add nsw i32 %62, 1
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  call void @_bli_array_grow_func(ptr noundef nonnull %8, ptr noundef null, i32 noundef 8, i32 noundef %62, i32 noundef 1, ptr noundef nonnull @.str) #15
  br label %89

89:                                               ; preds = %88, %83
  %90 = load ptr, ptr %8, align 8, !tbaa !54
  %91 = sext i32 %62 to i64
  %92 = getelementptr inbounds ptr, ptr %90, i64 %91
  store ptr %74, ptr %92, align 8, !tbaa !54
  %93 = getelementptr inbounds %struct.BMFace, ptr %74, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %93, ptr noundef nonnull %60) #16
  %94 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 4
  %95 = load i8, ptr %94, align 2, !tbaa !81
  %96 = or i8 %95, 8
  store i8 %96, ptr %94, align 2, !tbaa !81
  %97 = getelementptr inbounds %struct.BMFace, ptr %74, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !71
  %99 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !75
  %101 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !62
  %103 = call fastcc i32 @bm_edge_flagged_radial_count(ptr noundef %102) #16
  %104 = icmp eq i32 %103, 1
  br label %105

105:                                              ; preds = %120, %89
  %106 = phi ptr [ %98, %89 ], [ %123, %120 ]
  %107 = phi i1 [ %104, %89 ], [ %112, %120 ]
  %108 = phi i32 [ %64, %89 ], [ %121, %120 ]
  %109 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !62
  %111 = call fastcc i32 @bm_edge_flagged_radial_count(ptr noundef %110) #16
  %112 = icmp eq i32 %111, 1
  %113 = xor i1 %107, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !55
  %117 = add i32 %108, 1
  %118 = zext i32 %108 to i64
  %119 = getelementptr inbounds ptr, ptr %28, i64 %118
  store ptr %116, ptr %119, align 8, !tbaa !54
  br label %120

120:                                              ; preds = %114, %105
  %121 = phi i32 [ %117, %114 ], [ %108, %105 ]
  %122 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !58
  %124 = icmp eq ptr %123, %98
  br i1 %124, label %125, label %105, !llvm.loop !85

125:                                              ; preds = %120, %72, %69
  %126 = phi i32 [ %64, %69 ], [ %64, %72 ], [ %121, %120 ]
  %127 = phi i32 [ %62, %69 ], [ %62, %72 ], [ %85, %120 ]
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %129, label %61, !llvm.loop !86

129:                                              ; preds = %125, %61
  %130 = phi i32 [ %127, %125 ], [ %62, %61 ]
  %131 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %132 = call zeroext i8 @CustomData_has_math(ptr noundef nonnull %131) #15
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %228, label %134

134:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  %135 = load i32, ptr %22, align 8, !tbaa !63
  %136 = sext i32 %135 to i64
  %137 = shl nsw i64 %136, 3
  %138 = alloca i8, i64 %137, align 16
  %139 = alloca i8, i64 %137, align 16
  %140 = shl nsw i64 %136, 2
  %141 = alloca i8, i64 %140, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %10, ptr noundef nonnull %60) #15
  %142 = load ptr, ptr %45, align 8, !tbaa !71
  br label %143

143:                                              ; preds = %165, %134
  %144 = phi i64 [ %174, %165 ], [ 0, %134 ]
  %145 = phi ptr [ %176, %165 ], [ %142, %134 ]
  %146 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !55
  %148 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, i8 noundef zeroext 6, ptr noundef %147) #16
  %149 = icmp eq ptr %148, null
  br i1 %149, label %165, label %150

150:                                              ; preds = %143, %162
  %151 = phi ptr [ %163, %162 ], [ %148, %143 ]
  %152 = getelementptr inbounds %struct.BMLoop, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !47
  %154 = icmp eq ptr %153, %1
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.BMHeader, ptr %153, i64 0, i32 4
  %157 = load i8, ptr %156, align 2, !tbaa !81
  %158 = and i8 %157, 8
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr %145, align 8, !tbaa !59
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %131, ptr noundef nonnull %131, ptr noundef %161, ptr noundef nonnull %151) #15
  br label %162

162:                                              ; preds = %150, %155, %160
  %163 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #16
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %150, !llvm.loop !87

165:                                              ; preds = %162, %143
  %166 = load ptr, ptr %146, align 8, !tbaa !55
  %167 = getelementptr inbounds %struct.BMHeader, ptr %166, i64 0, i32 4
  %168 = load i8, ptr %167, align 2, !tbaa !88
  %169 = or i8 %168, 8
  store i8 %169, ptr %167, align 2, !tbaa !88
  %170 = getelementptr inbounds [2 x float], ptr %139, i64 %144
  %171 = getelementptr inbounds %struct.BMVert, ptr %166, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %170, ptr noundef nonnull %10, ptr noundef nonnull %171) #15
  %172 = load ptr, ptr %145, align 8, !tbaa !59
  %173 = getelementptr inbounds ptr, ptr %138, i64 %144
  store ptr %172, ptr %173, align 8, !tbaa !54
  %174 = add nuw i64 %144, 1
  %175 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 6
  %176 = load ptr, ptr %175, align 8, !tbaa !58
  %177 = icmp eq ptr %176, %142
  br i1 %177, label %178, label %143, !llvm.loop !89

178:                                              ; preds = %165
  br i1 %32, label %179, label %227

179:                                              ; preds = %178
  %180 = zext nneg i32 %3 to i64
  br label %181

181:                                              ; preds = %179, %224
  %182 = phi i64 [ 0, %179 ], [ %225, %224 ]
  %183 = getelementptr inbounds ptr, ptr %2, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !54
  %185 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, i8 noundef zeroext 7, ptr noundef %184) #16
  %186 = icmp eq ptr %185, null
  br i1 %186, label %224, label %187

187:                                              ; preds = %181, %221
  %188 = phi ptr [ %222, %221 ], [ %185, %181 ]
  %189 = getelementptr inbounds %struct.BMHeader, ptr %188, i64 0, i32 4
  %190 = load i8, ptr %189, align 2, !tbaa !88
  %191 = and i8 %190, 8
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %221

193:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #17
  %194 = or disjoint i8 %190, 8
  store i8 %194, ptr %189, align 2, !tbaa !88
  %195 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, i8 noundef zeroext 6, ptr noundef nonnull %188) #16
  %196 = icmp eq ptr %195, null
  br i1 %196, label %220, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.BMVert, ptr %188, i64 0, i32 2
  br label %199

199:                                              ; preds = %197, %216
  %200 = phi ptr [ null, %197 ], [ %217, %216 ]
  %201 = phi ptr [ %195, %197 ], [ %218, %216 ]
  %202 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !47
  %204 = getelementptr inbounds %struct.BMHeader, ptr %203, i64 0, i32 4
  %205 = load i8, ptr %204, align 2, !tbaa !81
  %206 = and i8 %205, 8
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %199
  %209 = icmp eq ptr %200, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %208
  call void @mul_v2_m3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %198) #15
  %211 = load i32, ptr %22, align 8, !tbaa !63
  call void @interp_weights_poly_v2(ptr noundef nonnull %141, ptr noundef nonnull %139, i32 noundef %211, ptr noundef nonnull %11) #15
  %212 = load i32, ptr %22, align 8, !tbaa !63
  %213 = load ptr, ptr %201, align 8, !tbaa !59
  call void @CustomData_bmesh_interp(ptr noundef nonnull %131, ptr noundef nonnull %138, ptr noundef nonnull %141, ptr noundef null, i32 noundef %212, ptr noundef %213) #15
  br label %216

214:                                              ; preds = %208
  %215 = load ptr, ptr %200, align 8, !tbaa !59
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %131, ptr noundef nonnull %131, ptr noundef %215, ptr noundef nonnull %201) #15
  br label %216

216:                                              ; preds = %199, %214, %210
  %217 = phi ptr [ %201, %210 ], [ %200, %214 ], [ %200, %199 ]
  %218 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #16
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %199, !llvm.loop !90

220:                                              ; preds = %216, %193
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #17
  br label %221

221:                                              ; preds = %187, %220
  %222 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #16
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %187, !llvm.loop !91

224:                                              ; preds = %221, %181
  %225 = add nuw nsw i64 %182, 1
  %226 = icmp eq i64 %225, %180
  br i1 %226, label %227, label %181, !llvm.loop !92

227:                                              ; preds = %224, %178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  br label %228

228:                                              ; preds = %227, %129
  br i1 %32, label %229, label %250

229:                                              ; preds = %228
  %230 = zext nneg i32 %3 to i64
  br label %231

231:                                              ; preds = %229, %231
  %232 = phi i64 [ 0, %229 ], [ %248, %231 ]
  %233 = getelementptr inbounds ptr, ptr %2, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !54
  %235 = getelementptr inbounds %struct.BMHeader, ptr %234, i64 0, i32 4
  %236 = load i8, ptr %235, align 2, !tbaa !82
  %237 = and i8 %236, -9
  store i8 %237, ptr %235, align 2, !tbaa !82
  %238 = getelementptr inbounds %struct.BMEdge, ptr %234, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !93
  %240 = getelementptr inbounds %struct.BMHeader, ptr %239, i64 0, i32 4
  %241 = load i8, ptr %240, align 2, !tbaa !88
  %242 = and i8 %241, -9
  store i8 %242, ptr %240, align 2, !tbaa !88
  %243 = getelementptr inbounds %struct.BMEdge, ptr %234, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !52
  %245 = getelementptr inbounds %struct.BMHeader, ptr %244, i64 0, i32 4
  %246 = load i8, ptr %245, align 2, !tbaa !88
  %247 = and i8 %246, -9
  store i8 %247, ptr %245, align 2, !tbaa !88
  %248 = add nuw nsw i64 %232, 1
  %249 = icmp eq i64 %248, %230
  br i1 %249, label %250, label %231, !llvm.loop !94

250:                                              ; preds = %231, %228
  %251 = load ptr, ptr %45, align 8, !tbaa !71
  br label %252

252:                                              ; preds = %252, %250
  %253 = phi ptr [ %251, %250 ], [ %265, %252 ]
  %254 = getelementptr inbounds %struct.BMLoop, ptr %253, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !62
  %256 = getelementptr inbounds %struct.BMHeader, ptr %255, i64 0, i32 4
  %257 = load i8, ptr %256, align 2, !tbaa !82
  %258 = and i8 %257, -9
  store i8 %258, ptr %256, align 2, !tbaa !82
  %259 = getelementptr inbounds %struct.BMLoop, ptr %253, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !55
  %261 = getelementptr inbounds %struct.BMHeader, ptr %260, i64 0, i32 4
  %262 = load i8, ptr %261, align 2, !tbaa !88
  %263 = and i8 %262, -9
  store i8 %263, ptr %261, align 2, !tbaa !88
  %264 = getelementptr inbounds %struct.BMLoop, ptr %253, i64 0, i32 6
  %265 = load ptr, ptr %264, align 8, !tbaa !58
  %266 = icmp eq ptr %265, %251
  br i1 %266, label %267, label %252, !llvm.loop !95

267:                                              ; preds = %252
  %268 = icmp eq i32 %130, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %267
  %270 = load i8, ptr %29, align 2, !tbaa !81
  %271 = and i8 %270, -9
  store i8 %271, ptr %29, align 2, !tbaa !81
  br label %291

272:                                              ; preds = %267
  %273 = load ptr, ptr %8, align 8, !tbaa !54
  %274 = load ptr, ptr %273, align 8, !tbaa !54
  call void @bmesh_face_swap_data(ptr noundef %1, ptr noundef %274) #15
  %275 = load ptr, ptr %8, align 8, !tbaa !54
  %276 = load ptr, ptr %275, align 8, !tbaa !54
  call void @BM_face_kill(ptr noundef %0, ptr noundef %276) #15
  %277 = load ptr, ptr %8, align 8, !tbaa !54
  store ptr %1, ptr %277, align 8, !tbaa !54
  %278 = icmp sgt i32 %130, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %272
  %280 = load ptr, ptr %8, align 8, !tbaa !54
  %281 = zext nneg i32 %130 to i64
  br label %282

282:                                              ; preds = %279, %282
  %283 = phi i64 [ 0, %279 ], [ %289, %282 ]
  %284 = getelementptr inbounds ptr, ptr %280, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !54
  %286 = getelementptr inbounds %struct.BMHeader, ptr %285, i64 0, i32 4
  %287 = load i8, ptr %286, align 2, !tbaa !81
  %288 = and i8 %287, -9
  store i8 %288, ptr %286, align 2, !tbaa !81
  %289 = add nuw nsw i64 %283, 1
  %290 = icmp eq i64 %289, %281
  br i1 %290, label %291, label %282, !llvm.loop !96

291:                                              ; preds = %282, %269, %272
  %292 = icmp eq ptr %4, null
  %293 = load ptr, ptr %8, align 8, !tbaa !54
  br i1 %292, label %295, label %294

294:                                              ; preds = %291
  store ptr %293, ptr %4, align 8, !tbaa !54
  store i32 %130, ptr %5, align 4, !tbaa !80
  br label %299

295:                                              ; preds = %291
  %296 = icmp eq ptr %293, null
  br i1 %296, label %299, label %297

297:                                              ; preds = %295
  %298 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %298(ptr noundef nonnull %293) #15
  br label %299

299:                                              ; preds = %294, %297, %295, %14, %16
  %300 = phi i8 [ 0, %16 ], [ 0, %14 ], [ 1, %295 ], [ 1, %297 ], [ 1, %294 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  ret i8 %300
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bm_face_split_edgenet_find_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !97 {
  %6 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %7 = call fastcc zeroext i8 @bm_face_split_edgenet_find_loop_pair(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #16, !range !44
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = call fastcc zeroext i8 @bm_face_split_edgenet_find_loop_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %9
  store ptr %0, ptr %3, align 8, !tbaa !54
  %13 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %14, ptr noundef %0) #16
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %15, %12 ], [ %24, %16 ]
  %18 = phi i32 [ 1, %12 ], [ %19, %16 ]
  %19 = add i32 %18, 1
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  store ptr %17, ptr %21, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %23, ptr noundef %17) #16
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %16, !llvm.loop !98

26:                                               ; preds = %16
  store i32 %19, ptr %4, align 4, !tbaa !80
  %27 = icmp ugt i32 %19, 2
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %9, %5, %26
  %30 = phi i8 [ %28, %26 ], [ 0, %5 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret i8 %30
}

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @bm_edge_flagged_radial_count(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !99 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %15, %5 ], [ 0, %1 ]
  %7 = phi ptr [ %17, %5 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 4
  %11 = load i8, ptr %10, align 2, !tbaa !81
  %12 = lshr i8 %11, 3
  %13 = and i8 %12, 1
  %14 = zext nneg i8 %13 to i32
  %15 = add i32 %6, %14
  %16 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %19, label %5, !llvm.loop !100

19:                                               ; preds = %5, %1
  %20 = phi i32 [ 0, %1 ], [ %15, %5 ]
  ret i32 %20
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_math(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !101 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #16
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: optsize
declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !102 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: optsize
declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_weights_poly_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bmesh_face_swap_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !105 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare void @BM_data_interp_from_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bmesh_jekv(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_edge_split(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [32 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr null, ptr %6, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #17
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = icmp eq ptr %3, null
  %14 = select i1 %13, ptr %7, ptr %3
  br label %79

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %17 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %16, i32 noundef 19) #15
  %18 = icmp eq i8 %17, 0
  %19 = icmp eq ptr %3, null
  %20 = select i1 %19, ptr %7, ptr %3
  br i1 %18, label %79, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %9, align 8, !tbaa !41
  br label %23

23:                                               ; preds = %44, %21
  %24 = phi i32 [ %54, %44 ], [ 1, %21 ]
  %25 = phi i64 [ %45, %44 ], [ 0, %21 ]
  %26 = phi ptr [ %51, %44 ], [ %22, %21 ]
  %27 = load ptr, ptr %6, align 8
  %28 = icmp eq ptr %27, null
  %29 = icmp ult i64 %25, 32
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store ptr %8, ptr %6, align 8, !tbaa !54
  br label %44

32:                                               ; preds = %23
  %33 = icmp eq ptr %27, %8
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  br i1 %28, label %42, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !54
  %37 = call i64 %36(ptr noundef nonnull %27) #15
  %38 = lshr i64 %37, 3
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i64 [ 32, %32 ], [ %38, %35 ]
  %41 = icmp ugt i64 %40, %25
  br i1 %41, label %44, label %42

42:                                               ; preds = %34, %39
  %43 = trunc i64 %25 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef 8, i32 noundef %43, i32 noundef 1, ptr noundef nonnull @.str.3) #15
  br label %44

44:                                               ; preds = %42, %39, %31
  %45 = add nuw i64 %25, 1
  %46 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = load ptr, ptr %6, align 8, !tbaa !54
  %49 = getelementptr inbounds ptr, ptr %48, i64 %25
  store ptr %47, ptr %49, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !49
  %52 = load ptr, ptr %9, align 8, !tbaa !41
  %53 = icmp eq ptr %51, %52
  %54 = add nuw i32 %24, 1
  br i1 %53, label %55, label %23, !llvm.loop !106

55:                                               ; preds = %44
  %56 = zext i32 %24 to i64
  %57 = load ptr, ptr %6, align 8, !tbaa !54
  br label %58

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %57, %55 ], [ %69, %58 ]
  %60 = phi i64 [ 0, %55 ], [ %75, %58 ]
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 4
  %64 = load i8, ptr %63, align 2, !tbaa !81
  %65 = or i8 %64, 4
  store i8 %65, ptr %63, align 2, !tbaa !81
  %66 = call ptr @BM_face_copy(ptr noundef %0, ptr noundef %0, ptr noundef %62, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %67 = load ptr, ptr %6, align 8, !tbaa !54
  %68 = getelementptr inbounds ptr, ptr %67, i64 %60
  store ptr %66, ptr %68, align 8, !tbaa !54
  %69 = load ptr, ptr %6, align 8, !tbaa !54
  %70 = getelementptr inbounds ptr, ptr %69, i64 %60
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = getelementptr inbounds %struct.BMHeader, ptr %71, i64 0, i32 4
  %73 = load i8, ptr %72, align 2, !tbaa !81
  %74 = and i8 %73, -5
  store i8 %74, ptr %72, align 2, !tbaa !81
  %75 = add nuw nsw i64 %60, 1
  %76 = icmp eq i64 %75, %56
  br i1 %76, label %77, label %58, !llvm.loop !107

77:                                               ; preds = %58
  %78 = trunc i64 %45 to i32
  br label %79

79:                                               ; preds = %77, %12, %15
  %80 = phi ptr [ %20, %15 ], [ %14, %12 ], [ %20, %77 ]
  %81 = phi i1 [ false, %15 ], [ false, %12 ], [ true, %77 ]
  %82 = phi i32 [ 0, %15 ], [ 0, %12 ], [ %78, %77 ]
  %83 = call fastcc ptr @BM_edge_other_vert(ptr noundef %1, ptr noundef %2) #16
  %84 = call ptr @bmesh_semv(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %80) #15
  %85 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 2
  %86 = getelementptr inbounds %struct.BMVert, ptr %83, i64 0, i32 2
  %87 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %85, ptr noundef nonnull %86, ptr noundef nonnull %87) #16
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %85, ptr noundef nonnull %87, ptr noundef nonnull %85, float noundef %4) #16
  %88 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %89 = load i8, ptr %88, align 1, !tbaa !108
  %90 = load ptr, ptr %80, align 8, !tbaa !54
  %91 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 3
  store i8 %89, ptr %91, align 1, !tbaa !108
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %1, ptr noundef %90) #15
  call void @BM_data_interp_face_vert_edge(ptr noundef %0, ptr noundef %83, ptr noundef %2, ptr noundef %84, ptr noundef %1, float noundef %4) #15
  call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %2, ptr noundef %83, ptr noundef %84, float noundef %4) #15
  br i1 %81, label %92, label %159

92:                                               ; preds = %79
  %93 = icmp sgt i32 %82, 0
  %94 = zext nneg i32 %82 to i64
  br label %95

95:                                               ; preds = %143, %92
  %96 = phi i1 [ true, %92 ], [ false, %143 ]
  br i1 %93, label %100, label %144

97:                                               ; preds = %142
  br i1 %93, label %98, label %152

98:                                               ; preds = %97
  %99 = zext nneg i32 %82 to i64
  br label %145

100:                                              ; preds = %95, %139
  %101 = phi i64 [ %140, %139 ], [ 0, %95 ]
  br i1 %96, label %104, label %102

102:                                              ; preds = %100
  %103 = load ptr, ptr %80, align 8, !tbaa !54
  br label %104

104:                                              ; preds = %100, %102
  %105 = phi ptr [ %103, %102 ], [ %1, %100 ]
  %106 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !41
  %108 = icmp eq ptr %107, null
  br i1 %108, label %136, label %109

109:                                              ; preds = %104, %131
  %110 = phi ptr [ %132, %131 ], [ %107, %104 ]
  %111 = phi ptr [ %134, %131 ], [ %107, %104 ]
  %112 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !47
  %114 = getelementptr inbounds %struct.BMHeader, ptr %113, i64 0, i32 4
  %115 = load i8, ptr %114, align 2, !tbaa !81
  %116 = and i8 %115, 4
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.BMFace, ptr %113, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !71
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi ptr [ %120, %118 ], [ %127, %121 ]
  %123 = load ptr, ptr %6, align 8, !tbaa !54
  %124 = getelementptr inbounds ptr, ptr %123, i64 %101
  %125 = load ptr, ptr %124, align 8, !tbaa !54
  call void @BM_loop_interp_multires(ptr noundef %0, ptr noundef %122, ptr noundef %125) #15
  %126 = getelementptr inbounds %struct.BMLoop, ptr %122, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !58
  %128 = icmp eq ptr %127, %120
  br i1 %128, label %129, label %121, !llvm.loop !109

129:                                              ; preds = %121
  %130 = load ptr, ptr %106, align 8, !tbaa !41
  br label %131

131:                                              ; preds = %129, %109
  %132 = phi ptr [ %130, %129 ], [ %110, %109 ]
  %133 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !49
  %135 = icmp eq ptr %134, %132
  br i1 %135, label %139, label %109, !llvm.loop !110

136:                                              ; preds = %104
  %137 = load ptr, ptr @stderr, align 8, !tbaa !54
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.BM_edge_split, i32 noundef 1220, ptr noundef nonnull @.str.6) #18
  br label %142

139:                                              ; preds = %131
  %140 = add nuw nsw i64 %101, 1
  %141 = icmp eq i64 %140, %94
  br i1 %141, label %142, label %100, !llvm.loop !111

142:                                              ; preds = %139, %136
  br i1 %96, label %143, label %97

143:                                              ; preds = %142, %144
  br label %95, !llvm.loop !112

144:                                              ; preds = %95
  br i1 %96, label %143, label %152

145:                                              ; preds = %98, %145
  %146 = phi i64 [ 0, %98 ], [ %150, %145 ]
  %147 = load ptr, ptr %6, align 8, !tbaa !54
  %148 = getelementptr inbounds ptr, ptr %147, i64 %146
  %149 = load ptr, ptr %148, align 8, !tbaa !54
  call void @BM_face_verts_kill(ptr noundef %0, ptr noundef %149) #15
  %150 = add nuw nsw i64 %146, 1
  %151 = icmp eq i64 %150, %99
  br i1 %151, label %152, label %145, !llvm.loop !113

152:                                              ; preds = %144, %145, %97
  %153 = load ptr, ptr %6, align 8
  %154 = icmp ne ptr %153, null
  %155 = icmp ne ptr %153, %8
  %156 = and i1 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %158(ptr noundef nonnull %153) #15
  br label %159

159:                                              ; preds = %152, %157, %79
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret ptr %84
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !114 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = load float, ptr %2, align 4, !tbaa !56
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !56
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !56
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #5 !PGOFuncName !115 {
  %5 = load float, ptr %1, align 4, !tbaa !56
  %6 = load float, ptr %2, align 4, !tbaa !56
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !56
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !56
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !56
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !56
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !56
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_interp_face_vert_edge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_edge_split_n(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = add nuw nsw i32 %2, 1
  %8 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %9 = icmp eq ptr %3, null
  %10 = zext nneg i32 %2 to i64
  %11 = zext nneg i32 %2 to i64
  %12 = getelementptr ptr, ptr %3, i64 %10
  br label %13

13:                                               ; preds = %6, %24
  %14 = phi i64 [ 0, %6 ], [ %25, %24 ]
  %15 = trunc i64 %14 to i32
  %16 = sub i32 %7, %15
  %17 = sitofp i32 %16 to float
  %18 = fdiv float 1.000000e+00, %17
  %19 = load ptr, ptr %8, align 8, !tbaa !52
  %20 = tail call ptr @BM_edge_split(ptr noundef %0, ptr noundef %1, ptr noundef %19, ptr noundef null, float noundef %18) #16
  br i1 %9, label %24, label %21

21:                                               ; preds = %13
  %22 = xor i64 %14, -1
  %23 = getelementptr ptr, ptr %12, i64 %22
  store ptr %20, ptr %23, align 8, !tbaa !54
  br label %24

24:                                               ; preds = %13, %21
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, %11
  br i1 %26, label %27, label %13, !llvm.loop !116

27:                                               ; preds = %24, %4
  %28 = phi ptr [ null, %4 ], [ %20, %24 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_edge_calc_rotate(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %9 = call zeroext i8 @BM_edge_face_pair(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  call void @BM_edge_ordered_verts(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %10 = icmp eq i8 %1, 0
  %11 = load ptr, ptr %8, align 8, !tbaa !54
  br i1 %10, label %12, label %14

12:                                               ; preds = %4
  %13 = load ptr, ptr %7, align 8, !tbaa !54
  store ptr %11, ptr %7, align 8, !tbaa !54
  store ptr %13, ptr %8, align 8, !tbaa !54
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ %11, %4 ]
  %16 = load ptr, ptr %6, align 8, !tbaa !54
  %17 = load ptr, ptr %5, align 8, !tbaa !54
  %18 = call ptr @BM_face_other_vert_loop(ptr noundef %15, ptr noundef %16, ptr noundef %17) #15
  store ptr %18, ptr %2, align 8, !tbaa !54
  %19 = load ptr, ptr %7, align 8, !tbaa !54
  %20 = load ptr, ptr %5, align 8, !tbaa !54
  %21 = load ptr, ptr %6, align 8, !tbaa !54
  %22 = call ptr @BM_face_other_vert_loop(ptr noundef %19, ptr noundef %20, ptr noundef %21) #15
  store ptr %22, ptr %3, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_ordered_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_other_vert_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_edge_rotate_check(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = call zeroext i8 @BM_edge_face_pair(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = call ptr @BM_face_other_vert_loop(ptr noundef %7, ptr noundef %9, ptr noundef %11) #15
  %13 = load ptr, ptr %3, align 8, !tbaa !54
  %14 = load ptr, ptr %8, align 8, !tbaa !52
  %15 = load ptr, ptr %10, align 8, !tbaa !93
  %16 = call ptr @BM_face_other_vert_loop(ptr noundef %13, ptr noundef %14, ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %6
  %23 = load ptr, ptr %2, align 8, !tbaa !54
  %24 = load ptr, ptr %10, align 8, !tbaa !93
  %25 = load ptr, ptr %8, align 8, !tbaa !52
  %26 = call ptr @BM_face_other_vert_loop(ptr noundef %23, ptr noundef %24, ptr noundef %25) #15
  %27 = load ptr, ptr %3, align 8, !tbaa !54
  %28 = load ptr, ptr %10, align 8, !tbaa !93
  %29 = load ptr, ptr %8, align 8, !tbaa !52
  %30 = call ptr @BM_face_other_vert_loop(ptr noundef %27, ptr noundef %28, ptr noundef %29) #15
  %31 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = icmp ne ptr %32, %34
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %1, %6, %22
  %38 = phi i8 [ 0, %6 ], [ %36, %22 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BM_edge_rotate_check_degenerate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  call void @BM_edge_ordered_verts(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  %15 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = load ptr, ptr %13, align 8, !tbaa !54
  %22 = call ptr @BM_face_other_vert_loop(ptr noundef %20, ptr noundef %21, ptr noundef %16) #15
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = load ptr, ptr %14, align 8, !tbaa !54
  %28 = call ptr @BM_face_other_vert_loop(ptr noundef %26, ptr noundef %27, ptr noundef %18) #15
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = load ptr, ptr %13, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %14, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %32, ptr noundef nonnull %34) #16
  %35 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %36 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %35, ptr noundef nonnull %36) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %4) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #16
  %37 = load ptr, ptr %13, align 8, !tbaa !54
  %38 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %38, ptr noundef nonnull %35) #16
  %39 = load ptr, ptr %14, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %40, ptr noundef nonnull %36) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #16
  %41 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %35, ptr noundef nonnull %41) #16
  %42 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %36, ptr noundef nonnull %42) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %7) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %9) #16
  %43 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #16
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %55, label %45

45:                                               ; preds = %3
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %8) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %10) #16
  %46 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #16
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  call fastcc void @negate_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #16
  %49 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %9) #16
  %50 = fcmp ogt float %49, 0x3FEFF7CEE0000000
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %10) #16
  %53 = fcmp ogt float %52, 0x3FEFF7CEE0000000
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %48, %51, %45, %3, %54
  %56 = phi i8 [ 1, %54 ], [ 0, %3 ], [ 0, %45 ], [ 0, %51 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret i8 %56
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !117 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !118 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !56
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !56
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !56
  %15 = load float, ptr %8, align 4, !tbaa !56
  %16 = load float, ptr %2, align 4, !tbaa !56
  %17 = load float, ptr %1, align 4, !tbaa !56
  %18 = load float, ptr %6, align 4, !tbaa !56
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !56
  %23 = load float, ptr %1, align 4, !tbaa !56
  %24 = load float, ptr %10, align 4, !tbaa !56
  %25 = load float, ptr %4, align 4, !tbaa !56
  %26 = load float, ptr %2, align 4, !tbaa !56
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !119 {
  %3 = load float, ptr %0, align 4, !tbaa !56
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !56
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !120 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !56
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !56
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BM_edge_rotate_check_beauty(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #16
  %11 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %17 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %16) #16
  %18 = fcmp ogt float %10, %17
  %19 = zext i1 %18 to i8
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !121 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_edge_rotate(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %9 = tail call zeroext i8 @BM_edge_rotate_check(ptr noundef %1) #16, !range !44
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %67, label %11

11:                                               ; preds = %4
  call void @BM_edge_calc_rotate(ptr noundef %1, i8 noundef zeroext %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %12 = load ptr, ptr %5, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = load ptr, ptr %6, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = zext i16 %3 to i32
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = tail call zeroext i8 @BM_edge_rotate_check_beauty(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %15) #16, !range !44
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %21, %11
  %25 = and i32 %18, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @BM_edge_exists(ptr noundef %14, ptr noundef %17) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %67

30:                                               ; preds = %27, %24
  %31 = and i32 %18, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = tail call zeroext i8 @BM_edge_rotate_check_degenerate(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %15) #16, !range !44
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %33, %30
  %37 = and i32 %18, 2
  %38 = tail call ptr @BM_edge_create(ptr noundef %0, ptr noundef %14, ptr noundef %17, ptr noundef %1, i32 noundef %37) #15
  %39 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !122
  %43 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !122
  %47 = tail call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %40, ptr noundef %44, ptr noundef %1, i8 noundef zeroext 1) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %36
  %50 = tail call ptr @BM_face_vert_share_loop(ptr noundef nonnull %47, ptr noundef %14) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = tail call ptr @BM_face_vert_share_loop(ptr noundef nonnull %47, ptr noundef %17) #15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = tail call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %53, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %59 = call zeroext i8 @BM_edge_face_pair(ptr noundef %38, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %7, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 3
  store i8 %42, ptr %63, align 1, !tbaa !122
  %64 = load ptr, ptr %8, align 8, !tbaa !54
  %65 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 3
  store i8 %46, ptr %65, align 1, !tbaa !122
  br label %66

66:                                               ; preds = %61, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  br label %67

67:                                               ; preds = %49, %52, %55, %36, %33, %27, %21, %4, %66
  %68 = phi ptr [ %38, %66 ], [ null, %4 ], [ null, %21 ], [ null, %27 ], [ null, %33 ], [ null, %36 ], [ null, %55 ], [ null, %52 ], [ null, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret ptr %68
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_vert_separate(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @bmesh_urmv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @bmesh_urmv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_face_loop_separate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @bmesh_urmv_loop(ptr noundef %0, ptr noundef %1) #15
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @bmesh_urmv_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_face_split_edgenet_find_loop_pair(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !123 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 4, ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %107, label %7

7:                                                ; preds = %3, %27
  %8 = phi ptr [ %32, %27 ], [ %5, %3 ]
  %9 = phi ptr [ %31, %27 ], [ null, %3 ]
  %10 = phi i32 [ %30, %27 ], [ 0, %3 ]
  %11 = phi i32 [ %29, %27 ], [ 0, %3 ]
  %12 = phi ptr [ %28, %27 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.BMHeader, ptr %8, i64 0, i32 4
  %14 = load i8, ptr %13, align 2, !tbaa !82
  %15 = and i8 %14, 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %7
  %18 = call fastcc i32 @bm_edge_flagged_radial_count(ptr noundef nonnull %8) #16
  switch i32 %18, label %27 [
    i32 1, label %19
    i32 0, label %23
  ]

19:                                               ; preds = %17
  %20 = alloca [16 x i8], align 16
  store ptr %9, ptr %20, align 16, !tbaa !124
  %21 = getelementptr inbounds %struct.LinkNode, ptr %20, i64 0, i32 1
  store ptr %8, ptr %21, align 8, !tbaa !126
  %22 = add nsw i32 %11, 1
  br label %27

23:                                               ; preds = %17
  %24 = alloca [16 x i8], align 16
  store ptr %12, ptr %24, align 16, !tbaa !124
  %25 = getelementptr inbounds %struct.LinkNode, ptr %24, i64 0, i32 1
  store ptr %8, ptr %25, align 8, !tbaa !126
  %26 = add nsw i32 %10, 1
  br label %27

27:                                               ; preds = %19, %23, %17, %7
  %28 = phi ptr [ %12, %7 ], [ %12, %19 ], [ %24, %23 ], [ %12, %17 ]
  %29 = phi i32 [ %11, %7 ], [ %22, %19 ], [ %11, %23 ], [ %11, %17 ]
  %30 = phi i32 [ %10, %7 ], [ %10, %19 ], [ %26, %23 ], [ %10, %17 ]
  %31 = phi ptr [ %9, %7 ], [ %20, %19 ], [ %9, %23 ], [ %9, %17 ]
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %7, !llvm.loop !127

34:                                               ; preds = %27
  %35 = icmp eq i32 %29, 0
  br i1 %35, label %107, label %36

36:                                               ; preds = %34
  %37 = icmp eq ptr %31, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %31, align 8, !tbaa !124
  store ptr null, ptr %31, align 8, !tbaa !124
  %40 = getelementptr inbounds %struct.LinkNode, ptr %31, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !126
  br label %42

42:                                               ; preds = %36, %38
  %43 = phi ptr [ %39, %38 ], [ null, %36 ]
  %44 = phi ptr [ %41, %38 ], [ null, %36 ]
  store ptr %44, ptr %2, align 8, !tbaa !54
  %45 = icmp eq i32 %30, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = icmp sgt i32 %29, 1
  br i1 %47, label %48, label %107

48:                                               ; preds = %46
  %49 = icmp eq ptr %43, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %48
  store ptr %31, ptr %43, align 8, !tbaa !124
  %51 = getelementptr inbounds %struct.LinkNode, ptr %43, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !126
  br label %53

53:                                               ; preds = %48, %50
  %54 = phi ptr [ %52, %50 ], [ null, %48 ]
  %55 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %54, ptr %55, align 8, !tbaa !54
  br label %93

56:                                               ; preds = %42
  %57 = icmp eq ptr %28, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %28, align 8, !tbaa !124
  store ptr null, ptr %28, align 8, !tbaa !124
  %60 = getelementptr inbounds %struct.LinkNode, ptr %28, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !126
  br label %62

62:                                               ; preds = %56, %58
  %63 = phi ptr [ %59, %58 ], [ null, %56 ]
  %64 = phi ptr [ %61, %58 ], [ null, %56 ]
  %65 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %64, ptr %65, align 8, !tbaa !54
  %66 = icmp sgt i32 %30, 1
  br i1 %66, label %67, label %93

67:                                               ; preds = %62
  %68 = load ptr, ptr %2, align 8, !tbaa !54
  %69 = call fastcc ptr @BM_edge_other_vert(ptr noundef %68, ptr noundef %0) #16
  %70 = call fastcc ptr @BM_edge_other_vert(ptr noundef %64, ptr noundef %0) #16
  %71 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 2
  %72 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %73 = getelementptr inbounds %struct.BMVert, ptr %70, i64 0, i32 2
  %74 = call float @angle_on_axis_v3v3v3_v3(ptr noundef nonnull %71, ptr noundef nonnull %72, ptr noundef nonnull %73, ptr noundef %1) #15
  %75 = icmp eq ptr %63, null
  br i1 %75, label %93, label %76

76:                                               ; preds = %67, %90
  %77 = phi float [ %91, %90 ], [ %74, %67 ]
  %78 = phi ptr [ %79, %90 ], [ %28, %67 ]
  %79 = phi ptr [ %80, %90 ], [ %63, %67 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !124
  store ptr %78, ptr %79, align 8, !tbaa !124
  %81 = getelementptr inbounds %struct.LinkNode, ptr %79, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !126
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %76
  %85 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %82, ptr noundef %0) #16
  %86 = getelementptr inbounds %struct.BMVert, ptr %85, i64 0, i32 2
  %87 = call float @angle_on_axis_v3v3v3_v3(ptr noundef nonnull %71, ptr noundef nonnull %72, ptr noundef nonnull %86, ptr noundef %1) #15
  %88 = fcmp olt float %87, %77
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store ptr %82, ptr %65, align 8, !tbaa !54
  br label %90

90:                                               ; preds = %89, %84
  %91 = phi float [ %87, %89 ], [ %77, %84 ]
  %92 = icmp eq ptr %80, null
  br i1 %92, label %93, label %76, !llvm.loop !128

93:                                               ; preds = %76, %90, %67, %62, %53
  %94 = load ptr, ptr %2, align 8, !tbaa !54
  %95 = call fastcc ptr @bm_edge_flagged_radial_first(ptr noundef %94) #16
  %96 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !47
  %98 = getelementptr inbounds %struct.BMFace, ptr %97, i64 0, i32 4
  %99 = icmp ne ptr %98, %1
  %100 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !55
  %102 = icmp ne ptr %101, %0
  %103 = xor i1 %99, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %93
  %105 = getelementptr inbounds ptr, ptr %2, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !54
  store ptr %106, ptr %2, align 8, !tbaa !54
  store ptr %94, ptr %105, align 8, !tbaa !54
  br label %107

107:                                              ; preds = %3, %93, %104, %46, %34
  %108 = phi i8 [ 0, %34 ], [ 0, %46 ], [ 1, %104 ], [ 1, %93 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret i8 %108
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_face_split_edgenet_find_loop_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !129 {
  %5 = alloca %struct.BMIter, align 8
  %6 = load ptr, ptr %3, align 8, !tbaa !54
  %7 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %6, ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 4
  store ptr %6, ptr %8, align 8, !tbaa !34
  %9 = alloca [16 x i8], align 16
  store ptr null, ptr %9, align 16, !tbaa !124
  %10 = getelementptr inbounds %struct.LinkNode, ptr %9, i64 0, i32 1
  store ptr %7, ptr %10, align 8, !tbaa !126
  %11 = getelementptr inbounds ptr, ptr %3, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %12, ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 0, i32 1
  %15 = icmp eq ptr %2, null
  br label %16

16:                                               ; preds = %4, %120
  %17 = phi i32 [ 0, %4 ], [ %121, %120 ]
  %18 = phi ptr [ null, %4 ], [ %126, %120 ]
  %19 = phi ptr [ null, %4 ], [ %125, %120 ]
  %20 = phi ptr [ null, %4 ], [ %122, %120 ]
  %21 = phi ptr [ null, %4 ], [ %124, %120 ]
  %22 = phi ptr [ %9, %4 ], [ %123, %120 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  store ptr %18, ptr %22, align 8, !tbaa !124
  %24 = getelementptr inbounds %struct.LinkNode, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !126
  %26 = icmp eq ptr %25, null
  br i1 %26, label %128, label %27

27:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %28 = icmp eq ptr %25, %13
  br i1 %28, label %29, label %30

29:                                               ; preds = %27, %67
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %128

30:                                               ; preds = %27, %67
  %31 = phi ptr [ %68, %67 ], [ %25, %27 ]
  %32 = phi i32 [ 0, %67 ], [ %17, %27 ]
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, i8 noundef zeroext 4, ptr noundef %31) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 4
  br label %37

37:                                               ; preds = %35, %61
  %38 = phi ptr [ %33, %35 ], [ %63, %61 ]
  %39 = phi i32 [ %32, %35 ], [ %62, %61 ]
  %40 = load ptr, ptr %36, align 8, !tbaa !34
  %41 = icmp eq ptr %40, %38
  br i1 %41, label %61, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 4
  %44 = load i8, ptr %43, align 2, !tbaa !82
  %45 = and i8 %44, 8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %42
  %48 = call fastcc i32 @bm_edge_flagged_radial_count(ptr noundef nonnull %38) #16
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %38, ptr noundef nonnull %31) #16
  %52 = getelementptr inbounds %struct.BMHeader, ptr %51, i64 0, i32 4
  %53 = load i8, ptr %52, align 2, !tbaa !88
  %54 = and i8 %53, 8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = add i32 %39, 1
  %58 = zext i32 %39 to i64
  %59 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 %58, i32 1
  store ptr %51, ptr %59, align 8, !tbaa !130
  %60 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 4
  store ptr %38, ptr %60, align 8, !tbaa !34
  br label %61

61:                                               ; preds = %50, %56, %37, %42, %47
  %62 = phi i32 [ %39, %47 ], [ %39, %42 ], [ %39, %37 ], [ %39, %50 ], [ %57, %56 ]
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %37, !llvm.loop !132

65:                                               ; preds = %61, %30
  %66 = phi i32 [ %32, %30 ], [ %62, %61 ]
  switch i32 %66, label %70 [
    i32 1, label %67
    i32 0, label %115
  ]

67:                                               ; preds = %65
  %68 = load ptr, ptr %14, align 8, !tbaa !130
  %69 = icmp eq ptr %68, %13
  br i1 %69, label %29, label %30

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = call fastcc ptr @BM_edge_other_vert(ptr noundef %72, ptr noundef %31) #16
  %74 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2
  %75 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %76 = zext i32 %66 to i64
  br label %77

77:                                               ; preds = %70, %77
  %78 = phi i64 [ 0, %70 ], [ %84, %77 ]
  %79 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 %78
  %80 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 %78, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !130
  %82 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 2
  %83 = call float @angle_signed_on_axis_v3v3v3_v3(ptr noundef nonnull %74, ptr noundef nonnull %75, ptr noundef nonnull %82, ptr noundef %1) #15
  store float %83, ptr %79, align 8, !tbaa !133
  %84 = add nuw nsw i64 %78, 1
  %85 = icmp eq i64 %84, %76
  br i1 %85, label %86, label %77, !llvm.loop !134

86:                                               ; preds = %77
  call void @qsort(ptr noundef nonnull %2, i64 noundef %76, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float_reverse) #15
  %87 = alloca [16 x i8], align 16
  store ptr %20, ptr %87, align 16, !tbaa !124
  %88 = getelementptr inbounds %struct.LinkNode, ptr %87, i64 0, i32 1
  store ptr %31, ptr %88, align 8, !tbaa !126
  %89 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 4
  %90 = load i8, ptr %89, align 2, !tbaa !88
  %91 = or i8 %90, 8
  store i8 %91, ptr %89, align 2, !tbaa !88
  %92 = icmp eq i32 %66, 0
  %93 = call i32 @llvm.usub.sat.i32(i32 %66, i32 1)
  %94 = or i1 %15, %92
  br i1 %94, label %115, label %95

95:                                               ; preds = %86, %107
  %96 = phi i32 [ %114, %107 ], [ %93, %86 ]
  %97 = phi i32 [ %96, %107 ], [ %66, %86 ]
  %98 = phi ptr [ %108, %107 ], [ %22, %86 ]
  %99 = phi ptr [ %109, %107 ], [ %19, %86 ]
  %100 = add i32 %97, -1
  %101 = zext i32 %100 to i64
  %102 = icmp eq ptr %98, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = load ptr, ptr %98, align 8, !tbaa !124
  br label %107

105:                                              ; preds = %95
  %106 = alloca [16 x i8], align 16
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi ptr [ %104, %103 ], [ null, %105 ]
  %109 = phi ptr [ %98, %103 ], [ %106, %105 ]
  store ptr %99, ptr %109, align 8, !tbaa !124
  %110 = getelementptr inbounds %struct.VertOrder, ptr %2, i64 %101, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !130
  %112 = getelementptr inbounds %struct.LinkNode, ptr %109, i64 0, i32 1
  store ptr %111, ptr %112, align 8, !tbaa !126
  %113 = icmp eq i32 %96, 0
  %114 = call i32 @llvm.usub.sat.i32(i32 %96, i32 1)
  br i1 %113, label %120, label %95, !llvm.loop !135

115:                                              ; preds = %65, %86
  %116 = phi ptr [ %87, %86 ], [ %20, %65 ]
  %117 = phi i32 [ %93, %86 ], [ %66, %65 ]
  %118 = icmp eq ptr %19, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %107, %115, %119
  %121 = phi i32 [ %117, %115 ], [ %117, %119 ], [ %114, %107 ]
  %122 = phi ptr [ %116, %115 ], [ %116, %119 ], [ %87, %107 ]
  %123 = phi ptr [ %23, %115 ], [ %19, %119 ], [ %109, %107 ]
  %124 = phi ptr [ %21, %115 ], [ %22, %119 ], [ %108, %107 ]
  %125 = phi ptr [ null, %115 ], [ %23, %119 ], [ %23, %107 ]
  %126 = phi ptr [ %22, %115 ], [ %21, %119 ], [ %21, %107 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  %127 = icmp eq ptr %123, null
  br i1 %127, label %128, label %16

128:                                              ; preds = %120, %16, %29
  %129 = phi ptr [ %20, %29 ], [ %20, %16 ], [ %122, %120 ]
  %130 = phi i8 [ 1, %29 ], [ 0, %16 ], [ 0, %120 ]
  %131 = icmp eq ptr %129, null
  br i1 %131, label %144, label %132

132:                                              ; preds = %128, %139
  %133 = phi ptr [ %135, %139 ], [ %129, %128 ]
  %134 = phi ptr [ %133, %139 ], [ null, %128 ]
  %135 = load ptr, ptr %133, align 8, !tbaa !124
  store ptr %134, ptr %133, align 8, !tbaa !124
  %136 = getelementptr inbounds %struct.LinkNode, ptr %133, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !126
  %138 = icmp eq ptr %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.BMHeader, ptr %137, i64 0, i32 4
  %141 = load i8, ptr %140, align 2, !tbaa !88
  %142 = and i8 %141, -9
  store i8 %142, ptr %140, align 2, !tbaa !88
  %143 = icmp eq ptr %135, null
  br i1 %143, label %144, label %132, !llvm.loop !136

144:                                              ; preds = %132, %139, %128
  ret i8 %130
}

; Function Attrs: optsize
declare float @angle_on_axis_v3v3v3_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bm_edge_flagged_radial_first(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %15, %13 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMHeader, ptr %8, i64 0, i32 4
  %10 = load i8, ptr %9, align 2, !tbaa !81
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %5, !llvm.loop !138

17:                                               ; preds = %13, %5, %1
  %18 = phi ptr [ null, %1 ], [ null, %13 ], [ %6, %5 ]
  ret ptr %18
}

; Function Attrs: optsize
declare float @angle_signed_on_axis_v3v3v3_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @BLI_sortutil_cmp_float_reverse(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !139 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %1, ptr %4, align 4, !tbaa !140
  %5 = add nsw i8 %1, -4
  %6 = sext i8 %5 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @switch.table.BM_iter_init, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i8 %5 to i64
  %10 = getelementptr inbounds [4 x ptr], ptr @switch.table.BM_iter_init.7, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr %8, ptr %13, align 8, !tbaa !141
  store ptr %11, ptr %12, align 8, !tbaa !103
  store ptr %2, ptr %0, align 8, !tbaa !142
  tail call void %8(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !143 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !144 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !56
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !56
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !56
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #13 !PGOFuncName !145 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !56
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !56
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { cold optsize }

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
!34 = !{!35, !37, i64 48}
!35 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !37, i64 40}
!42 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !43, i64 48, !43, i64 64}
!43 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!44 = !{i8 0, i8 2}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !37, i64 32}
!48 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!49 = !{!48, !37, i64 40}
!50 = distinct !{!50, !46}
!51 = !{!"bmesh_mods.c:bmesh_disk_edge_next"}
!52 = !{!42, !37, i64 32}
!53 = !{!42, !37, i64 48}
!54 = !{!37, !37, i64 0}
!55 = !{!48, !37, i64 16}
!56 = !{!57, !57, i64 0}
!57 = !{!"float", !38, i64 0}
!58 = !{!48, !37, i64 56}
!59 = !{!48, !37, i64 0}
!60 = distinct !{!60, !46}
!61 = distinct !{!61, !46}
!62 = !{!48, !37, i64 24}
!63 = !{!64, !40, i64 32}
!64 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !65, i64 48}
!65 = !{!"short", !38, i64 0}
!66 = distinct !{!66, !46}
!67 = distinct !{!67, !46}
!68 = distinct !{!68, !46}
!69 = !{!"bmesh_mods.c:BM_edge_is_manifold"}
!70 = !{!"bmesh_mods.c:BM_edge_is_boundary"}
!71 = !{!64, !37, i64 24}
!72 = distinct !{!72, !46}
!73 = distinct !{!73, !46}
!74 = !{!"bmesh_mods.c:BM_loop_is_adjacent"}
!75 = !{!48, !37, i64 64}
!76 = distinct !{!76, !46}
!77 = distinct !{!77, !46}
!78 = distinct !{!78, !46}
!79 = !{!"bmesh_mods.c:copy_v3_v3"}
!80 = !{!40, !40, i64 0}
!81 = !{!64, !38, i64 14}
!82 = !{!42, !38, i64 14}
!83 = distinct !{!83, !46}
!84 = distinct !{!84, !46}
!85 = distinct !{!85, !46}
!86 = distinct !{!86, !46}
!87 = distinct !{!87, !46}
!88 = !{!35, !38, i64 14}
!89 = distinct !{!89, !46}
!90 = distinct !{!90, !46}
!91 = distinct !{!91, !46}
!92 = distinct !{!92, !46}
!93 = !{!42, !37, i64 24}
!94 = distinct !{!94, !46}
!95 = distinct !{!95, !46}
!96 = distinct !{!96, !46}
!97 = !{!"bmesh_mods.c:bm_face_split_edgenet_find_loop"}
!98 = distinct !{!98, !46}
!99 = !{!"bmesh_mods.c:bm_edge_flagged_radial_count"}
!100 = distinct !{!100, !46}
!101 = !{!"bmesh_mods.c:BM_iter_new"}
!102 = !{!"bmesh_mods.c:BM_iter_step"}
!103 = !{!104, !37, i64 48}
!104 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!105 = !{!"bmesh_mods.c:BM_edge_other_vert"}
!106 = distinct !{!106, !46}
!107 = distinct !{!107, !46}
!108 = !{!42, !38, i64 13}
!109 = distinct !{!109, !46}
!110 = distinct !{!110, !46}
!111 = distinct !{!111, !46}
!112 = distinct !{!112, !46}
!113 = distinct !{!113, !46}
!114 = !{!"bmesh_mods.c:sub_v3_v3v3"}
!115 = !{!"bmesh_mods.c:madd_v3_v3v3fl"}
!116 = distinct !{!116, !46}
!117 = !{!"bmesh_mods.c:normalize_v3"}
!118 = !{!"bmesh_mods.c:cross_v3_v3v3"}
!119 = !{!"bmesh_mods.c:dot_v3v3"}
!120 = !{!"bmesh_mods.c:negate_v3_v3"}
!121 = !{!"bmesh_mods.c:len_squared_v3v3"}
!122 = !{!64, !38, i64 13}
!123 = !{!"bmesh_mods.c:bm_face_split_edgenet_find_loop_pair"}
!124 = !{!125, !37, i64 0}
!125 = !{!"LinkNode", !37, i64 0, !37, i64 8}
!126 = !{!125, !37, i64 8}
!127 = distinct !{!127, !46}
!128 = distinct !{!128, !46}
!129 = !{!"bmesh_mods.c:bm_face_split_edgenet_find_loop_walk"}
!130 = !{!131, !37, i64 8}
!131 = !{!"VertOrder", !57, i64 0, !37, i64 8}
!132 = distinct !{!132, !46}
!133 = !{!131, !57, i64 0}
!134 = distinct !{!134, !46}
!135 = distinct !{!135, !46}
!136 = distinct !{!136, !46}
!137 = !{!"bmesh_mods.c:bm_edge_flagged_radial_first"}
!138 = distinct !{!138, !46}
!139 = !{!"bmesh_mods.c:BM_iter_init"}
!140 = !{!104, !38, i64 60}
!141 = !{!104, !37, i64 40}
!142 = !{!38, !38, i64 0}
!143 = !{!"bmesh_mods.c:normalize_v3_v3"}
!144 = !{!"bmesh_mods.c:mul_v3_v3fl"}
!145 = !{!"bmesh_mods.c:zero_v3"}
