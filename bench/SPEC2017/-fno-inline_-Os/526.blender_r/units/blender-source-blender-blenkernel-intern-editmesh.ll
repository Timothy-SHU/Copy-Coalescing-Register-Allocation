; ModuleID = 'blender/source/blender/blenkernel/intern/editmesh.c'
source_filename = "blender/source/blender/blenkernel/intern/editmesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_editmesh_create = private unnamed_addr constant [20 x i8] c"BKE_editmesh_create\00", align 1
@__func__.BKE_editmesh_copy = private unnamed_addr constant [18 x i8] c"BKE_editmesh_copy\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_editmesh_color_ensure = private unnamed_addr constant [26 x i8] c"BKE_editmesh_color_ensure\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@__func__.editmesh_tessface_calc_intern = private unnamed_addr constant [30 x i8] c"editmesh_tessface_calc_intern\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_editmesh_create(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 112, ptr noundef nonnull @__func__.BKE_editmesh_create) #6
  store ptr %0, ptr %4, align 8, !tbaa !38
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %4) #7
  br label %7

7:                                                ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_editmesh_tessface_calc(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @editmesh_tessface_calc_intern(ptr noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_editmesh_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 112, ptr noundef nonnull @__func__.BKE_editmesh_copy) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false), !tbaa.struct !43
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 5
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 8
  store ptr null, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 9
  store i32 0, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 10
  store ptr null, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 11
  store i32 0, ptr %8, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = tail call ptr @BM_mesh_copy(ptr noundef %9) #6
  store ptr %10, ptr %3, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 3
  store ptr null, ptr %11, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: optsize
declare ptr @BM_mesh_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_editmesh_from_object(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @editmesh_tessface_calc_intern(ptr noundef %0) unnamed_addr #0 !PGOFuncName !61 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !64
  %7 = tail call fastcc i32 @poly_to_tri_count(i32 noundef %4, i32 noundef %6) #7
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %13 = tail call i64 %12(ptr noundef nonnull %9) #6
  %14 = udiv i64 %13, 24
  %15 = trunc i64 %14 to i32
  %16 = load ptr, ptr %8, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  %18 = icmp sgt i32 %7, %15
  %19 = select i1 %17, i1 true, i1 %18
  %20 = shl nsw i32 %7, 1
  %21 = icmp slt i32 %20, %15
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  br i1 %17, label %26, label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %16) #6
  br label %26

26:                                               ; preds = %1, %24, %23
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %28 = sext i32 %7 to i64
  %29 = mul nsw i64 %28, 24
  %30 = tail call ptr %27(i64 noundef %29, ptr noundef nonnull @__func__.editmesh_tessface_calc_intern) #6
  br label %31

31:                                               ; preds = %11, %26
  %32 = phi ptr [ %30, %26 ], [ %16, %11 ]
  store ptr %32, ptr %8, align 8, !tbaa !51
  %33 = load ptr, ptr %0, align 8, !tbaa !38
  %34 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  tail call void @BM_bmesh_calc_tessellation(ptr noundef %33, ptr noundef %32, ptr noundef nonnull %34) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_editmesh_update_linked_customdata(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 27
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 15) #6
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %3, i32 noundef 15) #6
  %8 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 26
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %8, i32 noundef 16, i32 noundef %7) #6
  %9 = tail call i32 @CustomData_get_render_layer(ptr noundef nonnull %3, i32 noundef 15) #6
  tail call void @CustomData_set_layer_render(ptr noundef nonnull %8, i32 noundef 16, i32 noundef %9) #6
  %10 = tail call i32 @CustomData_get_clone_layer(ptr noundef nonnull %3, i32 noundef 15) #6
  tail call void @CustomData_set_layer_clone(ptr noundef nonnull %8, i32 noundef 16, i32 noundef %10) #6
  %11 = tail call i32 @CustomData_get_stencil_layer(ptr noundef nonnull %3, i32 noundef 15) #6
  tail call void @CustomData_set_layer_stencil(ptr noundef nonnull %8, i32 noundef 16, i32 noundef %11) #6
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_set_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_render_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_set_layer_render(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_clone_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_set_layer_clone(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_stencil_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_set_layer_stencil(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_editmesh_free_derivedmesh(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 10
  store i32 1, ptr %6, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 95
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  tail call void %8(ptr noundef nonnull %3) #6
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !65
  %15 = icmp eq ptr %11, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 10
  store i32 1, ptr %17, align 4, !tbaa !66
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  tail call void %19(ptr noundef nonnull %11) #6
  br label %20

20:                                               ; preds = %16, %13, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_editmesh_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_editmesh_free_derivedmesh(ptr noundef %0) #7
  tail call void @BKE_editmesh_color_free(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @BM_mesh_free(ptr noundef nonnull %8) #6
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_editmesh_color_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %9) #6
  br label %13

13:                                               ; preds = %11, %7
  store ptr null, ptr %2, align 8, !tbaa !47
  store ptr null, ptr %8, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 9
  store i32 0, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 11
  store i32 0, ptr %15, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_editmesh_color_ensure(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %1, label %38 [
    i8 1, label %3
    i8 8, label %19
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %38, label %9

9:                                                ; preds = %3
  tail call void @BKE_editmesh_color_free(ptr noundef nonnull %0) #7
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = load ptr, ptr %0, align 8, !tbaa !38
  %12 = load i32, ptr %11, align 8, !tbaa !70
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @__func__.BKE_editmesh_color_ensure) #6
  %16 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !47
  %17 = load ptr, ptr %0, align 8, !tbaa !38
  %18 = load i32, ptr %17, align 8, !tbaa !70
  store i32 %18, ptr %4, align 8, !tbaa !48
  br label %38

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !50
  %22 = load ptr, ptr %0, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !62
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  tail call void @BKE_editmesh_color_free(ptr noundef nonnull %0) #7
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %28 = load ptr, ptr %0, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.BMesh, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !62
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = tail call ptr %27(i64 noundef %32, ptr noundef nonnull @__func__.BKE_editmesh_color_ensure) #6
  %34 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 10
  store ptr %33, ptr %34, align 8, !tbaa !49
  %35 = load ptr, ptr %0, align 8, !tbaa !38
  %36 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !62
  store i32 %37, ptr %20, align 8, !tbaa !50
  br label %38

38:                                               ; preds = %2, %19, %26, %3, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @poly_to_tri_count(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !71 {
  %3 = shl nsw i32 %0, 1
  %4 = sub nsw i32 %1, %3
  ret i32 %4
}

; Function Attrs: optsize
declare void @BM_bmesh_calc_tessellation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"BMEditMesh", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !35, i64 48, !41, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !40, i64 88, !42, i64 92, !42, i64 94, !35, i64 96, !40, i64 104}
!40 = !{!"int", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !44, i64 24, i64 8, !34, i64 32, i64 4, !44, i64 40, i64 8, !34, i64 48, i64 8, !34, i64 56, i64 8, !45, i64 64, i64 8, !34, i64 72, i64 4, !44, i64 80, i64 8, !34, i64 88, i64 4, !44, i64 92, i64 2, !46, i64 94, i64 2, !46, i64 96, i64 8, !34, i64 104, i64 4, !44}
!44 = !{!40, !40, i64 0}
!45 = !{!41, !41, i64 0}
!46 = !{!42, !42, i64 0}
!47 = !{!39, !35, i64 64}
!48 = !{!39, !40, i64 72}
!49 = !{!39, !35, i64 80}
!50 = !{!39, !40, i64 88}
!51 = !{!39, !35, i64 24}
!52 = !{!53, !35, i64 296}
!53 = !{!"Object", !54, i64 0, !35, i64 120, !35, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !55, i64 312, !35, i64 360, !56, i64 368, !56, i64 384, !56, i64 400, !56, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !57, i64 616, !57, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !57, i64 988, !57, i64 992, !57, i64 996, !57, i64 1000, !57, i64 1004, !57, i64 1008, !57, i64 1012, !57, i64 1016, !57, i64 1020, !57, i64 1024, !57, i64 1028, !57, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !57, i64 1048, !57, i64 1052, !56, i64 1056, !56, i64 1072, !56, i64 1088, !56, i64 1104, !57, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !56, i64 1176, !56, i64 1192, !56, i64 1208, !56, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !57, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !41, i64 1304, !41, i64 1312, !40, i64 1320, !40, i64 1324, !56, i64 1328, !56, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !56, i64 1400, !35, i64 1416}
!54 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!55 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!56 = !{!"ListBase", !35, i64 0, !35, i64 8}
!57 = !{!"float", !36, i64 0}
!58 = !{!59, !35, i64 272}
!59 = !{!"Mesh", !54, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !60, i64 280, !60, i64 480, !60, i64 680, !60, i64 880, !60, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !40, i64 1344, !42, i64 1348, !42, i64 1350, !57, i64 1352, !40, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !42, i64 1366, !35, i64 1368}
!60 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!61 = !{!"editmesh.c:editmesh_tessface_calc_intern"}
!62 = !{!63, !40, i64 12}
!63 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !60, i64 144, !60, i64 344, !60, i64 544, !60, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !56, i64 960, !35, i64 976, !56, i64 984, !35, i64 1000}
!64 = !{!63, !40, i64 8}
!65 = !{!39, !35, i64 48}
!66 = !{!67, !40, i64 1020}
!67 = !{!"DerivedMesh", !60, i64 0, !60, i64 200, !60, i64 400, !60, i64 600, !60, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !35, i64 1032, !35, i64 1040, !40, i64 1048, !57, i64 1052, !40, i64 1056, !40, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!68 = !{!67, !35, i64 1680}
!69 = !{!39, !35, i64 40}
!70 = !{!63, !40, i64 0}
!71 = !{!"editmesh.c:poly_to_tri_count"}
