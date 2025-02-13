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
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_cd_validate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %3 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %2, i32 noundef 15) #10
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %5 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %4, i32 noundef 16) #10
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %37, label %7

7:                                                ; preds = %1
  %8 = icmp slt i32 %3, %5
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %4, i32 noundef 16) #10
  %11 = sext i32 %3 to i64
  %12 = sext i32 %10 to i64
  br label %13

13:                                               ; preds = %13, %9
  %14 = phi i64 [ %19, %13 ], [ %11, %9 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !34
  %16 = add nsw i64 %14, %12
  %17 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %16, i32 8
  tail call void @BM_data_layer_add_named(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 15, ptr noundef nonnull %17) #10
  %18 = trunc i64 %14 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %2, i32 noundef %18) #10
  %19 = add nsw i64 %14, 1
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %5, %20
  br i1 %21, label %37, label %13, !llvm.loop !43

22:                                               ; preds = %7
  %23 = icmp slt i32 %5, %3
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  %25 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %2, i32 noundef 15) #10
  %26 = sext i32 %5 to i64
  %27 = sext i32 %25 to i64
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi i64 [ %34, %28 ], [ %26, %24 ]
  %30 = load ptr, ptr %2, align 8, !tbaa !45
  %31 = add nsw i64 %29, %27
  %32 = getelementptr inbounds %struct.CustomDataLayer, ptr %30, i64 %31, i32 8
  tail call void @BM_data_layer_add_named(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull %32) #10
  %33 = trunc i64 %29 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %4, i32 noundef %33) #10
  %34 = add nsw i64 %29, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %3, %35
  br i1 %36, label %37, label %28, !llvm.loop !46

37:                                               ; preds = %28, %13, %22, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_add_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_set_layer_unique_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_cd_flag_ensure(ptr noundef %0, ptr noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef %0) #11, !range !47
  %5 = or i8 %4, %2
  tail call void @BM_mesh_cd_flag_apply(ptr noundef %0, i8 noundef zeroext %5) #11
  %6 = icmp eq ptr %1, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 41
  store i8 %5, ptr %8, align 8, !tbaa !48
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %3 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %2, i32 noundef 29) #10
  %4 = icmp ne i8 %3, 0
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %7 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 29) #10
  %8 = icmp eq i8 %7, 0
  %9 = or disjoint i8 %5, 2
  %10 = select i1 %8, i8 %5, i8 %9
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 30) #10
  %12 = icmp eq i8 %11, 0
  %13 = or disjoint i8 %10, 4
  %14 = select i1 %12, i8 %10, i8 %13
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_cd_flag_apply(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %7 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %6, i32 noundef 29) #10
  %8 = icmp eq i8 %7, 0
  br i1 %5, label %11, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %13

10:                                               ; preds = %9
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 29) #10
  br label %13

11:                                               ; preds = %2
  br i1 %8, label %13, label %12

12:                                               ; preds = %11
  tail call void @BM_data_layer_free(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 29) #10
  br label %13

13:                                               ; preds = %11, %12, %9, %10
  %14 = and i32 %3, 2
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %17 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %16, i32 noundef 29) #10
  %18 = icmp eq i8 %17, 0
  br i1 %15, label %21, label %19

19:                                               ; preds = %13
  br i1 %18, label %20, label %23

20:                                               ; preds = %19
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 29) #10
  br label %23

21:                                               ; preds = %13
  br i1 %18, label %23, label %22

22:                                               ; preds = %21
  tail call void @BM_data_layer_free(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 29) #10
  br label %23

23:                                               ; preds = %21, %22, %19, %20
  %24 = and i32 %3, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %27 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %26, i32 noundef 30) #10
  %28 = icmp eq i8 %27, 0
  br i1 %25, label %31, label %29

29:                                               ; preds = %23
  br i1 %28, label %30, label %33

30:                                               ; preds = %29
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 30) #10
  br label %33

31:                                               ; preds = %23
  br i1 %28, label %33, label %32

32:                                               ; preds = %31
  tail call void @BM_data_layer_free(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 30) #10
  br label %33

33:                                               ; preds = %31, %32, %29, %30
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_bm_from_me(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %0, align 8, !tbaa !52
  tail call void @CustomData_free(ptr noundef nonnull %6, i32 noundef %7) #10
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !53
  tail call void @CustomData_free(ptr noundef nonnull %8, i32 noundef %10) #10
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !54
  tail call void @CustomData_free(ptr noundef nonnull %11, i32 noundef %13) #10
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !55
  tail call void @CustomData_free(ptr noundef nonnull %14, i32 noundef %16) #10
  %17 = icmp eq ptr %1, null
  br i1 %17, label %415, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %24 = load i64, ptr @CD_MASK_BMESH, align 8, !tbaa !57
  tail call void @CustomData_copy(ptr noundef nonnull %23, ptr noundef nonnull %6, i64 noundef %24, i32 noundef 0, i32 noundef 0) #10
  %25 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  tail call void @CustomData_copy(ptr noundef nonnull %25, ptr noundef nonnull %8, i64 noundef %24, i32 noundef 0, i32 noundef 0) #10
  %26 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  tail call void @CustomData_copy(ptr noundef nonnull %26, ptr noundef nonnull %11, i64 noundef %24, i32 noundef 0, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  tail call void @CustomData_copy(ptr noundef nonnull %27, ptr noundef nonnull %14, i64 noundef %24, i32 noundef 0, i32 noundef 0) #10
  %28 = load i32, ptr %19, align 8, !tbaa !56
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %6, i32 noundef %28, i8 noundef zeroext 1) #10
  %29 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %30 = load i32, ptr %29, align 4, !tbaa !59
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %8, i32 noundef %30, i8 noundef zeroext 2) #10
  %31 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %32 = load i32, ptr %31, align 4, !tbaa !60
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %11, i32 noundef %32, i8 noundef zeroext 4) #10
  %33 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %34 = load i32, ptr %33, align 8, !tbaa !61
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %14, i32 noundef %34, i8 noundef zeroext 8) #10
  br label %415

35:                                               ; preds = %18
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %37 = sext i32 %20 to i64
  %38 = shl nsw i64 %37, 3
  %39 = tail call ptr %36(i64 noundef %38, ptr noundef nonnull @.str) #10
  %40 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %41 = load i64, ptr @CD_MASK_BMESH, align 8, !tbaa !57
  tail call void @CustomData_copy(ptr noundef nonnull %40, ptr noundef nonnull %6, i64 noundef %41, i32 noundef 1, i32 noundef 0) #10
  %42 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  tail call void @CustomData_copy(ptr noundef nonnull %42, ptr noundef nonnull %8, i64 noundef %41, i32 noundef 1, i32 noundef 0) #10
  %43 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  tail call void @CustomData_copy(ptr noundef nonnull %43, ptr noundef nonnull %11, i64 noundef %41, i32 noundef 1, i32 noundef 0) #10
  %44 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  tail call void @CustomData_copy(ptr noundef nonnull %44, ptr noundef nonnull %14, i64 noundef %41, i32 noundef 1, i32 noundef 0) #10
  %45 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %14, i32 noundef 15) #10
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %35, %47
  %48 = phi i32 [ %54, %47 ], [ 0, %35 ]
  %49 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %14, i32 noundef 15, i32 noundef %48) #10
  %50 = load ptr, ptr %14, align 8, !tbaa !45
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.CustomDataLayer, ptr %50, i64 %51, i32 8
  %53 = tail call zeroext i8 @CustomData_set_layer_name(ptr noundef nonnull %11, i32 noundef 16, i32 noundef %48, ptr noundef nonnull %52) #10
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
  %65 = tail call ptr @BLI_findlink(ptr noundef nonnull %63, i32 noundef %64) #10
  br label %66

66:                                               ; preds = %56, %58, %62
  %67 = phi ptr [ %65, %62 ], [ null, %58 ], [ null, %56 ]
  %68 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !64
  %70 = icmp eq ptr %69, null
  br i1 %70, label %124, label %71

71:                                               ; preds = %66
  %72 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 27, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %73 = load ptr, ptr %68, align 8, !tbaa !64
  %74 = getelementptr inbounds %struct.Key, ptr %73, i64 0, i32 14
  %75 = load i32, ptr %74, align 4, !tbaa !65
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load ptr, ptr @stderr, align 8, !tbaa !62
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.BM_mesh_bm_from_me) #12
  %80 = load ptr, ptr %68, align 8, !tbaa !64
  %81 = getelementptr inbounds %struct.Key, ptr %80, i64 0, i32 14
  store i32 1, ptr %81, align 4, !tbaa !65
  %82 = getelementptr inbounds %struct.Key, ptr %80, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !62
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %77, %85
  %86 = phi i32 [ %88, %85 ], [ 1, %77 ]
  %87 = phi ptr [ %90, %85 ], [ %83, %77 ]
  %88 = add nuw nsw i32 %86, 1
  %89 = getelementptr inbounds %struct.KeyBlock, ptr %87, i64 0, i32 9
  store i32 %86, ptr %89, align 4, !tbaa !67
  %90 = load ptr, ptr %87, align 8, !tbaa !62
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %85, !llvm.loop !69

92:                                               ; preds = %85
  store i32 %88, ptr %81, align 4, !tbaa !65
  br label %93

93:                                               ; preds = %77, %92, %71
  %94 = phi ptr [ %80, %77 ], [ %80, %92 ], [ %73, %71 ]
  %95 = icmp eq ptr %67, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.KeyBlock, ptr %67, i64 0, i32 8
  %98 = load i32, ptr %97, align 8, !tbaa !70
  %99 = load i32, ptr %19, align 8, !tbaa !56
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.KeyBlock, ptr %67, i64 0, i32 10
  %103 = load ptr, ptr %102, align 8, !tbaa !71
  %104 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 29
  store i32 %4, ptr %104, align 4, !tbaa !72
  br label %105

105:                                              ; preds = %101, %96, %93
  %106 = phi ptr [ %103, %101 ], [ null, %96 ], [ null, %93 ]
  %107 = getelementptr inbounds %struct.Key, ptr %94, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !62
  %109 = icmp eq ptr %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %105, %110
  %111 = phi ptr [ %122, %110 ], [ %108, %105 ]
  %112 = phi i32 [ %121, %110 ], [ 0, %105 ]
  %113 = getelementptr inbounds %struct.KeyBlock, ptr %111, i64 0, i32 11
  %114 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %6, i32 noundef 28, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %113) #10
  %115 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %6, i32 noundef 28, i32 noundef %112) #10
  %116 = getelementptr inbounds %struct.KeyBlock, ptr %111, i64 0, i32 9
  %117 = load i32, ptr %116, align 4, !tbaa !67
  %118 = load ptr, ptr %6, align 8, !tbaa !73
  %119 = sext i32 %115 to i64
  %120 = getelementptr inbounds %struct.CustomDataLayer, ptr %118, i64 %119, i32 7
  store i32 %117, ptr %120, align 4, !tbaa !74
  %121 = add nuw nsw i32 %112, 1
  %122 = load ptr, ptr %111, align 8, !tbaa !62
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %110, !llvm.loop !76

124:                                              ; preds = %110, %105, %66
  %125 = phi ptr [ null, %66 ], [ %106, %105 ], [ %106, %110 ]
  %126 = load i32, ptr %19, align 8, !tbaa !56
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %6, i32 noundef %126, i8 noundef zeroext 1) #10
  %127 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %128 = load i32, ptr %127, align 4, !tbaa !59
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %8, i32 noundef %128, i8 noundef zeroext 2) #10
  %129 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %130 = load i32, ptr %129, align 4, !tbaa !60
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %11, i32 noundef %130, i8 noundef zeroext 4) #10
  %131 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %132 = load i32, ptr %131, align 8, !tbaa !61
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %14, i32 noundef %132, i8 noundef zeroext 8) #10
  %133 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 41
  %134 = load i8, ptr %133, align 8, !tbaa !48
  tail call void @BM_mesh_cd_flag_apply(ptr noundef nonnull %0, i8 noundef zeroext %134) #11
  %135 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 29) #10
  %136 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 29) #10
  %137 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 30) #10
  %138 = load ptr, ptr %68, align 8, !tbaa !64
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %124
  %141 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 27) #10
  br label %142

142:                                              ; preds = %124, %140
  %143 = phi i32 [ %141, %140 ], [ -1, %124 ]
  %144 = load i32, ptr %19, align 8, !tbaa !56
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %216

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !77
  %149 = icmp ne ptr %125, null
  %150 = icmp ne i8 %3, 0
  %151 = and i1 %150, %149
  %152 = icmp eq i32 %135, -1
  %153 = sext i32 %135 to i64
  %154 = icmp eq i32 %143, -1
  %155 = sext i32 %143 to i64
  br label %156

156:                                              ; preds = %146, %210
  %157 = phi i64 [ 0, %146 ], [ %211, %210 ]
  %158 = phi ptr [ %148, %146 ], [ %212, %210 ]
  %159 = getelementptr inbounds [3 x float], ptr %125, i64 %157
  %160 = select i1 %151, ptr %159, ptr %158
  %161 = tail call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef %160, ptr noundef null, i32 noundef 4) #10
  %162 = getelementptr inbounds ptr, ptr %39, i64 %157
  store ptr %161, ptr %162, align 8, !tbaa !62
  %163 = trunc i64 %157 to i32
  tail call fastcc void @_bm_elem_index_set(ptr noundef %161, i32 noundef %163) #11
  %164 = getelementptr inbounds %struct.MVert, ptr %158, i64 0, i32 2
  %165 = load i8, ptr %164, align 2, !tbaa !78
  %166 = and i8 %165, -2
  %167 = tail call zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext %166) #10
  %168 = getelementptr inbounds %struct.BMHeader, ptr %161, i64 0, i32 3
  store i8 %167, ptr %168, align 1, !tbaa !80
  %169 = load i8, ptr %164, align 2, !tbaa !78
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %156
  tail call void @BM_vert_select_set(ptr noundef nonnull %0, ptr noundef nonnull %161, i8 noundef zeroext 1) #10
  br label %173

173:                                              ; preds = %172, %156
  %174 = getelementptr inbounds %struct.BMVert, ptr %161, i64 0, i32 3
  %175 = getelementptr inbounds %struct.MVert, ptr %158, i64 0, i32 1
  tail call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %174, ptr noundef nonnull %175) #11
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %40, ptr noundef nonnull %6, i32 noundef %163, ptr noundef nonnull %161, i8 noundef zeroext 1) #10
  br i1 %152, label %183, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.MVert, ptr %158, i64 0, i32 3
  %178 = load i8, ptr %177, align 1, !tbaa !83
  %179 = uitofp i8 %178 to float
  %180 = fdiv float %179, 2.550000e+02
  %181 = load ptr, ptr %161, align 8, !tbaa !84
  %182 = getelementptr inbounds i8, ptr %181, i64 %153
  store float %180, ptr %182, align 4, !tbaa !85
  br label %183

183:                                              ; preds = %176, %173
  %184 = load ptr, ptr %68, align 8, !tbaa !64
  %185 = icmp eq ptr %184, null
  br i1 %185, label %210, label %186

186:                                              ; preds = %183
  br i1 %154, label %190, label %187

187:                                              ; preds = %186
  %188 = load ptr, ptr %161, align 8, !tbaa !84
  %189 = getelementptr inbounds i8, ptr %188, i64 %155
  store i32 %163, ptr %189, align 4, !tbaa !86
  br label %190

190:                                              ; preds = %187, %186
  %191 = getelementptr inbounds %struct.Key, ptr %184, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !62
  %193 = icmp eq ptr %192, null
  br i1 %193, label %210, label %194

194:                                              ; preds = %190
  %195 = mul nuw nsw i64 %157, 3
  br label %196

196:                                              ; preds = %194, %206
  %197 = phi ptr [ %192, %194 ], [ %208, %206 ]
  %198 = phi i32 [ 0, %194 ], [ %207, %206 ]
  %199 = load ptr, ptr %161, align 8, !tbaa !84
  %200 = tail call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %6, ptr noundef %199, i32 noundef 28, i32 noundef %198) #10
  %201 = icmp eq ptr %200, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.KeyBlock, ptr %197, i64 0, i32 10
  %204 = load ptr, ptr %203, align 8, !tbaa !71
  %205 = getelementptr inbounds float, ptr %204, i64 %195
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %200, ptr noundef %205) #11
  br label %206

206:                                              ; preds = %202, %196
  %207 = add nuw nsw i32 %198, 1
  %208 = load ptr, ptr %197, align 8, !tbaa !62
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %196, !llvm.loop !87

210:                                              ; preds = %206, %190, %183
  %211 = add nuw nsw i64 %157, 1
  %212 = getelementptr inbounds %struct.MVert, ptr %158, i64 1
  %213 = load i32, ptr %19, align 8, !tbaa !56
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %156, label %216, !llvm.loop !88

216:                                              ; preds = %210, %142
  %217 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %218 = load i8, ptr %217, align 4, !tbaa !89
  %219 = and i8 %218, -2
  store i8 %219, ptr %217, align 4, !tbaa !89
  %220 = load i32, ptr %127, align 4, !tbaa !59
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %216
  %223 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %223(ptr noundef %39) #10
  br label %415

224:                                              ; preds = %216
  %225 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %226 = sext i32 %220 to i64
  %227 = shl nsw i64 %226, 3
  %228 = tail call ptr %225(i64 noundef %227, ptr noundef nonnull @.str.2) #10
  %229 = load i32, ptr %127, align 4, !tbaa !59
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %284

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 16
  %233 = load ptr, ptr %232, align 8, !tbaa !90
  %234 = icmp eq i32 %136, -1
  %235 = sext i32 %136 to i64
  %236 = icmp eq i32 %137, -1
  %237 = sext i32 %137 to i64
  br label %238

238:                                              ; preds = %231, %278
  %239 = phi i64 [ 0, %231 ], [ %279, %278 ]
  %240 = phi ptr [ %233, %231 ], [ %280, %278 ]
  %241 = load i32, ptr %240, align 4, !tbaa !91
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds ptr, ptr %39, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !62
  %245 = getelementptr inbounds %struct.MEdge, ptr %240, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !93
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds ptr, ptr %39, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !62
  %250 = tail call ptr @BM_edge_create(ptr noundef nonnull %0, ptr noundef %244, ptr noundef %249, ptr noundef null, i32 noundef 4) #10
  %251 = getelementptr inbounds ptr, ptr %228, i64 %239
  store ptr %250, ptr %251, align 8, !tbaa !62
  %252 = trunc i64 %239 to i32
  tail call fastcc void @_bm_elem_index_set(ptr noundef %250, i32 noundef %252) #11
  %253 = getelementptr inbounds %struct.MEdge, ptr %240, i64 0, i32 4
  %254 = load i16, ptr %253, align 2, !tbaa !94
  %255 = and i16 %254, -2
  %256 = tail call zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext %255) #10
  %257 = getelementptr inbounds %struct.BMHeader, ptr %250, i64 0, i32 3
  store i8 %256, ptr %257, align 1, !tbaa !95
  %258 = load i16, ptr %253, align 2, !tbaa !94
  %259 = and i16 %258, 1
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %238
  tail call void @BM_edge_select_set(ptr noundef nonnull %0, ptr noundef nonnull %250, i8 noundef zeroext 1) #10
  br label %262

262:                                              ; preds = %261, %238
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %42, ptr noundef nonnull %8, i32 noundef %252, ptr noundef nonnull %250, i8 noundef zeroext 1) #10
  br i1 %234, label %270, label %263

263:                                              ; preds = %262
  %264 = getelementptr inbounds %struct.MEdge, ptr %240, i64 0, i32 3
  %265 = load i8, ptr %264, align 1, !tbaa !98
  %266 = uitofp i8 %265 to float
  %267 = fdiv float %266, 2.550000e+02
  %268 = load ptr, ptr %250, align 8, !tbaa !99
  %269 = getelementptr inbounds i8, ptr %268, i64 %235
  store float %267, ptr %269, align 4, !tbaa !85
  br label %270

270:                                              ; preds = %263, %262
  br i1 %236, label %278, label %271

271:                                              ; preds = %270
  %272 = getelementptr inbounds %struct.MEdge, ptr %240, i64 0, i32 2
  %273 = load i8, ptr %272, align 4, !tbaa !100
  %274 = uitofp i8 %273 to float
  %275 = fdiv float %274, 2.550000e+02
  %276 = load ptr, ptr %250, align 8, !tbaa !99
  %277 = getelementptr inbounds i8, ptr %276, i64 %237
  store float %275, ptr %277, align 4, !tbaa !85
  br label %278

278:                                              ; preds = %270, %271
  %279 = add nuw nsw i64 %239, 1
  %280 = getelementptr inbounds %struct.MEdge, ptr %240, i64 1
  %281 = load i32, ptr %127, align 4, !tbaa !59
  %282 = sext i32 %281 to i64
  %283 = icmp slt i64 %279, %282
  br i1 %283, label %238, label %284, !llvm.loop !101

284:                                              ; preds = %278, %224
  %285 = load i8, ptr %217, align 4, !tbaa !89
  %286 = and i8 %285, -3
  store i8 %286, ptr %217, align 4, !tbaa !89
  %287 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 9
  %288 = load ptr, ptr %287, align 8, !tbaa !102
  %289 = load i32, ptr %131, align 8, !tbaa !61
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %351

291:                                              ; preds = %284
  %292 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 7
  %293 = load ptr, ptr %292, align 8, !tbaa !103
  %294 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 32
  %295 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %296 = icmp eq i8 %2, 0
  %297 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  br label %298

298:                                              ; preds = %291, %343
  %299 = phi ptr [ %293, %291 ], [ %346, %343 ]
  %300 = phi i32 [ 0, %291 ], [ %344, %343 ]
  %301 = phi i32 [ 0, %291 ], [ %345, %343 ]
  %302 = load i32, ptr %299, align 4, !tbaa !104
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.MLoop, ptr %288, i64 %303
  %305 = tail call fastcc ptr @bm_face_create_from_mpoly(ptr noundef nonnull %299, ptr noundef %304, ptr noundef nonnull %0, ptr noundef %39, ptr noundef %228) #11
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %309

307:                                              ; preds = %298
  %308 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @__func__.BM_mesh_bm_from_me, ptr noundef nonnull %297, i32 noundef %301) #11
  br label %343

309:                                              ; preds = %298
  %310 = load i32, ptr %15, align 4, !tbaa !55
  %311 = add nsw i32 %310, -1
  tail call fastcc void @_bm_elem_index_set(ptr noundef nonnull %305, i32 noundef %311) #11
  %312 = getelementptr inbounds %struct.MPoly, ptr %299, i64 0, i32 3
  %313 = load i8, ptr %312, align 2, !tbaa !106
  %314 = and i8 %313, -3
  %315 = tail call zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext %314) #10
  %316 = getelementptr inbounds %struct.BMHeader, ptr %305, i64 0, i32 3
  store i8 %315, ptr %316, align 1, !tbaa !107
  %317 = load i8, ptr %312, align 2, !tbaa !106
  %318 = and i8 %317, 2
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %309
  tail call void @BM_face_select_set(ptr noundef nonnull %0, ptr noundef nonnull %305, i8 noundef zeroext 1) #10
  br label %321

321:                                              ; preds = %320, %309
  %322 = getelementptr inbounds %struct.MPoly, ptr %299, i64 0, i32 2
  %323 = load i16, ptr %322, align 4, !tbaa !109
  %324 = getelementptr inbounds %struct.BMFace, ptr %305, i64 0, i32 5
  store i16 %323, ptr %324, align 8, !tbaa !110
  %325 = load i32, ptr %294, align 8, !tbaa !111
  %326 = icmp eq i32 %301, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %321
  store ptr %305, ptr %295, align 8, !tbaa !112
  br label %328

328:                                              ; preds = %327, %321
  %329 = load i32, ptr %299, align 4, !tbaa !104
  %330 = getelementptr inbounds %struct.BMFace, ptr %305, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !113
  br label %332

332:                                              ; preds = %332, %328
  %333 = phi i32 [ %329, %328 ], [ %337, %332 ]
  %334 = phi i32 [ %300, %328 ], [ %336, %332 ]
  %335 = phi ptr [ %331, %328 ], [ %339, %332 ]
  %336 = add nsw i32 %334, 1
  tail call fastcc void @_bm_elem_index_set(ptr noundef %335, i32 noundef %334) #11
  %337 = add nsw i32 %333, 1
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %43, ptr noundef nonnull %11, i32 noundef %333, ptr noundef %335, i8 noundef zeroext 1) #10
  %338 = getelementptr inbounds %struct.BMLoop, ptr %335, i64 0, i32 6
  %339 = load ptr, ptr %338, align 8, !tbaa !114
  %340 = icmp eq ptr %339, %331
  br i1 %340, label %341, label %332, !llvm.loop !116

341:                                              ; preds = %332
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %44, ptr noundef nonnull %14, i32 noundef %301, ptr noundef nonnull %305, i8 noundef zeroext 1) #10
  br i1 %296, label %343, label %342

342:                                              ; preds = %341
  tail call void @BM_face_normal_update(ptr noundef nonnull %305) #10
  br label %343

343:                                              ; preds = %341, %342, %307
  %344 = phi i32 [ %300, %307 ], [ %336, %342 ], [ %336, %341 ]
  %345 = add nuw nsw i32 %301, 1
  %346 = getelementptr inbounds %struct.MPoly, ptr %299, i64 1
  %347 = load i32, ptr %131, align 8, !tbaa !61
  %348 = icmp slt i32 %345, %347
  br i1 %348, label %298, label %349, !llvm.loop !117

349:                                              ; preds = %343
  %350 = load i8, ptr %217, align 4, !tbaa !89
  br label %351

351:                                              ; preds = %349, %284
  %352 = phi i8 [ %350, %349 ], [ %286, %284 ]
  %353 = and i8 %352, -13
  store i8 %353, ptr %217, align 4, !tbaa !89
  %354 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 6
  %355 = load ptr, ptr %354, align 8, !tbaa !118
  %356 = icmp eq ptr %355, null
  %357 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 29
  br i1 %356, label %358, label %359

358:                                              ; preds = %351
  store i32 0, ptr %357, align 4, !tbaa !119
  br label %412

359:                                              ; preds = %351
  %360 = load i32, ptr %357, align 4, !tbaa !119
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %410, label %362

362:                                              ; preds = %359
  %363 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %364 = load i32, ptr %0, align 8, !tbaa !52
  %365 = sext i32 %364 to i64
  %366 = shl nsw i64 %365, 3
  %367 = tail call ptr %363(i64 noundef %366, ptr noundef nonnull @.str.4) #10
  %368 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %369 = load i32, ptr %9, align 4, !tbaa !53
  %370 = sext i32 %369 to i64
  %371 = shl nsw i64 %370, 3
  %372 = tail call ptr %368(i64 noundef %371, ptr noundef nonnull @.str.5) #10
  %373 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %374 = load i32, ptr %15, align 4, !tbaa !55
  %375 = sext i32 %374 to i64
  %376 = shl nsw i64 %375, 3
  %377 = tail call ptr %373(i64 noundef %376, ptr noundef nonnull @.str.6) #10
  %378 = load i32, ptr %0, align 8, !tbaa !52
  %379 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null, ptr noundef %367, i32 noundef %378) #10
  %380 = load i32, ptr %9, align 4, !tbaa !53
  %381 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null, ptr noundef %372, i32 noundef %380) #10
  %382 = load i32, ptr %15, align 4, !tbaa !55
  %383 = tail call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null, ptr noundef %377, i32 noundef %382) #10
  %384 = load i32, ptr %357, align 4, !tbaa !119
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %406

386:                                              ; preds = %362
  %387 = load ptr, ptr %354, align 8, !tbaa !118
  br label %388

388:                                              ; preds = %386, %401
  %389 = phi ptr [ %403, %401 ], [ %387, %386 ]
  %390 = phi i32 [ %402, %401 ], [ 0, %386 ]
  %391 = getelementptr inbounds %struct.MSelect, ptr %389, i64 0, i32 1
  %392 = load i32, ptr %391, align 4, !tbaa !120
  switch i32 %392, label %401 [
    i32 0, label %395
    i32 1, label %393
    i32 2, label %394
  ]

393:                                              ; preds = %388
  br label %395

394:                                              ; preds = %388
  br label %395

395:                                              ; preds = %388, %394, %393
  %396 = phi ptr [ %372, %393 ], [ %377, %394 ], [ %367, %388 ]
  %397 = load i32, ptr %389, align 4, !tbaa !122
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds ptr, ptr %396, i64 %398
  %400 = load ptr, ptr %399, align 8, !tbaa !62
  tail call void @_bm_select_history_store(ptr noundef nonnull %0, ptr noundef %400) #10
  br label %401

401:                                              ; preds = %395, %388
  %402 = add nuw nsw i32 %390, 1
  %403 = getelementptr inbounds %struct.MSelect, ptr %389, i64 1
  %404 = load i32, ptr %357, align 4, !tbaa !119
  %405 = icmp slt i32 %402, %404
  br i1 %405, label %388, label %406, !llvm.loop !123

406:                                              ; preds = %401, %362
  %407 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %407(ptr noundef %367) #10
  %408 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %408(ptr noundef %372) #10
  %409 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %409(ptr noundef %377) #10
  br label %412

410:                                              ; preds = %359
  store i32 0, ptr %357, align 4, !tbaa !119
  %411 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %411(ptr noundef nonnull %355) #10
  store ptr null, ptr %354, align 8, !tbaa !118
  br label %412

412:                                              ; preds = %358, %410, %406
  %413 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %413(ptr noundef %39) #10
  %414 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %414(ptr noundef %228) #10
  br label %415

415:                                              ; preds = %22, %5, %412, %222
  ret void
}

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_init_pool(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_set_layer_name(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !124 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !126 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !127
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !127
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @CustomData_to_bmesh_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !128 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  store float %3, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_face_create_from_mpoly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !129 {
  %6 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !130
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
  %18 = load i32, ptr %17, align 4, !tbaa !131
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %21, ptr %22, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.MLoop, ptr %17, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !133
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %4, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = getelementptr inbounds ptr, ptr %11, i64 %16
  store ptr %27, ptr %28, align 8, !tbaa !62
  %29 = add nuw nsw i64 %16, 1
  %30 = getelementptr inbounds %struct.MLoop, ptr %17, i64 1
  %31 = icmp eq i64 %29, %14
  br i1 %31, label %32, label %15, !llvm.loop !134

32:                                               ; preds = %15, %5
  %33 = call ptr @BM_face_create(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %7, ptr noundef null, i32 noundef 4) #10
  ret ptr %33
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_bm_to_me(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 29) #10
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 29) #10
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 30) #10
  %10 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = load i32, ptr %0, align 8, !tbaa !52
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %16 = sext i32 %12 to i64
  %17 = mul nsw i64 %16, 20
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.7) #10
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
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.8) #10
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
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.9) #10
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
  %48 = tail call ptr %45(i64 noundef %47, ptr noundef nonnull @.str.10) #10
  br label %49

49:                                               ; preds = %39, %44
  %50 = phi ptr [ %48, %44 ], [ null, %39 ]
  %51 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !77
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %56 = tail call ptr @CustomData_set_layer(ptr noundef nonnull %55, i32 noundef 0, ptr noundef null) #10
  br label %57

57:                                               ; preds = %54, %49
  %58 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 21
  %59 = load i32, ptr %10, align 8, !tbaa !56
  tail call void @CustomData_free(ptr noundef nonnull %58, i32 noundef %59) #10
  %60 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 22
  %61 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 27
  %62 = load i32, ptr %61, align 4, !tbaa !59
  tail call void @CustomData_free(ptr noundef nonnull %60, i32 noundef %62) #10
  %63 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 23
  %64 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 28
  %65 = load i32, ptr %64, align 8, !tbaa !135
  tail call void @CustomData_free(ptr noundef nonnull %63, i32 noundef %65) #10
  %66 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25
  %67 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 31
  %68 = load i32, ptr %67, align 4, !tbaa !60
  tail call void @CustomData_free(ptr noundef nonnull %66, i32 noundef %68) #10
  %69 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  %70 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 30
  %71 = load i32, ptr %70, align 8, !tbaa !61
  tail call void @CustomData_free(ptr noundef nonnull %69, i32 noundef %71) #10
  %72 = load <2 x i32>, ptr %0, align 8, !tbaa !86
  store <2 x i32> %72, ptr %10, align 8, !tbaa !86
  %73 = load <2 x i32>, ptr %41, align 8, !tbaa !86
  %74 = shufflevector <2 x i32> %73, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %74, ptr %70, align 8, !tbaa !86
  store i32 0, ptr %64, align 8, !tbaa !135
  %75 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 32
  store i32 -1, ptr %75, align 8, !tbaa !111
  %76 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !57
  %77 = extractelement <2 x i32> %72, i64 0
  tail call void @CustomData_copy(ptr noundef nonnull %5, ptr noundef nonnull %58, i64 noundef %76, i32 noundef 1, i32 noundef %77) #10
  %78 = load i32, ptr %61, align 4, !tbaa !59
  tail call void @CustomData_copy(ptr noundef nonnull %7, ptr noundef nonnull %60, i64 noundef %76, i32 noundef 1, i32 noundef %78) #10
  %79 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %80 = load i32, ptr %67, align 4, !tbaa !60
  tail call void @CustomData_copy(ptr noundef nonnull %79, ptr noundef nonnull %66, i64 noundef %76, i32 noundef 1, i32 noundef %80) #10
  %81 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %82 = load i32, ptr %70, align 8, !tbaa !61
  tail call void @CustomData_copy(ptr noundef nonnull %81, ptr noundef nonnull %69, i64 noundef %76, i32 noundef 1, i32 noundef %82) #10
  %83 = load i32, ptr %10, align 8, !tbaa !56
  %84 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %58, i32 noundef 0, i32 noundef 0, ptr noundef %20, i32 noundef %83) #10
  %85 = load i32, ptr %61, align 4, !tbaa !59
  %86 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %60, i32 noundef 3, i32 noundef 0, ptr noundef %30, i32 noundef %85) #10
  %87 = load i32, ptr %67, align 4, !tbaa !60
  %88 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %66, i32 noundef 26, i32 noundef 0, ptr noundef %50, i32 noundef %87) #10
  %89 = load i32, ptr %70, align 8, !tbaa !61
  %90 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %69, i32 noundef 25, i32 noundef 0, ptr noundef %40, i32 noundef %89) #10
  %91 = tail call zeroext i8 @BM_mesh_cd_flag_from_bmesh(ptr noundef nonnull %0) #11, !range !47
  %92 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 41
  store i8 %91, ptr %92, align 8, !tbaa !48
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %1, i8 noundef zeroext 0) #10
  %93 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1) #11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %120, label %95

95:                                               ; preds = %57
  %96 = icmp eq i32 %6, -1
  %97 = sext i32 %6 to i64
  br label %98

98:                                               ; preds = %95, %115
  %99 = phi ptr [ %20, %95 ], [ %117, %115 ]
  %100 = phi ptr [ %93, %95 ], [ %118, %115 ]
  %101 = phi i32 [ 0, %95 ], [ %116, %115 ]
  %102 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %99, ptr noundef nonnull %102) #11
  %103 = getelementptr inbounds %struct.MVert, ptr %99, i64 0, i32 1
  %104 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 3
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %103, ptr noundef nonnull %104) #11
  %105 = call zeroext i8 @BM_vert_flag_to_mflag(ptr noundef nonnull %100) #10
  %106 = getelementptr inbounds %struct.MVert, ptr %99, i64 0, i32 2
  store i8 %105, ptr %106, align 2, !tbaa !78
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %100, i32 noundef %101) #11
  %107 = load ptr, ptr %100, align 8, !tbaa !84
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %5, ptr noundef nonnull %58, ptr noundef %107, i32 noundef %101) #10
  br i1 %96, label %115, label %108

108:                                              ; preds = %98
  %109 = load ptr, ptr %100, align 8, !tbaa !84
  %110 = getelementptr inbounds i8, ptr %109, i64 %97
  %111 = load float, ptr %110, align 4, !tbaa !85
  %112 = fmul float %111, 2.550000e+02
  %113 = fptoui float %112 to i8
  %114 = getelementptr inbounds %struct.MVert, ptr %99, i64 0, i32 3
  store i8 %113, ptr %114, align 1, !tbaa !83
  br label %115

115:                                              ; preds = %108, %98
  %116 = add nuw nsw i32 %101, 1
  %117 = getelementptr inbounds %struct.MVert, ptr %99, i64 1
  %118 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %98, !llvm.loop !136

120:                                              ; preds = %115, %57
  %121 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %122 = load i8, ptr %121, align 4, !tbaa !89
  %123 = and i8 %122, -2
  store i8 %123, ptr %121, align 4, !tbaa !89
  %124 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 2) #11
  %125 = icmp eq ptr %124, null
  br i1 %125, label %165, label %126

126:                                              ; preds = %120
  %127 = icmp eq i32 %9, -1
  %128 = sext i32 %9 to i64
  %129 = icmp eq i32 %8, -1
  %130 = sext i32 %8 to i64
  br label %131

131:                                              ; preds = %126, %160
  %132 = phi ptr [ %30, %126 ], [ %162, %160 ]
  %133 = phi ptr [ %124, %126 ], [ %163, %160 ]
  %134 = phi i32 [ 0, %126 ], [ %161, %160 ]
  %135 = getelementptr inbounds %struct.BMEdge, ptr %133, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !137
  %137 = call fastcc i32 @_bm_elem_index_get(ptr noundef %136) #11
  store i32 %137, ptr %132, align 4, !tbaa !91
  %138 = getelementptr inbounds %struct.BMEdge, ptr %133, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !138
  %140 = call fastcc i32 @_bm_elem_index_get(ptr noundef %139) #11
  %141 = getelementptr inbounds %struct.MEdge, ptr %132, i64 0, i32 1
  store i32 %140, ptr %141, align 4, !tbaa !93
  %142 = call signext i16 @BM_edge_flag_to_mflag(ptr noundef nonnull %133) #10
  %143 = getelementptr inbounds %struct.MEdge, ptr %132, i64 0, i32 4
  store i16 %142, ptr %143, align 2, !tbaa !94
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %133, i32 noundef %134) #11
  %144 = load ptr, ptr %133, align 8, !tbaa !99
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %7, ptr noundef nonnull %60, ptr noundef %144, i32 noundef %134) #10
  call fastcc void @bmesh_quick_edgedraw_flag(ptr noundef nonnull %132, ptr noundef nonnull %133) #11
  br i1 %127, label %152, label %145

145:                                              ; preds = %131
  %146 = load ptr, ptr %133, align 8, !tbaa !99
  %147 = getelementptr inbounds i8, ptr %146, i64 %128
  %148 = load float, ptr %147, align 4, !tbaa !85
  %149 = fmul float %148, 2.550000e+02
  %150 = fptoui float %149 to i8
  %151 = getelementptr inbounds %struct.MEdge, ptr %132, i64 0, i32 2
  store i8 %150, ptr %151, align 4, !tbaa !100
  br label %152

152:                                              ; preds = %145, %131
  br i1 %129, label %160, label %153

153:                                              ; preds = %152
  %154 = load ptr, ptr %133, align 8, !tbaa !99
  %155 = getelementptr inbounds i8, ptr %154, i64 %130
  %156 = load float, ptr %155, align 4, !tbaa !85
  %157 = fmul float %156, 2.550000e+02
  %158 = fptoui float %157 to i8
  %159 = getelementptr inbounds %struct.MEdge, ptr %132, i64 0, i32 3
  store i8 %158, ptr %159, align 1, !tbaa !98
  br label %160

160:                                              ; preds = %153, %152
  %161 = add nuw nsw i32 %134, 1
  %162 = getelementptr inbounds %struct.MEdge, ptr %132, i64 1
  %163 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %131, !llvm.loop !139

165:                                              ; preds = %160, %120
  %166 = load i8, ptr %121, align 4, !tbaa !89
  %167 = and i8 %166, -3
  store i8 %167, ptr %121, align 4, !tbaa !89
  %168 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 3) #11
  %169 = icmp eq ptr %168, null
  br i1 %169, label %215, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  br label %172

172:                                              ; preds = %170, %209
  %173 = phi ptr [ %50, %170 ], [ %201, %209 ]
  %174 = phi ptr [ %40, %170 ], [ %212, %209 ]
  %175 = phi ptr [ %168, %170 ], [ %213, %209 ]
  %176 = phi i32 [ 0, %170 ], [ %211, %209 ]
  %177 = phi i32 [ 0, %170 ], [ %200, %209 ]
  store i32 %177, ptr %174, align 4, !tbaa !104
  %178 = getelementptr inbounds %struct.BMFace, ptr %175, i64 0, i32 3
  %179 = load i32, ptr %178, align 8, !tbaa !140
  %180 = getelementptr inbounds %struct.MPoly, ptr %174, i64 0, i32 1
  store i32 %179, ptr %180, align 4, !tbaa !130
  %181 = getelementptr inbounds %struct.BMFace, ptr %175, i64 0, i32 5
  %182 = load i16, ptr %181, align 8, !tbaa !110
  %183 = getelementptr inbounds %struct.MPoly, ptr %174, i64 0, i32 2
  store i16 %182, ptr %183, align 4, !tbaa !109
  %184 = call zeroext i8 @BM_face_flag_to_mflag(ptr noundef nonnull %175) #10
  %185 = getelementptr inbounds %struct.MPoly, ptr %174, i64 0, i32 3
  store i8 %184, ptr %185, align 2, !tbaa !106
  %186 = getelementptr inbounds %struct.BMFace, ptr %175, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !113
  br label %188

188:                                              ; preds = %188, %172
  %189 = phi i32 [ %177, %172 ], [ %200, %188 ]
  %190 = phi ptr [ %187, %172 ], [ %203, %188 ]
  %191 = phi ptr [ %173, %172 ], [ %201, %188 ]
  %192 = getelementptr inbounds %struct.BMLoop, ptr %190, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !141
  %194 = call fastcc i32 @_bm_elem_index_get(ptr noundef %193) #11
  %195 = getelementptr inbounds %struct.MLoop, ptr %191, i64 0, i32 1
  store i32 %194, ptr %195, align 4, !tbaa !133
  %196 = getelementptr inbounds %struct.BMLoop, ptr %190, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !142
  %198 = call fastcc i32 @_bm_elem_index_get(ptr noundef %197) #11
  store i32 %198, ptr %191, align 4, !tbaa !131
  %199 = load ptr, ptr %190, align 8, !tbaa !143
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %79, ptr noundef nonnull %66, ptr noundef %199, i32 noundef %189) #10
  %200 = add nsw i32 %189, 1
  %201 = getelementptr inbounds %struct.MLoop, ptr %191, i64 1
  %202 = getelementptr inbounds %struct.BMLoop, ptr %190, i64 0, i32 6
  %203 = load ptr, ptr %202, align 8, !tbaa !114
  %204 = icmp eq ptr %203, %187
  br i1 %204, label %205, label %188, !llvm.loop !144

205:                                              ; preds = %188
  %206 = load ptr, ptr %171, align 8, !tbaa !112
  %207 = icmp eq ptr %175, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 %176, ptr %75, align 8, !tbaa !111
  br label %209

209:                                              ; preds = %208, %205
  %210 = load ptr, ptr %175, align 8, !tbaa !145
  call void @CustomData_from_bmesh_block(ptr noundef nonnull %81, ptr noundef nonnull %69, ptr noundef %210, i32 noundef %176) #10
  %211 = add nuw nsw i32 %176, 1
  %212 = getelementptr inbounds %struct.MPoly, ptr %174, i64 1
  %213 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %172, !llvm.loop !146

215:                                              ; preds = %209, %165
  %216 = icmp sgt i32 %11, 0
  br i1 %216, label %217, label %342

217:                                              ; preds = %215
  %218 = load ptr, ptr @G, align 8, !tbaa !147
  %219 = getelementptr inbounds %struct.Main, ptr %218, i64 0, i32 13
  %220 = load ptr, ptr %219, align 8, !tbaa !62
  %221 = icmp eq ptr %220, null
  br i1 %221, label %342, label %222

222:                                              ; preds = %217, %334
  %223 = phi ptr [ %336, %334 ], [ %220, %217 ]
  %224 = phi ptr [ %335, %334 ], [ null, %217 ]
  %225 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 9
  %226 = load ptr, ptr %225, align 8, !tbaa !149
  %227 = icmp eq ptr %226, null
  br i1 %227, label %275, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.Object, ptr %226, i64 0, i32 19
  %230 = load ptr, ptr %229, align 8, !tbaa !152
  %231 = icmp eq ptr %230, %1
  br i1 %231, label %232, label %275

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 4
  %234 = load i16, ptr %233, align 2, !tbaa !153
  %235 = add i16 %234, -5
  %236 = icmp ult i16 %235, 2
  br i1 %236, label %237, label %275

237:                                              ; preds = %232
  %238 = icmp eq ptr %224, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %237
  %240 = call fastcc ptr @bm_to_mesh_vertex_map(ptr noundef nonnull %0, i32 noundef %11) #11
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi ptr [ %240, %239 ], [ %224, %237 ]
  %243 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 5
  %244 = load i32, ptr %243, align 4, !tbaa !154
  %245 = icmp slt i32 %244, %11
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = sext i32 %244 to i64
  %248 = getelementptr inbounds ptr, ptr %242, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !62
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %246
  %252 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %249) #11
  store i32 %252, ptr %243, align 4, !tbaa !154
  br label %253

253:                                              ; preds = %246, %251, %241
  %254 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 6
  %255 = load i32, ptr %254, align 8, !tbaa !155
  %256 = icmp slt i32 %255, %11
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = sext i32 %255 to i64
  %259 = getelementptr inbounds ptr, ptr %242, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !62
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %257
  %263 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %260) #11
  store i32 %263, ptr %254, align 8, !tbaa !155
  br label %264

264:                                              ; preds = %257, %262, %253
  %265 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 7
  %266 = load i32, ptr %265, align 4, !tbaa !156
  %267 = icmp slt i32 %266, %11
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  %269 = sext i32 %266 to i64
  %270 = getelementptr inbounds ptr, ptr %242, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !62
  %272 = icmp eq ptr %271, null
  br i1 %272, label %275, label %273

273:                                              ; preds = %268
  %274 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %271) #11
  store i32 %274, ptr %265, align 4, !tbaa !156
  br label %275

275:                                              ; preds = %232, %264, %273, %268, %228, %222
  %276 = phi ptr [ %242, %273 ], [ %242, %268 ], [ %242, %264 ], [ %224, %228 ], [ %224, %222 ], [ %224, %232 ]
  %277 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 19
  %278 = load ptr, ptr %277, align 8, !tbaa !152
  %279 = icmp eq ptr %278, %1
  br i1 %279, label %280, label %334

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.Object, ptr %223, i64 0, i32 26
  %282 = load ptr, ptr %281, align 8, !tbaa !62
  %283 = icmp eq ptr %282, null
  br i1 %283, label %334, label %284

284:                                              ; preds = %280, %330
  %285 = phi ptr [ %332, %330 ], [ %282, %280 ]
  %286 = phi ptr [ %331, %330 ], [ %276, %280 ]
  %287 = getelementptr inbounds %struct.ModifierData, ptr %285, i64 0, i32 2
  %288 = load i32, ptr %287, align 8, !tbaa !157
  %289 = icmp eq i32 %288, 9
  br i1 %289, label %290, label %330

290:                                              ; preds = %284
  %291 = icmp eq ptr %286, null
  br i1 %291, label %292, label %294

292:                                              ; preds = %290
  %293 = call fastcc ptr @bm_to_mesh_vertex_map(ptr noundef nonnull %0, i32 noundef %11) #11
  br label %294

294:                                              ; preds = %292, %290
  %295 = phi ptr [ %293, %292 ], [ %286, %290 ]
  %296 = getelementptr inbounds %struct.HookModifierData, ptr %285, i64 0, i32 7
  %297 = load i32, ptr %296, align 8, !tbaa !159
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %328

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.HookModifierData, ptr %285, i64 0, i32 6
  %301 = load ptr, ptr %300, align 8, !tbaa !161
  br label %302

302:                                              ; preds = %299, %322
  %303 = phi i32 [ %297, %299 ], [ %323, %322 ]
  %304 = phi i64 [ 0, %299 ], [ %325, %322 ]
  %305 = phi i32 [ 0, %299 ], [ %324, %322 ]
  %306 = getelementptr inbounds i32, ptr %301, i64 %304
  %307 = load i32, ptr %306, align 4, !tbaa !86
  %308 = icmp slt i32 %307, %11
  br i1 %308, label %309, label %320

309:                                              ; preds = %302
  %310 = sext i32 %307 to i64
  %311 = getelementptr inbounds ptr, ptr %295, i64 %310
  %312 = load ptr, ptr %311, align 8, !tbaa !62
  %313 = icmp eq ptr %312, null
  br i1 %313, label %322, label %314

314:                                              ; preds = %309
  %315 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %312) #11
  %316 = add nsw i32 %305, 1
  %317 = sext i32 %305 to i64
  %318 = getelementptr inbounds i32, ptr %301, i64 %317
  store i32 %315, ptr %318, align 4, !tbaa !86
  %319 = load i32, ptr %296, align 8, !tbaa !159
  br label %322

320:                                              ; preds = %302
  %321 = add nsw i32 %305, 1
  br label %322

322:                                              ; preds = %320, %314, %309
  %323 = phi i32 [ %319, %314 ], [ %303, %309 ], [ %303, %320 ]
  %324 = phi i32 [ %316, %314 ], [ %305, %309 ], [ %321, %320 ]
  %325 = add nuw nsw i64 %304, 1
  %326 = sext i32 %323 to i64
  %327 = icmp slt i64 %325, %326
  br i1 %327, label %302, label %328, !llvm.loop !162

328:                                              ; preds = %322, %294
  %329 = phi i32 [ 0, %294 ], [ %324, %322 ]
  store i32 %329, ptr %296, align 8, !tbaa !159
  br label %330

330:                                              ; preds = %284, %328
  %331 = phi ptr [ %295, %328 ], [ %286, %284 ]
  %332 = load ptr, ptr %285, align 8, !tbaa !62
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %284, !llvm.loop !163

334:                                              ; preds = %330, %280, %275
  %335 = phi ptr [ %276, %275 ], [ %276, %280 ], [ %331, %330 ]
  %336 = load ptr, ptr %223, align 8, !tbaa !62
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %222, !llvm.loop !164

338:                                              ; preds = %334
  %339 = icmp eq ptr %335, null
  br i1 %339, label %342, label %340

340:                                              ; preds = %338
  %341 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %341(ptr noundef nonnull %335) #10
  br label %342

342:                                              ; preds = %217, %338, %340, %215
  %343 = icmp eq i8 %2, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %342
  call void @BKE_mesh_tessface_calc(ptr noundef %1) #10
  br label %345

345:                                              ; preds = %344, %342
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %1, i8 noundef zeroext %2) #10
  %346 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %347 = call i32 @BLI_countlist(ptr noundef nonnull %346) #10
  %348 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 29
  store i32 %347, ptr %348, align 4, !tbaa !119
  %349 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 6
  %350 = load ptr, ptr %349, align 8, !tbaa !118
  %351 = icmp eq ptr %350, null
  br i1 %351, label %355, label %352

352:                                              ; preds = %345
  %353 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %353(ptr noundef nonnull %350) #10
  %354 = load i32, ptr %348, align 4, !tbaa !119
  br label %355

355:                                              ; preds = %352, %345
  %356 = phi i32 [ %354, %352 ], [ %347, %345 ]
  %357 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %358 = sext i32 %356 to i64
  %359 = shl nsw i64 %358, 3
  %360 = call ptr %357(i64 noundef %359, ptr noundef nonnull @.str.11) #10
  store ptr %360, ptr %349, align 8, !tbaa !118
  %361 = load ptr, ptr %346, align 8, !tbaa !62
  %362 = icmp eq ptr %361, null
  br i1 %362, label %381, label %363

363:                                              ; preds = %355, %373
  %364 = phi i64 [ %378, %373 ], [ 0, %355 ]
  %365 = phi ptr [ %379, %373 ], [ %361, %355 ]
  %366 = getelementptr inbounds %struct.BMEditSelection, ptr %365, i64 0, i32 3
  %367 = load i8, ptr %366, align 8, !tbaa !165
  switch i8 %367, label %373 [
    i8 1, label %370
    i8 2, label %368
    i8 8, label %369
  ]

368:                                              ; preds = %363
  br label %370

369:                                              ; preds = %363
  br label %370

370:                                              ; preds = %363, %369, %368
  %371 = phi i32 [ 1, %368 ], [ 2, %369 ], [ 0, %363 ]
  %372 = getelementptr inbounds %struct.MSelect, ptr %360, i64 %364, i32 1
  store i32 %371, ptr %372, align 4, !tbaa !120
  br label %373

373:                                              ; preds = %370, %363
  %374 = getelementptr inbounds %struct.BMEditSelection, ptr %365, i64 0, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !167
  %376 = call fastcc i32 @_bm_elem_index_get(ptr noundef %375) #11
  %377 = getelementptr inbounds %struct.MSelect, ptr %360, i64 %364
  store i32 %376, ptr %377, align 4, !tbaa !122
  %378 = add nuw i64 %364, 1
  %379 = load ptr, ptr %365, align 8, !tbaa !62
  %380 = icmp eq ptr %379, null
  br i1 %380, label %381, label %363, !llvm.loop !168

381:                                              ; preds = %373, %355
  %382 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %383 = load ptr, ptr %382, align 8, !tbaa !64
  %384 = icmp eq ptr %383, null
  br i1 %384, label %596, label %385

385:                                              ; preds = %381
  %386 = call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 27) #10
  %387 = load ptr, ptr %382, align 8, !tbaa !64
  %388 = getelementptr inbounds %struct.Key, ptr %387, i64 0, i32 6
  %389 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 29
  %390 = load i32, ptr %389, align 4, !tbaa !72
  %391 = add nsw i32 %390, -1
  %392 = call ptr @BLI_findlink(ptr noundef nonnull %388, i32 noundef %391) #10
  %393 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24, i32 2
  %394 = load i32, ptr %393, align 4, !tbaa !169
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %434

396:                                              ; preds = %385
  %397 = load ptr, ptr %5, align 8, !tbaa !73
  br label %398

398:                                              ; preds = %396, %427
  %399 = phi i32 [ %394, %396 ], [ %428, %427 ]
  %400 = phi i32 [ %394, %396 ], [ %429, %427 ]
  %401 = phi ptr [ %397, %396 ], [ %430, %427 ]
  %402 = phi i64 [ 0, %396 ], [ %431, %427 ]
  %403 = getelementptr inbounds %struct.CustomDataLayer, ptr %401, i64 %402
  %404 = load i32, ptr %403, align 8, !tbaa !170
  %405 = icmp eq i32 %404, 28
  br i1 %405, label %406, label %427

406:                                              ; preds = %398
  %407 = load ptr, ptr %382, align 8, !tbaa !64
  %408 = getelementptr inbounds %struct.Key, ptr %407, i64 0, i32 6
  %409 = getelementptr inbounds %struct.CustomDataLayer, ptr %401, i64 %402, i32 7
  br label %410

410:                                              ; preds = %414, %406
  %411 = phi ptr [ %408, %406 ], [ %412, %414 ]
  %412 = load ptr, ptr %411, align 8, !tbaa !62
  %413 = icmp eq ptr %412, null
  br i1 %413, label %419, label %414

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.KeyBlock, ptr %412, i64 0, i32 9
  %416 = load i32, ptr %415, align 4, !tbaa !67
  %417 = load i32, ptr %409, align 4, !tbaa !74
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %427, label %410, !llvm.loop !171

419:                                              ; preds = %410
  %420 = getelementptr inbounds %struct.CustomDataLayer, ptr %401, i64 %402, i32 8
  %421 = call ptr @BKE_keyblock_add(ptr noundef %407, ptr noundef nonnull %420) #10
  %422 = load ptr, ptr %5, align 8, !tbaa !73
  %423 = getelementptr inbounds %struct.CustomDataLayer, ptr %422, i64 %402, i32 7
  %424 = load i32, ptr %423, align 4, !tbaa !74
  %425 = getelementptr inbounds %struct.KeyBlock, ptr %421, i64 0, i32 9
  store i32 %424, ptr %425, align 4, !tbaa !67
  %426 = load i32, ptr %393, align 4, !tbaa !169
  br label %427

427:                                              ; preds = %414, %419, %398
  %428 = phi i32 [ %399, %398 ], [ %426, %419 ], [ %399, %414 ]
  %429 = phi i32 [ %400, %398 ], [ %426, %419 ], [ %399, %414 ]
  %430 = phi ptr [ %401, %398 ], [ %422, %419 ], [ %401, %414 ]
  %431 = add nuw nsw i64 %402, 1
  %432 = sext i32 %429 to i64
  %433 = icmp slt i64 %431, %432
  br i1 %433, label %398, label %434, !llvm.loop !172

434:                                              ; preds = %427, %385
  %435 = load ptr, ptr %382, align 8, !tbaa !64
  %436 = getelementptr inbounds %struct.Key, ptr %435, i64 0, i32 9
  %437 = load i16, ptr %436, align 8, !tbaa !173
  %438 = icmp eq i16 %437, 1
  %439 = icmp ne ptr %392, null
  %440 = select i1 %438, i1 %439, i1 false
  %441 = and i1 %53, %440
  br i1 %441, label %442, label %488

442:                                              ; preds = %434
  %443 = getelementptr inbounds %struct.Key, ptr %435, i64 0, i32 6
  br label %444

444:                                              ; preds = %448, %442
  %445 = phi ptr [ %443, %442 ], [ %446, %448 ]
  %446 = load ptr, ptr %445, align 8, !tbaa !62
  %447 = icmp eq ptr %446, null
  br i1 %447, label %488, label %448

448:                                              ; preds = %444
  %449 = load i32, ptr %389, align 4, !tbaa !72
  %450 = add nsw i32 %449, -1
  %451 = getelementptr inbounds %struct.KeyBlock, ptr %446, i64 0, i32 6
  %452 = load i16, ptr %451, align 4, !tbaa !174
  %453 = sext i16 %452 to i32
  %454 = icmp eq i32 %450, %453
  br i1 %454, label %455, label %444, !llvm.loop !175

455:                                              ; preds = %448
  %456 = icmp eq i32 %386, -1
  br i1 %456, label %488, label %457

457:                                              ; preds = %455
  %458 = getelementptr inbounds %struct.KeyBlock, ptr %392, i64 0, i32 10
  %459 = load ptr, ptr %458, align 8, !tbaa !71
  %460 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %461 = load i32, ptr %0, align 8, !tbaa !52
  %462 = sext i32 %461 to i64
  %463 = mul nsw i64 %462, 12
  %464 = call ptr %460(i64 noundef %463, ptr noundef nonnull @.str.12) #10
  %465 = load ptr, ptr %51, align 8, !tbaa !77
  %466 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1) #11
  %467 = icmp eq ptr %466, null
  br i1 %467, label %488, label %468

468:                                              ; preds = %457
  %469 = sext i32 %386 to i64
  br label %470

470:                                              ; preds = %468, %480
  %471 = phi i64 [ 0, %468 ], [ %486, %480 ]
  %472 = phi ptr [ %465, %468 ], [ %484, %480 ]
  %473 = phi ptr [ %466, %468 ], [ %485, %480 ]
  %474 = load ptr, ptr %473, align 8, !tbaa !84
  %475 = getelementptr inbounds i8, ptr %474, i64 %469
  %476 = load i32, ptr %475, align 4, !tbaa !86
  %477 = icmp eq i32 %476, -1
  br i1 %477, label %478, label %480

478:                                              ; preds = %470
  %479 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %479(ptr noundef %464) #10
  br label %488

480:                                              ; preds = %470
  %481 = getelementptr inbounds [3 x float], ptr %464, i64 %471
  %482 = sext i32 %476 to i64
  %483 = getelementptr inbounds [3 x float], ptr %459, i64 %482
  call fastcc void @sub_v3_v3v3(ptr noundef %481, ptr noundef %472, ptr noundef %483) #11
  %484 = getelementptr inbounds %struct.MVert, ptr %472, i64 1
  %485 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %486 = add nuw i64 %471, 1
  %487 = icmp eq ptr %485, null
  br i1 %487, label %488, label %470, !llvm.loop !176

488:                                              ; preds = %444, %480, %457, %478, %455, %434
  %489 = phi ptr [ null, %434 ], [ null, %455 ], [ null, %478 ], [ %464, %457 ], [ %464, %480 ], [ null, %444 ]
  %490 = load ptr, ptr %382, align 8, !tbaa !64
  %491 = getelementptr inbounds %struct.Key, ptr %490, i64 0, i32 6
  %492 = load ptr, ptr %491, align 8, !tbaa !62
  %493 = icmp eq ptr %492, null
  br i1 %493, label %592, label %494

494:                                              ; preds = %488
  %495 = icmp eq ptr %489, null
  %496 = icmp ne i32 %386, -1
  %497 = sext i32 %386 to i64
  br label %498

498:                                              ; preds = %494, %589
  %499 = phi ptr [ %492, %494 ], [ %590, %589 ]
  %500 = icmp eq ptr %499, %392
  %501 = select i1 %495, i1 true, i1 %500
  br i1 %501, label %509, label %502

502:                                              ; preds = %498
  %503 = load i32, ptr %389, align 4, !tbaa !72
  %504 = add nsw i32 %503, -1
  %505 = getelementptr inbounds %struct.KeyBlock, ptr %499, i64 0, i32 6
  %506 = load i16, ptr %505, align 4, !tbaa !174
  %507 = sext i16 %506 to i32
  %508 = icmp eq i32 %504, %507
  br label %509

509:                                              ; preds = %502, %498
  %510 = phi i1 [ false, %498 ], [ %508, %502 ]
  %511 = call fastcc i32 @bm_to_mesh_shape_layer_index_from_kb(ptr noundef nonnull %0, ptr noundef nonnull %499) #11
  %512 = call i32 @CustomData_get_n_offset(ptr noundef nonnull %5, i32 noundef 28, i32 noundef %511) #10
  %513 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %514 = load ptr, ptr %382, align 8, !tbaa !64
  %515 = getelementptr inbounds %struct.Key, ptr %514, i64 0, i32 4
  %516 = load i32, ptr %515, align 8, !tbaa !177
  %517 = load i32, ptr %0, align 8, !tbaa !52
  %518 = mul nsw i32 %517, %516
  %519 = sext i32 %518 to i64
  %520 = call ptr %513(i64 noundef %519, ptr noundef nonnull @.str.12) #10
  %521 = getelementptr inbounds %struct.KeyBlock, ptr %499, i64 0, i32 10
  %522 = load ptr, ptr %521, align 8, !tbaa !71
  %523 = load ptr, ptr %51, align 8, !tbaa !77
  %524 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1) #11
  %525 = icmp eq ptr %524, null
  br i1 %525, label %582, label %526

526:                                              ; preds = %509
  %527 = icmp eq i32 %511, -1
  %528 = sext i32 %512 to i64
  %529 = icmp ne ptr %522, null
  %530 = select i1 %529, i1 %496, i1 false
  %531 = getelementptr inbounds %struct.KeyBlock, ptr %499, i64 0, i32 8
  br label %532

532:                                              ; preds = %526, %576
  %533 = phi ptr [ %520, %526 ], [ %578, %576 ]
  %534 = phi ptr [ %489, %526 ], [ %577, %576 ]
  %535 = phi ptr [ %523, %526 ], [ %579, %576 ]
  %536 = phi ptr [ %524, %526 ], [ %580, %576 ]
  br i1 %500, label %537, label %556

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.BMVert, ptr %536, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %533, ptr noundef nonnull %538) #11
  %539 = load ptr, ptr %382, align 8, !tbaa !64
  %540 = getelementptr inbounds %struct.Key, ptr %539, i64 0, i32 2
  %541 = load ptr, ptr %540, align 8, !tbaa !178
  %542 = icmp ne ptr %392, %541
  %543 = select i1 %542, i1 %496, i1 false
  %544 = and i1 %53, %543
  br i1 %544, label %545, label %573

545:                                              ; preds = %537
  %546 = load ptr, ptr %536, align 8, !tbaa !84
  %547 = getelementptr inbounds i8, ptr %546, i64 %497
  %548 = load i32, ptr %547, align 4, !tbaa !86
  %549 = icmp eq i32 %548, -1
  br i1 %549, label %573, label %550

550:                                              ; preds = %545
  %551 = load i32, ptr %531, align 8, !tbaa !70
  %552 = icmp slt i32 %548, %551
  br i1 %552, label %553, label %573

553:                                              ; preds = %550
  %554 = sext i32 %548 to i64
  %555 = getelementptr inbounds %struct.MVert, ptr %52, i64 %554
  call fastcc void @copy_v3_v3(ptr noundef %535, ptr noundef nonnull %555) #11
  br label %573

556:                                              ; preds = %532
  br i1 %527, label %560, label %557

557:                                              ; preds = %556
  %558 = load ptr, ptr %536, align 8, !tbaa !84
  %559 = getelementptr inbounds i8, ptr %558, i64 %528
  call fastcc void @copy_v3_v3(ptr noundef %533, ptr noundef %559) #11
  br label %573

560:                                              ; preds = %556
  br i1 %530, label %561, label %572

561:                                              ; preds = %560
  %562 = load ptr, ptr %536, align 8, !tbaa !84
  %563 = getelementptr inbounds i8, ptr %562, i64 %497
  %564 = load i32, ptr %563, align 4, !tbaa !86
  %565 = icmp eq i32 %564, -1
  br i1 %565, label %572, label %566

566:                                              ; preds = %561
  %567 = load i32, ptr %531, align 8, !tbaa !70
  %568 = icmp slt i32 %564, %567
  br i1 %568, label %569, label %572

569:                                              ; preds = %566
  %570 = sext i32 %564 to i64
  %571 = getelementptr inbounds [3 x float], ptr %522, i64 %570
  call fastcc void @copy_v3_v3(ptr noundef %533, ptr noundef nonnull %571) #11
  br label %573

572:                                              ; preds = %566, %561, %560
  call fastcc void @copy_v3_v3(ptr noundef %533, ptr noundef %535) #11
  br label %573

573:                                              ; preds = %557, %572, %569, %537, %553, %550, %545
  br i1 %510, label %574, label %576

574:                                              ; preds = %573
  %575 = getelementptr inbounds [3 x float], ptr %534, i64 1
  call fastcc void @add_v3_v3(ptr noundef %533, ptr noundef %534) #11
  br label %576

576:                                              ; preds = %574, %573
  %577 = phi ptr [ %575, %574 ], [ %534, %573 ]
  %578 = getelementptr inbounds float, ptr %533, i64 3
  %579 = getelementptr inbounds %struct.MVert, ptr %535, i64 1
  %580 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #11
  %581 = icmp eq ptr %580, null
  br i1 %581, label %582, label %532, !llvm.loop !179

582:                                              ; preds = %576, %509
  %583 = load i32, ptr %0, align 8, !tbaa !52
  %584 = getelementptr inbounds %struct.KeyBlock, ptr %499, i64 0, i32 8
  store i32 %583, ptr %584, align 8, !tbaa !70
  %585 = load ptr, ptr %521, align 8, !tbaa !71
  %586 = icmp eq ptr %585, null
  br i1 %586, label %589, label %587

587:                                              ; preds = %582
  %588 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %588(ptr noundef nonnull %585) #10
  br label %589

589:                                              ; preds = %587, %582
  store ptr %520, ptr %521, align 8, !tbaa !71
  %590 = load ptr, ptr %499, align 8, !tbaa !62
  %591 = icmp eq ptr %590, null
  br i1 %591, label %592, label %498, !llvm.loop !180

592:                                              ; preds = %589, %488
  %593 = icmp eq ptr %489, null
  br i1 %593, label %596, label %594

594:                                              ; preds = %592
  %595 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %595(ptr noundef nonnull %489) #10
  br label %596

596:                                              ; preds = %592, %594, %381
  br i1 %53, label %597, label %599

597:                                              ; preds = %596
  %598 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %598(ptr noundef nonnull %52) #10
  br label %599

599:                                              ; preds = %597, %596
  call void @multires_topology_changed(ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_set_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !181 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #11
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !182 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !85
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !127
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !127
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_from_bmesh_block(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !183 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !186 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !125
  ret i32 %3
}

; Function Attrs: optsize
declare signext i16 @BM_edge_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmesh_quick_edgedraw_flag(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !187 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = icmp eq ptr %4, %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !190
  %13 = getelementptr inbounds %struct.BMFace, ptr %12, i64 0, i32 4
  %14 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !190
  %16 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 4
  %17 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %16) #11
  %18 = fcmp ogt float %17, 0x3FEFFBE760000000
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.MEdge, ptr %0, i64 0, i32 4
  %21 = load i16, ptr %20, align 2, !tbaa !94
  %22 = and i16 %21, -3
  store i16 %22, ptr %20, align 2, !tbaa !94
  br label %27

23:                                               ; preds = %10, %6, %2
  %24 = getelementptr inbounds %struct.MEdge, ptr %0, i64 0, i32 4
  %25 = load i16, ptr %24, align 2, !tbaa !94
  %26 = or i16 %25, 2
  store i16 %26, ptr %24, align 2, !tbaa !94
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_face_flag_to_mflag(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_to_mesh_vertex_map(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !191 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 27) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %7 = zext nneg i32 %1 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.13) #10
  %10 = icmp eq i32 %5, -1
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #11
  br i1 %10, label %30, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %11, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %12
  %15 = sext i32 %5 to i64
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi ptr [ %11, %14 ], [ %28, %27 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = getelementptr inbounds i8, ptr %18, i64 %15
  %20 = load i32, ptr %19, align 4, !tbaa !86
  %21 = icmp ne i32 %20, -1
  %22 = icmp slt i32 %20, %1
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = sext i32 %20 to i64
  %26 = getelementptr inbounds ptr, ptr %9, i64 %25
  store ptr %17, ptr %26, align 8, !tbaa !62
  br label %27

27:                                               ; preds = %24, %16
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %16, !llvm.loop !192

30:                                               ; preds = %2
  %31 = icmp ne ptr %11, null
  %32 = icmp sgt i32 %1, 0
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = zext nneg i32 %1 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ 0, %34 ], [ %41, %36 ]
  %38 = phi ptr [ %11, %34 ], [ %40, %36 ]
  %39 = getelementptr inbounds ptr, ptr %9, i64 %37
  store ptr %38, ptr %39, align 8, !tbaa !62
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %41 = add nuw nsw i64 %37, 1
  %42 = icmp ne ptr %40, null
  %43 = icmp ult i64 %41, %35
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %36, label %45, !llvm.loop !193

45:                                               ; preds = %27, %36, %12, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret ptr %9
}

; Function Attrs: optsize
declare void @BKE_mesh_tessface_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyblock_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !194 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !85
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @bm_to_mesh_shape_layer_index_from_kb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !195 {
  %3 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 9
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !169
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %24
  %12 = phi i64 [ 0, %7 ], [ %26, %24 ]
  %13 = phi i32 [ 0, %7 ], [ %25, %24 ]
  %14 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %12
  %15 = load i32, ptr %14, align 8, !tbaa !170
  %16 = icmp eq i32 %15, 28
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32, ptr %3, align 4, !tbaa !67
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %12, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !74
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = add nsw i32 %13, 1
  br label %24

24:                                               ; preds = %11, %22
  %25 = phi i32 [ %23, %22 ], [ %13, %11 ]
  %26 = add nuw nsw i64 %12, 1
  %27 = icmp eq i64 %26, %10
  br i1 %27, label %28, label %11, !llvm.loop !196

28:                                               ; preds = %17, %24, %2
  %29 = phi i32 [ -1, %2 ], [ -1, %24 ], [ %13, %17 ]
  ret i32 %29
}

; Function Attrs: optsize
declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !197 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  %4 = load float, ptr %0, align 4, !tbaa !85
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !85
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @multires_topology_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !198 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !199
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !200
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !184
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  store ptr %16, ptr %0, align 8, !tbaa !201
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !202 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { cold optsize }
attributes #13 = { nounwind }

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
!34 = !{!35, !39, i64 544}
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
!45 = !{!35, !39, i64 744}
!46 = distinct !{!46, !44}
!47 = !{i8 0, i8 8}
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
!63 = distinct !{!63, !44}
!64 = !{!49, !39, i64 144}
!65 = !{!66, !36, i64 220}
!66 = !{!"Key", !50, i64 0, !39, i64 120, !39, i64 128, !37, i64 136, !36, i64 168, !36, i64 172, !42, i64 176, !39, i64 192, !39, i64 200, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !51, i64 216, !36, i64 220}
!67 = !{!68, !36, i64 36}
!68 = !{!"KeyBlock", !39, i64 0, !39, i64 8, !51, i64 16, !51, i64 20, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !36, i64 32, !36, i64 36, !39, i64 40, !37, i64 48, !37, i64 112, !51, i64 176, !51, i64 180}
!69 = distinct !{!69, !44}
!70 = !{!68, !36, i64 32}
!71 = !{!68, !39, i64 40}
!72 = !{!35, !36, i64 948}
!73 = !{!35, !39, i64 144}
!74 = !{!75, !36, i64 28}
!75 = !{!"CustomDataLayer", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 96}
!76 = distinct !{!76, !44}
!77 = !{!49, !39, i64 232}
!78 = !{!79, !37, i64 18}
!79 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!80 = !{!81, !37, i64 13}
!81 = !{!"BMVert", !82, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!82 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!83 = !{!79, !37, i64 19}
!84 = !{!81, !39, i64 0}
!85 = !{!51, !51, i64 0}
!86 = !{!36, !36, i64 0}
!87 = distinct !{!87, !44}
!88 = distinct !{!88, !44}
!89 = !{!35, !37, i64 28}
!90 = !{!49, !39, i64 240}
!91 = !{!92, !36, i64 0}
!92 = !{!"MEdge", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !41, i64 10}
!93 = !{!92, !36, i64 4}
!94 = !{!92, !41, i64 10}
!95 = !{!96, !37, i64 13}
!96 = !{!"BMEdge", !82, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !97, i64 48, !97, i64 64}
!97 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!98 = !{!92, !37, i64 9}
!99 = !{!96, !39, i64 0}
!100 = !{!92, !37, i64 8}
!101 = distinct !{!101, !44}
!102 = !{!49, !39, i64 184}
!103 = !{!49, !39, i64 168}
!104 = !{!105, !36, i64 0}
!105 = !{!"MPoly", !36, i64 0, !36, i64 4, !41, i64 8, !37, i64 10, !37, i64 11}
!106 = !{!105, !37, i64 10}
!107 = !{!108, !37, i64 13}
!108 = !{!"BMFace", !82, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!109 = !{!105, !41, i64 8}
!110 = !{!108, !41, i64 48}
!111 = !{!49, !36, i64 1304}
!112 = !{!35, !39, i64 976}
!113 = !{!108, !39, i64 24}
!114 = !{!115, !39, i64 56}
!115 = !{!"BMLoop", !82, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!116 = distinct !{!116, !44}
!117 = distinct !{!117, !44}
!118 = !{!49, !39, i64 160}
!119 = !{!49, !36, i64 1292}
!120 = !{!121, !36, i64 4}
!121 = !{!"MSelect", !36, i64 0, !36, i64 4}
!122 = !{!121, !36, i64 0}
!123 = distinct !{!123, !44}
!124 = !{!"bmesh_mesh_conv.c:_bm_elem_index_set"}
!125 = !{!82, !36, i64 8}
!126 = !{!"bmesh_mesh_conv.c:normal_short_to_float_v3"}
!127 = !{!41, !41, i64 0}
!128 = !{!"bmesh_mesh_conv.c:copy_v3_v3"}
!129 = !{!"bmesh_mesh_conv.c:bm_face_create_from_mpoly"}
!130 = !{!105, !36, i64 4}
!131 = !{!132, !36, i64 0}
!132 = !{!"MLoop", !36, i64 0, !36, i64 4}
!133 = !{!132, !36, i64 4}
!134 = distinct !{!134, !44}
!135 = !{!49, !36, i64 1288}
!136 = distinct !{!136, !44}
!137 = !{!96, !39, i64 24}
!138 = !{!96, !39, i64 32}
!139 = distinct !{!139, !44}
!140 = !{!108, !36, i64 32}
!141 = !{!115, !39, i64 24}
!142 = !{!115, !39, i64 16}
!143 = !{!115, !39, i64 0}
!144 = distinct !{!144, !44}
!145 = !{!108, !39, i64 0}
!146 = distinct !{!146, !44}
!147 = !{!148, !39, i64 0}
!148 = !{!"Global", !39, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!149 = !{!150, !39, i64 216}
!150 = !{!"Object", !50, i64 0, !39, i64 120, !39, i64 128, !41, i64 136, !41, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !151, i64 312, !39, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !36, i64 432, !36, i64 436, !39, i64 440, !39, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !51, i64 616, !51, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !51, i64 988, !51, i64 992, !51, i64 996, !51, i64 1000, !51, i64 1004, !51, i64 1008, !51, i64 1012, !51, i64 1016, !51, i64 1020, !51, i64 1024, !51, i64 1028, !51, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !51, i64 1048, !51, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !51, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !39, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !51, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !58, i64 1304, !58, i64 1312, !36, i64 1320, !36, i64 1324, !42, i64 1328, !42, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !37, i64 1384, !39, i64 1392, !42, i64 1400, !39, i64 1416}
!151 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!152 = !{!150, !39, i64 296}
!153 = !{!150, !41, i64 138}
!154 = !{!150, !36, i64 140}
!155 = !{!150, !36, i64 144}
!156 = !{!150, !36, i64 148}
!157 = !{!158, !36, i64 16}
!158 = !{!"ModifierData", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 96, !39, i64 104}
!159 = !{!160, !36, i64 272}
!160 = !{!"HookModifierData", !158, i64 0, !39, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !51, i64 260, !39, i64 264, !36, i64 272, !51, i64 276, !37, i64 280}
!161 = !{!160, !39, i64 264}
!162 = distinct !{!162, !44}
!163 = distinct !{!163, !44}
!164 = distinct !{!164, !44}
!165 = !{!166, !37, i64 24}
!166 = !{!"BMEditSelection", !39, i64 0, !39, i64 8, !39, i64 16, !37, i64 24}
!167 = !{!166, !39, i64 16}
!168 = distinct !{!168, !44}
!169 = !{!35, !36, i64 316}
!170 = !{!75, !36, i64 0}
!171 = distinct !{!171, !44}
!172 = distinct !{!172, !44}
!173 = !{!66, !41, i64 208}
!174 = !{!68, !41, i64 28}
!175 = distinct !{!175, !44}
!176 = distinct !{!176, !44}
!177 = !{!66, !36, i64 168}
!178 = !{!66, !39, i64 128}
!179 = distinct !{!179, !44}
!180 = distinct !{!180, !44}
!181 = !{!"bmesh_mesh_conv.c:BM_iter_new"}
!182 = !{!"bmesh_mesh_conv.c:normal_float_to_short_v3"}
!183 = !{!"bmesh_mesh_conv.c:BM_iter_step"}
!184 = !{!185, !39, i64 48}
!185 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!186 = !{!"bmesh_mesh_conv.c:_bm_elem_index_get"}
!187 = !{!"bmesh_mesh_conv.c:bmesh_quick_edgedraw_flag"}
!188 = !{!96, !39, i64 40}
!189 = !{!115, !39, i64 40}
!190 = !{!115, !39, i64 32}
!191 = !{!"bmesh_mesh_conv.c:bm_to_mesh_vertex_map"}
!192 = distinct !{!192, !44}
!193 = distinct !{!193, !44}
!194 = !{!"bmesh_mesh_conv.c:sub_v3_v3v3"}
!195 = !{!"bmesh_mesh_conv.c:bm_to_mesh_shape_layer_index_from_kb"}
!196 = distinct !{!196, !44}
!197 = !{!"bmesh_mesh_conv.c:add_v3_v3"}
!198 = !{!"bmesh_mesh_conv.c:BM_iter_init"}
!199 = !{!185, !37, i64 60}
!200 = !{!185, !39, i64 40}
!201 = !{!37, !37, i64 0}
!202 = !{!"bmesh_mesh_conv.c:dot_v3v3"}
