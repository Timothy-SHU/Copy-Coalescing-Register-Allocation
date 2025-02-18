; ModuleID = 'blender/source/blender/blenkernel/intern/editmesh.c'
source_filename = "blender/source/blender/blenkernel/intern/editmesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_editmesh_create = private unnamed_addr constant [20 x i8] c"BKE_editmesh_create\00", align 1
@__func__.BKE_editmesh_copy = private unnamed_addr constant [18 x i8] c"BKE_editmesh_copy\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_editmesh_color_ensure = private unnamed_addr constant [26 x i8] c"BKE_editmesh_color_ensure\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@__func__.editmesh_tessface_calc_intern = private unnamed_addr constant [30 x i8] c"editmesh_tessface_calc_intern\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_editmesh_create(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 112, ptr noundef nonnull @__func__.BKE_editmesh_create) #5
  store ptr %0, ptr %4, align 8, !tbaa !38
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = shl nsw i32 %8, 1
  %12 = sub nsw i32 %10, %11
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %6
  %17 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %18 = tail call i64 %17(ptr noundef nonnull %14) #5
  %19 = udiv i64 %18, 24
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %16, %6
  %22 = phi i32 [ %20, %16 ], [ 0, %6 ]
  %23 = load ptr, ptr %13, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  %25 = icmp slt i32 %22, %12
  %26 = select i1 %24, i1 true, i1 %25
  %27 = shl nsw i32 %12, 1
  %28 = icmp sgt i32 %22, %27
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  br i1 %24, label %33, label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %32(ptr noundef nonnull %23) #5
  br label %33

33:                                               ; preds = %31, %30
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %35 = sext i32 %12 to i64
  %36 = mul nsw i64 %35, 24
  %37 = tail call ptr %34(i64 noundef %36, ptr noundef nonnull @__func__.editmesh_tessface_calc_intern) #5
  br label %38

38:                                               ; preds = %21, %33
  %39 = phi ptr [ %37, %33 ], [ %23, %21 ]
  store ptr %39, ptr %13, align 8, !tbaa !48
  %40 = load ptr, ptr %4, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 4
  tail call void @BM_bmesh_calc_tessellation(ptr noundef %40, ptr noundef %39, ptr noundef nonnull %41) #5
  br label %42

42:                                               ; preds = %38, %2
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_editmesh_tessface_calc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = shl nsw i32 %4, 1
  %8 = sub nsw i32 %6, %7
  %9 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %14 = tail call i64 %13(ptr noundef nonnull %10) #5
  %15 = udiv i64 %14, 24
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i32 [ %16, %12 ], [ 0, %1 ]
  %19 = load ptr, ptr %9, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  %21 = icmp slt i32 %18, %8
  %22 = select i1 %20, i1 true, i1 %21
  %23 = shl nsw i32 %8, 1
  %24 = icmp sgt i32 %18, %23
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  br i1 %20, label %29, label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %19) #5
  br label %29

29:                                               ; preds = %27, %26
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %31 = sext i32 %8 to i64
  %32 = mul nsw i64 %31, 24
  %33 = tail call ptr %30(i64 noundef %32, ptr noundef nonnull @__func__.editmesh_tessface_calc_intern) #5
  br label %34

34:                                               ; preds = %17, %29
  %35 = phi ptr [ %33, %29 ], [ %19, %17 ]
  store ptr %35, ptr %9, align 8, !tbaa !48
  %36 = load ptr, ptr %0, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  tail call void @BM_bmesh_calc_tessellation(ptr noundef %36, ptr noundef %35, ptr noundef nonnull %37) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_editmesh_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 112, ptr noundef nonnull @__func__.BKE_editmesh_copy) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false), !tbaa.struct !49
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 5
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 8
  store ptr null, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 9
  store i32 0, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 10
  store ptr null, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 11
  store i32 0, ptr %8, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = tail call ptr @BM_mesh_copy(ptr noundef %9) #5
  store ptr %10, ptr %3, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 3
  store ptr null, ptr %11, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare ptr @BM_mesh_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_editmesh_from_object(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_editmesh_update_linked_customdata(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 27
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 15) #5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %3, i32 noundef 15) #5
  %8 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 26
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %8, i32 noundef 16, i32 noundef %7) #5
  %9 = tail call i32 @CustomData_get_render_layer(ptr noundef nonnull %3, i32 noundef 15) #5
  tail call void @CustomData_set_layer_render(ptr noundef nonnull %8, i32 noundef 16, i32 noundef %9) #5
  %10 = tail call i32 @CustomData_get_clone_layer(ptr noundef nonnull %3, i32 noundef 15) #5
  tail call void @CustomData_set_layer_clone(ptr noundef nonnull %8, i32 noundef 16, i32 noundef %10) #5
  %11 = tail call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %3, i32 noundef 15) #5
  tail call void @CustomData_set_layer_stencil(ptr noundef nonnull %8, i32 noundef 16, i32 noundef %11) #5
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_active_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_set_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_render_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_set_layer_render(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_clone_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_set_layer_clone(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_set_layer_stencil(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_editmesh_free_derivedmesh(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 10
  store i32 1, ptr %6, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 95
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  tail call void %8(ptr noundef nonnull %3) #5
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !64
  %15 = icmp eq ptr %11, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 10
  store i32 1, ptr %17, align 4, !tbaa !65
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  tail call void %19(ptr noundef nonnull %11) #5
  br label %20

20:                                               ; preds = %16, %13, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_editmesh_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 10
  store i32 1, ptr %6, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 95
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  tail call void %8(ptr noundef nonnull %3) #5
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !64
  %15 = icmp eq ptr %11, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 10
  store i32 1, ptr %17, align 4, !tbaa !65
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  tail call void %19(ptr noundef nonnull %11) #5
  br label %20

20:                                               ; preds = %9, %13, %16
  %21 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %22) #5
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %31(ptr noundef nonnull %28) #5
  br label %32

32:                                               ; preds = %26, %30
  store ptr null, ptr %21, align 8, !tbaa !53
  store ptr null, ptr %27, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 9
  store i32 0, ptr %33, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 11
  store i32 0, ptr %34, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %39(ptr noundef nonnull %36) #5
  br label %40

40:                                               ; preds = %38, %32
  %41 = load ptr, ptr %0, align 8, !tbaa !38
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @BM_mesh_free(ptr noundef nonnull %41) #5
  br label %44

44:                                               ; preds = %43, %40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_editmesh_color_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %9) #5
  br label %13

13:                                               ; preds = %11, %7
  store ptr null, ptr %2, align 8, !tbaa !53
  store ptr null, ptr %8, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 9
  store i32 0, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 11
  store i32 0, ptr %15, align 8, !tbaa !56
  ret void
}

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_editmesh_color_ensure(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %1, label %62 [
    i8 1, label %3
    i8 8, label %31
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %62, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #5
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #5
  br label %21

21:                                               ; preds = %15, %19
  store ptr null, ptr %10, align 8, !tbaa !53
  store ptr null, ptr %16, align 8, !tbaa !55
  store i32 0, ptr %4, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 11
  store i32 0, ptr %22, align 8, !tbaa !56
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %24 = load ptr, ptr %0, align 8, !tbaa !38
  %25 = load i32, ptr %24, align 8, !tbaa !69
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr %23(i64 noundef %27, ptr noundef nonnull @__func__.BKE_editmesh_color_ensure) #5
  store ptr %28, ptr %10, align 8, !tbaa !53
  %29 = load ptr, ptr %0, align 8, !tbaa !38
  %30 = load i32, ptr %29, align 8, !tbaa !69
  store i32 %30, ptr %4, align 8, !tbaa !54
  br label %62

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 11
  %33 = load i32, ptr %32, align 8, !tbaa !56
  %34 = load ptr, ptr %0, align 8, !tbaa !38
  %35 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !43
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %62, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %43(ptr noundef nonnull %40) #5
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %49(ptr noundef nonnull %46) #5
  br label %50

50:                                               ; preds = %44, %48
  store ptr null, ptr %39, align 8, !tbaa !53
  store ptr null, ptr %45, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 9
  store i32 0, ptr %51, align 8, !tbaa !54
  store i32 0, ptr %32, align 8, !tbaa !56
  %52 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %53 = load ptr, ptr %0, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.BMesh, ptr %53, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !43
  %56 = sext i32 %55 to i64
  %57 = shl nsw i64 %56, 2
  %58 = tail call ptr %52(i64 noundef %57, ptr noundef nonnull @__func__.BKE_editmesh_color_ensure) #5
  store ptr %58, ptr %45, align 8, !tbaa !55
  %59 = load ptr, ptr %0, align 8, !tbaa !38
  %60 = getelementptr inbounds %struct.BMesh, ptr %59, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !43
  store i32 %61, ptr %32, align 8, !tbaa !56
  br label %62

62:                                               ; preds = %2, %31, %50, %3, %21
  ret void
}

declare void @BM_bmesh_calc_tessellation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!39 = !{!"BMEditMesh", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !35, i64 48, !41, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !40, i64 88, !42, i64 92, !42, i64 94, !35, i64 96, !40, i64 104}
!40 = !{!"int", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!44, !40, i64 12}
!44 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !45, i64 144, !45, i64 344, !45, i64 544, !45, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !46, i64 960, !35, i64 976, !46, i64 984, !35, i64 1000}
!45 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!46 = !{!"ListBase", !35, i64 0, !35, i64 8}
!47 = !{!44, !40, i64 8}
!48 = !{!39, !35, i64 24}
!49 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !50, i64 24, i64 8, !34, i64 32, i64 4, !50, i64 40, i64 8, !34, i64 48, i64 8, !34, i64 56, i64 8, !51, i64 64, i64 8, !34, i64 72, i64 4, !50, i64 80, i64 8, !34, i64 88, i64 4, !50, i64 92, i64 2, !52, i64 94, i64 2, !52, i64 96, i64 8, !34, i64 104, i64 4, !50}
!50 = !{!40, !40, i64 0}
!51 = !{!41, !41, i64 0}
!52 = !{!42, !42, i64 0}
!53 = !{!39, !35, i64 64}
!54 = !{!39, !40, i64 72}
!55 = !{!39, !35, i64 80}
!56 = !{!39, !40, i64 88}
!57 = !{!58, !35, i64 296}
!58 = !{!"Object", !59, i64 0, !35, i64 120, !35, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !60, i64 312, !35, i64 360, !46, i64 368, !46, i64 384, !46, i64 400, !46, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !61, i64 616, !61, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !61, i64 988, !61, i64 992, !61, i64 996, !61, i64 1000, !61, i64 1004, !61, i64 1008, !61, i64 1012, !61, i64 1016, !61, i64 1020, !61, i64 1024, !61, i64 1028, !61, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !61, i64 1048, !61, i64 1052, !46, i64 1056, !46, i64 1072, !46, i64 1088, !46, i64 1104, !61, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !46, i64 1176, !46, i64 1192, !46, i64 1208, !46, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !61, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !41, i64 1304, !41, i64 1312, !40, i64 1320, !40, i64 1324, !46, i64 1328, !46, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !46, i64 1400, !35, i64 1416}
!59 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!60 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!61 = !{!"float", !36, i64 0}
!62 = !{!63, !35, i64 272}
!63 = !{!"Mesh", !59, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !45, i64 280, !45, i64 480, !45, i64 680, !45, i64 880, !45, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !40, i64 1344, !42, i64 1348, !42, i64 1350, !61, i64 1352, !40, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !42, i64 1366, !35, i64 1368}
!64 = !{!39, !35, i64 48}
!65 = !{!66, !40, i64 1020}
!66 = !{!"DerivedMesh", !45, i64 0, !45, i64 200, !45, i64 400, !45, i64 600, !45, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !35, i64 1032, !35, i64 1040, !40, i64 1048, !61, i64 1052, !40, i64 1056, !40, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!67 = !{!66, !35, i64 1680}
!68 = !{!39, !35, i64 40}
!69 = !{!44, !40, i64 0}
