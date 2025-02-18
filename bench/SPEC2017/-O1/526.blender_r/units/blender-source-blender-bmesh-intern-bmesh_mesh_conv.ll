; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_mesh_conv.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_mesh_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MLoop = type { i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MSelect = type { i32, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }

@CD_MASK_BMESH = external local_unnamed_addr constant i64, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"mesh to bmesh vtable\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [96 x i8] c"%s had to generate shape key uid's in a situation we shouldn't need to! (bmesh internal error)\0A\00", align 1
@__func__.BM_mesh_bm_from_me = private unnamed_addr constant [19 x i8] c"BM_mesh_bm_from_me\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"mesh to bmesh etable\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"%s: Warning! Bad face in mesh \22%s\22 at index %d!, skipping\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"VSelConv\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ESelConv\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"FSelConv\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"loadeditbMesh vert\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"loadeditbMesh edge\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"loadeditbMesh poly\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"loadeditbMesh loop\00", align 1
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"Mesh selection history\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"currkey->data\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"vertMap\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_cd_validate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %3 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %2, i32 noundef 15) #5
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %5 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %4, i32 noundef 16) #5
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %37, label %7

7:                                                ; preds = %1
  %8 = icmp slt i32 %3, %5
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %4, i32 noundef 16) #5
  %11 = sext i32 %3 to i64
  %12 = sext i32 %10 to i64
  br label %13

13:                                               ; preds = %13, %9
  %14 = phi i64 [ %19, %13 ], [ %11, %9 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !34
  %16 = add nsw i64 %14, %12
  %17 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %16, i32 8
  tail call void @BM_data_layer_add_named(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 15, ptr noundef nonnull %17) #5
  %18 = trunc i64 %14 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %2, i32 noundef %18) #5
  %19 = add nsw i64 %14, 1
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %5, %20
  br i1 %21, label %37, label %13, !llvm.loop !43

22:                                               ; preds = %7
  %23 = icmp slt i32 %5, %3
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  %25 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %2, i32 noundef 15) #5
  %26 = sext i32 %5 to i64
  %27 = sext i32 %25 to i64
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi i64 [ %34, %28 ], [ %26, %24 ]
  %30 = load ptr, ptr %2, align 8, !tbaa !46
  %31 = add nsw i64 %29, %27
  %32 = getelementptr inbounds %struct.CustomDataLayer, ptr %30, i64 %31, i32 8
  tail call void @BM_data_layer_add_named(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull %32) #5
  %33 = trunc i64 %29 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %4, i32 noundef %33) #5
  %34 = add nsw i64 %29, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %3, %35
  br i1 %36, label %37, label %28, !llvm.loop !47

37:                                               ; preds = %28, %13, %22, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_add_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_set_layer_unique_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_cd_flag_ensure(ptr noundef %0, ptr noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %5 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %4, i32 noundef 29) #5
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %9 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %8, i32 noundef 29) #5
  %10 = icmp eq i8 %9, 0
  %11 = or disjoint i8 %7, 2
  %12 = select i1 %10, i8 %7, i8 %11
  %13 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %8, i32 noundef 30) #5
  %14 = icmp eq i8 %13, 0
  %15 = or disjoint i8 %12, 4
  %16 = select i1 %14, i8 %12, i8 %15
  %17 = or i8 %16, %2
  tail call void @BM_mesh_cd_flag_apply(ptr noundef %0, i8 noundef zeroext %17)
  %18 = icmp eq ptr %1, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 41
  store i8 %17, ptr %20, align 8, !tbaa !48
  br label %21

21:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %3 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %2, i32 noundef 29) #5
  %4 = icmp ne i8 %3, 0
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %7 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 29) #5
  %8 = icmp eq i8 %7, 0
  %9 = or disjoint i8 %5, 2
  %10 = select i1 %8, i8 %5, i8 %9
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 30) #5
  %12 = icmp eq i8 %11, 0
  %13 = or disjoint i8 %10, 4
  %14 = select i1 %12, i8 %10, i8 %13
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_cd_flag_apply(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %7 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 29) #5
  %8 = icmp eq i8 %7, 0
  br i1 %5, label %11, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %13

10:                                               ; preds = %9
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 29) #5
  br label %13

11:                                               ; preds = %2
  br i1 %8, label %13, label %12

12:                                               ; preds = %11
  tail call void @BM_data_layer_free(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 29) #5
  br label %13

13:                                               ; preds = %11, %12, %9, %10
  %14 = and i32 %3, 2
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %17 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %16, i32 noundef 29) #5
  %18 = icmp eq i8 %17, 0
  br i1 %15, label %21, label %19

19:                                               ; preds = %13
  br i1 %18, label %20, label %23

20:                                               ; preds = %19
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 29) #5
  br label %23

21:                                               ; preds = %13
  br i1 %18, label %23, label %22

22:                                               ; preds = %21
  tail call void @BM_data_layer_free(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 29) #5
  br label %23

23:                                               ; preds = %21, %22, %19, %20
  %24 = and i32 %3, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %27 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %26, i32 noundef 30) #5
  %28 = icmp eq i8 %27, 0
  br i1 %25, label %31, label %29

29:                                               ; preds = %23
  br i1 %28, label %30, label %33

30:                                               ; preds = %29
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 30) #5
  br label %33

31:                                               ; preds = %23
  br i1 %28, label %33, label %32

32:                                               ; preds = %31
  tail call void @BM_data_layer_free(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 30) #5
  br label %33

33:                                               ; preds = %31, %32, %29, %30
  ret void
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_bm_from_me(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %0, align 8, !tbaa !52
  tail call void @CustomData_free(ptr noundef nonnull %6, i32 noundef %7) #5
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !53
  tail call void @CustomData_free(ptr noundef nonnull %8, i32 noundef %10) #5
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !54
  tail call void @CustomData_free(ptr noundef nonnull %11, i32 noundef %13) #5
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !55
  tail call void @CustomData_free(ptr noundef nonnull %14, i32 noundef %16) #5
  %17 = icmp eq ptr %1, null
  br i1 %17, label %444, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %24 = load i64, ptr @CD_MASK_BMESH, align 8, !tbaa !57
  tail call void @CustomData_copy(ptr noundef nonnull %23, ptr noundef nonnull %6, i64 noundef %24, i32 noundef 0, i32 noundef 0) #5
  %25 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  tail call void @CustomData_copy(ptr noundef nonnull %25, ptr noundef nonnull %8, i64 noundef %24, i32 noundef 0, i32 noundef 0) #5
  %26 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  tail call void @CustomData_copy(ptr noundef nonnull %26, ptr noundef nonnull %11, i64 noundef %24, i32 noundef 0, i32 noundef 0) #5
  %27 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  tail call void @CustomData_copy(ptr noundef nonnull %27, ptr noundef nonnull %14, i64 noundef %24, i32 noundef 0, i32 noundef 0) #5
  %28 = load i32, ptr %19, align 8, !tbaa !56
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %6, i32 noundef %28, i8 noundef zeroext 1) #5
  %29 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %30 = load i32, ptr %29, align 4, !tbaa !59
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %8, i32 noundef %30, i8 noundef zeroext 2) #5
  %31 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %32 = load i32, ptr %31, align 4, !tbaa !60
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %11, i32 noundef %32, i8 noundef zeroext 4) #5
  %33 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %34 = load i32, ptr %33, align 8, !tbaa !61
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %14, i32 noundef %34, i8 noundef zeroext 8) #5
  br label %444

35:                                               ; preds = %18
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %37 = sext i32 %20 to i64
  %38 = shl nsw i64 %37, 3
  %39 = tail call ptr %36(i64 noundef %38, ptr noundef nonnull @.str) #5
  %40 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %41 = load i64, ptr @CD_MASK_BMESH, align 8, !tbaa !57
  tail call void @CustomData_copy(ptr noundef nonnull %40, ptr noundef nonnull %6, i64 noundef %41, i32 noundef 1, i32 noundef 0) #5
  %42 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  tail call void @CustomData_copy(ptr noundef nonnull %42, ptr noundef nonnull %8, i64 noundef %41, i32 noundef 1, i32 noundef 0) #5
  %43 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  tail call void @CustomData_copy(ptr noundef nonnull %43, ptr noundef nonnull %11, i64 noundef %41, i32 noundef 1, i32 noundef 0) #5
  %44 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  tail call void @CustomData_copy(ptr noundef nonnull %44, ptr noundef nonnull %14, i64 noundef %41, i32 noundef 1, i32 noundef 0) #5
  %45 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %14, i32 noundef 15) #5
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %35, %47
  %48 = phi i32 [ %54, %47 ], [ 0, %35 ]
  %49 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %14, i32 noundef 15, i32 noundef %48) #5
  %50 = load ptr, ptr %14, align 8, !tbaa !46
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.CustomDataLayer, ptr %50, i64 %51, i32 8
  %53 = tail call zeroext i8 @CustomData_set_layer_name(ptr noundef nonnull %11, i32 noundef 16, i32 noundef %48, ptr noundef nonnull %52) #5
  %54 = add nuw nsw i32 %48, 1
  %55 = icmp eq i32 %54, %45
  br i1 %55, label %56, label %47, !llvm.loop !63

56:                                               ; preds = %47, %35
  %57 = icmp eq i32 %4, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !64
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Key, ptr %60, i64 0, i32 6
  %64 = add nsw i32 %4, -1
  %65 = tail call ptr @BLI_findlink(ptr noundef nonnull %63, i32 noundef %64) #5
  br label %66

66:                                               ; preds = %56, %58, %62
  %67 = phi ptr [ %65, %62 ], [ null, %58 ], [ null, %56 ]
  %68 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !64
  %70 = icmp eq ptr %69, null
  br i1 %70, label %126, label %71

71:                                               ; preds = %66
  %72 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 27, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %73 = load ptr, ptr %68, align 8, !tbaa !64
  %74 = getelementptr inbounds %struct.Key, ptr %73, i64 0, i32 14
  %75 = load i32, ptr %74, align 4, !tbaa !65
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load ptr, ptr @stderr, align 8, !tbaa !62
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.BM_mesh_bm_from_me) #6
  %80 = load ptr, ptr %68, align 8, !tbaa !64
  %81 = getelementptr inbounds %struct.Key, ptr %80, i64 0, i32 14
  store i32 1, ptr %81, align 4, !tbaa !65
  %82 = getelementptr inbounds %struct.Key, ptr %80, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !62
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %77
  %86 = load i32, ptr %81, align 4, !tbaa !65
  br label %87

87:                                               ; preds = %85, %87
  %88 = phi i32 [ %86, %85 ], [ %90, %87 ]
  %89 = phi ptr [ %83, %85 ], [ %92, %87 ]
  %90 = add nsw i32 %88, 1
  %91 = getelementptr inbounds %struct.KeyBlock, ptr %89, i64 0, i32 9
  store i32 %88, ptr %91, align 4, !tbaa !67
  %92 = load ptr, ptr %89, align 8, !tbaa !62
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %87, !llvm.loop !69

94:                                               ; preds = %87
  store i32 %90, ptr %81, align 4, !tbaa !65
  br label %95

95:                                               ; preds = %77, %94, %71
  %96 = icmp eq ptr %67, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.KeyBlock, ptr %67, i64 0, i32 8
  %99 = load i32, ptr %98, align 8, !tbaa !70
  %100 = load i32, ptr %19, align 8, !tbaa !56
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.KeyBlock, ptr %67, i64 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !71
  %105 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 29
  store i32 %4, ptr %105, align 4, !tbaa !72
  br label %106

106:                                              ; preds = %102, %97, %95
  %107 = phi ptr [ %104, %102 ], [ null, %97 ], [ null, %95 ]
  %108 = load ptr, ptr %68, align 8, !tbaa !64
  %109 = getelementptr inbounds %struct.Key, ptr %108, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !62
  %111 = icmp eq ptr %110, null
  br i1 %111, label %126, label %112

112:                                              ; preds = %106, %112
  %113 = phi ptr [ %124, %112 ], [ %110, %106 ]
  %114 = phi i32 [ %123, %112 ], [ 0, %106 ]
  %115 = getelementptr inbounds %struct.KeyBlock, ptr %113, i64 0, i32 11
  %116 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %6, i32 noundef 28, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %115) #5
  %117 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %6, i32 noundef 28, i32 noundef %114) #5
  %118 = getelementptr inbounds %struct.KeyBlock, ptr %113, i64 0, i32 9
  %119 = load i32, ptr %118, align 4, !tbaa !67
  %120 = load ptr, ptr %6, align 8, !tbaa !73
  %121 = sext i32 %117 to i64
  %122 = getelementptr inbounds %struct.CustomDataLayer, ptr %120, i64 %121, i32 7
  store i32 %119, ptr %122, align 4, !tbaa !74
  %123 = add nuw nsw i32 %114, 1
  %124 = load ptr, ptr %113, align 8, !tbaa !62
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %112, !llvm.loop !76

126:                                              ; preds = %112, %106, %66
  %127 = phi ptr [ null, %66 ], [ %107, %106 ], [ %107, %112 ]
  %128 = load i32, ptr %19, align 8, !tbaa !56
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %6, i32 noundef %128, i8 noundef zeroext 1) #5
  %129 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %130 = load i32, ptr %129, align 4, !tbaa !59
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %8, i32 noundef %130, i8 noundef zeroext 2) #5
  %131 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %132 = load i32, ptr %131, align 4, !tbaa !60
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %11, i32 noundef %132, i8 noundef zeroext 4) #5
  %133 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %134 = load i32, ptr %133, align 8, !tbaa !61
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %14, i32 noundef %134, i8 noundef zeroext 8) #5
  %135 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 41
  %136 = load i8, ptr %135, align 8, !tbaa !48
  tail call void @BM_mesh_cd_flag_apply(ptr noundef nonnull %0, i8 noundef zeroext %136)
  %137 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 29) #5
  %138 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 29) #5
  %139 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 30) #5
  %140 = load ptr, ptr %68, align 8, !tbaa !64
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %126
  %143 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 27) #5
  br label %144

144:                                              ; preds = %126, %142
  %145 = phi i32 [ %143, %142 ], [ -1, %126 ]
  %146 = load i32, ptr %19, align 8, !tbaa !56
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %241

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  %150 = load ptr, ptr %149, align 8, !tbaa !77
  %151 = icmp ne ptr %127, null
  %152 = icmp ne i8 %3, 0
  %153 = and i1 %152, %151
  %154 = icmp eq i32 %137, -1
  %155 = sext i32 %137 to i64
  %156 = icmp eq i32 %145, -1
  %157 = sext i32 %145 to i64
  br label %158

158:                                              ; preds = %148, %235
  %159 = phi i64 [ 0, %148 ], [ %236, %235 ]
  %160 = phi ptr [ %150, %148 ], [ %237, %235 ]
  %161 = getelementptr inbounds [3 x float], ptr %127, i64 %159
  %162 = select i1 %153, ptr %161, ptr %160
  %163 = tail call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef %162, ptr noundef null, i32 noundef 4) #5
  %164 = getelementptr inbounds ptr, ptr %39, i64 %159
  store ptr %163, ptr %164, align 8, !tbaa !62
  %165 = getelementptr inbounds %struct.BMHeader, ptr %163, i64 0, i32 1
  %166 = trunc i64 %159 to i32
  store i32 %166, ptr %165, align 8, !tbaa !78
  %167 = getelementptr inbounds %struct.MVert, ptr %160, i64 0, i32 2
  %168 = load i8, ptr %167, align 2, !tbaa !80
  %169 = and i8 %168, -2
  %170 = tail call zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext %169) #5
  %171 = getelementptr inbounds %struct.BMHeader, ptr %163, i64 0, i32 3
  store i8 %170, ptr %171, align 1, !tbaa !82
  %172 = load i8, ptr %167, align 2, !tbaa !80
  %173 = and i8 %172, 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %158
  tail call void @BM_vert_select_set(ptr noundef nonnull %0, ptr noundef %163, i8 noundef zeroext 1) #5
  br label %176

176:                                              ; preds = %175, %158
  %177 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 3
  %178 = getelementptr inbounds %struct.MVert, ptr %160, i64 0, i32 1
  %179 = load i16, ptr %178, align 2, !tbaa !84
  %180 = sitofp i16 %179 to float
  %181 = fmul float %180, 0x3F00002000000000
  store float %181, ptr %177, align 4, !tbaa !85
  %182 = getelementptr inbounds %struct.MVert, ptr %160, i64 0, i32 1, i64 1
  %183 = load i16, ptr %182, align 2, !tbaa !84
  %184 = sitofp i16 %183 to float
  %185 = fmul float %184, 0x3F00002000000000
  %186 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 3, i64 1
  store float %185, ptr %186, align 4, !tbaa !85
  %187 = getelementptr inbounds %struct.MVert, ptr %160, i64 0, i32 1, i64 2
  %188 = load i16, ptr %187, align 2, !tbaa !84
  %189 = sitofp i16 %188 to float
  %190 = fmul float %189, 0x3F00002000000000
  %191 = getelementptr inbounds %struct.BMVert, ptr %163, i64 0, i32 3, i64 2
  store float %190, ptr %191, align 4, !tbaa !85
  %192 = trunc i64 %159 to i32
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %40, ptr noundef nonnull %6, i32 noundef %192, ptr noundef %163, i8 noundef zeroext 1) #5
  br i1 %154, label %200, label %193

193:                                              ; preds = %176
  %194 = getelementptr inbounds %struct.MVert, ptr %160, i64 0, i32 3
  %195 = load i8, ptr %194, align 1, !tbaa !86
  %196 = uitofp i8 %195 to float
  %197 = fdiv float %196, 2.550000e+02
  %198 = load ptr, ptr %163, align 8, !tbaa !87
  %199 = getelementptr inbounds i8, ptr %198, i64 %155
  store float %197, ptr %199, align 4, !tbaa !85
  br label %200

200:                                              ; preds = %193, %176
  %201 = load ptr, ptr %68, align 8, !tbaa !64
  %202 = icmp eq ptr %201, null
  br i1 %202, label %235, label %203

203:                                              ; preds = %200
  br i1 %156, label %208, label %204

204:                                              ; preds = %203
  %205 = load ptr, ptr %163, align 8, !tbaa !87
  %206 = getelementptr inbounds i8, ptr %205, i64 %157
  %207 = trunc i64 %159 to i32
  store i32 %207, ptr %206, align 4, !tbaa !88
  br label %208

208:                                              ; preds = %204, %203
  %209 = getelementptr inbounds %struct.Key, ptr %201, i64 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !62
  %211 = icmp eq ptr %210, null
  br i1 %211, label %235, label %212

212:                                              ; preds = %208
  %213 = mul nuw nsw i64 %159, 3
  br label %214

214:                                              ; preds = %212, %231
  %215 = phi ptr [ %210, %212 ], [ %233, %231 ]
  %216 = phi i32 [ 0, %212 ], [ %232, %231 ]
  %217 = load ptr, ptr %163, align 8, !tbaa !87
  %218 = tail call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %6, ptr noundef %217, i32 noundef 28, i32 noundef %216) #5
  %219 = icmp eq ptr %218, null
  br i1 %219, label %231, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.KeyBlock, ptr %215, i64 0, i32 10
  %222 = load ptr, ptr %221, align 8, !tbaa !71
  %223 = getelementptr inbounds float, ptr %222, i64 %213
  %224 = load float, ptr %223, align 4, !tbaa !85
  store float %224, ptr %218, align 4, !tbaa !85
  %225 = getelementptr inbounds float, ptr %223, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !85
  %227 = getelementptr inbounds float, ptr %218, i64 1
  store float %226, ptr %227, align 4, !tbaa !85
  %228 = getelementptr inbounds float, ptr %223, i64 2
  %229 = load float, ptr %228, align 4, !tbaa !85
  %230 = getelementptr inbounds float, ptr %218, i64 2
  store float %229, ptr %230, align 4, !tbaa !85
  br label %231

231:                                              ; preds = %220, %214
  %232 = add nuw nsw i32 %216, 1
  %233 = load ptr, ptr %215, align 8, !tbaa !62
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %214, !llvm.loop !89

235:                                              ; preds = %231, %208, %200
  %236 = add nuw nsw i64 %159, 1
  %237 = getelementptr inbounds %struct.MVert, ptr %160, i64 1
  %238 = load i32, ptr %19, align 8, !tbaa !56
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %236, %239
  br i1 %240, label %158, label %241, !llvm.loop !90

241:                                              ; preds = %235, %144
  %242 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %243 = load i8, ptr %242, align 4, !tbaa !91
  %244 = and i8 %243, -2
  store i8 %244, ptr %242, align 4, !tbaa !91
  %245 = load i32, ptr %129, align 4, !tbaa !59
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %241
  %248 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %248(ptr noundef %39) #5
  br label %444

249:                                              ; preds = %241
  %250 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %251 = sext i32 %245 to i64
  %252 = shl nsw i64 %251, 3
  %253 = tail call ptr %250(i64 noundef %252, ptr noundef nonnull @.str.2) #5
  %254 = load i32, ptr %129, align 4, !tbaa !59
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %311

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 16
  %258 = load ptr, ptr %257, align 8, !tbaa !92
  %259 = icmp eq i32 %138, -1
  %260 = sext i32 %138 to i64
  %261 = icmp eq i32 %139, -1
  %262 = sext i32 %139 to i64
  br label %263

263:                                              ; preds = %256, %305
  %264 = phi i64 [ 0, %256 ], [ %306, %305 ]
  %265 = phi ptr [ %258, %256 ], [ %307, %305 ]
  %266 = load i32, ptr %265, align 4, !tbaa !93
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds ptr, ptr %39, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !62
  %270 = getelementptr inbounds %struct.MEdge, ptr %265, i64 0, i32 1
  %271 = load i32, ptr %270, align 4, !tbaa !95
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds ptr, ptr %39, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !62
  %275 = tail call ptr @BM_edge_create(ptr noundef nonnull %0, ptr noundef %269, ptr noundef %274, ptr noundef null, i32 noundef 4) #5
  %276 = getelementptr inbounds ptr, ptr %253, i64 %264
  store ptr %275, ptr %276, align 8, !tbaa !62
  %277 = getelementptr inbounds %struct.BMHeader, ptr %275, i64 0, i32 1
  %278 = trunc i64 %264 to i32
  store i32 %278, ptr %277, align 8, !tbaa !78
  %279 = getelementptr inbounds %struct.MEdge, ptr %265, i64 0, i32 4
  %280 = load i16, ptr %279, align 2, !tbaa !96
  %281 = and i16 %280, -2
  %282 = tail call zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext %281) #5
  %283 = getelementptr inbounds %struct.BMHeader, ptr %275, i64 0, i32 3
  store i8 %282, ptr %283, align 1, !tbaa !97
  %284 = load i16, ptr %279, align 2, !tbaa !96
  %285 = and i16 %284, 1
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %263
  tail call void @BM_edge_select_set(ptr noundef nonnull %0, ptr noundef %275, i8 noundef zeroext 1) #5
  br label %288

288:                                              ; preds = %287, %263
  %289 = trunc i64 %264 to i32
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %42, ptr noundef nonnull %8, i32 noundef %289, ptr noundef %275, i8 noundef zeroext 1) #5
  br i1 %259, label %297, label %290

290:                                              ; preds = %288
  %291 = getelementptr inbounds %struct.MEdge, ptr %265, i64 0, i32 3
  %292 = load i8, ptr %291, align 1, !tbaa !100
  %293 = uitofp i8 %292 to float
  %294 = fdiv float %293, 2.550000e+02
  %295 = load ptr, ptr %275, align 8, !tbaa !101
  %296 = getelementptr inbounds i8, ptr %295, i64 %260
  store float %294, ptr %296, align 4, !tbaa !85
  br label %297

297:                                              ; preds = %290, %288
  br i1 %261, label %305, label %298

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.MEdge, ptr %265, i64 0, i32 2
  %300 = load i8, ptr %299, align 4, !tbaa !102
  %301 = uitofp i8 %300 to float
  %302 = fdiv float %301, 2.550000e+02
  %303 = load ptr, ptr %275, align 8, !tbaa !101
  %304 = getelementptr inbounds i8, ptr %303, i64 %262
  store float %302, ptr %304, align 4, !tbaa !85
  br label %305

305:                                              ; preds = %297, %298
  %306 = add nuw nsw i64 %264, 1
  %307 = getelementptr inbounds %struct.MEdge, ptr %265, i64 1
  %308 = load i32, ptr %129, align 4, !tbaa !59
  %309 = sext i32 %308 to i64
  %310 = icmp slt i64 %306, %309
  br i1 %310, label %263, label %311, !llvm.loop !103

311:                                              ; preds = %305, %249
  %312 = load i8, ptr %242, align 4, !tbaa !91
  %313 = and i8 %312, -3
  store i8 %313, ptr %242, align 4, !tbaa !91
  %314 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 9
  %315 = load ptr, ptr %314, align 8, !tbaa !104
  %316 = load i32, ptr %133, align 8, !tbaa !61
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %378

318:                                              ; preds = %311
  %319 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 7
  %320 = load ptr, ptr %319, align 8, !tbaa !105
  %321 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 32
  %322 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %323 = icmp eq i8 %2, 0
  %324 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  br label %325

325:                                              ; preds = %318, %372
  %326 = phi ptr [ %320, %318 ], [ %375, %372 ]
  %327 = phi i32 [ 0, %318 ], [ %373, %372 ]
  %328 = phi i32 [ 0, %318 ], [ %374, %372 ]
  %329 = load i32, ptr %326, align 4, !tbaa !106
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.MLoop, ptr %315, i64 %330
  %332 = tail call fastcc ptr @bm_face_create_from_mpoly(ptr noundef nonnull %326, ptr noundef %331, ptr noundef nonnull %0, ptr noundef %39, ptr noundef %253)
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %336

334:                                              ; preds = %325
  %335 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @__func__.BM_mesh_bm_from_me, ptr noundef nonnull %324, i32 noundef %328)
  br label %372

336:                                              ; preds = %325
  %337 = load i32, ptr %15, align 4, !tbaa !55
  %338 = add nsw i32 %337, -1
  %339 = getelementptr inbounds %struct.BMHeader, ptr %332, i64 0, i32 1
  store i32 %338, ptr %339, align 8, !tbaa !78
  %340 = getelementptr inbounds %struct.MPoly, ptr %326, i64 0, i32 3
  %341 = load i8, ptr %340, align 2, !tbaa !108
  %342 = and i8 %341, -3
  %343 = tail call zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext %342) #5
  %344 = getelementptr inbounds %struct.BMHeader, ptr %332, i64 0, i32 3
  store i8 %343, ptr %344, align 1, !tbaa !109
  %345 = load i8, ptr %340, align 2, !tbaa !108
  %346 = and i8 %345, 2
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %336
  tail call void @BM_face_select_set(ptr noundef nonnull %0, ptr noundef nonnull %332, i8 noundef zeroext 1) #5
  br label %349

349:                                              ; preds = %348, %336
  %350 = getelementptr inbounds %struct.MPoly, ptr %326, i64 0, i32 2
  %351 = load i16, ptr %350, align 4, !tbaa !111
  %352 = getelementptr inbounds %struct.BMFace, ptr %332, i64 0, i32 5
  store i16 %351, ptr %352, align 8, !tbaa !112
  %353 = load i32, ptr %321, align 8, !tbaa !113
  %354 = icmp eq i32 %328, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  store ptr %332, ptr %322, align 8, !tbaa !114
  br label %356

356:                                              ; preds = %355, %349
  %357 = load i32, ptr %326, align 4, !tbaa !106
  %358 = getelementptr inbounds %struct.BMFace, ptr %332, i64 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !115
  br label %360

360:                                              ; preds = %360, %356
  %361 = phi i32 [ %357, %356 ], [ %366, %360 ]
  %362 = phi i32 [ %327, %356 ], [ %364, %360 ]
  %363 = phi ptr [ %359, %356 ], [ %368, %360 ]
  %364 = add nsw i32 %362, 1
  %365 = getelementptr inbounds %struct.BMHeader, ptr %363, i64 0, i32 1
  store i32 %362, ptr %365, align 8, !tbaa !78
  %366 = add nsw i32 %361, 1
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %43, ptr noundef nonnull %11, i32 noundef %361, ptr noundef %363, i8 noundef zeroext 1) #5
  %367 = getelementptr inbounds %struct.BMLoop, ptr %363, i64 0, i32 6
  %368 = load ptr, ptr %367, align 8, !tbaa !116
  %369 = icmp eq ptr %368, %359
  br i1 %369, label %370, label %360, !llvm.loop !118

370:                                              ; preds = %360
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %44, ptr noundef nonnull %14, i32 noundef %328, ptr noundef nonnull %332, i8 noundef zeroext 1) #5
  br i1 %323, label %372, label %371

371:                                              ; preds = %370
  tail call void @BM_face_normal_update(ptr noundef nonnull %332) #5
  br label %372

372:                                              ; preds = %370, %371, %334
  %373 = phi i32 [ %327, %334 ], [ %364, %371 ], [ %364, %370 ]
  %374 = add nuw nsw i32 %328, 1
  %375 = getelementptr inbounds %struct.MPoly, ptr %326, i64 1
  %376 = load i32, ptr %133, align 8, !tbaa !61
  %377 = icmp slt i32 %374, %376
  br i1 %377, label %325, label %378, !llvm.loop !119

378:                                              ; preds = %372, %311
  %379 = load i8, ptr %242, align 4, !tbaa !91
  %380 = and i8 %379, -13
  store i8 %380, ptr %242, align 4, !tbaa !91
  %381 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 6
  %382 = load ptr, ptr %381, align 8, !tbaa !120
  %383 = icmp eq ptr %382, null
  %384 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 29
  br i1 %383, label %440, label %385

385:                                              ; preds = %378
  %386 = load i32, ptr %384, align 4, !tbaa !121
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %436, label %388

388:                                              ; preds = %385
  %389 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %390 = load i32, ptr %0, align 8, !tbaa !52
  %391 = sext i32 %390 to i64
  %392 = shl nsw i64 %391, 3
  %393 = tail call ptr %389(i64 noundef %392, ptr noundef nonnull @.str.4) #5
  %394 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %395 = load i32, ptr %9, align 4, !tbaa !53
  %396 = sext i32 %395 to i64
  %397 = shl nsw i64 %396, 3
  %398 = tail call ptr %394(i64 noundef %397, ptr noundef nonnull @.str.5) #5
  %399 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %400 = load i32, ptr %15, align 4, !tbaa !55
  %401 = sext i32 %400 to i64
  %402 = shl nsw i64 %401, 3
  %403 = tail call ptr %399(i64 noundef %402, ptr noundef nonnull @.str.6) #5
  %404 = load i32, ptr %0, align 8, !tbaa !52
  %405 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null, ptr noundef %393, i32 noundef %404) #5
  %406 = load i32, ptr %9, align 4, !tbaa !53
  %407 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null, ptr noundef %398, i32 noundef %406) #5
  %408 = load i32, ptr %15, align 4, !tbaa !55
  %409 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null, ptr noundef %403, i32 noundef %408) #5
  %410 = load i32, ptr %384, align 4, !tbaa !121
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %432

412:                                              ; preds = %388
  %413 = load ptr, ptr %381, align 8, !tbaa !120
  br label %414

414:                                              ; preds = %412, %427
  %415 = phi ptr [ %429, %427 ], [ %413, %412 ]
  %416 = phi i32 [ %428, %427 ], [ 0, %412 ]
  %417 = getelementptr inbounds %struct.MSelect, ptr %415, i64 0, i32 1
  %418 = load i32, ptr %417, align 4, !tbaa !122
  switch i32 %418, label %427 [
    i32 0, label %421
    i32 1, label %419
    i32 2, label %420
  ]

419:                                              ; preds = %414
  br label %421

420:                                              ; preds = %414
  br label %421

421:                                              ; preds = %414, %420, %419
  %422 = phi ptr [ %398, %419 ], [ %403, %420 ], [ %393, %414 ]
  %423 = load i32, ptr %415, align 4, !tbaa !124
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds ptr, ptr %422, i64 %424
  %426 = load ptr, ptr %425, align 8, !tbaa !62
  tail call void @_bm_select_history_store(ptr noundef nonnull %0, ptr noundef %426) #5
  br label %427

427:                                              ; preds = %421, %414
  %428 = add nuw nsw i32 %416, 1
  %429 = getelementptr inbounds %struct.MSelect, ptr %415, i64 1
  %430 = load i32, ptr %384, align 4, !tbaa !121
  %431 = icmp slt i32 %428, %430
  br i1 %431, label %414, label %432, !llvm.loop !125

432:                                              ; preds = %427, %388
  %433 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %433(ptr noundef %393) #5
  %434 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %434(ptr noundef %398) #5
  %435 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %435(ptr noundef %403) #5
  br label %441

436:                                              ; preds = %385
  %437 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 29
  store i32 0, ptr %437, align 4, !tbaa !121
  br i1 %383, label %441, label %438

438:                                              ; preds = %436
  %439 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %439(ptr noundef nonnull %382) #5
  store ptr null, ptr %381, align 8, !tbaa !120
  br label %441

440:                                              ; preds = %378
  store i32 0, ptr %384, align 4, !tbaa !121
  br label %441

441:                                              ; preds = %440, %436, %438, %432
  %442 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %442(ptr noundef %39) #5
  %443 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %443(ptr noundef %253) #5
  br label %444

444:                                              ; preds = %22, %5, %441, %247
  ret void
}

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_init_pool(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @CustomData_get_layer_index_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_set_layer_name(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @CustomData_to_bmesh_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext) local_unnamed_addr #2

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bm_face_create_from_mpoly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !126
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = alloca i8, i64 %9, align 16
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %5
  %14 = zext nneg i32 %7 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %29, %15 ]
  %17 = phi ptr [ %1, %13 ], [ %30, %15 ]
  %18 = load i32, ptr %17, align 4, !tbaa !127
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %21, ptr %22, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.MLoop, ptr %17, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !129
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %4, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = getelementptr inbounds ptr, ptr %11, i64 %16
  store ptr %27, ptr %28, align 8, !tbaa !62
  %29 = add nuw nsw i64 %16, 1
  %30 = getelementptr inbounds %struct.MLoop, ptr %17, i64 1
  %31 = icmp eq i64 %29, %14
  br i1 %31, label %32, label %15, !llvm.loop !130

32:                                               ; preds = %15, %5
  %33 = call ptr @BM_face_create(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %7, ptr noundef null, i32 noundef 4) #5
  ret ptr %33
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_bm_to_me(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 29) #5
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 29) #5
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 30) #5
  %10 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = load i32, ptr %0, align 8, !tbaa !52
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %16 = sext i32 %12 to i64
  %17 = mul nsw i64 %16, 20
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.7) #5
  br label %19

19:                                               ; preds = %3, %14
  %20 = phi ptr [ %18, %14 ], [ null, %3 ]
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %26 = sext i32 %22 to i64
  %27 = mul nsw i64 %26, 12
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.8) #5
  br label %29

29:                                               ; preds = %19, %24
  %30 = phi ptr [ %28, %24 ], [ null, %19 ]
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !55
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %36 = sext i32 %32 to i64
  %37 = mul nsw i64 %36, 12
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.9) #5
  br label %39

39:                                               ; preds = %29, %34
  %40 = phi ptr [ %38, %34 ], [ null, %29 ]
  %41 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !54
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %46 = sext i32 %42 to i64
  %47 = shl nsw i64 %46, 3
  %48 = tail call ptr %45(i64 noundef %47, ptr noundef nonnull @.str.10) #5
  br label %49

49:                                               ; preds = %39, %44
  %50 = phi ptr [ %48, %44 ], [ null, %39 ]
  %51 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !77
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %56 = tail call ptr @CustomData_set_layer(ptr noundef nonnull %55, i32 noundef 0, ptr noundef null) #5
  br label %57

57:                                               ; preds = %54, %49
  %58 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %59 = load i32, ptr %10, align 8, !tbaa !56
  tail call void @CustomData_free(ptr noundef nonnull %58, i32 noundef %59) #5
  %60 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %61 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %62 = load i32, ptr %61, align 4, !tbaa !59
  tail call void @CustomData_free(ptr noundef nonnull %60, i32 noundef %62) #5
  %63 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %64 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %65 = load i32, ptr %64, align 8, !tbaa !131
  tail call void @CustomData_free(ptr noundef nonnull %63, i32 noundef %65) #5
  %66 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %67 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %68 = load i32, ptr %67, align 4, !tbaa !60
  tail call void @CustomData_free(ptr noundef nonnull %66, i32 noundef %68) #5
  %69 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %70 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %71 = load i32, ptr %70, align 8, !tbaa !61
  tail call void @CustomData_free(ptr noundef nonnull %69, i32 noundef %71) #5
  %72 = load i32, ptr %0, align 8, !tbaa !52
  store i32 %72, ptr %10, align 8, !tbaa !56
  %73 = load i32, ptr %21, align 4, !tbaa !53
  store i32 %73, ptr %61, align 4, !tbaa !59
  %74 = load i32, ptr %41, align 8, !tbaa !54
  store i32 %74, ptr %67, align 4, !tbaa !60
  %75 = load i32, ptr %31, align 4, !tbaa !55
  store i32 %75, ptr %70, align 8, !tbaa !61
  store i32 0, ptr %64, align 8, !tbaa !131
  %76 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 32
  store i32 -1, ptr %76, align 8, !tbaa !113
  %77 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !57
  tail call void @CustomData_copy(ptr noundef nonnull %5, ptr noundef nonnull %58, i64 noundef %77, i32 noundef 1, i32 noundef %72) #5
  %78 = load i32, ptr %61, align 4, !tbaa !59
  tail call void @CustomData_copy(ptr noundef nonnull %7, ptr noundef nonnull %60, i64 noundef %77, i32 noundef 1, i32 noundef %78) #5
  %79 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %80 = load i32, ptr %67, align 4, !tbaa !60
  tail call void @CustomData_copy(ptr noundef nonnull %79, ptr noundef nonnull %66, i64 noundef %77, i32 noundef 1, i32 noundef %80) #5
  %81 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %82 = load i32, ptr %70, align 8, !tbaa !61
  tail call void @CustomData_copy(ptr noundef nonnull %81, ptr noundef nonnull %69, i64 noundef %77, i32 noundef 1, i32 noundef %82) #5
  %83 = load i32, ptr %10, align 8, !tbaa !56
  %84 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %58, i32 noundef 0, i32 noundef 0, ptr noundef %20, i32 noundef %83) #5
  %85 = load i32, ptr %61, align 4, !tbaa !59
  %86 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %60, i32 noundef 3, i32 noundef 0, ptr noundef %30, i32 noundef %85) #5
  %87 = load i32, ptr %67, align 4, !tbaa !60
  %88 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %66, i32 noundef 26, i32 noundef 0, ptr noundef %50, i32 noundef %87) #5
  %89 = load i32, ptr %70, align 8, !tbaa !61
  %90 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %69, i32 noundef 25, i32 noundef 0, ptr noundef %40, i32 noundef %89) #5
  %91 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %5, i32 noundef 29) #5
  %92 = icmp ne i8 %91, 0
  %93 = zext i1 %92 to i8
  %94 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %7, i32 noundef 29) #5
  %95 = icmp eq i8 %94, 0
  %96 = or disjoint i8 %93, 2
  %97 = select i1 %95, i8 %93, i8 %96
  %98 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %7, i32 noundef 30) #5
  %99 = icmp eq i8 %98, 0
  %100 = or disjoint i8 %97, 4
  %101 = select i1 %99, i8 %97, i8 %100
  %102 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 41
  store i8 %101, ptr %102, align 8, !tbaa !48
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %1, i8 noundef zeroext 0) #5
  %103 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %103, align 4, !tbaa !132
  %104 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %104, align 8, !tbaa !134
  %105 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %105, align 8, !tbaa !135
  %106 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !136
  store ptr %107, ptr %4, align 8, !tbaa !137
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %108 = load ptr, ptr %105, align 8, !tbaa !135
  %109 = call ptr %108(ptr noundef nonnull %4) #5
  %110 = icmp eq ptr %109, null
  br i1 %110, label %158, label %111

111:                                              ; preds = %57
  %112 = icmp eq i32 %6, -1
  %113 = sext i32 %6 to i64
  br label %114

114:                                              ; preds = %111, %152
  %115 = phi ptr [ %20, %111 ], [ %154, %152 ]
  %116 = phi ptr [ %109, %111 ], [ %156, %152 ]
  %117 = phi i32 [ 0, %111 ], [ %153, %152 ]
  %118 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2
  %119 = load float, ptr %118, align 4, !tbaa !85
  store float %119, ptr %115, align 4, !tbaa !85
  %120 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !85
  %122 = getelementptr inbounds float, ptr %115, i64 1
  store float %121, ptr %122, align 4, !tbaa !85
  %123 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2, i64 2
  %124 = load float, ptr %123, align 4, !tbaa !85
  %125 = getelementptr inbounds float, ptr %115, i64 2
  store float %124, ptr %125, align 4, !tbaa !85
  %126 = getelementptr inbounds %struct.MVert, ptr %115, i64 0, i32 1
  %127 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 3
  %128 = load float, ptr %127, align 4, !tbaa !85
  %129 = fmul float %128, 3.276700e+04
  %130 = fptosi float %129 to i16
  store i16 %130, ptr %126, align 2, !tbaa !84
  %131 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 3, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !85
  %133 = fmul float %132, 3.276700e+04
  %134 = fptosi float %133 to i16
  %135 = getelementptr inbounds %struct.MVert, ptr %115, i64 0, i32 1, i64 1
  store i16 %134, ptr %135, align 2, !tbaa !84
  %136 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 3, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !85
  %138 = fmul float %137, 3.276700e+04
  %139 = fptosi float %138 to i16
  %140 = getelementptr inbounds %struct.MVert, ptr %115, i64 0, i32 1, i64 2
  store i16 %139, ptr %140, align 2, !tbaa !84
  %141 = call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef nonnull %116) #5
  %142 = getelementptr inbounds %struct.MVert, ptr %115, i64 0, i32 2
  store i8 %141, ptr %142, align 2, !tbaa !80
  %143 = getelementptr inbounds %struct.BMHeader, ptr %116, i64 0, i32 1
  store i32 %117, ptr %143, align 8, !tbaa !78
  %144 = load ptr, ptr %116, align 8, !tbaa !87
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %5, ptr noundef nonnull %58, ptr noundef %144, i32 noundef %117) #5
  br i1 %112, label %152, label %145

145:                                              ; preds = %114
  %146 = load ptr, ptr %116, align 8, !tbaa !87
  %147 = getelementptr inbounds i8, ptr %146, i64 %113
  %148 = load float, ptr %147, align 4, !tbaa !85
  %149 = fmul float %148, 2.550000e+02
  %150 = fptoui float %149 to i8
  %151 = getelementptr inbounds %struct.MVert, ptr %115, i64 0, i32 3
  store i8 %150, ptr %151, align 1, !tbaa !86
  br label %152

152:                                              ; preds = %145, %114
  %153 = add nuw nsw i32 %117, 1
  %154 = getelementptr inbounds %struct.MVert, ptr %115, i64 1
  %155 = load ptr, ptr %105, align 8, !tbaa !135
  %156 = call ptr %155(ptr noundef nonnull %4) #5
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %114, !llvm.loop !138

158:                                              ; preds = %152, %57
  %159 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %160 = load i8, ptr %159, align 4, !tbaa !91
  %161 = and i8 %160, -2
  store i8 %161, ptr %159, align 4, !tbaa !91
  store i8 2, ptr %103, align 4, !tbaa !132
  store ptr @bmiter__elem_of_mesh_begin, ptr %104, align 8, !tbaa !134
  store ptr @bmiter__elem_of_mesh_step, ptr %105, align 8, !tbaa !135
  %162 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %163 = load ptr, ptr %162, align 8, !tbaa !139
  store ptr %163, ptr %4, align 8, !tbaa !137
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %164 = load ptr, ptr %105, align 8, !tbaa !135
  %165 = call ptr %164(ptr noundef nonnull %4) #5
  %166 = icmp eq ptr %165, null
  br i1 %166, label %246, label %167

167:                                              ; preds = %158
  %168 = icmp eq i32 %9, -1
  %169 = sext i32 %9 to i64
  %170 = icmp eq i32 %8, -1
  %171 = sext i32 %8 to i64
  br label %172

172:                                              ; preds = %167, %240
  %173 = phi ptr [ %30, %167 ], [ %242, %240 ]
  %174 = phi ptr [ %165, %167 ], [ %244, %240 ]
  %175 = phi i32 [ 0, %167 ], [ %241, %240 ]
  %176 = getelementptr inbounds %struct.BMEdge, ptr %174, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !140
  %178 = getelementptr inbounds %struct.BMHeader, ptr %177, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !78
  store i32 %179, ptr %173, align 4, !tbaa !93
  %180 = getelementptr inbounds %struct.BMEdge, ptr %174, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !141
  %182 = getelementptr inbounds %struct.BMHeader, ptr %181, i64 0, i32 1
  %183 = load i32, ptr %182, align 8, !tbaa !78
  %184 = getelementptr inbounds %struct.MEdge, ptr %173, i64 0, i32 1
  store i32 %183, ptr %184, align 4, !tbaa !95
  %185 = call signext i16 @BM_edge_flag_to_mflag(ptr noundef nonnull %174) #5
  %186 = getelementptr inbounds %struct.MEdge, ptr %173, i64 0, i32 4
  store i16 %185, ptr %186, align 2, !tbaa !96
  %187 = getelementptr inbounds %struct.BMHeader, ptr %174, i64 0, i32 1
  store i32 %175, ptr %187, align 8, !tbaa !78
  %188 = load ptr, ptr %174, align 8, !tbaa !101
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %7, ptr noundef nonnull %60, ptr noundef %188, i32 noundef %175) #5
  %189 = getelementptr inbounds %struct.BMEdge, ptr %174, i64 0, i32 4
  %190 = load ptr, ptr %189, align 8, !tbaa !142
  %191 = icmp eq ptr %190, null
  br i1 %191, label %220, label %192

192:                                              ; preds = %172
  %193 = getelementptr inbounds %struct.BMLoop, ptr %190, i64 0, i32 4
  %194 = load ptr, ptr %193, align 8, !tbaa !143
  %195 = icmp eq ptr %190, %194
  br i1 %195, label %220, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.BMLoop, ptr %190, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !144
  %199 = getelementptr inbounds %struct.BMFace, ptr %198, i64 0, i32 4
  %200 = getelementptr inbounds %struct.BMLoop, ptr %194, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !144
  %202 = getelementptr inbounds %struct.BMFace, ptr %201, i64 0, i32 4
  %203 = load float, ptr %199, align 4, !tbaa !85
  %204 = load float, ptr %202, align 4, !tbaa !85
  %205 = getelementptr inbounds %struct.BMFace, ptr %198, i64 0, i32 4, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !85
  %207 = getelementptr inbounds %struct.BMFace, ptr %201, i64 0, i32 4, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !85
  %209 = fmul float %206, %208
  %210 = call float @llvm.fmuladd.f32(float %203, float %204, float %209)
  %211 = getelementptr inbounds %struct.BMFace, ptr %198, i64 0, i32 4, i64 2
  %212 = load float, ptr %211, align 4, !tbaa !85
  %213 = getelementptr inbounds %struct.BMFace, ptr %201, i64 0, i32 4, i64 2
  %214 = load float, ptr %213, align 4, !tbaa !85
  %215 = call float @llvm.fmuladd.f32(float %212, float %214, float %210)
  %216 = fcmp ogt float %215, 0x3FEFFBE760000000
  br i1 %216, label %217, label %220

217:                                              ; preds = %196
  %218 = load i16, ptr %186, align 2, !tbaa !96
  %219 = and i16 %218, -3
  br label %223

220:                                              ; preds = %196, %192, %172
  %221 = load i16, ptr %186, align 2, !tbaa !96
  %222 = or i16 %221, 2
  br label %223

223:                                              ; preds = %217, %220
  %224 = phi i16 [ %219, %217 ], [ %222, %220 ]
  store i16 %224, ptr %186, align 2, !tbaa !96
  br i1 %168, label %232, label %225

225:                                              ; preds = %223
  %226 = load ptr, ptr %174, align 8, !tbaa !101
  %227 = getelementptr inbounds i8, ptr %226, i64 %169
  %228 = load float, ptr %227, align 4, !tbaa !85
  %229 = fmul float %228, 2.550000e+02
  %230 = fptoui float %229 to i8
  %231 = getelementptr inbounds %struct.MEdge, ptr %173, i64 0, i32 2
  store i8 %230, ptr %231, align 4, !tbaa !102
  br label %232

232:                                              ; preds = %225, %223
  br i1 %170, label %240, label %233

233:                                              ; preds = %232
  %234 = load ptr, ptr %174, align 8, !tbaa !101
  %235 = getelementptr inbounds i8, ptr %234, i64 %171
  %236 = load float, ptr %235, align 4, !tbaa !85
  %237 = fmul float %236, 2.550000e+02
  %238 = fptoui float %237 to i8
  %239 = getelementptr inbounds %struct.MEdge, ptr %173, i64 0, i32 3
  store i8 %238, ptr %239, align 1, !tbaa !100
  br label %240

240:                                              ; preds = %233, %232
  %241 = add nuw nsw i32 %175, 1
  %242 = getelementptr inbounds %struct.MEdge, ptr %173, i64 1
  %243 = load ptr, ptr %105, align 8, !tbaa !135
  %244 = call ptr %243(ptr noundef nonnull %4) #5
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %172, !llvm.loop !145

246:                                              ; preds = %240, %158
  %247 = load i8, ptr %159, align 4, !tbaa !91
  %248 = and i8 %247, -3
  store i8 %248, ptr %159, align 4, !tbaa !91
  store i8 3, ptr %103, align 4, !tbaa !132
  store ptr @bmiter__elem_of_mesh_begin, ptr %104, align 8, !tbaa !134
  store ptr @bmiter__elem_of_mesh_step, ptr %105, align 8, !tbaa !135
  %249 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %250 = load ptr, ptr %249, align 8, !tbaa !146
  store ptr %250, ptr %4, align 8, !tbaa !137
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %251 = load ptr, ptr %105, align 8, !tbaa !135
  %252 = call ptr %251(ptr noundef nonnull %4) #5
  %253 = icmp eq ptr %252, null
  br i1 %253, label %302, label %254

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  br label %256

256:                                              ; preds = %254, %295
  %257 = phi ptr [ %50, %254 ], [ %287, %295 ]
  %258 = phi ptr [ %40, %254 ], [ %298, %295 ]
  %259 = phi ptr [ %252, %254 ], [ %300, %295 ]
  %260 = phi i32 [ 0, %254 ], [ %297, %295 ]
  %261 = phi i32 [ 0, %254 ], [ %286, %295 ]
  store i32 %261, ptr %258, align 4, !tbaa !106
  %262 = getelementptr inbounds %struct.BMFace, ptr %259, i64 0, i32 3
  %263 = load i32, ptr %262, align 8, !tbaa !147
  %264 = getelementptr inbounds %struct.MPoly, ptr %258, i64 0, i32 1
  store i32 %263, ptr %264, align 4, !tbaa !126
  %265 = getelementptr inbounds %struct.BMFace, ptr %259, i64 0, i32 5
  %266 = load i16, ptr %265, align 8, !tbaa !112
  %267 = getelementptr inbounds %struct.MPoly, ptr %258, i64 0, i32 2
  store i16 %266, ptr %267, align 4, !tbaa !111
  %268 = call zeroext i8 @BM_face_flag_to_mflag(ptr noundef nonnull %259) #5
  %269 = getelementptr inbounds %struct.MPoly, ptr %258, i64 0, i32 3
  store i8 %268, ptr %269, align 2, !tbaa !108
  %270 = getelementptr inbounds %struct.BMFace, ptr %259, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !115
  br label %272

272:                                              ; preds = %272, %256
  %273 = phi i32 [ %261, %256 ], [ %286, %272 ]
  %274 = phi ptr [ %271, %256 ], [ %289, %272 ]
  %275 = phi ptr [ %257, %256 ], [ %287, %272 ]
  %276 = getelementptr inbounds %struct.BMLoop, ptr %274, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !148
  %278 = getelementptr inbounds %struct.BMHeader, ptr %277, i64 0, i32 1
  %279 = load i32, ptr %278, align 8, !tbaa !78
  %280 = getelementptr inbounds %struct.MLoop, ptr %275, i64 0, i32 1
  store i32 %279, ptr %280, align 4, !tbaa !129
  %281 = getelementptr inbounds %struct.BMLoop, ptr %274, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !149
  %283 = getelementptr inbounds %struct.BMHeader, ptr %282, i64 0, i32 1
  %284 = load i32, ptr %283, align 8, !tbaa !78
  store i32 %284, ptr %275, align 4, !tbaa !127
  %285 = load ptr, ptr %274, align 8, !tbaa !150
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %79, ptr noundef nonnull %66, ptr noundef %285, i32 noundef %273) #5
  %286 = add nsw i32 %273, 1
  %287 = getelementptr inbounds %struct.MLoop, ptr %275, i64 1
  %288 = getelementptr inbounds %struct.BMLoop, ptr %274, i64 0, i32 6
  %289 = load ptr, ptr %288, align 8, !tbaa !116
  %290 = icmp eq ptr %289, %271
  br i1 %290, label %291, label %272, !llvm.loop !151

291:                                              ; preds = %272
  %292 = load ptr, ptr %255, align 8, !tbaa !114
  %293 = icmp eq ptr %259, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  store i32 %260, ptr %76, align 8, !tbaa !113
  br label %295

295:                                              ; preds = %294, %291
  %296 = load ptr, ptr %259, align 8, !tbaa !152
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %81, ptr noundef nonnull %69, ptr noundef %296, i32 noundef %260) #5
  %297 = add nuw nsw i32 %260, 1
  %298 = getelementptr inbounds %struct.MPoly, ptr %258, i64 1
  %299 = load ptr, ptr %105, align 8, !tbaa !135
  %300 = call ptr %299(ptr noundef nonnull %4) #5
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %256, !llvm.loop !153

302:                                              ; preds = %295, %246
  %303 = icmp sgt i32 %11, 0
  br i1 %303, label %304, label %433

304:                                              ; preds = %302
  %305 = load ptr, ptr @G, align 8, !tbaa !154
  %306 = getelementptr inbounds %struct.Main, ptr %305, i64 0, i32 13
  %307 = load ptr, ptr %306, align 8, !tbaa !62
  %308 = icmp eq ptr %307, null
  br i1 %308, label %428, label %309

309:                                              ; preds = %304, %424
  %310 = phi ptr [ %426, %424 ], [ %307, %304 ]
  %311 = phi ptr [ %425, %424 ], [ null, %304 ]
  %312 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 9
  %313 = load ptr, ptr %312, align 8, !tbaa !156
  %314 = icmp eq ptr %313, null
  br i1 %314, label %365, label %315

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.Object, ptr %313, i64 0, i32 19
  %317 = load ptr, ptr %316, align 8, !tbaa !159
  %318 = icmp eq ptr %317, %1
  br i1 %318, label %319, label %365

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 4
  %321 = load i16, ptr %320, align 2, !tbaa !160
  %322 = add i16 %321, -5
  %323 = icmp ult i16 %322, 2
  br i1 %323, label %324, label %365

324:                                              ; preds = %319
  %325 = icmp eq ptr %311, null
  br i1 %325, label %326, label %328

326:                                              ; preds = %324
  %327 = call fastcc ptr @bm_to_mesh_vertex_map(ptr noundef nonnull %0, i32 noundef %11)
  br label %328

328:                                              ; preds = %326, %324
  %329 = phi ptr [ %327, %326 ], [ %311, %324 ]
  %330 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 5
  %331 = load i32, ptr %330, align 4, !tbaa !161
  %332 = icmp slt i32 %331, %11
  br i1 %332, label %333, label %341

333:                                              ; preds = %328
  %334 = sext i32 %331 to i64
  %335 = getelementptr inbounds ptr, ptr %329, i64 %334
  %336 = load ptr, ptr %335, align 8, !tbaa !62
  %337 = icmp eq ptr %336, null
  br i1 %337, label %341, label %338

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.BMHeader, ptr %336, i64 0, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !78
  store i32 %340, ptr %330, align 4, !tbaa !161
  br label %341

341:                                              ; preds = %333, %338, %328
  %342 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 6
  %343 = load i32, ptr %342, align 8, !tbaa !162
  %344 = icmp slt i32 %343, %11
  br i1 %344, label %345, label %353

345:                                              ; preds = %341
  %346 = sext i32 %343 to i64
  %347 = getelementptr inbounds ptr, ptr %329, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !62
  %349 = icmp eq ptr %348, null
  br i1 %349, label %353, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.BMHeader, ptr %348, i64 0, i32 1
  %352 = load i32, ptr %351, align 8, !tbaa !78
  store i32 %352, ptr %342, align 8, !tbaa !162
  br label %353

353:                                              ; preds = %345, %350, %341
  %354 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 7
  %355 = load i32, ptr %354, align 4, !tbaa !163
  %356 = icmp slt i32 %355, %11
  br i1 %356, label %357, label %365

357:                                              ; preds = %353
  %358 = sext i32 %355 to i64
  %359 = getelementptr inbounds ptr, ptr %329, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !62
  %361 = icmp eq ptr %360, null
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.BMHeader, ptr %360, i64 0, i32 1
  %364 = load i32, ptr %363, align 8, !tbaa !78
  store i32 %364, ptr %354, align 4, !tbaa !163
  br label %365

365:                                              ; preds = %319, %353, %362, %357, %315, %309
  %366 = phi ptr [ %329, %362 ], [ %329, %357 ], [ %329, %353 ], [ %311, %315 ], [ %311, %309 ], [ %311, %319 ]
  %367 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 19
  %368 = load ptr, ptr %367, align 8, !tbaa !159
  %369 = icmp eq ptr %368, %1
  br i1 %369, label %370, label %424

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 26
  %372 = load ptr, ptr %371, align 8, !tbaa !62
  %373 = icmp eq ptr %372, null
  br i1 %373, label %424, label %374

374:                                              ; preds = %370, %420
  %375 = phi ptr [ %422, %420 ], [ %372, %370 ]
  %376 = phi ptr [ %421, %420 ], [ %366, %370 ]
  %377 = getelementptr inbounds %struct.ModifierData, ptr %375, i64 0, i32 2
  %378 = load i32, ptr %377, align 8, !tbaa !164
  %379 = icmp eq i32 %378, 9
  br i1 %379, label %380, label %420

380:                                              ; preds = %374
  %381 = icmp eq ptr %376, null
  br i1 %381, label %382, label %384

382:                                              ; preds = %380
  %383 = call fastcc ptr @bm_to_mesh_vertex_map(ptr noundef nonnull %0, i32 noundef %11)
  br label %384

384:                                              ; preds = %382, %380
  %385 = phi ptr [ %383, %382 ], [ %376, %380 ]
  %386 = getelementptr inbounds %struct.HookModifierData, ptr %375, i64 0, i32 7
  %387 = load i32, ptr %386, align 8, !tbaa !166
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %417

389:                                              ; preds = %384
  %390 = getelementptr inbounds %struct.HookModifierData, ptr %375, i64 0, i32 6
  %391 = load ptr, ptr %390, align 8, !tbaa !168
  br label %392

392:                                              ; preds = %389, %411
  %393 = phi i64 [ 0, %389 ], [ %413, %411 ]
  %394 = phi i32 [ 0, %389 ], [ %412, %411 ]
  %395 = getelementptr inbounds i32, ptr %391, i64 %393
  %396 = load i32, ptr %395, align 4, !tbaa !88
  %397 = icmp slt i32 %396, %11
  br i1 %397, label %398, label %409

398:                                              ; preds = %392
  %399 = sext i32 %396 to i64
  %400 = getelementptr inbounds ptr, ptr %385, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !62
  %402 = icmp eq ptr %401, null
  br i1 %402, label %411, label %403

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.BMHeader, ptr %401, i64 0, i32 1
  %405 = load i32, ptr %404, align 8, !tbaa !78
  %406 = add nsw i32 %394, 1
  %407 = sext i32 %394 to i64
  %408 = getelementptr inbounds i32, ptr %391, i64 %407
  store i32 %405, ptr %408, align 4, !tbaa !88
  br label %411

409:                                              ; preds = %392
  %410 = add nsw i32 %394, 1
  br label %411

411:                                              ; preds = %409, %403, %398
  %412 = phi i32 [ %406, %403 ], [ %394, %398 ], [ %410, %409 ]
  %413 = add nuw nsw i64 %393, 1
  %414 = load i32, ptr %386, align 8, !tbaa !166
  %415 = sext i32 %414 to i64
  %416 = icmp slt i64 %413, %415
  br i1 %416, label %392, label %417, !llvm.loop !169

417:                                              ; preds = %411, %384
  %418 = phi i32 [ 0, %384 ], [ %412, %411 ]
  %419 = getelementptr inbounds %struct.HookModifierData, ptr %375, i64 0, i32 7
  store i32 %418, ptr %419, align 8, !tbaa !166
  br label %420

420:                                              ; preds = %374, %417
  %421 = phi ptr [ %385, %417 ], [ %376, %374 ]
  %422 = load ptr, ptr %375, align 8, !tbaa !62
  %423 = icmp eq ptr %422, null
  br i1 %423, label %424, label %374, !llvm.loop !170

424:                                              ; preds = %420, %370, %365
  %425 = phi ptr [ %366, %365 ], [ %366, %370 ], [ %421, %420 ]
  %426 = load ptr, ptr %310, align 8, !tbaa !62
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %309, !llvm.loop !171

428:                                              ; preds = %424, %304
  %429 = phi ptr [ null, %304 ], [ %425, %424 ]
  %430 = icmp eq ptr %429, null
  br i1 %430, label %433, label %431

431:                                              ; preds = %428
  %432 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %432(ptr noundef nonnull %429) #5
  br label %433

433:                                              ; preds = %428, %431, %302
  %434 = icmp eq i8 %2, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %433
  call void @BKE_mesh_tessface_calc(ptr noundef %1) #5
  br label %436

436:                                              ; preds = %435, %433
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %1, i8 noundef zeroext %2) #5
  %437 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %438 = call i32 @BLI_countlist(ptr noundef nonnull %437) #5
  %439 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 29
  store i32 %438, ptr %439, align 4, !tbaa !121
  %440 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 6
  %441 = load ptr, ptr %440, align 8, !tbaa !120
  %442 = icmp eq ptr %441, null
  br i1 %442, label %445, label %443

443:                                              ; preds = %436
  %444 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %444(ptr noundef nonnull %441) #5
  br label %445

445:                                              ; preds = %443, %436
  %446 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %447 = load i32, ptr %439, align 4, !tbaa !121
  %448 = sext i32 %447 to i64
  %449 = shl nsw i64 %448, 3
  %450 = call ptr %446(i64 noundef %449, ptr noundef nonnull @.str.11) #5
  store ptr %450, ptr %440, align 8, !tbaa !120
  %451 = load ptr, ptr %437, align 8, !tbaa !62
  %452 = icmp eq ptr %451, null
  br i1 %452, label %472, label %453

453:                                              ; preds = %445, %463
  %454 = phi i64 [ %469, %463 ], [ 0, %445 ]
  %455 = phi ptr [ %470, %463 ], [ %451, %445 ]
  %456 = getelementptr inbounds %struct.BMEditSelection, ptr %455, i64 0, i32 3
  %457 = load i8, ptr %456, align 8, !tbaa !172
  switch i8 %457, label %463 [
    i8 1, label %460
    i8 2, label %458
    i8 8, label %459
  ]

458:                                              ; preds = %453
  br label %460

459:                                              ; preds = %453
  br label %460

460:                                              ; preds = %453, %459, %458
  %461 = phi i32 [ 1, %458 ], [ 2, %459 ], [ 0, %453 ]
  %462 = getelementptr inbounds %struct.MSelect, ptr %450, i64 %454, i32 1
  store i32 %461, ptr %462, align 4, !tbaa !122
  br label %463

463:                                              ; preds = %460, %453
  %464 = getelementptr inbounds %struct.BMEditSelection, ptr %455, i64 0, i32 2
  %465 = load ptr, ptr %464, align 8, !tbaa !174
  %466 = getelementptr inbounds %struct.BMHeader, ptr %465, i64 0, i32 1
  %467 = load i32, ptr %466, align 8, !tbaa !78
  %468 = getelementptr inbounds %struct.MSelect, ptr %450, i64 %454
  store i32 %467, ptr %468, align 4, !tbaa !124
  %469 = add nuw i64 %454, 1
  %470 = load ptr, ptr %455, align 8, !tbaa !62
  %471 = icmp eq ptr %470, null
  br i1 %471, label %472, label %453, !llvm.loop !175

472:                                              ; preds = %463, %445
  %473 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %474 = load ptr, ptr %473, align 8, !tbaa !64
  %475 = icmp eq ptr %474, null
  br i1 %475, label %764, label %476

476:                                              ; preds = %472
  %477 = call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 27) #5
  %478 = load ptr, ptr %473, align 8, !tbaa !64
  %479 = getelementptr inbounds %struct.Key, ptr %478, i64 0, i32 6
  %480 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 29
  %481 = load i32, ptr %480, align 4, !tbaa !72
  %482 = add nsw i32 %481, -1
  %483 = call ptr @BLI_findlink(ptr noundef nonnull %479, i32 noundef %482) #5
  %484 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24, i32 2
  %485 = load i32, ptr %484, align 4, !tbaa !176
  %486 = icmp sgt i32 %485, 0
  br i1 %486, label %487, label %518

487:                                              ; preds = %476, %513
  %488 = phi i64 [ %514, %513 ], [ 0, %476 ]
  %489 = load ptr, ptr %5, align 8, !tbaa !73
  %490 = getelementptr inbounds %struct.CustomDataLayer, ptr %489, i64 %488
  %491 = load i32, ptr %490, align 8, !tbaa !177
  %492 = icmp eq i32 %491, 28
  br i1 %492, label %493, label %513

493:                                              ; preds = %487
  %494 = load ptr, ptr %473, align 8, !tbaa !64
  %495 = getelementptr inbounds %struct.Key, ptr %494, i64 0, i32 6
  %496 = getelementptr inbounds %struct.CustomDataLayer, ptr %489, i64 %488, i32 7
  br label %497

497:                                              ; preds = %501, %493
  %498 = phi ptr [ %495, %493 ], [ %499, %501 ]
  %499 = load ptr, ptr %498, align 8, !tbaa !62
  %500 = icmp eq ptr %499, null
  br i1 %500, label %506, label %501

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.KeyBlock, ptr %499, i64 0, i32 9
  %503 = load i32, ptr %502, align 4, !tbaa !67
  %504 = load i32, ptr %496, align 4, !tbaa !74
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %513, label %497, !llvm.loop !178

506:                                              ; preds = %497
  %507 = getelementptr inbounds %struct.CustomDataLayer, ptr %489, i64 %488, i32 8
  %508 = call ptr @BKE_keyblock_add(ptr noundef %494, ptr noundef nonnull %507) #5
  %509 = load ptr, ptr %5, align 8, !tbaa !73
  %510 = getelementptr inbounds %struct.CustomDataLayer, ptr %509, i64 %488, i32 7
  %511 = load i32, ptr %510, align 4, !tbaa !74
  %512 = getelementptr inbounds %struct.KeyBlock, ptr %508, i64 0, i32 9
  store i32 %511, ptr %512, align 4, !tbaa !67
  br label %513

513:                                              ; preds = %501, %506, %487
  %514 = add nuw nsw i64 %488, 1
  %515 = load i32, ptr %484, align 4, !tbaa !176
  %516 = sext i32 %515 to i64
  %517 = icmp slt i64 %514, %516
  br i1 %517, label %487, label %518, !llvm.loop !179

518:                                              ; preds = %513, %476
  %519 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24, i32 2
  %520 = load ptr, ptr %473, align 8, !tbaa !64
  %521 = getelementptr inbounds %struct.Key, ptr %520, i64 0, i32 9
  %522 = load i16, ptr %521, align 8, !tbaa !180
  %523 = icmp eq i16 %522, 1
  %524 = icmp ne ptr %483, null
  %525 = select i1 %523, i1 %524, i1 false
  %526 = and i1 %53, %525
  br i1 %526, label %527, label %597

527:                                              ; preds = %518
  %528 = getelementptr inbounds %struct.Key, ptr %520, i64 0, i32 6
  br label %529

529:                                              ; preds = %533, %527
  %530 = phi ptr [ %528, %527 ], [ %531, %533 ]
  %531 = load ptr, ptr %530, align 8, !tbaa !62
  %532 = icmp ne ptr %531, null
  br i1 %532, label %533, label %540

533:                                              ; preds = %529
  %534 = load i32, ptr %480, align 4, !tbaa !72
  %535 = add nsw i32 %534, -1
  %536 = getelementptr inbounds %struct.KeyBlock, ptr %531, i64 0, i32 6
  %537 = load i16, ptr %536, align 4, !tbaa !181
  %538 = sext i16 %537 to i32
  %539 = icmp eq i32 %535, %538
  br i1 %539, label %540, label %529, !llvm.loop !182

540:                                              ; preds = %533, %529
  %541 = icmp ne i32 %477, -1
  %542 = select i1 %532, i1 %541, i1 false
  br i1 %542, label %543, label %597

543:                                              ; preds = %540
  %544 = getelementptr inbounds %struct.KeyBlock, ptr %483, i64 0, i32 10
  %545 = load ptr, ptr %544, align 8, !tbaa !71
  %546 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %547 = load i32, ptr %0, align 8, !tbaa !52
  %548 = sext i32 %547 to i64
  %549 = mul nsw i64 %548, 12
  %550 = call ptr %546(i64 noundef %549, ptr noundef nonnull @.str.12) #5
  %551 = load ptr, ptr %51, align 8, !tbaa !77
  store i8 1, ptr %103, align 4, !tbaa !132
  store ptr @bmiter__elem_of_mesh_begin, ptr %104, align 8, !tbaa !134
  store ptr @bmiter__elem_of_mesh_step, ptr %105, align 8, !tbaa !135
  %552 = load ptr, ptr %106, align 8, !tbaa !136
  store ptr %552, ptr %4, align 8, !tbaa !137
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %553 = load ptr, ptr %105, align 8, !tbaa !135
  %554 = call ptr %553(ptr noundef nonnull %4) #5
  %555 = icmp eq ptr %554, null
  br i1 %555, label %597, label %556

556:                                              ; preds = %543
  %557 = sext i32 %477 to i64
  br label %558

558:                                              ; preds = %556, %592
  %559 = phi i64 [ 0, %556 ], [ %595, %592 ]
  %560 = phi ptr [ %551, %556 ], [ %591, %592 ]
  %561 = phi ptr [ %550, %556 ], [ %590, %592 ]
  %562 = phi ptr [ %554, %556 ], [ %594, %592 ]
  %563 = load ptr, ptr %562, align 8, !tbaa !87
  %564 = getelementptr inbounds i8, ptr %563, i64 %557
  %565 = load i32, ptr %564, align 4, !tbaa !88
  %566 = icmp eq i32 %565, -1
  br i1 %566, label %587, label %567

567:                                              ; preds = %558
  %568 = getelementptr inbounds [3 x float], ptr %561, i64 %559
  %569 = sext i32 %565 to i64
  %570 = getelementptr inbounds [3 x float], ptr %545, i64 %569
  %571 = load float, ptr %560, align 4, !tbaa !85
  %572 = load float, ptr %570, align 4, !tbaa !85
  %573 = fsub float %571, %572
  store float %573, ptr %568, align 4, !tbaa !85
  %574 = getelementptr inbounds float, ptr %560, i64 1
  %575 = load float, ptr %574, align 4, !tbaa !85
  %576 = getelementptr inbounds float, ptr %570, i64 1
  %577 = load float, ptr %576, align 4, !tbaa !85
  %578 = fsub float %575, %577
  %579 = getelementptr inbounds float, ptr %568, i64 1
  store float %578, ptr %579, align 4, !tbaa !85
  %580 = getelementptr inbounds float, ptr %560, i64 2
  %581 = load float, ptr %580, align 4, !tbaa !85
  %582 = getelementptr inbounds float, ptr %570, i64 2
  %583 = load float, ptr %582, align 4, !tbaa !85
  %584 = fsub float %581, %583
  %585 = getelementptr inbounds float, ptr %568, i64 2
  store float %584, ptr %585, align 4, !tbaa !85
  %586 = getelementptr inbounds %struct.MVert, ptr %560, i64 1
  br label %589

587:                                              ; preds = %558
  %588 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %588(ptr noundef %561) #5
  br label %589

589:                                              ; preds = %567, %587
  %590 = phi ptr [ %561, %567 ], [ null, %587 ]
  %591 = phi ptr [ %586, %567 ], [ %560, %587 ]
  br i1 %566, label %597, label %592

592:                                              ; preds = %589
  %593 = load ptr, ptr %105, align 8, !tbaa !135
  %594 = call ptr %593(ptr noundef nonnull %4) #5
  %595 = add nuw i64 %559, 1
  %596 = icmp eq ptr %594, null
  br i1 %596, label %597, label %558, !llvm.loop !183

597:                                              ; preds = %592, %589, %543, %540, %518
  %598 = phi ptr [ null, %518 ], [ null, %540 ], [ %550, %543 ], [ %590, %589 ], [ %590, %592 ]
  %599 = load ptr, ptr %473, align 8, !tbaa !64
  %600 = getelementptr inbounds %struct.Key, ptr %599, i64 0, i32 6
  %601 = load ptr, ptr %600, align 8, !tbaa !62
  %602 = icmp eq ptr %601, null
  br i1 %602, label %760, label %603

603:                                              ; preds = %597
  %604 = icmp eq ptr %598, null
  %605 = icmp ne i32 %477, -1
  %606 = sext i32 %477 to i64
  %607 = icmp ne i32 %477, -1
  %608 = sext i32 %477 to i64
  br label %609

609:                                              ; preds = %603, %757
  %610 = phi ptr [ %601, %603 ], [ %758, %757 ]
  %611 = icmp eq ptr %610, %483
  %612 = select i1 %604, i1 true, i1 %611
  br i1 %612, label %620, label %613

613:                                              ; preds = %609
  %614 = load i32, ptr %480, align 4, !tbaa !72
  %615 = add nsw i32 %614, -1
  %616 = getelementptr inbounds %struct.KeyBlock, ptr %610, i64 0, i32 6
  %617 = load i16, ptr %616, align 4, !tbaa !181
  %618 = sext i16 %617 to i32
  %619 = icmp eq i32 %615, %618
  br label %620

620:                                              ; preds = %613, %609
  %621 = phi i1 [ false, %609 ], [ %619, %613 ]
  %622 = getelementptr inbounds %struct.KeyBlock, ptr %610, i64 0, i32 9
  %623 = load i32, ptr %519, align 4, !tbaa !176
  %624 = icmp sgt i32 %623, 0
  br i1 %624, label %625, label %645

625:                                              ; preds = %620
  %626 = load ptr, ptr %5, align 8, !tbaa !73
  %627 = zext nneg i32 %623 to i64
  br label %628

628:                                              ; preds = %625, %641
  %629 = phi i64 [ 0, %625 ], [ %643, %641 ]
  %630 = phi i32 [ 0, %625 ], [ %642, %641 ]
  %631 = getelementptr inbounds %struct.CustomDataLayer, ptr %626, i64 %629
  %632 = load i32, ptr %631, align 8, !tbaa !177
  %633 = icmp eq i32 %632, 28
  br i1 %633, label %634, label %641

634:                                              ; preds = %628
  %635 = load i32, ptr %622, align 4, !tbaa !67
  %636 = getelementptr inbounds %struct.CustomDataLayer, ptr %626, i64 %629, i32 7
  %637 = load i32, ptr %636, align 4, !tbaa !74
  %638 = icmp eq i32 %635, %637
  br i1 %638, label %645, label %639

639:                                              ; preds = %634
  %640 = add nsw i32 %630, 1
  br label %641

641:                                              ; preds = %639, %628
  %642 = phi i32 [ %640, %639 ], [ %630, %628 ]
  %643 = add nuw nsw i64 %629, 1
  %644 = icmp eq i64 %643, %627
  br i1 %644, label %645, label %628, !llvm.loop !184

645:                                              ; preds = %634, %641, %620
  %646 = phi i32 [ -1, %620 ], [ %630, %634 ], [ -1, %641 ]
  %647 = call i32 @CustomData_get_n_offset(ptr noundef nonnull %5, i32 noundef 28, i32 noundef %646) #5
  %648 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %649 = load ptr, ptr %473, align 8, !tbaa !64
  %650 = getelementptr inbounds %struct.Key, ptr %649, i64 0, i32 4
  %651 = load i32, ptr %650, align 8, !tbaa !185
  %652 = load i32, ptr %0, align 8, !tbaa !52
  %653 = mul nsw i32 %652, %651
  %654 = sext i32 %653 to i64
  %655 = call ptr %648(i64 noundef %654, ptr noundef nonnull @.str.12) #5
  %656 = getelementptr inbounds %struct.KeyBlock, ptr %610, i64 0, i32 10
  %657 = load ptr, ptr %656, align 8, !tbaa !71
  %658 = load ptr, ptr %51, align 8, !tbaa !77
  store i8 1, ptr %103, align 4, !tbaa !132
  store ptr @bmiter__elem_of_mesh_begin, ptr %104, align 8, !tbaa !134
  store ptr @bmiter__elem_of_mesh_step, ptr %105, align 8, !tbaa !135
  %659 = load ptr, ptr %106, align 8, !tbaa !136
  store ptr %659, ptr %4, align 8, !tbaa !137
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %660 = load ptr, ptr %105, align 8, !tbaa !135
  %661 = call ptr %660(ptr noundef nonnull %4) #5
  %662 = icmp eq ptr %661, null
  br i1 %662, label %750, label %663

663:                                              ; preds = %645
  %664 = icmp eq i32 %646, -1
  %665 = sext i32 %647 to i64
  %666 = icmp ne ptr %657, null
  %667 = select i1 %666, i1 %605, i1 false
  %668 = getelementptr inbounds %struct.KeyBlock, ptr %610, i64 0, i32 8
  %669 = getelementptr inbounds %struct.KeyBlock, ptr %610, i64 0, i32 8
  br label %670

670:                                              ; preds = %663, %743
  %671 = phi ptr [ %655, %663 ], [ %745, %743 ]
  %672 = phi ptr [ %598, %663 ], [ %744, %743 ]
  %673 = phi ptr [ %658, %663 ], [ %746, %743 ]
  %674 = phi ptr [ %661, %663 ], [ %748, %743 ]
  br i1 %611, label %675, label %701

675:                                              ; preds = %670
  %676 = getelementptr inbounds %struct.BMVert, ptr %674, i64 0, i32 2
  %677 = load float, ptr %676, align 4, !tbaa !85
  store float %677, ptr %671, align 4, !tbaa !85
  %678 = getelementptr inbounds %struct.BMVert, ptr %674, i64 0, i32 2, i64 1
  %679 = load float, ptr %678, align 4, !tbaa !85
  %680 = getelementptr inbounds float, ptr %671, i64 1
  store float %679, ptr %680, align 4, !tbaa !85
  %681 = getelementptr inbounds %struct.BMVert, ptr %674, i64 0, i32 2, i64 2
  %682 = load float, ptr %681, align 4, !tbaa !85
  %683 = getelementptr inbounds float, ptr %671, i64 2
  store float %682, ptr %683, align 4, !tbaa !85
  %684 = load ptr, ptr %473, align 8, !tbaa !64
  %685 = getelementptr inbounds %struct.Key, ptr %684, i64 0, i32 2
  %686 = load ptr, ptr %685, align 8, !tbaa !186
  %687 = icmp ne ptr %483, %686
  %688 = select i1 %687, i1 %607, i1 false
  %689 = and i1 %53, %688
  br i1 %689, label %690, label %727

690:                                              ; preds = %675
  %691 = load ptr, ptr %674, align 8, !tbaa !87
  %692 = getelementptr inbounds i8, ptr %691, i64 %608
  %693 = load i32, ptr %692, align 4, !tbaa !88
  %694 = icmp eq i32 %693, -1
  br i1 %694, label %727, label %695

695:                                              ; preds = %690
  %696 = load i32, ptr %669, align 8, !tbaa !70
  %697 = icmp slt i32 %693, %696
  br i1 %697, label %698, label %727

698:                                              ; preds = %695
  %699 = sext i32 %693 to i64
  %700 = getelementptr inbounds %struct.MVert, ptr %52, i64 %699
  br label %717

701:                                              ; preds = %670
  br i1 %664, label %705, label %702

702:                                              ; preds = %701
  %703 = load ptr, ptr %674, align 8, !tbaa !87
  %704 = getelementptr inbounds i8, ptr %703, i64 %665
  br label %717

705:                                              ; preds = %701
  br i1 %667, label %706, label %717

706:                                              ; preds = %705
  %707 = load ptr, ptr %674, align 8, !tbaa !87
  %708 = getelementptr inbounds i8, ptr %707, i64 %606
  %709 = load i32, ptr %708, align 4, !tbaa !88
  %710 = icmp eq i32 %709, -1
  br i1 %710, label %717, label %711

711:                                              ; preds = %706
  %712 = load i32, ptr %668, align 8, !tbaa !70
  %713 = icmp slt i32 %709, %712
  br i1 %713, label %714, label %717

714:                                              ; preds = %711
  %715 = sext i32 %709 to i64
  %716 = getelementptr inbounds [3 x float], ptr %657, i64 %715
  br label %717

717:                                              ; preds = %705, %706, %711, %698, %714, %702
  %718 = phi ptr [ %704, %702 ], [ %716, %714 ], [ %700, %698 ], [ %673, %711 ], [ %673, %706 ], [ %673, %705 ]
  %719 = phi ptr [ %671, %702 ], [ %671, %714 ], [ %673, %698 ], [ %671, %711 ], [ %671, %706 ], [ %671, %705 ]
  %720 = load float, ptr %718, align 4, !tbaa !85
  store float %720, ptr %719, align 4, !tbaa !85
  %721 = getelementptr inbounds float, ptr %718, i64 1
  %722 = load float, ptr %721, align 4, !tbaa !85
  %723 = getelementptr inbounds float, ptr %719, i64 1
  store float %722, ptr %723, align 4, !tbaa !85
  %724 = getelementptr inbounds float, ptr %718, i64 2
  %725 = load float, ptr %724, align 4, !tbaa !85
  %726 = getelementptr inbounds float, ptr %719, i64 2
  store float %725, ptr %726, align 4, !tbaa !85
  br label %727

727:                                              ; preds = %717, %675, %695, %690
  br i1 %621, label %728, label %743

728:                                              ; preds = %727
  %729 = getelementptr inbounds [3 x float], ptr %672, i64 1
  %730 = load float, ptr %672, align 4, !tbaa !85
  %731 = load float, ptr %671, align 4, !tbaa !85
  %732 = fadd float %730, %731
  store float %732, ptr %671, align 4, !tbaa !85
  %733 = getelementptr inbounds float, ptr %672, i64 1
  %734 = load float, ptr %733, align 4, !tbaa !85
  %735 = getelementptr inbounds float, ptr %671, i64 1
  %736 = load float, ptr %735, align 4, !tbaa !85
  %737 = fadd float %734, %736
  store float %737, ptr %735, align 4, !tbaa !85
  %738 = getelementptr inbounds float, ptr %672, i64 2
  %739 = load float, ptr %738, align 4, !tbaa !85
  %740 = getelementptr inbounds float, ptr %671, i64 2
  %741 = load float, ptr %740, align 4, !tbaa !85
  %742 = fadd float %739, %741
  store float %742, ptr %740, align 4, !tbaa !85
  br label %743

743:                                              ; preds = %728, %727
  %744 = phi ptr [ %729, %728 ], [ %672, %727 ]
  %745 = getelementptr inbounds float, ptr %671, i64 3
  %746 = getelementptr inbounds %struct.MVert, ptr %673, i64 1
  %747 = load ptr, ptr %105, align 8, !tbaa !135
  %748 = call ptr %747(ptr noundef nonnull %4) #5
  %749 = icmp eq ptr %748, null
  br i1 %749, label %750, label %670, !llvm.loop !187

750:                                              ; preds = %743, %645
  %751 = load i32, ptr %0, align 8, !tbaa !52
  %752 = getelementptr inbounds %struct.KeyBlock, ptr %610, i64 0, i32 8
  store i32 %751, ptr %752, align 8, !tbaa !70
  %753 = load ptr, ptr %656, align 8, !tbaa !71
  %754 = icmp eq ptr %753, null
  br i1 %754, label %757, label %755

755:                                              ; preds = %750
  %756 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %756(ptr noundef nonnull %753) #5
  br label %757

757:                                              ; preds = %755, %750
  store ptr %655, ptr %656, align 8, !tbaa !71
  %758 = load ptr, ptr %610, align 8, !tbaa !62
  %759 = icmp eq ptr %758, null
  br i1 %759, label %760, label %609, !llvm.loop !188

760:                                              ; preds = %757, %597
  %761 = icmp eq ptr %598, null
  br i1 %761, label %764, label %762

762:                                              ; preds = %760
  %763 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %763(ptr noundef nonnull %598) #5
  br label %764

764:                                              ; preds = %760, %762, %472
  br i1 %53, label %765, label %767

765:                                              ; preds = %764
  %766 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %766(ptr noundef nonnull %52) #5
  br label %767

767:                                              ; preds = %765, %764
  call void @multires_topology_changed(ptr noundef %1) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  ret void
}

declare ptr @CustomData_set_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BM_vert_flag_to_mflag(ptr noundef) local_unnamed_addr #2

declare void @CustomData_from_bmesh_block(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare signext i16 @BM_edge_flag_to_mflag(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_face_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bm_to_mesh_vertex_map(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 27) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %7 = zext nneg i32 %1 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.13) #5
  %10 = icmp eq i32 %5, -1
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %11, align 4, !tbaa !132
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !134
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !135
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  store ptr %15, ptr %3, align 8, !tbaa !137
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #5
  %16 = load ptr, ptr %13, align 8, !tbaa !135
  %17 = call ptr %16(ptr noundef nonnull %3) #5
  br i1 %10, label %37, label %18

18:                                               ; preds = %2
  %19 = icmp eq ptr %17, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %18
  %21 = sext i32 %5 to i64
  br label %22

22:                                               ; preds = %20, %33
  %23 = phi ptr [ %17, %20 ], [ %35, %33 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = getelementptr inbounds i8, ptr %24, i64 %21
  %26 = load i32, ptr %25, align 4, !tbaa !88
  %27 = icmp ne i32 %26, -1
  %28 = icmp slt i32 %26, %1
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = sext i32 %26 to i64
  %32 = getelementptr inbounds ptr, ptr %9, i64 %31
  store ptr %23, ptr %32, align 8, !tbaa !62
  br label %33

33:                                               ; preds = %30, %22
  %34 = load ptr, ptr %13, align 8, !tbaa !135
  %35 = call ptr %34(ptr noundef nonnull %3) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %22, !llvm.loop !189

37:                                               ; preds = %2
  %38 = icmp ne ptr %17, null
  %39 = icmp sgt i32 %1, 0
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = sext i32 %1 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %49, %43 ]
  %45 = phi ptr [ %17, %41 ], [ %48, %43 ]
  %46 = getelementptr inbounds ptr, ptr %9, i64 %44
  store ptr %45, ptr %46, align 8, !tbaa !62
  %47 = load ptr, ptr %13, align 8, !tbaa !135
  %48 = call ptr %47(ptr noundef nonnull %3) #5
  %49 = add nuw nsw i64 %44, 1
  %50 = icmp ne ptr %48, null
  %51 = icmp slt i64 %49, %42
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %43, label %53, !llvm.loop !190

53:                                               ; preds = %33, %43, %18, %37
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  ret ptr %9
}

declare void @BKE_mesh_tessface_calc(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_keyblock_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @multires_topology_changed(ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
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
!34 = !{!35, !39, i64 544}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!35, !39, i64 744}
!47 = distinct !{!47, !44, !45}
!48 = !{!49, !37, i64 1360}
!49 = !{!"Mesh", !50, i64 0, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !40, i64 280, !40, i64 480, !40, i64 680, !40, i64 880, !40, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !41, i64 1348, !41, i64 1350, !51, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !39, i64 1368}
!50 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !37, i64 32, !41, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !39, i64 112}
!51 = !{!"float", !37, i64 0}
!52 = !{!35, !36, i64 0}
!53 = !{!35, !36, i64 4}
!54 = !{!35, !36, i64 8}
!55 = !{!35, !36, i64 12}
!56 = !{!49, !36, i64 1280}
!57 = !{!58, !58, i64 0}
!58 = !{!"long", !37, i64 0}
!59 = !{!49, !36, i64 1284}
!60 = !{!49, !36, i64 1300}
!61 = !{!49, !36, i64 1296}
!62 = !{!39, !39, i64 0}
!63 = distinct !{!63, !44, !45}
!64 = !{!49, !39, i64 144}
!65 = !{!66, !36, i64 220}
!66 = !{!"Key", !50, i64 0, !39, i64 120, !39, i64 128, !37, i64 136, !36, i64 168, !36, i64 172, !42, i64 176, !39, i64 192, !39, i64 200, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !51, i64 216, !36, i64 220}
!67 = !{!68, !36, i64 36}
!68 = !{!"KeyBlock", !39, i64 0, !39, i64 8, !51, i64 16, !51, i64 20, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !36, i64 32, !36, i64 36, !39, i64 40, !37, i64 48, !37, i64 112, !51, i64 176, !51, i64 180}
!69 = distinct !{!69, !44, !45}
!70 = !{!68, !36, i64 32}
!71 = !{!68, !39, i64 40}
!72 = !{!35, !36, i64 948}
!73 = !{!35, !39, i64 144}
!74 = !{!75, !36, i64 28}
!75 = !{!"CustomDataLayer", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 96}
!76 = distinct !{!76, !44, !45}
!77 = !{!49, !39, i64 232}
!78 = !{!79, !36, i64 8}
!79 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!80 = !{!81, !37, i64 18}
!81 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!82 = !{!83, !37, i64 13}
!83 = !{!"BMVert", !79, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!84 = !{!41, !41, i64 0}
!85 = !{!51, !51, i64 0}
!86 = !{!81, !37, i64 19}
!87 = !{!83, !39, i64 0}
!88 = !{!36, !36, i64 0}
!89 = distinct !{!89, !44, !45}
!90 = distinct !{!90, !44, !45}
!91 = !{!35, !37, i64 28}
!92 = !{!49, !39, i64 240}
!93 = !{!94, !36, i64 0}
!94 = !{!"MEdge", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !41, i64 10}
!95 = !{!94, !36, i64 4}
!96 = !{!94, !41, i64 10}
!97 = !{!98, !37, i64 13}
!98 = !{!"BMEdge", !79, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !99, i64 48, !99, i64 64}
!99 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!100 = !{!94, !37, i64 9}
!101 = !{!98, !39, i64 0}
!102 = !{!94, !37, i64 8}
!103 = distinct !{!103, !44, !45}
!104 = !{!49, !39, i64 184}
!105 = !{!49, !39, i64 168}
!106 = !{!107, !36, i64 0}
!107 = !{!"MPoly", !36, i64 0, !36, i64 4, !41, i64 8, !37, i64 10, !37, i64 11}
!108 = !{!107, !37, i64 10}
!109 = !{!110, !37, i64 13}
!110 = !{!"BMFace", !79, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!111 = !{!107, !41, i64 8}
!112 = !{!110, !41, i64 48}
!113 = !{!49, !36, i64 1304}
!114 = !{!35, !39, i64 976}
!115 = !{!110, !39, i64 24}
!116 = !{!117, !39, i64 56}
!117 = !{!"BMLoop", !79, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!118 = distinct !{!118, !44, !45}
!119 = distinct !{!119, !44, !45}
!120 = !{!49, !39, i64 160}
!121 = !{!49, !36, i64 1292}
!122 = !{!123, !36, i64 4}
!123 = !{!"MSelect", !36, i64 0, !36, i64 4}
!124 = !{!123, !36, i64 0}
!125 = distinct !{!125, !44, !45}
!126 = !{!107, !36, i64 4}
!127 = !{!128, !36, i64 0}
!128 = !{!"MLoop", !36, i64 0, !36, i64 4}
!129 = !{!128, !36, i64 4}
!130 = distinct !{!130, !44, !45}
!131 = !{!49, !36, i64 1288}
!132 = !{!133, !37, i64 60}
!133 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!134 = !{!133, !39, i64 40}
!135 = !{!133, !39, i64 48}
!136 = !{!35, !39, i64 32}
!137 = !{!37, !37, i64 0}
!138 = distinct !{!138, !44, !45}
!139 = !{!35, !39, i64 40}
!140 = !{!98, !39, i64 24}
!141 = !{!98, !39, i64 32}
!142 = !{!98, !39, i64 40}
!143 = !{!117, !39, i64 40}
!144 = !{!117, !39, i64 32}
!145 = distinct !{!145, !44, !45}
!146 = !{!35, !39, i64 56}
!147 = !{!110, !36, i64 32}
!148 = !{!117, !39, i64 24}
!149 = !{!117, !39, i64 16}
!150 = !{!117, !39, i64 0}
!151 = distinct !{!151, !44, !45}
!152 = !{!110, !39, i64 0}
!153 = distinct !{!153, !44, !45}
!154 = !{!155, !39, i64 0}
!155 = !{!"Global", !39, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!156 = !{!157, !39, i64 216}
!157 = !{!"Object", !50, i64 0, !39, i64 120, !39, i64 128, !41, i64 136, !41, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !158, i64 312, !39, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !36, i64 432, !36, i64 436, !39, i64 440, !39, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !51, i64 616, !51, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !51, i64 988, !51, i64 992, !51, i64 996, !51, i64 1000, !51, i64 1004, !51, i64 1008, !51, i64 1012, !51, i64 1016, !51, i64 1020, !51, i64 1024, !51, i64 1028, !51, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !51, i64 1048, !51, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !51, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !39, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !51, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !58, i64 1304, !58, i64 1312, !36, i64 1320, !36, i64 1324, !42, i64 1328, !42, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !37, i64 1384, !39, i64 1392, !42, i64 1400, !39, i64 1416}
!158 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!159 = !{!157, !39, i64 296}
!160 = !{!157, !41, i64 138}
!161 = !{!157, !36, i64 140}
!162 = !{!157, !36, i64 144}
!163 = !{!157, !36, i64 148}
!164 = !{!165, !36, i64 16}
!165 = !{!"ModifierData", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 96, !39, i64 104}
!166 = !{!167, !36, i64 272}
!167 = !{!"HookModifierData", !165, i64 0, !39, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !51, i64 260, !39, i64 264, !36, i64 272, !51, i64 276, !37, i64 280}
!168 = !{!167, !39, i64 264}
!169 = distinct !{!169, !44, !45}
!170 = distinct !{!170, !44, !45}
!171 = distinct !{!171, !44, !45}
!172 = !{!173, !37, i64 24}
!173 = !{!"BMEditSelection", !39, i64 0, !39, i64 8, !39, i64 16, !37, i64 24}
!174 = !{!173, !39, i64 16}
!175 = distinct !{!175, !44, !45}
!176 = !{!35, !36, i64 316}
!177 = !{!75, !36, i64 0}
!178 = distinct !{!178, !44, !45}
!179 = distinct !{!179, !44, !45}
!180 = !{!66, !41, i64 208}
!181 = !{!68, !41, i64 28}
!182 = distinct !{!182, !44, !45}
!183 = distinct !{!183, !44, !45}
!184 = distinct !{!184, !44, !45}
!185 = !{!66, !36, i64 168}
!186 = !{!66, !39, i64 128}
!187 = distinct !{!187, !44, !45}
!188 = distinct !{!188, !44, !45}
!189 = distinct !{!189, !44, !45}
!190 = distinct !{!190, !44, !45}
